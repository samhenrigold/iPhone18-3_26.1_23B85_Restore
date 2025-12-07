@interface PSTestEngine
- (BOOL)cleanupSourceTasksForGraph:(id)graph output:(id)output cleanupContext:(id)context;
- (BOOL)runGraph:(id)graph withInput:(id)input output:(id)output context:(id)context timestamp:(unint64_t)timestamp;
- (BOOL)setupSourceTasksForGraph:(id)graph withOutput:(id)output context:(id)context cleanupContext:(id)cleanupContext;
- (PSTestEngine)initWithDelegate:(id)delegate;
- (__n128)runGraph:withInput:output:context:timestamp:;
- (id)contextWithInput:(id)input;
- (void)runGraph:withInput:output:context:timestamp:;
@end

@implementation PSTestEngine

- (PSTestEngine)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PSTestEngine;
  v6 = [(PSTestEngine *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = MTLCreateSystemDefaultDevice();
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v8;

    newCommandQueue = [(MTLDevice *)v7->_mtlDevice newCommandQueue];
    mtlCommandQueue = v7->_mtlCommandQueue;
    v7->_mtlCommandQueue = newCommandQueue;
  }

  return v7;
}

- (id)contextWithInput:(id)input
{
  v48 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v39 = objc_alloc_init(PSContext);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = inputCopy;
  obj = [inputCopy resources];
  v5 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v5)
  {
    v6 = *v44;
    v38 = vdupq_n_s64(1uLL);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        resources = [v4 resources];
        v10 = [resources objectForKeyedSubscript:v8];
        resource = [v10 resource];

        v12 = resource->_class;
        v42 = v38;
        if (v12 <= 4)
        {
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v17 = objc_alloc_init(PSOpaqueStream);
              [(PSResourceStream *)v17 setKey:v8];
            }

            else
            {
              object = ps_resource::get_object(resource);
              v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetWidth(object)];
              [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x277CD2928]];

              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetHeight(object)];
              [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x277CD28D0]];

              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:IOSurfaceGetPixelFormat(object)];
              [v19 setObject:v22 forKeyedSubscript:*MEMORY[0x277CD28D8]];

              v17 = [PSIOSurfaceStream ioSurfaceStreamWithResourceKey:v8 options:&v42 properties:v19];
            }
          }

          else if (v12 == 1)
          {
            v41 = 0;
            ps_resource::get_data(resource, 0, &v41);
            v17 = [PSDataStream dataStreamWithResourceKey:v8 options:&v42 length:v41];
            v40 = 0;
            v25 = [(PSOpaqueStream *)v17 validate:&v40];
            v26 = v40;
            if (!v25)
            {
              __assert_rtn("[PSTestEngine contextWithInput:]", "PSTestEngine.mm", 878, "result && failure");
            }
          }

          else
          {
            if (v12 != 2)
            {
LABEL_34:
              __assert_rtn("[PSTestEngine contextWithInput:]", "PSTestEngine.mm", 964, "false && Unsupported replay data type");
            }

            v17 = objc_alloc_init(PSObjectStream);
            [(PSResourceStream *)v17 setKey:v8];
          }
        }

        else if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v23 = ps_resource::get_object(resource);
            v17 = +[PSMTLBufferStream mtlBufferStreamWithResourceKey:options:length:mtlOptions:](PSMTLBufferStream, "mtlBufferStreamWithResourceKey:options:length:mtlOptions:", v8, &v42, [v23 length], objc_msgSend(v23, "resourceOptions"));
          }

          else
          {
            v23 = ps_resource::get_object(resource);
            v24 = [MEMORY[0x277CD7058] textureBufferDescriptorWithPixelFormat:objc_msgSend(v23 width:"pixelFormat") resourceOptions:objc_msgSend(v23 usage:"width"), objc_msgSend(v23, "resourceOptions"), objc_msgSend(v23, "usage")];
            v17 = [PSMTLTextureStream mtlTextureStreamWithResourceKey:v8 options:&v42 descriptor:v24];
          }
        }

        else if (v12 == 7)
        {
          pixelbuffer = ps_resource::get_pixelbuffer(resource, 0);
          IOSurface = CVPixelBufferGetIOSurface(pixelbuffer);
          v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetWidth(IOSurface)];
          [v29 setObject:v30 forKeyedSubscript:*MEMORY[0x277CD2928]];

          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:IOSurfaceGetHeight(IOSurface)];
          [v29 setObject:v31 forKeyedSubscript:*MEMORY[0x277CD28D0]];

          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:IOSurfaceGetPixelFormat(IOSurface)];
          [v29 setObject:v32 forKeyedSubscript:*MEMORY[0x277CD28D8]];

          v17 = [PSCVPixelStream cvPixelStreamWithResourceKey:v8 options:&v42 properties:v29];
        }

        else
        {
          if (v12 == 8)
          {
            ps_resource::get_databuffer(resource);
            v33 = CVDataBufferGetIOSurface();
            Width = IOSurfaceGetWidth(v33);
            Height = IOSurfaceGetHeight(v33);
            v16 = [PSCVDataStream cvDataStreamWithResourceKey:v8 options:&v42 width:Width height:Height pixelFormat:IOSurfaceGetPixelFormat(v33)];
          }

          else
          {
            if (v12 != 9)
            {
              goto LABEL_34;
            }

            ps_resource::get_jasperbuffer_ptr(resource);
            v13 = CVDataBufferGetIOSurface();
            v14 = IOSurfaceGetWidth(v13);
            v15 = IOSurfaceGetHeight(v13);
            v16 = [PSJasperStream jasperStreamWithResourceKey:v8 options:&v42 width:v14 height:v15 pixelFormat:IOSurfaceGetPixelFormat(v13)];
          }

          v17 = v16;
        }

        [(PSResourceStream *)v17 setFramerate:1];
        [(PSContext *)v39 addResourceStream:v17];
      }

      v5 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v5);
  }

  return v39;
}

