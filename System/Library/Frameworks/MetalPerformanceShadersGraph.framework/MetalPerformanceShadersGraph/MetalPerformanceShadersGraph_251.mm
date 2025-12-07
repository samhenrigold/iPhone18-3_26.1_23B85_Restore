id GPU::GetCoordOpHandler::_getKernelDAGObject(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 128);
  if (!v4 || *(a1 + 40) != 1)
  {
    v6 = *a3;
    v7 = (a3[1] - *a3) >> 3;
    if (a2 < 0)
    {
      v7 = 0;
    }

    v8 = v7 + ~a2;
    if (v8 >= 4)
    {
      v9 = *(v6 + 24);
      *(v6 + 24) = *(v6 + 8 * v8);
      *(v6 + 8 * v8) = v9;
    }

    operator new();
  }

  v5 = v4;

  return v5;
}

void sub_1E088C230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *GPU::GetCoordOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 0);
  }
}

void GPU::GetCoordOpHandler::encodeNDArrayOp(GPU::GetCoordOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v5 = a3;
  v6 = *(this + 3);
  v29 = v5;
  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v6 + 72) + 24), &v33);
  v7 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v8 = [v7 mpsndarray];

  v9 = v8;
  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = CoordAxis;
  v13 = v33;
  v12 = v34;
  v14 = v34 - v33;
  v15 = (v34 - v33) >> 3;
  if (CoordAxis < 0)
  {
    v15 = 0;
  }

  v16 = v15 + ~CoordAxis;
  if (v16 < 4)
  {
    v28 = v9;
    v22 = *(this + 1);
    if (v12 == v13)
    {
      goto LABEL_8;
    }

LABEL_10:
    if ((v14 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v17 = [v9 descriptor];
  [v17 transposeDimension:v16 withDimension:3];
  if (*(v9 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v9 setReadCount:{objc_msgSend(v9, "readCount") + 1}];
  }

  v18 = *(a2 + 1);
  v19 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v28 = [v9 safeArrayViewWithCommandBuffer:v18 computeEncoder:v19 descriptor:v17 aliasing:1];

  v21 = v33;
  v20 = v34;
  v14 = v34 - v33;
  v22 = *(this + 1);
  if (v20 != v21)
  {
    goto LABEL_10;
  }

LABEL_8:
  __p = 0;
  v31 = 0;
  v32 = 0;
  if (*(v6 + 36))
  {
    v23 = v6 - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v26 = GPU::GetCoordOpHandler::_getKernelDAGObject(this, v11, &__p, MPSDataType);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  v27 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v22 encodeToMPSCommandEncoder:v27 commandBuffer:*(a2 + 1) sourceArrays:MEMORY[0x1E695E0F0] resultState:0 destinationArray:v28 kernelDAGObject:v26];

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }
}

void sub_1E088C630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GPU::GetCoordOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{

  return MPSKernelDAG::getCoordValueOp();
}

uint64_t GPU::BandPartOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  BaseTensorFromDataMap = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 24), 0);
  v13 = *(a2 + 80);

  return MEMORY[0x1EEDCDD68](v13, BaseTensorFromDataMap, CoordAxis, v11, a3, a4, a5);
}

uint64_t GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::DepthToSpace2DOp,true>::SpaceToDepth2DGenericOpHandler(uint64_t a1, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::GenericDAGOpHandler::GenericDAGOpHandler(a1, a2, a3, a4);
  *v6 = &unk_1F5B53510;
  v6[16] = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = *(a1 + 128);
  *(a1 + 128) = 0;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::SpaceToDepth2DOp,false>::SpaceToDepth2DGenericOpHandler(uint64_t a1, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::GenericDAGOpHandler::GenericDAGOpHandler(a1, a2, a3, a4);
  *v6 = &unk_1F5B53560;
  v6[16] = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = *(a1 + 128);
  *(a1 + 128) = 0;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::SpaceToBatchGenericOpHandler<mlir::mps::BatchToSpaceOp,true>::SpaceToBatchGenericOpHandler(uint64_t a1, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *v6 = &unk_1F5B535B0;
  *(v6 + 15) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = *(a1 + 120);
  *(a1 + 120) = 0;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::SpaceToBatchGenericOpHandler<mlir::mps::SpaceToBatchOp,false>::SpaceToBatchGenericOpHandler(uint64_t a1, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *v6 = &unk_1F5B53600;
  *(v6 + 15) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = *(a1 + 120);
  *(a1 + 120) = 0;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

void GPU::GetCoordOpHandler::~GetCoordOpHandler(id *this)
{
  *this = &unk_1F5B4D918;
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  *this = &unk_1F5B4D918;
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BandPartOpHandler::~BandPartOpHandler(GPU::BandPartOpHandler *this)
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

void GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::DepthToSpace2DOp,true>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 16);
  v95 = a1;
  v98 = *(a1 + 24);
  v87 = v5;
  v7 = (*(*v6 + 48))(v6, *(*(v98 + 72) + 24), 0);
  v8 = [v7 mpsndarray];

  v88 = [v5 objectAtIndexedSubscript:0];
  v9 = [v88 mpsndarray];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v89 = v9;
  if (v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = [v8 descriptor];
  v12 = [v11 getShape];

  v91 = [v12 count];
  if (CoordAxis >= 0)
  {
    v14 = v91;
  }

  else
  {
    v14 = 0;
  }

  if (v15 >= 0)
  {
    v16 = v91;
  }

  else
  {
    v16 = 0;
  }

  v94 = a2;
  if (v17 >= 0)
  {
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  Index = mlir::pdl::ResultOp::getIndex(&v98);
  v20 = v14 + ~CoordAxis;
  v21 = v16 + ~v15;
  v22 = v18 + ~v17;
  [v8 dataType];
  v23 = v8;
  v24 = v89;
  memset(&v112[1], 0, 96);
  v25 = v20 <= 3 && v21 <= 3;
  v26 = v22;
  v27 = v25 && v22 < 4;
  v111 = 0uLL;
  v112[0] = 0uLL;
  v93 = v24;
  v90 = Index;
  if (v27)
  {
    v86 = 0;
    v96 = v24;
    v97 = v23;
    v29 = v91;
    goto LABEL_64;
  }

  v85 = [v23 descriptor];
  v29 = v91;
  if (!v91)
  {
    goto LABEL_36;
  }

  if (v91 <= 3)
  {
    for (i = 0; i != v91; ++i)
    {
LABEL_28:
      *(&v112[-1] + i) = i;
    }

    goto LABEL_29;
  }

  i = v91 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = xmmword_1E09700F0;
  v31 = v112;
  v32 = vdupq_n_s64(2uLL);
  v33 = vdupq_n_s64(4uLL);
  v34 = v91 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v31[-1] = v28;
    *v31 = vaddq_s64(v28, v32);
    v28 = vaddq_s64(v28, v33);
    v31 += 2;
    v34 -= 4;
  }

  while (v34);
  if (v91 != i)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v91 >= 1)
  {
    v35 = 0;
    v36 = -1;
    do
    {
      if (*(&v112[-1] + v35) == 1)
      {
        v36 = v35;
      }

      ++v35;
      v37 = 1;
    }

    while (v35 < (v91 & 0x7FFFFFFF) && v36 < 0);
    goto LABEL_37;
  }

LABEL_36:
  v37 = 0;
  v36 = -1;
LABEL_37:
  if (v36 != v20)
  {
    v38 = 8 * v20;
    *(&v112[-1] + v36) = *(&v112[-1] + v38);
    *(&v112[-1] + v38) = 1;
  }

  if (v37)
  {
    v39 = 0;
    v40 = -1;
    do
    {
      if (*(&v112[-1] + v39) == 2)
      {
        v40 = v39;
      }

      ++v39;
    }

    while (v39 < (v91 & 0x7FFFFFFF) && v40 < 0);
  }

  else
  {
    v40 = -1;
  }

  if (v40 != v21)
  {
    v41 = 8 * v21;
    *(&v112[-1] + v40) = *(&v112[-1] + v41);
    *(&v112[-1] + v41) = 2;
  }

  if (v37)
  {
    v42 = 0;
    v43 = -1;
    v44 = v93;
    do
    {
      if (*(&v112[-1] + v42) == 3)
      {
        v43 = v42;
      }

      ++v42;
    }

    while (v42 < (v91 & 0x7FFFFFFF) && v43 < 0);
  }

  else
  {
    v43 = -1;
    v44 = v93;
  }

  if (v43 != v22)
  {
    v45 = 8 * v22;
    *(&v112[-1] + v43) = *(&v112[-1] + v45);
    *(&v112[-1] + v45) = 3;
  }

  v46 = [v44 descriptor];
  [v85 permuteWithDimensionOrder:&v111];
  [v46 permuteWithDimensionOrder:&v111];
  v47 = *(v94 + 1);
  v48 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
  v97 = [v23 safeArrayViewWithCommandBuffer:v47 computeEncoder:v48 descriptor:v85 aliasing:0];

  v49 = [v97 descriptor];
  v50 = [v49 getShape];

  v12 = v50;
  if (*(v93 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v93 setReadCount:{objc_msgSend(v93, "readCount") + 1}];
  }

  v51 = *(v94 + 1);
  v52 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
  v96 = [v93 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v46 aliasing:1];

  v53 = v96 == 0;
  if (!v96)
  {
    [v46 setPreferPackedRows:1];
    v96 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(v94 + 1) descriptor:v46];
  }

  v86 = v53;

  v20 = 1;
  v21 = 2;
  v26 = 3;
LABEL_64:
  v92 = *(v95 + 8);
  v54 = v12;
  v55 = *(v95 + 128);
  if (!v55 || *(v95 + 40) != 1)
  {
    v100 = *(v95 + 24);
    mlir::mps::StridedSliceOp::getEndIsSize(&v100);
    v102[0] = 0;
    v102[1] = 0;
    *&v103 = 0;
    memset(v99, 0, sizeof(v99));
    v57 = [v54 count];
    if (v57)
    {
      if (!(v57 >> 61))
      {
        operator new();
      }
    }

    else
    {
      v58 = [v54 count];
      if (v58)
      {
        std::vector<long>::__append(v102, v58);
      }

      v59 = [v54 count];
      if (!v59)
      {
        v60 = [v54 count];
        if (v60)
        {
          std::vector<long>::__append(v99, v60);
        }

        v61 = 0;
        v62 = -1;
        while (v61 < [v54 count])
        {
          v63 = [v54 objectAtIndexedSubscript:{v62 + objc_msgSend(v54, "count")}];
          v64 = [v63 intValue];
          v65 = v102[0];
          *(v102[0] + v61) = v64;

          *(v99[0] + v61) = v65[v61];
          ++v61;
          --v62;
        }

        v66 = v102[0];
        v67 = v99[0];
        *(v99[0] + v20) = *(v102[0] + v20) * v90;
        v67[v21] = v66[v21] * v90;
        v67[v26] = v66[v26] / (v90 * v90);
        operator new();
      }

      if (!(v59 >> 61))
      {
        operator new();
      }
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v56 = v55;

  v68 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
  v69 = *(v94 + 1);
  v110 = v97;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  [v92 encodeToMPSCommandEncoder:v68 commandBuffer:v69 sourceArrays:v70 resultState:0 destinationArray:v96 kernelDAGObject:v56];

  if (v86)
  {
    v71 = objc_alloc(MEMORY[0x1E6974740]);
    v72 = [*(*(v95 + 16) + 48) metalDevice];
    v73 = [v71 initWithDevice:v72];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v103 = 0u;
    v104 = 0u;
    *v102 = 0u;
    if (v29)
    {
      if (v29 == 1)
      {
        v74 = 0;
      }

      else
      {
        v75 = 0;
        v74 = (v29 & 0xFFFFFFFFFFFFFFFELL);
        v76 = &v111 + 1;
        do
        {
          v77 = *v76;
          v102[*(v76 - 1)] = v75;
          v102[v77] = (v75 + 1);
          v76 += 2;
          v75 += 2;
        }

        while (v75 != v74);
        if (v29 == v74)
        {
          goto LABEL_89;
        }
      }

      do
      {
        v102[*(&v112[-1] + v74)] = v74;
        ++v74;
      }

      while (v29 != v74);
    }

LABEL_89:
    v78 = [v96 descriptor];
    [v78 permuteWithDimensionOrder:v102];
    v79 = *(v94 + 1);
    v80 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
    v81 = [v96 safeArrayViewWithCommandBuffer:v79 computeEncoder:v80 descriptor:v78 aliasing:0];

    v82 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
    v83 = *(v94 + 1);
    v101 = v81;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    [v73 encodeToMPSCommandEncoder:v82 commandBuffer:v83 sourceArrays:v84 destinationArray:v93];
  }
}

uint64_t GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::DepthToSpace2DOp,true>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v11 = *(a1 + 24);
  v6 = *(*(v11 + 72) + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v6, 0);
  mlir::pdl::ResultOp::getIndex(&v11);
  mlir::mps::StridedSliceOp::getEndIsSize(&v11);
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = v7;
  v10[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v10);
  return MPSKernelDAG::spaceToDepth2dOp();
}

void GPU::DepthToSpace2DOpHandler::~DepthToSpace2DOpHandler(id *this)
{
  *this = &unk_1F5B4D918;
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  *this = &unk_1F5B4D918;
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::SpaceToDepth2DOp,false>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 16);
  v95 = a1;
  v98 = *(a1 + 24);
  v87 = v5;
  v7 = (*(*v6 + 48))(v6, *(*(v98 + 72) + 24), 0);
  v8 = [v7 mpsndarray];

  v88 = [v5 objectAtIndexedSubscript:0];
  v9 = [v88 mpsndarray];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v89 = v9;
  if (v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = [v8 descriptor];
  v12 = [v11 getShape];

  v91 = [v12 count];
  if (CoordAxis >= 0)
  {
    v14 = v91;
  }

  else
  {
    v14 = 0;
  }

  if (v15 >= 0)
  {
    v16 = v91;
  }

  else
  {
    v16 = 0;
  }

  v94 = a2;
  if (v17 >= 0)
  {
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  Index = mlir::pdl::ResultOp::getIndex(&v98);
  v20 = v14 + ~CoordAxis;
  v21 = v16 + ~v15;
  v22 = v18 + ~v17;
  [v8 dataType];
  v23 = v8;
  v24 = v89;
  memset(&v112[1], 0, 96);
  v25 = v20 <= 3 && v21 <= 3;
  v26 = v22;
  v27 = v25 && v22 < 4;
  v111 = 0uLL;
  v112[0] = 0uLL;
  v93 = v24;
  v90 = Index;
  if (v27)
  {
    v86 = 0;
    v96 = v24;
    v97 = v23;
    v29 = v91;
    goto LABEL_64;
  }

  v85 = [v23 descriptor];
  v29 = v91;
  if (!v91)
  {
    goto LABEL_36;
  }

  if (v91 <= 3)
  {
    for (i = 0; i != v91; ++i)
    {
LABEL_28:
      *(&v112[-1] + i) = i;
    }

    goto LABEL_29;
  }

  i = v91 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = xmmword_1E09700F0;
  v31 = v112;
  v32 = vdupq_n_s64(2uLL);
  v33 = vdupq_n_s64(4uLL);
  v34 = v91 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v31[-1] = v28;
    *v31 = vaddq_s64(v28, v32);
    v28 = vaddq_s64(v28, v33);
    v31 += 2;
    v34 -= 4;
  }

  while (v34);
  if (v91 != i)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v91 >= 1)
  {
    v35 = 0;
    v36 = -1;
    do
    {
      if (*(&v112[-1] + v35) == 1)
      {
        v36 = v35;
      }

      ++v35;
      v37 = 1;
    }

    while (v35 < (v91 & 0x7FFFFFFF) && v36 < 0);
    goto LABEL_37;
  }

LABEL_36:
  v37 = 0;
  v36 = -1;
LABEL_37:
  if (v36 != v20)
  {
    v38 = 8 * v20;
    *(&v112[-1] + v36) = *(&v112[-1] + v38);
    *(&v112[-1] + v38) = 1;
  }

  if (v37)
  {
    v39 = 0;
    v40 = -1;
    do
    {
      if (*(&v112[-1] + v39) == 2)
      {
        v40 = v39;
      }

      ++v39;
    }

    while (v39 < (v91 & 0x7FFFFFFF) && v40 < 0);
  }

  else
  {
    v40 = -1;
  }

  if (v40 != v21)
  {
    v41 = 8 * v21;
    *(&v112[-1] + v40) = *(&v112[-1] + v41);
    *(&v112[-1] + v41) = 2;
  }

  if (v37)
  {
    v42 = 0;
    v43 = -1;
    v44 = v93;
    do
    {
      if (*(&v112[-1] + v42) == 3)
      {
        v43 = v42;
      }

      ++v42;
    }

    while (v42 < (v91 & 0x7FFFFFFF) && v43 < 0);
  }

  else
  {
    v43 = -1;
    v44 = v93;
  }

  if (v43 != v22)
  {
    v45 = 8 * v22;
    *(&v112[-1] + v43) = *(&v112[-1] + v45);
    *(&v112[-1] + v45) = 3;
  }

  v46 = [v44 descriptor];
  [v85 permuteWithDimensionOrder:&v111];
  [v46 permuteWithDimensionOrder:&v111];
  v47 = *(v94 + 1);
  v48 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
  v97 = [v23 safeArrayViewWithCommandBuffer:v47 computeEncoder:v48 descriptor:v85 aliasing:0];

  v49 = [v97 descriptor];
  v50 = [v49 getShape];

  v12 = v50;
  if (*(v93 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v93 setReadCount:{objc_msgSend(v93, "readCount") + 1}];
  }

  v51 = *(v94 + 1);
  v52 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
  v96 = [v93 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v46 aliasing:1];

  v53 = v96 == 0;
  if (!v96)
  {
    [v46 setPreferPackedRows:1];
    v96 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(v94 + 1) descriptor:v46];
  }

  v86 = v53;

  v20 = 1;
  v21 = 2;
  v26 = 3;
LABEL_64:
  v92 = *(v95 + 8);
  v54 = v12;
  v55 = *(v95 + 128);
  if (!v55 || *(v95 + 40) != 1)
  {
    v100 = *(v95 + 24);
    mlir::mps::StridedSliceOp::getEndIsSize(&v100);
    v102[0] = 0;
    v102[1] = 0;
    *&v103 = 0;
    memset(v99, 0, sizeof(v99));
    v57 = [v54 count];
    if (v57)
    {
      if (!(v57 >> 61))
      {
        operator new();
      }
    }

    else
    {
      v58 = [v54 count];
      if (v58)
      {
        std::vector<long>::__append(v102, v58);
      }

      v59 = [v54 count];
      if (!v59)
      {
        v60 = [v54 count];
        if (v60)
        {
          std::vector<long>::__append(v99, v60);
        }

        v61 = 0;
        v62 = -1;
        while (v61 < [v54 count])
        {
          v63 = [v54 objectAtIndexedSubscript:{v62 + objc_msgSend(v54, "count")}];
          v64 = [v63 intValue];
          v65 = v102[0];
          *(v102[0] + v61) = v64;

          *(v99[0] + v61) = v65[v61];
          ++v61;
          --v62;
        }

        v66 = v102[0];
        v67 = v99[0];
        *(v99[0] + v20) = *(v102[0] + v20) / v90;
        v67[v21] = v66[v21] / v90;
        v67[v26] = v90 * v90 * v66[v26];
        operator new();
      }

      if (!(v59 >> 61))
      {
        operator new();
      }
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v56 = v55;

  v68 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
  v69 = *(v94 + 1);
  v110 = v97;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  [v92 encodeToMPSCommandEncoder:v68 commandBuffer:v69 sourceArrays:v70 resultState:0 destinationArray:v96 kernelDAGObject:v56];

  if (v86)
  {
    v71 = objc_alloc(MEMORY[0x1E6974740]);
    v72 = [*(*(v95 + 16) + 48) metalDevice];
    v73 = [v71 initWithDevice:v72];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v103 = 0u;
    v104 = 0u;
    *v102 = 0u;
    if (v29)
    {
      if (v29 == 1)
      {
        v74 = 0;
      }

      else
      {
        v75 = 0;
        v74 = (v29 & 0xFFFFFFFFFFFFFFFELL);
        v76 = &v111 + 1;
        do
        {
          v77 = *v76;
          v102[*(v76 - 1)] = v75;
          v102[v77] = (v75 + 1);
          v76 += 2;
          v75 += 2;
        }

        while (v75 != v74);
        if (v29 == v74)
        {
          goto LABEL_89;
        }
      }

      do
      {
        v102[*(&v112[-1] + v74)] = v74;
        ++v74;
      }

      while (v29 != v74);
    }

LABEL_89:
    v78 = [v96 descriptor];
    [v78 permuteWithDimensionOrder:v102];
    v79 = *(v94 + 1);
    v80 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
    v81 = [v96 safeArrayViewWithCommandBuffer:v79 computeEncoder:v80 descriptor:v78 aliasing:0];

    v82 = GPU::EncodeDescriptor::getcomputeEncoder(v94);
    v83 = *(v94 + 1);
    v101 = v81;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    [v73 encodeToMPSCommandEncoder:v82 commandBuffer:v83 sourceArrays:v84 destinationArray:v93];
  }
}

uint64_t GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::SpaceToDepth2DOp,false>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v11 = *(a1 + 24);
  v6 = *(*(v11 + 72) + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v6, 0);
  mlir::pdl::ResultOp::getIndex(&v11);
  mlir::mps::StridedSliceOp::getEndIsSize(&v11);
  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = v7;
  v10[1] = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v10);
  return MPSKernelDAG::spaceToDepth2dOp();
}

void GPU::SpaceToDepth2DOpHandler::~SpaceToDepth2DOpHandler(id *this)
{
  *this = &unk_1F5B4D918;
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  *this = &unk_1F5B4D918;
  v2 = this[15];
  this[15] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SpaceToBatchGenericOpHandler<mlir::mps::BatchToSpaceOp,true>::encodeNDArrayOp(uint64_t a1, id *a2, void *a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v93 = a3;
  v5 = *(a1 + 24);
  v6 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v5 + 72) + 24), 0);
  v7 = [v6 mpsndarray];

  v85 = [v93 objectAtIndexedSubscript:0];
  v8 = [v85 mpsndarray];
  v94 = v8;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v5 + 72) + 56), &v113);
  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v5 + 72) + 120), v112);
  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v5 + 72) + 88), v111);
  v10 = [v7 descriptor];
  v95 = a1;
  v88 = [v10 getShape];

  v11 = [v94 descriptor];
  v12 = [v11 getShape];

  v13 = v88;
  v92 = v12;
  v102 = v13;
  v14 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v99 = a2[1];
  v100 = v14;
  v15 = [v13 count];
  v16 = v15;
  v103 = v15;
  if (((v114 - v113) >> 3) >= 1)
  {
    v17 = (((v114 - v113) >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      if (*(v112[0] + v17) >= 2)
      {
        operator new();
      }

      v18 = v17-- + 1;
    }

    while (v18 > 1);
    v16 = v15;
  }

  if (*v111[0] >= 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 + ~*v111[0];
  if (!v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v16 >= 16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v89 = v20 > 3;
  v127[4] = xmmword_1E09ABDA0;
  v127[5] = unk_1E09ABDB0;
  if (v16 - 1 >= 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = v16 - 1;
  }

  v127[6] = xmmword_1E09ABDC0;
  v127[7] = unk_1E09ABDD0;
  v127[0] = xmmword_1E09ABD60;
  v127[1] = unk_1E09ABD70;
  v127[2] = xmmword_1E09ABD80;
  v127[3] = unk_1E09ABD90;
  if (v20 > 3)
  {
    if (v16 < 1)
    {
      v23 = -1;
      if (v21 != -1)
      {
LABEL_27:
        *(v127 + v23) = *(v127 + v21);
        *(v127 + v21) = v20;
      }
    }

    else
    {
      v22 = 0;
      v23 = -1;
      do
      {
        if (*(v127 + v22) == v20)
        {
          v23 = v22;
        }

        ++v22;
      }

      while (v22 < (v15 & 0x7FFFFFFF) && v23 < 0);
      if (v23 != v21)
      {
        goto LABEL_27;
      }
    }
  }

  v83 = v21;
  v81 = v15 << 32;
  [v7 dataType];
  v24 = v7;
  v25 = v94;
  v101 = v25;
  v97 = v24;
  if (v20 <= 3)
  {
    v87 = *(v95 + 8);
    v82 = 0;
    v30 = v13;
    v84 = v92;
    v96 = v24;
    v98 = v25;
  }

  else
  {
    v86 = [v24 descriptor];
    v104 = [v25 descriptor];
    [v86 permuteWithDimensionOrder:v127];
    [v104 permuteWithDimensionOrder:v127];
    v79 = [v24 safeArrayViewWithCommandBuffer:v99 computeEncoder:v100 descriptor:v86 aliasing:0];

    if (*(v25 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v25 setReadCount:{objc_msgSend(v25, "readCount") + 1}];
    }

    v80 = [v25 safeArrayViewWithCommandBuffer:v99 computeEncoder:v100 descriptor:v104 aliasing:1];
    v96 = v79;

    v82 = v80 == 0;
    v98 = v80;
    if (!v80)
    {
      [v104 setPreferPackedRows:1];
      v98 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v99 descriptor:v104];
    }

    v26 = [v79 descriptor];
    v27 = [v26 getShape];

    v28 = [v98 descriptor];
    v29 = [v28 getShape];

    v87 = *(v95 + 8);
    v30 = v27;
    v84 = v29;
  }

  if (v20 <= 3)
  {
    v31 = v20;
  }

  else
  {
    v31 = v83;
  }

  *v119 = xmmword_1E0970050;
  std::set<int>::set[abi:ne200100](&v108, v119, 4);
  if (v20 <= 3 && v109)
  {
    v32 = &v109;
    v33 = v109;
    do
    {
      if (*(v33 + 7) >= v31)
      {
        v32 = v33;
      }

      v33 = v33[*(v33 + 7) < v31];
    }

    while (v33);
    if (v32 != &v109 && v31 >= *(v32 + 7))
    {
      v34 = v32[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        v36 = v32;
        do
        {
          v35 = *(v36 + 2);
          v9 = *v35 == v36;
          v36 = v35;
        }

        while (!v9);
      }

      if (v108 == v32)
      {
        v108 = v35;
      }

      --v110;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v109, v32);
      operator delete(v32);
    }
  }

  if (v89)
  {
    v37 = v87;
  }

  else
  {
    v38 = v108;
    v39 = v108[1];
    v37 = v87;
    if (v39)
    {
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      v41 = v108;
      do
      {
        v40 = v41[2];
        v9 = *v40 == v41;
        v41 = v40;
      }

      while (!v9);
    }

    v108 = v40;
    --v110;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v109, v38);
    v42 = *(v38 + 7);
    v107 = xmmword_1E09ABB80;
    *(&v107 & 0xFFFFFFFFFFFFFFF3) = v42;
    v90 = v107;
    operator delete(v38);
    v43 = v108;
    v44 = v108[1];
    if (v44)
    {
      do
      {
        v45 = v44;
        v44 = *v44;
      }

      while (v44);
    }

    else
    {
      v46 = v108;
      do
      {
        v45 = v46[2];
        v9 = *v45 == v46;
        v46 = v45;
      }

      while (!v9);
    }

    v108 = v45;
    --v110;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v109, v43);
    v47 = *(v43 + 7);
    v106 = v90;
    *(&v106 & 0xFFFFFFFFFFFFFFF3 | 4) = v47;
    v91 = v106;
    operator delete(v43);
    v48 = v108;
    v49 = v108[1];
    if (v49)
    {
      do
      {
        v50 = v49;
        v49 = *v49;
      }

      while (v49);
    }

    else
    {
      v51 = v108;
      do
      {
        v50 = v51[2];
        v9 = *v50 == v51;
        v51 = v50;
      }

      while (!v9);
    }

    v108 = v50;
    --v110;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v109, v48);
    v52 = *(v48 + 7);
    v105 = v91;
    *(&v105 & 0xFFFFFFFFFFFFFFF3 | 8) = v52;
    operator delete(v48);
  }

  v53 = v30;
  v54 = v84;
  v55 = *(v95 + 120);
  if (!v55 || *(v95 + 40) != 1)
  {
    v115 = *(v95 + 24);
    mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v115);
    v119[1] = 0;
    v119[0] = 0;
    *&v120 = 0;
    memset(v118, 0, sizeof(v118));
    v57 = [v53 count];
    if (v57)
    {
      if (!(v57 >> 61))
      {
        operator new();
      }
    }

    else
    {
      v58 = [v53 count];
      if (v58)
      {
        std::vector<long>::__append(v119, v58);
      }

      v59 = [v53 count];
      if (!v59)
      {
        v60 = [v53 count];
        if (v60)
        {
          std::vector<long>::__append(v118, v60);
        }

        v61 = 0;
        v62 = -1;
        while (v61 < [v53 count])
        {
          v63 = [v53 objectAtIndexedSubscript:{v62 + objc_msgSend(v53, "count")}];
          v64 = [v63 intValue];
          *(v119[0] + v61) = v64;

          v65 = [v54 objectAtIndexedSubscript:{v62 + objc_msgSend(v53, "count")}];
          v66 = [v65 intValue];
          *(v118[0] + v61) = v66;

          ++v61;
          --v62;
        }

        operator new();
      }

      if (!(v59 >> 61))
      {
        operator new();
      }
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v56 = v55;

  v117 = v96;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
  [v37 encodeToMPSCommandEncoder:v100 commandBuffer:v99 sourceArrays:v67 resultState:0 destinationArray:v98 kernelDAGObject:v56];

  std::__tree<void *>::destroy(v109);
  if (v82)
  {
    v68 = objc_alloc(MEMORY[0x1E6974740]);
    v69 = [*(*(v95 + 16) + 48) metalDevice];
    v70 = [v68 initWithDevice:v69];

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    *v119 = 0u;
    v120 = 0u;
    if (v81)
    {
      v71 = v103;
      if (v103 > 1)
      {
        v73 = 0;
        v72 = (v103 & 0xFFFFFFFFFFFFFFFELL);
        v74 = v127 + 1;
        do
        {
          v75 = *v74;
          v119[*(v74 - 1)] = v73;
          v119[v75] = (v73 + 1);
          v74 += 2;
          v73 += 2;
        }

        while (v73 != v72);
        if (v103 == v72)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v71 = 1;
        v72 = 0;
      }

      do
      {
        v119[*(v127 + v72)] = v72;
        ++v72;
      }

      while (v71 != v72);
    }

LABEL_103:
    v76 = [v98 descriptor];
    [v76 permuteWithDimensionOrder:v119];
    v77 = [v98 safeArrayViewWithCommandBuffer:v99 computeEncoder:v100 descriptor:v76 aliasing:0];
    v116 = v77;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
    [v70 encodeToMPSCommandEncoder:v100 commandBuffer:v99 sourceArrays:v78 destinationArray:v101];
  }

  if (v111[0])
  {
    v111[1] = v111[0];
    operator delete(v111[0]);
  }

  if (v112[0])
  {
    v112[1] = v112[0];
    operator delete(v112[0]);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }
}

