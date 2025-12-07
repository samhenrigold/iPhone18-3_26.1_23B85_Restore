@interface ARCubemapCompletion
+ (id)sharedInstance;
- (ARCubemapCompletion)init;
- (id).cxx_construct;
- (id)completeCubemap:(simd_float3)cubemap cameraExposure:(simd_float3)exposure rotationWorldFromCube:(simd_float3)cube;
- (id)completeLatLongImage:(id)image;
- (id)generateSeamSmoothingTexture;
- (id)grayCubemapOfSize:(unint64_t)size;
- (id)toTexture:(id *)texture;
- (unsigned)srgbToLog:(unsigned __int8)log;
- (vImage_Buffer)toVImageBuffer:(SEL)buffer;
- (void)dealloc;
@end

@implementation ARCubemapCompletion

+ (id)sharedInstance
{
  if (+[ARCubemapCompletion sharedInstance]::onceToken != -1)
  {
    +[ARCubemapCompletion sharedInstance];
  }

  v3 = +[ARCubemapCompletion sharedInstance]::sharedInstance;

  return v3;
}

void __37__ARCubemapCompletion_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ARCubemapCompletion);
  v1 = +[ARCubemapCompletion sharedInstance]::sharedInstance;
  +[ARCubemapCompletion sharedInstance]::sharedInstance = v0;
}

- (ARCubemapCompletion)init
{
  v136 = *MEMORY[0x1E69E9840];
  v124.receiver = self;
  v124.super_class = ARCubemapCompletion;
  v2 = [(ARCubemapCompletion *)&v124 init];
  if (!v2)
  {
    goto LABEL_75;
  }

  kdebug_trace();
  v3 = objc_opt_new();
  cubemapConverter = v2->_cubemapConverter;
  v2->_cubemapConverter = v3;

  v5 = objc_opt_new();
  sphericalBlur = v2->_sphericalBlur;
  v2->_sphericalBlur = v5;

  v7 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v7;

  v2->_use_model_pre_A11 = [(MTLDevice *)v2->_device supportsFamily:1004]^ 1;
  generateSeamSmoothingTexture = [(ARCubemapCompletion *)v2 generateSeamSmoothingTexture];
  roughness = v2->_roughness;
  v2->_roughness = generateSeamSmoothingTexture;

  v12 = ARKitCoreBundle(v11);
  if (v2->_use_model_pre_A11)
  {
    v13 = @"gan_model_pre_A11";
  }

  else
  {
    v13 = @"gan_model";
  }

  v14 = v13;
  v15 = _ARLogTechnique(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138544130;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    v132 = 2112;
    v133 = v19;
    v134 = 2112;
    v135 = v14;
    _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@  model choice : %@", buf, 0x2Au);
  }

  v20 = [v12 pathForResource:v14 ofType:@"mlmodelc"];
  v21 = [v20 stringByAppendingPathComponent:@"model.espresso.net"];
  context = espresso_create_context();
  v2->_espresso_ctx = context;
  p_espresso_ctx = &v2->_espresso_ctx;
  if (context)
  {
    v24 = _ARLogTechnique(context);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using ANE for Completion", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v27 = espresso_create_context();
  *p_espresso_ctx = v27;
  if (v27)
  {
    v24 = _ARLogTechnique(v27);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using GPU for Completion", buf, 0x16u);
    }

LABEL_13:

    v30 = espresso_context_set_low_precision_accumulation();
    if (v30)
    {
      v31 = _ARLogTechnique(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Unable to set Espresso low precision accumulation.", buf, 0x16u);
      }
    }

    if (v2->_use_model_pre_A11)
    {
      plan = espresso_create_plan();
      v2->_espresso_plan = plan;
      v35 = _ARLogTechnique(plan);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138543618;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Completion model espresso plan at low priority.", buf, 0x16u);
      }
    }

    else
    {
      v38 = espresso_create_plan();
      v2->_espresso_plan = v38;
      v35 = _ARLogTechnique(v38);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138543618;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Completion model espresso plan at default priority.", buf, 0x16u);
      }
    }

    if (!v2->_espresso_plan)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v49 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v50 = _ARLogGeneral(v41);
      v51 = v50;
      if (v49 == 1)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          *buf = 138543618;
          *&buf[4] = v53;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Espresso plan creation failed.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Espresso plan creation failed.", buf, 0x16u);
      }

      espresso_context_destroy();
      goto LABEL_73;
    }

    v42 = v21;
    [v21 UTF8String];
    v43 = espresso_plan_add_network();
    if (v43)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v44 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v45 = _ARLogGeneral(v43);
      v46 = v45;
      if (v44 == 1)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          *buf = 138543618;
          *&buf[4] = v48;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Adding plan to Espresso network failed.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Adding plan to Espresso network failed.", buf, 0x16u);
      }

