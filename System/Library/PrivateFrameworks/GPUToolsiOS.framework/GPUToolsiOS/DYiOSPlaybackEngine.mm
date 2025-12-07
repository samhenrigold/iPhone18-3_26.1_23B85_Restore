@interface DYiOSPlaybackEngine
+ (CATransform3D)_convertToCATransform3D:(SEL)d;
+ (CGPoint)_convertToCGPoint:(const Argument *)point;
- (CATransform3D)_applyInterfaceOrientationToTransform:(SEL)transform;
- (CGRect)boundsForCurrentInterfaceOrientation;
- (DYiOSPlaybackEngine)initWithCaptureStore:(id)store shouldCreateViewController:(BOOL)controller;
- (id).cxx_construct;
- (id)createLayerWithID:(unint64_t)d contentRect:(CGRect)rect contentsScale:(double)scale properties:(id)properties isCoreAnimationSurface:(BOOL)surface;
- (id)currentTopLayer;
- (id)layerForID:(unint64_t)d;
- (void)_setupLayer:(id)layer contentRect:(CGRect)rect contentsScale:(double)scale properties:(id)properties isCoreAnimationSurface:(BOOL)surface;
- (void)applyLayersVisibility;
- (void)deleteLayer:(unint64_t)layer;
- (void)prepareLayerForPresent:(id)present;
- (void)resetLayersVisibility;
- (void)setAnchorPoint:(const Argument *)point forLayerID:(unint64_t)d;
- (void)setPosition:(const Argument *)position forLayerID:(unint64_t)d;
- (void)setTransform:(const Argument *)transform forLayerID:(unint64_t)d withScreenToLayerScale:(const void *)scale;
- (void)updateLayer:(id)layer contentRect:(CGRect)rect contentsScale:(double)scale properties:(id)properties;
@end

@implementation DYiOSPlaybackEngine

+ (CATransform3D)_convertToCATransform3D:(SEL)d
{
  for (i = 0; i != 16; ++i)
  {
    *(&retstr->m11 + i) = GPUTools::FD::Argument::ViewAsScalarArray<double>(a4, i);
  }

  return result;
}

+ (CGPoint)_convertToCGPoint:(const Argument *)point
{
  v4 = GPUTools::FD::Argument::ViewAsScalarArray<double>(point, 0).n64_u64[0];
  v5.n64_u64[0] = GPUTools::FD::Argument::ViewAsScalarArray<double>(point, 1uLL).n64_u64[0];
  v6 = *&v4;
  result.y = v5.n64_f64[0];
  result.x = v6;
  return result;
}

