@interface UIDynamicAnimation
@end

@implementation UIDynamicAnimation

void *__47___UIDynamicAnimation__updateAnimations_timer___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[20] & 2) != 0)
  {
    return [a2 _completeWithFinished:1];
  }

  return result;
}

void *__27___UIDynamicAnimation_init__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  result = objc_msgSend_isEqualToString_(v0);
  _MergedGlobals_3_2 = result;
  return result;
}

@end