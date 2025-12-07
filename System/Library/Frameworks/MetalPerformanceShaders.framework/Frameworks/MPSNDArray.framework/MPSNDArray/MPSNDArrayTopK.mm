@interface MPSNDArrayTopK
- (MPSNDArrayTopK)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayTopK)initWithDevice:(id)device;
- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k;
- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k findIndices:(BOOL)indices;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayTopK

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v66[16] = *MEMORY[0x277D85DE8];
  v5 = [arrays objectAtIndexedSubscript:{0, state}];
  v66[0] = self->_K;
  v6 = (v5 + *MEMORY[0x277CD7410]);
  v7 = (v5 + *MEMORY[0x277CD73D8]);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[3];
  v11 = v7[1] & 0xF;
  v64 = v6[2];
  v65 = v10;
  v63[0] = v8;
  v63[1] = v9;
  v66[1] = *(v63 + v11);
  v12 = v7[2] & 0xF;
  v62[2] = v64;
  v62[3] = v10;
  v62[0] = v8;
  v62[1] = v9;
  v66[2] = *(v62 + v12);
  v13 = v7[3] & 0xF;
  v61[2] = v64;
  v61[3] = v10;
  v61[0] = v8;
  v61[1] = v9;
  v66[3] = *(v61 + v13);
  v14 = v7[4] & 0xF;
  v60[2] = v64;
  v60[3] = v10;
  v60[0] = v8;
  v60[1] = v9;
  v66[4] = *(v60 + v14);
  v15 = v7[5] & 0xF;
  v59[2] = v64;
  v59[3] = v10;
  v59[0] = v8;
  v59[1] = v9;
  v66[5] = *(v59 + v15);
  v16 = v7[6] & 0xF;
  v58[2] = v64;
  v58[3] = v10;
  v58[0] = v8;
  v58[1] = v9;
  v66[6] = *(v58 + v16);
  v17 = v7[7] & 0xF;
  v57[2] = v64;
  v57[3] = v10;
  v57[0] = v8;
  v57[1] = v9;
  v66[7] = *(v57 + v17);
  v18 = v7[8] & 0xF;
  v56[2] = v64;
  v56[3] = v10;
  v56[0] = v8;
  v56[1] = v9;
  v66[8] = *(v56 + v18);
  v19 = v7[9] & 0xF;
  v54 = v64;
  v55 = v10;
  v52 = v8;
  v53 = v9;
  v66[9] = *(&v52 + v19);
  v20 = v7[10] & 0xF;
  v50 = v64;
  v51 = v10;
  v48 = v8;
  v49 = v9;
  v66[10] = *(&v48 + v20);
  v21 = v7[11] & 0xF;
  v46 = v64;
  v47 = v10;
  v44 = v8;
  v45 = v9;
  v66[11] = *(&v44 + v21);
  v22 = v7[12] & 0xF;
  v42 = v64;
  v43 = v10;
  v40 = v8;
  v41 = v9;
  v66[12] = *(&v40 + v22);
  v23 = v7[13] & 0xF;
  v38 = v64;
  v39 = v10;
  v36 = v8;
  v37 = v9;
  v66[13] = *(&v36 + v23);
  v24 = v7[14] & 0xF;
  v34 = v64;
  v35 = v10;
  v32 = v8;
  v33 = v9;
  v66[14] = *(&v32 + v24);
  v25 = v7[15] & 0xF;
  v30 = v64;
  v31 = v10;
  v28 = v8;
  v29 = v9;
  v66[15] = *(&v28 + v25);
  if (self->_findIndices)
  {
    v26 = 536870944;
  }

  else
  {
    v26 = *(v5 + *MEMORY[0x277CD73C8]);
  }

  return [MEMORY[0x277CD7268] descriptorWithDataType:v26 dimensionCount:*(v5 + *MEMORY[0x277CD73F0]) dimensionSizes:{v66, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0]}];
}

- (MPSNDArrayTopK)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeTopK;
  result->super.super.super._encodeData = result;
  result->_findIndices = 0;
  result->_K = 1;
  return result;
}

- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v6 initWithDevice:device];
  result->super.super._encode = EncodeTopK;
  result->super.super.super._encodeData = result;
  result->_findIndices = 0;
  result->_K = k;
  return result;
}

- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k findIndices:(BOOL)indices
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithDevice:device];
  result->super.super._encode = EncodeTopK;
  result->super.super.super._encodeData = result;
  result->_findIndices = indices;
  result->_K = k;
  return result;
}

- (MPSNDArrayTopK)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeTopK;
    result->super.super.super._encodeData = result;
    v6 = result;
    result->_findIndices = [coder decodeBoolForKey:@"MPSNDArrayTopK.findIndices"];
    v7 = [coder decodeInt64ForKey:@"MPSNDArrayTopK.K"];
    result = v6;
    v6->_K = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayTopK;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeBool:self->_findIndices forKey:@"MPSNDArrayTopK.findIndices"];
  [coder encodeInt64:self->_K forKey:@"MPSNDArrayTopK.K"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super._encode = EncodeTopK;
    self->super.super.super._encodeData = self;
    *(result + 672) = self->_findIndices;
    *(result + 83) = self->_K;
  }

  return result;
}

@end