void GPU::QuantizedGatherNDFusionOpHandler::encodeNDArrayOp(GPU::QuantizedGatherNDFusionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v51 = a3;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 120), 0);
  v6 = *(this + 15);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(this + 19);
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v32 = *(this + 19);
    v9 = *(v32 + 48);
    v10 = *(v32 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
  v12 = v7 + 32 * ODSOperandIndexAndLength;
  v13 = MEMORY[0x1E69744E8];
  do
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), *(v12 + 32 * v11 + 24), 0);
    v15 = [v14 mpsndarray];
    v16 = v15;
    if (*(v15 + *v13) == 1)
    {
      v17 = **v9;
      if (v17)
      {
        v18 = 0;
        do
        {
          ++v18;
          v17 = *v17;
        }

        while (v17);
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [v15 setReadCount:{objc_msgSend(v15, "readCount", v51) + v19}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), *v9, v14);

    ++v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_12:
  v20 = *(*(this + 21) + 72);
  v21 = *(v20 + 56);
  v22 = *(*(*(this + 20) + 72) + 56);
  v23 = (*(**(this + 2) + 48))(*(this + 2), *(v20 + 24), 0);
  v24 = [v23 mpsndarray];

  v54 = v24;
  v25 = (*(**(this + 2) + 48))(*(this + 2), v21, 0);
  v55 = [v25 mpsndarray];

  v26 = (*(**(this + 2) + 48))(*(this + 2), v22, 0);
  v27 = [v26 mpsndarray];

  if (v24)
  {
    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28 || v55 == 0;
  if (v29 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 176) != 1)
  {
LABEL_29:
    v53 = 0;
    if (*(this + 177) != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v30 = (*(**(this + 2) + 48))(*(this + 2), *(*(*(this + 21) + 72) + 88), 0);
  v31 = [v30 mpsndarray];

  if (!v31)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_29;
  }

  v53 = v31;
  if (*(this + 177) != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v33 = (*(**(this + 2) + 48))(*(this + 2), *(*(*(this + 21) + 72) + 120), 0);
  v34 = [v33 mpsndarray];

  if (v34)
  {
    goto LABEL_34;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_33:
  v34 = 0;
LABEL_34:
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
  v36 = ODSResultIndexAndLength;
  v37 = *(this + 15);
  v38 = *(v37 + 36);
  v39 = v37 - 16;
  if (v38)
  {
    NextResultAtOffset = v39;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v41 = (HIDWORD(v36) + v36);
  v42 = v41 - v36;
  if (v41 == v36)
  {
    v43 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v45);
      v43 = (*(**(this + 2) + 80))(*(this + 2), v46, *(a2 + 1), 0, 0, 1);

      ++v45;
      v44 = v43;
    }

    while (v42 != v45);
  }

  v47 = [v43 mpsndarray];
  v48 = *(this + 1);
  [v48 setBatchDimensions:mlir::pdl_interp::CheckOperandCountOp::getCount((this + 160))];
  [v48 setAllowNegativeIndices:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes((this + 160))];
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v49 addObject:v54];
  [v49 addObject:v27];
  [v49 addObject:v55];
  if (*(this + 176) == 1)
  {
    [v49 addObject:v53];
  }

  if (*(this + 177) == 1)
  {
    [v49 addObject:v34];
  }

  v50 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v48 encodeToMPSCommandEncoder:v50 commandBuffer:*(a2 + 1) sourceArrays:v49 destinationArray:v47];
}

uint64_t GPU::FusionOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 128) | 2) == 3)
  {
    v5 = *(a1 + 136);
    v11 = 0;
    v12 = 0;
    __p = 0;
    v6 = a3[1];
    if (v6 != *a3)
    {
      if (((v6 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    result = (*(*v5 + 24))(v5, a2, &__p, a4, a5);
    if (__p)
    {
      v11 = __p;
      v8 = result;
      operator delete(__p);
      return v8;
    }
  }

  else
  {
    v9 = MTLReportFailureTypeEnabled();
    result = 0;
    if (v9)
    {
      MTLReportFailure();
      return 0;
    }
  }

  return result;
}

void sub_1E06A1CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::FusionReturnOpHandler::~FusionReturnOpHandler(GPU::FusionReturnOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::QuantizedConv2DFusionOpHandler::kernelDAGOp(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a1[3];
  v7 = *(a1[21] + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = *(a1[22] + 72);
  v11 = *(v10 + 24);
  v12 = *(v10 + 56);
  mlir::func::ReturnOp::getODSOperandIndexAndLength(&v14, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v8, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v11, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v12, 0);
  result = MPSKernelDAG::quartaryCoreOp();
  *(a2 + 104) = a1[3];
  return result;
}

void GPU::QuantizedConv2DFusionOpHandler::~QuantizedConv2DFusionOpHandler(GPU::QuantizedConv2DFusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::QuantizedMatMulFusionOpHandler::kernelDAGOp(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = *(a1[21] + 72);
  v8 = *(v7 + 24);
  v22 = *(v7 + 56);
  v9 = *(*(mlir::Value::getDefiningOp(&v22) + 72) + 24);
  v22 = *(*(a1[21] + 72) + 88);
  v10 = *(*(mlir::Value::getDefiningOp(&v22) + 72) + 24);
  v22 = *(*(a1[21] + 72) + 120);
  v11 = *(*(mlir::Value::getDefiningOp(&v22) + 72) + 24);
  v12 = *(a1[22] + 72);
  v13 = *(v12 + 24);
  v22 = *(v12 + 56);
  v14 = *(*(mlir::Value::getDefiningOp(&v22) + 72) + 24);
  v22 = *(*(a1[22] + 72) + 88);
  v18 = *(*(mlir::Value::getDefiningOp(&v22) + 72) + 24);
  v22 = *(*(a1[22] + 72) + 120);
  v17 = *(*(mlir::Value::getDefiningOp(&v22) + 72) + 24);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated((a1 + 20)))
  {
    operator new();
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  if (mlir::mps::MatMulOp::getTransposeRhs((a1 + 20)))
  {
    operator new();
  }

  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v8, &v22);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v13, &__p);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v10, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v11, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v14, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v18, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v17, 0);
  v15 = MPSKernelDAG::octonaryCoreOp();
  *(a2 + 104) = a1[3];
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v15;
}

void sub_1E06A2344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    v24 = a22;
    if (!a22)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v24 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void GPU::QuantizedMatMulFusionOpHandler::~QuantizedMatMulFusionOpHandler(GPU::QuantizedMatMulFusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::QuantizedGatherNDFusionOpHandler::~QuantizedGatherNDFusionOpHandler(GPU::QuantizedGatherNDFusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void EmitViewerSPI::initializeOps(EmitViewerSPI *this)
{
  MEMORY[0x1EEE9AC00](this);
  v63 = *MEMORY[0x1E69E9840];
  v1[23] = 14;
  strcpy(v1, "anec.A11Legacy");
  v2 = 1;
  v3[23] = 8;
  strcpy(v3, "anec.A12");
  v4 = 2;
  v5[23] = 8;
  strcpy(v5, "anec.A13");
  v6 = 3;
  v7[23] = 8;
  strcpy(v7, "anec.A14");
  v8 = 4;
  v9[23] = 8;
  strcpy(v9, "anec.A15");
  v10 = 5;
  v11[23] = 8;
  strcpy(v11, "anec.A16");
  v12 = 6;
  v13[23] = 8;
  strcpy(v13, "anec.A17");
  v14 = 7;
  v15[23] = 8;
  strcpy(v15, "anec.A18");
  v16 = 8;
  v17[23] = 16;
  strcpy(v17, "anec.arg_min_max");
  v18 = 9;
  v19[23] = 17;
  strcpy(v19, "anec.average_pool");
  v20 = 10;
  v21[23] = 15;
  strcpy(v21, "anec.batch_norm");
  v22 = 11;
  v23[23] = 19;
  strcpy(v23, "anec.batch_to_space");
  v24 = 12;
  v25[23] = 14;
  strcpy(v25, "anec.broadcast");
  v26 = 13;
  v27[23] = 9;
  strcpy(v27, "anec.cast");
  v28 = 14;
  v29[23] = 9;
  strcpy(v29, "anec.ceil");
  v30 = 15;
  v31[23] = 21;
  strcpy(v31, "anec.channel_to_space");
  v32 = 16;
  v33[23] = 17;
  strcpy(v33, "anec.clamped_relu");
  v34 = 17;
  v35[23] = 11;
  strcpy(v35, "anec.concat");
  v36 = 18;
  v37[23] = 16;
  strcpy(v37, "anec.convolution");
  v38 = 19;
  v39[23] = 8;
  strcpy(v39, "anec.cos");
  v40 = 20;
  v41[23] = 16;
  strcpy(v41, "anec.crop_resize");
  v42 = 21;
  v43[23] = 12;
  strcpy(v43, "anec.dequant");
  v44 = 22;
  v45[23] = 18;
  strcpy(v45, "anec.deconvolution");
  v46 = 23;
  v47[23] = 12;
  strcpy(v47, "anec.degamma");
  v48 = 24;
  v49[23] = 10;
  strcpy(v49, "anec.dirac");
  v50 = 25;
  v51[23] = 8;
  strcpy(v51, "anec.abs");
  v52 = 26;
  v53[23] = 8;
  strcpy(v53, "anec.add");
  v54 = 27;
  v55[23] = 8;
  strcpy(v55, "anec.div");
  v56 = 28;
  v57[23] = 10;
  strcpy(v57, "anec.equal");
  v58 = 29;
  v59[23] = 15;
  strcpy(v59, "anec.equal_zero");
  v60 = 30;
  v61[23] = 17;
  strcpy(v61, "anec.greater_than");
  v62 = 31;
  operator new();
}

void sub_1E06A7F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  if (a14)
  {
    (*(*a14 + 8))(a14, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21, a2, a3, a4, a5, a6, a7, a8);
    mlir::PassManager::~PassManager(va);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E06A827CLL);
}

void sub_1E06A8024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::~function(&a28);
  std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::~function(&a32);
  mlir::PassManager::~PassManager(va);
  _Unwind_Resume(a1);
}

void sub_1E06A8054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  while (1)
  {
    v38 = *(v36 - 9);
    v36 -= 4;
    if (v38 < 0)
    {
      operator delete(*v36);
    }

    if (v36 == &a36)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1E06A8158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__deallocate_node(v39);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1E06A81C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  v9 = (a9 + 3651);
  v10 = -11872;
  v11 = (a9 + 3651);
  while (1)
  {
    v12 = *v11;
    v11 -= 32;
    if (v12 < 0)
    {
      operator delete(*(v9 - 23));
    }

    v9 = v11;
    v10 += 32;
    if (!v10)
    {
      JUMPOUT(0x1E06A821CLL);
    }
  }
}

void sub_1E06A81CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E06A81D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E06A8224(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1E06A8228);
  }

  _Unwind_Resume(a1);
}

void sub_1E06A8278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  mlir::PassManager::~PassManager(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

MPSGraphViewerNodePortSPI *EmitViewerSPI::emitNodeOutputPort(uint64_t a1, void *a2, MPSGraphViewerNodePortSPI *a3)
{
  v5 = a2;
  if (a3)
  {
    MPSDataType = getMPSDataType((*&a3->_dataType & 0xFFFFFFFFFFFFFFF8));
    v7 = getMPSShapeFromMLIR(*&a3->_dataType & 0xFFFFFFFFFFFFFFF8);
    a3 = [[MPSGraphViewerNodePortSPI alloc] initWithName:v5 dataType:MPSDataType shape:v7 valueRef:(*(*a1 + 32))(a1, a3)];
  }

  return a3;
}

MPSGraphViewerNodeSPI *EmitViewerSPI::emitNode(int8x8_t *this, MPSGraphViewerNodePortSPI *a2)
{
  __p = *(*&a2[1]._dataType + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&__p);
  v5 = strlen(AttrData);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v68 = v5;
  if (v5)
  {
    memmove(&__dst, AttrData, v5);
  }

  *(&__dst + v6) = 0;
  if ((v68 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v68 & 0x80u) == 0)
  {
    v8 = v68;
  }

  else
  {
    v8 = v67;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&__p, p_dst, v8);
  v10 = this[24];
  if (!*&v10)
  {
    goto LABEL_434;
  }

  v11 = v9;
  v12 = vcnt_s8(v10);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= *&v10)
    {
      v13 = v9 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v9;
  }

  v14 = *(*&this[23] + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_434:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if ((v68 & 0x80u) == 0)
  {
    v16 = v68;
  }

  else
  {
    v16 = v67;
  }

  if ((v68 & 0x80u) == 0)
  {
    v17 = &__dst;
  }

  else
  {
    v17 = __dst;
  }

  if (v12.u32[0] < 2uLL)
  {
    v18 = *&v10 - 1;
    while (1)
    {
      v23 = v15[1];
      if (v23 == v11)
      {
        v24 = *(v15 + 39);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = v15[3];
        }

        if (v24 == v16)
        {
          v26 = v25 >= 0 ? v15 + 2 : v15[2];
          if (!memcmp(v26, v17, v16))
          {
            goto LABEL_51;
          }
        }
      }

      else if ((v23 & v18) != v13)
      {
        goto LABEL_434;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_434;
      }
    }
  }

  while (1)
  {
    v19 = v15[1];
    if (v19 == v11)
    {
      break;
    }

    if (v19 >= *&v10)
    {
      v19 %= *&v10;
    }

    if (v19 != v13)
    {
      goto LABEL_434;
    }

LABEL_29:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_434;
    }
  }

  v20 = *(v15 + 39);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v15[3];
  }

  if (v20 != v16)
  {
    goto LABEL_29;
  }

  v22 = v21 >= 0 ? v15 + 2 : v15[2];
  if (memcmp(v22, v17, v16))
  {
    goto LABEL_29;
  }