void sub_1E0890548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37, void *a38, uint64_t a39, uint64_t a40, void *a41, void *a42, void *a43, uint64_t a44, void *a45, uint64_t a46, void *a47, void *a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, _Unwind_Exception *exception_objecta, uint64_t a57, uint64_t a58, uint64_t a59, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v62)
  {
    operator delete(v62);
  }

  v63 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v63;
    operator delete(v63);
    v64 = STACK[0x230];
    if (!STACK[0x230])
    {
LABEL_7:
      v65 = STACK[0x248];
      if (!STACK[0x248])
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v64 = STACK[0x230];
    if (!STACK[0x230])
    {
      goto LABEL_7;
    }
  }

  STACK[0x238] = v64;
  operator delete(v64);
  v65 = STACK[0x248];
  if (!STACK[0x248])
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  STACK[0x250] = v65;
  operator delete(v65);
  goto LABEL_9;
}

void GPU::BatchToSpaceOpHandler::~BatchToSpaceOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::SpaceToBatchGenericOpHandler<mlir::mps::BatchToSpaceOp,true>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

void GPU::SpaceToBatchGenericOpHandler<mlir::mps::SpaceToBatchOp,false>::encodeNDArrayOp(uint64_t a1, id *a2, void *a3)
{
  v121 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 24);
  v7 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v6 + 72) + 24), 0);
  v89 = [v7 mpsndarray];

  v78 = [v5 objectAtIndexedSubscript:0];
  v8 = [v78 mpsndarray];
  v87 = v8;
  if (v89)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v6 + 72) + 56), &v106);
  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v6 + 72) + 120), v105);
  GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, *(*(v6 + 72) + 88), v104);
  v10 = [v89 descriptor];
  v81 = [v10 getShape];

  v11 = [v87 descriptor];
  v12 = [v11 getShape];

  v13 = v81;
  v86 = v12;
  v94 = v13;
  v91 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v92 = a2[1];
  v95 = [v13 count];
  if (((v107 - v106) >> 3) >= 1)
  {
    v14 = (((v107 - v106) >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      if (*(v105[0] + v14) >= 2)
      {
        operator new();
      }

      v15 = v14-- + 1;
    }

    while (v15 > 1);
  }

  if (*v104[0] >= 0)
  {
    v16 = v95;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + ~*v104[0];
  if (!v95 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v95 >= 16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v120[4] = xmmword_1E09ABDA0;
  v120[5] = unk_1E09ABDB0;
  if (v95 - 1 >= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v95 - 1;
  }

  v120[6] = xmmword_1E09ABDC0;
  v120[7] = unk_1E09ABDD0;
  v120[0] = xmmword_1E09ABD60;
  v120[1] = unk_1E09ABD70;
  v120[2] = xmmword_1E09ABD80;
  v120[3] = unk_1E09ABD90;
  if (v17 > 3)
  {
    if (v95 < 1)
    {
      v20 = -1;
      if (v18 != -1)
      {
LABEL_26:
        *(v120 + v20) = *(v120 + v18);
        *(v120 + v18) = v17;
      }
    }

    else
    {
      v19 = 0;
      v20 = -1;
      do
      {
        if (*(v120 + v19) == v17)
        {
          v20 = v19;
        }

        ++v19;
      }

      while (v19 < (v95 & 0x7FFFFFFF) && v20 < 0);
      if (v20 != v18)
      {
        goto LABEL_26;
      }
    }
  }

  v77 = v18;
  [v89 dataType];
  v21 = v89;
  v22 = v87;
  v88 = v21;
  v93 = v22;
  if (v17 <= 3)
  {
    v27 = v22;
    v83 = *(a1 + 8);
    v76 = 0;
    v80 = v13;
    v75 = v86;
    v90 = v27;
  }

  else
  {
    v79 = [v21 descriptor];
    v82 = [v93 descriptor];
    [v79 permuteWithDimensionOrder:v120];
    [v82 permuteWithDimensionOrder:v120];
    v23 = [v21 safeArrayViewWithCommandBuffer:v92 computeEncoder:v91 descriptor:v79 aliasing:0];

    v21 = v23;
    if (*(v93 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v93 setReadCount:{objc_msgSend(v93, "readCount") + 1}];
    }

    v74 = [v93 safeArrayViewWithCommandBuffer:v92 computeEncoder:v91 descriptor:v82 aliasing:1];

    v76 = v74 == 0;
    v90 = v74;
    if (!v74)
    {
      [v82 setPreferPackedRows:1];
      v90 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v92 descriptor:v82];
    }

    v24 = [v23 descriptor];
    v25 = [v24 getShape];

    v26 = [v90 descriptor];
    v96 = [v26 getShape];

    v83 = *(a1 + 8);
    v80 = v25;
    v75 = v96;
  }

  if (v17 <= 3)
  {
    v28 = v17;
  }

  else
  {
    v28 = v77;
  }

  *v112 = xmmword_1E0970050;
  std::set<int>::set[abi:ne200100](&v101, v112, 4);
  if (v17 <= 3 && v102)
  {
    v29 = &v102;
    v30 = v102;
    do
    {
      if (*(v30 + 7) >= v28)
      {
        v29 = v30;
      }

      v30 = v30[*(v30 + 7) < v28];
    }

    while (v30);
    if (v29 != &v102 && v28 >= *(v29 + 7))
    {
      v31 = v29[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        v33 = v29;
        do
        {
          v32 = *(v33 + 2);
          v9 = *v32 == v33;
          v33 = v32;
        }

        while (!v9);
      }

      if (v101 == v29)
      {
        v101 = v32;
      }

      --v103;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v102, v29);
      operator delete(v29);
    }
  }

  if (v17 <= 3)
  {
    v34 = v101;
    v35 = v101[1];
    if (v35)
    {
      do
      {
        v36 = v35;
        v35 = *v35;
      }

      while (v35);
    }

    else
    {
      v37 = v101;
      do
      {
        v36 = v37[2];
        v9 = *v36 == v37;
        v37 = v36;
      }

      while (!v9);
    }

    v101 = v36;
    --v103;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v102, v34);
    v38 = *(v34 + 7);
    v100 = xmmword_1E09ABB80;
    *(&v100 & 0xFFFFFFFFFFFFFFF3) = v38;
    v84 = v100;
    operator delete(v34);
    v39 = v101;
    v40 = v101[1];
    if (v40)
    {
      do
      {
        v41 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    else
    {
      v42 = v101;
      do
      {
        v41 = v42[2];
        v9 = *v41 == v42;
        v42 = v41;
      }

      while (!v9);
    }

    v101 = v41;
    --v103;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v102, v39);
    v43 = *(v39 + 7);
    v99 = v84;
    *(&v99 & 0xFFFFFFFFFFFFFFF3 | 4) = v43;
    v85 = v99;
    operator delete(v39);
    v44 = v101;
    v45 = v101[1];
    if (v45)
    {
      do
      {
        v46 = v45;
        v45 = *v45;
      }

      while (v45);
    }

    else
    {
      v47 = v101;
      do
      {
        v46 = v47[2];
        v9 = *v46 == v47;
        v47 = v46;
      }

      while (!v9);
    }

    v101 = v46;
    --v103;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v102, v44);
    v48 = *(v44 + 7);
    v98 = v85;
    *(&v98 & 0xFFFFFFFFFFFFFFF3 | 8) = v48;
    operator delete(v44);
  }

  v49 = v80;
  v97 = v75;
  v50 = *(a1 + 120);
  if (!v50 || *(a1 + 40) != 1)
  {
    v108 = *(a1 + 24);
    mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v108);
    v112[1] = 0;
    v112[0] = 0;
    *&v113 = 0;
    memset(v111, 0, sizeof(v111));
    v52 = [v49 count];
    if (v52)
    {
      if (!(v52 >> 61))
      {
        operator new();
      }
    }

    else
    {
      v53 = [v49 count];
      if (v53)
      {
        std::vector<long>::__append(v112, v53);
      }

      v54 = [v49 count];
      if (!v54)
      {
        v55 = [v49 count];
        if (v55)
        {
          std::vector<long>::__append(v111, v55);
        }

        v56 = 0;
        v57 = -1;
        while (v56 < [v49 count])
        {
          v58 = [v49 objectAtIndexedSubscript:{v57 + objc_msgSend(v49, "count")}];
          v59 = [v58 intValue];
          *(v112[0] + v56) = v59;

          v60 = [v97 objectAtIndexedSubscript:{v57 + objc_msgSend(v49, "count")}];
          v61 = [v60 intValue];
          *(v111[0] + v56) = v61;

          ++v56;
          --v57;
        }

        operator new();
      }

      if (!(v54 >> 61))
      {
        operator new();
      }
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v51 = v50;

  v110 = v21;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  [v83 encodeToMPSCommandEncoder:v91 commandBuffer:v92 sourceArrays:v62 resultState:0 destinationArray:v90 kernelDAGObject:v51];

  std::__tree<void *>::destroy(v102);
  if (v76)
  {
    v63 = objc_alloc(MEMORY[0x1E6974740]);
    v64 = [*(*(a1 + 16) + 48) metalDevice];
    v65 = [v63 initWithDevice:v64];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    *v112 = 0u;
    v113 = 0u;
    if (v95 << 32)
    {
      v66 = v95;
      if (v95 > 1)
      {
        v68 = 0;
        v67 = (v95 & 0xFFFFFFFFFFFFFFFELL);
        v69 = v120 + 1;
        do
        {
          v70 = *v69;
          v112[*(v69 - 1)] = v68;
          v112[v70] = (v68 + 1);
          v69 += 2;
          v68 += 2;
        }

        while (v68 != v67);
        if (v95 == v67)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v66 = 1;
        v67 = 0;
      }

      do
      {
        v112[*(v120 + v67)] = v67;
        ++v67;
      }

      while (v66 != v67);
    }

LABEL_101:
    v71 = [v90 descriptor];
    [v71 permuteWithDimensionOrder:v112];
    v72 = [v90 safeArrayViewWithCommandBuffer:v92 computeEncoder:v91 descriptor:v71 aliasing:0];
    v109 = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
    [v65 encodeToMPSCommandEncoder:v91 commandBuffer:v92 sourceArrays:v73 destinationArray:v93];
  }

  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  if (v105[0])
  {
    v105[1] = v105[0];
    operator delete(v105[0]);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }
}

void sub_1E0891FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, void *a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, void *a45, void *a46, uint64_t a47, uint64_t a48, void *a49, void *a50, void *a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, void *a62)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a62)
  {
    operator delete(a62);
  }

  v65 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v65;
    operator delete(v65);
    v66 = STACK[0x260];
    if (!STACK[0x260])
    {
LABEL_7:
      v67 = STACK[0x278];
      if (!STACK[0x278])
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v66 = STACK[0x260];
    if (!STACK[0x260])
    {
      goto LABEL_7;
    }
  }

  STACK[0x268] = v66;
  operator delete(v66);
  v67 = STACK[0x278];
  if (!STACK[0x278])
  {
LABEL_9:

    _Unwind_Resume(a1);
  }

LABEL_8:
  STACK[0x280] = v67;
  operator delete(v67);
  goto LABEL_9;
}

void GPU::SpaceToBatchOpHandler::~SpaceToBatchOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::SpaceToBatchGenericOpHandler<mlir::mps::SpaceToBatchOp,false>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

void GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::DepthToSpace2DOp,true>::~SpaceToDepth2DGenericOpHandler(uint64_t a1)
{
  *a1 = &unk_1F5B4D918;
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

{

  *a1 = &unk_1F5B4D918;
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SpaceToDepth2DGenericOpHandler<mlir::mps::SpaceToDepth2DOp,false>::~SpaceToDepth2DGenericOpHandler(uint64_t a1)
{
  *a1 = &unk_1F5B4D918;
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

{

  *a1 = &unk_1F5B4D918;
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SpaceToBatchGenericOpHandler<mlir::mps::BatchToSpaceOp,true>::~SpaceToBatchGenericOpHandler(id *a1)
{

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SpaceToBatchGenericOpHandler<mlir::mps::SpaceToBatchOp,false>::~SpaceToBatchGenericOpHandler(id *a1)
{

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void std::vector<long>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

id GPU::reshapeWithFallback(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = [v13 reshapeWithCommandEncoder:v11 commandBuffer:v12 sourceArray:v14 dimensionCount:a6 dimensionSizes:a5 destinationArray:0];
  if (!v15)
  {
    v16 = [MEMORY[0x1E6974490] descriptorWithDataType:*&v14[*MEMORY[0x1E69744C8]] dimensionCount:a6 dimensionSizes:a5];
    v15 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v12 descriptor:v16];
    v17 = [v13 reshapeWithCommandEncoder:v11 commandBuffer:v12 sourceArray:v14 dimensionCount:a6 dimensionSizes:a5 destinationArray:v15];
  }

  return v15;
}

uint64_t **std::set<int>::set[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    for (i = a2; i != &a2[a3]; ++i)
    {
      v4 = a1[1];
      v5 = a1 + 1;
      if (*a1 == (a1 + 1))
      {
        goto LABEL_10;
      }

      v6 = a1[1];
      v7 = a1 + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *i;
      if (*(v5 + 7) < *i)
      {
LABEL_10:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = a1 + 1;
        }

        if (!*v10)
        {
LABEL_21:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_21;
        }

        while (1)
        {
          while (1)
          {
            v11 = v4;
            v12 = *(v4 + 7);
            if (v12 <= v9)
            {
              break;
            }

            v4 = *v11;
            if (!*v11)
            {
              goto LABEL_21;
            }
          }

          if (v12 >= v9)
          {
            break;
          }

          v4 = v11[1];
          if (!v4)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  return a1;
}

void sub_1E0893848(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1E0893DF0()
{
  loadCoreMLDialectInContext(v0);
  v39 = 0u;
  v40 = 0x1000000000;
  v41 = &v43;
  v42 = 0;
  v44 = v0;
  v45 = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = v52;
  v51 = 0x600000000;
  v52[6] = &v53;
  v52[7] = 0x600000000;
  v4 = [*(v2 + v1) bytes];
  v5 = [*(v2 + v1) length];
  v28.__r_.__value_.__r.__words[0] = 0;
  *(v3 - 176) = 0u;
  *(v3 - 160) = 0u;
  *(v3 - 144) = v3 - 144;
  *(v3 - 136) = v3 - 144;
  *(v3 - 120) = 0;
  *(v3 - 112) = 0;
  *(v3 - 128) = 0;
  if (mlir::parseSourceString(v4, v5, (v3 - 176), &v44, "", 0, &v28))
  {
    mlir::detail::constructContainerOpForParserIfNecessary<mlir::ModuleOp>(v3 - 176, v44, v28.__r_.__value_.__l.__data_, &v38);
    mlir::Block::~Block((v3 - 176));
    v9 = v38;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = 0;
    mlir::Block::~Block((v3 - 176));
    v9 = v38;
    if (v38)
    {
LABEL_3:
      Context = mlir::Attribute::getContext((v9 + 24));
      mlir::PassManager::PassManager((v3 - 176), Context, "any", 3uLL, 1);
      v12 = mlir::OpPassManager::nest(v11, "coreml.graph", 0xCuLL);
      memset(v37, 0, sizeof(v37));
      v13 = v27;
      v14 = [v27 UTF8String];
      v15 = strlen(v14);
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        operator new();
      }

      *(&v28.__r_.__value_.__s + 23) = v15;
      if (v15)
      {
        memmove(&v28, v14, v15);
        v28.__r_.__value_.__s.__data_[v16] = 0;
        if ((SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v28.__r_.__value_.__s.__data_[0] = 0;
        if ((SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      operator delete(v37[0].__r_.__value_.__l.__data_);
LABEL_7:
      v37[0] = v28;
      v17 = v26;
      v18 = [v26 UTF8String];
      v19 = strlen(v18);
      if (v19 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v20 = v19;
      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&v28.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&v28, v18, v19);
        v28.__r_.__value_.__s.__data_[v20] = 0;
        if ((SHIBYTE(v37[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v28.__r_.__value_.__s.__data_[0] = 0;
        if ((SHIBYTE(v37[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      operator delete(v37[1].__r_.__value_.__l.__data_);
LABEL_11:
      v37[1] = v28;
      mlir::createReplaceGraphBodyWithDelegateCall(v37, &v28);
      v21 = v28.__r_.__value_.__r.__words[0];
      v28.__r_.__value_.__r.__words[0] = 0;
      v36 = v21;
      mlir::OpPassManager::addPass(v12, &v36);
      v22 = v36;
      v36 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      v23 = v28.__r_.__value_.__r.__words[0];
      v28.__r_.__value_.__r.__words[0] = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      v24.var0.var0 = v38;
      if (!mlir::PassManager::run((v3 - 176), v24))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      mlir::BytecodeWriterConfig::BytecodeWriterConfig(&v35, &v39, "MLIR20.0.0git", 13);
      memset(v34, 0, sizeof(v34));
      LODWORD(v28.__r_.__value_.__r.__words[1]) = 0;
      v31 = 0;
      v32 = 1;
      v29 = 0;
      v30 = 0;
      v28.__r_.__value_.__r.__words[2] = 0;
      v28.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
      v33 = v34;
      llvm::raw_ostream::SetBufferAndMode(&v28, 0, 0, 0);
      mlir::writeBytecodeToFile(v38, &v28, &v35, v25);
    }
  }

  mlir::ParserConfig::~ParserConfig(&v44, v6, v7, v8);
}

void sub_1E0894388(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  std::pair<std::string,std::string>::~pair(&a28);
  mlir::PassManager::~PassManager((v46 - 176));
  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a35, v47);
  mlir::ParserConfig::~ParserConfig(&a46, v48, v49, v50);
}

void sub_1E0894550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::~MapVector(va);
  JUMPOUT(0x1E0894558);
}

void sub_1E08946D4()
{
  loadCoreMLDialectInContext(v2);
  v30 = 0u;
  v31 = 0x1000000000;
  v32 = &v34;
  v33 = 0;
  v35 = v2;
  v36 = 1;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = v43;
  v42 = 0x600000000;
  v43[6] = &v44;
  v43[7] = 0x600000000;
  v5 = [*(v1 + v3) bytes];
  v6 = [*(v1 + v3) length];
  v19.__r_.__value_.__r.__words[0] = 0;
  *(v4 - 128) = 0u;
  *(v4 - 112) = 0u;
  *(v4 - 96) = v4 - 96;
  *(v4 - 88) = v4 - 96;
  *(v4 - 72) = 0;
  *(v4 - 64) = 0;
  *(v4 - 80) = 0;
  if (mlir::parseSourceString(v5, v6, (v4 - 128), &v35, "", 0, &v19))
  {
    mlir::detail::constructContainerOpForParserIfNecessary<mlir::ModuleOp>(v4 - 128, v35, v19.__r_.__value_.__l.__data_, &v29);
    mlir::Block::~Block((v4 - 128));
    v10 = v29;
    if (v29)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = 0;
    mlir::Block::~Block((v4 - 128));
    v10 = v29;
    if (v29)
    {
LABEL_3:
      Context = mlir::Attribute::getContext((v10 + 24));
      mlir::PassManager::PassManager((v4 - 128), Context, "any", 3uLL, 1);
      memset(&v28, 0, sizeof(v28));
      v12 = v0;
      v13 = [v0 UTF8String];
      v14 = strlen(v13);
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v15 = v14;
      if (v14 >= 0x17)
      {
        operator new();
      }

      *(&v19.__r_.__value_.__s + 23) = v14;
      if (v14)
      {
        memmove(&v19, v13, v14);
        v19.__r_.__value_.__s.__data_[v15] = 0;
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v19.__r_.__value_.__s.__data_[0] = 0;
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      operator delete(v28.__r_.__value_.__l.__data_);
LABEL_7:
      v28 = v19;
      mlir::createSegmentAllOpsToDelegate(&v28, &v27);
      mlir::OpPassManager::addPass((v4 - 128), &v27);
      v16 = v27;
      v27 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      v17.var0.var0 = v29;
      if (!mlir::PassManager::run((v4 - 128), v17))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      mlir::BytecodeWriterConfig::BytecodeWriterConfig(&v26, &v30, "MLIR20.0.0git", 13);
      memset(v25, 0, sizeof(v25));
      LODWORD(v19.__r_.__value_.__r.__words[1]) = 0;
      v22 = 0;
      v23 = 1;
      v20 = 0;
      v21 = 0;
      v19.__r_.__value_.__r.__words[2] = 0;
      v19.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
      v24 = v25;
      llvm::raw_ostream::SetBufferAndMode(&v19, 0, 0, 0);
      mlir::writeBytecodeToFile(v29, &v19, &v26, v18);
    }
  }

  mlir::ParserConfig::~ParserConfig(&v35, v7, v8, v9);
}

void sub_1E0894B34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, mlir::Operation *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  mlir::PassManager::~PassManager((v39 - 128));
  mlir::OwningOpRef<mlir::ModuleOp>::~OwningOpRef(&a30, v40);
  mlir::ParserConfig::~ParserConfig(&a39, v41, v42, v43);
}

void sub_1E0894C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::~MapVector(va);
  JUMPOUT(0x1E0894C34);
}

uint64_t llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::~MapVector(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 32 * v3;
    v5 = &v2[v4 - 9];
    v6 = -v4;
    do
    {
      v7 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      if (*v5 < 0)
      {
        operator delete(*(v5 - 23));
      }

      v5 -= 32;
      v6 += 32;
    }

    while (v6);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  if (*(a1 + 12))
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = *(*a1 + v9);
        if (v10 != -8 && v10 != 0)
        {
          llvm::deallocate_buffer(v10, (*v10 + 17));
        }

        v9 += 8;
      }

      while (8 * v8 != v9);
    }
  }

  free(*a1);
  return a1;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZ91__MPSGraphCoreMLCompilerDelegate_getInitializedCoreMLBytecodeWithPayloadPrefix_delegateId__E3__3NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(id ***a1, mlir::Operation *a2)
{
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v2 = *a1;
    v20 = a2;
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    SymName = mlir::func::FuncOp::getSymName(&v20);
    if (SymName)
    {
      v6 = v5;
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v19) = v5;
      if (v5)
      {
        memmove(&__p, SymName, v5);
      }

      *(&__p + v6) = 0;
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }
    }

    else
    {
      __p = 0;
      v18 = 0;
      p_p = &__p;
      v19 = 0;
    }

    v8 = [v3 initWithCString:p_p encoding:{4, __p, v18, v19}];
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    v9 = [**v2 getInputShapesForFunction:v8];
    v10 = v20;
    if (*(v20 + 47) && (v21.var0 = "externalize", v21.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(v20, v21), (v12 & 1) != 0))
    {
      if (InherentAttr)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22.var0 = "externalize";
      v22.var1 = 11;
      if (mlir::DictionaryAttr::contains((v10 + 56), v22))
      {
        goto LABEL_27;
      }
    }

    v13 = v20;
    if (*(v20 + 47) && (v23.var0 = "private", v23.var1 = 7, v14 = mlir::Operation::getInherentAttr(v20, v23), (v15 & 1) != 0))
    {
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24.var0 = "private";
      v24.var1 = 7;
      if ((mlir::DictionaryAttr::contains((v13 + 56), v24) & 1) == 0)
      {
LABEL_26:
        v16 = [[MPSGraphExecutableEntryPoint alloc] initWithEntryFunctionName:v8 inputTypes:v9];
        [*v2[1] addObject:v16];
      }
    }

LABEL_27:
  }
}

void sub_1E08952E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a14 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E08954A0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

GPU::ConditionOpHandler *GPU::ConditionOpHandler::ConditionOpHandler(GPU::ConditionOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B53650;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(*(this + 2) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = *(this + 1);
  *(this + 1) = v7;

  return this;
}

GPU::IfOpHandler *GPU::IfOpHandler::IfOpHandler(GPU::IfOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B536A0;
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *(v5 + 16) = 0;
  *(v5 + 17) = 0;
  v7 = [*(*(v5 + 2) + 48) metalDevice];
  if ([v7 supportsCommandBufferJump])
  {
    v8 = *(this + 40);
  }

  else
  {
    v8 = 0;
  }

  *(this + 41) = v8 & 1;

  v9 = *(this + 3);
  v10 = *(v9 + 44);
  v11 = (v10 >> 23) & 1;
  v12 = (v10 >> 21) & 0x7F8;
  v13 = 32 * *(v9 + 40);
  v14 = ((v9 + 64 + 16 * v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13;
  v43 = this;
  v15 = *(v14 + 8);
  if (v15 != v14)
  {
    do
    {
      v16 = v15 - 8;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = *(v16 + 40);
      v18 = v16 + 32;
      if (v17 != v16 + 32)
      {
        do
        {
          v19 = *(v17 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, &v43, 1);
          v17 = v19;
        }

        while (v19 != v18);
      }

      v15 = *(v15 + 8);
    }

    while (v15 != v14);
    v21 = *(v9 + 44);
    v11 = (v21 >> 23) & 1;
    v12 = (v21 >> 21) & 0x7F8;
    v13 = 32 * *(v9 + 40);
  }

  v22 = ((v9 + 64 + 16 * v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13;
  v23 = v22 + 24;
  v43 = this;
  v24 = *(v22 + 32);
  if (v24 != v22 + 24)
  {
    do
    {
      v25 = v24 - 8;
      if (!v24)
      {
        v25 = 0;
      }

      v26 = *(v25 + 40);
      v27 = v25 + 32;
      if (v26 != v25 + 32)
      {
        do
        {
          v28 = *(v26 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v29, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>, &v43, 1);
          v26 = v28;
        }

        while (v28 != v27);
      }

      v24 = *(v24 + 8);
    }

    while (v24 != v23);
  }

  v30 = objc_alloc(MEMORY[0x1E6974740]);
  v31 = [*(*(this + 2) + 48) metalDevice];
  v32 = [v30 initWithDevice:v31];
  v33 = *(this + 1);
  *(this + 1) = v32;

  if (*(this + 41))
  {
    v34 = 32;
  }

  else
  {
    v34 = 2147483656;
  }

  if (*(this + 41))
  {
    v35 = 4;
  }

  else
  {
    v35 = 1;
  }

  if (*(this + 41))
  {
    operator new();
  }

  v36 = [MEMORY[0x1E6974490] descriptorWithDataType:v34 shape:&unk_1F5B77D68];
  [v36 setPreferPackedRows:1];
  v37 = [*(*(this + 2) + 48) metalDevice];
  v38 = [v37 newBufferWithLength:v35 options:0];
  v39 = *v6;
  *v6 = v38;

  v40 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:*v6 descriptor:v36];
  v41 = *(this + 16);
  *(this + 16) = v40;

  return this;
}

void sub_1E0895AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v15);
  _Unwind_Resume(a1);
}

uint64_t GPU::IfOpHandler::encodeCSCBOp(GPU::IfOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v78[1] = *MEMORY[0x1E69E9840];
  v77 = a2;
  v2 = *(this + 41);
  if (v2 == 1)
  {
    v76 = *(this + 1);
    v4 = *(this + 2);
    v75 = *(this + 3);
    v64 = (*(*v4 + 48))(v4, *(*(v75 + 9) + 24), 0);
    v5 = GPU::EncodeDescriptor::getcomputeEncoder(v77);
    v6 = *(v77 + 1);
    v7 = [v64 mpsndarray];
    v78[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
    v67 = this;
    [v76 encodeToMPSCommandEncoder:v5 commandBuffer:v6 sourceArrays:v8 resultState:0 destinationArray:*(this + 16) kernelDAGObject:*(this + 17)];

    v9 = GPU::EncodeDescriptor::getcomputeEncoder(v77);
    v10 = v67;
    [v9 encodeStartIf:*(v67 + 15) offset:0 comparison:0 referenceValue:1];
    __p = 0;
    v73 = 0;
    v74 = 0;
    v66 = v9;
    if (*(v75 + 9))
    {
      operator new();
    }

    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v75, 0);
    v12 = ODSResultIndexAndLength;
    if (*(v75 + 9))
    {
      NextResultAtOffset = v75 - 16;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v14 = (HIDWORD(v12) + v12);
    v15 = v14 - v12;
    if (v14 != v12)
    {
      v39 = 0;
      v65 = v14 - v12;
      do
      {
        v40 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v39);
        v41 = (*(**(v10 + 2) + 80))(*(v10 + 2), v40, *(v77 + 1), 0, 0, 1);
        v42 = [v41 mpsndarray];
        v43 = v73;
        if (v73 >= v74)
        {
          v45 = NextResultAtOffset;
          v46 = __p;
          v47 = v73 - __p;
          v48 = (v73 - __p) >> 3;
          v49 = v48 + 1;
          if ((v48 + 1) >> 61)
          {
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          v50 = v74 - __p;
          if ((v74 - __p) >> 2 > v49)
          {
            v49 = v50 >> 2;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFF8)
          {
            v51 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          if (v51)
          {
            if (!(v51 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v63 = (v73 - __p) >> 3;
          *(8 * v48) = v42;
          v44 = 8 * v48 + 8;
          if (v46 == v43)
          {
            NextResultAtOffset = v45;
            v15 = v65;
            __p = 0;
            v73 = (8 * v48 + 8);
            v74 = 0;
          }

          else
          {
            v52 = v43 - v46 - 8;
            v53 = v46;
            v54 = 0;
            if (v52 < 0x38)
            {
              goto LABEL_67;
            }

            if (v46 < v47 + (v52 & 0xFFFFFFFFFFFFFFF8) - 8 * v63 + 8)
            {
              v53 = v46;
              v54 = 0;
              if ((v46 + (v52 & 0xFFFFFFFFFFFFFFF8)) != -8)
              {
                goto LABEL_67;
              }
            }

            v55 = (v52 >> 3) + 1;
            v54 = (8 * (v55 & 0x3FFFFFFFFFFFFFFCLL));
            v53 = (v54 + v46);
            v56 = (-8 * v63 + 8 * v48 + 16);
            v57 = (v46 + 2);
            v58 = v55 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v59 = *(v57 - 1);
              v60 = *v57;
              *(v57 - 1) = 0uLL;
              *v57 = 0uLL;
              *(v56 - 1) = v59;
              *v56 = v60;
              v56 += 2;
              v57 += 2;
              v58 -= 4;
            }

            while (v58);
            if (v55 != (v55 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_67:
              do
              {
                v61 = *v53;
                *v53++ = 0;
                *v54++ = v61;
              }

              while (v53 != v43);
            }

            NextResultAtOffset = v45;
            v15 = v65;
            do
            {
            }

            while (v46 != v43);
            v62 = __p;
            __p = 0;
            v73 = (8 * v48 + 8);
            v74 = 0;
            if (v62)
            {
              operator delete(v62);
            }
          }
        }

        else
        {
          *v73 = v42;
          v44 = (v43 + 8);
        }

        v73 = v44;

        ++v39;
        v9 = v66;
        v10 = v67;
      }

      while (v39 != v15);
    }

    v16 = ((v75 + 16 * ((*(v75 + 11) >> 23) & 1) + ((*(v75 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v75 + 10);
    v68 = v10;
    p_p = &__p;
    v70 = &v76;
    v71 = &v77;
    for (i = *(v16 + 8); i != v16; i = *(i + 8))
    {
      v18 = i - 8;
      if (!i)
      {
        v18 = 0;
      }

      v19 = *(v18 + 40);
      v20 = v18 + 32;
      if (v19 != v18 + 32)
      {
        do
        {
          v21 = *(v19 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v22, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>, &v68, 1);
          v19 = v21;
        }

        while (v21 != v20);
      }
    }

    [v9 encodeStartElse];
    v23 = ((v75 + 16 * ((*(v75 + 11) >> 23) & 1) + ((*(v75 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v75 + 10);
    v24 = v23 + 24;
    v68 = v10;
    p_p = &__p;
    v70 = &v76;
    v71 = &v77;
    v25 = *(v23 + 32);
    if (v25 != v23 + 24)
    {
      do
      {
        v26 = v25 - 8;
        if (!v25)
        {
          v26 = 0;
        }

        v27 = *(v26 + 40);
        v28 = v26 + 32;
        if (v27 != v26 + 32)
        {
          do
          {
            v29 = *(v27 + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v30, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>, &v68, 1);
            v27 = v29;
          }

          while (v29 != v28);
        }

        v25 = *(v25 + 8);
      }

      while (v25 != v24);
    }

    [v9 encodeEndIf];
    BaseRuntime::clearScopeFromDataMap(*(v10 + 2), v75);
    GPURegionRuntime::clearScopeFromJITTypesMap(*(v10 + 2), v75);
    if (*(*(mlir::Block::getParentOp(*(*(v10 + 3) + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v31 = v77;
      v32 = *(v77 + 9);
      if (v32)
      {
        [v32 endEncoding];
        v33 = *(v31 + 9);
        *(v31 + 9) = 0;

        v9 = v66;
      }
    }

    v34 = __p;
    if (__p)
    {
      v35 = v73;
      v36 = __p;
      if (v73 != __p)
      {
        do
        {
          v37 = *(v35 - 1);
          v35 -= 8;
        }

        while (v35 != v34);
        v36 = __p;
        v9 = v66;
      }

      v73 = v34;
      operator delete(v36);
    }

    return 1;
  }

  return v2;
}

void sub_1E0896360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void BaseRuntime::clearScopeFromDataMap(BaseRuntime *this, mlir::Operation *a2)
{
  v18 = a2;
  v3 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(this + 11, &v18);
  if (v3)
  {
    v4 = v3;
    v5 = *(this + 96);
    v6 = v3[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(this + 11);
    v9 = *(v8 + 8 * v6);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9 != v3);
    if (v10 == (this + 104))
    {
      goto LABEL_19;
    }

    v11 = v10[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v6)
    {
LABEL_19:
      if (!*v3)
      {
        goto LABEL_20;
      }

      v12 = *(*v3 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v6)
      {
LABEL_20:
        *(v8 + 8 * v6) = 0;
      }
    }

    v13 = *v3;
    if (*v3)
    {
      v14 = *(v13 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v14 >= *&v5)
        {
          v14 %= *&v5;
        }
      }

      else
      {
        v14 &= *&v5 - 1;
      }

      if (v14 != v6)
      {
        *(v8 + 8 * v14) = v10;
        v13 = *v3;
      }
    }

    *v10 = v13;
    *v3 = 0;
    --*(this + 14);
    v15 = v3[5];
    if (v15)
    {
      do
      {
        v16 = *v15;

        operator delete(v15);
        v15 = v16;
      }

      while (v16);
    }

    v17 = v4[3];
    v4[3] = 0;
    if (v17)
    {
      operator delete(v17);
    }

    operator delete(v4);
  }
}

void GPU::IfOpHandler::encodeOp(GPU::IfOpHandler *this, id *a2)
{
  v30 = a2;
  v4 = *(this + 3);
  v5 = (*(**(this + 2) + 48))(*(this + 2), *(*(v4 + 72) + 24), 0);
  if (((*(*this + 64))(this, a2) & 1) == 0)
  {
    v6 = a2[9];
    if (v6)
    {
      [v6 endEncoding];
      v7 = a2[9];
      a2[9] = 0;
    }

    v8 = [v5 mpsndarray];
    v9 = a2[1];
    v10 = *(this + 15);
    v11 = [v5 mpsndarray];
    [v8 exportDataWithCommandBuffer:v9 toBuffer:v10 destinationDataType:objc_msgSend(v11 offset:"dataType") rowStrides:{0, 0}];

    v12 = [a2[1] rootCommandBuffer];
    (**a2)(a2);
    [v12 waitUntilCompleted];
    v13 = [*(this + 15) contents];
    v14 = ((v4 + 16 * ((*(v4 + 44) >> 23) & 1) + ((*(v4 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 40);
    if (*v13)
    {
      v28 = this;
      v29 = &v30;
      for (i = *(v14 + 8); i != v14; i = *(i + 8))
      {
        v16 = i - 8;
        if (!i)
        {
          v16 = 0;
        }

        v17 = *(v16 + 40);
        v18 = v16 + 32;
        if (v17 != v16 + 32)
        {
          do
          {
            v19 = *(v17 + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v28, 1);
            v17 = v19;
          }

          while (v19 != v18);
        }
      }
    }

    else
    {
      v21 = v14 + 24;
      v28 = this;
      v29 = &v30;
      for (j = *(v14 + 32); j != v21; j = *(j + 8))
      {
        v23 = j - 8;
        if (!j)
        {
          v23 = 0;
        }

        v24 = *(v23 + 40);
        v25 = v23 + 32;
        if (v24 != v23 + 32)
        {
          do
          {
            v26 = *(v24 + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v27, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>, &v28, 1);
            v24 = v26;
          }

          while (v26 != v25);
        }
      }
    }

    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v4);
  }
}

void GPU::ForOpHandler::ForOpHandler(GPU::ForOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v22 = a3;
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B536F8;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  v6 = [*(*(v5 + 2) + 48) metalDevice];
  if ([v6 supportsCommandBufferJump])
  {
    v7 = *(this + 40);
  }

  else
  {
    v7 = 0;
  }

  *(this + 41) = v7 & 1;

  v8 = ((*(this + 3) + 16 * ((*(*(this + 3) + 44) >> 23) & 1) + ((*(*(this + 3) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 3) + 40);
  v19 = &v22;
  v20 = this;
  for (i = *(v8 + 8); i != v8; i = *(i + 8))
  {
    v10 = i - 8;
    if (!i)
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
        mlir::detail::walk<mlir::ForwardIterator>(v14, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::ForOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, &v19, 1);
        v11 = v13;
      }

      while (v13 != v12);
    }
  }

  v15 = objc_alloc(MEMORY[0x1E6974740]);
  v16 = [*(*(this + 2) + 48) metalDevice];
  v17 = [v15 initWithDevice:v16];
  v18 = *(this + 1);
  *(this + 1) = v17;

  v19 = 0;
  v20 = 0;
  v21 = 0;
  operator new();
}

void sub_1E0896F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16)
{
  v19 = v18;

  GPU::BaseOpHandler::~BaseOpHandler(v16);
  _Unwind_Resume(a1);
}

uint64_t GPU::ForOpHandler::encodeCSCBOp(GPU::ForOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v86[2] = *MEMORY[0x1E69E9840];
  v83 = a2;
  v76 = *(this + 41);
  if (v76 == 1)
  {
    v3 = (this + 8);
    v4 = *(this + 1);
    v78 = v3;
    v6 = (v3 + 1);
    v5 = v3[1];
    v81 = *(v6 + 1);
    v82 = v4;
    ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(&v81, 1u, v7, v8);
    v77 = (*(*v5 + 48))(v5, *(*(v81 + 9) + 32 * ODSOperandIndexAndLength + 24), 0);
    v10 = *(this + 2);
    v13 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v81, 2u, v11, v12);
    v75 = (*(*v10 + 48))(v10, *(*(v81 + 9) + 32 * v13 + 24), 0);
    v14 = v81;
    v16 = *(v81 + 10);
    v15 = *(v81 + 11);
    v17 = [v77 mpsndarray];
    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();

    if (v10)
    {
      v18 = [v77 mpsndarray];
      [v18 setReadCount:{objc_msgSend(v18, "readCount") + 1}];
    }

    v19 = v82;
    v20 = GPU::EncodeDescriptor::getcomputeEncoder(v83);
    v21 = *(v83 + 1);
    v86[0] = *(this + 20);
    v22 = [v77 mpsndarray];
    v86[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    [v19 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v23 resultState:0 destinationArray:*(this + 24) kernelDAGObject:*(this + 25)];

    v24 = ((v14 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v16;
    if (*(v81 + 9))
    {
      v25 = 0;
      v26 = 24;
      do
      {
        InitsMutable = mlir::scf::ForOp::getInitsMutable(&v81);
        v28 = (*(**(this + 2) + 48))(*(this + 2), *(InitsMutable + v26), 0);
        v29 = *(v24 + 8);
        if (v29)
        {
          v30 = v29 - 8;
        }

        else
        {
          v30 = 0;
        }

        v31 = *(*(v30 + 48) + 8 * v25 + 8);
        v32 = (*(**(this + 2) + 80))(*(this + 2), v31, *(v83 + 1), 0, 1, 1);
        v33 = *(this + 2);
        v34 = GPU::EncodeDescriptor::getcomputeEncoder(v83);

        ++v25;
        v26 += 32;
      }

      while (v25 < *(v81 + 9));
    }

    v35 = GPU::EncodeDescriptor::getcomputeEncoder(v83);
    [v35 encodeStartWhile:*(this + 19) offset:0 comparison:0 referenceValue:1];
    v79 = v35;
    v36 = *(((v81 + 16 * ((*(v81 + 11) >> 23) & 1) + ((*(v81 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v81 + 10) + 8);
    if (v36)
    {
      v37 = v36 - 8;
    }

    else
    {
      v37 = 0;
    }

    v38 = **(v37 + 48);
    v74 = [[MPSGraphTensorData alloc] initWithMPSNDArray:*(this + 20)];
    BaseRuntime::setTensorDataToDataMap(*(this + 2), v38, v74);
    v80[0] = this;
    v80[1] = v24;
    v80[2] = &v82;
    v80[3] = &v83;
    for (i = *(v24 + 8); i != v24; i = *(i + 8))
    {
      v40 = i - 8;
      if (!i)
      {
        v40 = 0;
      }

      v41 = *(v40 + 40);
      v42 = v40 + 32;
      if (v41 != v40 + 32)
      {
        do
        {
          v43 = *(v41 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v44, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>, v80, 1);
          v41 = v43;
        }

        while (v43 != v42);
      }
    }

    v45 = v82;
    v46 = GPU::EncodeDescriptor::getcomputeEncoder(v83);
    v47 = *(v83 + 1);
    v85[0] = *(this + 20);
    v48 = [v75 mpsndarray];
    v85[1] = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    [v45 encodeToMPSCommandEncoder:v46 commandBuffer:v47 sourceArrays:v49 resultState:0 destinationArray:*(this + 20) kernelDAGObject:*(this + 26)];

    v50 = v82;
    v51 = GPU::EncodeDescriptor::getcomputeEncoder(v83);
    v52 = *(v83 + 1);
    v84[0] = *(this + 20);
    v53 = [v77 mpsndarray];
    v84[1] = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    [v50 encodeToMPSCommandEncoder:v51 commandBuffer:v52 sourceArrays:v54 resultState:0 destinationArray:*(this + 24) kernelDAGObject:*(this + 25)];

    v55 = v79;
    [v79 encodeEndWhile];
    v56 = v81;
    if (*(v81 + 9))
    {
      v57 = 0;
      v58 = -16;
      v59 = -5;
      do
      {
        v60 = *(v24 + 8);
        if (v60)
        {
          v61 = v60 - 8;
        }

        else
        {
          v61 = 0;
        }

        v62 = (*(**(this + 2) + 48))(*(this + 2), *(*(v61 + 48) + 8 * v57 + 8), 0);
        v63 = *(this + 3);
        v64 = (v63 + v58);
        v65 = v63 - 24 * v59 - 96;
        if (v57 >= 6)
        {
          v66 = v65;
        }

        else
        {
          v66 = v64;
        }

        v67 = (*(**(this + 2) + 48))(*(this + 2), v66, 0);
        v68 = *(this + 2);
        v69 = GPU::EncodeDescriptor::getcomputeEncoder(v83);

        v55 = v79;
        ++v57;
        v56 = v81;
        ++v59;
        v58 -= 16;
      }

      while (v57 < *(v81 + 9));
    }

    BaseRuntime::clearScopeFromDataMap(*(this + 2), v56);
    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v81);
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v70 = v83;
      v71 = *(v83 + 9);
      if (v71)
      {
        [v71 endEncoding];
        v72 = *(v70 + 9);
        *(v70 + 9) = 0;
      }
    }
  }

  return v76;
}

void GPU::anonymous namespace::copyNDArrayOrListToTarget(void *a1, void *a2, void *a3, id *a4, void *a5, void *a6, uint64_t *a7, uint64_t a8)
{
  v19 = a2;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    BaseRuntime::setTensorDataToDataMap(a1, a7, v16);
  }

  else
  {
    v18 = [v16 mpsndarray];
    GPURegionRuntime::copyNDArrayToTarget(a1, v19, v15, a4, v18, v17, a7, a8);
  }
}

void GPU::ForOpHandler::encodeOp(GPU::ForOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v94[1] = *MEMORY[0x1E69E9840];
  v89 = a2;
  v3 = (this + 8);
  v80 = *(this + 1);
  v81 = v3;
  v4 = v3[1];
  v88 = v3[2];
  ODSOperandIndexAndLength = mlir::scf::ForOp::getODSOperandIndexAndLength(&v88, 0, v5, v6);
  v77 = (*(*v4 + 48))(v4, *(v88[9] + 32 * ODSOperandIndexAndLength + 24), 0);
  v8 = *(this + 2);
  v11 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v88, 1u, v9, v10);
  v75 = (*(*v8 + 48))(v8, *(v88[9] + 32 * v11 + 24), 0);
  v12 = *(this + 2);
  v15 = mlir::scf::ForOp::getODSOperandIndexAndLength(&v88, 2u, v13, v14);
  v76 = (*(*v12 + 48))(v12, *(v88[9] + 32 * v15 + 24), 0);
  v17 = *(v88 + 10);
  v16 = *(v88 + 11);
  v87 = 0;
  v86 = 0;
  v18 = ((&v88[2 * ((v16 >> 23) & 1) + 8] + ((v16 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v17;
  v19 = *(v18 + 8);
  if (v19)
  {
    v20 = v19 - 8;
  }

  else
  {
    v20 = 0;
  }

  v78 = **(v20 + 48);
  v79 = [[MPSGraphTensorData alloc] initWithMPSNDArray:*(this + 20)];
  v21 = GPU::EncodeDescriptor::getcomputeEncoder(v89);
  v22 = *(v89 + 1);
  v23 = [v77 mpsndarray];
  v94[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
  [v80 encodeToMPSCommandEncoder:v21 commandBuffer:v22 sourceArrays:v24 resultState:0 destinationArray:*(this + 20) kernelDAGObject:0];

  if (((*(*this + 64))(this, v89) & 1) == 0)
  {
    v25 = v89;
    v26 = *(v89 + 9);
    if (v26)
    {
      [v26 endEncoding];
      v27 = *(v25 + 9);
      *(v25 + 9) = 0;
    }

    v28 = [v77 mpsndarray];
    v29 = *(v89 + 1);
    v30 = *(this + 16);
    v31 = [v77 mpsndarray];
    [v28 exportDataWithCommandBuffer:v29 toBuffer:v30 destinationDataType:objc_msgSend(v31 offset:"dataType") rowStrides:{0, 0}];

    v32 = [v75 mpsndarray];
    v33 = *(v89 + 1);
    v34 = *(this + 17);
    v35 = [v75 mpsndarray];
    [v32 exportDataWithCommandBuffer:v33 toBuffer:v34 destinationDataType:objc_msgSend(v35 offset:"dataType") rowStrides:{0, 0}];

    v36 = [v76 mpsndarray];
    v37 = *(v89 + 1);
    v38 = *(this + 18);
    v39 = [v76 mpsndarray];
    [v36 exportDataWithCommandBuffer:v37 toBuffer:v38 destinationDataType:objc_msgSend(v39 offset:"dataType") rowStrides:{0, 0}];

    v74 = [*(v89 + 1) rootCommandBuffer];
    (**v89)(v89);
    [v74 waitUntilCompleted];
    [*(this + 21) readBytes:&v87 + 4 strideBytes:0];
    [*(this + 22) readBytes:&v87 strideBytes:0];
    [*(this + 23) readBytes:&v86 strideBytes:0];
    if (*(v88 + 9))
    {
      for (i = 0; i < *(v88 + 9); ++i)
      {
        v41 = *(mlir::scf::ForOp::getInitsMutable(&v88) + 32 * i + 24);
        v42 = (*(**(this + 2) + 48))(*(this + 2), v41, 0);
        if (HIDWORD(v87) >= v87)
        {
          v46 = *(this + 3);
          v47 = v46 - 24 * (i - 5) - 96;
          v48 = (v46 + 16 * ~i);
          if (i <= 5)
          {
            v45 = v48;
          }

          else
          {
            v45 = v47;
          }
        }

        else
        {
          v43 = *(v18 + 8);
          if (v43)
          {
            v44 = v43 - 8;
          }

          else
          {
            v44 = 0;
          }

          v45 = *(*(v44 + 48) + 8 * i + 8);
        }

        v49 = (*(**(this + 2) + 48))(*(this + 2), v45, 0);
        v50 = *(this + 2);
        v51 = (v41[1] & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8))
        {
          v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
          v82 = v51;
          v83 = v52;
          if (!v51)
          {
            goto LABEL_28;
          }

          if (!mlir::CallOpInterface::getArgOperands(&v82))
          {
            goto LABEL_27;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
          if (v54)
          {
            v55 = 8 * v54;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v55 -= 8;
              if (!v55)
              {
                goto LABEL_28;
              }
            }

LABEL_27:
            StaticType = GPURegionRuntime::getStaticType(v50, v41);
            v92 = v45;
            v91 = StaticType;
            v90 = *(mlir::Value::getParentRegion(&v92) + 2);
            v82 = &v90;
            v57 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v50 + 288), &v90, &std::piecewise_construct, &v82);
            v82 = v92;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v57 + 3, &v82, &v82, &v91);
          }
        }

        else
        {
          v82 = 0;
          v83 = 0;
        }

LABEL_28:
        v58 = *(this + 2);
        v59 = GPU::EncodeDescriptor::getcomputeEncoder(v89);
      }
    }

    v60 = v87;
    v61 = HIDWORD(v87);
    if (HIDWORD(v87) < v87)
    {
      v62 = v86;
      do
      {
        LOBYTE(v92) = v61 + v62 >= v60;
        BaseRuntime::setTensorDataToDataMap(*(this + 2), v78, v79);
        v82 = this;
        v83 = &v88;
        v84 = &v92;
        v85 = &v89;
        for (j = *(v18 + 8); j != v18; j = *(j + 8))
        {
          v64 = j - 8;
          if (!j)
          {
            v64 = 0;
          }

          v65 = *(v64 + 40);
          v66 = v64 + 32;
          if (v65 != v64 + 32)
          {
            do
            {
              v67 = *(v65 + 8);
              MPSGraphDelegateCompiler.precompilationDescriptor.modify();
              mlir::detail::walk<mlir::ForwardIterator>(v68, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v82, 1);
              v65 = v67;
            }

            while (v67 != v66);
          }
        }

        v69 = GPU::EncodeDescriptor::getcomputeEncoder(v89);
        v70 = *(v89 + 1);
        v71 = *(this + 23);
        v93[0] = *(this + 20);
        v93[1] = v71;
        v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
        [v80 encodeToMPSCommandEncoder:v69 commandBuffer:v70 sourceArrays:v72 resultState:0 destinationArray:*(this + 20) kernelDAGObject:*(this + 26)];

        HIDWORD(v73) = -858993459 * v61;
        LODWORD(v73) = -858993459 * v61;
        if ((v73 >> 1) <= 0x19999999)
        {
          (**v89)(v89);
        }

        v62 = v86;
        v60 = v87;
        v61 += v86;
      }

      while (v61 < v87);
    }
  }
}

GPU::WhileOpHandler *GPU::WhileOpHandler::WhileOpHandler(GPU::WhileOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *v5 = &unk_1F5B53750;
  *(v5 + 18) = v5 + 168;
  *(v5 + 16) = 0;
  *(v5 + 17) = 0;
  *(v5 + 152) = xmmword_1E096FB00;
  v7 = [*(*(v5 + 2) + 48) metalDevice];
  if ([v7 supportsCommandBufferJump])
  {
    v8 = *(this + 40);
  }

  else
  {
    v8 = 0;
  }

  *(this + 41) = v8 & 1;

  v9 = *(this + 3);
  v10 = *(v9 + 44);
  v11 = (v10 >> 23) & 1;
  v12 = (v10 >> 21) & 0x7F8;
  v13 = 32 * *(v9 + 40);
  v14 = ((v9 + 64 + 16 * v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13;
  v43[0] = this;
  v15 = *(v14 + 8);
  if (v15 != v14)
  {
    do
    {
      v16 = v15 - 8;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = *(v16 + 40);
      v18 = v16 + 32;
      if (v17 != v16 + 32)
      {
        do
        {
          v19 = *(v17 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>, v43, 1);
          v17 = v19;
        }

        while (v19 != v18);
      }

      v15 = *(v15 + 8);
    }

    while (v15 != v14);
    v21 = *(v9 + 44);
    v11 = (v21 >> 23) & 1;
    v12 = (v21 >> 21) & 0x7F8;
    v13 = 32 * *(v9 + 40);
  }

  v22 = ((v9 + 64 + 16 * v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13;
  v23 = v22 + 24;
  v43[0] = this;
  v24 = *(v22 + 32);
  if (v24 != v22 + 24)
  {
    do
    {
      v25 = v24 - 8;
      if (!v24)
      {
        v25 = 0;
      }

      v26 = *(v25 + 40);
      v27 = v25 + 32;
      if (v26 != v25 + 32)
      {
        do
        {
          v28 = *(v26 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v29, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>, v43, 1);
          v26 = v28;
        }

        while (v28 != v27);
      }

      v24 = *(v24 + 8);
    }

    while (v24 != v23);
  }

  v30 = objc_alloc(MEMORY[0x1E6974740]);
  v31 = [*(*(this + 2) + 48) metalDevice];
  v32 = [v30 initWithDevice:v31];
  v33 = *(this + 1);
  *(this + 1) = v32;

  if (*(this + 41))
  {
    v34 = 32;
  }

  else
  {
    v34 = 2147483656;
  }

  if (*(this + 41))
  {
    v35 = 4;
  }

  else
  {
    v35 = 1;
  }

  if (*(this + 41))
  {
    memset(v43, 0, sizeof(v43));
    operator new();
  }

  v36 = [MEMORY[0x1E6974490] descriptorWithDataType:v34 shape:&unk_1F5B77D98];
  [v36 setPreferPackedRows:1];
  v37 = [*(*(this + 2) + 48) metalDevice];
  v38 = [v37 newBufferWithLength:v35 options:0];
  v39 = *v6;
  *v6 = v38;

  v40 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:*v6 descriptor:v36];
  v41 = *(this + 16);
  *(this + 16) = v40;

  return this;
}

void sub_1E08989A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
    v19 = *v18;
    if (*v18 == a10)
    {
LABEL_4:

      GPU::BaseOpHandler::~BaseOpHandler(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = *v18;
    if (*v18 == a10)
    {
      goto LABEL_4;
    }
  }

  free(v19);
  goto LABEL_4;
}

void sub_1E0898B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*v10 != a10)
  {
    JUMPOUT(0x1E0898A44);
  }

  JUMPOUT(0x1E0898A48);
}

void sub_1E0898B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*v10 != a10)
  {
    JUMPOUT(0x1E0898A44);
  }

  JUMPOUT(0x1E0898A48);
}

void sub_1E0898B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*v10 != a10)
  {
    JUMPOUT(0x1E0898A44);
  }

  JUMPOUT(0x1E0898A48);
}

uint64_t GPU::WhileOpHandler::encodeCSCBOp(GPU::WhileOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v66 = a2;
  v2 = *(this + 41);
  if (v2 == 1)
  {
    v4 = this + 8;
    v5 = *(this + 1);
    v6 = 0;
    v58 = v4;
    v64 = *(v4 + 2);
    v65 = v5;
    v7 = (((v64 + 16 * ((*(v64 + 11) >> 23) & 1) + ((*(v64 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v64 + 10));
    v8 = v7 + 3;
    for (i = 24; *v7 != v7; i += 32)
    {
      v10 = v7[1];
      if (v10)
      {
        v11 = v10 - 8;
      }

      else
      {
        v11 = 0;
      }

      if (v6 >= ((*(v11 + 56) - *(v11 + 48)) >> 3))
      {
        break;
      }

      v12 = v7[1];
      v13 = v12 ? v12 - 8 : 0;
      v14 = *(*(v13 + 48) + 8 * v6);
      v15 = (*(**(this + 2) + 48))(*(this + 2), *(*(*(this + 3) + 72) + i), 0);
      v16 = *(this + 2);
      v17 = GPU::EncodeDescriptor::getcomputeEncoder(v66);

      ++v6;
    }

    v59 = this;
    v60 = &v65;
    v61 = &v66;
    v62 = &v64;
    v63 = v7 + 3;
    for (j = v7[1]; j != v7; j = j[1])
    {
      v19 = j - 1;
      if (!j)
      {
        v19 = 0;
      }

      v20 = v19[5];
      v21 = v19 + 4;
      if (v20 != v19 + 4)
      {
        do
        {
          v22 = v20[1];
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v23, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>, &v59, 1);
          v20 = v22;
        }

        while (v22 != v21);
      }
    }

    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v64);
    v24 = GPU::EncodeDescriptor::getcomputeEncoder(v66);
    [v24 encodeStartWhile:*(this + 15) offset:0 comparison:0 referenceValue:1];
    v59 = this;
    v60 = v7;
    v61 = &v66;
    for (k = v7[4]; k != v8; k = k[1])
    {
      v26 = k - 1;
      if (!k)
      {
        v26 = 0;
      }

      v27 = v26[5];
      v28 = v26 + 4;
      if (v27 != v26 + 4)
      {
        do
        {
          v29 = v27[1];
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v30, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>, &v59, 1);
          v27 = v29;
        }

        while (v29 != v28);
      }
    }

    v59 = this;
    v60 = &v65;
    v61 = &v66;
    v62 = (v7 + 3);
    for (m = v7[1]; m != v7; m = m[1])
    {
      v32 = m - 1;
      if (!m)
      {
        v32 = 0;
      }

      v33 = v32[5];
      v34 = v32 + 4;
      if (v33 != v32 + 4)
      {
        do
        {
          v35 = v33[1];
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v36, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_2>, &v59, 1);
          v33 = v35;
        }

        while (v35 != v34);
      }
    }

    [v24 encodeEndWhile];
    v37 = v64;
    v57 = *(v64 + 9);
    if (v57)
    {
      v38 = 0;
      v39 = -16;
      v40 = 24;
      v56 = v7;
      do
      {
        v41 = v7[4];
        if (v41)
        {
          v42 = v41 - 8;
        }

        else
        {
          v42 = 0;
        }

        v43 = (*(**(this + 2) + 48))(*(this + 2), *(*(v42 + 48) + 8 * v38), 0);
        v44 = v24;
        v45 = *(this + 3);
        v46 = (v45 + v39);
        v47 = (v45 + v40);
        if (v38 >= 6)
        {
          v48 = v47;
        }

        else
        {
          v48 = v46;
        }

        v49 = (*(**(this + 2) + 48))(*(this + 2), v48, 0);
        v50 = *(this + 2);
        v51 = GPU::EncodeDescriptor::getcomputeEncoder(v66);

        ++v38;
        v40 -= 24;
        v39 -= 16;
        v24 = v44;
        v7 = v56;
      }

      while (v57 != v38);
      v37 = v64;
    }

    BaseRuntime::clearScopeFromDataMap(*(this + 2), v37);
    v2 = 1;
    GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v64);
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v52 = v66;
      v53 = *(v66 + 9);
      if (v53)
      {
        [v53 endEncoding];
        v54 = *(v52 + 9);
        *(v52 + 9) = 0;
      }
    }
  }

  return v2;
}

uint64_t GPU::WhileOpHandler::encodeOp(GPU::WhileOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  v42 = v4;
  v43 = a2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 44);
  result = (*(*this + 64))(this);
  if (result)
  {
    return result;
  }

  v8 = 0;
  v9 = (((v4 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v5);
  for (i = v9 + 3; *v9 != v9; ++v8)
  {
    v11 = v9[1];
    if (v11)
    {
      v12 = v11 - 8;
    }

    else
    {
      v12 = 0;
    }

    if (v8 >= ((*(v12 + 56) - *(v12 + 48)) >> 3))
    {
      break;
    }

    v13 = v9[1];
    if (v13)
    {
      v14 = v13 - 8;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(*(v14 + 48) + 8 * v8);
    v16 = *(*(*(this + 3) + 72) + 32 * v8 + 24);
    v17 = (*(**(this + 2) + 48))(*(this + 2), v16, 0);
    v18 = *(this + 2);
    v19 = (v16[1] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8))
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
      v37 = v19;
      v38 = v20;
      if (!v19)
      {
        goto LABEL_24;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v37))
      {
        goto LABEL_23;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v37);
      if (v22)
      {
        v23 = 8 * v22;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v23 -= 8;
          if (!v23)
          {
            goto LABEL_24;
          }
        }

LABEL_23:
        StaticType = GPURegionRuntime::getStaticType(v18, v16);
        v46 = v15;
        v44 = *(mlir::Value::getParentRegion(&v46) + 2);
        v37 = &v44;
        v24 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v18 + 288), &v44, &std::piecewise_construct, &v37);
        v37 = v46;
        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v24 + 3, &v37, &v37, &StaticType);
      }
    }

    else
    {
      v37 = 0;
      v38 = 0;
    }

LABEL_24:
    v25 = *(this + 2);
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  }

  LOBYTE(v46) = 1;
  while (1)
  {
    v37 = this;
    v38 = &v43;
    v39 = &v46;
    v40 = &v42;
    v41 = v9 + 3;
    v27 = v9[1];
    if (v27 != v9)
    {
      do
      {
        v28 = v27 - 1;
        if (!v27)
        {
          v28 = 0;
        }

        result = v28[5];
        v29 = v28 + 4;
        if (result != v28 + 4)
        {
          do
          {
            v30 = *(result + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v31, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>, &v37, 1);
            result = v30;
          }

          while (v30 != v29);
        }

        v27 = v27[1];
      }

      while (v27 != v9);
      if ((v46 & 1) == 0)
      {
        break;
      }
    }

    v37 = this;
    v38 = &v43;
    v32 = v9[4];
    if (v32 != i)
    {
      do
      {
        v33 = v32 - 1;
        if (!v32)
        {
          v33 = 0;
        }

        result = v33[5];
        v34 = v33 + 4;
        if (result != v33 + 4)
        {
          do
          {
            v35 = *(result + 8);
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::detail::walk<mlir::ForwardIterator>(v36, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>, &v37, 1);
            result = v35;
          }

          while (v35 != v34);
        }

        v32 = v32[1];
      }

      while (v32 != i);
      if ((v46 & 1) == 0)
      {
        break;
      }
    }
  }

  return result;
}

GPU::YieldOpHandler *GPU::YieldOpHandler::YieldOpHandler(GPU::YieldOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B537A8;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(*(this + 2) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = *(this + 1);
  *(this + 1) = v7;

  return this;
}

void GPU::YieldOpHandler::encodeOp(GPU::YieldOpHandler *this, void **a2)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    if (*(v3 + 68))
    {
      operator new();
    }

    v4 = *(this + 2);
    v5 = *(v3 + 16);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    ParentOp = 0;
    goto LABEL_8;
  }

  v4 = *(this + 2);
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  ParentOp = mlir::Block::getParentOp(v5);
LABEL_8:
  BaseRuntime::clearScopeFromDataMap(v4, ParentOp);
  v7 = *(this + 3);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = mlir::Block::getParentOp(v8);
    if (!v9)
    {
      v10 = *(*(this + 3) + 16);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v7 = *(this + 3);
    if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
    {
      if ((*(v7 + 46) & 0x80) == 0)
      {
        return;
      }

      v58 = *(v7 + 68);
      if (!v58)
      {
        return;
      }

      v15 = 0;
      while (1)
      {
        v16 = *(*(this + 3) + 16);
        if (v16)
        {
          v16 = mlir::Block::getParentOp(v16);
        }

        if (v15 >= 6)
        {
          v17 = (v16 + 24 * (5 - v15) - 96);
        }

        else
        {
          v17 = (v16 + 16 * ~v15);
        }

        v18 = *(8 * v15);
        v19 = (*(**(this + 2) + 48))(*(this + 2), v17, 0);
        v20 = *(this + 2);
        v21 = *(*(*(this + 3) + 72) + 32 * v15 + 24);
        v22 = (v21[1] & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8))
        {
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
          v66 = v22;
          v67 = v23;
          if (!v22)
          {
            goto LABEL_40;
          }

          if (!mlir::CallOpInterface::getArgOperands(&v66))
          {
            goto LABEL_39;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v66);
          if (v25)
          {
            v26 = 8 * v25;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v26 -= 8;
              if (!v26)
              {
                goto LABEL_40;
              }
            }

LABEL_39:
            StaticType = GPURegionRuntime::getStaticType(v20, v21);
            v64 = v17;
            v63 = StaticType;
            v62 = *(mlir::Value::getParentRegion(&v64) + 2);
            v66 = &v62;
            v28 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v20 + 288), &v62, &std::piecewise_construct, &v66);
            v66 = v64;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v28 + 3, &v66, &v66, &v63);
          }
        }

        else
        {
          v66 = 0;
          v67 = 0;
        }

LABEL_40:
        v29 = *(this + 2);
        v30 = GPU::EncodeDescriptor::getcomputeEncoder(a2);

        if (++v15 == v58)
        {
          return;
        }
      }
    }
  }

  v10 = *(v7 + 16);
  if (!v10)
  {
LABEL_19:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return;
  }

LABEL_14:
  v11 = mlir::Block::getParentOp(v10);
  v12 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = *(*(v11 + 48) + 16);
  v14 = v13 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id ? v11 : 0;
  if (v13 != &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    goto LABEL_19;
  }

  v31 = *(this + 3);
  v32 = *(v31 + 44);
  if ((v32 & 0x800000) != 0)
  {
    v33 = *(v31 + 68);
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v11 + 40);
  v35 = *(v11 + 44);
  v66 = v68;
  v67 = 0x400000000;
  if ((v32 & 0x800000) == 0)
  {
    goto LABEL_53;
  }

  v36 = *(v31 + 68);
  if (v36 < 5)
  {
    goto LABEL_48;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v36, 8);
  v31 = *(this + 3);
  if ((*(v31 + 46) & 0x80) != 0)
  {
    LODWORD(v36) = *(v31 + 68);
LABEL_48:
    if (v36)
    {
      v37 = v36;
      v38 = (*(v31 + 72) + 24);
      do
      {
        v39 = GPURegionRuntime::getStaticType(*(this + 2), *v38);
        v40 = v67;
        if (v67 >= HIDWORD(v67))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v67 + 1, 8);
          v40 = v67;
        }

        *(v66 + v40) = v39;
        LODWORD(v67) = v67 + 1;
        v38 += 4;
        --v37;
      }

      while (v37);
    }
  }

LABEL_53:
  GPURegionRuntime::clearScopeFromJITTypesMap(*(this + 2), v14);
  if (v33)
  {
    v41 = 0;
    v57 = v33;
    v59 = ((v12 + 16 * ((v35 >> 23) & 1) + ((v35 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v34;
    do
    {
      v42 = *(v59 + 8);
      if (v42)
      {
        v43 = v42 - 8;
      }

      else
      {
        v43 = 0;
      }

      v44 = *(*(v43 + 48) + 8 * v41);
      v45 = *(8 * v41);
      v46 = *(this + 2);
      v47 = *(*(*(this + 3) + 72) + 32 * v41 + 24);
      v48 = *(v66 + v41);
      v49 = (v47[1] & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8))
      {
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
        v64 = v49;
        v65 = v50;
        if (v49)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v64))
          {
            goto LABEL_68;
          }

          v51 = mlir::CallableOpInterface::getArgAttrsAttr(&v64);
          if (v52)
          {
            v53 = 8 * v52;
            while (*v51 != 0x8000000000000000)
            {
              ++v51;
              v53 -= 8;
              if (!v53)
              {
                goto LABEL_71;
              }
            }

LABEL_68:
            if (!v48)
            {
              v48 = GPURegionRuntime::getStaticType(v46, v47);
            }

            v62 = v48;
            v63 = v44;
            v61 = *(mlir::Value::getParentRegion(&v63) + 2);
            v64 = &v61;
            v54 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v46 + 288), &v61, &std::piecewise_construct, &v64);
            v64 = v63;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v54 + 3, &v64, &v64, &v62);
          }
        }
      }

      else
      {
        v64 = 0;
        v65 = 0;
      }

LABEL_71:
      v55 = *(this + 2);
      v56 = GPU::EncodeDescriptor::getcomputeEncoder(a2);

      ++v41;
    }

    while (v41 != v57);
  }

  if (v66 != v68)
  {
    free(v66);
  }
}

void sub_1E0899DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != a9)
  {
    free(a23);
    std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a14);
    _Unwind_Resume(a1);
  }

  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void GPU::ConditionOpHandler::~ConditionOpHandler(GPU::ConditionOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::IfOpHandler::~IfOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ForOpHandler::~ForOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::WhileOpHandler::~WhileOpHandler(GPU::WhileOpHandler *this)
{
  *this = &unk_1F5B53750;
  v2 = *(this + 18);
  if (v2 != this + 168)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B53750;
  v2 = *(this + 18);
  if (v2 != this + 168)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::YieldOpHandler::~YieldOpHandler(GPU::YieldOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::IfOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v19 + 24))
  {
    if (*(v2[6] + 2) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v6 = *(v2 + 17);
        if (v6)
        {
          v7 = 0;
          v17 = 8 * v6;
          v8 = 24;
          do
          {
            v9 = v2;
            v10 = (*(**(v19 + 16) + 48))(*(v19 + 16), *(v2[9] + v8), 0);
            v11 = *(*a1[1] + v7);
            v12 = *a1[2];
            v13 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[3]);
            v14 = *(*a1[3] + 8);
            v15 = [v10 mpsndarray];
            v20[0] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
            [v12 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v16 resultState:0 destinationArray:v11 kernelDAGObject:0];

            v7 += 8;
            v8 += 32;
            v2 = v9;
          }

          while (v17 != v7);
        }
      }
    }

    else
    {
      v4 = *(v19 + 16);
      v5 = *a1[3];

      GPURegionRuntime::encodeOp(v4, v2, v5);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v19 + 24))
  {
    if (*(v2[6] + 2) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v6 = *(v2 + 17);
        if (v6)
        {
          v7 = 0;
          v17 = 8 * v6;
          v8 = 24;
          do
          {
            v9 = v2;
            v10 = (*(**(v19 + 16) + 48))(*(v19 + 16), *(v2[9] + v8), 0);
            v11 = *(*a1[1] + v7);
            v12 = *a1[2];
            v13 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[3]);
            v14 = *(*a1[3] + 8);
            v15 = [v10 mpsndarray];
            v20[0] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
            [v12 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v16 resultState:0 destinationArray:v11 kernelDAGObject:0];

            v7 += 8;
            v8 += 32;
            v2 = v9;
          }

          while (v17 != v7);
        }
      }
    }

    else
    {
      v4 = *(v19 + 16);
      v5 = *a1[3];

      GPURegionRuntime::encodeOp(v4, v2, v5);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Operation *a2)
{
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    v7 = *a1[1];

    GPURegionRuntime::encodeOp(v6, a2, v7);
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::IfOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Operation *a2)
{
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    v7 = *a1[1];

    GPURegionRuntime::encodeOp(v6, a2, v7);
  }
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::ForOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == **a1)
  {
    result = (*(**(v4 + 16) + 72))(*(v4 + 16), a2, *(v4 + 32));
    if (*(v4 + 41) == 1)
    {
      *(v4 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v4 + 41) = 0;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v22[1] = *MEMORY[0x1E69E9840];
  v20 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v20 + 24))
  {
    if (*(v2[6] + 2) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v6 = *(v2 + 17);
        if (v6)
        {
          v7 = 8;
          v8 = 24;
          v18 = v2;
          do
          {
            v21 = (*(**(v20 + 16) + 48))(*(v20 + 16), *(v2[9] + v8), 0);
            v9 = *(a1[1] + 8);
            if (v9)
            {
              v10 = v9 - 8;
            }

            else
            {
              v10 = 0;
            }

            v11 = (*(**(v20 + 16) + 48))(*(v20 + 16), *(*(v10 + 48) + v7), 0);
            v12 = *a1[2];
            v13 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[3]);
            v14 = *(*a1[3] + 8);
            v15 = [v21 mpsndarray];
            v22[0] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
            v17 = [v11 mpsndarray];
            [v12 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v16 resultState:0 destinationArray:v17 kernelDAGObject:0];

            v7 += 8;
            v8 += 32;
            --v6;
            v2 = v18;
          }

          while (v6);
        }
      }
    }

    else
    {
      v4 = *(v20 + 16);
      v5 = *a1[3];

      GPURegionRuntime::encodeOp(v4, v2, v5);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::ForOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(void *a1, mlir::Block **a2)
{
  v2 = a2;
  v3 = a1;
  v60[4] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp != *(v4 + 24))
  {
    return;
  }

  if (*(v2[6] + 2) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v6 = *(v4 + 16);
    v7 = *v3[3];

    GPURegionRuntime::encodeOp(v6, v2, v7);
    return;
  }

  v50 = v2;
  v52 = v3;
  if ((*(v2 + 46) & 0x80) != 0)
  {
    v51 = *(v2 + 17);
    if (v51)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = (*(**(v4 + 16) + 48))(*(v4 + 16), *(v2[9] + 4 * v9 + 3), 0);
        v11 = v10;
        if (((v8 >> 3) + 1) >> 61)
        {
          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        if (v8 >> 3 != -1)
        {
          if (!(((v8 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v12 = (8 * (v8 >> 3));
        *v12 = v10;
        v13 = v12 + 1;
        if (!v8)
        {
          goto LABEL_25;
        }

        v14 = v8 - 8;
        v15 = 0;
        v16 = 0;
        if ((v8 - 8) >= 0x28)
        {
          if ((v14 & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF8)
          {
            v17 = (v14 >> 3) + 1;
            v16 = (8 * (v17 & 0x3FFFFFFFFFFFFFFCLL));
            v15 = v16;
            v18 = 16;
            v19 = 16;
            v20 = v17 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v21 = *(v19 - 16);
              v22 = *v19;
              *(v19 - 16) = 0uLL;
              *v19 = 0uLL;
              *(v18 - 16) = v21;
              *v18 = v22;
              v18 += 32;
              v19 += 32;
              v20 -= 4;
            }

            while (v20);
            if (v17 == (v17 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_23;
            }
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }
        }

        do
        {
          v23 = *v15;
          *v15++ = 0;
          *v16++ = v23;
        }

        while (v15 != v8);
LABEL_23:
        for (i = 0; i != v8; ++i)
        {
          v25 = *i;
        }

LABEL_25:
        v8 = v13;
        v2 = v50;
        v3 = v52;

        if (++v9 == v51)
        {
          v26 = 0;
          goto LABEL_28;
        }
      }
    }

    v51 = 0;
    v26 = 1;
  }

  else
  {
    v51 = 0;
    v26 = 1;
  }

LABEL_28:
  BaseRuntime::clearScopeFromDataMap(*(v4 + 16), *v3[1]);
  v58 = v60;
  v59 = 0x400000000;
  if ((*(v2 + 46) & 0x80) != 0)
  {
    v27 = *(v2 + 17);
    if (v27 < 5)
    {
      goto LABEL_32;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v27, 8);
    if ((*(v2 + 46) & 0x80) != 0)
    {
      LODWORD(v27) = *(v2 + 17);
LABEL_32:
      if (v27)
      {
        v28 = v27;
        v29 = (v2[9] + 24);
        do
        {
          StaticType = GPURegionRuntime::getStaticType(*(v4 + 16), *v29);
          v31 = v59;
          if (v59 >= HIDWORD(v59))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 8);
            v31 = v59;
          }

          *(v58 + v31) = StaticType;
          LODWORD(v59) = v59 + 1;
          v29 += 4;
          --v28;
        }

        while (v28);
      }
    }
  }

  GPURegionRuntime::clearScopeFromJITTypesMap(*(v4 + 16), *v3[1]);
  if ((v26 & 1) == 0)
  {
    for (j = 0; j != v51; ++j)
    {
      if (*v3[2] == 1)
      {
        v33 = *(v4 + 24);
        v34 = v33 + 24 * (5 - j) - 96;
        v35 = (v33 + 16 * ~j);
        if (j <= 5)
        {
          v36 = v35;
        }

        else
        {
          v36 = v34;
        }
      }

      else
      {
        v36 = *(mlir::scf::ForOp::getRegionIterArgs(v3[1]) + 8 * j);
      }

      v37 = *(8 * j);
      v38 = (*(**(v4 + 16) + 48))(*(v4 + 16), v36, 0);
      v39 = *(v4 + 16);
      v40 = *(v2[9] + 4 * j + 3);
      v41 = *(v58 + j);
      v42 = (v40[1] & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8))
      {
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
        v56 = v42;
        v57 = v43;
        if (v42)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v56))
          {
            goto LABEL_54;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v56);
          if (v45)
          {
            v46 = 8 * v45;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v46 -= 8;
              if (!v46)
              {
                goto LABEL_57;
              }
            }

LABEL_54:
            if (!v41)
            {
              v41 = GPURegionRuntime::getStaticType(v39, v40);
            }

            v54 = v41;
            v55 = v36;
            v53 = *(mlir::Value::getParentRegion(&v55) + 2);
            v56 = &v53;
            v47 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v39 + 288), &v53, &std::piecewise_construct, &v56);
            v56 = v55;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v47 + 3, &v56, &v56, &v54);
          }
        }
      }

      else
      {
        v56 = 0;
        v57 = 0;
      }

LABEL_57:
      v48 = *(v4 + 16);
      v49 = GPU::EncodeDescriptor::getcomputeEncoder(*v52[3]);

      v2 = v50;
      v3 = v52;
    }
  }

  if (v58 != v60)
  {
    free(v58);
  }
}

void sub_1E089B2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E089B310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != a10)
  {
    free(a23);
  }

  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::WhileOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = *(a2 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
  }

  if (result == *(v3 + 24))
  {
    result = (*(**(v3 + 16) + 72))(*(v3 + 16), a2, *(v3 + 32));
    if (*(v3 + 41) == 1)
    {
      *(v3 + 41) = *(result + 41) & 1;
    }

    else
    {
      *(v3 + 41) = 0;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Operation *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v21 = (*(*v6 + 48))(v6, *(*(a2 + 9) + 24), 0);
      v8 = *a1[1];
      v9 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);
      v10 = *(*a1[2] + 8);
      v11 = [v21 mpsndarray];
      v22[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v8 encodeToMPSCommandEncoder:v9 commandBuffer:v10 sourceArrays:v12 resultState:0 destinationArray:*(v4 + 128) kernelDAGObject:*(v4 + 136)];

      if (*(*(v4 + 24) + 36))
      {
        operator new();
      }

      BaseRuntime::clearScopeFromDataMap(*(v4 + 16), *a1[3]);
      if (*(*(v4 + 24) + 36))
      {
        v13 = 0;
        do
        {
          v14 = *(8 * v13);
          v15 = *(a1[4] + 8);
          if (v15)
          {
            v16 = v15 - 8;
          }

          else
          {
            v16 = 0;
          }

          v17 = *(*(v16 + 48) + 8 * v13);
          v18 = (*(**(v4 + 16) + 80))(*(v4 + 16), v17, *(*a1[2] + 8), 0, 1, 1);
          v19 = *(v4 + 16);
          v20 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);

          ++v13;
        }

        while (v13 < *(*(v4 + 24) + 36));
        operator delete(0);
      }
    }

    else
    {
      v7 = *a1[2];

      GPURegionRuntime::encodeOp(v6, a2, v7);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v4 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    if (*(v2[6] + 2) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      if ((*(v2 + 46) & 0x80) != 0)
      {
        v8 = *(v2 + 17);
        if (v8)
        {
          v9 = 0;
          v10 = 24;
          v20 = *(v2 + 17);
          v21 = v2;
          do
          {
            v11 = (*(**(v4 + 16) + 48))(*(v4 + 16), *(v2[9] + v10), 0);
            v12 = *(a1[1] + 8);
            if (v12)
            {
              v13 = v12 - 8;
            }

            else
            {
              v13 = 0;
            }

            v14 = *(*(v13 + 48) + 8 * v9);
            v15 = *(v4 + 16);
            if (*(*(v4 + 144) + v9) == 1)
            {
              v22 = v11;
              v16 = *(*(v13 + 48) + 8 * v9);
              v17 = (*(*v15 + 80))(v15);
              v18 = *(v4 + 16);
              v19 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);

              v8 = v20;
              v2 = v21;
              v11 = v22;
            }

            else
            {
              v17 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[2]);
            }

            ++v9;
            v10 += 32;
          }

          while (v8 != v9);
        }
      }
    }

    else
    {
      v6 = *(v4 + 16);
      v7 = *a1[2];

      GPURegionRuntime::encodeOp(v6, v2, v7);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeCSCBOp(GPU::EncodeDescriptor *)::$_2>(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  ParentOp = *(a2 + 16);
  if (ParentOp)
  {
    v4 = a2;
    ParentOp = mlir::Block::getParentOp(ParentOp);
    a2 = v4;
  }

  if (ParentOp == v2[3])
  {
    v5 = v2[2];
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v26 = a2;
      v27 = v2;
      v25 = (*(*v5 + 48))(v5, *(*(a2 + 72) + 24), 0);
      v7 = **(a1 + 8);
      v8 = GPU::EncodeDescriptor::getcomputeEncoder(**(a1 + 16));
      v9 = *(**(a1 + 16) + 8);
      v10 = [v25 mpsndarray];
      v30[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      [v7 encodeToMPSCommandEncoder:v8 commandBuffer:v9 sourceArrays:v11 resultState:0 destinationArray:v2[16] kernelDAGObject:v2[17]];

      v12 = v2;
      if (*(v2[3] + 36))
      {
        v13 = 0;
        v14 = 56;
        do
        {
          v15 = (*(*v12[2] + 48))(v12[2], *(*(v26 + 72) + v14), 0);
          v16 = *(*(a1 + 24) + 8);
          if (v16)
          {
            v17 = v16 - 8;
          }

          else
          {
            v17 = 0;
          }

          v18 = (*(*v12[2] + 48))(v12[2], *(*(v17 + 48) + 8 * v13), 0);
          v19 = **(a1 + 8);
          v20 = GPU::EncodeDescriptor::getcomputeEncoder(**(a1 + 16));
          v21 = *(**(a1 + 16) + 8);
          v22 = [v15 mpsndarray];
          v29 = v22;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          v24 = [v18 mpsndarray];
          [v19 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:v23 resultState:0 destinationArray:v24 kernelDAGObject:0];

          ++v13;
          v12 = v27;
          v14 += 32;
        }

        while (v13 < *(v27[3] + 36));
      }
    }

    else
    {
      v6 = **(a1 + 16);

      GPURegionRuntime::encodeOp(v5, a2, v6);
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_0>(uint64_t *a1, mlir::Block **a2)
{
  v2 = a2;
  v4 = *a1;
  ParentOp = a2[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    if (*(v2[6] + 2) != &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      v6 = *(v4 + 16);
      v7 = *a1[1];

      GPURegionRuntime::encodeOp(v6, v2, v7);
      return;
    }

    v8 = (*(**(v4 + 16) + 48))(*(v4 + 16), *(v2[9] + 3), 0);
    v9 = a1[1];
    v10 = *v9;
    v11 = *(*v9 + 72);
    v38 = v8;
    if (v11)
    {
      [v11 endEncoding];
      v12 = *(v10 + 72);
      *(v10 + 72) = 0;
    }

    v13 = [v8 mpsndarray];
    v14 = *(*a1[1] + 8);
    v15 = *(v4 + 120);
    v16 = [v8 mpsndarray];
    [v13 exportDataWithCommandBuffer:v14 toBuffer:v15 destinationDataType:objc_msgSend(v16 offset:"dataType") rowStrides:{0, 0}];

    v37 = [*(*a1[1] + 8) rootCommandBuffer];
    (***a1[1])(*a1[1]);
    [v37 waitUntilCompleted];
    v17 = a1[2];
    *v17 = *[*(v4 + 120) contents];
    v39 = v2;
    if (*(*(v4 + 24) + 36))
    {
      operator new();
    }

    BaseRuntime::clearScopeFromDataMap(*(v4 + 16), *a1[3]);
    v18 = *(v4 + 24);
    if (*(v18 + 36))
    {
      v19 = 0;
      do
      {
        if (*a1[2])
        {
          v20 = *(a1[4] + 8);
          if (v20)
          {
            v21 = v20 - 8;
          }

          else
          {
            v21 = 0;
          }

          v22 = *(*(v21 + 48) + 8 * v19);
        }

        else
        {
          v23 = v18 - 24 * (v19 - 5) - 96;
          v24 = (v18 + 16 * ~v19);
          if (v19 <= 5)
          {
            v22 = v24;
          }

          else
          {
            v22 = v23;
          }
        }

        v25 = *(8 * v19);
        v26 = (*(**(v4 + 16) + 48))(*(v4 + 16), v22, 0);
        v27 = *(v4 + 16);
        ++v19;
        v28 = *(v2[9] + 4 * v19 + 3);
        v29 = (v28[1] & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8))
        {
          v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
          v43 = v29;
          v44 = v30;
          if (!v29)
          {
            goto LABEL_33;
          }

          if (!mlir::CallOpInterface::getArgOperands(&v43))
          {
            goto LABEL_32;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v43);
          if (v32)
          {
            v33 = 8 * v32;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v33 -= 8;
              if (!v33)
              {
                goto LABEL_33;
              }
            }

LABEL_32:
            StaticType = GPURegionRuntime::getStaticType(v27, v28);
            v42 = v22;
            v40 = *(mlir::Value::getParentRegion(&v42) + 2);
            v43 = &v40;
            v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v27 + 288), &v40, &std::piecewise_construct, &v43);
            v43 = v42;
            std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v43, &v43, &StaticType);
          }
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }

LABEL_33:
        v35 = *(v4 + 16);
        v36 = GPU::EncodeDescriptor::getcomputeEncoder(*a1[1]);

        v18 = *(v4 + 24);
        v2 = v39;
      }

      while (v19 < *(v18 + 36));
    }

    if ((*a1[2] & 1) == 0)
    {
      GPURegionRuntime::clearScopeFromJITTypesMap(*(v4 + 16), *a1[3]);
    }
  }
}

