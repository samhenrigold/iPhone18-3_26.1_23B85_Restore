@interface KNSinglePlaybackLayerHost
- (KNAnimationScreenEnvironment)screenEnvironment;
- (KNSinglePlaybackLayerHost)initWithContainerLayer:(id)layer screenEnvironment:(id)environment;
@end

@implementation KNSinglePlaybackLayerHost

- (KNSinglePlaybackLayerHost)initWithContainerLayer:(id)layer screenEnvironment:(id)environment
{
  layerCopy = layer;
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = KNSinglePlaybackLayerHost;
  v9 = [(KNSinglePlaybackLayerHost *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerLayer, layer);
    [(CALayer *)v10->_containerLayer setMasksToBounds:1];
    v11 = [environmentCopy copy];
    screenEnvironment = v10->_screenEnvironment;
    v10->_screenEnvironment = v11;

    v13 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    rootLayer = v10->_rootLayer;
    v10->_rootLayer = v13;

    [(CALayer *)v10->_containerLayer bounds];
    TSURectWithSize();
    [(CALayer *)v10->_rootLayer setFrame:?];
    [(CALayer *)v10->_containerLayer addSublayer:v10->_rootLayer];
  }

  return v10;
}

- (KNAnimationScreenEnvironment)screenEnvironment
{
  v2 = [(KNAnimationScreenEnvironment *)self->_screenEnvironment copy];

  return v2;
}

@end