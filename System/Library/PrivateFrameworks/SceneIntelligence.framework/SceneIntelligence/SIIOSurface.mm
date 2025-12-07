@interface SIIOSurface
+ (unint64_t)getSurfaceIdentifierForPixelBuffer:(__CVBuffer *)buffer;
- (NSString)description;
- (__CVBuffer)createPixelBufferWithAttributes:(id)attributes;
- (e5rt_buffer_object)createE5RTBuffer;
- (e5rt_surface_object)createE5RTSurface;
- (id)debugQuickLookObject;
- (id)initFromE5RTBuffer:(e5rt_buffer_object *)buffer;
- (id)initFromPixelBuffer:(__CVBuffer *)buffer;
- (id)initFromSurface:(__IOSurface *)surface;
- (unint64_t)allocationSize;
- (unint64_t)bytesPerElement;
- (unint64_t)bytesPerElementOfPlane:(unint64_t)plane;
- (unint64_t)bytesPerRow;
- (unint64_t)bytesPerRowOfPlane:(unint64_t)plane;
- (unint64_t)elementHeight;
- (unint64_t)elementHeightOfPlane:(unint64_t)plane;
- (unint64_t)elementWidth;
- (unint64_t)elementWidthOfPlane:(unint64_t)plane;
- (unint64_t)height;
- (unint64_t)heightOfPlane:(unint64_t)plane;
- (unint64_t)offsetOfPlane:(unint64_t)plane;
- (unint64_t)planes;
- (unint64_t)width;
- (unint64_t)widthOfPlane:(unint64_t)plane;
- (unsigned)pixelFormat;
- (void)dealloc;
- (void)getMutableBytesOfPlane:(unint64_t)plane withHandler:(id)handler;
- (void)getMutableBytesWithHandler:(id)handler;
- (void)saveByteToDisk:(id)disk;
@end

@implementation SIIOSurface

- (id)initFromSurface:(__IOSurface *)surface
{
  selfCopy2 = surface;
  if (surface)
  {
    v6.receiver = self;
    v6.super_class = SIIOSurface;
    self = [(SIIOSurface *)&v6 init];
    if (self)
    {
      selfCopy = self;
      [(SIIOSurface *)self setSurface:selfCopy2];
      CFRetain([(SIIOSurface *)selfCopy surface]);
      self = selfCopy;
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (id)initFromE5RTBuffer:(e5rt_buffer_object *)buffer
{
  v17 = *MEMORY[0x277D85DE8];
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v5 = __SceneIntelligenceLogSharedInstance(iosurface);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m", 52);
      *buf = 136381187;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v13 = 1025;
      v14 = 52;
      v15 = 2113;
      v16 = v6;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v8 = __SceneIntelligenceLogSharedInstance(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v13 = 1025;
      v14 = 52;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the internal iosurface from output port. ***", buf, 0x12u);
    }

    selfCopy = 0;
  }

  else
  {
    self = [(SIIOSurface *)self initFromSurface:0];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)initFromPixelBuffer:(__CVBuffer *)buffer
{
  v12 = *MEMORY[0x277D85DE8];
  if (buffer)
  {
    IOSurface = CVPixelBufferGetIOSurface(buffer);
    if (!IOSurface)
    {
      v5 = __SceneIntelligenceLogSharedInstance(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136380931;
        v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
        v10 = 1025;
        v11 = 62;
        _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Error extracting surface from buffer. Was not surface-backed? ***", &v8, 0x12u);
      }
    }

    self = [(SIIOSurface *)self initFromSurface:IOSurface];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (e5rt_buffer_object)createE5RTBuffer
{
  v28 = *MEMORY[0x277D85DE8];
  [(SIIOSurface *)self surface];
  v3 = e5rt_buffer_object_create_from_iosurface();
  if (!v3)
  {
    return 0;
  }

  v4 = __SceneIntelligenceLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m", 77);
    *buf = 136381187;
    v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
    v16 = 1025;
    v17 = 77;
    v18 = 2113;
    v19 = v5;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
  }

  v7 = __SceneIntelligenceLogSharedInstance(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    identifier = [(SIIOSurface *)self identifier];
    width = [(SIIOSurface *)self width];
    height = [(SIIOSurface *)self height];
    bytesPerRow = [(SIIOSurface *)self bytesPerRow];
    v12 = SIPixelFormatToStr([(SIIOSurface *)self pixelFormat]);
    *buf = 136382211;
    v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
    v16 = 1025;
    v17 = 77;
    v18 = 2048;
    v19 = identifier;
    v20 = 2049;
    v21 = width;
    v22 = 2049;
    v23 = height;
    v24 = 2049;
    v25 = bytesPerRow;
    v26 = 2113;
    v27 = v12;
    _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create the e5rt buffer from an existing surface: id=%lld, width=%{private}lu, height=%{private}lu, stride=%{private}lu, format=%{private}@ ***", buf, 0x44u);
  }

  return 0;
}

- (e5rt_surface_object)createE5RTSurface
{
  v28 = *MEMORY[0x277D85DE8];
  [(SIIOSurface *)self surface];
  v3 = e5rt_surface_object_create_from_iosurface();
  if (!v3)
  {
    return 0;
  }

  v4 = __SceneIntelligenceLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m", 91);
    *buf = 136381187;
    v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
    v16 = 1025;
    v17 = 91;
    v18 = 2113;
    v19 = v5;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
  }

  v7 = __SceneIntelligenceLogSharedInstance(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    identifier = [(SIIOSurface *)self identifier];
    width = [(SIIOSurface *)self width];
    height = [(SIIOSurface *)self height];
    bytesPerRow = [(SIIOSurface *)self bytesPerRow];
    v12 = SIPixelFormatToStr([(SIIOSurface *)self pixelFormat]);
    *buf = 136382211;
    v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
    v16 = 1025;
    v17 = 91;
    v18 = 2048;
    v19 = identifier;
    v20 = 2049;
    v21 = width;
    v22 = 2049;
    v23 = height;
    v24 = 2049;
    v25 = bytesPerRow;
    v26 = 2113;
    v27 = v12;
    _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create the e5rt surface from an existing surface: id=%lld, width=%{private}lu, height=%{private}lu, stride=%{private}lu, format=%{private}@ ***", buf, 0x44u);
  }

  return 0;
}

- (unsigned)pixelFormat
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetPixelFormat(surface);
}

- (unint64_t)height
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetHeight(surface);
}

- (unint64_t)width
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetWidth(surface);
}

