@interface NUNICalliopeResourceManager
+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)format;
+ (void)_deallocInstance:(id)instance;
- ($6DF29C2F86D270DB44307FB3958C5E7F)patchTextureGroupForSpheroid:(unint64_t)spheroid index:(unint64_t)index suffix:(id)suffix;
- (NUNICalliopeResourceManager)initWithDisplayPixelFormat:(unint64_t)format;
- (id)_generatePipelineCshName:(id)name;
- (id)_generatePipelineTshName:(id)name pixelFormat0:(unint64_t)format0 pixelFormat1:(unint64_t)format1;
- (id)_generatePipelineVshName:(id)name fshName:(id)fshName config:(unint64_t)config blend0:(unint64_t)blend0 blend1:(unint64_t)blend1 pixelFormat0:(unint64_t)format0 pixelFormat1:(unint64_t)format1;
- (id)_provideEarthCloudsAtlasBacking:(id)backing;
- (id)computePipelineForBloomChainDownsample;
- (id)computePipelineForBloomChainUpsample;
- (id)patchIndicesBufferForLod:(unint64_t)lod;
- (id)provideAtlasBacking:(id)backing;
- (id)renderDisplayPipeline;
- (id)renderOffscreenPipelineForAtmosphere;
- (id)renderOffscreenPipelineForBloomDownsample;
- (id)renderOffscreenPipelineForBloomDownsampleUsingTileShader;
- (id)renderOffscreenPipelineForDebugDraw;
- (id)renderOffscreenPipelineForLocationDot;
- (id)renderOffscreenPipelineForPost;
- (id)renderOffscreenPipelineForSaturnRing;
- (id)renderOffscreenPipelineForSpheroid:(unint64_t)spheroid layer:(int)layer config:(unint64_t)config;
- (id)renderOffscreenPipelineForStar;
- (id)renderOffscreenPipelineForStarfield;
- (id)textureGroupWithSuffix:(id)suffix;
- (unsigned)patchIndexCountForLod:(unint64_t)lod;
- (void)_asyncDeallocInstance;
- (void)_deferredCloudDataFetchIfNeeded;
- (void)_handleCloudCoverTextureExpired;
- (void)_loadGeometry;
- (void)addClient;
- (void)dealloc;
- (void)purgeAllCloudCoverTextures;
- (void)removeClient;
- (void)setPipelineConstants:(uint64_t)constants;
@end

@implementation NUNICalliopeResourceManager

+ (id)sharedInstanceWithDisplayPixelFormat:(unint64_t)format
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!__sharedInstance_0)
  {
    v5 = [[NUNICalliopeResourceManager alloc] initWithDisplayPixelFormat:format];
    v6 = __sharedInstance_0;
    __sharedInstance_0 = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = __sharedInstance_0;
  if (*(__sharedInstance_0 + 32) != format)
  {
    v8 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NUNICalliopeResourceManager *)format sharedInstanceWithDisplayPixelFormat:v8];
    }

    v7 = __sharedInstance_0;
  }

  return v7;
}

+ (void)_deallocInstance:(id)instance
{
  obj = self;
  objc_sync_enter(obj);
  v3 = __sharedInstance_0;
  __sharedInstance_0 = 0;

  objc_sync_exit(obj);
}

- (NUNICalliopeResourceManager)initWithDisplayPixelFormat:(unint64_t)format
{
  v24.receiver = self;
  v24.super_class = NUNICalliopeResourceManager;
  v4 = [(NUNICalliopeResourceManager *)&v24 init];
  if (v4)
  {
    v5 = objc_opt_new();
    resourceProviderKey = v4->_resourceProviderKey;
    v4->_resourceProviderKey = v5;

    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
    device = v4->_device;
    v4->_device = mEMORY[0x277CFA798];

    v9 = v4->_device;
    v11 = NUNIBundle(v10);
    v12 = [(MTLDevice *)v9 newDefaultLibraryWithBundle:v11 error:0];
    library = v4->_library;
    v4->_library = v12;

    v4->_displayPixelFormat = format;
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    textureGroupHashTable = v4->_textureGroupHashTable;
    v4->_textureGroupHashTable = strongToWeakObjectsMapTable;

    v16 = [_TtC12NanoUniverse22AegirCloudCoverService alloc];
    LODWORD(v17) = 0.25;
    v18 = [(AegirCloudCoverService *)v16 initWithImageScale:v17];
    cloudsService = v4->_cloudsService;
    v4->_cloudsService = v18;

    v20 = v4->_cloudsService;
    v21 = objc_opt_new();
    [(AegirCloudCoverService *)v20 setFileConverter:v21];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__handleCloudCoverTextureExpired name:@"CloudCoverExpiredNotification" object:0];

    [(NUNICalliopeResourceManager *)v4 _loadGeometry];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NUNICalliopeResourceManager;
  [(NUNICalliopeResourceManager *)&v2 dealloc];
}