LABEL_72:

      espresso_context_destroy();
      espresso_plan_destroy();
      *p_espresso_ctx = 0;
      v2->_espresso_plan = 0;
LABEL_73:
      v84 = v2;
      v83 = 0;
      goto LABEL_74;
    }

    v54 = espresso_plan_build();
    if (v54)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v55 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v56 = _ARLogGeneral(v54);
      v46 = v56;
      if (v55 == 1)
      {
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = objc_opt_class();
          v58 = NSStringFromClass(v57);
          *buf = 138543618;
          *&buf[4] = v58;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Building Espresso plan failed.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Building Espresso plan failed.", buf, 0x16u);
      }

      goto LABEL_72;
    }

    v68 = -1.0;
    if (v2->_use_model_pre_A11)
    {
      v68 = 0.0;
    }

    v69 = 0.0078431;
    if (v2->_use_model_pre_A11)
    {
      v69 = 0.0039216;
    }

    v2->_espresso_processing_params.bias_r = v68;
    v2->_espresso_processing_params.bias_g = v68;
    v2->_espresso_processing_params.bias_b = v68;
    v2->_espresso_processing_params.scale = v69;
    v2->_espresso_processing_params.network_wants_bgr = 1;
    espresso_network_query_blob_dimensions();
    v70 = *&buf[8];
    v2->_gan_width = *buf;
    v2->_gan_height = v70;
    MEMORY[0x1C691B940](&v2->_vImageBuffer);
    v71 = 3 * v2->_gan_width * v2->_gan_height;
    std::vector<unsigned char>::reserve(&v2->_randomNumbers.__begin_, v71);
    for (; v71; --v71)
    {
      v125[0] = arc4random_uniform(0xFFu);
      std::vector<unsigned char>::push_back[abi:ne200100](&v2->_randomNumbers, v125);
    }

    if (v2->_use_model_pre_A11)
    {
      std::vector<unsigned char>::reserve(&v2->_srgbToLogLUT_pre_A11.__begin_, 0x100uLL);
      for (i = 0; i != 256; ++i)
      {
        v125[0] = [(ARCubemapCompletion *)v2 srgbToLog:i];
        std::vector<unsigned char>::push_back[abi:ne200100](&v2->_srgbToLogLUT_pre_A11, v125);
      }
    }

    v2->_alpha_threshold = 0.9;
    v2->_bias_exposure_threshold = 0.005;
    newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
    queue = v2->_queue;
    v2->_queue = newCommandQueue;

    [(MTLCommandQueue *)v2->_queue setLabel:@"com.apple.arkit.cubemapcompletion.queue"];
    v2->_espressoInitialized = 1;
    v75 = espresso_plan_execute_sync();
    if (v75)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v76 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v77 = _ARLogGeneral(v75);
      v78 = v77;
      if (v76 == 1)
      {
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v79 = objc_opt_class();
          v80 = NSStringFromClass(v79);
          *v125 = 138543618;
          v126 = v80;
          v127 = 2048;
          v128 = v2;
          _os_log_impl(&dword_1C241C000, v78, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Espresso warm-up failed...", v125, 0x16u);
        }
      }

      else if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        v97 = objc_opt_class();
        v98 = NSStringFromClass(v97);
        *v125 = 138543618;
        v126 = v98;
        v127 = 2048;
        v128 = v2;
        _os_log_impl(&dword_1C241C000, v78, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Espresso warm-up failed...", v125, 0x16u);
      }

      espresso_context_destroy();
      espresso_plan_destroy();
      *p_espresso_ctx = 0;
      v2->_espresso_plan = 0;
      v99 = v2;
      v83 = 0;
      goto LABEL_103;
    }

    v88 = [v12 URLForResource:@"default" withExtension:@"metallib"];
    v89 = v2->_device;
    v123 = 0;
    v119 = v88;
    v90 = [(MTLDevice *)v89 newLibraryWithURL:v88 error:&v123];
    v91 = v123;
    v120 = v90;
    v92 = [v90 setLabel:@"com.apple.arkit.cubemapcompletion.library"];
    if (v90)
    {
      v93 = v2->_device;
      if (v2->_use_model_pre_A11)
      {
        v94 = [v90 newFunctionWithName:@"combine_buffers_to_hdr_pre_A11"];
        v122 = v91;
        v95 = &v122;
        v96 = [(MTLDevice *)v93 newComputePipelineStateWithFunction:v94 error:&v122];
      }

      else
      {
        v94 = [v90 newFunctionWithName:@"combine_buffers_to_hdr"];
        v121 = v91;
        v95 = &v121;
        v96 = [(MTLDevice *)v93 newComputePipelineStateWithFunction:v94 error:&v121];
      }

      v105 = v96;
      v106 = *v95;

      combineBuffersToHDR = v2->_combineBuffersToHDR;
      v2->_combineBuffersToHDR = v105;

      if (v2->_combineBuffersToHDR)
      {
        v109 = v120;
        kdebug_trace();
        v83 = 1;
LABEL_102:

LABEL_103:
        v84 = v2;
        goto LABEL_74;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v110 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v111 = _ARLogGeneral(v108);
      v102 = v111;
      if (v110 == 1)
      {
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v112 = objc_opt_class();
          v113 = NSStringFromClass(v112);
          *v125 = 138543874;
          v126 = v113;
          v127 = 2048;
          v128 = v2;
          v129 = 2112;
          v130 = v106;
          _os_log_impl(&dword_1C241C000, v102, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create combine buffer to hdr pipeline state %@", v125, 0x20u);
        }
      }

      else if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        v116 = objc_opt_class();
        v117 = NSStringFromClass(v116);
        *v125 = 138543874;
        v126 = v117;
        v127 = 2048;
        v128 = v2;
        v129 = 2112;
        v130 = v106;
        _os_log_impl(&dword_1C241C000, v102, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create combine buffer to hdr pipeline state %@", v125, 0x20u);
      }

      v91 = v106;
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v100 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v101 = _ARLogGeneral(v92);
      v102 = v101;
      if (v100 == 1)
      {
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v103 = objc_opt_class();
          v104 = NSStringFromClass(v103);
          *v125 = 138543874;
          v126 = v104;
          v127 = 2048;
          v128 = v2;
          v129 = 2112;
          v130 = v91;
          _os_log_impl(&dword_1C241C000, v102, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create MTLLibrary %@", v125, 0x20u);
        }
      }

      else if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v114 = objc_opt_class();
        v115 = NSStringFromClass(v114);
        *v125 = 138543874;
        v126 = v115;
        v127 = 2048;
        v128 = v2;
        v129 = 2112;
        v130 = v91;
        _os_log_impl(&dword_1C241C000, v102, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create MTLLibrary %@", v125, 0x20u);
      }
    }

    v118 = v2;
    v83 = 0;
    v106 = v91;
    v109 = v120;
    goto LABEL_102;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARCubemapCompletion init];
  }

  v63 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v64 = _ARLogGeneral(v27);
  v65 = v64;
  if (v63 == 1)
  {
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      *buf = 138543618;
      *&buf[4] = v67;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1C241C000, v65, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Espresso context creation failed.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    *buf = 138543618;
    *&buf[4] = v82;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    _os_log_impl(&dword_1C241C000, v65, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Espresso context creation failed.", buf, 0x16u);
  }

  v83 = 0;
  v84 = 0;
LABEL_74:

  if (v83)
  {
LABEL_75:
    v84 = v2;
  }

  return v84;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  free(self->_vImageBuffer.data);
  v3.receiver = self;
  v3.super_class = ARCubemapCompletion;
  [(ARCubemapCompletion *)&v3 dealloc];
}

