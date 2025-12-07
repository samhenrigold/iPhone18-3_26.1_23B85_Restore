@interface DRMainSceneDelegate
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)viewController:(id)controller didUpdatePresentation:(id)presentation forSession:(unsigned int)session;
- (void)viewController:(id)controller requestImagesForSessionID:(unsigned int)d client:(id)client itemIndexes:(id)indexes;
- (void)viewController:(id)controller setTouchOffset:(CGPoint)offset forSession:(unsigned int)session;
@end

@implementation DRMainSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  obj = [[DRTouchTrackingWindow alloc] initWithWindowScene:sceneCopy];
  v7 = +[DRDragSessionManager sharedSessionManager];
  [(DRTouchTrackingWindow *)obj setTrackingDelegate:v7];

  [(DRTouchTrackingWindow *)obj setHidden:0];
  objc_storeStrong(&self->_touchTrackingWindow, obj);
  v8 = [[DRContentWindow alloc] initWithWindowScene:sceneCopy];
  screen = [sceneCopy screen];
  [screen bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [[DRViewController alloc] initWithDelegate:self initialFrame:v11, v13, v15, v17];
  screen2 = [sceneCopy screen];

  LODWORD(sceneCopy) = [screen2 _isEmbeddedScreen];
  if (sceneCopy)
  {
    [(DRViewController *)v18 observeInterfaceOrientationUpdates];
  }

  [(DRContentWindow *)v8 setRootViewController:v18];
  [(DRContentWindow *)v8 makeKeyAndVisible];
  window = self->_window;
  self->_window = &v8->super;
}

- (void)viewController:(id)controller requestImagesForSessionID:(unsigned int)d client:(id)client itemIndexes:(id)indexes
{
  v7 = *&d;
  indexesCopy = indexes;
  clientCopy = client;
  v10 = +[DRDragSessionManager sharedSessionManager];
  [v10 requestImagesForSessionID:v7 client:clientCopy itemIndexSet:indexesCopy];
}

- (void)viewController:(id)controller setTouchOffset:(CGPoint)offset forSession:(unsigned int)session
{
  v5 = *&session;
  y = offset.y;
  x = offset.x;
  v8 = +[DRDragSessionManager sharedSessionManager];
  [v8 setTouchOffset:v5 forSession:{x, y}];
}

- (void)viewController:(id)controller didUpdatePresentation:(id)presentation forSession:(unsigned int)session
{
  v5 = *&session;
  presentationCopy = presentation;
  v7 = +[DRDragSessionManager sharedSessionManager];
  [v7 presentationDidUpdate:presentationCopy forSession:v5];
}

@end