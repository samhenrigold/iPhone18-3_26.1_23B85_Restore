@interface ARGPUWarper
- (ARGPUWarper)init;
- (id)description;
- (void)warpCameraImage:(simd_float3)image withExposureOffset:(simd_float3)offset withCameraIntrinsics:(simd_float3)intrinsics withCameraTransform:(simd_float4)transform toPlane:(simd_float4)plane withLoadAction:(simd_float4)action synchronous:(simd_float4)synchronous;
- (void)warpPlane:(ARTexturedPlane *)plane toPlane:(ARTexturedPlane *)toPlane withLoadAction:(unint64_t)action synchronous:(BOOL)synchronous;
@end

@implementation ARGPUWarper

- (ARGPUWarper)init
{
  v56 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = ARGPUWarper;
  v2 = [(ARGPUWarper *)&v49 init];
  v3 = +[ARSharedGPUDevice sharedInstance];
  device = [v3 device];
  device = v2->_device;
  v2->_device = device;

  newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = newCommandQueue;

  v47 = ARKitCoreBundle([(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.arkit.gpuwarper.queue"]);
  v8 = [v47 URLForResource:@"default" withExtension:@"metallib"];
  if (!v8)
  {
    __assert_rtn("[ARGPUWarper init]", "ARGPUWarper.mm", 47, "url != nil");
  }

  v9 = [(MTLDevice *)v2->_device newLibraryWithURL:v8 error:0];
  v10 = objc_alloc_init(MEMORY[0x1E69741E0]);
  attributes = [v10 attributes];
  v12 = [attributes objectAtIndexedSubscript:0];
  [v12 setFormat:29];

  attributes2 = [v10 attributes];
  v14 = [attributes2 objectAtIndexedSubscript:0];
  [v14 setOffset:0];

  attributes3 = [v10 attributes];
  v16 = [attributes3 objectAtIndexedSubscript:0];
  [v16 setBufferIndex:1];

  attributes4 = [v10 attributes];
  v18 = [attributes4 objectAtIndexedSubscript:1];
  [v18 setFormat:29];

  attributes5 = [v10 attributes];
  v20 = [attributes5 objectAtIndexedSubscript:1];
  [v20 setOffset:8];

  attributes6 = [v10 attributes];
  v22 = [attributes6 objectAtIndexedSubscript:1];
  [v22 setBufferIndex:1];

  layouts = [v10 layouts];
  v24 = [layouts objectAtIndexedSubscript:1];
  [v24 setStride:16];

  layouts2 = [v10 layouts];
  v26 = [layouts2 objectAtIndexedSubscript:1];
  [v26 setStepRate:1];

  layouts3 = [v10 layouts];
  v28 = [layouts3 objectAtIndexedSubscript:1];
  [v28 setStepFunction:1];

  v29 = [v9 newFunctionWithName:@"homgraphyVertexShader"];
  v30 = [v9 newFunctionWithName:@"homographyFragmentShader"];
  v31 = objc_alloc_init(MEMORY[0x1E6974148]);
  [v31 setLabel:@"com.apple.arkit.homographypipeline"];
  [v31 setVertexFunction:v29];
  [v31 setVertexDescriptor:v10];
  [v31 setFragmentFunction:v30];
  colorAttachments = [v31 colorAttachments];
  v33 = [colorAttachments objectAtIndexedSubscript:0];
  [v33 setPixelFormat:81];

  v34 = v2->_device;
  v48 = 0;
  v35 = [(MTLDevice *)v34 newRenderPipelineStateWithDescriptor:v31 error:&v48];
  v36 = v48;
  homographyPipelineState = v2->_homographyPipelineState;
  v2->_homographyPipelineState = v35;

  if (!v2->_homographyPipelineState)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARGPUWarper init];
    }

    v39 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v40 = _ARLogGeneral(v38);
    v41 = v40;
    if (v39 == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138543874;
        v51 = v43;
        v52 = 2048;
        v53 = v2;
        v54 = 2112;
        v55 = v36;
        _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create homography pipeline state, error %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138543874;
      v51 = v45;
      v52 = 2048;
      v53 = v2;
      v54 = 2112;
      v55 = v36;
      _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create homography pipeline state, error %@", buf, 0x20u);
    }

    if (!v2->_homographyPipelineState)
    {
      __assert_rtn("[ARGPUWarper init]", "ARGPUWarper.mm", 85, "_homographyPipelineState");
    }
  }

  return v2;
}

