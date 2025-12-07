@interface DYMTLFunctionPlayer
- (DYMTLFunctionPlayer)initWithCaptureStore:(id)store;
- (const)computeBytesForKey:(unint64_t)key;
- (const)fragmentBytesForKey:(unint64_t)key;
- (const)tileBytesForKey:(unint64_t)key;
- (const)vertexBytesForKey:(unint64_t)key;
- (id).cxx_construct;
- (id)_createPrivateBufferForFunctionWithDevice:(id)device bytes:(char *)bytes length:(unint64_t)length resourceOptions:(unint64_t)options;
- (id)_getDeviceWithName:(id)name;
- (id)commandQueue;
- (id)deviceForID:(unint64_t)d withDeviceName:(id)name;
- (id)objectForKey:(unint64_t)key;
- (unint64_t)keyForOriginalObject:(id)object;
- (unint64_t)keyForOriginalObject:(id)object inverseObjectMap:(void *)map;
- (void)_restoreTexture:(unint64_t)texture commandBuffer:(unint64_t)buffer argumentOffset:(unint64_t)offset;
- (void)_saveBytes;
- (void)dealloc;
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)setObject:(id)object forKey:(unint64_t)key;
@end

@implementation DYMTLFunctionPlayer

- (id)commandQueue
{
  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    device = [(DYMTLFunctionPlayer *)self device];
    newCommandQueue = [device newCommandQueue];
    v6 = self->_commandQueue;
    self->_commandQueue = newCommandQueue;

    commandQueue = self->_commandQueue;
  }

  return commandQueue;
}

- (DYMTLFunctionPlayer)initWithCaptureStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = DYMTLFunctionPlayer;
  v5 = [(DYFunctionPlayer *)&v14 initWithCaptureStore:storeCopy];
  v6 = v5;
  if (v5)
  {
    v13 = 0;
    v15 = &v13;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v5->_objectMap.__table_.__bucket_list_.__ptr_, &v13, &std::piecewise_construct, &v15);
    v8 = v7[3];
    v7[3] = 0;

    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_vertexBytesDataMap);
    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_fragmentBytesDataMap);
    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_tileBytesDataMap);
    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_computeBytesDataMap);
    v9 = [[DYMTLIndirectArgumentBufferManager alloc] initWithFunctionPlayer:v6];
    [(DYMTLFunctionPlayer *)v6 setIndirectArgumentManager:v9];

    v10 = [[DYMTLIndirectCommandBufferManager alloc] initWithFunctionPlayer:v6];
    [(DYMTLFunctionPlayer *)v6 setIndirectCommandManager:v10];

    v11 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(MTLCommandQueueSPI *)self->_commandQueue finish];
  commandQueue = self->_commandQueue;
  self->_commandQueue = 0;

  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_vertexBytesDataMap);
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_fragmentBytesDataMap);
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_tileBytesDataMap);
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_computeBytesDataMap);
  v4.receiver = self;
  v4.super_class = DYMTLFunctionPlayer;
  [(DYFunctionPlayer *)&v4 dealloc];
}

- (id)_getDeviceWithName:(id)name
{
  v3 = MTLCreateSystemDefaultDevice();

  return v3;
}

- (id)deviceForID:(unint64_t)d withDeviceName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v6)
  {
    v7 = v6[3];
  }

  else
  {
    device = [(DYMTLFunctionPlayer *)self device];

    if (device)
    {
      v7 = 0;
    }

    else
    {
      v9 = [(DYMTLFunctionPlayer *)self _getDeviceWithName:nameCopy];
      [(DYMTLFunctionPlayer *)self setDevice:v9];
      v15 = dCopy;
      v10 = v9;
      v16 = v10;
      v11 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,objc_object  {objcproto9MTLDevice}* {__strong}>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v15, &v15);
      v13 = v12;

      if (v13)
      {
        v7 = v11[3];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)setObject:(id)object forKey:(unint64_t)key
{
  objectCopy = object;
  keyCopy = key;
  v10 = &keyCopy;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &keyCopy, &std::piecewise_construct, &v10);
  v8 = v7[3];
  v7[3] = objectCopy;
}

- (id)objectForKey:(unint64_t)key
{
  keyCopy = key;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (unint64_t)keyForOriginalObject:(id)object
{
  objectCopy = object;
  p_first_node = &self->_objectMap.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    next = p_first_node[2].__next_;
    v7 = p_first_node[3].__next_;
    v8 = [v7 isEqual:objectCopy];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  next = 0;
LABEL_6:

  return next;
}

- (unint64_t)keyForOriginalObject:(id)object inverseObjectMap:(void *)map
{
  objectCopy = object;
  v11 = objectCopy;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(map, &v11);
  if (v7)
  {
    v8 = v7[3];
  }

  else
  {
    v8 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:objectCopy];
    v10 = objectCopy;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(map, &v10, &std::piecewise_construct, &v11)[3] = v8;
  }

  return v8;
}

