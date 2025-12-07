char *GPU::PadOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

uint64_t GPU::PadGradientOpHandler::_createKernel(GPU::PadGradientOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v69 = *(this + 3);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v69);
  if (StorageType >= 4)
  {
    v5 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v5 = 0;
    }
  }

  else
  {
    v5 = qword_1E09A95E8[StorageType];
  }

  v6 = *(this + 2);
  v7 = v69;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  StaticType = GPURegionRuntime::getStaticType(v6, *(*(v69 + 72) + 88));
  v9 = StaticType;
  if (StaticType)
  {
    StaticType = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  v70[0] = v9;
  v70[1] = StaticType;
  v10 = *mlir::CallableOpInterface::getArgAttrsAttr(v70);
  GPURegionRuntime::waitAndReadIntTensorData(v6, a2, *(*(v7 + 72) + 88), __p);
  v11 = __p[0];
  if (v10 < 1)
  {
    if (!__p[0])
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v10 == 1)
  {
    v12 = 0;
    v13 = 0;
LABEL_10:
    v14 = v13 + 1;
    v15 = 2 * v13;
    do
    {
      *(&v53 + 2 * v10 + 2 * ~v12) = v11[v15];
      v12 = v14++;
      v15 += 2;
    }

    while (v10 > v12);
    goto LABEL_12;
  }

  v13 = 0;
  v12 = 0;
  if (!v10)
  {
    goto LABEL_10;
  }

  v20 = (v10 - 1) >> 32;
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = 0;
  v12 = v10 & 0x1FFFFFFFELL;
  v13 = v10 & 0xFFFFFFFE;
  v22 = &v53 + v10 - 1;
  do
  {
    v23 = &v11[v20 & 0xFFFFFFFC];
    v24 = *v23;
    v25 = v23[2];
    *v22 = v24;
    v22 -= 2;
    *(&v53 + 2 * v10 + 2 * (v21 ^ 0xFFFFFFFFFFFFFFELL)) = v25;
    v21 += 2;
    v20 += 4;
  }

  while (v12 != v21);
  if (v10 != v12)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (v10 == 1)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    if (v10)
    {
      v26 = (v10 - 1) >> 32;
      if (!v26)
      {
        v27 = 0;
        v16 = v10 & 0x7FFFFFFFFFFFFFFELL;
        v17 = v10 & 0xFFFFFFFE;
        v28 = &v53 + 2 * v10 - 1;
        do
        {
          v29 = &v11[v26 & 0xFFFFFFFC];
          v30 = *(v29 + 1);
          v31 = *(v29 + 3);
          *v28 = v30;
          v28 -= 4;
          *(&v53 + 2 * v10 + 2 * (v27 ^ 0xFFFFFFFFFFFFFFELL) + 1) = v31;
          v27 += 2;
          v26 += 4;
        }

        while (v16 != v27);
        if (v10 == v16)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v18 = v17 + 1;
  v19 = (2 * v17) | 1;
  do
  {
    *(&v53 + 2 * v10 + 2 * ~v16 + 1) = v11[v19];
    v16 = v18++;
    v19 += 2;
  }

  while (v10 > v16);
LABEL_30:
  __p[1] = v11;
  operator delete(v11);
LABEL_31:
  v32 = objc_alloc(MEMORY[0x1E69747D0]);
  v33 = [*(*(this + 2) + 48) metalDevice];
  v49 = v65;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v48 = v64;
  v41 = v57;
  v42 = v58;
  v43 = v59;
  v44 = v60;
  *__p = v53;
  v38 = v54;
  v39 = v55;
  v40 = v56;
  v34 = [v32 initWithDevice:v33 edgeMode:v5 paddingSize:__p];
  v35 = *(this + 1);
  *(this + 1) = v34;

  return [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void GPU::PadGradientOpHandler::encodeNDArrayOp(GPU::PadGradientOpHandler *this, void **a2, NSArray *a3)
{
  v134[2] = *MEMORY[0x1E69E9840];
  v96 = a3;
  if ((*(this + 40) & 1) == 0)
  {
    GPU::PadGradientOpHandler::_createKernel(this, a2);
  }

  v108 = this;
  v5 = *(this + 3);
  v6 = *(v5 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  LODWORD(v6) = *(v5 + 36);
  v9 = v5 - 16;
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v94 = [(NSArray *)v96 objectAtIndexedSubscript:0];
  v97 = [v94 mpsndarray];
  v12 = (*(**(v108 + 2) + 48))(*(v108 + 2), v7, 0);
  v98 = [v12 mpsndarray];

  v13 = (*(**(v108 + 2) + 48))(*(v108 + 2), v8, 0);
  v14 = [v13 mpsndarray];

  v95 = v14;
  if (v98)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v97 == 0;
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v101 = *(v108 + 1);
  v17 = [v98 descriptor];
  v100 = v17;
  v18 = [v17 numberOfDimensions];
  v89 = NextResultAtOffset;
  v134[0] = 0;
  v134[1] = 0;
  memset(v115, 0, sizeof(v115));
  v19 = v101;
  if (v101)
  {
    v19 = objc_msgSend_paddingSize(v101);
  }

  v92 = &v86;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v86 - v23;
  if (!v18)
  {
    goto LABEL_21;
  }

  v111 = 0;
  v25 = 0;
  v93 = &v131 + 8;
  v90 = &v132 + 8;
  v91 = &v132;
  v26 = &v115[0].i64[1];
  do
  {
    [v17 sliceRangeForDimension:v25];
    v22[v25] = v27;
    *&v24[8 * v25] = v27;
    v28 = *(v26 - 1);
    v29 = *v26;
    if (*(v26 - 1) != 0)
    {
      *(v134 + v25) = 1;
      ++v111;
      *&v24[8 * v25] = v27 - (v28 + v29);
    }

    ++v25;
    v26 += 2;
  }

  while (v18 != v25);
  if (v18 < 5)
  {
LABEL_21:
    v30 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v31 = a2[1];
    v133 = v95;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
    [v101 encodeToMPSCommandEncoder:v30 commandBuffer:v31 sourceArrays:v32 sourceGradient:v98 gradientState:0 destinationArray:v97 kernelDAGObject:0];

    v99 = 0;
    goto LABEL_75;
  }

  v33 = v98;
  if (v111)
  {
    v106 = v33;
    v107 = a2;
    v99 = 0;
    v87 = v22 + 2;
    v88 = v18 - 1;
    v112 = v24 - 8;
    while (1)
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v34 = *v22;
      if (v134[0])
      {
        *&v131 = *v22;
        v104 = v115[0];
        *&v129 = v34 - vaddvq_s64(v115[0]);
        *v22 = v129;
        LOBYTE(v134[0]) = 0;
        --v111;
        v35 = 1;
      }

      else
      {
        v35 = 1;
        while ((*(v134 + v35) & 1) == 0)
        {
          v34 *= v22[v35++];
          if (v18 == v35)
          {
            v35 = v18;
            break;
          }
        }

        *&v131 = v34;
        *&v129 = v34;
        v104 = 0u;
        if (v35 >= v18)
        {
          v105 = 0u;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = &v131;
          v102 = 0u;
          v103 = 0u;
          v40 = 1;
          goto LABEL_62;
        }
      }

      if (*(v134 + v35))
      {
        v105 = 0u;
        *(&v131 + 1) = v22[v35];
        v103 = v115[v35];
        *(&v129 + 1) = *(&v131 + 1) - vaddvq_s64(v103);
        v22[v35] = *(&v129 + 1);
        *(v134 + v35) = 0;
        v41 = v35 + 1;
        --v111;
        if (v35 + 1 >= v18)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v42 = v22[v35];
        v41 = v35 + 1;
        if (v35 + 1 < v18)
        {
          while ((*(v134 + v41) & 1) == 0)
          {
            v42 *= v22[v41++];
            if (v18 == v41)
            {
              v105 = 0u;
              *(&v131 + 1) = v42;
              *(&v129 + 1) = v42;
              v103 = 0u;
              goto LABEL_34;
            }
          }
        }

        v105 = 0u;
        *(&v131 + 1) = v42;
        *(&v129 + 1) = v42;
        v103 = 0u;
        if (v41 >= v18)
        {
LABEL_34:
          v37 = 0;
          v36 = 1;
          v102 = 0u;
          v40 = 2;
          v39 = v93;
          v38 = 1;
          goto LABEL_62;
        }
      }

      if (*(v134 + v41))
      {
        *&v132 = v22[v41];
        v102 = v115[v41];
        *&v130 = v132 - vaddvq_s64(v102);
        v22[v41] = v130;
        *(v134 + v41) = 0;
        v43 = v41 + 1;
        --v111;
        if (v41 + 1 < v18)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v44 = v22[v41];
        v43 = v41 + 1;
        if (v41 + 1 < v18)
        {
          while ((*(v134 + v43) & 1) == 0)
          {
            v44 *= v22[v43++];
            if (v18 == v43)
            {
              v43 = v18;
              break;
            }
          }
        }

        *&v132 = v44;
        *&v130 = v44;
        v102 = 0u;
        if (v43 < v18)
        {
LABEL_48:
          if (*(v134 + v43) == 1 && v43 == v88)
          {
            v36 = 0;
            v37 = 0;
            v55 = v22[v43];
            v105 = v115[v43];
            v56 = v55 - vaddvq_s64(v105);
            v22[v43] = v56;
            *(v134 + v43) = 0;
            *(&v132 + 1) = v55;
            *(&v130 + 1) = v56;
            --v111;
          }

          else
          {
            v46 = v22[v43];
            v47 = v43 + 1;
            if (v43 + 1 < v18)
            {
              v48 = v18 + ~v43;
              if (v48 < 2)
              {
                goto LABEL_57;
              }

              v47 += v48 & 0xFFFFFFFFFFFFFFFELL;
              v49 = &v87[v43];
              v50 = v48 & 0xFFFFFFFFFFFFFFFELL;
              v51 = 1;
              do
              {
                v46 *= *(v49 - 1);
                v51 *= *v49;
                v49 += 2;
                v50 -= 2;
              }

              while (v50);
              v46 *= v51;
              if (v48 != (v48 & 0xFFFFFFFFFFFFFFFELL))
              {
LABEL_57:
                v52 = v18 - v47;
                v53 = &v22[v47];
                do
                {
                  v54 = *v53++;
                  v46 *= v54;
                  --v52;
                }

                while (v52);
              }
            }

            v36 = 0;
            v37 = 0;
            *(&v132 + 1) = v46;
            *(&v130 + 1) = v46;
          }

          v40 = 4;
          v39 = v90;
          v38 = 3;
          goto LABEL_62;
        }
      }

      v36 = 0;
      v37 = 1;
      v40 = 3;
      v39 = v91;
      v38 = 2;
LABEL_62:
      v110 = *(*(v108 + 2) + 416);
      v114 = 0;
      v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v40];
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*v39];
      [v57 addObject:v58];

      if (v35 < v18)
      {
        v59 = &v131 + 8 * v38;
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 1)];
        [v57 addObject:v60];

        if ((v36 & 1) == 0)
        {
          v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 2)];
          [v57 addObject:v61];

          if ((v37 & 1) == 0)
          {
            v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v59 - 3)];
            [v57 addObject:v62];
          }
        }
      }

      v63 = v107;
      v64 = GPU::EncodeDescriptor::getcomputeEncoder(v107);
      v109 = GPU::doReshapeWithFallBack(v106, v57, v110, v64, *(v63 + 1), &v114, 1);

      v65 = objc_alloc(MEMORY[0x1E69747D0]);
      v66 = [*(*(v108 + 2) + 48) metalDevice];
      v67 = [v101 edgeMode];
      v113[0] = v104;
      v113[1] = v103;
      v113[2] = v102;
      v113[3] = v105;
      v113[12] = v125;
      v113[13] = v126;
      v113[14] = v127;
      v113[15] = v128;
      v113[8] = v121;
      v113[9] = v122;
      v113[10] = v123;
      v113[11] = v124;
      v113[4] = v117;
      v113[5] = v118;
      v113[6] = v119;
      v113[7] = v120;
      v68 = [v65 initWithDevice:v66 edgeMode:v67 paddingSize:v113];

      v69 = [MEMORY[0x1E6974490] descriptorWithDataType:objc_msgSend(v100 dimensionCount:"dataType") dimensionSizes:{v40, &v129}];
      v70 = v107;
      v71 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(v107 + 1) descriptor:v69];
      [v71 setReadCount:2];
      v72 = GPU::EncodeDescriptor::getcomputeEncoder(v70);
      v73 = *(v70 + 1);
      v116 = v71;
      v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
      [v68 encodeToMPSCommandEncoder:v72 commandBuffer:v73 sourceArrays:v74 sourceGradient:v109 gradientState:0 destinationArray:v71 kernelDAGObject:0];

      if (v111)
      {
        v75 = v71;
        v76 = v106;
        v106 = v75;
      }

      else
      {
        v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];

        v57 = v77;
        v78 = v18;
        do
        {
          v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*&v112[8 * v78]];
          [v57 addObject:v79];

          --v78;
        }

        while (v78);
        v80 = v107;
        v76 = GPU::EncodeDescriptor::getcomputeEncoder(v107);
        v81 = GPU::doReshapeWithFallBack(v71, v57, v110, v76, *(v80 + 1), &v114, 1);

        v99 = v81;
      }

      v82 = v111 == 0;

      if (v82)
      {

        a2 = v107;
        goto LABEL_74;
      }
    }
  }

  v99 = v33;
LABEL_74:
  v83 = v108;
  v84 = *(v108 + 2);
  v85 = v99;
  v30 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v84, v30, a2[1], v83 + 15, v85, v94, v89, 0);
LABEL_75:
}

char *GPU::PadGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::PadOpHandler::~PadOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::PadGradientOpHandler::~PadGradientOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void *std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E12E5B90](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

uint64_t GPU::AddOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::additionOp();
}

void GPU::AddOpHandler::~AddOpHandler(GPU::AddOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SubtractOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::subtractionOp();
}

void GPU::SubtractOpHandler::~SubtractOpHandler(GPU::SubtractOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::MultiplyOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::multiplicationOp();
}

