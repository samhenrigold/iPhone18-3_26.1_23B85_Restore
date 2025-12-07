uint64_t mlir::scf::ForallOp::getTiedBlockArgument(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  v3 = a1 + 64 + 16 * ((v2 >> 23) & 1);
  v4 = *(((v3 + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  v5 = *(a2 + 16);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 72);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4 - 8;
  }

  else
  {
    v7 = 0;
  }

  return *(*(v7 + 48) + 8 * (((a2 - v6) >> 5) - *(v3 + 40) - (*(v3 + 36) + *(v3 + 32)) + (*(*(v3 + 8) + 32) >> 3)));
}

void llvm::SmallVectorTemplateBase<mlir::OpResult,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::LookupBucketFor<mlir::OpResult>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 8 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 8 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 1;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::LookupBucketFor<mlir::OpResult>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 1;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallOpIterArgsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallOpIterArgsFolder]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::~ForallOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ForallOpSingleOrZeroIterationDimsFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v73[8] = *MEMORY[0x277D85DE8];
  v41 = a2;
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v4 && *(v4 + 16))
  {
    return 0;
  }

  v31 = *(a2 + 24);
  v56 = v58;
  v57 = 0x600000000;
  v53 = v55;
  v54 = 0x600000000;
  v50 = v52;
  v51 = 0x600000000;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  mlir::scf::ForallOp::getMixedLowerBound(&v41, v48);
  mlir::scf::ForallOp::getMixedUpperBound(&v41, v46);
  mlir::scf::ForallOp::getMixedStep(&v41, v44);
  mlir::scf::ForallOp::getInductionVars(v42, v41);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_NS4_INS5_5ValueELj6EEEEEC2B8nn200100IJLm0ELm1ELm2ELm3EEJS7_S7_S7_S9_EJEJEJS7_S7_S7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(&v59, v48, v46, v44, v42);
  if (v42[0] != &v43)
  {
    free(v42[0]);
  }

  if (v44[0] != &v45)
  {
    free(v44[0]);
  }

  if (v46[0] != &v47)
  {
    free(v46[0]);
  }

  v32 = a3;
  if (v48[0] != &v49)
  {
    free(v48[0]);
  }

  v6 = 0;
  if (v60 && v64 && v67)
  {
    v7 = v59;
    v8 = v63;
    v9 = v66;
    v10 = v69;
    v11 = 8 * v70;
    v12 = 8 * v67 - 8;
    v13 = 8 * v64 - 8;
    v14 = 8 * v60 - 8;
    while (1)
    {
      if (!v11)
      {
        v6 = 0;
        goto LABEL_27;
      }

      v15 = mlir::constantTripCount(*v7, *v8, *v9);
      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

      if (v15 != 1)
      {
        break;
      }

      v17 = *v10;
      ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp((v32 + 1), v31, *v7);
      v48[0] = v17;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v33, v48) = ConstantIndexOp;
LABEL_22:
      v6 = 0;
      if (v14)
      {
        if (v13)
        {
          ++v7;
          ++v8;
          ++v9;
          ++v10;
          v11 -= 8;
          v19 = v12;
          v12 -= 8;
          v13 -= 8;
          v14 -= 8;
          if (v19)
          {
            continue;
          }
        }
      }

      goto LABEL_27;
    }

    if (!v15)
    {
      (**v32)(v32);
      v6 = 1;
      goto LABEL_27;
    }

LABEL_20:
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v56, *v7);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v53, *v8);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v50, *v9);
    goto LABEL_22;
  }

LABEL_27:
  if (v69 != &v71)
  {
    free(v69);
  }

  if (v66 != &v68)
  {
    free(v66);
  }

  if (v63 != v65)
  {
    free(v63);
  }

  if (v59 != v61)
  {
    free(v59);
  }

  if ((v6 & 1) == 0)
  {
    if (v57)
    {
      v20 = *(v41 + 11);
      v21 = v41 + 16 * ((v20 >> 23) & 1) + 64;
      if (v57 != (*(*(v21 + 1) + 32) >> 3))
      {
        v23 = *(v21 + 11);
        v24 = (*(v21 + 9) + *(v21 + 8) + *(v21 + 10));
        if ((v20 & 0x800000) != 0)
        {
          v25 = *(v41 + 9);
        }

        else
        {
          v25 = 0;
        }

        v26 = v25 + 32 * v24;
        v27 = (v23 + v24) - v24;
        v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForallOp>(*(**v31 + 32));
        v59 = v31;
        v60 = v28;
        v61[0] = &v62;
        v61[1] = 0x400000000;
        v63 = v65;
        v64 = 0x400000000;
        v65[4] = &v66;
        v65[5] = 0x400000000;
        v69 = 4;
        v70 = v72;
        v71 = 0x100000000;
        v72[1] = v73;
        v72[2] = 0x100000000;
        v73[2] = 0;
        v73[1] = 0;
        v73[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v73[4] = 0;
        v73[6] = 0;
        mlir::scf::ForallOp::build(v32 + 1, &v59, v56, v57, v53, v54, v50, v51, v26 & 0xFFFFFFFFFFFFFFF9 | 2, v27, 0, 0, 0, v30);
      }

      v59 = "no dimensions have 0 or 1 iterations";
      LOWORD(v62) = 259;
      v48[0] = &v59;
      v22 = v32[2];
      if (v22 && *(v22 + 2) == 1)
      {
        (*(*v22 + 88))(v22, *(v41 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::ForallOp &>(mlir::scf::ForallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v48);
      }

      v5 = 0;
      goto LABEL_47;
    }

    mlir::scf::promote(v32, v41);
  }

  v5 = 1;
LABEL_47:
  MEMORY[0x25F891030](v38, 8);
  MEMORY[0x25F891030](v35, 8);
  MEMORY[0x25F891030](v33[0], 8);
  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  return v5;
}

void *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_NS4_INS5_5ValueELj6EEEEEC2B8nn200100IJLm0ELm1ELm2ELm3EEJS7_S7_S7_S9_EJEJEJS7_S7_S7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a1, a2);
  }

  a1[8] = a1 + 10;
  a1[9] = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=((a1 + 8), a3);
  }

  a1[16] = a1 + 18;
  a1[17] = 0x600000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=((a1 + 16), a4);
  }

  a1[24] = a1 + 26;
  a1[25] = 0x600000000;
  if (*(a5 + 8))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=((a1 + 24), a5);
  }

  return a1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallOpSingleOrZeroIterationDimsFolder]";
  v6 = 124;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ForallOpReplaceConstantInductionVar::~ForallOpReplaceConstantInductionVar(_anonymous_namespace_::ForallOpReplaceConstantInductionVar *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForallOpReplaceConstantInductionVar::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[6] = *MEMORY[0x277D85DE8];
  v19 = *(a2 + 24);
  v20 = a2;
  mlir::scf::ForallOp::getMixedLowerBound(&v20, v27);
  mlir::scf::ForallOp::getMixedUpperBound(&v20, v25);
  mlir::scf::ForallOp::getMixedStep(&v20, v23);
  mlir::scf::ForallOp::getInductionVars(v21, v20);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEES7_S7_NS4_INS5_5ValueELj6EEEEEC2B8nn200100IJLm0ELm1ELm2ELm3EEJS7_S7_S7_S9_EJEJEJS7_S7_S7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_(&v29, v27, v25, v23, v21);
  if (v21[0] != &v22)
  {
    free(v21[0]);
  }

  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25[0] != &v26)
  {
    free(v25[0]);
  }

  if (v27[0] != &v28)
  {
    free(v27[0]);
  }

  v4 = 0;
  v5 = v38;
  if (v30 && v33 && v36 && v39)
  {
    v4 = 0;
    v6 = v29;
    v7 = v32;
    v8 = v35;
    v9 = 8 * v39 - 8;
    v10 = 8 * v36 - 8;
    v11 = 8 * v33 - 8;
    v12 = 8 * v30 - 8;
    do
    {
      if (**v5)
      {
        v13 = mlir::constantTripCount(*v6, *v7, *v8);
        if ((v14 & 1) != 0 && v13 == 1)
        {
          v15 = *v5;
          ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp((a3 + 8), v19, *v6);
          mlir::RewriterBase::replaceAllUsesWith(a3, v15, ConstantIndexOp);
          v4 = 1;
        }
      }

      if (!v12)
      {
        break;
      }

      if (!v11)
      {
        break;
      }

      if (!v10)
      {
        break;
      }

      ++v6;
      ++v7;
      ++v8;
      ++v5;
      v17 = v9;
      v9 -= 8;
      v10 -= 8;
      v11 -= 8;
      v12 -= 8;
    }

    while (v17);
    v5 = v38;
  }

  if (v5 != v40)
  {
    free(v5);
  }

  if (v35 != &v37)
  {
    free(v35);
  }

  if (v32 != &v34)
  {
    free(v32);
  }

  if (v29 != &v31)
  {
    free(v29);
  }

  return v4 & 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForallOpReplaceConstantInductionVar>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForallOpReplaceConstantInductionVar]";
  v6 = 120;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v4[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "scf.yield", 9);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

void llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::push_back(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 12);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = *a1 + 12 * v6;
  *v7 = a2;
  *(v7 + 8) = a3;
  ++*(a1 + 8);
}