- (DYiOSPlaybackEngine)initWithCaptureStore:(id)store shouldCreateViewController:(BOOL)controller
{
  controllerCopy = controller;
  v36 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (!pthread_main_np())
  {
    __assert_rtn("[DYiOSPlaybackEngine initWithCaptureStore:shouldCreateViewController:]", &unk_24DC2B171, 0, "pthread_main_np()");
  }

  v33.receiver = self;
  v33.super_class = DYiOSPlaybackEngine;
  v7 = [(DYPlaybackEngine *)&v33 initWithCaptureStore:storeCopy];
  if (v7)
  {
    if (controllerCopy)
    {
      v8 = [DYPlaybackViewController initWithNibName:"initWithNibName:bundle:" bundle:?];
      viewController = v7->_viewController;
      v7->_viewController = &v8->super;

      *components = xmmword_24DC2AD30;
      v35 = unk_24DC2AD40;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v11 = CGColorCreate(DeviceRGB, components);
      view = [(UIViewController *)v7->_viewController view];
      layer = [view layer];
      [layer setBackgroundColor:?];

      CGColorRelease(v11);
      CGColorSpaceRelease(DeviceRGB);
      v14 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      hostLayer = v7->_hostLayer;
      v7->_hostLayer = v14;

      [(CALayer *)v7->_hostLayer setOpaque:?];
      mainScreen = [MEMORY[0x277D75998] mainScreen];
      [mainScreen bounds];
      [(CALayer *)v7->_hostLayer setFrame:?];

      mainScreen2 = [MEMORY[0x277D75998] mainScreen];
      [mainScreen2 scale];
      [(CALayer *)v7->_hostLayer setContentsScale:?];

      view2 = [(UIViewController *)v7->_viewController view];
      layer2 = [view2 layer];
      [layer2 addSublayer:?];

      mainScreen3 = [MEMORY[0x277D75998] mainScreen];
      [mainScreen3 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v37.origin.x = v22;
      v37.origin.y = v24;
      v37.size.width = v26;
      v37.size.height = v28;
      v7->_screenCenter.x = CGRectGetWidth(v37) * 0.5;
      v38.origin.x = v22;
      v38.origin.y = v24;
      v38.size.width = v26;
      v38.size.height = v28;
      v7->_screenCenter.y = CGRectGetHeight(v38) * 0.5;
      v7->_interfaceOrientation = 1;
    }

    else
    {
      v29 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      v30 = v7->_hostLayer;
      v7->_hostLayer = v29;

      [(CALayer *)v7->_hostLayer setOpaque:?];
    }

    v31 = v7;
  }

  return v7;
}

- (void)_setupLayer:(id)layer contentRect:(CGRect)rect contentsScale:(double)scale properties:(id)properties isCoreAnimationSurface:(BOOL)surface
{
  surfaceCopy = surface;
  layerCopy = layer;
  propertiesCopy = properties;
  if (surfaceCopy)
  {
    [layerCopy setFrame:?];
  }

  else
  {
    [layerCopy setPosition:?];
  }

  [layerCopy setBounds:?];
  [layerCopy setContentsScale:?];
  [DYiOSPlaybackEngine setProperties:"setProperties:forLayer:" forLayer:?];
}

- (id)createLayerWithID:(unint64_t)d contentRect:(CGRect)rect contentsScale:(double)scale properties:(id)properties isCoreAnimationSurface:(BOOL)surface
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  propertiesCopy = properties;
  if (scale == 0.0)
  {
    __assert_rtn("[DYiOSPlaybackEngine createLayerWithID:contentRect:contentsScale:properties:isCoreAnimationSurface:]", &unk_24DC2B171, 0, "contentsScale != 0.0");
  }

  if (d)
  {
    goto LABEL_3;
  }

  left = self->_layerMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_3;
  }

  do
  {
    v14 = left;
    left = left->super.super.isa;
  }

  while (left);
  if (v14 == &self->_layerMap.__tree_.__end_node_ || v14->super._playbackQueue)
  {
LABEL_3:
    [(DYiOSPlaybackEngine *)self deleteLayer:?];
    GPUTools::AutoCATransaction::AutoCATransaction(v25, 1, 1);
    newLayer = [(DYiOSPlaybackEngine *)self newLayer];
    v23 = newLayer;
    [newLayer setOpaque:?];
    if (dCopy)
    {
      [DYiOSPlaybackEngine _setupLayer:"_setupLayer:contentRect:contentsScale:properties:isCoreAnimationSurface:" contentRect:? contentsScale:? properties:? isCoreAnimationSurface:?];
    }

    else
    {
      mainScreen = [MEMORY[0x277D75998] mainScreen];
      [newLayer setPosition:?];
      [mainScreen scale];
      [newLayer setContentsScale:?];
      [v22 _applyInterfaceOrientationToTransform:{*MEMORY[0x277CD9DE8], *(MEMORY[0x277CD9DE8] + 16), *(MEMORY[0x277CD9DE8] + 32), *(MEMORY[0x277CD9DE8] + 48), *(MEMORY[0x277CD9DE8] + 56), *(MEMORY[0x277CD9DE8] + 64), *(MEMORY[0x277CD9DE8] + 80), *(MEMORY[0x277CD9DE8] + 96), *(MEMORY[0x277CD9DE8] + 112)}];
      [newLayer setTransform:{v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7]}];
      if ((self->_interfaceOrientation - 3) <= 1)
      {
        [mainScreen bounds];
      }

      [mainScreen bounds];
      [newLayer setBounds:?];
    }

    *&v21 = &dCopy;
    v17 = std::__tree<std::__value_type<unsigned long long,CALayer * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CALayer * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CALayer * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_layerMap, &dCopy, &std::piecewise_construct, &v21);
    objc_storeStrong(v17 + 5, newLayer);
    *&v21 = &v23;
    *(std::__tree<std::__value_type<CALayer * {__strong},BOOL>,std::__map_value_compare<CALayer * {__strong},std::__value_type<CALayer * {__strong},BOOL>,std::less<CALayer * {__strong}>,true>,std::allocator<std::__value_type<CALayer * {__strong},BOOL>>>::__emplace_unique_key_args<CALayer * {__strong},std::piecewise_construct_t const&,std::tuple<CALayer * const {__strong}&>,std::tuple<>>(&self->_coreAnimationLayerMap, &v23, &std::piecewise_construct, &v21) + 40) = surface;
    [(CALayer *)self->_hostLayer addSublayer:?];
    *&v21 = &v23;
    *(std::__tree<std::__value_type<CALayer *,BOOL>,std::__map_value_compare<std::__value_type<CALayer *,BOOL>,std::__map_value_compare,std::less<std::__value_type<CALayer *,BOOL>>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<std::__value_type<CALayer *,BOOL>,std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(&self->_hostLayerSublayersVisibilityMap, &v23, &std::piecewise_construct, &v21) + 40) = 0;
    sublayers = [(CALayer *)self->_hostLayer sublayers];
    v19 = [sublayers count] == 1;

    if (v19)
    {
      objc_storeWeak(&self->_topLayer, v23);
    }

    v15 = v23;

    GPUTools::AutoCATransaction::~AutoCATransaction(v25);
  }

  else
  {
    *&v21 = &dCopy;
    v15 = std::__tree<std::__value_type<unsigned long long,CALayer * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CALayer * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CALayer * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_layerMap, &dCopy, &std::piecewise_construct, &v21)[5];
  }

  return v15;
}