void GPU::MultiplyOpHandler::~MultiplyOpHandler(GPU::MultiplyOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::DivideOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDD80](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::DivideOpHandler::~DivideOpHandler(GPU::DivideOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ModuloOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCE010](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::ModuloOpHandler::~ModuloOpHandler(GPU::ModuloOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::PowerOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDFF8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::PowerOpHandler::~PowerOpHandler(GPU::PowerOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::MinimumOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCE040](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::MinimumOpHandler::~MinimumOpHandler(GPU::MinimumOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::MaximumOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::maximumOp();
}

void GPU::MaximumOpHandler::~MaximumOpHandler(GPU::MaximumOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::EqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::isEqualOp();
}

void GPU::EqualToOpHandler::~EqualToOpHandler(GPU::EqualToOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::NotEqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::isNotEqualOp();
}

void GPU::NotEqualToOpHandler::~NotEqualToOpHandler(GPU::NotEqualToOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::LessThanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::lessThanOp();
}

void GPU::LessThanOpHandler::~LessThanOpHandler(GPU::LessThanOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::LessThanOrEqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDED0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::LessThanOrEqualToOpHandler::~LessThanOrEqualToOpHandler(GPU::LessThanOrEqualToOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::GreaterThanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);

  return MPSKernelDAG::greaterThanOp();
}

void GPU::GreaterThanOpHandler::~GreaterThanOpHandler(GPU::GreaterThanOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::GreaterThanOrEqualToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDEF8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::GreaterThanOrEqualToOpHandler::~GreaterThanOrEqualToOpHandler(GPU::GreaterThanOrEqualToOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::AndOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF08](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::AndOpHandler::~AndOpHandler(GPU::AndOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::OrOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF00](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::OrOpHandler::~OrOpHandler(GPU::OrOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::NandOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF88](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::NandOpHandler::~NandOpHandler(GPU::NandOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::NorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF20](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::NorOpHandler::~NorOpHandler(GPU::NorOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::XorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDF50](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::XorOpHandler::~XorOpHandler(GPU::XorOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::XnorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDFB8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::XnorOpHandler::~XnorOpHandler(GPU::XnorOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ATan2OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDFD0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::ATan2OpHandler::~ATan2OpHandler(GPU::ATan2OpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BitwiseAndOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDDF8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseAndOpHandler::~BitwiseAndOpHandler(GPU::BitwiseAndOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BitwiseOrOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDDC0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseOrOpHandler::~BitwiseOrOpHandler(GPU::BitwiseOrOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BitwiseXorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDE08](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseXorOpHandler::~BitwiseXorOpHandler(GPU::BitwiseXorOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BitwiseLeftShiftOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDEE0](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseLeftShiftOpHandler::~BitwiseLeftShiftOpHandler(GPU::BitwiseLeftShiftOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BitwiseRightShiftOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v11 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 56), 0);
  v12 = *(a2 + 80);

  return MEMORY[0x1EEDCDEE8](v12, BaseTensorFromDataMap, v11, a3, a4, a5);
}

void GPU::BitwiseRightShiftOpHandler::~BitwiseRightShiftOpHandler(GPU::BitwiseRightShiftOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::AbsoluteOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::absoluteOp();
}

void GPU::AbsoluteOpHandler::~AbsoluteOpHandler(GPU::AbsoluteOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::AbsoluteSquareOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDDB8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::AbsoluteSquareOpHandler::~AbsoluteSquareOpHandler(GPU::AbsoluteSquareOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ACosOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF58](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ACosOpHandler::~ACosOpHandler(GPU::ACosOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ACoshOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFC0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ACoshOpHandler::~ACoshOpHandler(GPU::ACoshOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ASinOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF60](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ASinOpHandler::~ASinOpHandler(GPU::ASinOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ASinhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFC8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ASinhOpHandler::~ASinhOpHandler(GPU::ASinhOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ATanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF68](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ATanOpHandler::~ATanOpHandler(GPU::ATanOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ATanhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFD8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ATanhOpHandler::~ATanhOpHandler(GPU::ATanhOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BitwiseNotOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE00](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::BitwiseNotOpHandler::~BitwiseNotOpHandler(GPU::BitwiseNotOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BitwisePopcountOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEC8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::BitwisePopcountOpHandler::~BitwisePopcountOpHandler(GPU::BitwisePopcountOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ConjugateOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::conjugateOp();
}

void GPU::ConjugateOpHandler::~ConjugateOpHandler(GPU::ConjugateOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::CosOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF10](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::CosOpHandler::~CosOpHandler(GPU::CosOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::CoshOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF80](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::CoshOpHandler::~CoshOpHandler(GPU::CoshOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::CeilOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF78](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::CeilOpHandler::~CeilOpHandler(GPU::CeilOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ErfOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF18](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ErfOpHandler::~ErfOpHandler(GPU::ErfOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ExponentOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::exponentOp();
}

void GPU::ExponentOpHandler::~ExponentOpHandler(GPU::ExponentOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ExponentBase2OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE90](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ExponentBase2OpHandler::~ExponentBase2OpHandler(GPU::ExponentBase2OpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ExponentBase10OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEA0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ExponentBase10OpHandler::~ExponentBase10OpHandler(GPU::ExponentBase10OpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::FloorOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFE8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::FloorOpHandler::~FloorOpHandler(GPU::FloorOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ImaginaryPartOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDD90](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ImaginaryPartOpHandler::~ImaginaryPartOpHandler(GPU::ImaginaryPartOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::IsFiniteOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDD98](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::IsFiniteOpHandler::~IsFiniteOpHandler(GPU::IsFiniteOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::IsInfiniteOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE20](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::IsInfiniteOpHandler::~IsInfiniteOpHandler(GPU::IsInfiniteOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::IsNaNOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFF0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::IsNaNOpHandler::~IsNaNOpHandler(GPU::IsNaNOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::LogarithmOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDDE0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::LogarithmOpHandler::~LogarithmOpHandler(GPU::LogarithmOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::LogarithmBase2OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEA8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::LogarithmBase2OpHandler::~LogarithmBase2OpHandler(GPU::LogarithmBase2OpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::LogarithmBase10OpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDED8](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::LogarithmBase10OpHandler::~LogarithmBase10OpHandler(GPU::LogarithmBase10OpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::NegativeOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::negativeOp();
}

void GPU::NegativeOpHandler::~NegativeOpHandler(GPU::NegativeOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::NotOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF28](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::NotOpHandler::~NotOpHandler(GPU::NotOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::RealPartOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::realPartOp();
}

void GPU::RealPartOpHandler::~RealPartOpHandler(GPU::RealPartOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ReciprocalOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::reciprocalOp();
}

void GPU::ReciprocalOpHandler::~ReciprocalOpHandler(GPU::ReciprocalOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ReciprocalSquareRootOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDEF0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::ReciprocalSquareRootOpHandler::~ReciprocalSquareRootOpHandler(GPU::ReciprocalSquareRootOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::RintOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF90](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::RintOpHandler::~RintOpHandler(GPU::RintOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::RoundOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCE000](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::RoundOpHandler::~RoundOpHandler(GPU::RoundOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SignOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF98](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SignOpHandler::~SignOpHandler(GPU::SignOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SignbitOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCE048](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SignbitOpHandler::~SignbitOpHandler(GPU::SignbitOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SinOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF40](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SinOpHandler::~SinOpHandler(GPU::SinOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SinhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDFA0](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SinhOpHandler::~SinhOpHandler(GPU::SinhOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SquareOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::squareOp();
}

void GPU::SquareOpHandler::~SquareOpHandler(GPU::SquareOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SquareRootOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE40](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::SquareRootOpHandler::~SquareRootOpHandler(GPU::SquareRootOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::TanOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDF48](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::TanOpHandler::~TanOpHandler(GPU::TanOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::TanhOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::tanhOp();
}

void GPU::TanhOpHandler::~TanhOpHandler(GPU::TanhOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::SelectOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 88), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);

  return MPSKernelDAG::selectOp();
}

void GPU::SelectOpHandler::~SelectOpHandler(GPU::SelectOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::ClampOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 56), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 88), 0);

  return MPSKernelDAG::clampOp();
}

void GPU::ClampOpHandler::~ClampOpHandler(GPU::ClampOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::CreateComplexOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v7 + 72) + 24), 0);
  v9 = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v7 + 72) + 56), 0);
  v10 = BaseTensorFromDataMap[2];
  v12 = *v10;
  v11 = v10[1];
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  if (*(a3 + 8) != *a3 || memcmp(*a3, 0, *(a3 + 8) - *a3) != 0)
  {
    MPSKernelDAG::broadcastOp();
  }

  v14 = v9[2];
  v16 = *v14;
  v15 = v14[1];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_20:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*(a3 + 8) != *a3 || memcmp(*a3, 0, *(a3 + 8) - *a3) != 0)
  {
    MPSKernelDAG::broadcastOp();
  }

  return MPSKernelDAG::complexCreateOp();
}

void GPU::CreateComplexOpHandler::~CreateComplexOpHandler(GPU::CreateComplexOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::CastOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 24), 0);
  v8 = (*(*(*(v6 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(*v8 + 136);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = 0;
  }

  __p = v8;
  ElementType = mlir::TensorType::getElementType(&__p);
  if (*(v6 + 36))
  {
    v12 = v6 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(*v13 + 136);
  if (v14 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v14 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v13 = 0;
  }

  __p = v13;
  v25 = mlir::TensorType::getElementType(&__p);
  v16 = *(*ElementType + 136);
  v17 = *(*v25 + 136);
  if (mlir::Type::isInteger(&v25, 1))
  {
    v18 = *(BaseTensorFromDataMap + 16);
    v23 = 0;
    v24 = 0;
    __p = 0;
    v20 = *v18;
    v19 = v18[1];
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    MPSKernelDAG::constantOp();
    BaseTensorFromDataMap = MPSKernelDAG::isNotEqualOp();
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }

  else if (*(a1 + 32) || v16 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return MPSKernelDAG::castOp();
  }

  return BaseTensorFromDataMap;
}

void sub_1E07D6124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::CastOpHandler::~CastOpHandler(GPU::CastOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::FPToIntClampedOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  v10 = *(a2 + 80);

  return MEMORY[0x1EEDCDE10](v10, BaseTensorFromDataMap, a3, a4, a5);
}

void GPU::FPToIntClampedOpHandler::~FPToIntClampedOpHandler(GPU::FPToIntClampedOpHandler *this)
{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4D918;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::CropResizeOpHandler::CropResizeOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B4FD90;
  *(v6 + 15) = 0;
  *(v6 + 16) = 0;
  v7 = objc_alloc(MEMORY[0x1E69746E8]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v11 = this[15];
  this[15] = 0;

  v12 = this[16];
  this[16] = 0;

  return this;
}

void GPU::CropResizeOpHandler::encodeNDArrayOp(GPU::CropResizeOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v107[3] = *MEMORY[0x1E69E9840];
  v84 = a3;
  v5 = *(this + 2);
  v100 = *(this + 3);
  v6 = *(v100 + 72);
  v7 = *(v6 + 56);
  v8 = (*(*v5 + 48))(v5, *(v6 + 24), 0);
  v91 = [v8 mpsndarray];

  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v92 = [v9 mpsndarray];

  v81 = [(NSArray *)v84 objectAtIndexedSubscript:0];
  v10 = [v81 mpsndarray];
  if (v91)
  {
    v11 = v92 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v10 == 0;
  v88 = v10;
  if (v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v94 = *(this + 1);
  [v94 setResizeHeight:mlir::mps::CropResizeOp::getResizeHeight(&v100)];
  [v94 setResizeWidth:mlir::mps::CostVolumeOp::getWindowHeight(&v100)];
  [v94 setNormalizeCoordinates:mlir::mps::GRUOp::getResetAfter(&v100)];
  mlir::mps::CropResizeOp::getSpatialScale(&v106, &v100);
  *&v16 = llvm::APFloat::convertToFloat(&v106, v13, v14, v15);
  [v94 setSpatialScale:v16];
  llvm::APFloat::Storage::~Storage(v107);
  [v94 setResampleMode:mlir::mps::LSTMOp::getGateLayout(&v100)];
  [v94 setSamplingMode:mlir::mps::MaterializeSparseTensorOp::getStorageType(&v100)];
  [v94 setCoordinateMode:mlir::mps::SampleGridOp::getLayout(&v100)];
  v83 = [v91 descriptor];
  v87 = [v92 descriptor];
  v82 = [v83 getShape];
  v89 = [v87 getShape];
  v17 = [v89 objectAtIndexedSubscript:1];
  v90 = this;
  v18 = [v17 intValue] == 4;

  if (v18)
  {
    v86 = [v88 descriptor];
    [v86 transposeDimension:3 withDimension:4];
    v19 = MEMORY[0x1E69744E8];
    if (*(v88 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v88 setReadCount:{objc_msgSend(v88, "readCount") + 1}];
    }

    v20 = *(a2 + 1);
    v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v95 = [v88 safeArrayViewWithCommandBuffer:v20 computeEncoder:v21 descriptor:v86 aliasing:2];

    v22 = [v88 descriptor];
    v23 = [v22 getShape];
    v85 = [v23 mutableCopy];

    [v85 removeObjectAtIndex:1];
    v106 = 0;
    v24 = [v82 objectAtIndexedSubscript:0];
    v25 = [v24 intValue];

    v26 = *v19;
    if (v25 >= 2)
    {
      v27 = v26;
      if (*(v91 + v26) == 1)
      {
        [v91 setReadCount:{v25 + objc_msgSend(v91, "readCount") - 1}];
        v26 = *v19;
        v27 = *v19;
      }

      if (*(v92 + v27) == 1)
      {
        [v92 setReadCount:{v25 + objc_msgSend(v92, "readCount") - 1}];
        v26 = *v19;
      }
    }

    if (*(v95 + v26) == 1)
    {
      [v95 setReadCount:{objc_msgSend(v95, "readCount") + v25}];
    }

    LODWORD(v101) = 0;
    if (v25)
    {
      do
      {
        v28 = MEMORY[0x1E6974490];
        v29 = [v89 objectAtIndexedSubscript:0];
        v105 = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
        v31 = [v28 descriptorWithDataType:536870944 shape:v30];

        v32 = objc_alloc(MEMORY[0x1E6974488]);
        v33 = [*(*(v90 + 2) + 48) metalDevice];
        v34 = [v32 initWithDevice:v33 descriptor:v31];

        [v34 writeBytes:&v101 strideBytes:&v106];
        v35 = [v95 descriptor];
        [v35 sliceDimension:4 withSubrange:{v101, 1}];
        v36 = *(a2 + 1);
        v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v38 = [v95 safeArrayViewWithCommandBuffer:v36 computeEncoder:v37 descriptor:v35 aliasing:1];

        v39 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v40 = *(a2 + 1);
        v104[0] = v91;
        v104[1] = v92;
        v104[2] = v34;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:3];
        [v94 encodeToMPSCommandEncoder:v39 commandBuffer:v40 sourceArrays:v41 destinationArray:v38];

        LODWORD(v101) = v101 + 1;
      }

      while (v101 < v25);
    }

    v42 = [v95 descriptor];
    [v42 transposeDimension:3 withDimension:4];
    v43 = *(a2 + 1);
    v44 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v45 = [v95 safeArrayViewWithCommandBuffer:v43 computeEncoder:v44 descriptor:v42 aliasing:1];

    v46 = *(v90 + 2);
    v47 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v48 = *(a2 + 1);
    if (*(v100 + 36))
    {
      v49 = v100 - 16;
    }

    else
    {
      v49 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0);
    GPURegionRuntime::copyNDArrayToTarget(v46, v47, v48, v90 + 15, v45, v81, NextResultAtOffset, 0);
  }

  else
  {
    v86 = [v92 descriptor];
    [v86 sliceDimension:0 withSubrange:{0, 1}];
    v51 = [v89 objectAtIndexedSubscript:0];
    v103 = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
    [v86 reshapeWithShape:v52];

    [v87 sliceDimension:0 withSubrange:{1, 4}];
    v53 = MEMORY[0x1E69744E8];
    if (*(v92 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v92 setReadCount:{objc_msgSend(v92, "readCount") + 2}];
    }

    v54 = *(a2 + 1);
    v55 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v95 = [v92 safeArrayViewWithCommandBuffer:v54 computeEncoder:v55 descriptor:v86 aliasing:0];

    v56 = *(a2 + 1);
    v57 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v80 = [v92 safeArrayViewWithCommandBuffer:v56 computeEncoder:v57 descriptor:v87 aliasing:0];

    v85 = [v88 descriptor];
    v58 = [v88 descriptor];
    v59 = [v58 getShape];
    v93 = [v59 mutableCopy];

    [v93 removeObjectAtIndex:1];
    [v85 reshapeWithShape:v93];
    if (*(v88 + *v53) == 1)
    {
      [v88 setReadCount:{objc_msgSend(v88, "readCount") + 1}];
    }

    v60 = *(a2 + 1);
    v61 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v79 = [v88 safeArrayViewWithCommandBuffer:v60 computeEncoder:v61 descriptor:v85 aliasing:1];

    v62 = [v91 descriptor];
    v78 = v62;
    if (v62)
    {
      objc_msgSend_getShapeVector(v62);
    }

    else
    {
      v99 = 0;
    }

    v63 = [v80 descriptor];
    v77 = v63;
    if (v63)
    {
      objc_msgSend_getShapeVector(v63);
    }

    else
    {
      v98 = 0;
    }

    v64 = [v95 descriptor];
    v76 = v64;
    if (v64)
    {
      objc_msgSend_getShapeVector(v64);
    }

    else
    {
      v97 = 0;
    }

    v65 = [v79 descriptor];
    v75 = v65;
    if (v65)
    {
      objc_msgSend_getShapeVector(v65);
    }

    else
    {
      v96 = 0;
    }

    v66 = [v91 descriptor];
    [v66 dataType];
    if (!*(v90 + 16))
    {
      operator new();
    }

    if ((*(v90 + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v67 = *(v90 + 16);

    if (v96)
    {
      v68 = *v96;
      if (*v96)
      {
        *(v96 + 8) = v68;
        operator delete(v68);
      }

      MEMORY[0x1E12E5B90](v96, 0x10C402FEFCB83);
    }

    if (v97)
    {
      v69 = *v97;
      if (*v97)
      {
        *(v97 + 8) = v69;
        operator delete(v69);
      }

      MEMORY[0x1E12E5B90](v97, 0x10C402FEFCB83);
    }

    if (v98)
    {
      v70 = *v98;
      if (*v98)
      {
        *(v98 + 8) = v70;
        operator delete(v70);
      }

      MEMORY[0x1E12E5B90](v98, 0x10C402FEFCB83);
    }

    if (v99)
    {
      v71 = *v99;
      if (*v99)
      {
        *(v99 + 8) = v71;
        operator delete(v71);
      }

      MEMORY[0x1E12E5B90](v99, 0x10C402FEFCB83);
    }

    v72 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v73 = *(a2 + 1);
    v102[0] = v91;
    v102[1] = v80;
    v102[2] = v95;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];
    [v94 encodeToMPSCommandEncoder:v72 commandBuffer:v73 sourceArrays:v74 resultState:0 destinationArray:v79 kernelDAGObject:v67];

    v92 = v80;
  }
}

void GPU::CropResizeOpHandler::~CropResizeOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::MatrixDecompositionLUOpHandler::MatrixDecompositionLUOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B4FDF8;
  v6 = objc_alloc(MEMORY[0x1E69746F0]);
  v7 = [a2[6] metalDevice];
  v8 = [v6 initWithDevice:v7];

  objc_storeStrong(this + 1, v8);
  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];

  return this;
}

void sub_1E07D76E8(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::MatrixDecompositionLUOpHandler::encodeNDArrayOp(GPU::MatrixDecompositionLUOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(*(this + 3) + 72) + 24);
  v19 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v18 = [(NSArray *)v5 objectAtIndexedSubscript:1];
  v17 = [(NSArray *)v5 objectAtIndexedSubscript:2];
  v16 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v7 = [v16 mpsndarray];
  v8 = [v19 mpsndarray];
  v9 = [v18 mpsndarray];
  v10 = [v17 mpsndarray];
  v11 = *(this + 1);
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v13 = *(a2 + 1);
  v21[0] = v7;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20[0] = v8;
  v20[1] = v9;
  v20[2] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v11 encodeToMPSCommandEncoder:v12 commandBuffer:v13 sourceArrays:v14 destinationArrays:v15 activeDestinationMask:7];
}

void GPU::MatrixDecompositionLUOpHandler::~MatrixDecompositionLUOpHandler(GPU::MatrixDecompositionLUOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::ReturnStitchedOpHandler::ReturnStitchedOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4FE60;
  v6 = *(v5 + 4);
  if (v6 && !*(v6 + 104))
  {
    v7 = objc_alloc(MEMORY[0x1E6974740]);
    v8 = [*(this[2] + 6) metalDevice];
    v9 = [v7 initWithDevice:v8];
    v10 = this[1];
    this[1] = v9;

    [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  }

  return this;
}

void GPU::ReturnStitchedOpHandler::encodeNDArrayOp(GPU::ReturnStitchedOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v5 = a3;
  v6 = *(this + 1);
  v18 = v5;
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x1E6974740]);
    v8 = [*(*(this + 2) + 48) metalDevice];
    v9 = [v7 initWithDevice:v8];
    v10 = *(this + 1);
    *(this + 1) = v9;

    [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
    v6 = *(this + 1);
  }

  v11 = v6;
  v12 = [(NSArray *)v18 objectAtIndexedSubscript:0];
  v13 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v15 = *(a2 + 1);
  v16 = [v12 mpsndarray];
  v17 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
  [v11 encodeToMPSCommandEncoder:v14 commandBuffer:v15 sourceArrays:v13 resultState:0 destinationArray:v16 kernelDAGObject:v17];
}

void sub_1E07D7CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v12;

  _Unwind_Resume(a1);
}

GPURegionRuntime **GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime **this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B4FEB0;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  v6 = ((*(v5 + 3) + 16 * ((*(*(v5 + 3) + 44) >> 23) & 1) + ((*(*(v5 + 3) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(v5 + 3) + 40);
  if (*(v5 + 40) == 1)
  {
    v20 = this;
    v7 = *(v6 + 8);
    if (v7 == v6)
    {
      goto LABEL_11;
    }

    do
    {
      v8 = v7 - 8;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v8 + 40);
      v10 = v8 + 32;
      if (v9 != v8 + 32)
      {
        do
        {
          v11 = *(v9 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v12, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, &v20, 1);
          v9 = v11;
        }

        while (v11 != v10);
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
    if (this[5])
    {
LABEL_11:
      operator new();
    }
  }

  v20 = this;
  for (i = *(v6 + 8); i != v6; i = *(i + 8))
  {
    v14 = i - 8;
    if (!i)
    {
      v14 = 0;
    }

    v15 = *(v14 + 40);
    v16 = v14 + 32;
    if (v15 != v14 + 32)
    {
      do
      {
        v17 = *(v15 + 8);
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        mlir::detail::walk<mlir::ForwardIterator>(v18, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>, &v20, 1);
        v15 = v17;
      }

      while (v17 != v16);
    }
  }

  if (*(this + 40) == 1 && !*(this[4] + 13) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return this;
}

void sub_1E07D7F2C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1E12E5B90](v3, 0x10A1C40A031F3DELL);
  v5 = *(v1 + 16);
  if (v5)
  {
    *(v1 + 17) = v5;
    operator delete(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::StitchedOpHandler::encodeOp(GPU::StitchedOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v2 = a2;
  v40[1] = *MEMORY[0x1E69E9840];
  v36 = a2;
  v4 = *(this + 3);
  if (*(v4 + 9))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  if ((*(this + 40) & 1) == 0)
  {
    *&v35[1] = 0;
    v7 = *(this + 15);
    *v35 = v7 == 0;
    v8 = ((v4 + 16 * ((*(v4 + 11) >> 23) & 1) + ((*(v4 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 10);
    v29 = this;
    v30 = &v35[1];
    v31 = &v36;
    v32 = v35;
    v33 = &v34;
    v34 = 0;
    v9 = *(v8 + 8);
    if (v9 == v8)
    {
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      do
      {
        v10 = v9 - 8;
        if (!v9)
        {
          v10 = 0;
        }

        v11 = *(v10 + 40);
        v12 = v10 + 32;
        if (v11 != v10 + 32)
        {
          do
          {
            v13 = *(v11 + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v14, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v29, 1);
            v11 = v13;
          }

          while (v13 != v12);
        }

        v9 = *(v9 + 8);
      }

      while (v9 != v8);
      if (v35[0])
      {
        v15 = *(this + 15);
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

LABEL_17:
        operator new();
      }
    }

    v16 = *(*(*(this + 2) + 592) + 32);
    if ((*(*v16 + 24))(v16, NextResultAtOffset))
    {
      goto LABEL_30;
    }

    v17 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
    {
      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
      v29 = v17;
      v30 = v18;
      if (!v17)
      {
        goto LABEL_30;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v29))
      {
        goto LABEL_29;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
      if (v20)
      {
        v21 = 8 * v20;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_30;
          }
        }

LABEL_29:
        v22 = *(this + 2);
        v38 = *&v35[1];
        v39 = NextResultAtOffset;
        v37 = *(mlir::Value::getParentRegion(&v39) + 2);
        v29 = &v37;
        v23 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v22 + 288), &v37, &std::piecewise_construct, &v29);
        v29 = v39;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v23 + 3, &v29, &v29, &v38);
      }
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

LABEL_30:
    v2 = v36;
  }

  v24 = (*(**(this + 2) + 80))(*(this + 2), NextResultAtOffset, *(v2 + 1), 0, 0, 1);
  if (!*(*(this + 4) + 104) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v25 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(this + 2) + 248), (*(this + 4) + 104));
  if (!v25)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v26 = v25[3];
  v27 = v36;
  v40[0] = v24;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  (*(*v26 + 16))(v26, v27, v28);

  GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v4);
}

void GPURegionRuntime::clearScopeFromJITTypesMap(GPURegionRuntime *this, mlir::Operation *a2)
{
  v13 = a2;
  v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(this + 36, &v13);
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::remove(this + 36, v3, __p);
    v4 = __p[0];
    __p[0] = 0;
    if (v4)
    {
      if (v15 == 1)
      {
        v5 = v4[5];
        if (v5)
        {
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v7 = v4[3];
        v4[3] = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }

      operator delete(v4);
    }
  }

  v8 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(this + 41, &v13);
  if (v8)
  {
    std::__hash_table<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,MPSGraphTensorData * {__strong}>>>::remove(this + 41, v8, __p);
    v9 = __p[0];
    __p[0] = 0;
    if (v9)
    {
      if (v15 == 1)
      {
        v10 = v9[5];
        if (v10)
        {
          do
          {
            v11 = *v10;
            operator delete(v10);
            v10 = v11;
          }

          while (v11);
        }

        v12 = v9[3];
        v9[3] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      operator delete(v9);
    }
  }
}

void *GPU::StitchedOpHandler::_finalizeDAG(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(*(a2 + 72) + 24);
  if (*(v4 + 104))
  {
    result = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(v4, v5, 0);
    v7 = *(a1 + 32);
  }

  else
  {
    v8 = a2;
    v9 = v5;
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v5);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(*(a1 + 32), v9, 0);
    getBaseTensorShape(StaticType, __p);
    getMPSDataType(StaticType);
    result = MPSKernelDAG::unaryCoreOp();
    if (__p[0])
    {
      __p[1] = __p[0];
      v11 = result;
      operator delete(__p[0]);
      result = v11;
    }

    v7 = *(a1 + 32);
    *(v7 + 104) = v8;
  }

  *(v7 + 96) = result;
  return result;
}

void sub_1E07D8614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::StitchedOpHandler::~StitchedOpHandler(GPU::StitchedOpHandler *this)
{
  *this = &unk_1F5B4FEB0;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B4FEB0;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ReturnStitchedOpHandler::~ReturnStitchedOpHandler(GPU::ReturnStitchedOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(void *result, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 68);
    if (v2)
    {
      v3 = 0;
      v4 = *result;
      v5 = *(a2 + 72);
      do
      {
        v6 = (*(*(v5 + 32 * v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
        if (result)
        {
          result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
          v9 = v6;
          v10 = result;
          if (!v6)
          {
            goto LABEL_5;
          }

          result = mlir::CallOpInterface::getArgOperands(&v9);
          if (result)
          {
            result = mlir::CallableOpInterface::getArgAttrsAttr(&v9);
            if (!v7)
            {
              goto LABEL_5;
            }

            v8 = 8 * v7;
            while (*result != 0x8000000000000000)
            {
              ++result;
              v8 -= 8;
              if (!v8)
              {
                goto LABEL_5;
              }
            }
          }

          *(v4 + 40) = 0;
        }

        else
        {
          v9 = 0;
          v10 = 0;
        }

LABEL_5:
        ++v3;
      }

      while (v3 != v2);
    }
  }

  return result;
}

GPU::BaseOpHandler *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::StitchedOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = mlir::Block::getParentOp(*(a2 + 16));
  if (*(*(result + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 40) == 1)
    {
      if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
      {

        return GPU::StitchedOpHandler::_finalizeDAG(v3, a2);
      }

      else
      {
        v5 = result;
        if ((*(result + 40) & 1) != 0 || !MTLReportFailureTypeEnabled())
        {
          v6 = *(v3 + 32);
          v7 = v5;
        }

        else
        {
          MTLReportFailure();
          v6 = *(v3 + 32);
          v7 = v5;
        }

        return GPU::MPSGraphKernelDAG::createDAGOp(v6, v7);
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v3 = *a1;
  v4 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(*a1 + 16) + 248), &v11);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[3];
  *(v5 + 32) = v3[4];
  if (v11 && *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
  {
    result = GPURegionRuntime::getStaticType(v3[2], *(*(v11 + 72) + 24));
    **(a1 + 8) = result;
    if (**(a1 + 24))
    {
      return result;
    }
  }

  else
  {
    result = GPU::BaseOpHandler::_inferJITOutputTypes(v5, **(a1 + 16));
    if (**(a1 + 24))
    {
      return result;
    }
  }

  if (v3[17] != v3[16] && (*(v11 + 46) & 0x80) != 0)
  {
    v7 = *(v11 + 68);
    if (v7)
    {
      v8 = (*(v11 + 72) + 24);
      do
      {
        result = GPURegionRuntime::getStaticType(v3[2], *v8);
        v9 = *(a1 + 32);
        v10 = (*v9)++;
        if (*(v3[16] + 8 * v10) != result)
        {
          **(a1 + 24) = 1;
        }

        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::StitchedOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v12 = a2;
  v3 = *a1;
  v4 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((*(*a1 + 16) + 248), &v12);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = v4[3];
  v6 = *(v3 + 32);
  *(v5 + 4) = v6;
  v7 = v12;
  if (v12 && *(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
  {
    GPU::StitchedOpHandler::_finalizeDAG(v3, v12);
    *a1[1] = GPURegionRuntime::getStaticType(*(v3 + 16), *(*(v7 + 72) + 24));
  }

  else
  {
    GPU::MPSGraphKernelDAG::createDAGOp(v6, v5);
  }

  if ((*(v12 + 46) & 0x80) != 0)
  {
    v8 = *(v12 + 68);
    if (v8)
    {
      v9 = (*(v12 + 72) + 24);
      do
      {
        v10 = *v9;
        v9 += 4;
        StaticType = GPURegionRuntime::getStaticType(*(v3 + 16), v10);
        std::vector<mlir::Type>::push_back[abi:ne200100](v3 + 128, &StaticType);
        --v8;
      }

      while (v8);
    }
  }
}

void GPU::RandomUniformOpHandler::_createNDArrayMultiaryKernel(GPU::RandomUniformOpHandler *this)
{
  v29 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974838]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  v4 = [v2 initWithDevice:v3];

  Type = mlir::pdl_interp::CheckTypeOp::getType(&v29);
  MPSDataType = getMPSDataType(Type);
  v7 = *(*(v29 + 72) + 88);
  if ((MPSDataType & 0x10000000) != 0)
  {
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v7;
    DefiningOp = mlir::Value::getDefiningOp(&v33);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, DefiningOp))
    {
      SingleFloat = mlir::getSingleFloatValue<float>(v31, v32);
      v15 = SingleFloat & 0xFFFFFF00;
      v16 = SingleFloat;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    LODWORD(v13) = v15 | v16;
    [v4 setMinimum:v13];
    v22 = *(*(v29 + 72) + 120);
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v22;
    v23 = mlir::Value::getDefiningOp(&v33);
    if (v23 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, v23))
    {
      v25 = mlir::getSingleFloatValue<float>(v31, v32);
      v26 = v25 & 0xFFFFFF00;
      v27 = v25;
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    LODWORD(v24) = v26 | v27;
    [v4 setMaximum:v24];
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v7;
    v8 = mlir::Value::getDefiningOp(&v33);
    if (v8 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, v8))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v31, v32);
      v10 = SingleInt & 0xFFFFFFFFFFFFFF00;
      v11 = SingleInt;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    [v4 setMinimumInteger:v11 | v10];
    v17 = *(*(v29 + 72) + 120);
    v31 = 0;
    v32 = 0;
    v30 = &v31;
    v33 = v17;
    v18 = mlir::Value::getDefiningOp(&v33);
    if (v18 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, v18))
    {
      v19 = mlir::getSingleIntValue<long long>(v31, v32);
      v20 = v19 & 0xFFFFFFFFFFFFFF00;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    [v4 setMaximumInteger:v21 | v20];
  }

  v28 = *(this + 1);
  *(this + 1) = v4;
}

char *GPU::RandomUniformOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::RandomTruncatedNormalOpHandler::_createNDArrayMultiaryKernel(GPU::RandomTruncatedNormalOpHandler *this)
{
  v29[3] = *MEMORY[0x1E69E9840];
  v25 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974830]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  mlir::mps::RandomTruncatedNormalOp::getMean(&v25, &v28);
  v7 = llvm::APFloat::convertToFloat(&v28, v4, v5, v6);
  mlir::mps::RandomTruncatedNormalOp::getStdDev(&v25, &v26);
  LODWORD(v11) = llvm::APFloat::convertToFloat(&v26, v8, v9, v10);
  *&v12 = v7;
  v13 = [v2 initWithDevice:v3 mean:v12 standardDeviation:v11];
  v14 = v27[0];
  v15 = llvm::APFloatBase::PPCDoubleDouble(v13);
  if (v15 == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v27);
    if (v15 != v29[0])
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v27);
    if (v15 != v29[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v29);
      goto LABEL_6;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
LABEL_6:

  [(llvm::APFloatBase *)v13 setSamplingMethod:mlir::mps::Conv3DOp::getPaddingStyle(&v25)];
  mlir::mps::PruningOp::getSparsity(&v25, &v28);
  *&v19 = llvm::APFloat::convertToFloat(&v28, v16, v17, v18);
  [(llvm::APFloatBase *)v13 setMinimum:v19];
  if (v15 == v29[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v29);
  }

  mlir::mps::InstanceNormOp::getEpsilon(&v28, &v25);
  *&v23 = llvm::APFloat::convertToFloat(&v28, v20, v21, v22);
  [(llvm::APFloatBase *)v13 setMaximum:v23];
  if (v15 == v29[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v29);
  }

  v24 = *(this + 1);
  *(this + 1) = v13;
}

char *GPU::RandomTruncatedNormalOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::RandomNormalOpHandler::_createNDArrayMultiaryKernel(GPU::RandomNormalOpHandler *this)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v17 = *(this + 3);
  v2 = objc_alloc(MEMORY[0x1E6974818]);
  v3 = [*(*(this + 2) + 48) metalDevice];
  mlir::mps::InstanceNormOp::getEpsilon(&v20, &v17);
  v7 = llvm::APFloat::convertToFloat(&v20, v4, v5, v6);
  mlir::mps::RandomNormalOp::getStdDev(&v17, &v18);
  LODWORD(v11) = llvm::APFloat::convertToFloat(&v18, v8, v9, v10);
  *&v12 = v7;
  v13 = [v2 initWithDevice:v3 mean:v12 standardDeviation:v11];
  v14 = v19[0];
  v15 = llvm::APFloatBase::PPCDoubleDouble(v13);
  if (v15 == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
    if (v15 != v21[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    goto LABEL_6;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v19);
  if (v15 == v21[0])
  {
    goto LABEL_5;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v21);
LABEL_6:

  [(llvm::APFloatBase *)v13 setSamplingMethod:mlir::mps::LSTMOp::getGateLayout(&v17)];
  v16 = *(this + 1);
  *(this + 1) = v13;
}

void sub_1E07D91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  llvm::APFloat::~APFloat(va);

  _Unwind_Resume(a1);
}

char *GPU::RandomNormalOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:{0, v17}];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  v9 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
  v10 = [v9 mpsndarray];

  if ((!v7 || !v10) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = *(a1 + 8);
  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v8 + 72) + 56), &__p);
  v12 = __p;
  v13 = 1;
  if (__p == v20)
  {
LABEL_9:
    [v11 setSkipElements:v13];
  }

  else
  {
    while (*v12 != -1)
    {
      v13 *= *v12++;
      if (v12 == v20)
      {
        goto LABEL_9;
      }
    }

    [v11 setSkipElements:0];
    [v11 setIncrementKey:1];
  }

  [v11 setCounterStride:256];
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v15 = *(a2 + 1);
  v21[0] = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v11 encodeToMPSCommandEncoder:v14 commandBuffer:v15 sourceArrays:v16 destinationArray:v7];

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void GPU::UpdateRandomStateOpHandler::~UpdateRandomStateOpHandler(GPU::UpdateRandomStateOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomUniformOpHandler,mlir::mps::RandomUniformOp,MPSNDArrayRandomUniform,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::RandomUniformOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v15 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v10 = 0;
  }

  v13 = *(a1 + 8);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v13 encodeToMPSCommandEncoder:v14 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::RandomUniformOpHandler::~RandomUniformOpHandler(GPU::RandomUniformOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomTruncatedNormalOpHandler,mlir::mps::RandomTruncatedNormalOp,MPSNDArrayRandomTruncatedNormal,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::RandomTruncatedNormalOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v15 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v10 = 0;
  }

  v13 = *(a1 + 8);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v13 encodeToMPSCommandEncoder:v14 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::RandomTruncatedNormalOpHandler::~RandomTruncatedNormalOpHandler(GPU::RandomTruncatedNormalOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomNormalOpHandler,mlir::mps::RandomNormalOp,MPSNDArrayRandomNormal,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v15 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::RandomNormalOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v15 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v10 = 0;
  }

  v13 = *(a1 + 8);
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v13 encodeToMPSCommandEncoder:v14 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

void GPU::RandomNormalOpHandler::~RandomNormalOpHandler(GPU::RandomNormalOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974820]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::UpdateRandomStateOpHandler,mlir::mps::UpdateRandomStateOp,MPSNDArrayRandomState,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomUniformOpHandler,mlir::mps::RandomUniformOp,MPSNDArrayRandomUniform,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomTruncatedNormalOpHandler,mlir::mps::RandomTruncatedNormalOp,MPSNDArrayRandomTruncatedNormal,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::RandomNormalOpHandler,mlir::mps::RandomNormalOp,MPSNDArrayRandomNormal,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TileOpHandler::_createKernel(GPU::TileOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  GPURegionRuntime::waitAndReadIntTensorData(v3, a2, *(*(v4 + 72) + 56), __p);
  StaticType = GPURegionRuntime::getStaticType(v3, *(*(v4 + 72) + 56));
  v6 = StaticType;
  if (StaticType)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v7 = 0;
  }

  v41[0] = v6;
  v41[1] = v7;
  v8 = *mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v9 = __p[0];
  if (!v8)
  {
    if (!__p[0])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 > 3)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (__p[0] + 16);
    v12 = (&v32 + 8 * v8);
    v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = vextq_s8(v11[-1], v11[-1], 8uLL);
      v12[-1] = vextq_s8(*v11, *v11, 8uLL);
      *v12 = v14;
      v11 += 2;
      v12 -= 2;
      v13 -= 4;
    }

    while (v13);
    if (v8 == v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = v8 - v10;
  v16 = &v9[8 * v10];
  do
  {
    v17 = *v16;
    v16 += 8;
    *(&v32 + v15-- + 1) = v17;
  }

  while (v15);
LABEL_14:
  __p[1] = v9;
  operator delete(v9);
LABEL_15:
  v18 = objc_alloc(MEMORY[0x1E69748B0]);
  v19 = [*(*(this + 2) + 48) metalDevice];
  v20 = [v18 initWithDevice:v19];

  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  *__p = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  [v20 setMultiples:__p];
  objc_storeStrong(this + 1, v20);
  v21 = objc_alloc(MEMORY[0x1E6974740]);
  v22 = [*(*(this + 2) + 48) metalDevice];
  v23 = [v21 initWithDevice:v22];
  v24 = *(this + 16);
  *(this + 16) = v23;

  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
  [*(this + 16) setOptions:{objc_msgSend(*(this + 16), "options") | 1}];
}

void sub_1E07DA418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::TileOpHandler::encodeNDArrayOp(GPU::TileOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v77[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(this + 40) & 1) == 0)
  {
    GPU::TileOpHandler::_createKernel(this, a2);
  }

  v6 = *(*(*(this + 3) + 72) + 24);
  v7 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v62 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v64 = [v7 mpsndarray];
  v8 = [v62 mpsndarray];
  v63 = *(this + 1);
  if (!*(this + 4))
  {
    if ((!v64 || !v8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    if (v63)
    {
      objc_msgSend_multiples(v63);
    }

    if ([v8 numberOfDimensions])
    {
      v13 = [v8 numberOfDimensions];
      v14.i64[0] = v65;
      v15.i64[0] = 1;
      v16 = vdupq_lane_s64(vcgtq_u64(v14, v15).i64[0], 0);
      v15.i64[1] = 0x100000001;
      v15.i64[0] = v65 | 0x100000000;
      v59 = vsubq_s32(vandq_s8(v15, v16), vmvnq_s8(v16));
      if (v13 >= 2)
      {
        v17 = *(&v65 + 1) <= 1uLL ? 1 : 2;
        v18 = [v8 numberOfDimensions];
        v19.i64[0] = *(&v65 + 1);
        v20.i64[0] = 1;
        v21 = vdupq_lane_s64(vcgtq_u64(v19, v20).i64[0], 0);
        v22 = v59;
        v22.i32[1] = DWORD2(v65);
        v59 = vbslq_s8(v21, v22, v59);
        if (v18 >= 3)
        {
          if (v66 > 1)
          {
            v17 = 3;
          }

          v23 = [v8 numberOfDimensions];
          v25.i64[0] = v66;
          v26.i64[0] = 1;
          v27 = vdupq_lane_s64(vcgtq_u64(v25, v26).i64[0], 0);
          v28 = v59;
          v28.i32[2] = v66;
          v29 = vbslq_s8(v27, v28, v59);
          if (v23 < 4)
          {
            v59 = v29;
          }

          else
          {
            v30 = v29;
            v30.i32[3] = DWORD2(v66);
            v28.i64[0] = *(&v66 + 1);
            v24.i64[0] = 1;
            v59 = vbslq_s8(vdupq_lane_s64(vcgtq_u64(v28, v24).i64[0], 0), v30, v29);
            v31 = 4;
            if (*(&v66 + 1) > 1uLL)
            {
              v17 = 4;
            }

            while (v31 < [v8 numberOfDimensions])
            {
              if (*(&v65 + v31) > 1uLL)
              {
                v17 = v31 + 1;
              }

              ++v31;
            }

            if (v17 >= 5)
            {
              v55 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
              v56 = *(a2 + 1);
              v77[0] = v8;
              v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
              [v63 encodeToMPSCommandEncoder:v55 commandBuffer:v56 sourceArrays:v57 resultState:0 destinationArray:v64 kernelDAGObject:0];

              goto LABEL_55;
            }
          }
        }
      }
    }

    else
    {
      v32.i64[0] = 0x100000001;
      v32.i64[1] = 0x100000001;
      v59 = v32;
    }

    v33 = *(this + 15);
    v34 = v8;
    v58 = v33;
    v61 = v34;
    v35 = [v34 descriptor];
    v36 = v35;
    if (v35)
    {
      objc_msgSend_getShapeVector(v35);
    }

    else
    {
      v76 = 0;
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v37 = v76[1];
    if (v37 != *v76)
    {
      if (((v37 - *v76) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v38 = [v61 descriptor];
    v39 = [v38 dataType];
    if (v39 == -2147483640)
    {
      v40 = 536870920;
    }

    else
    {
      v40 = v39;
    }

    if (v58)
    {
      v41 = [v58 finalOp];
      v42 = **(v41 + 24);
      if (*(*(v41 + 24) + 8) == v42)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      v43 = *v42;
      v45 = *(*(*v42 + 32) + 8);
      v44 = *v45;
      if (v45[1] == *v45)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      v46 = *v44;
      v47 = *(*v44 + 32);
      v48 = **(v47 + 8);
      if (*(*(v47 + 8) + 8) == v48)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      if ((vminvq_u32(vceqq_s32(*(v47 + 112), v59)) & 0x80000000) != 0 && v40 == *(v43 + 8))
      {
        v60 = *v48;
        v49 = *(*v48 + 16);
        if (v49)
        {
          v50 = *v49;
          if (*v49)
          {
            *(v49 + 8) = v50;
            operator delete(v50);
          }

          MEMORY[0x1E12E5B90](v49, 0x10C402FEFCB83);
        }

        v51 = *(v46 + 16);
        if (v51)
        {
          v52 = *v51;
          if (*v51)
          {
            *(v51 + 8) = v52;
            operator delete(v52);
          }

          MEMORY[0x1E12E5B90](v51, 0x10C402FEFCB83);
        }

        v53 = *(v43 + 16);
        if (v53)
        {
          v54 = *v53;
          if (*v53)
          {
            *(v53 + 8) = v54;
            operator delete(v54);
          }

          MEMORY[0x1E12E5B90](v53, 0x10C402FEFCB83);
        }

        *(v43 + 8) = v40;
        *(v46 + 8) = v40;
        *(v60 + 8) = v40;
        operator new();
      }
    }

    operator new();
  }

  mlir::Block::getParentOp(*(*(this + 3) + 16));
  if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
  v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v11 = *(a2 + 1);
  v12 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
  [v63 encodeToMPSCommandEncoder:v10 commandBuffer:v11 sourceArrays:v9 resultState:0 destinationArray:v64 kernelDAGObject:v12];

LABEL_55:
}

char *GPU::TileOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::TileGradientOpHandler::_createKernel(GPU::TileGradientOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  GPURegionRuntime::waitAndReadIntTensorData(v3, a2, *(*(v4 + 72) + 88), __p);
  StaticType = GPURegionRuntime::getStaticType(v3, *(*(v4 + 72) + 88));
  v6 = StaticType;
  if (StaticType)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v7 = 0;
  }

  v37[0] = v6;
  v37[1] = v7;
  v8 = *mlir::CallableOpInterface::getArgAttrsAttr(v37);
  v9 = __p[0];
  if (!v8)
  {
    if (!__p[0])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 > 3)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (__p[0] + 16);
    v12 = (&v28 + 8 * v8);
    v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = vextq_s8(v11[-1], v11[-1], 8uLL);
      v12[-1] = vextq_s8(*v11, *v11, 8uLL);
      *v12 = v14;
      v11 += 2;
      v12 -= 2;
      v13 -= 4;
    }

    while (v13);
    if (v8 == v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = v8 - v10;
  v16 = &v9[8 * v10];
  do
  {
    v17 = *v16;
    v16 += 8;
    *(&v28 + v15-- + 1) = v17;
  }

  while (v15);
LABEL_14:
  __p[1] = v9;
  operator delete(v9);
LABEL_15:
  v18 = objc_alloc(MEMORY[0x1E69748A8]);
  v19 = [*(*(this + 2) + 48) metalDevice];
  v20 = [v18 initWithDevice:v19];

  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  *__p = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  [v20 setMultiples:__p];
  objc_storeStrong(this + 1, v20);
  [*(this + 1) setOptions:{objc_msgSend(*(this + 1), "options") | 1}];
}

void sub_1E07DB21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::TileGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v22 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::TileGradientOpHandler::_createKernel(this, a2);
  }

  v5 = *(this[3] + 9);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  v21 = [(NSArray *)v22 objectAtIndexedSubscript:0];
  v20 = (*(*this[2] + 48))(this[2], v6, 0);
  v8 = (*(*this[2] + 48))(this[2], v7, 0);
  v9 = [v21 mpsndarray];
  v10 = [v20 mpsndarray];
  v11 = [v8 mpsndarray];
  v12 = v11;
  if (!v9 || (v10 ? (v13 = v11 == 0) : (v13 = 1), v13))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (this[4] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v14 = this[1];
  v24[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16 = [v14 resultStateForSourceArrays:v15 sourceStates:0 destinationArray:v9];

  v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v18 = *(a2 + 1);
  v23 = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v14 encodeToMPSCommandEncoder:v17 commandBuffer:v18 sourceArrays:v19 sourceGradient:v10 gradientState:v16 destinationArray:v9 kernelDAGObject:0];
}

char *GPU::TileGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

uint64_t GPU::TileOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::TileOpHandler::~TileOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TileGradientOpHandler::~TileGradientOpHandler(GPU::TileGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E07DBA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

uint64_t BaseRuntime::initializeOps(BaseRuntime *this)
{
  v1 = *(((*(this + 8) + 16 * ((*(*(this + 8) + 44) >> 23) & 1) + ((*(*(this + 8) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 8) + 40) + 8);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  v7 = this;
  result = *(v2 + 40);
  v4 = v2 + 32;
  if (result != v2 + 32)
  {
    do
    {
      v5 = *(result + 8);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v8 = &v7;
      mlir::detail::walk<mlir::ForwardIterator>(v6, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v8, 1);
      result = v5;
    }

    while (v5 != v4);
  }

  return result;
}

void BaseRuntime::evaluateOps(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(((*(a1 + 64) + 16 * ((*(*(a1 + 64) + 44) >> 23) & 1) + ((*(*(a1 + 64) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(a1 + 64) + 40) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v16 = a1;
  v12 = *(v11 + 40);
  v13 = v11 + 32;
  if (v12 != v11 + 32)
  {
    do
    {
      v14 = *(v12 + 8);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v17 = &v16;
      mlir::detail::walk<mlir::ForwardIterator>(v15, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime11evaluateOpsEP7NSArrayIP18MPSGraphTensorDataESG_P37MPSGraphExecutableExecutionDescriptorE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v17, 1);
      v12 = v14;
    }

    while (v14 != v13);
  }
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime13initializeOpsEvE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v10[7] = v2;
      v10[8] = v3;
      v4 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v10[0] = **result;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v6 = i - 8;
        if (!i)
        {
          v6 = 0;
        }

        result = *(v6 + 40);
        v7 = v6 + 32;
        if (result != v6 + 32)
        {
          do
          {
            v8 = *(result + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v10, 1);
            result = v8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::initializeOps(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = mlir::Block::getParentOp(*(a2 + 16));
  if (result)
  {
    v5 = *(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = *(*v3 + 8);

    return v6(v3, a2);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZN11BaseRuntime11evaluateOpsEP7NSArrayIP18MPSGraphTensorDataESG_P37MPSGraphExecutableExecutionDescriptorE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESU_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v10[7] = v2;
      v10[8] = v3;
      v4 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v10[0] = **result;
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v6 = i - 8;
        if (!i)
        {
          v6 = 0;
        }

        result = *(v6 + 40);
        v7 = v6 + 32;
        if (result != v6 + 32)
        {
          do
          {
            v8 = *(result + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v9, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::evaluateOps(NSArray<MPSGraphTensorData *> *,NSArray<MPSGraphTensorData *> *,MPSGraphExecutableExecutionDescriptor *)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v10, 1);
            result = v8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<BaseRuntime::evaluateOps(NSArray<MPSGraphTensorData *> *,NSArray<MPSGraphTensorData *> *,MPSGraphExecutableExecutionDescriptor *)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = mlir::Block::getParentOp(*(a2 + 16));
  if (result)
  {
    v5 = *(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = *(*v3 + 24);

    return v6(v3, a2);
  }

  return result;
}

void GPU::Conv2DOpHandler::_createKernel(GPU::Conv2DOpHandler *this)
{
  v2 = *(this + 3);
  v79[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 56));
  Value = mlir::ArrayAttr::getValue(v79);
  v79[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 24));
  v4 = mlir::ArrayAttr::getValue(v79);
  v73 = this;
  v5 = *(this + 2);
  v84 = v2;
  v74 = [*(v5 + 48) metalDevice];
  v6 = objc_alloc_init(MEMORY[0x1E69746B0]);
  Strides = mlir::mps::Conv3DOp::getStrides(&v84);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v84);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v84);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v84);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v17 = 0;
      v16 = 0;
      v8 = 0;
      v70 = 0;
      v72 = 0;
      goto LABEL_27;
    }

    [v6 setDataFormat:1];
    v70 = v4[2];
    v72 = v4[1];
    v8 = v4[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Strides, 0);
    v9 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v9, NumElements);
    if (v80 == v78)
    {
LABEL_4:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, InputAttributeNames, 0);
      v11 = InputAttributeNames;
      v12 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v11, v12);
      if (v80 == v78)
      {
LABEL_5:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Rewriter, 0);
        v13 = Rewriter;
        v14 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v13, v14);
        if (v80 != v78)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
            v18 = v76;
            if (v76 >= 0x41)
            {
              if (v18 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
              {
                v19 = *v75;
              }

              else
              {
                v19 = -1;
              }
            }

            else
            {
              v19 = v75;
            }

            if (v15 == 4)
            {
              v20 = v19;
            }

            else
            {
              v20 = v16;
            }

            if (v15 == 2)
            {
              v17 = v19;
            }

            else
            {
              v16 = v20;
            }

            if (v18 >= 0x41 && v75)
            {
              MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
            }

            ++v80;
            ++v15;
          }

          while (v80 != v78);
          goto LABEL_27;
        }

LABEL_25:
        v17 = 0;
        v16 = 0;
        goto LABEL_27;
      }

      v60 = 0;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
        v61 = v76;
        if (v76 >= 0x41)
        {
          if (v61 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
          {
            v62 = *v75;
            if (v60 <= 1)
            {
LABEL_129:
              if (v60)
              {
                if (v60 == 1)
                {
                  [v6 setDilationRateInY:v62];
                  goto LABEL_136;
                }

                goto LABEL_132;
              }

              if (v62 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_136;
              }

LABEL_133:
              MTLReportFailure();
              goto LABEL_136;
            }
          }

          else
          {
            v62 = -1;
            if (v60 <= 1)
            {
              goto LABEL_129;
            }
          }
        }

        else
        {
          v62 = v75;
          if (v60 <= 1)
          {
            goto LABEL_129;
          }
        }

        if (v60 != 2)
        {
          if (v60 == 3)
          {
            if (v62 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_136;
            }
          }

          else
          {
LABEL_132:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_136;
            }
          }

          goto LABEL_133;
        }

        [v6 setDilationRateInX:v62];
LABEL_136:
        if (v76 >= 0x41 && v75)
        {
          MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
        }

        ++v80;
        ++v60;
        if (v80 == v78)
        {
          goto LABEL_5;
        }
      }
    }

    v54 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
      v55 = v76;
      if (v76 >= 0x41)
      {
        if (v55 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
        {
          v56 = *v75;
          if (v54 <= 1)
          {
LABEL_79:
            if (v54)
            {
              if (v54 == 1)
              {
                [v6 setStrideInPixelsY:v56];
                goto LABEL_86;
              }

              goto LABEL_82;
            }

            if (v56 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_86;
            }

LABEL_83:
            MTLReportFailure();
            goto LABEL_86;
          }
        }

        else
        {
          v56 = -1;
          if (v54 <= 1)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        v56 = v75;
        if (v54 <= 1)
        {
          goto LABEL_79;
        }
      }

      if (v54 != 2)
      {
        if (v54 == 3)
        {
          if (v56 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
LABEL_82:
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_86;
          }
        }

        goto LABEL_83;
      }

      [v6 setStrideInPixelsX:v56];
LABEL_86:
      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
      }

      ++v80;
      ++v54;
      if (v80 == v78)
      {
        goto LABEL_4;
      }
    }
  }

  [v6 setDataFormat:0];
  v70 = v4[3];
  v72 = v4[2];
  v8 = v4[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Strides, 0);
  v21 = Strides;
  v22 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v21, v22);
  if (v80 != v78)
  {
    v57 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
      v58 = v76;
      if (v76 >= 0x41)
      {
        if (v58 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
        {
          v59 = *v75;
          if (v57 <= 1)
          {
LABEL_102:
            if (!v57)
            {
              if (v59 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_111;
              }

LABEL_108:
              MTLReportFailure();
              goto LABEL_111;
            }

            if (v57 == 1)
            {
              if (v59 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_111;
              }

              goto LABEL_108;
            }

LABEL_107:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_111;
            }

            goto LABEL_108;
          }
        }

        else
        {
          v59 = -1;
          if (v57 <= 1)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v59 = v75;
        if (v57 <= 1)
        {
          goto LABEL_102;
        }
      }

      if (v57 != 2)
      {
        if (v57 == 3)
        {
          [v6 setStrideInPixelsX:v59];
          goto LABEL_111;
        }

        goto LABEL_107;
      }

      [v6 setStrideInPixelsY:v59];
LABEL_111:
      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
      }

      ++v80;
      ++v57;
    }

    while (v80 != v78);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, InputAttributeNames, 0);
  v23 = InputAttributeNames;
  v24 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v23, v24);
  if (v80 != v78)
  {
    v63 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
      v64 = v76;
      if (v76 >= 0x41)
      {
        if (v64 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
        {
          v65 = *v75;
          if (v63 <= 1)
          {
LABEL_152:
            if (!v63)
            {
              if (v65 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_161;
              }

LABEL_158:
              MTLReportFailure();
              goto LABEL_161;
            }

            if (v63 == 1)
            {
              if (v65 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_161;
              }

              goto LABEL_158;
            }

LABEL_157:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_161;
            }

            goto LABEL_158;
          }
        }

        else
        {
          v65 = -1;
          if (v63 <= 1)
          {
            goto LABEL_152;
          }
        }
      }

      else
      {
        v65 = v75;
        if (v63 <= 1)
        {
          goto LABEL_152;
        }
      }

      if (v63 != 2)
      {
        if (v63 == 3)
        {
          [v6 setDilationRateInX:v65];
          goto LABEL_161;
        }

        goto LABEL_157;
      }

      [v6 setDilationRateInY:v65];
LABEL_161:
      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
      }

      ++v80;
      ++v63;
    }

    while (v80 != v78);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, Rewriter, 0);
  v25 = Rewriter;
  v26 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v77, v25, v26);
  if (v80 == v78)
  {
    goto LABEL_25;
  }

  v66 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v79, &v75);
    v67 = v76;
    if (v76 >= 0x41)
    {
      if (v67 - llvm::APInt::countLeadingZerosSlowCase(&v75) <= 0x40)
      {
        v68 = *v75;
      }

      else
      {
        v68 = -1;
      }
    }

    else
    {
      v68 = v75;
    }

    if (v66 == 6)
    {
      v69 = v68;
    }

    else
    {
      v69 = v16;
    }

    if (v66 == 4)
    {
      v17 = v68;
    }

    else
    {
      v16 = v69;
    }

    if (v67 >= 0x41 && v75)
    {
      MEMORY[0x1E12E5B60](v75, 0x1000C8000313F17);
    }

    ++v80;
    ++v66;
  }

  while (v80 != v78);
LABEL_27:
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v84);
  if (WeightsLayout == 2)
  {
    [v6 setWeightsFormat:1];
    [v6 setKernelWidth:Value[3]];
    [v6 setKernelHeight:Value[2]];
    [v6 setInputFeatureChannels:Value[1]];
    goto LABEL_31;
  }

  if (WeightsLayout == 3)
  {
    [v6 setWeightsFormat:0];
    [v6 setKernelWidth:Value[1]];
    [v6 setKernelHeight:*Value];
    [v6 setInputFeatureChannels:Value[2]];
    Value += 3;
LABEL_31:
    [v6 setOutputFeatureChannels:{*Value, v70}];
  }

  [v6 setGroups:mlir::mps::Conv3DOp::getGroups(&v84)];
  [v6 setInputFeatureChannels:{objc_msgSend(v6, "inputFeatureChannels") * objc_msgSend(v6, "groups")}];
  [v6 inputFeatureChannels];
  if (v8 != [v6 inputFeatureChannels] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v28 = [objc_alloc(MEMORY[0x1E69746A8]) initWithDevice:v74 ndArrayConvolution2DDescriptor:v6];
  v29 = *(v5 + 64);
  if (!*(v29 + 47) || (v85.var0 = "mps.reducedPrecisionFastMath", v85.var1 = 28, InherentAttr = mlir::Operation::getInherentAttr(*(v5 + 64), v85), (v31 & 1) == 0))
  {
    v86.var0 = "mps.reducedPrecisionFastMath";
    v86.var1 = 28;
    InherentAttr = mlir::DictionaryAttr::get((v29 + 56), v86);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v32 = InherentAttr;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v79[0] = v32;
  if ((mlir::IntegerAttr::getUInt(v79) & 2) != 0)
  {
    [v28 setOptions:{objc_msgSend(v28, "options") | 2}];
  }

  v33 = [v6 kernelWidth];
  v34 = [v6 dilationRateInX];
  v35 = [v6 kernelHeight];
  v36 = [v6 dilationRateInY];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v84);
  v38 = PaddingStyle;
  v39 = v34 * (v33 - 1);
  v40 = v39 + 1;
  v41 = v36 * (v35 - 1);
  v42 = v41 + 1;
  if (PaddingStyle == 1)
  {
    v17 = 0;
    v16 = 0;
  }

  else if (PaddingStyle == 2 || PaddingStyle == 4)
  {
    if (v72 % [v6 strideInPixelsY])
    {
      v43 = v72 % [v6 strideInPixelsY];
    }

    else
    {
      v43 = [v6 strideInPixelsY];
    }

    if (v71 % [v6 strideInPixelsX])
    {
      v44 = v71 % [v6 strideInPixelsX];
    }

    else
    {
      v44 = [v6 strideInPixelsX];
    }

    v45 = (v42 - v43) & ~((v42 - v43) >> 63);
    v46 = (v40 - v44) & ~((v40 - v44) >> 63);
    v47 = v45 >> 1;
    v48 = v45 - (v45 >> 1);
    v49 = v46 >> 1;
    v50 = v46 - (v46 >> 1);
    if (v38 == 4)
    {
      v17 = v48;
    }

    else
    {
      v17 = v47;
    }

    if (v38 == 4)
    {
      v16 = v50;
    }

    else
    {
      v16 = v49;
    }
  }

  objc_opt_class();
  v51 = v40 / 2 - v16;
  v52 = v42 / 2 - v17;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = -v16;
      v52 = -v17;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    [v28 setOffsets:{v51, v52}];
    goto LABEL_65;
  }

  [v28 setOffsets:{0, 0}];
  [v28 setKernelOffsets:{(v39 & 1) - v51, (v41 & 1) - v52}];
LABEL_65:

  [v28 setOptions:{objc_msgSend(v28, "options") | 1}];
  v53 = *(v73 + 1);
  *(v73 + 1) = v28;
}

void *GPU::Conv2DOpHandler::postInitializeHook(GPU::Conv2DOpHandler *this)
{
  result = mlir::Block::getParentOp(*(*(this + 3) + 16));
  if (*(result[6] + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id && *(this + 40) == 1 && !*(this + 4))
  {
    result = GPU::Conv2DOpHandler::getQuantizationParameters(*(this + 3), v6, v5, v4, &v3);
    if (result)
    {
      return GPU::Conv2DOpHandler::_getQuantKernelDAGObject(this);
    }
  }

  return result;
}

uint64_t GPU::Conv2DOpHandler::getQuantizationParameters(GPU::Conv2DOpHandler *this, mlir::Value *a2, mlir::Value *a3, mlir::Value *a4, mlir::Value *a5)
{
  v17 = *(*(this + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    v11 = 0;
    v17 = *(*(this + 9) + 56);
    v12 = mlir::Value::getDefiningOp(&v17);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (!v11)
    {
      return 0;
    }

    v13 = 0;
    goto LABEL_17;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v11 = DefiningOp;
  }

  else
  {
    v11 = 0;
  }

  v17 = *(*(this + 9) + 56);
  v12 = mlir::Value::getDefiningOp(&v17);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((v11 == 0) != (v13 == 0))
  {
LABEL_17:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v11)
  {
    v14 = *(v11 + 72);
    *a2 = *(v14 + 24);
    *a3 = *(v14 + 88);
    v15 = *(v13 + 72);
    *a4 = *(v15 + 24);
    *a5 = *(v15 + 88);
    return 1;
  }

  return 0;
}

id GPU::Conv2DOpHandler::_getQuantKernelDAGObject(GPU::Conv2DOpHandler *this)
{
  v2 = *(this + 15);
  if (!v2 || *(this + 40) != 1)
  {
    operator new();
  }

  if (!*(v2 + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v3 = *(*(this + 15) + 120);

  return v3;
}

void GPU::Conv2DOpHandler::encodeNDArrayOp(GPU::Conv2DOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(this + 40) & 1) == 0)
  {
    GPU::Conv2DOpHandler::_createKernel(this);
  }

  if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id && GPU::Conv2DOpHandler::getQuantizationParameters(*(this + 3), v31, v30, v29, v28))
  {
    v6 = GPU::Conv2DOpHandler::_getQuantKernelDAGObject(this);
  }

  v7 = *(this + 3);
  v8 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v9 = [v8 mpsndarray];
  v10 = *(this + 1);
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v13 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v13 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
    goto LABEL_11;
  }

  v15 = *(this + 15);
  if (v15)
  {
    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(v15, *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v16 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 15));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v16 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
LABEL_11:

    goto LABEL_12;
  }

  v17 = *(v7 + 72);
  v18 = *(v17 + 56);
  v27 = (*(**(this + 2) + 48))(*(this + 2), *(v17 + 24), 0);
  v19 = (*(**(this + 2) + 48))(*(this + 2), v18, 0);
  v20 = [v27 mpsndarray];
  v21 = [v19 mpsndarray];
  v22 = v21;
  if (!v9 || (v20 ? (v23 = v21 == 0) : (v23 = 1), v23))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v25 = *(a2 + 1);
  v32[0] = v20;
  v32[1] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v10 encodeToMPSCommandEncoder:v24 commandBuffer:v25 sourceArrays:v26 destinationArray:v9];

LABEL_12:
}

void GPU::Conv2DDataGradientOpHandler::_createKernel(GPU::Conv2DDataGradientOpHandler *this)
{
  v77 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v77, 1u);
  v82[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v77 + 72) + 32 * ODSOperandIndexAndLength + 24));
  Value = mlir::ArrayAttr::getValue(v82);
  if (*(v77 + 36))
  {
    v4 = v77 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  v82[0] = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  v6 = mlir::ArrayAttr::getValue(v82);
  v75 = this;
  v7 = *(this + 2);
  v87[0] = v77;
  v76 = [*(v7 + 48) metalDevice];
  v8 = objc_alloc_init(MEMORY[0x1E69746B0]);
  Strides = mlir::mps::Conv3DOp::getStrides(v87);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v87);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v87);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(v87);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v19 = 0;
      v18 = 0;
      v10 = 0;
      v72 = 0;
      v74 = 0;
      goto LABEL_30;
    }

    [v8 setDataFormat:1];
    v72 = v6[2];
    v74 = v6[1];
    v10 = v6[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Strides, 0);
    v11 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v11, NumElements);
    if (v83 == v81)
    {
LABEL_7:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, InputAttributeNames, 0);
      v13 = InputAttributeNames;
      v14 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v13, v14);
      if (v83 == v81)
      {
LABEL_8:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Rewriter, 0);
        v15 = Rewriter;
        v16 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v15, v16);
        if (v83 != v81)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
            v20 = v79;
            if (v79 >= 0x41)
            {
              if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
              {
                v21 = *v78;
              }

              else
              {
                v21 = -1;
              }
            }

            else
            {
              v21 = v78;
            }

            if (v17 == 4)
            {
              v22 = v21;
            }

            else
            {
              v22 = v18;
            }

            if (v17 == 2)
            {
              v19 = v21;
            }

            else
            {
              v18 = v22;
            }

            if (v20 >= 0x41 && v78)
            {
              MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
            }

            ++v83;
            ++v17;
          }

          while (v83 != v81);
          goto LABEL_30;
        }

LABEL_28:
        v19 = 0;
        v18 = 0;
        goto LABEL_30;
      }

      v62 = 0;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
        v63 = v79;
        if (v79 >= 0x41)
        {
          if (v63 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
          {
            v64 = *v78;
            if (v62 <= 1)
            {
LABEL_132:
              if (v62)
              {
                if (v62 == 1)
                {
                  [v8 setDilationRateInY:v64];
                  goto LABEL_139;
                }

                goto LABEL_135;
              }

              if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_136:
              MTLReportFailure();
              goto LABEL_139;
            }
          }

          else
          {
            v64 = -1;
            if (v62 <= 1)
            {
              goto LABEL_132;
            }
          }
        }

        else
        {
          v64 = v78;
          if (v62 <= 1)
          {
            goto LABEL_132;
          }
        }

        if (v62 != 2)
        {
          if (v62 == 3)
          {
            if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
LABEL_135:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_139;
            }
          }

          goto LABEL_136;
        }

        [v8 setDilationRateInX:v64];
LABEL_139:
        if (v79 >= 0x41 && v78)
        {
          MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
        }

        ++v83;
        ++v62;
        if (v83 == v81)
        {
          goto LABEL_8;
        }
      }
    }

    v56 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
      v57 = v79;
      if (v79 >= 0x41)
      {
        if (v57 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
        {
          v58 = *v78;
          if (v56 <= 1)
          {
LABEL_82:
            if (v56)
            {
              if (v56 == 1)
              {
                [v8 setStrideInPixelsY:v58];
                goto LABEL_89;
              }

              goto LABEL_85;
            }

            if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_89;
            }

LABEL_86:
            MTLReportFailure();
            goto LABEL_89;
          }
        }

        else
        {
          v58 = -1;
          if (v56 <= 1)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        v58 = v78;
        if (v56 <= 1)
        {
          goto LABEL_82;
        }
      }

      if (v56 != 2)
      {
        if (v56 == 3)
        {
          if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else
        {
LABEL_85:
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_89;
          }
        }

        goto LABEL_86;
      }

      [v8 setStrideInPixelsX:v58];
LABEL_89:
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
      }

      ++v83;
      ++v56;
      if (v83 == v81)
      {
        goto LABEL_7;
      }
    }
  }

  [v8 setDataFormat:0];
  v72 = v6[3];
  v74 = v6[2];
  v10 = v6[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Strides, 0);
  v23 = Strides;
  v24 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v23, v24);
  if (v83 != v81)
  {
    v59 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
      v60 = v79;
      if (v79 >= 0x41)
      {
        if (v60 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
        {
          v61 = *v78;
          if (v59 <= 1)
          {
LABEL_105:
            if (!v59)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

LABEL_111:
              MTLReportFailure();
              goto LABEL_114;
            }

            if (v59 == 1)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

              goto LABEL_111;
            }

LABEL_110:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_114;
            }

            goto LABEL_111;
          }
        }

        else
        {
          v61 = -1;
          if (v59 <= 1)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        v61 = v78;
        if (v59 <= 1)
        {
          goto LABEL_105;
        }
      }

      if (v59 != 2)
      {
        if (v59 == 3)
        {
          [v8 setStrideInPixelsX:v61];
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      [v8 setStrideInPixelsY:v61];
LABEL_114:
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
      }

      ++v83;
      ++v59;
    }

    while (v83 != v81);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, InputAttributeNames, 0);
  v25 = InputAttributeNames;
  v26 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v25, v26);
  if (v83 != v81)
  {
    v65 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
      v66 = v79;
      if (v79 >= 0x41)
      {
        if (v66 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
        {
          v67 = *v78;
          if (v65 <= 1)
          {
LABEL_155:
            if (!v65)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

LABEL_161:
              MTLReportFailure();
              goto LABEL_164;
            }

            if (v65 == 1)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

              goto LABEL_161;
            }

LABEL_160:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_164;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v67 = -1;
          if (v65 <= 1)
          {
            goto LABEL_155;
          }
        }
      }

      else
      {
        v67 = v78;
        if (v65 <= 1)
        {
          goto LABEL_155;
        }
      }

      if (v65 != 2)
      {
        if (v65 == 3)
        {
          [v8 setDilationRateInX:v67];
          goto LABEL_164;
        }

        goto LABEL_160;
      }

      [v8 setDilationRateInY:v67];
LABEL_164:
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
      }

      ++v83;
      ++v65;
    }

    while (v83 != v81);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v82, Rewriter, 0);
  v27 = Rewriter;
  v28 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v80, v27, v28);
  if (v83 == v81)
  {
    goto LABEL_28;
  }

  v68 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v82, &v78);
    v69 = v79;
    if (v79 >= 0x41)
    {
      if (v69 - llvm::APInt::countLeadingZerosSlowCase(&v78) <= 0x40)
      {
        v70 = *v78;
      }

      else
      {
        v70 = -1;
      }
    }

    else
    {
      v70 = v78;
    }

    if (v68 == 6)
    {
      v71 = v70;
    }

    else
    {
      v71 = v18;
    }

    if (v68 == 4)
    {
      v19 = v70;
    }

    else
    {
      v18 = v71;
    }

    if (v69 >= 0x41 && v78)
    {
      MEMORY[0x1E12E5B60](v78, 0x1000C8000313F17);
    }

    ++v83;
    ++v68;
  }

  while (v83 != v81);
LABEL_30:
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(v87);
  if (WeightsLayout == 2)
  {
    [v8 setWeightsFormat:1];
    [v8 setKernelWidth:Value[3]];
    [v8 setKernelHeight:Value[2]];
    [v8 setInputFeatureChannels:Value[1]];
    goto LABEL_34;
  }

  if (WeightsLayout == 3)
  {
    [v8 setWeightsFormat:0];
    [v8 setKernelWidth:Value[1]];
    [v8 setKernelHeight:*Value];
    [v8 setInputFeatureChannels:Value[2]];
    Value += 3;
LABEL_34:
    [v8 setOutputFeatureChannels:{*Value, v72}];
  }

  [v8 setGroups:mlir::mps::Conv3DOp::getGroups(v87)];
  [v8 setInputFeatureChannels:{objc_msgSend(v8, "inputFeatureChannels") * objc_msgSend(v8, "groups")}];
  [v8 inputFeatureChannels];
  if (v10 != [v8 inputFeatureChannels] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v30 = [objc_alloc(MEMORY[0x1E69746B8]) initWithDevice:v76 ndArrayConvolution2DDescriptor:v8];
  v31 = *(v7 + 64);
  if (!*(v31 + 47) || (v88.var0 = "mps.reducedPrecisionFastMath", v88.var1 = 28, InherentAttr = mlir::Operation::getInherentAttr(*(v7 + 64), v88), (v33 & 1) == 0))
  {
    v89.var0 = "mps.reducedPrecisionFastMath";
    v89.var1 = 28;
    InherentAttr = mlir::DictionaryAttr::get((v31 + 56), v89);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v34 = InherentAttr;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v82[0] = v34;
  if ((mlir::IntegerAttr::getUInt(v82) & 2) != 0)
  {
    [v30 setOptions:{objc_msgSend(v30, "options") | 2}];
  }

  v35 = [v8 kernelWidth];
  v36 = [v8 dilationRateInX];
  v37 = [v8 kernelHeight];
  v38 = [v8 dilationRateInY];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(v87);
  v40 = PaddingStyle;
  v41 = v36 * (v35 - 1);
  v42 = v41 + 1;
  v43 = v38 * (v37 - 1);
  v44 = v43 + 1;
  if (PaddingStyle == 1)
  {
    v19 = 0;
    v18 = 0;
  }

  else if (PaddingStyle == 2 || PaddingStyle == 4)
  {
    if (v74 % [v8 strideInPixelsY])
    {
      v45 = v74 % [v8 strideInPixelsY];
    }

    else
    {
      v45 = [v8 strideInPixelsY];
    }

    if (v73 % [v8 strideInPixelsX])
    {
      v46 = v73 % [v8 strideInPixelsX];
    }

    else
    {
      v46 = [v8 strideInPixelsX];
    }

    v47 = (v44 - v45) & ~((v44 - v45) >> 63);
    v48 = (v42 - v46) & ~((v42 - v46) >> 63);
    v49 = v47 >> 1;
    v50 = v47 - (v47 >> 1);
    v51 = v48 >> 1;
    v52 = v48 - (v48 >> 1);
    if (v40 == 4)
    {
      v19 = v50;
    }

    else
    {
      v19 = v49;
    }

    if (v40 == 4)
    {
      v18 = v52;
    }

    else
    {
      v18 = v51;
    }
  }

  objc_opt_class();
  v53 = v42 / 2 - v18;
  v54 = v44 / 2 - v19;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = -v18;
      v54 = -v19;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    [v30 setOffsets:{v53, v54}];
    goto LABEL_68;
  }

  [v30 setOffsets:{0, 0}];
  [v30 setKernelOffsets:{(v41 & 1) - v53, (v43 & 1) - v54}];
LABEL_68:

  [v30 setOptions:{objc_msgSend(v30, "options") | 1}];
  v55 = *(v75 + 1);
  *(v75 + 1) = v30;
}

void GPU::Conv2DDataGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv2DDataGradientOpHandler::_createKernel(this);
  }

  v24 = this[3];
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 1u);
  v7 = *(v24[9] + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 0);
  v9 = *(v24[9] + 32 * v8 + 24);
  v10 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v11 = [v10 mpsndarray];
  v12 = (*(*this[2] + 48))(this[2], v7, 0);
  v13 = [v12 mpsndarray];

  v14 = (*(*this[2] + 48))(this[2], v9, 0);
  v15 = [v14 mpsndarray];

  if (v13)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16 || v11 == 0;
  if (v17 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = this[1];
  v26[0] = v13;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20 = [v18 resultStateForSourceArrays:v19 sourceStates:0 destinationArray:v11];

  if (*(v13 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v13 setReadCount:{objc_msgSend(v13, "readCount") + 1}];
  }

  v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v22 = *(a2 + 1);
  v25[0] = v13;
  v25[1] = v13;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v18 encodeToMPSCommandEncoder:v21 commandBuffer:v22 sourceArrays:v23 sourceGradient:v15 gradientState:v20 destinationArray:v11 kernelDAGObject:0];
}

char *GPU::Conv2DDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::Conv2DWeightsGradientOpHandler::_createKernel(GPU::Conv2DWeightsGradientOpHandler *this)
{
  v2 = *(this + 3);
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v81[0] = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  Value = mlir::ArrayAttr::getValue(v81);
  v81[0] = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 56));
  v6 = mlir::ArrayAttr::getValue(v81);
  v75 = this;
  v7 = *(this + 2);
  v86 = v2;
  v76 = [*(v7 + 48) metalDevice];
  v8 = objc_alloc_init(MEMORY[0x1E69746B0]);
  Strides = mlir::mps::Conv3DOp::getStrides(&v86);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v86);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v86);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v86);
  if (StorageType)
  {
    if (StorageType != 1)
    {
      v19 = 0;
      v18 = 0;
      v10 = 0;
      v72 = 0;
      v74 = 0;
      goto LABEL_30;
    }

    [v8 setDataFormat:1];
    v72 = v6[2];
    v74 = v6[1];
    v10 = v6[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Strides, 0);
    v11 = Strides;
    NumElements = mlir::DenseElementsAttr::getNumElements(&Strides);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v11, NumElements);
    if (v82 == v80)
    {
LABEL_7:
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, InputAttributeNames, 0);
      v13 = InputAttributeNames;
      v14 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v13, v14);
      if (v82 == v80)
      {
LABEL_8:
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Rewriter, 0);
        v15 = Rewriter;
        v16 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v15, v16);
        if (v82 != v80)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
            v20 = v78;
            if (v78 >= 0x41)
            {
              if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
              {
                v21 = *v77;
              }

              else
              {
                v21 = -1;
              }
            }

            else
            {
              v21 = v77;
            }

            if (v17 == 4)
            {
              v22 = v21;
            }

            else
            {
              v22 = v18;
            }

            if (v17 == 2)
            {
              v19 = v21;
            }

            else
            {
              v18 = v22;
            }

            if (v20 >= 0x41 && v77)
            {
              MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
            }

            ++v82;
            ++v17;
          }

          while (v82 != v80);
          goto LABEL_30;
        }

LABEL_28:
        v19 = 0;
        v18 = 0;
        goto LABEL_30;
      }

      v62 = 0;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
        v63 = v78;
        if (v78 >= 0x41)
        {
          if (v63 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
          {
            v64 = *v77;
            if (v62 <= 1)
            {
LABEL_132:
              if (v62)
              {
                if (v62 == 1)
                {
                  [v8 setDilationRateInY:v64];
                  goto LABEL_139;
                }

                goto LABEL_135;
              }

              if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_139;
              }

LABEL_136:
              MTLReportFailure();
              goto LABEL_139;
            }
          }

          else
          {
            v64 = -1;
            if (v62 <= 1)
            {
              goto LABEL_132;
            }
          }
        }

        else
        {
          v64 = v77;
          if (v62 <= 1)
          {
            goto LABEL_132;
          }
        }

        if (v62 != 2)
        {
          if (v62 == 3)
          {
            if (v64 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else
          {
LABEL_135:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_139;
            }
          }

          goto LABEL_136;
        }

        [v8 setDilationRateInX:v64];
LABEL_139:
        if (v78 >= 0x41 && v77)
        {
          MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
        }

        ++v82;
        ++v62;
        if (v82 == v80)
        {
          goto LABEL_8;
        }
      }
    }

    v56 = 0;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
      v57 = v78;
      if (v78 >= 0x41)
      {
        if (v57 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
        {
          v58 = *v77;
          if (v56 <= 1)
          {
LABEL_82:
            if (v56)
            {
              if (v56 == 1)
              {
                [v8 setStrideInPixelsY:v58];
                goto LABEL_89;
              }

              goto LABEL_85;
            }

            if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
            {
              goto LABEL_89;
            }

LABEL_86:
            MTLReportFailure();
            goto LABEL_89;
          }
        }

        else
        {
          v58 = -1;
          if (v56 <= 1)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        v58 = v77;
        if (v56 <= 1)
        {
          goto LABEL_82;
        }
      }

      if (v56 != 2)
      {
        if (v56 == 3)
        {
          if (v58 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
          {
            goto LABEL_89;
          }
        }

        else
        {
LABEL_85:
          if (!MTLReportFailureTypeEnabled())
          {
            goto LABEL_89;
          }
        }

        goto LABEL_86;
      }

      [v8 setStrideInPixelsX:v58];
LABEL_89:
      if (v78 >= 0x41 && v77)
      {
        MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
      }

      ++v82;
      ++v56;
      if (v82 == v80)
      {
        goto LABEL_7;
      }
    }
  }

  [v8 setDataFormat:0];
  v72 = v6[3];
  v74 = v6[2];
  v10 = v6[1];
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Strides, 0);
  v23 = Strides;
  v24 = mlir::DenseElementsAttr::getNumElements(&Strides);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v23, v24);
  if (v82 != v80)
  {
    v59 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
      v60 = v78;
      if (v78 >= 0x41)
      {
        if (v60 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
        {
          v61 = *v77;
          if (v59 <= 1)
          {
LABEL_105:
            if (!v59)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

LABEL_111:
              MTLReportFailure();
              goto LABEL_114;
            }

            if (v59 == 1)
            {
              if (v61 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_114;
              }

              goto LABEL_111;
            }

LABEL_110:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_114;
            }

            goto LABEL_111;
          }
        }

        else
        {
          v61 = -1;
          if (v59 <= 1)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        v61 = v77;
        if (v59 <= 1)
        {
          goto LABEL_105;
        }
      }

      if (v59 != 2)
      {
        if (v59 == 3)
        {
          [v8 setStrideInPixelsX:v61];
          goto LABEL_114;
        }

        goto LABEL_110;
      }

      [v8 setStrideInPixelsY:v61];
LABEL_114:
      if (v78 >= 0x41 && v77)
      {
        MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
      }

      ++v82;
      ++v59;
    }

    while (v82 != v80);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, InputAttributeNames, 0);
  v25 = InputAttributeNames;
  v26 = mlir::DenseElementsAttr::getNumElements(&InputAttributeNames);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v25, v26);
  if (v82 != v80)
  {
    v65 = 0;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
      v66 = v78;
      if (v78 >= 0x41)
      {
        if (v66 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
        {
          v67 = *v77;
          if (v65 <= 1)
          {
LABEL_155:
            if (!v65)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

LABEL_161:
              MTLReportFailure();
              goto LABEL_164;
            }

            if (v65 == 1)
            {
              if (v67 == 1 || (MTLReportFailureTypeEnabled() & 1) == 0)
              {
                goto LABEL_164;
              }

              goto LABEL_161;
            }

LABEL_160:
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_164;
            }

            goto LABEL_161;
          }
        }

        else
        {
          v67 = -1;
          if (v65 <= 1)
          {
            goto LABEL_155;
          }
        }
      }

      else
      {
        v67 = v77;
        if (v65 <= 1)
        {
          goto LABEL_155;
        }
      }

      if (v65 != 2)
      {
        if (v65 == 3)
        {
          [v8 setDilationRateInX:v67];
          goto LABEL_164;
        }

        goto LABEL_160;
      }

      [v8 setDilationRateInY:v67];
