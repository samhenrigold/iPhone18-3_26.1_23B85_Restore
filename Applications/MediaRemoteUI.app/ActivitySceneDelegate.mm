@interface ActivitySceneDelegate
- (void)lockscreenViewController:(id)controller didUpdatePreferredContentSize:(CGSize)size;
- (void)lockscreenViewController:(id)controller didUpdateRestrictedRects:(id)rects;
- (void)lockscreenViewController:(id)controller viewWillTransitionToSize:(CGSize)size;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation ActivitySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10001B5BC(sceneCopy, v11);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100019220(disconnectCopy, v5);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100019AEC(foregroundCopy, v5);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_10001A32C(backgroundCopy, v5);
}

- (void)lockscreenViewController:(id)controller didUpdatePreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  selfCopy = self;
  sub_10001AEEC(controllerCopy, selfCopy, width, height);
}

- (void)lockscreenViewController:(id)controller didUpdateRestrictedRects:(id)rects
{
  sub_100006334(0, &qword_1000711C0, NSValue_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10001B118(controllerCopy, v6);
}

- (void)lockscreenViewController:(id)controller viewWillTransitionToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  selfCopy = self;
  sub_10001B484(controllerCopy, selfCopy, width, height);
}

@end