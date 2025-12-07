@interface PSResourceHeap
- (PSResourceHeap)init;
- (id)getResourceWrapper:(id)wrapper;
- (void)addResource:(id)resource bytes:(void *)bytes size:(unint64_t)size timestamp:(unint64_t)timestamp;
- (void)addResource:(id)resource bytes:(void *)bytes size:(unint64_t)size timestamp:(unint64_t)timestamp withDeallocator:(id)deallocator;
- (void)addResource:(id)resource dataBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp;
- (void)addResource:(id)resource mtlBuffer:(id)buffer timestamp:(unint64_t)timestamp;
- (void)addResource:(id)resource mtlTexture:(id)texture timestamp:(unint64_t)timestamp;
- (void)addResource:(id)resource object:(id)object timestamp:(unint64_t)timestamp;
- (void)addResource:(id)resource object:(id)object timestamp:(unint64_t)timestamp deallocator:(id)deallocator;
- (void)addResource:(id)resource opaquePointer:(void *)pointer timestamp:(unint64_t)timestamp deallocator:(void *)deallocator;
- (void)addResource:(id)resource pixelBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp;
- (void)addResource:(id)resource surface:(__IOSurface *)surface timestamp:(unint64_t)timestamp;
- (void)createAndAddResource:(id)resource timestamp:(unint64_t)timestamp;
- (void)dealloc;
- (void)getResource:(id)resource;
- (void)removeResourceKey:(id)key;
- (void)replaceResource:(id)resource bytes:(void *)bytes size:(unint64_t)size timestamp:(unint64_t)timestamp withDeallocator:(id)deallocator;
- (void)replaceResource:(id)resource dataBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp;
- (void)replaceResource:(id)resource object:(id)object timestamp:(unint64_t)timestamp deallocator:(id)deallocator;
- (void)replaceResource:(id)resource opaquePointer:(void *)pointer timestamp:(unint64_t)timestamp deallocator:(void *)deallocator;
- (void)replaceResource:(id)resource pixelBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp;
- (void)replaceResource:(id)resource surface:(__IOSurface *)surface timestamp:(unint64_t)timestamp;
@end

@implementation PSResourceHeap

- (PSResourceHeap)init
{
  v8.receiver = self;
  v8.super_class = PSResourceHeap;
  v2 = [(PSResourceHeap *)&v8 init];
  if (v2)
  {
    v3 = MTLCreateSystemDefaultDevice();
    mtlDevice = v2->_mtlDevice;
    v2->_mtlDevice = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    resources = v2->_resources;
    v2->_resources = dictionary;
  }

  return v2;
}

- (void)removeResourceKey:(id)key
{
  keyCopy = key;
  v4 = [(NSMutableDictionary *)self->_resources objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_resources removeObjectForKey:keyCopy];
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  while ([(NSMutableDictionary *)self->_resources count])
  {
    memset(v6, 0, sizeof(v6));
    v3 = self->_resources;
    if ([(NSMutableDictionary *)v3 countByEnumeratingWithState:v6 objects:v7 count:16])
    {
      v4 = **(&v6[0] + 1);
      [(PSResourceHeap *)self removeResourceKey:v4];
    }
  }

  v5.receiver = self;
  v5.super_class = PSResourceHeap;
  [(PSResourceHeap *)&v5 dealloc];
}

- (void)addResource:(id)resource bytes:(void *)bytes size:(unint64_t)size timestamp:(unint64_t)timestamp withDeallocator:(id)deallocator
{
  resourceCopy = resource;
  bytesCopy = bytes;
  deallocatorCopy = deallocator;
  if (deallocatorCopy)
  {
    v14 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
    if (!v14)
    {
      v14 = objc_alloc_init(PSResourceWrapper);
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    v15 = MEMORY[0x25F8CC5B0](deallocatorCopy);
    v21 = &bytesCopy;
    v16 = std::__hash_table<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void({block_pointer} {__strong})(void *)>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>([(PSResourceWrapper *)v14 data_deallocator_map], &bytesCopy, &std::piecewise_construct, &v21);
    v17 = v16[3];
    v16[3] = v15;

    bytes = bytesCopy;
  }

  v18 = [(PSResourceHeap *)self addResource:resourceCopy bytes:bytes size:size timestamp:timestamp];

  return v18;
}

- (void)addResource:(id)resource bytes:(void *)bytes size:(unint64_t)size timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  v11 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v11)
  {
    v11 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v11 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v11 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 1);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  ps_resource::set_data(resource, count, bytes, size);

  return resource;
}

