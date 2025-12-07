@interface VisualPairingUIProvider.CardContentController
- (_TtCC21TDGSharingViewService23VisualPairingUIProviderP33_A88FF32BE6099C25EAEADCDE9349013F21CardContentController)initWithContentView:(id)view;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VisualPairingUIProvider.CardContentController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VisualPairingUIProvider.CardContentController();
  v4 = v6.receiver;
  [(VisualPairingUIProvider.CardContentController *)&v6 viewWillAppear:appearCopy];
  v5 = _AXSVoiceOverTouchScreenCurtainEnabled() != 0;
  v4[OBJC_IVAR____TtCC21TDGSharingViewService23VisualPairingUIProviderP33_A88FF32BE6099C25EAEADCDE9349013F21CardContentController_hasScreenCurtain] = v5;
  _AXSVoiceOverTouchSetScreenCurtainEnabled();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for VisualPairingUIProvider.CardContentController();
  v4 = v5.receiver;
  [(VisualPairingUIProvider.CardContentController *)&v5 viewWillDisappear:disappearCopy];
  _AXSVoiceOverTouchSetScreenCurtainEnabled();
}

- (_TtCC21TDGSharingViewService23VisualPairingUIProviderP33_A88FF32BE6099C25EAEADCDE9349013F21CardContentController)initWithContentView:(id)view
{
  self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtCC21TDGSharingViewService23VisualPairingUIProviderP33_A88FF32BE6099C25EAEADCDE9349013F21CardContentController_hasScreenCurtain] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for VisualPairingUIProvider.CardContentController();
  return [(ViewServiceUIViewControllerExtendedHeight *)&v5 initWithContentView:view];
}

@end