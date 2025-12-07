@interface MTLRenderPipelineReflectionInternal
- (MTLRenderPipelineReflectionInternal)initWithObjectData:(id)data objectDynamicLibraries:(id)libraries meshData:(id)meshData meshDynamicLibraries:(id)dynamicLibraries fragmentData:(id)fragmentData fragmentDynamicLibraries:(id)fragmentDynamicLibraries device:(id)device options:(unint64_t)self0 flags:(id)self1;
- (MTLRenderPipelineReflectionInternal)initWithTileData:(id)data tileDynamicLibraries:(id)libraries functionType:(unint64_t)type device:(id)device options:(unint64_t)options flags:(id)flags;
- (MTLRenderPipelineReflectionInternal)initWithVertexData:(id)data vertexDynamicLibraries:(id)libraries fragmentData:(id)fragmentData fragmentDynamicLibraries:(id)dynamicLibraries serializedVertexDescriptor:(id)descriptor device:(id)device options:(unint64_t)options flags:(id)self0;
- (id)formattedDescription:(unint64_t)description;
- (id)fragmentBindings;
- (id)initWithTileData:(uint64_t)data device:(uint64_t)device options:(uint64_t)options flags:;
- (id)meshBindings;
- (id)objectBindings;
- (id)tileBindings;
- (id)vertexBindings;
- (void)dealloc;
- (void)initWithFragmentReader:(uint64_t)reader dylibReaders:(unsigned int)readers dylibReaderCount:(int)count dylibGlobalBindingCount:(void *)bindingCount device:(uint64_t)device flags:;
- (void)initWithFragmentReader:(void *)reader device:(uint64_t)device flags:;
- (void)initWithReader:(uint64_t)reader dylibReaders:(unsigned int)readers dylibReaderCount:(int)count dylibGlobalBindingCount:(void *)bindingCount device:(uint64_t)device flags:;
- (void)initWithReader:(void *)reader device:(uint64_t)device flags:;
- (void)setConstantSamplerUniqueIdentifiers:(id)identifiers;
- (void)setPerformanceStatistics:(id)statistics;
@end

@implementation MTLRenderPipelineReflectionInternal

- (MTLRenderPipelineReflectionInternal)initWithVertexData:(id)data vertexDynamicLibraries:(id)libraries fragmentData:(id)fragmentData fragmentDynamicLibraries:(id)dynamicLibraries serializedVertexDescriptor:(id)descriptor device:(id)device options:(unint64_t)options flags:(id)self0
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MTLRenderPipelineReflectionInternal;
  v13 = [(MTLRenderPipelineReflectionInternal *)&v16 init];
  v13->_printStyle = 3;
  *&v13->_flags = *&flags;
  ReflectionValidator<MTLVertexReflectionReader>::Validate(device, options, data, descriptor);
  v14 = MTLNewReflectionData(data);
  MTLNewReflectionPluginData(data);
  ReflectionReaderFactory<MTLVertexReflectionReader>::Create(options, v14);
}

- (id)initWithTileData:(uint64_t)data device:(uint64_t)device options:(uint64_t)options flags:
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = MTLRenderPipelineReflectionInternal;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  if (v7)
  {
    MTLArgumentDeserializer::MTLArgumentDeserializer(v10, device);
    v11 = 0;
    v10[16] = 0;
    v10[17] = 0;
    v10[0] = &unk_1EF474FC8;
    v12 = "stageInBuffer";
    v13 = 0;
    v14 = 0;
    v15 = 0;
    ReflectionReaderFactory<MTLComputeReflectionReader>::Create(device, a2);
  }

  return v7;
}

