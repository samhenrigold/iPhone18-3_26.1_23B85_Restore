@interface UISupportsGameControllers
@end

@implementation UISupportsGameControllers

void ___UISupportsGameControllers_block_invoke()
{
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UIFocusSupportsGameControllers, @"UIFocusSupportsGameControllers", _UIInternalPreferenceUpdateInteger) || !qword_1ED48B658)
  {
    v0 = dyld_program_sdk_at_least();
  }

  else
  {
    v0 = qword_1ED48B658 > 0;
  }

  _MergedGlobals_1334 = v0;
}

@end