- (BOOL)runGraph:(id)graph withInput:(id)input output:(id)output context:(id)context timestamp:(unint64_t)timestamp
{
  v35 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  input;
  outputCopy = output;
  context;
  if (outputCopy)
  {
    outputCopy;
  }

  else
  {
    objc_alloc_init(PSResourceHeap);
  }

  tasks = [graphCopy tasks];
  v12 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  v23 = 0u;
  v24 = 0u;
  v25 = 1065353216;
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  while (v12 < [tasks count])
  {
    v13 = [tasks objectAtIndex:v12];
    v31.__r_.__value_.__r.__words[0] = v13;
    v33.__r_.__value_.__r.__words[0] = &v31;
    *(std::__hash_table<std::__hash_value_type<void *,BOOL>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BOOL>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BOOL>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BOOL>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v26, &v31, &std::piecewise_construct, &v33) + 24) = 0;
    outputs = [v13 outputs];
    for (i = 0; i < [outputs count]; ++i)
    {
      v16 = [outputs objectAtIndex:i];
      resourceKey = [v16 resourceKey];
      v18 = resourceKey;
      std::string::basic_string[abi:nn200100]<0>(&v31, [resourceKey UTF8String]);
      v33 = v31;
      memset(&v31, 0, sizeof(v31));
      v34 = v13;
      std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PSTask * {__strong}>>(v21, &v33, &v33);

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }
    }

    ++v12;
  }

  v32 = 0;
  operator new();
}