- (unint64_t)bytesPerRow
{
  if ([(SIIOSurface *)self planes]< 2)
  {
    surface = [(SIIOSurface *)self surface];

    return IOSurfaceGetBytesPerRow(surface);
  }

  else
  {

    return [(SIIOSurface *)self bytesPerRowOfPlane:0];
  }
}

- (unint64_t)allocationSize
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetAllocSize(surface);
}

- (unint64_t)bytesPerElement
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerElement(surface);
}

- (unint64_t)elementWidth
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementWidth(surface);
}

- (unint64_t)elementHeight
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementHeight(surface);
}

- (unint64_t)planes
{
  result = IOSurfaceGetPlaneCount([(SIIOSurface *)self surface]);
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (unint64_t)heightOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetHeightOfPlane(surface, plane);
}

- (unint64_t)widthOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetWidthOfPlane(surface, plane);
}

- (unint64_t)bytesPerRowOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerRowOfPlane(surface, plane);
}

- (unint64_t)offsetOfPlane:(unint64_t)plane
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SIIOSurface_offsetOfPlane___block_invoke;
  v5[3] = &unk_27833C390;
  v5[5] = &v6;
  v5[6] = plane;
  v5[4] = self;
  [(SIIOSurface *)self getMutableBytesWithHandler:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__SIIOSurface_offsetOfPlane___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SIIOSurface_offsetOfPlane___block_invoke_2;
  v5[3] = &unk_27833C500;
  v3 = a1[4];
  v5[4] = a1[5];
  v5[5] = a2;
  return [v3 getMutableBytesOfPlane:v2 withHandler:v5];
}

- (unint64_t)bytesPerElementOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetBytesPerElementOfPlane(surface, plane);
}

- (unint64_t)elementWidthOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementWidthOfPlane(surface, plane);
}

- (unint64_t)elementHeightOfPlane:(unint64_t)plane
{
  surface = [(SIIOSurface *)self surface];

  return IOSurfaceGetElementHeightOfPlane(surface, plane);
}

- (void)getMutableBytesWithHandler:(id)handler
{
  handlerCopy = handler;
  surface = [(SIIOSurface *)self surface];
  CFRetain(surface);
  IOSurfaceLock(surface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  handlerCopy[2](handlerCopy, BaseAddress);

  IOSurfaceUnlock(surface, 0, 0);

  CFRelease(surface);
}

- (void)getMutableBytesOfPlane:(unint64_t)plane withHandler:(id)handler
{
  handlerCopy = handler;
  surface = [(SIIOSurface *)self surface];
  CFRetain(surface);
  IOSurfaceLock(surface, 0, 0);
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(surface, plane);
  handlerCopy[2](handlerCopy, BaseAddressOfPlane);

  IOSurfaceUnlock(surface, 0, 0);

  CFRelease(surface);
}

- (__CVBuffer)createPixelBufferWithAttributes:(id)attributes
{
  v17 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  attributesCopy = attributes;
  v6 = CVPixelBufferCreateWithIOSurface(v4, [(SIIOSurface *)self surface], attributesCopy, &pixelBufferOut);

  if (v6)
  {
    v8 = __SceneIntelligenceLogSharedInstance(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurface.m";
      v13 = 1025;
      v14 = 208;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** failed to create CVPixelBuffer from surface. Error: %d ***", buf, 0x18u);
    }
  }

  return pixelBufferOut;
}

+ (unint64_t)getSurfaceIdentifierForPixelBuffer:(__CVBuffer *)buffer
{
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (!IOSurface)
  {
    +[SIIOSurface getSurfaceIdentifierForPixelBuffer:];
  }

  return IOSurfaceGetID(IOSurface);
}

- (NSString)description
{
  propertiesDictionary = [(SIIOSurface *)self propertiesDictionary];
  v3 = [propertiesDictionary description];

  return v3;
}

- (id)debugQuickLookObject
{
  v3 = SISurfaceGetDebugQuickLookObject(self, 0);
  if (!v3)
  {
    v3 = [MEMORY[0x277CBF758] imageWithIOSurface:-[SIIOSurface ioSurface](self options:{"ioSurface"), 0}];
  }

  return v3;
}

- (void)dealloc
{
  if ([(SIIOSurface *)self surface])
  {
    CFRelease([(SIIOSurface *)self surface]);
  }

  v3.receiver = self;
  v3.super_class = SIIOSurface;
  [(SIIOSurface *)&v3 dealloc];
}

- (void)saveByteToDisk:(id)disk
{
  diskCopy = disk;
  copyData = [(SIIOSurface *)self copyData];
  [copyData writeToFile:diskCopy atomically:1];
}

@end