void anonymous namespace::CombineIfs::~CombineIfs(_anonymous_namespace_::CombineIfs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CombineIfs::matchAndRewrite(uint64_t a1, uint64_t *a2, void *a3)
{
  v106[8] = *MEMORY[0x277D85DE8];
  if (*(a2[2] + 40) == a2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(*(*a2 + 48) + 16);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? *a2 : 0;
  if (v5 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    return 0;
  }

  v8 = *(a2[9] + 24);
  v9 = *(*(v4 + 72) + 24);
  if (v8 == v9)
  {
    v12 = (((a2 + ((*(a2 + 11) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v13 = *v12 - 8;
    v32 = *v12 == 0;
    v16 = v12[3];
    v15 = v12 + 3;
    v14 = v16;
    if (v32)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13;
    }

    v17 = (v14 - 1);
    if (!v14)
    {
      v17 = 0;
    }

    if (v14 == v15)
    {
      v10 = 0;
    }

    else
    {
      v10 = v17;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v18 = *(v8 + 8) & 7;
  if (v18 != 6)
  {
    v19 = v8 + 16 * v18 + 16;
LABEL_23:
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      goto LABEL_25;
    }

    v20 = *(v19 + 72);
    if (*(v20 + 24) != v9)
    {
      goto LABEL_25;
    }

    v70 = *(v20 + 56);
    v99 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if ((~*(v70 + 8) & 7) == 0)
    {
      v70 = 0;
    }

    if (!v70)
    {
      goto LABEL_25;
    }

    v71 = *(v70 + 8) & 7;
    if (v71 == 6)
    {
      v72 = v70 + 24 * *(v70 + 16);
      v73 = (v72 + 120);
      if (v72 == -120)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v73 = (v70 + 16 * v71 + 16);
    }

    if (mlir::detail::constant_int_predicate_matcher::match(&v99, v73))
    {
      v78 = (((&a2[2 * ((*(a2 + 11) >> 23) & 1) + 8] + ((*(a2 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
      v79 = *v78 - 8;
      v32 = *v78 == 0;
      v82 = v78[3];
      v81 = v78 + 3;
      v80 = v82;
      if (v32)
      {
        v10 = 0;
      }

      else
      {
        v10 = v79;
      }

      v83 = (v80 - 1);
      if (!v80)
      {
        v83 = 0;
      }

      if (v80 != v81)
      {
        v11 = v83;
      }
    }

    goto LABEL_25;
  }

  v19 = v8 + 24 * *(v8 + 16) + 120;
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_25:
  v21 = *(*(v4 + 72) + 24);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = *(v21 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v21 + 24 * *(v21 + 16) + 120;
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = v21 + 16 * v22 + 16;
    }

    if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v24 = *(v23 + 72);
      if (*(v24 + 24) == *(a2[9] + 24))
      {
        v74 = *(v24 + 56);
        v99 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
        if ((~*(v74 + 8) & 7) == 0)
        {
          v74 = 0;
        }

        if (v74)
        {
          v75 = *(v74 + 8) & 7;
          if (v75 == 6)
          {
            v76 = v74 + 24 * *(v74 + 16);
            v77 = (v76 + 120);
            if (v76 == -120)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v77 = (v74 + 16 * v75 + 16);
          }

          if (mlir::detail::constant_int_predicate_matcher::match(&v99, v77))
          {
            v84 = (((&a2[2 * ((*(a2 + 11) >> 23) & 1) + 8] + ((*(a2 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
            v10 = *v84 ? *v84 - 8 : 0;
            v85 = v84[3];
            if (v85 != v84 + 3)
            {
              if (v85)
              {
                v11 = (v85 - 1);
              }

              else
              {
                v11 = 0;
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v11 | v10)
  {
    v96 = &v98;
    v97 = 0x600000000;
    v25 = *(v4 + 44);
    v26 = (v25 >> 23) & 1;
    v27 = (v25 >> 21) & 0x7F8;
    v28 = v4 + 64 + 16 * v26 + v27;
    v29 = 32 * *(v4 + 40);
    if (*(v28 + v29 + 24) != v28 + v29 + 24)
    {
      v30 = ((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + v29;
      v31 = *(v30 + 24);
      v32 = v31 == v30 + 24 || v31 == 0;
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 - 8;
      }

      v34 = *(v33 + 32);
      if ((*(v34 + 46) & 0x80) != 0)
      {
        v35 = *(v34 + 72);
        v36 = *(v34 + 68);
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      v99 = v101;
      v100 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v99, v35, 0, v35, v36);
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v96, &v99);
      if (v99 != v101)
      {
        free(v99);
      }

      v37 = *(v4 + 44);
      v26 = (v37 >> 23) & 1;
      v27 = (v37 >> 21) & 0x7F8;
      v29 = 32 * *(v4 + 40);
    }

    v38 = *(v4 + 36);
    v39 = *(((v4 + 64 + 16 * v26 + v27) & 0xFFFFFFFFFFFFFFF8) + v29);
    v91 = v4 - 16;
    v92 = v6;
    if (v39)
    {
      v40 = v39 - 8;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v40 + 32);
    if ((*(v41 + 46) & 0x80) != 0)
    {
      v86 = *(v41 + 72);
      v90 = *(v41 + 68);
    }

    else
    {
      v86 = 0;
      v90 = 0;
    }

    v42 = (v4 - 16);
    if (!v38)
    {
      v42 = 0;
    }

    v89 = v42;
    if (!v38 || !v90 || !v97)
    {
LABEL_96:
      if (v38)
      {
        v63 = v91;
      }

      else
      {
        v63 = 0;
      }

      v93 = &v95;
      v94 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v93, v63, 0, v63, v38);
      v64 = *(a2 + 9);
      if (v64)
      {
        v65 = a2 - 2;
      }

      else
      {
        v65 = 0;
      }

      llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v93, v65, 0, v65, v64);
      v66 = a2[3];
      v67 = *(*(v4 + 72) + 24);
      v68 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>((a3 + 1), *(**v66 + 32));
      v99 = v66;
      v100 = v68;
      v101[0] = v102;
      v101[1] = 0x400000000;
      v102[4] = v103;
      v102[5] = 0x400000000;
      v103[4] = v104;
      v103[5] = 0x400000000;
      v104[8] = 4;
      v104[9] = v105;
      v104[10] = 0x100000000;
      v105[1] = v106;
      v105[2] = 0x100000000;
      v106[2] = 0;
      v106[1] = 0;
      v106[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v106[4] = 0;
      v106[6] = 0;
      mlir::scf::IfOp::build((a3 + 1), &v99, v93 & 0xFFFFFFFFFFFFFFF9 | 2, v94, v67, 0);
    }

    v43 = 0;
    v44 = v96;
    v87 = v4;
    v88 = (v96 + 8 * v97);
    while (1)
    {
      v45 = v89;
      if (!v43)
      {
        goto LABEL_64;
      }

      v46 = *(v87 - 8) & 7;
      v47 = v91;
      v48 = v43;
      if (v46 == 6)
      {
        goto LABEL_62;
      }

      v49 = (5 - v46);
      v48 = v43 - v49;
      if (v43 > v49)
      {
        break;
      }

      v45 = (v91 - 16 * v43);
LABEL_64:
      v50 = *v45;
      if (*v45)
      {
        v51 = *(v86 + 32 * v43 + 24);
        while (1)
        {
          v52 = v50;
          v50 = *v50;
          if (v11)
          {
            break;
          }

LABEL_72:
          if (v10)
          {
            v55 = *(v52[2] + 16);
            if (v55)
            {
              v55 = *(v55 + 24) & 0xFFFFFFFFFFFFFFF8;
            }

            while (v55 != (*(v10 + 24) & 0xFFFFFFFFFFFFFFF8))
            {
              v56 = *(*(v55 + 16) + 16);
              if (v56)
              {
                v55 = *(v56 + 24) & 0xFFFFFFFFFFFFFFF8;
                if (v55)
                {
                  continue;
                }
              }

              goto LABEL_85;
            }

            (*(*a3 + 40))(a3);
            v60 = *v44;
            v61 = v52[1];
            if (v61)
            {
              v62 = *v52;
              *v61 = *v52;
              if (v62)
              {
                *(v62 + 8) = v52[1];
              }
            }

            v52[3] = v60;
            v52[1] = v60;
            v59 = *v60;
            *v52 = *v60;
            if (!v59)
            {
              goto LABEL_84;
            }

            goto LABEL_83;
          }

LABEL_85:
          if (!v50)
          {
            goto LABEL_92;
          }
        }

        v53 = *(v52[2] + 16);
        if (v53)
        {
          v53 = *(v53 + 24) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v53 != (*(v11 + 24) & 0xFFFFFFFFFFFFFFF8))
        {
          v54 = *(*(v53 + 16) + 16);
          if (v54)
          {
            v53 = *(v54 + 24) & 0xFFFFFFFFFFFFFFF8;
            if (v53)
            {
              continue;
            }
          }

          goto LABEL_72;
        }

        (*(*a3 + 40))(a3);
        v57 = v52[1];
        if (v57)
        {
          v58 = *v52;
          *v57 = *v52;
          if (v58)
          {
            *(v58 + 8) = v52[1];
          }
        }

        v52[3] = v51;
        v52[1] = v51;
        v59 = *v51;
        *v52 = *v51;
        v60 = v51;
        if (!v59)
        {
          goto LABEL_84;
        }

LABEL_83:
        *(v59 + 8) = v52;
LABEL_84:
        *v60 = v52;
        (*(*a3 + 48))(a3, v52[2]);
        goto LABEL_85;
      }

LABEL_92:
      if (++v43 != v38 && v43 != v90 && ++v44 != v88)
      {
        continue;
      }

      v38 = *(v92 + 36);
      v4 = v87;
      goto LABEL_96;
    }

    v47 = v91 - 16 * v49;
LABEL_62:
    v45 = (v47 - 24 * v48);
    goto LABEL_64;
  }

  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.if";
    v6[3] = 6;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CombineIfs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CombineIfs]";
  v6 = 95;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::CombineNestedIfs::~CombineNestedIfs(_anonymous_namespace_::CombineNestedIfs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CombineNestedIfs::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v4)
  {
    v5 = *v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = (v5 + 32);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = *v7;
  if (v6 == v8 || *(v6 + 8) != v8)
  {
    return 0;
  }

  v14 = v4[3];
  v12 = v4 + 3;
  v13 = v14;
  if (v14 && v13 != v12)
  {
    v51 = v13[4];
    v52 = v13 + 3;
    if (v51 == v52 || *(v51 + 8) != v52)
    {
      return 0;
    }
  }

  v16 = *(*(v6 + 48) + 16);
  v17 = v16 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? v6 : 0;
  if (v16 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    return 0;
  }

  v18 = v6 + 64 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8) + 32 * *(v6 + 40);
  v21 = *(v18 + 24);
  v20 = v18 + 24;
  v19 = v21;
  if (v21 && v19 != v20)
  {
    v53 = *(v19 + 32);
    v54 = v19 + 24;
    if (v53 == v54 || *(v53 + 8) != v54)
    {
      return 0;
    }
  }

  if ((*(v8 + 46) & 0x80) != 0)
  {
    v23 = *(v8 + 72);
    v24 = *(v8 + 68);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v61 = v63;
  v62 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v61, v23, 0, v23, v24);
  v25 = *(a2 + 40);
  v26 = v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
  v59[0] = v60;
  v59[1] = 0x600000000;
  v27 = ((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v25;
  v30 = *(v27 + 24);
  v28 = v27 + 24;
  v29 = v30;
  if (v30 && v29 != v28)
  {
    v31 = mlir::scf::IfOp::elseYield(a2);
    if ((*(v31 + 46) & 0x80) != 0)
    {
      v32 = *(v31 + 72);
      v33 = *(v31 + 68);
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v59, v60, v32, 0, v32, v33);
  }

  v57[0] = v58;
  v57[1] = 0xC00000000;
  if (!v62)
  {
LABEL_55:
    v48 = *(a2 + 24);
    *&v64 = *(*(a2 + 72) + 24);
    v56 = *(*(v17 + 72) + 24);
    v55 = mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 1), v48, &v64, &v56) - 16;
    v49 = *(a2 + 36);
    v50 = a2 - 16;
    if (!v49)
    {
      v50 = 0;
    }

    v64 = v50;
    v65 = v50;
    v66 = v49;
    mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>((a3 + 1), v48, &v64, &v55);
  }

  v34 = 0;
  v35 = v61;
  v36 = 8 * v62;
  while (1)
  {
    v37 = *(*v35 + 8) & 7;
    if (v37 == 7)
    {
      v38 = 0;
    }

    else
    {
      v38 = *v35;
    }

    if (v38)
    {
      v39 = *(v38 + 8) & 7;
      if (v39 == 6)
      {
        v38 += 24 * *(v38 + 16) + 120;
      }

      else
      {
        v38 += 16 * v39 + 16;
      }
    }

    if (v38 != v17)
    {
      if (mlir::Value::getParentRegion(v35) == ((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40))
      {
        break;
      }

      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v57, v34);
      goto LABEL_54;
    }

    if (v37 == 6)
    {
      v37 = (*(*v35 + 16) + 6);
    }

    v40 = *(v6 + 40);
    v41 = v6 + 64 + 16 * ((*(v6 + 44) >> 23) & 1) + ((*(v6 + 44) >> 21) & 0x7F8);
    v42 = ((v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v40;
    v43 = *(v42 + 24);
    v44 = v43 == v42 + 24 || v43 == 0;
    v45 = v44 ? 0 : v43 - 8;
    if (*(*(*(v45 + 32) + 72) + 32 * v37 + 24) != *(v59[0] + v34))
    {
      break;
    }

    v46 = *(32 * v40 + v41);
    if (v46)
    {
      v47 = v46 - 8;
    }

    else
    {
      v47 = 0;
    }

    *(v61 + v34) = *(*(*(v47 + 32) + 72) + 32 * v37 + 24);
LABEL_54:
    ++v34;
    v35 = (v35 + 8);
    v36 -= 8;
    if (!v36)
    {
      goto LABEL_55;
    }
  }

  if (v57[0] != v58)
  {
    free(v57[0]);
  }

  if (v59[0] != v60)
  {
    free(v59[0]);
  }

  if (v61 != v63)
  {
    free(v61);
  }

  return 0;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::AndIOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::arith::AndIOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

void mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, _OWORD *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  v9 = a3[1];
  v10[0] = *a3;
  v10[1] = v9;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v11, v10);
  mlir::scf::IfOp::build(a1, v12, v11[0], v11[1], *a4, 0, 0);
}

char *llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 2);
  if (*a1 + 8 * v12 == a2)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a1, a3, a4, a5, a6);
    return (*a1 + v11);
  }

  v13 = a6 - a4;
  v14 = a6 - a4 + v12;
  if (v14 > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v14, 8);
    v10 = *a1;
    v12 = *(a1 + 2);
  }

  v15 = (v10 + v11);
  v16 = 8 * v12;
  v17 = (v10 + 8 * v12);
  v18 = 8 * v12 - v11;
  v19 = v18 >> 3;
  if (v18 >> 3 >= v13)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<std::move_iterator<mlir::Value*>,void>(a1, &v17[-v13], (v10 + 8 * v12));
    if (&v17[-v13] != v15)
    {
      memmove(&v15[v13], v15, &v17[-v13] - v15);
    }

    if (a6 == v7)
    {
      return v15;
    }

    v34 = v15;
    for (i = a3 - 16 * v7; ; i -= 16)
    {
      if (v7)
      {
        if (!a3)
        {
          v37 = 0;
          v38 = v7;
          goto LABEL_40;
        }

        v36 = *(a3 + 8) & 7;
        v37 = a3;
        v38 = v7;
        if (v36 == 6)
        {
          goto LABEL_40;
        }

        v39 = (5 - v36);
        v40 = i;
        v38 = v7 - v39;
        if (v7 > v39)
        {
          v37 = a3 - 16 * v39;
LABEL_40:
          v40 = v37 - 24 * v38;
        }
      }

      else
      {
        v40 = a3;
      }

      *v34++ = v40;
      if (a6 == ++v7)
      {
        return v15;
      }
    }
  }

  v20 = v12 + v13;
  *(a1 + 2) = v20;
  if (v16 != v11)
  {
    memcpy((v10 + 8 * v20 - 8 * v19), v15, v18);
    v21 = v15;
    v22 = a3 - 16 * v7;
    do
    {
      if (v7)
      {
        if (!a3)
        {
          v24 = 0;
          v25 = v7;
          goto LABEL_14;
        }

        v23 = *(a3 + 8) & 7;
        v24 = a3;
        v25 = v7;
        if (v23 == 6)
        {
          goto LABEL_14;
        }

        v26 = (5 - v23);
        v27 = v22;
        v25 = v7 - v26;
        if (v7 > v26)
        {
          v24 = a3 - 16 * v26;
LABEL_14:
          v27 = v24 - 24 * v25;
        }
      }

      else
      {
        v27 = a3;
      }

      *v21++ = v27;
      ++v7;
      v22 -= 16;
      --v19;
    }

    while (v19);
  }

  if (v7 != a6)
  {
    v28 = a3 - 16 * v7;
    do
    {
      if (v7)
      {
        if (!a3)
        {
          v30 = 0;
          v31 = v7;
          goto LABEL_25;
        }

        v29 = *(a3 + 8) & 7;
        v30 = a3;
        v31 = v7;
        if (v29 == 6)
        {
          goto LABEL_25;
        }

        v32 = (5 - v29);
        v33 = v28;
        v31 = v7 - v32;
        if (v7 > v32)
        {
          v30 = a3 - 16 * v32;
LABEL_25:
          v33 = v30 - 24 * v31;
        }
      }

      else
      {
        v33 = a3;
      }

      *v17++ = v33;
      ++v7;
      v28 -= 16;
    }

    while (a6 != v7);
  }

  return v15;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CombineNestedIfs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CombineNestedIfs]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ConditionPropagation::~ConditionPropagation(_anonymous_namespace_::ConditionPropagation *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ConditionPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 != 6)
  {
    v8 = v5 + 16 * v6 + 16;
LABEL_8:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(v8 + 48) + 32))(*(v8 + 48), v9))
    {
      return 0;
    }

    goto LABEL_10;
  }

  v7 = v5 + 24 * *(v5 + 16);
  v8 = v7 + 120;
  if (v7 != -120)
  {
    goto LABEL_8;
  }

LABEL_10:
  v31 = (a3 + 1);
  v33 = mlir::IntegerType::get(a3[1], 1, 0);
  v11 = **(*(a2 + 72) + 24);
  if (!v11)
  {
    v12 = 0;
    return v12 & 1;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = v11;
    v16 = v11[2];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v17 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = 0;
    }

    v11 = *v11;
    v19 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    do
    {
      if (v18 == v19)
      {
        if (!v13)
        {
          v23 = *(a2 + 24);
          IntegerAttr = mlir::Builder::getIntegerAttr(v31, v33, 1);
          v13 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(v31, v23, &v33, &IntegerAttr) - 16);
          v16 = v15[2];
        }

        v24 = v13;
        ((*a3)[5])(a3, v16);
        v25 = v15[1];
        if (v25)
        {
          v26 = *v15;
          *v25 = *v15;
          if (v26)
          {
            *(v26 + 8) = v15[1];
          }
        }

        v15[3] = v13;
        v15[1] = v13;
        v27 = *v13;
        *v15 = *v13;
        if (!v27)
        {
          goto LABEL_31;
        }

LABEL_30:
        v27[1] = v15;
        goto LABEL_31;
      }

      v20 = *(*(v18 + 16) + 16);
      if (!v20)
      {
        break;
      }

      v18 = *(v20 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v18);
    v21 = *(v17 + 24) & 0xFFFFFFFFFFFFFFF8;
    while (v19 + 24 != v21)
    {
      v22 = *(*(v21 + 16) + 16);
      if (v22)
      {
        v21 = *(v22 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    if (!v14)
    {
      v28 = *(a2 + 24);
      IntegerAttr = mlir::Builder::getIntegerAttr(v31, v33, 0);
      v14 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(v31, v28, &v33, &IntegerAttr) - 16);
      v16 = v15[2];
    }

    v24 = v14;
    ((*a3)[5])(a3, v16);
    v29 = v15[1];
    if (v29)
    {
      v30 = *v15;
      *v29 = *v15;
      if (v30)
      {
        *(v30 + 8) = v15[1];
      }
    }

    v15[3] = v14;
    v15[1] = v14;
    v27 = *v14;
    *v15 = *v14;
    if (v27)
    {
      goto LABEL_30;
    }

LABEL_31:
    *v24 = v15;
    ((*a3)[6])(a3, v16);
    v12 = 1;
LABEL_32:
    ;
  }

  while (v11);
  return v12 & 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v8;
  v19[2] = &v20;
  v19[3] = 0x400000000;
  v21[0] = v22;
  v21[1] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  v9 = *a3;
  v10 = *a4;
  if (*a4)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  v18 = v9;
  v14 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v19);
  *v14 = v10;
  v14[1] = v13;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v21, &v18, v19);
  v15 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v16;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ConditionPropagation>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ConditionPropagation]";
  v6 = 105;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ConvertTrivialIfToSelect::~ConvertTrivialIfToSelect(_anonymous_namespace_::ConvertTrivialIfToSelect *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ConvertTrivialIfToSelect::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = a3;
    v6 = (((a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    if (*v6)
    {
      v7 = *v6 - 8;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v7 + 32);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v9 = *(v8 + 72);
      v10 = *(v8 + 68);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v31 = *(*(a2 + 72) + 24);
    v11 = a2 + 64;
    v12 = v6[3];
    if (v12 == v6 + 3 || v12 == 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 - 1;
    }

    v15 = v14[4];
    if ((*(v15 + 46) & 0x80) != 0)
    {
      v16 = *(v15 + 72);
      v17 = *(v15 + 68);
      v33 = v35;
      v34 = 0x600000000;
      if (v10 && v17)
      {
        v18 = v17 - 1;
        v19 = v10 - 1;
        v20 = 24;
        do
        {
          v21 = *(v9 + v20);
          v22 = *(v16 + v20);
          v36 = v21;
          v37[0] = v22;
          v23 = ((v11 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
          if (mlir::Value::getParentRegion(&v36) == v23 || (v24 = ((v11 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24, v24 == mlir::Value::getParentRegion(v37)))
          {
            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v33, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
          }

          v25 = v18-- != 0;
          v26 = v25;
          v25 = v19-- != 0;
          if (!v25)
          {
            break;
          }

          v20 += 32;
        }

        while ((v26 & 1) != 0);
        v27 = v34;
        v3 = *(a2 + 36);
        v4 = a3;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v33 = v35;
      v34 = 0x600000000;
    }

    if (v27 != v3)
    {
      v28 = *(a2 + 24);
      v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>((v4 + 1), *(**v28 + 32));
      v36 = v28;
      v37[0] = v29;
      v37[1] = v38;
      v37[2] = 0x400000000;
      v38[4] = v39;
      v38[5] = 0x400000000;
      v39[4] = v40;
      v39[5] = 0x400000000;
      v40[8] = 4;
      v40[9] = v41;
      v40[10] = 0x100000000;
      v41[1] = v42;
      v41[2] = 0x100000000;
      v42[2] = 0;
      v42[1] = 0;
      v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v42[4] = 0;
      v42[6] = 0;
      mlir::scf::IfOp::build((v4 + 1), &v36, v33 & 0xFFFFFFFFFFFFFFF9 | 2, v34, v31, 0);
    }

    if (v33 != v35)
    {
      free(v33);
    }
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ConvertTrivialIfToSelect>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ConvertTrivialIfToSelect]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::RemoveEmptyElseBranch::~RemoveEmptyElseBranch(_anonymous_namespace_::RemoveEmptyElseBranch *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveEmptyElseBranch::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  if (*(a2 + 9))
  {
    return 0;
  }

  v4 = a2 + 64;
  v5 = ((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  v8 = *(v5 + 24);
  v7 = v5 + 24;
  v6 = v8;
  if (!v8 || v6 == v7)
  {
    return 0;
  }

  v10 = *(v6 + 32);
  v11 = v6 + 24;
  if (v10 == v11 || *(v10 + 8) != v11)
  {
    return 0;
  }

  v14 = mlir::Operation::cloneWithoutRegions(a2);
  mlir::OpBuilder::insert((a3 + 8), v14);
  v15 = ((&v14[4 * ((v14[11] >> 23) & 1) + 17] + ((v14[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v14[10];
  mlir::RewriterBase::inlineRegionBefore(a3, ((&v4[16 * ((*(a2 + 11) >> 23) & 1) + 7 + ((*(a2 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10)), v15, *(v15 + 8));
  (*(*a3 + 16))(a3, a2);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveEmptyElseBranch>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveEmptyElseBranch]";
  v6 = 106;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::RemoveStaticCondition::~RemoveStaticCondition(_anonymous_namespace_::RemoveStaticCondition *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveStaticCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  v15 = &v16;
  v16 = 0;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v15, v8);
  if (result)
  {
    v10 = *(v16 + 24);
    if (v10 > 0x40)
    {
      v11 = llvm::APInt::countLeadingZerosSlowCase((v16 + 16)) == v10;
    }

    else
    {
      v11 = *(v16 + 16) == 0;
    }

    v12 = v11;
    v13 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    if (v12)
    {
      if (v13[3] == v13 + 3)
      {
        (*(*a3 + 16))(a3, a2);
        return 1;
      }

      v14 = v13[4];
    }

    else
    {
      v14 = v13[1];
    }

    replaceOpWithRegion(a3, a2, v14);
    return 1;
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::BoolAttr>::match(void **a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    return 0;
  }

  v11[0] = v12;
  v11[1] = 0x100000000;
  mlir::Operation::fold(a2, 0, 0, v11);
  v5 = v11[0];
  v6 = (*v11[0] & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && (v8 = v6[1], *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v8[2] == 1)
  {
    if (*a1)
    {
      **a1 = v6;
      v9 = 1;
      v5 = v11[0];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v5 != v12)
  {
    free(v5);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveStaticCondition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveStaticCondition]";
  v6 = 106;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::RemoveUnusedResults::~RemoveUnusedResults(_anonymous_namespace_::RemoveUnusedResults *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveUnusedResults::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t, void))
{
  v33[8] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x400000000;
  v3 = *(a2 + 36);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a2 - 16);
  v8 = (a2 - 16);
  v9 = (a2 - 16);
  do
  {
    if (v6)
    {
      v10 = *(a2 - 8) & 7;
      if (v10 == 6)
      {
        v11 = v7;
        v12 = v6;
        if (*v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = (5 - v10);
        if (v6 <= v14)
        {
          if (!*v8)
          {
            goto LABEL_17;
          }

LABEL_13:
          v13 = v8;
          v12 = v6 - v14;
          if (v6 > v14)
          {
            v11 = &v7[-2 * v14];
LABEL_15:
            v13 = &v11[-3 * v12];
          }

LABEL_16:
          llvm::SmallVectorTemplateBase<mlir::OpResult,true>::push_back(&v25, v13);
          goto LABEL_17;
        }

        if (v9[v14])
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v13 = v7;
      if (*v7)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    ++v6;
    v9 -= 3;
    v8 -= 2;
  }

  while (v3 != v6);
  v15 = v25;
  if (v26 != *(a2 + 36))
  {
    v22 = &v24;
    v23 = 0x400000000;
    if (v26)
    {
      v16 = 8 * v26;
      do
      {
        v17 = *v15++;
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v22, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
        v16 -= 8;
      }

      while (v16);
    }

    v18 = *(a2 + 24);
    v19 = *(*(a2 + 72) + 24);
    v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>((a3 + 1), *(**v18 + 32));
    v28[0] = v18;
    v28[1] = v20;
    v28[2] = v29;
    v28[3] = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[8] = 4;
    v31[9] = v32;
    v31[10] = 0x100000000;
    v32[1] = v33;
    v32[2] = 0x100000000;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v33[4] = 0;
    v33[6] = 0;
    mlir::scf::IfOp::build((a3 + 1), v28, v22 & 0xFFFFFFFFFFFFFFF9 | 2, v23, v19, 0, 0);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return 0;
}

void anonymous namespace::RemoveUnusedResults::transferBody(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  (*(*a5 + 32))(a5, a1, a2, a2 + 32, 0, 0);
  v9 = *(a2 + 32);
  v13 = v15;
  *v14 = 0x400000000;
  if (a4)
  {
    v10 = 8 * a4;
    do
    {
      v11 = *(*a3 + 8) & 7;
      if (*a3)
      {
        v12 = v11 == 6;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v11 = (*(*a3 + 16) + 6);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v13, *(*(v9 + 72) + 32 * v11 + 24));
      a3 += 8;
      v10 -= 8;
    }

    while (v10);
  }

  (*(*a5 + 40))(a5, v9);
  if ((*(v9 + 46) & 0x80) != 0)
  {
    mlir::detail::OperandStorage::setOperands((v9 + 64), v9, v13 & 0xFFFFFFFFFFFFFFF9, v14[0]);
  }

  (*(*a5 + 48))(a5, v9);
  if (v13 != v15)
  {
    free(v13);
  }
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveUnusedResults>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveUnusedResults]";
  v6 = 104;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::ReplaceIfYieldWithConditionOrValue::~ReplaceIfYieldWithConditionOrValue(_anonymous_namespace_::ReplaceIfYieldWithConditionOrValue *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ReplaceIfYieldWithConditionOrValue::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v80[8] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 36))
  {
    return 0;
  }

  v4 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v4)
  {
    v5 = *v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 32);
  v7 = v4[3];
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v8 + 32);
  v11 = (a3 + 1);
  v10 = a3[1];
  a3[3] = *(a2 + 16);
  a3[4] = a2;
  v12 = mlir::IntegerType::get(v10, 1, 0);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v13 = *(v6 + 68);
    v14 = *(v6 + 72);
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v15 = *(v9 + 68);
    v16 = *(v9 + 72);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = *(a2 + 36);
  v18 = (a2 - 16);
  v68 = 0;
  if (!v17)
  {
    v18 = 0;
  }

  v71 = v18;
  if (v13)
  {
    if (v15)
    {
      v64 = v12;
      v65 = v11;
      if (v17)
      {
        v19 = 0;
        v68 = 0;
        v20 = 0;
        v69 = 32 * v17 - 32;
        v70 = 32 * v15 - 32;
        v21 = 32 * v13 - 32;
        v22 = v16 + 24;
        v23 = v14 + 24;
        v24 = (a2 - 16);
        while (1)
        {
          v25 = v71;
          if (!v19)
          {
            goto LABEL_23;
          }

          v26 = *(a2 - 8) & 7;
          v27 = a2 - 16;
          v28 = v20;
          if (v26 != 6)
          {
            v29 = (5 - v26);
            v25 = v24;
            v28 = v20 - v29;
            if (v20 <= v29)
            {
              goto LABEL_23;
            }

            v27 = a2 - 16 - 16 * v29;
          }

          v25 = (v27 - 24 * v28);
LABEL_23:
          v30 = *(v23 + v19);
          v31 = *(v22 + v19);
          if (v30 == v31)
          {
            if (!*v25)
            {
              goto LABEL_75;
            }

            v75[0] = *(v23 + v19);
            goto LABEL_33;
          }

          v73 = 0;
          v74 = 0;
          v75[0] = &v74;
          if ((~*(v30 + 8) & 7) != 0)
          {
            v32 = v30;
          }

          else
          {
            v32 = 0;
          }

          if (!v32)
          {
            goto LABEL_75;
          }

          v33 = *(v32 + 8) & 7;
          if (v33 == 6)
          {
            v34 = v32 + 24 * *(v32 + 16);
            v35 = v34 + 120;
            if (v34 == -120)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v35 = v32 + 16 * v33 + 16;
          }

          if (!mlir::detail::constant_op_binder<mlir::BoolAttr>::match(v75, v35))
          {
            goto LABEL_75;
          }

          v72 = &v73;
          v36 = (~*(v31 + 8) & 7) != 0 ? v31 : 0;
          if (!v36)
          {
            goto LABEL_75;
          }

          v37 = *(v36 + 8) & 7;
          if (v37 != 6)
          {
            v39 = v36 + 16 * v37 + 16;
LABEL_44:
            if ((mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v72, v39) & 1) == 0)
            {
              goto LABEL_75;
            }

            v40 = *(v74 + 24);
            if (v40 > 0x40)
            {
              v41 = llvm::APInt::countLeadingZerosSlowCase((v74 + 16)) == v40;
            }

            else
            {
              v41 = *(v74 + 16) == 0;
            }

            v42 = v41;
            v43 = *(v73 + 24);
            if (v43 > 0x40)
            {
              v66 = v42;
              v45 = llvm::APInt::countLeadingZerosSlowCase((v73 + 16));
              v42 = v66;
              v44 = v45 == v43;
            }

            else
            {
              v44 = *(v73 + 16) == 0;
            }

            v46 = v44;
            if (((v42 ^ 1 | v46) & 1) == 0 && *v25)
            {
              v67 = v42;
              if ((~*(v30 + 8) & 7) != 0)
              {
                v47 = v30;
              }

              else
              {
                v47 = 0;
              }

              v48 = *(v47 + 8) & 7;
              v63 = v46;
              if (v48 == 6)
              {
                v49 = v47 + 24 * *(v47 + 16) + 120;
              }

              else
              {
                v49 = v47 + 16 * v48 + 16;
              }

              v50 = *(v49 + 48);
              if (*(v50 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
              {
                v51 = (*(v50 + 8) + 32);
              }

              else
              {
                v51 = (v50 + 24);
              }

              v59 = *(a2 + 24);
              v60 = *v51;
              v62 = *(*(a2 + 72) + 24);
              v68 = 1;
              IntegerAttr = mlir::Builder::getIntegerAttr(v65, v64, 1);
              v61 = (*(*v60 + 24))(v60, v65, IntegerAttr, v64, *(a2 + 24)) - 16;
              v53 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::XOrIOp>(v65, *(**v59 + 32));
              v75[0] = v59;
              v75[1] = v53;
              v75[2] = v76;
              v75[3] = 0x400000000;
              v76[4] = v77;
              v76[5] = 0x400000000;
              v77[4] = v78;
              v77[5] = 0x400000000;
              v78[8] = 4;
              v78[9] = v79;
              v78[10] = 0x100000000;
              v79[1] = v80;
              v79[2] = 0x100000000;
              v80[1] = 0;
              v80[2] = 0;
              v80[3] = &mlir::detail::TypeIDResolver<void,void>::id;
              v80[4] = 0;
              v80[6] = 0;
              mlir::arith::XOrIOp::build(v65, v75, v62, v61);
              v54 = mlir::Operation::create(v75);
              mlir::OpBuilder::insert(v65, v54);
              v55 = v54;
              v56 = *(*(v54 + 6) + 16);
              mlir::OperationState::~OperationState(v75);
              if (v56 == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
              {
                v57 = v55;
              }

              else
              {
                v57 = 0;
              }

              v75[0] = (v57 - 16);
              mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v25, v75);
              v42 = v67;
              v46 = v63;
            }

            if (((v42 | v46 ^ 1) & 1) != 0 || !*v25)
            {
              goto LABEL_75;
            }

            v75[0] = *(*(a2 + 72) + 24);
LABEL_33:
            mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v25, v75);
            v68 = 1;
            goto LABEL_75;
          }

          v38 = v36 + 24 * *(v36 + 16);
          v39 = v38 + 120;
          if (v38 != -120)
          {
            goto LABEL_44;
          }

LABEL_75:
          if (v21 != v19 && v70 != v19)
          {
            ++v20;
            v24 -= 2;
            v41 = v69 == v19;
            v19 += 32;
            if (!v41)
            {
              continue;
            }
          }

          return v68 & 1;
        }
      }
    }
  }

  return v68 & 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ReplaceIfYieldWithConditionOrValue>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ReplaceIfYieldWithConditionOrValue]";
  v6 = 119;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v4[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "scf.reduce", 0xA);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

void anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::~ParallelOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ParallelOpSingleOrZeroIterationDimsFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v113[8] = *MEMORY[0x277D85DE8];
  v88 = a2;
  v76 = *(a2 + 24);
  v98 = v100;
  v99 = 0x600000000;
  v95 = v97;
  v96 = 0x600000000;
  v92 = v94;
  v93 = 0x600000000;
  v80[0] = 0;
  v80[1] = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v3 = *(a2 + 44);
  v4 = a2 + 16 * ((v3 >> 23) & 1);
  v7 = *(v4 + 64);
  v5 = v4 + 64;
  v6 = v7;
  if ((v3 & 0x800000) != 0)
  {
    v8 = *(a2 + 72);
    v9 = (*(v5 + 4) + v6);
    v10 = v9 - v6;
    v11 = &v8[32 * v6];
    v12 = v8;
  }

  else
  {
    v8 = 0;
    v12 = 0;
    v9 = (*(v5 + 4) + v6);
    v10 = v9 - v6;
    v11 = 32 * v6;
  }

  v13 = &v12[32 * v9];
  v14 = (*(v5 + 8) + v9) - v9;
  mlir::scf::ParallelOp::getInductionVars(&v89, &v88);
  v101 = v8;
  v102 = v6;
  v103 = v11;
  v104 = v10;
  v105 = v13;
  v106 = v14;
  v107 = v109;
  v108 = 0x600000000;
  if (v90)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v107, &v89);
  }

  if (v89 != &v91)
  {
    free(v89);
  }

  v15 = 0;
  if (v102 && v104 && v106)
  {
    v16 = 0;
    v17 = v106 - 1;
    v18 = v104 - 1;
    v19 = v107;
    v20 = v102 - 1;
    v78 = v105 + 24;
    v79 = 32 * v108;
    v21 = v103 + 3;
    v22 = v101 + 24;
    while (1)
    {
      v23 = v17;
      if (v79 == v16)
      {
        v15 = 0;
        goto LABEL_22;
      }

      v24 = *&v22[v16];
      v25 = v21[v16 / 8];
      v26 = *&v78[v16];
      v27 = mlir::constantTripCount(v24 | 4, v25 | 4, v26 | 4);
      if ((v28 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v27 != 1)
      {
        break;
      }

      v29 = *v19;
      ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp((a3 + 1), v76, v24 | 4);
      v89 = v29;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v80, &v89) = ConstantIndexOp;
LABEL_17:
      v15 = 0;
      if (v20)
      {
        if (v18)
        {
          ++v19;
          v16 += 32;
          v17 = v23 - 1;
          --v18;
          --v20;
          if (v23)
          {
            continue;
          }
        }
      }

      goto LABEL_22;
    }

    if (!v27)
    {
      (**a3)(a3);
      v15 = 1;
      goto LABEL_22;
    }

LABEL_15:
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v98, v24);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v95, v25);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v92, v26);
    goto LABEL_17;
  }

LABEL_22:
  if (v107 != v109)
  {
    free(v107);
  }

  if ((v15 & 1) == 0)
  {
    v31 = v88;
    v32 = *(v88 + 44);
    v33 = (v32 >> 23) & 1;
    v34 = v88 + 16 * v33;
    v37 = *(v34 + 64);
    v35 = (v34 + 64);
    v36 = v37;
    if (v99 == v37)
    {
      v38 = 0;
      goto LABEL_65;
    }

    if (v99)
    {
      v39 = *(v88 + 24);
      v40 = (v35[1] + v36 + v35[2]);
      v41 = v35[3];
      if ((v32 & 0x800000) != 0)
      {
        v42 = *(v88 + 72);
      }

      else
      {
        v42 = 0;
      }

      v43 = v42 + 32 * v40;
      v44 = (v41 + v40) - v40;
      v45 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ParallelOp>((a3 + 1), *(**v39 + 32));
      v101 = v39;
      v102 = v45;
      v103 = &v105;
      v104 = 0x400000000;
      v109[0] = v110;
      v109[1] = 0x400000000;
      v110[4] = v111;
      v110[5] = 0x400000000;
      v111[8] = 4;
      v111[9] = v112;
      v111[10] = 0x100000000;
      v112[1] = v113;
      v112[2] = 0x100000000;
      v113[2] = 0;
      v113[1] = 0;
      v113[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v113[4] = 0;
      v113[6] = 0;
      mlir::scf::ParallelOp::build(a3 + 1, &v101, v98 & 0xFFFFFFFFFFFFFFF9, v99, v95 & 0xFFFFFFFFFFFFFFF9, v96, v92 & 0xFFFFFFFFFFFFFFF9, v93, v43 & 0xFFFFFFFFFFFFFFF9 | 2, v44, 0, v75);
    }

    v101 = &v103;
    v102 = 0x600000000;
    v46 = (v35[1] + v36 + v35[2]);
    v47 = (v35[3] + v46) - v46;
    if (v47 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, &v103, v47, 8);
      v31 = v88;
      v32 = *(v88 + 44);
      v33 = (v32 >> 23) & 1;
    }

    v48 = (v32 >> 21) & 0x7F8;
    v49 = 32 * *(v31 + 40);
    v50 = *(((v31 + 16 * v33 + v48 + 71) & 0xFFFFFFFFFFFFFFF8) + v49 + 8);
    if (v50)
    {
      v51 = v50 - 8;
    }

    else
    {
      v51 = 0;
    }

    v52 = *(v51 + 40);
    v53 = (v51 + 32);
    if (v52 != v53)
    {
      v54 = *v53;
      if (v52 != *v53)
      {
        do
        {
          mlir::OpBuilder::clone((a3 + 1), v52, v80);
          v52 = *(v52 + 8);
        }

        while (v52 != v54);
        v31 = v88;
        v55 = *(v88 + 44);
        v33 = (v55 >> 23) & 1;
        v48 = (v55 >> 21) & 0x7F8;
        v49 = 32 * *(v88 + 40);
      }
    }

    v56 = *(((v31 + 16 * v33 + v48 + 71) & 0xFFFFFFFFFFFFFFF8) + v49 + 8);
    if (v56)
    {
      v57 = v56 - 8;
    }

    else
    {
      v57 = 0;
    }

    v58 = *(v57 + 32);
    v59 = *(v58 + 44);
    v60 = *&v59 & 0x7FFFFFLL;
    if ((v59 & 0x7FFFFF) != 0)
    {
      v61 = 0;
      do
      {
        v62 = *(((v58 + 64 + 16 * ((*(v58 + 44) >> 23) & 1) + ((*(v58 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v58 + 40) + 24 * v61 + 8);
        if (v62)
        {
          v63 = v62 - 8;
        }

        else
        {
          v63 = 0;
        }

        v64 = *(*(v88 + 72) + 32 * (*(v88 + 84) + *(v88 + 80) + *(v88 + 88)) + 32 * v102 + 24);
        v89 = **(v63 + 48);
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v80, &v89) = v64;
        v65 = *(*(v63 + 48) + 8);
        v66 = *(*(v58 + 72) + 32 * v61 + 24);
        v89 = v66;
        v67 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v80, &v89);
        if (v67 && v67 != v80[0] + 16 * v81)
        {
          v66 = *(v67 + 8);
        }

        v89 = v65;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v80, &v89) = v66;
        v70 = *(v63 + 32);
        v69 = *(v63 + 40);
        v68 = (v63 + 32);
        if (v69 != v68 && v69 != v70)
        {
          do
          {
            mlir::OpBuilder::clone((a3 + 1), v69, v80);
            v69 = *(v69 + 8);
          }

          while (v69 != v70);
          v70 = *v68;
        }

        v72 = *(*(v70 + 72) + 24);
        v89 = v72;
        v73 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v80, &v89);
        if (v73 && v73 != v80[0] + 16 * v81)
        {
          v72 = *(v73 + 8);
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v101, v72);
        ++v61;
      }

      while (v61 != v60);
      v31 = v88;
    }

    (**a3)(a3, v31, v101 & 0xFFFFFFFFFFFFFFF9, v102);
    if (v101 != &v103)
    {
      free(v101);
    }
  }

  v38 = 1;
LABEL_65:
  MEMORY[0x25F891030](v85, 8);
  MEMORY[0x25F891030](v82, 8);
  MEMORY[0x25F891030](v80[0], 8);
  if (v92 != v94)
  {
    free(v92);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if (v98 != v100)
  {
    free(v98);
  }

  return v38;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ParallelOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.parallel";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ParallelOpSingleOrZeroIterationDimsFolder]";
  v6 = 126;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::MergeNestedParallelLoops::~MergeNestedParallelLoops(_anonymous_namespace_::MergeNestedParallelLoops *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MergeNestedParallelLoops::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93[8] = *MEMORY[0x277D85DE8];
  v3 = a2 + 64;
  v4 = *(a2 + 44);
  v5 = (a2 + 64 + 16 * ((v4 >> 23) & 1));
  v6 = *(((v5 + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7[5];
  if (v8 != v7 + 4)
  {
    v9 = v7[4];
    if (v8 != v9 && *(v8 + 8) == v9)
    {
      v10 = *(*(v8 + 48) + 16);
      v11 = v10 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id;
      v12 = v10 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id ? v7[5] : 0;
      v76 = v12;
      if (v11)
      {
        v16 = v7[6];
        v17 = v7[7];
        if (v16 == v17)
        {
LABEL_45:
          if (!v5[3])
          {
            v39 = *(v12 + 44);
            v40 = v12 + 16 * ((v39 >> 23) & 1);
            if (!*(v40 + 76))
            {
              v75[0] = &v76;
              v75[1] = v7;
              v41 = *v5;
              if ((v4 & 0x800000) != 0)
              {
                v42 = *(a2 + 72);
              }

              else
              {
                v42 = 0;
              }

              v43 = *(v40 + 64);
              if ((v39 & 0x800000) != 0)
              {
                v44 = *(v12 + 72);
              }

              else
              {
                v44 = 0;
              }

              v86 = v88;
              v87 = 0x600000000;
              if ((v43 + v41) >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v43 + v41, 8);
              }

              LODWORD(v87) = 0;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v42, 0, v42, v41);
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v44, 0, v44, v43);
              v83 = &v85;
              v84 = 0x600000000;
              if (v87)
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(&v83, &v86);
              }

              if (v86 != v88)
              {
                free(v86);
              }

              v45 = *(a2 + 44);
              v46 = (v3 + 16 * ((v45 >> 23) & 1));
              v47 = *v46;
              v48 = v46[1];
              if ((v45 & 0x800000) != 0)
              {
                v49 = *(a2 + 72);
              }

              else
              {
                v49 = 0;
              }

              v50 = v49 + 32 * v47;
              v51 = v48 + v47 - v47;
              v52 = *(v76 + 44);
              v53 = v76 + 16 * ((v52 >> 23) & 1);
              v54 = *(v53 + 64);
              v55 = *(v53 + 68);
              if ((v52 & 0x800000) != 0)
              {
                v56 = *(v76 + 72);
              }

              else
              {
                v56 = 0;
              }

              v57 = v56 + 32 * v54;
              v58 = (v55 + v54) - v54;
              v86 = v88;
              v87 = 0x600000000;
              if ((v58 + v51) >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v58 + v51, 8);
              }

              LODWORD(v87) = 0;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v50, 0, v50, v51);
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v57, 0, v57, v58);
              v80 = &v82;
              v81 = 0x600000000;
              if (v87)
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(&v80, &v86);
              }

              if (v86 != v88)
              {
                free(v86);
              }

              v59 = *(a2 + 44);
              v60 = (v3 + 16 * ((v59 >> 23) & 1));
              v61 = (v60[1] + *v60);
              v62 = v60[2];
              if ((v59 & 0x800000) != 0)
              {
                v63 = *(a2 + 72);
              }

              else
              {
                v63 = 0;
              }

              v64 = (v62 + v61);
              v65 = v63 + 32 * v61;
              v66 = *(v76 + 44);
              v67 = (v76 + 16 * ((v66 >> 23) & 1));
              v68 = (v67[17] + v67[16]);
              v69 = v64 - v61;
              if ((v66 & 0x800000) != 0)
              {
                v70 = *(v76 + 72);
              }

              else
              {
                v70 = 0;
              }

              v71 = v70 + 32 * v68;
              v72 = (v67[18] + v68) - v68;
              v86 = v88;
              v87 = 0x600000000;
              if ((v72 + v69) >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v72 + v69, 8);
              }

              LODWORD(v87) = 0;
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v65, 0, v65, v69);
              llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v86, v71, 0, v71, v72);
              v77 = &v79;
              v78 = 0x600000000;
              if (v87)
              {
                llvm::SmallVectorImpl<mlir::Value>::operator=(&v77, &v86);
              }

              if (v86 != v88)
              {
                free(v86);
              }

              v73 = *(a2 + 24);
              v74 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ParallelOp>(a3 + 8, *(**v73 + 32));
              v86 = v73;
              v87 = v74;
              v88[0] = v89;
              v88[1] = 0x400000000;
              v89[4] = v90;
              v89[5] = 0x400000000;
              v90[4] = v91;
              v90[5] = 0x400000000;
              v91[8] = 4;
              v91[9] = v92;
              v91[10] = 0x100000000;
              v92[1] = v93;
              v92[2] = 0x100000000;
              v93[1] = 0;
              v93[2] = 0;
              v93[3] = &mlir::detail::TypeIDResolver<void,void>::id;
              v93[4] = 0;
              v93[6] = 0;
            }
          }
        }

        else
        {
          v18 = *(v8 + 44);
          v19 = v8 + 16 * ((v18 >> 23) & 1);
          v22 = *(v19 + 64);
          v20 = v19 + 64;
          v21 = v22;
          v23 = (32 * v22) | 0x18;
          while (1)
          {
            if ((v18 & 0x800000) != 0)
            {
              v24 = *(v8 + 72);
            }

            else
            {
              v24 = 0;
            }

            v25 = *v16;
            v26 = 0;
            if (v21)
            {
              v27 = (v24 + 24);
              while (*v27 != v25)
              {
                ++v26;
                v27 += 4;
                if (v21 == v26)
                {
                  goto LABEL_22;
                }
              }
            }

            if (v26 != v21)
            {
              break;
            }

LABEL_22:
            if ((v18 & 0x800000) != 0)
            {
              v28 = *(v8 + 72);
            }

            else
            {
              v28 = 0;
            }

            v29 = *(v20 + 4);
            v30 = (v29 + v21);
            v31 = v30 - v21;
            if (v29)
            {
              v32 = 0;
              v33 = (v28 + v23);
              while (*v33 != v25)
              {
                ++v32;
                v33 += 4;
                if (v31 == v32)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
              v32 = 0;
            }

            if (v32 != v31)
            {
              return 0;
            }

LABEL_31:
            if ((v18 & 0x800000) != 0)
            {
              v34 = *(v8 + 72);
            }

            else
            {
              v34 = 0;
            }

            v35 = *(v20 + 8);
            v36 = (v35 + v30) - v30;
            if (v35)
            {
              v37 = 0;
              v38 = (v34 + 32 * v30 + 24);
              while (*v38 != v25)
              {
                ++v37;
                v38 += 4;
                if (v36 == v37)
                {
                  goto LABEL_40;
                }
              }
            }

            else
            {
              v37 = 0;
            }

            if (v37 != v36)
            {
              return 0;
            }

LABEL_40:
            if (++v16 == v17)
            {
              goto LABEL_45;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>::callback_fn<anonymous namespace::MergeNestedParallelLoops::matchAndRewrite(mlir::scf::ParallelOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)#1}>(void *a1, mlir::OpBuilder *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v31[2] = *MEMORY[0x277D85DE8];
  v31[0] = a4;
  v31[1] = a5;
  v8 = *(((**a1 + 16 * ((*(**a1 + 44) >> 23) & 1) + ((*(**a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(**a1 + 40) + 8);
  if (v8)
  {
    v9 = (v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v24 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v10 = a1[1];
  v11 = *(v10 + 48);
  v12 = *(v10 + 56) - v11;
  v13 = v12 >> 3;
  v14 = v12 >> 3;
  v15 = (v12 >> 3);
  if (a5 >= v14)
  {
    a5 = v15;
  }

  mlir::IRMapping::map<llvm::MutableArrayRef<mlir::BlockArgument>,mlir::ValueRange,(void *)0>(v23, v11, v13, a4, a5);
  v16 = v9[6];
  v17 = v9[7] - v16;
  v18 = v17 >> 3;
  if (v5 > (v17 >> 3))
  {
    v19 = (v17 >> 3);
    v6 = mlir::ValueRange::offset_base(v31, v5 - v19);
    v5 = v19;
  }

  mlir::IRMapping::map<llvm::MutableArrayRef<mlir::BlockArgument>,mlir::ValueRange,(void *)0>(v23, v16, v18, v6, v5);
  v20 = v9[5];
  if (v20 != v9 + 4)
  {
    v21 = v9[4];
    while (v20 != v21)
    {
      mlir::OpBuilder::clone(a2, v20, v23);
      v20 = *(v20 + 8);
    }
  }

  MEMORY[0x25F891030](v28, 8);
  MEMORY[0x25F891030](v25, 8);
  return MEMORY[0x25F891030](v23[0], 8);
}

uint64_t *mlir::IRMapping::map<llvm::MutableArrayRef<mlir::BlockArgument>,mlir::ValueRange,(void *)0>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a4;
  v15 = 0;
  if (a3 && a5)
  {
    v6 = result;
    v7 = a2 + 8;
    v8 = 8 * a3 - 8;
    v9 = 1;
    do
    {
      v10 = mlir::ValueRange::dereference_iterator(&v14, v9 - 1);
      v12 = *(v7 - 8);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v6, &v12);
      *result = v10;
      v13 = v7;
      v15 = v9;
      if (!v8)
      {
        break;
      }

      v7 += 8;
      v8 -= 8;
    }

    while (a5 != v9++);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::MergeNestedParallelLoops>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::MergeNestedParallelLoops]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::RemoveLoopInvariantArgsFromBeforeBlock::~RemoveLoopInvariantArgsFromBeforeBlock(_anonymous_namespace_::RemoveLoopInvariantArgsFromBeforeBlock *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveLoopInvariantArgsFromBeforeBlock::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69[8] = *MEMORY[0x277D85DE8];
  v5 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v9 + 48);
  v50 = *(v9 + 32);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v50, 1u);
  v11 = *(v7 + 32);
  if ((*(v11 + 46) & 0x80) != 0)
  {
    v12 = *(v11 + 68);
    v13 = *(v11 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v12 = 0;
    v13 = 2;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v42 = a3;
    v14 = *(a2 + 72);
    v43 = a2;
    v15 = *(a2 + 68);
    v61 = 0;
    v62 = v14;
    v63 = 0;
    v64 = v13;
    v65[0] = 0;
    if (v15)
    {
      v16 = 0;
      v17 = (v14 + 24);
      do
      {
        if (v12 == v16)
        {
          break;
        }

        v18 = *v17;
        v19 = mlir::ValueRange::dereference_iterator(&v64, v16);
        if (v18 != v19)
        {
          v20 = (~*(v19 + 8) & 7) != 0 ? 0 : v19;
          if (!v20 || *(v20 + 16) != v7)
          {
            continue;
          }

          v21 = *(ODSOperands + 32 * *(v20 + 24) + 24);
          v22 = v21 == *(v10 + 8 * v16) || v21 == v18;
          if (!v22)
          {
            continue;
          }
        }

        v55 = &v57;
        v56 = 0x600000000;
        v53[0] = &v54;
        v53[1] = 0x600000000;
        v48[0] = 0;
        v48[1] = 0;
        v49 = 0;
        v51[0] = &v52;
        v51[1] = 0x600000000;
        if ((*(v43 + 46) & 0x80) != 0)
        {
          v24 = *(v43 + 72);
          v25 = *(v43 + 68);
          v61 = 0;
          v62 = v24;
          v63 = 0;
          v64 = v13;
          v65[0] = 0;
          if (v25)
          {
            v26 = 0;
            v27 = v12 - 1;
            v28 = (v24 + 24);
            v29 = v25 - 1;
            do
            {
              v30 = *v28;
              v31 = mlir::ValueRange::dereference_iterator(&v64, v26);
              v59 = v30;
              v60 = v31;
              if (v30 == v31 || ((~*(v31 + 8) & 7) != 0 ? (v32 = 0) : (v32 = v31), v32 && *(v32 + 16) == v7 && ((v33 = *(ODSOperands + 32 * *(v32 + 24) + 24), v33 != v30) ? (v34 = v33 == *(v10 + 8 * v26)) : (v34 = 1), v34)))
              {
                v46 = v26;
                v47 = v30;
                llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(v58, v48, &v46, &v47);
              }

              else
              {
                llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(&v55, &v59);
                llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v53, &v60);
                v58[0] = *(*(v10 + 8 * v26) + 32);
                llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v51, v58);
              }

              v61 = (v26 + 1);
              v63 = (v26 + 1);
              v65[0] = v26 + 1;
              if (v29 == v26)
              {
                break;
              }

              v28 += 4;
              v22 = v27 == v26++;
            }

            while (!v22);
          }
        }

        v35 = (v42 + 24);
        v45 = *(v42 + 24);
        *(v42 + 24) = *(v11 + 16);
        *(v42 + 32) = v11;
        v36 = mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((v42 + 8), *(v11 + 24), v53);
        (*(*v42 + 8))(v42, v11, v36);
        if (v45)
        {
          *v35 = v45;
        }

        else
        {
          *v35 = 0;
          *(v42 + 32) = 0;
        }

        v37 = *(v43 + 24);
        v38 = *(v43 + 36);
        if (v38)
        {
          v39 = v43 - 16;
        }

        else
        {
          v39 = 0;
        }

        v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(v42 + 8, *(**v37 + 32));
        v61 = v37;
        v62 = v40;
        v63 = v65;
        v64 = 0x400000000;
        v65[4] = v66;
        v65[5] = 0x400000000;
        v66[4] = v67;
        v66[5] = 0x400000000;
        v67[8] = 4;
        v67[9] = v68;
        v67[10] = 0x100000000;
        v68[1] = v69;
        v68[2] = 0x100000000;
        v69[2] = 0;
        v69[1] = 0;
        v69[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v69[4] = 0;
        v69[6] = 0;
        v58[0] = v39;
        v58[1] = 0;
        v58[2] = v39;
        v58[3] = v38;
        v41 = mlir::TypeRange::TypeRange<mlir::ResultRange>(&v59, v58);
        mlir::scf::WhileOp::build(v41, &v61, v59, v60, v55 & 0xFFFFFFFFFFFFFFF9, v56, 0, 0);
        v61 = ++v16;
        v63 = v16;
        v65[0] = v16;
        v17 += 4;
      }

      while (v15 != v16);
    }
  }

  return 0;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](uint64_t a1, int *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::InsertIntoBucketImpl<unsigned int>(a1, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = 0;
  }

  return inserted + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a2, *(a2 + 16), *a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::InsertIntoBucketImpl<unsigned int>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, int *a2, _DWORD *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 4;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A0500)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_25D0A04F0)))).i32[1])
        {
          *v16 = -1;
          *(v16 + 4) = -1;
        }

        v11 += 4;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if (*v20 <= 0xFFFFFFFD)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v21, &v32);
          v22 = v32;
          *v32 = *v20;
          *(v22 + 1) = *(v20 + 8);
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 3) + 4;
    v28 = vdupq_n_s64(v26);
    v29 = result + 4;
    do
    {
      v30 = vdupq_n_s64(v24);
      v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_25D0A0500)));
      if (vuzp1_s16(v31, *v28.i8).u8[0])
      {
        *(v29 - 8) = -1;
      }

      if (vuzp1_s16(v31, *&v28).i8[2])
      {
        *(v29 - 4) = -1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_25D0A04F0)))).i32[1])
      {
        *v29 = -1;
        *(v29 + 4) = -1;
      }

      v24 += 4;
      v29 += 8;
    }

    while (v27 != v24);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.while";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveLoopInvariantArgsFromBeforeBlock>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveLoopInvariantArgsFromBeforeBlock]";
  v6 = 123;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::RemoveLoopInvariantValueYielded::~RemoveLoopInvariantValueYielded(_anonymous_namespace_::RemoveLoopInvariantValueYielded *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::RemoveLoopInvariantValueYielded::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[6] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v37 = *(v7 + 32);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v37, 1u);
  if (v9)
  {
    v10 = v9;
    v11 = (ODSOperands + 24);
    v12 = v9;
    while (1)
    {
      v13 = *v11;
      if ((~*(*v11 + 8) & 7) != 0)
      {
        v14 = *v11;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v15 = *(v14 + 8) & 7;
        if (v15 == 6)
        {
          v16 = v14 + 24 * *(v14 + 16) + 120;
          if (v16)
          {
            v13 = v16;
          }
        }

        else
        {
          v13 = v14 + 16 * v15 + 16;
        }
      }

      if (*(v13 + 16) != v7)
      {
        break;
      }

      v11 += 4;
      if (!--v12)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v45[0] = v46;
    v45[1] = 0x600000000;
    v43[0] = &v44;
    v43[1] = 0x600000000;
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0;
    v41[0] = &v42;
    v41[1] = 0x600000000;
    for (i = (ODSOperands + 24); ; i += 4)
    {
      v23 = *i;
      v34 = v23;
      if ((~*(v23 + 8) & 7) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        goto LABEL_27;
      }

      v25 = *(v24 + 8) & 7;
      if (v25 != 6)
      {
        v26 = v24 + 16 * v25 + 16;
        goto LABEL_29;
      }

      v26 = v24 + 24 * *(v24 + 16) + 120;
      if (!v26)
      {
LABEL_27:
        v26 = v23;
      }

LABEL_29:
      if (*(v26 + 16) == v7)
      {
        llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v45, &v34);
        v40[0] = (*(v34 + 8) & 0xFFFFFFFFFFFFFFF8);
        llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(v43, v40);
        v40[0] = *(*(v21 + 8 * v18) + 32);
        llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v41, v40);
      }

      else
      {
        LODWORD(v38) = v18;
        v39[0] = v23;
        llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(v40, v35, &v38, v39);
      }

      if (v10 == ++v18)
      {
        v27 = (a3 + 24);
        v33 = *(a3 + 24);
        v28 = v37;
        *(a3 + 24) = *(v37 + 16);
        *(a3 + 32) = v28;
        v40[0] = *(mlir::scf::ConditionOp::getODSOperands(&v37, 0) + 24);
        v29 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>((a3 + 8), *(v28 + 24), v40, v45);
        (*(*a3 + 8))(a3, v28, v29);
        if (v33)
        {
          *v27 = v33;
        }

        else
        {
          *v27 = 0;
          *(a3 + 32) = 0;
        }

        v30 = *(a2 + 24);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v31 = *(a2 + 72);
          v32 = *(a2 + 68);
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        v40[0] = v31;
        v40[1] = v32;
        mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>((a3 + 8), v30, v43, v40);
      }
    }
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13[8] = *MEMORY[0x277D85DE8];
  v7 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a1, *(**a2 + 32));
  v8[0] = a2;
  v8[1] = v7;
  v8[2] = v9;
  v8[3] = 0x400000000;
  v9[4] = v10;
  v9[5] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[8] = 4;
  v11[9] = v12;
  v11[10] = 0x100000000;
  v12[1] = v13;
  v12[2] = 0x100000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v13[4] = 0;
  v13[6] = 0;
  mlir::scf::WhileOp::build(v7, v8, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, *(a3 + 8), *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], 0, 0);
}

mlir::Operation *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v10 = *a4;
  v11 = *(a4 + 2);
  v15 = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v12 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v13;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "scf.condition";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::RemoveLoopInvariantValueYielded>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::RemoveLoopInvariantValueYielded]";
  v6 = 116;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::WhileConditionTruth::~WhileConditionTruth(_anonymous_namespace_::WhileConditionTruth *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileConditionTruth::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v35 = *(v7 + 32);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v35, 1u);
  v10 = 0;
  v11 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
  v12 = v11 - 8;
  if (!v11)
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = *(v12 + 48);
    v14 = *(v12 + 56);
    if (v13 != v14)
    {
      v10 = 0;
      v15 = 0;
      v16 = v13 + 8;
      v17 = v9 - 1;
      v18 = (ODSOperands + 24);
      do
      {
        v19 = *v18;
        if (v19 == *(mlir::scf::ConditionOp::getODSOperands(&v35, 0) + 24))
        {
          v20 = *(v16 - 8);
          if (*v20)
          {
            if (!v15)
            {
              v21 = *(a2 + 24);
              v22 = *(*(mlir::scf::ConditionOp::getODSOperands(&v35, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
              v34 = *(**(a3 + 8) + 600);
              v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a3 + 8, *(**v21 + 32));
              v37[0] = v21;
              v37[1] = v23;
              v37[2] = &v38;
              v37[3] = 0x400000000;
              v39[0] = v40;
              v39[1] = 0x400000000;
              v40[4] = v41;
              v40[5] = 0x400000000;
              v41[8] = 4;
              v41[9] = v42;
              v41[10] = 0x100000000;
              v42[1] = v43;
              v42[2] = 0x100000000;
              v43[1] = 0;
              v43[2] = 0;
              v43[3] = &mlir::detail::TypeIDResolver<void,void>::id;
              v43[4] = 0;
              v43[6] = 0;
              v24 = mlir::BoolAttr::operator mlir::TypedAttr(&v34);
              v26 = v25;
              __src = v22;
              v27 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v37);
              *v27 = v24;
              v27[1] = v26;
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v39, &__src, v37);
              v28 = mlir::Operation::create(v37);
              mlir::OpBuilder::insert((a3 + 8), v28);
              v29 = *(*(v28 + 6) + 16);
              mlir::OperationState::~OperationState(v37);
              if (v29 == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
              {
                v30 = v28;
              }

              else
              {
                v30 = 0;
              }

              v15 = (v30 - 16);
              v20 = *(v16 - 8);
            }

            mlir::RewriterBase::replaceAllUsesWith(a3, v20, v15);
            v10 = 1;
          }
        }

        if (v17-- == 0)
        {
          break;
        }

        v18 += 4;
        v32 = v16 == v14;
        v16 += 8;
      }

      while (!v32);
    }
  }

  return v10 & 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileConditionTruth>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileConditionTruth]";
  v6 = 104;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::WhileCmpCond::~WhileCmpCond(_anonymous_namespace_::WhileCmpCond *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileCmpCond::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v41 = *(v7 + 32);
  v8 = *(mlir::scf::ConditionOp::getODSOperands(&v41, 0) + 24);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      return 0;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    return 0;
  }

  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v41, 1u);
  v35 = v14;
  v36 = ODSOperands;
  v40 = 0;
  v15 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
  if (v15)
  {
    v16 = v15 - 8;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v38 = *(v16 + 48);
    v34 = *(v16 + 56);
    if (v38 != v34)
    {
      v40 = 0;
      v17 = 0;
      v18 = v11 + 64;
      while (1)
      {
        v19 = 0;
        v37 = v17;
        v39 = *(v36 + 32 * v17 + 24);
        v20 = 1;
        do
        {
          v21 = v20;
          if (v39 == *(*(v11 + 72) + 32 * v19 + 24))
          {
            v22 = **v38;
            if (v22)
            {
              v23 = v19 ^ 1;
              do
              {
                v24 = v22[2];
                v22 = *v22;
                if (v24)
                {
                  v25 = *(*(v24 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id;
                }

                else
                {
                  v25 = 0;
                }

                if (v25 && *(*(v24 + 72) + 32 * v23 + 24) == *(*(v11 + 72) + 32 * v23 + 24))
                {
                  v42[0] = *(v24 + 64 + 16 * ((*(v24 + 44) >> 23) & 1));
                  Int = mlir::IntegerAttr::getInt(v42);
                  v42[0] = *(v18 + 16 * ((*(v11 + 44) >> 23) & 1));
                  if (Int == mlir::IntegerAttr::getInt(v42))
                  {
                    v27 = 1;
LABEL_35:
                    v30 = *(v24 + 24);
                    v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIntOp>(a3 + 8, *(**v30 + 32));
                    v42[0] = v30;
                    v42[1] = v31;
                    v42[2] = v43;
                    v42[3] = 0x400000000;
                    v43[4] = v44;
                    v43[5] = 0x400000000;
                    v44[4] = v45;
                    v44[5] = 0x400000000;
                    v45[8] = 4;
                    v45[9] = v46;
                    v45[10] = 0x100000000;
                    v46[1] = v47;
                    v46[2] = 0x100000000;
                    v47[1] = 0;
                    v47[2] = 0;
                    v47[3] = &mlir::detail::TypeIDResolver<void,void>::id;
                    v47[4] = 0;
                    v47[6] = 0;
                    mlir::arith::ConstantIntOp::build((a3 + 8), v42, v27, 1);
                    v32 = mlir::Operation::create(v42);
                    mlir::OpBuilder::insert((a3 + 8), v32);
                    if (v32)
                    {
                      if (*(*(v32 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && (v33 = (*(v32 - 1) & 0xFFFFFFFFFFFFFFF8), *(*v33 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
                      {
                        if (v33[2] >> 30)
                        {
                          v32 = 0;
                        }
                      }

                      else
                      {
                        v32 = 0;
                      }
                    }

                    mlir::OperationState::~OperationState(v42);
                    (*(*a3 + 8))(a3, v24, v32);
                    v40 = 1;
                    continue;
                  }

                  v42[0] = *(v24 + 64 + 16 * ((*(v24 + 44) >> 23) & 1));
                  v28 = mlir::IntegerAttr::getInt(v42);
                  v42[0] = *(v18 + 16 * ((*(v11 + 44) >> 23) & 1));
                  v29 = mlir::IntegerAttr::getInt(v42);
                  if (v28 == mlir::arith::invertPredicate(v29))
                  {
                    v27 = 0;
                    goto LABEL_35;
                  }
                }
              }

              while (v22);
            }
          }

          v20 = 0;
          v19 = 1;
        }

        while ((v21 & 1) != 0);
        v17 = v37 + 1;
        if (v37 + 1 != v35 && ++v38 != v34)
        {
          continue;
        }

        return v40 & 1;
      }
    }
  }

  return v40 & 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileCmpCond>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileCmpCond]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::WhileUnusedResult::~WhileUnusedResult(_anonymous_namespace_::WhileUnusedResult *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileUnusedResult::matchAndRewrite(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v59[6] = *MEMORY[0x277D85DE8];
  v5 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v49 = *(v7 + 32);
  v8 = *(v5 + 32);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v49, 1u);
  v58[0] = v59;
  v58[1] = 0xC00000000;
  v56[0] = v57;
  v56[1] = 0x600000000;
  v54[0] = v55;
  v54[1] = 0x600000000;
  v52[0] = v53;
  v52[1] = 0x600000000;
  v14 = a2[9];
  v46 = a2 - 4;
  if (v14)
  {
    v15 = a2 - 4;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    goto LABEL_49;
  }

  v16 = v10 == v11 || v13 == 0;
  if (v16)
  {
    goto LABEL_49;
  }

  v43 = a3;
  v45 = a2;
  v44 = 0;
  v17 = 0;
  v18 = v13 - 1;
  v19 = v14 - 1;
  v20 = (ODSOperands + 24);
  v21 = v10 + 8;
  v22 = a2 - 4;
  do
  {
    v23 = v15;
    if (v17)
    {
      v24 = v46;
      v25 = *(v45 - 1) & 7;
      v26 = v17;
      if (v25 == 6)
      {
        goto LABEL_20;
      }

      v27 = (5 - v25);
      v23 = v22;
      v26 = v17 - v27;
      if (v17 > v27)
      {
        v24 = &v46[-4 * v27];
LABEL_20:
        v23 = &v24[-6 * v26];
      }
    }

    v28 = *v20;
    v48 = v17;
    v29 = *(v10 + 8 * v17);
    v51[0] = v28;
    if (!*v23 && !*v29)
    {
      v44 = 1;
      goto LABEL_35;
    }

    llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v58, &v48);
    llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v54, v51);
    v50 = (*(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
    llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(v56, &v50);
    v30 = *(v23 + 1) & 7;
    v31 = v30 == 7;
    if (v30 == 7)
    {
      v32 = 0;
    }

    else
    {
      v32 = v23;
    }

    if (!v31)
    {
      v34 = *(v32 + 1) & 7;
      if (v34 != 6)
      {
        v35 = &v32[4 * v34 + 4];
LABEL_33:
        v33 = (v35 + 24);
        goto LABEL_34;
      }

      v35 = &v32[6 * *(v32 + 2) + 30];
      if (v35)
      {
        goto LABEL_33;
      }
    }

    v33 = (v23 + 8);
LABEL_34:
    v50 = *v33;
    llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v52, &v50);
LABEL_35:
    if (v19 == v17)
    {
      break;
    }

    if (v21 == v11)
    {
      break;
    }

    v22 -= 4;
    v20 += 4;
    v21 += 8;
    v16 = v18 == v17++;
  }

  while (!v16);
  if (v44)
  {
    v36 = (v43 + 24);
    v47 = *(v43 + 24);
    v37 = v49;
    *(v43 + 24) = *(v49 + 16);
    *(v43 + 32) = v37;
    v51[0] = *(mlir::scf::ConditionOp::getODSOperands(&v49, 0) + 24);
    v38 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>((v43 + 8), *(v37 + 24), v51, v54);
    (*(*v43 + 8))(v43, v37, v38);
    if (v47)
    {
      *v36 = v47;
    }

    else
    {
      *v36 = 0;
      *(v43 + 32) = 0;
    }

    v39 = *(v45 + 3);
    if ((*(v45 + 46) & 0x80) != 0)
    {
      v40 = v45[17];
      v41 = *(v45 + 9);
    }

    else
    {
      v41 = 0;
      v40 = 0;
    }

    v51[0] = v41;
    v51[1] = v40;
    mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>((v43 + 8), v39, v56, v51);
  }

LABEL_49:
  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  if (v54[0] != v55)
  {
    free(v54[0]);
  }

  if (v56[0] != v57)
  {
    free(v56[0]);
  }

  if (v58[0] != v59)
  {
    free(v58[0]);
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileUnusedResult>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileUnusedResult]";
  v6 = 102;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::WhileRemoveDuplicatedResults::~WhileRemoveDuplicatedResults(_anonymous_namespace_::WhileRemoveDuplicatedResults *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileRemoveDuplicatedResults::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60[8] = *MEMORY[0x277D85DE8];
  v5 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v37 = *(v6 + 32);
  v32 = &v36;
  v33 = 8;
  v8 = (mlir::scf::ConditionOp::getODSOperands(&v37, 1u) & 0xFFFFFFFFFFFFFFF9 | 2);
  v34 = 0;
  v35 = 1;
  v44 = v8;
  v45 = 0;
  if (v7)
  {
    v9 = v7;
    for (i = 0; i != v9; v45 = i)
    {
      v11 = mlir::ValueRange::dereference_iterator(&v44, i);
      llvm::SmallPtrSetImpl<mlir::Value>::insert(&v32, v11, &v50);
      ++i;
    }

    if (v9 != HIDWORD(v33) - v34)
    {
      v44 = 1;
      v45 = -4096;
      v47 = -4096;
      v48 = -4096;
      v49 = -4096;
      v41 = v43;
      v42 = 0x600000000;
      if (v9 && (v13 = (4 * v9 / 3u + 1) | ((4 * v9 / 3u + 1) >> 1), v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4), v15 = v14 | (v14 >> 8) | ((v14 | (v14 >> 8)) >> 16), v15 >= 4))
      {
        llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v44, v15 + 1);
        v16 = HIDWORD(v42);
      }

      else
      {
        v16 = 6;
      }

      if (v9 > v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v9, 8);
      }

      v17 = 0;
      v50 = v8;
      v51 = 0;
      while (1)
      {
        v18 = mlir::ValueRange::dereference_iterator(&v50, v17);
        v40[0] = v18;
        if (!llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(&v44, v18))
        {
          break;
        }

LABEL_30:
        v51 = ++v17;
        if (v9 == v17)
        {
          v25 = v42;
          v26 = (v41 & 0xFFFFFFFFFFFFFFF9);
          v40[0] = v41 & 0xFFFFFFFFFFFFFFF9;
          v40[1] = v42;
          v27 = *(a2 + 24);
          if ((*(a2 + 46) & 0x80) != 0)
          {
            v28 = *(a2 + 68);
            v29 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
          }

          else
          {
            v28 = 0;
            v29 = 2;
          }

          v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a3 + 8, *(**v27 + 32));
          v50 = v27;
          v51 = v30;
          v52 = &v54;
          v53 = 0x400000000;
          v55 = v57;
          v56 = 0x400000000;
          v57[4] = v58;
          v57[5] = 0x400000000;
          v58[8] = 4;
          v58[9] = v59;
          v58[10] = 0x100000000;
          v59[1] = v60;
          v59[2] = 0x100000000;
          v60[2] = 0;
          v60[1] = 0;
          v60[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v60[4] = 0;
          v60[6] = 0;
          v39[0] = v26;
          v39[1] = 0;
          v39[2] = v26;
          v39[3] = v25;
          mlir::TypeRange::TypeRange<mlir::ValueRange>(v38, v39);
          mlir::scf::WhileOp::build(a3 + 8, &v50, v38[0], v38[1], v29, v28);
        }
      }

      v19 = v44;
      v38[0] = 0;
      if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(&v44, v18, v38))
      {
LABEL_29:
        llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(&v41, v40);
        goto LABEL_30;
      }

      v20 = v38[0];
      v39[0] = v38[0];
      v21 = v44;
      v22 = v44 >> 1;
      v23 = v44 & 1;
      if (v44)
      {
        v24 = 4;
      }

      else
      {
        v24 = v46;
      }

      if (4 * v22 + 4 >= 3 * v24)
      {
        v24 *= 2;
      }

      else if (v24 + ~v22 - HIDWORD(v44) > v24 >> 3)
      {
LABEL_26:
        LODWORD(v44) = (v21 & 0xFFFFFFFE) + v23 + 2;
        if (*v20 != -4096)
        {
          --HIDWORD(v44);
        }

        *v20 = v18;
        v20[2] = v19 >> 1;
        goto LABEL_29;
      }

      llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(&v44, v24);
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(&v44, v18, v39);
      v21 = v44;
      v20 = v39[0];
      v23 = v44 & 1;
      goto LABEL_26;
    }
  }

  v50 = "No results to remove";
  v54 = 259;
  v44 = &v50;
  v12 = *(a3 + 16);
  if (v12 && v12[2] == 1)
  {
    (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v44);
  }

  if ((v35 & 1) == 0)
  {
    free(v32);
  }

  return 0;
}

uint64_t llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::OpResult>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, *a2);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = v3 + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

int *llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v14[8] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v13 = a2;
      *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, v6, &v6[2 * v7]);

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v14;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      *(v9 + 2) = *(a1 + v8 + 16);
      v9 += 2;
    }

    v8 += 16;
  }

  while (v8 != 64);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((16 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 18;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 4;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      *(v16 + 2) = *(a2 + 2);
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 16 * v8);
  v10 = *v9;
  if (*v9 == a2)
  {
    result = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    result = 1;
    while (v10 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == -8192;
      }

      if (v14)
      {
        v12 = v9;
      }

      v15 = v8 + v13++;
      v8 = v15 & v7;
      v9 = (v3 + 16 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::doFind<mlir::Value>(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 0;
    }

    v2 = *(a1 + 8);
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
  v6 = v3 - 1;
  v7 = (v3 - 1) & v4;
  v8 = *(v2 + 16 * v7);
  if (v8 == a2)
  {
    return v2 + 16 * v7;
  }

  v10 = 1;
  while (v8 != -4096)
  {
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return v2 + 16 * v7;
    }
  }

  return 0;
}

mlir::Operation *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v11 = *a4;
  v10 = a4[1];
  v15 = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, v11, 0, v11, v10);
  v12 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileRemoveDuplicatedResults>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileRemoveDuplicatedResults]";
  v6 = 113;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::WhileRemoveUnusedArgs::~WhileRemoveUnusedArgs(_anonymous_namespace_::WhileRemoveUnusedArgs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileRemoveUnusedArgs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v70[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v7 = *(v6 + 8);
  v8 = v7 - 8;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(v8 + 48);
  v10 = *(v8 + 56);
  for (i = v10 - v9; v9 != v10; v9 += 8)
  {
    if (!**v9)
    {
      v14 = *(v6 + 32);
      if (v14)
      {
        v15 = v14 - 8;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v15 + 32);
      v58[0] = v59;
      v58[1] = 0x600000000;
      v55 = v57;
      v56 = 0x600000000;
      v51 = v53;
      v52 = 0x600000000;
      v54 = 0;
      if ((i >> 3) >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v58, v59, i >> 3, 8);
        if (i >> 3 > HIDWORD(v56))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, i >> 3, 8);
        }
      }

      v17 = (i >> 3) + 63;
      if (HIDWORD(v52) < v17 >> 6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v17 >> 6, 8);
      }

      v18 = *(v4 + 44);
      v19 = (v18 >> 23) & 1;
      v20 = (v18 >> 21) & 0x7F8;
      v21 = 32 * *(v4 + 40);
      v22 = *(((v5 + 16 * v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v21 + 8);
      if (v22)
      {
        v23 = v22 - 8;
      }

      else
      {
        v23 = 0;
      }

      if ((*(v16 + 46) & 0x80) != 0)
      {
        v24 = *(v16 + 72);
        v25 = *(v16 + 68);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      if ((v18 & 0x800000) != 0)
      {
        v26 = *(v23 + 48);
        v27 = *(v23 + 56);
        v28 = *(v4 + 68);
        v29 = v26 == v27 || v25 == 0;
        if (!v29 && v28 != 0)
        {
          v48 = v5;
          v49 = v4;
          v31 = 0;
          v32 = 8 * v28 - 8;
          v33 = 8 * v25 - 8;
          v34 = (*(v4 + 72) + 24);
          v35 = (v24 + 24);
          do
          {
            v36 = *v35;
            v37 = *v34;
            v61 = (v26 + v31);
            v62 = v36;
            v63[0] = v37;
            v38 = v54;
            v39 = v54 + 1;
            v40 = v52 << 6;
            if (**(v26 + v31))
            {
              if (v39 > v40)
              {
                llvm::BitVector::resize(&v51, v39, 0);
              }

              else
              {
                ++v54;
              }

              llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(v58, &v62);
              llvm::SmallVectorImpl<mlir::Value>::emplace_back<mlir::Value&>(&v55, v63);
            }

            else
            {
              if (v39 > v40)
              {
                llvm::BitVector::resize(&v51, v39, 0);
              }

              else
              {
                ++v54;
              }

              *(v51 + (v38 >> 6)) |= 1 << v38;
            }

            if (v31 + 8 + v26 == v27)
            {
              break;
            }

            if (v33 == v31)
            {
              break;
            }

            v34 += 4;
            v35 += 4;
            v29 = v32 == v31;
            v31 += 8;
          }

          while (!v29);
          v5 = v48;
          v4 = v49;
          v41 = *(v49 + 44);
          v19 = (v41 >> 23) & 1;
          v20 = (v41 >> 21) & 0x7F8;
          v21 = 32 * *(v49 + 40);
        }
      }

      v42 = *(((v5 + 16 * v19 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v21 + 8);
      if (v42)
      {
        v43 = (v42 - 8);
      }

      else
      {
        v43 = 0;
      }

      mlir::Block::eraseArguments(v43, &v51);
      v44 = *(v4 + 24);
      v45 = *(v4 + 36);
      if (v45)
      {
        v46 = v4 - 16;
      }

      else
      {
        v46 = 0;
      }

      v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a3 + 8, *(**v44 + 32));
      v61 = v44;
      v62 = v47;
      v63[0] = &v64;
      v63[1] = 0x400000000;
      v65 = v67;
      v66 = 0x400000000;
      v67[4] = v68;
      v67[5] = 0x400000000;
      v68[8] = 4;
      v68[9] = v69;
      v68[10] = 0x100000000;
      v69[1] = v70;
      v69[2] = 0x100000000;
      v70[2] = 0;
      v70[1] = 0;
      v70[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v70[4] = 0;
      v70[6] = 0;
      v50[0] = v46;
      v50[1] = 0;
      v50[2] = v46;
      v50[3] = v45;
      mlir::TypeRange::TypeRange<mlir::ResultRange>(v60, v50);
      mlir::scf::WhileOp::build(a3 + 8, &v61, v60[0], v60[1], (v55 & 0xFFFFFFFFFFFFFFF9), v56);
    }
  }

  v61 = "No args to remove";
  v64 = 259;
  v51 = &v61;
  v12 = *(a3 + 16);
  if (v12 && v12[2] == 1)
  {
    (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v51);
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileRemoveUnusedArgs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileRemoveUnusedArgs]";
  v6 = 106;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::WhileOpAlignBeforeArgs::~WhileOpAlignBeforeArgs(_anonymous_namespace_::WhileOpAlignBeforeArgs *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::WhileOpAlignBeforeArgs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[8] = *MEMORY[0x277D85DE8];
  v4 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v5 = (v4 - 8);
  if (!v4)
  {
    v5 = 0;
  }

  v45 = v5[4];
  v7 = v5[6];
  v6 = v5[7];
  v8 = (v6 - v7) >> 3;
  v55[0] = v7 & 0xFFFFFFFFFFFFFFF9;
  v55[1] = v8;
  ODSOperands = mlir::scf::ConditionOp::getODSOperands(&v45, 1u);
  v11 = v10;
  v12 = (ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2);
  if (v8 == v10)
  {
    v56 = (v7 & 0xFFFFFFFFFFFFFFF9);
    v57 = 0;
    v51 = (ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2);
    v52 = 0;
    if (v6 == v7)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      v14 = mlir::ValueRange::dereference_iterator(&v56, v13);
      if (v14 != mlir::ValueRange::dereference_iterator(&v51, v13))
      {
        break;
      }

      v15 = v13 + 1;
      v57 = v13 + 1;
      v52 = v13 + 1;
      if (v8 - 1 == v13++)
      {
        if (v8 == v15)
        {
          return 0;
        }

        break;
      }
    }
  }

  v56 = 1;
  v57 = -4096;
  v58 = -4096;
  v59 = -4096;
  v60[0] = -4096;
  v51 = v12;
  v52 = 0;
  if (!v11)
  {
LABEL_24:
    v24 = 0;
    goto LABEL_26;
  }

  v17 = 0;
  while (1)
  {
    v18 = mlir::ValueRange::dereference_iterator(&v51, v17);
    v46 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(&v56, v18, &v46))
    {
      break;
    }

    v19 = v46;
    v48 = v46;
    v20 = v56;
    v21 = v56 >> 1;
    v22 = v56 & 1;
    if (v56)
    {
      v23 = 4;
    }

    else
    {
      v23 = v58;
    }

    if (4 * v21 + 4 >= 3 * v23)
    {
      v23 *= 2;
LABEL_23:
      llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(&v56, v23);
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(&v56, v18, &v48);
      v20 = v56;
      v19 = v48;
      v22 = v56 & 1;
      goto LABEL_18;
    }

    if (v23 + ~v21 - HIDWORD(v56) <= v23 >> 3)
    {
      goto LABEL_23;
    }

LABEL_18:
    LODWORD(v56) = (v20 & 0xFFFFFFFE) + v22 + 2;
    if (*v19 != -4096)
    {
      --HIDWORD(v56);
    }

    *v19 = v18;
    v52 = ++v17;
    if (v11 == v17)
    {
      goto LABEL_24;
    }
  }

  v24 = 1;
LABEL_26:
  if ((v56 & 1) == 0)
  {
    MEMORY[0x25F891030](v57, 8);
  }

  if ((v24 & 1) == 0 && v8 == v11)
  {
    v56 = &v58;
    v57 = 0xC00000000;
    llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(&v56, (v6 - v7) >> 3);
    v48 = 0;
    v49 = v7 & 0xFFFFFFFFFFFFFFF9;
    v50 = 0;
    if (v6 == v7)
    {
LABEL_34:
      v51 = &v53;
      v52 = 0xC00000000;
      if (v57)
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&v51, &v56);
      }

      v54 = 1;
      v28 = v56;
      if (v56 != &v58)
      {
        goto LABEL_39;
      }

LABEL_40:
      v29 = (a3 + 24);
      v43 = *(a3 + 24);
      v30 = v45;
      *(a3 + 24) = *(v45 + 16);
      *(a3 + 32) = v30;
      v56 = *(mlir::scf::ConditionOp::getODSOperands(&v45, 0) + 24);
      v31 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::ValueRange &>((a3 + 8), *(v30 + 24), &v56, v55);
      (*(*a3 + 8))(a3, v30, v31);
      if (v43)
      {
        *v29 = v43;
      }

      else
      {
        *v29 = 0;
        *(a3 + 32) = 0;
      }

      v48 = &v50;
      v49 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v48, v8);
      if (v52)
      {
        v33 = 0;
        v34 = v51;
        v35 = 4 * v52;
        v36 = a2 - 16;
        do
        {
          v37 = v36;
          if (v33 >= 6)
          {
            v37 = a2 - 96 - 24 * (v33 - 5);
          }

          v38 = v34[v33++];
          *(v48 + v38) = *(v37 + 8) & 0xFFFFFFFFFFFFFFF8;
          v36 -= 16;
          v35 -= 4;
        }

        while (v35);
      }

      v39 = *(a2 + 24);
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v40 = *(a2 + 68);
        v41 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
      }

      else
      {
        v40 = 0;
        v41 = 2;
      }

      v42 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a3 + 8, *(**v39 + 32));
      v56 = v39;
      v57 = v42;
      v58 = v60;
      v59 = 0x400000000;
      v60[4] = v61;
      v60[5] = 0x400000000;
      v61[4] = v62;
      v61[5] = 0x400000000;
      v62[8] = 4;
      v62[9] = v63;
      v62[10] = 0x100000000;
      v63[1] = v64;
      v63[2] = 0x100000000;
      v64[2] = 0;
      v64[1] = 0;
      v64[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v64[4] = 0;
      v64[6] = 0;
      mlir::scf::WhileOp::build(a3 + 8, &v56, v48 & 0xFFFFFFFFFFFFFFF9 | 2, v49, v41, v40);
    }

    v25 = 0;
    while (1)
    {
      v26 = mlir::ValueRange::dereference_iterator(&v49, v25);
      v46 = v25;
      v47[0] = v26;
      std::__find[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::Value,std::__identity>(v12, 0, v12, v11, v47);
      if (v27 == v8)
      {
        break;
      }

      *(v56 + v27) = v25++;
      v48 = v25;
      v50 = v25;
      if (v8 == v25)
      {
        goto LABEL_34;
      }
    }

    LOBYTE(v51) = 0;
    v54 = 0;
    v28 = v56;
    if (v56 != &v58)
    {
LABEL_39:
      free(v28);
      if (v54)
      {
        goto LABEL_40;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v9 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
  LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
  v7 = v4 - 1;
  v8 = (v4 - 1) & v5;
  v9 = (v3 + 8 * v8);
  v10 = *v9;
  if (*v9 == a2)
  {
    result = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    result = 1;
    while (v10 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10 == -8192;
      }

      if (v14)
      {
        v12 = v9;
      }

      v15 = v8 + v13++;
      v8 = v15 & v7;
      v9 = (v3 + 8 * (v15 & v7));
      v10 = *v9;
      if (*v9 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v12)
    {
      v9 = v12;
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v13 = a2;
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v6, &v6[v7]);

    JUMPOUT(0x25F891030);
  }

  v8 = v14;
  for (i = 8; i != 40; i += 8)
  {
    v10 = *(a1 + i);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v14, v8);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 10;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[2 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 2;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 1) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v5, v15, &v16);
      *v16 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::WhileOpAlignBeforeArgs>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::WhileOpAlignBeforeArgs]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  v19[3] = *MEMORY[0x277D85DE8];
  v9 = a5 - a3;
  if (a5 != a3)
  {
    v10 = a2 & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 2;
    v12 = (a2 & 0xFFFFFFFFFFFFFFF8) == 0 || (a2 & 6) != 4;
    v13 = (v10 + 8 * a3);
    v14 = v10 + 24 * a3;
    do
    {
      if (!v11 || (v15 = v14, !v12))
      {
        v15 = *v13;
      }

      v19[0] = v15;
      v19[1] = 0;
      v19[2] = 0;
      result = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a6, v19, 1);
      v16 = *a6 + 24 * *(a6 + 8);
      v17 = *result;
      *(v16 + 16) = result[2];
      *v16 = v17;
      ++*(a6 + 8);
      ++v13;
      v14 += 24;
      --v9;
    }

    while (v9);
    a3 = a5;
  }

  *v8 = a2;
  v8[1] = a3;
  v8[2] = a6;
  return result;
}

void llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,BOOL>(uint64_t a1, int a2, unsigned __int8 a3)
{
  LODWORD(v3) = a2;
  HIDWORD(v3) = a3;
  llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::push_back(a1, v3, 1);
}

void FoldConstantCase::~FoldConstantCase(FoldConstantCase *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t FoldConstantCase::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 24) | 4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 44);
  v8 = a2 + 16 * ((v7 >> 23) & 1);
  v11 = *(v8 + 64);
  v9 = v8 + 64;
  v10 = v11;
  v12 = *(v11 + 32);
  v13 = (v12 >> 3);
  if ((v12 >> 3))
  {
    v14 = 0;
    v15 = *(v10 + 24);
    while (ConstantIntValue != *(v15 + 8 * v14))
    {
      if (v13 == ++v14)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14 >= v13)
  {
LABEL_12:
    v18 = ((v9 + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    if ((v7 & 0x7FFFFF) != 0)
    {
      v17 = ((v9 + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 + 24 * v14 + 24;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    v20 = v19 - 8;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v20 + 32);
  if ((*(v21 + 46) & 0x80) != 0)
  {
    v22 = *(v21 + 72);
    v23 = *(v21 + 68);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v26;
  v25 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v24, v22, 0, v22, v23);
  (*(*a3 + 32))(a3, v20, *(a2 + 16), a2, 0, 0);
  (*(*a3 + 16))(a3, v21);
  (**a3)(a3, a2, v24 & 0xFFFFFFFFFFFFFFF9, v25);
  if (v24 != v26)
  {
    free(v24);
  }

  return 1;
}

const char *llvm::detail::getTypeNameImpl<FoldConstantCase>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldConstantCase]";
  v6 = 78;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23400))
  {
    qword_27FC233F0 = llvm::detail::getTypeNameImpl<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>();
    *algn_27FC233F8 = v1;
    __cxa_guard_release(&qword_27FC23400);
  }

  return qword_27FC233F0;
}

const char *llvm::detail::getTypeNameImpl<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::scf::detail::ForallOpGenericAdaptorBase::Properties]";
  v6 = 119;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23428))
  {
    qword_27FC23418 = llvm::detail::getTypeNameImpl<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>();
    unk_27FC23420 = v1;
    __cxa_guard_release(&qword_27FC23428);
  }

  return qword_27FC23418;
}

const char *llvm::detail::getTypeNameImpl<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties]";
  v6 = 124;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::IndexSwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IndexSwitchOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v4[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "scf.yield", 9);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23450))
  {
    qword_27FC23440 = llvm::detail::getTypeNameImpl<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>();
    *algn_27FC23448 = v1;
    __cxa_guard_release(&qword_27FC23450);
  }

  return qword_27FC23440;
}

