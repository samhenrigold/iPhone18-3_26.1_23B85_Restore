void sub_1E07170E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSVariableFromTensorOpHandler *EmitterViewerSPI::MPSVariableFromTensorOpHandler::MPSVariableFromTensorOpHandler(EmitterViewerSPI::MPSVariableFromTensorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A550;
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

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Create and return a variable formed from input tensor. This variable will be used to make changes to the original input tensor data, and will not persist across multiple executions of the same graph."}];
  [*(this + 3) setLocalizedDescription:v25];

  if (v29 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07174D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXnorOpHandler *EmitterViewerSPI::MPSXnorOpHandler::MPSXnorOpHandler(EmitterViewerSPI::MPSXnorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A580;
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

void sub_1E07178E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXorOpHandler *EmitterViewerSPI::MPSXorOpHandler::MPSXorOpHandler(EmitterViewerSPI::MPSXorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A5B0;
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

void sub_1E0717D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ConditionOpHandler *EmitterViewerSPI::ConditionOpHandler::ConditionOpHandler(EmitterViewerSPI::ConditionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A5E0;
  v4 = *(*(a3 + 6) + 8);
  v39 = a3;
  v40 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v40);
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

  v38 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v38 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v35 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v39, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(v39 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v39, 1u);
  if ((*(v39 + 46) & 0x80) != 0)
  {
    v13 = *(v39 + 9);
    v14 = v12;
    v15 = (HIDWORD(v12) + v12);
    v16 = v15 - v12;
    if (v15 == v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    v14 = v12;
    v28 = (HIDWORD(v12) + v12);
    v16 = v28 - v12;
    if (v28 == v12)
    {
      goto LABEL_14;
    }
  }

  v29 = 0;
  v30 = v13 + 32 * v14;
  v31 = 1;
  do
  {
    v32 = *(v30 + 32 * v29 + 24);
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"args%d", v31 - 1];
    v34 = EmitViewerSPI::emitNodeInputPort(a2, v33, v32);

    if (v34)
    {
      [v9 addObject:v34];
    }

    v29 = v31++;
  }

  while (v16 > v29);
LABEL_14:

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v18];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v35 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  if (v38 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0718154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::ForOpHandler *EmitterViewerSPI::ForOpHandler::ForOpHandler(EmitterViewerSPI::ForOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A610;
  v5 = *(*(a3 + 6) + 8);
  v75 = a3;
  v76 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v76);
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

  v74 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v74 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v66 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v75, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"lowerBound", *(*(v75 + 9) + 32 * ODSOperandIndexAndLength + 24));
  v65 = this;
  v71 = v12;
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v75, 1u);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"upperBound", *(*(v75 + 9) + 32 * v13 + 24));
  v69 = v14;
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v75, 2u);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"step", *(*(v75 + 9) + 32 * v15 + 24));
  v67 = v16;
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mps::serialization::ForOp::getODSOperandIndexAndLength(&v75, 3u);
  if ((*(v75 + 46) & 0x80) != 0)
  {
    v18 = *(v75 + 9);
    v19 = v17;
    v20 = (HIDWORD(v17) + v17);
    v21 = v20 - v17;
    if (v20 == v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v18 = 0;
    v19 = v17;
    v58 = (HIDWORD(v17) + v17);
    v21 = v58 - v17;
    if (v58 == v17)
    {
      goto LABEL_18;
    }
  }

  v59 = 0;
  v60 = v18 + 32 * v19;
  v61 = 1;
  do
  {
    v62 = *(v60 + 32 * v59 + 24);
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initArgs%d", v61 - 1];
    v64 = EmitViewerSPI::emitNodeInputPort(a2, v63, v62);

    if (v64)
    {
      [v10 addObject:v64];
    }

    v59 = v61++;
  }

  while (v21 > v59);
LABEL_18:

  v72 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v75, 0);
  v23 = ODSResultIndexAndLength;
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

  v25 = (HIDWORD(v23) + v23);
  v26 = v25 - v23;
  if (v25 != v23)
  {
    v53 = 0;
    v54 = 1;
    do
    {
      v55 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v53);
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v54 - 1];
      v57 = EmitViewerSPI::emitNodeOutputPort(a2, v56, v55);

      if (v57)
      {
        [v72 addObject:v57];
      }

      v53 = v54++;
    }

    while (v26 > v53);
  }

  v68 = [MEMORY[0x1E695DF70] array];
  v70 = [MEMORY[0x1E695DF70] array];
  v27 = 0;
  v28 = (((v75 + 16 * ((*(v75 + 11) >> 23) & 1) + ((*(v75 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v75 + 10));
  while (*v28 != v28)
  {
    v29 = v28[1];
    v30 = v29 ? v29 - 8 : 0;
    if (v27 >= ((*(v30 + 56) - *(v30 + 48)) >> 3))
    {
      break;
    }

    v31 = v28[1];
    if (v31)
    {
      v32 = v31 - 8;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v32 + 48);
    v34 = *(v33 + 8 * v27);
    if (v34)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v33 + 8 * v27)))
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"region_arg%d", v27];
        EmitViewerSPI::emitNodeInputPort(a2, v35, v34);
      }

      else
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"region_arg%d", v27];
        EmitViewerSPI::emitNodeOutputPort(a2, v35, v34);
      }
      v36 = ;

      if (v36)
      {
        [v10 addObject:v36];
      }
    }

    ++v27;
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v28[1]; i != v28; i = i[1])
  {
    v48 = i - 1;
    if (!i)
    {
      v48 = 0;
    }

    v49 = v48 + 4;
    for (j = v48[5]; j != v49; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v52 = EmitViewerSPI::emitNode(a2, v51);
      if (v52)
      {
        [v37 addObject:v52];
      }
    }
  }

  v39 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"region" returnType:0 nodes:v37];
  [v70 addObject:v39];

  v40 = [MPSGraphViewerNodeSPI alloc];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v72];
  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v68];
  v44 = [MEMORY[0x1E695DEC8] arrayWithArray:v70];
  v45 = [(MPSGraphViewerNodeSPI *)v40 initWithType:v66 inputs:v41 outputs:v42 properties:v43 regions:v44];
  v46 = *(v65 + 3);
  *(v65 + 3) = v45;

  if (v74 < 0)
  {
    operator delete(__dst);
  }

  return v65;
}

