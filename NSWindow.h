#include <napi.h>

Napi::Value
GetNSWindowCollectionBehaviorDefault(const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorCanJoinAllSpaces(const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorMoveToActiveSpace(const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorManaged(const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorTransient(const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorStationary(const Napi::CallbackInfo &info);
Napi::Value GetNSWindowCollectionBehaviorParticipatesInCycle(
    const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorIgnoresCycle(const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorFullScreenPrimary(const Napi::CallbackInfo &info);
Napi::Value GetNSWindowCollectionBehaviorFullScreenAuxiliary(
    const Napi::CallbackInfo &info);
Napi::Value
GetNSWindowCollectionBehaviorFullScreenNone(const Napi::CallbackInfo &info);
Napi::Value GetNSWindowCollectionBehaviorFullScreenAllowsTiling(
    const Napi::CallbackInfo &info);
Napi::Value GetNSWindowCollectionBehaviorFullScreenDisallowsTiling(
    const Napi::CallbackInfo &info);

void SetCollectionBehavior(const Napi::CallbackInfo &info);

Napi::Value GetKCGNumReservedWindowLevels(const Napi::CallbackInfo &info);
Napi::Value GetKCGNumReservedBaseWindowLevels(const Napi::CallbackInfo &info);
Napi::Value GetKCGBaseWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGMinimumWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGMaximumWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGDesktopWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGDesktopIconWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGBackstopMenuLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGNormalWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGFloatingWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGTornOffMenuWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGModalPanelWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGUtilityWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGDockWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGMainMenuWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGStatusWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGPopUpMenuWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGOverlayWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGHelpWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGDraggingWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGScreenSaverWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGAssistiveTechHighWindowLevel(const Napi::CallbackInfo &info);
Napi::Value GetKCGCursorWindowLevel(const Napi::CallbackInfo &info);

void SetLevel(const Napi::CallbackInfo &info);