@interface PaymentOfferCriteriaSetupWebView.Coordinator
- (_TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator)init;
- (void)webView:(WKWebView *)view requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)origin initiatedByFrame:(WKFrameInfo *)frame type:(int64_t)type decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation PaymentOfferCriteriaSetupWebView.Coordinator

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_1BD5272A8(actionCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)webView:(WKWebView *)view requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)origin initiatedByFrame:(WKFrameInfo *)frame type:(int64_t)type decisionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = view;
  v17[3] = origin;
  v17[4] = frame;
  v17[5] = type;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_1BE0528D4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1BE0DF250;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1BE107FA0;
  v20[5] = v19;
  viewCopy = view;
  originCopy = origin;
  frameCopy = frame;
  selfCopy = self;
  v25 = sub_1BD992D04(0, 0, v15, &unk_1BE0C7F30, v20);
  v25, v26, v27, v28, v29, v30, v31, v32;
}

- (_TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end