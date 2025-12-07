@interface InitObservation
@end

@implementation InitObservation

void ___InitObservation_block_invoke_2(uint64_t a1)
{
  v1 = _Log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C6152000, v1, OS_LOG_TYPE_DEFAULT, "Keybag lock status has changed", v3, 2u);
  }

  _lastNotificationTime = CFAbsoluteTimeGetCurrent();
  v2 = _KeyBagLockState();
  _NotifyObserversWithContentProtectionState(v2);
}

id ___InitObservation_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_create("com.apple.message.EFContentProtectionObserver", 0);
  v1 = _observationQueue;
  _observationQueue = v0;

  v2 = _KeyBagLockState();
  atomic_store(v2, sContentProtectionState);
  v3 = _Log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_1E8248910[v2 + 1];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C6152000, v3, OS_LOG_TYPE_DEFAULT, "Keybag lock status initialized to %{public}@", &v6, 0xCu);
  }

  dispatch_async(_observationQueue, &__block_literal_global_85);
  return EFLogRegisterStateCaptureBlock(_observationQueue, @"EFContentProtectionObserver", 4, &__block_literal_global_95);
}

void ___InitObservation_block_invoke_83()
{
  if (MKBDeviceFormattedForContentProtection())
  {
    out_token = -1431655766;
    notify_register_dispatch(*MEMORY[0x1E69B1A70], &out_token, _observationQueue, &__block_literal_global_88);
    _beganObservingTime = CFAbsoluteTimeGetCurrent();
  }

  v0 = _KeyBagLockState();
  if (v0 != -1)
  {
    _NotifyObserversWithContentProtectionState(v0);
  }
}

@end