- (void)replaceResource:(id)resource bytes:(void *)bytes size:(unint64_t)size timestamp:(unint64_t)timestamp withDeallocator:(id)deallocator
{
  resourceCopy = resource;
  deallocatorCopy = deallocator;
  [(PSResourceHeap *)self removeResourceKey:resourceCopy];
  v14 = [(PSResourceHeap *)self addResource:resourceCopy bytes:bytes size:size timestamp:timestamp withDeallocator:deallocatorCopy];

  return v14;
}

- (void)addResource:(id)resource object:(id)object timestamp:(unint64_t)timestamp deallocator:(id)deallocator
{
  resourceCopy = resource;
  objectCopy = object;
  v19 = objectCopy;
  deallocatorCopy = deallocator;
  if (deallocatorCopy)
  {
    v13 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
    if (!v13)
    {
      v13 = objc_alloc_init(PSResourceWrapper);
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    v14 = MEMORY[0x25F8CC5B0](deallocatorCopy);
    v20 = &v19;
    v15 = std::__hash_table<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::__unordered_map_hasher<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::hash<objc_object * {__strong}>,std::equal_to<objc_object * {__strong}>,true>,std::__unordered_map_equal<objc_object * {__strong},std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>,std::equal_to<objc_object * {__strong}>,std::hash<objc_object * {__strong}>,true>,std::allocator<std::__hash_value_type<objc_object * {__strong},void({block_pointer} {__strong})(objc_object *)>>>::__emplace_unique_key_args<objc_object * {__strong},std::piecewise_construct_t const&,std::tuple<objc_object * const {__strong}&>,std::tuple<>>([(PSResourceWrapper *)v13 object_deallocator_map], &v19, &std::piecewise_construct, &v20);
    v16 = v15[3];
    v15[3] = v14;

    objectCopy = v19;
  }

  v17 = [(PSResourceHeap *)self addResource:resourceCopy object:objectCopy timestamp:timestamp];

  return v17;
}

- (void)addResource:(id)resource object:(id)object timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  objectCopy = object;
  v10 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v10 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v10 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 2);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  v13 = objectCopy;
  ps_resource::set_object(resource, count, v13);

  return resource;
}

- (void)replaceResource:(id)resource object:(id)object timestamp:(unint64_t)timestamp deallocator:(id)deallocator
{
  resourceCopy = resource;
  objectCopy = object;
  deallocatorCopy = deallocator;
  [(PSResourceHeap *)self removeResourceKey:resourceCopy];
  v13 = [(PSResourceHeap *)self addResource:resourceCopy object:objectCopy timestamp:timestamp deallocator:deallocatorCopy];

  return v13;
}

- (void)addResource:(id)resource opaquePointer:(void *)pointer timestamp:(unint64_t)timestamp deallocator:(void *)deallocator
{
  resourceCopy = resource;
  pointerCopy = pointer;
  v11 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v11)
  {
    v11 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v11 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v11 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 3);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  ps_resource::set_object(resource, count, pointer);
  v16 = &pointerCopy;
  std::__hash_table<std::__hash_value_type<void *,void (*)(void *)>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void (*)(void *)>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void (*)(void *)>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void (*)(void *)>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>([(PSResourceWrapper *)v11 opaque_deallocator_map], &pointerCopy, &std::piecewise_construct, &v16)[3] = deallocator;

  return resource;
}

- (void)replaceResource:(id)resource opaquePointer:(void *)pointer timestamp:(unint64_t)timestamp deallocator:(void *)deallocator
{
  resourceCopy = resource;
  [(PSResourceHeap *)self removeResourceKey:resourceCopy];
  v11 = [(PSResourceHeap *)self addResource:resourceCopy opaquePointer:pointer timestamp:timestamp deallocator:deallocator];

  return v11;
}

- (void)addResource:(id)resource dataBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  v9 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v9)
  {
    v9 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v9 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v9 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 8);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  v12 = CFRetain(buffer);
  ps_resource::set_databuffer(resource, count, v12, 0);

  return resource;
}

- (void)replaceResource:(id)resource dataBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  [(PSResourceHeap *)self removeResourceKey:resourceCopy];
  v9 = [(PSResourceHeap *)self addResource:resourceCopy dataBuffer:buffer timestamp:timestamp];

  return v9;
}

