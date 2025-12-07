void mlir::anec::Deconvolution::getExecutionCost(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a1;
  v14 = *(*a1 + 72);
  v15 = (*(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    v13 = *a1;
    v14 = *(*a1 + 72);
  }

  else
  {
    v16 = 0;
  }

  v46[0] = v15;
  v46[1] = v16;
  v17 = (*(*(v14 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v13 = *a1;
  }

  else
  {
    v18 = 0;
  }

  v45[0] = v17;
  v45[1] = v18;
  v19 = *(v13 + 36);
  v20 = v13 - 16;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v23 = 0;
  v24 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  v44[0] = v24;
  v44[1] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(v46);
  mlir::CallableOpInterface::getArgAttrsAttr(v45);
  mlir::CallableOpInterface::getArgAttrsAttr(v44);
  mlir::CallableOpInterface::getArgAttrsAttr(v46);
  mlir::anec::getIndexFromDim(0, v25);
  if (v26 & 1) != 0 && (mlir::CallableOpInterface::getArgAttrsAttr(v46), mlir::anec::getIndexFromDim(1, v27), (v28) && (mlir::CallableOpInterface::getArgAttrsAttr(v46), mlir::anec::getIndexFromDim(3, v29), (v30) && (mlir::CallableOpInterface::getArgAttrsAttr(v46), mlir::anec::getIndexFromDim(4, v31), (v32))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v46);
    mlir::anec::getIndexFromDim(2, v33);
    v34 = *a1;
    isSplat = mlir::ElementsAttr::isSplat(v46);
  }

  else
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    mlir::anec::inferElementwiseReturnTypes(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11);
  }
}

uint64_t mlir::anec::inferElementwiseReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  __src = v14;
  v46 = v13;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  v17 = v15;
  __src = v47;
  v46 = 0x400000000;
  v18 = (8 * v15) >> 3;
  if (v18 < 5)
  {
    v19 = 0;
    v20 = 8 * v15;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v47, v18, 8);
  v19 = v46;
  v20 = 8 * v17;
  if (v17)
  {
LABEL_7:
    memcpy(__src + 8 * v19, ArgAttrsAttr, v20);
    v19 = v46;
  }

LABEL_8:
  v42 = v44;
  v43 = 0x400000000;
  v21 = v19 + (v20 >> 3);
  LODWORD(v46) = v21;
  if (!v21)
  {
    goto LABEL_15;
  }

  if (v21 < 5)
  {
    v23 = v44;
    v22 = v21;
    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v21, 8);
  v22 = v46;
  if (v46)
  {
    v23 = v42;
LABEL_13:
    memcpy(v23, __src, 8 * v22);
  }

  LODWORD(v43) = v21;
LABEL_15:
  if (a10 != 1)
  {
    v40 = a5;
    v24 = 1;
    while (1)
    {
      v25 = mlir::TypeRange::dereference_iterator(a9, v24);
      v26 = v25;
      v27 = __src;
      v28 = v46;
      if (v25)
      {
        v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      }

      v41[0] = v26;
      v41[1] = v25;
      v29 = mlir::CallableOpInterface::getArgAttrsAttr(v41);
      if ((mlir::OpTrait::util::getBroadcastedShape(v27, v28, v29, v30, &v42) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(a4, v40);
        goto LABEL_34;
      }

      v31 = v43;
      v32 = v46;
      if (v46 >= v43)
      {
        if (v43)
        {
          memmove(__src, v42, 8 * v43);
        }

        goto LABEL_17;
      }

      if (HIDWORD(v46) >= v43)
      {
        if (v46)
        {
          memmove(__src, v42, 8 * v46);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v46) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v47, v43, 8);
      }

      v32 = 0;
LABEL_29:
      if (v43 != v32)
      {
        memcpy(__src + 8 * v32, v42 + 8 * v32, 8 * (v43 - v32));
      }

LABEL_17:
      LODWORD(v46) = v31;
      if (a10 == ++v24)
      {
        LODWORD(v21) = v43;
        break;
      }
    }
  }

  v34 = v42;
  v35 = mlir::TypeRange::dereference_iterator(a9, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
  MostDefinedTypeForANE = mlir::MemRefType::get(v34, v21, ElementTypeOrSelf, 0, 0, 0);
LABEL_34:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v39 = MostDefinedTypeForANE;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
    MostDefinedTypeForANE = v39;
    v37 = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  if (__src != v47)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::inferElementwiseCompareReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v14 = mlir::TypeRange::dereference_iterator(a9, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  __src = v15;
  v47 = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
  v18 = v16;
  __src = v48;
  v47 = 0x400000000;
  v19 = (8 * v16) >> 3;
  if (v19 < 5)
  {
    v20 = 0;
    v21 = 8 * v16;
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v48, v19, 8);
  v20 = v47;
  v21 = 8 * v18;
  if (v18)
  {
LABEL_7:
    memcpy(__src + 8 * v20, ArgAttrsAttr, v21);
    v20 = v47;
  }

LABEL_8:
  v43 = v45;
  v44 = 0x400000000;
  v22 = v20 + (v21 >> 3);
  LODWORD(v47) = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

  if (v22 < 5)
  {
    v24 = v45;
    v23 = v22;
    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v22, 8);
  v23 = v47;
  if (v47)
  {
    v24 = v43;
LABEL_13:
    memcpy(v24, __src, 8 * v23);
  }

  LODWORD(v44) = v22;
LABEL_15:
  if (a10 != 1)
  {
    v40 = a4;
    v41 = a5;
    v25 = 1;
    while (1)
    {
      v26 = mlir::TypeRange::dereference_iterator(a9, v25);
      v27 = v26;
      v28 = __src;
      v29 = v47;
      if (v26)
      {
        v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
      }

      v42[0] = v27;
      v42[1] = v26;
      v30 = mlir::CallableOpInterface::getArgAttrsAttr(v42);
      if ((mlir::OpTrait::util::getBroadcastedShape(v28, v29, v30, v31, &v43) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(v40, v41);
        goto LABEL_34;
      }

      v32 = v44;
      v33 = v47;
      if (v47 >= v44)
      {
        if (v44)
        {
          memmove(__src, v43, 8 * v44);
        }

        goto LABEL_17;
      }

      if (HIDWORD(v47) >= v44)
      {
        if (v47)
        {
          memmove(__src, v43, 8 * v47);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v47) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v48, v44, 8);
      }

      v33 = 0;
LABEL_29:
      if (v44 != v33)
      {
        memcpy(__src + 8 * v33, v43 + 8 * v33, 8 * (v44 - v33));
      }

LABEL_17:
      LODWORD(v47) = v32;
      if (a10 == ++v25)
      {
        LODWORD(v22) = v44;
        break;
      }
    }
  }

  v35 = v43;
  v36 = mlir::IntegerType::get(a1, 8u, 1u);
  MostDefinedTypeForANE = mlir::MemRefType::get(v35, v22, v36, 0, 0, 0);
LABEL_34:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v39 = MostDefinedTypeForANE;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
    MostDefinedTypeForANE = v39;
    v37 = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v43 != v45)
  {
    free(v43);
  }

  if (__src != v48)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::ElementwiseAdd::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85[0] = &v88;
  v85[1] = &v87;
  if (*(*(a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id && (*(a1 + 46) & 0x80) != 0 && *(a1 + 68) == 2)
  {
    v8 = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::anec::MatMul,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(a1, 0, v85);
    v89[0] = *(*(a1 + 72) + 56);
    DefiningOp = mlir::Value::getDefiningOp(v89);
    if (DefiningOp)
    {
      if (((*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id) & v8) != 0)
      {
        v83 = v87;
        v84 = v86;
        v82 = DefiningOp;
        mlir::anec::MatMul::getBias(v89, &v84);
        if (v90 == 1)
        {
          v11 = v89[1];
          if (llvm::APFloatBase::PPCDoubleDouble(v10) == v11)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v89[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v89[1]);
          }

          v89[0] = operator new(0x19uLL);
          *&v89[1] = xmmword_1E096E570;
          strcpy(v89[0], "MatMul already has bias");
        }

        else
        {
          if (*(v84 + 9))
          {
            v12 = v84 - 16;
          }

          else
          {
            v12 = 0;
          }

          v13 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
          if (v13 && !*v13)
          {
            v81[0] = mlir::mps::ConstantOp::getAsAttribute(&v83);
            v81[1] = v17;
            v80[0] = mlir::mps::ConstantOp::getAsAttribute(&v82);
            v80[1] = v18;
            Type = mlir::ElementsAttr::getType(v81);
            v20 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v79[0] = v20;
            v79[1] = Type;
            v21 = mlir::ElementsAttr::getType(v80);
            v22 = v21;
            if (v21)
            {
              v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
            }

            v78[0] = v22;
            v78[1] = v21;
            mlir::CallableOpInterface::getArgAttrsAttr(v79);
            v24 = v23;
            mlir::CallableOpInterface::getArgAttrsAttr(v78);
            if (v24 == v25 && (v26 = mlir::getElementTypeOrSelf(v79[0]), v26 == mlir::getElementTypeOrSelf(v78[0])))
            {
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v79);
              v71 = v28;
              v29 = mlir::CallableOpInterface::getArgAttrsAttr(v78);
              mlir::CallableOpInterface::getArgAttrsAttr(v79);
              IndexFromDim = mlir::anec::getIndexFromDim(4, v30);
              v33 = v32;
              mlir::CallableOpInterface::getArgAttrsAttr(v78);
              v35 = mlir::anec::getIndexFromDim(4, v34);
              v37 = v36;
              mlir::CallableOpInterface::getArgAttrsAttr(v79);
              v39 = mlir::anec::getIndexFromDim(1, v38);
              if ((v33 & 1) != 0 && (v37 & 1) != 0 && (v40 & 1) != 0 && IndexFromDim == v35)
              {
                v41 = v39;
                mlir::CallableOpInterface::getArgAttrsAttr(v79);
                if (v42)
                {
                  v43 = 0;
                  while (1)
                  {
                    v45 = IndexFromDim == v43 ? ArgAttrsAttr[IndexFromDim] : 1;
                    if (*(v29 + 8 * v43) != v45)
                    {
                      break;
                    }

                    if (v41 != v43 && IndexFromDim != v43 && ArgAttrsAttr[v43] != 1)
                    {
                      v46 = "unsupported kernel shape";
                      goto LABEL_56;
                    }

                    ++v43;
                    mlir::CallableOpInterface::getArgAttrsAttr(v79);
                    if (v43 == v44)
                    {
                      goto LABEL_51;
                    }
                  }

                  v46 = "unsupported bias shape";
                }

                else
                {
LABEL_51:
                  mlir::CallableOpInterface::getArgAttrsAttr(v79);
                  if (IndexFromDim == v47 - 1 && (mlir::ElementsAttr::isSplat(v81) & 1) == 0 && !mlir::ElementsAttr::isSplat(v80))
                  {
                    llvm::SmallVector<long long,4u>::SmallVector<long long,void>(v89, ArgAttrsAttr, v71);
                    v48 = v89[0];
                    ++*(v89[0] + 8 * v41);
                    v49 = LODWORD(v89[1]);
                    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v79[0]);
                    v51 = mlir::RankedTensorType::get(v48, v49, ElementTypeOrSelf, 0);
                    BufferTensorAttr = mlir::mps::getBufferTensorAttr(v51);
                    ElementsAttrRawData = mlir::getElementsAttrRawData(v81[0]);
                    v54 = v53;
                    v55 = mlir::getElementsAttrRawData(v80[0]);
                    v57 = v56;
                    MutableRawData = mlir::mps::MPSBufferTensorAttr::getMutableRawData(&BufferTensorAttr);
                    memcpy(MutableRawData, ElementsAttrRawData, v54);
                    memcpy(&MutableRawData[v54], v55, v57);
                    v59 = v89[0];
                    v60 = LODWORD(v89[1]);
                    v61 = mlir::getElementTypeOrSelf((*(v83 - 8) & 0xFFFFFFFFFFFFFFF8));
                    v76 = mlir::MemRefType::get(v59, v60, v61, 0, 0, 0);
                    v75 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a2 + 1), *(v83 + 24), &v76, &BufferTensorAttr);
                    F16Type = mlir::Builder::getF16Type(a2 + 1, v62);
                    v64.n128_u64[0] = 1.0;
                    FloatAttr = mlir::Builder::getFloatAttr(v64, (a2 + 1), F16Type);
                    v65 = *(a1 + 24);
                    __p[0] = *(*(v84 + 9) + 24);
                    v66 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::detail::TypedValue<mlir::MemRefType>,mlir::mps::ConstantOp &,mlir::FloatAttr &>(a2 + 1, v65, __p, &v75, &FloatAttr);
                    v69 = mlir::verify(v66, 1, v67, v68);
                    v70 = *a2;
                    if (v69)
                    {
                      (*(v70 + 1))(a2, a1, v66);
                      matched = 1;
                    }

                    else
                    {
                      (*(v70 + 2))(a2, v66);
                      (*(*a2 + 2))(a2, v75);
                      std::string::basic_string[abi:nn200100]<0>(__p, "validation failed");
                      matched = mlir::logMatchFailure(__p, *(a1 + 24), a2);
                      if (v73 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    if (v89[0] != &v89[2])
                    {
                      free(v89[0]);
                    }

LABEL_26:
                    if ((matched & 1) == 0)
                    {
                    }

                    return 1;
                  }

                  v46 = "unsupported concatenation dimension";
                }

LABEL_56:
                v15 = std::string::basic_string[abi:nn200100]<0>(v89, v46);
                v14 = *(a1 + 24);
LABEL_24:
                matched = mlir::logMatchFailure(v15, v14, a2);
                if (SHIBYTE(v89[2]) < 0)
                {
                  operator delete(v89[0]);
                }

                goto LABEL_26;
              }

              HIBYTE(v89[2]) = 15;
              strcpy(v89, "cannot get axes");
            }

            else
            {
              v89[0] = operator new(0x28uLL);
              *&v89[1] = xmmword_1E0999950;
              strcpy(v89[0], "unsupported kernel and bias fusion");
            }
          }

          else
          {
            v89[0] = operator new(0x20uLL);
            *&v89[1] = xmmword_1E09826A0;
            strcpy(v89[0], "MatMul has multiple users");
          }
        }

        v14 = *(a1 + 24);
        v15 = v89;
        goto LABEL_24;
      }
    }
  }

  strcpy(v89, "does not match pattern");
  HIBYTE(v89[2]) = 22;
  v4 = mlir::logMatchFailure(v89, *(a1 + 24), a2);
  if (SHIBYTE(v89[2]) < 0)
  {
    v7 = v4;
    operator delete(v89[0]);
    if (v7)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }
}

uint64_t mlir::anec::anonymous namespace::canonicalizeElementwiseToGOC(mlir::anec::_anonymous_namespace_ *this, mlir::Float16Type **a2, mlir::PatternRewriter *a3)
{
  v106[5] = *MEMORY[0x1E69E9840];
  RawElementsAttr = 0;
  v91 = 0;
  v5 = *(*(this + 9) + 56);
  v98 = &RawElementsAttr;
  v101 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v101);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v98, DefiningOp))
  {
    v7 = *(this + 9);
    v8 = *(v7 + 24);
    v89 = v8;
    v9 = v7 + 56;
    v10 = 1;
  }

  else
  {
    v11 = *(*(this + 9) + 24);
    v98 = &RawElementsAttr;
    v101 = v11;
    v12 = mlir::Value::getDefiningOp(&v101);
    if (!v12 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v98, v12))
    {
      return 0;
    }

    v10 = 0;
    v13 = *(this + 9);
    v8 = *(v13 + 56);
    v89 = v8;
    v9 = v13 + 24;
  }

  v14 = (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v87 = v14;
  v88 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  mlir::anec::getIndexFromDim(1, v16);
  if (v17)
  {
    if ((mlir::ElementsAttr::isSplat(&RawElementsAttr) & 1) == 0 && !mlir::anec::allElementsOnAxis(v87, v88, 1))
    {
      return 0;
    }

    v18 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8) : 0;
    v86[0] = v18;
    v86[1] = v19;
    v20 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8) : 0;
    v85[0] = v20;
    v85[1] = v21;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v86);
    v24 = v23;
    v25 = mlir::CallableOpInterface::getArgAttrsAttr(v85);
    if (v24 != v26 || memcmp(ArgAttrsAttr, v25, 8 * v24))
    {
      return 0;
    }

    v29 = mlir::CallableOpInterface::getArgAttrsAttr(&v87);
    v31 = v30;
    v104 = v106;
    v105 = 0x500000000;
    v32 = (8 * v30) >> 3;
    if (v32 < 6)
    {
      v33 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v32, 8);
      v33 = v105;
    }

    if (v31)
    {
      memcpy(&v104[8 * v33], v29, 8 * v31);
      v33 = v105;
    }

    LODWORD(v105) = v33 + v31;
    if (!mlir::ElementsAttr::isSplat(&RawElementsAttr))
    {
LABEL_49:
      v44 = v104;
      v45 = v105;
      F16Type = mlir::Builder::getF16Type(a2 + 1, v34);
      v84 = mlir::MemRefType::get(v44, v45, F16Type, 0, 0, 0);
      Type = mlir::ElementsAttr::getType(&RawElementsAttr);
      if (*(*mlir::getElementTypeOrSelf(Type) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v101 = v103;
        v102 = 0xC00000000;
        mlir::getFloatValues<float>(RawElementsAttr, v91, &v101, 0);
        v54 = v104;
        v55 = v105;
        F32Type = mlir::Builder::getF32Type(a2 + 1, v56);
        v58 = mlir::RankedTensorType::get(v54, v55, F32Type, 0);
        RawElementsAttr = mlir::createRawElementsAttr(v58, v101, 4 * v102);
        v91 = v59;
        if (v101 != v103)
        {
          free(v101);
        }
      }

      else if (mlir::ElementsAttr::isSplat(&RawElementsAttr))
      {
        v101 = RawElementsAttr;
        v48 = v104;
        v49 = v105;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(RawElementsAttr);
        v51 = mlir::RankedTensorType::get(v48, v49, ElementTypeOrSelf, 0);
        v52 = v51;
        if (v51)
        {
          v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
        }

        else
        {
          v53 = 0;
        }

        v60 = mlir::DenseElementsAttr::reshape(&v101, v52, v53);
        v61 = v60;
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v60 + 8);
        }

        RawElementsAttr = v61;
        v91 = v60;
      }

      v83 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), *(this + 3), &v84, &RawElementsAttr);
      v62 = v104;
      v63 = v105;
      v65 = mlir::Builder::getF32Type(a2 + 1, v64);
      v66 = mlir::RankedTensorType::get(v62, v63, v65, 0);
      v101 = v103;
      v103[0] = 0;
      v102 = 0xC00000001;
      v98 = v100;
      v100[0] = 1065353216;
      v99 = 0xC00000001;
      v95 = v97;
      *v97 = -1082130432;
      v96 = 0xC00000001;
      v67 = *(this + 3);
      v93 = mlir::createRawElementsAttr(v66, v97, 4uLL);
      v94 = v68;
      v80 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v67, &v84, &v93) - 16;
      v69 = *(this + 3);
      v93 = mlir::createRawElementsAttr(v66, v101, 4 * v102);
      v94 = v70;
      v82 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v69, &v84, &v93) - 16;
      v71 = *(this + 3);
      v93 = mlir::createRawElementsAttr(v66, v98, 4 * v99);
      v94 = v72;
      v81 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v71, &v84, &v93) - 16;
      v73 = *(*(this + 6) + 16);
      if (v73 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
      {
        v74 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v85, &v89, &v81, &v83);
      }

      else
      {
        if (v73 != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
        {
          if (v73 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
          {
            v79 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v85, &v89, &v80, &v82) - 16;
            v75 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v85, &v79, &v81, &v83) - 16;
            v79 = v75;
            if (v10)
            {
              v75 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v85, &v79, &v80, &v82) - 16;
              v79 = v75;
            }

            v92 = v75;
            v27 = 1;
            mlir::ValueRange::ValueRange(&v93, &v92, 1uLL);
            (**a2)(a2, this, v93, v94);
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_66;
        }

        v74 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a2 + 1), *(this + 3), v85, &v89, &v83, &v82);
      }

      (*(*a2 + 1))(a2, this, v74);
      v27 = 1;