void sub_1E089C814(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<MPSGraphTensor * {__strong}>::~vector[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<GPU::WhileOpHandler::encodeOp(GPU::EncodeDescriptor *)::$_1>(uint64_t *a1, mlir::Operation *a2)
{
  v4 = *a1;
  ParentOp = *(a2 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (ParentOp == *(v4 + 24))
  {
    v6 = *(v4 + 16);
    v7 = *a1[1];

    GPURegionRuntime::encodeOp(v6, a2, v7);
  }
}

void sub_1E089CB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E089CC00);
}

void sub_1E089CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E089CC00);
  }

  JUMPOUT(0x1E089CBBCLL);
}

void sub_1E089D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);

    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {

    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a9);

  _Unwind_Resume(a1);
}

void sub_1E089DB60(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E089DCB8(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void GPU::encodeReshape(uint64_t *a1, void *a2, void **a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a4;
  v27 = v13;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = adaptForMPS(v15);

  if (v16)
  {
    v18 = [v16 mpsndarray];
    v19 = [v18 offset];

    if (v19)
    {
LABEL_7:
      v23 = GPU::EncodeDescriptor::getcomputeEncoder(a3);
      v24 = a3[1];
      v25 = [v16 mpsndarray];
      v26 = [v13 reshapeWithCommandEncoder:v23 commandBuffer:v24 sourceArray:v14 shape:v17 destinationArray:v25];

      goto LABEL_8;
    }
  }

  v20 = GPU::EncodeDescriptor::getcomputeEncoder(a3);
  v21 = [v13 reshapeWithCommandEncoder:v20 commandBuffer:a3[1] sourceArray:v14 shape:v17 destinationArray:0];

  if (!v21)
  {
    if (!v16)
    {
      v16 = (*(*a2 + 80))(a2, a1, a3[1], 0, 0, 1);
    }

    goto LABEL_7;
  }

  v22 = GPU::EncodeDescriptor::getcomputeEncoder(a3);
  GPURegionRuntime::copyNDArrayToTarget(a2, v22, a3[1], &v27, v21, v16, a1, 0);

LABEL_8:
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::ExpandDimsOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, uint64_t a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = (v6 + 120);
  *v6 = &unk_1F5B53A70;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  if (*(a3 + 36))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  *(a1 + 120) = NextResultAtOffset;
  v16 = *(*(a3 + 72) + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v19 = *v7;
    *&v146 = v17;
    *(&v146 + 1) = v18;
    v20 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
LABEL_6:
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v146 = 0uLL;
    v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_9:
  *&v145 = v20;
  *(&v145 + 1) = v21;
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
  if (!v23)
  {
LABEL_14:
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v28 = (v26 + 8 * v27);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v29 = v28 - v25;
    v30 = (v28 - v25) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v148;
      if (v28 == v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v30, 8);
      v31 = __src[1];
      v32 = __src[0];
      if (v28 == v25)
      {
LABEL_24:
        v38 = v31 + (v29 >> 3);
        LODWORD(__src[1]) = v31 + (v29 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v32 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v32 = __src[0];
            LODWORD(v38) = __src[1];
          }

          *(a1 + 136) = v32;
          v39 = HIDWORD(__src[1]);
          *(a1 + 144) = v38;
          *(a1 + 148) = v39;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v40 = *(a1 + 144);
        if (v40 >= v38)
        {
          if (v38)
          {
            memmove(*v9, v32, 8 * v38);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v38)
        {
          if (v40)
          {
            memmove(*v9, v32, 8 * v40);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v38, 8);
        }

        v40 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v40)
        {
          memcpy(*v9 + 8 * v40, __src[0] + 8 * v40, 8 * (LODWORD(__src[1]) - v40));
        }

LABEL_49:
        *(a1 + 144) = v38;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v32 = __src[0];
LABEL_51:
        if (v32 != v148)
        {
          free(v32);
        }

        return a1;
      }
    }

    memcpy(&v32[v31], v25, v28 - v25);
    v31 = __src[1];
    v32 = __src[0];
    goto LABEL_24;
  }

  v24 = 8 * v23;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v24 -= 8;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v146))
  {
    return a1;
  }

  *__src = v146;
  v33 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v34)
  {
    return a1;
  }

  v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v35 > 2)
  {
    v41 = v35 + 1;
    v42 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v33 + 8 * v42);
    v43 = (v33 + 16);
    v44 = 0uLL;
    v45 = vnegq_f64(0);
    v46 = v42;
    v47 = 0uLL;
    do
    {
      v44 = vsubq_s64(v44, vceqq_s64(v43[-1], v45));
      v47 = vsubq_s64(v47, vceqq_s64(*v43, v45));
      v43 += 2;
      v46 -= 4;
    }

    while (v46);
    v36 = vaddvq_s64(vaddq_s64(v47, v44));
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = 0;
    v37 = v33;
  }

  do
  {
    v48 = *v37++;
    if (v48 == 0x8000000000000000)
    {
      ++v36;
    }
  }

  while (v37 != (v33 + 8 * v34));