- (MTLRenderPipelineReflectionInternal)initWithTileData:(id)data tileDynamicLibraries:(id)libraries functionType:(unint64_t)type device:(id)device options:(unint64_t)options flags:(id)flags
{
  v17.receiver = self;
  v17.super_class = MTLRenderPipelineReflectionInternal;
  if ([(MTLRenderPipelineReflectionInternal *)&v17 init])
  {
    memset(v16, 0, sizeof(v16));
    if (libraries)
    {
      v15 = 0;
      std::vector<MTLDynamicLibraryReflectionReader *>::resize(v16, [libraries count], &v15);
      readDynamicLibraryReflectionData(device, v16[0], libraries, options);
    }

    v13 = MTLNewReflectionData(data);
    if (type != 2)
    {
      if (type == 3)
      {
        ReflectionValidator<MTLComputeReflectionReader>::Validate(device, options, data, 0);
        ReflectionReaderFactory<MTLComputeReflectionReader>::Create(options, v13);
      }

      abort();
    }

    ReflectionValidator<MTLFragmentReflectionReader>::Validate(device, options, data);
    ReflectionReaderFactory<MTLFragmentReflectionReader>::Create(options, v13);
  }

  return 0;
}

- (MTLRenderPipelineReflectionInternal)initWithObjectData:(id)data objectDynamicLibraries:(id)libraries meshData:(id)meshData meshDynamicLibraries:(id)dynamicLibraries fragmentData:(id)fragmentData fragmentDynamicLibraries:(id)fragmentDynamicLibraries device:(id)device options:(unint64_t)self0 flags:(id)self1
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MTLRenderPipelineReflectionInternal;
  v12 = [(MTLRenderPipelineReflectionInternal *)&v15 init];
  *&v12->_flags = *&flags;
  v12->_printStyle = 26;
  if ((options & 0x200000000) != 0)
  {
    v14 = MTLNewEmulationReflectionData(data);
  }

  else
  {
    v14 = MTLNewReflectionData(data);
  }

  MTLNewReflectionPluginData(data);
  ReflectionReaderFactory<MTLObjectReflectionReader>::Create(options, v14);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLRenderPipelineReflectionInternal;
  [(MTLRenderPipelineReflectionInternal *)&v3 dealloc];
}

- (void)setPerformanceStatistics:(id)statistics
{
  statisticsCopy = statistics;

  self->_performanceStatistics = statistics;
}

- (void)setConstantSamplerUniqueIdentifiers:(id)identifiers
{
  constantSamplerUniqueIdentifiers = self->_constantSamplerUniqueIdentifiers;
  if (constantSamplerUniqueIdentifiers != identifiers)
  {

    self->_constantSamplerUniqueIdentifiers = identifiers;
  }
}