- (unsigned)srgbToLog:(unsigned __int8)log
{
  v3 = powf(log / 255.0, 2.2);
  v4 = (log10((v3 / 0.18) + 1.0e-16) * 224.999985 + 445.0) / 1023.0;
  return (fmaxf(fminf(v4, 1.0), 0.0) * 255.0);
}

- (id)completeCubemap:(simd_float3)cubemap cameraExposure:(simd_float3)exposure rotationWorldFromCube:(simd_float3)cube
{
  v32.columns[1] = exposure;
  v32.columns[2] = cube;
  v32.columns[0] = cubemap;
  v37 = *MEMORY[0x1E69E9840];
  v9 = a7;
  [v9 width];
  [v9 height];
  kdebug_trace();
  if (*(self + 60))
  {
    __asm { FMOV            V0.2S, #1.0 }

    *(self + 256) = _D0;
    *(self + 264) = 1065353216;
    v15 = *(self + 152);
    *(self + 144) = v15 > a2;
    if (v15 <= a2)
    {
      v16 = v32;
      if (*(self + 224))
      {
        v18 = 255;
      }

      else
      {
        v18 = 128;
      }

      *(self + 160) = v18;
    }

    else
    {
      v16.columns[1] = v32.columns[1];
      v16.columns[2] = v32.columns[2];
      if (*(self + 224))
      {
        *(self + 268) = *(self + 192) / 2;
        *(self + 256) = vdup_n_s32(0x3F7D70A4u);
        *(self + 264) = 1066192077;
      }

      *(self + 160) = 255;
      v16.columns[0] = v32.columns[0];
    }

    v19 = *(self + 120);
    v39 = __invert_f3(v16);
    v20 = [v19 equirectangularTextureFromCubemapTexture:v9 rotation:*(self + 184) width:*(self + 192) height:{*v39.columns[0].i64, *v39.columns[1].i64, *v39.columns[2].i64}];
    v21 = [self completeLatLongImage:v20];
    v22 = v21;
    if (v21)
    {
      v23 = [*(self + 120) cubemapTextureFromEquirectangularTexture:v21 rotation:objc_msgSend(v9 size:{"height"), *v32.columns[0].i64, *v32.columns[1].i64, *v32.columns[2].i64}];
      v17 = [*(self + 128) blurCubemapTexture:v23 roughness:*(self + 136) rotation:{*v32.columns[0].i64, *v32.columns[1].i64, *v32.columns[2].i64}];
      [v17 width];
      [v17 height];
      kdebug_trace();
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion completeCubemap:cameraExposure:rotationWorldFromCube:];
      }

      v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v25 = _ARLogGeneral(v21);
      v26 = v25;
      if (v24 == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138543618;
          v34 = v28;
          v35 = 2048;
          selfCopy2 = self;
          _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not complete environment texture", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138543618;
        v34 = v30;
        v35 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not complete environment texture", buf, 0x16u);
      }

      v17 = [self grayCubemapOfSize:{objc_msgSend(v9, "width")}];
    }
  }

  else
  {
    v17 = [self grayCubemapOfSize:{objc_msgSend(v9, "width")}];
  }

  return v17;
}