LABEL_51:
  switch(*(v15 + 10))
  {
    case 1:
      EmitterViewerSPI::ANECA11LegacyOpHandler::ANECA11LegacyOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 2:
      EmitterViewerSPI::ANECA12OpHandler::ANECA12OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 3:
      EmitterViewerSPI::ANECA13OpHandler::ANECA13OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 4:
      EmitterViewerSPI::ANECA14OpHandler::ANECA14OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 5:
      EmitterViewerSPI::ANECA15OpHandler::ANECA15OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 6:
      EmitterViewerSPI::ANECA16OpHandler::ANECA16OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 7:
      EmitterViewerSPI::ANECA17OpHandler::ANECA17OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 8:
      EmitterViewerSPI::ANECA18OpHandler::ANECA18OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 9:
      EmitterViewerSPI::ANECArgMinMaxOpHandler::ANECArgMinMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA:
      EmitterViewerSPI::ANECAveragePoolOpHandler::ANECAveragePoolOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB:
      EmitterViewerSPI::ANECBatchNormOpHandler::ANECBatchNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC:
      EmitterViewerSPI::ANECBatchToSpaceOpHandler::ANECBatchToSpaceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD:
      EmitterViewerSPI::ANECBroadcastOpHandler::ANECBroadcastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE:
      EmitterViewerSPI::ANECCastOpHandler::ANECCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF:
      EmitterViewerSPI::ANECCeilOpHandler::ANECCeilOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10:
      EmitterViewerSPI::ANECChannelToSpaceOpHandler::ANECChannelToSpaceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11:
      EmitterViewerSPI::ANECClampedReluOpHandler::ANECClampedReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12:
      EmitterViewerSPI::ANECConcatOpHandler::ANECConcatOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13:
      EmitterViewerSPI::ANECConvolutionOpHandler::ANECConvolutionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14:
      EmitterViewerSPI::ANECCosOpHandler::ANECCosOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15:
      EmitterViewerSPI::ANECCropResizeOpHandler::ANECCropResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16:
      EmitterViewerSPI::ANECDeQuantOpHandler::ANECDeQuantOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x17:
      EmitterViewerSPI::ANECDeconvolutionOpHandler::ANECDeconvolutionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x18:
      EmitterViewerSPI::ANECDegammaOpHandler::ANECDegammaOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x19:
      EmitterViewerSPI::ANECDiracOpHandler::ANECDiracOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1A:
      EmitterViewerSPI::ANECElementwiseAbsOpHandler::ANECElementwiseAbsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1B:
      EmitterViewerSPI::ANECElementwiseAddOpHandler::ANECElementwiseAddOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1C:
      EmitterViewerSPI::ANECElementwiseDivOpHandler::ANECElementwiseDivOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1D:
      EmitterViewerSPI::ANECElementwiseEqualOpHandler::ANECElementwiseEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1E:
      EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler::ANECElementwiseEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1F:
      EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler::ANECElementwiseGreaterThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x20:
      EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler::ANECElementwiseGreaterThanEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x21:
      EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler::ANECElementwiseGreaterThanEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x22:
      EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler::ANECElementwiseGreaterThanZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x23:
      EmitterViewerSPI::ANECElementwiseLessThanOpHandler::ANECElementwiseLessThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x24:
      EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler::ANECElementwiseLessThanEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x25:
      EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler::ANECElementwiseLessThanEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x26:
      EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler::ANECElementwiseLessThanZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x27:
      EmitterViewerSPI::ANECElementwiseMaxOpHandler::ANECElementwiseMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x28:
      EmitterViewerSPI::ANECElementwiseMinOpHandler::ANECElementwiseMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x29:
      EmitterViewerSPI::ANECElementwiseMultOpHandler::ANECElementwiseMultOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2A:
      EmitterViewerSPI::ANECElementwiseNotEqualOpHandler::ANECElementwiseNotEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2B:
      EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler::ANECElementwiseNotEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2C:
      EmitterViewerSPI::ANECElementwisePowerOpHandler::ANECElementwisePowerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2D:
      EmitterViewerSPI::ANECElementwiseSquareOpHandler::ANECElementwiseSquareOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2E:
      EmitterViewerSPI::ANECElementwiseSubOpHandler::ANECElementwiseSubOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2F:
      EmitterViewerSPI::ANECEluOpHandler::ANECEluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x30:
      EmitterViewerSPI::ANECErfOpHandler::ANECErfOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x31:
      EmitterViewerSPI::ANECExp2OpHandler::ANECExp2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x32:
      EmitterViewerSPI::ANECFlattenOpHandler::ANECFlattenOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x33:
      EmitterViewerSPI::ANECFloorOpHandler::ANECFloorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x34:
      EmitterViewerSPI::ANECGOCOpHandler::ANECGOCOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x35:
      EmitterViewerSPI::ANECGatherNDOpHandler::ANECGatherNDOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x36:
      EmitterViewerSPI::ANECGeluOpHandler::ANECGeluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x37:
      EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler::ANECGlobalArgMinMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x38:
      EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler::ANECHighPrecisionSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x39:
      EmitterViewerSPI::ANECInputViewOpHandler::ANECInputViewOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3A:
      EmitterViewerSPI::ANECInstanceNormOpHandler::ANECInstanceNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3B:
      EmitterViewerSPI::ANECInvertOpHandler::ANECInvertOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3C:
      EmitterViewerSPI::ANECL2NormPoolOpHandler::ANECL2NormPoolOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3D:
      EmitterViewerSPI::ANECLayerNormOpHandler::ANECLayerNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3E:
      EmitterViewerSPI::ANECLeakyReluOpHandler::ANECLeakyReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3F:
      EmitterViewerSPI::ANECLinearOpHandler::ANECLinearOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x40:
      EmitterViewerSPI::ANECLog2OpHandler::ANECLog2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x41:
      EmitterViewerSPI::ANECMatMulOpHandler::ANECMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x42:
      EmitterViewerSPI::ANECMaxPoolOpHandler::ANECMaxPoolOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x43:
      EmitterViewerSPI::ANECNReluOpHandler::ANECNReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x44:
      EmitterViewerSPI::ANECPaddingOpHandler::ANECPaddingOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x45:
      EmitterViewerSPI::ANECPixelShuffleOpHandler::ANECPixelShuffleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x46:
      EmitterViewerSPI::ANECPixelUnshuffleOpHandler::ANECPixelUnshuffleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x47:
      EmitterViewerSPI::ANECQuantOpHandler::ANECQuantOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x48:
      EmitterViewerSPI::ANECReduceAvgOpHandler::ANECReduceAvgOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x49:
      EmitterViewerSPI::ANECReduceMaxOpHandler::ANECReduceMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4A:
      EmitterViewerSPI::ANECReduceMinOpHandler::ANECReduceMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4B:
      EmitterViewerSPI::ANECReduceSumOpHandler::ANECReduceSumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4C:
      EmitterViewerSPI::ANECRegionReturnOpHandler::ANECRegionReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4D:
      EmitterViewerSPI::ANECReluOpHandler::ANECReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4E:
      EmitterViewerSPI::ANECResampleOpHandler::ANECResampleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4F:
      EmitterViewerSPI::ANECReshapeOpHandler::ANECReshapeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x50:
      EmitterViewerSPI::ANECResizeOpHandler::ANECResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x51:
      EmitterViewerSPI::ANECRingBufferReaderOpHandler::ANECRingBufferReaderOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x52:
      EmitterViewerSPI::ANECRingBufferWriterOpHandler::ANECRingBufferWriterOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x53:
      EmitterViewerSPI::ANECRoundNearestOpHandler::ANECRoundNearestOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x54:
      EmitterViewerSPI::ANECRsqrtOpHandler::ANECRsqrtOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x55:
      EmitterViewerSPI::ANECScaledElementWiseOpHandler::ANECScaledElementWiseOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x56:
      EmitterViewerSPI::ANECSigmoidOpHandler::ANECSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x57:
      EmitterViewerSPI::ANECSignOpHandler::ANECSignOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x58:
      EmitterViewerSPI::ANECSinOpHandler::ANECSinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x59:
      EmitterViewerSPI::ANECSoftmaxOpHandler::ANECSoftmaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5A:
      EmitterViewerSPI::ANECSpaceToBatchOpHandler::ANECSpaceToBatchOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5B:
      EmitterViewerSPI::ANECSpaceToChannelOpHandler::ANECSpaceToChannelOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5C:
      EmitterViewerSPI::ANECSqrOpHandler::ANECSqrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5D:
      EmitterViewerSPI::ANECSqrtOpHandler::ANECSqrtOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5E:
      EmitterViewerSPI::ANECStateOpHandler::ANECStateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5F:
      EmitterViewerSPI::ANECSwishOpHandler::ANECSwishOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x60:
      EmitterViewerSPI::ANECTanhOpHandler::ANECTanhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x61:
      EmitterViewerSPI::ANECTensorBufferToTensorOpHandler::ANECTensorBufferToTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x62:
      EmitterViewerSPI::ANECTensorToTensorBufferOpHandler::ANECTensorToTensorBufferOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x63:
      EmitterViewerSPI::ANECTileOpHandler::ANECTileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x64:
      EmitterViewerSPI::ANECTransposeOpHandler::ANECTransposeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x65:
      EmitterViewerSPI::ANECTruncOpHandler::ANECTruncOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x66:
      EmitterViewerSPI::ANECUnflattenOpHandler::ANECUnflattenOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x67:
      EmitterViewerSPI::ANECUnrealizedConversionCastOpHandler::ANECUnrealizedConversionCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x68:
      EmitterViewerSPI::MPSACosOpHandler::MPSACosOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x69:
      EmitterViewerSPI::MPSACoshOpHandler::MPSACoshOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6A:
      EmitterViewerSPI::MPSASinOpHandler::MPSASinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6B:
      EmitterViewerSPI::MPSASinhOpHandler::MPSASinhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6C:
      EmitterViewerSPI::MPSATan2OpHandler::MPSATan2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6D:
      EmitterViewerSPI::MPSATanOpHandler::MPSATanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6E:
      EmitterViewerSPI::MPSATanhOpHandler::MPSATanhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6F:
      EmitterViewerSPI::MPSAbsoluteOpHandler::MPSAbsoluteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x70:
      EmitterViewerSPI::MPSAbsoluteSquareOpHandler::MPSAbsoluteSquareOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x71:
      EmitterViewerSPI::MPSAddOpHandler::MPSAddOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x72:
      EmitterViewerSPI::MPSAndOpHandler::MPSAndOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x73:
      EmitterViewerSPI::MPSAssignVariableOpHandler::MPSAssignVariableOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x74:
      EmitterViewerSPI::MPSBandPartOpHandler::MPSBandPartOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x75:
      EmitterViewerSPI::MPSBatchToSpaceOpHandler::MPSBatchToSpaceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x76:
      EmitterViewerSPI::MPSBiasAddGradOpHandler::MPSBiasAddGradOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x77:
      EmitterViewerSPI::MPSBiasAddOpHandler::MPSBiasAddOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x78:
      EmitterViewerSPI::MPSBitwiseAndOpHandler::MPSBitwiseAndOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x79:
      EmitterViewerSPI::MPSBitwiseLeftShiftOpHandler::MPSBitwiseLeftShiftOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7A:
      EmitterViewerSPI::MPSBitwiseNotOpHandler::MPSBitwiseNotOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7B:
      EmitterViewerSPI::MPSBitwiseOrOpHandler::MPSBitwiseOrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7C:
      EmitterViewerSPI::MPSBitwisePopcountOpHandler::MPSBitwisePopcountOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7D:
      EmitterViewerSPI::MPSBitwiseRightShiftOpHandler::MPSBitwiseRightShiftOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7E:
      EmitterViewerSPI::MPSBitwiseXorOpHandler::MPSBitwiseXorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7F:
      EmitterViewerSPI::MPSBroadcastGradientArgsOpHandler::MPSBroadcastGradientArgsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x80:
      EmitterViewerSPI::MPSBroadcastToOpHandler::MPSBroadcastToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x81:
      EmitterViewerSPI::MPSCallOpHandler::MPSCallOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x82:
      EmitterViewerSPI::MPSCastOpHandler::MPSCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x83:
      EmitterViewerSPI::MPSCeilOpHandler::MPSCeilOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x84:
      EmitterViewerSPI::MPSClampOpHandler::MPSClampOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x85:
      EmitterViewerSPI::MPSColToImOpHandler::MPSColToImOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x86:
      EmitterViewerSPI::MPSConcatOpHandler::MPSConcatOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x87:
      EmitterViewerSPI::MPSConjugateOpHandler::MPSConjugateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x88:
      EmitterViewerSPI::MPSConstantOpHandler::MPSConstantOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x89:
      EmitterViewerSPI::MPSConv2DDataGradientOpHandler::MPSConv2DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8A:
      EmitterViewerSPI::MPSConv2DOpHandler::MPSConv2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8B:
      EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler::MPSConv2DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8C:
      EmitterViewerSPI::MPSConv3DDataGradientOpHandler::MPSConv3DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8D:
      EmitterViewerSPI::MPSConv3DOpHandler::MPSConv3DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8E:
      EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler::MPSConv3DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8F:
      EmitterViewerSPI::MPSCosOpHandler::MPSCosOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x90:
      EmitterViewerSPI::MPSCoshOpHandler::MPSCoshOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x91:
      EmitterViewerSPI::MPSCostVolumeOpHandler::MPSCostVolumeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x92:
      EmitterViewerSPI::MPSCreateComplexOpHandler::MPSCreateComplexOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x93:
      EmitterViewerSPI::MPSCreateTextureTensorOpHandler::MPSCreateTextureTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x94:
      EmitterViewerSPI::MPSCropOpHandler::MPSCropOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x95:
      EmitterViewerSPI::MPSCropResizeOpHandler::MPSCropResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x96:
      EmitterViewerSPI::MPSCumulativeMaximumOpHandler::MPSCumulativeMaximumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x97:
      EmitterViewerSPI::MPSCumulativeMinimumOpHandler::MPSCumulativeMinimumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x98:
      EmitterViewerSPI::MPSCumulativeProductOpHandler::MPSCumulativeProductOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x99:
      EmitterViewerSPI::MPSCumulativeSumOpHandler::MPSCumulativeSumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9A:
      EmitterViewerSPI::MPSDegammaOpHandler::MPSDegammaOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9B:
      EmitterViewerSPI::MPSDepthToSpace2DOpHandler::MPSDepthToSpace2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9C:
      EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler::MPSDepthwiseConv2DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9D:
      EmitterViewerSPI::MPSDepthwiseConv2DOpHandler::MPSDepthwiseConv2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9E:
      EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler::MPSDepthwiseConv2DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9F:
      EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler::MPSDepthwiseConv3DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA0:
      EmitterViewerSPI::MPSDepthwiseConv3DOpHandler::MPSDepthwiseConv3DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA1:
      EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler::MPSDepthwiseConv3DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA2:
      EmitterViewerSPI::MPSDequantizeLUTOpHandler::MPSDequantizeLUTOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA3:
      EmitterViewerSPI::MPSDequantizeOpHandler::MPSDequantizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA4:
      EmitterViewerSPI::MPSDimensionSizeOpHandler::MPSDimensionSizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA5:
      EmitterViewerSPI::MPSDiracOpHandler::MPSDiracOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA6:
      EmitterViewerSPI::MPSDivideOpHandler::MPSDivideOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA7:
      EmitterViewerSPI::MPSDynamicShapeCastOpHandler::MPSDynamicShapeCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA8:
      EmitterViewerSPI::MPSEluOpHandler::MPSEluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA9:
      EmitterViewerSPI::MPSEqualToOpHandler::MPSEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAA:
      EmitterViewerSPI::MPSErfOpHandler::MPSErfOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAB:
      EmitterViewerSPI::MPSExpandDimsOpHandler::MPSExpandDimsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAC:
      EmitterViewerSPI::MPSExponentBase2OpHandler::MPSExponentBase2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAD:
      EmitterViewerSPI::MPSExponentBase10OpHandler::MPSExponentBase10OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAE:
      EmitterViewerSPI::MPSExponentOpHandler::MPSExponentOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAF:
      EmitterViewerSPI::MPSFastFourierTransformOpHandler::MPSFastFourierTransformOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB0:
      EmitterViewerSPI::MPSFlatten2DOpHandler::MPSFlatten2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB1:
      EmitterViewerSPI::MPSFloorDivideOpHandler::MPSFloorDivideOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB2:
      EmitterViewerSPI::MPSFloorOpHandler::MPSFloorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB3:
      EmitterViewerSPI::MPSGRUGradientOpHandler::MPSGRUGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB4:
      EmitterViewerSPI::MPSGRUOpHandler::MPSGRUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB5:
      EmitterViewerSPI::MPSGatherAlongAxisOpHandler::MPSGatherAlongAxisOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB6:
      EmitterViewerSPI::MPSGatherNDOpHandler::MPSGatherNDOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB7:
      EmitterViewerSPI::MPSGatherOpHandler::MPSGatherOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB8:
      EmitterViewerSPI::MPSGeluOpHandler::MPSGeluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB9:
      EmitterViewerSPI::MPSGetCoordOpHandler::MPSGetCoordOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBA:
      EmitterViewerSPI::MPSGreaterThanOpHandler::MPSGreaterThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBB:
      EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler::MPSGreaterThanOrEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBC:
      EmitterViewerSPI::MPSHammingDistanceOpHandler::MPSHammingDistanceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBD:
      EmitterViewerSPI::MPSHermiteanToRealFFTOpHandler::MPSHermiteanToRealFFTOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBE:
      EmitterViewerSPI::MPSIdentityOpHandler::MPSIdentityOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBF:
      EmitterViewerSPI::MPSImToColOpHandler::MPSImToColOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC0:
      EmitterViewerSPI::MPSImaginaryPartOpHandler::MPSImaginaryPartOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC1:
      EmitterViewerSPI::MPSInitRandomPhiloxStateOpHandler::MPSInitRandomPhiloxStateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC2:
      EmitterViewerSPI::MPSInstanceNormOpHandler::MPSInstanceNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC3:
      EmitterViewerSPI::MPSIsFiniteOpHandler::MPSIsFiniteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC4:
      EmitterViewerSPI::MPSIsInfiniteOpHandler::MPSIsInfiniteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC5:
      EmitterViewerSPI::MPSIsNaNOpHandler::MPSIsNaNOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC6:
      EmitterViewerSPI::MPSLPNormOpHandler::MPSLPNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC7:
      EmitterViewerSPI::MPSLSTMGradientOpHandler::MPSLSTMGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC8:
      EmitterViewerSPI::MPSLSTMOpHandler::MPSLSTMOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC9:
      EmitterViewerSPI::MPSLeakyReluOpHandler::MPSLeakyReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCA:
      EmitterViewerSPI::MPSLessThanOpHandler::MPSLessThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCB:
      EmitterViewerSPI::MPSLessThanOrEqualToOpHandler::MPSLessThanOrEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCC:
      EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler::MPSLocalConvolutionDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCD:
      EmitterViewerSPI::MPSLocalConvolutionOpHandler::MPSLocalConvolutionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCE:
      EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler::MPSLocalConvolutionWeightGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCF:
      EmitterViewerSPI::MPSLogarithmBase2OpHandler::MPSLogarithmBase2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD0:
      EmitterViewerSPI::MPSLogarithmBase10OpHandler::MPSLogarithmBase10OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD1:
      EmitterViewerSPI::MPSLogarithmOpHandler::MPSLogarithmOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD2:
      EmitterViewerSPI::MPSMatMulOpHandler::MPSMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD3:
      EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler::MPSMaterializeSparseTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD4:
      EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler::MPSMatrixDecompositionLUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD5:
      EmitterViewerSPI::MPSMatrixInverseOpHandler::MPSMatrixInverseOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD6:
      EmitterViewerSPI::MPSMatrixSolverLUOpHandler::MPSMatrixSolverLUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD7:
      EmitterViewerSPI::MPSMaximumOpHandler::MPSMaximumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD8:
      EmitterViewerSPI::MPSMinimumOpHandler::MPSMinimumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD9:
      EmitterViewerSPI::MPSModuloOpHandler::MPSModuloOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDA:
      EmitterViewerSPI::MPSMultiplyOpHandler::MPSMultiplyOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDB:
      EmitterViewerSPI::MPSNReluOpHandler::MPSNReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDC:
      EmitterViewerSPI::MPSNandOpHandler::MPSNandOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDD:
      EmitterViewerSPI::MPSNegativeOpHandler::MPSNegativeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDE:
      EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler::MPSNonMaximumSuppressionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDF:
      EmitterViewerSPI::MPSNonZeroOpHandler::MPSNonZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE0:
      EmitterViewerSPI::MPSNorOpHandler::MPSNorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE1:
      EmitterViewerSPI::MPSNormalizationOpHandler::MPSNormalizationOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE2:
      EmitterViewerSPI::MPSNotEqualToOpHandler::MPSNotEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE3:
      EmitterViewerSPI::MPSNotOpHandler::MPSNotOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE4:
      EmitterViewerSPI::MPSOneHotOpHandler::MPSOneHotOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE5:
      EmitterViewerSPI::MPSOrOpHandler::MPSOrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE6:
      EmitterViewerSPI::MPSPReluOpHandler::MPSPReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE7:
      EmitterViewerSPI::MPSPadGradientOpHandler::MPSPadGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE8:
      EmitterViewerSPI::MPSPadOpHandler::MPSPadOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE9:
      EmitterViewerSPI::MPSPermuteOpHandler::MPSPermuteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEA:
      EmitterViewerSPI::MPSPlaceholderOpHandler::MPSPlaceholderOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEB:
      EmitterViewerSPI::MPSPoolAvgGradientOpHandler::MPSPoolAvgGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEC:
      EmitterViewerSPI::MPSPoolAvgOpHandler::MPSPoolAvgOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xED:
      EmitterViewerSPI::MPSPoolL2NormGradientOpHandler::MPSPoolL2NormGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEE:
      EmitterViewerSPI::MPSPoolL2NormOpHandler::MPSPoolL2NormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEF:
      EmitterViewerSPI::MPSPoolMaxGradientOpHandler::MPSPoolMaxGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF0:
      EmitterViewerSPI::MPSPoolMaxOpHandler::MPSPoolMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF1:
      EmitterViewerSPI::MPSPowerOpHandler::MPSPowerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF2:
      EmitterViewerSPI::MPSPruningGradientOpHandler::MPSPruningGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF3:
      EmitterViewerSPI::MPSPruningOpHandler::MPSPruningOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF4:
      EmitterViewerSPI::MPSQuantizeOpHandler::MPSQuantizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF5:
      EmitterViewerSPI::MPSRandomNormalOpHandler::MPSRandomNormalOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF6:
      EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler::MPSRandomTruncatedNormalOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF7:
      EmitterViewerSPI::MPSRandomUniformOpHandler::MPSRandomUniformOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF8:
      EmitterViewerSPI::MPSRankOpHandler::MPSRankOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF9:
      EmitterViewerSPI::MPSReadDataFromFileOpHandler::MPSReadDataFromFileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFA:
      EmitterViewerSPI::MPSReadVariableOpHandler::MPSReadVariableOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFB:
      EmitterViewerSPI::MPSRealPartOpHandler::MPSRealPartOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFC:
      EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler::MPSRealToHermiteanFFTOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFD:
      EmitterViewerSPI::MPSReciprocalOpHandler::MPSReciprocalOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFE:
      EmitterViewerSPI::MPSReciprocalSquareRootOpHandler::MPSReciprocalSquareRootOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFF:
      EmitterViewerSPI::MPSReductionAndOpHandler::MPSReductionAndOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x100:
      EmitterViewerSPI::MPSReductionArgMaxOpHandler::MPSReductionArgMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x101:
      EmitterViewerSPI::MPSReductionArgMinOpHandler::MPSReductionArgMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x102:
      EmitterViewerSPI::MPSReductionLogSumExpOpHandler::MPSReductionLogSumExpOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x103:
      EmitterViewerSPI::MPSReductionMaxOpHandler::MPSReductionMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x104:
      EmitterViewerSPI::MPSReductionMeanOpHandler::MPSReductionMeanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x105:
      EmitterViewerSPI::MPSReductionMinOpHandler::MPSReductionMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x106:
      EmitterViewerSPI::MPSReductionOrOpHandler::MPSReductionOrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x107:
      EmitterViewerSPI::MPSReductionProdOpHandler::MPSReductionProdOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x108:
      EmitterViewerSPI::MPSReductionSumOpHandler::MPSReductionSumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x109:
      EmitterViewerSPI::MPSReductionVarianceOpHandler::MPSReductionVarianceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10A:
      EmitterViewerSPI::MPSReinterpretCastOpHandler::MPSReinterpretCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10B:
      EmitterViewerSPI::MPSRelu6OpHandler::MPSRelu6OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10C:
      EmitterViewerSPI::MPSReluGradOpHandler::MPSReluGradOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10D:
      EmitterViewerSPI::MPSReluOpHandler::MPSReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10E:
      EmitterViewerSPI::MPSReshapeOpHandler::MPSReshapeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10F:
      EmitterViewerSPI::MPSResizeGradientOpHandler::MPSResizeGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x110:
      EmitterViewerSPI::MPSResizeOpHandler::MPSResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x111:
      EmitterViewerSPI::MPSReverseOpHandler::MPSReverseOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x112:
      EmitterViewerSPI::MPSRintOpHandler::MPSRintOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x113:
      EmitterViewerSPI::MPSRoundOpHandler::MPSRoundOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x114:
      EmitterViewerSPI::MPSSampleGridDataGradientOpHandler::MPSSampleGridDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x115:
      EmitterViewerSPI::MPSSampleGridOpHandler::MPSSampleGridOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x116:
      EmitterViewerSPI::MPSScatterAlongAxisOpHandler::MPSScatterAlongAxisOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x117:
      EmitterViewerSPI::MPSScatterNDOpHandler::MPSScatterNDOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x118:
      EmitterViewerSPI::MPSScatterOpHandler::MPSScatterOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x119:
      EmitterViewerSPI::MPSSelectOpHandler::MPSSelectOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11A:
      EmitterViewerSPI::MPSShapeOpHandler::MPSShapeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11B:
      EmitterViewerSPI::MPSSigmoidGradientOpHandler::MPSSigmoidGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11C:
      EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler::MPSSigmoidGradientWithSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11D:
      EmitterViewerSPI::MPSSigmoidHardOpHandler::MPSSigmoidHardOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11E:
      EmitterViewerSPI::MPSSigmoidOpHandler::MPSSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11F:
      EmitterViewerSPI::MPSSignOpHandler::MPSSignOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x120:
      EmitterViewerSPI::MPSSignbitOpHandler::MPSSignbitOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x121:
      EmitterViewerSPI::MPSSinOpHandler::MPSSinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x122:
      EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler::MPSSingleGateRNNGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x123:
      EmitterViewerSPI::MPSSingleGateRNNOpHandler::MPSSingleGateRNNOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x124:
      EmitterViewerSPI::MPSSinhOpHandler::MPSSinhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x125:
      EmitterViewerSPI::MPSSizeOpHandler::MPSSizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x126:
      EmitterViewerSPI::MPSSliceOpHandler::MPSSliceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x127:
      EmitterViewerSPI::MPSSoftmaxOpHandler::MPSSoftmaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x128:
      EmitterViewerSPI::MPSSoftplusOpHandler::MPSSoftplusOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x129:
      EmitterViewerSPI::MPSSoftplusParametricOpHandler::MPSSoftplusParametricOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12A:
      EmitterViewerSPI::MPSSoftsignOpHandler::MPSSoftsignOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12B:
      EmitterViewerSPI::MPSSortOpHandler::MPSSortOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12C:
      EmitterViewerSPI::MPSSpaceToBatchOpHandler::MPSSpaceToBatchOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12D:
      EmitterViewerSPI::MPSSpaceToDepth2DOpHandler::MPSSpaceToDepth2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12E:
      EmitterViewerSPI::MPSSplitOpHandler::MPSSplitOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12F:
      EmitterViewerSPI::MPSSquareOpHandler::MPSSquareOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x130:
      EmitterViewerSPI::MPSSquareRootOpHandler::MPSSquareRootOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x131:
      EmitterViewerSPI::MPSSqueezeOpHandler::MPSSqueezeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x132:
      EmitterViewerSPI::MPSStencilOpHandler::MPSStencilOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x133:
      EmitterViewerSPI::MPSStridedSliceGradientOpHandler::MPSStridedSliceGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x134:
      EmitterViewerSPI::MPSStridedSliceOpHandler::MPSStridedSliceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x135:
      EmitterViewerSPI::MPSStridedSliceUpdateOpHandler::MPSStridedSliceUpdateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x136:
      EmitterViewerSPI::MPSSubtractOpHandler::MPSSubtractOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x137:
      EmitterViewerSPI::MPSSwishOpHandler::MPSSwishOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x138:
      EmitterViewerSPI::MPSTanOpHandler::MPSTanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x139:
      EmitterViewerSPI::MPSTanhOpHandler::MPSTanhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13A:
      EmitterViewerSPI::MPSTileGradientOpHandler::MPSTileGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13B:
      EmitterViewerSPI::MPSTileOpHandler::MPSTileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13C:
      EmitterViewerSPI::MPSTopKGradientOpHandler::MPSTopKGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13D:
      EmitterViewerSPI::MPSTopKOpHandler::MPSTopKOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13E:
      EmitterViewerSPI::MPSTransposeOpHandler::MPSTransposeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13F:
      EmitterViewerSPI::MPSTruncateOpHandler::MPSTruncateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x140:
      EmitterViewerSPI::MPSTypeConstraintOpHandler::MPSTypeConstraintOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x141:
      EmitterViewerSPI::MPSUnrealizedFoldOpHandler::MPSUnrealizedFoldOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x142:
      EmitterViewerSPI::MPSUpdateRandomStateOpHandler::MPSUpdateRandomStateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x143:
      EmitterViewerSPI::MPSVariableFromTensorOpHandler::MPSVariableFromTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x144:
      EmitterViewerSPI::MPSXnorOpHandler::MPSXnorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x145:
      EmitterViewerSPI::MPSXorOpHandler::MPSXorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x146:
      EmitterViewerSPI::ConditionOpHandler::ConditionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x147:
      EmitterViewerSPI::ForOpHandler::ForOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x148:
      EmitterViewerSPI::IfOpHandler::IfOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x149:
      EmitterViewerSPI::MPSExtractOpHandler::MPSExtractOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14A:
      EmitterViewerSPI::MPSFromElementsOpHandler::MPSFromElementsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14B:
      EmitterViewerSPI::MPSFuncOpHandler::MPSFuncOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14C:
      EmitterViewerSPI::MPSModuleOpHandler::MPSModuleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14D:
      EmitterViewerSPI::MPSReturnOpHandler::MPSReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14E:
      EmitterViewerSPI::WhileOpHandler::WhileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14F:
      EmitterViewerSPI::YieldOpHandler::YieldOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x150:
      EmitterViewerSPI::MPSXANEOpHandler::MPSXANEOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x151:
      EmitterViewerSPI::MPSXBufferToTensorOpHandler::MPSXBufferToTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x152:
      EmitterViewerSPI::MPSXCPUOpHandler::MPSXCPUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x153:
      EmitterViewerSPI::MPSXDeinterleaveOpHandler::MPSXDeinterleaveOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x154:
      EmitterViewerSPI::MPSXFPToIntClampedOpHandler::MPSXFPToIntClampedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x155:
      EmitterViewerSPI::MPSXFusionOpHandler::MPSXFusionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x156:
      EmitterViewerSPI::MPSXFusionReturnOpHandler::MPSXFusionReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x157:
      EmitterViewerSPI::MPSXGPUOpHandler::MPSXGPUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x158:
      EmitterViewerSPI::MPSXInterleaveOpHandler::MPSXInterleaveOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x159:
      EmitterViewerSPI::MPSXListPopBackOpHandler::MPSXListPopBackOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15A:
      EmitterViewerSPI::MPSXListPushBackOpHandler::MPSXListPushBackOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15B:
      EmitterViewerSPI::MPSXMakeListOpHandler::MPSXMakeListOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15C:
      EmitterViewerSPI::MPSXMemrefBackedOpHandler::MPSXMemrefBackedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15D:
      EmitterViewerSPI::MPSXQuantizedConv2DOpHandler::MPSXQuantizedConv2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15E:
      EmitterViewerSPI::MPSXQuantizedGatherOpHandler::MPSXQuantizedGatherOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15F:
      EmitterViewerSPI::MPSXQuantizedMatMulOpHandler::MPSXQuantizedMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x160:
      EmitterViewerSPI::MPSXRegionReturnOpHandler::MPSXRegionReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x161:
      EmitterViewerSPI::MPSXReturnStitchedOpHandler::MPSXReturnStitchedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x162:
      EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler::MPSXSparseDenseMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x163:
      EmitterViewerSPI::MPSXStitchedOpHandler::MPSXStitchedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x164:
      EmitterViewerSPI::MPSXTensorToBufferOpHandler::MPSXTensorToBufferOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x165:
      EmitterViewerSPI::MPSXUseMemrefOpHandler::MPSXUseMemrefOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x166:
      EmitterViewerSPI::MPSXVarHandleOpHandler::MPSXVarHandleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x167:
      EmitterViewerSPI::PlacementANEIOCastOpHandler::PlacementANEIOCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x168:
      EmitterViewerSPI::PlacementHostTypeCastOpHandler::PlacementHostTypeCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x169:
      EmitterViewerSPI::PlacementMemrefToTensorOpHandler::PlacementMemrefToTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16A:
      EmitterViewerSPI::PlacementRegionCallOpHandler::PlacementRegionCallOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16B:
      EmitterViewerSPI::PlacementReplacedOpsOpHandler::PlacementReplacedOpsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16C:
      EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler::PlacementReplacedOpsLiveOutsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16D:
      EmitterViewerSPI::PlacementStartTimerOpHandler::PlacementStartTimerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16E:
      EmitterViewerSPI::PlacementStopTimerOpHandler::PlacementStopTimerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16F:
      EmitterViewerSPI::PlacementTensorToMemrefOpHandler::PlacementTensorToMemrefOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x170:
      EmitterViewerSPI::MPSSPIRMSNormOpHandler::MPSSPIRMSNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x171:
      EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler::MPSSPIScaledDotProductAttentionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x172:
      EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler::MPSSPIStridedArrayViewOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x173:
      EmitterViewerSPI::ReturnOpHandler::ReturnOpHandler(&__p, this, a2);
LABEL_423:
      v27 = v73;

      break;
    default:
      if (MTLReportFailureTypeEnabled())
      {
        v31 = &__dst;
        if ((v68 & 0x80u) != 0)
        {
          v31 = __dst;
        }

        v63 = v31;
        MTLReportFailure();
      }

      v78[0] = *(*&a2[1]._dataType + 8);
      v32 = mlir::OpaqueAttr::getAttrData(v78);
      std::string::basic_string[abi:ne200100]<0>(&__p, v32);
      if (v72 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v65 = [MEMORY[0x1E696AEC0] stringWithCString:p_p encoding:{4, v63}];
      v64 = [MEMORY[0x1E695DF70] array];
      v34 = [MEMORY[0x1E695DF70] array];
      if ((BYTE6(a2[1].super.super.isa) & 0x80) != 0)
      {
        shape_high = HIDWORD(a2[1]._shape);
        if (shape_high)
        {
          v36 = 0;
          v37 = 24;
          do
          {
            v38 = *(a2[1]._valueRef + v37);
            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"in%d", v36];
            v40 = EmitViewerSPI::emitNodeInputPort(this, v39, v38);

            if (v40)
            {
              [v34 addObject:v40];
            }

            ++v36;
            v37 += 32;
          }

          while (shape_high != v36);
        }
      }

      v41 = [MEMORY[0x1E695DF70] array];
      valueRef_high = HIDWORD(a2->_valueRef);
      if (valueRef_high)
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 0];
        v44 = EmitViewerSPI::emitNodeOutputPort(this, v43, (a2 - 16));

        if (v44)
        {
          [v41 addObject:v44];
        }

        if (valueRef_high != 1)
        {
          v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 1];
          v46 = EmitViewerSPI::emitNodeOutputPort(this, v45, (a2 - 32));

          if (v46)
          {
            [v41 addObject:v46];
          }

          if (valueRef_high != 2)
          {
            v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 2];
            v48 = EmitViewerSPI::emitNodeOutputPort(this, v47, (a2 - 48));

            if (v48)
            {
              [v41 addObject:v48];
            }

            if (valueRef_high != 3)
            {
              v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 3];
              v50 = EmitViewerSPI::emitNodeOutputPort(this, v49, (a2 - 64));

              if (v50)
              {
                [v41 addObject:v50];
              }

              if (valueRef_high != 4)
              {
                v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 4];
                v52 = EmitViewerSPI::emitNodeOutputPort(this, v51, a2 - 2);

                if (v52)
                {
                  [v41 addObject:v52];
                }

                if (valueRef_high != 5)
                {
                  v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 5];
                  v54 = EmitViewerSPI::emitNodeOutputPort(this, v53, (a2 - 96));

                  if (v54)
                  {
                    [v41 addObject:v54];
                  }

                  if (valueRef_high != 6)
                  {
                    v59 = a2 - 3;
                    for (i = 6; i != valueRef_high; ++i)
                    {
                      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", i];
                      v62 = EmitViewerSPI::emitNodeOutputPort(this, v61, v59);

                      if (v62)
                      {
                        [v41 addObject:v62];
                      }

                      v59 = (v59 - 24);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v55 = [MPSGraphViewerNodeSPI alloc];
      v56 = [MEMORY[0x1E695DEC8] arrayWithArray:v34];
      v57 = [MEMORY[0x1E695DEC8] arrayWithArray:v41];
      v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v64];
      v27 = [(MPSGraphViewerNodeSPI *)v55 initWithType:v65 inputs:v56 outputs:v57 properties:v58 regions:MEMORY[0x1E695E0F0]];

      if (SHIBYTE(v72) < 0)
      {
        operator delete(__p);
      }

      break;
  }

  v78[0] = 0;
  v78[1] = 0;
  v79 = 0;
  v71 = 0;
  v75 = 0;
  v76 = 1;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  __p = &unk_1F5B3FB30;
  v77 = v78;
  llvm::raw_ostream::SetBufferAndMode(&__p, 0, 0, 0);
  shape = a2->_shape;
  mlir::Attribute::print(&shape, &__p, 0);
  if (v79 >= 0)
  {
    v28 = v78;
  }

  else
  {
    v28 = v78[0];
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
  llvm::raw_ostream::~raw_ostream(&__p);
  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[0]);
  }

  [(MPSGraphViewerNodeSPI *)v27 setLocation:v29];

  if (v68 < 0)
  {
    operator delete(__dst);
  }

  return v27;
}

