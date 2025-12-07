@interface NDOAMSUIComposition
+ (void)makeFollowUpAMSViewControllerWithAgent:(id)agent url:(id)url presenter:(id)presenter headers:(id)headers body:(id)body onDismiss:(id)dismiss completion:(id)completion;
- (NDOAMSUIComposition)init;
@end

@implementation NDOAMSUIComposition

+ (void)makeFollowUpAMSViewControllerWithAgent:(id)agent url:(id)url presenter:(id)presenter headers:(id)headers body:(id)body onDismiss:(id)dismiss completion:(id)completion
{
  presenterCopy = presenter;
  v23 = sub_25BDDF408();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &presenterCopy - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(dismiss);
  v15 = _Block_copy(completion);
  sub_25BDDF3E8();
  v16 = sub_25BDDFE08();
  v17 = sub_25BDDFE08();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  agentCopy = agent;
  v21 = presenterCopy;
  sub_25BDAC334(agentCopy, v13, v21, v16, v17, sub_25BDAAFB0, v18, sub_25BDAC798, v19);

  (*(v11 + 8))(v13, v23);
}

- (NDOAMSUIComposition)init
{
  v3.receiver = self;
  v3.super_class = NDOAMSUIComposition;
  return [(NDOAMSUIComposition *)&v3 init];
}

@end