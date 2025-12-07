uint64_t mlir::ElementsAttr::getFlattenedIndex(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  {
    v21 = a1;
    mlir::TensorType::operator mlir::ShapedType();
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v22[0] = a1;
  v22[1] = v13;
  mlir::ShapedType::getShape(v22);
  v15 = v14;
  Shape = mlir::ShapedType::getShape(v22);
  v17 = 0;
  if (v15 - 1 >= 0)
  {
    v18 = 8 * (v15 - 1);
    v19 = 1;
    do
    {
      v17 += *(a2 + v18) * v19;
      v19 *= *(Shape + v18);
      v18 -= 8;
    }

    while (v18 != -8);
  }

  return v17;
}

BOOL mlir::detail::verifyAffineMapAsLayout(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v41 = a1;
  if (a3 == mlir::AffineMap::getNumDims(&v41))
  {
    return 1;
  }

  a4(v45, a5);
  if (v45[0])
  {
    v42 = 3;
    v43 = "memref layout mismatch between rank and affine map: ";
    v44 = 52;
    v9 = &v42;
    v10 = v46;
    if (v47 >= v48)
    {
      if (v46 <= &v42 && v46 + 24 * v47 > &v42)
      {
        v37 = &v42 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v10 = v46;
        v9 = (v46 + v37);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v9 = &v42;
        v10 = v46;
      }
    }

    v11 = &v10[24 * v47];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    v13 = ++v47;
    if (v45[0])
    {
      v42 = 5;
      v43 = a3;
      v14 = &v42;
      v15 = v46;
      if (v13 >= v48)
      {
        if (v46 <= &v42 && v46 + 24 * v13 > &v42)
        {
          v39 = &v42 - v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v13 + 1, 24);
          v15 = v46;
          v14 = (v46 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v13 + 1, 24);
          v14 = &v42;
          v15 = v46;
        }
      }

      v16 = &v15[24 * v47];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      v18 = ++v47;
      if (v45[0])
      {
        v42 = 3;
        v43 = " != ";
        v44 = 4;
        v19 = &v42;
        v20 = v46;
        if (v18 >= v48)
        {
          if (v46 <= &v42 && v46 + 24 * v18 > &v42)
          {
            v40 = &v42 - v46;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v18 + 1, 24);
            v20 = v46;
            v19 = (v46 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v18 + 1, 24);
            v19 = &v42;
            v20 = v46;
          }
        }

        v21 = &v20[24 * v47];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v47;
      }
    }
  }

  NumDims = mlir::AffineMap::getNumDims(&v41);
  if (v45[0])
  {
    v42 = 5;
    v43 = NumDims;
    v24 = &v42;
    v25 = v46;
    if (v47 >= v48)
    {
      if (v46 <= &v42 && v46 + 24 * v47 > &v42)
      {
        v38 = &v42 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v25 = v46;
        v24 = (v46 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v24 = &v42;
        v25 = v46;
      }
    }

    v26 = &v25[24 * v47];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    ++v47;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
  if (v45[0])
  {
    mlir::InFlightDiagnostic::report(v45);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v53;
      v30 = __p;
      if (v53 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v53 = v28;
      operator delete(v30);
    }

    v31 = v50;
    if (v50)
    {
      v32 = v51;
      v33 = v50;
      if (v51 != v50)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
          }
        }

        while (v32 != v31);
        v33 = v50;
      }

      v51 = v31;
      operator delete(v33);
    }

    if (v46 != v49)
    {
      free(v46);
    }
  }

  return v8;
}

uint64_t mlir::AffineMapAttr::get(unint64_t a1)
{
  v8 = a1;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(LHS);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v9[1] = LHS;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::ArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::DenseArrayAttr::get(uint64_t a1, unsigned int a2, llvm::hashing::detail *a3, uint64_t a4)
{
  v15 = a1;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v16[1] = Context;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v20[1] = v16;
  v19[0] = v15;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v9 = (v15 >> 4) ^ (v15 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<char const>(a3, a3 + a4);
  v11 = __ROR8__(a2 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v9 - 0x9AE16A3B2F90404FLL * v10 + 24;
  v12 = (__ROR8__(0xB492B66FBE98F273 * v9 - a2, 43) - 0x3C5A37A36834CED9 * a2 + __ROR8__((0x9AE16A3B2F90404FLL * v10) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v11;
  v13 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * v12) >> 47) ^ (0x9DDFEA08EB382D69 * v12));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::DenseStringElementsAttr::get(uint64_t a1, uint64_t a2, llvm::hashing::detail **a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  Context = mlir::Attribute::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v13[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v18[1] = v13;
  mlir::detail::DenseStringElementsAttrStorage::getKey(v11, v12, a3, a4, a4 == 1, v16);
  v8 = __ROR8__(v17 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (LODWORD(v16[0]) >> 4) ^ (LODWORD(v16[0]) >> 9));
  v14[0] = v16;
  v14[1] = v18;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

__n128 mlir::DenseResourceElementsAttr::getRawHandle@<Q0>(__n128 *__return_ptr a1@<X8>, mlir::DenseResourceElementsAttr *this@<X0>)
{
  v2 = *this;
  result = *(*this + 24);
  *a1 = result;
  a1[1].n128_u64[0] = *(v2 + 40);
  return result;
}

uint64_t mlir::FloatAttr::get(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  Context = mlir::Attribute::getContext(&v6);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v7[1] = Context;
  return mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v7, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v6, a2);
}

llvm::APFloatBase *mlir::FloatAttr::get(void *a1, double a2)
{
  v44[3] = *MEMORY[0x1E69E9840];
  v40 = a1;
  if (!mlir::Type::isF64(&v40))
  {
    v16 = *(*v40 + 136);
    v17 = v16 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v18 = v17 || v16 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v19 = v18 || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v20 = v19 || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v21 = v20 || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v22 = v21 || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v23 = v22 || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v24 = v23 || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v25 = v24 || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v26 = v25 || v16 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v27 = v26 || v16 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v28 = v27 || v16 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v29 = v28 || v16 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v30 = v29 || v16 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    v31 = v30 || v16 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
    if (v31 || v16 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v39 = 0;
      v33 = llvm::detail::IEEEFloat::IEEEFloat(&v41, a2, v3, v4, v5);
      v34 = llvm::APFloatBase::IEEEdouble(v33);
      llvm::APFloat::Storage::Storage(v44, &v41, v34);
      llvm::detail::IEEEFloat::~IEEEFloat(&v41);
      v41 = v40;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v41);
      llvm::APFloat::convert(v43, FloatSemantics, 1u, &v39);
      Context = mlir::Attribute::getContext(&v40);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v41 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
      v42 = Context;
      v13 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v41, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v40, v43);
      v38 = v44[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v13) != v38)
      {
        goto LABEL_3;
      }

LABEL_56:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v44);
      return v13;
    }
  }

  v6 = mlir::Attribute::getContext(&v40);
  v10 = llvm::detail::IEEEFloat::IEEEFloat(&v41, a2, v7, v8, v9);
  v11 = llvm::APFloatBase::IEEEdouble(v10);
  llvm::APFloat::Storage::Storage(v44, &v41, v11);
  llvm::detail::IEEEFloat::~IEEEFloat(&v41);
  v12 = mlir::MLIRContext::getAttributeUniquer(v6);
  v41 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v42 = v6;
  v13 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(v12, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeENS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_, &v41, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v40, v43);
  v14 = v44[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
  {
    goto LABEL_56;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v44);
  return v13;
}

uint64_t *mlir::FloatAttr::getValue@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::FloatAttr *this@<X0>)
{
  v3 = (*this + 24);
  v4 = *v3;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, v3);
  }

  else
  {

    return llvm::detail::IEEEFloat::IEEEFloat((a1 + 1), v3);
  }
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, llvm::APInt *a2)
{
  v13 = a1;
  isSignlessInteger = mlir::Type::isSignlessInteger(&v13, 1);
  Context = mlir::Attribute::getContext(&v13);
  if (isSignlessInteger)
  {
    v5 = *(a2 + 2);
    if (v5 > 0x40)
    {
      v10 = Context;
      v11 = llvm::APInt::countLeadingZerosSlowCase(a2);
      Context = v10;
      v6 = v11 == v5;
    }

    else
    {
      v6 = *a2 == 0;
    }

    v12 = v6;
    return mlir::BoolAttr::get(Context, (v12 ^ 1u));
  }

  else
  {
    v7 = Context;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v14[1] = v7;
    return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERKNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, a2);
  }
}

uint64_t mlir::IntegerAttr::get(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  if (mlir::Type::isIndex(&v13))
  {
    v12 = 64;
    v11 = a2;
  }

  else
  {
    v10 = v13;
    Width = mlir::IntegerType::getWidth(&v10);
    isSignedInteger = mlir::Type::isSignedInteger(&v10);
    v12 = Width;
    if (Width > 0x40)
    {
      llvm::APInt::initSlowCase(&v11, a2, isSignedInteger);
    }

    v5 = 0xFFFFFFFFFFFFFFFFLL >> -Width;
    if (!Width)
    {
      v5 = 0;
    }

    v11 = v5 & a2;
  }

  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v14[1] = Context;
  result = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v14, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v13, &v11);
  if (v12 >= 0x41)
  {
    if (v11)
    {
      v9 = result;
      MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
      return v9;
    }
  }

  return result;
}

uint64_t *mlir::IntegerAttr::getValue@<X0>(uint64_t *this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = *this;
  v3 = *(*this + 24);
  *(a2 + 2) = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, (v2 + 16));
  }

  *a2 = *(v2 + 16);
  return this;
}

uint64_t mlir::IntegerSetAttr::get(unint64_t a1)
{
  v8 = a1;
  Context = mlir::IntegerSet::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = v8;
  v3 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v4 = (0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::OpaqueAttr::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v12 = a3;
  Context = mlir::Attribute::getContext(&v12);
  mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::StringAttr,llvm::StringRef,mlir::Type>(a1, a2, Context, v12, a4, a5, a6);
}

void mlir::OpaqueAttr::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a3;
  mlir::Dialect::isValidNamespace(*(a3 + 16), *(a3 + 24));
}

uint64_t mlir::SparseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v16[1] = Context;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v22[1] = v16;
  v19 = v15;
  v20 = a3;
  v21 = a4;
  v8 = (a3 >> 4) ^ (a3 >> 9);
  v9 = 0x9AE16A3B2F90404FLL * ((a4 >> 4) ^ (a4 >> 9));
  v10 = __ROR8__(0xB492B66FBE98F273 * ((v15 >> 4) ^ (v15 >> 9)) - v8, 43);
  v11 = __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v8;
  v12 = __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v9 - 0x4B6D499041670D8DLL * ((v15 >> 4) ^ (v15 >> 9)) + 24;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)));
  v17[0] = &v19;
  v17[1] = v22;
  v18 = &v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::SparseElementsAttr::getChecked(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  Context = mlir::Attribute::getContext(&v12);
  return mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(a1, a2, Context, v12, v13, a5, a6);
}

uint64_t mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!mlir::SparseElementsAttr::verify(a1, a2, a4, a5, a6, a7))
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v20[1] = a3;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeERNS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v24[1] = v20;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v13 = (a6 >> 4) ^ (a6 >> 9);
  v14 = 0x9AE16A3B2F90404FLL * ((a7 >> 4) ^ (a7 >> 9));
  v15 = __ROR8__(0xB492B66FBE98F273 * ((a4 >> 4) ^ (a4 >> 9)) - v13, 43);
  v16 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v13;
  v17 = __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v14 - 0x4B6D499041670D8DLL * ((a4 >> 4) ^ (a4 >> 9)) + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v16 + v15) ^ v17)));
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

BOOL mlir::SparseElementsAttr::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = *MEMORY[0x1E69E9840];
  v83[0] = a1;
  v83[1] = a2;
  v81 = a3;
  v82 = a4;
  v80 = a5;
  v79 = *(a6 + 8);
  mlir::ShapedType::getShape(&v79);
  if (v9 != 1)
  {
    a1(&v87, a2);
    if (v87)
    {
      LODWORD(v84) = 3;
      v85 = "expected 1-d tensor for sparse element values";
      v86[0] = 45;
      v22 = &v84;
      v23 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v84 && v90 + 24 * v91 > &v84)
        {
          v75 = &v84 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v23 = v90;
          v22 = (v90 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v22 = &v84;
          v23 = v90;
        }
      }

      v24 = &v23[24 * v91];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v91;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v99 != 1)
    {
      return v13;
    }

    if (v98 != &v99)
    {
      free(v98);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v97;
      v28 = __p;
      if (v97 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v97 = v26;
      operator delete(v28);
    }

    v17 = v94;
    if (!v94)
    {
      goto LABEL_86;
    }

    v29 = v95;
    v19 = v94;
    if (v95 == v94)
    {
      goto LABEL_85;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v17);
    goto LABEL_84;
  }

  v78 = *(a5 + 8);
  v77[0] = v83;
  v77[1] = &v81;
  v77[2] = &v78;
  v77[3] = &v79;
  mlir::ShapedType::getShape(&v81);
  v11 = v10;
  mlir::ShapedType::getShape(&v78);
  if (v12 != 2)
  {
    if (v12 != 1 || v11 != 1)
    {
      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v87, v77);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v99 != 1)
      {
        return v13;
      }

      if (v98 != &v99)
      {
        free(v98);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v97;
        v46 = __p;
        if (v97 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v97 = v44;
        operator delete(v46);
      }

      v17 = v94;
      if (!v94)
      {
        goto LABEL_86;
      }

      v47 = v95;
      v19 = v94;
      if (v95 == v94)
      {
        goto LABEL_85;
      }

      do
      {
        v49 = *--v47;
        v48 = v49;
        *v47 = 0;
        if (v49)
        {
          MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
        }
      }

      while (v47 != v17);
      goto LABEL_84;
    }

LABEL_41:
    v32 = *mlir::ShapedType::getShape(&v78);
    if (v32 != *mlir::ShapedType::getShape(&v79))
    {
      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v87, v77);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v99 != 1)
      {
        return v13;
      }

      if (v98 != &v99)
      {
        free(v98);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v97;
        v52 = __p;
        if (v97 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v97 = v50;
        operator delete(v52);
      }

      v17 = v94;
      if (!v94)
      {
        goto LABEL_86;
      }

      v53 = v95;
      v19 = v94;
      if (v95 == v94)
      {
        goto LABEL_85;
      }

      do
      {
        v55 = *--v53;
        v54 = v55;
        *v53 = 0;
        if (v55)
        {
          MEMORY[0x1AC55A040](v54, 0x1000C8077774924);
        }
      }

      while (v53 != v17);
      goto LABEL_84;
    }

    v76[0] = v83;
    v76[1] = &v81;
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v80, &v87);
    v33 = v87;
    v34 = v88[0];
    v35 = v89;
    if ((*(v80 + 24) & 1) == 0)
    {
      if (!v32)
      {
        return 1;
      }

      v58 = 0;
      while (1)
      {
        v59 = (v34 & 1) != 0 ? 0 : v35;
        v60 = (v33 + 8 * v59);
        if ((mlir::ElementsAttr::isValidIndex(v81, v82, v60, v11) & 1) == 0)
        {
          break;
        }

        ++v58;
        v35 += v11;
        if (v32 == v58)
        {
          return 1;
        }
      }

      mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&v87, v76, v58, v60, v11);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (v99)
      {
        if (v98 != &v99)
        {
          free(v98);
        }

        v65 = __p;
        if (__p)
        {
          v66 = v97;
          v67 = __p;
          if (v97 != __p)
          {
            do
            {
              v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
            }

            while (v66 != v65);
            v67 = __p;
          }

          v97 = v65;
          operator delete(v67);
        }

        v68 = v94;
        if (v94)
        {
          v69 = v95;
          v70 = v94;
          if (v95 != v94)
          {
            do
            {
              v72 = *--v69;
              v71 = v72;
              *v69 = 0;
              if (v72)
              {
                MEMORY[0x1AC55A040](v71, 0x1000C8077774924);
              }
            }

            while (v69 != v68);
            v70 = v94;
          }

          v95 = v68;
          operator delete(v70);
        }

        v56 = v90;
        if (v90 != v93)
        {
          goto LABEL_87;
        }
      }

      return v13;
    }

    if (v88[0])
    {
      v36 = 0;
    }

    else
    {
      v36 = v89;
    }

    v84 = v86;
    HIDWORD(v85) = 6;
    v37 = *(v87 + 8 * v36);
    if (v11 >= 7)
    {
      LODWORD(v85) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v11, 8);
      v38 = v84;
      v39 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v40 = v11 & 3;
      v41 = vdupq_n_s64(v37);
      v42 = v84 + 2;
      v43 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v42 - 1) = v41;
        *v42 = v41;
        v42 += 4;
        v43 -= 4;
      }

      while (v43);
      if (v11 != (v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
          v38[v39++] = v37;
          --v40;
        }

        while (v40);
      }

