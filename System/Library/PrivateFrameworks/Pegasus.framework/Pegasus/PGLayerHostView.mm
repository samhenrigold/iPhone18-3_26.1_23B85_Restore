@interface PGLayerHostView
- (PGLayerHostView)initWithFrame:(CGRect)frame;
- (void)_manageSharingOfTouchesBetweenClientAndHostContext;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHostedWindowHostingHandle:(id)handle;
- (void)setSceneView:(id)view;
@end

@implementation PGLayerHostView

- (PGLayerHostView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = PGLogCommon(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGLayerHostView initWithFrame:?];
  }

  v10.receiver = self;
  v10.super_class = PGLayerHostView;
  return [(PGLayerHostView *)&v10 initWithFrame:x, y, width, height];
}

- (void)dealloc
{
  v3 = PGLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGLayerHostView initWithFrame:?];
  }

  v4.receiver = self;
  v4.super_class = PGLayerHostView;
  [(PGLayerHostView *)&v4 dealloc];
}

- (void)setHostedWindowHostingHandle:(id)handle
{
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy)
  {
    remoteView = self->_remoteView;
    v9 = v5;
    if (remoteView)
    {
      [(_UIRemoteView *)remoteView setHostedWindowHostingHandle:v5];
    }

    else
    {
      v7 = [MEMORY[0x1E69DD660] viewWithHostedWindowHostingHandle:v5];
      v8 = self->_remoteView;
      self->_remoteView = v7;

      [(PGLayerHostView *)self addSubview:self->_remoteView];
    }

    handleCopy = [(PGLayerHostView *)self _manageSharingOfTouchesBetweenClientAndHostContext];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](handleCopy, v5);
}

- (void)setSceneView:(id)view
{
  viewCopy = view;
  sceneView = self->_sceneView;
  if (sceneView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)sceneView removeFromSuperview];
    objc_storeStrong(&self->_sceneView, view);
    viewCopy = v7;
    if (v7)
    {
      sceneView = [(PGLayerHostView *)self addSubview:v7];
      viewCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](sceneView, viewCopy);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PGLayerHostView;
  [(PGLayerHostView *)&v4 layoutSubviews];
  sceneView = self->_sceneView;
  [(PGLayerHostView *)self bounds];
  [(UIView *)sceneView setFrame:?];
}

- (void)_manageSharingOfTouchesBetweenClientAndHostContext
{
  touchDeliveryPolicyAssertion = self->_touchDeliveryPolicyAssertion;
  self->_touchDeliveryPolicyAssertion = 0;

  hostedWindowHostingHandle = [(PGLayerHostView *)self hostedWindowHostingHandle];
  if (hostedWindowHostingHandle)
  {
    v5 = hostedWindowHostingHandle;
    window = [(PGLayerHostView *)self window];

    if (window)
    {
      contextID = [(_UIRemoteView *)self->_remoteView contextID];
      window2 = [(PGLayerHostView *)self window];
      _contextId = [window2 _contextId];

      v10 = objc_alloc_init(MEMORY[0x1E698E440]);
      v11 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:contextID withHostContextId:_contextId];
      endpoint = [v10 endpoint];
      [v11 setAssertionEndpoint:endpoint];

      v13 = v11;
      v14 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
      if (v14)
      {
        objc_storeStrong(&self->_touchDeliveryPolicyAssertion, v10);
        [v14 ipc_addPolicy:v13];
      }
    }
  }
}

void __69__PGLayerHostView__manageSharingOfTouchesBetweenClientAndHostContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PGLogCommon(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __69__PGLayerHostView__manageSharingOfTouchesBetweenClientAndHostContext__block_invoke_cold_1(a1);
  }
}

- (void)initWithFrame:(void *)a1 .cold.1(void *a1)
{
  v6 = _PGLogMethodProem(a1, 1);
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __69__PGLayerHostView__manageSharingOfTouchesBetweenClientAndHostContext__block_invoke_cold_1(uint64_t a1)
{
  v6 = _PGLogMethodProem(*(a1 + 32), 0);
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

@end