- (id)completeLatLongImage:(id)image
{
  v19 = 0u;
  v20 = 0u;
  objc_msgSend_toVImageBuffer_(self, a2, image);
  v8 = v19;
  v9 = v20;
  if (espresso_network_bind_input_vimagebuffer_bgra8() || espresso_network_bind_buffer() || !self->_espresso_plan || (kdebug_trace(), espresso_plan_execute_sync()))
  {
    v4 = 0;
  }

  else
  {
    kdebug_trace();
    v6[8] = v16;
    v6[9] = v17;
    v7 = v18;
    v6[4] = v12;
    v6[5] = v13;
    v6[6] = v14;
    v6[7] = v15;
    v6[0] = v8;
    v6[1] = v9;
    v6[2] = v10;
    v6[3] = v11;
    v4 = [(ARCubemapCompletion *)self toTexture:v6];
  }

  return v4;
}

- (vImage_Buffer)toVImageBuffer:(SEL)buffer
{
  v6 = a4;
  [v6 width];
  [v6 height];
  kdebug_trace();
  width = [v6 width];
  height = [v6 height];
  data = self->_vImageBuffer.data;
  rowBytes = self->_vImageBuffer.rowBytes;
  memset(v33, 0, 24);
  v33[3] = width;
  v33[4] = height;
  v33[5] = 1;
  [v6 getBytes:data bytesPerRow:rowBytes fromRegion:v33 mipmapLevel:0];
  v13 = self->_vImageBuffer.data;
  v14 = self->_vImageBuffer.rowBytes;
  begin = self->_randomNumbers.__begin_;
  *&self->_g_avg = 0;
  self->_r_avg = 0.0;
  if (height)
  {
    v16 = 0;
    v17 = 0;
    v18 = (v13 + 1);
    do
    {
      v19 = v18;
      v20 = width;
      if (width)
      {
        while (1)
        {
          LOBYTE(v11) = v19[2];
          v11 = LODWORD(v11);
          LODWORD(v12) = 1132396544;
          v21 = self->_alpha_threshold * 255.0;
          if (v21 >= v11)
          {
            break;
          }

          LOBYTE(v12) = *(v19 - 1);
          g_avg = self->_g_avg;
          v24 = *&v12 / 255.0 + self->_r_avg;
          *&v24 = v24;
          self->_r_avg = *&v24;
          LOBYTE(v24) = *v19;
          v25 = *&v24 / 255.0 + g_avg;
          *&v25 = v25;
          self->_g_avg = *&v25;
          LOBYTE(v25) = v19[1];
          v12 = *&v25 / 255.0 + self->_b_avg;
          *&v12 = v12;
          self->_b_avg = *&v12;
          ++v17;
          if (self->_use_model_pre_A11)
          {
            *(v19 - 1) = self->_srgbToLogLUT_pre_A11.__begin_[*(v19 - 1)];
            *v19 = self->_srgbToLogLUT_pre_A11.__begin_[*v19];
            LOBYTE(v22) = self->_srgbToLogLUT_pre_A11.__begin_[v19[1]];
LABEL_19:
            v19[1] = v22;
          }

          if (self->_use_model_pre_A11 && v16 < self->_bias_height_pre_A11)
          {
            if (v21 >= v11)
            {
              if (self->_outdoorScene)
              {
                LOBYTE(bias_mask) = -16;
              }

              else
              {
                LOBYTE(bias_mask) = -1;
              }

              goto LABEL_29;
            }

LABEL_28:
            LOBYTE(bias_mask) = 0;
            goto LABEL_29;
          }

          if (v21 < v11)
          {
            goto LABEL_28;
          }

          bias_mask = self->_bias_mask;
LABEL_29:
          v19[2] = bias_mask;
          v19 += 4;
          if (!--v20)
          {
            goto LABEL_30;
          }
        }

        if (self->_use_model_pre_A11)
        {
          LOBYTE(v12) = *begin;
          *&v12 = LODWORD(v12);
          if (v16 < self->_bias_height_pre_A11)
          {
            *&v12 = self->_r_bias_pre_A11 * *&v12;
            if (*&v12 > 250.0)
            {
              *&v12 = 250.0;
            }
          }

          *(v19 - 1) = *&v12;
          LOBYTE(v12) = begin[1];
          *&v12 = LODWORD(v12);
          if (v16 < self->_bias_height_pre_A11)
          {
            *&v12 = self->_g_bias_pre_A11 * *&v12;
            if (*&v12 > 250.0)
            {
              *&v12 = 250.0;
            }
          }

          *v19 = *&v12;
          LOBYTE(v12) = begin[2];
          *&v12 = LODWORD(v12);
          if (v16 < self->_bias_height_pre_A11)
          {
            *&v12 = self->_b_bias_pre_A11 * *&v12;
            if (*&v12 > 250.0)
            {
              *&v12 = 250.0;
            }
          }

          begin += 3;
          v22 = *&v12;
        }

        else
        {
          *(v19 - 1) = *begin;
          *v19 = begin[1];
          LOBYTE(v22) = begin[2];
          begin += 3;
        }

        goto LABEL_19;
      }

LABEL_30:
      ++v16;
      v18 += v14;
    }

    while (v16 != height);
    r_avg = self->_r_avg;
    v28 = self->_g_avg;
    b_avg = self->_b_avg;
    v30 = v17;
  }

  else
  {
    b_avg = 0.0;
    v28 = 0.0;
    r_avg = 0.0;
    v30 = 0.0;
  }

  self->_r_avg = powf(r_avg / v30, 2.2);
  self->_g_avg = powf(v28 / v30, 2.2);
  self->_b_avg = powf(b_avg / v30, 2.2);
  kdebug_trace();
  v31 = *&self->_vImageBuffer.width;
  *&retstr->data = *&self->_vImageBuffer.data;
  *&retstr->width = v31;

  return result;
}