- (BOOL)setupSourceTasksForGraph:(id)graph withOutput:(id)output context:(id)context cleanupContext:(id)cleanupContext
{
  v65 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  outputCopy = output;
  outputCopy2 = output;
  contextCopy = context;
  contextCopy2 = context;
  v54 = graphCopy;
  cleanupContextCopy = cleanupContext;
  resourceHeap = [cleanupContextCopy resourceHeap];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [graphCopy sourceTasks];
  v52 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v52)
  {
    v49 = "false && Missing/unsupported resource class";
    v53 = *v61;
    while (2)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v60 + 1) + 8 * i);
        outputs = [v12 outputs];
        v59 = v12;
        if (![v12 resources])
        {
          ps_resource_array_create([outputs count]);
        }

        resources = [v12 resources];
        for (j = 0; j < [outputs count]; ++j)
        {
          v16 = [outputs objectAtIndexedSubscript:j];
          resourceKey = [v16 resourceKey];
          v18 = [contextCopy2 resourceStreamForKey:resourceKey];

          if (!v18)
          {
            v44 = [outputs objectAtIndexedSubscript:j];
            resourceKey2 = [v44 resourceKey];
            v46 = resourceKey2;
            printf("Failed to find resource stream for %s. Verify that this resource stream has been added to the context.", [resourceKey2 UTF8String]);

            v43 = 0;
            goto LABEL_36;
          }

          v19 = [resourceHeap createAndAddResource:v18 timestamp:0];
          resource = ps_resource_array_get_resource(resources, j);
          key = ps_resource_get_key(v19);
          ps_resource_set_key(resource, key);
          [v18 resourceClass];
          ps_resource_set_class();
          ps_resource_set_item_count(resource, 1uLL);
          item_count = ps_resource_get_item_count(v19);
          if (!v19)
          {
            v28 = 105;
            v48 = "false && Input resource passed is invalid!";
            goto LABEL_39;
          }

          v23 = item_count;
          v24 = ps_resource_get_class(resource);
          if (v24 != ps_resource_get_class(v19))
          {
            v28 = 110;
            v48 = "false && Class for input and output resources is not the same to copy";
LABEL_39:
            v49 = v48;
LABEL_40:
            __assert_rtn("_copy_resource_item", "PSTestEngine.mm", v28, v49);
          }

          v25 = v23 - 1;
          if (ps_resource_is_item_valid(v19, v25))
          {
            ps_resource_set_item_valid(resource, 0, 1);
            timestamp = ps_resource_get_timestamp(v19, v25);
            ps_resource_set_timestamp(resource, 0, timestamp);
            v27 = ps_resource_get_class(v19);
            v28 = 169;
            if (v27 > 3)
            {
              switch(v27)
              {
                case 4:
                  surface_item = ps_resource_get_surface_item(v19, v25);
                  iosurface = ps_resource_surface_get_iosurface(surface_item);
                  if (!iosurface)
                  {
                    v28 = 138;
                    v48 = "false && A surface item must contain an IOSurface";
                    goto LABEL_39;
                  }

                  ps_resource_set_iosurface(resource, 0, iosurface);
                  break;
                case 7:
                  pixelbuffer_item = ps_resource_get_pixelbuffer_item(v19, v25);
                  cvpixelbuffer = ps_resource_pixelbuffer_get_cvpixelbuffer(pixelbuffer_item);
                  metadata = ps_resource_pixelbuffer_get_metadata(pixelbuffer_item);
                  if (!cvpixelbuffer)
                  {
                    v28 = 149;
                    v48 = "false && A surface item must contain a CVPixelBuffer";
                    goto LABEL_39;
                  }

                  ps_resource_set_cvpixelbuffer(resource, 0, cvpixelbuffer, metadata);
                  break;
                case 8:
                  databuffer_item = ps_resource_get_databuffer_item(v19, v25);
                  databuffer = ps_resource_databuffer_get_databuffer(databuffer_item);
                  v33 = ps_resource_databuffer_get_metadata(databuffer_item);
                  if (!databuffer)
                  {
                    v28 = 160;
                    v48 = "false && A surface item must contain a CVDataBuffer";
                    goto LABEL_39;
                  }

                  ps_resource_set_cvdatabuffer(resource, 0, databuffer, v33);
                  break;
                default:
                  goto LABEL_40;
              }
            }

            else if ((v27 - 2) >= 2)
            {
              if (v27 != 1)
              {
                goto LABEL_40;
              }

              data_item = ps_resource_get_data_item(v19, v25);
              bytes = ps_resource_data_get_bytes(data_item);
              length = ps_resource_data_get_length(data_item);
              ps_resource_set_data(resource, 0, bytes, length);
            }

            else
            {
              object_item = ps_resource_get_object_item(v19, v25);
              object = ps_resource_object_get_object(object_item);
              ps_resource_set_object(resource, 0, object);
            }
          }

          ps_resource_set_timestamp(resource, 0, 0);
        }

        if (![v59 sourceTaskData])
        {
          v42 = malloc_type_calloc(1uLL, 0x18uLL, 0x80040D6874129uLL);
          objc_storeStrong(v42 + 2, contextCopy);
          objc_storeStrong(v42, outputCopy);
          objc_storeStrong(v42 + 1, resourceHeap);
          [v59 setResources:resources];
          [v59 setSourceTaskData:v42];
          [v59 setSourceTaskFunction:testengine_source_writer_func];
        }
      }

      v43 = 1;
      v52 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v43 = 1;
  }