- (void)resetLayersVisibility
{
  v12[17] = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  sublayers = [(CALayer *)self->_hostLayer sublayers];
  v4 = [sublayers countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(sublayers);
        }

        v11 = *(*(&v7 + 1) + 8 * v6);
        v12[0] = &v11;
        *(std::__tree<std::__value_type<CALayer *,BOOL>,std::__map_value_compare<std::__value_type<CALayer *,BOOL>,std::__map_value_compare,std::less<std::__value_type<CALayer *,BOOL>>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<std::__value_type<CALayer *,BOOL>,std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(&self->_hostLayerSublayersVisibilityMap, &v11, &std::piecewise_construct, v12) + 40) = 0;
        v6 = (v6 + 1);
      }

      while (v4 != v6);
      v4 = [sublayers countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }
}

- (void)prepareLayerForPresent:(id)present
{
  obj = present;
  if (!obj)
  {
    __assert_rtn("[DYiOSPlaybackEngine prepareLayerForPresent:]", &unk_24DC2B171, 0, "layer");
  }

  p_obj = &obj;
  *(std::__tree<std::__value_type<CALayer *,BOOL>,std::__map_value_compare<std::__value_type<CALayer *,BOOL>,std::__map_value_compare,std::less<std::__value_type<CALayer *,BOOL>>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<std::__value_type<CALayer *,BOOL>,std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(&self->_hostLayerSublayersVisibilityMap, &obj, &std::piecewise_construct, &p_obj) + 40) = 1;
  objc_storeWeak(&self->_topLayer, obj);
}

