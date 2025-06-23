#include <flutter/dart_project.h>
#include <flutter/flutter_view_controller.h>
#include <windows.h>

#include "flutter_window.h"
#include "utils.h"

int APIENTRY wWinMain(_In_ HINSTANCE instance, _In_opt_ HINSTANCE prev,
                      _In_ wchar_t *command_line, _In_ int show_command) {
  // Attach to console when present (e.g., 'flutter run') or create a
  // new console when running with a debugger.
  if (!::AttachConsole(ATTACH_PARENT_PROCESS) && ::IsDebuggerPresent()) {
    CreateAndAttachConsole();
  }

  // Initialize COM, so that it is available for use in the library and/or
  // plugins.
  ::CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

  flutter::DartProject project(L"data");

  std::vector<std::string> command_line_arguments =
      GetCommandLineArguments();

  project.set_dart_entrypoint_arguments(std::move(command_line_arguments));

  FlutterWindow window(project);
  Win32Window::Point origin(10, 10);
  Win32Window::Size size(1000, 720);
  if (!window.Create(L"flutter_application_1", origin, size)) {
    return EXIT_FAILURE;
  }

// === 添加这段代码：锁定窗口大小，禁止最大化、拖动 ===
  HWND hwnd = window.GetHandle();
    if (hwnd != nullptr) {
      LONG style = GetWindowLong(hwnd, GWL_STYLE);
      style &= ~WS_MAXIMIZEBOX;  // 禁用最大化按钮
      style &= ~WS_THICKFRAME;   // 禁用拖动边框调整大小
      SetWindowLong(hwnd, GWL_STYLE, style);
    }

// 禁用系统菜单中的最大化、调整大小项
  HMENU hMenu = GetSystemMenu(hwnd, FALSE);
  if (hMenu) {
    DeleteMenu(hMenu, SC_MAXIMIZE, MF_BYCOMMAND);
    DeleteMenu(hMenu, SC_SIZE, MF_BYCOMMAND);
  }

// 重新应用窗口样式
  SetWindowPos(hwnd, nullptr, 0, 0, 1000, 720, SWP_NOMOVE | SWP_NOZORDER | SWP_FRAMECHANGED);



  window.SetQuitOnClose(true);

  ::MSG msg;
  while (::GetMessage(&msg, nullptr, 0, 0)) {
    ::TranslateMessage(&msg);
    ::DispatchMessage(&msg);
  }

  ::CoUninitialize();
  return EXIT_SUCCESS;
}
