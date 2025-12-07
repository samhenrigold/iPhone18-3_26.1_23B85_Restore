void sub_1E06D1134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCastOpHandler *EmitterViewerSPI::MPSCastOpHandler::MPSCastOpHandler(EmitterViewerSPI::MPSCastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48120;
  v5 = *(*(a3 + 6) + 8);
  v30 = a3;
  v31 = v5;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v30 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v30 + 9))
  {
    v13 = v30 - 16;
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
  mlir::pdl_interp::CheckTypeOp::getType(&v30);
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Returns a tensor with the same shape and set resultElementType."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D158C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCeilOpHandler *EmitterViewerSPI::MPSCeilOpHandler::MPSCeilOpHandler(EmitterViewerSPI::MPSCeilOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48150;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D1974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSClampOpHandler *EmitterViewerSPI::MPSClampOpHandler::MPSClampOpHandler(EmitterViewerSPI::MPSClampOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48180;
  v32 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v32);
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

  v31 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"primary", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"secondary", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"tertiary", *(*(a3 + 9) + 88));
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
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;
  v27 = ;
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D1DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSColToImOpHandler *EmitterViewerSPI::MPSColToImOpHandler::MPSColToImOpHandler(EmitterViewerSPI::MPSColToImOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B481B0;
  v5 = *(*(a3 + 6) + 8);
  v61 = a3;
  v62 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v62);
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

  v60 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v60 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v57 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v61 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v61 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v58 = [MEMORY[0x1E695DF70] array];
  if (*(v61 + 9))
  {
    v13 = v61 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v58 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  KernelSizes = mlir::mps::ColToImOp::getKernelSizes(&v61);
  v18 = KernelSizes;
  if (KernelSizes)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelSizes + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"kernel_sizes", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  Strides = mlir::mps::ColToImOp::getStrides(&v61);
  v22 = Strides;
  if (Strides)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v61);
  v26 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v61);
  v30 = Rewriter;
  if (Rewriter)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v30, v31);
  if (v32)
  {
    [v16 addObject:v32];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v61);
  v34 = [MEMORY[0x1E695DF70] array];
  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v34 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v34 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v34 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v34 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v34 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v34 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v34 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v34 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v34 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v34 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v34 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v34 value:StorageType];
  if (v46)
  {
    [v16 addObject:v46];
  }

  v47 = [MEMORY[0x1E695DF70] array];
  v48 = [MPSGraphViewerNodeSPI alloc];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v58];
  v51 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v47];
  v53 = [(MPSGraphViewerNodeSPI *)v48 initWithType:v57 inputs:v49 outputs:v50 properties:v51 regions:v52];
  v54 = *(this + 3);
  *(this + 3) = v53;
  v55 = ;
  [*(this + 3) setLocalizedDescription:v55];

  if (v60 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D259C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConcatOpHandler *EmitterViewerSPI::MPSConcatOpHandler::MPSConcatOpHandler(EmitterViewerSPI::MPSConcatOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B481E0;
  v4 = *(*(a3 + 6) + 8);
  v45 = a3;
  v46 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v46);
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

  v44 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v44 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v41 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v45, 0);
  if ((*(v45 + 46) & 0x80) != 0)
  {
    v11 = *(v45 + 9);
    v12 = ODSOperandIndexAndLength;
    v13 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v13 - ODSOperandIndexAndLength;
    if (v13 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    v12 = ODSOperandIndexAndLength;
    v34 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v34 - ODSOperandIndexAndLength;
    if (v34 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v35 = 0;
  v36 = v11 + 32 * v12;
  v37 = 1;
  do
  {
    v38 = *(v36 + 32 * v35 + 24);
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"values%d", v37 - 1];
    v40 = EmitViewerSPI::emitNodeInputPort(a2, v39, v38);

    if (v40)
    {
      [v9 addObject:v40];
    }

    v35 = v37++;
  }

  while (v14 > v35);
LABEL_12:
  v15 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v45, 1u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v45 + 9) + 32 * v15 + 24));
  if (v16)
  {
    [v9 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  if (*(v45 + 9))
  {
    v18 = v45 - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  v20 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v20)
  {
    [v17 addObject:v20];
  }

  v21 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v46) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v45);
  v22 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:2147483656 shape:&unk_1F5B76220];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v21 addObject:v22];
  }

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MPSGraphViewerNodeSPI alloc];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
  v30 = [(MPSGraphViewerNodeSPI *)v25 initWithType:v41 inputs:v26 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;
  v32 = ;
  [*(this + 3) setLocalizedDescription:v32];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D2B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConjugateOpHandler *EmitterViewerSPI::MPSConjugateOpHandler::MPSConjugateOpHandler(EmitterViewerSPI::MPSConjugateOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48210;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Calculates the complex complex conjugate of a tensor. For non-complex type tensors this is equivelent to an identity operation."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D2FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConstantOpHandler *EmitterViewerSPI::MPSConstantOpHandler::MPSConstantOpHandler(EmitterViewerSPI::MPSConstantOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48240;
  v41.n128_u64[0] = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v41);
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

  v40 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v40 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v37 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v12 = a3 - 16;
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
  if (HIBYTE(*(a3 + 11)))
  {
    v16 = *(a3 + 2 * ((*(a3 + 11) >> 23) & 1) + 8);
    v38 = v16;
    if (v16 && ((v17 = *(v16->n128_u64[0] + 136), v18 = v17 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v17 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id) ? (v19 = 0) : (v19 = v16), (v42 = v19, !v18) || (mlir::mps::MPSBufferTensorAttr::getHandle(&v41, &v42), Context = mlir::Attribute::getContext(&v42), Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v21), v23 = v41.n128_u64[0], llvm::sys::RWMutexImpl::lock((Manager + 48)), ++*(v23 + 88), llvm::sys::RWMutexImpl::unlock_shared((Manager + 48)), (v16 = v38) != 0)))
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(v16->n128_u64[0] + 8);
    }

    else
    {
      v24 = 0;
    }

    mlir::mps::AttributeHandler::decrementRefCount(&v38);
    v25 = EmitViewerSPI::emitElementsAttrProperty(@"value", v16, v24);
    if (v25)
    {
      [v15 addObject:v25];
    }
  }

  v26 = [MEMORY[0x1E695DF70] array];
  v27 = [MPSGraphViewerNodeSPI alloc];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v29 = v11;
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v26];
  v33 = [(MPSGraphViewerNodeSPI *)v27 initWithType:v37 inputs:v28 outputs:v30 properties:v31 regions:v32];
  v34 = *(this + 3);
  *(this + 3) = v33;

  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Turn a literal into an SSA value. The data is attached to the operation as an attribute."];
  [*(this + 3) setLocalizedDescription:v35];

  if (v40 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D3448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  mlir::mps::AttributeHandler::decrementRefCount(&a11);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__optional_destruct_base<mlir::AsmResourceBlob,false>::reset[abi:ne200100](uint64_t *result)
{
  if (*(result + 64) == 1)
  {
    v1 = result;
    v2 = result[6];
    if (v2 >= 8)
    {
      v3 = result + 3;
      v4 = *result;
      v5 = result[1];
      v6 = result[2];
      v7 = result + 3;
      if ((v2 & 2) == 0)
      {
        v7 = *v3;
      }

      result = (*(v2 & 0xFFFFFFFFFFFFFFF8))(v7, v4, v5, v6);
      v8 = *(v1 + 48);
      if (v8 >= 8)
      {
        if ((v8 & 4) != 0)
        {
          if ((v8 & 2) == 0)
          {
            v3 = *v3;
          }

          result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
        }

        if ((v8 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v1 + 24), *(v1 + 32));
        }
      }
    }

    *(v1 + 64) = 0;
  }

  return result;
}

EmitterViewerSPI::MPSConv2DDataGradientOpHandler *EmitterViewerSPI::MPSConv2DDataGradientOpHandler::MPSConv2DDataGradientOpHandler(EmitterViewerSPI::MPSConv2DDataGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48270;
  v5 = *(*(a3 + 6) + 8);
  v90 = a3;
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

  v89 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v89 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v87 = [MEMORY[0x1E695DF70] array];
  v85 = v10;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v90, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v90 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v87 addObject:v12];
  }

  v13 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v90, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v90 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v87 addObject:v14];
  }

  v15 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v90, 2u);
  if ((*(v90 + 46) & 0x80) != 0)
  {
    v16 = *(v90 + 9);
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
      goto LABEL_16;
    }
  }

  v18 = *(v16 + 32 * v17 + 24);