LABEL_66:
      if (v95 != v97)
      {
        free(v95);
      }

      if (v98 != v100)
      {
        free(v98);
      }

      if (v101 != v103)
      {
        free(v101);
      }

      goto LABEL_72;
    }

    v35 = mlir::CallableOpInterface::getArgAttrsAttr(v86);
    if (mlir::ShapedType::getNumElements(v35, v36) != 1)
    {
      v37 = mlir::CallableOpInterface::getArgAttrsAttr(v86);
      NumElements = mlir::ShapedType::getNumElements(v37, v38);
      if (NumElements < mlir::ElementsAttr::getNumElements(RawElementsAttr, v91))
      {
        v27 = 0;
LABEL_72:
        if (v104 != v106)
        {
          free(v104);
        }

        return v27;
      }
    }

    mlir::CallableOpInterface::getArgAttrsAttr(v86);
    v40 = v34;
    v101 = v103;
    HIDWORD(v102) = 5;
    if (v34 < 6)
    {
      if (v34)
      {
        memset_pattern16(v103, &unk_1E096FAE0, 8 * v34);
      }

      v41 = v103;
    }

    else
    {
      LODWORD(v102) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v103, v34, 8);
      v41 = v101;
      memset_pattern16(v101, &unk_1E096FAE0, 8 * v40);
    }

    LODWORD(v102) = v40;
    v42 = v105;
    if (v105 >= v40)
    {
      if (v40)
      {
        memmove(v104, v41, 8 * v40);
      }

      goto LABEL_47;
    }

    if (HIDWORD(v105) >= v40)
    {
      if (v105)
      {
        memmove(v104, v41, 8 * v105);
        goto LABEL_45;
      }
    }

    else
    {
      LODWORD(v105) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v40, 8);
    }

    v42 = 0;
LABEL_45:
    v43 = v102 - v42;
    if (v43)
    {
      memcpy(&v104[8 * v42], &v101[8 * v42], 8 * v43);
    }

LABEL_47:
    LODWORD(v105) = v40;
    if (v101 != v103)
    {
      free(v101);
    }

    goto LABEL_49;
  }

  std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::anec::ElementwiseSub::canonicalize(v76, v77, v78);
}

uint64_t mlir::anec::ElementwiseMax::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = *(*(a1 + 72) + 56);
  v20 = &v18;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v20, DefiningOp) && mlir::DenseElementsAttr::isSplat(&v18) && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) < 8))
  {
    v19 = *(*(a1 + 72) + 24);
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v18, &__p);
    v8 = llvm::APFloatBase::IEEEhalf(v7);
    LOBYTE(v20) = 0;
    v9 = llvm::APFloat::convert(&__p, v8, 1, &v20);
    v10 = v23;
    v12 = llvm::APFloatBase::PPCDoubleDouble(v9);
    if (v12 == v10)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v21, v10);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v21, v10, 0, v11);
    }

    if (v12 == v21[0])
    {
      llvm::detail::DoubleAPFloat::makeLargest(v21, 0, v13, v14);
    }

    else
    {
      llvm::detail::IEEEFloat::makeLargest(v21, 0);
    }

    v17 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(a2 + 1, *(a1 + 24), &v19, &__p, &v20);
    (*(*a2 + 1))(a2, a1, v17);
    if (v12 == v21[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v21);
    }

    if (v12 == v23)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v23);
    }

    return 1;
  }

  else
  {
    __p = operator new(0x30uLL);
    v23 = xmmword_1E0999960;
    strcpy(__p, "rhs is not a non-broadcasting scalar constant");
    result = mlir::logMatchFailure(&__p, *(a1 + 24), a2);
    if (SHIBYTE(v23) < 0)
    {
      v16 = result;
      operator delete(__p);
      return v16;
    }
  }

  return result;
}

uint64_t mlir::anec::ElementwiseMin::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = *(*(a1 + 72) + 56);
  v20 = &v18;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v20, DefiningOp) && mlir::DenseElementsAttr::isSplat(&v18) && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) < 8))
  {
    v19 = *(*(a1 + 72) + 24);
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v18, &__p);
    v8 = llvm::APFloatBase::IEEEhalf(v7);
    LOBYTE(v20) = 0;
    v9 = llvm::APFloat::convert(&__p, v8, 1, &v20);
    v10 = v23;
    v12 = llvm::APFloatBase::PPCDoubleDouble(v9);
    if (v12 == v10)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v21, v10);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v21, v10, 0, v11);
    }

    if (v12 == v21[0])
    {
      llvm::detail::DoubleAPFloat::makeLargest(v21, 1, v13, v14);
    }

    else
    {
      llvm::detail::IEEEFloat::makeLargest(v21, 1);
    }

    v17 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat,llvm::APFloat&>(a2 + 1, *(a1 + 24), &v19, &v20, &__p);
    (*(*a2 + 1))(a2, a1, v17);
    if (v12 == v21[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v21);
    }

    if (v12 == v23)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v23);
    }

    return 1;
  }

  else
  {
    __p = operator new(0x30uLL);
    v23 = xmmword_1E0999960;
    strcpy(__p, "rhs is not a non-broadcasting scalar constant");
    result = mlir::logMatchFailure(&__p, *(a1 + 24), a2);
    if (SHIBYTE(v23) < 0)
    {
      v16 = result;
      operator delete(__p);
      return v16;
    }
  }

  return result;
}