const char *llvm::detail::getTypeNameImpl<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties]";
  v6 = 121;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::invertPermutationVector(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = (a3 + 2);
  a3[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(a3, a2);
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = 8 * a2;
    do
    {
      *(v7 + 8 * *(a1 + 8 * v6)) = v6;
      ++v6;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::applyPermutationToVector<long long,6u>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[6] = *MEMORY[0x277D85DE8];
  mlir::applyPermutation<long long>(*a1, *(a1 + 8), a2, a3, v4);
  llvm::SmallVectorImpl<long long>::operator=(a1, v4);
  if (v4[0] != v5)
  {
    free(v4[0]);
  }
}

void llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

void mlir::applyPermutation<long long>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  v9[0] = 0;
  v9[1] = v6;
  v9[2] = v5;
  v10 = 1;
  v7[0] = a2;
  v7[1] = v6;
  v7[2] = v5;
  v8 = 1;
  *a5 = a5 + 2;
  a5[1] = 0x600000000;
  _ZN4llvm15SmallVectorImplIxE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN4mlir16applyPermutationIxEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEENS_8ArrayRefISA_EENSC_IxEEEUlxE_xEEvEEvSA_SA_(a5, v9, v7);
}

void _ZN4llvm15SmallVectorImplIxE6appendINS_15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZN4mlir16applyPermutationIxEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISA_EE5valueEEENS_8ArrayRefISA_EENSC_IxEEEUlxE_xEEvEEvSA_SA_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a3 - *a2;
  v9 = *(a1 + 8);
  if (v8 + v9 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + v9, 8);
    v6 = *a2;
    v7 = *a3;
    LODWORD(v9) = *(a1 + 8);
  }

  if (v6 != v7)
  {
    v10 = (*a1 + 8 * v9);
    v11 = *a2[2];
    v12 = *a2[1];
    do
    {
      *v10++ = *(v12 + 8 * *(v11 + 8 * v6++));
    }

    while (v7 != v6);
  }

  *(a1 + 8) = v9 + v8;
}