- (void)_asyncDeallocInstance
{
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v3 = objc_opt_class();
  if (isMainThread)
  {

    [v3 _deallocInstance:0];
  }

  else
  {

    [v3 performSelectorOnMainThread:sel__deallocInstance_ withObject:0 waitUntilDone:0];
  }
}

- (void)addClient
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_clients;
  objc_sync_exit(obj);
}

- (void)removeClient
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_clients - 1;
  selfCopy->_clients = v3;
  objc_sync_exit(selfCopy);

  if (!v3)
  {

    [(NUNICalliopeResourceManager *)selfCopy _asyncDeallocInstance];
  }
}

- (void)setPipelineConstants:(uint64_t)constants
{
  v5 = objc_opt_new();
  v6 = 0;
  obj = v5;
  do
  {
    [v5 setConstantValue:constants type:16 atIndex:v6];
    v5 = obj;
    ++v6;
    constants += 2;
  }

  while (v6 != 35);
  objc_storeStrong((self + 968), obj);
  v7 = *(self + 48);
  *(self + 48) = 0;

  v8 = *(self + 56);
  *(self + 56) = 0;

  v9 = *(self + 64);
  *(self + 64) = 0;

  v10 = *(self + 72);
  *(self + 72) = 0;

  v11 = *(self + 80);
  *(self + 80) = 0;

  v12 = 0;
  v13 = self + 112;
  v14 = 1;
  do
  {
    v15 = v14;
    v16 = (v13 + 384 * v12);
    v17 = 24;
    do
    {
      v18 = *(v16 - 1);
      *(v16 - 1) = 0;

      v19 = *v16;
      *v16 = 0;
      v16 += 2;

      --v17;
    }

    while (v17);
    v14 = 0;
    v12 = 1;
  }

  while ((v15 & 1) != 0);
}

