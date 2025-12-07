@interface DDParsecYeaAction
- (id)createViewController;
- (id)feedbackListener;
- (void)performFromView:(id)view;
- (void)prepareViewControllerForActionController:(id)controller;
- (void)report;
@end

@implementation DDParsecYeaAction

- (id)createViewController
{
  v4.receiver = self;
  v4.super_class = DDParsecYeaAction;
  createViewController = [(DDParsecAction *)&v4 createViewController];

  return createViewController;
}

- (id)feedbackListener
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DDParsecYeaAction_feedbackListener__block_invoke;
  block[3] = &unk_278290B50;
  block[4] = self;
  if (_MergedGlobals_6 == -1)
  {
    v2 = qword_280B122C8;
  }

  else
  {
    dispatch_once(&_MergedGlobals_6, block);
    v2 = qword_280B122C8;
  }

  return v2;
}

void __37__DDParsecYeaAction_feedbackListener__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v1 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];

  if ([(__CFString *)v18 length])
  {
    v3 = v18;
  }

  else
  {

    v3 = @"1.0";
  }

  v19 = v3;
  Helper_x8__kPARLookupClient = gotLoadHelper_x8__kPARLookupClient(v2);
  v8 = [v6 stringWithFormat:@"%@/%@", Helper_x8__kPARLookupClient, **(v5 + 2016), v7];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.lookup"];
  gotLoadHelper_x8__OBJC_CLASS___PARSessionConfiguration(v10);
  v12 = [objc_alloc(*(v11 + 1992)) initWithId:v9 userAgent:v8];
  Helper_x8__OBJC_CLASS___PARSession = gotLoadHelper_x8__OBJC_CLASS___PARSession(v13);
  v16 = [*(v15 + 1984) sessionWithConfiguration:{v12, Helper_x8__OBJC_CLASS___PARSession}];
  v17 = qword_280B122C8;
  qword_280B122C8 = v16;
}

- (void)report
{
  if (self->super.super.super._result)
  {
    v8 = DDResultGetParsecRawDomain();
    v3 = DDResultGetMatchedString();
    gotLoadHelper_x8__OBJC_CLASS___SFLookupHintRelevancyFeedback(v4);
    v6 = [objc_alloc(*(v5 + 1072)) initWithContext:v3 hintRange:0 domain:objc_msgSend(v3 discarded:"length") grade:{v8, DDShouldUseDebugHighlightForResult(), -[DDParsecYeaAction relevancy](self, "relevancy")}];
    feedbackListener = [(DDParsecYeaAction *)self feedbackListener];
    [feedbackListener didGradeLookupHintRelevancy:v6];
  }
}

- (void)prepareViewControllerForActionController:(id)controller
{
  controllerCopy = controller;
  [(DDParsecYeaAction *)self report];
  v5.receiver = self;
  v5.super_class = DDParsecYeaAction;
  [(DDAction *)&v5 prepareViewControllerForActionController:controllerCopy];
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  [(DDParsecYeaAction *)self report];
  v5.receiver = self;
  v5.super_class = DDParsecYeaAction;
  [(DDAction *)&v5 performFromView:viewCopy];
}

@end