void sub_1E0718910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::IfOpHandler *EmitterViewerSPI::IfOpHandler::IfOpHandler(EmitterViewerSPI::IfOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A640;
  v4 = *(*(a3 + 6) + 8);
  v73 = a3;
  v74 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v74);
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

  v72 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v72 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v66 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = EmitViewerSPI::emitNodeInputPort(a2, @"condition", *(*(v73 + 9) + 24));
  if (v10)
  {
    [v9 addObject:v10];
  }

  v70 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v73, 0);
  v12 = ODSResultIndexAndLength;
  if (*(v73 + 9))
  {
    NextResultAtOffset = v73 - 16;
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
    v61 = 0;
    v62 = 1;
    do
    {
      v63 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v61);
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v62 - 1];
      v65 = EmitViewerSPI::emitNodeOutputPort(a2, v64, v63);

      if (v65)
      {
        [v70 addObject:v65];
      }

      v61 = v62++;
    }

    while (v15 > v61);
  }

  v68 = [MEMORY[0x1E695DF70] array];
  v69 = [MEMORY[0x1E695DF70] array];
  v16 = 0;
  v17 = (((v73 + 16 * ((*(v73 + 11) >> 23) & 1) + ((*(v73 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v73 + 10));
  while (*v17 != v17)
  {
    v18 = v17[1];
    v19 = v18 ? v18 - 8 : 0;
    if (v16 >= ((*(v19 + 56) - *(v19 + 48)) >> 3))
    {
      break;
    }

    v20 = v17[1];
    if (v20)
    {
      v21 = v20 - 8;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v21 + 48);
    v23 = *(v22 + 8 * v16);
    if (v23)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v22 + 8 * v16)))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"then_arg%d", v16];
        EmitViewerSPI::emitNodeInputPort(a2, v24, v23);
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"then_arg%d", v16];
        EmitViewerSPI::emitNodeOutputPort(a2, v24, v23);
      }
      v25 = ;

      if (v25)
      {
        [v9 addObject:v25];
      }
    }

    ++v16;
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v17[1]; i != v17; i = i[1])
  {
    v28 = i - 1;
    if (!i)
    {
      v28 = 0;
    }

    v29 = v28 + 4;
    for (j = v28[5]; j != v29; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v32 = EmitViewerSPI::emitNode(a2, v31);
      if (v32)
      {
        [v26 addObject:v32];
      }
    }
  }

  v33 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"then" returnType:0 nodes:v26];
  [v69 addObject:v33];

  v34 = 0;
  v35 = ((v73 + 16 * ((*(v73 + 11) >> 23) & 1) + ((*(v73 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v73 + 10);
  v36 = (v35 + 24);
  while (*v36 != v36)
  {
    v37 = *(v35 + 32);
    v38 = v37 ? v37 - 8 : 0;
    if (v34 >= ((*(v38 + 56) - *(v38 + 48)) >> 3))
    {
      break;
    }

    v39 = *(v35 + 32);
    if (v39)
    {
      v40 = v39 - 8;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v40 + 48);
    v42 = *(v41 + 8 * v34);
    if (v42)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v41 + 8 * v34)))
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"else_arg%d", v34];
        EmitViewerSPI::emitNodeInputPort(a2, v43, v42);
      }

      else
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"else_arg%d", v34];
        EmitViewerSPI::emitNodeOutputPort(a2, v43, v42);
      }
      v44 = ;

      if (v44)
      {
        [v9 addObject:v44];
      }
    }

    ++v34;
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (k = *(v35 + 32); k != v36; k = k[1])
  {
    v47 = k - 1;
    if (!k)
    {
      v47 = 0;
    }

    v48 = v47 + 4;
    for (m = v47[5]; m != v48; m = m[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v51 = EmitViewerSPI::emitNode(a2, v50);
      if (v51)
      {
        [v45 addObject:v51];
      }
    }
  }

  v52 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"else" returnType:0 nodes:v45];
  [v69 addObject:v52];

  v53 = [MPSGraphViewerNodeSPI alloc];
  v54 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v55 = [MEMORY[0x1E695DEC8] arrayWithArray:v70];
  v56 = [MEMORY[0x1E695DEC8] arrayWithArray:v68];
  v57 = [MEMORY[0x1E695DEC8] arrayWithArray:v69];
  v58 = [(MPSGraphViewerNodeSPI *)v53 initWithType:v66 inputs:v54 outputs:v55 properties:v56 regions:v57];
  v59 = *(this + 3);
  *(this + 3) = v58;

  if (v72 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07191F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSExtractOpHandler *EmitterViewerSPI::MPSExtractOpHandler::MPSExtractOpHandler(EmitterViewerSPI::MPSExtractOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A670;
  v4 = *(*(a3 + 6) + 8);
  v42 = a3;
  v43 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v43);
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

  v41 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v41 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v38 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v42, 0);
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"tensor", *(*(v42 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = mlir::mps::serialization::ConditionOp::getODSOperandIndexAndLength(&v42, 1u);
  if ((*(v42 + 46) & 0x80) != 0)
  {
    v13 = *(v42 + 9);
    v14 = v12;
    v15 = (HIDWORD(v12) + v12);
    v16 = v15 - v12;
    if (v15 == v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    v14 = v12;
    v31 = (HIDWORD(v12) + v12);
    v16 = v31 - v12;
    if (v31 == v12)
    {
      goto LABEL_14;
    }
  }

  v32 = 0;
  v33 = v13 + 32 * v14;
  v34 = 1;
  do
  {
    v35 = *(v33 + 32 * v32 + 24);
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"indices%d", v34 - 1];
    v37 = EmitViewerSPI::emitNodeInputPort(a2, v36, v35);

    if (v37)
    {
      [v9 addObject:v37];
    }

    v32 = v34++;
  }

  while (v16 > v32);
LABEL_14:

  v17 = [MEMORY[0x1E695DF70] array];
  if (*(v42 + 9))
  {
    v18 = v42 - 16;
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
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MPSGraphViewerNodeSPI alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v21];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v22];
  v28 = [(MPSGraphViewerNodeSPI *)v23 initWithType:v38 inputs:v24 outputs:v25 properties:v26 regions:v27];
  v29 = *(this + 3);
  *(this + 3) = v28;

  if (v41 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0719734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFromElementsOpHandler *EmitterViewerSPI::MPSFromElementsOpHandler::MPSFromElementsOpHandler(EmitterViewerSPI::MPSFromElementsOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A6A0;
  v4 = *(*(a3 + 6) + 8);
  v40 = a3;
  v41 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v41);
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

  v39 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v39 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v36 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v40, 0);
  if ((*(v40 + 46) & 0x80) != 0)
  {
    v11 = *(v40 + 9);
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
    v29 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v29 - ODSOperandIndexAndLength;
    if (v29 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v30 = 0;
  v31 = v11 + 32 * v12;
  v32 = 1;
  do
  {
    v33 = *(v31 + 32 * v30 + 24);
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"elements%d", v32 - 1];
    v35 = EmitViewerSPI::emitNodeInputPort(a2, v34, v33);

    if (v35)
    {
      [v9 addObject:v35];
    }

    v30 = v32++;
  }

  while (v14 > v30);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  if (*(v40 + 9))
  {
    v16 = v40 - 16;
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
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v26 = [(MPSGraphViewerNodeSPI *)v21 initWithType:v36 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  if (v39 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0719B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSFuncOpHandler *EmitterViewerSPI::MPSFuncOpHandler::MPSFuncOpHandler(EmitterViewerSPI::MPSFuncOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A6D0;
  v55 = a3;
  v50[0] = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v50);
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

  v54 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v54 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  SymName = mlir::func::FuncOp::getSymName(&v55);
  v14 = EmitViewerSPI::emitStringProperty(@"sym_name", SymName, v13);
  if (v14)
  {
    [v48 addObject:v14];
  }

  v46 = this;
  v47 = v9;
  v15 = 0;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v55);
  while (v15 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v16 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v15);
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v15];
    v18 = EmitViewerSPI::emitNodeOutputPort(v17, v16);

    if (v18)
    {
      [v11 addObject:v18];
    }

    ++v15;
  }

  mlir::mps::serialization::FuncOp::getSymVisibility(&v55, v50);
  if (v51 == 1)
  {
    v19 = EmitViewerSPI::emitStringProperty(@"sym_visibility", v50[0], v50[1]);
    if (v19)
    {
      [v48 addObject:v19];
    }
  }

  v49 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v55 + 16 * ((*(v55 + 11) >> 23) & 1) + ((*(v55 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v55 + 10));
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
        [v10 addObject:v29];
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

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"mps.return" nodes:v30];
  [v49 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(v46 + 3);
  *(v46 + 3) = v43;

  if (v54 < 0)
  {
    operator delete(__dst);
  }

  return v46;
}

void sub_1E071A1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSModuleOpHandler *EmitterViewerSPI::MPSModuleOpHandler::MPSModuleOpHandler(EmitterViewerSPI::MPSModuleOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A700;
  v49 = a3;
  v45[0] = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v45);
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

  v48 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v48 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF70] array];
  mlir::mps::serialization::ModuleOp::getSymName(&v49, v45);
  if (v46 == 1)
  {
    v11 = EmitViewerSPI::emitStringProperty(@"sym_name", v45[0], v45[1]);
    if (v11)
    {
      [v41 addObject:v11];
    }
  }

  mlir::pdl::OperationOp::getOpName(v43, &v49);
  if (v44 == 1)
  {
    v12 = EmitViewerSPI::emitStringProperty(@"sym_visibility", v43[0], v43[1]);
    if (v12)
    {
      [v41 addObject:v12];
    }
  }

  v39 = v9;
  v42 = [MEMORY[0x1E695DF70] array];
  v13 = 0;
  v14 = (((v49 + 16 * ((*(v49 + 11) >> 23) & 1) + ((*(v49 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v49 + 10));
  while (*v14 != v14)
  {
    v15 = v14[1];
    v16 = v15 ? v15 - 8 : 0;
    if (v13 >= ((*(v16 + 56) - *(v16 + 48)) >> 3))
    {
      break;
    }

    v17 = v14[1];
    if (v17)
    {
      v18 = v17 - 8;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 48);
    v20 = *(v19 + 8 * v13);
    if (v20)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v19 + 8 * v13)))
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v13];
        EmitViewerSPI::emitNodeInputPort(a2, v21, v20);
      }

      else
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v13];
        EmitViewerSPI::emitNodeOutputPort(a2, v21, v20);
      }
      v22 = ;

      if (v22)
      {
        [v10 addObject:v22];
      }
    }

    ++v13;
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v14[1]; i != v14; i = i[1])
  {
    v25 = i - 1;
    if (!i)
    {
      v25 = 0;
    }

    v26 = v25 + 4;
    for (j = v25[5]; j != v26; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v29 = EmitViewerSPI::emitNode(a2, v28);
      if (v29)
      {
        [v23 addObject:v29];
      }
    }
  }

  v30 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v23];
  [v42 addObject:v30];

  v31 = [MPSGraphViewerNodeSPI alloc];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v40];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v41];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v42];
  v36 = [(MPSGraphViewerNodeSPI *)v31 initWithType:v39 inputs:v32 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;

  if (v48 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071A7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSReturnOpHandler *EmitterViewerSPI::MPSReturnOpHandler::MPSReturnOpHandler(EmitterViewerSPI::MPSReturnOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A730;
  v4 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v4;
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

  v36 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v37, 0);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v11 = *(v37 + 9);
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
    v26 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v26 - ODSOperandIndexAndLength;
    if (v26 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
  v28 = v11 + 32 * v12;
  v29 = 1;
  do
  {
    v30 = *(v28 + 32 * v27 + 24);
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"operands%d", v29 - 1];
    v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v30);

    if (v32)
    {
      [v9 addObject:v32];
    }

    v27 = v29++;
  }

  while (v14 > v27);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v33 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071AC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::WhileOpHandler *EmitterViewerSPI::WhileOpHandler::WhileOpHandler(EmitterViewerSPI::WhileOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A760;
  v4 = *(*(a3 + 6) + 8);
  v84 = a3;
  v85 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v85);
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

  v83 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v83 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v77 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v84, 0);
  if ((*(v84 + 46) & 0x80) != 0)
  {
    v11 = *(v84 + 9);
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
    v70 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v70 - ODSOperandIndexAndLength;
    if (v70 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v71 = 0;
  v72 = v11 + 32 * v12;
  v73 = 1;
  do
  {
    v74 = *(v72 + 32 * v71 + 24);
    v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inits%d", v73 - 1];
    v76 = EmitViewerSPI::emitNodeInputPort(a2, v75, v74);

    if (v76)
    {
      [v9 addObject:v76];
    }

    v71 = v73++;
  }

  while (v14 > v71);
LABEL_12:
  v81 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v84, 0);
  v16 = ODSResultIndexAndLength;
  if (*(v84 + 9))
  {
    NextResultAtOffset = v84 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v18 = (HIDWORD(v16) + v16);
  v19 = v18 - v16;
  if (v18 != v16)
  {
    v65 = 0;
    v66 = 1;
    do
    {
      v67 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v65);
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v66 - 1];
      v69 = EmitViewerSPI::emitNodeOutputPort(a2, v68, v67);

      if (v69)
      {
        [v81 addObject:v69];
      }

      v65 = v66++;
    }

    while (v19 > v65);
  }

  v79 = [MEMORY[0x1E695DF70] array];
  v80 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v84 + 16 * ((*(v84 + 11) >> 23) & 1) + ((*(v84 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v84 + 10));
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
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"before_arg%d", v20];
        EmitViewerSPI::emitNodeInputPort(a2, v28, v27);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"before_arg%d", v20];
        EmitViewerSPI::emitNodeOutputPort(a2, v28, v27);
      }
      v29 = ;

      if (v29)
      {
        [v9 addObject:v29];
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

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"before" returnType:0 nodes:v30];
  [v80 addObject:v37];

  v38 = 0;
  v39 = ((v84 + 16 * ((*(v84 + 11) >> 23) & 1) + ((*(v84 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v84 + 10);
  v40 = (v39 + 24);
  while (*v40 != v40)
  {
    v41 = *(v39 + 32);
    v42 = v41 ? v41 - 8 : 0;
    if (v38 >= ((*(v42 + 56) - *(v42 + 48)) >> 3))
    {
      break;
    }

    v43 = *(v39 + 32);
    if (v43)
    {
      v44 = v43 - 8;
    }

    else
    {
      v44 = 0;
    }

    v45 = *(v44 + 48);
    v46 = *(v45 + 8 * v38);
    if (v46)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v45 + 8 * v38)))
      {
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"after_arg%d", v38];
        EmitViewerSPI::emitNodeInputPort(a2, v47, v46);
      }

      else
      {
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"after_arg%d", v38];
        EmitViewerSPI::emitNodeOutputPort(a2, v47, v46);
      }
      v48 = ;

      if (v48)
      {
        [v9 addObject:v48];
      }
    }

    ++v38;
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (k = *(v39 + 32); k != v40; k = k[1])
  {
    v51 = k - 1;
    if (!k)
    {
      v51 = 0;
    }

    v52 = v51 + 4;
    for (m = v51[5]; m != v52; m = m[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v55 = EmitViewerSPI::emitNode(a2, v54);
      if (v55)
      {
        [v49 addObject:v55];
      }
    }
  }

  v56 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"after" returnType:0 nodes:v49];
  [v80 addObject:v56];

  v57 = [MPSGraphViewerNodeSPI alloc];
  v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v59 = [MEMORY[0x1E695DEC8] arrayWithArray:v81];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v79];
  v61 = [MEMORY[0x1E695DEC8] arrayWithArray:v80];
  v62 = [(MPSGraphViewerNodeSPI *)v57 initWithType:v77 inputs:v58 outputs:v59 properties:v60 regions:v61];
  v63 = *(this + 3);
  *(this + 3) = v62;

  if (v83 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071B4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::YieldOpHandler *EmitterViewerSPI::YieldOpHandler::YieldOpHandler(EmitterViewerSPI::YieldOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A790;
  v4 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v4;
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

  v36 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v37, 0);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v11 = *(v37 + 9);
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
    v26 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v26 - ODSOperandIndexAndLength;
    if (v26 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
  v28 = v11 + 32 * v12;
  v29 = 1;
  do
  {
    v30 = *(v28 + 32 * v27 + 24);
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v29 - 1];
    v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v30);

    if (v32)
    {
      [v9 addObject:v32];
    }

    v27 = v29++;
  }

  while (v14 > v27);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v33 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071B960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXANEOpHandler *EmitterViewerSPI::MPSXANEOpHandler::MPSXANEOpHandler(EmitterViewerSPI::MPSXANEOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A7C0;
  v4 = *(*(a3 + 6) + 8);
  v53 = a3;
  FunctionType = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v52 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v52 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v46 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  v11 = 0;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v53);
  while (v11 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v12 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v11);
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v11];
    v14 = EmitViewerSPI::emitNodeOutputPort(v13, v12);

    if (v14)
    {
      [v10 addObject:v14];
    }

    ++v11;
  }

  AneFamily = mlir::mpsx::ANEOp::getAneFamily(&v53);
  v17 = EmitViewerSPI::emitStringProperty(@"ane_family", AneFamily, v16);
  if (v17)
  {
    [v49 addObject:v17];
  }

  IsExternal = mlir::mpsx::ANEOp::getIsExternal(&v53);
  v18 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"is_external" dataType:2147483656 shape:&unk_1F5B76D90];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsExternal length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v18 setValue:v19];

    [v49 addObject:v18];
  }

  mlir::mpsx::ANEOp::getReadDataFromFileInfos(&v53);

  v48 = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = (((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10));
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
        [v9 addObject:v29];
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

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v30];
  [v48 addObject:v37];

  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v46 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(this + 3);
  *(this + 3) = v43;

  if (v52 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071BFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXBufferToTensorOpHandler *EmitterViewerSPI::MPSXBufferToTensorOpHandler::MPSXBufferToTensorOpHandler(EmitterViewerSPI::MPSXBufferToTensorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A7F0;
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

  v41 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
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
  Shape = mlir::mpsx::BufferToTensorOp::getShape(&v45);
  if (v18)
  {
    v19 = Shape;
    if (Shape)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Shape + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = EmitViewerSPI::emitElementsAttrProperty(@"shape", v19, v20);
    if (v21)
    {
      [v16 addObject:v21];
    }
  }

  mlir::mpsx::BufferToTensorOp::getResultElementType(&v45);
  Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v45);
  if (v23)
  {
    v24 = Interleave;
    if (Interleave)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Interleave + 8);
    }

    else
    {
      v25 = 0;
    }

    v26 = EmitViewerSPI::emitElementsAttrProperty(@"interleave", v24, v25);
    if (v26)
    {
      [v16 addObject:v26];
    }
  }

  LOBYTE(v46) = mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v45);
  v27 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"isTensorBufferOp" dataType:2147483656 shape:&unk_1F5B76DA8];
  if (v27)
  {
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v16 addObject:v27];
  }

  IsChannelAndInterleaveSame = mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSame(&v45);
  v29 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"isChannelAndInterleaveSame" dataType:2147483656 shape:&unk_1F5B76DC0];
  if (v29)
  {
    v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsChannelAndInterleaveSame length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v29 setValue:v30];

    [v16 addObject:v29];
  }

  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [MPSGraphViewerNodeSPI alloc];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v37 = [(MPSGraphViewerNodeSPI *)v32 initWithType:v41 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Converts a buffer to a tensor for MIL tensor buffer ops."];
  [*(this + 3) setLocalizedDescription:v39];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071C5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXCPUOpHandler *EmitterViewerSPI::MPSXCPUOpHandler::MPSXCPUOpHandler(EmitterViewerSPI::MPSXCPUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A820;
  v4 = *(*(a3 + 6) + 8);
  v48 = a3;
  FunctionType = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v47 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v47 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v43 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v42 = [MEMORY[0x1E695DF70] array];
  v11 = 0;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v48);
  while (v11 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v12 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v11);
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v11];
    v14 = EmitViewerSPI::emitNodeOutputPort(v13, v12);

    if (v14)
    {
      [v10 addObject:v14];
    }

    ++v11;
  }

  v44 = [MEMORY[0x1E695DF70] array];
  v15 = 0;
  v16 = (((v48 + 16 * ((*(v48 + 11) >> 23) & 1) + ((*(v48 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v48 + 10));
  while (*v16 != v16)
  {
    v17 = v16[1];
    v18 = v17 ? v17 - 8 : 0;
    if (v15 >= ((*(v18 + 56) - *(v18 + 48)) >> 3))
    {
      break;
    }

    v19 = v16[1];
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v22 = *(v21 + 8 * v15);
    if (v22)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v21 + 8 * v15)))
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v15];
        EmitViewerSPI::emitNodeInputPort(a2, v23, v22);
      }

      else
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v15];
        EmitViewerSPI::emitNodeOutputPort(a2, v23, v22);
      }
      v24 = ;

      if (v24)
      {
        [v9 addObject:v24];
      }
    }

    ++v15;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v16[1]; i != v16; i = i[1])
  {
    v27 = i - 1;
    if (!i)
    {
      v27 = 0;
    }

    v28 = v27 + 4;
    for (j = v27[5]; j != v28; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v31 = EmitViewerSPI::emitNode(a2, v30);
      if (v31)
      {
        [v25 addObject:v31];
      }
    }
  }

  v32 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v25];
  [v44 addObject:v32];

  v33 = [MPSGraphViewerNodeSPI alloc];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v42];
  v37 = [MEMORY[0x1E695DEC8] arrayWithArray:v44];
  v38 = [(MPSGraphViewerNodeSPI *)v33 initWithType:v43 inputs:v34 outputs:v35 properties:v36 regions:v37];
  v39 = *(this + 3);
  *(this + 3) = v38;

  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Container that represents a region of ops that will run on the CPU."];
  [*(this + 3) setLocalizedDescription:v40];

  if (v47 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071CC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXDeinterleaveOpHandler *EmitterViewerSPI::MPSXDeinterleaveOpHandler::MPSXDeinterleaveOpHandler(EmitterViewerSPI::MPSXDeinterleaveOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A850;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v32 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v32 + 9))
  {
    v13 = v32 - 16;
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
  LODWORD(v33) = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v32);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"interleave_factor" dataType:32 shape:&unk_1F5B76DD8];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v33 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Create a deinterleave op. Input is expected to be in NCHW or NDCHW data layout. The data layout will be transformed from N[D](C/I)H(W*I) to N[D]CHW."];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXFPToIntClampedOpHandler *EmitterViewerSPI::MPSXFPToIntClampedOpHandler::MPSXFPToIntClampedOpHandler(EmitterViewerSPI::MPSXFPToIntClampedOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A880;
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
  mlir::mpsx::FPToIntClampedOp::getResultElementType(&v30);
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