LABEL_19:
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", v18);
  if (v19)
  {
    [v87 addObject:v19];
  }

  v86 = [MEMORY[0x1E695DF70] array];
  if (*(v90 + 9))
  {
    v20 = v90 - 16;
  }

  else
  {
    v20 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  v22 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v22)
  {
    [v86 addObject:v22];
  }

  v23 = [MEMORY[0x1E695DF70] array];
  Groups = mlir::mps::Conv3DOp::getGroups(&v90);
  v24 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B76238];
  if (v24)
  {
    v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v23 addObject:v24];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v90);
  v27 = Strides;
  if (Strides)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v27, v28);
  v84 = v29;
  if (v29)
  {
    [v23 addObject:v29];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v90);
  v31 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v32 = 0;
  }

  v33 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v31, v32);
  if (v33)
  {
    [v23 addObject:v33];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v90);
  v35 = Rewriter;
  if (Rewriter)
  {
    v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v36 = 0;
  }

  v37 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v35, v36);
  if (v37)
  {
    [v23 addObject:v37];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v90);
  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v39 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v39 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v39 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v39 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v39 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v39 value:PaddingStyle];
  if (v45)
  {
    [v23 addObject:v45];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v90);
  v47 = [MEMORY[0x1E695DF70] array];
  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v47 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v47 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v47 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v47 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v47 addObject:v52];

  v53 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v47 addObject:v53];

  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v47 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v47 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v47 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v47 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v47 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v47 value:StorageType];
  if (v59)
  {
    [v23 addObject:v59];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v90);
  v61 = [MEMORY[0x1E695DF70] array];
  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v61 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v61 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v61 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v61 addObject:v65];

  v66 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v61 addObject:v66];

  v67 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v61 addObject:v67];

  v68 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v61 addObject:v68];

  v69 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v61 addObject:v69];

  v70 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v61 addObject:v70];

  v71 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v61 addObject:v71];

  v72 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v61 addObject:v72];

  v73 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v61 value:WeightsLayout];
  if (v73)
  {
    [v23 addObject:v73];
  }

  v74 = [MEMORY[0x1E695DF70] array];
  v75 = [MPSGraphViewerNodeSPI alloc];
  v76 = [MEMORY[0x1E695DEC8] arrayWithArray:v87];
  v77 = [MEMORY[0x1E695DEC8] arrayWithArray:v86];
  v78 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v79 = [MEMORY[0x1E695DEC8] arrayWithArray:v74];
  v80 = [(MPSGraphViewerNodeSPI *)v75 initWithType:v85 inputs:v76 outputs:v77 properties:v78 regions:v79];
  v81 = *(this + 3);
  *(this + 3) = v80;

  v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"conv2DDataGradient operation"];
  [*(this + 3) setLocalizedDescription:v82];

  if (v89 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D4124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv2DOpHandler *EmitterViewerSPI::MPSConv2DOpHandler::MPSConv2DOpHandler(EmitterViewerSPI::MPSConv2DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B482A0;
  v5 = *(*(a3 + 6) + 8);
  v82 = a3;
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

  v81 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v81 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v77 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v79 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v82 + 9) + 24));
  if (v10)
  {
    [v79 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v82 + 9) + 56));
  if (v11)
  {
    [v79 addObject:v11];
  }

  v78 = [MEMORY[0x1E695DF70] array];
  if (*(v82 + 9))
  {
    v12 = v82 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v78 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  Groups = mlir::mps::Conv3DOp::getGroups(&v82);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B76250];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v82);
  v19 = Strides;
  if (Strides)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v19, v20);
  v76 = v21;
  if (v21)
  {
    [v15 addObject:v21];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v82);
  v23 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v23, v24);
  if (v25)
  {
    [v15 addObject:v25];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v82);
  v27 = Rewriter;
  if (Rewriter)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v27, v28);
  if (v29)
  {
    [v15 addObject:v29];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v82);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v15 addObject:v37];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v82);
  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:StorageType];
  if (v51)
  {
    [v15 addObject:v51];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v82);
  v53 = [MEMORY[0x1E695DF70] array];
  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:WeightsLayout];
  if (v65)
  {
    [v15 addObject:v65];
  }

  v66 = [MEMORY[0x1E695DF70] array];
  v67 = [MPSGraphViewerNodeSPI alloc];
  v68 = [MEMORY[0x1E695DEC8] arrayWithArray:v79];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v78];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v72 = [(MPSGraphViewerNodeSPI *)v67 initWithType:v77 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;
  v74 = ;
  [*(this + 3) setLocalizedDescription:v74];

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D4E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler *EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler::MPSConv2DWeightsGradientOpHandler(EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B482D0;
  v5 = *(*(a3 + 6) + 8);
  v83 = a3;
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

  v82 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v82 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v78 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v80 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v83 + 9) + 24));
  if (v10)
  {
    [v80 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v83 + 9) + 56));
  if (v11)
  {
    [v80 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v83 + 9) + 88));
  if (v12)
  {
    [v80 addObject:v12];
  }

  v79 = [MEMORY[0x1E695DF70] array];
  if (*(v83 + 9))
  {
    v13 = v83 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v79 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Groups = mlir::mps::Conv3DOp::getGroups(&v83);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B76268];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v83);
  v20 = Strides;
  if (Strides)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v21 = 0;
  }

  v22 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v20, v21);
  v77 = v22;
  if (v22)
  {
    [v16 addObject:v22];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v83);
  v24 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v25 = 0;
  }

  v26 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v24, v25);
  if (v26)
  {
    [v16 addObject:v26];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v83);
  v28 = Rewriter;
  if (Rewriter)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v29 = 0;
  }

  v30 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v28, v29);
  if (v30)
  {
    [v16 addObject:v30];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v83);
  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v32 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v32 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v32 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v32 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v32 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v32 value:PaddingStyle];
  if (v38)
  {
    [v16 addObject:v38];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v83);
  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v40 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v40 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v40 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v40 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v40 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v40 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v40 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v40 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v40 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v40 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v40 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v40 value:StorageType];
  if (v52)
  {
    [v16 addObject:v52];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v83);
  v54 = [MEMORY[0x1E695DF70] array];
  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v54 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v54 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v54 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v54 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v54 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v54 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v54 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v54 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v54 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v54 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v54 addObject:v65];

  v66 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v54 value:WeightsLayout];
  if (v66)
  {
    [v16 addObject:v66];
  }

  v67 = [MEMORY[0x1E695DF70] array];
  v68 = [MPSGraphViewerNodeSPI alloc];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v80];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v79];
  v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v72 = [MEMORY[0x1E695DEC8] arrayWithArray:v67];
  v73 = [(MPSGraphViewerNodeSPI *)v68 initWithType:v78 inputs:v69 outputs:v70 properties:v71 regions:v72];
  v74 = *(this + 3);
  *(this + 3) = v73;

  v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"conv2DDataGradient operation"];
  [*(this + 3) setLocalizedDescription:v75];

  if (v82 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D5B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv3DDataGradientOpHandler *EmitterViewerSPI::MPSConv3DDataGradientOpHandler::MPSConv3DDataGradientOpHandler(EmitterViewerSPI::MPSConv3DDataGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48300;
  v5 = *(*(a3 + 6) + 8);
  v88 = a3;
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

  v87 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v87 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v83 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v85 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v88, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v88 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v85 addObject:v11];
  }

  v12 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v88, 1u);
  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v88 + 9) + 32 * v12 + 24));
  if (v13)
  {
    [v85 addObject:v13];
  }

  v14 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v88, 2u);
  if ((*(v88 + 46) & 0x80) != 0)
  {
    v15 = *(v88 + 9);
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
LABEL_16:
      v17 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
      goto LABEL_16;
    }
  }

  v17 = *(v15 + 32 * v16 + 24);