LABEL_164:
      if (v78 >= 0x41 && v77)
      {
        MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
      }

      ++v82;
      ++v65;
    }

    while (v82 != v80);
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v81, Rewriter, 0);
  v27 = Rewriter;
  v28 = mlir::DenseElementsAttr::getNumElements(&Rewriter);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v79, v27, v28);
  if (v82 == v80)
  {
    goto LABEL_28;
  }

  v68 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v81, &v77);
    v69 = v78;
    if (v78 >= 0x41)
    {
      if (v69 - llvm::APInt::countLeadingZerosSlowCase(&v77) <= 0x40)
      {
        v70 = *v77;
      }

      else
      {
        v70 = -1;
      }
    }

    else
    {
      v70 = v77;
    }

    if (v68 == 6)
    {
      v71 = v70;
    }

    else
    {
      v71 = v18;
    }

    if (v68 == 4)
    {
      v19 = v70;
    }

    else
    {
      v18 = v71;
    }

    if (v69 >= 0x41 && v77)
    {
      MEMORY[0x1E12E5B60](v77, 0x1000C8000313F17);
    }

    ++v82;
    ++v68;
  }

  while (v82 != v80);
LABEL_30:
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v86);
  if (WeightsLayout == 2)
  {
    [v8 setWeightsFormat:1];
    [v8 setKernelWidth:Value[3]];
    [v8 setKernelHeight:Value[2]];
    [v8 setInputFeatureChannels:Value[1]];
    goto LABEL_34;
  }

  if (WeightsLayout == 3)
  {
    [v8 setWeightsFormat:0];
    [v8 setKernelWidth:Value[1]];
    [v8 setKernelHeight:*Value];
    [v8 setInputFeatureChannels:Value[2]];
    Value += 3;
LABEL_34:
    [v8 setOutputFeatureChannels:{*Value, v72}];
  }

  [v8 setGroups:mlir::mps::Conv3DOp::getGroups(&v86)];
  [v8 setInputFeatureChannels:{objc_msgSend(v8, "inputFeatureChannels") * objc_msgSend(v8, "groups")}];
  [v8 inputFeatureChannels];
  if (v10 != [v8 inputFeatureChannels] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v30 = [objc_alloc(MEMORY[0x1E69746C0]) initWithDevice:v76 ndArrayConvolution2DDescriptor:v8];
  v31 = *(v7 + 64);
  if (!*(v31 + 47) || (v87.var0 = "mps.reducedPrecisionFastMath", v87.var1 = 28, InherentAttr = mlir::Operation::getInherentAttr(*(v7 + 64), v87), (v33 & 1) == 0))
  {
    v88.var0 = "mps.reducedPrecisionFastMath";
    v88.var1 = 28;
    InherentAttr = mlir::DictionaryAttr::get((v31 + 56), v88);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v34 = InherentAttr;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v81[0] = v34;
  if ((mlir::IntegerAttr::getUInt(v81) & 2) != 0)
  {
    [v30 setOptions:{objc_msgSend(v30, "options") | 2}];
  }

  v35 = [v8 kernelWidth];
  v36 = [v8 dilationRateInX];
  v37 = [v8 kernelHeight];
  v38 = [v8 dilationRateInY];
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v86);
  v40 = PaddingStyle;
  v41 = v36 * (v35 - 1);
  v42 = v41 + 1;
  v43 = v38 * (v37 - 1);
  v44 = v43 + 1;
  if (PaddingStyle == 1)
  {
    v19 = 0;
    v18 = 0;
  }

  else if (PaddingStyle == 2 || PaddingStyle == 4)
  {
    if (v74 % [v8 strideInPixelsY])
    {
      v45 = v74 % [v8 strideInPixelsY];
    }

    else
    {
      v45 = [v8 strideInPixelsY];
    }

    if (v73 % [v8 strideInPixelsX])
    {
      v46 = v73 % [v8 strideInPixelsX];
    }

    else
    {
      v46 = [v8 strideInPixelsX];
    }

    v47 = (v44 - v45) & ~((v44 - v45) >> 63);
    v48 = (v42 - v46) & ~((v42 - v46) >> 63);
    v49 = v47 >> 1;
    v50 = v47 - (v47 >> 1);
    v51 = v48 >> 1;
    v52 = v48 - (v48 >> 1);
    if (v40 == 4)
    {
      v19 = v50;
    }

    else
    {
      v19 = v49;
    }

    if (v40 == 4)
    {
      v18 = v52;
    }

    else
    {
      v18 = v51;
    }
  }

  objc_opt_class();
  v53 = v42 / 2 - v18;
  v54 = v44 / 2 - v19;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = -v18;
      v54 = -v19;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    [v30 setOffsets:{v53, v54}];
    goto LABEL_68;
  }

  [v30 setOffsets:{0, 0}];
  [v30 setKernelOffsets:{(v41 & 1) - v53, (v43 & 1) - v54}];
