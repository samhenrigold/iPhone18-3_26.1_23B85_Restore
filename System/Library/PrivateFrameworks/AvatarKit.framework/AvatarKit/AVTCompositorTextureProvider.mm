@interface AVTCompositorTextureProvider
- (AVTCompositorTextureProvider)initWithCompositor:(id)compositor memoji:(id)memoji propertyName:(id)name;
- (id)newTextureForDevice:(id)device;
- (void)dealloc;
- (void)renderToTexture:(id)texture computeCommandHandler:(id)handler blitCommandHandler:(id)commandHandler completionHandler:(id)completionHandler helper:(id)helper;
@end

@implementation AVTCompositorTextureProvider

- (AVTCompositorTextureProvider)initWithCompositor:(id)compositor memoji:(id)memoji propertyName:(id)name
{
  compositorCopy = compositor;
  memojiCopy = memoji;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = AVTCompositorTextureProvider;
  v11 = [(AVTCompositorTextureProvider *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_memoji, memojiCopy);
    objc_storeWeak(&v12->_compositor, compositorCopy);
    v13 = [nameCopy copy];
    propertyName = v12->_propertyName;
    v12->_propertyName = v13;

    v12->_skinIsDirty = 1;
    v12->_componentDirtyMask = -1;
    WeakRetained = objc_loadWeakRetained(&v12->_compositor);
    [WeakRetained addClient:?];
  }

  return v12;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_compositor);
  [WeakRetained removeClient:?];

  v4.receiver = self;
  v4.super_class = AVTCompositorTextureProvider;
  [(AVTCompositorTextureProvider *)&v4 dealloc];
}

- (id)newTextureForDevice:(id)device
{
  deviceCopy = device;
  v5 = [AVTCompositorPipelineCache pipelineForPropertyName:"pipelineForPropertyName:device:" device:?];
  pipeline = self->_pipeline;
  self->_pipeline = v5;

  MTLPixelFormatGetInfoForDevice();
  +[AVTMemoji skinTextureSize];
  v7 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:? width:? height:? mipmapped:?];
  [v7 setUsage:?];
  [v7 setStorageMode:?];
  v8 = [deviceCopy newTextureWithDescriptor:?];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:self->_propertyName];
  [v8 setLabel:?];

  return v8;
}

- (void)renderToTexture:(id)texture computeCommandHandler:(id)handler blitCommandHandler:(id)commandHandler completionHandler:(id)completionHandler helper:(id)helper
{
  textureCopy = texture;
  handlerCopy = handler;
  commandHandlerCopy = commandHandler;
  completionHandlerCopy = completionHandler;
  helperCopy = helper;
  if (self->_lastRenderedTexture == textureCopy)
  {
    if (!self->_skinIsDirty && !self->_componentDirtyMask)
    {
      goto LABEL_8;
    }
  }

  else
  {
    self->_skinIsDirty = 1;
    self->_componentDirtyMask = -1;
  }

  v16 = objc_alloc(MEMORY[0x1E695DFA8]);
  [(NSMutableSet *)self->_helperTokens count];
  v17 = [v16 initWithCapacity:?];
  pipeline = self->_pipeline;
  WeakRetained = objc_loadWeakRetained(&self->_memoji);
  [AVTCompositorPipeline compositeTexture:"compositeTexture:forMemoji:considerSkin:componentsToConsider:computeCommandHandler:blitCommandHandler:completionHandler:helper:helperTokens:" forMemoji:completionHandlerCopy considerSkin:helperCopy componentsToConsider:v17 computeCommandHandler:? blitCommandHandler:? completionHandler:? helper:? helperTokens:?];

  v20 = objc_loadWeakRetained(&self->_memoji);
  usageIntent = [v20 usageIntent];

  if (usageIntent != 2)
  {
    objc_storeStrong(&self->_helperTokens, v17);
  }

  self->_skinIsDirty = 0;
  self->_componentDirtyMask = 0;
  self->_lastRenderedTexture = textureCopy;

LABEL_8:
}

@end