- (void)warpCameraImage:(simd_float3)image withExposureOffset:(simd_float3)offset withCameraIntrinsics:(simd_float3)intrinsics withCameraTransform:(simd_float4)transform toPlane:(simd_float4)plane withLoadAction:(simd_float4)action synchronous:(simd_float4)synchronous
{
  v63.columns[2] = action;
  v63.columns[3] = synchronous;
  v63.columns[0] = transform;
  v63.columns[1] = plane;
  v85[8] = *MEMORY[0x1E69E9840];
  v82.columns[0] = image;
  v82.columns[1] = offset;
  v82.columns[2] = intrinsics;
  kdebug_trace();
  renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v22 = [colorAttachments objectAtIndexedSubscript:0];
  [v22 setTexture:*(a12 + 216)];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v24 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v24 setLoadAction:a13];

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v26 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v26 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  colorAttachments4 = [renderPassDescriptor colorAttachments];
  v28 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v28 setStoreAction:1];

  v29 = MEMORY[0x1E69741C0];
  Width = CVPixelBufferGetWidth(a11);
  v31 = [v29 texture2DDescriptorWithPixelFormat:520 width:Width height:CVPixelBufferGetHeight(a11) mipmapped:0];
  v32 = [*(self + 8) newTextureWithDescriptor:v31 iosurface:CVPixelBufferGetIOSurface(a11) plane:0];
  commandBuffer = [*(self + 16) commandBuffer];
  [commandBuffer setLabel:@"com.apple.arkit.gpuwarper.cameratoplanecommandbuffer"];
  v34 = CVBufferRetain(a11);
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __126__ARGPUWarper_warpCameraImage_withExposureOffset_withCameraIntrinsics_withCameraTransform_toPlane_withLoadAction_synchronous___block_invoke;
  v81[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
  v81[4] = v34;
  [commandBuffer addCompletedHandler:v81];
  v35 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [v35 setLabel:@"com.apple.arkit.gpuwarper.cameratoplanerenderencoder"];
  [v35 setCullMode:0];
  [v35 setRenderPipelineState:*(self + 24)];
  v36 = CVPixelBufferGetWidth(a11);
  Height = CVPixelBufferGetHeight(a11);
  *&v38 = v36;
  v85[0] = 0;
  v85[1] = 0x3F80000000000000;
  v85[2] = COERCE_UNSIGNED_INT(v36);
  __asm { FMOV            V2.2S, #1.0 }

  LODWORD(v44) = 0;
  *(&v44 + 1) = Height;
  v85[3] = _D2;
  v85[4] = v44;
  v85[5] = 0;
  *(&v38 + 1) = Height;
  v85[6] = v38;
  v85[7] = 1065353216;
  [v35 setVertexBytes:v85 length:64 atIndex:1];
  v79 = __invert_f4(v63);
  convert(&v79, v80);
  convert((a12 + 32), v79.columns);
  v78[0] = xmmword_1C25C93F0;
  v78[1] = xmmword_1C25C9400;
  v78[2] = xmmword_1C25C9410;
  v46 = *(a12 + 96);
  v45 = *(a12 + 112);
  v74[0] = v45;
  v74[2] = DWORD2(v46);
  v74[1] = 0;
  v74[3] = 1065353216;
  v75[0] = v46;
  v75[2] = DWORD2(v46);
  v75[1] = 0;
  v75[3] = 1065353216;
  v76[0] = v46;
  v76[2] = DWORD2(v45);
  v76[1] = 0;
  v76[3] = 1065353216;
  v77[0] = v45;
  v77[2] = DWORD2(v45);
  v77[1] = 0;
  v77[3] = 1065353216;
  convert(&v82, v73);
  for (i = 24; i != 36; i += 4)
  {
    *&v73[i] = -*&v73[i];
  }

  v72 = 0u;
  memset(v71, 0, sizeof(v71));
  v83 = v80;
  v84 = &v79;
  *&v67[0] = &v83;
  *(&v67[0] + 1) = v74;
  v64 = 0uLL;
  v48 = cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v64, v67);
  *&v49 = dehomogenize(&v64, &v83, v48);
  *&v67[0] = v73;
  *(&v67[0] + 1) = &v83;
  v69 = 0;
  v70 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v69, v67, v49);
  *&v71[0] = v69;
  DWORD2(v71[0]) = v70;
  v83 = v80;
  v84 = &v79;
  *&v67[0] = &v83;
  *(&v67[0] + 1) = v75;
  v64 = 0uLL;
  v50 = cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v64, v67);
  *&v51 = dehomogenize(&v64, &v83, v50);
  *&v67[0] = v73;
  *(&v67[0] + 1) = &v83;
  v69 = 0;
  v70 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v69, v67, v51);
  *(v71 + 12) = v69;
  DWORD1(v71[1]) = v70;
  v83 = v80;
  v84 = &v79;
  *&v67[0] = &v83;
  *(&v67[0] + 1) = v76;
  v64 = 0uLL;
  v52 = cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v64, v67);
  *&v53 = dehomogenize(&v64, &v83, v52);
  *&v67[0] = v73;
  *(&v67[0] + 1) = &v83;
  v69 = 0;
  v70 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v69, v67, v53);
  *(&v71[1] + 1) = v69;
  LODWORD(v72) = v70;
  v83 = v80;
  v84 = &v79;
  *&v67[0] = &v83;
  *(&v67[0] + 1) = v77;
  v64 = 0uLL;
  v54 = cva::assign<false,false,cva::Matrix<float,4u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v64, v67);
  *&v55 = dehomogenize(&v64, &v83, v54);
  *&v67[0] = v73;
  *(&v67[0] + 1) = &v83;
  v69 = 0;
  v70 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::Matrix<float,3u,3u,false>,cva::Matrix<float,3u,1u,false>>(&v69, v67, v55);
  *(&v72 + 4) = v69;
  HIDWORD(v72) = v70;
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  computeHomography(v71, v78, v67);
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v56 = convert(v67);
  v64.i32[2] = v57;
  DWORD2(v65) = v58;
  *v64.i64 = v56;
  *&v65 = v59;
  DWORD2(v66) = v60;
  *&v66 = v61;
  [v35 setVertexBytes:&v64 length:48 atIndex:0];
  LOBYTE(v69) = 1;
  [v35 setFragmentBytes:&v69 length:1 atIndex:0];
  v62 = 1.0 / exp2(a2);
  *&v83 = v62;
  [v35 setFragmentBytes:&v83 length:4 atIndex:2];
  [v35 setFragmentTexture:v32 atIndex:0];
  [v35 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v35 endEncoding];
  [commandBuffer commit];
  if (a14)
  {
    [commandBuffer waitUntilCompleted];
  }

  kdebug_trace();
}

