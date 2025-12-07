@interface NSXPCCoder(WFFileCoder)
- (WFSecurityScopedFileCoder)wfFileCoder;
@end

@implementation NSXPCCoder(WFFileCoder)

- (WFSecurityScopedFileCoder)wfFileCoder
{
  v4.receiver = self;
  v4.super_class = &off_282F99CE8;
  v2 = objc_msgSendSuper2(&v4, sel_wfFileCoder);
  if (!v2)
  {
    v2 = objc_opt_new();
    [v2 setDeletionResponsibility:1];
    [self setWfFileCoder:v2];
  }

  return v2;
}

@end