- (const)vertexBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_vertexBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (const)fragmentBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_fragmentBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (const)tileBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_tileBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (const)computeBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_computeBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (void)_restoreTexture:(unint64_t)texture commandBuffer:(unint64_t)buffer argumentOffset:(unint64_t)offset
{
  v6 = [(DYMTLFunctionPlayer *)self device:texture];
  commandQueue = [(DYMTLFunctionPlayer *)self commandQueue];
  *&v36 = *(&self->super.super.isa + *MEMORY[0x277D0AFA0]) + 16;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v36, &std::piecewise_construct, &v36)[3];
  v9 = self + *MEMORY[0x277D0AF68];
  v10 = **(v9 + 3);
  v11 = *(v9 + 1);
  v12 = **(v9 + 2);
  memset(v43, 0, 48);
  GPUTools::MTL::MakeMTLRegion(v43, *v11);
  Data = DYHarvesterGetData();
  v31 = **(v9 + 6);
  v32 = **(v9 + 5);
  [v8 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v14 = WORD4(v36) & 0x2000;
  if (-[DYMTLFunctionPlayer _isCPUAccessibleStorageMode:](self, "_isCPUAccessibleStorageMode:", [v8 storageMode]))
  {
    isDrawable = [v8 isDrawable];
    v16 = v14 ? 1 : isDrawable;
    if ((v16 & 1) == 0 && !-[DYMTLFunctionPlayer _isDepthStencilFormat:](self, "_isDepthStencilFormat:", [v8 pixelFormat]))
    {
      v36 = v43[0];
      v37 = v43[1];
      v38 = v43[2];
      [v8 replaceRegion:&v36 mipmapLevel:v12 slice:v10 withBytes:Data bytesPerRow:v32 bytesPerImage:v31];
      [(DYFunctionPlayer *)self releaseDataForArgument:4];
      goto LABEL_22;
    }
  }

  commandQueue2 = [(DYMTLFunctionPlayer *)self commandQueue];
  AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v42, commandQueue2);

  commandBuffer = [commandQueue commandBuffer];
  v29 = v12;
  v30 = v10;
  DYHarvesterGetMetadata();
  v28 = v14;
  DataSize = DYHarvesterGetDataSize();
  v20 = self + *MEMORY[0x277D0AF70];
  if (*(v20 + 12) != *(v20 + 13))
  {
    v21 = ~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + **(v9 + 7));
    if (v21)
    {
      v27 = commandQueue;
      v22 = **(v9 + 4);
      Offset = DYHarvesterGetOffset();
      *&v36 = 0;
      *(&v36 + 1) = &v36;
      *&v37 = 0x4812000000;
      *(&v37 + 1) = __Block_byref_object_copy_;
      *&v38 = __Block_byref_object_dispose_;
      *(&v38 + 1) = "";
      v40 = 0;
      v41 = 0;
      __p = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *(v20 + 12), *(v20 + 13), (*(v20 + 13) - *(v20 + 12)) >> 3);
      *(v20 + 13) = *(v20 + 12);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __68__DYMTLFunctionPlayer__restoreTexture_commandBuffer_argumentOffset___block_invoke;
      v35[3] = &unk_27930F370;
      v35[4] = self;
      v35[5] = &v36;
      v24 = [v6 newBufferWithBytesNoCopy:v22 length:v21 options:0 deallocator:v35];
      _Block_object_dispose(&v36, 8);
      commandQueue = v27;
      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        if (!commandBuffer)
        {
          goto LABEL_21;
        }

LABEL_15:
        if (v24 && v8)
        {
          [commandBuffer setLabel:*MEMORY[0x277D0B020]];
          blitCommandEncoder = [commandBuffer blitCommandEncoder];
          if (-[DYMTLFunctionPlayer _isDepthStencilFormat:](self, "_isDepthStencilFormat:", [v8 pixelFormat]))
          {
            *&v37 = *(&v43[2] + 1);
            v36 = *(&v43[1] + 8);
            v33 = v43[0];
            v34 = *&v43[1];
            [blitCommandEncoder copyFromBuffer:v24 sourceOffset:Offset sourceBytesPerRow:4 * (v32 / 5) sourceBytesPerImage:4 * (v31 / 5) sourceSize:&v36 toTexture:v8 destinationSlice:v30 destinationLevel:v29 destinationOrigin:&v33 options:1];
            v36 = *(&v43[1] + 8);
            *&v37 = *(&v43[2] + 1);
            v33 = v43[0];
            v34 = *&v43[1];
            [blitCommandEncoder copyFromBuffer:v24 sourceOffset:Offset + 4 * (v31 / 5) sourceBytesPerRow:v32 / 5 sourceBytesPerImage:v31 / 5 sourceSize:&v36 toTexture:v8 destinationSlice:v30 destinationLevel:v29 destinationOrigin:&v33 options:2];
          }

          else
          {
            v36 = *(&v43[1] + 8);
            *&v37 = *(&v43[2] + 1);
            v33 = v43[0];
            v34 = *&v43[1];
            [blitCommandEncoder copyFromBuffer:v24 sourceOffset:Offset sourceBytesPerRow:v32 sourceBytesPerImage:v31 sourceSize:&v36 toTexture:v8 destinationSlice:v30 destinationLevel:v29 destinationOrigin:&v33 options:v28 >> 11];
          }

          [blitCommandEncoder endEncoding];
          [commandBuffer commit];
        }

        goto LABEL_21;
      }
    }
  }

  v25 = [v6 newBufferWithBytes:Data length:DataSize options:0];
  [(DYFunctionPlayer *)self releaseDataForArgument:4];
  Offset = 0;
  v24 = v25;
  if (commandBuffer)
  {
    goto LABEL_15;
  }

