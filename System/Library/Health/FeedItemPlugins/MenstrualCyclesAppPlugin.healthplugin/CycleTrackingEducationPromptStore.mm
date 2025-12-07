@interface CycleTrackingEducationPromptStore
- (void)didUpdateKeyValueDomain:(id)domain;
@end

@implementation CycleTrackingEducationPromptStore

- (void)didUpdateKeyValueDomain:(id)domain
{
  domainCopy = domain;

  sub_29E22B6F4(domainCopy);
}

@end