BOOL mlir::anec::Ceil::addOpToNetwork(uint64_t *a1, void *a2)
{
  v172 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!a2)
  {
    AttrDictionary = "network should not be nullptr";
    v162 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v171 == 1)
    {
      if (v170 != &v171)
      {
        free(v170);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v169;
        v11 = __p;
        if (v169 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v169 = v9;
        operator delete(v11);
      }

      v12 = v166;
      if (v166)
      {
        v13 = v167;
        v14 = v166;
        if (v167 != v166)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v166;
        }

        v167 = v12;
        operator delete(v14);
      }

      if (v164 != v165)
      {
        free(v164);
      }
    }

    return v8;
  }

  v4 = *(*(v2 + 72) + 24);
  if (*(v2 + 36))
  {
    v5 = v2 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  mlir::anec::computeOpKeyString(&v157, v2);
  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v156))
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v156))
    {
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v156);
      if (v7)
      {
        if (*(v7 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v7[5], v7[6]);
        }

        else
        {
          __str = *(v7 + 5);
        }

        LOBYTE(v164) = 1;
        std::string::operator=(&v156, &__str);
        if (v164 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_30;
      }
    }

    else
    {
      __str.__r_.__value_.__s.__data_[0] = 0;
      LOBYTE(v164) = 0;
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    abort();
  }

LABEL_30:
  v17 = *(*(v2 + 48) + 16);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
  {
    v18 = 0;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v18 = 1;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id)
  {
    v18 = 2;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
  {
    v18 = 3;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id)
  {
    v18 = 4;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
  {
    v18 = 5;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id)
  {
    v18 = 6;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
  {
    v18 = 7;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
  {
    v18 = 8;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id)
  {
    v18 = 9;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id)
  {
    v18 = 10;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
  {
    v18 = 11;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
  {
    v18 = 12;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
  {
    v18 = 13;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
  {
    v18 = 14;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id)
  {
    v18 = 15;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id)
  {
    v18 = 16;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v18 = 17;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id)
  {
    v18 = 18;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id)
  {
    v18 = 19;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id)
  {
    v18 = 20;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sqr,void>::id)
  {
    v18 = 21;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id)
  {
    v18 = 22;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id)
  {
    v18 = 23;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id)
  {
    v18 = 24;
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id)
  {
    v18 = 25;
  }

  else
  {
    v18 = 0;
  }

  v19 = operator new(0xC0uLL);
  *v19 = &unk_1F5B2E868;
  v20 = (v19 + 8);
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v20, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v20->__r_.__value_.__l.__data_ = *&v157.__r_.__value_.__l.__data_;
    *(v19 + 3) = *(&v157.__r_.__value_.__l + 2);
  }

  *(v19 + 8) = 4;
  *(v19 + 5) = 0;
  v19[48] = 0;
  *(v19 + 7) = @"Neuron";
  *(v19 + 8) = v19 + 80;
  *(v19 + 9) = 0x100000000;
  *(v19 + 14) = v19 + 128;
  *(v19 + 15) = 0x300000000;
  *v19 = &unk_1F5B34368;
  *(v19 + 44) = v18;
  v21 = operator new(0x20uLL);
  v21->__shared_owners_ = 0;
  v21->__vftable = &unk_1F5B33BD0;
  v21->__shared_weak_owners_ = 0;
  v21[1].__vftable = v19;
  v22 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8) || (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8), !v22))
  {
    AttrDictionary = "Unable to get input shape type";
    v162 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v171 != 1)
    {
      goto LABEL_260;
    }

    if (v170 != &v171)
    {
      free(v170);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v169;
      v34 = __p;
      if (v169 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v169 = v32;
      operator delete(v34);
    }

    v27 = v166;
    if (!v166)
    {
      goto LABEL_258;
    }

    v35 = v167;
    v29 = v166;
    if (v167 == v166)
    {
LABEL_257:
      v167 = v27;
      operator delete(v29);
LABEL_258:
      if (v164 != v165)
      {
        free(v164);
      }

      goto LABEL_260;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        operator delete[](v36);
      }
    }

    while (v35 != v27);
LABEL_256:
    v29 = v166;
    goto LABEL_257;
  }

  ANECIRDataType = mlir::anec::getANECIRDataType(v4);
  if ((ANECIRDataType & 0x100000000) == 0)
  {
    AttrDictionary = "Unable to get input data type";
    v162 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v171 != 1)
    {
      goto LABEL_260;
    }

    if (v170 != &v171)
    {
      free(v170);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v169;
      v26 = __p;
      if (v169 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v169 = v24;
      operator delete(v26);
    }

    v27 = v166;
    if (!v166)
    {
      goto LABEL_258;
    }

    v28 = v167;
    v29 = v166;
    if (v167 == v166)
    {
      goto LABEL_257;
    }

    do
    {
      v31 = *--v28;
      v30 = v31;
      *v28 = 0;
      if (v31)
      {
        operator delete[](v30);
      }
    }

    while (v28 != v27);
    goto LABEL_256;
  }

  mlir::anec::ANECIRUnit::AddInput(v19, &v156, ANECIRDataType);
  v38 = *(*(v2 + 48) + 16);
  if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
  {
    goto LABEL_231;
  }

  if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v154 = NextResultAtOffset;
    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    Value = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    v44 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v158 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v44 + 16 * v45 - 16), **(*(v2 + 48) + 96));
    v46 = mlir::FloatAttr::getValue(&AttrDictionary, &v158);
    v47 = v161[0];
    v49 = llvm::APFloatBase::PPCDoubleDouble(v46);
    if (v49 == v47)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&__str.__r_.__value_.__l.__size_, v47);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&__str.__r_.__value_.__l.__size_, v47, 0, v48);
    }

    if (v49 == __str.__r_.__value_.__l.__size_)
    {
      llvm::detail::DoubleAPFloat::makeLargest(&__str.__r_.__value_.__r.__words[1], 0, v50, v51);
    }

    else
    {
      llvm::detail::IEEEFloat::makeLargest(&__str.__r_.__value_.__r.__words[1], 0);
    }

    if (v49 == v161[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v161);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v161);
    }

    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    v52 = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v2);
    v53 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v158 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v52 + 16), (v53 + 16 * v54), *(*(*(v2 + 48) + 96) + 8));
    mlir::FloatAttr::getValue(&AttrDictionary, &v158);
    if (v49 == __str.__r_.__value_.__l.__size_)
    {
      v57 = llvm::detail::DoubleAPFloat::compare(&__str.__r_.__value_.__r.__words[1], v161, v55, v56);
    }

    else
    {
      v57 = llvm::detail::IEEEFloat::compare(&__str.__r_.__value_.__r.__words[1], v161, v55, v56);
    }

    p_AttrDictionary = &AttrDictionary;
    if (v57)
    {
      p_size = v161;
    }

    else
    {
      p_AttrDictionary = &__str;
      p_size = &__str.__r_.__value_.__l.__size_;
    }

    if (v49 == p_AttrDictionary->__r_.__value_.__l.__size_)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(&v158, p_size, v58);
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(&v158, p_size);
    }

    v61 = v159;
    if (v159 < 0x41)
    {
      v62 = v158;
      if (v158 >= 0xFFFF)
      {
        v62 = -1;
      }

      v152 = v62;
LABEL_173:
      if (v49 == v161[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v161);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v161);
      }

      AttrDictionary = mlir::Operation::getAttrDictionary(v2);
      v71 = mlir::ArrayAttr::getValue(&AttrDictionary);
      AttrDictionary = mlir::Operation::getAttrDictionary(v2);
      v72 = mlir::ArrayAttr::getValue(&AttrDictionary);
      v158 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v71, (v72 + 16 * v73 - 16), **(*(v2 + 48) + 96));
      mlir::FloatAttr::getValue(&AttrDictionary, &v158);
      if (v49 == __str.__r_.__value_.__l.__size_)
      {
        v76 = llvm::detail::DoubleAPFloat::compare(&__str.__r_.__value_.__r.__words[1], v161, v74, v75);
      }

      else
      {
        v76 = llvm::detail::IEEEFloat::compare(&__str.__r_.__value_.__r.__words[1], v161, v74, v75);
      }

      p_str = &AttrDictionary;
      if (v76)
      {
        v79 = v161;
      }

      else
      {
        p_str = &__str;
        v79 = &__str.__r_.__value_.__l.__size_;
      }

      if (v49 == p_str->__r_.__value_.__l.__size_)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&v158, v79, v77);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&v158, v79);
      }

      v80 = v159;
      if (v159 < 0x41)
      {
        if (v158 >= 0xFFFF)
        {
          LOWORD(v81) = -1;
        }

        else
        {
          LOWORD(v81) = v158;
        }

        goto LABEL_196;
      }

      if (v80 - llvm::APInt::countLeadingZerosSlowCase(&v158) <= 0x40)
      {
        if (*v158 >= 0xFFFFuLL)
        {
          LOWORD(v81) = -1;
        }

        else
        {
          v81 = *v158;
        }
      }

      else
      {
        LOWORD(v81) = -1;
        if (!v158)
        {
LABEL_196:
          if (v49 == v161[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v161);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v161);
          }

          NextResultAtOffset = v154;
          *(v19 + 93) = v152;
          *(v19 + 92) = v81;
          if (v49 == __str.__r_.__value_.__l.__size_)
          {
            goto LABEL_230;
          }

          goto LABEL_200;
        }
      }

      operator delete[](v158);
      goto LABEL_196;
    }

    if (v61 - llvm::APInt::countLeadingZerosSlowCase(&v158) <= 0x40)
    {
      v70 = *v158;
      if (*v158 >= 0xFFFFuLL)
      {
        LOWORD(v70) = -1;
      }

      v152 = v70;
    }

    else
    {
      v152 = -1;
      if (!v158)
      {
        goto LABEL_173;
      }
    }

    operator delete[](v158);
    goto LABEL_173;
  }

  if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
  {
    if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
    {
      v158 = mlir::Operation::getAttrDictionary(v2);
      v63 = mlir::ArrayAttr::getValue(&v158);
      v158 = mlir::Operation::getAttrDictionary(v2);
      v64 = mlir::ArrayAttr::getValue(&v158);
      v158 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v63, (v64 + 16 * v65), **(*(v2 + 48) + 96));
      v66 = mlir::FloatAttr::getValue(&__str, &v158);
      size = __str.__r_.__value_.__l.__size_;
      v69 = llvm::APFloatBase::PPCDoubleDouble(v66);
      if (v69 == size)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1], v68);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1]);
      }

      v88 = v161[0];
      if (LODWORD(v161[0]) < 0x41)
      {
        if (AttrDictionary < 0x10000)
        {
          *(v19 + 94) = AttrDictionary;
        }

        else
        {
          *(v19 + 94) = -1;
        }

LABEL_229:
        if (v69 == __str.__r_.__value_.__l.__size_)
        {
LABEL_230:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
          goto LABEL_231;
        }

LABEL_200:
        llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
        goto LABEL_231;
      }

      v89 = v88 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary);
      v90 = AttrDictionary;
      if (v89 <= 0x40)
      {
        v91 = *AttrDictionary;
        if (*AttrDictionary >= 0xFFFFuLL)
        {
          LOWORD(v91) = -1;
        }

        *(v19 + 94) = v91;
      }

      else
      {
        *(v19 + 94) = -1;
        if (!v90)
        {
          goto LABEL_229;
        }
      }

LABEL_228:
      operator delete[](v90);
      goto LABEL_229;
    }

    if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
    {
      if (v38 == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
      {
        goto LABEL_201;
      }

      if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
      {
        if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
        {
          if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
          {
            if (v38 != &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
            {
              goto LABEL_231;
            }

            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v39 = mlir::ArrayAttr::getValue(&__str);
            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v40 = mlir::ArrayAttr::getValue(&__str);
            AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v39, (v40 + 16 * v41), **(*(v2 + 48) + 96));
            v42 = &AttrDictionary;
            goto LABEL_202;
          }

          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v121 = mlir::ArrayAttr::getValue(&__str);
          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v122 = mlir::ArrayAttr::getValue(&__str);
          AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v121, (v122 + 16 * v123 - 16), **(*(v2 + 48) + 96));
          v124 = mlir::FloatAttr::getValue(&__str, &AttrDictionary);
          v125 = __str.__r_.__value_.__l.__size_;
          v127 = llvm::APFloatBase::PPCDoubleDouble(v124);
          if (v127 == v125)
          {
            llvm::detail::DoubleAPFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1], v126);
          }

          else
          {
            llvm::detail::IEEEFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1]);
          }

          v139 = v161[0];
          if (LODWORD(v161[0]) < 0x41)
          {
            v140 = AttrDictionary;
            if (AttrDictionary >= 0xFFFF)
            {
              v140 = -1;
            }

            v153 = v140;
LABEL_321:
            if (v127 == __str.__r_.__value_.__l.__size_)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v142 = mlir::ArrayAttr::getValue(&__str);
            __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
            v143 = mlir::ArrayAttr::getValue(&__str);
            AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v142 + 16), (v143 + 16 * v144), *(*(*(v2 + 48) + 96) + 8));
            mlir::FloatAttr::getValue(&__str, &AttrDictionary);
            if (v127 == __str.__r_.__value_.__l.__size_)
            {
              llvm::detail::DoubleAPFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1], v145);
            }

            else
            {
              llvm::detail::IEEEFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1]);
            }

            v146 = v161[0];
            if (LODWORD(v161[0]) >= 0x41)
            {
              if (v146 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
              {
                if (*AttrDictionary >= 0xFFFFuLL)
                {
                  LOWORD(v147) = -1;
                }

                else
                {
                  v147 = *AttrDictionary;
                }
              }

              else
              {
                LOWORD(v147) = -1;
                if (!AttrDictionary)
                {
                  goto LABEL_338;
                }
              }

              operator delete[](AttrDictionary);
            }

            else if (AttrDictionary >= 0xFFFF)
            {
              LOWORD(v147) = -1;
            }

            else
            {
              LOWORD(v147) = AttrDictionary;
            }

LABEL_338:
            if (v127 == __str.__r_.__value_.__l.__size_)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
            }

            *(v19 + 91) = v147;
            *(v19 + 92) = v153;
            goto LABEL_231;
          }

          if (v139 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
          {
            v141 = *AttrDictionary;
            if (*AttrDictionary >= 0xFFFFuLL)
            {
              LOWORD(v141) = -1;
            }

            v153 = v141;
          }

          else
          {
            v153 = -1;
            if (!AttrDictionary)
            {
              goto LABEL_321;
            }
          }

          operator delete[](AttrDictionary);
          goto LABEL_321;
        }

