@interface SLRemoteView
- (SLRemoteView)initWithServiceProxyClass:(Class)class maxWidth:(double)width;
- (id)_contentProviderForCurrentConfiguration;
- (void)_provideContentForLayerContextID:(unint64_t)d style:(id)style yield:(id)yield;
- (void)serviceProxyDidConnect:(id)connect;
- (void)serviceProxyDidDisconnect:(id)disconnect;
- (void)setMaxWidth:(double)width;
- (void)setRemoteContentIsLoaded:(BOOL)loaded;
- (void)setRemoteRenderingEnabled:(BOOL)enabled;
@end

@implementation SLRemoteView

- (SLRemoteView)initWithServiceProxyClass:(Class)class maxWidth:(double)width
{
  v42[4] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = SLRemoteView;
  v5 = [(SLRemoteView *)&v41 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_maxWidth = width;
    v5->_remoteRenderingEnabled = 0;
    v7 = objc_alloc_init(MEMORY[0x277D76260]);
    slotView = v6->_slotView;
    v6->_slotView = v7;

    _contentProviderForCurrentConfiguration = [(SLRemoteView *)v6 _contentProviderForCurrentConfiguration];
    [(_UISlotView *)v6->_slotView _setSlotAnyContentProvider:_contentProviderForCurrentConfiguration];

    [(_UISlotView *)v6->_slotView setUserInteractionEnabled:0];
    [(_UISlotView *)v6->_slotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SLRemoteView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    slotView = [(SLRemoteView *)v6 slotView];
    [(SLRemoteView *)v6 addSubview:slotView];

    v28 = MEMORY[0x277CCAAD0];
    slotView2 = [(SLRemoteView *)v6 slotView];
    centerXAnchor = [slotView2 centerXAnchor];
    centerXAnchor2 = [(SLRemoteView *)v6 centerXAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v42[0] = v34;
    slotView3 = [(SLRemoteView *)v6 slotView];
    centerYAnchor = [slotView3 centerYAnchor];
    centerYAnchor2 = [(SLRemoteView *)v6 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v42[1] = v30;
    heightAnchor = [(SLRemoteView *)v6 heightAnchor];
    slotView4 = [(SLRemoteView *)v6 slotView];
    heightAnchor2 = [slotView4 heightAnchor];
    v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v42[2] = v14;
    widthAnchor = [(SLRemoteView *)v6 widthAnchor];
    slotView5 = [(SLRemoteView *)v6 slotView];
    widthAnchor2 = [slotView5 widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v42[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v28 activateConstraints:v19];

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INTERACTIVE, 0);

    v22 = dispatch_queue_create("com.apple.SocialLayer.SLRemoteView.RemoteRendering", v21);
    remoteRenderingQueue = v6->_remoteRenderingQueue;
    v6->_remoteRenderingQueue = v22;

    v24 = [SLDServiceProxy proxyForServiceClass:class targetSerialQueue:v6->_remoteRenderingQueue delegate:v6];
    serviceProxy = v6->_serviceProxy;
    v6->_serviceProxy = v24;

    objc_initWeak(&location, v6);
    remoteRenderingQueue = [(SLRemoteView *)v6 remoteRenderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SLRemoteView_initWithServiceProxyClass_maxWidth___block_invoke;
    block[3] = &unk_278925C50;
    objc_copyWeak(&v39, &location);
    dispatch_async(remoteRenderingQueue, block);

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __51__SLRemoteView_initWithServiceProxyClass_maxWidth___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained serviceProxy];
  [v1 connect];
}

- (void)setMaxWidth:(double)width
{
  v5 = SL_CGFloatApproximatelyEqualToFloat(width, self->_maxWidth);
  if (!v5)
  {
    v6 = SLFrameworkLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SLRemoteView *)self setMaxWidth:v6, width];
    }

    self->_maxWidth = width;
    slotView = [(SLRemoteView *)self slotView];
    [slotView _updateContent];

    [(SLRemoteView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setRemoteContentIsLoaded:(BOOL)loaded
{
  if (self->_remoteContentIsLoaded != loaded)
  {
    self->_remoteContentIsLoaded = loaded;
    [(SLRemoteView *)self remoteContentIsLoadedValueChanged];
  }
}

- (void)setRemoteRenderingEnabled:(BOOL)enabled
{
  if (self->_remoteRenderingEnabled != enabled)
  {
    self->_remoteRenderingEnabled = enabled;
    if (enabled)
    {
      v4 = SLFrameworkLogHandle(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        [(SLRemoteView *)self setRemoteRenderingEnabled:v4];
      }

      slotView = [(SLRemoteView *)self slotView];
      [slotView _updateContent];
    }
  }
}

- (id)_contentProviderForCurrentConfiguration
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SLRemoteView__contentProviderForCurrentConfiguration__block_invoke;
  v4[3] = &unk_2789264C8;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __55__SLRemoteView__contentProviderForCurrentConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _provideContentForLayerContextID:a2 style:v8 yield:v7];
}

- (void)_provideContentForLayerContextID:(unint64_t)d style:(id)style yield:(id)yield
{
  styleCopy = style;
  yieldCopy = yield;
  remoteContentIsLoaded = [(SLRemoteView *)self remoteContentIsLoaded];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5;
  v37 = __Block_byref_object_dispose__5;
  v38 = [(SLRemoteView *)self _finalSlotStyleForStyle:styleCopy];
  placeholderSlotContent = [(SLRemoteView *)self placeholderSlotContent];
  if ([(SLRemoteView *)self shouldInvalidatePreviousPlaceHolderSlotContent:placeholderSlotContent forStyle:v34[5]])
  {
    v12 = [(SLRemoteView *)self makePlaceholderSlotContentForStyle:v34[5]];
    [(SLRemoteView *)self setPlaceholderSlotContent:v12];
  }

  if (!remoteContentIsLoaded || ([placeholderSlotContent contentSize], v14 = v13, v16 = v15, -[SLRemoteView placeholderSlotContent](self, "placeholderSlotContent"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "contentSize"), v19 = v18, v21 = v20, v17, v14 != v19) || v16 != v21)
  {
    placeholderSlotContent2 = [(SLRemoteView *)self placeholderSlotContent];
    yieldCopy[2](yieldCopy, placeholderSlotContent2);
  }

  if ([(SLRemoteView *)self remoteRenderingEnabled]&& (v23 = [(SLRemoteView *)self maxWidth], v24 <= 0.0))
  {
    v28 = SLFrameworkLogHandle(v23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [SLRemoteView _provideContentForLayerContextID:v28 style:? yield:?];
    }
  }

  else if ([(SLRemoteView *)self remoteRenderingEnabled])
  {
    serviceProxy = [(SLRemoteView *)self serviceProxy];
    connectionActive = [serviceProxy connectionActive];

    if (connectionActive)
    {
      remoteRenderingQueue = [(SLRemoteView *)self remoteRenderingQueue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __61__SLRemoteView__provideContentForLayerContextID_style_yield___block_invoke;
      v29[3] = &unk_2789264F0;
      v29[4] = self;
      v31 = &v33;
      dCopy = d;
      v30 = yieldCopy;
      dispatch_async(remoteRenderingQueue, v29);
    }
  }

  _Block_object_dispose(&v33, 8);
}

- (void)serviceProxyDidConnect:(id)connect
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SLRemoteView_serviceProxyDidConnect___block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__SLRemoteView_serviceProxyDidConnect___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) slotView];
  [v1 _updateContent];
}

- (void)serviceProxyDidDisconnect:(id)disconnect
{
  [(SLRemoteView *)self setLastRenderedSlotStyle:0];

  [(SLRemoteView *)self setRemoteContentIsLoaded:0];
}

- (void)setMaxWidth:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[SLRemoteView: %p] Updating remote content with NEW max width: [%f]", &v3, 0x16u);
}

- (void)setRemoteRenderingEnabled:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 maxWidth];
  v5 = 134218240;
  v6 = a1;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[SLRemoteView: %p] Remote rendering is now enabled. Updating remote content with max width: [%f]", &v5, 0x16u);
}

- (void)_provideContentForLayerContextID:(uint64_t)a1 style:(NSObject *)a2 yield:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLRemoteView %p] Remote rendering was enabled, but maxWidth is still zero; this is a bug! We will not render remote content to avoid unexpected behavior.", &v2, 0xCu);
}

@end