uint64_t mlir::getReassociationIndicesForCollapse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48[4] = *MEMORY[0x277D85DE8];
  if (a2 <= a4)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
  }

  else
  {
    v7 = result;
    v46 = v48;
    v47 = 0x100000000;
    if (a4 >= 2)
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(&v46, a4);
    }

    LODWORD(v8) = 0;
    v43 = v45;
    v44 = 0x200000000;
    v9 = a2 - 1;
    do
    {
      v10 = v47;
      if (a4 == v47)
      {
        goto LABEL_52;
      }

      v11 = *(a3 + 8 * v47);
      v12 = v8;
      if (v9 <= v8)
      {
        v15 = 1;
      }

      else
      {
        v13 = 1;
        while (1)
        {
          v14 = *(v7 + 8 * v12);
          v15 = v14 * v13;
          v16 = v14 != 0x8000000000000000 && v15 < v11;
          if (!v16)
          {
            break;
          }

          v8 = (v8 + 1);
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&v43, v12);
          v12 = v8;
          v13 = v15;
          if (v9 <= v8)
          {
            goto LABEL_16;
          }
        }

        v15 = v13;
      }

LABEL_16:
      v17 = *(v7 + 8 * v12);
      if (v17 == 0x8000000000000000)
      {
        if (v11 != 0x8000000000000000 || v15 != 1)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 0x8000000000000000)
      {
        goto LABEL_66;
      }

      if (v17 * v15 != v11)
      {
        goto LABEL_66;
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v43, v12);
      v40 = v42;
      v41 = 0x200000000;
      if (v47 >= HIDWORD(v47))
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(&v46, &v40);
      }

      else
      {
        v18 = &v46[4 * v47];
        *v18 = v18 + 2;
        v18[1] = 0x200000000;
        if (v41)
        {
          llvm::SmallVectorImpl<long long>::operator=(v18, &v40);
        }

        LODWORD(v47) = v47 + 1;
      }

      if (v40 != v42)
      {
        free(v40);
      }

      v19 = &v46[4 * v47];
      if (v19 - 4 != &v43)
      {
        v20 = *(v19 - 4);
        if (v20 == v19 - 2 || v43 == v45)
        {
          if (*(v19 - 5) < v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod((v19 - 4), v19 - 2, v44, 8);
          }

          v23 = *(v19 - 6);
          if (HIDWORD(v44) < v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v23, 8);
            LODWORD(v23) = *(v19 - 6);
          }

          v24 = v44;
          if (v23 >= v44)
          {
            v25 = v44;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            v26 = *(v19 - 4);
            v27 = v43;
            v28 = v25;
            do
            {
              v29 = *v26;
              *v26++ = *v27;
              *v27++ = v29;
              --v28;
            }

            while (v28);
          }

          if (v24 >= v23)
          {
            if (v24 > v23)
            {
              v31 = v24 - v23;
              memcpy((*(v19 - 4) + 8 * v23), v43 + 8 * v25, 8 * (v24 - v25));
              *(v19 - 6) += v31;
              LODWORD(v44) = v25;
            }
          }

          else
          {
            v30 = v23 - v24;
            memcpy(v43 + 8 * v24, (*(v19 - 4) + 8 * v25), 8 * (v23 - v25));
            LODWORD(v44) = v30 + v44;
            *(v19 - 6) = v25;
          }
        }

        else
        {
          *(v19 - 4) = v43;
          v43 = v20;
          v21 = *(v19 - 6);
          *(v19 - 6) = v44;
          LODWORD(v44) = v21;
          v22 = *(v19 - 5);
          *(v19 - 5) = HIDWORD(v44);
          HIDWORD(v44) = v22;
        }
      }

      LODWORD(v8) = v8 + 1;
    }

    while (a2 > v8);
    v10 = v47;
    if (a4 != v47)
    {
LABEL_66:
      v37 = 0;
      v36 = a5;
      *a5 = 0;
      goto LABEL_67;
    }