- (id)toTexture:(id *)texture
{
  kdebug_trace();
  var4 = texture->var4;
  var5 = texture->var5;
  var0 = texture->var0;
  var10 = texture->var10;
  var11 = texture->var11;
  var9 = texture->var9;
  selfCopy = self;
  v56 = var4;
  if (var5)
  {
    v11 = 0;
    v12 = texture->var0;
    v13 = 0;
    rowBytes = self->_vImageBuffer.rowBytes;
    v55 = texture->var5;
    data = self->_vImageBuffer.data;
    v50 = texture->var9;
    v51 = texture->var10;
    v53 = 4 * var10;
    v15 = 0.0;
    v16 = 4 * var9;
    v52 = texture->var0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = v56;
      if (v56)
      {
        v20 = v12;
        v21 = 3;
        do
        {
          if (!data[v21])
          {
            v22 = *v20;
            if (selfCopy->_use_model_pre_A11)
            {
              v15 = v15 + __exp10(((v22 * 1023.0) + -445.0) * 0.00444444456) * 0.180000007;
              v17 = v17 + __exp10(((v20[var11] * 1023.0) + -445.0) * 0.00444444456) * 0.180000007;
              v18 = v18 + __exp10(((v20[2 * var11] * 1023.0) + -445.0) * 0.00444444456) * 0.180000007;
            }

            else
            {
              v15 = v15 + (__exp10f(v22 + 1.0) + -1.0);
              v17 = v17 + (__exp10f(v20[var11] + 1.0) + -1.0);
              v18 = v18 + (__exp10f(v20[2 * var11] + 1.0) + -1.0);
            }

            ++v11;
          }

          v20 = (v20 + v16);
          v21 += 4;
          --v19;
        }

        while (v19);
      }

      data += rowBytes;
      ++v13;
      v12 = (v12 + v53);
    }

    while (v13 != v55);
    v23 = v11;
    self = selfCopy;
    var5 = v55;
    var4 = v56;
    var10 = v51;
    var0 = v52;
    var9 = v50;
  }

  else
  {
    v23 = 0.0;
    v18 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
  }

  v24 = (((self->_g_avg * 0.7152) + (self->_r_avg * 0.2126)) + (self->_b_avg * 0.0722)) / ((((v17 / v23) * 0.7152) + ((v15 / v23) * 0.2126)) + ((v18 / v23) * 0.0722));
  *v67 = v24;
  if (self->_outdoorScene && var5)
  {
    v25 = 0;
    v26 = 4 * var10;
    v27 = 4 * var9;
    v28 = 0.05 / v24;
    do
    {
      if (var4)
      {
        v29 = 0;
        v30 = v25 * 3.14159265 / var5;
        v31 = (v30 + -0.7854) * (v30 + -0.7854);
        v32 = var0;
        do
        {
          v33 = (1.0 - (v29 / var4)) * 6.28318531;
          v34 = v31 + ((v33 + -1.5708) * (v33 + -1.5708));
          if (v34 < 0.017453)
          {
            v35 = 1.0 - expf((0.017453 - v34) / -0.017453);
            *v32 = ((1.0 - v35) * *v32) + (v28 * v35);
            v32[var11] = ((1.0 - v35) * v32[var11]) + (v28 * v35);
            v32[2 * var11] = ((1.0 - v35) * v32[2 * var11]) + (v28 * v35);
          }

          ++v29;
          v32 = (v32 + v27);
        }

        while (var4 != v29);
      }

      ++v25;
      var0 = (var0 + v26);
    }

    while (v25 != var5);
  }

  if (selfCopy->_generateHDROutput)
  {
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.environmentTexturing.maxHDR"];
    if (selfCopy->_generateHDROutput)
    {
      v37 = 115;
    }

    else
    {
      v37 = 81;
    }
  }

  else
  {
    v36 = 1.0;
    v37 = 81;
  }

  v66 = v36;
  commandBuffer = [(MTLCommandQueue *)selfCopy->_queue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v39 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:var4 height:var5 mipmapped:0];
  [v39 setUsage:7];
  v40 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v39];
  v41 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v39];
  v42 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v39];
  [v40 setLabel:@"com.apple.arkit.cubemapcompletion.rplane"];
  [v41 setLabel:@"com.apple.arkit.cubemapcompletion.gplane"];
  [v42 setLabel:@"com.apple.arkit.cubemapcompletion.plane"];
  v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v37 width:v56 height:var5 mipmapped:0];

  [v43 setUsage:7];
  v44 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v43];
  [v44 setLabel:@"com.apple.arkit.cubemapcompletion.dst"];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v56;
  v64 = var5;
  v65 = 1;
  [v40 replaceRegion:&v60 mipmapLevel:0 withBytes:texture->var0 bytesPerRow:texture->var3[0]];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v56;
  v64 = var5;
  v65 = 1;
  [v41 replaceRegion:&v60 mipmapLevel:0 withBytes:texture->var0 + 4 * texture->var11 bytesPerRow:texture->var3[0]];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v56;
  v64 = var5;
  v65 = 1;
  [v42 replaceRegion:&v60 mipmapLevel:0 withBytes:texture->var0 + 8 * texture->var11 bytesPerRow:texture->var3[0]];
  [computeCommandEncoder setComputePipelineState:selfCopy->_combineBuffersToHDR];
  [computeCommandEncoder setTexture:v40 atIndex:0];
  [computeCommandEncoder setTexture:v41 atIndex:1];
  [computeCommandEncoder setTexture:v42 atIndex:2];
  [computeCommandEncoder setTexture:v44 atIndex:3];
  [computeCommandEncoder setBytes:&v66 length:4 atIndex:0];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:1];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:2];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:3];
  threadExecutionWidth = [(MTLComputePipelineState *)selfCopy->_combineBuffersToHDR threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)selfCopy->_combineBuffersToHDR maxTotalThreadsPerThreadgroup];
  width = [v44 width];
  height = [v44 height];
  v60 = (threadExecutionWidth + width - 1) / threadExecutionWidth;
  v61 = (maxTotalThreadsPerThreadgroup / threadExecutionWidth + height - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
  v62 = 1;
  v59[0] = threadExecutionWidth;
  v59[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v59[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:&v60 threadsPerThreadgroup:v59];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  [v44 width];
  [v44 height];
  kdebug_trace();

  return v44;
}

- (id)grayCubemapOfSize:(unint64_t)size
{
  v5 = 4 * size;
  v6 = 4 * size * size;
  std::vector<unsigned char>::vector[abi:ne200100](__p, v6);
  if (size)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sizeCopy = size;
      v10 = v7;
      do
      {
        *(__p[0] + v10) = 127;
        *(__p[0] + v10 + 1) = 127;
        *(__p[0] + v10 + 2) = 127;
        *(__p[0] + v10 + 3) = -1;
        v10 += 4;
        --sizeCopy;
      }

      while (sizeCopy);
      ++v8;
      v7 += v5;
    }

    while (v8 != size);
  }

  v11 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:81 size:size mipmapped:0];
  [v11 setUsage:5];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  for (i = 0; i != 6; ++i)
  {
    memset(v15, 0, 24);
    v15[3] = size;
    v15[4] = size;
    v15[5] = 1;
    [v12 replaceRegion:v15 mipmapLevel:0 slice:i withBytes:__p[0] bytesPerRow:v5 bytesPerImage:v6];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

- (id)generateSeamSmoothingTexture
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:10 size:8 mipmapped:0];
  v4 = [(MTLDevice *)self->_device newTextureWithDescriptor:v3];
  [v4 setLabel:@"com.apple.arkit.cubemapcompletion.roughnesstexture"];
  v18[0] = xmmword_1C25C9300;
  v18[1] = unk_1C25C9310;
  v18[2] = xmmword_1C25C9320;
  v18[3] = unk_1C25C9330;
  v15 = 0uLL;
  *&v16[8] = vdupq_n_s64(8uLL);
  *v16 = 0;
  *&v16[24] = 1;
  [v4 replaceRegion:&v15 mipmapLevel:0 slice:0 withBytes:v18 bytesPerRow:8 bytesPerImage:64];
  v15 = xmmword_1C25C9340;
  *v16 = unk_1C25C9350;
  *&v16[16] = xmmword_1C25C9360;
  v17 = unk_1C25C9370;
  v12 = 0uLL;
  *&v13[8] = vdupq_n_s64(8uLL);
  *v13 = 0;
  *&v13[24] = 1;
  [v4 replaceRegion:&v12 mipmapLevel:0 slice:2 withBytes:&v15 bytesPerRow:8 bytesPerImage:64];
  v12 = xmmword_1C25C9340;
  *v13 = unk_1C25C9350;
  *&v13[16] = xmmword_1C25C9360;
  v14 = unk_1C25C9370;
  memset(v11, 0, 24);
  *(&v11[1] + 8) = vdupq_n_s64(8uLL);
  *(&v11[2] + 1) = 1;
  [v4 replaceRegion:v11 mipmapLevel:0 slice:3 withBytes:&v12 bytesPerRow:8 bytesPerImage:64];
  memset(v11, 0, sizeof(v11));
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(8uLL);
  v10 = 1;
  [v4 replaceRegion:&v6 mipmapLevel:0 slice:1 withBytes:v11 bytesPerRow:8 bytesPerImage:64];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(8uLL);
  v10 = 1;
  [v4 replaceRegion:&v6 mipmapLevel:0 slice:4 withBytes:v11 bytesPerRow:8 bytesPerImage:64];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(8uLL);
  v10 = 1;
  [v4 replaceRegion:&v6 mipmapLevel:0 slice:5 withBytes:v11 bytesPerRow:8 bytesPerImage:64];

  return v4;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 29) = 0;
  return self;
}

@end