@interface MPSNDArrayIdentity
- (MPSNDArrayIdentity)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayIdentity)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)reshapeWithCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArray:(id)array dimensionCount:(unint64_t)count dimensionSizes:(unint64_t *)sizes destinationArray:(id)destinationArray;
- (id)reshapeWithCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArray:(id)array shape:(id)shape destinationArray:(id)destinationArray;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayIdentity

- (MPSNDArrayIdentity)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIdentity;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeArrayIdentity;
  result->super.super.super._encodeData = result;
  return result;
}

- (MPSNDArrayIdentity)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayIdentity;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeArrayIdentity;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayIdentity;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayIdentity;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super._encode = EncodeArrayIdentity;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayIdentity;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (id)reshapeWithCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArray:(id)array shape:(id)shape destinationArray:(id)destinationArray
{
  v21 = *MEMORY[0x277D85DE8];
  if (shape || (*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0)
  {
    result = 0;
    if (array && shape)
    {
      v20[4] = xmmword_239B19B78;
      v20[5] = unk_239B19B88;
      v20[6] = xmmword_239B19B98;
      v20[7] = unk_239B19BA8;
      v20[0] = xmmword_239B19B38;
      v20[1] = unk_239B19B48;
      v20[2] = xmmword_239B19B58;
      v20[3] = unk_239B19B68;
      v14 = [shape count];
      v15 = v14;
      if (v14)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          *(&v19 + v17--) = [objc_msgSend(shape objectAtIndexedSubscript:{v16++), "unsignedIntValue"}];
        }

        while (v17);
      }

      return [(MPSNDArrayIdentity *)self reshapeWithCommandEncoder:encoder commandBuffer:buffer sourceArray:array dimensionCount:v15 dimensionSizes:v20 destinationArray:destinationArray];
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (id)reshapeWithCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArray:(id)array dimensionCount:(unint64_t)count dimensionSizes:(unint64_t *)sizes destinationArray:(id)destinationArray
{
  v138 = *MEMORY[0x277D85DE8];
  v11 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7378]);
  if ((v11 & 1) == 0)
  {
    if (sizes)
    {
      if (array)
      {
        goto LABEL_4;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_73;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_73;
    }

    v84 = objc_opt_class();
    NSStringFromClass(v84);
LABEL_72:
    MTLReportFailure();
LABEL_73:

    return 0;
  }

LABEL_4:
  result = 0;
  if (!array || !sizes)
  {
    return result;
  }

  v13 = MEMORY[0x277CD73F0];
  v14 = *MEMORY[0x277CD73F0];
  v15 = *(array + v14);
  v16.n128_u64[0] = 0x100000001;
  v16.n128_u64[1] = 0x100000001;
  if (v15)
  {
    v17 = 0;
    v18 = (array + *MEMORY[0x277CD7410]);
    v8 = v18[2];
    v19 = v18[3];
    v20 = *v18;
    v9 = v18[1];
    v21 = *(array + *MEMORY[0x277CD73D8]);
    *&v22 = 0x100000001;
    *(&v22 + 1) = 0x100000001;
    v23 = 1;
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    v25.i64[0] = 0x100000001;
    v25.i64[1] = 0x100000001;
    *&v26 = 0x100000001;
    *(&v26 + 1) = 0x100000001;
    do
    {
      v117 = v21;
      v122[0] = v20;
      v122[1] = v9;
      v122[2] = v8;
      v122[3] = v19;
      v27 = *(v122 + (*(&v117 | v17 & 0xF) & 0xF));
      v118 = v22;
      v119 = v24;
      v120 = v25;
      v121 = v26;
      *(&v118 + (v17 & 0xF)) = v27;
      v25 = v120;
      v26 = v121;
      v22 = v118;
      v24 = v119;
      v23 *= v27;
      ++v17;
    }

    while (v15 != v17);
    if (count)
    {
LABEL_10:
      v28 = 0;
      v16.n128_u64[0] = 0x100000001;
      v16.n128_u64[1] = 0x100000001;
      v29 = 1;
      v30.n128_u64[0] = 0x100000001;
      v30.n128_u64[1] = 0x100000001;
      v31.n128_u64[0] = 0x100000001;
      v31.n128_u64[1] = 0x100000001;
      v32.n128_u64[0] = 0x100000001;
      v32.n128_u64[1] = 0x100000001;
      do
      {
        v33 = sizes[v28];
        v113 = v16;
        v114 = v30;
        v115 = v31;
        v116 = v32;
        v113.n128_u32[v28 & 0xF] = v33;
        v31 = v115;
        v32 = v116;
        v16 = v113;
        v30 = v114;
        v29 *= v33;
        ++v28;
      }

      while (count != v28);
      if (v11)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v23 = 1;
    *&v22 = 0x100000001;
    *(&v22 + 1) = 0x100000001;
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    v25.i64[0] = 0x100000001;
    v25.i64[1] = 0x100000001;
    *&v26 = 0x100000001;
    *(&v26 + 1) = 0x100000001;
    if (count)
    {
      goto LABEL_10;
    }
  }

  v29 = 1;
  v30.n128_u64[0] = 0x100000001;
  v30.n128_u64[1] = 0x100000001;
  v31.n128_u64[0] = 0x100000001;
  v31.n128_u64[1] = 0x100000001;
  v32.n128_u64[0] = 0x100000001;
  v32.n128_u64[1] = 0x100000001;
  if (v11)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (v29 != v23)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_73;
    }

    goto LABEL_81;
  }

LABEL_17:
  if (v29 != v23)
  {
    return 0;
  }

  if ((v11 & 1) != 0 || !destinationArray)
  {
    goto LABEL_25;
  }

  if (*(destinationArray + v14) != count)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_73;
    }