- (void)warpPlane:(ARTexturedPlane *)plane toPlane:(ARTexturedPlane *)toPlane withLoadAction:(unint64_t)action synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v93 = *MEMORY[0x1E69E9840];
  renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v13 = [colorAttachments objectAtIndexedSubscript:0];
  [v13 setTexture:toPlane[3].var5];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v15 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v15 setLoadAction:action];

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v17 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v17 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  colorAttachments4 = [renderPassDescriptor colorAttachments];
  v19 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v19 setStoreAction:1];

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"com.apple.arkit.gpuwarper.planetoplanecommandbuffer"];
  v21 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [v21 setLabel:@"com.apple.arkit.gpuwarper.planetoplanerenderencoder"];
  [v21 setCullMode:0];
  [v21 setRenderPipelineState:self->_homographyPipelineState];
  v22 = 0;
  v23 = *&plane[1].var4.__tree_.__size_;
  var0 = plane[2].var0;
  v25.i64[0] = 0x3F0000003F000000;
  v25.i64[1] = 0x3F0000003F000000;
  v26 = vmulq_f32(vaddq_f32(v23, var0), v25);
  v27 = *MEMORY[0x1E69E9B18];
  v28 = *(MEMORY[0x1E69E9B18] + 16);
  v29 = *(MEMORY[0x1E69E9B18] + 32);
  v30 = *(MEMORY[0x1E69E9B18] + 48);
  v26.i32[3] = HIDWORD(v30);
  v31 = *&plane->var4.__tree_.__end_node_.__left_;
  v32 = *&plane->var5;
  v33 = *(&plane[1].var0 + 8);
  v34 = *&plane[1].var4.__tree_.__begin_node_;
  v88 = *MEMORY[0x1E69E9B18];
  v89 = v28;
  v90 = v29;
  v91 = v26;
  do
  {
    v92.columns[v22 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*(&v88 + v22))), v32, *(&v88 + v22), 1), v33, *(&v88 + v22), 2), v34, *(&v88 + v22), 3);
    v22 += 16;
  }

  while (v22 != 64);
  v35 = 0;
  v64 = v92.columns[1];
  v65 = v92.columns[0];
  v62 = v92.columns[3];
  v63 = v92.columns[2];
  v60 = toPlane[2].var0;
  v61 = *&toPlane[1].var4.__tree_.__size_;
  v36.i64[0] = 0x3F0000003F000000;
  v36.i64[1] = 0x3F0000003F000000;
  v37 = vmulq_f32(vaddq_f32(v61, v60), v36);
  v37.i32[3] = HIDWORD(v30);
  v38 = *&toPlane->var4.__tree_.__end_node_.__left_;
  v39 = *&toPlane->var5;
  v40 = *(&toPlane[1].var0 + 8);
  v41 = *&toPlane[1].var4.__tree_.__begin_node_;
  v88 = v27;
  v89 = v28;
  v90 = v29;
  v91 = v37;
  do
  {
    v92.columns[v35 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*(&v88 + v35))), v39, *(&v88 + v35), 1), v40, *(&v88 + v35), 2), v41, *(&v88 + v35), 3);
    v35 += 16;
  }

  while (v35 != 64);
  v87 = v92;
  v42 = vsubq_f32(v23, var0);
  *&v43 = -0.5 * v42.f32[0];
  *&v44 = -0.5 * v42.f32[0];
  HIDWORD(v44) = vmuls_lane_f32(-0.5, v42, 2);
  v92.columns[0].i64[0] = v44;
  v92.columns[0].i64[1] = 0x3F80000000000000;
  *&v45 = 0.5 * v42.f32[0];
  *&v46 = 0.5 * v42.f32[0];
  HIDWORD(v46) = HIDWORD(v44);
  __asm { FMOV            V1.2S, #1.0 }

  v92.columns[1].i64[0] = v46;
  v92.columns[1].i64[1] = _D1;
  HIDWORD(v43) = vmuls_lane_f32(0.5, v42, 2);
  v92.columns[2] = v43;
  HIDWORD(v45) = HIDWORD(v43);
  v92.columns[3].i64[0] = v45;
  v92.columns[3].i64[1] = 1065353216;
  [v21 setVertexBytes:&v92 length:64 atIndex:1];
  v94.columns[1] = v64;
  v94.columns[0] = v65;
  v94.columns[3] = v62;
  v94.columns[2] = v63;
  v78 = __invert_f4(v94);
  convert(&v78, &v79);
  convert(&v87, &v74);
  *&v67 = &v79;
  *(&v67 + 1) = &v74;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  cva::assign<false,false,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>,cva::Matrix<float,4u,4u,false>>(&v88, &v67);
  v52 = vsubq_f32(v61, v60);
  v79.f32[0] = -0.5 * v52.f32[0];
  v79.i32[1] = 0;
  v79.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, v52, 2)) | 0x3F80000000000000;
  v80[0] = -0.5 * v52.f32[0];
  v80[1] = 0.0;
  v81 = vmuls_lane_f32(-0.5, v52, 2);
  v82 = 1065353216;
  v83[0] = 0.5 * v52.f32[0];
  v83[1] = 0.0;
  v83[2] = v81;
  v83[3] = 1.0;
  v84 = 0.5 * v52.f32[0];
  v85 = __PAIR64__(v79.u32[2], 0);
  v86 = 1065353216;
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  MakeMatrix3x4f(1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, &v78, 0.0, 0.0, 0.0, 1.0);
  *&v70[0] = &v78;
  *(&v70[0] + 1) = &v88;
  *&v67 = v70;
  *(&v67 + 1) = &v79;
  v72 = 0;
  v73 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v72, &v67);
  v74 = v72;
  v75 = v73;
  MakeMatrix3x4f(1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, &v78, 0.0, 0.0, 0.0, 1.0);
  *&v70[0] = &v78;
  *(&v70[0] + 1) = &v88;
  *&v67 = v70;
  *(&v67 + 1) = v80;
  v72 = 0;
  v73 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v72, &v67);
  v76[0] = v72;
  LODWORD(v76[1]) = v73;
  MakeMatrix3x4f(1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, &v78, 0.0, 0.0, 0.0, 1.0);
  *&v70[0] = &v78;
  *(&v70[0] + 1) = &v88;
  *&v67 = v70;
  *(&v67 + 1) = v83;
  v72 = 0;
  v73 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v72, &v67);
  *(&v76[1] + 4) = v72;
  HIDWORD(v76[2]) = v73;
  MakeMatrix3x4f(1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, &v78, 0.0, 0.0, 0.0, 1.0);
  *&v70[0] = &v78;
  *(&v70[0] + 1) = &v88;
  *&v67 = v70;
  *(&v67 + 1) = &v84;
  v72 = 0;
  v73 = 0;
  cva::assign<false,false,cva::Matrix<float,3u,1u,false>,cva::MatrixMultExpr<cva::Matrix<float,3u,4u,false>,cva::Matrix<float,4u,4u,false>>,cva::Matrix<float,4u,1u,false>>(&v72, &v67);
  v76[3] = v72;
  v77 = v73;
  __asm { FMOV            V1.4S, #1.0 }

  v78.columns[0] = xmmword_1C25C9420;
  v78.columns[1] = _Q1;
  v78.columns[2] = xmmword_1C25C9430;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  computeHomography(&v74, &v78, v70);
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v54 = convert(v70);
  DWORD2(v67) = v55;
  DWORD2(v68) = v56;
  *&v67 = v54;
  *&v68 = v57;
  DWORD2(v69) = v58;
  *&v69 = v59;
  [v21 setVertexBytes:&v67 length:48 atIndex:0];
  v66 = 0;
  [v21 setFragmentBytes:&v66 length:1 atIndex:0];
  LODWORD(v72) = 1065353216;
  [v21 setFragmentBytes:&v72 length:4 atIndex:2];
  [v21 setFragmentTexture:plane[3].var5 atIndex:0];
  [v21 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v21 endEncoding];
  [commandBuffer commit];
  if (synchronousCopy)
  {
    [commandBuffer waitUntilCompleted];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  status = [commandBuffer status];
  if (status > 5)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E817D8D0[status];
  }

  [v6 appendFormat:@"CommandBuffer Status: %@", v9];

  [v6 appendString:@">"];
  v10 = [v6 copy];

  return v10;
}

@end