LABEL_36:

  return v43;
}

- (BOOL)cleanupSourceTasksForGraph:(id)graph output:(id)output cleanupContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  outputCopy = output;
  v24 = graphCopy;
  contextCopy = context;
  resourceHeap = [contextCopy resourceHeap];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [graphCopy sourceTasks];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v27 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        getResources = [v12 getResources];
        if (getResources)
        {
          for (j = 0; j < ps_resource_array_get_count(getResources); ++j)
          {
            resource = ps_resource_array_get_resource(getResources, j);
            key = ps_resource_get_key(resource);
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:key];
            [outputCopy removeResourceKey:v17];

            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:key];
            [resourceHeap removeResourceKey:v18];
          }

          ps_resource_array_free(getResources);
        }

        getSourceTaskData = [v12 getSourceTaskData];
        v20 = getSourceTaskData[2];
        getSourceTaskData[2] = 0;

        v21 = *getSourceTaskData;
        *getSourceTaskData = 0;

        v22 = getSourceTaskData[1];
        getSourceTaskData[1] = 0;

        free(getSourceTaskData);
        [v12 setSourceTaskData:0];
        [v12 setResources:0];
        [v12 setSourceTaskFunction:0];
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  return 1;
}

- (__n128)runGraph:withInput:output:context:timestamp:
{
  *a2 = &unk_2870D29C8;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)runGraph:withInput:output:context:timestamp:
{
  v3 = *a2;
  v15 = v3;
  v16 = v3;
  v4 = self[1];
  __p[0] = &v15;
  *(std::__hash_table<std::__hash_value_type<void *,BOOL>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BOOL>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BOOL>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BOOL>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v4, &v15, &std::piecewise_construct, __p) + 24) = 1;
  inputs = [v3 inputs];
  for (i = 0; i < [inputs count]; ++i)
  {
    v7 = [inputs objectAtIndex:i];
    if ([v7 type] != 2)
    {
      v8 = self[2];
      resolvedResourceKey = [v7 resolvedResourceKey];
      std::string::basic_string[abi:nn200100]<0>(__p, [resolvedResourceKey UTF8String]);
      v10 = std::__hash_table<std::__hash_value_type<std::string,PSTask * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSTask * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSTask * {__strong}>>>::find<std::string>(v8, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10)
      {
        v11 = v10[5];
        v12 = self[1];
        v15 = v11;
        __p[0] = &v15;
        if ((std::__hash_table<std::__hash_value_type<void *,BOOL>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,BOOL>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,BOOL>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,BOOL>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v12, &v15, &std::piecewise_construct, __p)[3] & 1) == 0)
        {
          std::function<void ()(PSTask *)>::operator()(self[3], v11);
        }
      }
    }
  }

  std::vector<PSTask * {__strong}>::push_back[abi:nn200100](self[4], &v16);
}

@end