- (void)addResource:(id)resource surface:(__IOSurface *)surface timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  v9 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v9)
  {
    v9 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v9 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v9 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 4);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  v12 = CFRetain(surface);
  ps_resource::set_object(resource, count, v12);

  return resource;
}

- (void)replaceResource:(id)resource surface:(__IOSurface *)surface timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  [(PSResourceHeap *)self removeResourceKey:resourceCopy];
  v9 = [(PSResourceHeap *)self addResource:resourceCopy surface:surface timestamp:timestamp];

  return v9;
}

- (void)addResource:(id)resource pixelBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  v9 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v9)
  {
    v9 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v9 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v9 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 7);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  v12 = CVPixelBufferRetain(buffer);
  ps_resource::set_pixelbuffer(resource, count, v12, 0);

  return resource;
}

- (void)replaceResource:(id)resource pixelBuffer:(__CVBuffer *)buffer timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  [(PSResourceHeap *)self removeResourceKey:resourceCopy];
  v9 = [(PSResourceHeap *)self addResource:resourceCopy pixelBuffer:buffer timestamp:timestamp];

  return v9;
}

- (void)addResource:(id)resource mtlBuffer:(id)buffer timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  bufferCopy = buffer;
  v10 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v10 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v10 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 5);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  v13 = bufferCopy;
  ps_resource::set_object(resource, count, v13);

  return resource;
}

- (void)addResource:(id)resource mtlTexture:(id)texture timestamp:(unint64_t)timestamp
{
  resourceCopy = resource;
  textureCopy = texture;
  v10 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resourceCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(PSResourceWrapper);
    [(NSMutableDictionary *)self->_resources setObject:v10 forKeyedSubscript:resourceCopy];
  }

  resource = [(PSResourceWrapper *)v10 resource];
  ps_resource::set_valid(resource, 1);
  count = ps_resource::get_count(resource);
  if (!count)
  {
    ps_resource::set_key(resource, [resourceCopy UTF8String]);
    ps_resource::set_class(resource, 6);
  }

  ps_resource::resize(resource, count + 1);
  ps_resource::set_timestamp(resource, count, timestamp);
  v13 = textureCopy;
  ps_resource::set_object(resource, count, v13);

  return resource;
}

- (void)getResource:(id)resource
{
  v3 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:resource];
  v4 = v3;
  if (v3)
  {
    resource = [v3 resource];
  }

  else
  {
    resource = 0;
  }

  return resource;
}

- (id)getResourceWrapper:(id)wrapper
{
  v3 = [(NSMutableDictionary *)self->_resources objectForKeyedSubscript:wrapper];

  return v3;
}

- (void)createAndAddResource:(id)resource timestamp:(unint64_t)timestamp
{
  v57[3] = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  resourceClass = [resourceCopy resourceClass];
  if (resourceClass <= 4)
  {
    if (resourceClass <= 2)
    {
      if (resourceClass == 1)
      {
        v14 = resourceCopy;
        v15 = [v14 key];
        v20 = -[PSResourceHeap addResource:bytes:size:timestamp:withDeallocator:](self, "addResource:bytes:size:timestamp:withDeallocator:", v15, malloc_type_calloc(1uLL, [v14 length], 0xF8391D15uLL), objc_msgSend(v14, "length"), timestamp, &__block_literal_global_4);
LABEL_24:

        goto LABEL_25;
      }

      if (resourceClass != 2)
      {
        goto LABEL_41;
      }

      v14 = resourceCopy;
      v15 = [v14 key];
      retainableAllocator = [v14 retainableAllocator];
      v17 = (retainableAllocator)[2](retainableAllocator, v14, 1);
      v18 = [v17 objectAtIndexedSubscript:0];
      retainableDeallocator = [v14 retainableDeallocator];
      v20 = [(PSResourceHeap *)self addResource:v15 object:v18 timestamp:timestamp deallocator:retainableDeallocator];

LABEL_23:
      goto LABEL_24;
    }

    if (resourceClass != 3)
    {
      v21 = resourceCopy;
      ioSurfaceProperties = [v21 ioSurfaceProperties];
      if (ioSurfaceProperties)
      {
        ioSurfaceProperties2 = [v21 ioSurfaceProperties];
      }

      else
      {
        v56[0] = *MEMORY[0x277CD2B88];
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "width")}];
        v57[0] = v40;
        v56[1] = *MEMORY[0x277CD2A28];
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "height")}];
        v57[1] = v41;
        v56[2] = *MEMORY[0x277CD2A70];
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v21, "pixelFormat")}];
        v57[2] = v42;
        ioSurfaceProperties2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
      }

      v43 = IOSurfaceCreate(ioSurfaceProperties2);
      if (!v43)
      {
        __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 677, "surface != NULL");
      }

      v44 = [v21 key];
      v20 = [(PSResourceHeap *)self addResource:v44 surface:v43 timestamp:timestamp];

      CFRelease(v43);
      goto LABEL_25;
    }

    v14 = resourceCopy;
    v15 = [v14 key];
    retainableAllocator = ([v14 allocator])(v14, 1);
    v26 = -[PSResourceHeap addResource:opaquePointer:timestamp:deallocator:](self, "addResource:opaquePointer:timestamp:deallocator:", v15, [retainableAllocator pointerAtIndex:0], timestamp, objc_msgSend(v14, "deallocator"));