- (void)applyLayersVisibility
{
  v10 = *MEMORY[0x277D85DE8];
  GPUTools::AutoCATransaction::AutoCATransaction(v9, 0, 1);
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  [MEMORY[0x277CD9FF0] setAnimationDuration:?];
  [(CALayer *)self->_hostLayer setHidden:?];
  sublayers = [(CALayer *)self->_hostLayer sublayers];
  v4 = [sublayers countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(sublayers);
        }

        v7 = *(8 * i);
        v8 = &v7;
        std::__tree<std::__value_type<CALayer *,BOOL>,std::__map_value_compare<std::__value_type<CALayer *,BOOL>,std::__map_value_compare,std::less<std::__value_type<CALayer *,BOOL>>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<std::__value_type<CALayer *,BOOL>,std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(&self->_hostLayerSublayersVisibilityMap, &v7, &std::piecewise_construct, &v8);
        [v7 setHidden:?];
      }

      v4 = [sublayers countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }

  GPUTools::AutoCATransaction::~AutoCATransaction(v9);
}

- (void)updateLayer:(id)layer contentRect:(CGRect)rect contentsScale:(double)scale properties:(id)properties
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v16 = layerCopy;
  propertiesCopy = properties;
  if (!layerCopy)
  {
    __assert_rtn("[DYiOSPlaybackEngine updateLayer:contentRect:contentsScale:properties:]", &unk_24DC2B171, 0, "layer");
  }

  [layerCopy bounds];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (!CGRectEqualToRect(v20, v21) || ([layerCopy contentsScale], v15 != scale) || !-[DYiOSPlaybackEngine layerHasSameProperties:layer:](self, "layerHasSameProperties:layer:"))
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v18, 1, 1);
    if (scale == 0.0)
    {
      __assert_rtn("[DYiOSPlaybackEngine updateLayer:contentRect:contentsScale:properties:]", &unk_24DC2B171, 0, "contentsScale != 0.0");
    }

    v17 = &v16;
    std::__tree<std::__value_type<CALayer * {__strong},BOOL>,std::__map_value_compare<CALayer * {__strong},std::__value_type<CALayer * {__strong},BOOL>,std::less<CALayer * {__strong}>,true>,std::allocator<std::__value_type<CALayer * {__strong},BOOL>>>::__emplace_unique_key_args<CALayer * {__strong},std::piecewise_construct_t const&,std::tuple<CALayer * const {__strong}&>,std::tuple<>>(&self->_coreAnimationLayerMap, &v16, &std::piecewise_construct, &v17);
    [DYiOSPlaybackEngine _setupLayer:"_setupLayer:contentRect:contentsScale:properties:isCoreAnimationSurface:" contentRect:? contentsScale:? properties:? isCoreAnimationSurface:?];
    GPUTools::AutoCATransaction::~AutoCATransaction(v18);
  }
}

- (id)layerForID:(unint64_t)d
{
  left = self->_layerMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  p_end_node = &self->_layerMap.__tree_.__end_node_;
  do
  {
    v5 = *(left + 4);
    v6 = v5 >= d;
    v7 = v5 < d;
    if (v6)
    {
      p_end_node = left;
    }

    left = *(left + v7);
  }

  while (left);
  if (p_end_node != &self->_layerMap.__tree_.__end_node_ && p_end_node[4].__left_ <= d)
  {
    return p_end_node[5].__left_;
  }

  else
  {
    return 0;
  }
}

- (id)currentTopLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_topLayer);

  return WeakRetained;
}