LABEL_81:
    v85 = objc_opt_class();
    NSStringFromClass(v85);
    goto LABEL_72;
  }

  if (count)
  {
    v35 = 0;
    v36 = (destinationArray + *MEMORY[0x277CD7410]);
    v8 = v36[2];
    v37 = v36[3];
    v38 = MEMORY[0x277CD73D8];
    v39 = *v36;
    v9 = v36[1];
    v40 = *(destinationArray + *MEMORY[0x277CD73D8]);
    while (1)
    {
      v110 = v40;
      v112[0] = v39;
      v112[1] = v9;
      v112[2] = v8;
      v112[3] = v37;
      v41 = *(v112 + (*(&v110 | v35 & 0xF) & 0xF));
      v111[0] = v16;
      v111[1] = v30;
      v111[2] = v31;
      v111[3] = v32;
      if (v41 != *(v111 + (v35 & 0xF)))
      {
        break;
      }

      if (count == ++v35)
      {
        goto LABEL_25;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_73;
    }

    v109[4] = *(destinationArray + *v38);
    v83 = objc_opt_class();
    NSStringFromClass(v83);
    goto LABEL_72;
  }

LABEL_25:
  v42.i64[0] = 0x100000001;
  v42.i64[1] = 0x100000001;
  v43 = 0;
  if (v15)
  {
    v44 = 0;
    v45.i64[0] = 0x100000001;
    v45.i64[1] = 0x100000001;
    v8.i32[0] = 1;
    v46.i64[0] = 0x100000001;
    v46.i64[1] = 0x100000001;
    v47.i64[0] = 0x100000001;
    v47.i64[1] = 0x100000001;
    v48.i64[0] = 0x100000001;
    v48.i64[1] = 0x100000001;
    do
    {
      v109[0] = v22;
      v109[1] = v24;
      v109[2] = v25;
      v109[3] = v26;
      v49 = *(v109 + (v44 & 0xF));
      v105 = v45;
      v106 = v46;
      v107 = v47;
      v108 = v48;
      v105.i32[v43 & 0xF] = v49;
      v9.i32[0] = v49;
      v9 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v9, v8)), 0);
      v48 = vbslq_s8(v9, v108, v48);
      v47 = vbslq_s8(v9, v107, v47);
      v46 = vbslq_s8(v9, v106, v46);
      v45 = vbslq_s8(v9, v105, v45);
      if (v49 != 1)
      {
        ++v43;
      }

      ++v44;
    }

    while (v15 != v44);
    if (count)
    {
      goto LABEL_31;
    }