LABEL_68:

  [v30 setOptions:{objc_msgSend(v30, "options") | 1}];
  v55 = *(v75 + 1);
  *(v75 + 1) = v30;
}

void GPU::Conv2DWeightsGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv2DWeightsGradientOpHandler::_createKernel(this);
  }

  v6 = *(this[3] + 9);
  v7 = *(v6 + 56);
  v8 = *(v6 + 24);
  v9 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v10 = [v9 mpsndarray];
  v11 = (*(*this[2] + 48))(this[2], v7, 0);
  v12 = [v11 mpsndarray];

  v13 = (*(*this[2] + 48))(this[2], v8, 0);
  v14 = [v13 mpsndarray];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v10 == 0;
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = this[1];
  v24[0] = v12;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v19 = [v17 resultStateForSourceArrays:v18 sourceStates:0 destinationArray:v10];

  if (*(v12 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v12 setReadCount:{objc_msgSend(v12, "readCount") + 1}];
  }

  v20 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v21 = *(a2 + 1);
  v23[0] = v12;
  v23[1] = v12;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v17 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v22 sourceGradient:v14 gradientState:v19 destinationArray:v10 kernelDAGObject:0];
}

char *GPU::Conv2DWeightsGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::Conv3DOpHandler::_createNDArrayMultiaryKernel(GPU::Conv3DOpHandler *this)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  v2 = (this + 16);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v1 + 72) + 56));
  mlir::ArrayAttr::getValue(&StaticType);
  StaticType = GPURegionRuntime::getStaticType(*v2, *(*(v1 + 72) + 24));
  mlir::ArrayAttr::getValue(&StaticType);
  v3 = [*(*v2 + 48) metalDevice];
  v12[0] = v1;
  v4 = v3;
  [objc_alloc(MEMORY[0x1E69746C8]) initWithDevice:v4];
  Strides = mlir::mps::Conv3DOp::getStrides(v12);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v12);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v12);
  if (v11 != StaticType)
  {
    if (((v11 - StaticType) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  mlir::mps::MaterializeSparseTensorOp::getStorageType(v12);
  operator new();
}

void sub_1E07E0C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p)
{
  operator delete(v16);
  operator delete(v19);
  operator delete(v18);
  operator delete(v17);
  operator delete(__p);
  operator delete(a14);
  v24 = *(v20 - 208);
  if (v24)
  {
    *(v20 - 200) = v24;
    operator delete(v24);
    v22 = *(v20 - 184);
    if (v22)
    {
LABEL_7:
      *(v20 - 176) = v22;
      operator delete(v22);
      v23 = *(v20 - 160);
      if (!v23)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v22 = *(v20 - 184);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v23 = *(v20 - 160);
  if (!v23)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v20 - 152) = v23;
  operator delete(v23);
  goto LABEL_9;
}

void GPU::Conv3DDataGradientOpHandler::_createKernel(GPU::Conv3DDataGradientOpHandler *this)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v12 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v12, 1u);
  v3 = (this + 16);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v12 + 72) + 32 * ODSOperandIndexAndLength + 24));
  mlir::ArrayAttr::getValue(&StaticType);
  if (*(v12 + 36))
  {
    v4 = v12 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  StaticType = GPURegionRuntime::getStaticType(*v3, NextResultAtOffset);
  mlir::ArrayAttr::getValue(&StaticType);
  v6 = v12;
  v7 = [*(*v3 + 48) metalDevice];
  v17[0] = v6;
  v8 = v7;
  [objc_alloc(MEMORY[0x1E69746D0]) initWithDevice:v8];
  Strides = mlir::mps::Conv3DOp::getStrides(v17);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v17);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v17);
  if (v16 != StaticType)
  {
    if (((v16 - StaticType) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  mlir::mps::MaterializeSparseTensorOp::getStorageType(v17);
  operator new();
}

void sub_1E07E1B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *__p)
{
  operator delete(v17);
  operator delete(v20);
  operator delete(v19);
  operator delete(v18);
  operator delete(__p);
  operator delete(a15);
  v25 = *(v21 - 208);
  if (v25)
  {
    *(v21 - 200) = v25;
    operator delete(v25);
    v23 = *(v21 - 184);
    if (v23)
    {
LABEL_7:
      *(v21 - 176) = v23;
      operator delete(v23);
      v24 = *(v21 - 160);
      if (!v24)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(v21 - 184);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  v24 = *(v21 - 160);
  if (!v24)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v21 - 152) = v24;
  operator delete(v24);
  goto LABEL_9;
}

void GPU::Conv3DDataGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv3DDataGradientOpHandler::_createKernel(this);
  }

  v24 = this[3];
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 1u);
  v7 = *(v24[9] + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v24, 0);
  v9 = *(v24[9] + 32 * v8 + 24);
  v10 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v11 = [v10 mpsndarray];
  v12 = (*(*this[2] + 48))(this[2], v7, 0);
  v13 = [v12 mpsndarray];

  v14 = (*(*this[2] + 48))(this[2], v9, 0);
  v15 = [v14 mpsndarray];

  if (v13)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16 || v11 == 0;
  if (v17 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = this[1];
  v26[0] = v13;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20 = [v18 resultStateForSourceArrays:v19 sourceStates:0 destinationArray:v11];

  if (*(v13 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v13 setReadCount:{objc_msgSend(v13, "readCount") + 1}];
  }

  v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v22 = *(a2 + 1);
  v25[0] = v13;
  v25[1] = v13;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v18 encodeToMPSCommandEncoder:v21 commandBuffer:v22 sourceArrays:v23 sourceGradient:v15 gradientState:v20 destinationArray:v11 kernelDAGObject:0];
}