void sub_1E071D4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXFusionOpHandler *EmitterViewerSPI::MPSXFusionOpHandler::MPSXFusionOpHandler(EmitterViewerSPI::MPSXFusionOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A8B0;
  v75 = a3;
  v71[0] = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v71);
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

  v74 = v5;
  if (v5)
  {
    memmove(&__dst, AttrData, v5);
  }

  *(&__dst + v6) = 0;
  if (v74 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v66 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v8 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v75, 0);
  if ((*(v75 + 46) & 0x80) != 0)
  {
    v10 = *(v75 + 9);
    v11 = ODSOperandIndexAndLength;
    v12 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v13 = v12 - ODSOperandIndexAndLength;
    if (v12 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v11 = ODSOperandIndexAndLength;
    v59 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v13 = v59 - ODSOperandIndexAndLength;
    if (v59 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v60 = 0;
  v61 = v10 + 32 * v11;
  v62 = 1;
  do
  {
    v63 = *(v61 + 32 * v60 + 24);
    v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs%d", v62 - 1];
    v65 = EmitViewerSPI::emitNodeInputPort(a2, v64, v63);

    if (v65)
    {
      [v8 addObject:v65];
    }

    v60 = v62++;
  }

  while (v13 > v60);
LABEL_12:
  v70 = [MEMORY[0x1E695DF70] array];
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v75, 0);
  v15 = ODSResultIndexAndLength;
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

  v17 = (HIDWORD(v15) + v15);
  v18 = v17 - v15;
  if (v17 != v15)
  {
    v54 = 0;
    v55 = 1;
    do
    {
      v56 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v54);
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v55 - 1];
      v58 = EmitViewerSPI::emitNodeOutputPort(a2, v57, v56);

      if (v58)
      {
        [v70 addObject:v58];
      }

      v54 = v55++;
    }

    while (v18 > v54);
  }

  v67 = [MEMORY[0x1E695DF70] array];
  FusionType = mlir::mpsx::FusionOp::getFusionType(&v75);
  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"custom" value:0];
  [v20 addObject:v21];

  v22 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"QuantizedConv2D" value:1];
  [v20 addObject:v22];

  v23 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"QuantizedGatherND" value:2];
  [v20 addObject:v23];

  v24 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"QuantizedMatMul" value:3];
  [v20 addObject:v24];

  v25 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"fusionType" type:@"MPSXFusionType" cases:v20 value:FusionType];
  if (v25)
  {
    [v67 addObject:v25];
  }

  mlir::mpsx::FusionOp::getCustomFusionType(v71, &v75);
  if (v72 == 1)
  {
    v26 = EmitViewerSPI::emitStringProperty(@"customFusionType", v71[0], v71[1]);
    if (v26)
    {
      [v67 addObject:v26];
    }
  }

  v68 = [MEMORY[0x1E695DF70] array];
  v27 = 0;
  v28 = (((v75 + 16 * ((*(v75 + 11) >> 23) & 1) + ((*(v75 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v75 + 10));
  while (*v28 != v28)
  {
    v29 = v28[1];
    v30 = v29 ? v29 - 8 : 0;
    if (v27 >= ((*(v30 + 56) - *(v30 + 48)) >> 3))
    {
      break;
    }

    v31 = v28[1];
    if (v31)
    {
      v32 = v31 - 8;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v32 + 48);
    v34 = *(v33 + 8 * v27);
    if (v34)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v33 + 8 * v27)))
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"op_arg%d", v27];
        EmitViewerSPI::emitNodeInputPort(a2, v35, v34);
      }

      else
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"op_arg%d", v27];
        EmitViewerSPI::emitNodeOutputPort(a2, v35, v34);
      }
      v36 = ;

      if (v36)
      {
        [v8 addObject:v36];
      }
    }

    ++v27;
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v28[1]; i != v28; i = i[1])
  {
    v39 = i - 1;
    if (!i)
    {
      v39 = 0;
    }

    v40 = v39 + 4;
    for (j = v39[5]; j != v40; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v43 = EmitViewerSPI::emitNode(a2, v42);
      if (v43)
      {
        [v37 addObject:v43];
      }
    }
  }

  v44 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"op" returnType:0 nodes:v37];
  [v68 addObject:v44];

  v45 = [MPSGraphViewerNodeSPI alloc];
  v46 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  v47 = [MEMORY[0x1E695DEC8] arrayWithArray:v70];
  v48 = [MEMORY[0x1E695DEC8] arrayWithArray:v67];
  v49 = [MEMORY[0x1E695DEC8] arrayWithArray:v68];
  v50 = [(MPSGraphViewerNodeSPI *)v45 initWithType:v66 inputs:v46 outputs:v47 properties:v48 regions:v49];
  v51 = *(this + 3);
  *(this + 3) = v50;

  v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Represents a set of operations that is clustered together."];
  [*(this + 3) setLocalizedDescription:v52];

  if (v74 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071DD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXFusionReturnOpHandler *EmitterViewerSPI::MPSXFusionReturnOpHandler::MPSXFusionReturnOpHandler(EmitterViewerSPI::MPSXFusionReturnOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A8E0;
  v4 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
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

  v37 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v38, 0);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v11 = *(v38 + 9);
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
    v27 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v27 - ODSOperandIndexAndLength;
    if (v27 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v28 = 0;
  v29 = v11 + 32 * v12;
  v30 = 1;
  do
  {
    v31 = *(v29 + 32 * v28 + 24);
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v30 - 1];
    v33 = EmitViewerSPI::emitNodeInputPort(a2, v32, v31);

    if (v33)
    {
      [v9 addObject:v33];
    }

    v28 = v30++;
  }

  while (v14 > v28);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v34 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"The return operation represents a return operation within a fused region."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071E230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXGPUOpHandler *EmitterViewerSPI::MPSXGPUOpHandler::MPSXGPUOpHandler(EmitterViewerSPI::MPSXGPUOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A910;
  v4 = *(*(a3 + 6) + 8);
  v48 = a3;
  FunctionType = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&FunctionType);
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

  v47 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v47 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v43 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v42 = [MEMORY[0x1E695DF70] array];
  v11 = 0;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v48);
  while (v11 < mlir::FunctionType::getNumResults(&FunctionType))
  {
    v12 = *(mlir::FunctionType::getResults(&FunctionType) + 8 * v11);
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result%d", v11];
    v14 = EmitViewerSPI::emitNodeOutputPort(v13, v12);

    if (v14)
    {
      [v10 addObject:v14];
    }

    ++v11;
  }

  v44 = [MEMORY[0x1E695DF70] array];
  v15 = 0;
  v16 = (((v48 + 16 * ((*(v48 + 11) >> 23) & 1) + ((*(v48 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v48 + 10));
  while (*v16 != v16)
  {
    v17 = v16[1];
    v18 = v17 ? v17 - 8 : 0;
    if (v15 >= ((*(v18 + 56) - *(v18 + 48)) >> 3))
    {
      break;
    }

    v19 = v16[1];
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v22 = *(v21 + 8 * v15);
    if (v22)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v21 + 8 * v15)))
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v15];
        EmitViewerSPI::emitNodeInputPort(a2, v23, v22);
      }

      else
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"body_arg%d", v15];
        EmitViewerSPI::emitNodeOutputPort(a2, v23, v22);
      }
      v24 = ;

      if (v24)
      {
        [v9 addObject:v24];
      }
    }

    ++v15;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v16[1]; i != v16; i = i[1])
  {
    v27 = i - 1;
    if (!i)
    {
      v27 = 0;
    }

    v28 = v27 + 4;
    for (j = v27[5]; j != v28; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v31 = EmitViewerSPI::emitNode(a2, v30);
      if (v31)
      {
        [v25 addObject:v31];
      }
    }
  }

  v32 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:@"mpsx.region_return" nodes:v25];
  [v44 addObject:v32];

  v33 = [MPSGraphViewerNodeSPI alloc];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v42];
  v37 = [MEMORY[0x1E695DEC8] arrayWithArray:v44];
  v38 = [(MPSGraphViewerNodeSPI *)v33 initWithType:v43 inputs:v34 outputs:v35 properties:v36 regions:v37];
  v39 = *(this + 3);
  *(this + 3) = v38;

  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Container that represents a region of ops that will run on the GPU."];
  [*(this + 3) setLocalizedDescription:v40];

  if (v47 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071E7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXInterleaveOpHandler *EmitterViewerSPI::MPSXInterleaveOpHandler::MPSXInterleaveOpHandler(EmitterViewerSPI::MPSXInterleaveOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A940;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v32 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v32 + 9))
  {
    v13 = v32 - 16;
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
  LODWORD(v33) = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v32);
  v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"interleave_factor" dataType:32 shape:&unk_1F5B76DF0];
  if (v17)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v33 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

    [v16 addObject:v17];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Create an interleave op. The input is expected to be in NCHW or NDCHW data layout. The data layout will be transformed from N[D]CHW to N[D](C/I)H(W*I). This operation should only be used to be folded with an ANE Region op. Interleave factors 1, 2, 4, 8 are natively supported by ANE. Interleave factors in between can be used if the I/O buffers are aligned and filled properly."}];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E071ECB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXListPopBackOpHandler *EmitterViewerSPI::MPSXListPopBackOpHandler::MPSXListPopBackOpHandler(EmitterViewerSPI::MPSXListPopBackOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A970;
  v34 = *(*(a3 + 6) + 8);
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input_list", *(*(a3 + 9) + 24));
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output_list", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  if (*(a3 + 9))
  {
    v16 = a3 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 1);
  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  v19 = EmitViewerSPI::emitNodeOutputPort(a2, @"element", v18);
  if (v19)
  {
    [v12 addObject:v19];
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
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

void sub_1E071F0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXListPushBackOpHandler *EmitterViewerSPI::MPSXListPushBackOpHandler::MPSXListPushBackOpHandler(EmitterViewerSPI::MPSXListPushBackOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A9A0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input_list", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"element", *(*(a3 + 9) + 56));
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

void sub_1E071F524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXMakeListOpHandler *EmitterViewerSPI::MPSXMakeListOpHandler::MPSXMakeListOpHandler(EmitterViewerSPI::MPSXMakeListOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4A9D0;
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
  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v33 + 9))
  {
    v12 = v33 - 16;
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
  mlir::mpsx::FPToIntClampedOp::getResultElementType(&v33);
  MaxSize = mlir::mpsx::MakeListOp::getMaxSize(&v33);
  LODWORD(v34) = MaxSize;
  BYTE4(v34) = BYTE4(MaxSize);
  if ((MaxSize & 0x100000000) != 0)
  {
    v17 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"max_size" dataType:32 shape:&unk_1F5B76E08];
    if (v17)
    {
      if ((v34 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v17 setValue:v18];

      [v15 addObject:v17];
    }
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = v11;
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v26 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v30 inputs:v21 outputs:v23 properties:v24 regions:v25];
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

void sub_1E071F978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXMemrefBackedOpHandler *EmitterViewerSPI::MPSXMemrefBackedOpHandler::MPSXMemrefBackedOpHandler(EmitterViewerSPI::MPSXMemrefBackedOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AA00;
  v5 = *(*(a3 + 6) + 8);
  v57 = a3;
  v58 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v58);
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

  v56 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v56 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v54 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v57, 0);
  v53 = this;
  if ((*(v57 + 46) & 0x80) != 0)
  {
    v12 = *(v57 + 9);
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
    v43 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v15 = v43 - ODSOperandIndexAndLength;
    if (v43 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v44 = 0;
  v45 = v12 + 32 * v13;
  v46 = 1;
  do
  {
    v47 = *(v45 + 32 * v44 + 24);
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs%d", v46 - 1];
    v49 = EmitViewerSPI::emitNodeInputPort(a2, v48, v47);

    if (v49)
    {
      [v10 addObject:v49];
    }

    v44 = v46++;
  }

  while (v15 > v44);
LABEL_12:
  v52 = [MEMORY[0x1E695DF70] array];
  v51 = [MEMORY[0x1E695DF70] array];
  v50 = [MEMORY[0x1E695DF70] array];
  v16 = 0;
  v17 = (((v57 + 16 * ((*(v57 + 11) >> 23) & 1) + ((*(v57 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v57 + 10));
  while (*v17 != v17)
  {
    v18 = v17[1];
    v19 = v18 ? v18 - 8 : 0;
    if (v16 >= ((*(v19 + 56) - *(v19 + 48)) >> 3))
    {
      break;
    }

    v20 = v17[1];
    if (v20)
    {
      v21 = v20 - 8;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v21 + 48);
    v23 = *(v22 + 8 * v16);
    if (v23)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v22 + 8 * v16)))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"op_arg%d", v16];
        EmitViewerSPI::emitNodeInputPort(a2, v24, v23);
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"op_arg%d", v16];
        EmitViewerSPI::emitNodeOutputPort(a2, v24, v23);
      }
      v25 = ;

      if (v25)
      {
        [v10 addObject:v25];
      }
    }

    ++v16;
  }

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v17[1]; i != v17; i = i[1])
  {
    v38 = i - 1;
    if (!i)
    {
      v38 = 0;
    }

    v39 = v38 + 4;
    for (j = v38[5]; j != v39; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v42 = EmitViewerSPI::emitNode(a2, v41);
      if (v42)
      {
        [v26 addObject:v42];
      }
    }
  }

  v28 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"op" returnType:0 nodes:v26];
  [v50 addObject:v28];

  v29 = [MPSGraphViewerNodeSPI alloc];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v52];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v51];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
  v34 = [(MPSGraphViewerNodeSPI *)v29 initWithType:v54 inputs:v30 outputs:v31 properties:v32 regions:v33];
  v35 = *(v53 + 3);
  *(v53 + 3) = v34;

  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Marks a region of ops which are using memrefs."];
  [*(v53 + 3) setLocalizedDescription:v36];

  if (v56 < 0)
  {
    operator delete(__dst);
  }

  return v53;
}