LABEL_21:

  AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v42);
LABEL_22:
}

void *__68__DYMTLFunctionPlayer__restoreTexture_commandBuffer_argumentOffset___block_invoke(void *result)
{
  v1 = *(*(result[5] + 8) + 48);
  if (*(*(result[5] + 8) + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = [v2[4] releaseDataForPosition:*(v1 + 8 * v3++)];
      v1 = *(*(v2[5] + 8) + 48);
    }

    while (v3 < (*(*(v2[5] + 8) + 56) - v1) >> 3);
  }

  return result;
}

- (void)executePlatformFunction
{
  [(DYFunctionPlayer *)self processArguments];
  v4 = *MEMORY[0x277D0AFA0];
  v5 = *(&self->super.super.isa + v4);
  v6 = *v5;
  if (*v5 > -6144)
  {
    v7 = v6 + 6143;
    v8 = v7 > 0x30;
    v9 = (1 << v7) & 0x1FFFFFFF77FFFLL;
    if (!v8 && v9 != 0)
    {

      DispatchMPSMethod();
      return;
    }

LABEL_55:
    v117.receiver = self;
    v117.super_class = DYMTLFunctionPlayer;
    [(DYFunctionPlayer *)&v117 executePlatformFunction];
    return;
  }

  if (v6 > -10221)
  {
    if (v6 > -10215)
    {
      if ((v6 + 10201) < 2)
      {
        return;
      }

      if (v6 == -10214)
      {
        v71 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
        v72 = *(v5 + 16);
        indirectCommandManager = self->_indirectCommandManager;

        [(DYMTLIndirectCommandBufferManager *)indirectCommandManager addComputePipelineStateUniqueIdentifier:v71 forObjectId:v72];
        return;
      }

      if (v6 != -10213)
      {
        goto LABEL_55;
      }

      v43 = (self + *MEMORY[0x277D0AF68]);
      *&v121 = *v43[1];
      *v127 = &v121;
      commandQueue3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v121, &std::piecewise_construct, v127)[3];
      v44 = *v43[2];
      commandQueue = [(DYMTLFunctionPlayer *)self commandQueue];
      AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v126, commandQueue);

      commandQueue2 = [(DYMTLFunctionPlayer *)self commandQueue];
      commandBuffer = [commandQueue2 commandBuffer];
      [commandBuffer setLabel:*MEMORY[0x277D0B020]];
      resourceStateCommandEncoder = [commandBuffer resourceStateCommandEncoder];
      v124 = 0uLL;
      v125 = 0;
      device = [(DYMTLFunctionPlayer *)self device];
      [commandQueue3 textureType];
      [commandQueue3 pixelFormat];
      [commandQueue3 sampleCount];
      if (device)
      {
        objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_(device);
      }

      else
      {
        v124 = 0uLL;
        v125 = 0;
      }

      if (v44 == 2)
      {
        for (i = 0; i < [commandQueue3 arrayLength]; ++i)
        {
          for (j = 0; j <= [commandQueue3 firstMipmapInTail]; ++j)
          {
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v93 = [commandQueue3 width] >> j;
            if (v93 <= 1)
            {
              v93 = 1;
            }

            *(&v122 + 1) = v93;
            v94 = [commandQueue3 height] >> j;
            if (v94 <= 1)
            {
              v94 = 1;
            }

            *&v123 = v94;
            v95 = [commandQueue3 depth] >> j;
            if (v95 <= 1)
            {
              v95 = 1;
            }

            *(&v123 + 1) = v95;
            device = self->_device;
            v118 = v124;
            *&v119 = v125;
            [(MTLDevice *)device convertSparsePixelRegions:&v121 toTileRegions:v127 withTileSize:&v118 alignmentMode:0 numRegions:1];
            v118 = *v127;
            v119 = *&v127[16];
            v120 = *&v127[32];
            [resourceStateCommandEncoder updateTextureMapping:commandQueue3 mode:1 region:&v118 mipLevel:j slice:i];
          }
        }
      }

      else
      {
        v122 = 0u;
        v123 = 0u;
        v121 = 0u;
        *&v97 = GPUTools::MTL::MakeMTLRegion(&v121, *v43[3]).n128_u64[0];
        v98 = *v43[4];
        v99 = *v43[5];
        device2 = [(DYMTLFunctionPlayer *)self device];
        v118 = v124;
        *&v119 = v125;
        [device2 convertSparsePixelRegions:&v121 toTileRegions:v127 withTileSize:&v118 alignmentMode:0 numRegions:1];

        v118 = *v127;
        v119 = *&v127[16];
        v120 = *&v127[32];
        [resourceStateCommandEncoder updateTextureMapping:commandQueue3 mode:v44 region:&v118 mipLevel:v98 slice:v99];
      }

      [resourceStateCommandEncoder endEncoding];
      [commandBuffer commit];

      AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v126);
    }

    else
    {
      switch(v6)
      {
        case -10220:
          v56 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
          v57 = *(v5 + 16);
          v58 = self->_indirectCommandManager;

          [(DYMTLIndirectCommandBufferManager *)v58 addRenderPipelineStateUniqueIdentifier:v56 forObjectId:v57];
          return;
        case -10219:
          v53 = self->_indirectCommandManager;
          *v127 = v5 + 16;
          v54 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16), &std::piecewise_construct, v127)[3];
          v55 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
          commandQueue3 = [(DYMTLFunctionPlayer *)self commandQueue];
          [(DYMTLIndirectCommandBufferManager *)v53 restoreBuffer:v54 withData:v55 commandQueue:commandQueue3];
          break;
        case -10216:
          v32 = self->_indirectCommandManager;
          *v127 = v5 + 16;
          v33 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16), &std::piecewise_construct, v127)[3];
          v34 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
          commandQueue3 = [(DYMTLFunctionPlayer *)self commandQueue];
          [(DYMTLIndirectCommandBufferManager *)v32 restoreBuffer:v33 optimizedRanges:v34 commandQueue:commandQueue3];
          break;
        default:
          goto LABEL_55;
      }
    }

