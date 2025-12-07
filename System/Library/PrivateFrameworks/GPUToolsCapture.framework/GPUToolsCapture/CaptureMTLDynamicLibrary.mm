@interface CaptureMTLDynamicLibrary
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler captureLibrary:(id)library;
- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureDevice:(id)device captureLibrary:(id)library;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)setRelocations:(id)relocations;
- (void)touch;
@end

@implementation CaptureMTLDynamicLibrary

- (BOOL)serializeToURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDynamicLibrary_serializeToURL_options_error", "Dynamic Libraries", 0, 0);
  LOBYTE(error) = [(MTLDynamicLibrarySPI *)self->_baseObject serializeToURL:lCopy options:options error:error];

  return error;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15675;
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
  traceStream = [(CaptureMTLDynamicLibrary *)self traceStream];
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
  v12.super_class = CaptureMTLDynamicLibrary;
  [(CaptureMTLDynamicLibrary *)&v12 dealloc];
}

- (void)setRelocations:(id)relocations
{
  relocationsCopy = relocations;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLDynamicLibrary_setRelocations", "Relocations", 0, 0);
  [(MTLDynamicLibrarySPI *)self->_baseObject setRelocations:relocationsCopy];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLDynamicLibrarySPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15676;
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
  traceStream = [(CaptureMTLDynamicLibrary *)self traceStream];
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
  v5 = [(MTLDynamicLibrarySPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLDynamicLibrary;
  v3 = [(CaptureMTLDynamicLibrary *)&v7 description];
  v4 = [(MTLDynamicLibrarySPI *)self->_baseObject description];
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

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  v7 = [(MTLDynamicLibrarySPI *)self->_baseObject serializeToURL:lCopy error:error];
  v8 = v23;
  *(v23 + 8) = -15674;
  v9 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v11 = *(*(&v22 + 1) + 24);
    v12 = BYTE10(v24);
    ++BYTE10(v24);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v23 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLDynamicLibrary *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
    if (error)
    {
LABEL_6:
      v15 = *error;
      goto LABEL_9;
    }
  }

  else
  {
    var0 = 0;
    if (error)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_9:
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v18 = strlen([lCopy fileSystemRepresentation]);
    LOBYTE(fileSystemRepresentation) = GTTraceEncoder_storeBytes(&v22, fileSystemRepresentation2, v18 + 1);
  }

  *v10 = var0;
  *(v10 + 1) = v15;
  *(v10 + 4) = v7;
  v10[20] = fileSystemRepresentation;
  *(v10 + 21) = 0;
  v10[23] = 0;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;

  return v7;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler captureLibrary:(id)library
{
  libraryCopy = library;
  objectCopy = object;
  device = [compiler device];
  v11 = [(CaptureMTLDynamicLibrary *)self initWithBaseObject:objectCopy captureDevice:device captureLibrary:libraryCopy];

  return v11;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureCompiler:(id)compiler
{
  objectCopy = object;
  device = [compiler device];
  v8 = [(CaptureMTLDynamicLibrary *)self initWithBaseObject:objectCopy captureDevice:device captureLibrary:0];

  return v8;
}

- (CaptureMTLDynamicLibrary)initWithBaseObject:(id)object captureDevice:(id)device captureLibrary:(id)library
{
  objectCopy = object;
  deviceCopy = device;
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = CaptureMTLDynamicLibrary;
  v12 = [(CaptureMTLDynamicLibrary *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    objc_storeStrong(&v13->_captureLibrary, library);
    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v15 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v15, v13);
  }

  return v13;
}

@end