LABEL_201:
        v158 = mlir::Operation::getAttrDictionary(v2);
        v82 = mlir::ArrayAttr::getValue(&v158);
        v158 = mlir::Operation::getAttrDictionary(v2);
        v83 = mlir::ArrayAttr::getValue(&v158);
        v158 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v82, (v83 + 16 * v84), **(*(v2 + 48) + 96));
        v42 = &v158;
LABEL_202:
        v85 = mlir::FloatAttr::getValue(&__str, v42);
        v86 = __str.__r_.__value_.__l.__size_;
        v69 = llvm::APFloatBase::PPCDoubleDouble(v85);
        if (v69 == v86)
        {
          llvm::detail::DoubleAPFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1], v87);
        }

        else
        {
          llvm::detail::IEEEFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1]);
        }

        v99 = v161[0];
        if (LODWORD(v161[0]) < 0x41)
        {
          if (AttrDictionary < 0x10000)
          {
            *(v19 + 95) = AttrDictionary;
          }

          else
          {
            *(v19 + 95) = -1;
          }

          goto LABEL_229;
        }

        v100 = v99 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary);
        v90 = AttrDictionary;
        if (v100 <= 0x40)
        {
          v101 = *AttrDictionary;
          if (*AttrDictionary >= 0xFFFFuLL)
          {
            LOWORD(v101) = -1;
          }

          *(v19 + 95) = v101;
        }

        else
        {
          *(v19 + 95) = -1;
          if (!v90)
          {
            goto LABEL_229;
          }
        }

        goto LABEL_228;
      }

      __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
      v92 = mlir::ArrayAttr::getValue(&__str);
      __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
      v93 = mlir::ArrayAttr::getValue(&__str);
      AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v92, (v93 + 16 * v94 - 16), **(*(v2 + 48) + 96));
      v95 = mlir::FloatAttr::getValue(&__str, &AttrDictionary);
      v96 = __str.__r_.__value_.__l.__size_;
      v98 = llvm::APFloatBase::PPCDoubleDouble(v95);
      if (v98 == v96)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1], v97);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1]);
      }

      v128 = v161[0];
      if (LODWORD(v161[0]) < 0x41)
      {
        if (AttrDictionary >= 0xFFFF)
        {
          v129 = -1;
        }

        else
        {
          v129 = AttrDictionary;
        }

        goto LABEL_288;
      }

      if (v128 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
      {
        v130 = *AttrDictionary;
        if (*AttrDictionary >= 0xFFFFuLL)
        {
          LOWORD(v130) = -1;
        }

        v129 = v130;
      }

      else
      {
        v129 = -1;
        if (!AttrDictionary)
        {
LABEL_288:
          v155 = NextResultAtOffset;
          if (v98 == __str.__r_.__value_.__l.__size_)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v131 = mlir::ArrayAttr::getValue(&__str);
          __str.__r_.__value_.__r.__words[0] = mlir::Operation::getAttrDictionary(v2);
          v132 = mlir::ArrayAttr::getValue(&__str);
          AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v131 + 16), (v132 + 16 * v133), *(*(*(v2 + 48) + 96) + 8));
          mlir::FloatAttr::getValue(&__str, &AttrDictionary);
          v135 = v98;
          if (v98 == __str.__r_.__value_.__l.__size_)
          {
            v136 = v129;
            llvm::detail::DoubleAPFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1], v134);
          }

          else
          {
            v136 = v129;
            llvm::detail::IEEEFloat::bitcastToAPInt(&AttrDictionary, &__str.__r_.__value_.__r.__words[1]);
          }

          v137 = v161[0];
          if (LODWORD(v161[0]) >= 0x41)
          {
            if (v137 - llvm::APInt::countLeadingZerosSlowCase(&AttrDictionary) <= 0x40)
            {
              if (*AttrDictionary >= 0xFFFFuLL)
              {
                LOWORD(v138) = -1;
              }

              else
              {
                v138 = *AttrDictionary;
              }
            }

            else
            {
              LOWORD(v138) = -1;
              if (!AttrDictionary)
              {
                goto LABEL_305;
              }
            }

            operator delete[](AttrDictionary);
          }

          else if (AttrDictionary >= 0xFFFF)
          {
            LOWORD(v138) = -1;
          }

          else
          {
            LOWORD(v138) = AttrDictionary;
          }

LABEL_305:
          if (v135 == __str.__r_.__value_.__l.__size_)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__str.__r_.__value_.__r.__words[1]);
          }

          *(v19 + 90) = v136;
          *(v19 + 91) = v138;
          NextResultAtOffset = v155;
          goto LABEL_231;
        }
      }

      operator delete[](AttrDictionary);
      goto LABEL_288;
    }
  }

LABEL_231:
  v102 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v102 + 8))
  {
    v158 = 0;
    v159 = 0;
    goto LABEL_240;
  }

  v103 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v102 + 8);
  v158 = v102;
  v159 = v103;
  if (!v102)
  {
LABEL_240:
    AttrDictionary = "Unable to get output shape type";
    v162 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v171 != 1)
    {
      goto LABEL_260;
    }

    if (v170 != &v171)
    {
      free(v170);
    }

    v109 = __p;
    if (__p)
    {
      v110 = v169;
      v111 = __p;
      if (v169 != __p)
      {
        do
        {
          v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
        }

        while (v110 != v109);
        v111 = __p;
      }

      v169 = v109;
      operator delete(v111);
    }

    v27 = v166;
    if (!v166)
    {
      goto LABEL_258;
    }

    v112 = v167;
    v29 = v166;
    if (v167 == v166)
    {
      goto LABEL_257;
    }

    do
    {
      v114 = *--v112;
      v113 = v114;
      *v112 = 0;
      if (v114)
      {
        operator delete[](v113);
      }
    }

    while (v112 != v27);
    goto LABEL_256;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v158);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v104);
  if (v106)
  {
    v107 = IndexFromDim;
    v108 = mlir::anec::getANECIRDataType(NextResultAtOffset);
    if ((v108 & 0x100000000) != 0)
    {
      v116 = v108;
      v117 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v158) + 8 * v107);
      v118 = *(v19 + 30);
      if (v118 >= *(v19 + 31))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v19 + 112), v19 + 128, v118 + 1, 16);
        LODWORD(v118) = *(v19 + 30);
      }

      v119 = (*(v19 + 14) + 16 * v118);
      *v119 = v116;
      v119[1] = v117;
      ++*(v19 + 30);
      __str.__r_.__value_.__r.__words[0] = v19;
      __str.__r_.__value_.__l.__size_ = v21;
      v8 = 1;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      mlir::anec::ANECIRNetwork::AddUnit(a2, &__str);
      v120 = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        if (!atomic_fetch_add((__str.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v120->__on_zero_shared)(v120);
          std::__shared_weak_count::__release_weak(v120);
        }

        v8 = 1;
      }

LABEL_261:
      if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_263;
        }
      }

      else
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_263:
          if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return v8;
          }

LABEL_267:
          operator delete(v157.__r_.__value_.__l.__data_);
          return v8;
        }
      }

      operator delete(v156.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v8;
      }

      goto LABEL_267;
    }

    AttrDictionary = "Unable to get output data type";
    v162 = 259;
    mlir::Operation::emitError(v2, &AttrDictionary, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__str);
    }

    if (v171 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&__str.__r_.__value_.__r.__words[1]);
    }

LABEL_260:
    v8 = 0;
    goto LABEL_261;
  }

  std::__throw_bad_optional_access[abi:nn200100]();
}

BOOL mlir::anec::anonymous namespace::verifyNeuronWithANEC(mlir::ElementsAttr *a1, unint64_t a2, mlir::Block **a3, int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(a3[6] + 2);
  if (a3 && v5 == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
  {
    v6 = @"Ceil";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v6 = @"ClampedReLU";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id)
  {
    v6 = @"Cos";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
  {
    v6 = @"Degamma";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id)
  {
    v6 = @"Dirac";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
  {
    v6 = @"ELU";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id)
  {
    v6 = @"Erf";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
  {
    v6 = @"Exp2";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
  {
    v6 = @"Floor";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id)
  {
    v6 = @"GELU";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id)
  {
    v6 = @"SigmoidHighPrecision";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
  {
    v6 = @"Inv";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
  {
    v6 = @"LeakyReLU";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
  {
    v6 = @"Log2";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
  {
    v6 = @"ReLUN";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id)
  {
    v6 = @"ReLU";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id)
  {
    v6 = @"RoundNearest";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v6 = @"Rsqrt";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id)
  {
    v6 = @"Sigmoid";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id)
  {
    v6 = @"Sign";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id)
  {
    v6 = @"Sin";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Sqr,void>::id)
  {
    v6 = @"Sqr";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id)
  {
    v6 = @"Sqrt";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id)
  {
    v6 = @"Swish";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id)
  {
    v6 = @"Tanh";
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id)
  {
    v6 = @"Trunc";
  }

  else
  {
    v6 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v22 = v6;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v20 = 0;
  v21 = 0;
  v7 = 1;
  *buffer = 1;
  v25[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidateNeuronLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v25);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v26, "Invalid configuration", 21);
    std::stringbuf::str();
    v25[0] = *MEMORY[0x1E69E54D8];
    v8 = *(MEMORY[0x1E69E54D8] + 72);
    *(v25 + *(v25[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v26 = v8;
    v27 = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28[7].__locale_);
    }

    v27 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v28);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v30);
    LOWORD(v28[0].__locale_) = 260;
    v25[0] = &v18;
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v9 = v38;
      if (v38)
      {
        v10 = v39;
        v11 = v38;
        if (v39 != v38)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = v38;
        }

        v39 = v9;
        operator delete(v11);
      }

      v12 = v36;
      if (v36)
      {
        v13 = v37;
        v14 = v36;
        if (v37 != v36)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v36;
        }

        v37 = v12;
        operator delete(v14);
      }

      if (v34 != &v35)
      {
        free(v34);
      }
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v7;
}

float mlir::anec::Ceil::getExecutionCost(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp)
  {
    goto LABEL_8;
  }

  v5 = 0.0;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    while (1)
    {
      v6 = *(*(DefiningOp + 48) + 16);
      if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
      {
        break;
      }

      v8 = *(*(DefiningOp + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v8);
      if (!DefiningOp)
      {
        goto LABEL_8;
      }
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
    {
LABEL_8:
      mlir::anec::Ceil::getExecutionCost(v3, a2, &v8);
      return *&v8;
    }
  }

  return v5;
}

uint64_t mlir::anec::Invert::verifyAttributesWithFamily(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  if (a2 > 1)
  {
  }

  else
  {
    v10[3] = v2;
    v10[4] = v3;
    v6 = a1;
    v10[0] = *(*(v5 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v10);
    if (!DefiningOp)
    {
      return 0;
    }

    {
      v9 = DefiningOp;
      DefiningOp = v9;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v10[0] = mlir::getElementTypeOrSelf(*(*(*v6 + 72) + 24));
      return mlir::Type::isF16(v10);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::anec::detail::VerifyAttributesWithFamilyInterfaceTrait<mlir::anec::Invert>::getParentFamily(uint64_t *a1)
{
  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)7>(*a1))
  {
    return 7;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)6>(*a1))
  {
    return 6;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)5>(*a1))
  {
    return 5;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)4>(*a1))
  {
    return 4;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)3>(*a1))
  {
    return 3;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>(*a1))
  {
    return 2;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)1>(*a1))
  {
    return 1;
  }

  mlir::anec::parentIsAtLeast<(mlir::anec::Family)0>(*a1);
  return 0;
}

BOOL mlir::anec::ElementwiseAdd::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D36C8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

uint64_t mlir::anec::anonymous namespace::generateANECValidateError<ANECElementWiseLayerDescAlternate>(uint64_t a1, unint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, "Invalid configuration", 21);
  if (a1)
  {
    if (a2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, " for the following reasons: ", 28);
      v5 = *a2;
      if (*a2)
      {
        v6 = 1;
        do
        {
          CFStringGetCString(a2[v6], buffer, 512, 0x8000100u);
          v7 = strlen(buffer);
          v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v14, buffer, v7);
          if (v6 == v5)
          {
            v9 = "";
          }

          else
          {
            v9 = ", ";
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v9, 2 * (v6 != v5));
          v5 = *a2;
        }

        while (*a2 > v6++);
      }
    }
  }

  std::stringbuf::str();
  v13[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v11;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12E5AA0](&v18);
}

