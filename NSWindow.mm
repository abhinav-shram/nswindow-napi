#include "NSWindow.h"
#import <AppKit/AppKit.h>

/*
NSWindow.collectionBehavior:
https://developer.apple.com/documentation/appkit/nswindow/1419471-collectionbehavior?language=objc
*/
Napi::Value
GetNSWindowCollectionBehaviorDefault(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(),
                           (int)(size_t)NSWindowCollectionBehaviorDefault);
}
Napi::Value
GetNSWindowCollectionBehaviorCanJoinAllSpaces(const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(), (int)(size_t)NSWindowCollectionBehaviorCanJoinAllSpaces);
}
Napi::Value
GetNSWindowCollectionBehaviorMoveToActiveSpace(const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(), (int)(size_t)NSWindowCollectionBehaviorMoveToActiveSpace);
}
Napi::Value
GetNSWindowCollectionBehaviorManaged(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(),
                           (int)(size_t)NSWindowCollectionBehaviorManaged);
}
Napi::Value
GetNSWindowCollectionBehaviorTransient(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(),
                           (int)(size_t)NSWindowCollectionBehaviorTransient);
}
Napi::Value
GetNSWindowCollectionBehaviorStationary(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(),
                           (int)(size_t)NSWindowCollectionBehaviorStationary);
}
Napi::Value GetNSWindowCollectionBehaviorParticipatesInCycle(
    const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(), (int)(size_t)NSWindowCollectionBehaviorParticipatesInCycle);
}
Napi::Value
GetNSWindowCollectionBehaviorIgnoresCycle(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(),
                           (int)(size_t)NSWindowCollectionBehaviorIgnoresCycle);
}
Napi::Value
GetNSWindowCollectionBehaviorFullScreenPrimary(const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(), (int)(size_t)NSWindowCollectionBehaviorFullScreenPrimary);
}
Napi::Value GetNSWindowCollectionBehaviorFullScreenAuxiliary(
    const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(), (int)(size_t)NSWindowCollectionBehaviorFullScreenAuxiliary);
}
Napi::Value
GetNSWindowCollectionBehaviorFullScreenNone(const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(), (int)(size_t)NSWindowCollectionBehaviorFullScreenNone);
}
Napi::Value GetNSWindowCollectionBehaviorFullScreenAllowsTiling(
    const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(),
      (int)(size_t)NSWindowCollectionBehaviorFullScreenAllowsTiling);
}
Napi::Value GetNSWindowCollectionBehaviorFullScreenDisallowsTiling(
    const Napi::CallbackInfo &info) {
  return Napi::Number::New(
      info.Env(),
      (int)(size_t)NSWindowCollectionBehaviorFullScreenDisallowsTiling);
}

void SetCollectionBehavior(const Napi::CallbackInfo &info) {
  Napi::Env env = info.Env();

  if (info.Length() < 2) {
    Napi::Error::New(env, "Invalid argument size.")
        .ThrowAsJavaScriptException();
    return;
  }

  if (!info[0].IsBuffer()) {
    Napi::Error::New(env, "Argument 0 must be a Buffer.")
        .ThrowAsJavaScriptException();
    return;
  }

  void *windowHandle = info[0].As<Napi::Buffer<void *>>().Data();
  if (windowHandle == nullptr) {
    Napi::Error::New(env, "Empty window handle.").ThrowAsJavaScriptException();
    return;
  }

  NSView *NSWindowView = *static_cast<NSView **>(windowHandle);
  if (![NSWindowView respondsToSelector:@selector(window)] ||
      NSWindowView.window == nil) {
    Napi::Error::New(env, "Fail to load NSView.").ThrowAsJavaScriptException();
    return;
  }

  if (!info[1].IsNumber()) {
    Napi::Error::New(env, "Argument 1 must be a Number.")
        .ThrowAsJavaScriptException();
    return;
  }

  int collectionBehavior = info[1].As<Napi::Number>().Int32Value();

  NSWindow *window = NSWindowView.window;
  [window setCollectionBehavior:collectionBehavior];
}

/*
NSWindow.level:
https://developer.apple.com/documentation/appkit/nswindow/1419511-level?language=objc
*/
Napi::Value GetKCGNumReservedWindowLevels(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGNumReservedWindowLevels);
}
Napi::Value GetKCGNumReservedBaseWindowLevels(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(),
                           (int)(size_t)kCGNumReservedBaseWindowLevels);
}
Napi::Value GetKCGBaseWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGBaseWindowLevel);
}
Napi::Value GetKCGMinimumWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGMinimumWindowLevel);
}
Napi::Value GetKCGMaximumWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGMaximumWindowLevel);
}
Napi::Value GetKCGDesktopWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGDesktopWindowLevel);
}
Napi::Value GetKCGDesktopIconWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGDesktopIconWindowLevel);
}
Napi::Value GetKCGBackstopMenuLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGBackstopMenuLevel);
}
Napi::Value GetKCGNormalWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGNormalWindowLevel);
}
Napi::Value GetKCGFloatingWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGFloatingWindowLevel);
}
Napi::Value GetKCGTornOffMenuWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGTornOffMenuWindowLevel);
}
Napi::Value GetKCGModalPanelWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGModalPanelWindowLevel);
}
Napi::Value GetKCGUtilityWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGUtilityWindowLevel);
}
Napi::Value GetKCGDockWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGDockWindowLevel);
}
Napi::Value GetKCGMainMenuWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGMainMenuWindowLevel);
}
Napi::Value GetKCGStatusWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGStatusWindowLevel);
}
Napi::Value GetKCGPopUpMenuWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGPopUpMenuWindowLevel);
}
Napi::Value GetKCGOverlayWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGOverlayWindowLevel);
}
Napi::Value GetKCGHelpWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGHelpWindowLevel);
}
Napi::Value GetKCGDraggingWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGDraggingWindowLevel);
}
Napi::Value GetKCGScreenSaverWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGScreenSaverWindowLevel);
}
Napi::Value GetKCGAssistiveTechHighWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(),
                           (int)(size_t)kCGAssistiveTechHighWindowLevel);
}
Napi::Value GetKCGCursorWindowLevel(const Napi::CallbackInfo &info) {
  return Napi::Number::New(info.Env(), (int)(size_t)kCGCursorWindowLevel);
}

void SetLevel(const Napi::CallbackInfo &info) {
  Napi::Env env = info.Env();

  if (info.Length() < 2) {
    Napi::Error::New(env, "Invalid argument size.")
        .ThrowAsJavaScriptException();
    return;
  }

  if (!info[0].IsBuffer()) {
    Napi::Error::New(env, "Argument 0 must be a Buffer.")
        .ThrowAsJavaScriptException();
    return;
  }

  void *windowHandle = info[0].As<Napi::Buffer<void *>>().Data();
  if (windowHandle == nullptr) {
    Napi::Error::New(env, "Empty window handle.").ThrowAsJavaScriptException();
    return;
  }

  NSView *NSWindowView = *static_cast<NSView **>(windowHandle);
  if (![NSWindowView respondsToSelector:@selector(window)] ||
      NSWindowView.window == nil) {
    Napi::Error::New(env, "Fail to load NSView.").ThrowAsJavaScriptException();
    return;
  }

  if (!info[1].IsNumber()) {
    Napi::Error::New(env, "Argument 1 must be a Number.")
        .ThrowAsJavaScriptException();
    return;
  }

  int level = info[1].As<Napi::Number>().Int32Value();

  NSWindow *window = NSWindowView.window;
  [window setLevel:level];
}