- (void)deleteLayer:(unint64_t)layer
{
  p_layerMap = &self->_layerMap;
  left = self->_layerMap.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_layerMap.__tree_.__end_node_;
    do
    {
      v7 = *(left + 4);
      v8 = v7 >= layer;
      v9 = v7 < layer;
      if (v8)
      {
        p_end_node = left;
      }

      left = *(left + v9);
    }

    while (left);
    if (p_end_node != &self->_layerMap.__tree_.__end_node_ && p_end_node[4].__left_ <= layer)
    {
      [p_end_node[5].__left_ removeFromSuperlayer];
      std::__tree<std::__value_type<CALayer * {__strong},BOOL>,std::__map_value_compare<CALayer * {__strong},std::__value_type<CALayer * {__strong},BOOL>,std::less<CALayer * {__strong}>,true>,std::allocator<std::__value_type<CALayer * {__strong},BOOL>>>::__erase_unique<CALayer * {__strong}>(&self->_coreAnimationLayerMap, &p_end_node[5]);

      std::__tree<std::__value_type<unsigned long long,CALayer * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CALayer * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CALayer * {__strong}>>>::erase(p_layerMap, p_end_node);
    }
  }
}

- (void)setTransform:(const Argument *)transform forLayerID:(unint64_t)d withScreenToLayerScale:(const void *)scale
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(DYiOSPlaybackEngine *)self layerForID:?];
  if (v5)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v15, 1, 1);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    if (objc_opt_class())
    {
      [&v7 _convertToCATransform3D:?];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
    }

    [v6 _applyInterfaceOrientationToTransform:{v7, v8, v9, v10, v11, v12, v13, v14}];
    [v5 setTransform:{v6[0], v6[1], v6[2], v6[3], v6[4], v6[5], v6[6], v6[7]}];
    GPUTools::AutoCATransaction::~AutoCATransaction(v15);
  }
}

- (void)setPosition:(const Argument *)position forLayerID:(unint64_t)d
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4 = [(DYiOSPlaybackEngine *)self layerForID:?];
  if (v4)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v5, 1, 1);
    [objc_opt_class() _convertToCGPoint:?];
    [v4 setPosition:?];
    GPUTools::AutoCATransaction::~AutoCATransaction(v5);
  }
}

- (void)setAnchorPoint:(const Argument *)point forLayerID:(unint64_t)d
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4 = [(DYiOSPlaybackEngine *)self layerForID:?];
  if (v4)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v5, 1, 1);
    [objc_opt_class() _convertToCGPoint:?];
    [v4 setAnchorPoint:?];
    GPUTools::AutoCATransaction::~AutoCATransaction(v5);
  }
}

