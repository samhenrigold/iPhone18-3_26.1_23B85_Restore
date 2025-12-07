@interface MPSNDArrayStridedSliceGradient
- (MPSNDArrayStridedSliceGradient)initWithDevice:(id)device;
- (double)stridesAtSourceIndex:(_OWORD *)index@<X8>;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceArray:(id)array sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)destinationArray;
- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array;
@end

@implementation MPSNDArrayStridedSliceGradient

- (double)stridesAtSourceIndex:(_OWORD *)index@<X8>
{
  result = 0.0;
  index[2] = 0u;
  index[3] = 0u;
  *index = xmmword_239B0A0D0;
  index[1] = 0u;
  return result;
}

- (MPSNDArrayStridedSliceGradient)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayStridedSliceGradient;
  v4 = [(MPSNDArrayUnaryGradientKernel *)&v6 initWithDevice:?];
  v4->_zeroFillKernel = [[MPSNDArrayInitializationConstant alloc] initWithDevice:device constantValue:0.0];
  v4->super.super.super._encodeGradient = EncodeStridedSliceGradient;
  v4->super.super.super._encodeData = v4;
  return v4;
}

- (void)encodeToCommandBuffer:(id)buffer sourceArray:(id)array sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)destinationArray
{
  v61[1] = *MEMORY[0x277D85DE8];
  [(MPSNDArrayInitialization *)self->_zeroFillKernel encodeToCommandBuffer:buffer destinationArray:destinationArray];
  numberOfDimensions = [destinationArray numberOfDimensions];
  v61[0] = array;
  v14 = -[MPSNDArrayMultiaryBase maxSupportedDimensionsForSourceArrays:destinationArray:](self, "maxSupportedDimensionsForSourceArrays:destinationArray:", [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1], destinationArray);
  if (numberOfDimensions > v14 && MTLReportFailureTypeEnabled())
  {
    v32 = v14;
    MTLReportFailure();
  }

  v15 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:buffer withDispatchType:0];
  v38 = v15;
  selfCopy = self;
  if ((*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v16 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v16 || (v17 = objc_opt_class(), v16 = NSStringFromClass(v17), [(MPSKernel *)self setLabel:v16], v16))
    {
      [v15 setLabel:{v16, v32}];
    }
  }

  arrayCopy = array;
  v18 = -[MPSNDArrayStridedSliceGradient kernelDimensionalityForSourceArrays:](self, "kernelDimensionalityForSourceArrays:", [MEMORY[0x277CBEA60] arrayWithObjects:&arrayCopy count:{1, v32}]);
  objc_msgSend_stridesAtSourceIndex_(self);
  v58[2] = v37[6];
  v58[3] = v37[7];
  v58[0] = v37[4];
  v58[1] = v37[5];
  srcCount = self->super.super.super._srcCount;
  v59 = 0;
  v41[0] = srcCount;
  v41[1] = v58;
  arrayCopy2 = array;
  v41[2] = [MEMORY[0x277CBEA60] arrayWithObjects:&arrayCopy2 count:1];
  v41[3] = state;
  *&v20 = 0x100000001;
  *(&v20 + 1) = 0x100000001;
  v44 = v20;
  v45 = v20;
  v42 = v20;
  v43 = v20;
  v50 = v20;
  v51 = v20;
  v48 = v20;
  v49 = v20;
  v52 = 0;
  v53 = 0;
  gradientCopy = gradient;
  v46 = 0;
  destinationArrayCopy = destinationArray;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  if (numberOfDimensions)
  {
    v21 = 0;
    v22 = *(state + 7);
    v24 = v22[2];
    v23 = v22[3];
    v26 = *v22;
    v25 = v22[1];
    *&v27 = 0x100000001;
    *(&v27 + 1) = 0x100000001;
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    *&v29 = 0x100000001;
    *(&v29 + 1) = 0x100000001;
    do
    {
      v37[0] = v26;
      v37[1] = v25;
      v37[2] = v24;
      v37[3] = v23;
      v30 = 4 * (v21 & 0xF);
      v31 = *(v37 + v30);
      v33 = v20;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      *(&v33 + v30) = v31;
      v28 = v35;
      v29 = v36;
      v20 = v33;
      v27 = v34;
      ++v21;
    }

    while (numberOfDimensions != v21);
    v48 = v33;
    v49 = v34;
    v50 = v35;
    v51 = v36;
  }

  CallNDArrayGradientEncode(self, v15, buffer, numberOfDimensions - 1, v18, v41, 0);
  [v15 endEncoding];
}

- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array
{
  v12 = [arrays objectAtIndexedSubscript:0];

  [(MPSNDArrayStridedSliceGradient *)self encodeToCommandBuffer:buffer sourceArray:v12 sourceGradient:gradient gradientState:state destinationArray:array];
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v17[16] = *MEMORY[0x277D85DE8];
  v4 = [arrays objectAtIndexedSubscript:{0, state}];
  v5 = *(v4 + *MEMORY[0x277CD73F0]);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + *MEMORY[0x277CD7410]);
    v9 = v7[2];
    v8 = v7[3];
    v11 = *v7;
    v10 = v7[1];
    do
    {
      v13 = v11;
      v14 = v10;
      v15 = v9;
      v16 = v8;
      v17[v6] = *(&v13 + (v6 & 0xF));
      ++v6;
    }

    while (v5 != v6);
  }

  return [MEMORY[0x277CD7268] descriptorWithDataType:*(v4 + *MEMORY[0x277CD73C8]) dimensionCount:v13 dimensionSizes:{v14, v15, v16}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayStridedSliceGradient;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end