LABEL_22:
    v20 = v26;
    goto LABEL_23;
  }

  if (resourceClass <= 6)
  {
    if (resourceClass == 5)
    {
      v14 = resourceCopy;
      v15 = -[MTLDevice newBufferWithLength:options:](self->_mtlDevice, "newBufferWithLength:options:", [v14 length], objc_msgSend(0, "resourceOptions"));
      if (!v15)
      {
        __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 687, "mtlBuffer != NULL");
      }

      retainableAllocator = [v14 key];
      v26 = [(PSResourceHeap *)self addResource:retainableAllocator mtlBuffer:v15 timestamp:timestamp];
    }

    else
    {
      v14 = resourceCopy;
      mtlDevice = self->_mtlDevice;
      mtlTextureDescriptor = [v14 mtlTextureDescriptor];
      v15 = [(MTLDevice *)mtlDevice newTextureWithDescriptor:mtlTextureDescriptor];

      if (!v15)
      {
        __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 696, "mtlTexture != NULL");
      }

      retainableAllocator = [v14 key];
      v26 = [(PSResourceHeap *)self addResource:retainableAllocator mtlTexture:v15 timestamp:timestamp];
    }

    goto LABEL_22;
  }

  if (resourceClass != 7)
  {
    if (resourceClass == 8)
    {
      v34 = resourceCopy;
      cf = 0;
      v52[0] = *MEMORY[0x277CD2B88];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "width")}];
      v53[0] = v35;
      v52[1] = *MEMORY[0x277CD2A28];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "height")}];
      v53[1] = v36;
      v52[2] = *MEMORY[0x277CD2A70];
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v34, "pixelFormat")}];
      v53[2] = v37;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];

      v39 = IOSurfaceCreate(v38);
      if (v39)
      {
        CVDataBufferCreateWithIOSurface();
        CFRelease(v39);
        v45 = "dataBuffer != NULL";
        v46 = 725;
      }

      else
      {
        v45 = "surface != NULL";
        v46 = 722;
      }

      __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", v46, v45);
    }

    if (resourceClass == 9)
    {
      v8 = resourceCopy;
      cf = 0;
      v50[0] = *MEMORY[0x277CD2B88];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "width")}];
      v51[0] = v9;
      v50[1] = *MEMORY[0x277CD2A28];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "height")}];
      v51[1] = v10;
      v50[2] = *MEMORY[0x277CD2A70];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "pixelFormat")}];
      v51[2] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];

      v13 = IOSurfaceCreate(v12);
      if (v13)
      {
        CVDataBufferCreateWithIOSurface();
        CFRelease(v13);
        v47 = "dataBuffer != NULL";
        v48 = 743;
      }

      else
      {
        v47 = "surface != NULL";
        v48 = 740;
      }

      __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", v48, v47);
    }

LABEL_41:
    __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 749, "false && Missing/unsupported resource class");
  }

  v28 = resourceCopy;
  cf = 0;
  width = [v28 width];
  height = [v28 height];
  pixelFormat = [v28 pixelFormat];
  v54 = *MEMORY[0x277CC4DE8];
  v55 = MEMORY[0x277CBEC10];
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, pixelFormat, v32, &cf))
  {
    __assert_rtn("[PSResourceHeap createAndAddResource:timestamp:]", "PSTestEngine.mm", 707, "success == kCVReturnSuccess");
  }

  v33 = [v28 key];
  v20 = [(PSResourceHeap *)self addResource:v33 pixelBuffer:cf timestamp:timestamp];

  CVPixelBufferRelease(cf);
LABEL_25:

  return v20;
}

@end