LABEL_131:
      LODWORD(v85) = v11;
      if (mlir::ElementsAttr::isValidIndex(v81, v82, v38, v11))
      {
        v13 = 1;
      }

      else
      {
        mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&v87, v76, 0, v84, v85);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
        if (v87)
        {
          mlir::InFlightDiagnostic::report(&v87);
        }

        if (v99 == 1)
        {
          mlir::Diagnostic::~Diagnostic(v88);
        }
      }

      v56 = v84;
      if (v84 != v86)
      {
        goto LABEL_87;
      }

      return v13;
    }

    if (!v11)
    {
      goto LABEL_130;
    }

    v61 = vdupq_n_s64(v11 - 1);
    v62 = v11 + 1;
    v63 = vmovn_s64(vcgeq_u64(v61, xmmword_1A7598670));
    if (v63.i8[0])
    {
      v86[0] = v37;
      v64 = v62 & 0xE;
      if ((v63.i8[4] & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v64 = v62 & 0xE;
      if ((v63.i8[4] & 1) == 0)
      {
LABEL_100:
        if (v64 == 2)
        {
          goto LABEL_130;
        }

LABEL_120:
        v73 = vmovn_s64(vcgtq_u64(v61, xmmword_1A75989F0));
        if (v73.i8[0])
        {
          v86[2] = v37;
          if ((v73.i8[4] & 1) == 0)
          {
            goto LABEL_122;
          }
        }

        else if ((v73.i8[4] & 1) == 0)
        {
LABEL_122:
          if (v64 == 4)
          {
            goto LABEL_130;
          }

LABEL_126:
          v74 = vmovn_s64(vcgtq_u64(v61, xmmword_1A75DA400));
          if (v74.i8[0])
          {
            v86[4] = v37;
          }

          if (v74.i8[4])
          {
            v86[5] = v37;
          }

          goto LABEL_130;
        }

        v86[3] = v37;
        if (v64 != 4)
        {
          goto LABEL_126;
        }

LABEL_130:
        v38 = v86;
        goto LABEL_131;
      }
    }

    v86[1] = v37;
    if (v64 == 2)
    {
      goto LABEL_130;
    }

    goto LABEL_120;
  }

  if (*(mlir::ShapedType::getShape(&v78) + 8) == v11)
  {
    goto LABEL_41;
  }

  mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&v87, v77);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
  if (v87)
  {
    mlir::InFlightDiagnostic::report(&v87);
  }

  if (v99 != 1)
  {
    return v13;
  }

  if (v98 != &v99)
  {
    free(v98);
  }

  v14 = __p;
  if (__p)
  {
    v15 = v97;
    v16 = __p;
    if (v97 != __p)
    {
      do
      {
        v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v97 = v14;
    operator delete(v16);
  }

  v17 = v94;
  if (!v94)
  {
    goto LABEL_86;
  }

  v18 = v95;
  v19 = v94;
  if (v95 != v94)
  {
    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_84:
    v19 = v94;
  }

LABEL_85:
  v95 = v17;
  operator delete(v19);
LABEL_86:
  v56 = v90;
  if (v90 != v93)
  {
LABEL_87:
    free(v56);
  }

  return v13;
}

uint64_t mlir::StridedLayoutAttr::get(mlir::MLIRContext *a1, uint64_t a2, llvm::hashing::detail *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v13[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a3, a3 + 8 * a4);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ a2 ^ 0xFF51AFD7ED558CCDLL)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

BOOL mlir::StridedLayoutAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v5 = 8 * a5;
    for (i = a4; *i; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 1;
      }
    }
  }

  else
  {
    i = a4;
  }

  if (i == &a4[a5])
  {
    return 1;
  }

  a1(v25, a2);
  if (v25[0])
  {
    v22 = 3;
    v23 = "strides must not be zero";
    v24 = 24;
    v7 = &v22;
    v8 = v26;
    if (v27 >= v28)
    {
      if (v26 <= &v22 && v26 + 24 * v27 > &v22)
      {
        v21 = &v22 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v8 = v26;
        v7 = (v26 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v7 = &v22;
        v8 = v26;
      }
    }

    v9 = &v8[24 * v27];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v27;
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v12 = a1;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = a2;
  v16[2] = a3;
  v7 = (v12 >> 4) ^ (v12 >> 9);
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::TypeAttr::get(uint64_t a1)
{
  v5 = a1;
  Context = mlir::Attribute::getContext(&v5);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v6[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v6[1] = Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v10[1] = v6;
  v9 = v5;
  v3 = 0x9DDFEA08EB382D69 * ((8 * ((v5 >> 4) ^ (v5 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v7[0] = &v9;
  v7[1] = v10;
  v8 = &v9;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v3 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t dictionaryAttrSort<false>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v7 = mlir::NamedAttribute::operator<(a1, a1 + 2);
    if (v7)
    {
      v20 = *a1;
      v21 = *(a1 + 1);
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
LABEL_9:
        v8 = 0;
LABEL_14:
        v13 = (*a3 + 16 * v8);
        *v13 = v20;
        v13[1] = v21;
        *(a3 + 8) += 2;
        return v7 ^ 1u;
      }
    }

    else
    {
      v20 = *(a1 + 1);
      v21 = *a1;
      *(a3 + 8) = 0;
      if (*(a3 + 12) > 1u)
      {
        goto LABEL_9;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 2uLL, 16);
    v8 = *(a3 + 8);
    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v19 = *a1;
    *(a3 + 8) = 0;
    if (*(a3 + 12))
    {
      v5 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 1uLL, 16);
      v5 = *(a3 + 8);
    }

    result = 0;
    *(*a3 + 16 * v5) = v19;
    ++*(a3 + 8);
  }

  else if (a2)
  {
    v9 = 16 * a2;
    *(a3 + 8) = 0;
    v10 = (16 * a2) >> 4;
    if (v10 <= *(a3 + 12))
    {
      v12 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10, 16);
      v12 = *(a3 + 8);
    }

    memcpy((*a3 + 16 * v12), a1, v9);
    v14 = a1;
    *(a3 + 8) += v9 >> 4;
    v15 = v9 - 16;
    do
    {
      if (!v15)
      {
        return 0;
      }

      v16 = v14 + 2;
      v17 = mlir::NamedAttribute::operator<(v14 + 2, v14);
      v15 -= 16;
      v14 = v16;
    }

    while (!v17);
    v18 = *(a3 + 8);
    if (v18 >= 2)
    {
      qsort(*a3, v18, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
    }

    return 1;
  }

  else
  {
    result = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t mlir::DictionaryAttr::sortInPlace(void **a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    return 0;
  }

  v4 = *a1;
  if (v1 != 2)
  {
    for (i = 16 * v1 - 16; i; i -= 16)
    {
      v9 = v4 + 2;
      v10 = mlir::NamedAttribute::operator<(v4 + 2, v4);
      v4 = v9;
      if (v10)
      {
        v11 = *(a1 + 2);
        if (v11 >= 2)
        {
          qsort(*a1, v11, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
        }

        return 1;
      }
    }

    return 0;
  }

  v5 = mlir::NamedAttribute::operator<(*a1, v4 + 2);
  if ((v5 & 1) == 0)
  {
    v6 = *a1;
    v7 = **a1;
    *v6 = *(*a1 + 1);
    v6[1] = v7;
  }

  return v5 ^ 1u;
}

void mlir::DictionaryAttr::findDuplicate(uint64_t **a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 2);
    if (v5 >= 2)
    {
      v10 = *a1;
      if (v5 == 2)
      {
        if ((mlir::NamedAttribute::operator<(*a1, v10 + 2) & 1) == 0)
        {
          v11 = *a1;
          v12 = **a1;
          *v11 = *(*a1 + 1);
          *(v11 + 1) = v12;
        }
      }

      else
      {
        v17 = 16 * v5 - 16;
        while (v17)
        {
          v18 = v10 + 2;
          v19 = mlir::NamedAttribute::operator<(v10 + 2, v10);
          v17 -= 16;
          v10 = v18;
          if (v19)
          {
            v20 = *(a1 + 2);
            if (v20 >= 2)
            {
              qsort(*a1, v20, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
            }

            break;
          }
        }
      }
    }
  }

  v6 = *(a1 + 2);
  if (v6 <= 1)
  {
    goto LABEL_4;
  }

  v7 = *a1;
  if (v6 != 2)
  {
    v13 = 16 * v6 + 16;
    while (v13 != 32)
    {
      v14 = v7 + 2;
      v15 = *v7;
      v21 = *(v7 + 1);
      v22 = v15;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v22);
      v13 -= 16;
      v7 += 2;
      if (CompressedBytes == ZinCompressedFootprintInfo::GetCompressedBytes(&v21))
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        v9 = *(v14 - 1);
        goto LABEL_17;
      }
    }

    goto LABEL_4;
  }

  v8 = ZinCompressedFootprintInfo::GetCompressedBytes(v7);
  if (v8 != ZinCompressedFootprintInfo::GetCompressedBytes((v7 + 2)))
  {
LABEL_4:
    *a3 = 0;
    a3[16] = 0;
    return;
  }

  v9 = *v7;
LABEL_17:
  *a3 = v9;
  a3[16] = 1;
}

uint64_t mlir::DictionaryAttr::get(mlir::DictionaryAttr *this, uint64_t *a2, uint64_t a3)
{
  v22[16] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v20 = v22;
    v21 = 0x800000000;
    v6 = dictionaryAttrSort<false>(a2, a3, &v20);
    if (v6)
    {
      v7 = v20;
    }

    else
    {
      v7 = a2;
    }

    if (v6)
    {
      v8 = v21;
    }

    else
    {
      v8 = a3;
    }

    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
    v15[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v15[1] = this;
    v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
    v19[1] = v15;
    v18[0] = v7;
    v18[1] = v8;
    v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(v7, &v7[2 * v8]);
    v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
    v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
    v16[0] = v18;
    v16[1] = v19;
    v17 = v18;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
    if (v20 != v22)
    {
      v14 = result;
      free(v20);
      return v14;
    }
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(this, a2);
  }

  return result;
}

uint64_t mlir::DictionaryAttr::getWithSorted(mlir::MLIRContext *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  if (a3)
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
    v12[1] = a1;
    v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
    v16[1] = v12;
    v15[0] = a2;
    v15[1] = a3;
    v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(a2, a2 + 4 * a3);
    v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
    v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
    v13[0] = v15;
    v13[1] = v16;
    v14 = v15;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  }

  else
  {

    return mlir::DictionaryAttr::getEmpty(a1, a2);
  }
}

uint64_t mlir::DictionaryAttr::get(uint64_t a1, const void *a2, size_t a3)
{
  v3 = (16 * *(*a1 + 16)) >> 4;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(*a1 + 8);
  while (1)
  {
    v7 = v3 >> 1;
    v8 = &v6[2 * (v3 >> 1)];
    CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v8);
    v10 = *(CompressedBytes + 24);
    if (a3 >= v10)
    {
      v11 = *(CompressedBytes + 24);
    }

    else
    {
      v11 = a3;
    }

    if (v11)
    {
      v12 = memcmp(*(CompressedBytes + 16), a2, v11);
      if (v12)
      {
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v10 == a3)
    {
      return *(v8 + 1);
    }

    if (v10 >= a3)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 = (v8 + 16);
    v7 = v3 + ~v7;
LABEL_4:
    v3 = v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }
}

uint64_t mlir::DictionaryAttr::get(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = (16 * v3) >> 4;
  if (v5 >= 17)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v5 >> 1;
      i = &v4[2 * (v5 >> 1)];
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(i);
      v11 = *(CompressedBytes + 24);
      v12 = v7 >= v11 ? *(CompressedBytes + 24) : v7;
      if (v12)
      {
        v13 = memcmp(*(CompressedBytes + 16), v6, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return *(i + 1);
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v8;
      if (v8 <= 0)
      {
        return 0;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v4 = (i + 16);
    v8 = v5 + ~v8;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v14 = 16 * v3;
  for (i = *(*a1 + 8); ZinCompressedFootprintInfo::GetCompressedBytes(i) != a2; i = (i + 16))
  {
    v14 -= 16;
    if (!v14)
    {
      return 0;
    }
  }

  return *(i + 1);
}

uint64_t mlir::DictionaryAttr::contains(uint64_t a1, const void *a2, size_t a3)
{
  v3 = (16 * *(*a1 + 16)) >> 4;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(*a1 + 8);
  while (1)
  {
    v7 = v3 >> 1;
    CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes((v6 + 16 * (v3 >> 1)));
    v9 = *(CompressedBytes + 24);
    if (a3 >= v9)
    {
      v10 = *(CompressedBytes + 24);
    }

    else
    {
      v10 = a3;
    }

    if (v10)
    {
      v11 = memcmp(*(CompressedBytes + 16), a2, v10);
      if (v11)
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    if (v9 == a3)
    {
      return 1;
    }

    if (v9 >= a3)
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 += 16 * (v3 >> 1) + 16;
    v7 = v3 + ~v7;
LABEL_4:
    v3 = v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }
}

BOOL mlir::DictionaryAttr::contains(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v5 = (16 * v3) >> 4;
  if (v5 >= 17)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    while (1)
    {
      v8 = v5 >> 1;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes((v4 + 16 * (v5 >> 1)));
      v10 = *(CompressedBytes + 24);
      v11 = v7 >= v10 ? *(CompressedBytes + 24) : v7;
      if (v11)
      {
        v12 = memcmp(*(CompressedBytes + 16), v6, v11);
        if (v12)
        {
          break;
        }
      }

      if (v10 == v7)
      {
        return 1;
      }

      if (v10 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v5 = v8;
      if (v8 <= 0)
      {
        return 0;
      }
    }

    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v4 = (v4 + 16 * (v5 >> 1) + 16);
    v8 = v5 + ~v8;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v13 = 16 * v3 - 16;
  do
  {
    v14 = ZinCompressedFootprintInfo::GetCompressedBytes(v4) == a2;
    result = v14;
    if (v14)
    {
      break;
    }

    v16 = v13;
    v13 -= 16;
    v4 = (v4 + 16);
  }

  while (v16);
  return result;
}

uint64_t mlir::DictionaryAttr::getEmptyUnchecked(mlir::DictionaryAttr *this, mlir::MLIRContext *a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v8[1] = this;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v12[1] = v8;
  v11[0] = 0;
  v11[1] = 0;
  v4 = llvm::hashing::detail::hash_combine_range_impl<mlir::NamedAttribute const*>(0, 0);
  v5 = HIDWORD(v4) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v4 + 8) ^ v5);
  v9[0] = v11;
  v9[1] = v12;
  v10 = v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t *mlir::StridedLayoutAttr::print(uint64_t *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 8)
  {
    *(v4 + 8) = 91;
    *v4 = *"strided<[";
    *(a2 + 4) += 9;
    v5 = *this;
    v6 = *(*this + 24);
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  this = llvm::raw_ostream::write(a2, "strided<[", 9uLL);
  v5 = *v3;
  v6 = *(*v3 + 24);
  if (v6)
  {
LABEL_5:
    v7 = *(v5 + 16);
    if (*v7 == 0x8000000000000000)
    {
      v8 = *(a2 + 4);
      if (*(a2 + 3) == v8)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *v8 = 63;
        ++*(a2 + 4);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      this = llvm::raw_ostream::operator<<(a2, *v7);
      if (v6 == 1)
      {
        goto LABEL_12;
      }
    }

    v13 = v7 + 1;
    for (i = 8 * v6 - 8; i; i -= 8)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) - v15 > 1uLL)
      {
        *v15 = 8236;
        *(a2 + 4) += 2;
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
LABEL_27:
          v17 = *(a2 + 4);
          if (*(a2 + 3) == v17)
          {
            this = llvm::raw_ostream::write(a2, "?", 1uLL);
          }

          else
          {
            *v17 = 63;
            ++*(a2 + 4);
          }

          goto LABEL_22;
        }
      }

      else
      {
        this = llvm::raw_ostream::write(a2, ", ", 2uLL);
        v16 = *v13;
        if (*v13 == 0x8000000000000000)
        {
          goto LABEL_27;
        }
      }

      this = llvm::raw_ostream::operator<<(a2, v16);
LABEL_22:
      ++v13;
    }
  }

LABEL_12:
  v9 = *(a2 + 4);
  if (*(a2 + 3) == v9)
  {
    this = llvm::raw_ostream::write(a2, "]", 1uLL);
    if (!*(*v3 + 8))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v9 = 93;
    ++*(a2 + 4);
    if (!*(*v3 + 8))
    {
LABEL_33:
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }

  v10 = *(a2 + 4);
  if ((*(a2 + 3) - v10) <= 9)
  {
    this = llvm::raw_ostream::write(a2, ", offset: ", 0xAuLL);
    v11 = *(*v3 + 8);
    if (v11 != 0x8000000000000000)
    {
      goto LABEL_18;
    }

LABEL_31:
    v18 = *(a2 + 4);
    if (*(a2 + 3) == v18)
    {
      this = llvm::raw_ostream::write(a2, "?", 1uLL);
      v12 = *(a2 + 4);
      if (*(a2 + 3) != v12)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    *v18 = 63;
    ++*(a2 + 4);
    goto LABEL_33;
  }

  *(v10 + 8) = 8250;
  *v10 = *", offset: ";
  *(a2 + 4) += 10;
  v11 = *(*v3 + 8);
  if (v11 == 0x8000000000000000)
  {
    goto LABEL_31;
  }

LABEL_18:
  this = llvm::raw_ostream::operator<<(a2, v11);
  v12 = *(a2 + 4);
  if (*(a2 + 3) != v12)
  {
LABEL_34:
    *v12 = 62;
    ++*(a2 + 4);
    return this;
  }

LABEL_36:

  return llvm::raw_ostream::write(a2, ">", 1uLL);
}

BOOL mlir::StridedLayoutAttr::hasStaticLayout(mlir::StridedLayoutAttr *this)
{
  v1 = *this;
  if (*(*this + 8) == 0x8000000000000000)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v1 + 16);
  v5 = 8 * v3 - 8;
  do
  {
    v6 = *v4++;
    result = v6 != 0x8000000000000000;
    v7 = v6 == 0x8000000000000000 || v5 == 0;
    v5 -= 8;
  }

  while (!v7);
  return result;
}

uint64_t mlir::makeStridedLinearLayoutMap(uint64_t a1, uint64_t a2, mlir *this, mlir::MLIRContext *a4)
{
  if (this == 0x8000000000000000)
  {
    AffineSymbolExpr = mlir::getAffineSymbolExpr(0, a4, 0x8000000000000000);
    v8 = 1;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  else
  {
    AffineSymbolExpr = mlir::getAffineConstantExpr(this, a4, this);
    v8 = 0;
    v18 = AffineSymbolExpr;
    if (!a2)
    {
      return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
    }
  }

  v9 = 0;
  v10 = 8 * a2;
  do
  {
    v14 = *(a1 + 8 * v9);
    AffineDimExpr = mlir::getAffineDimExpr(v9, a4, AffineSymbolExpr);
    if (v14 == 0x8000000000000000)
    {
      AffineConstantExpr = mlir::getAffineSymbolExpr(v8, a4, v15);
      v8 = (v8 + 1);
    }

    else
    {
      AffineConstantExpr = mlir::getAffineConstantExpr(v14, a4, v15);
    }

    v12 = mlir::AffineExpr::operator*(&AffineDimExpr, AffineConstantExpr);
    v13 = mlir::AffineExpr::operator+(&v18, v12);
    v18 = v13;
    v9 = (v9 + 1);
    v10 -= 8;
  }

  while (v10);
  AffineSymbolExpr = v13;
  return mlir::AffineMap::get(a2, v8, AffineSymbolExpr);
}

BOOL mlir::StridedLayoutAttr::verifyLayout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3 == *(*a1 + 24))
  {
    return 1;
  }

  (a4)(v23, a5, a2);
  if (v23[0])
  {
    v20 = 3;
    v21 = "expected the number of strides to match the rank";
    v22 = 48;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return v5;
}

uint64_t mlir::StringAttr::getEmptyStringAttrUnchecked(mlir::StringAttr *this, mlir::MLIRContext *a2)
{
  v3 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v7[1] = this;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v11[1] = v7;
  v10[0] = "";
  v10[1] = 0;
  v10[2] = v3;
  v5 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue("", 0) << 32));
  v8[0] = v10;
  v8[1] = v11;
  v9 = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v5 >> 31) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::StringAttr::get(mlir::StringAttr *this, size_t *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3 <= 1)
  {

    return mlir::StringAttr::get(this, a2);
  }

  v17 = v19;
  v18 = xmmword_1A75A2980;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_11;
  }

  if (v3 - 5 < 2)
  {
    v5 = *a2;
    v6 = a2[1];
    goto LABEL_20;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = strlen(*a2);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_20;
    }

LABEL_11:
    llvm::Twine::toVector(a2, &v17);
    v5 = v17;
    v6 = v18;
    goto LABEL_20;
  }

  v7 = *(*a2 + 23);
  if (v7 >= 0)
  {
    v5 = *a2;
  }

  else
  {
    v5 = **a2;
  }

  if (v7 >= 0)
  {
    v6 = *(*a2 + 23);
  }

  else
  {
    v6 = *(*a2 + 8);
  }

