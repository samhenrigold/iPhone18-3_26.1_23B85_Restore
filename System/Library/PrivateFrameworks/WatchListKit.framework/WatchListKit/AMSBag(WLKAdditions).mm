@interface AMSBag(WLKAdditions)
+ (id)wlk_defaultBag;
@end

@implementation AMSBag(WLKAdditions)

+ (id)wlk_defaultBag
{
  v1 = WLKStartupSignpostLogObject(self);
  if (os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKBag.DefaultAMSBag", &unk_272A8884E, buf, 2u);
  }

  v2 = [MEMORY[0x277CEE3F8] bagForProfile:@"TVApp" profileVersion:@"1"];
  v3 = WLKStartupSignpostLogObject(v2);
  if (os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKBag.DefaultAMSBag", &unk_272A8884E, v5, 2u);
  }

  return v2;
}

@end