LABEL_52:
    if (a2 > v8)
    {
      v32 = v8;
      v33 = v8 + 1;
      while (1)
      {
        v34 = *(v7 + 8 * v32);
        if (v34 != 0x8000000000000000 && v34 != 1)
        {
          goto LABEL_66;
        }

        if (v47)
        {
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&v46[4 * v47 - 4], v32);
        }

        v32 = v33;
        v16 = a2 > v33++;
        if (!v16)
        {
          v10 = v47;
          break;
        }
      }
    }

    v36 = a5;
    *a5 = a5 + 16;
    *(a5 + 8) = 0x100000000;
    if (v10)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v46);
    }

    v37 = 1;
LABEL_67:
    *(v36 + 48) = v37;
    if (v43 != v45)
    {
      free(v43);
    }

    return llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(&v46);
  }

  return result;
}

uint64_t mlir::composeReassociationIndices@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x100000000;
  if (a2 != a4)
  {
    if (a2 < a4)
    {
      v6 = a2;
    }

    else
    {
      v6 = a4;
    }

    if (a2 < a4)
    {
      v7 = a1;
    }

    else
    {
      v7 = a3;
    }

    if (a2 < a4)
    {
      v8 = a3;
    }

    else
    {
      v8 = a1;
    }

    if (a2 < a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a2;
    }

    if (!v6)
    {
      *a5 = a5 + 16;
      *(a5 + 8) = 0x100000000;
LABEL_28:
      v20 = 1;
      goto LABEL_29;
    }

    v10 = 0;
    v11 = 32 * v6;
    v12 = (v7 + 8);
    v13 = v7 + 32 * v6;
    do
    {
      v14 = *v12;
      v12 += 8;
      v10 += v14;
      v11 -= 32;
    }

    while (v11);
    if (v9 == v10)
    {
      do
      {
        v15 = *v7;
        v16 = *(v7 + 8);
        v22 = v24;
        v23 = 0x200000000;
        if (v16)
        {
          v17 = 8 * v16;
          do
          {
            v18 = *v15++;
            llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v22, v22 + 8 * v23, *(v8 + 32 * v18), (*(v8 + 32 * v18) + 8 * *(v8 + 32 * v18 + 8)));
            v17 -= 8;
          }

          while (v17);
        }

        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v25, &v22);
        if (v22 != v24)
        {
          free(v22);
        }

        v7 += 32;
      }

      while (v7 != v13);
      v19 = v26;
      *a5 = a5 + 16;
      *(a5 + 8) = 0x100000000;
      if (v19)
      {
        llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a5, &v25);
      }

      goto LABEL_28;
    }
  }

  v20 = 0;
  *a5 = 0;