LABEL_20:
  v8 = mlir::NoneType::get(this, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v12[1] = this;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v12;
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v8;
  v10 = 0xBF58476D1CE4E5B9 * ((v8 >> 4) ^ (v8 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v5, v6) << 32));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v10 >> 31) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  if (v17 != v19)
  {
    v11 = result;
    free(v17);
    return v11;
  }

  return result;
}

uint64_t mlir::StringAttr::get(unsigned __int8 *a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v14 = a2;
  v20 = v22;
  v21 = xmmword_1A75A2980;
  Context = mlir::Attribute::getContext(&v14);
  v4 = a1;
  if (a1[33] != 1)
  {
    goto LABEL_14;
  }

  v5 = a1[32];
  if (v5 > 4)
  {
    if (v5 - 5 < 2)
    {
      v7 = *a1;
      v8 = *(v4 + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v7 = *a1;
    if (*v4)
    {
      v8 = strlen(*v4);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  if (v5 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a1, &v20);
    v7 = v20;
    v8 = v21;
    goto LABEL_15;
  }

  v6 = *(*a1 + 23);
  if (v6 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v6 >= 0)
  {
    v8 = *(*v4 + 23);
  }

  else
  {
    v8 = *(*v4 + 8);
  }

LABEL_15:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = v7;
  v18[1] = v8;
  v10 = v14;
  v18[2] = v14;
  v11 = 0xBF58476D1CE4E5B9 * ((v10 >> 4) ^ (v10 >> 9) | (llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v7, v8) << 32));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v11 >> 31) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  if (v20 != v22)
  {
    v13 = result;
    free(v20);
    return v13;
  }

  return result;
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, size_t a2, size_t a3, _DWORD *a4, uint64_t a5)
{
  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  v16 = mlir::StringAttr::get(a1, v14);
  Context = mlir::Attribute::getContext(&v16);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v17[1] = Context;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v21[1] = v17;
  v20[0] = v16;
  v20[1] = a4;
  v20[2] = a5;
  v9 = (v16 >> 4) ^ (v16 >> 9);
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a4, &a4[2 * a5]);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::SymbolRefAttr::get(mlir::StringAttr *a1, size_t a2, size_t a3)
{
  v11 = 261;
  v10[0] = a2;
  v10[1] = a3;
  v12 = mlir::StringAttr::get(a1, v10);
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v17[1] = v13;
  v5 = (v12 >> 4) ^ (v12 >> 9);
  v16[1] = 0;
  v16[2] = 0;
  v16[0] = v12;
  v6 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(0, 0);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v8 >> 47) ^ v8)) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v13[1] = v9;
  v3 = (v8 >> 4) ^ (v8 >> 9);
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = v8;
  v4 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(0, 0);
  v5 = __ROR8__(v4 + 16, 16);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((v6 >> 47) ^ v6)) ^ v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::SymbolRefAttr::get(mlir::SymbolRefAttr *this, mlir::Operation *a2)
{
  v6 = mlir::Operation::getAttrOfType<mlir::StringAttr>(this, "sym_name", 8uLL);
  Context = mlir::Attribute::getContext(&v6);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v7[1] = Context;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v11[1] = v7;
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = v6;
  v4 = 0x9DDFEA08EB382D69 * ((v6 >> 4) ^ (v6 >> 9) ^ 0x33C3CA6728B94E08);
  v8[0] = v10;
  v8[1] = v11;
  v9 = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47) ^ 0xCC9265B0C5ECC2C5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v4 >> 47) ^ 0xC5ECC2C5)))) ^ 0xC2C5CC82, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::Operation::getAttrOfType<mlir::StringAttr>(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 47))
  {
    result = mlir::Operation::getInherentAttr(a1, a2, a3);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v8 = *(a1 + 56);
  v9 = (16 * *(v8 + 16)) >> 4;
  if (v9 < 1)
  {
    return 0;
  }

  v10 = *(v8 + 8);
  while (1)
  {
    v11 = v9 >> 1;
    v12 = &v10[2 * (v9 >> 1)];
    CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v12);
    v14 = *(CompressedBytes + 24);
    if (a3 >= v14)
    {
      v15 = *(CompressedBytes + 24);
    }

    else
    {
      v15 = a3;
    }

    if (v15)
    {
      v16 = memcmp(*(CompressedBytes + 16), a2, v15);
      if (v16)
      {
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v14 == a3)
    {
      break;
    }

    if (v14 >= a3)
    {
      goto LABEL_6;
    }

LABEL_5:
    v10 = (v12 + 16);
    v11 = v9 + ~v11;
LABEL_6:
    v9 = v11;
    if (v11 <= 0)
    {
      return 0;
    }
  }

  result = *(v12 + 1);
LABEL_21:
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::SymbolRefAttr::getLeafReference(mlir::SymbolRefAttr *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2)
  {
    v1 = *(*(v1 + 16) + 8 * v2 - 8);
  }

  return *(v1 + 8);
}

uint64_t mlir::IntegerAttr::getInt(mlir::IntegerAttr *this)
{
  v1 = (*this + 16);
  v2 = *(*this + 24);
  v5 = v2;
  if (v2 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v4, v1);
  }

  if (v2)
  {
    return (*v1 << -v2) >> -v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::IntegerAttr::getUInt(mlir::IntegerAttr *this)
{
  v1 = *this;
  v4 = *(*this + 24);
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v3, (v1 + 16));
  }

  return *(v1 + 16);
}

uint64_t mlir::IntegerAttr::getBoolAttrUnchecked(uint64_t a1, unsigned int a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  v8 = 1;
  v7 = a2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v10[1] = Context;
  result = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeENS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_, v10, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v9, &v7);
  if (v8 >= 0x41)
  {
    if (v7)
    {
      v6 = result;
      MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::BoolAttr::getValue(mlir::BoolAttr *this)
{
  v1 = *this;
  v2 = *(*this + 24);
  if (v2 > 0x40)
  {
    return llvm::APInt::countLeadingZerosSlowCase((v1 + 16)) != v2;
  }

  else
  {
    return *(v1 + 16) != 0;
  }
}

BOOL mlir::BoolAttr::classof(void *a1)
{
  result = 0;
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v5[1] = v1;
      v5[2] = v2;
      v5[0] = a1[1];
      return mlir::Type::isSignlessInteger(v5, 1);
    }
  }

  return result;
}

llvm::APFloatBase *mlir::DenseElementsAttr::AttributeElementIterator::operator*(void *a1)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  __dst = *(*a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&__dst);
  v4 = isSplat;
  v5 = *(*isSplat + 136);
  if (isSplat && v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v34 = a1[1];
    v35 = *(v2 + 32);
    v36 = *(v2 + 24);
    __dst = *(v2 + 8);
    v37 = mlir::ElementsAttr::isSplat(&__dst);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v37);
    if (v36)
    {
      v39 = 0;
    }

    else
    {
      v39 = v34;
    }

    if (DenseElementBitWidth == 1)
    {
      v40 = (*(v35 + (v39 >> 3)) >> (v39 & 7)) & 1;
      DWORD2(__dst) = 1;
      *&__dst = v40;
    }

    else
    {
      DWORD2(__dst) = DenseElementBitWidth;
      if (DenseElementBitWidth >= 0x41)
      {
        llvm::APInt::initSlowCase(&__dst, 0, 0);
      }

      *&__dst = 0;
      if (DenseElementBitWidth)
      {
        v41 = ((DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3) + 1;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        memmove(&__dst, (v35 + ((((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8) * v39) >> 3)), v41);
      }
    }

    result = mlir::IntegerAttr::get(v4, &__dst);
    if (DWORD2(__dst) >= 0x41 && __dst)
    {
      v42 = result;
      v43 = __dst;
LABEL_73:
      MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
      return v42;
    }
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v81 = isSplat;
      if (isSplat)
      {
        v22 = a1[1];
        v23 = *(v2 + 32);
        v24 = *(v2 + 24);
        __dst = *(v2 + 8);
        v25 = mlir::ElementsAttr::isSplat(&__dst);
        v26 = mlir::detail::getDenseElementBitWidth(v25);
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v81);
        *&__dst = v23;
        *(&__dst + 1) = v24;
        v85 = v22;
        v86 = v26;
        v87 = FloatSemantics;
        llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&__dst, v89);
        *&v75 = v4;
        Context = mlir::Attribute::getContext(&v75);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v91 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        v92 = Context;
        ParametricStorageTypeImpl = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v91, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v75, v89);
        v31 = *(&v89[0] + 1);
        if (llvm::APFloatBase::PPCDoubleDouble(ParametricStorageTypeImpl) != v31)
        {
          v32 = (v89 + 8);
LABEL_57:
          llvm::detail::IEEEFloat::~IEEEFloat(v32);
          return ParametricStorageTypeImpl;
        }

        v32 = (v89 + 8);
        goto LABEL_88;
      }
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v44 = isSplat;
    }

    else
    {
      v44 = 0;
    }

    v77 = v44;
    if (v44)
    {
      Value = mlir::AffineMapAttr::getValue(&v77);
      v46 = a1[1];
      v47 = *(v2 + 24);
      *&v75 = *(v2 + 32);
      *(&v75 + 1) = v47;
      *&v76 = v46;
      __dst = *(v2 + 8);
      *&__dst = mlir::ElementsAttr::isSplat(&__dst);
      v48 = mlir::AffineMapAttr::getValue(&__dst);
      *(&v76 + 1) = mlir::detail::getDenseElementBitWidth(v48);
      if (*(*Value + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        *&__dst = Value;
        v49 = mlir::FloatType::getFloatSemantics(&__dst);
        v89[0] = v75;
        v89[1] = v76;
        v90 = v49;
        mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(v89, &v91);
        mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&__dst, &v91, v89);
        if (v94 >= 0x41)
        {
          v50 = v93;
          if (v93)
          {
            v50 = MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
          }
        }

        if (v92 >= 0x41)
        {
          v50 = v91;
          if (v91)
          {
            v50 = MEMORY[0x1AC55A040](v91, 0x1000C8000313F17);
          }
        }

        v51 = *(&__dst + 1);
        v52 = llvm::APFloatBase::PPCDoubleDouble(v50);
        if (v52 == v51)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92, (&__dst + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v92, (&__dst + 8));
        }

        v78 = Value;
        v56 = mlir::Attribute::getContext(&v78);
        v57 = mlir::MLIRContext::getAttributeUniquer(v56);
        v81 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        v82 = v56;
        v58 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(v57, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v81, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v78, &v91);
        if (v52 == v92)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v92);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v92);
        }

        if (v52 == v88[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92, v88);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v92, v88);
        }

        v78 = Value;
        v59 = mlir::Attribute::getContext(&v78);
        v60 = mlir::MLIRContext::getAttributeUniquer(v59);
        v81 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        v82 = v59;
        v61 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(v60, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, &v81, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v78, &v91);
        if (v52 == v92)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v92);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v92);
        }

        v62 = mlir::Attribute::getContext(&v77);
        v83[0] = v58;
        v83[1] = v61;
        v63 = mlir::MLIRContext::getAttributeUniquer(v62);
        v95 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
        v96 = v62;
        v91 = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
        v92 = &v95;
        v81 = v83;
        v82 = 2;
        v64 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v83, &__dst);
        v65 = HIDWORD(v64) ^ 0xFF51AFD7ED558CCDLL;
        v66 = 0x9DDFEA08EB382D69 * ((8 * v64 + 8) ^ v65);
        v78 = &v81;
        v79 = &v91;
        v80 = &v81;
        ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v63, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v65 ^ (v66 >> 47) ^ v66)) >> 32) >> 15) ^ (-348639895 * (v65 ^ (v66 >> 47) ^ v66))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
        if (v52 == v88[0])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v88);
          v32 = (&__dst + 8);
          if (v52 != *(&__dst + 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v88);
          v32 = (&__dst + 8);
          if (v52 != *(&__dst + 1))
          {
            goto LABEL_57;
          }
        }

LABEL_88:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
        return ParametricStorageTypeImpl;
      }

      mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v75, &__dst);
      DWORD2(v89[0]) = DWORD2(__dst);
      if (DWORD2(__dst) > 0x40)
      {
        llvm::APInt::initSlowCase(v89, &__dst);
      }

      *&v89[0] = __dst;
      v67 = mlir::IntegerAttr::get(Value, v89);
      if (DWORD2(v89[0]) >= 0x41 && *&v89[0])
      {
        MEMORY[0x1AC55A040](*&v89[0], 0x1000C8000313F17);
      }

      DWORD2(v89[0]) = v86;
      if (v86 > 0x40)
      {
        llvm::APInt::initSlowCase(v89, &v85);
      }

      *&v89[0] = v85;
      v68 = mlir::IntegerAttr::get(Value, v89);
      if (DWORD2(v89[0]) >= 0x41 && *&v89[0])
      {
        MEMORY[0x1AC55A040](*&v89[0], 0x1000C8000313F17);
      }

      v69 = mlir::Attribute::getContext(&v77);
      v95 = v67;
      v96 = v68;
      v70 = mlir::MLIRContext::getAttributeUniquer(v69);
      v78 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
      v79 = v69;
      *&v89[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
      *(&v89[0] + 1) = &v78;
      v91 = &v95;
      v92 = 2;
      v71 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(&v95, &v97);
      v72 = HIDWORD(v71) ^ 0xFF51AFD7ED558CCDLL;
      v73 = 0x9DDFEA08EB382D69 * ((8 * v71 + 8) ^ v72);
      v82 = v89;
      v83[0] = &v91;
      v81 = &v91;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(v70, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v72 ^ (v73 >> 47) ^ v73)) >> 32) >> 15) ^ (-348639895 * (v72 ^ (v73 >> 47) ^ v73))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v83, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v81);
      if (v86 >= 0x41 && v85)
      {
        v74 = result;
        MEMORY[0x1AC55A040](v85, 0x1000C8000313F17);
        result = v74;
      }

      if (DWORD2(__dst) >= 0x41 && __dst)
      {
        v42 = result;
        v43 = __dst;
        goto LABEL_73;
      }
    }

    else
    {
      v53 = *(v2 + 32);
      if ((*(v2 + 24) & 1) == 0)
      {
        v53 += 2 * a1[1];
      }

      LOWORD(v87) = 261;
      v55 = *v53;
      v54 = v53[1];
      *&__dst = v55;
      *(&__dst + 1) = v54;
      return mlir::StringAttr::get(&__dst, isSplat);
    }
  }

  return result;
}

void *mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *a1 = *(a2 + 32);
  a1[1] = v4;
  a1[2] = a3;
  v7 = *(a2 + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v7);
  a1[3] = mlir::detail::getDenseElementBitWidth(isSplat);
  return a1;
}

uint64_t *mlir::DenseElementsAttr::IntElementIterator::operator*@<X0>(uint64_t *result@<X0>, llvm::APInt *a2@<X8>)
{
  if ((result[1] & 1) == 0)
  {
    v2 = result[2];
    v4 = result[3];
    v3 = *result;
    if (v4 != 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = (*(v3 + (v2 >> 3)) >> (v2 & 7)) & 1;
    *(a2 + 2) = 1;
    *a2 = v6;
    return result;
  }

  v2 = 0;
  v3 = *result;
  v4 = result[3];
  if (v4 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  *(a2 + 2) = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(a2, 0, 0);
  }

  *a2 = 0;
  if (v4)
  {
    v5 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return memmove(a2, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v2) >> 3)), v5);
  }

  return result;
}

llvm::detail::IEEEFloat *llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*@<X0>(llvm::APFloatBase *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = *a1;
    v6 = *(a1 + 3);
    if (v6 != 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = ((*(v5 + (v4 >> 3)) >> (v4 & 7)) & 1);
    v15 = 1;
    v14 = v8;
    goto LABEL_11;
  }

  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *a1;
  if (v6 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v15 = v6;
  if (v6 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v14, 0, 0);
  }

  v14 = 0;
  if (v6)
  {
    v7 = ((v6 - (v6 != 0)) >> 3) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_11:
    v11 = *(a1 + 4);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v11)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v10 = memmove(&v14, (v5 + ((((v6 - (v6 != 0) + 8 * (v6 != 0)) & 0xFFFFFFFFFFFFFFF8) * v4) >> 3)), v7);
  v11 = *(a1 + 4);
  v12 = llvm::APFloatBase::PPCDoubleDouble(v10);
  if (v12 == v11)
  {
LABEL_16:
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v11, &v14);
  }