- (void)_loadGeometry
{
  v3 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeQuadVertices length:16 options:1];
  rectVerticesBuffer = self->_rectVerticesBuffer;
  self->_rectVerticesBuffer = v3;

  v5 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeDiscVertices length:64 options:1];
  discVerticesBuffer = self->_discVerticesBuffer;
  self->_discVerticesBuffer = v5;

  v7 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeStarVertices length:44928 options:1];
  starVerticesBuffer = self->_starVerticesBuffer;
  self->_starVerticesBuffer = v7;

  v9 = [(MTLDevice *)self->_device newBufferWithBytesNoCopy:&_NUNICalliopeStarfieldVertices length:518184 options:1 deallocator:&__block_literal_global_0];
  starfieldVerticesBuffer = self->_starfieldVerticesBuffer;
  self->_starfieldVerticesBuffer = v9;

  v11 = [(MTLDevice *)self->_device newBufferWithBytesNoCopy:&_NUNICalliopeStarfieldIndices length:768300 options:1 deallocator:&__block_literal_global_27];
  starfieldIndicesBuffer = self->_starfieldIndicesBuffer;
  self->_starfieldIndicesBuffer = v11;

  v13 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeAtmosphereRingVertices length:200 options:1];
  atmosphereRingVerticesBuffer = self->_atmosphereRingVerticesBuffer;
  self->_atmosphereRingVerticesBuffer = v13;

  v15 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopeSaturnRingVertices length:104 options:1];
  saturnRingVerticesBuffer = self->_saturnRingVerticesBuffer;
  self->_saturnRingVerticesBuffer = v15;

  v17 = [(MTLDevice *)self->_device newBufferWithBytesNoCopy:_NUNICalliopePatchVertices length:110976 options:1 deallocator:&__block_literal_global_29];
  patchVerticesBuffer = self->_patchVerticesBuffer;
  self->_patchVerticesBuffer = v17;

  v19 = [(MTLDevice *)self->_device newBufferWithBytes:_NUNICalliopePatchIndices1 length:3072 options:1];
  v20 = self->_patchIndicesBuffer[0];
  self->_patchIndicesBuffer[0] = v19;

  v21 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopePatchIndices2 length:768 options:1];
  v22 = self->_patchIndicesBuffer[1];
  self->_patchIndicesBuffer[1] = v21;

  v23 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopePatchIndices3 length:192 options:1];
  v24 = self->_patchIndicesBuffer[2];
  self->_patchIndicesBuffer[2] = v23;

  v25 = [(MTLDevice *)self->_device newBufferWithBytes:&_NUNICalliopePatchIndices4 length:48 options:1];
  v26 = self->_patchIndicesBuffer[3];
  self->_patchIndicesBuffer[3] = v25;

  for (i = 0; i != 24; ++i)
  {
    v28 = 0;
    v29.i64[0] = 0x80000000800000;
    v29.i64[1] = 0x80000000800000;
    v30 = vnegq_f32(v29);
    do
    {
      _D2 = _NUNICalliopePatchVertices[578 * i + 2 * _NUNICalliopePatchIndices1[v28]];
      __asm { FCVT            S3, H2 }

      v37 = vcvtq_f32_f16(vext_s8(_D2, *v29.f32, 2uLL)).u64[0];
      v30.i32[3] = 0;
      v38.i64[0] = __PAIR64__(v37, _S3);
      v38.i64[1] = HIDWORD(v37);
      v30 = vminnmq_f32(v30, v38);
      v29.i32[3] = 0;
      v29 = vmaxnmq_f32(v29, v38);
      ++v28;
    }

    while (v28 != 1536);
    v39 = &self->_anon_4c10[32 * i];
    *v39 = v30;
    *(v39 + 1) = v29;
  }

  v40 = &self->_anon_4c10[16];
  v41.i64[0] = 0x80000000800000;
  v41.i64[1] = 0x80000000800000;
  v42 = vnegq_f32(v41);
  v43 = 24;
  do
  {
    v42.i32[3] = 0;
    v44 = *(v40 - 1);
    v45 = *v40;
    v44.i32[3] = 0;
    v41.i32[3] = 0;
    v42 = vminnmq_f32(v42, v44);
    v45.i32[3] = 0;
    v41 = vmaxnmq_f32(v41, v45);
    v40 += 32;
    --v43;
  }

  while (v43);
  *&self[1].super.isa = v42;
  *&self[1]._resourceProviderKey = v41;
}

- (id)patchIndicesBufferForLod:(unint64_t)lod
{
  lodCopy = 3;
  if (lod < 3)
  {
    lodCopy = lod;
  }

  return self->_patchIndicesBuffer[lodCopy];
}

- (unsigned)patchIndexCountForLod:(unint64_t)lod
{
  lodCopy = 3;
  if (lod < 3)
  {
    lodCopy = lod;
  }

  return patchIndexCountForLod__counts[lodCopy];
}

- ($6DF29C2F86D270DB44307FB3958C5E7F)patchTextureGroupForSpheroid:(unint64_t)spheroid index:(unint64_t)index suffix:(id)suffix
{
  v5 = &self->_patchTextureGroupTable[spheroid][index];
  if (!v5->var0)
  {
    index = [MEMORY[0x277CCACA8] stringWithFormat:@"p%02d-i%02d", patchTextureGroupForSpheroid_index_suffix__spheroidIndex[spheroid], index];
    v10 = MEMORY[0x277CFA7C0];
    suffix = [index stringByAppendingFormat:@"-a-%@", suffix];
    v12 = [v10 textureWithProviderDelegate:self uuid:suffix streaming:1];
    var0 = v5->var0;
    v5->var0 = v12;

    atlas = [v5->var0 atlas];
    [atlas setMaxPlaceholderSize:128];

    if (patchTextureGroupForSpheroid_index_suffix__spheroidHasNormal[spheroid] == 1)
    {
      v15 = MEMORY[0x277CFA7C0];
      suffix2 = [index stringByAppendingFormat:@"-n-%@", suffix];
      v17 = [v15 textureWithProviderDelegate:self uuid:suffix2 streaming:1];
      var1 = v5->var1;
      v5->var1 = v17;

      atlas2 = [v5->var1 atlas];
      [atlas2 setMaxPlaceholderSize:128];
    }

    if (patchTextureGroupForSpheroid_index_suffix__spheroidHasCloud[spheroid] == 1)
    {
      v20 = MEMORY[0x277CFA7C0];
      suffix3 = [index stringByAppendingFormat:@"-e-%@", suffix];
      v22 = [v20 textureWithProviderDelegate:self uuid:suffix3 streaming:1];
      var2 = v5->var2;
      v5->var2 = v22;

      atlas3 = [v5->var2 atlas];
      [atlas3 setMaxPlaceholderSize:128];
    }

    if (patchTextureGroupForSpheroid_index_suffix__spheroidHasCloud[spheroid] == 1)
    {
      v25 = MEMORY[0x277CFA7C0];
      suffix4 = [index stringByAppendingFormat:@"-c-%@", suffix];
      v27 = [v25 textureWithProviderDelegate:self uuid:suffix4 streaming:1];
      var3 = v5->var3;
      v5->var3 = v27;

      atlas4 = [v5->var3 atlas];
      [atlas4 setMaxPlaceholderSize:128];
    }
  }

  return v5;
}