void sub_1E071FFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXQuantizedConv2DOpHandler *EmitterViewerSPI::MPSXQuantizedConv2DOpHandler::MPSXQuantizedConv2DOpHandler(EmitterViewerSPI::MPSXQuantizedConv2DOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AA30;
  v5 = *(*(a3 + 6) + 8);
  v138 = a3;
  v139 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v139);
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

  v137 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v137 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v131 = v10;
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 0);
  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v138 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 1);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v15 = *(v138 + 9);
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
LABEL_14:
      v17 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
      goto LABEL_14;
    }
  }

  v17 = *(v15 + 32 * v16 + 24);
LABEL_17:
  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"input_scale", v17);
  if (v18)
  {
    [v11 addObject:v18];
  }

  v19 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 2);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v20 = *(v138 + 9);
    v21 = v19;
    if (HIDWORD(v19) + v19 == v19)
    {
LABEL_21:
      v22 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v20 = 0;
    v21 = v19;
    if (HIDWORD(v19) + v19 == v19)
    {
      goto LABEL_21;
    }
  }

  v22 = *(v20 + 32 * v21 + 24);
LABEL_24:
  v23 = EmitViewerSPI::emitNodeInputPort(a2, @"input_zero_point", v22);
  if (v23)
  {
    [v11 addObject:v23];
  }

  v24 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 3);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v25 = *(v138 + 9);
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
LABEL_28:
      v27 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v25 = 0;
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
      goto LABEL_28;
    }
  }

  v27 = *(v25 + 32 * v26 + 24);
LABEL_31:
  v28 = EmitViewerSPI::emitNodeInputPort(a2, @"input_min", v27);
  if (v28)
  {
    [v11 addObject:v28];
  }

  v29 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 4);
  v30 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v138 + 9) + 32 * v29 + 24));
  if (v30)
  {
    [v11 addObject:v30];
  }

  v31 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 5);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v32 = *(v138 + 9);
    v33 = v31;
    if (HIDWORD(v31) + v31 == v31)
    {
LABEL_37:
      v34 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v32 = 0;
    v33 = v31;
    if (HIDWORD(v31) + v31 == v31)
    {
      goto LABEL_37;
    }
  }

  v34 = *(v32 + 32 * v33 + 24);
LABEL_40:
  v35 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_scale", v34);
  if (v35)
  {
    [v11 addObject:v35];
  }

  v36 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 6);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v37 = *(v138 + 9);
    v38 = v36;
    if (HIDWORD(v36) + v36 == v36)
    {
LABEL_44:
      v39 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v37 = 0;
    v38 = v36;
    if (HIDWORD(v36) + v36 == v36)
    {
      goto LABEL_44;
    }
  }

  v39 = *(v37 + 32 * v38 + 24);
LABEL_47:
  v40 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_zero_point", v39);
  if (v40)
  {
    [v11 addObject:v40];
  }

  v41 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 7);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v42 = *(v138 + 9);
    v43 = v41;
    if (HIDWORD(v41) + v41 == v41)
    {
LABEL_51:
      v44 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v42 = 0;
    v43 = v41;
    if (HIDWORD(v41) + v41 == v41)
    {
      goto LABEL_51;
    }
  }

  v44 = *(v42 + 32 * v43 + 24);
LABEL_54:
  v45 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_min", v44);
  if (v45)
  {
    [v11 addObject:v45];
  }

  v46 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 8);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v47 = *(v138 + 9);
    v48 = v46;
    if (HIDWORD(v46) + v46 == v46)
    {
LABEL_58:
      v49 = 0;
      goto LABEL_61;
    }
  }

  else
  {
    v47 = 0;
    v48 = v46;
    if (HIDWORD(v46) + v46 == v46)
    {
      goto LABEL_58;
    }
  }

  v49 = *(v47 + 32 * v48 + 24);
LABEL_61:
  v50 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_palette_lut", v49);
  if (v50)
  {
    [v11 addObject:v50];
  }

  v51 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 9);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v52 = *(v138 + 9);
    v53 = v51;
    if (HIDWORD(v51) + v51 == v51)
    {
LABEL_65:
      v54 = 0;
      goto LABEL_68;
    }
  }

  else
  {
    v52 = 0;
    v53 = v51;
    if (HIDWORD(v51) + v51 == v51)
    {
      goto LABEL_65;
    }
  }

  v54 = *(v52 + 32 * v53 + 24);
