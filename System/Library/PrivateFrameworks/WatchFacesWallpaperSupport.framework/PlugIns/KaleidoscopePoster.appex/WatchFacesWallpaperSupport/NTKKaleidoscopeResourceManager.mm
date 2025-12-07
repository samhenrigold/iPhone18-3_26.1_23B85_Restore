@interface NTKKaleidoscopeResourceManager
+ (id)sharedInstanceWithPixelFormat:(unint64_t)format;
+ (void)_deallocInstance:(id)instance;
- (NTKKaleidoscopeResourceManager)initWithPixelFormat:(unint64_t)format;
- (id)_pipelineStateForShaderType:(unint64_t)type vertexName:(id)name fragmentName:(id)fragmentName inLibrary:(id)library archive:(id)archive allowsBlending:(BOOL)blending;
- (void)_asyncDeallocInstance;
- (void)_loadMTLBufferData;
- (void)_loadPrograms;
- (void)_queue_setupPipelineForType:(unint64_t)type vertexName:(id)name fragmentName:(id)fragmentName inLibrary:(id)library archive:(id)archive;
- (void)addClient;
- (void)dealloc;
- (void)removeClient;
@end

@implementation NTKKaleidoscopeResourceManager

+ (id)sharedInstanceWithPixelFormat:(unint64_t)format
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_10003C6E0)
  {
    v5 = [[NTKKaleidoscopeResourceManager alloc] initWithPixelFormat:format];
    v6 = qword_10003C6E0;
    qword_10003C6E0 = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = qword_10003C6E0;
  if (*(qword_10003C6E0 + 32) != format)
  {
    sub_1000244E8();
  }

  return v7;
}

+ (void)_deallocInstance:(id)instance
{
  obj = self;
  objc_sync_enter(obj);
  v3 = qword_10003C6E0;
  qword_10003C6E0 = 0;

  objc_sync_exit(obj);
}

- (NTKKaleidoscopeResourceManager)initWithPixelFormat:(unint64_t)format
{
  v10.receiver = self;
  v10.super_class = NTKKaleidoscopeResourceManager;
  v4 = [(NTKKaleidoscopeResourceManager *)&v10 init];
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    bundle = v4->_bundle;
    v4->_bundle = v5;

    v4->_viewMtlPixelFormat = format;
    v7 = +[CLKUIMetalResourceManager sharedDevice];
    device = v4->_device;
    v4->_device = v7;

    [(NTKKaleidoscopeResourceManager *)v4 _loadMTLBufferData];
    [(NTKKaleidoscopeResourceManager *)v4 _loadPrograms];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKKaleidoscopeResourceManager;
  [(NTKKaleidoscopeResourceManager *)&v2 dealloc];
}

- (void)_asyncDeallocInstance
{
  v2 = +[NSThread isMainThread];
  v3 = objc_opt_class();
  if (v2)
  {

    [v3 _deallocInstance:0];
  }

  else
  {

    [v3 performSelectorOnMainThread:"_deallocInstance:" withObject:? waitUntilDone:?];
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

    [(NTKKaleidoscopeResourceManager *)selfCopy _asyncDeallocInstance];
  }
}

- (void)_loadMTLBufferData
{
  v3 = [(MTLDevice *)self->_device newBufferWithLength:128 options:0];
  contents = [v3 contents];
  *contents->f32 = xmmword_100027E48;
  *contents[2].f32 = unk_100027E58;
  v5 = contents + 5;
  v6 = 17;
  v7 = 6;
  v8 = vdup_n_s32(0x3F866666u);
  do
  {
    v9 = __sincosf_stret((v7 + 10) * 0.5236);
    v5[-1] = vmul_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), v8);
    v10 = __sincosf_stret(v6 * 0.5236);
    *v5 = vmul_f32(__PAIR64__(LODWORD(v10.__sinval), LODWORD(v10.__cosval)), v8);
    v5 += 2;
    ++v6;
    --v7;
  }

  while (v7);
  mtlBuffer = self->_mtlBuffer;
  self->_mtlBuffer = v3;
}