char *GPU::Conv3DDataGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::Conv3DWeightsGradientOpHandler::_createKernel(GPU::Conv3DWeightsGradientOpHandler *this)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  mlir::ArrayAttr::getValue(&StaticType);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v2 + 72) + 56));
  mlir::ArrayAttr::getValue(&StaticType);
  v5 = [*(*(this + 2) + 48) metalDevice];
  v14[0] = v2;
  v6 = v5;
  [objc_alloc(MEMORY[0x1E69746D8]) initWithDevice:v6];
  Strides = mlir::mps::Conv3DOp::getStrides(v14);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v14);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v14);
  if (v13 != StaticType)
  {
    if (((v13 - StaticType) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  mlir::mps::MaterializeSparseTensorOp::getStorageType(v14);
  operator new();
}

void sub_1E07E2CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p)
{
  operator delete(v16);
  operator delete(v19);
  operator delete(v18);
  operator delete(v17);
  operator delete(__p);
  operator delete(a14);
  v24 = *(v20 - 208);
  if (v24)
  {
    *(v20 - 200) = v24;
    operator delete(v24);
    v22 = *(v20 - 184);
    if (v22)
    {
LABEL_7:
      *(v20 - 176) = v22;
      operator delete(v22);
      v23 = *(v20 - 160);
      if (!v23)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v22 = *(v20 - 184);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v23 = *(v20 - 160);
  if (!v23)
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v20 - 152) = v23;
  operator delete(v23);
  goto LABEL_9;
}

void GPU::Conv3DWeightsGradientOpHandler::encodeNDArrayOp(id *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((this[5] & 1) == 0)
  {
    GPU::Conv3DWeightsGradientOpHandler::_createKernel(this);
  }

  v6 = *(this[3] + 9);
  v7 = *(v6 + 56);
  v8 = *(v6 + 24);
  v9 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v10 = [v9 mpsndarray];
  v11 = (*(*this[2] + 48))(this[2], v7, 0);
  v12 = [v11 mpsndarray];

  v13 = (*(*this[2] + 48))(this[2], v8, 0);
  v14 = [v13 mpsndarray];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v10 == 0;
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = this[1];
  v24[0] = v12;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v19 = [v17 resultStateForSourceArrays:v18 sourceStates:0 destinationArray:v10];

  if (*(v12 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v12 setReadCount:{objc_msgSend(v12, "readCount") + 1}];
  }

  v20 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v21 = *(a2 + 1);
  v23[0] = v12;
  v23[1] = v12;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v17 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v22 sourceGradient:v14 gradientState:v19 destinationArray:v10 kernelDAGObject:0];
}

char *GPU::Conv3DWeightsGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

uint64_t GPU::Conv2DOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 24);
  v12 = 0;
  v10 = 0;
  if (GPU::Conv2DOpHandler::getQuantizationParameters(v7, &v12, v11, &v10, &v9))
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v12, 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v10, 0);
    MPSKernelDAG::binaryCoreOp();
    result = MPSKernelDAG::castOp();
  }

  else
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v7 + 9) + 24), 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v7 + 9) + 56), 0);
    result = MPSKernelDAG::binaryCoreOp();
  }

  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::Conv2DOpHandler::~Conv2DOpHandler(GPU::Conv2DOpHandler *this)
{
  *this = &unk_1F5B503A8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B503A8;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv2DDataGradientOpHandler::~Conv2DDataGradientOpHandler(GPU::Conv2DDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv2DWeightsGradientOpHandler::~Conv2DWeightsGradientOpHandler(GPU::Conv2DWeightsGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv3DDataGradientOpHandler::~Conv3DDataGradientOpHandler(GPU::Conv3DDataGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::Conv3DWeightsGradientOpHandler::~Conv3DWeightsGradientOpHandler(GPU::Conv3DWeightsGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::Conv3DOpHandler,mlir::mps::Conv3DOp,MPSNDArrayConvolution3D,2ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::Conv3DOpHandler::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 56), 0);
    v14 = [v13 mpsndarray];

    if (!v14 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v14];

    v10 = 0;
  }

  v15 = *(a1 + 8);
  v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v15 encodeToMPSCommandEncoder:v16 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

uint64_t GPU::Conv3DOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v7 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v7 + 72) + 56), 0);
  result = MPSKernelDAG::binaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::Conv3DOpHandler::~Conv3DOpHandler(GPU::Conv3DOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::Conv3DOpHandler,mlir::mps::Conv3DOp,MPSNDArrayConvolution3D,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::anonymous namespace::getIntValuesAsType<long long>(void *a1, uint64_t a2)
{
  v14 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a2, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, a2, NumElements);
  for (; v13 != v11; ++v13)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &v8);
    v5 = v9;
    if (v9 >= 0x41)
    {
      if (v5 - llvm::APInt::countLeadingZerosSlowCase(&v8) <= 0x40)
      {
        v6 = *v8;
      }

      else
      {
        v6 = -1;
      }
    }

    else
    {
      v6 = v8;
    }

    v7 = v6;
    std::vector<long long>::push_back[abi:ne200100](a1, &v7);
    if (v9 >= 0x41)
    {
      if (v8)
      {
        MEMORY[0x1E12E5B60](v8, 0x1000C8000313F17);
      }
    }
  }
}