LABEL_12:
  result = llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v11, &v14, v13);
  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      return MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *mlir::DenseElementsAttr::ComplexIntElementIterator::operator*@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result;
  v4 = result[3];
  if (v4 == 1)
  {
    v5 = 1;
    if ((result[1] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = (v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8;
    if ((result[1] & 1) == 0)
    {
LABEL_3:
      v6 = 2 * v5 * result[2];
      v7 = *result;
      if (v4 != 1)
      {
        goto LABEL_4;
      }

LABEL_12:
      v9 = ((*(v7 + (v6 >> 3)) >> (v6 & 6)) & 1);
      v18 = 1;
      v17 = v9;
      v10 = v6 + v5;
LABEL_15:
      v11 = ((*(v7 + (v10 >> 3)) >> (v10 & 7)) & 1);
      v16 = 1;
      v15 = v11;
      goto LABEL_24;
    }
  }

  v6 = 0;
  v7 = *result;
  if (v4 == 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v18 = result[3];
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v17, 0, 0);
  }

  v17 = 0;
  if (v4)
  {
    v8 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = memmove(&v17, (v7 + (v6 >> 3)), v8);
    v7 = *v2;
    v4 = v2[3];
    v10 = v6 + v5;
    if (v4 == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = v6 + v5;
  }

  v16 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v15, 0, 0);
  }

  v15 = 0;
  if (v4)
  {
    v12 = ((v4 - (v4 != 0)) >> 3) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    result = memmove(&v15, (v7 + (v10 >> 3)), v12);
  }

LABEL_24:
  v13 = v18;
  a2[2] = v18;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, &v17);
  }

  *a2 = v17;
  v14 = v16;
  a2[6] = v16;
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase((a2 + 4), &v15);
  }

  *(a2 + 2) = v15;
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      return MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t mlir::detail::getDenseElementBitWidth(uint64_t a1)
{
  v6 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  if (v1)
  {
    Value = mlir::AffineMapAttr::getValue(&v5);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(Value);
    return (2 * (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0))) & 0xFFFFFFFFFFFFFFF0;
  }

  else if (mlir::Type::isIndex(&v6))
  {
    return 64;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v6);
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<BOOL>::get(mlir::MLIRContext *a1, llvm::hashing::detail *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 1u, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::get(mlir::MLIRContext *a1, llvm::hashing::detail *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 0x20u, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 4 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + 4 * a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

BOOL mlir::detail::DenseArrayAttrImpl<int>::classof(void *a1)
{
  result = 0;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = a1[1];
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v6[0] = v5;
    return v5 && mlir::IntegerType::getWidth(v6) == 32 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::get(mlir::MLIRContext *a1, llvm::hashing::detail *a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 0x40u, 0);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v14[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v18[1] = v14;
  v17[0] = v6;
  v17[1] = a3;
  v17[2] = a2;
  v17[3] = 8 * a3;
  v8 = (v6 >> 4) ^ (v6 >> 9);
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + 8 * a3);
  v10 = __ROR8__(a3 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
  v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - a3, 43) - 0x3C5A37A36834CED9 * a3 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
  v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t *mlir::detail::DenseArrayAttrImpl<long long>::print(uint64_t *a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2);

  return mlir::detail::DenseArrayAttrImpl<long long>::print(a1, v3);
}

uint64_t *mlir::detail::DenseArrayAttrImpl<long long>::print(uint64_t *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    result = llvm::raw_ostream::write(this, "[", 1uLL);
    v5 = *v3;
    v6 = *(*v3 + 32);
    if (v6 < 8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
    v5 = *result;
    v6 = *(*result + 32);
    if (v6 < 8)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v5 + 24);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  result = llvm::raw_ostream::operator<<(this, *v7);
  v9 = v8 - 8;
  if (v9)
  {
    v10 = v7 + 1;
    do
    {
      while (1)
      {
        v12 = *(this + 4);
        if (*(this + 3) - v12 <= 1uLL)
        {
          break;
        }

        *v12 = 8236;
        *(this + 4) += 2;
        v11 = *v10++;
        result = llvm::raw_ostream::operator<<(this, v11);
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      llvm::raw_ostream::write(this, ", ", 2uLL);
      v13 = *v10++;
      result = llvm::raw_ostream::operator<<(this, v13);
      v9 -= 8;
    }

    while (v9);
  }

LABEL_10:
  v14 = *(this + 4);
  if (*(this + 3) == v14)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v14 = 93;
    ++*(this + 4);
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parse(mlir::AsmParser *a1, uint64_t a2)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 336))(a1))
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = mlir::IntegerType::get(Context, 0x40u, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v13[1] = Context;
    v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v17[1] = v13;
    v6 = (v4 >> 4) ^ (v4 >> 9);
    v16[0] = v4;
    memset(&v16[1], 0, 24);
    v7 = llvm::hashing::detail::hash_combine_range_impl<char const>(0, 0);
    v8 = 0xB492B66FBE98F273 * v6 - 0x9AE16A3B2F90404FLL * v7 - 0x1A58D393752DFE12;
    v9 = (__ROR8__((0x9AE16A3B2F90404FLL * v7) ^ 0xFF51AFD7ED558CCDLL, 30) + __ROR8__(0xB492B66FBE98F273 * v6, 43)) ^ v8;
    v10 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
    v14[0] = v16;
    v14[1] = v17;
    v15 = v16;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v10 >> 47) ^ v10), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
  }

  else
  {
    v12 = mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(a1);
    if ((*(*a1 + 328))(a1))
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(mlir::AsmParser *a1)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v23 = 0x600000000;
  v17 = a1;
  v18 = &v22;
  ParametricStorageTypeImpl = 0;
  if ((*(*a1 + 392))())
  {
    Context = mlir::AsmParser::getContext(a1);
    v4 = v22;
    v5 = v23;
    v6 = mlir::IntegerType::get(Context, 0x40u, 0);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
    v14[1] = Context;
    v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v21[1] = v14;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = 8 * v5;
    v8 = (v6 >> 4) ^ (v6 >> 9);
    v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(v4, v4 + 8 * v5);
    v10 = __ROR8__(v5 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v8 - 0x9AE16A3B2F90404FLL * v9 + 24;
    v11 = (__ROR8__(0xB492B66FBE98F273 * v8 - v5, 43) - 0x3C5A37A36834CED9 * v5 + __ROR8__((0x9AE16A3B2F90404FLL * v9) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v10;
    v12 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * v11) >> 47) ^ (0x9DDFEA08EB382D69 * v11));
    v15[0] = &v17;
    v15[1] = v21;
    v16 = &v17;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return ParametricStorageTypeImpl;
}

BOOL mlir::detail::DenseArrayAttrImpl<long long>::classof(void *a1)
{
  result = 0;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = a1[1];
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v6[0] = v5;
    return v5 && mlir::IntegerType::getWidth(v6) == 64 && mlir::IntegerType::getSignedness(v6) == 0;
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v96[4] = *MEMORY[0x1E69E9840];
  *&v81 = a1;
  *(&v81 + 1) = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v81);
  v80 = isSplat;
  if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v7 = isSplat;
  }

  else
  {
    v7 = 0;
  }

  v83[0] = v7;
  if (v7)
  {
    Value = mlir::AffineMapAttr::getValue(v83);
    isIntOrIndex = mlir::Type::isIntOrIndex(&Value);
    if (isIntOrIndex)
    {
      Value = &v86 + 8;
      *&v86 = 0x100000000;
      if (a4 < 2)
      {
        if (!a4)
        {
          goto LABEL_42;
        }
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&Value, a4);
      }

      v14 = 8 * a4;
      do
      {
        v15 = *(*a3 + 8);
        v16 = *v15;
        v17 = v15[1];
        v91[0] = *(*v15 + 24);
        if (v91[0] > 0x40)
        {
          llvm::APInt::initSlowCase(&v90, (v16 + 16));
        }

        v90 = *(v16 + 16);
        LODWORD(v89[0]) = *(v17 + 24);
        if (LODWORD(v89[0]) > 0x40)
        {
          llvm::APInt::initSlowCase(&v88, (v17 + 16));
        }

        v88 = *(v17 + 16);
        DWORD2(v92) = v91[0];
        *&v92 = v90;
        v94 = v89[0];
        v93 = v88;
        v18 = Value;
        if (v86 >= DWORD1(v86))
        {
          if (Value <= &v92 && Value + 32 * v86 > &v92)
          {
            v21 = &v92 - Value;
            llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&Value, v86 + 1);
            v18 = Value;
            v19 = Value + v21;
          }

          else
          {
            llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&Value, v86 + 1);
            v19 = &v92;
            v18 = Value;
          }
        }

        else
        {
          v19 = &v92;
        }

        v20 = &v18[32 * v86];
        *(v20 + 2) = *(v19 + 2);
        *v20 = *v19;
        *(v19 + 2) = 0;
        *(v20 + 6) = *(v19 + 6);
        *(v20 + 2) = *(v19 + 2);
        *(v19 + 6) = 0;
        LODWORD(v86) = v86 + 1;
        if (v94 >= 0x41 && v93)
        {
          MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
        }

        if (DWORD2(v92) >= 0x41 && v92)
        {
          MEMORY[0x1AC55A040](v92, 0x1000C8000313F17);
        }

        if (LODWORD(v89[0]) >= 0x41 && v88)
        {
          MEMORY[0x1AC55A040](v88, 0x1000C8000313F17);
        }

        if (v91[0] >= 0x41 && v90)
        {
          MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
        }

        ++a3;
        v14 -= 8;
      }

      while (v14);
LABEL_42:
      v22 = Value;
      v23 = v86;
      v92 = v81;
      v24 = mlir::ElementsAttr::isSplat(&v92);
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v24);
      if (DenseElementBitWidth == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
      }

      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v92, *(&v92 + 1), v26, v22, 2 * v23);
      v28 = Value;
      if (v86)
      {
        v29 = -32 * v86;
        v30 = Value + 32 * v86 - 16;
        do
        {
          if (*(v30 + 2) >= 0x41u && *v30)
          {
            MEMORY[0x1AC55A040](*v30, 0x1000C8000313F17);
          }

          if (*(v30 - 2) >= 0x41u)
          {
            v31 = *(v30 - 2);
            if (v31)
            {
              MEMORY[0x1AC55A040](v31, 0x1000C8000313F17);
            }
          }

          v30 -= 32;
          v29 += 32;
        }

        while (v29);
        v28 = Value;
      }

      if (v28 == (&v86 + 8))
      {
        return Raw;
      }

LABEL_162:
      free(v28);
      return Raw;
    }

    Value = &v86 + 8;
    *&v86 = 0x100000000;
    if (a4 < 2)
    {
      v32 = &v86 + 8;
      if (!a4)
      {
        goto LABEL_79;
      }
    }

    else
    {
      *&v92 = 0;
      v11 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&Value, &v86 + 8, a4, 64, &v92);
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::moveElementsForGrow(&Value, v11);
      v12 = v92;
      isIntOrIndex = Value;
      if (Value != &v86 + 8)
      {
        free(Value);
      }

      Value = v11;
      DWORD1(v86) = v12;
    }

    v33 = llvm::APFloatBase::PPCDoubleDouble(isIntOrIndex);
    v34 = 8 * a4;
    while (1)
    {
      v35 = *(*a3 + 8);
      v36 = v35[1];
      v37 = (*v35 + 24);
      if (v33 == *v37)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v91, v37);
        v38 = (v36 + 24);
        if (v33 != *(v36 + 24))
        {
LABEL_62:
          llvm::detail::IEEEFloat::IEEEFloat(v89, v38);
          if (v33 != *v91)
          {
            goto LABEL_63;
          }

          goto LABEL_67;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v91, v37);
        v38 = (v36 + 24);
        if (v33 != *(v36 + 24))
        {
          goto LABEL_62;
        }
      }

      llvm::detail::DoubleAPFloat::DoubleAPFloat(v89, v38);
      if (v33 != *v91)
      {
LABEL_63:
        llvm::detail::IEEEFloat::IEEEFloat((&v92 + 8), v91);
        if (v33 == v89[0])
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

LABEL_67:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92 + 1, v91);
      if (v33 == v89[0])
      {
LABEL_68:
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v96, v89);
        goto LABEL_69;
      }

LABEL_64:
      llvm::detail::IEEEFloat::IEEEFloat(v96, v89);
LABEL_69:
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::push_back(&Value, &v92);
      if (v33 == v96[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v96);
        if (v33 == *(&v92 + 1))
        {
          goto LABEL_75;
        }

LABEL_71:
        llvm::detail::IEEEFloat::~IEEEFloat((&v92 + 8));
        if (v33 != v89[0])
        {
          goto LABEL_72;
        }

LABEL_76:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v89);
        if (v33 != *v91)
        {
          goto LABEL_77;
        }

LABEL_59:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v91);
        ++a3;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_78;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v96);
        if (v33 != *(&v92 + 1))
        {
          goto LABEL_71;
        }

LABEL_75:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v92 + 8));
        if (v33 == v89[0])
        {
          goto LABEL_76;
        }

LABEL_72:
        llvm::detail::IEEEFloat::~IEEEFloat(v89);
        if (v33 == *v91)
        {
          goto LABEL_59;
        }

LABEL_77:
        llvm::detail::IEEEFloat::~IEEEFloat(v91);
        ++a3;
        v34 -= 8;
        if (!v34)
        {
LABEL_78:
          v32 = Value;
LABEL_79:
          v39 = v86;
          v92 = v81;
          v40 = mlir::ElementsAttr::isSplat(&v92);
          v41 = mlir::detail::getDenseElementBitWidth(v40);
          if (v41 == 1)
          {
            v42 = 0;
          }

          else
          {
            v42 = ((v41 - (v41 != 0) + 8 * (v41 != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
          }

          v43 = mlir::DenseIntOrFPElementsAttr::getRaw(v92, *(&v92 + 1), v42, v32, 2 * v39);
          Raw = v43;
          v44 = Value;
          v45 = v86;
          if (!v86)
          {
LABEL_91:
            if (v44 == (&v86 + 8))
            {
              return Raw;
            }

            v28 = v44;
            goto LABEL_162;
          }

          v46 = llvm::APFloatBase::PPCDoubleDouble(v43);
          v47 = (&v44[4 * v45 - 1] - 8);
          v48 = -64 * v45;
          while (1)
          {
            if (v46 == *v47)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v47);
              v49 = (v47 - 32);
              if (v46 == *(v47 - 4))
              {
LABEL_84:
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v49);
                v47 = (v47 - 64);
                v48 += 64;
                if (!v48)
                {
                  goto LABEL_90;
                }

                continue;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v47);
              v49 = (v47 - 32);
              if (v46 == *(v47 - 4))
              {
                goto LABEL_84;
              }
            }

            llvm::detail::IEEEFloat::~IEEEFloat(v49);
            v47 = (v47 - 64);
            v48 += 64;
            if (!v48)
            {
LABEL_90:
              v44 = Value;
              goto LABEL_91;
            }
          }
        }
      }
    }
  }

  if (!mlir::Type::isIntOrIndexOrFloat(&v80))
  {
    Value = &v86 + 8;
    *&v86 = 0x800000000;
    if (a4 < 9)
    {
      v13 = 0;
      v54 = 0;
      if (!a4)
      {
        goto LABEL_106;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&Value, &v86 + 8, a4, 16);
      v13 = v86;
    }

    v55 = 8 * a4;
    v54 = v13;
    do
    {
      v56 = *(*a3 + 16);
      if (v54 >= DWORD1(v86))
      {
        v77 = *(*a3 + 16);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&Value, &v86 + 8, v54 + 1, 16);
        v56 = v77;
        v54 = v86;
      }

      *(Value + v54) = v56;
      v54 = v86 + 1;
      LODWORD(v86) = v86 + 1;
      ++a3;
      v55 -= 8;
    }

    while (v55);