- (id)_pipelineStateForShaderType:(unint64_t)type vertexName:(id)name fragmentName:(id)fragmentName inLibrary:(id)library archive:(id)archive allowsBlending:(BOOL)blending
{
  blendingCopy = blending;
  nameCopy = name;
  fragmentNameCopy = fragmentName;
  libraryCopy = library;
  archiveCopy = archive;
  v18 = @"off";
  if (blendingCopy)
  {
    v18 = @"on";
  }

  v19 = [NSString stringWithFormat:@"%@_blend_%@", *(&off_100034FE0 + type), v18];
  v50 = blendingCopy;
  v20 = objc_opt_new();
  [v20 setConstantValue:&v50 type:53 atIndex:0];
  v21 = +[MTLFunctionDescriptor functionDescriptor];
  v49 = nameCopy;
  [v21 setName:nameCopy];
  [v21 setConstantValues:v20];
  v22 = [archiveCopy newFunctionInLibrary:libraryCopy withDescriptor:v21];
  v48 = fragmentNameCopy;
  [v21 setName:fragmentNameCopy];
  v46 = libraryCopy;
  v23 = [archiveCopy newFunctionInLibrary:libraryCopy withDescriptor:v21];
  v24 = objc_alloc_init(MTLRenderPipelineDescriptor);
  v47 = v19;
  [v24 setLabel:v19];
  v45 = v22;
  [v24 setVertexFunction:v22];
  [v24 setFragmentFunction:v23];
  viewMtlPixelFormat = self->_viewMtlPixelFormat;
  colorAttachments = [v24 colorAttachments];
  v27 = [colorAttachments objectAtIndexedSubscript:0];
  [v27 setPixelFormat:viewMtlPixelFormat];

  if (blendingCopy)
  {
    colorAttachments2 = [v24 colorAttachments];
    v29 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v29 setBlendingEnabled:1];

    colorAttachments3 = [v24 colorAttachments];
    v31 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v31 setRgbBlendOperation:0];

    colorAttachments4 = [v24 colorAttachments];
    v33 = [colorAttachments4 objectAtIndexedSubscript:0];
    [v33 setAlphaBlendOperation:0];

    colorAttachments5 = [v24 colorAttachments];
    v35 = [colorAttachments5 objectAtIndexedSubscript:0];
    [v35 setSourceRGBBlendFactor:4];

    colorAttachments6 = [v24 colorAttachments];
    v37 = [colorAttachments6 objectAtIndexedSubscript:0];
    [v37 setSourceAlphaBlendFactor:4];

    colorAttachments7 = [v24 colorAttachments];
    v39 = [colorAttachments7 objectAtIndexedSubscript:0];
    [v39 setDestinationRGBBlendFactor:5];

    colorAttachments8 = [v24 colorAttachments];
    v41 = [colorAttachments8 objectAtIndexedSubscript:0];
    [v41 setDestinationAlphaBlendFactor:5];
  }

  v42 = [archiveCopy newRenderPipelineStateForDevice:self->_device withDescriptor:v24];
  if (!v42)
  {
    sub_100024514();
  }

  v43 = v42;

  return v43;
}

- (void)_queue_setupPipelineForType:(unint64_t)type vertexName:(id)name fragmentName:(id)fragmentName inLibrary:(id)library archive:(id)archive
{
  archiveCopy = archive;
  libraryCopy = library;
  fragmentNameCopy = fragmentName;
  nameCopy = name;
  v16 = [(NTKKaleidoscopeResourceManager *)self _pipelineStateForShaderType:type vertexName:nameCopy fragmentName:fragmentNameCopy inLibrary:libraryCopy archive:archiveCopy allowsBlending:0];
  v17 = self + 16 * type;
  v18 = *(v17 + 5);
  *(v17 + 5) = v16;

  v19 = [(NTKKaleidoscopeResourceManager *)self _pipelineStateForShaderType:type vertexName:nameCopy fragmentName:fragmentNameCopy inLibrary:libraryCopy archive:archiveCopy allowsBlending:1];

  v20 = *(v17 + 6);
  *(v17 + 6) = v19;
}

- (void)_loadPrograms
{
  device = self->_device;
  if (qword_10003C6F0 != -1)
  {
    sub_100024540();
  }

  v8 = 0;
  v4 = qword_10003C6E8;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:v4 error:&v8];
  v6 = v8;

  v7 = [CLKUIMetalBinaryArchive archiveWithName:@"NTKKaleidoscopeShaders" bundle:self->_bundle device:self->_device];

  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:0 vertexName:@"kal_circle_vert" fragmentName:@"kal_faceted_frag" inLibrary:v5 archive:v7];
  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:1 vertexName:@"kal_circle_vert" fragmentName:@"kal_radial_frag" inLibrary:v5 archive:v7];
  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:2 vertexName:@"kal_circle_vert" fragmentName:@"kal_rosette_frag" inLibrary:v5 archive:v7];
  [(NTKKaleidoscopeResourceManager *)self _queue_setupPipelineForType:3 vertexName:@"kal_fullscreen_vert" fragmentName:@"kal_faceted_fullscreen_frag" inLibrary:v5 archive:v7];
}

@end