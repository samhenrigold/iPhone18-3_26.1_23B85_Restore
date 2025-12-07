@interface BankConnectWebViewContent.Coordinator
- (_TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator)init;
- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation BankConnectWebViewContent.Coordinator

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_23867C408(navigation);
}

- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = view;
  v13[3] = action;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23875ED80();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23877C290;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2387735A0;
  v16[5] = v15;
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_2386E65D8(0, 0, v11, &unk_238764DA0, v16);
}

- (_TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end