LABEL_68:
  v55 = EmitViewerSPI::emitNodeInputPort(a2, @"biquant_weights_scale", v54);
  if (v55)
  {
    [v11 addObject:v55];
  }

  v56 = mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(&v138, 10);
  if ((*(v138 + 46) & 0x80) != 0)
  {
    v57 = *(v138 + 9);
    v58 = v56;
    if (HIDWORD(v56) + v56 == v56)
    {
LABEL_72:
      v59 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    v57 = 0;
    v58 = v56;
    if (HIDWORD(v56) + v56 == v56)
    {
      goto LABEL_72;
    }
  }

  v59 = *(v57 + 32 * v58 + 24);
LABEL_75:
  v60 = EmitViewerSPI::emitNodeInputPort(a2, @"biquant_weights_zero_point", v59);
  if (v60)
  {
    [v11 addObject:v60];
  }

  v132 = [MEMORY[0x1E695DF70] array];
  if (*(v138 + 9))
  {
    v61 = v138 - 16;
  }

  else
  {
    v61 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0);
  v63 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v63)
  {
    [v132 addObject:v63];
  }

  v64 = [MEMORY[0x1E695DF70] array];
  InputQuantParamsAxis = mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxis(&v138);
  LODWORD(v139) = InputQuantParamsAxis;
  BYTE4(v139) = BYTE4(InputQuantParamsAxis);
  if ((InputQuantParamsAxis & 0x100000000) != 0)
  {
    v66 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"input_quant_params_axis" dataType:536870944 shape:&unk_1F5B76E20];
    if (v66)
    {
      if ((v139 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v67 = [MEMORY[0x1E695DEF0] dataWithBytes:&v139 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v66 setValue:v67];

      [v64 addObject:v66];
    }
  }

  WeightsQuantParamsAxis = mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxis(&v138);
  v134 = WeightsQuantParamsAxis;
  v135 = BYTE4(WeightsQuantParamsAxis);
  if ((WeightsQuantParamsAxis & 0x100000000) != 0)
  {
    v69 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"weights_quant_params_axis" dataType:536870944 shape:&unk_1F5B76E38];
    if (v69)
    {
      if ((v135 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v70 = [MEMORY[0x1E695DEF0] dataWithBytes:&v134 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v69 setValue:v70];

      [v64 addObject:v69];
    }
  }

  Groups = mlir::mpsx::QuantizedConv2DOp::getGroups(&v138);
  v71 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"groups" dataType:64 shape:&unk_1F5B76E50];
  if (v71)
  {
    v72 = [MEMORY[0x1E695DEF0] dataWithBytes:&Groups length:8];
    [(MPSGraphViewerNodePropertyDataSPI *)v71 setValue:v72];

    [v64 addObject:v71];
  }

  Strides = mlir::mpsx::QuantizedConv2DOp::getStrides(&v138);
  v74 = Strides;
  if (Strides)
  {
    v75 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v75 = 0;
  }

  v76 = EmitViewerSPI::emitElementsAttrProperty(@"strides", v74, v75);
  v130 = v76;
  if (v76)
  {
    [v64 addObject:v76];
  }

  DilationRates = mlir::mpsx::QuantizedConv2DOp::getDilationRates(&v138);
  v78 = DilationRates;
  if (DilationRates)
  {
    v79 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*DilationRates + 8);
  }

  else
  {
    v79 = 0;
  }

  v80 = EmitViewerSPI::emitElementsAttrProperty(@"dilation_rates", v78, v79);
  if (v80)
  {
    [v64 addObject:v80];
  }

  ExplicitPadding = mlir::mpsx::QuantizedConv2DOp::getExplicitPadding(&v138);
  v82 = ExplicitPadding;
  if (ExplicitPadding)
  {
    v83 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
  }

  else
  {
    v83 = 0;
  }

  v84 = EmitViewerSPI::emitElementsAttrProperty(@"explicit_padding", v82, v83);
  if (v84)
  {
    [v64 addObject:v84];
  }

  PaddingStyle = mlir::mpsx::QuantizedConv2DOp::getPaddingStyle(&v138);
  v86 = [MEMORY[0x1E695DF70] array];
  v87 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT" value:0];
  [v86 addObject:v87];

  v88 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_VALID" value:1];
  [v86 addObject:v88];

  v89 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"TF_SAME" value:2];
  [v86 addObject:v89];

  v90 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"EXPLICIT_OFFSET" value:3];
  [v86 addObject:v90];

  v91 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ONNX_SAME_LOWER" value:4];
  [v86 addObject:v91];

  v92 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"padding_style" type:@"MPSPaddingStyle" cases:v86 value:PaddingStyle];
  if (v92)
  {
    [v64 addObject:v92];
  }

  DataLayout = mlir::mpsx::QuantizedConv2DOp::getDataLayout(&v138);
  v94 = [MEMORY[0x1E695DF70] array];
  v95 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v94 addObject:v95];

  v96 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v94 addObject:v96];

  v97 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v94 addObject:v97];

  v98 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v94 addObject:v98];

  v99 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v94 addObject:v99];

  v100 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v94 addObject:v100];

  v101 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v94 addObject:v101];

  v102 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v94 addObject:v102];

  v103 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v94 addObject:v103];

  v104 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v94 addObject:v104];

  v105 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v94 addObject:v105];

  v106 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"data_layout" type:@"MPSTensorDataLayout" cases:v94 value:DataLayout];
  if (v106)
  {
    [v64 addObject:v106];
  }

  WeightsLayout = mlir::mpsx::QuantizedConv2DOp::getWeightsLayout(&v138);
  v108 = [MEMORY[0x1E695DF70] array];
  v109 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCHW" value:0];
  [v108 addObject:v109];

  v110 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NHWC" value:1];
  [v108 addObject:v110];

  v111 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIHW" value:2];
  [v108 addObject:v111];

  v112 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWIO" value:3];
  [v108 addObject:v112];

  v113 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CHW" value:4];
  [v108 addObject:v113];

  v114 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HWC" value:5];
  [v108 addObject:v114];

  v115 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"HW" value:6];
  [v108 addObject:v115];

  v116 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NCDHW" value:7];
  [v108 addObject:v116];

  v117 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"NDHWC" value:8];
  [v108 addObject:v117];

  v118 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"OIDHW" value:9];
  [v108 addObject:v118];

  v119 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"DHWIO" value:10];
  [v108 addObject:v119];

  v120 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"weights_layout" type:@"MPSTensorDataLayout" cases:v108 value:WeightsLayout];
  if (v120)
  {
    [v64 addObject:v120];
  }

  mlir::mpsx::QuantizedConv2DOp::getOutputType(&v138);
  v121 = [MEMORY[0x1E695DF70] array];
  v122 = [MPSGraphViewerNodeSPI alloc];
  v123 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v124 = [MEMORY[0x1E695DEC8] arrayWithArray:v132];
  v125 = [MEMORY[0x1E695DEC8] arrayWithArray:v64];
  v126 = [MEMORY[0x1E695DEC8] arrayWithArray:v121];
  v127 = [(MPSGraphViewerNodeSPI *)v122 initWithType:v131 inputs:v123 outputs:v124 properties:v125 regions:v126];
  v128 = *(this + 3);
  *(this + 3) = v127;

  if (v137 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0721138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXQuantizedGatherOpHandler *EmitterViewerSPI::MPSXQuantizedGatherOpHandler::MPSXQuantizedGatherOpHandler(EmitterViewerSPI::MPSXQuantizedGatherOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AA60;
  v5 = *(*(a3 + 6) + 8);
  v52 = a3;
  v53 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v53);
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

  v47 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v52, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"updates", *(*(v52 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v52, 1);
  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"indices", *(*(v52 + 9) + 32 * v13 + 24));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v52, 2);
  v16 = EmitViewerSPI::emitNodeInputPort(a2, @"axis", *(*(v52 + 9) + 32 * v15 + 24));
  if (v16)
  {
    [v10 addObject:v16];
  }

  v17 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v52, 3);
  v18 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(v52 + 9) + 32 * v17 + 24));
  if (v18)
  {
    [v10 addObject:v18];
  }

  v19 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v52, 4);
  if ((*(v52 + 46) & 0x80) != 0)
  {
    v20 = *(v52 + 9);
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
  v23 = EmitViewerSPI::emitNodeInputPort(a2, @"zero_point", v22);
  if (v23)
  {
    [v10 addObject:v23];
  }

  v24 = mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(&v52, 5);
  if ((*(v52 + 46) & 0x80) != 0)
  {
    v25 = *(v52 + 9);
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
  v28 = EmitViewerSPI::emitNodeInputPort(a2, @"min", v27);
  if (v28)
  {
    [v10 addObject:v28];
  }

  v48 = [MEMORY[0x1E695DF70] array];
  if (*(v52 + 9))
  {
    v29 = v52 - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  v31 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v31)
  {
    [v48 addObject:v31];
  }

  v32 = [MEMORY[0x1E695DF70] array];
  mlir::mpsx::QuantizedGatherOp::getDtype(&v52);
  LODWORD(v53) = mlir::mpsx::QuantizedGatherOp::getBatchDims(&v52);
  v33 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"batch_dims" dataType:32 shape:&unk_1F5B76E68];
  if (v33)
  {
    v34 = [MEMORY[0x1E695DEF0] dataWithBytes:&v53 length:4];
    [(MPSGraphViewerNodePropertyDataSPI *)v33 setValue:v34];

    [v32 addObject:v33];
  }

  AllowNegativeIndices = mlir::mpsx::QuantizedGatherOp::getAllowNegativeIndices(&v52);
  v35 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"allow_negative_indices" dataType:2147483656 shape:&unk_1F5B76E80];
  if (v35)
  {
    v36 = [MEMORY[0x1E695DEF0] dataWithBytes:&AllowNegativeIndices length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v35 setValue:v36];

    [v32 addObject:v35];
  }

  v37 = [MEMORY[0x1E695DF70] array];
  v38 = [MPSGraphViewerNodeSPI alloc];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v40 = [MEMORY[0x1E695DEC8] arrayWithArray:v48];
  v41 = [MEMORY[0x1E695DEC8] arrayWithArray:v32];
  v42 = [MEMORY[0x1E695DEC8] arrayWithArray:v37];
  v43 = [(MPSGraphViewerNodeSPI *)v38 initWithType:v47 inputs:v39 outputs:v40 properties:v41 regions:v42];
  v44 = *(this + 3);
  *(this + 3) = v43;
  v45 = ;
  [*(this + 3) setLocalizedDescription:v45];

  if (v51 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0721A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXQuantizedMatMulOpHandler *EmitterViewerSPI::MPSXQuantizedMatMulOpHandler::MPSXQuantizedMatMulOpHandler(EmitterViewerSPI::MPSXQuantizedMatMulOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AA90;
  v5 = *(*(a3 + 6) + 8);
  v91 = a3;
  v92 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v92);
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

  v90 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v90 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v84 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 0);
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v91 + 9) + 32 * ODSOperandIndexAndLength + 24));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 1);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v14 = *(v91 + 9);
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
  v17 = EmitViewerSPI::emitNodeInputPort(a2, @"input_scale", v16);
  if (v17)
  {
    [v10 addObject:v17];
  }

  v18 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 2);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v19 = *(v91 + 9);
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
LABEL_21:
      v21 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v19 = 0;
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
      goto LABEL_21;
    }
  }

  v21 = *(v19 + 32 * v20 + 24);
LABEL_24:
  v22 = EmitViewerSPI::emitNodeInputPort(a2, @"input_zero_point", v21);
  if (v22)
  {
    [v10 addObject:v22];
  }

  v23 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 3);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v24 = *(v91 + 9);
    v25 = v23;
    if (HIDWORD(v23) + v23 == v23)
    {
LABEL_28:
      v26 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v24 = 0;
    v25 = v23;
    if (HIDWORD(v23) + v23 == v23)
    {
      goto LABEL_28;
    }
  }

  v26 = *(v24 + 32 * v25 + 24);
LABEL_31:
  v27 = EmitViewerSPI::emitNodeInputPort(a2, @"input_min", v26);
  if (v27)
  {
    [v10 addObject:v27];
  }

  v28 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 4);
  v29 = EmitViewerSPI::emitNodeInputPort(a2, @"weights", *(*(v91 + 9) + 32 * v28 + 24));
  if (v29)
  {
    [v10 addObject:v29];
  }

  v30 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 5);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v31 = *(v91 + 9);
    v32 = v30;
    if (HIDWORD(v30) + v30 == v30)
    {
LABEL_37:
      v33 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v31 = 0;
    v32 = v30;
    if (HIDWORD(v30) + v30 == v30)
    {
      goto LABEL_37;
    }
  }

  v33 = *(v31 + 32 * v32 + 24);
LABEL_40:
  v34 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_scale", v33);
  if (v34)
  {
    [v10 addObject:v34];
  }

  v35 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 6);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v36 = *(v91 + 9);
    v37 = v35;
    if (HIDWORD(v35) + v35 == v35)
    {
LABEL_44:
      v38 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v36 = 0;
    v37 = v35;
    if (HIDWORD(v35) + v35 == v35)
    {
      goto LABEL_44;
    }
  }

  v38 = *(v36 + 32 * v37 + 24);
LABEL_47:
  v39 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_zero_point", v38);
  if (v39)
  {
    [v10 addObject:v39];
  }

  v40 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 7);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v41 = *(v91 + 9);
    v42 = v40;
    if (HIDWORD(v40) + v40 == v40)
    {
LABEL_51:
      v43 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v41 = 0;
    v42 = v40;
    if (HIDWORD(v40) + v40 == v40)
    {
      goto LABEL_51;
    }
  }

  v43 = *(v41 + 32 * v42 + 24);
LABEL_54:
  v44 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_min", v43);
  if (v44)
  {
    [v10 addObject:v44];
  }

  v45 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 8);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v46 = *(v91 + 9);
    v47 = v45;
    if (HIDWORD(v45) + v45 == v45)
    {
LABEL_58:
      v48 = 0;
      goto LABEL_61;
    }
  }

  else
  {
    v46 = 0;
    v47 = v45;
    if (HIDWORD(v45) + v45 == v45)
    {
      goto LABEL_58;
    }
  }

  v48 = *(v46 + 32 * v47 + 24);
LABEL_61:
  v49 = EmitViewerSPI::emitNodeInputPort(a2, @"weights_palette_lut", v48);
  if (v49)
  {
    [v10 addObject:v49];
  }

  v50 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 9);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v51 = *(v91 + 9);
    v52 = v50;
    if (HIDWORD(v50) + v50 == v50)
    {
LABEL_65:
      v53 = 0;
      goto LABEL_68;
    }
  }

  else
  {
    v51 = 0;
    v52 = v50;
    if (HIDWORD(v50) + v50 == v50)
    {
      goto LABEL_65;
    }
  }

  v53 = *(v51 + 32 * v52 + 24);
LABEL_68:
  v54 = EmitViewerSPI::emitNodeInputPort(a2, @"biquant_weights_scale", v53);
  if (v54)
  {
    [v10 addObject:v54];
  }

  v55 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v91, 10);
  if ((*(v91 + 46) & 0x80) != 0)
  {
    v56 = *(v91 + 9);
    v57 = v55;
    if (HIDWORD(v55) + v55 == v55)
    {
LABEL_72:
      v58 = 0;
      goto LABEL_75;
    }
  }

  else
  {
    v56 = 0;
    v57 = v55;
    if (HIDWORD(v55) + v55 == v55)
    {
      goto LABEL_72;
    }
  }

  v58 = *(v56 + 32 * v57 + 24);