LABEL_126:

    return;
  }

  if (v6 <= -10237)
  {
    if (v6 != -10240)
    {
      if (v6 == -10239)
      {
        if (*(v5 + 10) == 2)
        {
          v131 = 0;
          v132 = 0;
          v133 = 0;
          memset(&v127[8], 0, 48);
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          GPUTools::MTL::Utils::MakeDYMTLDeviceDescriptor(**(&self->super._executePlatform + *MEMORY[0x277D0AF68]), v127, v3);
          if (v127[31] >= 0)
          {
            v64 = &v127[8];
          }

          else
          {
            v64 = *&v127[8];
          }

          commandQueue3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v64];
          GPUTools::MTL::DispatchSetCaptureVersion(*v127);
          GPUTools::MTL::Utils::DYMTLDeviceDescriptor::~DYMTLDeviceDescriptor(v127);
          v5 = *(&self->super.super.isa + v4);
        }

        else
        {
          commandQueue3 = 0;
        }

        [(DYMTLFunctionPlayer *)self deviceForID:*(v5 + 16) withDeviceName:commandQueue3];
      }

      else
      {
        if (v6 != -10237)
        {
          goto LABEL_55;
        }

        *v127 = v5 + 16;
        commandQueue3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16), &std::piecewise_construct, v127)[3];
        if (commandQueue3)
        {
          v36 = (self + *MEMORY[0x277D0AF68]);
          [(DYMTLIndirectArgumentBufferManager *)self->_indirectArgumentManager encodeIndirectArgumentsForBuffer:*(*(&self->super.super.isa + v4))[3] data:*v36[1]];
          v37 = *v36[2];
          v38 = *v36[3];
          if ((v37 & 3) != 0 || (*v36[3] & 0xF0) == 0)
          {
            v40 = [commandQueue3 newBufferWithBytes:*v36[1] length:*v36[2] options:0];
            *v127 = (*(&self->super.super.isa + v4))[3];
            v41 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, *v127, &std::piecewise_construct, v127);
            v42 = v41[3];
            v41[3] = v40;

            [(DYFunctionPlayer *)self releaseDataForArgument:1];
          }

          else
          {
            v82 = self + *MEMORY[0x277D0AF70];
            if (*(v82 + 3) == *(v82 + 4))
            {
              v105 = *v36[1];
              device3 = [(DYMTLFunctionPlayer *)self device];
              v107 = [(DYMTLFunctionPlayer *)self _createPrivateBufferForFunctionWithDevice:device3 bytes:v105 length:v37 resourceOptions:v38];

              *v127 = (*(&self->super.super.isa + v4))[3];
              v108 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, *v127, &std::piecewise_construct, v127);
              objc_storeStrong(v108 + 3, v107);
              [(DYFunctionPlayer *)self releaseDataForArgument:1];
            }

            else
            {
              v83 = [commandQueue3 newBufferWithLength:*v36[2] options:*v36[3]];
              if ((~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + v37)) != 0)
              {
                v84 = *(v82 + 3);
                if (*(v82 + 4) - v84 != 8)
                {
                  __assert_rtn("[DYMTLFunctionPlayer executePlatformFunction]", ", 0, "_argumentStorePositions[1].size() == 1"");
                }

                v85 = *v36[1];
                *v127 = 0;
                *&v127[8] = v127;
                *&v127[16] = 0x2020000000;
                *&v127[24] = *v84;
                *(v82 + 4) = v84;
                v126[3] = MEMORY[0x277D85DD0];
                v126[4] = 3221225472;
                v126[5] = __46__DYMTLFunctionPlayer_executePlatformFunction__block_invoke_2;
                v126[6] = &unk_27930F398;
                v126[7] = self;
                v126[8] = v127;
                v86 = [commandQueue3 newBufferWithBytesNoCopy:v85 length:? options:? deallocator:?];
                commandQueue4 = [(DYMTLFunctionPlayer *)self commandQueue];
                AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(&v121, commandQueue4);
                commandBuffer2 = [commandQueue4 commandBuffer];
                v89 = commandBuffer2;
                if (commandBuffer2)
                {
                  [commandBuffer2 setLabel:*MEMORY[0x277D0B020]];
                  blitCommandEncoder = [v89 blitCommandEncoder];
                  [blitCommandEncoder copyFromBuffer:v86 sourceOffset:0 toBuffer:v83 destinationOffset:0 size:v37];
                  [blitCommandEncoder endEncoding];
                  [v89 commit];
                }

                AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(&v121);
                _Block_object_dispose(v127, 8);
              }

              else
              {
                [(DYFunctionPlayer *)self releaseDataForArgument:1];
              }

              *v127 = (*(&self->super.super.isa + v4))[3];
              v114 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, *v127, &std::piecewise_construct, v127);
              v107 = v114[3];
              v114[3] = v83;
            }
          }
        }
      }

      goto LABEL_126;
    }

    v65 = (self + *MEMORY[0x277D0AF68]);
    *&v121 = *v65[1];
    *v127 = &v121;
    commandQueue3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v121, &std::piecewise_construct, v127)[3];
    v66 = *v65[2];
    indirectArgumentManager = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
    [indirectArgumentManager encodeIndirectArgumentsForBuffer:v121 data:v66];

    v68 = *v65[3];
    v69 = *v65[4];
    if ([commandQueue3 storageMode])
    {
      v70 = (v69 & 3) == 0;
    }

    else
    {
      v70 = 0;
    }

    if (!v70)
    {
      memcpy(([commandQueue3 contents] + v68), v66, v69);
      [(DYFunctionPlayer *)self releaseDataForArgument:2];
      goto LABEL_126;
    }

    device4 = [(DYMTLFunctionPlayer *)self device];
    indirectArgumentManager2 = device4;
    if (device4)
    {
      v76 = self + *MEMORY[0x277D0AF70];
      v77 = *(v76 + 6);
      v78 = *(v76 + 7);
      if (v77 == v78)
      {
        v80 = [device4 newBufferWithLength:v69 options:0];
        memcpy([v80 contents], v66, v69);
        [(DYFunctionPlayer *)self releaseDataForArgument:2];
        v81 = 0;
LABEL_119:
        if (v80)
        {
          commandQueue5 = [(DYMTLFunctionPlayer *)self commandQueue];
          AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v127, commandQueue5);

          commandQueue6 = [(DYMTLFunctionPlayer *)self commandQueue];
          commandBuffer3 = [commandQueue6 commandBuffer];
          v112 = commandBuffer3;
          if (commandBuffer3)
          {
            [commandBuffer3 setLabel:*MEMORY[0x277D0B020]];
            blitCommandEncoder2 = [v112 blitCommandEncoder];
            [blitCommandEncoder2 copyFromBuffer:v80 sourceOffset:v81 toBuffer:commandQueue3 destinationOffset:v68 size:v69];
            [blitCommandEncoder2 endEncoding];
            [v112 commit];
          }

          AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v127);
        }

        goto LABEL_76;
      }

      v79 = ~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + v69);
      if (v79)
      {
        *v127 = 0;
        *&v127[8] = v127;
        *&v127[16] = 0x4812000000;
        *&v127[24] = __Block_byref_object_copy_;
        *&v127[32] = __Block_byref_object_dispose_;
        *&v127[40] = "";
        v128 = 0uLL;
        *&v127[48] = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v127[48], v77, v78, (v78 - v77) >> 3);
        *(v76 + 7) = *(v76 + 6);
        v134[0] = MEMORY[0x277D85DD0];
        v134[1] = 3221225472;
        v134[2] = __46__DYMTLFunctionPlayer_executePlatformFunction__block_invoke;
        v134[3] = &unk_27930F370;
        v134[4] = self;
        v134[5] = v127;
        v80 = [indirectArgumentManager2 newBufferWithBytesNoCopy:v66 length:v79 options:0 deallocator:v134];
        _Block_object_dispose(v127, 8);
        if (*&v127[48])
        {
          *&v128 = *&v127[48];
          operator delete(*&v127[48]);
        }

        v81 = v68;
        goto LABEL_119;
      }

      [(DYFunctionPlayer *)self releaseDataForArgument:2];
    }

