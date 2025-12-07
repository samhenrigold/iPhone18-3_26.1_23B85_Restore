@interface _MTL4MachineLearningPipelineState
- (_MTL4MachineLearningPipelineState)initWithDevice:(id)device descriptor:(id)descriptor executable:(id)executable functionName:(id)name deviceSelection:(int64_t)selection;
- (id)optimizedBytecode;
- (id)runWithInputsArray:(id)array resultsArray:(id)resultsArray intermediateOperations:(id)operations;
- (void)dealloc;
@end

@implementation _MTL4MachineLearningPipelineState

- (_MTL4MachineLearningPipelineState)initWithDevice:(id)device descriptor:(id)descriptor executable:(id)executable functionName:(id)name deviceSelection:(int64_t)selection
{
  v14.receiver = self;
  v14.super_class = _MTL4MachineLearningPipelineState;
  v12 = [(_MTLAllocation *)&v14 initWithAllocationType:5];
  if (v12)
  {
    -[_MTLObjectWithLabel setLabel:](v12, "setLabel:", [descriptor label]);
    v12->_device = device;
    v12->_executable = executable;
    v12->_intermediatesHeapSize = 64;
    v12->_deviceSelection = selection;
    v12->_functionName = [name copy];
  }

  return v12;
}

- (void)dealloc
{
  self->_executable = 0;

  self->_functionName = 0;
  self->_reflection = 0;

  self->_inputShapes = 0;
  self->_outputShapes = 0;
  v3.receiver = self;
  v3.super_class = _MTL4MachineLearningPipelineState;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (id)optimizedBytecode
{
  v3 = [(objc_class *)getMPSGraphClassByName("MPSGraphDevice") deviceWithMTLDevice:self->_device];
  v4 = _MTLNewMPSGraphCompilationDescriptor(self->_deviceSelection);
  executable = self->_executable;
  inputShapes = self->_inputShapes;

  return [(MPSGraphExecutableProxy *)executable optimizedBytecode:v3 inputShapes:inputShapes compilationDescriptor:v4];
}

- (id)runWithInputsArray:(id)array resultsArray:(id)resultsArray intermediateOperations:(id)operations
{
  v75[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  operationsCopy = operations;
  v69 = 72;
  resultsArrayCopy = resultsArray;
  v74 = 56;
  v72 = [(objc_class *)getMPSGraphClassByName("MPSGraphDevice") deviceWithMTLDevice:self->_device];
  MPSGraphClassByName = getMPSGraphClassByName("MPSGraphTensorData");
  v10 = [array count];
  v71 = &v67;
  v11 = &v67 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0x1E695D000uLL;
  if (v10)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      arrayCopy = array;
      v16 = [array objectAtIndexedSubscript:v13];
      if ([v16 isEqual:{objc_msgSend(*(v12 + 4016), "null")}])
      {
        v16 = 0;
      }

      v17 = v12;
      v18 = *(&self->super.super.super.isa + v74);
      v19 = [(NSArray *)self->_inputShapes objectAtIndexedSubscript:v13];
      v20 = v18;
      v12 = v17;
      v21 = v16;
      array = arrayCopy;
      *&v11[8 * v13] = _NewTensorDataWithMTLTensor(v20, v21, v13, MPSGraphClassByName, v19);
      v13 = v14;
      v22 = v10 > v14++;
    }

    while (v22);
  }

  v70 = MPSGraphClassByName;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:v10];
  v24 = *(&self->super.super.super.isa + v69);
  v69 = v23;
  operationsCopy = [v24 newExecutableWithDevice:v72 inputsArray:? intermediateOperations:? executionDescriptor:?];
  getOutputShapes = [operationsCopy getOutputShapes];
  v26 = getOutputShapes;
  v27 = resultsArrayCopy;
  selfCopy = self;
  if (!resultsArrayCopy)
  {
    v29 = [getOutputShapes count];
    resultsArrayCopy = &v67;
    v67 = v29;
    v30 = 8 * v29;
    v31 = (&v67 - ((8 * v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = [v26 count];
    v33 = v74;
    if (v32)
    {
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = [v26 objectAtIndexedSubscript:v34];
        v75[0] = 0;
        v37 = objc_opt_new();
        [v37 setDimensions:{TensorExtentsFromMPSShape(objc_msgSend(v36, "shape"))}];
        dataType = [v36 dataType];
        [v37 setDataType:{MTLTensorDataTypeFromMPSDataType(dataType, v39, v40, v41, v42, v43, v44, v45)}];
        [v37 setUsage:4];
        v46 = [*(&selfCopy->super.super.super.isa + v33) newTensorWithDescriptor:v37 error:v75];

        v31[v34] = v46;
        v34 = v35;
        v22 = [v26 count] > v35++;
      }

      while (v22);
    }

    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:{objc_msgSend(v26, "count")}];
    if (v67)
    {
      do
      {
        v47 = *v31++;

        v30 -= 8;
      }

      while (v30);
    }
  }

  resultsArrayCopy = &v67 - ((8 * [v26 count] + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = [v26 count];
  v49 = v70;
  v50 = v74;
  v51 = 0x1E695D000uLL;
  if (v48)
  {
    v52 = selfCopy;
    v53 = 0;
    v54 = 1;
    do
    {
      v55 = v27;
      v56 = [v27 objectAtIndexedSubscript:v53];
      if ([v56 isEqual:{objc_msgSend(*(v51 + 4016), "null")}])
      {
        v56 = 0;
      }

      v57 = v51;
      v58 = *(&v52->super.super.super.isa + v50);
      v59 = [v26 objectAtIndexedSubscript:v53];
      v60 = v58;
      v51 = v57;
      v61 = v56;
      v27 = v55;
      v62 = _NewTensorDataWithMTLTensor(v60, v61, v53, v49, v59);
      *&resultsArrayCopy[8 * v53] = v62;
      v53 = v54;
      v22 = [v26 count] > v54++;
    }

    while (v22);
  }

  v63 = MEMORY[0x1E695DEC8];
  v64 = [v26 count];
  v65 = [v63 arrayWithObjects:resultsArrayCopy count:v64];
  [operationsCopy runWithDevice:v72 inputsArray:v69 resultsArray:v65 executionDescriptor:0];
  return v27;
}

@end