- (id)vertexBindings
{
  if (self->_vertexBindings)
  {
    return self->_vertexBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)fragmentBindings
{
  if (self->_fragmentBindings)
  {
    return self->_fragmentBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)tileBindings
{
  if (self->_tileBindings)
  {
    return self->_tileBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)objectBindings
{
  if (self->_objectBindings)
  {
    return self->_objectBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)meshBindings
{
  if (self->_meshBindings)
  {
    return self->_meshBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v95[2] = *MEMORY[0x1E69E9840];
  v48 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  selfCopy = self;
  if ((self->_printStyle & 8) != 0)
  {
    v95[0] = v48;
    v95[1] = @"Object Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v95, 2)}];
    v94[0] = v5;
    v94[1] = @"bindingsCount =";
    v94[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_objectBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v94, 3)}];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = self->_objectBindings;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v93 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v73;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v73 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v72 + 1) + 8 * i);
          isArgument = [v12 isArgument];
          v14 = @"Global";
          if (isArgument)
          {
            v14 = @"Argument";
          }

          v92[0] = v5;
          v92[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v14, v9];
          v92[2] = [v12 formattedDescription:description + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v92, 3)}];
          v9 = (v9 + 1);
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v93 count:16];
      }

      while (v8);
    }
  }

  if ((selfCopy->_printStyle & 0x10) != 0)
  {
    v91[0] = v48;
    v91[1] = @"Mesh Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v91, 2)}];
    v90[0] = v5;
    v90[1] = @"bindingsCount =";
    v90[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](selfCopy->_meshBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v90, 3)}];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obja = selfCopy->_meshBindings;
    v15 = [(NSArray *)obja countByEnumeratingWithState:&v68 objects:v89 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v69;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v69 != v18)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v68 + 1) + 8 * j);
          isArgument2 = [v20 isArgument];
          v22 = @"Global";
          if (isArgument2)
          {
            v22 = @"Argument";
          }

          v88[0] = v5;
          v88[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v22, v17];
          v88[2] = [v20 formattedDescription:description + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v88, 3)}];
          v17 = (v17 + 1);
        }

        v16 = [(NSArray *)obja countByEnumeratingWithState:&v68 objects:v89 count:16];
      }

      while (v16);
    }
  }

  if (selfCopy->_printStyle)
  {
    v87[0] = v48;
    v87[1] = @"Vertex Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v87, 2)}];
    v86[0] = v5;
    v86[1] = @"bindingsCount =";
    v86[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](selfCopy->_vertexBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v86, 3)}];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    objb = selfCopy->_vertexBindings;
    v23 = [(NSArray *)objb countByEnumeratingWithState:&v64 objects:v85 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v65;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v65 != v26)
          {
            objc_enumerationMutation(objb);
          }

          v28 = *(*(&v64 + 1) + 8 * k);
          isArgument3 = [v28 isArgument];
          v30 = @"Global";
          if (isArgument3)
          {
            v30 = @"Argument";
          }

          v84[0] = v5;
          v84[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v30, v25];
          v84[2] = [v28 formattedDescription:description + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v84, 3)}];
          v25 = (v25 + 1);
        }

        v24 = [(NSArray *)objb countByEnumeratingWithState:&v64 objects:v85 count:16];
      }

      while (v24);
    }
  }

  if ((selfCopy->_printStyle & 2) != 0)
  {
    v83[0] = v48;
    v83[1] = @"Fragment Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v83, 2)}];
    v82[0] = v5;
    v82[1] = @"bindingsCount =";
    v82[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](selfCopy->_fragmentBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v82, 3)}];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    objc = selfCopy->_fragmentBindings;
    v31 = [(NSArray *)objc countByEnumeratingWithState:&v60 objects:v81 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v61;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v61 != v34)
          {
            objc_enumerationMutation(objc);
          }

          v36 = *(*(&v60 + 1) + 8 * m);
          isArgument4 = [v36 isArgument];
          v38 = @"Global";
          if (isArgument4)
          {
            v38 = @"Argument";
          }

          v80[0] = v5;
          v80[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v38, v33];
          v80[2] = [v36 formattedDescription:description + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v80, 3)}];
          v33 = (v33 + 1);
        }

        v32 = [(NSArray *)objc countByEnumeratingWithState:&v60 objects:v81 count:16];
      }

      while (v32);
    }
  }

  if ((selfCopy->_printStyle & 4) != 0)
  {
    v79[0] = v48;
    v79[1] = @"Tile Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v79, 2)}];
    v78[0] = v5;
    v78[1] = @"bindingsCount =";
    v78[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](selfCopy->_tileBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v78, 3)}];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    objd = selfCopy->_tileBindings;
    v39 = [(NSArray *)objd countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = *v57;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(objd);
          }

          v44 = *(*(&v56 + 1) + 8 * n);
          isArgument5 = [v44 isArgument];
          v46 = @"Global";
          if (isArgument5)
          {
            v46 = @"Argument";
          }

          v76[0] = v5;
          v76[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v46, v41];
          v76[2] = [v44 formattedDescription:description + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v76, 3)}];
          v41 = (v41 + 1);
        }

        v40 = [(NSArray *)objd countByEnumeratingWithState:&v56 objects:v77 count:16];
      }

      while (v40);
    }
  }

  v55.receiver = selfCopy;
  v55.super_class = MTLRenderPipelineReflectionInternal;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLRenderPipelineReflectionInternal description](&v55, sel_description), objc_msgSend(v6, "componentsJoinedByString:", @" "];
}

- (void)initWithReader:(void *)reader device:(uint64_t)device flags:
{
  if (result)
  {
    return [(MTLRenderPipelineReflectionInternal *)result initWithReader:a2 dylibReaders:0 dylibReaderCount:0 dylibGlobalBindingCount:0 device:reader flags:device];
  }

  return result;
}