LABEL_19:
  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", v17);
  if (v18)
  {
    [v85 addObject:v18];
  }

  v84 = [MEMORY[0x1E695DF70] array];
  if (*(v88 + 9))
  {
    v19 = v88 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v84 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  Groups = mlir::mps::Conv3DOp::getGroups(&v88);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B76280];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v88);
  v26 = Strides;
  if (Strides)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v26, v27);
  v82 = v28;
  if (v28)
  {
    [v22 addObject:v28];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v88);
  v30 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v30, v31);
  if (v32)
  {
    [v22 addObject:v32];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v88);
  v34 = Rewriter;
  if (Rewriter)
  {
    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v35 = 0;
  }

  v36 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v34, v35);
  if (v36)
  {
    [v22 addObject:v36];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v88);
  v38 = [MEMORY[0x1E695DF70] array];
  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v38 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v38 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v38 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v38 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v38 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v38 value:PaddingStyle];
  if (v44)
  {
    [v22 addObject:v44];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v88);
  v46 = [MEMORY[0x1E695DF70] array];
  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v46 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v46 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v46 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v46 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v46 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v46 addObject:v52];

  v53 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v46 addObject:v53];

  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v46 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v46 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v46 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v46 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v46 value:StorageType];
  if (v58)
  {
    [v22 addObject:v58];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v88);
  v60 = [MEMORY[0x1E695DF70] array];
  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v60 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v60 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v60 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v60 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v60 addObject:v65];

  v66 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v60 addObject:v66];

  v67 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v60 addObject:v67];

  v68 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v60 addObject:v68];

  v69 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v60 addObject:v69];

  v70 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v60 addObject:v70];

  v71 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v60 addObject:v71];

  v72 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v60 value:WeightsLayout];
  if (v72)
  {
    [v22 addObject:v72];
  }

  v73 = [MEMORY[0x1E695DF70] array];
  v74 = [MPSGraphViewerNodeSPI alloc];
  v75 = [MEMORY[0x1E695DEC8] arrayWithArray:v85];
  v76 = [MEMORY[0x1E695DEC8] arrayWithArray:v84];
  v77 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v78 = [MEMORY[0x1E695DEC8] arrayWithArray:v73];
  v79 = [(MPSGraphViewerNodeSPI *)v74 initWithType:v83 inputs:v75 outputs:v76 properties:v77 regions:v78];
  v80 = *(this + 3);
  *(this + 3) = v79;

  if (v87 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D68D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv3DOpHandler *EmitterViewerSPI::MPSConv3DOpHandler::MPSConv3DOpHandler(EmitterViewerSPI::MPSConv3DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48330;
  v5 = *(*(a3 + 6) + 8);
  v82 = a3;
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

  v81 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v81 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v77 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v79 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v82 + 9) + 24));
  if (v10)
  {
    [v79 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v82 + 9) + 56));
  if (v11)
  {
    [v79 addObject:v11];
  }

  v78 = [MEMORY[0x1E695DF70] array];
  if (*(v82 + 9))
  {
    v12 = v82 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v78 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  Groups = mlir::mps::Conv3DOp::getGroups(&v82);
  v16 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B76298];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v16 setValue:v17];

    [v15 addObject:v16];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v82);
  v19 = Strides;
  if (Strides)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v19, v20);
  v76 = v21;
  if (v21)
  {
    [v15 addObject:v21];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v82);
  v23 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v23, v24);
  if (v25)
  {
    [v15 addObject:v25];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v82);
  v27 = Rewriter;
  if (Rewriter)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v27, v28);
  if (v29)
  {
    [v15 addObject:v29];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v82);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v15 addObject:v37];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v82);
  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:StorageType];
  if (v51)
  {
    [v15 addObject:v51];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v82);
  v53 = [MEMORY[0x1E695DF70] array];
  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:WeightsLayout];
  if (v65)
  {
    [v15 addObject:v65];
  }

  v66 = [MEMORY[0x1E695DF70] array];
  v67 = [MPSGraphViewerNodeSPI alloc];
  v68 = [MEMORY[0x1E695DEC8] arrayWithArray:v79];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v78];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v72 = [(MPSGraphViewerNodeSPI *)v67 initWithType:v77 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;
  v74 = ;
  [*(this + 3) setLocalizedDescription:v74];

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D75E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler *EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler::MPSConv3DWeightsGradientOpHandler(EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48360;
  v5 = *(*(a3 + 6) + 8);
  v82 = a3;
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

  v81 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v81 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v77 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v79 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v82 + 9) + 24));
  if (v10)
  {
    [v79 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v82 + 9) + 56));
  if (v11)
  {
    [v79 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v82 + 9) + 88));
  if (v12)
  {
    [v79 addObject:v12];
  }

  v78 = [MEMORY[0x1E695DF70] array];
  if (*(v82 + 9))
  {
    v13 = v82 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v78 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Groups = mlir::mps::Conv3DOp::getGroups(&v82);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B762B0];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  Strides = mlir::mps::Conv3DOp::getStrides(&v82);
  v20 = Strides;
  if (Strides)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v21 = 0;
  }

  v22 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v20, v21);
  v76 = v22;
  if (v22)
  {
    [v16 addObject:v22];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v82);
  v24 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v25 = 0;
  }

  v26 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v24, v25);
  if (v26)
  {
    [v16 addObject:v26];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v82);
  v28 = Rewriter;
  if (Rewriter)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v29 = 0;
  }

  v30 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v28, v29);
  if (v30)
  {
    [v16 addObject:v30];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v82);
  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v32 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v32 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v32 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v32 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v32 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v32 value:PaddingStyle];
  if (v38)
  {
    [v16 addObject:v38];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v82);
  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v40 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v40 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v40 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v40 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v40 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v40 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v40 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v40 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v40 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v40 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v40 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v40 value:StorageType];
  if (v52)
  {
    [v16 addObject:v52];
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v82);
  v54 = [MEMORY[0x1E695DF70] array];
  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v54 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v54 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v54 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v54 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v54 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v54 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v54 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v54 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v54 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v54 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v54 addObject:v65];

  v66 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v54 value:WeightsLayout];
  if (v66)
  {
    [v16 addObject:v66];
  }

  v67 = [MEMORY[0x1E695DF70] array];
  v68 = [MPSGraphViewerNodeSPI alloc];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v79];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v78];
  v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v72 = [MEMORY[0x1E695DEC8] arrayWithArray:v67];
  v73 = [(MPSGraphViewerNodeSPI *)v68 initWithType:v77 inputs:v69 outputs:v70 properties:v71 regions:v72];
  v74 = *(this + 3);
  *(this + 3) = v73;

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D82D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCosOpHandler *EmitterViewerSPI::MPSCosOpHandler::MPSCosOpHandler(EmitterViewerSPI::MPSCosOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48390;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D884C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCoshOpHandler *EmitterViewerSPI::MPSCoshOpHandler::MPSCoshOpHandler(EmitterViewerSPI::MPSCoshOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B483C0;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D8C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCostVolumeOpHandler *EmitterViewerSPI::MPSCostVolumeOpHandler::MPSCostVolumeOpHandler(EmitterViewerSPI::MPSCostVolumeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B483F0;
  v5 = *(*(a3 + 6) + 8);
  v65 = a3;
  WindowHeight = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&WindowHeight);
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

  v64 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v64 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v57 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"ref", *(*(v65 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v65 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"coordinates", *(*(v65 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v58 = [MEMORY[0x1E695DF70] array];
  if (*(v65 + 9))
  {
    v14 = v65 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v58 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  NormalizeCoordinates = mlir::mps::CostVolumeOp::getNormalizeCoordinates(&v65);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_1F5B762C8];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&NormalizeCoordinates length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v65);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"relative_coordinates" dataType:2147483656 shape:&unk_1F5B762E0];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  WindowHeight = mlir::mps::CostVolumeOp::getWindowHeight(&v65);
  v22 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"window_height" dataType:64 shape:&unk_1F5B762F8];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&WindowHeight length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v17 addObject:v22];
  }

  WindowWidth = mlir::mps::CostVolumeOp::getWindowWidth(&v65);
  v24 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"window_width" dataType:64 shape:&unk_1F5B76310];
  if (v24)
  {
    v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&WindowWidth length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v17 addObject:v24];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v65);
  v27 = [MEMORY[0x1E695DF70] array];
  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"dot_product" value:0];
  [v27 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"abs_diff" value:1];
  [v27 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"similarity_type" type:@"MPSSimilarityType" cases:v27 value:PaddingStyle];
  if (v30)
  {
    [v17 addObject:v30];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v65);
  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v32 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v32 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v32 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v32 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v32 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v32 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v32 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v32 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v32 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v32 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v32 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v32 value:Layout];
  if (v44)
  {
    [v17 addObject:v44];
  }

  IsXOnly = mlir::mps::CostVolumeOp::getCoordIsXOnly(&v65);
  if ((IsXOnly & 0x100) != 0)
  {
    v45 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"coord_is_x_only" dataType:2147483656 shape:&unk_1F5B76328];
    if (v45)
    {
      if ((IsXOnly & 0x100) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v46 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsXOnly length:2];
      [(MPSGraphViewerNodePropertyDataSPI *)v45 setValue:v46];

      [v17 addObject:v45];
    }
  }

  v47 = [MEMORY[0x1E695DF70] array];
  v48 = [MPSGraphViewerNodeSPI alloc];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v58];
  v51 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v52 = [MEMORY[0x1E695DEC8] arrayWithArray:v47];
  v53 = [(MPSGraphViewerNodeSPI *)v48 initWithType:v57 inputs:v49 outputs:v50 properties:v51 regions:v52];
  v54 = *(this + 3);
  *(this + 3) = v53;
  v55 = ;
  [*(this + 3) setLocalizedDescription:v55];

  if (v64 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D95FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCreateComplexOpHandler *EmitterViewerSPI::MPSCreateComplexOpHandler::MPSCreateComplexOpHandler(EmitterViewerSPI::MPSCreateComplexOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48420;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"real", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"imag", *(*(a3 + 9) + 56));
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
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06D9B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCreateTextureTensorOpHandler *EmitterViewerSPI::MPSCreateTextureTensorOpHandler::MPSCreateTextureTensorOpHandler(EmitterViewerSPI::MPSCreateTextureTensorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48450;
  v5 = *(*(a3 + 6) + 8);
  v45 = a3;
  v46 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v46);
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

  v42 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v45 + 9))
  {
    v13 = v45 - 16;
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
  Layout = mlir::mps::SampleGridOp::getLayout(&v45);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"R8Unorm" value:0];
  [v18 addObject:v19];

  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RG8Unorm" value:1];
  [v18 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RGBA8Unorm" value:2];
  [v18 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"BGRA8Unorm" value:3];
  [v18 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"R16Float" value:4];
  [v18 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RG16Float" value:5];
  [v18 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RGBA16Float" value:6];
  [v18 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"R32Float" value:7];
  [v18 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RG32Float" value:8];
  [v18 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RGBA32Float" value:9];
  [v18 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"pixel_format" type:@"MPSMetalPixelFormat" cases:v18 value:Layout];
  if (v29)
  {
    [v16 addObject:v29];
  }

  LOBYTE(v46) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v45);
  v30 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"compressed" dataType:2147483656 shape:&unk_1F5B76340];
  if (v30)
  {
    v31 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v30 setValue:v31];

    [v16 addObject:v30];
  }

  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [MPSGraphViewerNodeSPI alloc];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v37 = [MEMORY[0x1E695DEC8] arrayWithArray:v32];
  v38 = [(MPSGraphViewerNodeSPI *)v33 initWithType:v42 inputs:v34 outputs:v35 properties:v36 regions:v37];
  v39 = *(this + 3);
  *(this + 3) = v38;

  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Creates a textureTensor op with a specified pixel format format from a tensor. The input is expected to be in NHWC data layout."];
  [*(this + 3) setLocalizedDescription:v40];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DA210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCropOpHandler *EmitterViewerSPI::MPSCropOpHandler::MPSCropOpHandler(EmitterViewerSPI::MPSCropOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48480;
  v33 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v33);
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"amount_before", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"amount_after", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v16 = a3 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MPSGraphViewerNodeSPI alloc];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v26 = [(MPSGraphViewerNodeSPI *)v21 initWithType:v30 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;
  v28 = ;
  [*(this + 3) setLocalizedDescription:v28];

  if (v32 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DA6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCropResizeOpHandler *EmitterViewerSPI::MPSCropResizeOpHandler::MPSCropResizeOpHandler(EmitterViewerSPI::MPSCropResizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  v64[3] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B484B0;
  v5 = *(*(a3 + 6) + 8);
  v62 = a3;
  v63 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v63);
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

  v61 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v61 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v52 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v56 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"images", *(*(v62 + 9) + 24));
  if (v10)
  {
    [v56 addObject:v10];
  }

  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"boxes", *(*(v62 + 9) + 56));
  if (v11)
  {
    [v56 addObject:v11];
  }

  v55 = [MEMORY[0x1E695DF70] array];
  if (*(v62 + 9))
  {
    v12 = v62 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v14 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v14)
  {
    [v55 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  ResizeHeight = mlir::mps::CropResizeOp::getResizeHeight(&v62);
  v54 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"resize_height" dataType:32 shape:&unk_1F5B76358];
  if (v54)
  {
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResizeHeight length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v54 setValue:v16];

    [v15 addObject:v54];
  }

  WindowHeight = mlir::mps::CostVolumeOp::getWindowHeight(&v62);
  v53 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"resize_width" dataType:32 shape:&unk_1F5B76370];
  if (v53)
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:&WindowHeight length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v53 setValue:v17];

    [v15 addObject:v53];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v62);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"normalize_coordinates" dataType:2147483656 shape:&unk_1F5B76388];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v15 addObject:v18];
  }

  mlir::mps::CropResizeOp::getSpatialScale(&v63, &v62);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"spatial_scale" dataType:268435488 shape:&unk_1F5B763A0];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v63 length:32];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v15 addObject:v20];
  }

  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v62);
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"nearest" value:0];
  [v23 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"bilinear" value:1];
  [v23 addObject:v25];

  v26 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"interpolation_mode" type:@"MPSSamplingMode" cases:v23 value:GateLayout];
  if (v26)
  {
    [v15 addObject:v26];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v62);
  v28 = [MEMORY[0x1E695DF70] array];
  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"defaultAlignment" value:0];
  [v28 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"alignCorners" value:1];
  [v28 addObject:v30];

  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"offsetCorners" value:2];
  [v28 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"alignment_mode" type:@"MPSCropResizeAlignmentMode" cases:v28 value:StorageType];
  if (v32)
  {
    [v15 addObject:v32];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v62);
  v34 = [MEMORY[0x1E695DF70] array];
  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersHeightFirst" value:0];
  [v34 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"cornersWidthFirst" value:1];
  [v34 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersHeightFirst" value:2];
  [v34 addObject:v37];

  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"centersWidthFirst" value:3];
  [v34 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"coordinate_mode" type:@"MPSCropResizeCoordinateMode" cases:v34 value:Layout];
  if (v39)
  {
    [v15 addObject:v39];
  }

  v40 = v64[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v41) == v40)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v64);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v64);
  }

  v42 = [MEMORY[0x1E695DF70] array];
  v43 = [MPSGraphViewerNodeSPI alloc];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v56];
  v45 = [MEMORY[0x1E695DEC8] arrayWithArray:v55];
  v46 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v47 = [MEMORY[0x1E695DEC8] arrayWithArray:v42];
  v48 = [(MPSGraphViewerNodeSPI *)v43 initWithType:v52 inputs:v44 outputs:v45 properties:v46 regions:v47];
  v49 = *(this + 3);
  *(this + 3) = v48;
  v50 = ;
  [*(this + 3) setLocalizedDescription:v50];

  if (v61 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DB004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  llvm::APFloat::~APFloat(&a25);

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeMaximumOpHandler *EmitterViewerSPI::MPSCumulativeMaximumOpHandler::MPSCumulativeMaximumOpHandler(EmitterViewerSPI::MPSCumulativeMaximumOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B484E0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_1F5B763B8];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v36);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_1F5B763D0];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DB6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeMinimumOpHandler *EmitterViewerSPI::MPSCumulativeMinimumOpHandler::MPSCumulativeMinimumOpHandler(EmitterViewerSPI::MPSCumulativeMinimumOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48510;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_1F5B763E8];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v36);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_1F5B76400];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DBBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeProductOpHandler *EmitterViewerSPI::MPSCumulativeProductOpHandler::MPSCumulativeProductOpHandler(EmitterViewerSPI::MPSCumulativeProductOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48540;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_1F5B76418];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v36);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_1F5B76430];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DC140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSCumulativeSumOpHandler *EmitterViewerSPI::MPSCumulativeSumOpHandler::MPSCumulativeSumOpHandler(EmitterViewerSPI::MPSCumulativeSumOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48570;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v36 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v36 + 9))
  {
    v14 = v36 - 16;
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
  LOBYTE(v37) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v36);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"exclusive" dataType:2147483656 shape:&unk_1F5B76448];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v36);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"reverse" dataType:2147483656 shape:&unk_1F5B76460];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v35 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DC688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDegammaOpHandler *EmitterViewerSPI::MPSDegammaOpHandler::MPSDegammaOpHandler(EmitterViewerSPI::MPSDegammaOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B485A0;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DCAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthToSpace2DOpHandler *EmitterViewerSPI::MPSDepthToSpace2DOpHandler::MPSDepthToSpace2DOpHandler(EmitterViewerSPI::MPSDepthToSpace2DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B485D0;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
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

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"width_axis", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"height_axis", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"depth_axis", *(*(v38 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v34 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v15 = v38 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  v17 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v17)
  {
    [v34 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  LODWORD(v39) = mlir::pdl::ResultOp::getIndex(&v38);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"block_size" dataType:32 shape:&unk_1F5B76478];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v38);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"pixel_shuffle" dataType:2147483656 shape:&unk_1F5B76490];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsSize length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v18 addObject:v21];
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v34];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v29 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v33 inputs:v25 outputs:v26 properties:v27 regions:v28];
  v30 = *(this + 3);
  *(this + 3) = v29;
  v31 = ;
  [*(this + 3) setLocalizedDescription:v31];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DD018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler::MPSDepthwiseConv2DDataGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48600;
  v5 = *(*(a3 + 6) + 8);
  v81 = a3;
  v82 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v82);
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

  v80 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v80 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v76 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v77 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v81 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v81 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v81 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v78 = [MEMORY[0x1E695DF70] array];
  if (*(v81 + 9))
  {
    v14 = v81 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v78 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Strides = mlir::mps::ColToImOp::getStrides(&v81);
  v19 = Strides;
  if (Strides)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v81);
  v23 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v81);
  v27 = Rewriter;
  if (Rewriter)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v81);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v81);
  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:StorageType];
  if (v51)
  {
    [v17 addObject:v51];
  }

  v52 = mlir::mps::StencilOp::getPaddingStyle(&v81);
  v53 = [MEMORY[0x1E695DF70] array];
  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:v52];
  if (v65)
  {
    [v17 addObject:v65];
  }

  v66 = [MEMORY[0x1E695DF70] array];
  v67 = [MPSGraphViewerNodeSPI alloc];
  v68 = [MEMORY[0x1E695DEC8] arrayWithArray:v77];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v78];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v72 = [(MPSGraphViewerNodeSPI *)v67 initWithType:v76 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;

  v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Depthwise Conv2D operation"];
  [*(this + 3) setLocalizedDescription:v74];

  if (v80 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DDBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv2DOpHandler *EmitterViewerSPI::MPSDepthwiseConv2DOpHandler::MPSDepthwiseConv2DOpHandler(EmitterViewerSPI::MPSDepthwiseConv2DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48630;
  v5 = *(*(a3 + 6) + 8);
  v80 = a3;
  v81 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v81);
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

  v79 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v79 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v75 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v76 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v80 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v80 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v77 = [MEMORY[0x1E695DF70] array];
  if (*(v80 + 9))
  {
    v13 = v80 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v77 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Strides = mlir::mps::ColToImOp::getStrides(&v80);
  v18 = Strides;
  if (Strides)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v80);
  v22 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v80);
  v26 = Rewriter;
  if (Rewriter)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v80);
  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v30 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v30 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v30 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v30 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v30 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v30 value:PaddingStyle];
  if (v36)
  {
    [v16 addObject:v36];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v80);
  v38 = [MEMORY[0x1E695DF70] array];
  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v38 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v38 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v38 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v38 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v38 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v38 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v38 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v38 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v38 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v38 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v38 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v38 value:StorageType];
  if (v50)
  {
    [v16 addObject:v50];
  }

  v51 = mlir::mps::StencilOp::getPaddingStyle(&v80);
  v52 = [MEMORY[0x1E695DF70] array];
  v53 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v52 addObject:v53];

  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v52 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v52 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v52 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v52 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v52 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v52 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v52 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v52 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v52 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v52 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v52 value:v51];
  if (v64)
  {
    [v16 addObject:v64];
  }

  v65 = [MEMORY[0x1E695DF70] array];
  v66 = [MPSGraphViewerNodeSPI alloc];
  v67 = [MEMORY[0x1E695DEC8] arrayWithArray:v76];
  v68 = [MEMORY[0x1E695DEC8] arrayWithArray:v77];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v65];
  v71 = [(MPSGraphViewerNodeSPI *)v66 initWithType:v75 inputs:v67 outputs:v68 properties:v69 regions:v70];
  v72 = *(this + 3);
  *(this + 3) = v71;

  v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Depthwise Conv2D operation"];
  [*(this + 3) setLocalizedDescription:v73];

  if (v79 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DE7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler::MPSDepthwiseConv2DWeightsGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48660;
  v5 = *(*(a3 + 6) + 8);
  v81 = a3;
  v82 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v82);
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

  v80 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v80 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v76 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v77 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v81 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v81 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"outputShape", *(*(v81 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v78 = [MEMORY[0x1E695DF70] array];
  if (*(v81 + 9))
  {
    v14 = v81 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v78 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Strides = mlir::mps::ColToImOp::getStrides(&v81);
  v19 = Strides;
  if (Strides)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v81);
  v23 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v81);
  v27 = Rewriter;
  if (Rewriter)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v81);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v81);
  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v39 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v39 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v39 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v39 addObject:v43];

  v44 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v39 addObject:v44];

  v45 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v39 addObject:v45];

  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v39 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v39 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v39 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v39 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v39 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v39 value:StorageType];
  if (v51)
  {
    [v17 addObject:v51];
  }

  v52 = mlir::mps::StencilOp::getPaddingStyle(&v81);
  v53 = [MEMORY[0x1E695DF70] array];
  v54 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v53 addObject:v54];

  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v53 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v53 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v53 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v53 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v53 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v53 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v53 addObject:v61];

  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v53 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v53 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v53 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v53 value:v52];
  if (v65)
  {
    [v17 addObject:v65];
  }

  v66 = [MEMORY[0x1E695DF70] array];
  v67 = [MPSGraphViewerNodeSPI alloc];
  v68 = [MEMORY[0x1E695DEC8] arrayWithArray:v77];
  v69 = [MEMORY[0x1E695DEC8] arrayWithArray:v78];
  v70 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
  v72 = [(MPSGraphViewerNodeSPI *)v67 initWithType:v76 inputs:v68 outputs:v69 properties:v70 regions:v71];
  v73 = *(this + 3);
  *(this + 3) = v72;

  v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DepthwiseConv2DWeightsGradient operation"];
  [*(this + 3) setLocalizedDescription:v74];

  if (v80 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DF44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler::MPSDepthwiseConv3DDataGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48690;
  v5 = *(*(a3 + 6) + 8);
  v61 = a3;
  v62 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v62);
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

  v60 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v60 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v56 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v57 = v10;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v61, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v61 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v61, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v61 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v61, 2u);
  if ((*(v61 + 46) & 0x80) != 0)
  {
    v16 = *(v61 + 9);
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
      goto LABEL_16;
    }
  }

  v18 = *(v16 + 32 * v17 + 24);