void sub_1E06AB52C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E06AB080);
}

MPSGraphViewerNodePortSPI *EmitViewerSPI::emitNodeInputPort(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    MPSDataType = getMPSDataType((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
    v7 = getMPSShapeFromMLIR(*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = [MPSGraphViewerNodePortSPI alloc];
    v9 = std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>((a1 + 232), a3);
    if (v9)
    {
      v10 = v9[3];
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v13 = a3;
        MTLReportFailure();
      }

      v10 = -1;
    }

    v11 = [(MPSGraphViewerNodePortSPI *)v8 initWithName:v5 dataType:MPSDataType shape:v7 valueRef:v10, v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

MPSGraphViewerSPI *EmitViewerSPI::emitGraph(EmitViewerSPI *this)
{
  v2 = [MPSGraphViewerSPI alloc];
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:*(this + 22)];
  v4 = [(MPSGraphViewerSPI *)v2 initWithName:&stru_1F5B58250 nodes:v3];

  return v4;
}

void EmitViewerSPI::emitJSONDump(id *this, NSString *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(this + 8);
    v3 = WeakRetained[115];
  }

  v5 = objc_loadWeakRetained(this + 8);
  [v5[101] createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/model.mpsasteria", v3];
  v7 = [MPSGraphViewerSPI alloc];
  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:this[22]];
  v9 = [(MPSGraphViewerSPI *)v7 initWithName:&stru_1F5B58250 nodes:v8];

  v10 = MEMORY[0x1E696ACB0];
  v11 = [(MPSGraphViewerSPI *)v9 jsonDictionary];
  v21 = 0;
  v12 = [v10 dataWithJSONObject:v11 options:1 error:&v21];
  v13 = v21;

  if (v12)
  {
    v20 = v13;
    v14 = [v12 writeToFile:v6 options:1 error:&v20];
    v15 = v20;

    if ((v14 & 1) == 0)
    {
      v16 = v6;
      if (!v15)
      {
        printf("EmitViewerSPI : unable to write model to %s", [v6 UTF8String]);
        v13 = 0;
        goto LABEL_12;
      }

      v17 = [v6 UTF8String];
      v18 = [v15 description];
      printf("EmitViewerSPI : unable to write model to %s: %s\n", v17, [v18 UTF8String]);
    }

    v13 = v15;
  }

  else if (v13)
  {
    v19 = [v13 description];
    printf("EmitViewerSPI : unable to serialize model: %s\n", [v19 UTF8String]);
  }

  else
  {
    printf("EmitViewerSPI : unable to serialize model");
  }

LABEL_12:
}

void sub_1E06AB9F8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

MPSGraphViewerNodePortSPI *EmitViewerSPI::emitNodeOutputPort(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    MPSDataType = getMPSDataType(a2);
    v5 = getMPSShapeFromMLIR(a2);
    v6 = [[MPSGraphViewerNodePortSPI alloc] initWithName:v3 dataType:MPSDataType shape:v5 valueRef:-1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

MPSGraphViewerNodePropertyStringSPI *EmitViewerSPI::emitStringProperty(void *a1, const void *a2, size_t a3)
{
  v5 = a1;
  v6 = MEMORY[0x1E696AEC0];
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = a3;
    if (a3)
    {
      memmove(__dst, a2, a3);
    }

    *(__dst + a3) = 0;
    if (v12 >= 0)
    {
      v7 = __dst;
    }

    else
    {
      v7 = __dst[0];
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v7 = __dst;
    v12 = 0;
  }

  v8 = [v6 stringWithCString:v7 encoding:4];
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }

  v9 = [[MPSGraphViewerNodePropertyStringSPI alloc] initWithName:v5 value:v8];

  return v9;
}

void sub_1E06ABCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

MPSGraphViewerNodePropertyDataSPI *EmitViewerSPI::emitElementsAttrProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a2;
  v18[1] = a3;
  v5 = a1;
  mlir::mps::CPUNDArray::CPUNDArray(v17, a2, a3);
  NumElements = mlir::mps::CPUNDArray::getNumElements(v17);
  Type = mlir::ElementsAttr::getType(v18);
  MPSDataType = getMPSDataType(Type);
  v9 = mlir::ElementsAttr::getType(v18);
  v10 = getMPSShapeFromMLIR(v9);
  v11 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:v5 dataType:MPSDataType shape:v10];
  if (v11)
  {
    if (!mlir::ElementsAttr::isSplat(v18))
    {
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v17[5] length:(NumElements * MPSDataType + 7) >> 3];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setValue:v13];
      goto LABEL_6;
    }

    if (mlir::mps::CPUNDArray::isComplexType(v17))
    {
      LODWORD(SplatIntegerValue) = mlir::mps::CPUNDArray::getSplatComplexValue(v17).u32[0];
      HIDWORD(SplatIntegerValue) = v12;
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&SplatIntegerValue length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setSplatValue:v13];
LABEL_6:

      v14 = v11;
      goto LABEL_14;
    }

    if (mlir::mps::CPUNDArray::isFloatType(v17))
    {
      LODWORD(SplatIntegerValue) = mlir::mps::CPUNDArray::getSplatFloatValue(v17);
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&SplatIntegerValue length:4];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setSplatValue:v13];
      goto LABEL_6;
    }

    if (mlir::mps::CPUNDArray::isIntegerType(v17))
    {
      SplatIntegerValue = mlir::mps::CPUNDArray::getSplatIntegerValue(v17);
      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:&SplatIntegerValue length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v11 setSplatValue:v13];
      goto LABEL_6;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v14 = 0;