void sub_1E07E3BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void GPU::anonymous namespace::getPaddingOffsets(void *a1, void *a2, _BYTE *a3, _BYTE *a4, void *a5, void *a6, void *a7, int a8, char a9, char a10)
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (a4 != a3)
  {
    if (((a4 - a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v10 = a5[1];
  if (v10 != *a5)
  {
    if (((v10 - *a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v11 = a2[1];
  if (v11 != *a2)
  {
    if (((v11 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v12 = a6[1];
  if (v12 == *a6)
  {
    v13 = a7[1];
    if (v13 == *a7)
    {
      memset(__src, 0, sizeof(__src));
      if (!a8)
      {
        std::vector<long>::__assign_with_size[abi:ne200100]<long *,long *>(__src, 0, 0, 0);
      }

      v20 = v17;
      v21[0] = v18;
      *&v21[1] = v15;
      v21[3] = v16;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      operator new();
    }

    if (((v13 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (((v12 - *a6) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<long>::__throw_length_error[abi:ne200100]();
}

void sub_1E07E437C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      if (!v25)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  if (!v25)
  {
LABEL_4:
    if (!v24)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  operator delete(v25);
  if (!v24)
  {
LABEL_6:
    if (v23)
    {
      operator delete(v23);
    }

    if (a15)
    {
      operator delete(a15);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v24);
  goto LABEL_6;
}

char *std::vector<long>::__assign_with_size[abi:ne200100]<long *,long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void std::vector<long>::__insert_with_size[abi:ne200100]<long const*,long const*>(uint64_t a1, char *__src, char *a3, char *a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v8;
  if ((v7 - v8) < 9)
  {
    v10 = *a1;
    v11 = ((v8 - *a1) >> 3) + 2;
    if (v11 >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = (8 * (v12 >> 3));
    *v30 = *a3;
    v31 = v9 - __src;
    memcpy(v30 + 1, __src, v9 - __src);
    *(a1 + 8) = __src;
    memcpy(0, v10, v12);
    *a1 = 0;
    *(a1 + 8) = v30 + v31 + 16;
    *(a1 + 16) = 0;
    if (v10)
    {

      operator delete(v10);
    }

    return;
  }

  v15 = v8 - __src;
  if ((v8 - __src) > 8)
  {
    v29 = __src + 16;
    if (v8 >= 0x10)
    {
      *v8 = *(v8 - 16);
      if (v8 - 8 >= v8)
      {
        *(a1 + 8) = v8 + 8;
        if (v8 == v29)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      *(v8 + 8) = *(v8 - 8);
      v9 = (v8 + 16);
    }

    *(a1 + 8) = v9;
    if (v8 == v29)
    {
LABEL_31:
      *__src = *a3;
      return;
    }

LABEL_30:
    memmove(__src + 16, __src, v8 - v29);
    goto LABEL_31;
  }

  v16 = &a3[v15];
  if (&a3[v15] != a4)
  {
    v17 = &__src[a4] - a3 - v8 - 8;
    if (v17 < 0x18)
    {
      goto LABEL_43;
    }

    if ((__src - a3) < 0x20)
    {
      goto LABEL_43;
    }

    v18 = (v17 >> 3) + 1;
    v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v16 += v19;
    v9 = (v8 + v19);
    v20 = (v8 + 16);
    v21 = &a3[v8 + 16 - __src];
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v21;
      *(v20 - 1) = *(v21 - 1);
      *v20 = v23;
      v20 += 2;
      v21 += 32;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_43:
      do
      {
        v24 = *v16;
        v16 += 8;
        *v9 = v24;
        v9 += 8;
      }

      while (v16 != a4);
    }
  }

  *(a1 + 8) = v9;
  if (v15 == 8)
  {
    v25 = __src + 16;
    v26 = v9 - 16;
    for (i = v9; v26 < v8; i += 8)
    {
      v28 = *v26;
      v26 += 8;
      *i = v28;
    }

    *(a1 + 8) = i;
    if (v9 != v25)
    {
      memmove(__src + 16, __src, v9 - v25);
    }

    if (v8 != __src)
    {
      *__src = *a3;
    }
  }
}

void sub_1E07E539C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  operator delete(v47);

  _Unwind_Resume(a1);
}

void nsArrayToUI64Attr(void *a1, uint64_t **a2)
{
  v3 = a1;
  mlir::Builder::getIntegerType(a2, 64, 0);
  [v3 count];
  operator new();
}

void sub_1E07E55F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

void GPU::GPURegionCallOpHandler::ScheduleStep::finalize(uint64_t **this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return;
  }

  v3 = *this;
  v69 = &(*this)[2 * v1];
  do
  {
    v4 = *v3;
    if ((*(*v3 + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        if (*(this + 80) == 1)
        {
          v6 = 0;
          v7 = *(v4 + 72);
          v8 = 1;
          do
          {
            while ((v8 & 1) == 0)
            {
              v8 = 0;
              if (++v6 == v5)
              {
                goto LABEL_3;
              }
            }

            v9 = (*(*(v7 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            v10 = *v9;
            {
              v32 = llvm::getTypeName<mlir::ShapedType>();
              mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v32, v33);
            }

            v11 = *(v10 + 16);
            if (!v11)
            {
              goto LABEL_21;
            }

            v12 = *(v10 + 8);
            v13 = *(v10 + 16);
            do
            {
              v14 = v13 >> 1;
              v15 = &v12[2 * (v13 >> 1)];
              v17 = *v15;
              v16 = v15 + 2;
              v13 += ~(v13 >> 1);
              if (v17 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
              {
                v12 = v16;
              }

              else
              {
                v13 = v14;
              }
            }

            while (v13);
            if (v12 != (*(v10 + 8) + 16 * v11) && *v12 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
            {
              v18 = v12[1];
              if (!v18)
              {
                v9 = 0;
                goto LABEL_23;
              }

              v24 = *v9;
              {
                v34 = llvm::getTypeName<mlir::ShapedType>();
                mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v34, v35);
              }

              v25 = *(v24 + 16);
              if (v25)
              {
                v26 = *(v24 + 8);
                v27 = *(v24 + 16);
                do
                {
                  v28 = v27 >> 1;
                  v29 = &v26[2 * (v27 >> 1)];
                  v31 = *v29;
                  v30 = v29 + 2;
                  v27 += ~(v27 >> 1);
                  if (v31 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
                  {
                    v26 = v30;
                  }

                  else
                  {
                    v27 = v28;
                  }
                }

                while (v27);
                if (v26 != (*(v24 + 8) + 16 * v25) && *v26 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
                {
                  v18 = v26[1];
                  goto LABEL_23;
                }
              }
            }

            else
            {
LABEL_21:
              v9 = 0;
            }

            v18 = 0;
LABEL_23:
            v71 = v9;
            v72 = v18;
            if (v9)
            {
              if (mlir::CallOpInterface::getArgOperands(&v71))
              {
                ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v71);
                if (v20)
                {
                  v21 = 8 * v20 - 8;
                  do
                  {
                    v22 = *ArgAttrsAttr++;
                    LOBYTE(v18) = v22 != 0x8000000000000000;
                    v23 = v22 == 0x8000000000000000 || v21 == 0;
                    v21 -= 8;
                  }

                  while (!v23);
                }

                else
                {
                  LOBYTE(v18) = 1;
                }
              }

              else
              {
                LOBYTE(v18) = 0;
              }
            }

            v8 = ((v9 == 0) | v18) & this[10];
            *(this + 80) = v8;
            ++v6;
          }

          while (v6 != v5);
        }
      }
    }

LABEL_3:
    v3 += 2;
  }

  while (v3 != v69);
  v36 = *(this + 2);
  if (v36)
  {
    v37 = *this;
    v70 = &(*this)[2 * v36];
    while (1)
    {
      v38 = *(*v37 + 36);
      v39 = v38 ? *v37 - 16 : 0;
      if (v38)
      {
        break;
      }

LABEL_57:
      v37 += 2;
      if (v37 == v70)
      {
        return;
      }
    }

    v40 = 0;
    while (2)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v39, v40);
      if (*(this + 80) == 1)
      {
        v43 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        v44 = *v43;
        {
          v65 = llvm::getTypeName<mlir::ShapedType>();
          mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v65, v66);
        }

        v45 = *(v44 + 16);
        if (!v45)
        {
          goto LABEL_78;
        }

        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        do
        {
          v48 = v47 >> 1;
          v49 = &v46[2 * (v47 >> 1)];
          v51 = *v49;
          v50 = v49 + 2;
          v47 += ~(v47 >> 1);
          if (v51 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
          {
            v46 = v50;
          }

          else
          {
            v47 = v48;
          }
        }

        while (v47);
        if (v46 == (*(v44 + 8) + 16 * v45) || *v46 != mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
        {
LABEL_78:
          v43 = 0;
          goto LABEL_79;
        }

        v41 = v46[1];
        if (v41)
        {
          v57 = *v43;
          {
            v67 = llvm::getTypeName<mlir::ShapedType>();
            mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v67, v68);
          }

          v58 = *(v57 + 16);
          if (!v58)
          {
            goto LABEL_79;
          }

          v59 = *(v57 + 8);
          v60 = *(v57 + 16);
          do
          {
            v61 = v60 >> 1;
            v62 = &v59[2 * (v60 >> 1)];
            v64 = *v62;
            v63 = v62 + 2;
            v60 += ~(v60 >> 1);
            if (v64 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
            {
              v59 = v63;
            }

            else
            {
              v60 = v61;
            }
          }

          while (v60);
          if (v59 != (*(v57 + 8) + 16 * v58) && *v59 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
          {
            v41 = v59[1];
          }

          else
          {
LABEL_79:
            v41 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        v71 = v43;
        v72 = v41;
        if (v43)
        {
          if (mlir::CallOpInterface::getArgOperands(&v71))
          {
            v52 = mlir::CallableOpInterface::getArgAttrsAttr(&v71);
            if (v53)
            {
              v54 = 8 * v53 - 8;
              do
              {
                v55 = *v52++;
                LOBYTE(v41) = v55 != 0x8000000000000000;
                v56 = v55 == 0x8000000000000000 || v54 == 0;
                v54 -= 8;
              }

              while (!v56);
            }

            else
            {
              LOBYTE(v41) = 1;
            }
          }

          else
          {
            LOBYTE(v41) = 0;
          }
        }

        *(this + 80) &= (v43 == 0) | v41;
      }

      if (++v40 == v38)
      {
        goto LABEL_57;
      }

      continue;
    }
  }
}