LABEL_38:
  if (v36 != 1)
  {
    return a1;
  }

  *__src = v145;
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v50)
  {
    return a1;
  }

  v51 = (v50 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 > 2)
  {
    v55 = v51 + 1;
    v56 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v53 = (v49 + 8 * v56);
    v57 = (v49 + 16);
    v58 = 0uLL;
    v59 = vnegq_f64(0);
    v60 = v56;
    v61 = 0uLL;
    do
    {
      v58 = vsubq_s64(v58, vceqq_s64(v57[-1], v59));
      v61 = vsubq_s64(v61, vceqq_s64(*v57, v59));
      v57 += 2;
      v60 -= 4;
    }

    while (v60);
    v52 = vaddvq_s64(vaddq_s64(v61, v58));
    if (v55 == v56)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  do
  {
    v62 = *v53++;
    if (v62 == 0x8000000000000000)
    {
      ++v52;
    }
  }

  while (v53 != (v49 + 8 * v50));
LABEL_60:
  if (v52 != 1)
  {
    return a1;
  }

  *__src = v146;
  v63 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v65 = v63;
  if (v64)
  {
    v66 = 8 * v64;
    while (*v65 != 0x8000000000000000)
    {
      v65 += 2;
      v66 -= 8;
      if (!v66)
      {
        v65 = (v63 + 8 * v64);
        break;
      }
    }
  }

  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v68 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v65 == v68)
  {
    v72 = 1;
    goto LABEL_75;
  }

  v69 = v65 - v68 - 8;
  if (v69 >= 0x38)
  {
    v73 = (v69 >> 3) + 1;
    v71 = (v68 + 8 * (v73 & 0x3FFFFFFFFFFFFFF8));
    v74 = (v68 + 32);
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    v76 = v73 & 0x3FFFFFFFFFFFFFF8;
    v77.i64[0] = 0x100000001;
    v77.i64[1] = 0x100000001;
    do
    {
      v79 = v74[-2];
      v78 = v74[-1];
      v81 = *v74;
      v80 = v74[1];
      v74 += 4;
      v75 = vmulq_s32(v75, vuzp1q_s32(v79, v78));
      v77 = vmulq_s32(v77, vuzp1q_s32(v81, v80));
      v76 -= 8;
    }

    while (v76);
    v82 = vmulq_s32(v77, v75);
    *v82.i8 = vmul_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
    v70 = v82.i32[0] * v82.i32[1];
    if (v73 == (v73 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v70 = 1;
    v71 = v68;
  }

  do
  {
    v83 = *v71;
    v71 += 2;
    v70 *= v83;
  }

  while (v71 != v65);
LABEL_74:
  v72 = v70;
LABEL_75:
  v84 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v86 = v65 + 2;
  v87 = (v84 + 8 * v85);
  if (v65 + 2 == v87)
  {
    v90 = 1;
    goto LABEL_84;
  }

  v88 = v84 + 8 * v85 - v65 - 16;
  if (v88 >= 0x38)
  {
    v91 = (v88 >> 3) + 1;
    v86 += 2 * (v91 & 0x3FFFFFFFFFFFFFF8);
    v92 = (v65 + 10);
    v93.i64[0] = 0x100000001;
    v93.i64[1] = 0x100000001;
    v94 = v91 & 0x3FFFFFFFFFFFFFF8;
    v95.i64[0] = 0x100000001;
    v95.i64[1] = 0x100000001;
    do
    {
      v97 = v92[-2];
      v96 = v92[-1];
      v99 = *v92;
      v98 = v92[1];
      v92 += 4;
      v93 = vmulq_s32(v93, vuzp1q_s32(v97, v96));
      v95 = vmulq_s32(v95, vuzp1q_s32(v99, v98));
      v94 -= 8;
    }

    while (v94);
    v100 = vmulq_s32(v95, v93);
    *v100.i8 = vmul_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v89 = v100.i32[0] * v100.i32[1];
    if (v91 == (v91 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v89 = 1;
  }

  do
  {
    v101 = *v86;
    v86 += 2;
    v89 *= v101;
  }

  while (v86 != v87);
LABEL_83:
  v90 = v89;
LABEL_84:
  *__src = v145;
  v102 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v104 = v102;
  if (v103)
  {
    v105 = 8 * v103;
    while (*v104 != 0x8000000000000000)
    {
      v104 += 2;
      v105 -= 8;
      if (!v105)
      {
        v104 = (v102 + 8 * v103);
        break;
      }
    }
  }

  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v107 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v104 == v107)
  {
    v111 = 1;
    goto LABEL_98;
  }

  v108 = v104 - v107 - 8;
  if (v108 >= 0x38)
  {
    v112 = (v108 >> 3) + 1;
    v110 = (v107 + 8 * (v112 & 0x3FFFFFFFFFFFFFF8));
    v113 = (v107 + 32);
    v114.i64[0] = 0x100000001;
    v114.i64[1] = 0x100000001;
    v115 = v112 & 0x3FFFFFFFFFFFFFF8;
    v116.i64[0] = 0x100000001;
    v116.i64[1] = 0x100000001;
    do
    {
      v118 = v113[-2];
      v117 = v113[-1];
      v120 = *v113;
      v119 = v113[1];
      v113 += 4;
      v114 = vmulq_s32(v114, vuzp1q_s32(v118, v117));
      v116 = vmulq_s32(v116, vuzp1q_s32(v120, v119));
      v115 -= 8;
    }

    while (v115);
    v121 = vmulq_s32(v116, v114);
    *v121.i8 = vmul_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v109 = v121.i32[0] * v121.i32[1];
    if (v112 == (v112 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v109 = 1;
    v110 = v107;
  }

  do
  {
    v122 = *v110;
    v110 += 2;
    v109 *= v122;
  }

  while (v110 != v104);
LABEL_97:
  v111 = v109;
LABEL_98:
  v123 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v125 = v104 + 2;
  v126 = (v123 + 8 * v124);
  if (v104 + 2 != v126)
  {
    v127 = v123 + 8 * v124 - v104 - 16;
    if (v127 >= 0x38)
    {
      v130 = (v127 >> 3) + 1;
      v125 += 2 * (v130 & 0x3FFFFFFFFFFFFFF8);
      v131 = (v104 + 10);
      v132.i64[0] = 0x100000001;
      v132.i64[1] = 0x100000001;
      v133 = v130 & 0x3FFFFFFFFFFFFFF8;
      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      do
      {
        v136 = v131[-2];
        v135 = v131[-1];
        v138 = *v131;
        v137 = v131[1];
        v131 += 4;
        v132 = vmulq_s32(v132, vuzp1q_s32(v136, v135));
        v134 = vmulq_s32(v134, vuzp1q_s32(v138, v137));
        v133 -= 8;
      }

      while (v133);
      v139 = vmulq_s32(v134, v132);
      *v139.i8 = vmul_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
      v128 = v139.i32[0] * v139.i32[1];
      if (v130 == (v130 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v128 = 1;
    }

    do
    {
      v140 = *v125;
      v125 += 2;
      v128 *= v140;
    }

    while (v125 != v126);
LABEL_106:
    v129 = v128;
    goto LABEL_107;
  }

  v129 = 1;
LABEL_107:
  if (v72 == v111 && v90 == v129)
  {
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v142 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v141, (v142 + 8 * v143));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v144 = *(a1 + 200);
    *(a1 + 184) = (v65 - v67) >> 3;
    *(a1 + 192) = (v104 - v106) >> 3;
    if ((v144 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E089EB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != (v16 + 16))
  {
    free(a13);
  }

  if (*v14 != v15)
  {
    free(*v14);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v13);
  _Unwind_Resume(a1);
}

char *GPU::ExpandDimsOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::Flatten2DOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, uint64_t a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = (v6 + 120);
  *v6 = &unk_1F5B53AC0;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  if (*(a3 + 36))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  *(a1 + 120) = NextResultAtOffset;
  v16 = *(*(a3 + 72) + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v19 = *v7;
    *&v146 = v17;
    *(&v146 + 1) = v18;
    v20 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
LABEL_6:
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v146 = 0uLL;
    v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_9:
  *&v145 = v20;
  *(&v145 + 1) = v21;
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
  if (!v23)
  {
LABEL_14:
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v28 = (v26 + 8 * v27);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v29 = v28 - v25;
    v30 = (v28 - v25) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v148;
      if (v28 == v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v30, 8);
      v31 = __src[1];
      v32 = __src[0];
      if (v28 == v25)
      {
LABEL_24:
        v38 = v31 + (v29 >> 3);
        LODWORD(__src[1]) = v31 + (v29 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v32 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v32 = __src[0];
            LODWORD(v38) = __src[1];
          }

          *(a1 + 136) = v32;
          v39 = HIDWORD(__src[1]);
          *(a1 + 144) = v38;
          *(a1 + 148) = v39;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v40 = *(a1 + 144);
        if (v40 >= v38)
        {
          if (v38)
          {
            memmove(*v9, v32, 8 * v38);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v38)
        {
          if (v40)
          {
            memmove(*v9, v32, 8 * v40);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v38, 8);
        }

        v40 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v40)
        {
          memcpy(*v9 + 8 * v40, __src[0] + 8 * v40, 8 * (LODWORD(__src[1]) - v40));
        }

LABEL_49:
        *(a1 + 144) = v38;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v32 = __src[0];
LABEL_51:
        if (v32 != v148)
        {
          free(v32);
        }

        return a1;
      }
    }

    memcpy(&v32[v31], v25, v28 - v25);
    v31 = __src[1];
    v32 = __src[0];
    goto LABEL_24;
  }

  v24 = 8 * v23;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v24 -= 8;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v146))
  {
    return a1;
  }

  *__src = v146;
  v33 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v34)
  {
    return a1;
  }

  v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v35 > 2)
  {
    v41 = v35 + 1;
    v42 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v33 + 8 * v42);
    v43 = (v33 + 16);
    v44 = 0uLL;
    v45 = vnegq_f64(0);
    v46 = v42;
    v47 = 0uLL;
    do
    {
      v44 = vsubq_s64(v44, vceqq_s64(v43[-1], v45));
      v47 = vsubq_s64(v47, vceqq_s64(*v43, v45));
      v43 += 2;
      v46 -= 4;
    }

    while (v46);
    v36 = vaddvq_s64(vaddq_s64(v47, v44));
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = 0;
    v37 = v33;
  }

  do
  {
    v48 = *v37++;
    if (v48 == 0x8000000000000000)
    {
      ++v36;
    }
  }

  while (v37 != (v33 + 8 * v34));
LABEL_38:
  if (v36 != 1)
  {
    return a1;
  }

  *__src = v145;
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v50)
  {
    return a1;
  }

  v51 = (v50 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 > 2)
  {
    v55 = v51 + 1;
    v56 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v53 = (v49 + 8 * v56);
    v57 = (v49 + 16);
    v58 = 0uLL;
    v59 = vnegq_f64(0);
    v60 = v56;
    v61 = 0uLL;
    do
    {
      v58 = vsubq_s64(v58, vceqq_s64(v57[-1], v59));
      v61 = vsubq_s64(v61, vceqq_s64(*v57, v59));
      v57 += 2;
      v60 -= 4;
    }

    while (v60);
    v52 = vaddvq_s64(vaddq_s64(v61, v58));
    if (v55 == v56)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  do
  {
    v62 = *v53++;
    if (v62 == 0x8000000000000000)
    {
      ++v52;
    }
  }

  while (v53 != (v49 + 8 * v50));
LABEL_60:
  if (v52 != 1)
  {
    return a1;
  }

  *__src = v146;
  v63 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v65 = v63;
  if (v64)
  {
    v66 = 8 * v64;
    while (*v65 != 0x8000000000000000)
    {
      v65 += 2;
      v66 -= 8;
      if (!v66)
      {
        v65 = (v63 + 8 * v64);
        break;
      }
    }
  }

  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v68 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v65 == v68)
  {
    v72 = 1;
    goto LABEL_75;
  }

  v69 = v65 - v68 - 8;
  if (v69 >= 0x38)
  {
    v73 = (v69 >> 3) + 1;
    v71 = (v68 + 8 * (v73 & 0x3FFFFFFFFFFFFFF8));
    v74 = (v68 + 32);
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    v76 = v73 & 0x3FFFFFFFFFFFFFF8;
    v77.i64[0] = 0x100000001;
    v77.i64[1] = 0x100000001;
    do
    {
      v79 = v74[-2];
      v78 = v74[-1];
      v81 = *v74;
      v80 = v74[1];
      v74 += 4;
      v75 = vmulq_s32(v75, vuzp1q_s32(v79, v78));
      v77 = vmulq_s32(v77, vuzp1q_s32(v81, v80));
      v76 -= 8;
    }

    while (v76);
    v82 = vmulq_s32(v77, v75);
    *v82.i8 = vmul_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
    v70 = v82.i32[0] * v82.i32[1];
    if (v73 == (v73 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v70 = 1;
    v71 = v68;
  }

  do
  {
    v83 = *v71;
    v71 += 2;
    v70 *= v83;
  }

  while (v71 != v65);
LABEL_74:
  v72 = v70;
LABEL_75:
  v84 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v86 = v65 + 2;
  v87 = (v84 + 8 * v85);
  if (v65 + 2 == v87)
  {
    v90 = 1;
    goto LABEL_84;
  }

  v88 = v84 + 8 * v85 - v65 - 16;
  if (v88 >= 0x38)
  {
    v91 = (v88 >> 3) + 1;
    v86 += 2 * (v91 & 0x3FFFFFFFFFFFFFF8);
    v92 = (v65 + 10);
    v93.i64[0] = 0x100000001;
    v93.i64[1] = 0x100000001;
    v94 = v91 & 0x3FFFFFFFFFFFFFF8;
    v95.i64[0] = 0x100000001;
    v95.i64[1] = 0x100000001;
    do
    {
      v97 = v92[-2];
      v96 = v92[-1];
      v99 = *v92;
      v98 = v92[1];
      v92 += 4;
      v93 = vmulq_s32(v93, vuzp1q_s32(v97, v96));
      v95 = vmulq_s32(v95, vuzp1q_s32(v99, v98));
      v94 -= 8;
    }

    while (v94);
    v100 = vmulq_s32(v95, v93);
    *v100.i8 = vmul_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v89 = v100.i32[0] * v100.i32[1];
    if (v91 == (v91 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v89 = 1;
  }

  do
  {
    v101 = *v86;
    v86 += 2;
    v89 *= v101;
  }

  while (v86 != v87);
LABEL_83:
  v90 = v89;
LABEL_84:
  *__src = v145;
  v102 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v104 = v102;
  if (v103)
  {
    v105 = 8 * v103;
    while (*v104 != 0x8000000000000000)
    {
      v104 += 2;
      v105 -= 8;
      if (!v105)
      {
        v104 = (v102 + 8 * v103);
        break;
      }
    }
  }

  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v107 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v104 == v107)
  {
    v111 = 1;
    goto LABEL_98;
  }

  v108 = v104 - v107 - 8;
  if (v108 >= 0x38)
  {
    v112 = (v108 >> 3) + 1;
    v110 = (v107 + 8 * (v112 & 0x3FFFFFFFFFFFFFF8));
    v113 = (v107 + 32);
    v114.i64[0] = 0x100000001;
    v114.i64[1] = 0x100000001;
    v115 = v112 & 0x3FFFFFFFFFFFFFF8;
    v116.i64[0] = 0x100000001;
    v116.i64[1] = 0x100000001;
    do
    {
      v118 = v113[-2];
      v117 = v113[-1];
      v120 = *v113;
      v119 = v113[1];
      v113 += 4;
      v114 = vmulq_s32(v114, vuzp1q_s32(v118, v117));
      v116 = vmulq_s32(v116, vuzp1q_s32(v120, v119));
      v115 -= 8;
    }

    while (v115);
    v121 = vmulq_s32(v116, v114);
    *v121.i8 = vmul_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v109 = v121.i32[0] * v121.i32[1];
    if (v112 == (v112 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v109 = 1;
    v110 = v107;
  }

  do
  {
    v122 = *v110;
    v110 += 2;
    v109 *= v122;
  }

  while (v110 != v104);
LABEL_97:
  v111 = v109;
LABEL_98:
  v123 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v125 = v104 + 2;
  v126 = (v123 + 8 * v124);
  if (v104 + 2 != v126)
  {
    v127 = v123 + 8 * v124 - v104 - 16;
    if (v127 >= 0x38)
    {
      v130 = (v127 >> 3) + 1;
      v125 += 2 * (v130 & 0x3FFFFFFFFFFFFFF8);
      v131 = (v104 + 10);
      v132.i64[0] = 0x100000001;
      v132.i64[1] = 0x100000001;
      v133 = v130 & 0x3FFFFFFFFFFFFFF8;
      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      do
      {
        v136 = v131[-2];
        v135 = v131[-1];
        v138 = *v131;
        v137 = v131[1];
        v131 += 4;
        v132 = vmulq_s32(v132, vuzp1q_s32(v136, v135));
        v134 = vmulq_s32(v134, vuzp1q_s32(v138, v137));
        v133 -= 8;
      }

      while (v133);
      v139 = vmulq_s32(v134, v132);
      *v139.i8 = vmul_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
      v128 = v139.i32[0] * v139.i32[1];
      if (v130 == (v130 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v128 = 1;
    }

    do
    {
      v140 = *v125;
      v125 += 2;
      v128 *= v140;
    }

    while (v125 != v126);
LABEL_106:
    v129 = v128;
    goto LABEL_107;
  }

  v129 = 1;
LABEL_107:
  if (v72 == v111 && v90 == v129)
  {
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v142 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v141, (v142 + 8 * v143));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v144 = *(a1 + 200);
    *(a1 + 184) = (v65 - v67) >> 3;
    *(a1 + 192) = (v104 - v106) >> 3;
    if ((v144 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E089F4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != (v16 + 16))
  {
    free(a13);
  }

  if (*v14 != v15)
  {
    free(*v14);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v13);
  _Unwind_Resume(a1);
}

char *GPU::Flatten2DOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::ReshapeOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, uint64_t a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = (v6 + 120);
  *v6 = &unk_1F5B53B10;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  if (*(a3 + 36))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  *(a1 + 120) = NextResultAtOffset;
  v16 = *(*(a3 + 72) + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v19 = *v7;
    *&v146 = v17;
    *(&v146 + 1) = v18;
    v20 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
LABEL_6:
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v146 = 0uLL;
    v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_9:
  *&v145 = v20;
  *(&v145 + 1) = v21;
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
  if (!v23)
  {
LABEL_14:
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v28 = (v26 + 8 * v27);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v29 = v28 - v25;
    v30 = (v28 - v25) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v148;
      if (v28 == v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v30, 8);
      v31 = __src[1];
      v32 = __src[0];
      if (v28 == v25)
      {
LABEL_24:
        v38 = v31 + (v29 >> 3);
        LODWORD(__src[1]) = v31 + (v29 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v32 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v32 = __src[0];
            LODWORD(v38) = __src[1];
          }

          *(a1 + 136) = v32;
          v39 = HIDWORD(__src[1]);
          *(a1 + 144) = v38;
          *(a1 + 148) = v39;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v40 = *(a1 + 144);
        if (v40 >= v38)
        {
          if (v38)
          {
            memmove(*v9, v32, 8 * v38);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v38)
        {
          if (v40)
          {
            memmove(*v9, v32, 8 * v40);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v38, 8);
        }

        v40 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v40)
        {
          memcpy(*v9 + 8 * v40, __src[0] + 8 * v40, 8 * (LODWORD(__src[1]) - v40));
        }

LABEL_49:
        *(a1 + 144) = v38;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v32 = __src[0];
LABEL_51:
        if (v32 != v148)
        {
          free(v32);
        }

        return a1;
      }
    }

    memcpy(&v32[v31], v25, v28 - v25);
    v31 = __src[1];
    v32 = __src[0];
    goto LABEL_24;
  }

  v24 = 8 * v23;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v24 -= 8;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v146))
  {
    return a1;
  }

  *__src = v146;
  v33 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v34)
  {
    return a1;
  }

  v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v35 > 2)
  {
    v41 = v35 + 1;
    v42 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v37 = (v33 + 8 * v42);
    v43 = (v33 + 16);
    v44 = 0uLL;
    v45 = vnegq_f64(0);
    v46 = v42;
    v47 = 0uLL;
    do
    {
      v44 = vsubq_s64(v44, vceqq_s64(v43[-1], v45));
      v47 = vsubq_s64(v47, vceqq_s64(*v43, v45));
      v43 += 2;
      v46 -= 4;
    }

    while (v46);
    v36 = vaddvq_s64(vaddq_s64(v47, v44));
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v36 = 0;
    v37 = v33;
  }

  do
  {
    v48 = *v37++;
    if (v48 == 0x8000000000000000)
    {
      ++v36;
    }
  }

  while (v37 != (v33 + 8 * v34));
LABEL_38:
  if (v36 != 1)
  {
    return a1;
  }

  *__src = v145;
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v50)
  {
    return a1;
  }

  v51 = (v50 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 > 2)
  {
    v55 = v51 + 1;
    v56 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v53 = (v49 + 8 * v56);
    v57 = (v49 + 16);
    v58 = 0uLL;
    v59 = vnegq_f64(0);
    v60 = v56;
    v61 = 0uLL;
    do
    {
      v58 = vsubq_s64(v58, vceqq_s64(v57[-1], v59));
      v61 = vsubq_s64(v61, vceqq_s64(*v57, v59));
      v57 += 2;
      v60 -= 4;
    }

    while (v60);
    v52 = vaddvq_s64(vaddq_s64(v61, v58));
    if (v55 == v56)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v52 = 0;
    v53 = v49;
  }

  do
  {
    v62 = *v53++;
    if (v62 == 0x8000000000000000)
    {
      ++v52;
    }
  }

  while (v53 != (v49 + 8 * v50));
LABEL_60:
  if (v52 != 1)
  {
    return a1;
  }

  *__src = v146;
  v63 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v65 = v63;
  if (v64)
  {
    v66 = 8 * v64;
    while (*v65 != 0x8000000000000000)
    {
      v65 += 2;
      v66 -= 8;
      if (!v66)
      {
        v65 = (v63 + 8 * v64);
        break;
      }
    }
  }

  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v68 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v65 == v68)
  {
    v72 = 1;
    goto LABEL_75;
  }

  v69 = v65 - v68 - 8;
  if (v69 >= 0x38)
  {
    v73 = (v69 >> 3) + 1;
    v71 = (v68 + 8 * (v73 & 0x3FFFFFFFFFFFFFF8));
    v74 = (v68 + 32);
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    v76 = v73 & 0x3FFFFFFFFFFFFFF8;
    v77.i64[0] = 0x100000001;
    v77.i64[1] = 0x100000001;
    do
    {
      v79 = v74[-2];
      v78 = v74[-1];
      v81 = *v74;
      v80 = v74[1];
      v74 += 4;
      v75 = vmulq_s32(v75, vuzp1q_s32(v79, v78));
      v77 = vmulq_s32(v77, vuzp1q_s32(v81, v80));
      v76 -= 8;
    }

    while (v76);
    v82 = vmulq_s32(v77, v75);
    *v82.i8 = vmul_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
    v70 = v82.i32[0] * v82.i32[1];
    if (v73 == (v73 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v70 = 1;
    v71 = v68;
  }

  do
  {
    v83 = *v71;
    v71 += 2;
    v70 *= v83;
  }

  while (v71 != v65);
LABEL_74:
  v72 = v70;
LABEL_75:
  v84 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v86 = v65 + 2;
  v87 = (v84 + 8 * v85);
  if (v65 + 2 == v87)
  {
    v90 = 1;
    goto LABEL_84;
  }

  v88 = v84 + 8 * v85 - v65 - 16;
  if (v88 >= 0x38)
  {
    v91 = (v88 >> 3) + 1;
    v86 += 2 * (v91 & 0x3FFFFFFFFFFFFFF8);
    v92 = (v65 + 10);
    v93.i64[0] = 0x100000001;
    v93.i64[1] = 0x100000001;
    v94 = v91 & 0x3FFFFFFFFFFFFFF8;
    v95.i64[0] = 0x100000001;
    v95.i64[1] = 0x100000001;
    do
    {
      v97 = v92[-2];
      v96 = v92[-1];
      v99 = *v92;
      v98 = v92[1];
      v92 += 4;
      v93 = vmulq_s32(v93, vuzp1q_s32(v97, v96));
      v95 = vmulq_s32(v95, vuzp1q_s32(v99, v98));
      v94 -= 8;
    }

    while (v94);
    v100 = vmulq_s32(v95, v93);
    *v100.i8 = vmul_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v89 = v100.i32[0] * v100.i32[1];
    if (v91 == (v91 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v89 = 1;
  }

  do
  {
    v101 = *v86;
    v86 += 2;
    v89 *= v101;
  }

  while (v86 != v87);
LABEL_83:
  v90 = v89;
LABEL_84:
  *__src = v145;
  v102 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v104 = v102;
  if (v103)
  {
    v105 = 8 * v103;
    while (*v104 != 0x8000000000000000)
    {
      v104 += 2;
      v105 -= 8;
      if (!v105)
      {
        v104 = (v102 + 8 * v103);
        break;
      }
    }
  }

  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v107 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v104 == v107)
  {
    v111 = 1;
    goto LABEL_98;
  }

  v108 = v104 - v107 - 8;
  if (v108 >= 0x38)
  {
    v112 = (v108 >> 3) + 1;
    v110 = (v107 + 8 * (v112 & 0x3FFFFFFFFFFFFFF8));
    v113 = (v107 + 32);
    v114.i64[0] = 0x100000001;
    v114.i64[1] = 0x100000001;
    v115 = v112 & 0x3FFFFFFFFFFFFFF8;
    v116.i64[0] = 0x100000001;
    v116.i64[1] = 0x100000001;
    do
    {
      v118 = v113[-2];
      v117 = v113[-1];
      v120 = *v113;
      v119 = v113[1];
      v113 += 4;
      v114 = vmulq_s32(v114, vuzp1q_s32(v118, v117));
      v116 = vmulq_s32(v116, vuzp1q_s32(v120, v119));
      v115 -= 8;
    }

    while (v115);
    v121 = vmulq_s32(v116, v114);
    *v121.i8 = vmul_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v109 = v121.i32[0] * v121.i32[1];
    if (v112 == (v112 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v109 = 1;
    v110 = v107;
  }

  do
  {
    v122 = *v110;
    v110 += 2;
    v109 *= v122;
  }

  while (v110 != v104);
LABEL_97:
  v111 = v109;
LABEL_98:
  v123 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v125 = v104 + 2;
  v126 = (v123 + 8 * v124);
  if (v104 + 2 != v126)
  {
    v127 = v123 + 8 * v124 - v104 - 16;
    if (v127 >= 0x38)
    {
      v130 = (v127 >> 3) + 1;
      v125 += 2 * (v130 & 0x3FFFFFFFFFFFFFF8);
      v131 = (v104 + 10);
      v132.i64[0] = 0x100000001;
      v132.i64[1] = 0x100000001;
      v133 = v130 & 0x3FFFFFFFFFFFFFF8;
      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      do
      {
        v136 = v131[-2];
        v135 = v131[-1];
        v138 = *v131;
        v137 = v131[1];
        v131 += 4;
        v132 = vmulq_s32(v132, vuzp1q_s32(v136, v135));
        v134 = vmulq_s32(v134, vuzp1q_s32(v138, v137));
        v133 -= 8;
      }

      while (v133);
      v139 = vmulq_s32(v134, v132);
      *v139.i8 = vmul_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
      v128 = v139.i32[0] * v139.i32[1];
      if (v130 == (v130 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v128 = 1;
    }

    do
    {
      v140 = *v125;
      v125 += 2;
      v128 *= v140;
    }

    while (v125 != v126);
LABEL_106:
    v129 = v128;
    goto LABEL_107;
  }

  v129 = 1;
LABEL_107:
  if (v72 == v111 && v90 == v129)
  {
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    v142 = mlir::CallableOpInterface::getArgAttrsAttr(&v145);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v141, (v142 + 8 * v143));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v144 = *(a1 + 200);
    *(a1 + 184) = (v65 - v67) >> 3;
    *(a1 + 192) = (v104 - v106) >> 3;
    if ((v144 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E089FDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != (v16 + 16))
  {
    free(a13);
  }

  if (*v14 != v15)
  {
    free(*v14);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v13);
  _Unwind_Resume(a1);
}

char *GPU::ReshapeOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

uint64_t GPU::BaseReshapeOpHandler<mlir::mps::SqueezeOp>::BaseReshapeOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v148[5] = *MEMORY[0x1E69E9840];
  v6 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *(v6 + 120) = 0u;
  v7 = v6 + 120;
  *v6 = &unk_1F5B53B60;
  v8 = v6 + 152;
  *(v6 + 17) = v6 + 152;
  v9 = (v6 + 136);
  *(v6 + 18) = 0x400000000;
  *(v6 + 184) = 0;
  *(v6 + 200) = 0;
  v10 = objc_alloc(MEMORY[0x1E6974740]);
  v11 = [*(*(a1 + 16) + 48) metalDevice];
  v12 = [v10 initWithDevice:v11];
  v13 = *(a1 + 8);
  *(a1 + 8) = v12;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  v146 = a3;
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  *v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v146, 0);
  v16 = *(*(v146 + 9) + 32 * ODSOperandIndexAndLength + 24);
  *(a1 + 128) = v16;
  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    *&v145 = v17;
    *(&v145 + 1) = v18;
    v19 = (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v19)
    {
LABEL_6:
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
      goto LABEL_9;
    }
  }

  else
  {
    v145 = 0uLL;
    v19 = (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v19)
    {
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_9:
  *&v144 = v19;
  *(&v144 + 1) = v20;
  if (!mlir::CallOpInterface::getArgOperands(&v144))
  {
    goto LABEL_17;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
  if (!v22)
  {
LABEL_14:
    v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    v27 = (v25 + 8 * v26);
    __src[0] = v148;
    __src[1] = 0x400000000;
    v28 = v27 - v24;
    v29 = (v27 - v24) >> 3;
    if (v29 < 5)
    {
      v30 = 0;
      v31 = v148;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(__src, v148, v29, 8);
      v30 = __src[1];
      v31 = __src[0];
      if (v27 == v24)
      {
LABEL_24:
        v37 = v30 + (v28 >> 3);
        LODWORD(__src[1]) = v30 + (v28 >> 3);
        if (v9 == __src)
        {
          goto LABEL_51;
        }

        if (v31 != v148)
        {
          if (*v9 != v8)
          {
            free(*v9);
            v31 = __src[0];
            LODWORD(v37) = __src[1];
          }

          *(a1 + 136) = v31;
          v38 = HIDWORD(__src[1]);
          *(a1 + 144) = v37;
          *(a1 + 148) = v38;
          __src[0] = v148;
          HIDWORD(__src[1]) = 0;
          goto LABEL_50;
        }

        v39 = *(a1 + 144);
        if (v39 >= v37)
        {
          if (v37)
          {
            memmove(*v9, v31, 8 * v37);
          }

          goto LABEL_49;
        }

        if (*(a1 + 148) >= v37)
        {
          if (v39)
          {
            memmove(*v9, v31, 8 * v39);
            goto LABEL_47;
          }
        }

        else
        {
          *(a1 + 144) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v37, 8);
        }

        v39 = 0;
LABEL_47:
        if (LODWORD(__src[1]) != v39)
        {
          memcpy(*v9 + 8 * v39, __src[0] + 8 * v39, 8 * (LODWORD(__src[1]) - v39));
        }

LABEL_49:
        *(a1 + 144) = v37;
LABEL_50:
        LODWORD(__src[1]) = 0;
        v31 = __src[0];
LABEL_51:
        if (v31 != v148)
        {
          free(v31);
        }

        return a1;
      }
    }

    memcpy(&v31[v30], v24, v27 - v24);
    v30 = __src[1];
    v31 = __src[0];
    goto LABEL_24;
  }

  v23 = 8 * v22;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  if (!mlir::CallOpInterface::getArgOperands(&v144))
  {
    return a1;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v145))
  {
    return a1;
  }

  *__src = v145;
  v32 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v33)
  {
    return a1;
  }

  v34 = (v33 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v34 > 2)
  {
    v40 = v34 + 1;
    v41 = (v34 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v36 = (v32 + 8 * v41);
    v42 = (v32 + 16);
    v43 = 0uLL;
    v44 = vnegq_f64(0);
    v45 = v41;
    v46 = 0uLL;
    do
    {
      v43 = vsubq_s64(v43, vceqq_s64(v42[-1], v44));
      v46 = vsubq_s64(v46, vceqq_s64(*v42, v44));
      v42 += 2;
      v45 -= 4;
    }

    while (v45);
    v35 = vaddvq_s64(vaddq_s64(v46, v43));
    if (v40 == v41)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v35 = 0;
    v36 = v32;
  }

  do
  {
    v47 = *v36++;
    if (v47 == 0x8000000000000000)
    {
      ++v35;
    }
  }

  while (v36 != (v32 + 8 * v33));
LABEL_38:
  if (v35 != 1)
  {
    return a1;
  }

  *__src = v144;
  v48 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (!v49)
  {
    return a1;
  }

  v50 = (v49 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v50 > 2)
  {
    v54 = v50 + 1;
    v55 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v52 = (v48 + 8 * v55);
    v56 = (v48 + 16);
    v57 = 0uLL;
    v58 = vnegq_f64(0);
    v59 = v55;
    v60 = 0uLL;
    do
    {
      v57 = vsubq_s64(v57, vceqq_s64(v56[-1], v58));
      v60 = vsubq_s64(v60, vceqq_s64(*v56, v58));
      v56 += 2;
      v59 -= 4;
    }

    while (v59);
    v51 = vaddvq_s64(vaddq_s64(v60, v57));
    if (v54 == v55)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v51 = 0;
    v52 = v48;
  }

  do
  {
    v61 = *v52++;
    if (v61 == 0x8000000000000000)
    {
      ++v51;
    }
  }

  while (v52 != (v48 + 8 * v49));
LABEL_60:
  if (v51 != 1)
  {
    return a1;
  }

  *__src = v145;
  v62 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v64 = v62;
  if (v63)
  {
    v65 = 8 * v63;
    while (*v64 != 0x8000000000000000)
    {
      v64 += 2;
      v65 -= 8;
      if (!v65)
      {
        v64 = (v62 + 8 * v63);
        break;
      }
    }
  }

  v66 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v67 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v64 == v67)
  {
    v71 = 1;
    goto LABEL_75;
  }

  v68 = v64 - v67 - 8;
  if (v68 >= 0x38)
  {
    v72 = (v68 >> 3) + 1;
    v70 = (v67 + 8 * (v72 & 0x3FFFFFFFFFFFFFF8));
    v73 = (v67 + 32);
    v74.i64[0] = 0x100000001;
    v74.i64[1] = 0x100000001;
    v75 = v72 & 0x3FFFFFFFFFFFFFF8;
    v76.i64[0] = 0x100000001;
    v76.i64[1] = 0x100000001;
    do
    {
      v78 = v73[-2];
      v77 = v73[-1];
      v80 = *v73;
      v79 = v73[1];
      v73 += 4;
      v74 = vmulq_s32(v74, vuzp1q_s32(v78, v77));
      v76 = vmulq_s32(v76, vuzp1q_s32(v80, v79));
      v75 -= 8;
    }

    while (v75);
    v81 = vmulq_s32(v76, v74);
    *v81.i8 = vmul_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
    v69 = v81.i32[0] * v81.i32[1];
    if (v72 == (v72 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v69 = 1;
    v70 = v67;
  }

  do
  {
    v82 = *v70;
    v70 += 2;
    v69 *= v82;
  }

  while (v70 != v64);
LABEL_74:
  v71 = v69;
LABEL_75:
  v83 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v85 = v64 + 2;
  v86 = (v83 + 8 * v84);
  if (v64 + 2 == v86)
  {
    v89 = 1;
    goto LABEL_84;
  }

  v87 = v83 + 8 * v84 - v64 - 16;
  if (v87 >= 0x38)
  {
    v90 = (v87 >> 3) + 1;
    v85 += 2 * (v90 & 0x3FFFFFFFFFFFFFF8);
    v91 = (v64 + 10);
    v92.i64[0] = 0x100000001;
    v92.i64[1] = 0x100000001;
    v93 = v90 & 0x3FFFFFFFFFFFFFF8;
    v94.i64[0] = 0x100000001;
    v94.i64[1] = 0x100000001;
    do
    {
      v96 = v91[-2];
      v95 = v91[-1];
      v98 = *v91;
      v97 = v91[1];
      v91 += 4;
      v92 = vmulq_s32(v92, vuzp1q_s32(v96, v95));
      v94 = vmulq_s32(v94, vuzp1q_s32(v98, v97));
      v93 -= 8;
    }

    while (v93);
    v99 = vmulq_s32(v94, v92);
    *v99.i8 = vmul_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
    v88 = v99.i32[0] * v99.i32[1];
    if (v90 == (v90 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_83;
    }
  }

  else
  {
    v88 = 1;
  }

  do
  {
    v100 = *v85;
    v85 += 2;
    v88 *= v100;
  }

  while (v85 != v86);
LABEL_83:
  v89 = v88;
LABEL_84:
  *__src = v144;
  v101 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v103 = v101;
  if (v102)
  {
    v104 = 8 * v102;
    while (*v103 != 0x8000000000000000)
    {
      v103 += 2;
      v104 -= 8;
      if (!v104)
      {
        v103 = (v101 + 8 * v102);
        break;
      }
    }
  }

  v105 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v106 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  if (v103 == v106)
  {
    v110 = 1;
    goto LABEL_98;
  }

  v107 = v103 - v106 - 8;
  if (v107 >= 0x38)
  {
    v111 = (v107 >> 3) + 1;
    v109 = (v106 + 8 * (v111 & 0x3FFFFFFFFFFFFFF8));
    v112 = (v106 + 32);
    v113.i64[0] = 0x100000001;
    v113.i64[1] = 0x100000001;
    v114 = v111 & 0x3FFFFFFFFFFFFFF8;
    v115.i64[0] = 0x100000001;
    v115.i64[1] = 0x100000001;
    do
    {
      v117 = v112[-2];
      v116 = v112[-1];
      v119 = *v112;
      v118 = v112[1];
      v112 += 4;
      v113 = vmulq_s32(v113, vuzp1q_s32(v117, v116));
      v115 = vmulq_s32(v115, vuzp1q_s32(v119, v118));
      v114 -= 8;
    }

    while (v114);
    v120 = vmulq_s32(v115, v113);
    *v120.i8 = vmul_s32(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
    v108 = v120.i32[0] * v120.i32[1];
    if (v111 == (v111 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_97;
    }
  }

  else
  {
    v108 = 1;
    v109 = v106;
  }

  do
  {
    v121 = *v109;
    v109 += 2;
    v108 *= v121;
  }

  while (v109 != v103);
LABEL_97:
  v110 = v108;
LABEL_98:
  v122 = mlir::CallableOpInterface::getArgAttrsAttr(__src);
  v124 = v103 + 2;
  v125 = (v122 + 8 * v123);
  if (v103 + 2 != v125)
  {
    v126 = v122 + 8 * v123 - v103 - 16;
    if (v126 >= 0x38)
    {
      v129 = (v126 >> 3) + 1;
      v124 += 2 * (v129 & 0x3FFFFFFFFFFFFFF8);
      v130 = (v103 + 10);
      v131.i64[0] = 0x100000001;
      v131.i64[1] = 0x100000001;
      v132 = v129 & 0x3FFFFFFFFFFFFFF8;
      v133.i64[0] = 0x100000001;
      v133.i64[1] = 0x100000001;
      do
      {
        v135 = v130[-2];
        v134 = v130[-1];
        v137 = *v130;
        v136 = v130[1];
        v130 += 4;
        v131 = vmulq_s32(v131, vuzp1q_s32(v135, v134));
        v133 = vmulq_s32(v133, vuzp1q_s32(v137, v136));
        v132 -= 8;
      }

      while (v132);
      v138 = vmulq_s32(v133, v131);
      *v138.i8 = vmul_s32(*v138.i8, *&vextq_s8(v138, v138, 8uLL));
      v127 = v138.i32[0] * v138.i32[1];
      if (v129 == (v129 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_106;
      }
    }

    else
    {
      v127 = 1;
    }

    do
    {
      v139 = *v124;
      v124 += 2;
      v127 *= v139;
    }

    while (v124 != v125);
LABEL_106:
    v128 = v127;
    goto LABEL_107;
  }

  v128 = 1;
LABEL_107:
  if (v71 == v110 && v89 == v128)
  {
    v140 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    v141 = mlir::CallableOpInterface::getArgAttrsAttr(&v144);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(__src, v140, (v141 + 8 * v142));
    llvm::SmallVectorImpl<unsigned long long>::operator=(v9, __src);
    if (__src[0] != v148)
    {
      free(__src[0]);
    }

    v143 = *(a1 + 200);
    *(a1 + 184) = (v64 - v66) >> 3;
    *(a1 + 192) = (v103 - v105) >> 3;
    if ((v143 & 1) == 0)
    {
      *(a1 + 200) = 1;
    }
  }

  return a1;
}

void sub_1E08A0738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15 != (v18 + 16))
  {
    free(a15);
  }

  if (*v16 != v17)
  {
    free(*v16);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v15);
  _Unwind_Resume(a1);
}

char *GPU::SqueezeOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

void GPU::BaseReshapeOpHandler<mlir::mps::ExpandDimsOp>::encodeOp(uint64_t a1, GPU::EncodeDescriptor *a2)
{
  v43[4] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  v5 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(a1 + 120), 0);
  v6 = (*(**v4 + 48))(*v4, *(a1 + 128), 0);
  v7 = [v6 mpsndarray];
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = (a1 + 136);
  if (*(a1 + 200) != 1)
  {
    goto LABEL_10;
  }

  v10 = [v6 shape];

  if (!v10)
  {
    v8 = *(a1 + 144);
LABEL_10:
    v15 = getMPSShapeFromMLIR(*v9, v8);
LABEL_18:
    v20 = v15;
    goto LABEL_19;
  }

  v11 = *(a1 + 120);
  v12 = *(*(*(a1 + 16) + 592) + 32);
  if ((*(*v12 + 24))(v12, v11))
  {
    goto LABEL_17;
  }

  v13 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v41 = 0;
    v42 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v41 = v13;
  v42 = v14;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (mlir::CallOpInterface::getArgOperands(&v41))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v41);
    if (v17)
    {
      v18 = 8 * v17;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_22;
    }

LABEL_17:
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v15 = getMPSShapeFromMLIR(StaticType);
    goto LABEL_18;
  }

LABEL_22:
  v22 = [v6 shape];
  v23 = [v22 objectAtIndexedSubscript:*(a1 + 184)];
  v24 = [v23 longLongValue];

  if (v24 < 1)
  {
    goto LABEL_20;
  }

  v41 = v43;
  v42 = 0x400000000;
  if (&v41 != v9)
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      if (v25 < 5)
      {
        v26 = *(a1 + 144);
        v27 = v43;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, *(a1 + 144), 8);
        v26 = *(a1 + 144);
        if (!v26)
        {
LABEL_31:
          LODWORD(v42) = v25;
          v28 = v41;
          goto LABEL_32;
        }

        v27 = v41;
      }

      memcpy(v27, *v9, 8 * v26);
      goto LABEL_31;
    }
  }

  v25 = 0;
  v28 = v43;
LABEL_32:
  v28[*(a1 + 192)] = v24;
  v20 = getMPSShapeFromMLIR(v28, v25);
  v29 = *(a1 + 16);
  v30 = *(a1 + 120);
  v31 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v35[0] = v31;
  v35[1] = v32;
  *&v36 = v41;
  *(&v36 + 1) = v42;
  v37 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v39 = mlir::ShapedType::cloneWith(v35, &v36, isSplat);
  v40 = v30;
  v38 = *(mlir::Value::getParentRegion(&v40) + 2);
  *&v36 = &v38;
  v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v29 + 288), &v38, &std::piecewise_construct, &v36);
  *&v36 = v40;
  std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v36, &v36, &v39);
  if (v41 != v43)
  {
    free(v41);
  }

LABEL_19:
  if (!v20)
  {
LABEL_20:
    GPU::BaseOpHandler::_inferJITOutputTypes(a1, a2);
    v21 = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v20 = getMPSShapeFromMLIR(v21);
  }

  GPU::encodeReshape(*(a1 + 120), *(a1 + 16), a2, *(a1 + 8), v7, v20, v5);
}

void GPU::ExpandDimsOpHandler::~ExpandDimsOpHandler(GPU::ExpandDimsOpHandler *this)
{
  *this = &unk_1F5B53A70;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B53A70;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReshapeOpHandler<mlir::mps::Flatten2DOp>::encodeOp(uint64_t a1, GPU::EncodeDescriptor *a2)
{
  v43[4] = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  v5 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(a1 + 120), 0);
  v6 = (*(**v4 + 48))(*v4, *(a1 + 128), 0);
  v7 = [v6 mpsndarray];
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a1 + 144);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = (a1 + 136);
  if (*(a1 + 200) != 1)
  {
    goto LABEL_10;
  }

  v10 = [v6 shape];

  if (!v10)
  {
    v8 = *(a1 + 144);
LABEL_10:
    v15 = getMPSShapeFromMLIR(*v9, v8);
LABEL_18:
    v20 = v15;
    goto LABEL_19;
  }

  v11 = *(a1 + 120);
  v12 = *(*(*(a1 + 16) + 592) + 32);
  if ((*(*v12 + 24))(v12, v11))
  {
    goto LABEL_17;
  }

  v13 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v41 = 0;
    v42 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v41 = v13;
  v42 = v14;
  if (!v13)
  {
    goto LABEL_17;
  }

  if (mlir::CallOpInterface::getArgOperands(&v41))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v41);
    if (v17)
    {
      v18 = 8 * v17;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_22;
    }