- (id)textureGroupWithSuffix:(id)suffix
{
  suffixCopy = suffix;
  v5 = [(NSMapTable *)self->_textureGroupHashTable objectForKey:suffixCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(NUNICalliopeTextureGroup);
    nullTexture2D = [MEMORY[0x277CFA7C0] nullTexture2D];
    v7 = objc_opt_new();
    for (i = 0; i != 24; ++i)
    {
      v9 = textureGroupWithSuffix__uuidGradients[i];
      if (v9)
      {
        v10 = [v9 stringByAppendingString:suffixCopy];
        v11 = [MEMORY[0x277CFA7C0] textureWithProviderDelegate:self uuid:v10 nullTexture:nullTexture2D];
        [v7 addObject:v11];
      }

      else
      {
        [v7 addObject:nullTexture2D];
      }
    }

    [(NUNICalliopeTextureGroup *)v5 setGradients:v7];

    [(NSMapTable *)self->_textureGroupHashTable setObject:v5 forKey:suffixCopy];
  }

  return v5;
}

- (id)renderDisplayPipeline
{
  v3 = self->_pipelineStateDisplay;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_pass_vsh" fshName:@"calliope_display_fsh" config:0 blend0:0 blend1:4 pixelFormat0:self->_displayPixelFormat pixelFormat1:0];
    pipelineStateDisplay = self->_pipelineStateDisplay;
    self->_pipelineStateDisplay = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForPost
{
  v3 = self->_pipelineStatePost;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_post_vsh" fshName:@"calliope_post_fsh" config:0 blend0:2 blend1:3 pixelFormat0:555 pixelFormat1:10];
    pipelineStatePost = self->_pipelineStatePost;
    self->_pipelineStatePost = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForStarfield
{
  v3 = self->_pipelineStateStarfield;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_starfield_vsh" fshName:@"calliope_starfield_fsh" config:0 blend0:0 blend1:0 pixelFormat0:555 pixelFormat1:10];
    pipelineStateStarfield = self->_pipelineStateStarfield;
    self->_pipelineStateStarfield = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForStar
{
  v3 = self->_pipelineStateStar;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_star_vsh" fshName:@"calliope_star_fsh" config:0 blend0:1 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateStar = self->_pipelineStateStar;
    self->_pipelineStateStar = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForSaturnRing
{
  p_pipelineStateSaturnRing = &self->_pipelineStateSaturnRing;
  v4 = self->_pipelineStateSaturnRing;
  if (!v4)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_saturn_ring_vsh" fshName:@"calliope_saturn_ring_fsh" config:0 blend0:1 blend1:1 pixelFormat0:555 pixelFormat1:10];
    objc_storeStrong(p_pipelineStateSaturnRing, v4);
  }

  return v4;
}

- (id)renderOffscreenPipelineForAtmosphere
{
  p_pipelineStateAtmosphere = &self->_pipelineStateAtmosphere;
  v4 = self->_pipelineStateAtmosphere;
  if (!v4)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_atmosphere_vsh" fshName:@"calliope_atmosphere_fsh" config:0 blend0:1 blend1:1 pixelFormat0:555 pixelFormat1:10];
    objc_storeStrong(p_pipelineStateAtmosphere, v4);
  }

  return v4;
}

- (id)renderOffscreenPipelineForLocationDot
{
  v3 = self->_pipelineStateLocationDot;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_locdot_vsh" fshName:@"calliope_locdot_fsh" config:0 blend0:1 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateLocationDot = self->_pipelineStateLocationDot;
    self->_pipelineStateLocationDot = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForSpheroid:(unint64_t)spheroid layer:(int)layer config:(unint64_t)config
{
  v9 = self + 384 * layer + 16 * spheroid + 8 * config;
  v11 = *(v9 + 13);
  v10 = (v9 + 104);
  v12 = v11;
  if (!v12)
  {
    v13 = renderOffscreenPipelineForSpheroid_layer_config__spheroridFshs[24 * layer + spheroid];
    if (v13)
    {
      v14 = renderOffscreenPipelineForSpheroid_layer_config__spheroridVshs[24 * layer + spheroid];
      v15 = v13;
      v16 = v14;
      v17 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:v16 fshName:v15 config:config blend0:1 blend1:1 pixelFormat0:555 pixelFormat1:10];
      v18 = *v10;
      *v10 = v17;

      v12 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)renderOffscreenPipelineForDebugDraw
{
  v3 = self->_pipelineStateDebugDraw;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_debugdraw_vsh" fshName:@"calliope_debugdraw_fsh" config:0 blend0:0 blend1:4 pixelFormat0:555 pixelFormat1:10];
    pipelineStateDebugDraw = self->_pipelineStateDebugDraw;
    self->_pipelineStateDebugDraw = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForBloomDownsampleUsingTileShader
{
  v3 = self->_pipelineStateForBloomDownsampleUsingTileShader;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineTshName:@"calliope_bloom_downsample_tsh" pixelFormat0:555 pixelFormat1:10];
    pipelineStateForBloomDownsampleUsingTileShader = self->_pipelineStateForBloomDownsampleUsingTileShader;
    self->_pipelineStateForBloomDownsampleUsingTileShader = v4;

    v3 = v4;
  }

  return v3;
}

- (id)renderOffscreenPipelineForBloomDownsample
{
  v3 = self->_pipelineStateForBloomDownsample;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineVshName:@"calliope_bloom_downsample_vsh" fshName:@"calliope_bloom_downsample_fsh" config:0 blend0:0 blend1:4 pixelFormat0:10 pixelFormat1:0];
    pipelineStateForBloomDownsample = self->_pipelineStateForBloomDownsample;
    self->_pipelineStateForBloomDownsample = v4;

    v3 = v4;
  }

  return v3;
}

- (id)computePipelineForBloomChainDownsample
{
  v3 = self->_pipelineStateForBloomChainDownsample;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineCshName:@"calliope_bloom_chain_downsample_csh"];
    pipelineStateForBloomChainDownsample = self->_pipelineStateForBloomChainDownsample;
    self->_pipelineStateForBloomChainDownsample = v4;

    v3 = v4;
  }

  return v3;
}

