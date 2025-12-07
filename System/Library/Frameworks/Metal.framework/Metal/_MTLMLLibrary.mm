@interface _MTLMLLibrary
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (NSArray)functionNames;
- (_MTLMLLibrary)initWithDevice:(id)device executable:(id)executable url:(id)url reflection:(id)reflection;
- (id)executableWithDeviceSelection:(int64_t)selection;
- (id)newExternFunctionWithName:(id)name;
- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error;
- (id)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache error:(id *)error;
- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error;
- (id)reflectionForFunctionWithName:(id)name;
- (void)dealloc;
@end

@implementation _MTLMLLibrary

- (_MTLMLLibrary)initWithDevice:(id)device executable:(id)executable url:(id)url reflection:(id)reflection
{
  v13.receiver = self;
  v13.super_class = _MTLMLLibrary;
  v10 = [(_MTLObjectWithLabel *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_device = device;
    v10->_executables[0] = executable;
    v11->_mpsgraphPackageURL = [url copy];
    v11->_reflection = reflection;
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_type = 0;
  }

  return v11;
}

- (id)executableWithDeviceSelection:(int64_t)selection
{
  os_unfair_lock_lock(&self->_lock);
  if (selection > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_executables[selection];
    if (!v5)
    {
      MPSGraphClassByName = getMPSGraphClassByName("MPSGraphExecutable");
      v7 = _MTLNewMPSGraphCompilationDescriptor(selection);
      v5 = [[MPSGraphClassByName alloc] initWithMPSGraphPackageAtURL:self->_mpsgraphPackageURL compilationDescriptor:v7];

      self->_executables[selection] = v5;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)dealloc
{
  v3 = 0;
  executables = self->_executables;
  do
  {
  }

  while (v3 != 3);

  self->_reflection = 0;
  v5.receiver = self;
  v5.super_class = _MTLMLLibrary;
  [(_MTLObjectWithLabel *)&v5 dealloc];
}

- (NSArray)functionNames
{
  reflection = self->_reflection;
  if (reflection)
  {
    return [(MPSGraphExecutableReflectionProxy *)reflection functionNames];
  }

  else
  {
    return &unk_1EF4CFDE0;
  }
}

- (id)reflectionForFunctionWithName:(id)name
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v32 = 0;
    return v32;
  }

  if ([-[MPSGraphExecutableReflectionProxy functionNames](self->_reflection "functionNames")])
  {
    v12 = [(MPSGraphExecutableReflectionProxy *)self->_reflection inputNamesForFunction:name];
    v13 = [(MPSGraphExecutableReflectionProxy *)self->_reflection outputNamesForFunction:name];
    v14 = [(MPSGraphExecutableReflectionProxy *)self->_reflection inputShapesForFunction:name];
    v15 = [(MPSGraphExecutableReflectionProxy *)self->_reflection outputShapesForFunction:name];
    v37 = v14;
    v16 = [v14 count];
    v17 = [v15 count] + v16;
    std::vector<objc_object  {objcproto10MTLBinding}*>::vector[abi:ne200100](&v38, v17);
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        if (v16 <= i)
        {
          v19 = &stru_1EF478240;
          if (i - v16 < [v13 count])
          {
            v19 = [v13 objectAtIndexedSubscript:i - v16];
          }

          v20 = [v15 objectAtIndexedSubscript:i - v16];
        }

        else
        {
          v19 = &stru_1EF478240;
          if ([v12 count] > i)
          {
            v19 = [v12 objectAtIndexedSubscript:i];
          }

          v20 = [v37 objectAtIndexedSubscript:i];
        }

        v21 = v20;
        dataType = [v20 dataType];
        v30 = MTLTensorDataTypeFromMPSDataType(dataType, v23, v24, v25, v26, v27, v28, v29);
        v31 = -[MTLTensorBindingInternal initWithName:access:isActive:locationIndex:arrayLength:dataType:indexType:dimensions:]([MTLTensorBindingInternal alloc], "initWithName:access:isActive:locationIndex:arrayLength:dataType:indexType:dimensions:", v19, 2 * (v16 <= i), 1, i, 1, v30, 33, TensorExtentsFromMPSShape([v21 shape]));
        v38[i] = v31;
      }
    }

    LODWORD(v36) = 0;
    v32 = [MTLFunctionReflectionInternal initWithArguments:"initWithArguments:argumentCount:builtInArgumentCount:globalBindings:globalBindingCount:pluginReturnData:primitiveKind:tags:tagCount:returnType:userAnnotation:attributes:" argumentCount:0 builtInArgumentCount:0 globalBindings:v36 globalBindingCount:0 pluginReturnData:0 primitiveKind:0 tags:? tagCount:? returnType:? userAnnotation:? attributes:?];
    v33 = v38;
    v34 = v39;
    if (v38 != v39)
    {
      do
      {
      }

      while (v33 != v34);
      v33 = v38;
    }

    if (v33)
    {
      v39 = v33;
      operator delete(v33);
    }

    return v32;
  }

  [(_MTLMLLibrary *)name reflectionForFunctionWithName:v5, v6, v7, v8, v9, v10, v11];
  return 0;
}

- (id)newExternFunctionWithName:(id)name
{
  uTF8String = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newExternFunctionWithName:]", 21832, @"%s is not supported for machine learning libraries", v4, v5, v6, v7, uTF8String);
  return 0;
}

- (id)newFunctionWithDescriptor:(id)descriptor destinationArchive:(id)archive error:(id *)error
{
  uTF8String = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newFunctionWithDescriptor:destinationArchive:error:]", 21837, @"%s is not supported for machine learning libraries", v6, v7, v8, v9, uTF8String);
  return 0;
}

- (id)newFunctionWithName:(id)name constantValues:(id)values functionCache:(id)cache error:(id *)error
{
  uTF8String = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newFunctionWithName:constantValues:functionCache:error:]", 21842, @"%s is not supported for machine learning libraries", v7, v8, v9, v10, uTF8String);
  return 0;
}

- (id)newFunctionWithName:(id)name constantValues:(id)values pipelineLibrary:(id)library error:(id *)error
{
  uTF8String = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary newFunctionWithName:constantValues:pipelineLibrary:error:]", 21851, @"%s is not supported for machine learning libraries", v7, v8, v9, v10, uTF8String);
  return 0;
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  uTF8String = [NSStringFromSelector(a2) UTF8String];
  MTLReportFailure(0, "[_MTLMLLibrary serializeToURL:error:]", 21856, @"%s is not supported for machine learning libraries", v5, v6, v7, v8, uTF8String);
  return 0;
}

@end