LABEL_75:
  v59 = EmitViewerSPI::emitNodeInputPort(a2, @"biquant_weights_zero_point", v58);
  if (v59)
  {
    [v10 addObject:v59];
  }

  v60 = [MEMORY[0x1E695DF70] array];
  if (*(v91 + 9))
  {
    v61 = v91 - 16;
  }

  else
  {
    v61 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0);
  v63 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v63)
  {
    [v60 addObject:v63];
  }

  v64 = [MEMORY[0x1E695DF70] array];
  InputQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxis(&v91);
  LODWORD(v92) = InputQuantParamsAxis;
  BYTE4(v92) = BYTE4(InputQuantParamsAxis);
  if ((InputQuantParamsAxis & 0x100000000) != 0)
  {
    v66 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"input_quant_params_axis" dataType:536870944 shape:&unk_1F5B76E98];
    if (v66)
    {
      if ((v92 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v67 = [MEMORY[0x1E695DEF0] dataWithBytes:&v92 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v66 setValue:v67];

      [v64 addObject:v66];
    }
  }

  WeightsQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(&v91);
  v87 = WeightsQuantParamsAxis;
  v88 = BYTE4(WeightsQuantParamsAxis);
  if ((WeightsQuantParamsAxis & 0x100000000) != 0)
  {
    v69 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"weights_quant_params_axis" dataType:536870944 shape:&unk_1F5B76EB0];
    if (v69)
    {
      if ((v88 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v70 = [MEMORY[0x1E695DEF0] dataWithBytes:&v87 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v69 setValue:v70];

      [v64 addObject:v69];
    }
  }

  mlir::mpsx::ANEOp::getFunctionType(&v91);
  TransposeLhs = mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v91);
  v71 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"transpose_lhs" dataType:2147483656 shape:&unk_1F5B76EC8];
  if (v71)
  {
    v72 = [MEMORY[0x1E695DEF0] dataWithBytes:&TransposeLhs length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v71 setValue:v72];

    [v64 addObject:v71];
  }

  TransposeRhs = mlir::mpsx::QuantizedMatMulOp::getTransposeRhs(&v91);
  v73 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"transpose_rhs" dataType:2147483656 shape:&unk_1F5B76EE0];
  if (v73)
  {
    v74 = [MEMORY[0x1E695DEF0] dataWithBytes:&TransposeRhs length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v73 setValue:v74];

    [v64 addObject:v73];
  }

  v75 = [MEMORY[0x1E695DF70] array];
  v76 = [MPSGraphViewerNodeSPI alloc];
  v77 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v78 = [MEMORY[0x1E695DEC8] arrayWithArray:v60];
  v79 = [MEMORY[0x1E695DEC8] arrayWithArray:v64];
  v80 = [MEMORY[0x1E695DEC8] arrayWithArray:v75];
  v81 = [(MPSGraphViewerNodeSPI *)v76 initWithType:v84 inputs:v77 outputs:v78 properties:v79 regions:v80];
  v82 = *(this + 3);
  *(this + 3) = v81;

  if (v90 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07225FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXRegionReturnOpHandler *EmitterViewerSPI::MPSXRegionReturnOpHandler::MPSXRegionReturnOpHandler(EmitterViewerSPI::MPSXRegionReturnOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AAC0;
  v4 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v4;
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

  v36 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v37, 0);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v11 = *(v37 + 9);
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
    v26 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v26 - ODSOperandIndexAndLength;
    if (v26 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
  v28 = v11 + 32 * v12;
  v29 = 1;
  do
  {
    v30 = *(v28 + 32 * v27 + 24);
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs%d", v29 - 1];
    v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v30);

    if (v32)
    {
      [v9 addObject:v32];
    }

    v27 = v29++;
  }

  while (v14 > v27);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v33 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0722B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXReturnStitchedOpHandler *EmitterViewerSPI::MPSXReturnStitchedOpHandler::MPSXReturnStitchedOpHandler(EmitterViewerSPI::MPSXReturnStitchedOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AAF0;
  v27 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v27);
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

  v26 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v26 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v24 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MPSGraphViewerNodeSPI alloc];
  v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v20 = [(MPSGraphViewerNodeSPI *)v15 initWithType:v24 inputs:v16 outputs:v17 properties:v18 regions:v19];
  v21 = *(this + 3);
  *(this + 3) = v20;

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"The return operation represents a return operation within a stitched region."];
  [*(this + 3) setLocalizedDescription:v22];

  if (v26 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0722E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler *EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler::MPSXSparseDenseMatMulOpHandler(EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AB20;
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

  v40 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"sparse_values", *(*(v45 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"index_tensor0", *(*(v45 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"index_tensor1", *(*(v45 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"sparse_shape", *(*(v45 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"dense", *(*(v45 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v41 = [MEMORY[0x1E695DF70] array];
  if (*(v45 + 9))
  {
    v16 = v45 - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  v18 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v18)
  {
    [v41 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  LOBYTE(v46) = mlir::mpsx::SparseDenseMatMulOp::getTransposeLhs(&v45);
  v20 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"transpose_lhs" dataType:2147483656 shape:&unk_1F5B76EF8];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v20 setValue:v21];

    [v19 addObject:v20];
  }

  TransposeRhs = mlir::mpsx::SparseDenseMatMulOp::getTransposeRhs(&v45);
  v22 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"transpose_rhs" dataType:2147483656 shape:&unk_1F5B76F10];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&TransposeRhs length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v22 setValue:v23];

    [v19 addObject:v22];
  }

  StorageType = mlir::mpsx::SparseDenseMatMulOp::getStorageType(&v45);
  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"COO" value:0];
  [v25 addObject:v26];

  v27 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSC" value:1];
  [v25 addObject:v27];

  v28 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CSR" value:2];
  [v25 addObject:v28];

  v29 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"storage_type" type:@"MPSSparseTensorStorage" cases:v25 value:StorageType];
  if (v29)
  {
    [v19 addObject:v29];
  }

  v30 = [MEMORY[0x1E695DF70] array];
  v31 = [MPSGraphViewerNodeSPI alloc];
  v32 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v41];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v30];
  v36 = [(MPSGraphViewerNodeSPI *)v31 initWithType:v40 inputs:v32 outputs:v33 properties:v34 regions:v35];
  v37 = *(this + 3);
  *(this + 3) = v36;

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"The operation represents the multiplication between a sparse matrix and a dense matrix. The sparse matrix is expected to be on the left hand side, while the dense matrix on the right hand side. The opposite combination (dense times sparse) is currently supported through the transpose formula:\nC^T = (B * Asparse)^T = (Asparse^T * B^T)."}];
  [*(this + 3) setLocalizedDescription:v38];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07234F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXStitchedOpHandler *EmitterViewerSPI::MPSXStitchedOpHandler::MPSXStitchedOpHandler(EmitterViewerSPI::MPSXStitchedOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AB50;
  v46 = *(*(a3 + 6) + 8);
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

  v45 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v45 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v40 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v42 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v11 = a3 - 16;
  }

  else
  {
    v11 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  v13 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v13)
  {
    [v42 addObject:v13];
  }

  v41 = [MEMORY[0x1E695DF70] array];
  v43 = [MEMORY[0x1E695DF70] array];
  v14 = 0;
  v15 = (((a3 + 16 * ((*(a3 + 11) >> 23) & 1) + ((*(a3 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 10));
  while (*v15 != v15)
  {
    v16 = v15[1];
    v17 = v16 ? v16 - 8 : 0;
    if (v14 >= ((*(v17 + 56) - *(v17 + 48)) >> 3))
    {
      break;
    }

    v18 = v15[1];
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v19 + 48);
    v21 = *(v20 + 8 * v14);
    if (v21)
    {
      if (std::__hash_table<std::__hash_value_type<void *,unsigned long long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long long>>>::find<void *>(&a2[29], *(v20 + 8 * v14)))
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"op_arg%d", v14];
        EmitViewerSPI::emitNodeInputPort(a2, v22, v21);
      }

      else
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"op_arg%d", v14];
        EmitViewerSPI::emitNodeOutputPort(a2, v22, v21);
      }
      v23 = ;

      if (v23)
      {
        [v10 addObject:v23];
      }
    }

    ++v14;
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v35 = i - 1;
    if (!i)
    {
      v35 = 0;
    }

    v36 = v35 + 4;
    for (j = v35[5]; j != v36; j = j[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v39 = EmitViewerSPI::emitNode(a2, v38);
      if (v39)
      {
        [v24 addObject:v39];
      }
    }
  }

  v26 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"op" returnType:@"mpsx.stitched_return" nodes:v24];
  [v43 addObject:v26];

  v27 = [MPSGraphViewerNodeSPI alloc];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v42];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v41];
  v31 = [MEMORY[0x1E695DEC8] arrayWithArray:v43];
  v32 = [(MPSGraphViewerNodeSPI *)v27 initWithType:v40 inputs:v28 outputs:v29 properties:v30 regions:v31];
  v33 = *(this + 3);
  *(this + 3) = v32;

  if (v45 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0723B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXTensorToBufferOpHandler *EmitterViewerSPI::MPSXTensorToBufferOpHandler::MPSXTensorToBufferOpHandler(EmitterViewerSPI::MPSXTensorToBufferOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AB80;
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

  v41 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
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
  Shape = mlir::mpsx::BufferToTensorOp::getShape(&v45);
  if (v18)
  {
    v19 = Shape;
    if (Shape)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Shape + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = EmitViewerSPI::emitElementsAttrProperty(@"shape", v19, v20);
    if (v21)
    {
      [v16 addObject:v21];
    }
  }

  mlir::mpsx::BufferToTensorOp::getResultElementType(&v45);
  Interleave = mlir::mpsx::BufferToTensorOp::getInterleave(&v45);
  if (v23)
  {
    v24 = Interleave;
    if (Interleave)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Interleave + 8);
    }

    else
    {
      v25 = 0;
    }

    v26 = EmitViewerSPI::emitElementsAttrProperty(@"interleave", v24, v25);
    if (v26)
    {
      [v16 addObject:v26];
    }
  }

  LOBYTE(v46) = mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v45);
  v27 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"isTensorBufferOp" dataType:2147483656 shape:&unk_1F5B76F28];
  if (v27)
  {
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v27 setValue:v28];

    [v16 addObject:v27];
  }

  IsChannelAndInterleaveSame = mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSame(&v45);
  v29 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"isChannelAndInterleaveSame" dataType:2147483656 shape:&unk_1F5B76F40];
  if (v29)
  {
    v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&IsChannelAndInterleaveSame length:1];
    [(MPSGraphViewerNodePropertyDataSPI *)v29 setValue:v30];

    [v16 addObject:v29];
  }

  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [MPSGraphViewerNodeSPI alloc];
  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v31];
  v37 = [(MPSGraphViewerNodeSPI *)v32 initWithType:v41 inputs:v33 outputs:v34 properties:v35 regions:v36];
  v38 = *(this + 3);
  *(this + 3) = v37;

  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Converts a tensor to a buffer for MIL tensor buffer ops."];
  [*(this + 3) setLocalizedDescription:v39];

  if (v44 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07240E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXUseMemrefOpHandler *EmitterViewerSPI::MPSXUseMemrefOpHandler::MPSXUseMemrefOpHandler(EmitterViewerSPI::MPSXUseMemrefOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4ABB0;
  v4 = *(*(a3 + 6) + 8);
  v38 = a3;
  v39 = v4;
  AttrData = mlir::OpaqueAttr::getAttrData(&v39);
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

  v37 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v37 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v38, 0);
  if ((*(v38 + 46) & 0x80) != 0)
  {
    v11 = *(v38 + 9);
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
    v27 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v27 - ODSOperandIndexAndLength;
    if (v27 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v28 = 0;
  v29 = v11 + 32 * v12;
  v30 = 1;
  do
  {
    v31 = *(v29 + 32 * v28 + 24);
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs%d", v30 - 1];
    v33 = EmitViewerSPI::emitNodeInputPort(a2, v32, v31);

    if (v33)
    {
      [v9 addObject:v33];
    }

    v28 = v30++;
  }

  while (v14 > v28);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v34 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Assigns to which memref a tensor should be written."];
  [*(this + 3) setLocalizedDescription:v25];

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0724578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSXVarHandleOpHandler *EmitterViewerSPI::MPSXVarHandleOpHandler::MPSXVarHandleOpHandler(EmitterViewerSPI::MPSXVarHandleOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4ABE0;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
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
  v11 = [MEMORY[0x1E695DF70] array];
  if (*(v32 + 9))
  {
    v12 = v32 - 16;
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
  Identifier = mlir::mpsx::VarHandleOp::getIdentifier(&v32);
  v18 = EmitViewerSPI::emitStringProperty(@"identifier", Identifier, v17);
  if (v18)
  {
    [v15 addObject:v18];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MPSGraphViewerNodeSPI alloc];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
  v25 = [(MPSGraphViewerNodeSPI *)v20 initWithType:v29 inputs:v21 outputs:v22 properties:v23 regions:v24];
  v26 = *(this + 3);
  *(this + 3) = v25;

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Inserts a variableHandle for a tensor resource."];
  [*(this + 3) setLocalizedDescription:v27];

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0724960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementANEIOCastOpHandler *EmitterViewerSPI::PlacementANEIOCastOpHandler::PlacementANEIOCastOpHandler(EmitterViewerSPI::PlacementANEIOCastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AC10;
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
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"output", NextResultAtOffset);
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

void sub_1E0724D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementHostTypeCastOpHandler *EmitterViewerSPI::PlacementHostTypeCastOpHandler::PlacementHostTypeCastOpHandler(EmitterViewerSPI::PlacementHostTypeCastOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AC40;
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

void sub_1E07250B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementMemrefToTensorOpHandler *EmitterViewerSPI::PlacementMemrefToTensorOpHandler::PlacementMemrefToTensorOpHandler(EmitterViewerSPI::PlacementMemrefToTensorOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AC70;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v34 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v13 = v38 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v34 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Shape = mlir::placement::MemrefToTensor::getShape(&v38);
  if (v18)
  {
    v19 = Shape;
    if (Shape)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Shape + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = EmitViewerSPI::emitElementsAttrProperty(@"shape", v19, v20);
    if (v21)
    {
      [v16 addObject:v21];
    }
  }

  mlir::placement::MemrefToTensor::getResultElementType(&v38);
  Interleave = mlir::placement::MemrefToTensor::getInterleave(&v38);
  LODWORD(v39) = Interleave;
  BYTE4(v39) = BYTE4(Interleave);
  if ((Interleave & 0x100000000) != 0)
  {
    v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:32 shape:&unk_1F5B76F58];
    if (v23)
    {
      if ((v39 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

      [v16 addObject:v23];
    }
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v35];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v10 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0725544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementRegionCallOpHandler *EmitterViewerSPI::PlacementRegionCallOpHandler::PlacementRegionCallOpHandler(EmitterViewerSPI::PlacementRegionCallOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4ACA0;
  v5 = *(*(a3 + 6) + 8);
  v58 = a3;
  v59 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v59);
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

  v57 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v57 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v55 = this;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v58, 0);
  if ((*(v58 + 46) & 0x80) != 0)
  {
    v13 = *(v58 + 9);
    v14 = ODSOperandIndexAndLength;
    v15 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v16 = v15 - ODSOperandIndexAndLength;
    if (v15 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    v14 = ODSOperandIndexAndLength;
    v47 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v16 = v47 - ODSOperandIndexAndLength;
    if (v47 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v48 = 0;
  v49 = v13 + 32 * v14;
  v50 = 1;
  do
  {
    v51 = *(v49 + 32 * v48 + 24);
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs%d", v50 - 1];
    v53 = EmitViewerSPI::emitNodeInputPort(a2, v52, v51);

    if (v53)
    {
      [v11 addObject:v53];
    }

    v48 = v50++;
  }

  while (v16 > v48);
LABEL_12:
  v17 = [MEMORY[0x1E695DF70] array];
  v54 = v10;
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v58, 0);
  v19 = ODSResultIndexAndLength;
  if (*(v58 + 9))
  {
    NextResultAtOffset = v58 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v21 = (HIDWORD(v19) + v19);
  v22 = v21 - v19;
  if (v21 != v19)
  {
    v42 = 0;
    v43 = 1;
    do
    {
      v44 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v42);
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"results%d", v43 - 1];
      v46 = EmitViewerSPI::emitNodeOutputPort(a2, v45, v44);

      if (v46)
      {
        [v17 addObject:v46];
      }

      v42 = v43++;
    }

    while (v22 > v42);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  Callee = mlir::placement::RegionCall::getCallee(&v58);
  v26 = EmitViewerSPI::emitStringProperty(@"callee", Callee, v25);
  if (v26)
  {
    [v23 addObject:v26];
  }

  RegionType = mlir::placement::RegionCall::getRegionType(&v58);
  v28 = [MEMORY[0x1E695DF70] array];
  v29 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"GPU" value:0];
  [v28 addObject:v29];

  v30 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"ANE" value:1];
  [v28 addObject:v30];

  v31 = [[MPSGraphViewerNodePropertyEnumCaseSPI alloc] initWithName:@"CPU" value:2];
  [v28 addObject:v31];

  v32 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithName:@"region_type" type:@"RegionType" cases:v28 value:RegionType];
  if (v32)
  {
    [v23 addObject:v32];
  }

  v33 = [MEMORY[0x1E695DF70] array];
  v34 = [MPSGraphViewerNodeSPI alloc];
  v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v37 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
  v38 = [MEMORY[0x1E695DEC8] arrayWithArray:v33];
  v39 = [(MPSGraphViewerNodeSPI *)v34 initWithType:v54 inputs:v35 outputs:v36 properties:v37 regions:v38];
  v40 = *(v55 + 3);
  *(v55 + 3) = v39;

  if (v57 < 0)
  {
    operator delete(__dst);
  }

  return v55;
}

void sub_1E0725B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementReplacedOpsOpHandler *EmitterViewerSPI::PlacementReplacedOpsOpHandler::PlacementReplacedOpsOpHandler(EmitterViewerSPI::PlacementReplacedOpsOpHandler *this, int8x8_t *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4ACD0;
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
  ReplacedBy = mlir::placement::ReplacedOps::getReplacedBy(&v52);
  v15 = EmitViewerSPI::emitStringProperty(@"replaced_by", ReplacedBy, v14);
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

  v37 = [[MPSGraphViewerNodeRegionSPI alloc] initWithName:@"body" returnType:0 nodes:v30];
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

void sub_1E07261B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler *EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler::PlacementReplacedOpsLiveOutsOpHandler(EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AD00;
  v4 = *(*(a3 + 6) + 8);
  v37 = a3;
  v38 = v4;
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

  v36 = v6;
  if (v6)
  {
    memmove(&__dst, AttrData, v6);
  }

  *(&__dst + v7) = 0;
  if (v36 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v9 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v37, 0);
  if ((*(v37 + 46) & 0x80) != 0)
  {
    v11 = *(v37 + 9);
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
    v26 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v14 = v26 - ODSOperandIndexAndLength;
    if (v26 == ODSOperandIndexAndLength)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
  v28 = v11 + 32 * v12;
  v29 = 1;
  do
  {
    v30 = *(v28 + 32 * v27 + 24);
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outs%d", v29 - 1];
    v32 = EmitViewerSPI::emitNodeInputPort(a2, v31, v30);

    if (v32)
    {
      [v9 addObject:v32];
    }

    v27 = v29++;
  }

  while (v14 > v27);
LABEL_12:
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MPSGraphViewerNodeSPI alloc];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
  v20 = [MEMORY[0x1E695DEC8] arrayWithArray:v15];
  v21 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
  v23 = [(MPSGraphViewerNodeSPI *)v18 initWithType:v33 inputs:v19 outputs:v20 properties:v21 regions:v22];
  v24 = *(this + 3);
  *(this + 3) = v23;

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0726610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementStartTimerOpHandler *EmitterViewerSPI::PlacementStartTimerOpHandler::PlacementStartTimerOpHandler(EmitterViewerSPI::PlacementStartTimerOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AD30;
  v5 = *(*(a3 + 6) + 8);
  v32 = a3;
  v33 = v5;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v29 = v11;
  v12 = [MEMORY[0x1E695DF70] array];
  if (*(v32 + 9))
  {
    v13 = v32 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"timer", NextResultAtOffset);
  if (v15)
  {
    [v12 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  ReplacedOpsRef = mlir::placement::StartTimer::getReplacedOpsRef(&v32);
  v19 = EmitViewerSPI::emitStringProperty(@"replaced_ops_ref", ReplacedOpsRef, v18);
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MPSGraphViewerNodeSPI alloc];
  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
  v26 = [(MPSGraphViewerNodeSPI *)v21 initWithType:v10 inputs:v22 outputs:v23 properties:v24 regions:v25];
  v27 = *(this + 3);
  *(this + 3) = v26;

  if (v31 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07269BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementStopTimerOpHandler *EmitterViewerSPI::PlacementStopTimerOpHandler::PlacementStopTimerOpHandler(EmitterViewerSPI::PlacementStopTimerOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AD60;
  v26 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v26);
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

  v25 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v25 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"timer", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MPSGraphViewerNodeSPI alloc];
  v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];
  v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v13];
  v19 = [MEMORY[0x1E695DEC8] arrayWithArray:v14];
  v20 = [(MPSGraphViewerNodeSPI *)v15 initWithType:v23 inputs:v16 outputs:v17 properties:v18 regions:v19];
  v21 = *(this + 3);
  *(this + 3) = v20;

  if (v25 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0726D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::PlacementTensorToMemrefOpHandler *EmitterViewerSPI::PlacementTensorToMemrefOpHandler::PlacementTensorToMemrefOpHandler(EmitterViewerSPI::PlacementTensorToMemrefOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AD90;
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

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"input", *(*(v38 + 9) + 24));
  if (v12)
  {
    [v11 addObject:v12];
  }

  v34 = [MEMORY[0x1E695DF70] array];
  if (*(v38 + 9))
  {
    v13 = v38 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v15)
  {
    [v34 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  Shape = mlir::placement::MemrefToTensor::getShape(&v38);
  if (v18)
  {
    v19 = Shape;
    if (Shape)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Shape + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = EmitViewerSPI::emitElementsAttrProperty(@"shape", v19, v20);
    if (v21)
    {
      [v16 addObject:v21];
    }
  }

  mlir::placement::MemrefToTensor::getResultElementType(&v38);
  Interleave = mlir::placement::MemrefToTensor::getInterleave(&v38);
  LODWORD(v39) = Interleave;
  BYTE4(v39) = BYTE4(Interleave);
  if ((Interleave & 0x100000000) != 0)
  {
    v23 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithName:@"interleave" dataType:32 shape:&unk_1F5B76F70];
    if (v23)
    {
      if ((v39 & 0x100000000) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&v39 length:8];
      [(MPSGraphViewerNodePropertyDataSPI *)v23 setValue:v24];

      [v16 addObject:v23];
    }
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [MPSGraphViewerNodeSPI alloc];
  v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v35];
  v29 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v30 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  v31 = [(MPSGraphViewerNodeSPI *)v26 initWithType:v10 inputs:v27 outputs:v28 properties:v29 regions:v30];
  v32 = *(this + 3);
  *(this + 3) = v31;

  if (v37 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E072718C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSPIRMSNormOpHandler *EmitterViewerSPI::MPSSPIRMSNormOpHandler::MPSSPIRMSNormOpHandler(EmitterViewerSPI::MPSSPIRMSNormOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4ADC0;
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

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"epsilon", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"axes", *(*(a3 + 9) + 88));
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

void sub_1E07275D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler *EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler::MPSSPIScaledDotProductAttentionOpHandler(EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4ADF0;
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
  v11 = EmitViewerSPI::emitNodeInputPort(a2, @"query", *(*(a3 + 9) + 24));
  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = EmitViewerSPI::emitNodeInputPort(a2, @"key", *(*(a3 + 9) + 56));
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"value", *(*(a3 + 9) + 88));
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = EmitViewerSPI::emitNodeInputPort(a2, @"mask", *(*(a3 + 9) + 120));
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = EmitViewerSPI::emitNodeInputPort(a2, @"scale", *(*(a3 + 9) + 152));
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 9))
  {
    v17 = a3 - 16;
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
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = [MPSGraphViewerNodeSPI alloc];
  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
  v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v20];
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

void sub_1E0727A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler *EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler::MPSSPIStridedArrayViewOpHandler(EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B4AE20;
  v5 = *(*(a3 + 6) + 8);
  v68 = a3;
  v69 = v5;
  AttrData = mlir::OpaqueAttr::getAttrData(&v69);
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

  v67 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v67 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v11 = [MEMORY[0x1E695DF70] array];
  ODSOperandIndexAndLength = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v68, 0);
  v13 = EmitViewerSPI::emitNodeInputPort(a2, @"source", *(*(v68 + 9) + 32 * ODSOperandIndexAndLength + 24));
  v65 = v13;
  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v68, 1u);
  v64 = v10;
  if ((*(v68 + 46) & 0x80) != 0)
  {
    v15 = *(v68 + 9);
    v16 = v14;
    v17 = (HIDWORD(v14) + v14);
    v18 = v17 - v14;
    if (v17 == v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v16 = v14;
    v43 = (HIDWORD(v14) + v14);
    v18 = v43 - v14;
    if (v43 == v14)
    {
      goto LABEL_14;
    }
  }

  v44 = 0;
  v45 = v15 + 32 * v16;
  v46 = 1;
  do
  {
    v47 = *(v45 + 32 * v44 + 24);
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"offsets%d", v46 - 1];
    v49 = EmitViewerSPI::emitNodeInputPort(a2, v48, v47);

    if (v49)
    {
      [v11 addObject:v49];
    }

    v44 = v46++;
  }

  while (v18 > v44);
LABEL_14:
  v19 = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v68, 2u);
  if ((*(v68 + 46) & 0x80) != 0)
  {
    v20 = *(v68 + 9);
    v21 = v19;
    v22 = (HIDWORD(v19) + v19);
    v23 = v22 - v19;
    if (v22 == v19)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    v21 = v19;
    v50 = (HIDWORD(v19) + v19);
    v23 = v50 - v19;
    if (v50 == v19)
    {
      goto LABEL_16;
    }
  }

  v51 = 0;
  v52 = v20 + 32 * v21;
  v53 = 1;
  do
  {
    v54 = *(v52 + 32 * v51 + 24);
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sizes%d", v53 - 1];
    v56 = EmitViewerSPI::emitNodeInputPort(a2, v55, v54);

    if (v56)
    {
      [v11 addObject:v56];
    }

    v51 = v53++;
  }

  while (v23 > v51);
LABEL_16:
  v24 = mlir::mps_spi::StridedArrayViewOp::getODSOperandIndexAndLength(&v68, 3u);
  if ((*(v68 + 46) & 0x80) != 0)
  {
    v25 = *(v68 + 9);
    v26 = v24;
    v27 = (HIDWORD(v24) + v24);
    v28 = v27 - v24;
    if (v27 == v24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0;
    v26 = v24;
    v57 = (HIDWORD(v24) + v24);
    v28 = v57 - v24;
    if (v57 == v24)
    {
      goto LABEL_18;
    }
  }

  v58 = 0;
  v59 = v25 + 32 * v26;
  v60 = 1;
  do
  {
    v61 = *(v59 + 32 * v58 + 24);
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strides%d", v60 - 1];
    v63 = EmitViewerSPI::emitNodeInputPort(a2, v62, v61);

    if (v63)
    {
      [v11 addObject:v63];
    }

    v58 = v60++;
  }

  while (v28 > v58);
LABEL_18:

  v29 = [MEMORY[0x1E695DF70] array];
  if (*(v68 + 9))
  {
    v30 = v68 - 16;
  }

  else
  {
    v30 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  v32 = EmitViewerSPI::emitNodeOutputPort(a2, @"result", NextResultAtOffset);
  if (v32)
  {
    [v29 addObject:v32];
  }

  v33 = [MEMORY[0x1E695DF70] array];
  mlir::memref::ReinterpretCastOp::getStaticOffsets(&v68);
  mlir::memref::ReinterpretCastOp::getStaticSizes(&v68);
  mlir::memref::ReinterpretCastOp::getStaticStrides(&v68);
  v34 = [MEMORY[0x1E695DF70] array];
  v35 = [MPSGraphViewerNodeSPI alloc];
  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
  v37 = [MEMORY[0x1E695DEC8] arrayWithArray:v29];
  v38 = [MEMORY[0x1E695DEC8] arrayWithArray:v33];
  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v34];
  v40 = [(MPSGraphViewerNodeSPI *)v35 initWithType:v64 inputs:v36 outputs:v37 properties:v38 regions:v39];
  v41 = *(this + 3);
  *(this + 3) = v40;

  if (v67 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E07280E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EmitBase::~EmitBase(EmitBase *this)
{
  *this = &unk_1F5B522B8;
  v2 = *(this + 11);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[5];
      if (v7)
      {
        do
        {
          v8 = *v7;

          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      v9 = v2[3];
      v2[3] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  objc_destroyWeak(this + 8);
  objc_destroyWeak(this + 6);
  v4 = *(this + 3);
  if (v4)
  {
    do
    {
      v10 = *v4;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v10;
    }

    while (v10);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

{
  EmitBase::~EmitBase(this);

  JUMPOUT(0x1E12E5B90);
}

void **std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__deallocate_node(void **result)
{
  do
  {
    v1 = *result;
    if (*(result + 39) < 0)
    {
      v2 = result;
      operator delete(result[2]);
      result = v2;
    }

    operator delete(result);
    result = v1;
  }

  while (v1);
  return result;
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t std::__function::__func<EmitViewerSPI::initializeOps(void)::$_0,std::allocator<EmitViewerSPI::initializeOps(void)::$_0>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13EmitViewerSPI13initializeOpsEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13EmitViewerSPI13initializeOpsEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13EmitViewerSPI13initializeOpsEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13EmitViewerSPI13initializeOpsEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<EmitViewerSPI::initializeOps(void)::$_1,std::allocator<EmitViewerSPI::initializeOps(void)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13EmitViewerSPI13initializeOpsEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13EmitViewerSPI13initializeOpsEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13EmitViewerSPI13initializeOpsEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13EmitViewerSPI13initializeOpsEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1E0728A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

id oneHotBase(MPSGraph *a1, MPSGraphTensor *a2, uint64_t a3, double a4, double a5, void *a6, uint64_t a7, NSString *a8)
{
  v73[1] = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a8;
  v18 = v16;
  v19 = [(MPSGraphTensor *)v18 shape];
  v20 = [v19 count];

  if (a6 == -1)
  {
    v21 = v20;
  }

  else
  {
    v21 = a6;
  }

  if (v21 > v20 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v22 = [(MPSGraphTensor *)v18 shape];
  v23 = [v22 mutableCopy];

  v68 = v23;
  [v23 addObject:&unk_1F5B757A0];
  if (v17)
  {
    v24 = [(NSString *)v17 stringByAppendingString:@"/reshape"];
  }

  else
  {
    v24 = @"oneHot/reshape";
  }

  v69 = [(MPSGraph *)v15 reshapeTensor:v18 withShape:v23 name:v24];

  if (v17)
  {
  }

  v25 = [MPSGraphOneHotOp alloc];
  v73[0] = v69;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  v70 = [(MPSGraphOneHotOp *)v25 initWithGraph:v15 inputTensors:v26 controlDependencies:MEMORY[0x1E695E0F0] depth:a3 axis:v21 dataType:a7 name:v17];

  v27 = [(MPSGraphOperation *)v70 outputTensors];
  v67 = [v27 objectAtIndexedSubscript:0];

  if (a7 <= 268435471)
  {
    if (a7 != -1879048176)
    {
      if (a7 == 64)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if (a7 != 268435472 && a7 != 268435488)
  {
    if (a7 == 536870976)
    {
LABEL_14:
      v66 = [(MPSGraphOperation *)v70 outputTensors];
      v28 = [v66 objectAtIndexedSubscript:0];
      v29 = v15;
      v71 = a5;
      v72 = (a4 - a5);
      v30 = v28;
      v65 = v17;
      v31 = v30;
      v32 = v31;
      if (v72 != 1)
      {
        v33 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v72 length:8 freeWhenDone:0];
        v34 = [(MPSGraph *)v29 constantWithData:v33 shape:&unk_1F5B76FB8 dataType:536870976];

        if (v17)
        {
          v35 = [(NSString *)v65 stringByAppendingString:@"/scale"];
        }

        else
        {
          v35 = @"oneHot/scale";
        }

        v32 = [(MPSGraph *)v29 multiplicationWithPrimaryTensor:v31 secondaryTensor:v34 name:v35];

        if (v17)
        {
        }
      }

      v57 = v32;
      v53 = v57;
      if (a5)
      {
        v58 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v71 length:8 freeWhenDone:0];
        v59 = [(MPSGraph *)v29 constantWithData:v58 shape:&unk_1F5B76FD0 dataType:536870976];

        if (v17)
        {
          v60 = [(NSString *)v65 stringByAppendingString:@"/offset"];
        }

        else
        {
          v60 = @"oneHot/offset";
        }

        v53 = [(MPSGraph *)v29 additionWithPrimaryTensor:v57 secondaryTensor:v59 name:v60];

        if (v17)
        {
        }
      }

LABEL_60:

      goto LABEL_61;
    }

LABEL_19:
    v66 = [(MPSGraphOperation *)v70 outputTensors];
    v36 = [v66 objectAtIndexedSubscript:0];
    v29 = v15;
    LODWORD(v72) = (a4 - a5);
    LODWORD(v71) = a5;
    v37 = v36;
    v65 = v17;
    v31 = v37;
    v38 = v31;
    if (v72 != 1)
    {
      v39 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v72 length:4 freeWhenDone:0];
      v40 = [(MPSGraph *)v29 constantWithData:v39 shape:&unk_1F5B76FE8 dataType:536870944];

      if (v17)
      {
        v41 = [(NSString *)v65 stringByAppendingString:@"/scale"];
      }

      else
      {
        v41 = @"oneHot/scale";
      }

      v38 = [(MPSGraph *)v29 multiplicationWithPrimaryTensor:v31 secondaryTensor:v40 name:v41];

      if (v17)
      {
      }
    }

    v57 = v38;
    v53 = v57;
    if (a5)
    {
      v61 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v71 length:4 freeWhenDone:0];
      v62 = [(MPSGraph *)v29 constantWithData:v61 shape:&unk_1F5B77000 dataType:536870944];

      if (v17)
      {
        v63 = [(NSString *)v65 stringByAppendingString:@"/offset"];
      }

      else
      {
        v63 = @"oneHot/offset";
      }

      v53 = [(MPSGraph *)v29 additionWithPrimaryTensor:v57 secondaryTensor:v62 name:v63];

      if (v17)
      {
      }
    }

    goto LABEL_60;
  }

  v66 = [(MPSGraphOperation *)v70 outputTensors];
  v42 = [v66 objectAtIndexedSubscript:0];
  v43 = a4 - a5;
  v44 = a5;
  v45 = v15;
  *&v72 = v43;
  *&v71 = v44;
  v46 = v42;
  v47 = v17;
  v31 = v46;
  v48 = v31;
  if (v43 != 1.0)
  {
    v49 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v72 length:4 freeWhenDone:0];
    v50 = [(MPSGraph *)v45 constantWithData:v49 shape:&unk_1F5B76F88 dataType:268435488];

    if (v17)
    {
      v51 = [(NSString *)v47 stringByAppendingString:@"/scale"];
    }

    else
    {
      v51 = @"oneHot/scale";
    }

    v48 = [(MPSGraph *)v45 multiplicationWithPrimaryTensor:v31 secondaryTensor:v50 name:v51];

    if (v17)
    {
    }
  }

  v52 = v48;
  v53 = v52;
  if (v44 != 0.0)
  {
    v54 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:&v71 length:4 freeWhenDone:0];
    v55 = [(MPSGraph *)v45 constantWithData:v54 shape:&unk_1F5B76FA0 dataType:268435488];

    if (v17)
    {
      v56 = [(NSString *)v47 stringByAppendingString:@"/offset"];
    }

    else
    {
      v56 = @"oneHot/offset";
    }

    v53 = [(MPSGraph *)v45 additionWithPrimaryTensor:v52 secondaryTensor:v55 name:v56];

    if (v17)
    {
    }
  }

LABEL_61:

  return v53;
}

void sub_1E0729FA0(_Unwind_Exception *a1)
{
  if (v2)
  {

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t createTernaryArithmeticOp<mlir::mps::SelectOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t **a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v28, "createTernaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v33 = 260;
  v32[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(a1, v32);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0x126u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
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

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 10;
    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 29795;
    __dst.__r_.__value_.__r.__words[0] = *"mps.select";
    v16 = &__dst.__r_.__value_.__s.__data_[10];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v33) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v32[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v33) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v32);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if ((v29 & 0x80000000) == 0)
  {
LABEL_17:
    v21 = *a3;
    if (a3[1] != *a3)
    {
      goto LABEL_18;
    }

LABEL_30:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_29:
  operator delete(v28[0]);
  v21 = *a3;
  if (a3[1] == *a3)
  {
    goto LABEL_30;
  }

LABEL_18:
  v32[0] = *v21;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v32[0] + 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v23 = ElementTypeOrSelf;
  }

  else
  {
    v23 = 0;
  }

  __dst.__r_.__value_.__r.__words[0] = v23;
  if (!v23 || mlir::IntegerType::getWidth(&__dst) != 1)
  {
    IntegerType = mlir::Builder::getIntegerType(a1, 1);
    __p.__r_.__value_.__r.__words[0] = mlir::TypeAttr::get(IntegerType);
    v32[0] = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a1, v20, v32, &__p) - 16);
  }

  v25 = a3[1] - *a3;
  if (v25 < 9 || v25 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  __p.__r_.__value_.__r.__words[0] = (mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>(a1, v20, v32, *a3 + 1, *a3 + 2) - 16);
  DefiningOp = mlir::Value::getDefiningOp(&__p);

  return DefiningOp;
}

void sub_1E072A36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t createUnaryArithmeticOp<mlir::mps::IdentityOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::IdentityOp>(a2, a1, __p, 0xD6u, v7);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>(a1, v8, *a3) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v11);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::ExponentOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
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

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1953391982;
    __dst.__r_.__value_.__r.__words[0] = *"mps.exponent";
    v16 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072AF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E072AFA0);
}

void sub_1E072AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072AFA0);
  }

  JUMPOUT(0x1E072AF5CLL);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ExponentBase2Op>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
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

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 19;
    *(&__dst.__r_.__value_.__r.__words[1] + 7) = 845112691;
    *&__dst.__r_.__value_.__l.__data_ = *"mps.exponent_base_2";
    v16 = &__dst.__r_.__value_.__s.__data_[19];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::ExponentBase2Op,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}

void sub_1E072B244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  JUMPOUT(0x1E072B2A8);
}

void sub_1E072B298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E072B2A8);
  }

  JUMPOUT(0x1E072B264);
}