- (id)computePipelineForBloomChainUpsample
{
  v3 = self->_pipelineStateForBloomChainUpsample;
  if (!v3)
  {
    v4 = [(NUNICalliopeResourceManager *)self _generatePipelineCshName:@"calliope_bloom_chain_upsample_csh"];
    pipelineStateForBloomChainUpsample = self->_pipelineStateForBloomChainUpsample;
    self->_pipelineStateForBloomChainUpsample = v4;

    v3 = v4;
  }

  return v3;
}

- (id)_generatePipelineVshName:(id)name fshName:(id)fshName config:(unint64_t)config blend0:(unint64_t)blend0 blend1:(unint64_t)blend1 pixelFormat0:(unint64_t)format0 pixelFormat1:(unint64_t)format1
{
  configCopy = config;
  nameCopy = name;
  fshNameCopy = fshName;
  v49 = (configCopy & 3) == 1;
  v48 = (configCopy & 2) != 0;
  v17 = [(MTLFunctionConstantValues *)self->_pipelineConstants copy];
  [v17 setConstantValue:&v49 type:53 atIndex:35];
  v18 = [v17 setConstantValue:&v48 type:53 atIndex:36];
  blend1Copy = blend1;
  blend0Copy = blend0;
  v19 = MEMORY[0x277CFA788];
  v20 = NUNIBundle(v18);
  v21 = [v19 archiveWithName:@"NUNICalliopeShadersCompanion" bundle:v20 device:self->_device];

  functionDescriptor = [MEMORY[0x277CD6D78] functionDescriptor];
  v42 = v17;
  [functionDescriptor setConstantValues:v17];
  [functionDescriptor setName:nameCopy];
  v23 = [v21 newFunctionInLibrary:self->_library withDescriptor:functionDescriptor];
  [functionDescriptor setName:fshNameCopy];
  v45 = v21;
  v24 = [v21 newFunctionInLibrary:self->_library withDescriptor:functionDescriptor];
  v25 = objc_opt_new();
  v43 = fshNameCopy;
  v44 = nameCopy;
  fshNameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)+(%@)", nameCopy, fshNameCopy];
  [v25 setLabel:fshNameCopy];

  v41 = v23;
  [v25 setVertexFunction:v23];
  [v25 setFragmentFunction:v24];
  v27 = 0;
  v28 = &blend0Copy;
  v29 = 1;
  do
  {
    v30 = v29;
    if (!format0)
    {
      goto LABEL_15;
    }

    colorAttachments = [v25 colorAttachments];
    v32 = [colorAttachments objectAtIndexedSubscript:v27];

    [v32 setPixelFormat:format0];
    [v32 setBlendingEnabled:0];
    v33 = *v28;
    if (*v28 > 2)
    {
      if (v33 != 3)
      {
        if (v33 == 4)
        {
          [v32 setWriteMask:0];
        }

        goto LABEL_14;
      }

      [v32 setBlendingEnabled:1];
      [v32 setRgbBlendOperation:2];
      v34 = v32;
      v35 = 2;
      goto LABEL_12;
    }

    if (v33 == 1)
    {
      [v32 setBlendingEnabled:1];
      [v32 setRgbBlendOperation:0];
      [v32 setAlphaBlendOperation:0];
      [v32 setSourceRGBBlendFactor:4];
      [v32 setSourceAlphaBlendFactor:4];
      [v32 setDestinationRGBBlendFactor:5];
      v36 = v32;
      v37 = 5;
LABEL_13:
      [v36 setDestinationAlphaBlendFactor:v37];
      goto LABEL_14;
    }

    if (v33 == 2)
    {
      [v32 setBlendingEnabled:1];
      [v32 setRgbBlendOperation:0];
      v34 = v32;
      v35 = 0;
LABEL_12:
      [v34 setAlphaBlendOperation:v35];
      [v32 setSourceRGBBlendFactor:1];
      [v32 setSourceAlphaBlendFactor:1];
      [v32 setDestinationRGBBlendFactor:1];
      v36 = v32;
      v37 = 1;
      goto LABEL_13;
    }

LABEL_14:

LABEL_15:
    v29 = 0;
    v28 = &blend1Copy;
    format0 = format1;
    v27 = 1;
  }

  while ((v30 & 1) != 0);
  v38 = [v45 newRenderPipelineStateForDevice:self->_device withDescriptor:v25];
  if (!v38)
  {
    [NUNICalliopeResourceManager _generatePipelineVshName:fshName:config:blend0:blend1:pixelFormat0:pixelFormat1:];
  }

  v39 = v38;

  return v39;
}

