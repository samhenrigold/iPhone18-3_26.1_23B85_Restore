@interface ARImageNoiseTexture
+ (id)sharedInstanceForCameraPosition:(int64_t)position longEdgeImageResolution:(unsigned int)resolution;
- (ARImageNoiseTexture)initWithNoiseModel:(int)model;
- (float)snrToNoiseIntensity:(float)lastSNR;
@end

@implementation ARImageNoiseTexture

+ (id)sharedInstanceForCameraPosition:(int64_t)position longEdgeImageResolution:(unsigned int)resolution
{
  v4 = *&resolution;
  if (+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::onceToken != -1)
  {
    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:];
  }

  dispatch_semaphore_wait(+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentCameraPosition != position || +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentLongEdgeImageResolution != v4)
  {
    v7 = [[ARImageNoiseTexture alloc] initWithNoiseModel:[ARNoiseParameters modelIdentifierForDevicePosition:position longEdgeImageResolution:v4]];
    v8 = +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::sharedInstance;
    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::sharedInstance = v7;

    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentCameraPosition = position;
    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentLongEdgeImageResolution = v4;
  }

  dispatch_semaphore_signal(+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore);
  v9 = +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::sharedInstance;

  return v9;
}

void __79__ARImageNoiseTexture_sharedInstanceForCameraPosition_longEdgeImageResolution___block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore;
  +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore = v0;
}

- (ARImageNoiseTexture)initWithNoiseModel:(int)model
{
  v32 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = ARImageNoiseTexture;
  v4 = [(ARImageNoiseTexture *)&v27 init];
  *(v4 + 1) = 0x41C80000C1200000;
  *(v4 + 4) = 1092616192;
  *(v4 + 8) = 2139095040;
  kdebug_trace();
  v5 = MTLCreateSystemDefaultDevice();
  v6 = objc_opt_new();
  [v6 setTextureType:7];
  [v6 setPixelFormat:115];
  [v6 setWidth:256];
  [v6 setHeight:256];
  [v6 setDepth:*(v4 + 4)];
  [v6 setUsage:3];
  v7 = [v5 newTextureWithDescriptor:v6];
  v8 = *(v4 + 5);
  *(v4 + 5) = v7;

  [*(v4 + 5) setLabel:@"com.apple.arkit.imagenoisetexture"];
  if (model == 69)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARImageNoiseTexture initWithNoiseModel:];
    }

    v10 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v11 = _ARLogGeneral(v9);
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v29 = v14;
        v30 = 2048;
        v31 = v4;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No noise model available. Noise texture will be empty.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v29 = v21;
      v30 = 2048;
      v31 = v4;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: No noise model available. Noise texture will be empty.", buf, 0x16u);
    }
  }

  else
  {
    v15 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.imageNoise", 25, 0);
    v16 = *(v4 + 3);
    *(v4 + 3) = v15;

    v17 = *(v4 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__ARImageNoiseTexture_initWithNoiseModel___block_invoke;
    block[3] = &unk_1E817D928;
    v24 = v5;
    v18 = v4;
    v25 = v18;
    modelCopy = model;
    dispatch_async(v17, block);
    v19 = v25;
    v12 = v18;
  }

  return v4;
}

