@interface UIViewShouldUpdateTraitCollectionOnlyWhenProcessingChanges
@end

@implementation UIViewShouldUpdateTraitCollectionOnlyWhenProcessingChanges

void ___UIViewShouldUpdateTraitCollectionOnlyWhenProcessingChanges_block_invoke()
{
  v0 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ViewTraitCollectionUpdateMode, @"ViewTraitCollectionUpdateMode", _UIInternalPreferenceUpdateInteger);
  v1 = qword_1ED48B7F8;
  if (v0)
  {
    v1 = 0;
  }

  if (v1 == -1)
  {
    goto LABEL_11;
  }

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_15;
  }

  if (!dyld_program_sdk_at_least())
  {
LABEL_11:
    v2 = 0;
    goto LABEL_15;
  }

  v3 = _UIMainBundleIdentifier();
  if (objc_msgSend_isEqualToString_(v3) && !_os_feature_enabled_impl())
  {
    v2 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3))
  {
    v2 = _os_feature_enabled_impl();
  }

  else
  {
    v2 = 1;
  }

LABEL_15:
  byte_1EA9946EA = v2;
}

@end