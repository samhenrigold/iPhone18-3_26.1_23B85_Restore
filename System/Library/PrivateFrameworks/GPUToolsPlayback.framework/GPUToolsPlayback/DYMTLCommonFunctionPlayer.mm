@interface DYMTLCommonFunctionPlayer
- (BOOL)isFrameBoundary;
- (BOOL)shouldExecuteGraphicsFunction;
- (DYLayerManager)layerManager;
- (DYLayerManager)strongLayerManager;
- (id).cxx_construct;
- (id)layerForID:(unint64_t)d;
- (void)executePlatformFunction;
@end

@implementation DYMTLCommonFunctionPlayer

- (DYLayerManager)strongLayerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (id)layerForID:(unint64_t)d
{
  strongLayerManager = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
  v6 = [strongLayerManager layerForID:d];

  if (!v6)
  {
    strongLayerManager2 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
    v6 = [strongLayerManager2 createLayerWithID:d contentRect:0 contentsScale:0 properties:0.0 isCoreAnimationSurface:{0.0, 1.0, 1.0, 1.0}];
  }

  v8 = v6;

  return v8;
}

- (BOOL)shouldExecuteGraphicsFunction
{
  if ([(DYMTLCommonFunctionPlayer *)self _isPresentFunction])
  {
    v3 = [(DYMTLFunctionPlayer *)self objectForKey:*(*(&self->super.super.super.isa + *MEMORY[0x277D0AFA0]))[9]];
    layer = [v3 layer];

    if (layer)
    {
      strongLayerManager = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
      layer2 = [v3 layer];
      [strongLayerManager prepareLayerForPresent:layer2];

      strongLayerManager2 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
      [strongLayerManager2 applyLayersVisibility];
    }
  }

  return 1;
}

- (void)executePlatformFunction
{
  v81[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D0AFA0];
  v4 = *(&self->super.super.super.isa + v3);
  v6 = v4 + 48;
  v5 = *v4;
  if (*v4 > -6657)
  {
    if (v5 > -6655)
    {
      if (v5 == -6654)
      {
LABEL_19:
        v14 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        if ((*(&self->super.super.super.isa + v3))[5] < 3u)
        {
          v17 = 0;
        }

        else
        {
          [(DYFunctionPlayer *)self processArguments];
          __p = 0;
          v78 = 0;
          v79 = 0;
          *v71 = 0u;
          *v72 = 0u;
          v73 = 0u;
          *v74 = 0u;
          *v75 = 0u;
          v76 = 0u;
          GPUTools::MTL::Utils::MakeDYMTLDeviceDescriptor(**(&self->super.super._executePlatformSEL + *MEMORY[0x277D0AF68]), &v70, v15);
          if (SHIBYTE(v72[0]) >= 0)
          {
            v16 = v71;
          }

          else
          {
            v16 = v71[0];
          }

          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
          GPUTools::MTL::DispatchSetCaptureVersion(v70);
          if (__p)
          {
            v78 = __p;
            operator delete(__p);
          }

          if (SHIBYTE(v76) < 0)
          {
            operator delete(v75[1]);
          }

          if (SHIBYTE(v75[0]) < 0)
          {
            operator delete(v74[0]);
          }

          if (SHIBYTE(v73) < 0)
          {
            operator delete(v72[1]);
          }

          if (SHIBYTE(v72[0]) < 0)
          {
            operator delete(v71[0]);
          }
        }

        v65 = [(DYMTLFunctionPlayer *)self deviceForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 72 withDeviceName:0), v17];
        [v14 setDevice:v65];

        return;
      }

      if (v5 == -6653)
      {
        strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v11 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_f64[0];
        v12 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_f64[0];
        strongLayerManager = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [strongLayerManager updateLayer:strongLayerManager10 contentRect:0 contentsScale:0.0 properties:0.0 windowRect:{v11, v12, 1.0, 0, 0, 0x4059000000000000, 0x4059000000000000}];

        [strongLayerManager10 setDrawableSize:{v11, v12}];
        [strongLayerManager10 setFramebufferOnly:0];
        goto LABEL_59;
      }
    }

    else
    {
      if (v5 == -6656)
      {
LABEL_18:
        strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        [strongLayerManager10 setPixelFormat:GPUTools::FD::Argument::ViewAsScalarArray<MTLPixelFormat>(v4 + 72, 0)];
        goto LABEL_59;
      }

      if (v5 == -6655)
      {
LABEL_8:
        v7 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.isa + v3) + 24, 0);
        v8 = objc_autoreleasePoolPush();
        do
        {
          nextDrawable = [v7 nextDrawable];
        }

        while (!nextDrawable);
        v70 = &v69;
        v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70);
        objc_storeStrong(v10 + 3, nextDrawable);
        v70 = &v69;
        *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70) + 24) = 1;
        [(DYMTLFunctionPlayer *)self setObject:nextDrawable forKey:v69];

        objc_autoreleasePoolPop(v8);
        return;
      }
    }