void __42__ARImageNoiseTexture_initWithNoiseModel___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = ARKitCoreBundle(a1);
  v3 = [v2 URLForResource:@"default" withExtension:@"metallib"];
  v81 = v3;
  if (!v3)
  {
    __assert_rtn("[ARImageNoiseTexture initWithNoiseModel:]_block_invoke", "ARImageNoiseTexture.mm", 113, "url != nil");
  }

  v82 = [*(a1 + 32) newLibraryWithURL:v3 error:0];
  [v82 setLabel:@"com.apple.arkit.imagenoisetexture"];
  v4 = *(a1 + 32);
  v5 = [v82 newFunctionWithName:@"repeat"];
  v86 = [v4 newComputePipelineStateWithFunction:v5 error:0];

  v6 = *(a1 + 32);
  v7 = [v82 newFunctionWithName:@"noise_ycbcr_to_srgb"];
  v80 = v2;
  v85 = [v6 newComputePipelineStateWithFunction:v7 error:0];

  v88 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:125 width:256 height:256 mipmapped:0];
  [v88 setUsage:3];
  v87 = [*(a1 + 32) newTextureWithDescriptor:v88];
  [v88 setWidth:320];
  [v88 setHeight:320];
  [v88 setPixelFormat:25];
  v8 = [*(a1 + 32) newTextureWithDescriptor:v88];
  v91 = [*(a1 + 32) newTextureWithDescriptor:v88];
  v90 = [*(a1 + 32) newTextureWithDescriptor:v88];
  v9 = [*(a1 + 32) newTextureWithDescriptor:v88];
  [v88 setPixelFormat:115];
  v10 = [*(a1 + 32) newTextureWithDescriptor:v88];
  [v88 setWidth:256];
  [v88 setHeight:256];
  v11 = [*(a1 + 32) newTextureWithDescriptor:v88];
  [v87 setLabel:@"com.apple.arkit.imagenoisetexture.noiseYCbCr"];
  [v8 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseY"];
  [v91 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseCb"];
  [v90 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseCr"];
  [v9 setLabel:@"com.apple.arkit.imagenoisetexture.paddedBlurBuffer"];
  [v10 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseTile"];
  [v11 setLabel:@"com.apple.arkit.imagenoisetexture.noiseTile"];
  v92 = v11;
  v93 = v10;
  v84 = v9;

  v12 = 5489;
  v115.__x_[0] = 5489;
  for (i = 1; i != 624; ++i)
  {
    v12 = i + 1812433253 * (v12 ^ (v12 >> 30));
    v115.__x_[i] = v12;
  }

  v115.__i_ = 0;
  v113 = 0x3F80000000000000;
  v114 = 0;
  std::vector<float>::vector[abi:ne200100](&v111, 0x40000uLL);
  v14 = v111;
  v15 = v112;
  while (v14 != v15)
  {
    *v14++ = std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v113, &v115, &v113);
  }

  v79 = [*(a1 + 32) newCommandQueue];
  [v79 setLabel:@"com.apple.arkit.imageNoiseTexture.queue"];
  v16 = [v79 commandBuffer];
  [v79 setLabel:@"com.apple.arkit.imagenoisetexture.queue"];
  v17 = *(a1 + 40);
  *&v19 = v17[2];
  *&v18 = v17[3];
  *&v20 = v17[4];
  v109 = 0;
  v110 = 0;
  __src = 0;
  v21 = v17[3];
  if (v21 >= v17[2])
  {
    v22 = 0;
    v23 = *&v18 - *&v19;
    LODWORD(v19) = -1.0;
    *&v20 = *&v20 + -1.0;
    v24 = v23 / *&v20;
    v89 = v8;
    do
    {
      if (v22 >= v110)
      {
        v25 = __src;
        v26 = v22 - __src;
        v27 = (v22 - __src) >> 2;
        v28 = v27 + 1;
        if ((v27 + 1) >> 62)
        {
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
        }

        v29 = v110 - __src;
        if ((v110 - __src) >> 1 > v28)
        {
          v28 = v29 >> 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&__src, v30);
        }

        v31 = (v22 - __src) >> 2;
        v32 = (4 * v27);
        v33 = (4 * v27 - 4 * v31);
        *v32 = v21;
        v22 = v32 + 1;
        memcpy(v33, v25, v26);
        v34 = __src;
        __src = v33;
        v109 = v22;
        v110 = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v22++ = v21;
      }

      v109 = v22;
      v21 = v21 - v24;
      LODWORD(v18) = *(*(a1 + 40) + 8);
    }

    while (v21 >= *&v18);
    if (v22 != __src)
    {
      v35 = 0;
      v83 = vdupq_n_s64(0x100uLL);
      do
      {
        v36 = [v87 width];
        v37 = [v87 height];
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v106[0] = v36;
        v106[1] = v37;
        v106[2] = 1;
        [v87 replaceRegion:&v103 mipmapLevel:0 withBytes:v111 bytesPerRow:{16 * objc_msgSend(v87, "width")}];
        arkit::gaussianMixtureKernels(*(a1 + 48), 0x29, &v103, *(__src + v35));
        v38 = [v16 computeCommandEncoder];
        [v38 setLabel:@"com.apple.arkit.imagenoisetexture.repeatpipeline"];
        v39 = [v86 threadExecutionWidth];
        v40 = [v86 maxTotalThreadsPerThreadgroup];
        v41 = [v8 width];
        v42 = [v8 height];
        [v38 setComputePipelineState:v86];
        [v38 setTexture:v87 atIndex:0];
        [v38 setTexture:v8 atIndex:1];
        [v38 setTexture:v91 atIndex:2];
        [v38 setTexture:v90 atIndex:3];
        v102 = 0;
        LODWORD(v36) = [v8 width];
        v43 = [v87 width];
        v44 = [v89 height];
        v45 = [v87 height];
        LODWORD(v46) = (v36 - v43) >> 1;
        HIDWORD(v46) = (v44 - v45) >> 1;
        v102 = v46;
        [v38 setBytes:&v102 length:8 atIndex:0];
        LODWORD(__p[1]) = 0;
        __p[0] = 0;
        *&v47 = vsqrt_f32(*v103);
        DWORD2(v47) = sqrtf(*(v103 + 2));
        *__p = v47;
        [v38 setBytes:__p length:16 atIndex:1];
        v48 = v40 / v39 - 1;
        v99 = ((v48 + v41) / (v40 / v39));
        v100 = (v48 + v42) / (v40 / v39);
        v101 = 1;
        v97[0] = (v40 / v39);
        v97[1] = (v40 / v39);
        v98 = 1;
        [v38 dispatchThreadgroups:&v99 threadsPerThreadgroup:v97];
        [v38 endEncoding];
        v100 = 0;
        v101 = 0;
        v99 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v99, *v106[0], *(v106[0] + 8), (*(v106[0] + 8) - *v106[0]) >> 2);
        v97[1] = 0;
        v98 = 0;
        v97[0] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v97, *(v106[0] + 24), *(v106[0] + 32), (*(v106[0] + 32) - *(v106[0] + 24)) >> 2);
        __p[1] = 0;
        v96 = 0;
        __p[0] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *(v106[0] + 48), *(v106[0] + 56), (*(v106[0] + 56) - *(v106[0] + 48)) >> 2);
        v49 = objc_alloc(MEMORY[0x1E6974598]);
        v50 = [v49 initWithDevice:*(a1 + 32) kernelWidth:(v100 - v99) >> 2 kernelHeight:1 weights:?];
        v51 = objc_alloc(MEMORY[0x1E6974598]);
        v52 = [v51 initWithDevice:*(a1 + 32) kernelWidth:1 kernelHeight:(v100 - v99) >> 2 weights:?];
        v53 = objc_alloc(MEMORY[0x1E6974598]);
        v54 = [v53 initWithDevice:*(a1 + 32) kernelWidth:(v97[1] - v97[0]) >> 2 kernelHeight:1 weights:?];
        v55 = objc_alloc(MEMORY[0x1E6974598]);
        v56 = [v55 initWithDevice:*(a1 + 32) kernelWidth:1 kernelHeight:(v97[1] - v97[0]) >> 2 weights:?];
        v57 = objc_alloc(MEMORY[0x1E6974598]);
        v58 = [v57 initWithDevice:*(a1 + 32) kernelWidth:(__p[1] - __p[0]) >> 2 kernelHeight:1 weights:?];
        v59 = objc_alloc(MEMORY[0x1E6974598]);
        v60 = [v59 initWithDevice:*(a1 + 32) kernelWidth:1 kernelHeight:(__p[1] - __p[0]) >> 2 weights:?];
        [v50 encodeToCommandBuffer:v16 sourceTexture:v89 destinationTexture:v84];
        [v52 encodeToCommandBuffer:v16 sourceTexture:v84 destinationTexture:v89];
        [v54 encodeToCommandBuffer:v16 sourceTexture:v91 destinationTexture:v84];
        [v56 encodeToCommandBuffer:v16 sourceTexture:v84 destinationTexture:v91];
        [v58 encodeToCommandBuffer:v16 sourceTexture:v90 destinationTexture:v84];
        [v60 encodeToCommandBuffer:v16 sourceTexture:v84 destinationTexture:v90];

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v8 = v89;
        if (v97[0])
        {
          v97[1] = v97[0];
          operator delete(v97[0]);
        }

        if (v99)
        {
          v100 = v99;
          operator delete(v99);
        }

        v61 = [v16 computeCommandEncoder];
        v62 = [v85 threadExecutionWidth];
        v63 = [v85 maxTotalThreadsPerThreadgroup];
        v64 = [v93 width];
        v65 = [v93 height];
        [v61 setComputePipelineState:v85];
        [v61 setTexture:v89 atIndex:0];
        [v61 setTexture:v91 atIndex:1];
        [v61 setTexture:v90 atIndex:2];
        [v61 setTexture:v93 atIndex:3];
        v66 = powf(fmaxf(v107, 0.35), 2.2);
        v67 = pow(v66, -0.545454545) * 0.454545438;
        v68 = 0.23564758 / v66 / v67;
        *__p = v68;
        [v61 setBytes:__p length:4 atIndex:0];
        v69 = v63 / v62 - 1;
        v99 = ((v69 + v64) / (v63 / v62));
        v100 = (v69 + v65) / (v63 / v62);
        v101 = 1;
        v97[0] = (v63 / v62);
        v97[1] = (v63 / v62);
        v98 = 1;
        [v61 dispatchThreadgroups:&v99 threadsPerThreadgroup:v97];
        [v61 endEncoding];

        v70 = [v16 blitCommandEncoder];
        v71 = [v93 width];
        v72 = [v92 width];
        v73 = [v93 height];
        v74 = [v92 height];
        v99 = ((v71 - v72) >> 1);
        v100 = (v73 - v74) >> 1;
        v101 = 0;
        v75 = [v92 width];
        v76 = [v92 height];
        v97[0] = v75;
        v97[1] = v76;
        v98 = 1;
        __p[0] = 0;
        __p[1] = 0;
        v96 = 0;
        [v70 copyFromTexture:v93 sourceSlice:0 sourceLevel:0 sourceOrigin:&v99 sourceSize:v97 toTexture:v92 destinationSlice:0 destinationLevel:0 destinationOrigin:__p];
        [v70 endEncoding];

        v77 = [v16 blitCommandEncoder];
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *v97 = v83;
        v98 = 1;
        v78 = *(*(a1 + 40) + 40);
        __p[0] = 0;
        __p[1] = 0;
        v96 = v35;
        [v77 copyFromTexture:v92 sourceSlice:0 sourceLevel:0 sourceOrigin:&v99 sourceSize:v97 toTexture:v78 destinationSlice:0 destinationLevel:0 destinationOrigin:__p];
        [v77 endEncoding];

        v99 = v106;
        std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v99);
        if (v103)
        {
          v104 = v103;
          operator delete(v103);
        }

        ++v35;
      }

      while (v35 < (v109 - __src) >> 2);
    }
  }

  [v16 addCompletedHandler:{&__block_literal_global_52_0, v18, v20, v19}];
  [v16 commit];
  if (__src)
  {
    v109 = __src;
    operator delete(__src);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }
}

- (float)snrToNoiseIntensity:(float)lastSNR
{
  if (lastSNR == INFINITY)
  {
    lastSNR = self->_lastSNR;
  }

  self->_lastSNR = lastSNR;
  return (self->_maxSNR - fmaxf(fminf(lastSNR, self->_maxSNR), self->_minSNR)) / (self->_maxSNR - self->_minSNR);
}

@end