LABEL_17:
    StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v15 = getMPSShapeFromMLIR(StaticType);
    goto LABEL_18;
  }

LABEL_22:
  v22 = [v6 shape];
  v23 = [v22 objectAtIndexedSubscript:*(a1 + 184)];
  v24 = [v23 longLongValue];

  if (v24 < 1)
  {
    goto LABEL_20;
  }

  v41 = v43;
  v42 = 0x400000000;
  if (&v41 != v9)
  {
    v25 = *(a1 + 144);
    if (v25)
    {
      if (v25 < 5)
      {
        v26 = *(a1 + 144);
        v27 = v43;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, *(a1 + 144), 8);
        v26 = *(a1 + 144);
        if (!v26)
        {
LABEL_31:
          LODWORD(v42) = v25;
          v28 = v41;
          goto LABEL_32;
        }

        v27 = v41;
      }

      memcpy(v27, *v9, 8 * v26);
      goto LABEL_31;
    }
  }

  v25 = 0;
  v28 = v43;
LABEL_32:
  v28[*(a1 + 192)] = v24;
  v20 = getMPSShapeFromMLIR(v28, v25);
  v29 = *(a1 + 16);
  v30 = *(a1 + 120);
  v31 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v35[0] = v31;
  v35[1] = v32;
  *&v36 = v41;
  *(&v36 + 1) = v42;
  v37 = 1;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v39 = mlir::ShapedType::cloneWith(v35, &v36, isSplat);
  v40 = v30;
  v38 = *(mlir::Value::getParentRegion(&v40) + 2);
  *&v36 = &v38;
  v34 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v29 + 288), &v38, &std::piecewise_construct, &v36);
  *&v36 = v40;
  std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v34 + 3, &v36, &v36, &v39);
  if (v41 != v43)
  {
    free(v41);
  }

LABEL_19:
  if (!v20)
  {
LABEL_20:
    GPU::BaseOpHandler::_inferJITOutputTypes(a1, a2);
    v21 = GPURegionRuntime::getStaticType(*(a1 + 16), *(a1 + 120));
    v20 = getMPSShapeFromMLIR(v21);
  }

  GPU::encodeReshape(*(a1 + 120), *(a1 + 16), a2, *(a1 + 8), v7, v20, v5);
}