LABEL_76:

    goto LABEL_126;
  }

  if (v6 > -10230)
  {
    if (v6 != -10229)
    {
      if (v6 != -10228)
      {
        goto LABEL_55;
      }

      v50 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
      v51 = *(v5 + 16);
      v52 = self->_indirectCommandManager;

      [(DYMTLIndirectCommandBufferManager *)v52 addGPUVirtualAddress:v50 forObjectId:v51];
      return;
    }

    if (*(v5 + 10) == 5)
    {
      v60 = *(&self->super._executeGraphicsSEL + *MEMORY[0x277D0AF68]);
      v61 = *v60;
      v62 = *MEMORY[0x277D0AF90];
      *v127 = v60;
      v63 = std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>((&self->super.super.isa + v62), v60, &std::piecewise_construct, v127);
      commandQueue3 = GPUTools::MTL::MakeDispatchDataT(v61, v63[3]);
    }

    else
    {
      commandQueue3 = 0;
    }

    indirectArgumentManager2 = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
    [indirectArgumentManager2 processCommandBuffer:**(&self->super.super.isa + *MEMORY[0x277D0AF68]) functionIndex:*(&self->super.super.isa + *MEMORY[0x277D0AF88]) ancestorMapData:**(&self->super._executePlatform + *MEMORY[0x277D0AF68]) indirectArgumentBuffersData:**(&self->super._executePlatformSEL + *MEMORY[0x277D0AF68]) resourceMapsData:**(&self->super._executeGraphics + *MEMORY[0x277D0AF68]) driverDecodingData:commandQueue3];
    goto LABEL_76;
  }

  if (v6 == -10236)
  {
    v59 = *(v5 + 16);

    [(DYMTLFunctionPlayer *)self _restoreTexture:v59 commandBuffer:0 argumentOffset:0];
  }

  else
  {
    if (v6 != -10232)
    {
      goto LABEL_55;
    }

    v11 = [(DYMTLFunctionPlayer *)self objectForKey:*(v5 + 16)];
    v12 = (self + *MEMORY[0x277D0AF68]);
    v13 = *v12[1];
    v14 = *v12[2];
    v15 = *v12[3];
    v115 = v11;
    isDrawable = [v11 isDrawable];
    Data = DYHarvesterGetData();
    Metadata = DYHarvesterGetMetadata();
    if (Metadata)
    {
      if ((isDrawable & 1) == 0)
      {
        iosurface = [v115 iosurface];
        IOSurfaceLock(iosurface, 0, 0);
        DYIOSurfaceUtilsPlaneCount();
        v20 = *(Metadata + 16);
        if (v20 <= 1)
        {
          v21 = v15;
        }

        else
        {
          v21 = 0;
        }

        if (v20)
        {
          v22 = 0;
          v23 = 0;
          v116 = Metadata + 24;
          do
          {
            HeightOfPlane = IOSurfaceGetHeightOfPlane(iosurface, v23 + v21);
            IOSurfaceGetWidthOfPlane(iosurface, v23 + v21);
            BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(iosurface, v23 + v21);
            BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(iosurface, v23 + v21);
            if (HeightOfPlane)
            {
              v27 = BaseAddressOfPlane;
              v28 = v116 + 48 * v23;
              v31 = *(v28 + 32);
              v30 = (v28 + 32);
              v29 = v31;
              do
              {
                memcpy(v27, (Data + v22), v29);
                v29 = *v30;
                v22 += *v30;
                v27 += BytesPerRowOfPlane;
                --HeightOfPlane;
              }

              while (HeightOfPlane);
            }

            ++v23;
          }

          while (v23 != v20);
        }

        IOSurfaceUnlock(iosurface, 0, 0);
      }
    }

    else if (([v115 pixelFormat] & 0xFFFFFFFFFFFFFFFELL) == 0x226)
    {
      DecodeRGB10A8_2P_XR10(v115, v13);
    }

    else if ((isDrawable & 1) == 0)
    {
      iosurface2 = [v115 iosurface];
      IOSurfaceLock(iosurface2, 0, 0);
      v102 = IOSurfaceGetBaseAddressOfPlane(iosurface2, v15);
      AllocSize = IOSurfaceGetAllocSize(iosurface2);
      if (v14 >= AllocSize)
      {
        v104 = AllocSize;
      }

      else
      {
        v104 = v14;
      }

      memcpy(v102, v13, v104);
      IOSurfaceUnlock(iosurface2, 0, 0);
    }
  }
}