LABEL_37:
    v52.i64[0] = 0x100000001;
    v52.i64[1] = 0x100000001;
    v53.i64[0] = 0x100000001;
    v53.i64[1] = 0x100000001;
    v54.i64[0] = 0x100000001;
    v54.i64[1] = 0x100000001;
    goto LABEL_38;
  }

  v45.i64[0] = 0x100000001;
  v45.i64[1] = 0x100000001;
  v46.i64[0] = 0x100000001;
  v46.i64[1] = 0x100000001;
  v47.i64[0] = 0x100000001;
  v47.i64[1] = 0x100000001;
  v48.i64[0] = 0x100000001;
  v48.i64[1] = 0x100000001;
  if (!count)
  {
    goto LABEL_37;
  }

LABEL_31:
  v50 = 0;
  v51 = 0;
  v42.i64[0] = 0x100000001;
  v42.i64[1] = 0x100000001;
  v25.i32[0] = 1;
  v52.i64[0] = 0x100000001;
  v52.i64[1] = 0x100000001;
  v53.i64[0] = 0x100000001;
  v53.i64[1] = 0x100000001;
  v54.i64[0] = 0x100000001;
  v54.i64[1] = 0x100000001;
  do
  {
    v104[0] = v16;
    v104[1] = v30;
    v104[2] = v31;
    v104[3] = v32;
    v55 = *(v104 + (v51 & 0xF));
    v100 = v42;
    v101 = v52;
    v102 = v53;
    v103 = v54;
    v100.i32[v50 & 0xF] = v55;
    v8.i32[0] = v55;
    v8 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v8, v25)), 0);
    v54 = vbslq_s8(v8, v103, v54);
    v53 = vbslq_s8(v8, v102, v53);
    v52 = vbslq_s8(v8, v101, v52);
    v42 = vbslq_s8(v8, v100, v42);
    if (v55 != 1)
    {
      ++v50;
    }

    ++v51;
  }

  while (count != v51);