LABEL_19:
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"output_shape", v18);
  if (v19)
  {
    [v10 addObject:v19];
  }

  v58 = [MEMORY[0x1E695DF70] array];
  if (*(v61 + 9))
  {
    v20 = v61 - 16;
  }

  else
  {
    v20 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  v22 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v22)
  {
    [v58 addObject:v22];
  }

  v23 = [MEMORY[0x1E695DF70] array];
  Strides = mlir::mps::ColToImOp::getStrides(&v61);
  v25 = Strides;
  if (Strides)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v25, v26);
  if (v27)
  {
    [v23 addObject:v27];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v61);
  v29 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v29, v30);
  if (v31)
  {
    [v23 addObject:v31];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v61);
  v33 = Rewriter;
  if (Rewriter)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v34 = 0;
  }

  v35 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v33, v34);
  if (v35)
  {
    [v23 addObject:v35];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v61);
  v37 = [MEMORY[0x1E695DF70] array];
  v38 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v37 addObject:v38];

  v39 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v37 addObject:v39];

  v40 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v37 addObject:v40];

  v41 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v37 addObject:v41];

  v42 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v37 addObject:v42];

  v43 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v37 value:PaddingStyle];
  if (v43)
  {
    [v23 addObject:v43];
  }

  LODWORD(v62) = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v61);
  v44 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"channelAxis" dataType:536870944 shape:&unk_1F5B764A8];
  if (v44)
  {
    v45 = [MEMORY[0x1E695DEF0] dataWithBytes:&v62 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v44 setValue:v45];

    [v23 addObject:v44];
  }

  v46 = [MEMORY[0x1E695DF70] array];
  v47 = [MPSGraphViewerNodeSPI alloc];
  v48 = [MEMORY[0x1E695DEC8] arrayWithArray:v57];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v58];
  v50 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v51 = [MEMORY[0x1E695DEC8] arrayWithArray:v46];
  v52 = [(MPSGraphViewerNodeSPI *)v47 initWithType:v56 inputs:v48 outputs:v49 properties:v50 regions:v51];
  v53 = *(this + 3);
  *(this + 3) = v52;
  v54 = ;
  [*(this + 3) setLocalizedDescription:v54];

  if (v60 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06DFD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv3DOpHandler *EmitterViewerSPI::MPSDepthwiseConv3DOpHandler::MPSDepthwiseConv3DOpHandler(EmitterViewerSPI::MPSDepthwiseConv3DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B486C0;
  v5 = *(*(a3 + 6) + 8);
  v54 = a3;
  v55 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v55);
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

  v53 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v53 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v49 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v50 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v54 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v54 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v51 = [MEMORY[0x1E695DF70] array];
  if (*(v54 + 9))
  {
    v13 = v54 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v51 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Strides = mlir::mps::ColToImOp::getStrides(&v54);
  v18 = Strides;
  if (Strides)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v18, v19);
  if (v20)
  {
    [v16 addObject:v20];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v54);
  v22 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v22, v23);
  if (v24)
  {
    [v16 addObject:v24];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v54);
  v26 = Rewriter;
  if (Rewriter)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v26, v27);
  if (v28)
  {
    [v16 addObject:v28];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v54);
  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v30 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v30 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v30 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v30 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v30 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v30 value:PaddingStyle];
  if (v36)
  {
    [v16 addObject:v36];
  }

  LODWORD(v55) = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v54);
  v37 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"channelAxis" dataType:536870944 shape:&unk_1F5B764C0];
  if (v37)
  {
    v38 = [MEMORY[0x1E695DEF0] dataWithBytes:&v55 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v37 setValue:v38];

    [v16 addObject:v37];
  }

  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [MPSGraphViewerNodeSPI alloc];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v51];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v39];
  v45 = [(MPSGraphViewerNodeSPI *)v40 initWithType:v49 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(this + 3);
  *(this + 3) = v45;
  v47 = ;
  [*(this + 3) setLocalizedDescription:v47];

  if (v53 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E04D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler *EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler::MPSDepthwiseConv3DWeightsGradientOpHandler(EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B486F0;
  v5 = *(*(a3 + 6) + 8);
  v55 = a3;
  v56 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v56);
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

  v54 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v54 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v50 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v51 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient", *(*(v55 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v55 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"output_shape", *(*(v55 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v52 = [MEMORY[0x1E695DF70] array];
  if (*(v55 + 9))
  {
    v14 = v55 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v52 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Strides = mlir::mps::ColToImOp::getStrides(&v55);
  v19 = Strides;
  if (Strides)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v20 = 0;
  }

  v21 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v19, v20);
  if (v21)
  {
    [v17 addObject:v21];
  }

  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v55);
  v23 = InputAttributeNames;
  if (InputAttributeNames)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v23, v24);
  if (v25)
  {
    [v17 addObject:v25];
  }

  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v55);
  v27 = Rewriter;
  if (Rewriter)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v28 = 0;
  }

  v29 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v27, v28);
  if (v29)
  {
    [v17 addObject:v29];
  }

  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v55);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v31 addObject:v32];

  v33 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v31 addObject:v33];

  v34 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v31 addObject:v34];

  v35 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v31 addObject:v35];

  v36 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v31 addObject:v36];

  v37 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v31 value:PaddingStyle];
  if (v37)
  {
    [v17 addObject:v37];
  }

  LODWORD(v56) = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v55);
  v38 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"channelAxis" dataType:536870944 shape:&unk_1F5B764D8];
  if (v38)
  {
    v39 = [MEMORY[0x1E695DEF0] dataWithBytes:&v56 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v38 setValue:v39];

    [v17 addObject:v38];
  }

  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [MPSGraphViewerNodeSPI alloc];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v51];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v52];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v45 = [MEMORY[0x1E695DEC8] arrayWithArray:v40];
  v46 = [(MPSGraphViewerNodeSPI *)v41 initWithType:v50 inputs:v42 outputs:v43 properties:v44 regions:v45];
  v47 = *(this + 3);
  *(this + 3) = v46;
  v48 = ;
  [*(this + 3) setLocalizedDescription:v48];

  if (v54 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E0C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDequantizeLUTOpHandler *EmitterViewerSPI::MPSDequantizeLUTOpHandler::MPSDequantizeLUTOpHandler(EmitterViewerSPI::MPSDequantizeLUTOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48720;
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

  v31 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"palette_lut", *(*(v34 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
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
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v34);
  LODWORD(v35) = Axis;
  BYTE4(v35) = BYTE4(Axis);
  if ((Axis & 0x100000000) != 0)
  {
    v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:536870944 shape:&unk_1F5B764F0];
    if (v19)
    {
      if ((v35 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v35 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

      [v17 addObject:v19];
    }
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [(MPSGraphViewerNodeSPI *)v22 initWithType:v31 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;
  v29 = ;
  [*(this + 3) setLocalizedDescription:v29];

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E1204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDequantizeOpHandler *EmitterViewerSPI::MPSDequantizeOpHandler::MPSDequantizeOpHandler(EmitterViewerSPI::MPSDequantizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48750;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
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

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v35 = v10;
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(v38 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"zero_point", *(*(v38 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"min", *(*(v38 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v16 = v38 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  mlir::func::FuncOp::getFunctionType(&v38);
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v38);
  LODWORD(v39) = Axis;
  BYTE4(v39) = BYTE4(Axis);
  if ((Axis & 0x100000000) != 0)
  {
    v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"axis" dataType:536870944 shape:&unk_1F5B76508];
    if (v21)
    {
      if ((v39 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

      [v19 addObject:v21];
    }
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v26 = v15;
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v30 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v34 inputs:v25 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;
  v32 = ;
  [*(this + 3) setLocalizedDescription:v32];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E1754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDimensionSizeOpHandler *EmitterViewerSPI::MPSDimensionSizeOpHandler::MPSDimensionSizeOpHandler(EmitterViewerSPI::MPSDimensionSizeOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48780;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 56));
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

void sub_1E06E1B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDiracOpHandler *EmitterViewerSPI::MPSDiracOpHandler::MPSDiracOpHandler(EmitterViewerSPI::MPSDiracOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B487B0;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E1F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDivideOpHandler *EmitterViewerSPI::MPSDivideOpHandler::MPSDivideOpHandler(EmitterViewerSPI::MPSDivideOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B487E0;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSDynamicShapeCastOpHandler *EmitterViewerSPI::MPSDynamicShapeCastOpHandler::MPSDynamicShapeCastOpHandler(EmitterViewerSPI::MPSDynamicShapeCastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48810;
  v5 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
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

  v37 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v38, 1u);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v14 = *(v38 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_17:
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v19 = v38 - 16;
  }

  else
  {
    v19 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  v21 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v21)
  {
    [v18 addObject:v21];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v39) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v38);
  v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"unranked" dataType:2147483656 shape:&unk_1F5B76520];
  if (v23)
  {
    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

    [v22 addObject:v23];
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v35 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;
  v33 = ;
  [*(this + 3) setLocalizedDescription:v33];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E2878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSEluOpHandler *EmitterViewerSPI::MPSEluOpHandler::MPSEluOpHandler(EmitterViewerSPI::MPSEluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48840;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E2CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSEqualToOpHandler *EmitterViewerSPI::MPSEqualToOpHandler::MPSEqualToOpHandler(EmitterViewerSPI::MPSEqualToOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48870;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E30D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSErfOpHandler *EmitterViewerSPI::MPSErfOpHandler::MPSErfOpHandler(EmitterViewerSPI::MPSErfOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B488A0;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E34C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExpandDimsOpHandler *EmitterViewerSPI::MPSExpandDimsOpHandler::MPSExpandDimsOpHandler(EmitterViewerSPI::MPSExpandDimsOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B488D0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 56));
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Insert a single-dimension at each axis in axes of the result tensor. Valid axis values must be in range - |result| <= axis < |result| |result| = |input| + K, where K = axes.shape[0]."}];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E38D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExponentBase2OpHandler *EmitterViewerSPI::MPSExponentBase2OpHandler::MPSExponentBase2OpHandler(EmitterViewerSPI::MPSExponentBase2OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48900;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E3CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExponentBase10OpHandler *EmitterViewerSPI::MPSExponentBase10OpHandler::MPSExponentBase10OpHandler(EmitterViewerSPI::MPSExponentBase10OpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48930;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E409C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExponentOpHandler *EmitterViewerSPI::MPSExponentOpHandler::MPSExponentOpHandler(EmitterViewerSPI::MPSExponentOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48960;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E447C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFastFourierTransformOpHandler *EmitterViewerSPI::MPSFastFourierTransformOpHandler::MPSFastFourierTransformOpHandler(EmitterViewerSPI::MPSFastFourierTransformOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48990;
  v5 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v40);
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

  v38 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v39 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(v39 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v39 + 9))
  {
    v14 = v39 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
  if (v16)
  {
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  Layout = mlir::mps::SampleGridOp::getLayout(&v39);
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v19 addObject:v20];

  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"size" value:1];
  [v19 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"unitary" value:2];
  [v19 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"scaling_mode" type:@"MPSFFTScalingMode" cases:v19 value:Layout];
  if (v23)
  {
    [v17 addObject:v23];
  }

  LOBYTE(v40) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v39);
  v24 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"inverse" dataType:2147483656 shape:&unk_1F5B76538];
  if (v24)
  {
    v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v40 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v24 setValue:v25];

    [v17 addObject:v24];
  }

  v26 = [MEMORY[0x1E695DF70] array];
  v27 = [MPSGraphViewerNodeSPI alloc];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v26];
  v32 = [(MPSGraphViewerNodeSPI *)v27 initWithType:v36 inputs:v28 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;
  v34 = ;
  [*(this + 3) setLocalizedDescription:v34];

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E49F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFlatten2DOpHandler *EmitterViewerSPI::MPSFlatten2DOpHandler::MPSFlatten2DOpHandler(EmitterViewerSPI::MPSFlatten2DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B489C0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(a3 + 9) + 56));
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E4E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFloorDivideOpHandler *EmitterViewerSPI::MPSFloorDivideOpHandler::MPSFloorDivideOpHandler(EmitterViewerSPI::MPSFloorDivideOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B489F0;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E5270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFloorOpHandler *EmitterViewerSPI::MPSFloorOpHandler::MPSFloorOpHandler(EmitterViewerSPI::MPSFloorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48A20;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E5658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGRUGradientOpHandler *EmitterViewerSPI::MPSGRUGradientOpHandler::MPSGRUGradientOpHandler(EmitterViewerSPI::MPSGRUGradientOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48A50;
  v5 = *(*(a3 + 6) + 8);
  v111 = a3;
  v112 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v112);
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

  v110 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v110 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v107 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v111, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"gradient_input_sequence", *(*(v111 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v111, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v111 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v111, 2u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"training_state", *(*(v111 + 9) + 32 * v15 + 24));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v111, 3u);
  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"result_forward", *(*(v111 + 9) + 32 * v17 + 24));
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v111, 4u);
  if ((*(v111 + 46) & 0x80) != 0)
  {
    v20 = *(v111 + 9);
    v21 = v19;
    if (HIDWORD(v19) + v19 == v19)
    {
LABEL_20:
      v22 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v20 = 0;
    v21 = v19;
    if (HIDWORD(v19) + v19 == v19)
    {
      goto LABEL_20;
    }
  }

  v22 = *(v20 + 32 * v21 + 24);
LABEL_23:
  v23 = EmitViewerSPI::emitNodeInputPort(a2, @"input_state", v22);
  if (v23)
  {
    [v10 addObject:v23];
  }

  v24 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v111, 5u);
  if ((*(v111 + 46) & 0x80) != 0)
  {
    v25 = *(v111 + 9);
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
LABEL_27:
      v27 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v25 = 0;
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
      goto LABEL_27;
    }
  }

  v27 = *(v25 + 32 * v26 + 24);
LABEL_30:
  v28 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v27);
  if (v28)
  {
    [v10 addObject:v28];
  }

  v29 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v111, 6u);
  if ((*(v111 + 46) & 0x80) != 0)
  {
    v30 = *(v111 + 9);
    v31 = v29;
    if (HIDWORD(v29) + v29 == v29)
    {
LABEL_34:
      v32 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v30 = 0;
    v31 = v29;
    if (HIDWORD(v29) + v29 == v29)
    {
      goto LABEL_34;
    }
  }

  v32 = *(v30 + 32 * v31 + 24);
LABEL_37:
  v33 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", v32);
  if (v33)
  {
    [v10 addObject:v33];
  }

  v34 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v111, 0, v35, v36);
  if (*(v111 + 9))
  {
    NextResultAtOffset = v111 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v39 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v40 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_output_sequence", v39);
  if (v40)
  {
    [v34 addObject:v40];
  }

  v43 = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v111, 1u, v41, v42);
  if (*(v111 + 9))
  {
    v44 = v111 - 16;
  }

  else
  {
    v44 = 0;
  }

  if (v43)
  {
    v44 = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, v43);
  }

  v45 = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
  v46 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_recurrent_weight", v45);
  if (v46)
  {
    [v34 addObject:v46];
  }

  v49 = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v111, 2u, v47, v48);
  if (*(v111 + 9))
  {
    v50 = v111 - 16;
  }

  else
  {
    v50 = 0;
  }

  if (v49)
  {
    v50 = mlir::detail::OpResultImpl::getNextResultAtOffset(v50, v49);
  }

  v51 = mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0);
  v52 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_input_state", v51);
  if (v52)
  {
    [v34 addObject:v52];
  }

  v55 = mlir::mps::GRUGradientOp::getODSResultIndexAndLength(&v111, 3u, v53, v54);
  if (*(v111 + 9))
  {
    v56 = v111 - 16;
  }

  else
  {
    v56 = 0;
  }

  if (v55)
  {
    v56 = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, v55);
  }

  if (HIDWORD(v55) + v55 == v55)
  {
    v57 = 0;
  }

  else
  {
    v57 = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, 0);
  }

  v58 = EmitViewerSPI::emitNodeOutputPort(a2, @"gradient_bias", v57);
  if (v58)
  {
    [v34 addObject:v58];
  }

  v59 = [MEMORY[0x1E695DF70] array];
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v111);
  v61 = [MEMORY[0x1E695DF70] array];
  v62 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v61 addObject:v62];

  v63 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v61 addObject:v63];

  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v61 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v61 addObject:v65];

  v66 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v61 addObject:v66];

  v67 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v61 addObject:v67];

  v68 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"zgate_activation" type:@"MPSRNNActivation" cases:v61 value:PaddingStyle];
  if (v68)
  {
    [v59 addObject:v68];
  }

  v69 = mlir::mps::Conv3DOp::getPaddingStyle(&v111);
  v70 = [MEMORY[0x1E695DF70] array];
  v71 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v70 addObject:v71];

  v72 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v70 addObject:v72];

  v73 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v70 addObject:v73];

  v74 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v70 addObject:v74];

  v75 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v70 addObject:v75];

  v76 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v70 addObject:v76];

  v77 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"rgate_activation" type:@"MPSRNNActivation" cases:v70 value:v69];
  if (v77)
  {
    [v59 addObject:v77];
  }

  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v111);
  v79 = [MEMORY[0x1E695DF70] array];
  v80 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v79 addObject:v80];

  v81 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v79 addObject:v81];

  v82 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v79 addObject:v82];

  v83 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v79 addObject:v83];

  v84 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v79 addObject:v84];

  v85 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v79 addObject:v85];

  v86 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"ogate_activation" type:@"MPSRNNActivation" cases:v79 value:GateLayout];
  if (v86)
  {
    [v59 addObject:v86];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v111);
  v88 = [MEMORY[0x1E695DF70] array];
  v89 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ZRO" value:0];
  [v88 addObject:v89];

  v90 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RZO" value:1];
  [v88 addObject:v90];

  v91 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ROZ" value:2];
  [v88 addObject:v91];

  v92 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"gate_layout" type:@"MPSGRUGateLayout" cases:v88 value:Layout];
  if (v92)
  {
    [v59 addObject:v92];
  }

  LOBYTE(v112) = mlir::mps::GRUOp::getResetAfter(&v111);
  v93 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"reset_after" dataType:2147483656 shape:&unk_1F5B76550];
  if (v93)
  {
    v94 = [MEMORY[0x1E695DEF0] dataWithBytes:&v112 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v93 setValue:v94];

    [v59 addObject:v93];
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v111);
  v95 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"flip_z" dataType:2147483656 shape:&unk_1F5B76568];
  if (v95)
  {
    v96 = [MEMORY[0x1E695DEF0] dataWithBytes:&InferredResultTypes length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v95 setValue:v96];

    [v59 addObject:v95];
  }

  v97 = [MEMORY[0x1E695DF70] array];
  v98 = [MPSGraphViewerNodeSPI alloc];
  v99 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v100 = [MEMORY[0x1E695DEC8] arrayWithArray:v34];
  v101 = [MEMORY[0x1E695DEC8] arrayWithArray:v59];
  v102 = [MEMORY[0x1E695DEC8] arrayWithArray:v97];
  v103 = [(MPSGraphViewerNodeSPI *)v98 initWithType:v107 inputs:v99 outputs:v100 properties:v101 regions:v102];
  v104 = *(this + 3);
  *(this + 3) = v103;
  v105 = ;
  [*(this + 3) setLocalizedDescription:v105];

  if (v110 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E6424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGRUOpHandler *EmitterViewerSPI::MPSGRUOpHandler::MPSGRUOpHandler(EmitterViewerSPI::MPSGRUOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48A80;
  v5 = *(*(a3 + 6) + 8);
  v98 = a3;
  v99 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v99);
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

  v97 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v97 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v93 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v98, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input_sequence", *(*(v98 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v98, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"recurrent_weight", *(*(v98 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v98, 2u);
  if ((*(v98 + 46) & 0x80) != 0)
  {
    v16 = *(v98 + 9);
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
      goto LABEL_16;
    }
  }

  v18 = *(v16 + 32 * v17 + 24);