LABEL_29:
  *(a5 + 48) = v20;
  return llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(&v25);
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<long long,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>>(a1, a2, 1);
  result = (*a1 + 32 * *(a1 + 8));
  *result = result + 2;
  result[1] = 0x200000000;
  if (*(v3 + 8))
  {
    result = llvm::SmallVectorImpl<long long>::operator=(result, v3);
  }

  ++*(a1 + 8);
  return result;
}

{
  v3 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<long long,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>>(a1, a2, 1);
  result = (*a1 + 32 * *(a1 + 8));
  *result = result + 2;
  result[1] = 0x200000000;
  if (*(v3 + 8))
  {
    result = llvm::SmallVectorImpl<long long>::operator=(result, v3);
  }

  ++*(a1 + 8);
  return result;
}

void mlir::convertReassociationIndicesToExprs(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v14[2] = *MEMORY[0x277D85DE8];
  *a4 = a4 + 2;
  a4[1] = 0x200000000;
  if (a3)
  {
    v5 = a2;
    v7 = a2 + 32 * a3;
    do
    {
      v13[0] = v14;
      v13[1] = 0x200000000;
      v8 = *(v5 + 8);
      if (v8 >= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v14, v8, 8);
        v8 = *(v5 + 8);
      }

      if (v8)
      {
        v9 = *v5;
        v10 = 8 * v8;
        do
        {
          v11 = *v9;
          v9 += 2;
          AffineDimOrSymbol = getAffineDimOrSymbol(6u, v11, a1);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(v13, AffineDimOrSymbol);
          v10 -= 8;
        }

        while (v10);
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::push_back(a4, v13);
      if (v13[0] != v14)
      {
        free(v13[0]);
      }

      v5 += 32;
    }

    while (v5 != v7);
  }
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::AffineExpr,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>>(a1, a2, 1);
  result = (*a1 + 32 * *(a1 + 8));
  *result = result + 2;
  result[1] = 0x200000000;
  if (*(v3 + 8))
  {
    result = llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(result, v3);
  }

  ++*(a1 + 8);
  return result;
}