void *__46__DYMTLFunctionPlayer_executePlatformFunction__block_invoke(void *result)
{
  v1 = *(*(result[5] + 8) + 48);
  if (*(*(result[5] + 8) + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = [v2[4] releaseDataForPosition:*(v1 + 8 * v3++)];
      v1 = *(*(v2[5] + 8) + 48);
    }

    while (v3 < (*(*(v2[5] + 8) + 56) - v1) >> 3);
  }

  return result;
}

- (id)_createPrivateBufferForFunctionWithDevice:(id)device bytes:(char *)bytes length:(unint64_t)length resourceOptions:(unint64_t)options
{
  deviceCopy = device;
  v11 = [deviceCopy newBufferWithBytes:bytes length:length options:0];
  v12 = [deviceCopy newBufferWithLength:length options:options];
  commandQueue = [(DYMTLFunctionPlayer *)self commandQueue];
  AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v18, commandQueue);
  commandBuffer = [commandQueue commandBuffer];
  v15 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:*MEMORY[0x277D0B020]];
    blitCommandEncoder = [v15 blitCommandEncoder];
    [blitCommandEncoder copyFromBuffer:v11 sourceOffset:0 toBuffer:v12 destinationOffset:0 size:length];
    [blitCommandEncoder endEncoding];
    [v15 commit];
  }

  AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v18);

  return v12;
}