- (id)_generatePipelineTshName:(id)name pixelFormat0:(unint64_t)format0 pixelFormat1:(unint64_t)format1
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = objc_opt_new();
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", nameCopy];
  [v9 setLabel:nameCopy];

  v11 = [(MTLLibrary *)self->_library newFunctionWithName:nameCopy];
  [v9 setTileFunction:v11];

  [v9 setThreadgroupSizeMatchesTileSize:0];
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v13;
    if (format0)
    {
      colorAttachments = [v9 colorAttachments];
      v16 = [colorAttachments objectAtIndexedSubscript:v12];

      [v16 setPixelFormat:format0];
    }

    v13 = 0;
    format0 = format1;
    v12 = 1;
  }

  while ((v14 & 1) != 0);
  device = self->_device;
  v23 = 0;
  v18 = [(MTLDevice *)device newRenderPipelineStateWithTileDescriptor:v9 options:0 reflection:0 error:&v23];
  v19 = v23;
  if (!v18)
  {
    v20 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = self->_device;
      *buf = 138412802;
      v25 = nameCopy;
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v19;
      _os_log_error_impl(&dword_25B6D4000, v20, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: Metal compilation failure Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }

  return v18;
}

- (id)_generatePipelineCshName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_opt_new();
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", nameCopy];
  [v5 setLabel:nameCopy];

  v7 = [(MTLLibrary *)self->_library newFunctionWithName:nameCopy];
  [v5 setComputeFunction:v7];

  device = self->_device;
  v14 = 0;
  v9 = [(MTLDevice *)device newComputePipelineStateWithDescriptor:v5 options:0 reflection:0 error:&v14];
  v10 = v14;
  if (!v9)
  {
    v11 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_device;
      *buf = 138412802;
      v16 = nameCopy;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_25B6D4000, v11, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: Metal compilation failure Shader=%@ Device=%@ Error=%@", buf, 0x20u);
    }
  }

  return v9;
}