- (CGRect)boundsForCurrentInterfaceOrientation
{
  [(CALayer *)self->_hostLayer bounds];
  v7 = self->_interfaceOrientation - 3;
  if (v7 >= 2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v7 < 2)
  {
    v6 = v5;
  }

  v9 = v8;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CATransform3D)_applyInterfaceOrientationToTransform:(SEL)transform
{
  m32 = self[1].m32;
  switch(*&m32)
  {
    case 2:
      memset(&v43, 0, sizeof(v43));
      CATransform3DMakeRotation(&v43, 3.14159265, 0.0, 0.0, 1.0);
      memset(&v42, 0, sizeof(v42));
      CATransform3DMakeTranslation(&v42, -a4->m41, -a4->m42, 0.0);
      memset(&v41, 0, sizeof(v41));
      m41 = a4->m41;
      m42 = a4->m42;
      goto LABEL_8;
    case 3:
      memset(&v43, 0, sizeof(v43));
      v7 = 1.57079633;
      goto LABEL_6;
    case 4:
      memset(&v43, 0, sizeof(v43));
      v7 = -1.57079633;
LABEL_6:
      CATransform3DMakeRotation(&v43, v7, 0.0, 0.0, 1.0);
      memset(&v42, 0, sizeof(v42));
      CATransform3DMakeTranslation(&v42, -a4->m41, -a4->m42, 0.0);
      memset(&v41, 0, sizeof(v41));
      m42 = a4->m41;
      m41 = a4->m42;
LABEL_8:
      CATransform3DMakeTranslation(&v41, m41, m42, 0.0);
      v10 = *&a4->m33;
      *&a.m31 = *&a4->m31;
      *&a.m33 = v10;
      v11 = *&a4->m43;
      *&a.m41 = *&a4->m41;
      *&a.m43 = v11;
      v12 = *&a4->m13;
      *&a.m11 = *&a4->m11;
      *&a.m13 = v12;
      v13 = *&a4->m23;
      *&a.m21 = *&a4->m21;
      *&a.m23 = v13;
      v38 = v42;
      CATransform3DConcat(&v40, &a, &v38);
      v14 = *&v40.m33;
      *&a4->m31 = *&v40.m31;
      *&a4->m33 = v14;
      v15 = *&v40.m43;
      *&a4->m41 = *&v40.m41;
      *&a4->m43 = v15;
      v16 = *&v40.m13;
      *&a4->m11 = *&v40.m11;
      *&a4->m13 = v16;
      v17 = *&v40.m23;
      *&a4->m21 = *&v40.m21;
      *&a4->m23 = v17;
      v18 = *&a4->m33;
      *&a.m31 = *&a4->m31;
      *&a.m33 = v18;
      v19 = *&a4->m43;
      *&a.m41 = *&a4->m41;
      *&a.m43 = v19;
      v20 = *&a4->m13;
      *&a.m11 = *&a4->m11;
      *&a.m13 = v20;
      v21 = *&a4->m23;
      *&a.m21 = *&a4->m21;
      *&a.m23 = v21;
      v38 = v43;
      CATransform3DConcat(&v40, &a, &v38);
      v22 = *&v40.m33;
      *&a4->m31 = *&v40.m31;
      *&a4->m33 = v22;
      v23 = *&v40.m43;
      *&a4->m41 = *&v40.m41;
      *&a4->m43 = v23;
      v24 = *&v40.m13;
      *&a4->m11 = *&v40.m11;
      *&a4->m13 = v24;
      v25 = *&v40.m23;
      *&a4->m21 = *&v40.m21;
      *&a4->m23 = v25;
      v26 = *&a4->m33;
      *&a.m31 = *&a4->m31;
      *&a.m33 = v26;
      v27 = *&a4->m43;
      *&a.m41 = *&a4->m41;
      *&a.m43 = v27;
      v28 = *&a4->m13;
      *&a.m11 = *&a4->m11;
      *&a.m13 = v28;
      v29 = *&a4->m23;
      *&a.m21 = *&a4->m21;
      *&a.m23 = v29;
      v38 = v41;
      self = CATransform3DConcat(&v40, &a, &v38);
      v30 = *&v40.m33;
      *&a4->m31 = *&v40.m31;
      *&a4->m33 = v30;
      v31 = *&v40.m43;
      *&a4->m41 = *&v40.m41;
      *&a4->m43 = v31;
      v32 = *&v40.m13;
      *&a4->m11 = *&v40.m11;
      *&a4->m13 = v32;
      v33 = *&v40.m23;
      *&a4->m21 = *&v40.m21;
      *&a4->m23 = v33;
      break;
  }

  v34 = *&a4->m33;
  *&retstr->m31 = *&a4->m31;
  *&retstr->m33 = v34;
  v35 = *&a4->m43;
  *&retstr->m41 = *&a4->m41;
  *&retstr->m43 = v35;
  v36 = *&a4->m13;
  *&retstr->m11 = *&a4->m11;
  *&retstr->m13 = v36;
  v37 = *&a4->m23;
  *&retstr->m21 = *&a4->m21;
  *&retstr->m23 = v37;
  return self;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 13) = self + 112;
  *(self + 18) = 0;
  *(self + 17) = 0;
  *(self + 16) = self + 136;
  *(self + 21) = 0;
  *(self + 20) = 0;
  *(self + 19) = self + 160;
  return self;
}

@end