BOOL mlir::anec::ElementwiseMult::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D36D8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseMin::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D36E8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseMax::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D36F8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseSub::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3708;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseDiv::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3718;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwisePower::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3728;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3738;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseNotEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3748;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseLessThan::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3758;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseLessThanEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3768;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseGreaterThanEqual::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3778;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseGreaterThan::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3788;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseAbs::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3798;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D37A8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseGreaterThanEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D37B8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseGreaterThanZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D37C8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseLessThanEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D37D8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseLessThanZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D37E8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseNotEqualZero::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D37F8;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseSquare::verifyWithANEC(uint64_t *a1, mlir::ElementsAttr *a2, unint64_t a3, int a4)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v22 = xmmword_1E86D3808;
  v32[0] = v33;
  v32[1] = 0x100000000;
  v23[0] = 1;
  v18 = 0;
  ANECUnitValidatorCreate();
  v20 = 0;
  v21 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v5 = *a1;
    v19 = 260;
    v18 = &v16;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v29;
        v9 = __p;
        if (v29 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v29 = v7;
        operator delete(v9);
      }

      v10 = v26;
      if (v26)
      {
        v11 = v27;
        v12 = v26;
        if (v27 != v26)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v26;
        }

        v27 = v10;
        operator delete(v12);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = 1;
  }

  ANECUnitValidatorDelete();
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  return v6;
}

BOOL mlir::anec::ElementwiseAbs::addOpToNetwork(mlir::anec::_anonymous_namespace_ **a1, mlir::Operation *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = operator new(0xC8uLL);
    v4 = v3;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = &unk_1F5B2E830;
    v5 = v3 + 24;
    v6 = v22[0];
    v22[0] = 0;
    *(v3 + 3) = &unk_1F5B2E868;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v3 + 32), *(v6 + 8), *(v6 + 16));
    }

    else
    {
      v7 = *(v6 + 8);
      *(v3 + 6) = *(v6 + 24);
      *(v3 + 2) = v7;
    }

    *(v4 + 14) = 17;
    *(v4 + 3) = &unk_1F5B34308;
    *(v4 + 8) = v6;
    v4[72] = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = v4 + 104;
    *(v4 + 12) = 0x100000000;
    *(v4 + 17) = v4 + 152;
    *(v4 + 18) = 0x300000000;
    *&v19 = v5;
    *(&v19 + 1) = v4;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v19);
    v17 = *(&v19 + 1);
    if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v22[0])
    {
      (*(*v22[0] + 8))(v22[0]);
    }

    return 1;
  }

  else
  {
    v20 = "network should not be nullptr";
    v21 = 259;
    mlir::OpState::emitError(a1, &v20, v22);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v28;
        v11 = __p;
        if (v28 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v28 = v9;
        operator delete(v11);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v26;
        v14 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v25;
        }

        v26 = v12;
        operator delete(v14);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v8;
}

unint64_t mlir::anec::Rsqrt::fold(mlir::Operation **a1, uint64_t a2)
{
  v38[3] = *MEMORY[0x1E69E9840];
  v3 = **(a2 + 40);
  if (!v3)
  {
    goto LABEL_6;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
  {
    v3 = 0;
LABEL_6:
    v35 = v3;
    v36 = 0;
    return 0;
  }

  v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
  v35 = v3;
  v36 = v4;
  mlir::mps::CPUNDArray::CPUNDArray(v34, v3, v4);
  Type = mlir::ElementsAttr::getType(&v35);
  v7 = Type;
  if (Type)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v8 = 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v33, v7, v8, 0);
  v32[0] = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(v32);
  v32[0] = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(v32);
  v32[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11), **(*(*a1 + 6) + 96));
  mlir::FloatAttr::getValue(&v37, v32);
  v15 = llvm::APFloat::convertToDouble(&v37, v12, v13, v14);
  v16 = mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v32, 6, v15);
  v17 = v38[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v16) == v17)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v38);
  }

  v18 = operator new(8uLL);
  v37 = v18;
  *v18 = v34;
  v38[0] = v18 + 1;
  v38[1] = v18 + 1;
  v19 = operator new(8uLL);
  v29 = v19;
  *v19 = v33;
  v30 = v19 + 1;
  v31 = v19 + 1;
  v20 = operator new(8uLL);
  v26 = v20;
  *v20 = 0;
  v27 = v20 + 1;
  v28 = v20 + 1;
  v21 = operator new(8uLL);
  __p = v21;
  *v21 = 0;
  v24 = v21 + 1;
  v25 = v21 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v32, &v37, &v29, &v26, &__p, 0, v34[2], v32);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v37)
  {
    v38[0] = v37;
    operator delete(v37);
  }

  v5 = mlir::mps::CPUNDArray::getElementsAttr(v33, 0, 0) & 0xFFFFFFFFFFFFFFFBLL;
  mlir::mps::CPUNDArray::~CPUNDArray(v33);
  mlir::mps::CPUNDArray::~CPUNDArray(v34);
  return v5;
}

uint64_t *mlir::anec::Rsqrt::getEpsilon@<X0>(mlir::Operation **this@<X0>, uint64_t *a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(a2, &AttrDictionary);
}

uint64_t mlir::anec::ScaledElementWise::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = a4;
  v23[1] = a5;
  v20 = v22;
  v21 = 0x600000000;
  if (mlir::anec::validateAndBroadcastShapes(a4, a5, &v20))
  {
    v11 = (*(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v19[0] = v11;
    v19[1] = v12;
    isSplat = mlir::ElementsAttr::isSplat(v19);
    v15 = mlir::MemRefType::get(v20, v21, isSplat, 0, 0, 0);
    v16 = *(a11 + 8);
    if (v16 >= *(a11 + 12))
    {
      v18 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v16 + 1, 8);
      v15 = v18;
      LODWORD(v16) = *(a11 + 8);
    }

    *(*a11 + 8 * v16) = v15;
    ++*(a11 + 8);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return v13;
}

uint64_t mlir::anec::validateAndBroadcastShapes(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v34[0] = a1;
  v34[1] = a2;
  if (a2 < 2)
  {
    return 0;
  }

  v4 = (*(mlir::ValueRange::dereference_iterator(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    v31 = v4;
    v32 = v5;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
    v8 = v7;
  }

  else
  {
    v8 = 0;
    ArgAttrsAttr = 0;
  }

  v9 = (*(mlir::ValueRange::dereference_iterator(v34, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v9)
  {
    return 0;
  }

  v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  v31 = v9;
  v32 = v10;
  v12 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
  result = 0;
  if (v8 >= 4 && v11 >= 4)
  {
    if (v8 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v8;
    }

    v15 = ArgAttrsAttr;
    v16 = v11;
    mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v15, v8, v14, &v31);
    mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v12, v16, v14, &v29);
    v17 = a3;
    v18 = *(a3 + 2);
    if (v14 != v18)
    {
      if (v14 >= v18)
      {
        if (v14 > *(a3 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v14, 8);
          v17 = a3;
          v18 = *(a3 + 2);
        }

        if (v14 != v18)
        {
          bzero((*v17 + 8 * v18), 8 * (v14 - v18));
          v17 = a3;
        }
      }

      *(v17 + 2) = v14;
    }

    v19 = 0;
    v20 = v29;
    v21 = v31;
    v22 = *v17;
    do
    {
      v23 = v21[v19];
      v24 = v20[v19];
      if (v24 != 1 && v23 != 1 && v23 != v24)
      {
        result = 0;
        goto LABEL_33;
      }

      if (v23 <= v24)
      {
        v23 = v20[v19];
      }

      *(v22 + 8 * v19++) = v23;
    }

    while (v14 != v19);
    result = 1;
LABEL_33:
    if (v20 != &v30)
    {
      v27 = result;
      free(v20);
      result = v27;
    }

    if (v31 != &v33)
    {
      v28 = result;
      free(v31);
      return v28;
    }
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::defaultIsCompatibleReturnType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    if (a4 == v8)
    {
      return 1;
    }

    v9 = mlir::TypeRange::dereference_iterator(a1, v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, v8);
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v21 = v9;
      v22 = v11;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      if (!v10)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
LABEL_9:
    v20[0] = v10;
    v20[1] = v12;
    if (!mlir::CallOpInterface::getArgOperands(&v21))
    {
      return 0;
    }

    if (!mlir::CallOpInterface::getArgOperands(v20))
    {
      return 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v21);
    v15 = v14;
    v16 = mlir::CallableOpInterface::getArgAttrsAttr(v20);
    if (v15 != v17)
    {
      return 0;
    }

    if (memcmp(ArgAttrsAttr, v16, 8 * v15))
    {
      return 0;
    }

    isSplat = mlir::ElementsAttr::isSplat(&v21);
    if (isSplat != mlir::ElementsAttr::isSplat(v20))
    {
      return 0;
    }

    if (a2 == ++v8)
    {
      return 1;
    }
  }
}

uint64_t mlir::anec::ScaledElementWise::addOpToNetwork(mlir::Operation **a1, void *a2)
{
  v42[3] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = operator new(0x68uLL);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 9) = -1;
  *v5 = &unk_1F5B33C08;
  *(v5 + 20) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v5 + 84) = _D0;
  *(v5 + 23) = 0;
  *(v5 + 48) = 0;
  *(v5 + 8) = 5;
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13), *(*(*(*a1 + 6) + 96) + 8));
  AttrData = mlir::OpaqueAttr::getAttrData(&AttrDictionary);
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  if (v15 >= 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = v15;
  }

  v18 = AttrData;
  v19 = memcmp(AttrData, "add", v17);
  if (v16 != 3 || v19)
  {
    v21 = memcmp(v18, "mul", v17);
    if (v16 == 3 && !v21)
    {
      v20 = 2;
      goto LABEL_11;
    }

LABEL_13:
    (*(*v5 + 8))(v5);
    return 0;
  }

  v20 = 1;
LABEL_11:
  *(v5 + 20) = v20;
  PreScaleAttr = mlir::anec::ScaledElementWise::getPreScaleAttr(a1);
  mlir::FloatAttr::getValue(&AttrDictionary, &PreScaleAttr);
  *(v5 + 22) = llvm::APFloat::convertToFloat(&AttrDictionary, v22, v23, v24);
  v25 = v42[0];
  v27 = llvm::APFloatBase::PPCDoubleDouble(v26);
  if (v27 == v25)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v42);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v42);
  }

  PreScaleAttr = mlir::anec::ScaledElementWise::getScaleAttr(a1);
  mlir::FloatAttr::getValue(&AttrDictionary, &PreScaleAttr);
  *(v5 + 21) = llvm::APFloat::convertToFloat(&AttrDictionary, v29, v30, v31);
  if (v27 == v42[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v42);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v42);
  }

  PreScaleAttr = mlir::anec::ScaledElementWise::getBiasAttr(a1);
  mlir::FloatAttr::getValue(&AttrDictionary, &PreScaleAttr);
  *(v5 + 23) = llvm::APFloat::convertToFloat(&AttrDictionary, v32, v33, v34);
  if (v27 == v42[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v42);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v42);
  }

  AttrDictionary = mlir::anec::ScaledElementWise::getNegateSrc1Attr(a1);
  v5[96] = mlir::BoolAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::anec::ScaledElementWise::getNegateSrc2Attr(a1);
  v5[97] = mlir::BoolAttr::getValue(&AttrDictionary);
  mlir::anec::fillZinIrCommonInfo(v4, v5, 5, a2, 2uLL, 1u);
  v35 = operator new(0xC8uLL);
  v36 = v35;
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *v35 = &unk_1F5B2E830;
  v37 = v35 + 24;
  *(v35 + 3) = &unk_1F5B2E868;
  if (v5[31] < 0)
  {
    std::string::__init_copy_ctor_external((v35 + 32), *(v5 + 1), *(v5 + 2));
  }

  else
  {
    *(v35 + 2) = *(v5 + 8);
    *(v35 + 6) = *(v5 + 3);
  }

  *(v36 + 14) = 17;
  *(v36 + 3) = &unk_1F5B34308;
  *(v36 + 8) = v5;
  v36[72] = 0;
  *(v36 + 10) = 0;
  *(v36 + 11) = v36 + 104;
  *(v36 + 12) = 0x100000000;
  *(v36 + 17) = v36 + 152;
  *(v36 + 18) = 0x300000000;
  *&v39 = v37;
  *(&v39 + 1) = v36;
  mlir::anec::ANECIRNetwork::AddUnit(a2, &v39);
  v38 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    if (!atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }
  }

  return 1;
}