- (void)_saveBytes
{
  v3 = **(&self->super.super.isa + *MEMORY[0x277D0AFA0]);
  if (v3 > -16224)
  {
    if (v3 == -16223)
    {
      v13 = objc_opt_class();
      v14 = (self + *MEMORY[0x277D0AF68]);
      v6 = [v13 fragmentBytesKeyAtIndex:*v14[3]];
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v14[1] length:*v14[2]];
      v8 = 1448;
    }

    else
    {
      if (v3 != -16143)
      {
        return;
      }

      v9 = objc_opt_class();
      v10 = (self + *MEMORY[0x277D0AF68]);
      v6 = [v9 tileBytesKeyAtIndex:*v10[3]];
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v10[1] length:*v10[2]];
      v8 = 1488;
    }
  }

  else if (v3 == -16227)
  {
    v11 = objc_opt_class();
    v12 = (self + *MEMORY[0x277D0AF68]);
    v6 = [v11 computeBytesKeyAtIndex:*v12[3]];
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v12[1] length:*v12[2]];
    v8 = 1528;
  }

  else
  {
    if (v3 != -16225)
    {
      return;
    }

    v4 = objc_opt_class();
    v5 = (self + *MEMORY[0x277D0AF68]);
    v6 = [v4 vertexBytesKeyAtIndex:*v5[3]];
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v5[1] length:*v5[2]];
    v8 = 1408;
  }

  v17 = v6;
  v18 = &v17;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((&self->super.super.isa + v8), &v17, &std::piecewise_construct, &v18);
  v16 = v15[3];
  v15[3] = v7;
}

- (void)executeGraphicsFunction
{
  if (![(DYFunctionPlayer *)self shouldExecuteGraphicsFunction])
  {
    return;
  }

  [(DYFunctionPlayer *)self processArguments];
  [(DYMTLFunctionPlayer *)self _saveBytes];
  v3 = *MEMORY[0x277D0AFA0];
  v4 = *(&self->super.super.isa + v3);
  v5 = *v4;
  if (*v4 > -15910)
  {
    if (v5 > -15848)
    {
      if (v5 == -15847)
      {
        v26 = self + *MEMORY[0x277D0AF68];
        v27 = GPUTools::MTL::MakeMTLArray(**(v26 + 1), *(v4 + 92), &self->_objectMap.__table_.__bucket_list_.__ptr_);
        MTLImageFilterFunctionInfo = GPUTools::MTL::MakeMTLImageFilterFunctionInfo(**(v26 + 2), v28);
        device = [(DYMTLFunctionPlayer *)self device];
        v31 = [device newLibraryWithImageFilterFunctionsSPI:v27 imageFilterFunctionInfo:MTLImageFilterFunctionInfo error:0];

        *&v53 = (*(&self->super.super.isa + v3))[3];
        v32 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v53, &std::piecewise_construct, &v53);
        objc_storeStrong(v32 + 3, v31);
        v33 = 0;
        v34 = 16;
        while (v33 < [v27 count])
        {
          free(*&MTLImageFilterFunctionInfo[v34]);
          ++v33;
          v34 += 24;
        }

        free(MTLImageFilterFunctionInfo);

        goto LABEL_36;
      }

      if (v5 == -12544)
      {
        *&v52[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 24, 0);
        v56 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 48, 0);
        *&v53 = &v56;
        v9 = [std::__hash_table<std::__hash_value_type<unsigned long long objc:std::__unordered_map_hasher<unsigned long long object * {:std::__hash_value_type<unsigned long long :{objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v56, &std::piecewise_construct, &v53)[3], "commandBuffer", *&v52[0]}strong}>];
        *&v53 = v52;
        v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v53);
        v11 = v10[3];
        v10[3] = v9;

        goto LABEL_36;
      }

      goto LABEL_29;
    }

    if (v5 != -15909)
    {
      if (v5 == -15908)
      {
        *&v52[0] = **(v4 + 48);
        *&v53 = v52;
        [std::__hash_table<std::__hash_value_type<unsigned long long objc:std::__unordered_map_hasher<unsigned long long object * {:std::__hash_value_type<unsigned long long :{objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v53)[3], "commitAndWaitUntilSubmitted"}strong}>];
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    *&v52[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 72, 0);
    v56 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 24, 0);
    v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52);
    if (v18)
    {
      v19 = v18;
      device2 = [(DYMTLFunctionPlayer *)self device];
      newSharedEvent = [device2 newSharedEventWithHandle:v19[3]];
    }

    else
    {
      device2 = [(DYMTLFunctionPlayer *)self device];
      newSharedEvent = [device2 newSharedEvent];
    }

    *&v53 = &v56;
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v56, &std::piecewise_construct, &v53);
LABEL_32:
    v35 = v8[3];
    v8[3] = newSharedEvent;

    goto LABEL_35;
  }

  if (v5 > -15980)
  {
    if (v5 == -15979)
    {
      *&v52[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 24, 0);
      v56 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 72, 0);
      v20 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v56);
      if (v20)
      {
        v22 = v20;
        device2 = [(DYMTLFunctionPlayer *)self device];
        v23 = [device2 newSharedTextureWithHandle:v22[3]];
        *&v53 = v52;
        v24 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v53);
        device3 = v24[3];
        v24[3] = v23;
      }

      else
      {
        device2 = GPUTools::MTL::MakeMTLTextureDescriptor(*(*(&self->super.super.isa + v3))[12], v21);
        device3 = [(DYMTLFunctionPlayer *)self device];
        v36 = [device3 newSharedTextureWithDescriptor:device2];
        *&v53 = v52;
        v37 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v53);
        v38 = v37[3];
        v37[3] = v36;
      }

      goto LABEL_35;
    }

    if (v5 != -15912)
    {
      goto LABEL_29;
    }

    device2 = [(DYMTLFunctionPlayer *)self device:GPUTools::FD::Argument::ViewAsScalarArray<unsigned int>(v4 + 24];
    newSharedEvent = [device2 newSharedEvent];
    *&v53 = v52;
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v53);
    goto LABEL_32;
  }

  if (v5 != -16313)
  {
    if (v5 == -16236)
    {
      *&v53 = v4 + 16;
      device2 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v4 + 16), &std::piecewise_construct, &v53)[3];
      if ([device2 storageMode] != 3)
      {
        if ([device2 storageMode] == 2)
        {
          [(DYMTLFunctionPlayer *)self _restoreTexture:(*(&self->super.super.isa + v3))[2] commandBuffer:0 argumentOffset:0];
        }

        else if (![device2 iosurface])
        {
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          v46 = (self + *MEMORY[0x277D0AF68]);
          GPUTools::MTL::MakeMTLRegion(&v53, *v46[1]);
          v47 = *v46[2];
          v48 = *v46[3];
          Data = DYHarvesterGetData();
          v50 = *v46[5];
          v51 = *v46[6];
          v52[0] = v53;
          v52[1] = v54;
          v52[2] = v55;
          [device2 replaceRegion:v52 mipmapLevel:v47 slice:v48 withBytes:Data bytesPerRow:v50 bytesPerImage:v51];
        }
      }

      goto LABEL_35;
    }

