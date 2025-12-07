@interface AVTCompositorPipelineCache
+ (id)pipelineForPropertyName:(id)name device:(id)device;
- (AVTCompositorPipelineCache)initWithMetalHelper:(id)helper;
- (id)pipelineForPropertyName:(id)name;
@end

@implementation AVTCompositorPipelineCache

- (AVTCompositorPipelineCache)initWithMetalHelper:(id)helper
{
  helperCopy = helper;
  v11.receiver = self;
  v11.super_class = AVTCompositorPipelineCache;
  v6 = [(AVTCompositorPipelineCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pipelines = v7->_pipelines;
    v7->_pipelines = v8;
  }

  return v7;
}

- (id)pipelineForPropertyName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_pipelines objectForKeyedSubscript:?];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:nameCopy];
    v7 = [(AVTMetalHelper *)self->_helper functionNamed:v6];
    v5 = [[AVTCompositorPipeline alloc] initWithFunction:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v5;
}

+ (id)pipelineForPropertyName:(id)name device:(id)device
{
  nameCopy = name;
  deviceCopy = device;
  os_unfair_lock_lock(&pipelineForPropertyName_device__lock);
  if (!pipelineForPropertyName_device__cachePerDevice)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = pipelineForPropertyName_device__cachePerDevice;
    pipelineForPropertyName_device__cachePerDevice = v7;
  }

  v9 = MEMORY[0x1E696AD98];
  [deviceCopy registryID];
  v10 = [v9 numberWithUnsignedLongLong:?];
  v11 = [pipelineForPropertyName_device__cachePerDevice objectForKeyedSubscript:?];
  if (!v11)
  {
    v12 = [AVTMetalHelper helperForDevice:deviceCopy];
    v11 = [[AVTCompositorPipelineCache alloc] initWithMetalHelper:?];
    [pipelineForPropertyName_device__cachePerDevice setObject:? forKeyedSubscript:?];
  }

  v13 = [(AVTCompositorPipelineCache *)v11 pipelineForPropertyName:?];
  os_unfair_lock_unlock(&pipelineForPropertyName_device__lock);

  return v13;
}

@end