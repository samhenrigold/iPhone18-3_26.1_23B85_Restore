@interface MTLComputePipelineReflectionInternal
- (MTLComputePipelineReflectionInternal)initWithSerializedData:(id)data dynamicLibraries:(id)libraries serializedStageInputDescriptor:(id)descriptor device:(id)device options:(unint64_t)options flags:(id)flags;
- (id)bindings;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)setConstantSamplerUniqueIdentifiers:(id)identifiers;
- (void)setPerformanceStatistics:(id)statistics;
@end

@implementation MTLComputePipelineReflectionInternal

- (MTLComputePipelineReflectionInternal)initWithSerializedData:(id)data dynamicLibraries:(id)libraries serializedStageInputDescriptor:(id)descriptor device:(id)device options:(unint64_t)options flags:(id)flags
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MTLComputePipelineReflectionInternal;
  *([(MTLComputePipelineReflectionInternal *)&v14 init]+ 4) = *&flags;
  v12 = MTLNewReflectionData(data);
  MTLNewReflectionPluginData(data);
  ReflectionValidator<MTLComputeReflectionReader>::Validate(device, options, data, descriptor);
  ReflectionReaderFactory<MTLComputeReflectionReader>::Create(options, v12);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLComputePipelineReflectionInternal;
  [(MTLComputePipelineReflectionInternal *)&v3 dealloc];
}

- (void)setPerformanceStatistics:(id)statistics
{
  statisticsCopy = statistics;

  self->_performanceStatistics = statistics;
}

- (void)setConstantSamplerUniqueIdentifiers:(id)identifiers
{
  constantSamplerDescriptors = self->_constantSamplerDescriptors;
  if (constantSamplerDescriptors != identifiers)
  {

    self->_constantSamplerDescriptors = identifiers;
  }
}

- (id)bindings
{
  if (self[1].super.super.isa)
  {
    return self[1].super.super.isa;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v26[3] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v26[0] = v5;
  v26[1] = @"Compute Bindings =";
  v26[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[objc_class count](self[1].super.super.isa, "count")}];
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 3)}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  obj = self[1].super.super.isa;
  v8 = [(objc_class *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        isArgument = [v13 isArgument];
        v15 = @"Global";
        if (isArgument)
        {
          v15 = @"Argument";
        }

        v24[0] = v6;
        v24[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v15, v10];
        v24[2] = [v13 formattedDescription:description + 8];
        [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v24, 3)}];
        v10 = (v10 + 1);
      }

      v9 = [(objc_class *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  v19.receiver = selfCopy;
  v19.super_class = MTLComputePipelineReflectionInternal;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLComputePipelineReflectionInternal description](&v19, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
}

@end