LABEL_106:
    v57 = Value;
    v82 = v81;
    Context = mlir::Attribute::getContext(&v82);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v83[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    v83[1] = Context;
    v90 = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
    *v91 = v83;
    mlir::detail::DenseStringElementsAttrStorage::getKey(v82, *(&v82 + 1), v57, v54, v54 == 1, &v92);
    v60 = __ROR8__(v95 + 16, 16);
    v61 = 0x9DDFEA08EB382D69 * (v60 ^ 0xFF51AFD7ED558CCDLL ^ (v92 >> 4) ^ (v92 >> 9));
    v84 = &v92;
    v88 = &v92;
    v89[0] = &v90;
    Raw = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) >> 32) >> 15) ^ (-348639895 * (v60 ^ (v61 >> 47) ^ v61)))) ^ v95, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v84, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v88);
    v28 = Value;
    if (Value == &v86 + 8)
    {
      return Raw;
    }

    goto LABEL_162;
  }

  v9 = mlir::detail::getDenseElementBitWidth(v80);
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (v9 + 8 * (v9 != 0) - (v9 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v50 = v10 * a4 - (v10 * a4 != 0);
  if (v10 * a4)
  {
    v51 = (v50 >> 3) + 1;
  }

  else
  {
    v51 = v50 >> 3;
  }

  Value = v87;
  v86 = xmmword_1A75D94D0;
  if (v51)
  {
    if (v51 < 9)
    {
      v52 = 0;
      v53 = v51;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&Value, v87, v51, 1);
      v52 = v86;
      v53 = v51 - v86;
      if (v51 == v86)
      {
        goto LABEL_110;
      }
    }

    bzero(Value + v52, v53);
LABEL_110:
    *&v86 = v51;
  }

  v91[0] = 1;
  v90 = 0;
  v62 = a4;
  if (a4)
  {
    v63 = 0;
    do
    {
      v64 = *a3;
      if (*(**a3 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        DWORD2(v92) = *(v64 + 24);
        if (DWORD2(v92) > 0x40)
        {
          llvm::APInt::initSlowCase(&v92, (v64 + 16));
        }

        *&v92 = *(v64 + 16);
        if (v91[0] >= 0x41)
        {
          v9 = v90;
          if (v90)
          {
            v9 = MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
          }
        }

        v90 = v92;
        v69 = DWORD2(v92);
        v91[0] = DWORD2(v92);
        v70 = Value;
        v79 = DWORD2(v92);
        if (DWORD2(v92) > 0x40uLL)
        {
LABEL_144:
          llvm::APInt::initSlowCase(&v78, &v90);
        }

        goto LABEL_133;
      }

      v66 = *(v64 + 24);
      v65 = (v64 + 24);
      v67 = llvm::APFloatBase::PPCDoubleDouble(v9);
      if (v67 == v66)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v92 + 1, v65);
        if (v67 != *(&v92 + 1))
        {
LABEL_120:
          llvm::detail::IEEEFloat::bitcastToAPInt(&v88, (&v92 + 8));
          if (v91[0] < 0x41)
          {
            goto LABEL_131;
          }

          goto LABEL_129;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat((&v92 + 8), v65);
        if (v67 != *(&v92 + 1))
        {
          goto LABEL_120;
        }
      }

      llvm::detail::DoubleAPFloat::bitcastToAPInt(&v88, (&v92 + 8), v68);
      if (v91[0] < 0x41)
      {
        goto LABEL_131;
      }

LABEL_129:
      if (v90)
      {
        MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
      }

LABEL_131:
      v90 = v88;
      v91[0] = v89[0];
      LODWORD(v89[0]) = 0;
      if (v67 == *(&v92 + 1))
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v92 + 8));
        v70 = Value;
        v79 = v91[0];
        v69 = v91[0];
        if (v91[0] > 0x40uLL)
        {
          goto LABEL_144;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v92 + 8));
        v70 = Value;
        v79 = v91[0];
        v69 = v91[0];
        if (v91[0] > 0x40uLL)
        {
          goto LABEL_144;
        }
      }

LABEL_133:
      v78 = v90;
      if (v69 == 1)
      {
        v73 = 1 << (v63 & 7);
        v74 = v63 >> 3;
        if (v78 == 1)
        {
          v70[v74] |= v73;
LABEL_147:
          if (v79 >= 0x41)
          {
            goto LABEL_148;
          }

          goto LABEL_113;
        }

        v70[v74] &= ~v73;
        if (v79 >= 0x41)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v69)
        {
          v71 = ((v69 - (v69 != 0)) >> 3) + 1;
        }

        else
        {
          v71 = (v69 - (v69 != 0)) >> 3;
        }

        if (!v71)
        {
          goto LABEL_147;
        }

        if (v69 >= 0x41)
        {
          v72 = v78;
        }

        else
        {
          v72 = &v78;
        }

        v9 = memmove(&v70[v63 >> 3], v72, v71);
        if (v79 >= 0x41)
        {
LABEL_148:
          v9 = v78;
          if (v78)
          {
            v9 = MEMORY[0x1AC55A040](v78, 0x1000C8000313F17);
          }
        }
      }

LABEL_113:
      v63 += v10;
      ++a3;
      --v62;
    }

    while (v62);
  }

  if (a4 == 1 && mlir::Type::isInteger(&v80, 1))
  {
    if (*Value)
    {
      v75 = -1;
    }

    else
    {
      v75 = 0;
    }

    *Value = v75;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v81, *(&v81 + 1), Value, v86);
  if (v91[0] >= 0x41 && v90)
  {
    MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
  }

  v28 = Value;
  if (Value != v87)
  {
    goto LABEL_162;
  }

  return Raw;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::push_back(llvm::APFloatBase *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v4 >= *(a1 + 3))
  {
    if (v5 <= a2 && v5 + (v4 << 6) > a2)
    {
      v12 = a2 - v5;
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v12;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = v5 + (*(a1 + 2) << 6);
  v7 = *(v2 + 8);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((v6 + 8), (v2 + 8));
    v9 = (v6 + 40);
    v10 = (v2 + 40);
    if (v8 != *(v2 + 40))
    {
      goto LABEL_4;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v10);
    goto LABEL_7;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v6 + 8, v2 + 8);
  v9 = (v6 + 40);
  v10 = (v2 + 40);
  if (v8 == *(v2 + 40))
  {
    goto LABEL_6;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, v10);
LABEL_7:
  ++*(a1 + 2);
}

uint64_t mlir::DenseElementsAttr::get(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, 2 * a4);
}

{
  v10 = a1;
  v11 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v10);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, v8, a3, a4);
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, unsigned __int8 *a3, size_t a4)
{
  v12 = a1;
  v13 = a2;
  v11 = 0;
  mlir::DenseElementsAttr::isValidRawBuffer(a1, a2, a3, a4, &v11);
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  v14[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail31DenseIntOrFPElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_24DenseIntOrFPElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefIcEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v19[1] = v14;
  mlir::detail::DenseIntOrFPElementsAttrStorage::getKey(v12, v13, a3, a4, v11, v17);
  v8 = __ROR8__(v18 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ (LODWORD(v17[0]) >> 4) ^ (LODWORD(v17[0]) >> 9));
  v15[0] = v17;
  v15[1] = v19;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = ((a4 - (a4 != 0)) >> 3) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    operator new();
  }

  if (a4)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v5 = 0;
    v6 = *a3;
    v7 = 1;
    do
    {
      while (1)
      {
        v8 = a3[v5];
        v9 = v8 == v6;
        v10 = 1 << (v5 & 7);
        v11 = (v5 >> 3);
        if (v8 == 1)
        {
          break;
        }

        *v11 &= ~v10;
        v7 &= v9;
        if (a4 == ++v5)
        {
          goto LABEL_12;
        }
      }

      *v11 |= v10;
      v7 &= v9;
      ++v5;
    }

    while (a4 != v5);
LABEL_12:
    if (v7)
    {
LABEL_13:
      operator new();
    }
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, 0, 0);
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v6 = a4;
  v8 = a5 * a3 - (a5 * a3 != 0);
  if (a5 * a3)
  {
    v9 = (v8 >> 3) + 1;
  }

  else
  {
    v9 = v8 >> 3;
  }

  if (v9)
  {
    operator new();
  }

  if (a5)
  {
    v20 = a1;
    v21 = a2;
    v10 = 0;
    v11 = 16 * a5;
    do
    {
      v13 = v6[2];
      v23 = v13;
      if (v13 > 0x40)
      {
        llvm::APInt::initSlowCase(&v22, v6);
      }

      v22 = *v6;
      if (v13 == 1)
      {
        v14 = 1 << (v10 & 7);
        v15 = (v10 >> 3);
        if (v22 == 1)
        {
          v12 = *v15 | v14;
        }

        else
        {
          v12 = *v15 & ~v14;
        }

        *v15 = v12;
      }

      else
      {
        if (v13)
        {
          v16 = ((v13 - (v13 != 0)) >> 3) + 1;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          memmove((v10 >> 3), &v22, v16);
        }
      }

      v6 += 4;
      v10 += a3;
      v11 -= 16;
    }

    while (v11);
    a1 = v20;
    a2 = v21;
    if (a5 == 1 && a4[2] == 1)
    {
      if (MEMORY[0])
      {
        v17 = -1;
      }

      else
      {
        v17 = 0;
      }

      MEMORY[0] = v17;
    }
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, 0, 0);
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v7 = ((32 * a5) >> 5) * a3;
  v8 = v7 - (v7 != 0);
  v29 = 32 * a5;
  if (v7)
  {
    v9 = (v8 >> 3) + 1;
  }

  else
  {
    v9 = v8 >> 3;
  }

  if (v9)
  {
    operator new();
  }

  if (a4 != a4 + 32 * a5)
  {
    v15 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v16 = 0;
    v17 = (a4 + 8);
    for (i = v29; i; i -= 32)
    {
      if (v15 == *v17)
      {
        a1 = llvm::detail::DoubleAPFloat::bitcastToAPInt(&v32, v17, v14);
        v20 = v33;
        if (v33 != 1)
        {
LABEL_21:
          if (v20)
          {
            v23 = ((v20 - (v20 != 0)) >> 3) + 1;
          }

          else
          {
            v23 = (v20 - (v20 != 0)) >> 3;
          }

          if (v23)
          {
            if (v20 >= 0x41)
            {
              v24 = v32;
            }

            else
            {
              v24 = &v32;
            }

            a1 = memmove((v16 >> 3), v24, v23);
          }

          if (v20 >= 0x41)
          {
            a1 = v32;
            if (v32)
            {
              a1 = MEMORY[0x1AC55A040](v32, 0x1000C8000313F17);
            }
          }

          goto LABEL_15;
        }
      }

      else
      {
        a1 = llvm::detail::IEEEFloat::bitcastToAPInt(&v32, v17);
        v20 = v33;
        if (v33 != 1)
        {
          goto LABEL_21;
        }
      }

      v21 = 1 << (v16 & 7);
      v22 = (v16 >> 3);
      if (v32 == 1)
      {
        v19 = *v22 | v21;
      }

      else
      {
        v19 = *v22 & ~v21;
      }

      *v22 = v19;
LABEL_15:
      v16 += a3;
      v17 = (v17 + 32);
    }
  }

  if (v29 != 32)
  {
    return mlir::DenseIntOrFPElementsAttr::getRaw(v27, a2, 0, 0);
  }

  v11 = *(a4 + 8);
  v10 = (a4 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v11)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v30, v10, v12);
    v13 = v31;
    if (v31 >= 0x41)
    {
LABEL_10:
      if (v30)
      {
        MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
      }

      return mlir::DenseIntOrFPElementsAttr::getRaw(v27, a2, 0, 0);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v30, v10);
    v13 = v31;
    if (v31 >= 0x41)
    {
      goto LABEL_10;
    }
  }

  if (v13 == 1)
  {
    if (MEMORY[0])
    {
      v25 = -1;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0] = v25;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v27, a2, 0, 0);
}

BOOL mlir::DenseElementsAttr::isValidRawBuffer(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, BOOL *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  isSplat = mlir::ElementsAttr::isSplat(v17);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
  if (DenseElementBitWidth == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v11 = 8 * a4;
  Shape = mlir::ShapedType::getShape(v17);
  NumElements = mlir::ShapedType::getNumElements(Shape, v13);
  *a5 = NumElements == 1;
  if (v10 != 1)
  {
    if (v11 != v10)
    {
      v15 = NumElements * v10;
      return v11 == v15;
    }

LABEL_9:
    result = 1;
    *a5 = 1;
    return result;
  }

  if (a4 == 1 && *a3 - 1 >= 0xFE)
  {
    goto LABEL_9;
  }

  v15 = (NumElements - (NumElements != 0) + 8 * (NumElements != 0)) & 0xFFFFFFFFFFFFFFF8;
  return v11 == v15;
}

uint64_t mlir::DenseElementsAttr::isValidIntOrFloat(mlir::DenseElementsAttr *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v9 = *(*this + 8);
  isSplat = mlir::ElementsAttr::isSplat(&v9);
  return isValidIntOrFloat(isSplat, a2, v5, v4);
}

uint64_t isValidIntOrFloat(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v15 = a1;
  if (mlir::detail::getDenseElementBitWidth(a1) != 8 * a2)
  {
    return 0;
  }

  if (a3)
  {
    if (mlir::Type::isIndex(&v15))
    {
      return 1;
    }

    v13 = v15;
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v13 = 0;
    }

    v14 = v13;
    if (v13)
    {
      if (mlir::IntegerType::getSignedness(&v14))
      {
        return (mlir::IntegerType::getSignedness(&v14) != 1) ^ a4;
      }

      return 1;
    }

    return 0;
  }

  v8 = *(*a1 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v8 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v8 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t *mlir::DenseElementsAttr::tryGetComplexIntValues@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::DenseElementsAttr *this@<X0>)
{
  v19 = *(*this + 8);
  *&v19 = mlir::ElementsAttr::isSplat(&v19);
  result = mlir::AffineMapAttr::getValue(&v19);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v7 = *(*this + 16);
    v8 = *(*this + 32);
    v9 = *(*this + 24);
    *&v19 = *(*this + 8);
    v6 = v19;
    *(&v19 + 1) = v7;
    *&v19 = mlir::ElementsAttr::isSplat(&v19);
    Value = mlir::AffineMapAttr::getValue(&v19);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(Value);
    v12 = *this;
    v19 = *(*this + 8);
    Shape = mlir::ShapedType::getShape(&v19);
    NumElements = mlir::ShapedType::getNumElements(Shape, v14);
    v16 = *(v12 + 32);
    v17 = *(v12 + 24);
    v19 = *(v12 + 8);
    *&v19 = mlir::ElementsAttr::isSplat(&v19);
    v18 = mlir::AffineMapAttr::getValue(&v19);
    result = mlir::detail::getDenseElementBitWidth(v18);
    *a1 = v8;
    a1[1] = v9;
    a1[2] = 0;
    a1[3] = DenseElementBitWidth;
    a1[4] = v16;
    a1[5] = v17;
    a1[6] = NumElements;
    a1[7] = result;
    v5 = 1;
    a1[8] = v6;
    a1[9] = v7;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 80) = v5;
  return result;
}

uint64_t mlir::DenseElementsAttr::getNumElements(mlir::DenseElementsAttr *this)
{
  v4 = *(*this + 8);
  Shape = mlir::ShapedType::getShape(&v4);
  return mlir::ShapedType::getNumElements(Shape, v2);
}

uint64_t *mlir::DenseElementsAttr::tryGetFloatValues@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::DenseElementsAttr *this@<X0>)
{
  v38 = *(*this + 8);
  result = mlir::ElementsAttr::isSplat(&v38);
  v5 = *(*result + 136);
  v21 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v21 && (v37 = result) != 0)
  {
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v37);
    v24 = *(*this + 16);
    v36 = *(*this + 32);
    v25 = *(*this + 24);
    *&v38 = *(*this + 8);
    v23 = v38;
    *(&v38 + 1) = v24;
    isSplat = mlir::ElementsAttr::isSplat(&v38);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(isSplat);
    v28 = *this;
    v38 = *(*this + 8);
    Shape = mlir::ShapedType::getShape(&v38);
    NumElements = mlir::ShapedType::getNumElements(Shape, v30);
    v32 = *(v28 + 32);
    v33 = *(v28 + 24);
    v38 = *(v28 + 8);
    v34 = mlir::ElementsAttr::isSplat(&v38);
    result = mlir::detail::getDenseElementBitWidth(v34);
    *a1 = v36;
    a1[1] = v25;
    a1[2] = 0;
    a1[3] = DenseElementBitWidth;
    a1[4] = FloatSemantics;
    a1[5] = v32;
    a1[6] = v33;
    a1[7] = NumElements;
    a1[8] = result;
    a1[9] = FloatSemantics;
    v35 = 1;
    a1[10] = v23;
    a1[11] = v24;
  }

  else
  {
    v35 = 0;
    *a1 = 0;
  }

  *(a1 + 96) = v35;
  return result;
}

uint64_t *mlir::DenseElementsAttr::tryGetComplexFloatValues@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::DenseElementsAttr *this@<X0>)
{
  v40 = *(*this + 8);
  result = mlir::ElementsAttr::isSplat(&v40);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v39 = v5;
  if (v5)
  {
    result = mlir::AffineMapAttr::getValue(&v39);
    v6 = *(*result + 136);
    v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (v22 && (v38 = result) != 0)
    {
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v38);
      v25 = *(*this + 16);
      v37 = *(*this + 32);
      v26 = *(*this + 24);
      *&v40 = *(*this + 8);
      v24 = v40;
      *(&v40 + 1) = v25;
      *&v40 = mlir::ElementsAttr::isSplat(&v40);
      Value = mlir::AffineMapAttr::getValue(&v40);
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(Value);
      v29 = *this;
      v40 = *(*this + 8);
      Shape = mlir::ShapedType::getShape(&v40);
      NumElements = mlir::ShapedType::getNumElements(Shape, v31);
      v33 = *(v29 + 32);
      v34 = *(v29 + 24);
      v40 = *(v29 + 8);
      *&v40 = mlir::ElementsAttr::isSplat(&v40);
      v35 = mlir::AffineMapAttr::getValue(&v40);
      result = mlir::detail::getDenseElementBitWidth(v35);
      *a1 = v37;
      a1[1] = v26;
      a1[2] = 0;
      a1[3] = DenseElementBitWidth;
      a1[4] = FloatSemantics;
      a1[5] = v33;
      a1[6] = v34;
      a1[7] = NumElements;
      a1[8] = result;
      a1[9] = FloatSemantics;
      v36 = 1;
      a1[10] = v24;
      a1[11] = v25;
    }

    else
    {
      v36 = 0;
      *a1 = 0;
    }

    *(a1 + 96) = v36;
  }

  else
  {
    *a1 = 0;
    *(a1 + 96) = 0;
  }

  return result;
}