LABEL_19:
  v19 = EmitViewerSPI::emitNodeInputPort(a2, @"input_state", v18);
  if (v19)
  {
    [v10 addObject:v19];
  }

  v20 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v98, 3u);
  if ((*(v98 + 46) & 0x80) != 0)
  {
    v21 = *(v98 + 9);
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v21 = 0;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_23;
    }
  }

  v23 = *(v21 + 32 * v22 + 24);
LABEL_26:
  v24 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", v23);
  if (v24)
  {
    [v10 addObject:v24];
  }

  v25 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v98, 4u);
  if ((*(v98 + 46) & 0x80) != 0)
  {
    v26 = *(v98 + 9);
    v27 = v25;
    if (HIDWORD(v25) + v25 == v25)
    {
LABEL_30:
      v28 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v26 = 0;
    v27 = v25;
    if (HIDWORD(v25) + v25 == v25)
    {
      goto LABEL_30;
    }
  }

  v28 = *(v26 + 32 * v27 + 24);
LABEL_33:
  v29 = EmitViewerSPI::emitNodeInputPort(a2, @"bias", v28);
  if (v29)
  {
    [v10 addObject:v29];
  }

  v30 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::mps::GRUOp::getODSResultIndexAndLength(&v98, 0, v31, v32);
  if (*(v98 + 9))
  {
    NextResultAtOffset = v98 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v35 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v36 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", v35);
  if (v36)
  {
    [v30 addObject:v36];
  }

  v39 = mlir::mps::GRUOp::getODSResultIndexAndLength(&v98, 1u, v37, v38);
  if (*(v98 + 9))
  {
    v40 = v98 - 16;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v40 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, v39);
  }

  if (HIDWORD(v39) + v39 == v39)
  {
    v41 = 0;
  }

  else
  {
    v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
  }

  v42 = EmitViewerSPI::emitNodeOutputPort(a2, @"training_state", v41);
  if (v42)
  {
    [v30 addObject:v42];
  }

  v43 = [MEMORY[0x1E695DF70] array];
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v98);
  v45 = [MEMORY[0x1E695DF70] array];
  v46 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v45 addObject:v46];

  v47 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v45 addObject:v47];

  v48 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v45 addObject:v48];

  v49 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v45 addObject:v49];

  v50 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v45 addObject:v50];

  v51 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v45 addObject:v51];

  v52 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"zgate_activation" type:@"MPSRNNActivation" cases:v45 value:WeightsLayout];
  if (v52)
  {
    [v43 addObject:v52];
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v98);
  v54 = [MEMORY[0x1E695DF70] array];
  v55 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v54 addObject:v55];

  v56 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v54 addObject:v56];

  v57 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v54 addObject:v57];

  v58 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v54 addObject:v58];

  v59 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v54 addObject:v59];

  v60 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v54 addObject:v60];

  v61 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"rgate_activation" type:@"MPSRNNActivation" cases:v54 value:PaddingStyle];
  if (v61)
  {
    [v43 addObject:v61];
  }

  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v98);
  v63 = [MEMORY[0x1E695DF70] array];
  v64 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"none" value:0];
  [v63 addObject:v64];

  v65 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"relu" value:1];
  [v63 addObject:v65];

  v66 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"tanh" value:2];
  [v63 addObject:v66];

  v67 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"sigmoid" value:3];
  [v63 addObject:v67];

  v68 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"hard_sigmoid" value:4];
  [v63 addObject:v68];

  v69 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"scaled_tanh" value:5];
  [v63 addObject:v69];

  v70 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"ogate_activation" type:@"MPSRNNActivation" cases:v63 value:GateLayout];
  if (v70)
  {
    [v43 addObject:v70];
  }

  Layout = mlir::mps::SampleGridOp::getLayout(&v98);
  v72 = [MEMORY[0x1E695DF70] array];
  v73 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ZRO" value:0];
  [v72 addObject:v73];

  v74 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"RZO" value:1];
  [v72 addObject:v74];

  v75 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ROZ" value:2];
  [v72 addObject:v75];

  v76 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"gate_layout" type:@"MPSGRUGateLayout" cases:v72 value:Layout];
  if (v76)
  {
    [v43 addObject:v76];
  }

  LOBYTE(v99) = mlir::mps::GRUOp::getTraining(&v98);
  v77 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"training" dataType:2147483656 shape:&unk_1F5B76580];
  if (v77)
  {
    v78 = [MEMORY[0x1E695DEF0] dataWithBytes:&v99 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v77 setValue:v78];

    [v43 addObject:v77];
  }

  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v98);
  v79 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"reset_after" dataType:2147483656 shape:&unk_1F5B76598];
  if (v79)
  {
    v80 = [MEMORY[0x1E695DEF0] dataWithBytes:&ResetAfter length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v79 setValue:v80];

    [v43 addObject:v79];
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98);
  v81 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"flip_z" dataType:2147483656 shape:&unk_1F5B765B0];
  if (v81)
  {
    v82 = [MEMORY[0x1E695DEF0] dataWithBytes:&InferredResultTypes length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v81 setValue:v82];

    [v43 addObject:v81];
  }

  v83 = [MEMORY[0x1E695DF70] array];
  v84 = [MPSGraphViewerNodeSPI alloc];
  v85 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v86 = [MEMORY[0x1E695DEC8] arrayWithArray:v30];
  v87 = [MEMORY[0x1E695DEC8] arrayWithArray:v43];
  v88 = [MEMORY[0x1E695DEC8] arrayWithArray:v83];
  v89 = [(MPSGraphViewerNodeSPI *)v84 initWithType:v93 inputs:v85 outputs:v86 properties:v87 regions:v88];
  v90 = *(this + 3);
  *(this + 3) = v89;
  v91 = ;
  [*(this + 3) setLocalizedDescription:v91];

  if (v97 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E72DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGatherAlongAxisOpHandler *EmitterViewerSPI::MPSGatherAlongAxisOpHandler::MPSGatherAlongAxisOpHandler(EmitterViewerSPI::MPSGatherAlongAxisOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48AB0;
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

  v31 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v34 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v34 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v34 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(v34 + 9))
  {
    v15 = v34 - 16;
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
  LOBYTE(v35) = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v34);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"allow_negative_indices" dataType:2147483656 shape:&unk_1F5B765C8];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v35 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [(MPSGraphViewerNodeSPI *)v22 initWithType:v31 inputs:v23 outputs:v24 properties:v25 regions:v26];
  v28 = *(this + 3);
  *(this + 3) = v27;
  v29 = ;
  [*(this + 3) setLocalizedDescription:v29];

  if (v33 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E7944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGatherNDOpHandler *EmitterViewerSPI::MPSGatherNDOpHandler::MPSGatherNDOpHandler(EmitterViewerSPI::MPSGatherNDOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48AE0;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v33 = v11;
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v37 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v37 + 9) + 56));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v15 = v37 - 16;
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
  LODWORD(v38) = mlir::pdl_interp::CheckOperandCountOp::getCount(&v37);
  v19 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"batch_dims" dataType:32 shape:&unk_1F5B765E0];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v19 setValue:v20];

    [v18 addObject:v19];
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v37);
  v21 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"allow_negative_indices" dataType:2147483656 shape:&unk_1F5B765F8];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&InferredResultTypes length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v21 setValue:v22];

    [v18 addObject:v21];
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MPSGraphViewerNodeSPI alloc];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v26 = v10;
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v30 = [(MPSGraphViewerNodeSPI *)v24 initWithType:v26 inputs:v25 outputs:v27 properties:v28 regions:v29];
  v31 = *(this + 3);
  *(this + 3) = v30;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E7E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGatherOpHandler *EmitterViewerSPI::MPSGatherOpHandler::MPSGatherOpHandler(EmitterViewerSPI::MPSGatherOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48B10;
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

  v32 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v37 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v37 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v37 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v33 = [MEMORY[0x1E695DF70] array];
  if (*(v37 + 9))
  {
    v14 = v37 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v16)
  {
    [v33 addObject:v16];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  LODWORD(v38) = mlir::pdl_interp::CheckOperandCountOp::getCount(&v37);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"batch_dims" dataType:32 shape:&unk_1F5B76610];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v17 addObject:v18];
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v37);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"allow_negative_indices" dataType:2147483656 shape:&unk_1F5B76628];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&InferredResultTypes length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v17 addObject:v20];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v33];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v32 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;
  v30 = ;
  [*(this + 3) setLocalizedDescription:v30];

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E83C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGeluOpHandler *EmitterViewerSPI::MPSGeluOpHandler::MPSGeluOpHandler(EmitterViewerSPI::MPSGeluOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48B40;
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
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v27 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;
  v25 = ;
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E8808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGetCoordOpHandler *EmitterViewerSPI::MPSGetCoordOpHandler::MPSGetCoordOpHandler(EmitterViewerSPI::MPSGetCoordOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48B70;
  v5 = *(*(a3 + 6) + 8);
  v31 = a3;
  v32 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v32);
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"shape", *(*(v31 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v31 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v31 + 9))
  {
    v14 = v31 - 16;
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
  mlir::mps::GetCoordOp::getResultType(&v31);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"The generated values start from zero on a given axis and increase with stride of one along that axis."];
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E8C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGreaterThanOpHandler *EmitterViewerSPI::MPSGreaterThanOpHandler::MPSGreaterThanOpHandler(EmitterViewerSPI::MPSGreaterThanOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48BA0;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E9050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler *EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler::MPSGreaterThanOrEqualToOpHandler(EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48BD0;
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
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E06E946C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSHammingDistanceOpHandler *EmitterViewerSPI::MPSHammingDistanceOpHandler::MPSHammingDistanceOpHandler(EmitterViewerSPI::MPSHammingDistanceOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B48C00;
  v5 = *(*(a3 + 6) + 8);
  v31 = a3;
  v32 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v32);
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"lhs", *(*(v31 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"rhs", *(*(v31 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if (*(v31 + 9))
  {
    v14 = v31 - 16;
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
  mlir::pdl_interp::CheckTypeOp::getType(&v31);
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MPSGraphViewerNodeSPI alloc];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [(MPSGraphViewerNodeSPI *)v19 initWithType:v28 inputs:v20 outputs:v21 properties:v22 regions:v23];
  v25 = *(this + 3);
  *(this + 3) = v24;
  v26 = ;
  [*(this + 3) setLocalizedDescription:v26];

  if (v30 < 0)
  {
    operator delete(__dst);
  }

  return this;
}