- (void)initWithReader:(uint64_t)reader dylibReaders:(unsigned int)readers dylibReaderCount:(int)count dylibGlobalBindingCount:(void *)bindingCount device:(uint64_t)device flags:
{
  v58 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v57.receiver = self;
  v57.super_class = MTLRenderPipelineReflectionInternal;
  v13 = objc_msgSendSuper2(&v57, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[1] = device;
    v13[27] = 4;
    v15 = *(a2 + 8);
    *(v13 + 22) = *(v15 + 48);
    v16 = *(v15 + 16);
    v54 = *(v15 + 36);
    v56 = (v16 - v54);
    v55 = *(v15 + 8);
    v17 = *(v15 + 24);
    if (v16 || *(v13 + 22) != -1)
    {
      v13[7] = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v55 count:v56];
      v18 = *(v14 + 22);
      if (v18 != -1)
      {
        TraceBufferBinding = CreateTraceBufferBinding(v18);
        [v14[7] addObject:TraceBufferBinding];
      }
    }

    v20 = *(*(a2 + 8) + 32);
    v21 = [v14[7] count];
    v22 = v20 + count;
    v23 = (v20 + count + v21);
    if (v22 + v21)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v23];
      v25 = [v24 addObjectsFromArray:v14[7]];
      if (v20)
      {
        do
        {
          v33 = *v17++;
          v25 = [v24 addObject:v33];
          --v20;
        }

        while (v20);
      }

      if (readers)
      {
        v34 = 0;
        readersCopy = readers;
        do
        {
          v36 = *(reader + 8 * v34);
          if (v36)
          {
            v37 = *(*(v36 + 8) + 32);
            if (v37)
            {
              v38 = 0;
              v39 = 8 * v37;
              do
              {
                v40 = *(*(*(v36 + 8) + 24) + v38);
                v25 = [v24 containsObject:v40];
                if ((v25 & 1) == 0)
                {
                  v25 = [v24 addObject:v40];
                }

                v38 += 8;
              }

              while (v39 != v38);
            }
          }

          ++v34;
        }

        while (v34 != readersCopy);
      }

      v41 = OUTLINED_FUNCTION_1_6(v25, v26, v27, v28, v29, v30, v31, v32);
      if (v41)
      {
        v42 = v41;
        v43 = MEMORY[0];
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (MEMORY[0] != v43)
            {
              objc_enumerationMutation(v24);
            }

            _MTLFixIABReflectionOffsets(*(8 * i), bindingCount);
          }

          v42 = OUTLINED_FUNCTION_1_6(v45, v46, v47, v48, v49, v50, v51, v52);
        }

        while (v42);
      }

      v14[24] = v24;
    }

    if (v54)
    {
      v14[8] = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v55 + 8 * v56 count:v54];
    }
  }

  return v14;
}

- (void)initWithFragmentReader:(void *)reader device:(uint64_t)device flags:
{
  if (result)
  {
    return [(MTLRenderPipelineReflectionInternal *)result initWithFragmentReader:a2 dylibReaders:0 dylibReaderCount:0 dylibGlobalBindingCount:0 device:reader flags:device];
  }

  return result;
}

- (void)initWithFragmentReader:(uint64_t)reader dylibReaders:(unsigned int)readers dylibReaderCount:(int)count dylibGlobalBindingCount:(void *)bindingCount device:(uint64_t)device flags:
{
  if (!self)
  {
    return 0;
  }

  v8 = [(MTLRenderPipelineReflectionInternal *)self initWithReader:a2 dylibReaders:reader dylibReaderCount:readers dylibGlobalBindingCount:count device:bindingCount flags:device];
  v9 = v8;
  if (v8)
  {
    v8[27] = 4;
    v10 = *(a2 + 16);
    if (*(v10 + 136) == 1)
    {
      v8[9] = *(v10 + 128);
    }
  }

  return v9;
}

@end