uint64_t mlir::anec::ScaledElementWise::getMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

BOOL mlir::anec::inferPoolOpReturnTypes(mlir *a1, AttributeStorage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50[6] = *MEMORY[0x1E69E9840];
  v14 = mlir::TypeRange::dereference_iterator(a7, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  v39[0] = v15;
  v39[1] = v14;
  mlir::CallableOpInterface::getArgAttrsAttr(v39);
  if (v16)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v49[0] = v50;
    v49[1] = 0x600000000;
    mlir::getValues<unsigned long>(a4, v49);
    v47[0] = v48;
    v47[1] = 0x600000000;
    mlir::getValues<unsigned long>(a5, v47);
    v45[0] = v46;
    v45[1] = 0x600000000;
    mlir::getValues<unsigned long>(a6, v45);
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v19 = v18;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v21 = v20;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v23 = v22;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v25 = v24;
    mlir::CallableOpInterface::getArgAttrsAttr(v39);
    v26 = v49[0];
    v27 = (*v26 + ArgAttrsAttr[v25 - 2] + v26[1] - *v47[0] + *v45[0]) / *v45[0];
    v29 = ArgAttrsAttr[v23 - 3];
    v30 = (v26[2] + ArgAttrsAttr[v28 - 1] + v26[3] - *(v47[0] + 1) + *(v45[0] + 1)) / *(v45[0] + 1);
    if (v19 == 5)
    {
      v31 = (*(v49[0] + 4) + ArgAttrsAttr[v21 - 4] + *(v49[0] + 5) - *(v47[0] + 2) + *(v45[0] + 2)) / *(v45[0] + 2);
      v40 = *ArgAttrsAttr;
      v41 = v31;
      v42 = v29;
      v43 = v27;
      v44 = v30;
      isSplat = mlir::ElementsAttr::isSplat(v39);
      v33 = 5;
    }

    else
    {
      v40 = *ArgAttrsAttr;
      v41 = v29;
      v42 = v27;
      v43 = v30;
      isSplat = mlir::ElementsAttr::isSplat(v39);
      v33 = 4;
    }

    v36 = mlir::MemRefType::get(&v40, v33, isSplat, 0, 0, 0);
    v37 = *(a9 + 8);
    if (v37 >= *(a9 + 12))
    {
      v38 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v37 + 1, 8);
      v36 = v38;
      LODWORD(v37) = *(a9 + 8);
    }

    *(*a9 + 8 * v37) = v36;
    ++*(a9 + 8);
    if (v45[0] != v46)
    {
      free(v45[0]);
    }

    if (v47[0] != v48)
    {
      free(v47[0]);
    }

    if (v49[0] != v50)
    {
      free(v49[0]);
    }

    return 1;
  }

  else
  {
    v34.var0.var0 = a2;
    return mlir::emitOptionalError<char const(&)[66]>(a1, v34, "input must be a rank 4 tensor of shape [N, Cin, H, W]or rank 5 tensor of shape [N, D, Cin, H, W]");
  }
}

BOOL mlir::anec::MaxPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.max_pool", 13, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::MaxPoolAdaptor::verify(&v30, v18) & 1) == 0)
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

uint64_t mlir::anec::MaxPoolAdaptor::verify(mlir::anec::MaxPoolAdaptor *this, Location a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v61 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.max_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2.var0.var0, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  operator delete[](v26);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
            v62 = 3;
            if (v33 == 1 && *ArgAttrsAttr == v62)
            {
              v54 = v28;
              Value = mlir::ArrayAttr::getValue(&v54);
              v56 = v34;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, Value = mlir::ArrayAttr::getValue(&v54), v56 = v40, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, Value = mlir::ArrayAttr::getValue(&v54), v56 = v46, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.max_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2.var0.var0, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.max_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2.var0.var0, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.max_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2.var0.var0, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              operator delete[](v51);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.max_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2.var0.var0, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.max_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2.var0.var0, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

BOOL mlir::anec::AveragePool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.average_pool", 17, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::AveragePoolAdaptor::verify(&v30, v18) & 1) == 0)
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 16));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), *(*(v31 + 96) + 8));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 24));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

uint64_t mlir::anec::AveragePoolAdaptor::verify(mlir::anec::AveragePoolAdaptor *this, Location a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = *this;
  Value = mlir::AffineMapAttr::getValue(&v63);
  if (Value != mlir::DictionaryAttr::end(&v63))
  {
    v5 = 0;
    while (mlir::CallGraphNode::getCallableRegion(Value) != *(*(*(this + 1) + 96) + 8))
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = Value[1];
      }

      Value += 2;
      if (Value == mlir::DictionaryAttr::end(&v63))
      {
        goto LABEL_7;
      }
    }

    v15 = Value[1];
    while (Value != mlir::DictionaryAttr::end(&v63))
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        v22 = Value[1];
        while (1)
        {
          if (Value == mlir::DictionaryAttr::end(&v63))
          {
            v60 = "'anec.average_pool' op requires attribute 'stride'";
            v62 = 259;
            mlir::emitError(a2.var0.var0, &v60, &v65);
            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
            if (v65)
            {
              mlir::InFlightDiagnostic::report(&v65);
            }

            if (v74 != 1)
            {
              return v6;
            }

            if (v73 != &v74)
            {
              free(v73);
            }

            v23 = __p;
            if (__p)
            {
              v24 = v72;
              v25 = __p;
              if (v72 != __p)
              {
                do
                {
                  v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
                }

                while (v24 != v23);
                v25 = __p;
              }

              v72 = v23;
              operator delete(v25);
            }

            v10 = v69;
            if (!v69)
            {
              goto LABEL_105;
            }

            v26 = v70;
            v12 = v69;
            if (v70 == v69)
            {
              goto LABEL_104;
            }

            do
            {
              v28 = *--v26;
              v27 = v28;
              *v26 = 0;
              if (v28)
              {
                operator delete[](v27);
              }
            }

            while (v26 != v10);
            goto LABEL_103;
          }

          if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
          {
            break;
          }

          Value += 2;
        }

        v29 = Value[1];
        if (!v29)
        {
          goto LABEL_117;
        }

        if (mlir::DenseIntElementsAttr::classof(Value[1]))
        {
          v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
          v60 = v29;
          v61 = v30;
          Type = mlir::ElementsAttr::getType(&v60);
          v32 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v65 = v32;
          v66 = Type;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
          v64 = 3;
          if (v34 == 1 && *ArgAttrsAttr == v64)
          {
            v56 = v29;
            v57 = mlir::ArrayAttr::getValue(&v56);
            v58 = v35;
            isSplat = mlir::ElementsAttr::isSplat(&v57);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
LABEL_117:
              if (!v22)
              {
                goto LABEL_118;
              }

              if (!mlir::DenseIntElementsAttr::classof(v22))
              {
                goto LABEL_108;
              }

              v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v22 + 8);
              v60 = v22;
              v61 = v36;
              v37 = mlir::ElementsAttr::getType(&v60);
              v38 = v37;
              if (v37)
              {
                v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
              }

              v65 = v38;
              v66 = v37;
              v39 = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
              v64 = 6;
              if (v40 == 1 && *v39 == v64 && (v56 = v22, v57 = mlir::ArrayAttr::getValue(&v56), v58 = v41, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
              {
LABEL_118:
                if (v15)
                {
                  if (!mlir::DenseIntElementsAttr::classof(v15))
                  {
                    goto LABEL_112;
                  }

                  v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
                  v60 = v15;
                  v61 = v42;
                  v43 = mlir::ElementsAttr::getType(&v60);
                  v44 = v43;
                  if (v43)
                  {
                    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                  }

                  v65 = v44;
                  v66 = v43;
                  v45 = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
                  v64 = 3;
                  if (v46 != 1 || *v45 != v64 || (v56 = v15, v57 = mlir::ArrayAttr::getValue(&v56), v58 = v47, isSplat = mlir::ElementsAttr::isSplat(&v57), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
LABEL_112:
                    v48 = "'anec.average_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    goto LABEL_113;
                  }
                }

                if (v5 && *(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
                {
                  v48 = "'anec.average_pool' op attribute 'inc_pad' failed to satisfy constraint: unit attribute";
LABEL_113:
                  v60 = v48;
                  v62 = 259;
                  mlir::emitError(a2.var0.var0, &v60, &v65);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v65);
                  return v6;
                }

                return 1;
              }

              else
              {
LABEL_108:
                v60 = "'anec.average_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                v62 = 259;
                mlir::emitError(a2.var0.var0, &v60, &v65);
                v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                if (v65)
                {
                  mlir::InFlightDiagnostic::report(&v65);
                }

                if (v74 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v66);
                }
              }

              return v6;
            }
          }
        }

        v60 = "'anec.average_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v62 = 259;
        mlir::emitError(a2.var0.var0, &v60, &v65);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
        if (v65)
        {
          mlir::InFlightDiagnostic::report(&v65);
        }

        if (v74 != 1)
        {
          return v6;
        }

        if (v73 != &v74)
        {
          free(v73);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v72;
          v51 = __p;
          if (v72 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v72 = v49;
          operator delete(v51);
        }

        v10 = v69;
        if (!v69)
        {
          goto LABEL_105;
        }

        v52 = v70;
        v12 = v69;
        if (v70 == v69)
        {
          goto LABEL_104;
        }

        do
        {
          v54 = *--v52;
          v53 = v54;
          *v52 = 0;
          if (v54)
          {
            operator delete[](v53);
          }
        }

        while (v52 != v10);
        goto LABEL_103;
      }

      Value += 2;
    }

    v60 = "'anec.average_pool' op requires attribute 'padding'";
    v62 = 259;
    mlir::emitError(a2.var0.var0, &v60, &v65);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v74 != 1)
    {
      return v6;
    }

    if (v73 != &v74)
    {
      free(v73);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v72;
      v18 = __p;
      if (v72 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v72 = v16;
      operator delete(v18);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v19 = v70;
    v12 = v69;
    if (v70 == v69)
    {
      goto LABEL_104;
    }

    do
    {
      v21 = *--v19;
      v20 = v21;
      *v19 = 0;
      if (v21)
      {
        operator delete[](v20);
      }
    }

    while (v19 != v10);
    goto LABEL_103;
  }

LABEL_7:
  v60 = "'anec.average_pool' op requires attribute 'ksize'";
  v62 = 259;
  mlir::emitError(a2.var0.var0, &v60, &v65);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v72;
      v9 = __p;
      if (v72 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v72 = v7;
      operator delete(v9);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v11 = v70;
    v12 = v69;
    if (v70 == v69)
    {
LABEL_104:
      v70 = v10;
      operator delete(v12);
LABEL_105:
      if (v67 != &v68)
      {
        free(v67);
      }

      return v6;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        operator delete[](v13);
      }
    }

    while (v11 != v10);
LABEL_103:
    v12 = v69;
    goto LABEL_104;
  }

  return v6;
}

BOOL mlir::anec::L2NormPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.l2norm_pool", 16, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18.var0.var0 = a2;
  }

  else
  {
    v18.var0.var0 = v17;
  }

  if ((mlir::anec::L2NormPoolAdaptor::verify(&v30, v18) & 1) == 0)
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

uint64_t mlir::anec::L2NormPoolAdaptor::verify(mlir::anec::L2NormPoolAdaptor *this, Location a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v61 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.l2norm_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2.var0.var0, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  operator delete[](v26);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (mlir::CallGraphNode::getCallableRegion(i) == *(*(*(this + 1) + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
            v62 = 3;
            if (v33 == 1 && *ArgAttrsAttr == v62)
            {
              v54 = v28;
              Value = mlir::ArrayAttr::getValue(&v54);
              v56 = v34;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, Value = mlir::ArrayAttr::getValue(&v54), v56 = v40, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::CallableOpInterface::getArgAttrsAttr(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, Value = mlir::ArrayAttr::getValue(&v54), v56 = v46, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.l2norm_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2.var0.var0, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.l2norm_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2.var0.var0, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.l2norm_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2.var0.var0, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              operator delete[](v51);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.l2norm_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2.var0.var0, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.l2norm_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2.var0.var0, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

BOOL mlir::anec::AveragePool::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v47[6] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  ANECPoolLayerDescInitialize();
  v30[0] = ZinIrPoolingTypeToCFString(1u);
  v30[1] = @"Zero";
  v46[0] = v47;
  v46[1] = 0x600000000;
  v44[0] = v45;
  v44[1] = 0x600000000;
  v42[0] = v43;
  v42[1] = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v10 = v9;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v14, v46);
  v15 = *(v46[0] + 2);
  v31 = vextq_s8(*v46[0], *v46[0], 8uLL);
  v32 = v15;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v16 + 32), (v17 + 16 * v18), *(*(*(*a1 + 6) + 96) + 24));
  mlir::getValues<unsigned long>(v19, v44);
  v20 = *v44[0];
  v21 = *(v44[0] + 2);
  v33 = *(v44[0] + 1);
  v34 = v20;
  v35 = v21;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v22 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v23 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v25 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v22 + 16), (v23 + 16 * v24 - 16), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v25, v42);
  if (v10 == 5)
  {
    v26 = vmovn_s64(*(v42[0] + 2));
  }

  else
  {
    v26 = 0;
  }

  v36 = vuzp1q_s32(*(v42[0] + 1), *v42[0]);
  v37 = v26;
  v38 = 0;
  IndexFromDim = mlir::anec::getIndexFromDim(1, v10);
  if ((v28 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(a2) + 8 * IndexFromDim);
  v40 = 1065353216;
  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v8, a2, a3, v30, v4);
}