LABEL_29:
    DispatchMPSMethod();
    goto LABEL_36;
  }

  v12 = (self + *MEMORY[0x277D0AF68]);
  v13 = *v12[3];
  if ((v13 & 0xF0) != 0x20)
  {
    goto LABEL_29;
  }

  v14 = *v12[1];
  v15 = *v12[2];
  device4 = [(DYMTLFunctionPlayer *)self device];
  device2 = [(DYMTLFunctionPlayer *)self _createPrivateBufferForFunctionWithDevice:device4 bytes:v14 length:v15 resourceOptions:v13];

  *&v53 = (*(&self->super.super.isa + v3))[3];
  v17 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v53, &std::piecewise_construct, &v53);
  objc_storeStrong(v17 + 3, device2);
  [(DYFunctionPlayer *)self releaseDataForArgument:1];
LABEL_35:

LABEL_36:
  v39 = *(&self->super.super.isa + v3);
  if ((*v39 + 16316) < 2 || *v39 == -16165)
  {
    *&v52[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v39 + 6), 0);
    *&v53 = v52;
    v41 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v53)[3];
    v42 = v41;
    maxCommandBufferCount = [v42 maxCommandBufferCount];
    if (maxCommandBufferCount > [(MTLCommandQueueSPI *)self->_commandQueue maxCommandBufferCount])
    {
      [(MTLCommandQueueSPI *)self->_commandQueue finish];
      objc_storeStrong(&self->_commandQueue, v41);
    }

    commandQueue = self->_commandQueue;
    *&v52[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 24, 0);
    *&v53 = v52;
    v45 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v52, &std::piecewise_construct, &v53);
    objc_storeStrong(v45 + 3, commandQueue);
  }
}

- (id).cxx_construct
{
  *(self + 85) = 0u;
  *(self + 86) = 0u;
  *(self + 348) = 1065353216;
  *(self + 88) = 0u;
  *(self + 89) = 0u;
  *(self + 360) = 1065353216;
  *(self + 1448) = 0u;
  *(self + 1464) = 0u;
  *(self + 370) = 1065353216;
  *(self + 93) = 0u;
  *(self + 94) = 0u;
  *(self + 380) = 1065353216;
  *(self + 1528) = 0u;
  *(self + 1544) = 0u;
  *(self + 390) = 1065353216;
  return self;
}

@end