uint64_t mlir::getReassociationIndicesAttribute(mlir::Builder *a1, uint64_t a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x400000000;
  v6 = (32 * a3) >> 5;
  if (v6 < 5)
  {
    v7 = 0;
    v9 = 0;
    v8 = v17;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v7 = v16;
    v8 = v15;
    v9 = v16;
  }

  v10 = 32 * a3;
  if (a3)
  {
    v11 = a2 + 32 * a3;
    v12 = &v8[2 * v7];
    do
    {
      *v12++ = mlir::Builder::getI64ArrayAttr(a1, *a2, *(a2 + 8));
      a2 += 32;
    }

    while (a2 != v11);
    v9 = v16;
    v8 = v15;
  }

  LODWORD(v16) = v9 + (v10 >> 5);
  v13 = mlir::ArrayAttr::get(*a1, v8, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  return v13;
}

void mlir::getSymbolLessAffineMaps(void ****a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v6 = getMaxPosOfType<mlir::AffineDimExpr>(a1, a2);
  *a3 = a3 + 2;
  a3[1] = 0x400000000;
  if (a2 < 5)
  {
    if (!a2)
    {
      return;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, a2, 8);
  }

  v7 = &v4[4 * a2];
  do
  {
    Impl = mlir::AffineMap::getImpl((v6 + 1), 0, *v4, *(v4 + 2), ***v4);
    llvm::SmallVectorTemplateBase<mlir::AffineMap,true>::push_back(a3, Impl);
    v4 += 4;
  }

  while (v4 != v7);
}

uint64_t getMaxPosOfType<mlir::AffineDimExpr>(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = a1 + 32 * a2;
  do
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *v2;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        v9 = &v10;
        mlir::AffineExpr::walk<void>(v7, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>, &v9);
        v6 -= 8;
      }

      while (v6);
    }

    v2 += 32;
  }

  while (v2 != v3);
  return v10;
}

uint64_t mlir::isReassociationValid(int **a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = **a1;
  v6 = &a1[a2];
  do
  {
    v7 = *a1;
    if (**a1 != v5 || v7[1])
    {
      goto LABEL_17;
    }

    v8 = v7[2];
    if (v8)
    {
      v9 = v7 + 6;
      v10 = 8 * v8;
      while (1)
      {
        v11 = *v9 && *(*v9 + 8) == 6;
        if (!v11 || v3 != *(*v9 + 16))
        {
          break;
        }

        ++v3;
        v9 += 2;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_14;
        }
      }

LABEL_17:
      if (a3)
      {
LABEL_18:
        result = 0;
        *a3 = v4;
        return result;
      }

      return 0;
    }

LABEL_14:
    ++v4;
    ++a1;
  }

  while (a1 != v6);
  if (v3 == v5)
  {
    return 1;
  }

  if (a3)
  {
    v4 = a2 - 1;
    goto LABEL_18;
  }

  return 0;
}

