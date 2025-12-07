@interface CaptureMTLBinaryArchive
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error;
- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)enumerateArchivesFromBackingFile:(id)file;
- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)storeComputePipelineDescriptor:(id)descriptor;
- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeRenderPipelineDescriptor:(id)descriptor;
- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor;
- (CaptureMTLBinaryArchive)initWithBaseObject:(id)object captureDevice:(id)device;
- (MTLPipelineCollection)pipelineCollection;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)touch;
@end

@implementation CaptureMTLBinaryArchive

- (BOOL)storeTileRenderPipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeTileRenderPipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeTileRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeRenderPipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeRenderPipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeMeshRenderPipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeMeshRenderPipelineDescriptor", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeMeshRenderPipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)storeComputePipelineDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_storeComputePipelineDescriptor", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v6 = unwrapMTLComputePipelineDescriptor(descriptorCopy);

  LOBYTE(baseObject) = [(MTLBinaryArchiveSPI *)baseObject storeComputePipelineDescriptor:v6];
  return baseObject;
}

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_serializeToURL_options_error", "Binary Archives SPI", 0, 0);
  LOBYTE(error) = [(MTLBinaryArchiveSPI *)self->_baseObject serializeToURL:lCopy options:options error:error];

  return error;
}

- (MTLPipelineCollection)pipelineCollection
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_pipelineCollection", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLBinaryArchiveSPI *)baseObject pipelineCollection];
}

- (BOOL)enumerateArchivesFromPipelineCollection:(id)collection
{
  collectionCopy = collection;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_enumerateArchivesFromPipelineCollection", "Binary Linking", 0, 0);
  LOBYTE(self) = [(MTLBinaryArchiveSPI *)self->_baseObject enumerateArchivesFromPipelineCollection:collectionCopy];

  return self;
}

- (BOOL)enumerateArchivesFromBackingFile:(id)file
{
  fileCopy = file;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_enumerateArchivesFromBackingFile", "Binary Linking", 0, 0);
  LOBYTE(self) = [(MTLBinaryArchiveSPI *)self->_baseObject enumerateArchivesFromBackingFile:fileCopy];

  return self;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15685;
  v4 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v6 = *(*(&v13 + 1) + 24);
    v7 = BYTE10(v15);
    ++BYTE10(v15);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v14 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v12.receiver = self;
  v12.super_class = CaptureMTLBinaryArchive;
  [(CaptureMTLBinaryArchive *)&v12 dealloc];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addTileRenderPipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  v9 = unwrapMTLTileRenderPipelineDescriptor(descriptorCopy);
  v10 = [(MTLBinaryArchiveSPI *)baseObject addTileRenderPipelineFunctionsWithDescriptor:v9 error:error, v23];

  v11 = v24;
  *(v24 + 8) = -15664;
  v12 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v14 = *(*(&v23 + 1) + 24);
    v15 = BYTE10(v25);
    ++BYTE10(v25);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v24 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = *error;
LABEL_9:
  v19 = SaveMTLTileRenderPipelineDescriptor(&v23, descriptorCopy);

  *v13 = var0;
  *(v13 + 1) = v18;
  *(v13 + 4) = v10;
  v13[20] = v19;
  *(v13 + 21) = 0;
  v13[23] = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
  return v10;
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addRenderPipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  v9 = unwrapMTLRenderPipelineDescriptor(descriptorCopy);
  v10 = [(MTLBinaryArchiveSPI *)baseObject addRenderPipelineFunctionsWithDescriptor:v9 error:error, v23];

  v11 = v24;
  *(v24 + 8) = -15665;
  v12 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v14 = *(*(&v23 + 1) + 24);
    v15 = BYTE10(v25);
    ++BYTE10(v25);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v24 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = *error;
LABEL_9:
  v19 = SaveMTLRenderPipelineDescriptor(&v23, descriptorCopy);

  *v13 = var0;
  *(v13 + 1) = v18;
  *(v13 + 4) = v10;
  v13[20] = v19;
  *(v13 + 21) = 0;
  v13[23] = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
  return v10;
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_options_error", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addMeshRenderPipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_error", "Mesh Shaders with Binary Archives", 0, 0);
  baseObject = self->_baseObject;
  v8 = unwrapMTLMeshRenderPipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addMeshRenderPipelineFunctionsWithDescriptor:v8 error:error];
  return error;
}

- (BOOL)addLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  v9 = unwrapMTLStitchedLibraryDescriptor(descriptorCopy);
  v10 = [(MTLBinaryArchiveSPI *)baseObject addLibraryWithDescriptor:v9 error:error, v23];

  v11 = v24;
  *(v24 + 8) = -15426;
  v12 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v14 = *(*(&v23 + 1) + 24);
    v15 = BYTE10(v25);
    ++BYTE10(v25);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v24 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = *error;
LABEL_9:
  v19 = SaveMTLStitchedLibraryDescriptor(&v23, descriptorCopy);

  *v13 = var0;
  *(v13 + 1) = v18;
  *(v13 + 4) = v10;
  v13[20] = v19;
  *(v13 + 21) = 0;
  v13[23] = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
  return v10;
}

- (BOOL)addFunctionWithDescriptor:(id)descriptor library:(id)library error:(id *)error
{
  libraryCopy = library;
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addFunctionWithDescriptor_library_error", "Binary Linking", 0, 0);
  baseObject = self->_baseObject;
  v11 = unwrapMTLFunctionDescriptor(descriptorCopy);

  baseObject = [libraryCopy baseObject];

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addFunctionWithDescriptor:v11 library:baseObject error:error];
  return error;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor options:(unint64_t)options error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_options_error", "Binary Archives SPI", 0, 0);
  baseObject = self->_baseObject;
  v10 = unwrapMTLComputePipelineDescriptor(descriptorCopy);

  LOBYTE(error) = [(MTLBinaryArchiveSPI *)baseObject addComputePipelineFunctionsWithDescriptor:v10 options:options error:error];
  return error;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)descriptor error:(id *)error
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  v9 = unwrapMTLComputePipelineDescriptor(descriptorCopy);
  v10 = [(MTLBinaryArchiveSPI *)baseObject addComputePipelineFunctionsWithDescriptor:v9 error:error, v23];

  v11 = v24;
  *(v24 + 8) = -15666;
  v12 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v14 = *(*(&v23 + 1) + 24);
    v15 = BYTE10(v25);
    ++BYTE10(v25);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v24 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!error)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = *error;
LABEL_9:
  v19 = SaveMTLComputePipelineDescriptor(&v23, descriptorCopy);

  *v13 = var0;
  *(v13 + 1) = v18;
  *(v13 + 4) = v10;
  v13[20] = v19;
  *(v13 + 21) = 0;
  v13[23] = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
  return v10;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLBinaryArchiveSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15668;
  v6 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v8 = *(*(&v17 + 1) + 24);
    v9 = BYTE10(v19);
    ++BYTE10(v19);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v18 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLBinaryArchive *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [labelCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [labelCopy UTF8String];
    v14 = strlen([labelCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v17, uTF8String2, v14 + 1);
  }

  *v7 = var0;
  v7[8] = uTF8String;
  *(v7 + 9) = 0;
  *(v7 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLBinaryArchiveSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTLBinaryArchive;
  v3 = [(CaptureMTLBinaryArchive *)&v7 description];
  v4 = [(MTLBinaryArchiveSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (CaptureMTLBinaryArchive)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLBinaryArchive;
  v9 = [(CaptureMTLBinaryArchive *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);
  }

  return v10;
}

@end