LABEL_38:
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v124 = __121__MPSNDArrayIdentity_reshapeWithCommandEncoder_commandBuffer_sourceArray_dimensionCount_dimensionSizes_destinationArray___block_invoke;
  v125 = &unk_278B0B190;
  selfCopy = self;
  encoderCopy = encoder;
  bufferCopy = buffer;
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_s32(v45, v42), vceqq_s32(v47, v53)), vandq_s8(vceqq_s32(v46, v52), vceqq_s32(v48, v54)))) & 0x80000000) != 0)
  {
    result = aliasSqueezeExpand(array, buffer, count, v16, v30, v31, v32);
    if (!buffer || !destinationArray)
    {
      return result;
    }

    destinationArrayCopy = destinationArray;
    v124(v123, result, destinationArray);
    return destinationArrayCopy;
  }

  v91 = v48;
  v93 = v47;
  v95 = v46;
  v97 = v45;
  v89 = v31;
  v90 = v16;
  v87 = v30;
  v88 = v32;
  if (canAliasToShape(array, count, v16, v30, v31, v32))
  {
    if (buffer && destinationArray)
    {
      v59 = flattenAlias(buffer, array, count, v90, v87, v89, v88);
      if (!v59)
      {
        v59 = rawAlias(buffer, array, count, v90, v87, v89, v88);
      }

      v124(v123, v59, destinationArray);
      return destinationArray;
    }

    v67 = MEMORY[0x277CD7418];
    v68 = (array + *MEMORY[0x277CD7418]);
    v96 = v68[3];
    v98 = v68[2];
    v92 = *v68;
    v94 = v68[1];
    v69 = MEMORY[0x277CD73D8];
    v86 = *(array + *MEMORY[0x277CD73D8]);
    result = flattenAlias(buffer, array, count, v90, v87, v89, v88);
    if (result)
    {
      return result;
    }

    v70 = [array safeArrayViewWithCommandBuffer:buffer descriptor:objc_msgSend(array aliasing:{"descriptor"), 1}];
    destinationArrayCopy = v70;
    v71 = MEMORY[0x277CD73D0];
    v72 = *(array + 4 * (*(array + *v69) & 0xF) + *MEMORY[0x277CD73D0]);
    *&v70[*v13] = count;
    *&v70[*v69] = v86;
    v73 = &v70[*MEMORY[0x277CD7410]];
    v73[2] = v89;
    v73[3] = v88;
    *v73 = v90;
    v73[1] = v87;
    v74 = &v70[*v67];
    *v74 = v92;
    *(v74 + 1) = v94;
    *(v74 + 2) = v98;
    *(v74 + 3) = v96;
    v75 = &v70[*v71];
    *v75 = v90;
    v75[1] = v87;
    v75[2] = v89;
    v75[3] = v88;
    if (v72 != v90.n128_u32[0])
    {
      *&v70[*MEMORY[0x277CD7400]] = (*(array + *MEMORY[0x277CD73C8]) >> 3) * v90.n128_u32[0];
      *&v70[*MEMORY[0x277CD7408]] = v90.n128_u32[0];
    }

    [v70 updateStrides];
    return destinationArrayCopy;
  }

  if (buffer)
  {
    destinationArrayCopy2 = destinationArray;
  }

  else
  {
    destinationArrayCopy2 = 0;
  }

  if (!destinationArrayCopy2)
  {
    return 0;
  }

  v63 = aliasSqueezeExpand(array, buffer, v43, v97, v95, v93, v91);
  v64 = destinationArrayCopy2;
  if (canAliasToShape(destinationArrayCopy2, v43, v97, v95, v93, v91))
  {
    v65 = MEMORY[0x277CD73E0];
    if (v64[*MEMORY[0x277CD73E0]] == 1)
    {
      ++*&v64[*MEMORY[0x277CD7498]];
    }

    v66 = flattenAlias(buffer, v64, v43, v97, v95, v93, v91);
    if (!v66)
    {
      v66 = rawAlias(buffer, v64, v43, v97, v95, v93, v91);
    }

    v124(v123, v63, v66);
    if (v66[*v65] == 1)
    {
      [v66 setReadCount:0];
    }

    return destinationArray;
  }

  else
  {
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v137 = 0;
    v129 = 1;
    if (v43)
    {
      for (i = 0; i != v43; ++i)
      {
        v99[0] = v97;
        v99[1] = v95;
        v99[2] = v93;
        v99[3] = v91;
        *(&v129 + i) = *(v99 + (i & 0xF));
      }
    }

    v77 = MEMORY[0x277CD73C8];
    v78 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v63[*MEMORY[0x277CD73C8]] dimensionCount:v43 dimensionSizes:{&v129, v97.n128_f64[0], v95.n128_f64[0], v93.n128_f64[0], v91.n128_f64[0]}];
    *(v78 + *MEMORY[0x277CD7448]) = 1;
    v79 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:buffer descriptor:v78];
    v124(v123, v63, v79);
    *&v79[*v13] = count;
    v80 = &v79[*MEMORY[0x277CD73D0]];
    v80[2] = v89;
    v80[3] = v88;
    v81 = MEMORY[0x277CD7410];
    *v80 = v90;
    v80[1] = v87;
    v82 = &v79[*v81];
    v82[2] = v89;
    v82[3] = v88;
    *v82 = v90;
    v82[1] = v87;
    *&v79[*MEMORY[0x277CD7400]] = (*&v79[*v77] >> 3) * v90.n128_u32[0];
    *&v79[*MEMORY[0x277CD7408]] = v90.n128_u32[0];
    [v79 updateStrides];
    v124(v123, v79, destinationArrayCopy2);
    return destinationArrayCopy2;
  }
}

