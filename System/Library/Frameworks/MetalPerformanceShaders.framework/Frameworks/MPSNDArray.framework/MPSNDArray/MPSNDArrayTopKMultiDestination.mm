@interface MPSNDArrayTopKMultiDestination
- (MPSNDArrayTopKMultiDestination)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayTopKMultiDestination)initWithDevice:(id)device K:(unint64_t)k computeGradient:(BOOL)gradient;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorsForSourceArrays:(id)arrays sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayTopKMultiDestination

- (id)destinationArrayDescriptorsForSourceArrays:(id)arrays sourceState:(id)state
{
  v47[16] = *MEMORY[0x277D85DE8];
  v5 = [arrays objectAtIndexedSubscript:{0, state}];
  v47[0] = self->_K;
  v6 = (v5 + *MEMORY[0x277CD7410]);
  v7 = (v5 + *MEMORY[0x277CD73D8]);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  v11 = v6[3];
  v12 = v7[1] & 0xF;
  v45[2] = v10;
  v45[3] = v11;
  v45[0] = v8;
  v45[1] = v9;
  v47[1] = *(v45 + v12);
  v13 = v7[2] & 0xF;
  v44[2] = v10;
  v44[3] = v11;
  v44[0] = v8;
  v44[1] = v9;
  v47[2] = *(v44 + v13);
  v14 = v7[3] & 0xF;
  v43[2] = v10;
  v43[3] = v11;
  v43[0] = v8;
  v43[1] = v9;
  v47[3] = *(v43 + v14);
  v15 = v7[4] & 0xF;
  v42[2] = v10;
  v42[3] = v11;
  v42[0] = v8;
  v42[1] = v9;
  v47[4] = *(v42 + v15);
  v16 = v7[5] & 0xF;
  v41[2] = v10;
  v41[3] = v11;
  v41[0] = v8;
  v41[1] = v9;
  v47[5] = *(v41 + v16);
  v17 = v7[6] & 0xF;
  v40[2] = v10;
  v40[3] = v11;
  v40[0] = v8;
  v40[1] = v9;
  v47[6] = *(v40 + v17);
  v18 = v7[7] & 0xF;
  v39[2] = v10;
  v39[3] = v11;
  v39[0] = v8;
  v39[1] = v9;
  v47[7] = *(v39 + v18);
  v19 = v7[8] & 0xF;
  v38[2] = v10;
  v38[3] = v11;
  v38[0] = v8;
  v38[1] = v9;
  v47[8] = *(v38 + v19);
  v20 = v7[9] & 0xF;
  v37[2] = v10;
  v37[3] = v11;
  v37[0] = v8;
  v37[1] = v9;
  v47[9] = *(v37 + v20);
  v21 = v7[10] & 0xF;
  v36[2] = v10;
  v36[3] = v11;
  v36[0] = v8;
  v36[1] = v9;
  v47[10] = *(v36 + v21);
  v22 = v7[11] & 0xF;
  v35[2] = v10;
  v35[3] = v11;
  v35[0] = v8;
  v35[1] = v9;
  v47[11] = *(v35 + v22);
  v23 = v7[12] & 0xF;
  v34[2] = v10;
  v34[3] = v11;
  v34[0] = v8;
  v34[1] = v9;
  v47[12] = *(v34 + v23);
  v24 = v7[13] & 0xF;
  v33[2] = v10;
  v33[3] = v11;
  v33[0] = v8;
  v33[1] = v9;
  v47[13] = *(v33 + v24);
  v25 = v7[14] & 0xF;
  v32[2] = v10;
  v32[3] = v11;
  v32[0] = v8;
  v32[1] = v9;
  v47[14] = *(v32 + v25);
  v26 = v7[15] & 0xF;
  v31[2] = v10;
  v31[3] = v11;
  v31[0] = v8;
  v31[1] = v9;
  v47[15] = *(v31 + v26);
  v27 = MEMORY[0x277CD73F0];
  v28 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v5 + *MEMORY[0x277CD73C8]) dimensionCount:*(v5 + *MEMORY[0x277CD73F0]) dimensionSizes:{v47, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8}];
  v29 = [MEMORY[0x277CD7268] descriptorWithDataType:536870944 dimensionCount:*(v5 + *v27) dimensionSizes:v47];
  v46[0] = v28;
  v46[1] = v29;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
}

- (MPSNDArrayTopKMultiDestination)initWithDevice:(id)device K:(unint64_t)k computeGradient:(BOOL)gradient
{
  if (gradient)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (gradient)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v10.receiver = self;
  v10.super_class = MPSNDArrayTopKMultiDestination;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v10 initWithDevice:device sourceCount:v7 destinationCount:v8];
  result->super._encode = EncodeTopKMultiDestinationBase;
  result->super.super._encodeData = result;
  result->_K = k;
  result->_computeGradient = gradient;
  return result;
}

- (MPSNDArrayTopKMultiDestination)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayTopKMultiDestination;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    result->super._encode = EncodeTopKMultiDestination;
    result->super.super._encodeData = result;
    v6 = result;
    v7 = [coder decodeInt64ForKey:@"MPSNDArrayTopK.K"];
    result = v6;
    v6->_K = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayTopKMultiDestination;
  [(MPSNDArrayMultiaryMultiDestinationBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_K forKey:@"MPSNDArrayTopK.K"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayTopKMultiDestination;
  result = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super._encode = EncodeTopKMultiDestination;
    self->super.super._encodeData = self;
    *(result + 15) = self->_K;
  }

  return result;
}

@end