LABEL_62:
    v68.receiver = self;
    v68.super_class = DYMTLCommonFunctionPlayer;
    [(DYMTLFunctionPlayer *)&v68 executePlatformFunction];
    return;
  }

  if (v5 > -7169)
  {
    switch(v5)
    {
      case -7168:
        strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        [strongLayerManager10 setPresentsWithTransaction:{GPUTools::FD::Argument::ViewAsScalarArray<unsigned int>(*(&self->super.super.super.isa + v3) + 72, 0) != 0}];
        goto LABEL_59;
      case -7167:
        v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v70 = &v69;
        v54 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70)[3];
        texture = [v54 texture];
        DYMTLAddDrawableTextureDescriptor(texture);
        [(DYMTLFunctionPlayer *)self setObject:texture forKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.isa + v3) + 24, 0)];

        return;
      case -7166:
        goto LABEL_8;
      case -7165:
        goto LABEL_18;
      case -7164:
        strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v25.n64_u64[0] = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_u64[0];
        v26.n64_u64[0] = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_u64[0];
        v27 = *(MEMORY[0x277CBF3A8] + 8);
        if (*MEMORY[0x277CBF3A8] == v25.n64_f64[0] && v27 == v26.n64_f64[0])
        {
          [strongLayerManager10 bounds];
          v30 = v29;
          [strongLayerManager10 contentsScale];
          v32 = v31;
          [strongLayerManager10 bounds];
          v34 = v33;
          [strongLayerManager10 contentsScale];
          v25.n64_f64[0] = v30 * v32;
          v26.n64_f64[0] = v34 * v35;
        }

        [strongLayerManager10 setDrawableSize:{v25.n64_f64[0], v26.n64_f64[0], v27}];
        goto LABEL_59;
      case -7163:
        goto LABEL_19;
      case -7162:
        strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v56 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_f64[0];
        v57 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_f64[0];
        v58 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 2uLL).n64_f64[0];
        v59 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 3uLL).n64_f64[0];
        v60 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 96, 0).n64_f64[0];
        strongLayerManager2 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [strongLayerManager2 updateLayer:strongLayerManager10 contentRect:0 contentsScale:v56 properties:{v57, v58, v59, v60}];

        goto LABEL_59;
      case -7161:
        v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__erase_unique<unsigned long long>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v69);
        [(DYMTLFunctionPlayer *)self removeObjectForKey:v69];
        v70 = &v69;
        *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70) + 24) = 0;
        return;
      case -7160:
        strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        [strongLayerManager10 setFramebufferOnly:{GPUTools::FD::Argument::ViewAsScalarArray<BOOL>(v4 + 72, 0)}];
        goto LABEL_59;
      case -7159:
        v39 = [(DYMTLCommonFunctionPlayer *)self layerForID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)];
        v67 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 0).n64_u64[0];
        v40 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 1uLL).n64_f64[0];
        v41 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 2uLL).n64_f64[0];
        v42 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 72, 3uLL).n64_f64[0];
        v43 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 96, 0).n64_f64[0];
        v44 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 0).n64_u64[0];
        v45 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 1uLL).n64_u64[0];
        v46 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 2uLL).n64_u64[0];
        v47 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 3uLL).n64_u64[0];
        v48 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 144, 0);
        v49 = GPUTools::FD::Argument::ViewAsScalarArray<long long>(v4 + 168, 0);
        v80[0] = @"styleMask";
        v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
        v80[1] = @"windowLevel";
        v81[0] = v50;
        v51 = [MEMORY[0x277CCABB0] numberWithLongLong:v49];
        v81[1] = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];

        strongLayerManager3 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [strongLayerManager3 updateLayer:v39 contentRect:v52 contentsScale:*&v67 properties:v40 windowRect:{v41, v42, v43, v44, v45, v46, v47}];

        return;
      case -7158:
        v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v70 = &v69;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70)[3];
        if (v18)
        {
          strongLayerManager4 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          layer = [v18 layer];
          [strongLayerManager4 prepareLayerForPresent:layer];

          strongLayerManager5 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          [strongLayerManager5 applyLayersVisibility];

          [v18 present];
        }

        goto LABEL_57;
      case -7157:
        v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v70 = &v69;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70)[3];
        if (v18)
        {
          strongLayerManager6 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          layer2 = [v18 layer];
          [strongLayerManager6 prepareLayerForPresent:layer2];

          strongLayerManager7 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          [strongLayerManager7 applyLayersVisibility];

          [v18 presentAtTime:{GPUTools::FD::Argument::ViewAsScalarArray<double>(*(&self->super.super.super.isa + v3) + 72, 0).n64_f64[0]}];
        }

        goto LABEL_57;
      case -7156:
        v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0);
        v70 = &v69;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_drawableMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70)[3];
        if (v18)
        {
          strongLayerManager8 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          layer3 = [v18 layer];
          [strongLayerManager8 prepareLayerForPresent:layer3];

          strongLayerManager9 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
          [strongLayerManager9 applyLayersVisibility];

          [v18 presentAfterMinimumDuration:{GPUTools::FD::Argument::ViewAsScalarArray<double>(*(&self->super.super.super.isa + v3) + 72, 0).n64_f64[0]}];
        }

