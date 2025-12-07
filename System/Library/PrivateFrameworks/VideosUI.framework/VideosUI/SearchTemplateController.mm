@interface SearchTemplateController
- (CGRect)_searchBar:(id)bar proposedSearchFieldFrame:(CGRect)frame;
- (_TtC8VideosUI24SearchTemplateController)initWithNibName:(id)name bundle:(id)bundle;
- (void)accountChanged:(id)changed;
- (void)handleWithKeyboardShowNotification:(id)notification;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vui_didMoveToParentViewController:(id)controller;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SearchTemplateController

- (void)accountChanged:(id)changed
{
  OUTLINED_FUNCTION_44_11();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_26();
  sub_1E41FDEE4();
  v5 = v3;
  sub_1E3942B94();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3942DA8();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3943230(v4);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3943AD8(v4);
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E39440D0(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E394418C(v4);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E394423C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E394476C();
}

- (void)vui_didMoveToParentViewController:(id)controller
{
  OUTLINED_FUNCTION_44_11();
  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_37_3();
  sub_1E3944A4C(v3);
}

- (_TtC8VideosUI24SearchTemplateController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3944F70();
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3945660();
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3945C68(controllerCopy);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3945DD4();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39468A4(clickedCopy);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  OUTLINED_FUNCTION_44_11();
  sub_1E4205F14();
  v6 = v4;
  v7 = v5;
  sub_1E3946C90();
}

- (CGRect)_searchBar:(id)bar proposedSearchFieldFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  OUTLINED_FUNCTION_44_11();
  v8 = v4;
  v9 = v5;
  v10 = OUTLINED_FUNCTION_50();
  sub_1E3947884(v10, x, y);
  OUTLINED_FUNCTION_3();

  v11 = OUTLINED_FUNCTION_6();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)handleWithKeyboardShowNotification:(id)notification
{
  OUTLINED_FUNCTION_44_11();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_26();
  sub_1E41FDEE4();
  v5 = v3;
  sub_1E3949CC8();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

@end