LABEL_14:

  mlir::mps::CPUNDArray::~CPUNDArray(v17);

  return v14;
}

void sub_1E06ABEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06ABF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06ABFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E06ABFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06ABFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  mlir::mps::CPUNDArray::~CPUNDArray(va);
  _Unwind_Resume(a1);
}

void sub_1E06AC010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void sub_1E06AC028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  mlir::mps::CPUNDArray::~CPUNDArray(va);

  _Unwind_Resume(a1);
}

void EmitViewerSPI::~EmitViewerSPI(EmitViewerSPI *this)
{
  EmitViewerSPI::~EmitViewerSPI(this);

  JUMPOUT(0x1E12E5B90);
}

{
  *this = &unk_1F5B4AF60;
  v2 = *(this + 31);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 29);
  *(this + 29) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    do
    {
      v7 = *v5;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v7;
    }

    while (v7);
  }

  v6 = *(this + 23);
  *(this + 23) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  EmitBase::~EmitBase(this);
}

uint64_t EmitViewerSPI::getNewTensorNameForValue(void *a1, unint64_t a2)
{
  v2 = a1[28];
  a1[28] = v2 + 1;
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[30];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(a1[29] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (v10[2] == a2)
        {
          goto LABEL_23;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_22;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

LABEL_23:
  v10[3] = v2;
  return v2;
}

EmitterViewerSPI::ANECA11LegacyOpHandler *EmitterViewerSPI::ANECA11LegacyOpHandler::ANECA11LegacyOpHandler(EmitterViewerSPI::ANECA11LegacyOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B468F0;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06ACA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v11 == v5)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

EmitterViewerSPI::ANECA12OpHandler *EmitterViewerSPI::ANECA12OpHandler::ANECA12OpHandler(EmitterViewerSPI::ANECA12OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46920;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06AD1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA13OpHandler *EmitterViewerSPI::ANECA13OpHandler::ANECA13OpHandler(EmitterViewerSPI::ANECA13OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46950;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06AD7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA14OpHandler *EmitterViewerSPI::ANECA14OpHandler::ANECA14OpHandler(EmitterViewerSPI::ANECA14OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46980;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06ADE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA15OpHandler *EmitterViewerSPI::ANECA15OpHandler::ANECA15OpHandler(EmitterViewerSPI::ANECA15OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B469B0;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06AE47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA16OpHandler *EmitterViewerSPI::ANECA16OpHandler::ANECA16OpHandler(EmitterViewerSPI::ANECA16OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B469E0;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06AEAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA17OpHandler *EmitterViewerSPI::ANECA17OpHandler::ANECA17OpHandler(EmitterViewerSPI::ANECA17OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46A10;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06AF104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECA18OpHandler *EmitterViewerSPI::ANECA18OpHandler::ANECA18OpHandler(EmitterViewerSPI::ANECA18OpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46A40;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  FunctionType = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v51 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v51 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::anec::A11Legacy::getSymName(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v14);
  if (v15)
  {
    [v48 addObject:v15];
  }

  v46 = this;
  v47 = v10;
  v16 = 0;
  FunctionType = mlir::placement::ReplacedOps::getFunctionType(&v52);
  while (v16 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v17 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v16);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v16];
    v19 = EmitViewerSPI::emitNodeOutputPort(v18, v17);

    if (v19)
    {
      [v12 addObject:v19];
    }

    ++v16;
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10));
  while (*v21 != v21)
  {
    v22 = v21[1];
    v23 = v22 ? v22 - 8 : 0;
    if (v20 >= ((*(v23 + 56) - *(v23 + 48)) >> 3))
    {
      break;
    }

    v24 = v21[1];
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 48);
    v27 = *(v26 + 8 * v20);
    if (v27)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v26 + 8 * v20)))
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v11 addObject:v29];
      }
    }

    ++v20;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v21[1]; i != v21; i = i[1])
  {
    v32 = i - 1;
    if (!i)
    {
      v32 = 0;
    }

    v33 = v32 + 4;
    for (j = v32[5]; j != v33; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v36 = EmitViewerSPI::emitNode(a2, v35);
      if (v36)
      {
        [v30 addObject:v36];
      }
    }
  }

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"anec.region_return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E06AF748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECArgMinMaxOpHandler *EmitterViewerSPI::ANECArgMinMaxOpHandler::ANECArgMinMaxOpHandler(EmitterViewerSPI::ANECArgMinMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46A70;
  v5 = *(*(a3 + 6) + 8);
  v50 = a3;
  v51 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v51);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v49 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v49 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v47 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v50 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v50 + 9))
  {
    v13 = v50 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Axes = mlir::anec::ArgMinMax::getAxes(&v50);
  v18 = Axes;
  if (Axes)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"axes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Mode = mlir::anec::ArgMinMax::getMode(&v50);
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Min" value:0];
  [v22 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Max" value:1];
  [v22 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"mode" type:@"ANECArgMinMaxMode" cases:v22 value:Mode];
  if (v25)
  {
    [v16 addObject:v25];
  }

  KernelSize = mlir::anec::ArgMinMax::getKernelSize(&v50);
  v27 = KernelSize;
  if (KernelSize)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSize + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_size", v27, v28);
  if (v29)
  {
    [v16 addObject:v29];
  }

  StrideValues = mlir::anec::ArgMinMax::getStrideValues(&v50);
  v31 = StrideValues;
  if (StrideValues)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*StrideValues + 8);
  }

  else
  {
    v32 = 0;
  }

  v33 = EmitViewerSPI::emitElementsAttrProperty(@"stride_values", v31, v32);
  if (v33)
  {
    [v16 addObject:v33];
  }

  PadValues = mlir::anec::ArgMinMax::getPadValues(&v50);
  v35 = PadValues;
  if (PadValues)
  {
    v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*PadValues + 8);
  }

  else
  {
    v36 = 0;
  }

  v37 = EmitViewerSPI::emitElementsAttrProperty(@"pad_values", v35, v36);
  if (v37)
  {
    [v16 addObject:v37];
  }

  v38 = [MEMORY[0x1E695DF70] array];
  v39 = [MPSGraphViewerNodeSPI alloc];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v38];
  v44 = [(MPSGraphViewerNodeSPI *)v39 initWithType:v47 inputs:v40 outputs:v41 properties:v42 regions:v43];
  v45 = *(this + 3);
  *(this + 3) = v44;

  if (v49 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06AFD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECAveragePoolOpHandler *EmitterViewerSPI::ANECAveragePoolOpHandler::ANECAveragePoolOpHandler(EmitterViewerSPI::ANECAveragePoolOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46AA0;
  v5 = *(*(a3 + 6) + 8);
  v43 = a3;
  v44 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v44);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v42 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v42 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v40 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v43 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v43 + 9))
  {
    v13 = v43 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Stride = mlir::anec::AveragePool::getStride(&v43);
  v18 = Stride;
  if (Stride)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Padding = mlir::anec::AveragePool::getPadding(&v43);
  v22 = Padding;
  if (Padding)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Dilation = mlir::anec::Convolution::getDilation(&v43);
  v26 = Dilation;
  if (Dilation)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Dilation + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"ksize", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  LOBYTE(v44) = mlir::anec::AveragePool::getIncPad(&v43);
  v29 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"inc_pad" dataType:2147483656 shape:&unk_1F5B75E00];
  if (v29)
  {
    v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&v44 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v29 setValue:v30];

    [v16 addObject:v29];
  }

  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [MPSGraphViewerNodeSPI alloc];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v37 = [(MPSGraphViewerNodeSPI *)v32 initWithType:v40 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  if (v42 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B02F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECBatchNormOpHandler *EmitterViewerSPI::ANECBatchNormOpHandler::ANECBatchNormOpHandler(EmitterViewerSPI::ANECBatchNormOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46AD0;
  v5 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v38);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v36 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"mean", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"variance", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"gamma", *(*(v37 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"beta", *(*(v37 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v17 = v37 - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x1E695DF70] array];
  mlir::anec::Rsqrt::getEpsilon(&v37, &v38);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"epsilon" dataType:268435488 shape:&unk_1F5B75E18];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  v23 = v39[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v34 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B088C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECBatchToSpaceOpHandler *EmitterViewerSPI::ANECBatchToSpaceOpHandler::ANECBatchToSpaceOpHandler(EmitterViewerSPI::ANECBatchToSpaceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B00;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B0CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECBroadcastOpHandler *EmitterViewerSPI::ANECBroadcastOpHandler::ANECBroadcastOpHandler(EmitterViewerSPI::ANECBroadcastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B30;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B10A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECCastOpHandler *EmitterViewerSPI::ANECCastOpHandler::ANECCastOpHandler(EmitterViewerSPI::ANECCastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B60;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B1444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECCeilOpHandler *EmitterViewerSPI::ANECCeilOpHandler::ANECCeilOpHandler(EmitterViewerSPI::ANECCeilOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46B90;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B17E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECChannelToSpaceOpHandler *EmitterViewerSPI::ANECChannelToSpaceOpHandler::ANECChannelToSpaceOpHandler(EmitterViewerSPI::ANECChannelToSpaceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46BC0;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v31 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v12)
  {
    [v11 addObject:{v12, v11}];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v14 = v34 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Axes = mlir::anec::Softmax::getAxes(&v34);
  v19 = Axes;
  if (Axes)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Axes + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"factors", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B1BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECClampedReluOpHandler *EmitterViewerSPI::ANECClampedReluOpHandler::ANECClampedReluOpHandler(EmitterViewerSPI::ANECClampedReluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v39[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46BF0;
  v35 = a3;
  v38 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v38);
  v6 = strlen(AttrData);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v35 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v35 + 9))
  {
    v12 = v35 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v11 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  mlir::anec::InstanceNorm::getEpsilon(&v35, &v38);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"min_value" dataType:268435488 shape:&unk_1F5B75E30];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  mlir::anec::DeQuant::getScale(&v35, &v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"max_value" dataType:268435488 shape:&unk_1F5B75E48];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v36 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  v20 = v37[0];
  v22 = llvm::APFloatBase::PPCDoubleDouble(v21);
  if (v22 == v20)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v37);
  }

  if (v22 == v39[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v39);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v39);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v34 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B20F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a17);

  llvm::APFloat::~APFloat(&a21);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECConcatOpHandler *EmitterViewerSPI::ANECConcatOpHandler::ANECConcatOpHandler(EmitterViewerSPI::ANECConcatOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46C20;
  v5 = *(*(a3 + 6) + 8);
  v45 = a3;
  Axis = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&Axis);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v44 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v44 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v41 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v45, 0);
  if ((*(v45 + 46) & 0x80) != 0)
  {
    v12 = *(v45 + 9);
    v13 = ODSOperandIndexAndLength;
    v14 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v15 = v14 - ODSOperandIndexAndLength;
    if (v14 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    v13 = ODSOperandIndexAndLength;
    v34 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v15 = v34 - ODSOperandIndexAndLength;
    if (v34 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v35 = 0;
  v36 = v12 + 32 * v13;
  v37 = 1;
  do
  {
    v38 = *(v36 + 32 * v35 + 24);
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs%d", v37 - 1];
    v40 = EmitViewerSPI::emitNodeInputPort(a2, v39, v38);

    if (v40)
    {
      [v10 addObject:v40];
    }

    v35 = v37++;
  }

  while (v15 > v35);
LABEL_12:
  v16 = [MEMORY[0x1E695DF70] array];
  if (*(v45 + 9))
  {
    v17 = v45 - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x1E695DF70] array];
  Axis = mlir::anec::Concat::getAxis(&v45);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:64 shape:&unk_1F5B75E60];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&Axis length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v20 addObject:v21];
  }

  SubtractMax = mlir::anec::Softmax::getSubtractMax(&v45);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:2147483656 shape:&unk_1F5B75E78];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&SubtractMax length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v20 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v41 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B2668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECConvolutionOpHandler *EmitterViewerSPI::ANECConvolutionOpHandler::ANECConvolutionOpHandler(EmitterViewerSPI::ANECConvolutionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46C50;
  v5 = *(*(a3 + 6) + 8);
  v70 = a3;
  Groups = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&Groups);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v69 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v69 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v65 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v66 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v70 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"filter", *(*(v70 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v70 + 9))
  {
    v14 = v70 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Stride = mlir::anec::Convolution::getStride(&v70);
  v19 = Stride;
  if (Stride)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Dilation = mlir::anec::Convolution::getDilation(&v70);
  v23 = Dilation;
  if (Dilation)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Dilation + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  Padding = mlir::anec::Convolution::getPadding(&v70);
  v27 = Padding;
  if (Padding)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingMode = mlir::anec::Convolution::getPaddingMode(&v70);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Zero" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Negative" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Replication" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Positive" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Symmetric" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Reflective" value:5];
  [v31 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Background" value:6];
  [v31 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DontCare" value:7];
  [v31 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"None" value:8];
  [v31 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"ANECPaddingMode" cases:v31 value:PaddingMode];
  if (v41)
  {
    [v17 addObject:v41];
  }

  Groups = mlir::anec::Convolution::getGroups(&v70);
  v42 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B75E90];
  if (v42)
  {
    v43 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v42 setValue:v43];

    [v17 addObject:v42];
  }

  IncPad = mlir::anec::AveragePool::getIncPad(&v70);
  v44 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"channel_wise" dataType:2147483656 shape:&unk_1F5B75EA8];
  if (v44)
  {
    v45 = [MEMORY[0x1E695DEF0] dataWithBytes:&IncPad length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v17 addObject:v44];
  }

  KernelScale = mlir::anec::Convolution::getKernelScale(&v70);
  if (v47)
  {
    v48 = KernelScale;
    if (KernelScale)
    {
      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScale + 8);
    }

    else
    {
      v49 = 0;
    }

    v50 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_scale", v48, v49);
    if (v50)
    {
      [v17 addObject:v50];
    }
  }

  KernelZeroPoint = mlir::anec::Convolution::getKernelZeroPoint(&v70);
  if (v52)
  {
    v53 = KernelZeroPoint;
    if (KernelZeroPoint)
    {
      v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPoint + 8);
    }

    else
    {
      v54 = 0;
    }

    v55 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_zero_point", v53, v54);
    if (v55)
    {
      [v17 addObject:v55];
    }
  }

  mlir::anec::Convolution::getKernelPalettized_LUT(&v70);
  mlir::anec::Convolution::getKernelMutablePalettized_LUT(&v70);

  v56 = [MEMORY[0x1E695DF70] array];
  v57 = [MPSGraphViewerNodeSPI alloc];
  v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v59 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v61 = [MEMORY[0x1E695DEC8] arrayWithArray:v56];
  v62 = [(MPSGraphViewerNodeSPI *)v57 initWithType:v65 inputs:v58 outputs:v59 properties:v60 regions:v61];
  v63 = *(this + 3);
  *(this + 3) = v62;

  if (v69 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B2F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

EmitterViewerSPI::ANECCosOpHandler *EmitterViewerSPI::ANECCosOpHandler::ANECCosOpHandler(EmitterViewerSPI::ANECCosOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46C80;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B3410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECCropResizeOpHandler *EmitterViewerSPI::ANECCropResizeOpHandler::ANECCropResizeOpHandler(EmitterViewerSPI::ANECCropResizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v65[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46CB0;
  v5 = *(*(a3 + 6) + 8);
  v63 = a3;
  v64 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v64);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v62 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v62 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v58 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v60 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v63 + 9) + 24));
  if (v10)
  {
    [v60 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"index", *(*(v63 + 9) + 56));
  if (v11)
  {
    [v60 addObject:v11];
  }

  v59 = [MEMORY[0x1E695DF70] array];
  if (*(v63 + 9))
  {
    v12 = v63 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v59 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  OutputDims = mlir::anec::CropResize::getOutputDims(&v63);
  v17 = OutputDims;
  if (OutputDims)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*OutputDims + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = EmitViewerSPI::emitElementsAttrProperty(@"output_dims", v17, v18);
  v57 = v19;
  if (v19)
  {
    [v15 addObject:v19];
  }

  CropDims = mlir::anec::CropResize::getCropDims(&v63);
  v21 = CropDims;
  if (CropDims)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*CropDims + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = EmitViewerSPI::emitElementsAttrProperty(@"crop_dims", v21, v22);
  if (v23)
  {
    [v15 addObject:v23];
  }

  mlir::anec::CropResize::getBoxCoordinateMode(&v63);
  CoordinateMode = mlir::anec::CropResize::getCoordinateMode(&v63);
  v25 = CoordinateMode;
  if (CoordinateMode)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*CoordinateMode + 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(@"coordinate_mode", v25, v26);
  if (v27)
  {
    [v15 addObject:v27];
  }

  NormalizedRange = mlir::anec::CropResize::getNormalizedRange(&v63);
  v29 = NormalizedRange;
  if (NormalizedRange)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*NormalizedRange + 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = EmitViewerSPI::emitElementsAttrProperty(@"normalized_range", v29, v30);
  if (v31)
  {
    [v15 addObject:v31];
  }

  SamplingMode = mlir::anec::CropResize::getSamplingMode(&v63);
  v33 = SamplingMode;
  if (SamplingMode)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SamplingMode + 8);
  }

  else
  {
    v34 = 0;
  }

  v35 = EmitViewerSPI::emitElementsAttrProperty(@"sampling_mode", v33, v34);
  if (v35)
  {
    [v15 addObject:v35];
  }

  SamplingMethod = mlir::anec::CropResize::getSamplingMethod(&v63);
  v37 = SamplingMethod;
  if (SamplingMethod)
  {
    v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SamplingMethod + 8);
  }

  else
  {
    v38 = 0;
  }

  v39 = EmitViewerSPI::emitElementsAttrProperty(@"sampling_method", v37, v38);
  if (v39)
  {
    [v15 addObject:v39];
  }

  PaddingModes = mlir::anec::CropResize::getPaddingModes(&v63);
  v41 = PaddingModes;
  if (PaddingModes)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*PaddingModes + 8);
  }

  else
  {
    v42 = 0;
  }

  v43 = EmitViewerSPI::emitElementsAttrProperty(@"padding_modes", v41, v42);
  if (v43)
  {
    [v15 addObject:v43];
  }

  mlir::anec::CropResize::getBackgroundValue(&v63, &v64);
  v44 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"background_value" dataType:268435488 shape:&unk_1F5B75EC0];
  if (v44)
  {
    v45 = [MEMORY[0x1E695DEF0] dataWithBytes:&v64 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v15 addObject:v44];
  }

  v46 = v65[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v47) == v46)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v65);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v65);
  }

  v48 = [MEMORY[0x1E695DF70] array];
  v49 = [MPSGraphViewerNodeSPI alloc];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v60];
  v51 = [MEMORY[0x1E695DEC8] arrayWithArray:v59];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v53 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v54 = [(MPSGraphViewerNodeSPI *)v49 initWithType:v58 inputs:v50 outputs:v51 properties:v52 regions:v53];
  v55 = *(this + 3);
  *(this + 3) = v54;

  if (v62 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B3B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  llvm::APFloat::~APFloat(&a21);

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDeQuantOpHandler *EmitterViewerSPI::ANECDeQuantOpHandler::ANECDeQuantOpHandler(EmitterViewerSPI::ANECDeQuantOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v38[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46CE0;
  v5 = *(*(a3 + 6) + 8);
  v36 = a3;
  v37 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v37);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v35 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v35 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v36 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v13 = v36 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  mlir::anec::DeQuant::getScale(&v36, &v37);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"scale" dataType:268435488 shape:&unk_1F5B75ED8];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  ZeroPoint = mlir::anec::DeQuant::getZeroPoint(&v36);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"zero_point" dataType:536870944 shape:&unk_1F5B75EF0];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&ZeroPoint length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v16 addObject:v19];
  }

  v21 = v38[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v22) == v21)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v38);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v32 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B4108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  llvm::APFloat::~APFloat(&a19);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDeconvolutionOpHandler *EmitterViewerSPI::ANECDeconvolutionOpHandler::ANECDeconvolutionOpHandler(EmitterViewerSPI::ANECDeconvolutionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46D10;
  v5 = *(*(a3 + 6) + 8);
  v70 = a3;
  Groups = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&Groups);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v69 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v69 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v65 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v66 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v70 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"filter", *(*(v70 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v70 + 9))
  {
    v14 = v70 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Stride = mlir::anec::Convolution::getStride(&v70);
  v19 = Stride;
  if (Stride)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Stride + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"stride", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  Dilation = mlir::anec::Convolution::getDilation(&v70);
  v23 = Dilation;
  if (Dilation)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Dilation + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  Padding = mlir::anec::Convolution::getPadding(&v70);
  v27 = Padding;
  if (Padding)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Padding + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingMode = mlir::anec::Convolution::getPaddingMode(&v70);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Zero" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Negative" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Replication" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Positive" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Symmetric" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Reflective" value:5];
  [v31 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"Background" value:6];
  [v31 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DontCare" value:7];
  [v31 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"None" value:8];
  [v31 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_mode" type:@"ANECPaddingMode" cases:v31 value:PaddingMode];
  if (v41)
  {
    [v17 addObject:v41];
  }

  Groups = mlir::anec::Convolution::getGroups(&v70);
  v42 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B75F08];
  if (v42)
  {
    v43 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v42 setValue:v43];

    [v17 addObject:v42];
  }

  IncPad = mlir::anec::AveragePool::getIncPad(&v70);
  v44 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"channel_wise" dataType:2147483656 shape:&unk_1F5B75F20];
  if (v44)
  {
    v45 = [MEMORY[0x1E695DEF0] dataWithBytes:&IncPad length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v17 addObject:v44];
  }

  KernelScale = mlir::anec::Convolution::getKernelScale(&v70);
  if (v47)
  {
    v48 = KernelScale;
    if (KernelScale)
    {
      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScale + 8);
    }

    else
    {
      v49 = 0;
    }

    v50 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_scale", v48, v49);
    if (v50)
    {
      [v17 addObject:v50];
    }
  }

  KernelZeroPoint = mlir::anec::Convolution::getKernelZeroPoint(&v70);
  if (v52)
  {
    v53 = KernelZeroPoint;
    if (KernelZeroPoint)
    {
      v54 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPoint + 8);
    }

    else
    {
      v54 = 0;
    }

    v55 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_zero_point", v53, v54);
    if (v55)
    {
      [v17 addObject:v55];
    }
  }

  mlir::anec::Convolution::getKernelPalettized_LUT(&v70);
  mlir::anec::Convolution::getKernelMutablePalettized_LUT(&v70);

  v56 = [MEMORY[0x1E695DF70] array];
  v57 = [MPSGraphViewerNodeSPI alloc];
  v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v59 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v61 = [MEMORY[0x1E695DEC8] arrayWithArray:v56];
  v62 = [(MPSGraphViewerNodeSPI *)v57 initWithType:v65 inputs:v58 outputs:v59 properties:v60 regions:v61];
  v63 = *(this + 3);
  *(this + 3) = v62;

  if (v69 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B49C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDegammaOpHandler *EmitterViewerSPI::ANECDegammaOpHandler::ANECDegammaOpHandler(EmitterViewerSPI::ANECDegammaOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46D40;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B4E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECDiracOpHandler *EmitterViewerSPI::ANECDiracOpHandler::ANECDiracOpHandler(EmitterViewerSPI::ANECDiracOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46D70;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B5200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseAbsOpHandler *EmitterViewerSPI::ANECElementwiseAbsOpHandler::ANECElementwiseAbsOpHandler(EmitterViewerSPI::ANECElementwiseAbsOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46DA0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B559C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseAddOpHandler *EmitterViewerSPI::ANECElementwiseAddOpHandler::ANECElementwiseAddOpHandler(EmitterViewerSPI::ANECElementwiseAddOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46DD0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseDivOpHandler *EmitterViewerSPI::ANECElementwiseDivOpHandler::ANECElementwiseDivOpHandler(EmitterViewerSPI::ANECElementwiseDivOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E00;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B5D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseEqualOpHandler *EmitterViewerSPI::ANECElementwiseEqualOpHandler::ANECElementwiseEqualOpHandler(EmitterViewerSPI::ANECElementwiseEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E30;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B611C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler::ANECElementwiseEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E60;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B64C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler::ANECElementwiseGreaterThanOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46E90;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B6890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler::ANECElementwiseGreaterThanEqualOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46EC0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B6C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler::ANECElementwiseGreaterThanEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46EF0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B700C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler *EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler::ANECElementwiseGreaterThanZeroOpHandler(EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46F20;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B73A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanOpHandler *EmitterViewerSPI::ANECElementwiseLessThanOpHandler::ANECElementwiseLessThanOpHandler(EmitterViewerSPI::ANECElementwiseLessThanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46F50;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B7778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler *EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler::ANECElementwiseLessThanEqualOpHandler(EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46F80;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B7B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler::ANECElementwiseLessThanEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46FB0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B7EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler *EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler::ANECElementwiseLessThanZeroOpHandler(EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B46FE0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B8290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseMaxOpHandler *EmitterViewerSPI::ANECElementwiseMaxOpHandler::ANECElementwiseMaxOpHandler(EmitterViewerSPI::ANECElementwiseMaxOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47010;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B8660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseMinOpHandler *EmitterViewerSPI::ANECElementwiseMinOpHandler::ANECElementwiseMinOpHandler(EmitterViewerSPI::ANECElementwiseMinOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47040;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B8A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseMultOpHandler *EmitterViewerSPI::ANECElementwiseMultOpHandler::ANECElementwiseMultOpHandler(EmitterViewerSPI::ANECElementwiseMultOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47070;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B8E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseNotEqualOpHandler *EmitterViewerSPI::ANECElementwiseNotEqualOpHandler::ANECElementwiseNotEqualOpHandler(EmitterViewerSPI::ANECElementwiseNotEqualOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B470A0;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B91E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler *EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler::ANECElementwiseNotEqualZeroOpHandler(EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B470D0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B958C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwisePowerOpHandler *EmitterViewerSPI::ANECElementwisePowerOpHandler::ANECElementwisePowerOpHandler(EmitterViewerSPI::ANECElementwisePowerOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47100;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B995C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseSquareOpHandler *EmitterViewerSPI::ANECElementwiseSquareOpHandler::ANECElementwiseSquareOpHandler(EmitterViewerSPI::ANECElementwiseSquareOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47130;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06B9D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECElementwiseSubOpHandler *EmitterViewerSPI::ANECElementwiseSubOpHandler::ANECElementwiseSubOpHandler(EmitterViewerSPI::ANECElementwiseSubOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47160;
  v30 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v29 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v29 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v27 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BA0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECEluOpHandler *EmitterViewerSPI::ANECEluOpHandler::ANECEluOpHandler(EmitterViewerSPI::ANECEluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v35[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47190;
  v5 = *(*(a3 + 6) + 8);
  v33 = a3;
  v34 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v34);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v32 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v32 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v33 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v33 + 9))
  {
    v13 = v33 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  mlir::anec::Rsqrt::getEpsilon(&v33, &v34);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"alpha" dataType:268435488 shape:&unk_1F5B75F38];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = v35[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v20) == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [(MPSGraphViewerNodeSPI *)v22 initWithType:v30 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BA540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  llvm::APFloat::~APFloat(&a17);

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECErfOpHandler *EmitterViewerSPI::ANECErfOpHandler::ANECErfOpHandler(EmitterViewerSPI::ANECErfOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B471C0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BA908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECExp2OpHandler *EmitterViewerSPI::ANECExp2OpHandler::ANECExp2OpHandler(EmitterViewerSPI::ANECExp2OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B471F0;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BACA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECFlattenOpHandler *EmitterViewerSPI::ANECFlattenOpHandler::ANECFlattenOpHandler(EmitterViewerSPI::ANECFlattenOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47220;
  v5 = *(*(a3 + 6) + 8);
  v34 = a3;
  v35 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v35);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v33 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v33 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v31 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v31 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v13 = v34 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  FlattenMode = mlir::anec::Flatten::getFlattenMode(&v34);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:1];
  [v18 addObject:v19];

  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:2];
  [v18 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"flatten_mode" type:@"ANECFlattenMode" cases:v18 value:FlattenMode];
  if (v21)
  {
    [v16 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v10 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BB100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECFloorOpHandler *EmitterViewerSPI::ANECFloorOpHandler::ANECFloorOpHandler(EmitterViewerSPI::ANECFloorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47250;
  v29 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v29);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v28 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v28 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v13 = a3 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v26 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v28 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06BB4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ANECGOCOpHandler *EmitterViewerSPI::ANECGOCOpHandler::ANECGOCOpHandler(EmitterViewerSPI::ANECGOCOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B47280;
  v31 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v31);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v30 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v30 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v15 = a3 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v14 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v28 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}