LABEL_57:
        v70 = &v69;
        *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v69, &std::piecewise_construct, &v70) + 24) = 0;

        break;
      case -7155:
        strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
        [strongLayerManager10 setInterfaceOrientation:{GPUTools::FD::Argument::ViewAsScalarArray<int>(v4 + 72, 0)}];
        goto LABEL_59;
      default:
        goto LABEL_62;
    }

    return;
  }

  if (v5 != -8183)
  {
    if (v5 == -8182)
    {
      strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
      [strongLayerManager10 setPosition:v4 + 72 forLayerID:{GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)}];
      goto LABEL_59;
    }

    if (v5 == -8181)
    {
      strongLayerManager10 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
      [strongLayerManager10 setAnchorPoint:v4 + 72 forLayerID:{GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6, 0)}];
LABEL_59:

      return;
    }

    goto LABEL_62;
  }

  v22 = COERCE_GPUTOOLS_MTL_(1.0);
  v23 = 1.0;
  if (*(v4 + 10) >= 4u)
  {
    v22 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 96, 0).n64_u64[0];
    v23 = GPUTools::FD::Argument::ViewAsScalarArray<double>(v4 + 120, 0).n64_u64[0];
  }

  v70 = v22;
  v71[0] = v23;
  strongLayerManager11 = [(DYMTLCommonFunctionPlayer *)self strongLayerManager];
  [strongLayerManager11 setTransform:v4 + 72 forLayerID:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v6 withScreenToLayerScale:{0), &v70}];
}

- (BOOL)isFrameBoundary
{
  v3.receiver = self;
  v3.super_class = DYMTLCommonFunctionPlayer;
  return [(DYMTLFunctionPlayer *)&v3 isFrameBoundary];
}

- (DYLayerManager)layerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layerManager);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1592) = 0u;
  *(self + 1608) = 0u;
  *(self + 406) = 1065353216;
  *(self + 102) = 0u;
  *(self + 103) = 0u;
  *(self + 416) = 1065353216;
  return self;
}

@end