void *mlir::DenseElementsAttr::reshape(void *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (result[1] != a2)
  {
    return mlir::DenseIntOrFPElementsAttr::getRaw(a2, a3, result[4], result[5]);
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::bitcast(uint64_t a1, uint64_t a2)
{
  v7 = *(*a1 + 8);
  if (mlir::ElementsAttr::isSplat(&v7) == a2)
  {
    return *a1;
  }

  LOBYTE(v8) = 0;
  v9 = 0;
  v5 = mlir::ShapedType::cloneWith(&v7, &v8, a2);
  return mlir::DenseIntOrFPElementsAttr::getRaw(v5, v6, *(*a1 + 32), *(*a1 + 40));
}

uint64_t mlir::DenseFPElementsAttr::classof(uint64_t a1)
{
  v1 = *(*a1 + 136);
  v3 = v1 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || a1 == 0;
  v4 = !v3;
  if (v3)
  {
    return v4 & v1;
  }

  v13 = *(a1 + 8);
  v5 = *(*mlir::ElementsAttr::isSplat(&v13) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return v4 & 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    LODWORD(v1) = 1;
    return v4 & v1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return v4 & 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return v4 & 1;
  }

  LODWORD(v1) = 1;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return v4 & v1;
  }

  v11 = v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v12 = v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v11;
  return v4 & v12;
}

BOOL mlir::DenseIntElementsAttr::classof(uint64_t a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (a1)
  {
    if (v5)
    {
      v6 = *(a1 + 8);
      isSplat = mlir::ElementsAttr::isSplat(&v6);
      return mlir::Type::isIntOrIndex(&isSplat);
    }
  }

  return result;
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v14[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v19[1] = v14;
  v6 = *a3;
  v17[0] = v13;
  v17[1] = v6;
  v18 = *(a3 + 2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ DWORD1(v6));
  v8 = 0x9DDFEA08EB382D69 * (DWORD1(v6) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v13 >> 4) ^ (v13 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v19;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(uint64_t a1@<X0>, unsigned int *a2@<X1>, size_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  v9 = *(a1 + 8);
  LOBYTE(v18) = 0;
  v24 = 0;
  if (*(a4 + 64) == 1)
  {
    v18 = *a4;
    v10 = *(a4 + 6);
    v19 = *(a4 + 2);
    v22 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 2) != 0 && (v10 & 4) != 0)
      {
        v11 = v8;
        v12 = v9;
        v13 = a5;
        v14 = a4;
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 8))(&v20, a4 + 24);
        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v14 + 24);
        a4 = v14;
        v9 = v12;
        v8 = v11;
        a5 = v13;
      }

      else
      {
        v20 = *(a4 + 24);
        v21 = *(a4 + 5);
      }

      *(a4 + 6) = 0;
    }

    v23 = *(a4 + 56);
    v24 = 1;
  }

  mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(v8, v9, a2, a3, &v18, a5);
  if (v24 == 1 && v22 >= 8)
  {
    v15 = (v22 & 2) != 0 ? &v20 : v20;
    (*(v22 & 0xFFFFFFFFFFFFFFF8))(v15, v18, *(&v18 + 1), v19);
    v16 = v22;
    if (v22 >= 8)
    {
      if ((v22 & 4) != 0)
      {
        if ((v22 & 2) != 0)
        {
          v17 = &v20;
        }

        else
        {
          v17 = v20;
        }

        (*((v22 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
      }

      if ((v16 & 2) == 0)
      {
        llvm::deallocate_buffer(v20, *(&v20 + 1));
      }
    }
  }
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (v6)
      {
LABEL_4:
        v7 = v5;
        v8 = v6;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[2 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 2;
          v8 += ~(v8 >> 1);
          if (v12 < v4)
          {
            v7 = v11;
          }

          else
          {
            v8 = v9;
          }
        }

        while (v8);
        if (v7 != &v5[2 * v6])
        {
          if (*v7 == v4)
          {
            v13 = v7[1];
          }

          else
          {
            v13 = 0;
          }

          return mlir::ElementsAttr::getElementType(v2, v13);
        }
      }
    }

    else
    {
      v15 = v3;
      v16 = v2;
      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
      v2 = v16;
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v15 + 8);
      v6 = *(v15 + 16);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;

    return mlir::ElementsAttr::getElementType(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getElementType(v2, v13);
}

llvm::APFloatBase *mlir::SparseElementsAttr::getZeroAttr(mlir::SparseElementsAttr *this)
{
  v39 = *MEMORY[0x1E69E9840];
  ElementType = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(this);
  v3 = *(*ElementType + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {

    return mlir::FloatAttr::get(ElementType, 0.0);
  }

  else
  {
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v21 = ElementType;
    }

    else
    {
      v21 = 0;
    }

    v33 = v21;
    if (v21)
    {
      Value = mlir::AffineMapAttr::getValue(&v33);
      v23 = *(*Value + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        v24 = mlir::FloatAttr::get(Value, 0.0);
      }

      else
      {
        v24 = mlir::IntegerAttr::get(Value, 0);
      }

      v25 = v24;
      Context = mlir::Attribute::getContext(&v33);
      v38[0] = v25;
      v38[1] = v25;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v34[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
      v34[1] = Context;
      v31[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
      v31[1] = v34;
      v37[0] = v38;
      v37[1] = 2;
      v28 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v38, &v39);
      v29 = HIDWORD(v28) ^ 0xFF51AFD7ED558CCDLL;
      v30 = 0x9DDFEA08EB382D69 * ((8 * v28 + 8) ^ v29);
      v35[0] = v37;
      v35[1] = v31;
      v36 = v37;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v35);
    }

    else if (*(**(*this + 32) + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
    {
      v32 = 257;
      return mlir::StringAttr::get(v31, ElementType);
    }

    else
    {

      return mlir::IntegerAttr::get(ElementType, 0);
    }
  }
}

void mlir::SparseElementsAttr::getFlattenedSparseIndices(mlir::SparseElementsAttr *this@<X0>, void *a2@<X8>)
{
  v31[9] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v29 = *(*this + 24);
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v29, v30);
  v4 = v30[0];
  v5 = v30[1];
  v6 = v31[0];
  if (*(v29 + 24) == 1)
  {
    v28 = *(*this + 8);
    mlir::ShapedType::getShape(&v28);
    v8 = v7;
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v30[0] = v31;
    HIDWORD(v30[1]) = 8;
    v10 = v4[v9];
    if (v7 >= 9)
    {
      LODWORD(v30[1]) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v30, v31, v7, 8);
      v11 = v30[0];
      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = v8 & 3;
      v14 = vdupq_n_s64(v10);
      v15 = (v30[0] + 16);
      v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15[-1] = v14;
        *v15 = v14;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v8 != (v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        do
        {
          v11[v12++] = v10;
          --v13;
        }

        while (v13);
      }

      goto LABEL_42;
    }

    if (!v7)
    {
      goto LABEL_41;
    }

    v20 = vdupq_n_s64(v7 - 1);
    v21 = v7 + 1;
    v22 = vmovn_s64(vcgeq_u64(v20, xmmword_1A7598670));
    if (v22.i8[0])
    {
      v31[0] = v10;
      v23 = v21 & 0x1E;
      if ((v22.i8[4] & 1) == 0)
      {
LABEL_18:
        if (v23 == 2)
        {
          goto LABEL_41;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v23 = v21 & 0x1E;
      if ((v22.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v31[1] = v10;
    if (v23 == 2)
    {
      goto LABEL_41;
    }

LABEL_25:
    v25 = vmovn_s64(vcgtq_u64(v20, xmmword_1A75989F0));
    if (v25.i8[0])
    {
      v31[2] = v10;
      if ((v25.i8[4] & 1) == 0)
      {
LABEL_27:
        if (v23 == 4)
        {
          goto LABEL_41;
        }

LABEL_31:
        v26 = vmovn_s64(vcgtq_u64(v20, xmmword_1A75DA400));
        if (v26.i8[0])
        {
          v31[4] = v10;
          if ((v26.i8[4] & 1) == 0)
          {
LABEL_33:
            if (v23 == 6)
            {
              goto LABEL_41;
            }

LABEL_37:
            v27 = vmovn_s64(vcgtq_u64(v20, xmmword_1A75DA6A0));
            if (v27.i8[0])
            {
              v31[6] = v10;
            }

            if (v27.i8[4])
            {
              v31[7] = v10;
            }

            goto LABEL_41;
          }
        }

        else if ((v26.i8[4] & 1) == 0)
        {
          goto LABEL_33;
        }

        v31[5] = v10;
        if (v23 != 6)
        {
          goto LABEL_37;
        }

LABEL_41:
        v11 = v31;
LABEL_42:
        LODWORD(v30[1]) = v8;
        *&v28 = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(this, v11);
        std::vector<long>::push_back[abi:nn200100](a2, &v28);
        if (v30[0] != v31)
        {
          free(v30[0]);
        }

        return;
      }
    }

    else if ((v25.i8[4] & 1) == 0)
    {
      goto LABEL_27;
    }

    v31[3] = v10;
    if (v23 == 4)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  *v30 = *(v29 + 8);
  v17 = *mlir::ShapedType::getShape(v30);
  *v30 = *(*this + 8);
  mlir::ShapedType::getShape(v30);
  if (v17)
  {
    v19 = v18;
    if (v5)
    {
      do
      {
        v30[0] = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(this, v4);
        std::vector<long>::push_back[abi:nn200100](a2, v30);
        --v17;
      }

      while (v17);
    }

    else
    {
      v24 = &v4[v6];
      do
      {
        v30[0] = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(this, v24);
        std::vector<long>::push_back[abi:nn200100](a2, v30);
        v24 += 8 * v19;
        --v17;
      }

      while (v17);
    }
  }
}

void std::vector<long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = v4;
    v18 = v3;
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType();
    v3 = v18;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v17 + 8);
    v7 = *(v17 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v14 = v8[1];
    goto LABEL_15;
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  v19[0] = v3;
  v19[1] = v14;
  ShapedType = mlir::ElementsAttr::getShapedType(v19);
  return mlir::ElementsAttr::getFlattenedIndex(ShapedType, a2);
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(uint64_t a1, mlir::ShapedType **a2)
{
  v53 = *MEMORY[0x1E69E9840];
  (**a2)(&v41, *(*a2 + 1));
  if (v41)
  {
    LODWORD(v38) = 3;
    v39 = "expected shape ([";
    v40 = 17;
    v4 = &v38;
    v5 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v38 && v43 + 24 * v44 > &v38)
      {
        v34 = &v38 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v5 = v43;
        v4 = (v43 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v4 = &v38;
        v5 = v43;
      }
    }

    v6 = &v5[24 * v44];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v44;
  }

  Shape = mlir::ShapedType::getShape(a2[1]);
  if (v41)
  {
    v38 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(Shape, &Shape[v9], v42, v42, &v38);
    if (v41)
    {
      LODWORD(v38) = 3;
      v39 = "]); inferred shape of indices literal ([";
      v40 = 40;
      v10 = &v38;
      v11 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v38 && v43 + 24 * v44 > &v38)
        {
          v35 = &v38 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v11 = v43;
          v10 = (v43 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v10 = &v38;
          v11 = v43;
        }
      }

      v12 = &v11[24 * v44];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v44;
    }
  }

  v14 = mlir::ShapedType::getShape(a2[2]);
  if (v41)
  {
    v38 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v14, &v14[v15], v42, v42, &v38);
    if (v41)
    {
      LODWORD(v38) = 3;
      v39 = "]); inferred shape of values literal ([";
      v40 = 39;
      v16 = &v38;
      v17 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v38 && v43 + 24 * v44 > &v38)
        {
          v36 = &v38 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v17 = v43;
          v16 = (v43 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = &v38;
          v17 = v43;
        }
      }

      v18 = &v17[24 * v44];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v44;
    }
  }

  v20 = mlir::ShapedType::getShape(a2[3]);
  if (v41)
  {
    v38 = ", ";
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(llvm::ArrayRef<long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(llvm::ArrayRef<long long> const&,char const*)::{lambda(void)#1},void>(v20, &v20[v21], v42, v42, &v38);
    if (v41)
    {
      LODWORD(v38) = 3;
      v39 = "])";
      v40 = 2;
      v22 = &v38;
      v23 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v38 && v43 + 24 * v44 > &v38)
        {
          v37 = &v38 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v23 = v43;
          v22 = (v43 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v22 = &v38;
          v23 = v43;
        }
      }

      v24 = &v23[24 * v44];
      v25 = *v22;
      *(v24 + 2) = v22[2];
      *v24 = v25;
      ++v44;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v50;
      v28 = __p;
      if (v50 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v50 = v26;
      operator delete(v28);
    }

    v29 = v47;
    if (v47)
    {
      v30 = v48;
      v31 = v47;
      if (v48 != v47)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v47;
      }

      v48 = v29;
      operator delete(v31);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(uint64_t a1, void **a2, unsigned int a3, const char **a4, uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  (**a2)(&v49, (*a2)[1]);
  if (v49)
  {
    LODWORD(v46) = 3;
    v47 = "sparse index #";
    v48 = 14;
    v10 = &v46;
    v11 = v51;
    if (v52 >= v53)
    {
      if (v51 <= &v46 && v51 + 24 * v52 > &v46)
      {
        v41 = &v46 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v11 = v51;
        v10 = (v51 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v10 = &v46;
        v11 = v51;
      }
    }

    v12 = &v11[24 * v52];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v52;
    if (v49)
    {
      LODWORD(v46) = 5;
      v47 = a3;
      v15 = &v46;
      v16 = v51;
      if (v14 >= v53)
      {
        if (v51 <= &v46 && v51 + 24 * v14 > &v46)
        {
          v42 = &v46 - v51;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v14 + 1, 24);
          v16 = v51;
          v15 = (v51 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v14 + 1, 24);
          v15 = &v46;
          v16 = v51;
        }
      }

      v17 = &v16[24 * v52];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v52;
      if (v49)
      {
        LODWORD(v46) = 3;
        v47 = " is not contained within the value shape, with index=[";
        v48 = 54;
        v20 = &v46;
        v21 = v51;
        if (v19 >= v53)
        {
          if (v51 <= &v46 && v51 + 24 * v19 > &v46)
          {
            v43 = &v46 - v51;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v19 + 1, 24);
            v21 = v51;
            v20 = (v51 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v19 + 1, 24);
            v20 = &v46;
            v21 = v51;
          }
        }

        v22 = &v21[24 * v52];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v52;
        if (v49)
        {
          v46 = ", ";
          llvm::interleave<unsigned long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(llvm::ArrayRef<unsigned long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(void)#1},void>(a4, &a4[a5], v50, v50, &v46);
          if (v49)
          {
            LODWORD(v46) = 3;
            v47 = "], and type=";
            v48 = 12;
            v24 = &v46;
            v25 = v51;
            if (v52 >= v53)
            {
              if (v51 <= &v46 && v51 + 24 * v52 > &v46)
              {
                v44 = &v46 - v51;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                v25 = v51;
                v24 = (v51 + v44);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                v24 = &v46;
                v25 = v51;
              }
            }

            v26 = &v25[24 * v52];
            v27 = *v24;
            *(v26 + 2) = v24[2];
            *v26 = v27;
            ++v52;
            if (v49)
            {
              v28 = *a2[1];
              v29 = &v46;
              mlir::DiagnosticArgument::DiagnosticArgument(&v46, v28);
              v30 = v51;
              if (v52 >= v53)
              {
                if (v51 <= &v46 && v51 + 24 * v52 > &v46)
                {
                  v45 = &v46 - v51;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                  v30 = v51;
                  v29 = (v51 + v45);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
                  v29 = &v46;
                  v30 = v51;
                }
              }

              v31 = &v30[24 * v52];
              v32 = *v29;
              *(v31 + 2) = v29[2];
              *v31 = v32;
              ++v52;
            }
          }
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v49);
  if (v49)
  {
    mlir::InFlightDiagnostic::report(&v49);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v58;
      v35 = __p;
      if (v58 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v58 = v33;
      operator delete(v35);
    }

    v36 = v55;
    if (v55)
    {
      v37 = v56;
      v38 = v55;
      if (v56 != v55)
      {
        do
        {
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
          }
        }

        while (v37 != v36);
        v38 = v55;
      }

      v56 = v36;
      operator delete(v38);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }
}

void *mlir::DistinctAttr::create(uint64_t a1)
{
  v5 = a1;
  Context = mlir::Attribute::getContext(&v5);
  Storage = mlir::detail::DistinctAttributeUniquer::allocateStorage(Context, v5);
  {
    mlir::DistinctAttr::create();
  }

  *Storage = mlir::AbstractAttribute::lookup(mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id, Context, v2);
  return Storage;
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ElementsAttr::isSplat(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

__n128 llvm::interleave<unsigned long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(llvm::ArrayRef<unsigned long long> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<unsigned long long>>(llvm::ArrayRef<unsigned long long> const&,char const*)::{lambda(void)#1},void>(const char **a1, const char **a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v38 = v5;
    v39 = v6;
    v12 = (a3 + 16);
    v11 = *(a3 + 16);
    v13 = *a1;
    v35 = 5;
    v36 = v13;
    v14 = *(a3 + 24);
    v15 = &v35;
    if (v14 >= *(a3 + 28))
    {
      v33 = a1;
      if (v11 <= &v35 && v11 + 24 * v14 > &v35)
      {
        v34 = &v35 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v34[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v35;
      }

      a1 = v33;
    }

    v16 = (v11 + 24 * *(a3 + 24));
    result = *v15;
    v16[1].n128_u64[0] = v15[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      if (*a5)
      {
        v20 = strlen(*a5);
        v35 = 3;
        v36 = v19;
        v37 = v20;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v35 = 3;
        v36 = 0;
        v37 = 0;
        v21 = *(a4 + 24);
        v22 = *(a4 + 16);
        if (v21 < *(a4 + 28))
        {
          goto LABEL_8;
        }
      }

      if (v22 > &v35 || v22 + 24 * v21 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, (a4 + 32), v21 + 1, 24);
        v22 = *(a4 + 16);
LABEL_8:
        v23 = &v35;
        goto LABEL_9;
      }

      v31 = &v35 - v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, (a4 + 32), v21 + 1, 24);
      v22 = *(a4 + 16);
      v23 = &v31[v22];
LABEL_9:
      v24 = v22 + 24 * *(a4 + 24);
      v25 = *v23;
      *(v24 + 16) = *(v23 + 2);
      *v24 = v25;
      ++*(a4 + 24);
      v26 = *i;
      v35 = 5;
      v36 = v26;
      v27 = *(a3 + 24);
      v28 = *(a3 + 16);
      if (v27 >= *(a3 + 28))
      {
        if (v28 <= &v35 && v28 + 24 * v27 > &v35)
        {
          v32 = &v35 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v27 + 1, 24);
          v28 = *v12;
          v29 = &v32[*v12];
          goto LABEL_11;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v27 + 1, 24);
        v28 = *v12;
      }

      v29 = &v35;
LABEL_11:
      v30 = (v28 + 24 * *(a3 + 24));
      result = *v29;
      v30[1].n128_u64[0] = v29[1].n128_u64[0];
      *v30 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(_DWORD *a1, _DWORD *a2)
{
  v78[1] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v67 = 0;
  }

  else
  {
    v2 = (*a1 >> 4) ^ (*a1 >> 9);
    *&v74 = v2;
    if (a1 + 2 == a2)
    {
      v67 = 8;
    }

    else
    {
      v3 = (a1[2] >> 4) ^ (a1[2] >> 9);
      *(&v74 + 1) = v3;
      if (a1 + 4 == a2)
      {
        v67 = 16;
      }

      else
      {
        v4 = (a1[4] >> 4) ^ (a1[4] >> 9);
        *&v75 = v4;
        if (a1 + 6 == a2)
        {
          v67 = 24;
        }

        else
        {
          v5 = (a1[6] >> 4) ^ (a1[6] >> 9);
          *(&v75 + 1) = v5;
          if (a1 + 8 == a2)
          {
            v67 = 32;
          }

          else
          {
            v6 = (a1[8] >> 4) ^ (a1[8] >> 9);
            *&v76 = v6;
            if (a1 + 10 == a2)
            {
              v67 = 40;
            }

            else
            {
              v7 = (a1[10] >> 4) ^ (a1[10] >> 9);
              *(&v76 + 1) = v7;
              if (a1 + 12 == a2)
              {
                v67 = 48;
              }

              else
              {
                v8 = (a1[12] >> 4) ^ (a1[12] >> 9);
                *&v77 = v8;
                if (a1 + 14 == a2)
                {
                  v67 = 56;
                }

                else
                {
                  v9 = (a1[14] >> 4) ^ (a1[14] >> 9);
                  *(&v77 + 1) = v9;
                  v10 = a1 + 16;
                  if (a1 + 16 != a2)
                  {
                    v73 = &v75 + 8;
                    v11 = v6 + 0x4BF62CB950C3753ALL;
                    *(&v13 + 1) = v7 + v8 + v6 + 0x4BF62CB950C3753ALL;
                    *&v13 = 0x4BF62CB900000000;
                    v12 = v13 >> 44;
                    v14 = *(&v13 + 1) + v9;
                    *(&v13 + 1) = v8 + 0x61299596E4;
                    *&v13 = 0xBEB4006120000000;
                    v15 = v12 + v11;
                    v16 = v7 - 0x4B6D499041670D8DLL * (v13 >> 42) - 0x7323D61940A0DA1FLL;
                    v17 = v15 + __ROR8__(v16 + v4 + v11 + v9, 21);
                    v18 = v2 + 0x298DF016A9F64655;
                    v19 = v2 + 0x298DF016A9F64655 + v3 + v4;
                    v20 = v19 + v5;
                    *(&v13 + 1) = v19;
                    *&v13 = 0x298DF00000000000;
                    v21 = (v13 >> 44) + v18;
                    *(&v13 + 1) = v3 + 0x1EACB4B2AELL;
                    *&v13 = 0x8C2DD9BEA0000000;
                    v22 = (0xB492B66FBE98F273 * (v13 >> 37)) ^ 0xF7ACCA5326449396;
                    v23 = v21 + __ROR8__(v22 + v18 + v5 - 0xAE502812AB8D92, 21);
                    v24 = 0x544962662A7EE1A4;
                    v25 = 64;
                    while (1)
                    {
                      v32 = v10 + 2;
                      *&v74 = (*v10 >> 4) ^ (*v10 >> 9);
                      v33 = v10 + 2 == a2;
                      if (v10 + 2 == a2)
                      {
                        v35 = 0;
                        v36 = &v74 + 8;
                        v37 = 8;
                      }

                      else
                      {
                        *(&v74 + 1) = (v10[2] >> 4) ^ (v10[2] >> 9);
                        v32 = v10 + 4;
                        v33 = v10 + 4 == a2;
                        if (v10 + 4 == a2)
                        {
                          v35 = 8;
                          v36 = &v75;
                          v37 = 16;
                        }

                        else
                        {
                          *&v75 = (v10[4] >> 4) ^ (v10[4] >> 9);
                          v32 = v10 + 6;
                          v33 = v10 + 6 == a2;
                          if (v10 + 6 == a2)
                          {
                            v35 = 16;
                            v36 = v73;
                            v37 = 24;
                          }

                          else
                          {
                            *(&v75 + 1) = (v10[6] >> 4) ^ (v10[6] >> 9);
                            v32 = v10 + 8;
                            v33 = v10 + 8 == a2;
                            if (v10 + 8 == a2)
                            {
                              v35 = 24;
                              v36 = &v76;
                              v37 = 32;
                            }

                            else
                            {
                              *&v76 = (v10[8] >> 4) ^ (v10[8] >> 9);
                              v32 = v10 + 10;
                              v33 = v10 + 10 == a2;
                              if (v10 + 10 == a2)
                              {
                                v35 = 32;
                                v36 = &v76 + 8;
                                v37 = 40;
                              }

                              else
                              {
                                *(&v76 + 1) = (v10[10] >> 4) ^ (v10[10] >> 9);
                                v32 = v10 + 12;
                                v33 = v10 + 12 == a2;
                                if (v10 + 12 == a2)
                                {
                                  v35 = 40;
                                  v36 = &v77;
                                  v37 = 48;
                                }

                                else
                                {
                                  *&v77 = (v10[12] >> 4) ^ (v10[12] >> 9);
                                  v32 = v10 + 14;
                                  v33 = v10 + 14 == a2;
                                  if (v10 + 14 != a2)
                                  {
                                    v34 = (v10[14] >> 4) ^ (v10[14] >> 9);
                                    v10 += 16;
                                    *(&v77 + 1) = v34;
                                    v33 = v10 == a2;
                                    v35 = 56;
                                    v36 = v78;
                                    v37 = 64;
                                    goto LABEL_28;
                                  }

                                  v35 = 48;
                                  v36 = &v77 + 8;
                                  v37 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v10 = v32;
LABEL_28:
                      if ((v37 & 0x38) != 0)
                      {
                        v38 = 56 - v35;
                        v39 = v37;
                        if (v37 != 56 - v35)
                        {
                          do
                          {
                            v46 = v39;
                            v39 = v38;
                            v38 = v46 % v38;
                          }

                          while (v38);
                          v47 = (&v74 + v39);
                          do
                          {
                            v49 = *(v47 - 1);
                            v47 = (v47 - 1);
                            v48 = v49;
                            v50 = (v47 + v37);
                            v51 = v47;
                            do
                            {
                              v52 = v51;
                              v51 = v50;
                              *v52 = *v50;
                              v53 = v37 < v78 - v50;
                              v54 = &v74 + v37 - (v78 - v50);
                              v50 = (v50 + v37);
                              if (!v53)
                              {
                                v50 = v54;
                              }
                            }

                            while (v50 != v47);
                            *v51 = v48;
                          }

                          while (v47 != &v74);
                          goto LABEL_11;
                        }

                        v40 = v35 | 7;
                        if (55 - v35 < (v35 | 7uLL))
                        {
                          v40 = 55 - v35;
                        }

                        v41 = &v74;
                        if (&v74 < (&v74 | 9) + v35 + v40)
                        {
                          v42 = v37;
                          if (v36 < &v74 + v40 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v40 >= 0x1F)
                        {
                          v56 = v40 + 1;
                          v55 = (v40 + 1) & 0x60;
                          v57 = v74;
                          v58 = v75;
                          v59 = *(v36 + 1);
                          v74 = *(&v74 + v37);
                          v75 = v59;
                          *(&v74 + v37) = v57;
                          *(v36 + 1) = v58;
                          if (v55 != 32)
                          {
                            v60 = v76;
                            v61 = v77;
                            v62 = *(v36 + 3);
                            v76 = *(v36 + 2);
                            v77 = v62;
                            *(v36 + 2) = v60;
                            *(v36 + 3) = v61;
                          }

                          if (v56 == v55)
                          {
                            goto LABEL_11;
                          }

                          if ((v56 & 0x18) == 0)
                          {
                            v41 = &v74 + v55;
                            v42 = v37 + v55;
LABEL_34:
                            v43 = v41 + 1;
                            do
                            {
                              v44 = *(v43 - 1);
                              *(v43 - 1) = *(&v74 + v42);
                              *(&v74 + v42) = v44;
                              if (v43 == v36)
                              {
                                break;
                              }

                              ++v43;
                            }

                            while (v42++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v55 = 0;
                        }

                        v63 = &v36[v55];
                        v64 = (&v74 + v55);
                        v65 = v40 - v55 + 1;
                        do
                        {
                          v66 = *v64;
                          *v64++ = *v63;
                          *v63 = v66;
                          v63 += 8;
                          v65 -= 8;
                        }

                        while (v65);
                      }

LABEL_11:
                      v26 = v16 + v20 + v24;
                      v16 = *(&v76 + 1) + v20 - 0x4B6D499041670D8DLL * __ROR8__(v16 + v23 + v77, 42);
                      v27 = v74 - 0x4B6D499041670D8DLL * v23;
                      v28 = v27 + *(&v74 + 1) + v75;
                      v29 = __ROR8__(v22 + v14, 33);
                      v30 = (0xB492B66FBE98F273 * __ROR8__(v26 + *(&v74 + 1), 37)) ^ v17;
                      v23 = __ROR8__(v28, 44) + v27 + __ROR8__(v30 + v14 + v27 + *(&v75 + 1), 21);
                      v24 = 0xB492B66FBE98F273 * v29;
                      v31 = 0xB492B66FBE98F273 * v29 + v17 + v76;
                      v20 = v28 + *(&v75 + 1);
                      v17 = __ROR8__(v16 + v75 + v31 + *(&v77 + 1), 21) + v31 + __ROR8__(*(&v76 + 1) + v77 + v31, 44);
                      v14 = *(&v76 + 1) + v77 + v31 + *(&v77 + 1);
                      v25 += v37;
                      v22 = v30;
                      if (v33)
                      {
                        v68 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v14)));
                        v69 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v17)));
                        v70 = 0x9DDFEA08EB382D69 * (v69 ^ (v69 >> 47)) - 0x4B6D499041670D8DLL * ((v25 ^ (v25 >> 47)) + v29);
                        v71 = 0x9DDFEA08EB382D69 * (v70 ^ (v30 - 0x4B6D499041670D8DLL * (v16 ^ (v16 >> 47)) - 0x622015F714C7D297 * (v68 ^ (v68 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) ^ ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) >> 47));
                      }
                    }
                  }

                  v67 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v74, v67, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::detail::ArrayAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::ArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  if (!v2)
  {
    Slow = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = 8 * v2;
  a1[10] += 8 * v2;
  Slow = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + 8 * v2;
  if (v3)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v18 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
    a1 = v18;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v7;
    v9 = v5 - 8;
    if ((v5 - 8) >= 0x18)
    {
LABEL_7:
      v10 = Slow;
      v11 = v4;
      if (Slow - v4 >= 0x20)
      {
        v12 = (v9 >> 3) + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v10 = (Slow + v13);
        v11 = (v4 + v13);
        v14 = (v4 + 16);
        v15 = (Slow + 16);
        v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v10 = Slow;
  v11 = v4;
  do
  {
LABEL_15:
    v19 = *v11++;
    *v10++ = v19;
  }

  while (v11 != (v4 + 8 * v2));
LABEL_16:
  v3 = *a1;
LABEL_17:
  a1[10] += 24;
  v20 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = (v20 + 3);
  if (v3)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = Slow;
  v20[2] = v2;
  return v20;
}

void *mlir::detail::DenseArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_23;
  }

  a1[10] += v4;
  Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + v4;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v17 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v4, v4, 3);
    a1 = v17;
    if (v4 < 8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *a1 = v7;
    if (v4 < 8)
    {
LABEL_20:
      v15 = Slow;
      v16 = v5;
      goto LABEL_21;
    }
  }

  if (Slow - v5 < 0x20)
  {
    goto LABEL_20;
  }

  if (v4 < 0x20)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = v4 & 0xFFFFFFFFFFFFFFE0;
  v10 = (v5 + 16);
  v11 = (Slow + 16);
  v12 = v4 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v13 = *v10;
    *(v11 - 1) = *(v10 - 1);
    *v11 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 32;
  }

  while (v12);
  if (v4 == v9)
  {
    goto LABEL_22;
  }

  if ((v4 & 0x18) != 0)
  {
LABEL_14:
    v14 = v4 & 0xFFFFFFFFFFFFFFF8;
    v15 = (Slow + (v4 & 0xFFFFFFFFFFFFFFF8));
    v16 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
    do
    {
      *(Slow + v9) = *(v5 + v9);
      v9 += 8;
    }

    while (v14 != v9);
    if (v4 == v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = (v5 + v9);
  v15 = (Slow + v9);
  do
  {
LABEL_21:
    v18 = *v16++;
    *v15++ = v18;
  }

  while (v16 != (v5 + v4));
LABEL_22:
  v5 = Slow;
LABEL_23:
  a1[10] += 40;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = (v19 + 5);
  if (*a1)
  {
    v21 = v20 > a1[1];
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = v2;
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v4;
  return v19;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && *(a2 + 16) == v2[1] && (v3 = *(a2 + 32), v3 == v2[3]))
  {
    return memcmp(*(a2 + 24), v2[2], v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::detail::DenseStringElementsAttrStorage::getKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, llvm::hashing::detail **a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = result;
  v22 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    result = llvm::hash_value(*a3, a3[1]);
    v12 = result;
    if (a5)
    {
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = a4;
      *(a6 + 32) = result;
      *(a6 + 40) = 1;
      return result;
    }

    v13 = a4 - 1;
    if (a4 == 1)
    {
LABEL_6:
      *a6 = v8;
      *(a6 + 8) = a2;
      *(a6 + 16) = a3;
      *(a6 + 24) = 1;
      *(a6 + 32) = v12;
      *(a6 + 40) = 1;
      return result;
    }

    v14 = a3[1];
    if (v14)
    {
      v15 = *a3;
      v16 = a3 + 2;
      while (v14 == v16[1])
      {
        result = memcmp(v15, *v16, v14);
        if (result)
        {
          break;
        }

        v16 += 2;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v16 = a3 + 2;
      while (!v16[1])
      {
        v16 += 2;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }
    }

    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    v20 = 0;
    v21 = 0xFF51AFD7ED558CCDLL;
    v17[0] = v12;
    v17[1] = llvm::hashing::detail::hash_combine_range_impl<llvm::StringRef const*>(v16, &a3[2 * a4]);
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine(v17, 0, v18, v19);
    *a6 = v8;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = result;
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 24) = 0;
    *(a6 + 32) = 0;
    *(a6 + 16) = a3;
  }

  *(a6 + 40) = 0;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::StringRef const*>(llvm::hashing::detail **a1, llvm::hashing::detail **a2)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    v30 = 0;
  }

  else
  {
    v4 = llvm::hash_value(*a1, a1[1]);
    v89 = v4;
    if (a1 + 2 == a2)
    {
      v30 = 8;
    }

    else
    {
      v5 = v4;
      v6 = llvm::hash_value(a1[2], a1[3]);
      v90 = v6;
      if (a1 + 4 == a2)
      {
        v30 = 16;
      }

      else
      {
        v7 = v6;
        v8 = llvm::hash_value(a1[4], a1[5]);
        v91 = v8;
        if (a1 + 6 == a2)
        {
          v30 = 24;
        }

        else
        {
          v9 = v8;
          v10 = llvm::hash_value(a1[6], a1[7]);
          v92 = v10;
          if (a1 + 8 == a2)
          {
            v30 = 32;
          }

          else
          {
            v87 = v10;
            v11 = llvm::hash_value(a1[8], a1[9]);
            v93 = v11;
            if (a1 + 10 == a2)
            {
              v30 = 40;
            }

            else
            {
              v12 = v11;
              v13 = llvm::hash_value(a1[10], a1[11]);
              v94 = v13;
              if (a1 + 12 == a2)
              {
                v30 = 48;
              }

              else
              {
                v14 = v13;
                v15 = llvm::hash_value(a1[12], a1[13]);
                v95 = v15;
                if (a1 + 14 == a2)
                {
                  v30 = 56;
                }

                else
                {
                  v16 = v15;
                  v17 = llvm::hash_value(a1[14], a1[15]);
                  v96 = v17;
                  v18 = a1 + 16;
                  if (a1 + 16 != a2)
                  {
                    v84 = v17;
                    llvm::hash_value(a1[16], a1[17]);
                    v19 = v14 + v16 + v12 + 0x4BF62CB950C3753ALL + v84;
                    v20 = __ROR8__(v14 + v16 + v12 + 0x4BF62CB950C3753ALL, 44) + v12 + 0x4BF62CB950C3753ALL;
                    v21 = v14 - 0x4B6D499041670D8DLL * __ROR8__(v16 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v22 = v20 + __ROR8__(v21 + v9 + v12 + 0x4BF62CB950C3753ALL + v84, 21);
                    v23 = v5 + 0x298DF016A9F64655;
                    v24 = v5 + 0x298DF016A9F64655 + v7 + v9;
                    v25 = v24 + v87;
                    v26 = (0xB492B66FBE98F273 * __ROR8__(v7 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v27 = __ROR8__(v24, 44) + v23 + __ROR8__(v26 + v23 + v87 - 0xAE502812AB8D92, 21);
                    v83 = ~&v89;
                    v28 = 0x544962662A7EE1A4;
                    v29 = 64;
                    while (1)
                    {
                      v85 = v26;
                      v86 = v19;
                      v88 = v22;
                      v89 = llvm::hash_value(*v18, v18[1]);
                      v38 = v18 + 2;
                      if (v18 + 2 == a2)
                      {
                        v39 = &v90;
                        v40 = &v90;
                        v31 = 8;
                      }

                      else
                      {
                        v90 = llvm::hash_value(v18[2], v18[3]);
                        v38 = v18 + 4;
                        if (v18 + 4 == a2)
                        {
                          v39 = &v91;
                          v40 = &v91;
                          v31 = 16;
                        }

                        else
                        {
                          v91 = llvm::hash_value(v18[4], v18[5]);
                          v38 = v18 + 6;
                          if (v18 + 6 == a2)
                          {
                            v39 = &v92;
                            v40 = &v92;
                            v31 = 24;
                          }

                          else
                          {
                            v92 = llvm::hash_value(v18[6], v18[7]);
                            v38 = v18 + 8;
                            if (v18 + 8 == a2)
                            {
                              v39 = &v93;
                              v40 = &v93;
                              v31 = 32;
                            }

                            else
                            {
                              v93 = llvm::hash_value(v18[8], v18[9]);
                              v38 = v18 + 10;
                              if (v18 + 10 == a2)
                              {
                                v39 = &v94;
                                v40 = &v94;
                                v31 = 40;
                              }

                              else
                              {
                                v94 = llvm::hash_value(v18[10], v18[11]);
                                v38 = v18 + 12;
                                if (v18 + 12 == a2)
                                {
                                  v39 = &v95;
                                  v40 = &v95;
                                  v31 = 48;
                                }

                                else
                                {
                                  v95 = llvm::hash_value(v18[12], v18[13]);
                                  v38 = v18 + 14;
                                  if (v18 + 14 != a2)
                                  {
                                    v96 = llvm::hash_value(v18[14], v18[15]);
                                    v38 = v18 + 16;
                                    if (v18 + 16 != a2)
                                    {
                                      llvm::hash_value(v18[16], v18[17]);
                                    }

                                    v31 = 64;
                                    goto LABEL_19;
                                  }

                                  v39 = &v96;
                                  v40 = &v96;
                                  v31 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v41 = 64 - v31;
                      v42 = v31;
                      if (v31 != 64 - v31)
                      {
                        do
                        {
                          v49 = v42;
                          v42 = v41;
                          v41 = v49 % v41;
                        }

                        while (v41);
                        v50 = (&v89 + v42);
                        do
                        {
                          v52 = *(v50 - 1);
                          v50 = (v50 - 1);
                          v51 = v52;
                          v53 = &v50[v31 / 8];
                          v54 = v50;
                          do
                          {
                            v55 = v54;
                            v54 = v53;
                            *v55 = *v53;
                            v56 = (&v97 - v53);
                            v57 = __OFSUB__(v31, v56);
                            v59 = v31 - v56;
                            v58 = (v59 < 0) ^ v57;
                            v53 = (&v89 + v59);
                            if (v58)
                            {
                              v53 = &v54[v31 / 8];
                            }
                          }

                          while (v53 != v50);
                          *v54 = v51;
                        }

                        while (v50 != &v89);
                        goto LABEL_19;
                      }

                      v43 = v31 ^ 0x3F;
                      if (v39 + v83 < (v31 ^ 0x3FuLL))
                      {
                        v43 = v39 + v83;
                      }

                      v44 = &v89;
                      if (v43 < 3 || &v89 < (&v89 + v43 + v31 + 1) && v40 < (&v89 + v43 + 1))
                      {
                        v45 = v31;
                        goto LABEL_43;
                      }

                      v60 = v43 + 1;
                      if (v43 >= 0xF)
                      {
                        v61 = v60 & 0x70;
                        v62 = v89;
                        v63 = v90;
                        v64 = v40[1];
                        v89 = *(&v89 + v31);
                        v90 = v64;
                        *(&v89 + v31) = v62;
                        v40[1] = v63;
                        if (v61 != 16)
                        {
                          v65 = v91;
                          v66 = v92;
                          v67 = v40[3];
                          v91 = v40[2];
                          v92 = v67;
                          v40[2] = v65;
                          v40[3] = v66;
                          if (v61 != 32)
                          {
                            v68 = v93;
                            v69 = v94;
                            v70 = v40[5];
                            v93 = v40[4];
                            v94 = v70;
                            v40[4] = v68;
                            v40[5] = v69;
                            if (v61 != 48)
                            {
                              v71 = v95;
                              v72 = v96;
                              v73 = v40[7];
                              v95 = v40[6];
                              v96 = v73;
                              v40[6] = v71;
                              v40[7] = v72;
                            }
                          }
                        }

                        if (v60 == v61)
                        {
                          goto LABEL_19;
                        }

                        if ((v60 & 0xC) == 0)
                        {
                          v44 = (&v89 + v61);
                          v45 = v31 + v61;
LABEL_43:
                          v46 = (v44 + 1);
                          do
                          {
                            v47 = *(v46 - 1);
                            *(v46 - 1) = *(&v89 + v45);
                            *(&v89 + v45) = v47;
                            if (v46 == v39)
                            {
                              break;
                            }

                            v46 = (v46 + 1);
                          }

                          while (v45++ != 63);
                          goto LABEL_19;
                        }
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v45 = v31 + (v60 & 0x7C);
                      v44 = (&v89 + (v60 & 0x7C));
                      v74 = (v40 + v61);
                      v75 = (&v89 + v61);
                      v76 = v61 - (v60 & 0x7C);
                      do
                      {
                        v77 = *v75;
                        *v75++ = *v74;
                        *v74++ = v77;
                        v76 += 4;
                      }

                      while (v76);
                      if (v60 != (v60 & 0x7C))
                      {
                        goto LABEL_43;
                      }

LABEL_19:
                      v32 = __ROR8__(v21 + v25 + v28 + v90, 37);
                      v21 = v94 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v21 + v27 + v95, 42);
                      v33 = v89 - 0x4B6D499041670D8DLL * v27;
                      v34 = v33 + v90 + v91;
                      v35 = (0xB492B66FBE98F273 * v32) ^ v88;
                      v36 = __ROR8__(v85 + v86, 33);
                      v27 = __ROR8__(v34, 44) + v33 + __ROR8__(v35 + v86 + v33 + v92, 21);
                      v28 = 0xB492B66FBE98F273 * v36;
                      v37 = 0xB492B66FBE98F273 * v36 + v88 + v93;
                      v25 = v34 + v92;
                      v22 = __ROR8__(v21 + v91 + v37 + v96, 21) + v37 + __ROR8__(v94 + v95 + v37, 44);
                      v19 = v94 + v95 + v37 + v96;
                      v29 += v31;
                      v18 = v38;
                      v26 = v35;
                      if (v38 == a2)
                      {
                        v78 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v19)));
                        v79 = v35 - 0x4B6D499041670D8DLL * (v21 ^ (v21 >> 47)) - 0x622015F714C7D297 * (v78 ^ (v78 >> 47));
                        v80 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v27 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v27 ^ v22)));
                        v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v80 >> 47)) - 0x4B6D499041670D8DLL * ((v29 ^ (v29 >> 47)) + v36);
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) ^ ((0x9DDFEA08EB382D69 * (v81 ^ ((0x9DDFEA08EB382D69 * (v81 ^ v79)) >> 47) ^ (0x9DDFEA08EB382D69 * (v81 ^ v79)))) >> 47));
                      }
                    }
                  }

                  v30 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v89, v30, 0xFF51AFD7ED558CCDLL);
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 != a2[1])
  {
    return 0;
  }

  v3 = v2[3];
  if (v3 != a2[5])
  {
    return 0;
  }

  if (v3)
  {
    v4 = v2[2];
    v5 = a2[4];
    v6 = v4 + 16 * v3;
    while (1)
    {
      v7 = *(v4 + 8);
      if (v7 != *(v5 + 8) || v7 && memcmp(*v4, *v5, v7))
      {
        break;
      }

      v4 += 16;
      v5 += 16;
      if (v4 == v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__n128 **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[2];
  v10[1] = (*a1)[1];
  v10[2] = v4;
  v10[0] = v3;
  v6 = mlir::detail::DenseStringElementsAttrStorage::construct(a2, v10);
  v7 = v5;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(*(v8 + 1), v5, v6);
  }

  return v7;
}

__n128 mlir::detail::DenseStringElementsAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v4 = a2[1].n128_u64[1];
  if (!v4)
  {
    a1[10] += 48;
    v10 = a1[1];
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = Slow + 48;
    if (*a1)
    {
      v13 = v12 > v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
    }

    else
    {
      *a1 = v12;
    }

    v14 = a2[2].n128_u8[8];
    result = *a2;
    *Slow = 0;
    *(Slow + 8) = result;
    *(Slow + 24) = v14;
    *(Slow + 32) = 0;
    *(Slow + 40) = 0;
    return result;
  }

  v5 = a2[1].n128_u64[0];
  if (a2[2].n128_u8[8])
  {
    LODWORD(v4) = 1;
  }

  v6 = v4;
  v7 = 16 * v4;
  if (v4 < 1)
  {
    v9 = 16 * v4;
  }

  else
  {
    if (v4 > 4)
    {
      v16 = v4 & 3;
      if ((v6 & 3) == 0)
      {
        v16 = 4;
      }

      v8 = v6 - v16;
      v17 = 0uLL;
      v18 = v7;
      v19 = (v5 + 40);
      v20 = v8;
      do
      {
        v21 = v19 - 4;
        v22 = vld2q_f64(v21);
        v23 = vld2q_f64(v19);
        v18 = vaddq_s64(v22, v18);
        v17 = vaddq_s64(v23, v17);
        v19 += 8;
        v20 -= 4;
      }

      while (v20);
      v9 = vaddvq_s64(vaddq_s64(v17, v18));
    }

    else
    {
      v8 = 0;
      v9 = v7;
    }

    v24 = (v5 + 16 * v8 + 8);
    v25 = v6 - v8;
    do
    {
      v26 = *v24;
      v24 += 2;
      v9 += v26;
      --v25;
    }

    while (v25);
  }

  a1[10] += v9;
  v27 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = v27 + v9;
  if (*a1)
  {
    v29 = v28 > a1[1];
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v27 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v9, v9, 3);
    if (v6 >= 1)
    {
LABEL_26:
      v30 = (v27 + v7);
      v31 = (v5 + 8);
      v32 = (v27 + 8);
      v33 = v6;
      do
      {
        memcpy(v30, *(v31 - 1), *v31);
        v34 = *v31;
        v31 += 2;
        *(v32 - 1) = v30;
        *v32 = v34;
        v30 += v34;
        v32 += 2;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    *a1 = v28;
    if (v6 >= 1)
    {
      goto LABEL_26;
    }
  }

  a1[10] += 48;
  if (*a1 && (v35 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8, v35 + 48 <= a1[1]))
  {
    *a1 = v35 + 48;
  }

  else
  {
    v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
  }

  v36 = a2[2].n128_u8[8];
  result = *a2;
  *v35 = 0;
  *(v35 + 8) = result;
  *(v35 + 24) = v36;
  *(v35 + 32) = v27;
  *(v35 + 40) = v6;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__n128 **a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (v4->n128_u64[0])
  {
    (v4->n128_u64[0])(v4->n128_u64[1], v3);
  }

  return v3;
}

void *mlir::detail::FloatAttrStorage::construct(llvm::APFloatBase *a1, __n128 *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2->n128_u64[0];
  v4 = a2 + 1;
  v5 = a2[1].n128_i64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, v4);
    *(a1 + 10) += 48;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v12, v4);
    *(a1 + 10) += 48;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_12;
    }
  }

  Slow = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((Slow + 6) <= *(a1 + 1))
  {
    *a1 = Slow + 6;
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_7:
    llvm::detail::IEEEFloat::IEEEFloat(&v11, &v12);
    *Slow = 0;
    Slow[1] = v3;
    v9 = (Slow + 3);
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_14;
    }

LABEL_8:
    llvm::detail::IEEEFloat::IEEEFloat(v9, &v11);
    if (v6 == v11.n128_u64[0])
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_12:
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
  if (v6 != v12.n128_u64[0])
  {
    goto LABEL_7;
  }

LABEL_13:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, &v12);
  *Slow = 0;
  Slow[1] = v3;
  v9 = (Slow + 3);
  if (v6 != v11.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v11);
  if (v6 == v11.n128_u64[0])
  {
LABEL_15:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
    if (v6 == v12.n128_u64[0])
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_9:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
  if (v6 == v12.n128_u64[0])
  {
LABEL_16:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
    return Slow;
  }

LABEL_10:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v19[0] = a2;
  v19[1] = a3;
  v20 = *a5;
  v8 = (a6 + 8);
  v9 = *(a6 + 8);
  v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v10 == v9)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v22, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v22, v8);
  }

  v12 = llvm::hash_value(&v21, v11);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 4) ^ (v20 >> 9))));
  v17[0] = &v20;
  v17[1] = v19;
  v18 = &v20;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
  if (v10 == v22.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return ParametricStorageTypeImpl;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v3 = (a2 + 24);
  v4 = v5;
  v7 = v2[2];
  v6 = (v2 + 2);
  if (v4 != v7)
  {
    return 0;
  }

  v9 = v3;
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
  {

    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v9, v6);
  }

  else
  {

    return llvm::detail::IEEEFloat::bitwiseIsEqual(v9, v6);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, llvm::APFloatBase *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 2);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, a6);
  }

  v18 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v18, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      v14 = result;
      MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(mlir::detail::StorageUniquerImpl **a1, const llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t *a5, llvm::APInt *a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v8 = *a5;
  v17 = *a5;
  v19 = *(a6 + 2);
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, a6);
  }

  v18 = *a6;
  v9 = (v8 >> 4) ^ (v8 >> 9);
  v10 = llvm::hash_value(&v18, a2);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v15[0] = &v17;
  v15[1] = v20;
  v16 = &v17;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
  if (v19 >= 0x41)
  {
    if (v18)
    {
      v14 = result;
      MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
      return v14;
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 24) > 0x40u)
  {
    return llvm::APInt::equalSlowCase((a2 + 16), v2 + 1);
  }

  return *(a2 + 16) == v2[1];
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = *(*a1 + 4);
  v4 = **a1;
  v3 = (*a1)[1];
  *(*a1 + 4) = 0;
  a2[10] += 32;
  if (!*a2 || (Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 > a2[1]))
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    *(Slow + 24) = v2;
    *(Slow + 16) = v3;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_4;
  }

  *a2 = Slow + 32;
  *Slow = 0;
  *(Slow + 8) = v4;
  *(Slow + 24) = v2;
  *(Slow + 16) = v3;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_4:
    v7(v6[1], Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]) && (!v3 || (v4 = a2, v5 = memcmp(*(a2 + 16), v2[1], v3), a2 = v4, !v5)))
  {
    return *(a2 + 32) == v2[3];
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, uint64_t *a2)
{
  v3 = mlir::detail::OpaqueAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::OpaqueAttrStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = a2[3];
  if (!v3)
  {
    Slow = 0;
    goto LABEL_24;
  }

  v5 = a2[1];
  a1[10] += v3 + 1;
  Slow = *a1;
  v7 = v3 + 1 + *a1;
  if (*a1)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *a1 = v7;
    if (v3 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v9 = Slow;
    v10 = v5;
    goto LABEL_22;
  }

  v20 = a1;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v3 + 1, v3 + 1, 0);
  a1 = v20;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v9 = Slow;
  v10 = v5;
  if ((Slow - v5) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v11 = v3 & 0xFFFFFFFFFFFFFFE0;
    v12 = (v5 + 16);
    v13 = (Slow + 16);
    v14 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 2;
      v14 -= 32;
    }

    while (v14);
    if (v3 == v11)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x18) != 0)
    {
LABEL_15:
      v9 = (Slow + (v3 & 0xFFFFFFFFFFFFFFF8));
      v10 = (v5 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v16 = (v5 + v11);
      v17 = (Slow + v11);
      v18 = v11 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v19 = *v16++;
        *v17++ = v19;
        v18 += 8;
      }

      while (v18);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v10 = (v5 + v11);
    v9 = (Slow + v11);
  }

  do
  {
LABEL_22:
    v21 = *v10++;
    *v9++ = v21;
  }

  while (v10 != (v5 + v3));
LABEL_23:
  *(Slow + v3) = 0;
LABEL_24:
  a1[10] += 40;
  v22 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v22 + 5);
  if (*a1)
  {
    v24 = v23 > a1[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  v22[1] = v2;
  v22[2] = Slow;
  v22[3] = v3;
  v22[4] = v4;
  return v22;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::detail::StridedLayoutAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::StridedLayoutAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *a1;
  if (!v3)
  {
    Slow = 0;
    goto LABEL_17;
  }

  v5 = a2[1];
  v6 = 8 * v3;
  a1[10] += 8 * v3;
  Slow = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + 8 * v3;
  if (v4)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v3, 8 * v3, 3);
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v8;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
LABEL_7:
      v11 = Slow;
      v12 = v5;
      if (Slow - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (Slow + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (Slow + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = Slow;
  v12 = v5;
  do
  {
LABEL_15:
    v20 = *v12++;
    *v11++ = v20;
  }

  while (v12 != (v5 + 8 * v3));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 32;
  v21 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = (v21 + 4);
  if (v4)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  v21[1] = v2;
  v21[2] = Slow;
  v21[3] = v3;
  return v21;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::detail::SymbolRefAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::SymbolRefAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (v3)
  {
    v4 = a2[1];
    v5 = 8 * v3;
    a1[10] += 8 * v3;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = Slow + 8 * v3;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v3, 8 * v3, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = Slow;
        v11 = v4;
        if (Slow - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (Slow + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (Slow + 16);
          v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = Slow;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v3));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = (v20 + 4);
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v2;
  v20[2] = Slow;
  v20[3] = v3;
  return v20;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

void mlir::Dialect::addAttribute<mlir::AffineMapAttr>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::AffineMapAttr>(a1, &v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::ArrayAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::ArrayAttr,mlir::Attribute,mlir::detail::ArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v23 = "builtin.array";
  v24 = 13;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::DenseArrayAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v23 = "builtin.dense_array";
  v24 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::DenseIntOrFPElementsAttr>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(a1, &v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::DenseStringElementsAttr>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(a1, &v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::DenseResourceElementsAttr>(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(a1, &v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != &v13)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, 0, v9);
}

void mlir::Dialect::addAttribute<mlir::DictionaryAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::DictionaryAttr,mlir::Attribute,mlir::detail::DictionaryAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSB_21DictionaryAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSA_21DictionaryAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v23 = "builtin.dictionary";
  v24 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, 0, v9);
}