uint64_t mlir::reshapeLikeShapesAreCompatible(uint64_t (*a1)(uint64_t, void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  v12 = a7 + 32 * a8;
  while (1)
  {
    v29 = 1;
    v13 = *(a7 + 8);
    v14 = 1;
    if (!v13)
    {
      break;
    }

    v15 = 0;
    v16 = (a5 + 8 * v10);
    v17 = &v16[v13];
    v14 = 1;
    do
    {
      while (*v16 == 0x8000000000000000)
      {
        ++v16;
        v15 = 1;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      v14 *= *v16;
      v29 = v14;
      ++v16;
    }

    while (v16 != v17);
    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_11:
    if (*(a3 + 8 * v11) != 0x8000000000000000)
    {
      v21[0] = v11;
      v23[0] = "expected dimension ";
      v24 = v21;
      v25 = 2819;
      v26 = v23;
      v27 = " of collapsed type to be dynamic since one or more of the corresponding dimensions in the expanded type is dynamic";
      v19 = 770;
      goto LABEL_18;
    }

LABEL_14:
    v10 += v13;
    ++v11;
    a7 += 32;
    if (a7 == v12)
    {
      return 1;
    }
  }

  if (*(a3 + 8 * v11) == v14)
  {
    goto LABEL_14;
  }

  v20 = v11;
  v21[0] = "expected dimension ";
  v21[2] = &v20;
  v22 = 2819;
  v23[0] = v21;
  v24 = " of collapsed type to be static value of ";
  v25 = 770;
  v26 = v23;
  v27 = &v29;
  v19 = 3586;
LABEL_18:
  v28 = v19;
  return a1(a2, &v26);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      v7 = *a1;
      if (v5)
      {
        v8 = 32 * v5;
        do
        {
          llvm::SmallVectorImpl<long long>::operator=(v7, v4);
          v4 += 32;
          v7 += 32;
          v8 -= 32;
        }

        while (v8);
        v9 = *a1;
        v6 = *(a1 + 8);
      }

      else
      {
        v9 = *a1;
      }

      v18 = v9 + 32 * v6;
      if (v18 != v7)
      {
        v19 = (v18 - 16);
        do
        {
          v20 = *(v19 - 2);
          if (v19 != v20)
          {
            free(v20);
          }

          v21 = v19 - 16;
          v19 -= 32;
        }

        while (v21 != v7);
      }

      goto LABEL_28;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v10 = *a1;
        v11 = 32 * v6;
        do
        {
          llvm::SmallVectorImpl<long long>::operator=(v10, v4);
          v4 += 32;
          v10 += 32;
          v11 -= 32;
        }

        while (v11);
LABEL_16:
        v12 = *(a2 + 8);
        if (v6 != v12)
        {
          v13 = *a2;
          v14 = *a1;
          v15 = 32 * v6;
          v16 = 32 * v12;
          do
          {
            v17 = (v14 + v15);
            *v17 = v14 + v15 + 16;
            v17[1] = 0x200000000;
            if (*(v13 + v15 + 8))
            {
              llvm::SmallVectorImpl<long long>::operator=(v17, v13 + v15);
            }

            v14 += 32;
            v16 -= 32;
            v13 += 32;
          }

          while (v15 != v16);
        }

LABEL_28:
        *(a1 + 8) = v5;
        llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::clear(a2);
        return a1;
      }
    }

    else
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::clear(a1);
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v5);
    }

    v6 = 0;
    goto LABEL_16;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4 + 32 * v5 - 16;
    v7 = -32 * v5;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 32 * v2 - 16;
    v4 = -32 * v2;
    do
    {
      v5 = *(v3 - 16);
      if (v3 != v5)
      {
        free(v5);
      }

      v3 -= 32;
      v4 += 32;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = 32 * v2;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x200000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<long long>::operator=(a2, v5);
      }

      a2 += 4;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = *a1 + 32 * v7 - 16;
      v9 = -32 * v7;
      do
      {
        v10 = *(v8 - 16);
        if (v8 != v10)
        {
          free(v10);
        }

        v8 -= 32;
        v9 += 32;
      }

      while (v9);
    }
  }
}

void llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v8);
  v6 = &v5[4 * *(a1 + 8)];
  *v6 = v6 + 2;
  v6[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(v6, a2);
  }

  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(a1, v5);
  v7 = v8;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v7;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<long long,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::AffineExpr,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::moveElementsForGrow(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = *a1;
    v6 = 32 * v2;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x200000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(a2, v5);
      }

      a2 += 4;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    v7 = *(a1 + 2);
    if (v7)
    {
      v8 = *a1 + 32 * v7 - 16;
      v9 = -32 * v7;
      do
      {
        v10 = *(v8 - 16);
        if (v8 != v10)
        {
          free(v10);
        }

        v8 -= 32;
        v9 += 32;
      }

      while (v9);
    }
  }
}

uint64_t llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::AffineExpr>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::AffineExpr>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

unsigned int **llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>(unsigned int **result, uint64_t a2)
{
  if (a2 && *(a2 + 8) == 6)
  {
    v2 = *(a2 + 16);
    if (**result > v2)
    {
      v2 = **result;
    }

    **result = v2;
  }

  return result;
}

mlir::Operation *mlir::clone(mlir::OpBuilder *a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v12 = *(this + 3);
  v13 = *(this + 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  mlir::OperationState::OperationState(v18, v12, v13, a5, a6, a3, a4, v15, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0, 0, 0);
  if ((*(this + 11) & 0x7FFFFF) != 0)
  {
    mlir::OperationState::addRegion(v18);
  }

  v16 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v16);
  mlir::OperationState::~OperationState(v18);
  MEMORY[0x25F891030](0, 8);
  MEMORY[0x25F891030](0, 8);
  MEMORY[0x25F891030](0, 8);
  return v16;
}

uint64_t *mlir::getPrunedAttributeList@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::Operation *this@<X0>, uint64_t a3@<X1>, const unsigned __int8 *a4@<X2>, unint64_t a5@<X3>)
{
  v21 = 0;
  v22 = 0;
  v23 = 0x800000000;
  if (a4)
  {
    v7 = a3;
    v8 = a3 + 16 * a4;
    do
    {
      v9 = *v7;
      v10 = *(v7 + 8);
      v7 += 16;
      v11 = llvm::xxh3_64bits(v9, v10, a4, a5);
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(&v21, v9, v10, v11);
    }

    while (v7 != v8);
  }

  *a1 = (a1 + 2);
  a1[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v14 = *(AttrDictionary + 16);
  if (v14)
  {
    v15 = *(AttrDictionary + 8);
    v16 = &v15[2 * v14];
    do
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::find(&v21, *(*v15 + 16), *(*v15 + 24), v13);
      if (v21 + 8 * v22 == v19)
      {
        llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(a1, v17, v18);
      }

      v15 += 2;
    }

    while (v15 != v16);
  }

  return llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(&v21);
}

uint64_t llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = llvm::xxh3_64bits(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = Key;
  }

  return *a1 + 8 * v9;
}

unint64_t mlir::getConstantIntValue(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v1)
  {
    v14 = 1;
    v15 = 0;
    v12 = &v13;
    v13 = 0;
    v2 = *(v1 + 8) & 7;
    v3 = v2 == 7;
    if (v2 == 7)
    {
      v4 = 0;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      goto LABEL_8;
    }

    v7 = *(v4 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v4 + 24 * *(v4 + 16);
      v9 = (v8 + 120);
      if (v8 == -120)
      {
LABEL_8:
        v5 = 0;
        LOBYTE(v6) = 0;
        return v5 | v6;
      }
    }

    else
    {
      v9 = (v4 + 16 * v7 + 16);
    }

    if (mlir::detail::constant_int_value_binder::match(&v12, v9))
    {
      if (v14 > 0x40)
      {
        v6 = *v13;
      }

      else if (v14)
      {
        v6 = (v13 << -v14) >> -v14;
      }

      else
      {
        v6 = 0;
      }

      v5 = v6 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      LOBYTE(v6) = 0;
      v5 = 0;
    }

    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    v5 = 0;
    if (v1 && (a1 & 4) == 0)
    {
      if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v10 = *(v1 + 24);
        if (v10 > 0x40)
        {
          operator new[]();
        }

        if (v10)
        {
          v6 = (*(v1 + 16) << -v10) >> -v10;
        }

        else
        {
          v6 = 0;
        }

        v5 = v6 & 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        LOBYTE(v6) = 0;
        v5 = 0;
      }
    }
  }

  return v5 | v6;
}

void mlir::dispatchIndexOpFoldResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v4)
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a2, v4);
    v5 = a3;
    v6 = 0x8000000000000000;
  }

  else
  {
    v7 = *(v4 + 24);
    if (v7 > 0x40)
    {
      operator new[]();
    }

    if (v7)
    {
      v6 = (*(v4 + 16) << -v7) >> -v7;
    }

    else
    {
      v6 = 0;
    }

    v5 = a3;
  }

  llvm::SmallVectorTemplateBase<long long,true>::push_back(v5, v6);
}

unint64_t mlir::getAsOpFoldResult(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v8 = &v9;
    v9 = 0;
    v2 = *(result + 8) & 7;
    v3 = v2 == 7;
    if (v2 == 7)
    {
      v4 = 0;
    }

    else
    {
      v4 = result;
    }

    if (v3)
    {
      return v1 | 4;
    }

    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16);
      v7 = v6 + 120;
      if (v6 == -120)
      {
        return v1 | 4;
      }
    }

    else
    {
      v7 = v4 + 16 * v5 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, v7))
    {
      return v9 & 0xFFFFFFFFFFFFFFFBLL;
    }

    return v1 | 4;
  }

  return result;
}

BOOL mlir::isEqualConstantIntOrValue(uint64_t a1, uint64_t a2)
{
  ConstantIntValue = mlir::getConstantIntValue(a1);
  v6 = v5;
  v7 = mlir::getConstantIntValue(a2);
  if ((v6 & 1) != 0 && (v8 & 1) != 0 && ConstantIntValue == v7)
  {
    return 1;
  }

  v10 = (a1 & 0xFFFFFFFFFFFFFFF8) != 0 && (a1 & 0xFFFFFFFFFFFFFFF8) == (a2 & (a2 << 61 >> 63) & 0xFFFFFFFFFFFFFFF8);
  return (a1 & 4) != 0 && v10;
}

void mlir::getMixedValues(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  LODWORD(v7) = a2;
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v13[1] = a4;
  *a6 = a6 + 2;
  a6[1] = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, a2, 8);
  }

  v7 = v7;
  if (v7)
  {
    v10 = 0;
    do
    {
      if (*a1 == 0x8000000000000000)
      {
        v11 = mlir::ValueRange::dereference_iterator(v13, v10++) | 4;
      }

      else
      {
        v12 = mlir::IntegerType::get(a5, 64, 0);
        v11 = mlir::IntegerAttr::get(v12, *a1) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a6, v11);
      ++a1;
      --v7;
    }

    while (v7);
  }
}

void mlir::decomposeMixedValues(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x600000000;
  v8[0] = v9;
  v8[1] = 0x600000000;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      if ((*v4 & 4) != 0 || (*v4 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v10, 0x8000000000000000);
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v8, *v4 & 0xFFFFFFFFFFFFFFF8);
      }

      else
      {
        v7 = *v4 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v7);
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v10, Int);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  std::pair<llvm::SmallVector<long long,6u>,llvm::SmallVector<mlir::Value,6u>>::pair[abi:nn200100]<llvm::SmallVector<long long,6u>&,llvm::SmallVector<mlir::Value,6u>&,0>(a2, v10, v8);
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }
}

unint64_t mlir::constantTripCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    ConstantIntValue = mlir::getConstantIntValue(a1);
    if (v8 & 1) != 0 && (v9 = ConstantIntValue, v10 = mlir::getConstantIntValue(a2), (v11) && (v12 = v10, v13 = mlir::getConstantIntValue(a3), (v14))
    {
      v3 = v12 - v9;
      if (v12 != v9)
      {
        if ((v13 ^ v3) < 0)
        {
          v3 /= v13;
        }

        else
        {
          if (v13 < 0)
          {
            v15 = v3 + 1;
          }

          else
          {
            v15 = v3 - 1;
          }

          v3 = v15 / v13 + 1;
        }
      }

      v4 = v3 & 0xFFFFFFFFFFFFFF00;
      v3 = v3;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }
  }

  return v4 | v3;
}

uint64_t mlir::foldDynamicIndexList(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 8 * v3;
    while (1)
    {
      v9 = *v7;
      if ((*v7 & 4) == 0)
      {
        goto LABEL_17;
      }

      v15 = &v16;
      v16 = 0;
      v10 = v9 & 0xFFFFFFFFFFFFFFF8;
      if ((~*(v10 + 8) & 7) == 0)
      {
        v10 = 0;
      }

      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = *(v10 + 8) & 7;
      if (v11 != 6)
      {
        break;
      }

      v12 = v10 + 24 * *(v10 + 16);
      v13 = v12 + 120;
      if (v12 != -120)
      {
        goto LABEL_11;
      }

LABEL_17:
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        return v6 & 1;
      }
    }

    v13 = v10 + 16 * v11 + 16;
LABEL_11:
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v15, v13) && (!a2 || (mlir::getConstantIntValue(v16 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0) && (!a3 || mlir::getConstantIntValue(v16 & 0xFFFFFFFFFFFFFFFBLL)))
    {
      *v7 = v16 & 0xFFFFFFFFFFFFFFFBLL;
      v6 = 1;
    }

    goto LABEL_17;
  }

  v6 = 0;
  return v6 & 1;
}

void *std::pair<llvm::SmallVector<long long,6u>,llvm::SmallVector<mlir::Value,6u>>::pair[abi:nn200100]<llvm::SmallVector<long long,6u>&,llvm::SmallVector<mlir::Value,6u>&,0>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(a1, a2);
  }

  a1[8] = a1 + 10;
  a1[9] = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=((a1 + 8), a3);
  }

  return a1;
}

void mlir::tensor::TensorDialect::TensorDialect(mlir::tensor::TensorDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "tensor";
  *(this + 2) = 6;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E9B088;
  mlir::MLIRContext::loadDialect<mlir::affine::AffineDialect>(a2, a2, a3, a4);
  mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(*(this + 4), v5, v6, v7);
  mlir::MLIRContext::loadDialect<mlir::complex::ComplexDialect>(*(this + 4), v8, v9, v10);
  mlir::tensor::TensorDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::affine::AffineDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "affine", 6, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "affine", 6uLL, &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::affine::AffineDialect * mlir::MLIRContext::getOrLoadDialect<mlir::affine::AffineDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::complex::ComplexDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "complex", 7, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "complex", 7uLL, &mlir::detail::TypeIDResolver<mlir::complex::ComplexDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::complex::ComplexDialect * mlir::MLIRContext::getOrLoadDialect<mlir::complex::ComplexDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::tensor::TensorDialect::~TensorDialect(mlir::tensor::TensorDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::BitcastOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v9 = a1, mlir::tensor::BitcastOp::verifyInvariantsImpl(&v9)))
  {
    v7 = mlir::impl::verifyCastInterfaceOp(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::CastOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v9 = a1, mlir::tensor::CastOp::verifyInvariantsImpl(&v9)))
  {
    v7 = mlir::impl::verifyCastInterfaceOp(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::CollapseShapeOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "collapsed", 9);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::CollapseShapeOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::CollapseShapeOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::CollapseShapeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::tensor::CollapseShapeOp::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    return mlir::tensor::CollapseShapeOp::verify(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ConcatOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "concat", 6);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::ConcatOp::fold(&v11);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23460))
  {
    v1 = llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>();
    _MergedGlobals_51 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23460);
  }

  return _MergedGlobals_51;
}

uint64_t llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23478))
  {
    qword_27FC23468 = llvm::detail::getTypeNameImpl<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>();
    unk_27FC23470 = v1;
    __cxa_guard_release(&qword_27FC23478);
  }

  return qword_27FC23468;
}

const char *llvm::detail::getTypeNameImpl<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ReifyRankedShapedTypeOpInterface::Trait<Empty>]";
  v6 = 114;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ConcatOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (v7 = a1, mlir::tensor::ConcatOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::ConcatOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "dim", 3);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ShapedDimOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[144];
}

uint64_t llvm::getTypeName<mlir::ShapedDimOpInterface>()
{
  {
    llvm::getTypeName<mlir::ShapedDimOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface>();
    *algn_27FC1B498 = v1;
  }

  return llvm::getTypeName<mlir::ShapedDimOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedDimOpInterface]";
  v6 = 88;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::inferResultRanges(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::intrange::detail::defaultInferResultRangesFromOptional(v6, InterfaceFor, a3, a4);
}