- (void)_handleCloudCoverTextureExpired
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NUNICalliopeResourceManager__handleCloudCoverTextureExpired__block_invoke;
  block[3] = &unk_27995F980;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __62__NUNICalliopeResourceManager__handleCloudCoverTextureExpired__block_invoke(uint64_t a1)
{
  v2 = NUNILoggingObjectForDomain(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B6D4000, v2, OS_LOG_TYPE_DEFAULT, "Received cloud cover texture expired update. It will purge current textures.", v4, 2u);
  }

  return [*(a1 + 32) purgeAllCloudCoverTextures];
}

- (void)purgeAllCloudCoverTextures
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allCloudLevelFileNames = [(AegirCloudCoverService *)self->_cloudsService allCloudLevelFileNames];
  v3 = [allCloudLevelFileNames countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allCloudLevelFileNames);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        mEMORY[0x277CFA7B0] = [MEMORY[0x277CFA7B0] sharedInstance];
        [mEMORY[0x277CFA7B0] purge:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [allCloudLevelFileNames countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_deferredCloudDataFetchIfNeeded
{
  canFetchData = [(AegirCloudCoverService *)self->_cloudsService canFetchData];
  v4 = NUNILoggingObjectForDomain(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (canFetchData)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B6D4000, v4, OS_LOG_TYPE_DEFAULT, "Will Fetch cloud cover data.", buf, 2u);
    }

    cloudsService = self->_cloudsService;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__NUNICalliopeResourceManager__deferredCloudDataFetchIfNeeded__block_invoke;
    v7[3] = &unk_27995F9A8;
    v7[4] = self;
    [(AegirCloudCoverService *)cloudsService retrieveCloudTextureURLsWithNotifyOn:MEMORY[0x277D85CD0] completionHandler:v7];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B6D4000, v4, OS_LOG_TYPE_DEFAULT, "Will not fetch cloud cover data.", buf, 2u);
    }
  }
}

- (id)_provideEarthCloudsAtlasBacking:(id)backing
{
  backingCopy = backing;
  [(NUNICalliopeResourceManager *)self _deferredCloudDataFetchIfNeeded];
  v5 = [(AegirCloudCoverService *)self->_cloudsService currentURLForCloudLevelWith:backingCopy];
  v6 = MEMORY[0x277CFA750];
  path = [v5 path];
  v8 = [v6 atlasBackingWithArt:path uuid:backingCopy];

  return v8;
}

- (id)provideAtlasBacking:(id)backing
{
  v18 = *MEMORY[0x277D85DE8];
  backingCopy = backing;
  v5 = +[_TtC12NanoUniverse22AegirCloudCoverService cloudLevelPrefix];
  v6 = [backingCopy hasPrefix:v5];

  if (v6)
  {
    v8 = [(NUNICalliopeResourceManager *)self _provideEarthCloudsAtlasBacking:backingCopy];
  }

  else
  {
    v9 = NUNIBundle(v7);
    v10 = [v9 pathForResource:backingCopy ofType:@"art"];

    v11 = NUNILoggingObjectForDomain(0);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = backingCopy;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_25B6D4000, v12, OS_LOG_TYPE_DEFAULT, "providing artwork for %@ at %@", &v14, 0x16u);
      }

      v8 = [MEMORY[0x277CFA750] atlasBackingWithArt:v10 uuid:backingCopy];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(NUNICalliopeResourceManager *)backingCopy provideAtlasBacking:v12];
      }

      v8 = 0;
    }
  }

  return v8;
}

+ (void)sharedInstanceWithDisplayPixelFormat:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(__sharedInstance_0 + 32);
  v3[0] = 67109376;
  v3[1] = v2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: DisplayPixelFormat %d != %d", v3, 0xEu);
}

- (void)provideAtlasBacking:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25B6D4000, a2, OS_LOG_TYPE_ERROR, "CalliopeResourceManager: missing artwork for %@", &v2, 0xCu);
}

@end