BOOL mlir::anec::verifyPoolWithANEC(mlir::Block **a1, mlir::ElementsAttr *a2, unint64_t a3, uint64_t a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v29[0] = v30;
  v29[1] = 0x100000000;
  v21 = 0;
  v22 = 0;
  *buffer = 1;
  v23[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidatePoolLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v23);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v24, "Invalid configuration", 21);
    std::stringbuf::str();
    v23[0] = *MEMORY[0x1E69E54D8];
    v6 = *(MEMORY[0x1E69E54D8] + 72);
    *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v24 = v6;
    v25 = MEMORY[0x1E69E5548] + 16;
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    v25 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v26);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v28);
    v20 = 260;
    v19 = &v17;
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v8 = v36;
      if (v36)
      {
        v9 = v37;
        v10 = v36;
        if (v37 != v36)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = v36;
        }

        v37 = v8;
        operator delete(v10);
      }

      v11 = v34;
      if (v34)
      {
        v12 = v35;
        v13 = v34;
        if (v35 != v34)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              operator delete[](v14);
            }
          }

          while (v12 != v11);
          v13 = v34;
        }

        v35 = v11;
        operator delete(v13);
      }

      if (v32 != &v33)
      {
        free(v32);
      }
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  else
  {
    v7 = 1;
  }

  ANECUnitValidatorDelete();
  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  return v7;
}

BOOL mlir::anec::MaxPool::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  ANECPoolLayerDescInitialize();
  v30[0] = ZinIrPoolingTypeToCFString(2u);
  v30[1] = @"Zero";
  v46[0] = v47;
  v46[1] = 0x600000000;
  v44[0] = v45;
  v44[1] = 0x600000000;
  v42[0] = v43;
  v42[1] = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v10 = v9;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 32), **(*(*a1 + 6) + 96));
  mlir::getValues<unsigned long>(v14, v46);
  v15 = *(v46[0] + 2);
  v31 = vextq_s8(*v46[0], *v46[0], 8uLL);
  v32 = v15;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v16 + 32), (v17 + 16 * v18), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v19, v44);
  v20 = *v44[0];
  v21 = *(v44[0] + 2);
  v33 = *(v44[0] + 1);
  v34 = v20;
  v35 = v21;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v22 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v23 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v25 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v22 + 16), (v23 + 16 * v24 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v25, v42);
  if (v10 == 5)
  {
    v26 = vmovn_s64(*(v42[0] + 2));
  }

  else
  {
    v26 = 0;
  }

  v36 = vuzp1q_s32(*(v42[0] + 1), *v42[0]);
  v37 = v26;
  v38 = 0;
  IndexFromDim = mlir::anec::getIndexFromDim(1, v10);
  if ((v28 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(a2) + 8 * IndexFromDim);
  v40 = 1065353216;
  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v8, a2, a3, v30, a4);
}

BOOL mlir::anec::L2NormPool::verifyWithANEC(mlir::Operation **a1, mlir::CallableOpInterface *a2, unint64_t a3, int a4)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  ANECPoolLayerDescInitialize();
  v30[0] = ZinIrPoolingTypeToCFString(1u);
  v30[1] = @"Zero";
  v46[0] = v47;
  v46[1] = 0x600000000;
  v44[0] = v45;
  v44[1] = 0x600000000;
  v42[0] = v43;
  v42[1] = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(a2);
  v10 = v9;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 32), **(*(*a1 + 6) + 96));
  mlir::getValues<unsigned long>(v14, v46);
  v15 = *(v46[0] + 2);
  v31 = vextq_s8(*v46[0], *v46[0], 8uLL);
  v32 = v15;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v16 + 32), (v17 + 16 * v18), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v19, v44);
  v20 = *v44[0];
  v21 = *(v44[0] + 2);
  v33 = *(v44[0] + 1);
  v34 = v20;
  v35 = v21;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v22 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v23 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v25 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v22 + 16), (v23 + 16 * v24 - 16), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v25, v42);
  if (v10 == 5)
  {
    v26 = vmovn_s64(*(v42[0] + 2));
  }

  else
  {
    v26 = 0;
  }

  v36 = vuzp1q_s32(*(v42[0] + 1), *v42[0]);
  v37 = v26;
  v38 = 0;
  IndexFromDim = mlir::anec::getIndexFromDim(1, v10);
  if ((v28 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(a2) + 8 * IndexFromDim);
  v40 = 1065353216;
  if (v42[0] != v43)
  {
    free(v42[0]);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v8, a2, a3, v30, a4);
}

uint64_t mlir::anec::verifyANECAveragePoolOp(uint64_t a1)
{
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v5 + 16 * v6), *(*(*(a1 + 48) + 96) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v7 + 16), (v8 + 16 * v9 - 16), *(*(*(a1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v10, (v11 + 16 * v12 - 32), *(*(*(a1 + 48) + 96) + 8));
}

uint64_t mlir::anec::AveragePool::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
}

uint64_t mlir::anec::AveragePool::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::verifyANECMaxPoolOp(uint64_t a1)
{
  if ((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v5 + 16 * v6), *(*(*(a1 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v7 + 16), (v8 + 16 * v9 - 16), *(*(*(a1 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v10, (v11 + 16 * v12 - 32), **(*(a1 + 48) + 96));
}

uint64_t mlir::anec::MaxPool::getStride(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
}

uint64_t mlir::anec::MaxPool::getPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::MaxPool::getKsize(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(*this + 6) + 96));
}

uint64_t mlir::anec::AveragePool::addOpToNetwork(uint64_t *a1, mlir::Operation *a2)
{
  v3 = *a1;
  v27 = 0uLL;
  mlir::anec::computeOpKeyString(&__p, v3);
  v4 = *(*(v3 + 72) + 24);
  if (*(v3 + 36))
  {
    v5 = v3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 16), *(*(*(v3 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 32), (v12 + 16 * v13), *(*(*(v3 + 48) + 96) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v15, (v16 + 16 * v17 - 32), *(*(*(v3 + 48) + 96) + 8));
  v19 = mlir::anec::addPoolOpCommon(v3, a2, 1, &__p, v4, NextResultAtOffset, v10, v14, v18, &v27);
  v20 = v19;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = 0;
    v23 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return result;
    }

    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v25 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECIRNetwork::AddUnit(a2, &v25);
  v21 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  result = 1;
  v23 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
LABEL_15:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = result;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      return v24;
    }
  }

  return result;
}

uint64_t mlir::anec::addPoolOpCommon(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v60 = *MEMORY[0x1E69E9840];
  mlir::anec::ANECIRPoolUnit::Create(a3, a4, &__str);
  v16 = *&__str.__r_.__value_.__l.__data_;
  *&__str.__r_.__value_.__l.__data_ = 0uLL;
  v17 = a10[1];
  *a10 = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  size = __str.__r_.__value_.__l.__size_;
  if (__str.__r_.__value_.__l.__size_ && !atomic_fetch_add((__str.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v50))
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v50))
    {
      v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v50);
      if (v19)
      {
        if (*(v19 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v19[5], v19[6]);
        }

        else
        {
          __str = *(v19 + 5);
        }

        v59 = 1;
        std::string::operator=(&v50, &__str);
        if (v59 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_16;
      }
    }

    else
    {
      __str.__r_.__value_.__s.__data_[0] = 0;
      v59 = 0;
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    abort();
  }

LABEL_16:
  v20 = (*(a5 + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
  }

  else
  {
    v20 = 0;
  }

  v49[0] = v20;
  v49[1] = v21;
  isSplat = mlir::ElementsAttr::isSplat(v49);
  ANECIRDataType = mlir::anec::getANECIRDataType(isSplat);
  if ((ANECIRDataType & 0x100000000) != 0)
  {
    mlir::anec::ANECIRUnit::AddInput(*a10, &v50, ANECIRDataType);
    v24 = (*(a6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8))
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      v47 = v24;
      v48 = v25;
      if (v24)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v49);
        v27 = v26;
        v28 = mlir::ElementsAttr::isSplat(&v47);
        v29 = mlir::anec::getANECIRDataType(v28);
        if ((v29 & 0x100000000) != 0)
        {
          v32 = v29;
          v33 = *a10;
          v34 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v47) + 8 * v27 - 24);
          v35 = *(v33 + 120);
          if (v35 >= *(v33 + 124))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v33 + 112, (v33 + 128), v35 + 1, 16);
            LODWORD(v35) = *(v33 + 120);
          }

          v36 = (*(v33 + 112) + 16 * v35);
          *v36 = v32;
          v36[1] = v34;
          ++*(v33 + 120);
          __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__r.__words[2];
          __str.__r_.__value_.__l.__size_ = 0x600000000;
          mlir::getValues<unsigned long>(a7, &__str);
          v55 = v57;
          v56 = 0x600000000;
          mlir::getValues<unsigned long>(a9, &v55);
          v52 = v54;
          v53 = 0x600000000;
          mlir::getValues<unsigned long>(a8, &v52);
          v37 = *a10;
          v38 = __str.__r_.__value_.__r.__words[0];
          if (LODWORD(__str.__r_.__value_.__r.__words[1]) == 6)
          {
            *(v37 + 232) = *(__str.__r_.__value_.__r.__words[0] + 32);
          }

          *(v37 + 200) = *v38;
          *(v37 + 216) = v38[1];
          if (a1 && *(*(a1 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id)
          {
            AttrDictionary = mlir::Operation::getAttrDictionary(a1);
            Value = mlir::ArrayAttr::getValue(&AttrDictionary);
            AttrDictionary = mlir::Operation::getAttrDictionary(a1);
            v40 = mlir::ArrayAttr::getValue(&AttrDictionary);
            v42 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v40 + 16 * v41 - 48), **(*(a1 + 6) + 96));
            if (v42)
            {
              v43 = *(*v42 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
            }

            else
            {
              v43 = 0;
            }

            *(v37 + 280) = v43;
            v37 = *a10;
          }

          v44 = v52;
          if (v53 == 3)
          {
            *(v37 + 192) = *(v52 + 2);
          }

          *(v37 + 176) = vextq_s8(*v44, *v44, 8uLL);
          v45 = v55;
          if (v56 == 3)
          {
            *(v37 + 272) = *(v55 + 2);
          }

          v46 = *v45;
          *(v37 + 256) = v45[1];
          *(v37 + 264) = v46;
          if (v44 != v54)
          {
            free(v44);
            v45 = v55;
          }

          if (v45 != v57)
          {
            free(v45);
          }

          if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[2])
          {
            free(__str.__r_.__value_.__l.__data_);
          }

          v30 = 1;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_26;
          }

          return v30;
        }
      }
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }
  }

  v30 = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_26:
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v30;
}