uint64_t createUnaryArithmeticOp<mlir::mps::ExponentBase10Op>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(__dst, v14, v15);
    }

    v17 = __dst + v16;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 20;
    LODWORD(__dst[0].__r_.__value_.__r.__words[2]) = 808542053;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.exponent_base_10";
    v17 = &__dst[0].__r_.__value_.__s.__data_[20];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentBase10Op,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.exponent_base_10";
    v38 = 20;
    v36 = 259;
    llvm::operator+(&v37, &v35, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::ExponentBase10Op,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::LogarithmOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 13;
    qmemcpy(&__dst, "mps.logarithm", 13);
    v17 = &__dst.__r_.__value_.__s.__data_[13];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.logarithm";
    v38 = 13;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::LogarithmBase2Op>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(__dst, v14, v15);
    }

    v17 = __dst + v16;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 20;
    LODWORD(__dst[0].__r_.__value_.__r.__words[2]) = 845112691;
    *&__dst[0].__r_.__value_.__l.__data_ = *"mps.logarithm_base_2";
    v17 = &__dst[0].__r_.__value_.__s.__data_[20];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase2Op,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.logarithm_base_2";
    v38 = 20;
    v36 = 259;
    llvm::operator+(&v37, &v35, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase2Op,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::LogarithmBase10Op>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  mpsFileLoc(__p, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a1, v41);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = v8;
    v14 = [v8 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(__dst, v14, v15);
    }

    v17 = __dst + v16;
  }

  else
  {
    *(&__dst[0].__r_.__value_.__s + 23) = 21;
    qmemcpy(__dst, "mps.logarithm_base_10", 21);
    v17 = &__dst[0].__r_.__value_.__s.__data_[21];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, __dst, &v37, v10, v11);
  v18 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v37;
  }

  v19 = 1;
  HIBYTE(v42) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v18;
    v19 = 3;
  }

  LOBYTE(v42) = v19;
  v20 = mlir::Builder::getStringAttr(a1, v41);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst[0].__r_.__value_.__l.__data_);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *a3;
  if (*(a3 + 8) == *a3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v21;
  Context = mlir::Attribute::getContext(&v34);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase10Op,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.logarithm_base_10";
    v38 = 21;
    v36 = 259;
    llvm::operator+(&v37, &v35, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v21, v24);
  mlir::mps::ACosOp::build(a1, v41, *v22);
  v26 = mlir::OpBuilder::create(a1, v41);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v27 == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase10Op,void>::id)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v31 = v28 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v31);

  return DefiningOp;
}

uint64_t createUnaryArithmeticOp<mlir::mps::SquareOp>(mlir::StringAttr **a1, llvm::StringMapImpl *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  mpsFileLoc(v24, "createUnaryArithmeticOp", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphArithmeticOps.mm");
  v8 = v7;
  v29 = 260;
  v28[0] = v24;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0xD6u, 0);
  if (v8)
  {
    v13 = [v8 UTF8String];
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

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 10;
    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 25970;
    __dst.__r_.__value_.__r.__words[0] = *"mps.square";
    v16 = &__dst.__r_.__value_.__s.__data_[10];
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a2, &__dst, &__p, v10, v11);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v29) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v28[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v29) = v18;
  v19 = mlir::Builder::getStringAttr(a1, v28);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v24[0]);
      v21 = *a3;
      if (*(a3 + 8) != *a3)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);

  if (v25 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v21 = *a3;
  if (*(a3 + 8) == *a3)
  {
    goto LABEL_22;
  }

LABEL_18:
  v28[0] = (mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>(a1, v20, v21) - 16);
  DefiningOp = mlir::Value::getDefiningOp(v28);

  return DefiningOp;
}