uint64_t __121__MPSNDArrayIdentity_reshapeWithCommandEncoder_commandBuffer_sourceArray_dimensionCount_dimensionSizes_destinationArray___block_invoke(void *a1, char *a2, uint64_t a3)
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_15;
  }

  v4 = *&a2[*MEMORY[0x277CD73F0]];
  if (v4 < 5)
  {
    goto LABEL_15;
  }

  v5 = &a2[*MEMORY[0x277CD7410]];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = *&a2[*MEMORY[0x277CD73D8]];
  v50 = v8;
  v51 = v9;
  v48 = v6;
  v49 = v7;
  v11 = *(&v48 + (BYTE1(v10) & 0xF));
  v46 = v8;
  v47 = v9;
  v44 = v6;
  v45 = v7;
  v12 = *(&v44 + (BYTE2(v10) & 0xF));
  v42 = v8;
  v43 = v9;
  v40 = v6;
  v41 = v7;
  v13 = *(&v40 + (BYTE3(v10) & 0xF));
  v14 = 1;
  for (i = 4; i != v4; v14 *= *(&v36 + (*(&v35 | i++ & 0xF) & 0xF)))
  {
    v35 = v10;
    v36 = v6;
    v37 = v7;
    v38 = v8;
    v39 = v9;
  }

  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v16 = v14 <= 1 || *(&v31 + (v10 & 0xF)) * v11 * v12 * v13 >= 0x10001;
  if (!v16 || v14 >= 0x10)
  {
    v18 = a1[4];
    v19 = *(v18 + 664);
    if (!v19)
    {
      v26 = a1;
      v27 = a2;
      v28 = [MPSNDArrayOffsetIdentity alloc];
      *(v26[4] + 664) = -[MPSNDArrayOffsetIdentity initWithDevice:](v28, "initWithDevice:", [v27 device]);
      v55[0] = 16;
      v29 = objc_autoreleasePoolPush();
      v30 = [MEMORY[0x277CD7268] descriptorWithDataType:536870944 dimensionCount:1 dimensionSizes:v55];
      [v30 setPreferPackedRows:1];
      *(v26[4] + 672) = [objc_alloc(MEMORY[0x277CD7260]) initWithDevice:objc_msgSend(v27 descriptor:{"device"), v30}];
      memset(v54, 0, sizeof(v54));
      [*(v26[4] + 672) writeBytes:v54 strideBytes:0];
      objc_autoreleasePoolPop(v29);
      a1 = v26;
      a2 = v27;
      v18 = v26[4];
      v19 = *(v18 + 664);
    }

    v20 = a1[5];
    v21 = a1[6];
    v53[0] = a2;
    v53[1] = *(v18 + 672);
    v22 = MEMORY[0x277CBEA60];
    v23 = v53;
    v24 = 2;
  }

  else
  {
LABEL_15:
    v19 = a1[4];
    v20 = a1[5];
    v21 = a1[6];
    v52 = a2;
    v22 = MEMORY[0x277CBEA60];
    v23 = &v52;
    v24 = 1;
  }

  return [v19 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:objc_msgSend(v22 destinationArray:{"arrayWithObjects:count:", v23, v24, v31, v32, v33, v34), a3}];
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v27.receiver = self;
  v27.super_class = MPSNDArrayIdentity;
  object = [(MPSNDArrayMultiaryBase *)&v27 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  [object setFloat32Ops:0.0];
  [object setFloat16Ops:0.0];
  [object float32Ops];
  v10 = v9;
  [object float16Ops];
  v12 = v10 + v11;
  [object deviceMemoryBytesRead];
  v14 = v13;
  [object deviceMemoryBytesWrite];
  v16 = v12 / (v14 + v15);
  [object float16Ops];
  v18 = v17;
  [object float32Ops];
  v20 = v19;
  [object deviceMemoryBytesRead];
  v22 = v21;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, v23, v24, v18, v20, v22, v25, *&v16);
  return object;
}

@end