uint64_t mlir::anec::MaxPool::addOpToNetwork(uint64_t *a1, mlir::Operation *a2)
{
  v3 = *a1;
  v27 = 0uLL;
  mlir::anec::computeOpKeyString(&__p, v3);
  v4 = *(*(v3 + 72) + 24);
  if (*(v3 + 36))
  {
    v5 = v3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 16), *(*(*(v3 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 32), (v12 + 16 * v13), *(*(*(v3 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v15, (v16 + 16 * v17 - 32), **(*(v3 + 48) + 96));
  v19 = mlir::anec::addPoolOpCommon(v3, a2, 0, &__p, v4, NextResultAtOffset, v10, v14, v18, &v27);
  v20 = v19;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = 0;
    v23 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return result;
    }

    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v25 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECIRNetwork::AddUnit(a2, &v25);
  v21 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  result = 1;
  v23 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
LABEL_15:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = result;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      return v24;
    }
  }

  return result;
}

uint64_t mlir::anec::L2NormPool::addOpToNetwork(uint64_t *a1, mlir::Operation *a2)
{
  v3 = *a1;
  v27 = 0uLL;
  mlir::anec::computeOpKeyString(&__p, v3);
  v4 = *(*(v3 + 72) + 24);
  if (*(v3 + 36))
  {
    v5 = v3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v8 + 16 * v9 - 16), *(*(*(v3 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v11 + 32), (v12 + 16 * v13), *(*(*(v3 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v15 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v15, (v16 + 16 * v17 - 32), **(*(v3 + 48) + 96));
  v19 = mlir::anec::addPoolOpCommon(v3, a2, 2, &__p, v4, NextResultAtOffset, v10, v14, v18, &v27);
  v20 = v19;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = 0;
    v23 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      return result;
    }

    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v25 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  mlir::anec::ANECIRNetwork::AddUnit(a2, &v25);
  v21 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  result = 1;
  v23 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
LABEL_15:
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = result;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      return v24;
    }
  }

  return result;
}

BOOL mlir::anec::inferReductionOpReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45[6] = *MEMORY[0x1E69E9840];
  v35 = a6;
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v33 = 0;
    v34 = 0;
LABEL_11:
    v25.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v25, "input type must be ranked shaped type");
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v33 = v13;
  v34 = v14;
  if (!v13 || (mlir::CallOpInterface::getArgOperands(&v33) & 1) == 0)
  {
    goto LABEL_11;
  }

  v43 = v45;
  *v44 = 0x600000000;
  v46.var0 = "axes";
  v46.var1 = 4;
  v15 = mlir::DictionaryAttr::get(&v35, v46);
  v32 = v15;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v40, v15, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v32);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v36, v15, NumElements);
  for (; v42[0] != v37; ++v42[0])
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &__p);
    if (v39 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v27 = *p_p;
    v28 = v44[0];
    if (v44[0] >= v44[1])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44[0] + 1, 8);
      v28 = v44[0];
    }

    *(v43 + v28) = v27;
    ++v44[0];
    if (v39 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  v40 = v42;
  v41 = 0x600000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
  if (mlir::inferReductionOpReturnShape(a2, a3, ArgAttrsAttr, v18, v43, v44[0], 1, &v40))
  {
    v19 = v40;
    v20 = v41;
    isSplat = mlir::ElementsAttr::isSplat(&v33);
    v22 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      v31 = v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
      v22 = v31;
      LODWORD(v23) = *(a11 + 8);
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v40 != v42)
  {
    v29 = result;
    free(v40);
    result = v29;
  }

  if (v43 != v45)
  {
    v30 = result;
    free(v43);
    return v30;
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::TranslateToANECDesc(uint64_t a1, unint64_t a2, __CFString **a3)
{
  v18[6] = *MEMORY[0x1E69E9840];
  ANECReductionLayerDescInitialize();
  v6 = *(*(a1 + 48) + 16);
  if (a1 && v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id)
  {
    v7 = @"Avg";
  }

  else if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id)
  {
    v7 = @"Max";
  }

  else if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id)
  {
    v7 = @"Min";
  }

  else
  {
    if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id)
    {
      if (*(a1 + 47))
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v7 = @"Sum";
  }

  *a3 = v7;
  if (*(a1 + 47))
  {
LABEL_13:
    v19.var0 = "axes";
    v19.var1 = 4;
    InherentAttr = mlir::Operation::getInherentAttr(a1, v19);
    if (v9)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  v20.var0 = "axes";
  v20.var1 = 4;
  InherentAttr = mlir::DictionaryAttr::get((a1 + 56), v20);
LABEL_15:
  v16 = v18;
  v17 = 0x600000000;
  mlir::getValues<unsigned long>(InherentAttr, &v16);
  v10 = v17;
  a3[3] = v17;
  v11 = v16;
  if (v10)
  {
    v12 = a3 + 4;
    v13 = 8 * v10;
    do
    {
      v14 = *v11++;
      v13 -= 8;
    }

    while (v13);
    v11 = v16;
  }

  a3[1] = @"Bypass";
  if (v11 != v18)
  {
    free(v11);
  }

  return 1;
}

BOOL mlir::anec::verifyReductionWithANEC(uint64_t a1, mlir::Block **a2, mlir::ElementsAttr *a3, unint64_t a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = 1;
  *buffer = 1;
  v23[0] = 0;
  ANECUnitValidatorCreate();
  v29[0] = v30;
  v29[1] = 0x100000000;
  v21 = 0;
  v22 = 0;
  if (ANECValidateReductionLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v23);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v24, "Invalid configuration", 21);
    std::stringbuf::str();
    v23[0] = *MEMORY[0x1E69E54D8];
    v9 = *(MEMORY[0x1E69E54D8] + 72);
    *(v23 + *(v23[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v24 = v9;
    v25 = MEMORY[0x1E69E5548] + 16;
    if (v27 < 0)
    {
      operator delete(v26[7].__locale_);
    }

    v25 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v26);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v28);
    LOWORD(v26[0].__locale_) = 260;
    v23[0] = &v19;
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v10 = v36;
      if (v36)
      {
        v11 = v37;
        v12 = v36;
        if (v37 != v36)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = v36;
        }

        v37 = v10;
        operator delete(v12);
      }

      v13 = v34;
      if (v34)
      {
        v14 = v35;
        v15 = v34;
        if (v35 != v34)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              operator delete[](v16);
            }
          }

          while (v14 != v13);
          v15 = v34;
        }

        v35 = v13;
        operator delete(v15);
      }

      if (v32 != &v33)
      {
        free(v32);
      }
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  ANECUnitValidatorDelete();
  return v8;
}

BOOL mlir::anec::ReduceAvg::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_avg", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceAvgAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceAvgAdaptor::verify(mlir::anec::ReduceAvgAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_avg' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_avg' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

BOOL mlir::anec::ReduceAvg::addOpToNetwork(mlir::anec **a1, mlir::Operation *a2, mlir::anec::ANECIRNetwork *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::getReductionZinIrUnitInfo(v23, *a1, a2);
    v4 = operator new(0xC8uLL);
    v5 = v4;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = &unk_1F5B2E830;
    v6 = v4 + 24;
    v7 = v23[0];
    v23[0] = 0;
    *(v4 + 3) = &unk_1F5B2E868;
    if (*(v7 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 32), *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      *(v4 + 6) = *(v7 + 24);
      *(v4 + 2) = v8;
    }

    *(v5 + 14) = 17;
    *(v5 + 3) = &unk_1F5B34308;
    *(v5 + 8) = v7;
    v5[72] = 0;
    *(v5 + 10) = 0;
    *(v5 + 11) = v5 + 104;
    *(v5 + 12) = 0x100000000;
    *(v5 + 17) = v5 + 152;
    *(v5 + 18) = 0x300000000;
    *&v20 = v6;
    *(&v20 + 1) = v5;
    mlir::anec::ANECIRNetwork::AddUnit(a2, &v20);
    v18 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    if (v23[0])
    {
      (*(*v23[0] + 8))(v23[0]);
    }

    return 1;
  }

  else
  {
    v21 = "network should not be nullptr";
    v22 = 259;
    mlir::OpState::emitError(a1, &v21, v23);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v29;
        v12 = __p;
        if (v29 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v29 = v10;
        operator delete(v12);
      }

      v13 = v26;
      if (v26)
      {
        v14 = v27;
        v15 = v26;
        if (v27 != v26)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              operator delete[](v16);
            }
          }

          while (v14 != v13);
          v15 = v26;
        }

        v27 = v13;
        operator delete(v15);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v9;
}

void mlir::anec::getReductionZinIrUnitInfo(uint64_t *__return_ptr a1@<X8>, mlir::anec *this@<X0>, mlir::Operation *a3@<X1>)
{
  v6 = operator new(0x68uLL);
  *(v6 + 8) = 0;
  *(v6 + 1) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B2E8F8;
  *(v6 + 1) = 0;
  *(v6 + 10) = 11;
  *(v6 + 11) = 1065353216;
  *(v6 + 12) = 0;
  mlir::anec::fillZinIrCommonInfo(this, v6, 20, a3, 0, 0);
  v7 = *(*(this + 6) + 16);
  if (this && v7 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id)
  {
    v8 = 3;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id)
  {
    v8 = 2;
  }

  else if (v7 == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id)
  {
    v8 = 1;
  }

  else
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id)
    {
      goto LABEL_11;
    }

    v8 = 0;
  }

  *(v6 + 20) = v8;
LABEL_11:
  v9 = (*(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v25[0] = v9;
  v25[1] = v10;
  v22[0] = mlir::Operation::getAttrDictionary(this);
  v26.var0 = "axes";
  v26.var1 = 4;
  v11 = mlir::DictionaryAttr::get(v22, v26);
  v24 = v11;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v22, v11, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v24);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v20, v11, NumElements);
  for (; v23 != v21; ++v23)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v22, &__p);
    if (v19 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v14 = *p_p;
    mlir::CallableOpInterface::getArgAttrsAttr(v25);
    DimFromIndex = mlir::anec::getDimFromIndex(v14, v15);
    if ((DimFromIndex & 0x100000000) != 0)
    {
      v17 = dword_1E0999A44[DimFromIndex];
    }

    else
    {
      LOBYTE(v17) = 5;
    }

    *(v6 + 12) |= (1 << v17) & 0x1F;
    if (v19 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  *a1 = v6;
}

BOOL mlir::anec::ReduceMax::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_max", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceMaxAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceMaxAdaptor::verify(mlir::anec::ReduceMaxAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_max' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_max' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

BOOL mlir::anec::ReduceMin::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_min", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceMinAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceMinAdaptor::verify(mlir::anec::ReduceMinAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_min' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_min' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

BOOL mlir::anec::ReduceSum::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_sum", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19.var0.var0 = a2;
  }

  else
  {
    v19.var0.var0 = v18;
  }

  v20 = mlir::anec::ReduceSumAdaptor::verify(&v26, v19);
  return (v20 & 1) != 0 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

uint64_t mlir::anec::ReduceSumAdaptor::verify(mlir::anec::ReduceSumAdaptor *this, Location a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::CallableOpInterface::getArgAttrsAttr(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_sum' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2.var0.var0, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (!v42)
        {
          goto LABEL_50;
        }

        v27 = v43;
        v11 = v42;
        if (v43 == v42)
        {
LABEL_49:
          v43 = v9;
          operator delete(v11);
LABEL_50:
          if (v40 != &v41)
          {
            free(v40);
          }

          return v5;
        }

        do
        {
          v29 = *--v27;
          v28 = v29;
          *v27 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v27 != v9);
LABEL_48:
        v11 = v42;
        goto LABEL_49;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_sum' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2.var0.var0, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_50;
    }

    v10 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_49;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        operator delete[](v12);
      }
    }

    while (v10 != v9);
    goto LABEL_48;
  }

  return v5;
}

BOOL mlir::anec::GOC::mutateOpForReshapeSwap(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v58[5] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = 8 * a5;
    while (!*a4)
    {
      ++a4;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  v9 = (*(*(*(*a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v56 = v9;
  v57 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v56);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v13) == 1)
  {
    v14 = (*(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8) : 0;
    v53 = v14;
    v54 = v15;
    v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v53);
    if (mlir::ShapedType::getNumElements(v16, v17) == 1)
    {
      return 1;
    }
  }

  v18 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v18)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v53 = v18;
  v54 = v19;
  v21 = mlir::CallableOpInterface::getArgAttrsAttr(&v53);
  v22 = v20;
  v56 = v58;
  v57 = 0x500000000;
  v23 = (8 * v20) >> 3;
  if (v23 < 6)
  {
    v24 = 0;
    v25 = 8 * v20;
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v23, 8);
  v24 = v57;
  v25 = 8 * v22;
  if (v22)
  {
LABEL_22:
    memcpy(v56 + 8 * v24, v21, v25);
    v24 = v57;
  }

LABEL_23:
  v26 = v24 + (v25 >> 3);
  LODWORD(v57) = v26;
  if (v26 <= 4)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v56, v56, 5 - v26, 1uLL);
  }

  v53 = v55;
  v54 = 0x500000000;
  v27 = (8 * a3) >> 3;
  if (v27 < 6)
  {
    v28 = 0;
    v29 = 8 * a3;
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v27, 8);
  v28 = v54;
  v29 = 8 * a3;
  if (a3)
  {
LABEL_29:
    memcpy(v53 + 8 * v28, a2, v29);
    v28 = v54;
  }

LABEL_30:
  v30 = v28 + (v29 >> 3);
  LODWORD(v54) = v30;
  if (v30 <= 4)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v53, v53, 5 - v30, 1uLL);
  }

  IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
  if (v32)
  {
    v33 = IndexFromDim;
    memset_pattern16(&v49, &unk_1E096FAE0, 0x20uLL);
    v34 = v56;
    v35 = v49;
    if (v57 && v54)
    {
      v36 = 0;
      v37 = v51;
      v38 = v52;
      v39 = v50;
      v40 = 8 * v54 - 8;
      v41 = 8 * v57 - 8;
      do
      {
        if (v36 >= v33)
        {
          if (v36 > v33)
          {
            v37 *= *(v56 + v36);
            v51 = v37;
            v38 *= *(v53 + v36);
            v52 = v38;
          }
        }

        else
        {
          v35 *= *(v56 + v36);
          v49 = v35;
          v39 *= *(v53 + v36);
          v50 = v39;
        }

        if (!v41)
        {
          break;
        }

        ++v36;
        v42 = v40;
        v40 -= 8;
        v41 -= 8;
      }

      while (v42);
    }

    else
    {
      v39 = v50;
      v37 = v51;
      v38 = v52;
    }

    v11 = v35 == v39 && v37 == v38;
    if (v53 != v55)
    {
      free(v53);
      v34 = v56;
    }

    if (v34 != v58)
    {
      free(v34);
    }

    return v11;
  }

  std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::anec::GOC::verifyWithANEC(v45, v46, v47, v48);
}