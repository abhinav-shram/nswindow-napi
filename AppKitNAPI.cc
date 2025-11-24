#include "NSWindow.h"
#include <napi.h>

Napi::Object Init(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "GetNSWindowCollectionBehaviorDefault"),
              Napi::Function::New(env, GetNSWindowCollectionBehaviorDefault));
  exports.Set(
      Napi::String::New(env, "GetNSWindowCollectionBehaviorCanJoinAllSpaces"),
      Napi::Function::New(env, GetNSWindowCollectionBehaviorCanJoinAllSpaces));
  exports.Set(
      Napi::String::New(env, "GetNSWindowCollectionBehaviorMoveToActiveSpace"),
      Napi::Function::New(env, GetNSWindowCollectionBehaviorMoveToActiveSpace));
  exports.Set(Napi::String::New(env, "GetNSWindowCollectionBehaviorManaged"),
              Napi::Function::New(env, GetNSWindowCollectionBehaviorManaged));
  exports.Set(Napi::String::New(env, "GetNSWindowCollectionBehaviorTransient"),
              Napi::Function::New(env, GetNSWindowCollectionBehaviorTransient));
  exports.Set(
      Napi::String::New(env, "GetNSWindowCollectionBehaviorStationary"),
      Napi::Function::New(env, GetNSWindowCollectionBehaviorStationary));
  exports.Set(Napi::String::New(
                  env, "GetNSWindowCollectionBehaviorParticipatesInCycle"),
              Napi::Function::New(
                  env, GetNSWindowCollectionBehaviorParticipatesInCycle));
  exports.Set(
      Napi::String::New(env, "GetNSWindowCollectionBehaviorIgnoresCycle"),
      Napi::Function::New(env, GetNSWindowCollectionBehaviorIgnoresCycle));
  exports.Set(
      Napi::String::New(env, "GetNSWindowCollectionBehaviorFullScreenPrimary"),
      Napi::Function::New(env, GetNSWindowCollectionBehaviorFullScreenPrimary));
  exports.Set(Napi::String::New(
                  env, "GetNSWindowCollectionBehaviorFullScreenAuxiliary"),
              Napi::Function::New(
                  env, GetNSWindowCollectionBehaviorFullScreenAuxiliary));
  exports.Set(
      Napi::String::New(env, "GetNSWindowCollectionBehaviorFullScreenNone"),
      Napi::Function::New(env, GetNSWindowCollectionBehaviorFullScreenNone));
  exports.Set(Napi::String::New(
                  env, "GetNSWindowCollectionBehaviorFullScreenAllowsTiling"),
              Napi::Function::New(
                  env, GetNSWindowCollectionBehaviorFullScreenAllowsTiling));
  exports.Set(
      Napi::String::New(
          env, "GetNSWindowCollectionBehaviorFullScreenDisallowsTiling"),
      Napi::Function::New(
          env, GetNSWindowCollectionBehaviorFullScreenDisallowsTiling));
  exports.Set(Napi::String::New(env, "SetCollectionBehavior"),
              Napi::Function::New(env, SetCollectionBehavior));

  exports.Set(Napi::String::New(env, "GetKCGNumReservedWindowLevels"),
              Napi::Function::New(env, GetKCGNumReservedWindowLevels));
  exports.Set(Napi::String::New(env, "GetKCGNumReservedBaseWindowLevels"),
              Napi::Function::New(env, GetKCGNumReservedBaseWindowLevels));
  exports.Set(Napi::String::New(env, "GetKCGBaseWindowLevel"),
              Napi::Function::New(env, GetKCGBaseWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGMinimumWindowLevel"),
              Napi::Function::New(env, GetKCGMinimumWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGMaximumWindowLevel"),
              Napi::Function::New(env, GetKCGMaximumWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGDesktopWindowLevel"),
              Napi::Function::New(env, GetKCGDesktopWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGDesktopIconWindowLevel"),
              Napi::Function::New(env, GetKCGDesktopIconWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGBackstopMenuLevel"),
              Napi::Function::New(env, GetKCGBackstopMenuLevel));
  exports.Set(Napi::String::New(env, "GetKCGNormalWindowLevel"),
              Napi::Function::New(env, GetKCGNormalWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGFloatingWindowLevel"),
              Napi::Function::New(env, GetKCGFloatingWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGTornOffMenuWindowLevel"),
              Napi::Function::New(env, GetKCGTornOffMenuWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGModalPanelWindowLevel"),
              Napi::Function::New(env, GetKCGModalPanelWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGUtilityWindowLevel"),
              Napi::Function::New(env, GetKCGUtilityWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGDockWindowLevel"),
              Napi::Function::New(env, GetKCGDockWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGMainMenuWindowLevel"),
              Napi::Function::New(env, GetKCGMainMenuWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGStatusWindowLevel"),
              Napi::Function::New(env, GetKCGStatusWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGPopUpMenuWindowLevel"),
              Napi::Function::New(env, GetKCGPopUpMenuWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGOverlayWindowLevel"),
              Napi::Function::New(env, GetKCGOverlayWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGHelpWindowLevel"),
              Napi::Function::New(env, GetKCGHelpWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGDraggingWindowLevel"),
              Napi::Function::New(env, GetKCGDraggingWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGScreenSaverWindowLevel"),
              Napi::Function::New(env, GetKCGScreenSaverWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGAssistiveTechHighWindowLevel"),
              Napi::Function::New(env, GetKCGAssistiveTechHighWindowLevel));
  exports.Set(Napi::String::New(env, "GetKCGCursorWindowLevel"),
              Napi::Function::New(env, GetKCGCursorWindowLevel));
  exports.Set(Napi::String::New(env, "SetLevel"),
              Napi::Function::New(env, SetLevel));

  return exports;
}

NODE_API_MODULE(AppKitNAPI, Init)