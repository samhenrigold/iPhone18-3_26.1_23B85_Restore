BOOL mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::RNNActivationAttr]";
  v38 = 78;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 = (v37 + v11 + v12);
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
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

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 16), 5);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 5);
  }

  return result;
}

void mlir::mps::SingleGateRNNGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v44 = a4;
  v45 = a3;
  v42 = a8;
  v43 = a5;
  v41 = a9;
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  if (a8)
  {
    mlir::OperationState::addOperands(a2, &v42, 1uLL);
  }

  if (a9)
  {
    mlir::OperationState::addOperands(a2, &v41, 1uLL);
    v14 = v41 != 0;
    v15 = v42 != 0;
    v16 = *(a2 + 256);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    v15 = v42 != 0;
    v16 = *(a2 + 256);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  v17 = operator new(0x28uLL);
  *v17 = 0u;
  v17[1] = 0u;
  *(v17 + 8) = 0;
  *(a2 + 256) = v17;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::SingleGateRNNGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v16 = *(a2 + 256);
LABEL_10:
  *(v16 + 16) = 0x100000001;
  *(v16 + 24) = 1;
  *(v16 + 28) = v15;
  *(v16 + 32) = v14;
  v18 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v51 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v52 = v18;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v49 = &v51;
  v47 = a6;
  v20 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v21 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v20);
  v46 = &v47;
  v53 = &v47;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 32) >> 15) ^ (-348639895 * (v20 ^ (v21 >> 47) ^ v21))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v53);
  v24 = ParametricStorageTypeImpl;
  v25 = *(a2 + 256);
  if (v25)
  {
    *v25 = ParametricStorageTypeImpl;
    if (!a7)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v26 = operator new(0x28uLL);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 8) = 0;
  *(a2 + 256) = v26;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::SingleGateRNNGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = v24;
  if (a7)
  {
LABEL_16:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v23);
    v28 = *(a2 + 256);
    if (!v28)
    {
      v29 = operator new(0x28uLL);
      *v29 = 0u;
      v29[1] = 0u;
      *(v29 + 8) = 0;
      *(a2 + 256) = v29;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::SingleGateRNNGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v28 = *(a2 + 256);
    }

    *(v28 + 8) = UnitAttr;
  }

LABEL_21:
  __src = v50;
  v49 = 0x200000000;
  v30 = *a1;
  v31 = *a2;
  mlir::ValueRange::ValueRange(&v53, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v34 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v51, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SingleGateRNNGradientOp::inferReturnTypes(v30, v31, 1, v53, p_src, Dictionary, v34, v35, v51, v52, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v36);
  }

  v37 = __src;
  v38 = v49;
  v39 = *(a2 + 72);
  v40 = v39 + v49;
  if (v40 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v40, 8);
    LODWORD(v39) = *(a2 + 72);
  }

  if (v38)
  {
    memcpy((*(a2 + 64) + 8 * v39), v37, 8 * v38);
    LODWORD(v39) = *(a2 + 72);
  }

  *(a2 + 72) = v39 + v38;
  if (__src != v50)
  {
    free(__src);
  }
}

BOOL mlir::mps::SingleGateRNNGradientOp::verifyInvariantsImpl(mlir::Block ***this)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (v6)
  {
    v7 = v5[1];
    v79[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "activation", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v79))
    {
      v79[0] = *this;
      if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "gradient_for_input_state", 0x18, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v79))
      {
        v76 = 0;
        v8 = *this;
        v9 = *(*this + 11);
        v10 = (v9 >> 23) & 1;
        v11 = LODWORD((*this)[2 * v10 + 10]);
        if ((v9 & 0x800000) != 0)
        {
          v12 = v8[9];
          if (v11)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v12 = 0;
          if (v11)
          {
LABEL_6:
            v13 = 0;
            v14 = v12 + 24;
            while (1)
            {
              v15 = *this;
              v16 = *(*v14 + 8);
              v76 = v13 + 1;
              if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, (v16 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
              {
                return 0;
              }

              ++v13;
              v14 += 32;
              if (v11 == v13)
              {
                v8 = *this;
                v9 = *(*this + 11);
                v10 = (v9 >> 23) & 1;
                goto LABEL_32;
              }
            }
          }
        }

        LODWORD(v13) = 0;
LABEL_32:
        v26 = v9 & 0x800000;
        v27 = &v8[2 * v10];
        v28 = *(v27 + 21);
        if (v26)
        {
          v29 = v8[9];
          if (v28)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v29 = 0;
          if (v28)
          {
LABEL_34:
            v30 = *(v27 + 20);
            v31 = (v28 + v30) - v30;
            v32 = v29 + 32 * v30 + 24;
            while (1)
            {
              v33 = v13;
              v34 = *this;
              v35 = *(*v32 + 8);
              LODWORD(v13) = v13 + 1;
              v76 = v13;
              if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v34, (v35 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v33))
              {
                return 0;
              }

              v32 += 32;
              if (!--v31)
              {
                v8 = *this;
                v36 = *(*this + 11);
                v10 = (v36 >> 23) & 1;
                v26 = v36 & 0x800000;
                break;
              }
            }
          }
        }

        v37 = &v8[2 * v10];
        v38 = *(v37 + 22);
        if (v26)
        {
          v39 = v8[9];
          if (v38)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v39 = 0;
          if (v38)
          {
LABEL_40:
            v40 = (*(v37 + 21) + *(v37 + 20));
            v41 = (v38 + v40) - v40;
            v42 = v39 + 32 * v40 + 24;
            while (1)
            {
              v43 = *this;
              v44 = *(*v42 + 8);
              v45 = v13 + 1;
              v76 = v13 + 1;
              if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v43, (v44 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
              {
                return 0;
              }

              v42 += 32;
              LODWORD(v13) = v13 + 1;
              if (!--v41)
              {
                goto LABEL_48;
              }
            }
          }
        }

        v45 = v13;
LABEL_48:
        ODSOperands = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 3u);
        v48 = v47;
        if (v47 >= 2)
        {
          goto LABEL_49;
        }

        if (!v47 || (v53 = *(ODSOperands + 24), v54 = *this, v55 = *(v53 + 8), v76 = v45 + 1, mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v54, (v55 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v45)))
        {
          v57 = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 4u);
          v48 = v58;
          if (v58 >= 2)
          {
LABEL_49:
            v49 = "operand group starting at #";
LABEL_50:
            v77[0] = v49;
            v78 = 259;
            mlir::OpState::emitOpError(this, v77, v79);
            mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v79, &v76);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, " requires 0 or 1 element, but found ");
            v75 = v48;
            mlir::InFlightDiagnostic::operator<<<unsigned long>(v51, &v75);
            v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v79);
            return v17;
          }

          if (!v58 || (v59 = *(v57 + 24), v60 = *this, v61 = *(v59 + 8), v62 = v76, ++v76, mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v60, (v61 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v62)))
          {
            v63 = *(*this + 9) ? (*this - 2) : 0;
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v63, 0);
            if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
            {
              v65 = *(*this + 9) ? (*this - 2) : 0;
              v66 = mlir::detail::OpResultImpl::getNextResultAtOffset(v65, 1);
              v67 = mlir::detail::OpResultImpl::getNextResultAtOffset(v66, 0);
              v68 = *this;
              v69 = *(v67 + 8);
              v76 = 2;
              if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v68, (v69 & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u))
              {
                ODSResults = mlir::mps::LSTMOp::getODSResults(this, 2u, v70, v71);
                v48 = v73;
                if (v73 < 2)
                {
                  if (!v73)
                  {
                    return 1;
                  }

                  v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(ODSResults, 0);
                  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(v74 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 2u);
                }

                v49 = "result group starting at #";
                goto LABEL_50;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  v77[0] = "requires attribute 'activation'";
  v78 = 259;
  mlir::OpState::emitOpError(this, v77, v79);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
  if (v79[0])
  {
    mlir::InFlightDiagnostic::report(v79);
  }

  if (v87 == 1)
  {
    if (v86 != &v87)
    {
      free(v86);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v85;
      v20 = __p;
      if (v85 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v85 = v18;
      operator delete(v20);
    }

    v21 = v82;
    if (v82)
    {
      v22 = v83;
      v23 = v82;
      if (v83 != v82)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v82;
      }

      v83 = v21;
      operator delete(v23);
    }

    if (v80 != &v81)
    {
      free(v80);
    }
  }

  return v17;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SingleGateRNNGradientOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.singlegate_rnn_gradient", 27, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C560;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

BOOL mlir::mps::SingleGateRNNOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v61 = "expected DictionaryAttr to set properties";
      v62 = 41;
      v26 = &v60;
      v27 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v54 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v27 = v64;
          v26 = (v64 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v26 = &v60;
          v27 = v64;
        }
      }

      v28 = &v27[24 * v65];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v65;
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v71;
      v32 = __p;
      if (v71 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v71 = v30;
      operator delete(v32);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_70;
    }

    v33 = v69;
    v23 = v68;
    if (v69 == v68)
    {
LABEL_69:
      v69 = v21;
      operator delete(v23);
LABEL_70:
      if (v64 != v67)
      {
        free(v64);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v68;
    goto LABEL_69;
  }

  v75.var0 = "activation";
  v75.var1 = 10;
  v8 = mlir::DictionaryAttr::get(&v59, v75);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v9 = v8;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 55;
        v10 = &v60;
        v11 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v55 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v11 = v64;
            v10 = (v64 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v10 = &v60;
            v11 = v64;
          }
        }

        v12 = &v11[24 * v65];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v65;
        if (v63[0])
        {
          v14 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
          v15 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v56 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v15 = v64;
              v14 = (v64 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v14 = &v60;
              v15 = v64;
            }
          }

          v16 = &v15[24 * v65];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v71;
        v20 = __p;
        if (v71 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v71 = v18;
        operator delete(v20);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v76.var0 = "training";
  v76.var1 = 8;
  v36 = mlir::DictionaryAttr::get(&v59, v76);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 53;
        v38 = &v60;
        v39 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v57 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v39 = v64;
            v38 = (v64 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v38 = &v60;
            v39 = v64;
          }
        }

        v40 = &v39[24 * v65];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v65;
        if (v63[0])
        {
          v42 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v37);
          v43 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v58 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v43 = v64;
              v42 = (v64 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v42 = &v60;
              v43 = v64;
            }
          }

          v44 = &v43[24 * v65];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v71;
        v48 = __p;
        if (v71 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v71 = v46;
        operator delete(v48);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v49 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v77.var0 = "operandSegmentSizes";
  v77.var1 = 19;
  v52 = mlir::DictionaryAttr::get(&v59, v77);
  if (!v52)
  {
    v78.var0 = "operand_segment_sizes";
    v78.var1 = 21;
    v52 = mlir::DictionaryAttr::get(&v59, v78);
    if (!v52)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 2, 4, v52, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::SingleGateRNNOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = v32;
  v31 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v29, "activation", 0xAuLL, *a2);
    v6 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v25 = NamedAttr;
      v26 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v5 = v26;
      NamedAttr = v25;
      v6 = v31;
    }

    v7 = (v30 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v31) = v31 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v29, "training", 8uLL, v8);
    v11 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v27 = v9;
      v28 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v10 = v28;
      v9 = v27;
      v11 = v31;
    }

    v12 = (v30 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v31) = v31 + 1;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 4);
  v14 = mlir::Builder::getNamedAttr(&v29, "operandSegmentSizes", 0x13uLL, v13);
  v16 = v31;
  if (v31 >= HIDWORD(v31))
  {
    v23 = v14;
    v24 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
    v15 = v24;
    v14 = v23;
    v16 = v31;
  }

  v17 = (v30 + 16 * v16);
  *v17 = v14;
  v17[1] = v15;
  v18 = __CFADD__(v31, 1);
  v19 = (v31 + 1);
  LODWORD(v31) = v31 + 1;
  if (v18)
  {
    DictionaryAttr = 0;
    v21 = v30;
    if (v30 == v32)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v29, v30, v19);
  v21 = v30;
  if (v30 != v32)
  {
LABEL_16:
    free(v21);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::SingleGateRNNOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 18)
  {
    if (__n == 8)
    {
      if (!memcmp(__s1, "training", 8uLL))
      {
        return a2[1];
      }
    }

    else if (__n == 10 && *__s1 == 0x6974617669746361 && *(__s1 + 4) == 28271)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 19)
  {
    if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 4);
    }

    return 0;
  }

  if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
  {
    return 0;
  }

  return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 4);
}

uint64_t mlir::mps::SingleGateRNNOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      v8 = result ? a4 : 0;
      v11 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v11);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v11);
          if (v9)
          {
            return memmove((v5 + 16), result, 4 * v9);
          }
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "training", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 8) = v7;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 10 && *__s1 == 0x6974617669746361 && *(__s1 + 4) == 28271)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::SingleGateRNNOp::readProperties(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v17;
    {
      mlir::mps::SingleGateRNNOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(a1, v3))
    {
      return 0;
    }
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 5)
    {
      v17[0] = "size mismatch for operand/result_segment_size";
      v18 = 259;
      (*(*a1 + 16))(v20, a1, v17);
      if (v20[0])
      {
        mlir::InFlightDiagnostic::report(v20);
      }

      if (v28 == 1)
      {
        if (v27 != &v28)
        {
          free(v27);
        }

        v6 = __p;
        if (__p)
        {
          v7 = v26;
          v8 = __p;
          if (v26 != __p)
          {
            do
            {
              v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
            }

            while (v7 != v6);
            v8 = __p;
          }

          v26 = v6;
          operator delete(v8);
        }

        v9 = v23;
        if (v23)
        {
          v10 = v24;
          v11 = v23;
          if (v24 != v23)
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
            v11 = v23;
          }

          v24 = v9;
          operator delete(v11);
        }

        if (v21 != &v22)
        {
          free(v21);
        }
      }

      return 0;
    }

    v14 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v19);
    if (v15)
    {
      memmove(v3 + 2, v14, 4 * v15);
    }
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 4, 4) & 1) != 0);
}

uint64_t mlir::mps::SingleGateRNNOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 16), 4);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 8));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 4);
  }

  return result;
}

void mlir::mps::SingleGateRNNOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v53 = *MEMORY[0x1E69E9840];
  v42 = a4;
  v43 = a3;
  v40 = a8;
  v41 = a7;
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  if (a7)
  {
    mlir::OperationState::addOperands(a2, &v41, 1uLL);
  }

  if (v8)
  {
    mlir::OperationState::addOperands(a2, &v40, 1uLL);
    LODWORD(v8) = v40 != 0;
  }

  v14 = v41 != 0;
  v15 = *(a2 + 256);
  if (!v15)
  {
    v16 = operator new(0x20uLL);
    *v16 = 0u;
    v16[1] = 0u;
    *(a2 + 256) = v16;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::SingleGateRNNOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v15 = *(a2 + 256);
  }

  *(v15 + 16) = 0x100000001;
  *(v15 + 24) = v14;
  *(v15 + 28) = v8;
  v17 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v49 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v50 = v17;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v47 = &v49;
  v45 = a5;
  v19 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v19);
  v44 = &v45;
  v51 = &v45;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v44, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v51);
  v23 = ParametricStorageTypeImpl;
  v24 = *(a2 + 256);
  if (v24)
  {
    *v24 = ParametricStorageTypeImpl;
    if (!a6)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v25 = operator new(0x20uLL);
  *v25 = 0u;
  v25[1] = 0u;
  *(a2 + 256) = v25;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::SingleGateRNNOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = v23;
  if (a6)
  {
LABEL_15:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v22);
    v27 = *(a2 + 256);
    if (!v27)
    {
      v28 = operator new(0x20uLL);
      *v28 = 0u;
      v28[1] = 0u;
      *(a2 + 256) = v28;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::SingleGateRNNOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v27 = *(a2 + 256);
    }

    *(v27 + 8) = UnitAttr;
  }

LABEL_20:
  __src = v48;
  v47 = 0x200000000;
  v29 = *a1;
  v30 = *a2;
  mlir::ValueRange::ValueRange(&v51, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v49, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SingleGateRNNOp::inferReturnTypes(v29, v30, 1, v51, p_src, Dictionary, v33, v34, v49, v50, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v35);
  }

  v36 = __src;
  v37 = v47;
  v38 = *(a2 + 72);
  v39 = v38 + v47;
  if (v39 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v39, 8);
    LODWORD(v38) = *(a2 + 72);
  }

  if (v37)
  {
    memcpy((*(a2 + 64) + 8 * v38), v36, 8 * v37);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + v37;
  if (__src != v48)
  {
    free(__src);
  }
}

uint64_t mlir::mps::SingleGateRNNOp::verifyInvariantsImpl(mlir::Block ***this)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (v6)
  {
    v7 = v5[1];
    v72[0] = v2;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "activation", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v72))
    {
      return 0;
    }

    v72[0] = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "training", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v72))
    {
      return 0;
    }

    v69 = 0;
    v8 = *this;
    v9 = *(*this + 11);
    v10 = (v9 >> 23) & 1;
    v11 = LODWORD((*this)[2 * v10 + 10]);
    if ((v9 & 0x800000) != 0)
    {
      v12 = v8[9];
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = 0;
      if (v11)
      {
LABEL_6:
        v13 = 0;
        v14 = v12 + 24;
        while (1)
        {
          v15 = *this;
          v16 = *(*v14 + 8);
          v69 = v13 + 1;
          if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, (v16 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
          {
            return 0;
          }

          ++v13;
          v14 += 32;
          if (v11 == v13)
          {
            v8 = *this;
            v9 = *(*this + 11);
            v10 = (v9 >> 23) & 1;
            goto LABEL_32;
          }
        }
      }
    }

    LODWORD(v13) = 0;
LABEL_32:
    v26 = v9 & 0x800000;
    v27 = &v8[2 * v10];
    v28 = *(v27 + 21);
    if (v26)
    {
      v29 = v8[9];
      if (v28)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v29 = 0;
      if (v28)
      {
LABEL_34:
        v30 = *(v27 + 20);
        v31 = (v28 + v30) - v30;
        v32 = v29 + 32 * v30 + 24;
        while (1)
        {
          v33 = *this;
          v34 = *(*v32 + 8);
          v69 = v13 + 1;
          if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v33, (v34 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
          {
            return 0;
          }

          v32 += 32;
          LODWORD(v13) = v13 + 1;
          if (!--v31)
          {
            v8 = *this;
            v35 = *(*this + 11);
            v10 = (v35 >> 23) & 1;
            v26 = v35 & 0x800000;
            break;
          }
        }
      }
    }

    v36 = &v8[2 * v10];
    v37 = (*(v36 + 21) + *(v36 + 20));
    v38 = *(v36 + 22);
    if (v26)
    {
      v39 = v8[9];
      v40 = (v38 + v37) - v37;
      if (v40 > 1)
      {
LABEL_40:
        v41 = "operand group starting at #";
LABEL_41:
        v70[0] = v41;
        v71 = 259;
        mlir::OpState::emitOpError(this, v70, v72);
        mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v72, &v69);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, " requires 0 or 1 element, but found ");
        v68 = v40;
LABEL_42:
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v43, &v68);
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v72);
        return v17;
      }
    }

    else
    {
      v39 = 0;
      v40 = (v38 + v37) - v37;
      if (v40 > 1)
      {
        goto LABEL_40;
      }
    }

    if (v38)
    {
      v45 = v39 + 32 * v37 + 24;
      do
      {
        v46 = *this;
        v47 = *(*v45 + 8);
        v48 = v69++;
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v46, (v47 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v48))
        {
          return 0;
        }

        v45 += 32;
      }

      while (--v40);
    }

    ODSOperands = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 3u);
    v51 = v50;
    if (v50 >= 2)
    {
      v70[0] = "operand group starting at #";
      v71 = 259;
      mlir::OpState::emitOpError(this, v70, v72);
      mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v72, &v69);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " requires 0 or 1 element, but found ");
      v68 = v51;
      goto LABEL_42;
    }

    if (v50)
    {
      v53 = *(ODSOperands + 24);
      v54 = *this;
      v55 = *(v53 + 8);
      v56 = v69++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v54, (v55 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v56))
      {
        return 0;
      }
    }

    if (*(*this + 9))
    {
      v57 = (*this - 2);
    }

    else
    {
      v57 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 0);
    v59 = *this;
    v60 = *(NextResultAtOffset + 8);
    v69 = 1;
    v17 = 0;
    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v59, (v60 & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      v61 = *(*this + 9);
      if (*(*this + 9))
      {
        v62 = (*this - 2);
      }

      else
      {
        v62 = 0;
      }

      v63 = mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 1);
      v40 = v61 - 1;
      if ((v61 - 1) > 1)
      {
        v41 = "result group starting at #";
        goto LABEL_41;
      }

      if (v61 == 1)
      {
        return 1;
      }

      v64 = v63;
      v65 = 1;
      while (1)
      {
        v66 = mlir::detail::OpResultImpl::getNextResultAtOffset(v64, v65 - 1);
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(v66 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v65))
        {
          break;
        }

        if (v61 == ++v65)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else
  {
    v70[0] = "requires attribute 'activation'";
    v71 = 259;
    mlir::OpState::emitOpError(this, v70, v72);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v72);
    if (v72[0])
    {
      mlir::InFlightDiagnostic::report(v72);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v78;
        v20 = __p;
        if (v78 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v78 = v18;
        operator delete(v20);
      }

      v21 = v75;
      if (v75)
      {
        v22 = v76;
        v23 = v75;
        if (v76 != v75)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              operator delete[](v24);
            }
          }

          while (v22 != v21);
          v23 = v75;
        }

        v76 = v21;
        operator delete(v23);
      }

      if (v73 != &v74)
      {
        free(v73);
      }
    }
  }

  return v17;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SingleGateRNNOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.singlegate_rnn", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C600;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SinhOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.sinh", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C6A0;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SizeOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.size", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C740;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

void mlir::mps::SliceOp::build(uint64_t **a1, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v13 = a5;
  v14 = a4;
  v12 = a6;
  v9 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int &>(a1, *a2, &v14) - 16;
  v10 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int &>(a1, *a2, &v13) - 16;
  v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int &>(a1, *a2, &v12);
  mlir::mps::SliceOp::build(a1, a2, a3, v9, v10, (v11 - 16));
}

void mlir::mps::SliceOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v22 = a4;
  v23 = a3;
  v20 = a6;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  __src = v28;
  v27 = 0x200000000;
  v8 = *a1;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SliceOp::inferReturnTypes(v8, v11, v12, v25[0], v25[1], Dictionary, v13, v14, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v15);
  }

  v16 = __src;
  v17 = v27;
  v18 = *(a2 + 72);
  v19 = v18 + v27;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v28)
  {
    free(__src);
  }
}

BOOL mlir::mps::SliceOp::verifyInvariantsImpl(mlir::Block ***this)
{
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 11) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 15) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = (*this - 2);
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SliceOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.slice", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C7E0;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

void mlir::mps::SoftmaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v17, *(a2 + 224), *(a2 + 232));
  v23[0] = v18;
  v23[1] = v19;
  if (v19)
  {
    v7 = *(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v8 = v21;
    if (v21 >= HIDWORD(v21))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v22, v21 + 1, 8);
      v8 = v21;
    }

    *(__src + v8) = v7;
    v9 = v21 + 1;
    LODWORD(v21) = v9;
    v10 = __src;
    v11 = *(a2 + 72);
    v12 = v11 + v9;
    if (v12 > *(a2 + 76))
    {
LABEL_5:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v12, 8);
      LODWORD(v11) = *(a2 + 72);
    }
  }

  else
  {
    v13.var0.var0 = 1;
    if (!mlir::emitOptionalError<char const(&)[66]>(v5, v13, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1, v14);
    }

    v9 = v21;
    v10 = __src;
    v11 = *(a2 + 72);
    v12 = v11 + v21;
    if (v12 > *(a2 + 76))
    {
      goto LABEL_5;
    }
  }

  if (v9)
  {
    memcpy((*(a2 + 64) + 8 * v11), v10, 8 * v9);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v9;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SoftmaxOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.softmax", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C880;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SoftplusOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.softplus", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C920;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

BOOL mlir::mps::SoftplusParametricOp::verifyInvariantsImpl(mlir::Block ***this)
{
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps48(*this, (*(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps48(*this, (*(*((*this)[9] + 11) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 15) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = (*this - 2);
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps48(mlir::Block **ArgOperands, const void **a2, const void **a3, uint64_t a4, unsigned int a5)
{
  v153 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_2:
    if (*(v10 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

    goto LABEL_132;
  }

  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v10 + 1);
    v40 = v10[4];
    if (!v40)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v56 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v56 + 1);
    v40 = v56[4];
    if (!v40)
    {
      goto LABEL_66;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 == &v39[2 * v40] || *v41 != v38)
  {
LABEL_66:
    v141 = a2;
    v142 = 0;
    v57 = mlir::CallOpInterface::getArgOperands(&v141);
    v10 = *a2;
    if (!v57)
    {
      goto LABEL_2;
    }

    goto LABEL_69;
  }

  v58 = v41[1];
  v141 = a2;
  v142 = v58;
  v59 = mlir::CallOpInterface::getArgOperands(&v141);
  v10 = *a2;
  if (!v59)
  {
    goto LABEL_2;
  }

LABEL_69:
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v10 + 1);
    v62 = v10[4];
    if (!v62)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v127 = v10;
    mlir::arith::ExtUIOp::fold();
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v127 + 1);
    v62 = v127[4];
    if (!v62)
    {
      goto LABEL_100;
    }
  }

  v63 = v61;
  v64 = v62;
  do
  {
    v65 = v64 >> 1;
    v66 = &v63[2 * (v64 >> 1)];
    v68 = *v66;
    v67 = v66 + 2;
    v64 += ~(v64 >> 1);
    if (v68 < v60)
    {
      v63 = v67;
    }

    else
    {
      v64 = v65;
    }
  }

  while (v64);
  if (v63 == &v61[2 * v62] || *v63 != v60)
  {
LABEL_100:
    v128 = a2;
    v129 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v128);
    v10 = *a2;
    if (v71)
    {
      goto LABEL_2;
    }

    goto LABEL_103;
  }

  v72 = v63[1];
  v128 = a2;
  v129 = v72;
  mlir::CallableOpInterface::getArgAttrsAttr(&v128);
  v10 = *a2;
  if (v73)
  {
    goto LABEL_2;
  }

LABEL_103:
  {
    v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v75 = *(v10 + 1);
    v76 = v10[4];
    if (!v76)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v84 = v10;
    mlir::arith::ExtUIOp::fold();
    v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v75 = *(v84 + 1);
    v76 = v84[4];
    if (!v76)
    {
      goto LABEL_116;
    }
  }

  v77 = v75;
  v78 = v76;
  do
  {
    v79 = v78 >> 1;
    v80 = &v77[2 * (v78 >> 1)];
    v82 = *v80;
    v81 = v80 + 2;
    v78 += ~(v78 >> 1);
    if (v82 < v74)
    {
      v77 = v81;
    }

    else
    {
      v78 = v79;
    }
  }

  while (v78);
  if (v77 != &v75[2 * v76] && *v77 == v74)
  {
    v85 = v77[1];
    goto LABEL_118;
  }

LABEL_116:
  v85 = 0;
LABEL_118:
  v138 = a2;
  v139 = v85;
  isSplat = mlir::ElementsAttr::isSplat(&v138);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v10 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

LABEL_132:
  {
    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v87 = *(v10 + 1);
    v88 = v10[4];
    if (!v88)
    {
      goto LABEL_144;
    }
  }

  else
  {
    v95 = v10;
    mlir::arith::ExtUIOp::fold();
    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v87 = *(v95 + 1);
    v88 = v95[4];
    if (!v88)
    {
      goto LABEL_144;
    }
  }

  v89 = v87;
  v90 = v88;
  do
  {
    v91 = v90 >> 1;
    v92 = &v89[2 * (v90 >> 1)];
    v94 = *v92;
    v93 = v92 + 2;
    v90 += ~(v90 >> 1);
    if (v94 < v86)
    {
      v89 = v93;
    }

    else
    {
      v90 = v91;
    }
  }

  while (v90);
  if (v89 == &v87[2 * v88] || *v89 != v86)
  {
LABEL_144:
    v135 = a2;
    v136 = 0;
    v96 = mlir::CallOpInterface::getArgOperands(&v135);
    v10 = *a2;
    if (!v96)
    {
      goto LABEL_3;
    }

    goto LABEL_147;
  }

  v97 = v89[1];
  v135 = a2;
  v136 = v97;
  v98 = mlir::CallOpInterface::getArgOperands(&v135);
  v10 = *a2;
  if (!v98)
  {
    goto LABEL_3;
  }

LABEL_147:
  {
    v99 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v100 = *(v10 + 1);
    v101 = v10[4];
    if (!v101)
    {
      goto LABEL_159;
    }
  }

  else
  {
    v108 = v10;
    mlir::arith::ExtUIOp::fold();
    v99 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v100 = *(v108 + 1);
    v101 = v108[4];
    if (!v101)
    {
      goto LABEL_159;
    }
  }

  v102 = v100;
  v103 = v101;
  do
  {
    v104 = v103 >> 1;
    v105 = &v102[2 * (v103 >> 1)];
    v107 = *v105;
    v106 = v105 + 2;
    v103 += ~(v103 >> 1);
    if (v107 < v99)
    {
      v102 = v106;
    }

    else
    {
      v103 = v104;
    }
  }

  while (v103);
  if (v102 == &v100[2 * v101] || *v102 != v99)
  {
LABEL_159:
    v133 = a2;
    v134 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v133);
    v10 = *a2;
    if (v109 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_162;
  }

  v110 = v102[1];
  v133 = a2;
  v134 = v110;
  mlir::CallableOpInterface::getArgAttrsAttr(&v133);
  v10 = *a2;
  if (v111 != 1)
  {
    goto LABEL_3;
  }

LABEL_162:
  {
    v121 = v10;
    mlir::arith::ExtUIOp::fold();
    v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v113 = *(v121 + 1);
    v114 = v121[4];
    if (v114)
    {
      goto LABEL_164;
    }

LABEL_174:
    v122 = 0;
    goto LABEL_176;
  }

  v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v113 = *(v10 + 1);
  v114 = v10[4];
  if (!v114)
  {
    goto LABEL_174;
  }

LABEL_164:
  v115 = v113;
  v116 = v114;
  do
  {
    v117 = v116 >> 1;
    v118 = &v115[2 * (v116 >> 1)];
    v120 = *v118;
    v119 = v118 + 2;
    v116 += ~(v116 >> 1);
    if (v120 < v112)
    {
      v115 = v119;
    }

    else
    {
      v116 = v117;
    }
  }

  while (v116);
  if (v115 == &v113[2 * v114] || *v115 != v112)
  {
    goto LABEL_174;
  }

  v122 = v115[1];
LABEL_176:
  v132[0] = a2;
  v132[1] = v122;
  isSplat = mlir::ElementsAttr::isSplat(v132);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v10 = *a2;
LABEL_3:
  if (*(v10 + 17) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v48 = *(v10 + 1);
      v49 = v10[4];
      if (!v49)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v69 = v10;
      mlir::arith::ExtUIOp::fold();
      v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v48 = *(v69 + 1);
      v49 = v69[4];
      if (!v49)
      {
        goto LABEL_81;
      }
    }

    v50 = v48;
    v51 = v49;
    do
    {
      v52 = v51 >> 1;
      v53 = &v50[2 * (v51 >> 1)];
      v55 = *v53;
      v54 = v53 + 2;
      v51 += ~(v51 >> 1);
      if (v55 < v47)
      {
        v50 = v54;
      }

      else
      {
        v51 = v52;
      }
    }

    while (v51);
    if (v50 != &v48[2 * v49] && *v50 == v47)
    {
      v70 = v50[1];
      goto LABEL_83;
    }

LABEL_81:
    v70 = 0;
LABEL_83:
    v131[0] = a2;
    v131[1] = v70;
    isSplat = mlir::ElementsAttr::isSplat(v131);
    if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_4;
    }

    return 1;
  }

LABEL_4:
  v130 = 261;
  v128 = a3;
  v129 = a4;
  mlir::Operation::emitOpError(ArgOperands, &v128, &v141);
  if (v141)
  {
    LODWORD(v138) = 3;
    v139 = " #";
    v140 = 2;
    v11 = &v138;
    v12 = v143;
    if (v144 >= v145)
    {
      if (v143 <= &v138 && v143 + 24 * v144 > &v138)
      {
        v83 = &v138 - v143;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
        v12 = v143;
        v11 = (v143 + v83);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
        v11 = &v138;
        v12 = v143;
      }
    }

    v13 = &v12[24 * v144];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    v15 = ++v144;
    if (v141)
    {
      LODWORD(v138) = 5;
      v139 = a5;
      v16 = &v138;
      v17 = v143;
      if (v15 >= v145)
      {
        if (v143 <= &v138 && v143 + 24 * v15 > &v138)
        {
          v124 = &v138 - v143;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v15 + 1, 24);
          v17 = v143;
          v16 = (v143 + v124);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v15 + 1, 24);
          v16 = &v138;
          v17 = v143;
        }
      }

      v18 = &v17[24 * v144];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      v20 = ++v144;
      if (v141)
      {
        LODWORD(v138) = 3;
        v139 = " must be 0D tensor of mps native type values or 1D tensor of mps native type values or unranked tensor of mps native type values, but got ";
        v140 = 138;
        v21 = &v138;
        v22 = v143;
        if (v20 >= v145)
        {
          if (v143 <= &v138 && v143 + 24 * v20 > &v138)
          {
            v125 = &v138 - v143;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v20 + 1, 24);
            v22 = v143;
            v21 = (v143 + v125);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v20 + 1, 24);
            v21 = &v138;
            v22 = v143;
          }
        }

        v23 = &v22[24 * v144];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        ++v144;
        if (v141)
        {
          v25 = &v138;
          mlir::DiagnosticArgument::DiagnosticArgument(&v138, a2);
          v26 = v143;
          if (v144 >= v145)
          {
            if (v143 <= &v138 && v143 + 24 * v144 > &v138)
            {
              v126 = &v138 - v143;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
              v26 = v143;
              v25 = (v143 + v126);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
              v25 = &v138;
              v26 = v143;
            }
          }

          v27 = &v26[24 * v144];
          v28 = *v25;
          *(v27 + 2) = v25[2];
          *v27 = v28;
          ++v144;
        }
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
  if (v141)
  {
    mlir::InFlightDiagnostic::report(&v141);
  }

  if (v152 == 1)
  {
    if (v151 != &v152)
    {
      free(v151);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v150;
      v32 = __p;
      if (v150 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v150 = v30;
      operator delete(v32);
    }

    v33 = v147;
    if (v147)
    {
      v34 = v148;
      v35 = v147;
      if (v148 != v147)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            operator delete[](v36);
          }
        }

        while (v34 != v33);
        v35 = v147;
      }

      v148 = v33;
      operator delete(v35);
    }

    if (v143 != v146)
    {
      free(v143);
    }
  }

  return v29;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SoftplusParametricOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.softplus_parametric", 23, a3, v10, a4, a5);
  *v11 = &unk_1F5B2C9C0;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SoftsignOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.softsign", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CA60;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::mps::SortOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "descending";
  v56.var1 = 10;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 55;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::SortOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "descending", 0xAuLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::SortOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  a2[32] = v6;
  a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SortOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SortOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  a2[35] = &v8;
  a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SortOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SortOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  a2[37] = &v7;
  {
    mlir::mps::SortOp::readProperties();
  }

  a2[33] = mlir::detail::TypeIDResolver<mlir::mps::detail::SortOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, a2[32]);
}

void mlir::mps::SortOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v27 = a3;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  if (a5)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v8);
    v10 = *(a2 + 256);
    if (!v10)
    {
      v11 = operator new(8uLL);
      *v11 = 0;
      *(a2 + 256) = v11;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SortOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SortOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SortOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SortOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::SortOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SortOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v10 = *(a2 + 256);
    }

    *v10 = UnitAttr;
  }

  __src = v32;
  v31 = 0x200000000;
  v12 = *a1;
  mlir::ValueRange::ValueRange(v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SortOp::inferReturnTypes(v12, v14, v15, v29[0], v29[1], v16, v17, v18, v24, v25, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v19);
  }

  v20 = __src;
  v21 = v31;
  v22 = *(a2 + 72);
  v23 = v22 + v31;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v32)
  {
    free(__src);
  }
}

BOOL mlir::mps::SortOp::verifyInvariantsImpl(mlir::Block ***this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v10 = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "descending", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v4 = *(*this + 9) ? (*this - 2) : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v6 = (*this - 2);
  }

  else
  {
    v6 = 0;
  }

  v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u);
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SortOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.sort", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CB00;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

BOOL mlir::mps::SpaceToBatchOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  a2[32] = v6;
  a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  a2[35] = &v8;
  a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  a2[37] = &v7;
  {
    mlir::mps::SpaceToBatchOp::readProperties();
  }

  a2[33] = mlir::detail::TypeIDResolver<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, a2[32]);
}

void mlir::mps::SpaceToBatchOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v28 = a4;
  v29 = a3;
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  if (a7)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v10);
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v32;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v32;
      {
        mlir::mps::SpaceToBatchOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    *v12 = UnitAttr;
  }

  v32 = v34;
  v33 = 0x200000000;
  v14 = *a2;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = mlir::ValueRange::ValueRange(&v30, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::SpaceToBatchOp::inferReturnTypes(v16, v14, 1, v31[0], v31[1], v17, v18, v19, v24, v25, &v32))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v20);
  }

  v21 = v32;
  v22 = v33;
  v23 = *(a2 + 72);
  if (v23 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23 + v33, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (v32 != v34)
  {
    free(v32);
  }
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SpaceToBatchOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.space_to_batch", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CBA0;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

BOOL mlir::mps::SpaceToDepth2DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::SpaceToDepth2DOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1);
    }
  }

  return 0;
}

void mlir::mps::SpaceToDepth2DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v34 = a4;
  v35 = a3;
  v32 = a6;
  v33 = a5;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a7);
  v15 = IntegerAttr;
  v16 = *(a2 + 256);
  if (v16)
  {
    *v16 = IntegerAttr;
    if (!a8)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v17 = operator new(0x10uLL);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + 256) = v17;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::SpaceToDepth2DOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = v15;
  if (a8)
  {
LABEL_7:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v14);
    v19 = *(a2 + 256);
    if (!v19)
    {
      v20 = operator new(0x10uLL);
      *v20 = 0;
      v20[1] = 0;
      *(a2 + 256) = v20;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::SpaceToDepth2DOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v19 = *(a2 + 256);
    }

    *(v19 + 8) = UnitAttr;
  }

LABEL_12:
  __src = v40;
  v39 = 0x200000000;
  v21 = *a1;
  v22 = *a2;
  mlir::ValueRange::ValueRange(v37, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v25 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v36, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SpaceToDepth2DOp::inferReturnTypes(v21, v22, 1, v37[0], v37[1], Dictionary, v25, v26, v36[0], v36[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v27);
  }

  v28 = __src;
  v29 = v39;
  v30 = *(a2 + 72);
  v31 = v30 + v39;
  if (v31 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v31, 8);
    LODWORD(v30) = *(a2 + 72);
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v30), v28, 8 * v29);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + v29;
  if (__src != v40)
  {
    free(__src);
  }
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SpaceToDepth2DOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.space_to_depth_2d", 21, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CC40;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::mps::SplitOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "num_splits";
  v56.var1 = 10;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 55;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::SplitOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "num_splits", 0xAuLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::SplitOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::SplitOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256));
}

void mlir::mps::SplitOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a3;
  v23 = a5;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v23, 1uLL);
  }

  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      v11 = operator new(8uLL);
      *v11 = 0;
      *(a2 + 256) = v11;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::SplitOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v10 = *(a2 + 256);
    }

    *v10 = a6;
  }

  __src = v30;
  v29 = 0x200000000;
  v12 = *a1;
  v13 = *a2;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v26, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::SplitOp::inferReturnTypes(v12, v13, 1, v27[0], v27[1], Dictionary, v16, v17, v26[0], v26[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v18);
  }

  v19 = __src;
  v20 = v29;
  v21 = *(a2 + 72);
  v22 = v21 + v29;
  if (v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v22, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v20);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::SplitOp::verifyInvariantsImpl(mlir::Block ***this)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v46[0] = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v3, "num_splits", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -2;
    goto LABEL_6;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 2;
  if ((v5 - 2) <= 1)
  {
    if (v5 == 2)
    {
LABEL_34:
      v33 = *(v4 + 9);
      v34 = (v4 - 2);
      if (v33)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if (!v33)
      {
        return 1;
      }

      v36 = 0;
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v36);
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v36))
        {
          break;
        }

        ++v36;
        result = 1;
        if (v33 == v36)
        {
          return result;
        }
      }
    }

    else
    {
      v31 = v4[9] + 88;
      v32 = 2;
      while (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*v31 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v32))
      {
        ++v32;
        v31 += 32;
        if (v5 == v32)
        {
          v4 = *this;
          goto LABEL_34;
        }
      }
    }

    return 0;
  }

LABEL_6:
  v41 = "operand group starting at #";
  v42 = 259;
  mlir::OpState::emitOpError(this, &v41, v46);
  if (v46[0])
  {
    v43 = 5;
    v44 = 2;
    v7 = &v43;
    v8 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v38 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v8 = v47;
        v7 = (v47 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v7 = &v43;
        v8 = v47;
      }
    }

    v9 = &v8[24 * v48];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v48;
    if (v46[0])
    {
      v43 = 3;
      v44 = " requires 0 or 1 element, but found ";
      v45 = 36;
      v12 = &v43;
      v13 = v47;
      if (v11 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v11 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v11 + 1, 24);
          v13 = v47;
          v12 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v11 + 1, 24);
          v12 = &v43;
          v13 = v47;
        }
      }

      v14 = &v13[24 * v48];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v48;
      if (v46[0])
      {
        v43 = 5;
        v44 = v6;
        v17 = &v43;
        v18 = v47;
        if (v16 >= v49)
        {
          if (v47 <= &v43 && v47 + 24 * v16 > &v43)
          {
            v40 = &v43 - v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v16 + 1, 24);
            v18 = v47;
            v17 = (v47 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v16 + 1, 24);
            v17 = &v43;
            v18 = v47;
          }
        }

        v19 = &v18[24 * v48];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v48;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
  v22 = result;
  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
    result = v22;
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
      result = v22;
    }

    v23 = __p;
    if (__p)
    {
      v24 = v54;
      v25 = __p;
      if (v54 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v54 = v23;
      operator delete(v25);
      result = v22;
    }

    v26 = v51;
    if (v51)
    {
      v27 = v52;
      v28 = v51;
      if (v52 != v51)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v51;
      }

      v52 = v26;
      operator delete(v28);
      result = v22;
    }

    if (v47 != v50)
    {
      free(v47);
      return v22;
    }
  }

  return result;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SplitOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.split", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CCE0;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SquareOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.square", 10, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CD80;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SquareRootOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.square_root", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CE20;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

void mlir::mps::SqueezeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v20 = a4;
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v20, 1uLL);
  }

  __src = v26;
  v25 = 0x200000000;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v8 = mlir::ValueRange::ValueRange(&v22, *(a2 + 224), *(a2 + 232));
  mlir::mps::SqueezeOp::inferReturnTypes(v8, v6, 1, v23[0], v23[1], v9, v10, v11, v18, v19, &__src);
  if ((v13 & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v12);
  }

  v14 = __src;
  v15 = v25;
  v16 = *(a2 + 72);
  v17 = v16 + v25;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v26)
  {
    free(__src);
  }
}

void mlir::mps::SqueezeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a6 + v11, 16);
    LODWORD(v11) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v29;
  v28 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::ValueRange::ValueRange(&v26, *(a2 + 224), *(a2 + 232));
  mlir::mps::SqueezeOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v24, v25, &__src);
  if ((v19 & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v18);
  }

  v20 = __src;
  v21 = v28;
  v22 = *(a2 + 72);
  v23 = v22 + v28;
  if (v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v29)
  {
    free(__src);
  }
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::SqueezeOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.squeeze", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CEC0;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(a1 + 72) = v3[3];
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 88), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 88), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::StencilOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v78 = v6;
  if (!v6)
  {
    a3(&v82, a4);
    if (v82)
    {
      LODWORD(v79) = 3;
      v80 = "expected DictionaryAttr to set properties";
      v81 = 41;
      v16 = &v79;
      v17 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v79 && v84 + 24 * v85 > &v79)
        {
          v71 = &v79 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v17 = v84;
          v16 = (v84 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v16 = &v79;
          v17 = v84;
        }
      }

      v18 = &v17[24 * v85];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v85;
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }
    }

    if (v93 != 1)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v91;
      v22 = __p;
      if (v91 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v91 = v20;
      operator delete(v22);
    }

    v23 = v88;
    if (!v88)
    {
      goto LABEL_77;
    }

    v24 = v89;
    v25 = v88;
    if (v89 == v88)
    {
LABEL_76:
      v89 = v23;
      operator delete(v25);
LABEL_77:
      if (v84 != v87)
      {
        free(v84);
      }

      return 0;
    }

    do
    {
      v27 = *--v24;
      v26 = v27;
      *v24 = 0;
      if (v27)
      {
        operator delete[](v26);
      }
    }

    while (v24 != v23);
LABEL_75:
    v25 = v88;
    goto LABEL_76;
  }

  v95.var0 = "dilation_rates";
  v95.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v78, v95);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::DenseIntElementsAttr::classof(v8))
  {
    a3(&v82, a4);
    if (v82)
    {
      LODWORD(v79) = 3;
      v81 = 59;
      v28 = &v79;
      v29 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v79 && v84 + 24 * v85 > &v79)
        {
          v72 = &v79 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v29 = v84;
          v28 = (v84 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v28 = &v79;
          v29 = v84;
        }
      }

      v30 = &v29[24 * v85];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v85;
      if (v82)
      {
        v32 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v9);
        v33 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v79 && v84 + 24 * v85 > &v79)
          {
            v74 = &v79 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v33 = v84;
            v32 = (v84 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v32 = &v79;
            v33 = v84;
          }
        }

        v34 = &v33[24 * v85];
        v35 = *v32;
        *(v34 + 2) = v32[2];
        *v34 = v35;
        ++v85;
        if (v82)
        {
          mlir::InFlightDiagnostic::report(&v82);
        }
      }
    }

    if ((v93 & 1) == 0)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v91;
      v38 = __p;
      if (v91 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v91 = v36;
      operator delete(v38);
    }

    v23 = v88;
    if (!v88)
    {
      goto LABEL_77;
    }

    v39 = v89;
    v25 = v88;
    if (v89 == v88)
    {
      goto LABEL_76;
    }

    do
    {
      v41 = *--v39;
      v40 = v41;
      *v39 = 0;
      if (v41)
      {
        operator delete[](v40);
      }
    }

    while (v39 != v23);
    goto LABEL_75;
  }

  *a1 = v9;
LABEL_8:
  v96.var0 = "explicit_padding";
  v96.var1 = 16;
  v10 = mlir::DictionaryAttr::get(&v78, v96);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::DenseIntElementsAttr::classof(v10))
  {
    a3(&v82, a4);
    if (v82)
    {
      LODWORD(v79) = 3;
      v81 = 61;
      v42 = &v79;
      v43 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v79 && v84 + 24 * v85 > &v79)
        {
          v73 = &v79 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v43 = v84;
          v42 = (v84 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v42 = &v79;
          v43 = v84;
        }
      }

      v44 = &v43[24 * v85];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v85;
      if (v82)
      {
        v46 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v11);
        v47 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v79 && v84 + 24 * v85 > &v79)
          {
            v76 = &v79 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v47 = v84;
            v46 = (v84 + v76);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v46 = &v79;
            v47 = v84;
          }
        }

        v48 = &v47[24 * v85];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v85;
        if (v82)
        {
          mlir::InFlightDiagnostic::report(&v82);
        }
      }
    }

    if ((v93 & 1) == 0)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v91;
      v52 = __p;
      if (v91 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v91 = v50;
      operator delete(v52);
    }

    v23 = v88;
    if (!v88)
    {
      goto LABEL_77;
    }

    v53 = v89;
    v25 = v88;
    if (v89 == v88)
    {
      goto LABEL_76;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        operator delete[](v54);
      }
    }

    while (v53 != v23);
    goto LABEL_75;
  }

  a1[1] = v11;
LABEL_11:
  v97.var0 = "offsets";
  v97.var1 = 7;
  v12 = mlir::DictionaryAttr::get(&v78, v97);
  if (v12)
  {
    v13 = v12;
    if (!mlir::DenseIntElementsAttr::classof(v12))
    {
      a3(&v82, a4);
      if (v82)
      {
        LODWORD(v79) = 3;
        v81 = 52;
        v56 = &v79;
        v57 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v79 && v84 + 24 * v85 > &v79)
          {
            v75 = &v79 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v57 = v84;
            v56 = (v84 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v56 = &v79;
            v57 = v84;
          }
        }

        v58 = &v57[24 * v85];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v85;
        if (v82)
        {
          v60 = &v79;
          mlir::DiagnosticArgument::DiagnosticArgument(&v79, v13);
          v61 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v79 && v84 + 24 * v85 > &v79)
            {
              v77 = &v79 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v61 = v84;
              v60 = (v84 + v77);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v60 = &v79;
              v61 = v84;
            }
          }

          v62 = &v61[24 * v85];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v85;
          if (v82)
          {
            mlir::InFlightDiagnostic::report(&v82);
          }
        }
      }

      if (v93 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v83);
      }

      return 0;
    }

    a1[2] = v13;
  }

  v98.var0 = "paddingConstant";
  v98.var1 = 15;
  v14 = mlir::DictionaryAttr::get(&v78, v98);
  v79 = v14;
  if (!v14)
  {
LABEL_88:
    v99.var0 = "paddingMode";
    v99.var1 = 11;
    v64 = mlir::DictionaryAttr::get(&v78, v99);
    v79 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
      {
        a3(&v82, a4);
        goto LABEL_100;
      }

      a1[4] = v64;
    }

    v100.var0 = "padding_style";
    v100.var1 = 13;
    v65 = mlir::DictionaryAttr::get(&v78, v100);
    v79 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v82, a4);
LABEL_99:
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v82, v66);
        goto LABEL_100;
      }

      a1[5] = v65;
    }

    v101.var0 = "reductionMode";
    v101.var1 = 13;
    v67 = mlir::DictionaryAttr::get(&v78, v101);
    v79 = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
      {
        a3(&v82, a4);
        goto LABEL_99;
      }

      a1[6] = v67;
    }

    v102.var0 = "strides";
    v102.var1 = 7;
    v69 = mlir::DictionaryAttr::get(&v78, v102);
    v79 = v69;
    if (v69)
    {
      v70 = v69;
      if (!mlir::DenseIntElementsAttr::classof(v69))
      {
        a3(&v82, a4);
        goto LABEL_100;
      }

      a1[7] = v70;
    }

    return 1;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[3] = v14;
    goto LABEL_88;
  }

  a3(&v82, a4);
LABEL_100:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v15, &v79);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
  return 0;
}

uint64_t mlir::mps::StencilOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v65[6] = *MEMORY[0x1E69E9840];
  v62 = a1;
  v63 = v65;
  v64 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v62, "dilation_rates", 0xEuLL, *a2);
  v5 = v64;
  if (v64 >= HIDWORD(v64))
  {
    v46 = NamedAttr;
    v47 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
    v4 = v47;
    NamedAttr = v46;
    v5 = v64;
  }

  v6 = (v63 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v64 + 1;
  LODWORD(v64) = v64 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v62, "explicit_padding", 0x10uLL, v8);
    v11 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v48 = v9;
      v49 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v10 = v49;
      v9 = v48;
      v11 = v64;
    }

    v12 = (v63 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v62, "offsets", 7uLL, v13);
    v16 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v50 = v14;
      v51 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v15 = v51;
      v14 = v50;
      v16 = v64;
    }

    v17 = (v63 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v62, "paddingConstant", 0xFuLL, v18);
    v21 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v52 = v19;
      v53 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v20 = v53;
      v19 = v52;
      v21 = v64;
    }

    v22 = (v63 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v62, "paddingMode", 0xBuLL, v23);
    v26 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v54 = v24;
      v55 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v25 = v55;
      v24 = v54;
      v26 = v64;
    }

    v27 = (v63 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v62, "padding_style", 0xDuLL, v28);
    v31 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v56 = v29;
      v57 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v30 = v57;
      v29 = v56;
      v31 = v64;
    }

    v32 = (v63 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v62, "reductionMode", 0xDuLL, v33);
    v36 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v58 = v34;
      v59 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v35 = v59;
      v34 = v58;
      v36 = v64;
    }

    v37 = (v63 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v62, "strides", 7uLL, v38);
    v41 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v60 = v39;
      v61 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v40 = v61;
      v39 = v60;
      v41 = v64;
    }

    v42 = (v63 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v43 = v63;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v63 == v65)
    {
      return DictionaryAttr;
    }

    goto LABEL_36;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v62, v63, v7);
  v43 = v63;
  if (v63 != v65)
  {
LABEL_36:
    free(v43);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::StencilOp::computePropertiesHash(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v28 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v26 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v24 = v19;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v33 = 0xFF51AFD7ED558CCDLL;
  v29[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v29[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v29, 0, v30, v31, &v28, &v27, &v26, &v25, &v24, &v23);
}

uint64_t mlir::mps::StencilOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 13)
  {
    switch(__n)
    {
      case 16:
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[1];
        }

        break;
      case 15:
        if (!memcmp(__s1, "paddingConstant", 0xFuLL))
        {
          return a2[3];
        }

        break;
      case 14:
        if (*__s1 != 0x6E6F6974616C6964 || *(__s1 + 6) != 0x73657461725F6E6FLL)
        {
          return 0;
        }

        return *a2;
      default:
        return 0;
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "offsets", 7uLL))
    {
      return a2[2];
    }

    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 11)
  {
    if (!memcmp(__s1, "paddingMode", 0xBuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (!memcmp(__s1, "padding_style", 0xDuLL))
  {
    return a2[5];
  }

  if (*__s1 != 0x6F69746375646572 || *(__s1 + 5) != 0x65646F4D6E6F6974)
  {
    return 0;
  }

  return a2[6];
}

uint64_t *mlir::mps::StencilOp::setInherentAttr(uint64_t *result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 13)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 15)
    {
      result = memcmp(__s1, "paddingConstant", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[3] = v14;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }

    else if (a3 == 14 && *__s1 == 0x6E6F6974616C6964 && *(__s1 + 6) == 0x73657461725F6E6FLL)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        *v5 = v9;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "offsets", 7uLL);
        if (result)
        {
          result = memcmp(__s1, "strides", 7uLL);
          if (!result)
          {
            if (a4)
            {
              result = mlir::DenseIntElementsAttr::classof(a4);
              if (result)
              {
                v11 = a4;
              }

              else
              {
                v11 = 0;
              }

              v5[7] = v11;
            }

            else
            {
              v5[7] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[2] = v15;
        }

        else
        {
          v5[2] = 0;
        }

        break;
      case 11:
        result = memcmp(__s1, "paddingMode", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[4] = v13;
          }

          else
          {
            v5[4] = 0;
          }
        }

        break;
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (result)
        {
          if (*__s1 == 0x6F69746375646572 && *(__s1 + 5) == 0x65646F4D6E6F6974)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
              {
                v17 = a4;
              }

              else
              {
                v17 = 0;
              }

              v5[6] = v17;
            }

            else
            {
              v5[6] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
          {
            v16 = a4;
          }

          else
          {
            v16 = 0;
          }

          v5[5] = v16;
        }

        else
        {
          v5[5] = 0;
        }

        break;
    }
  }

  return result;
}

void mlir::mps::StencilOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "offsets", 7uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "paddingConstant", 0xFuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "paddingMode", 0xBuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "reductionMode", 0xDuLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {

    mlir::NamedAttrList::append(a3, "strides", 7uLL, v11);
  }
}

BOOL mlir::mps::StencilOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v8, "dilation_rates", 0xE, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v9, "explicit_padding", 0x10, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(v10, "offsets", 7, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "paddingConstant", 0xF, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(v12, "paddingMode", 0xB, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v13, "padding_style", 0xD, a3, a4))
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(v14, "reductionMode", 0xD, a3, a4))
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v15, "strides", 7, a3, a4))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(const void **a1, const void **a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = v10[1];
      v13 = *(v10 + 4);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v57 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = v57[1];
      v13 = *(v57 + 4);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      v62 = a1;
      v63 = v21;
      Type = mlir::ElementsAttr::getType(&v62);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v62 = a1;
    v63 = 0;
    Type = mlir::ElementsAttr::getType(&v62);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v22;
      v58 = Type;
      mlir::arith::ExtUIOp::fold();
      Type = v58;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v56 + 8);
      v25 = *(v56 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v66 = Type;
    v67 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v66);
    v78 = 4;
    if (v34 == 1 && *ArgAttrsAttr == v78)
    {
      v59 = a1;
      v60[0] = mlir::ArrayAttr::getValue(&v59);
      v60[1] = v35;
      isSplat = mlir::ElementsAttr::isSplat(v60);
      if (mlir::Type::isSignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

  a4(&v66, a5);
  if (v66)
  {
    LODWORD(v62) = 3;
    v63 = "attribute '";
    v64 = 11;
    v37 = &v62;
    v38 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v62 && v68 + 24 * v69 > &v62)
      {
        v54 = &v62 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v38 = v68;
        v37 = (v68 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v37 = &v62;
        v38 = v68;
      }
    }

    v39 = &v38[24 * v69];
    v40 = *v37;
    *(v39 + 2) = v37[2];
    *v39 = v40;
    ++v69;
    if (v66)
    {
      v65 = 261;
      v62 = a2;
      v63 = a3;
      mlir::Diagnostic::operator<<(&v67, &v62);
      if (v66)
      {
        LODWORD(v62) = 3;
        v63 = "' failed to satisfy constraint: si64 elements attribute of shape {4}";
        v64 = 68;
        v41 = &v62;
        v42 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v62 && v68 + 24 * v69 > &v62)
          {
            v55 = &v62 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v42 = v68;
            v41 = (v68 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v41 = &v62;
            v42 = v68;
          }
        }

        v43 = &v42[24 * v69];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        ++v69;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v75;
      v47 = __p;
      if (v75 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v75 = v45;
      operator delete(v47);
    }

    v48 = v72;
    if (v72)
    {
      v49 = v73;
      v50 = v72;
      if (v73 != v72)
      {
        do
        {
          v52 = *--v49;
          v51 = v52;
          *v49 = 0;
          if (v52)
          {
            operator delete[](v51);
          }
        }

        while (v49 != v48);
        v50 = v72;
      }

      v73 = v48;
      operator delete(v50);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v36;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(uint64_t a1, const void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid StencilPaddingMode";
        v29 = 56;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(uint64_t a1, const void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid ReductionMode";
        v29 = 51;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::mps::StencilOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x40uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::StencilOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::StencilPaddingModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::ReductionModeAttr>(a1, v3 + 6))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7);
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::StencilPaddingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::StencilPaddingModeAttr]";
  v38 = 83;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 = (v37 + v11 + v12);
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::ReductionModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::ReductionModeAttr]";
  v38 = 78;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 = (v37 + v11 + v12);
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

void mlir::mps::StencilOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v76 = *MEMORY[0x1E69E9840];
  v65 = a4;
  v66 = a3;
  mlir::OperationState::addOperands(a2, &v66, 1uLL);
  mlir::OperationState::addOperands(a2, &v65, 1uLL);
  if (a5)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      v20 = operator new(0x40uLL);
      *v20 = 0u;
      v20[1] = 0u;
      v20[2] = 0u;
      v20[3] = 0u;
      *(a2 + 256) = v20;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::StencilOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v19 = *(a2 + 256);
    }

    *(v19 + 16) = a5;
  }

  v21 = *(a2 + 256);
  if (v21)
  {
    v22 = a9;
    *(v21 + 56) = a6;
    v23 = *(a2 + 256);
    if (v23)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v25 = operator new(0x40uLL);
    *v25 = 0u;
    v25[1] = 0u;
    v25[2] = 0u;
    v25[3] = 0u;
    *(a2 + 256) = v25;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StencilOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v22 = a9;
    *(*(a2 + 256) + 56) = a6;
    v23 = *(a2 + 256);
    if (v23)
    {
LABEL_9:
      v24 = a10;
      *v23 = a7;
      if (!a8)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  v26 = operator new(0x40uLL);
  *v26 = 0u;
  v26[1] = 0u;
  v26[2] = 0u;
  v26[3] = 0u;
  *(a2 + 256) = v26;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::StencilOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v24 = a10;
  **(a2 + 256) = a7;
  if (a8)
  {
LABEL_17:
    v27 = *(a2 + 256);
    if (!v27)
    {
      v28 = operator new(0x40uLL);
      *v28 = 0u;
      v28[1] = 0u;
      v28[2] = 0u;
      v28[3] = 0u;
      *(a2 + 256) = v28;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::StencilOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v27 = *(a2 + 256);
    }

    *(v27 + 8) = a8;
  }

LABEL_22:
  F32Type = mlir::Builder::getF32Type(a1, v18);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, v22);
  v31 = *(a2 + 256);
  if (!v31)
  {
    v32 = operator new(0x40uLL);
    *v32 = 0u;
    v32[1] = 0u;
    v32[2] = 0u;
    v32[3] = 0u;
    *(a2 + 256) = v32;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StencilOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v31 = *(a2 + 256);
  }

  *(v31 + 24) = FloatAttr;
  v33 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v72 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v73 = v33;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v70 = &v72;
  v68 = v24;
  v35 = 0x9DDFEA08EB382D69 * (((8 * v24) | 4) ^ v24 ^ 0xFF51AFD7ED558CCDLL);
  v36 = 0x9DDFEA08EB382D69 * (v24 ^ 0xFF51AFD7ED558CCDLL ^ (v35 >> 47) ^ v35);
  v67 = &v68;
  v74 = &v68;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, -348639895 * ((v36 >> 47) ^ v36), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v67, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v74);
  v38 = *(a2 + 256);
  if (!v38)
  {
    v39 = operator new(0x40uLL);
    *v39 = 0u;
    v39[1] = 0u;
    v39[2] = 0u;
    v39[3] = 0u;
    *(a2 + 256) = v39;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StencilOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v38 = *(a2 + 256);
  }

  *(v38 + 48) = ParametricStorageTypeImpl;
  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v72 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v73 = v40;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v70 = &v72;
  v68 = a11;
  v42 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v43 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v42 >> 47) ^ v42);
  v67 = &v68;
  v74 = &v68;
  p_src = &__src;
  v44 = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v43 >> 47) ^ v43), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v67, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v74);
  v45 = *(a2 + 256);
  if (!v45)
  {
    v46 = operator new(0x40uLL);
    *v46 = 0u;
    v46[1] = 0u;
    v46[2] = 0u;
    v46[3] = 0u;
    *(a2 + 256) = v46;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StencilOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v45 = *(a2 + 256);
  }

  *(v45 + 32) = v44;
  v47 = *a1;
  v48 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v72 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v73 = v47;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v70 = &v72;
  v68 = a12;
  v49 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v50 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v49 >> 47) ^ v49);
  v67 = &v68;
  v74 = &v68;
  p_src = &__src;
  v51 = mlir::StorageUniquer::getParametricStorageTypeImpl(v48, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v50 >> 47) ^ v50), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v67, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v74);
  v52 = *(a2 + 256);
  if (!v52)
  {
    v53 = operator new(0x40uLL);
    *v53 = 0u;
    v53[1] = 0u;
    v53[2] = 0u;
    v53[3] = 0u;
    *(a2 + 256) = v53;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StencilOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v52 = *(a2 + 256);
  }

  *(v52 + 40) = v51;
  __src = v71;
  v70 = 0x200000000;
  v54 = *a1;
  v55 = *a2;
  mlir::ValueRange::ValueRange(&v74, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v58 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v72, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StencilOp::inferReturnTypes(v54, v55, 1, v74, p_src, Dictionary, v58, v59, v72, v73, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v60);
  }

  v61 = __src;
  v62 = v70;
  v63 = *(a2 + 72);
  v64 = v63 + v70;
  if (v64 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v64, 8);
    LODWORD(v63) = *(a2 + 72);
  }

  if (v62)
  {
    memcpy((*(a2 + 64) + 8 * v63), v61, 8 * v62);
    LODWORD(v63) = *(a2 + 72);
  }

  *(a2 + 72) = v63 + v62;
  if (__src != v71)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::StencilOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v24 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v24);
  v19 = result;
  if (a2[7])
  {
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = 4;
    IntegerType = mlir::Builder::getIntegerType(&v19, 64, 0);
    v20 = mlir::RankedTensorType::get(&v26, 1, IntegerType, 0);
    v6 = mlir::TensorType::operator mlir::ShapedType(&v20);
    v24 = xmmword_1E098C990;
    v25 = unk_1E098C9A0;
    result = mlir::DenseElementsAttr::getFromRawBuffer(v6, v7, &v24, 32);
    a2[7] = result;
    if (*a2)
    {
LABEL_3:
      if (a2[3])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v26 = 4;
  v8 = mlir::Builder::getIntegerType(&v19, 64, 0);
  v20 = mlir::RankedTensorType::get(&v26, 1, v8, 0);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v20);
  v24 = xmmword_1E098C990;
  v25 = unk_1E098C9A0;
  result = mlir::DenseElementsAttr::getFromRawBuffer(v9, v10, &v24, 32);
  *a2 = result;
  if (a2[3])
  {
LABEL_4:
    if (a2[6])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  F32Type = mlir::Builder::getF32Type(&v19, v4);
  v12.n128_u64[0] = 0;
  result = mlir::Builder::getFloatAttr(v12, &v19, F32Type);
  a2[3] = result;
  if (a2[6])
  {
LABEL_5:
    if (a2[4])
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v13 = v19;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v19);
  v26 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v27 = v13;
  *&v24 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v24 + 1) = &v26;
  v23 = 2;
  v20 = &v23;
  v21 = &v24;
  v22 = &v23;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
  a2[6] = result;
  if (a2[4])
  {
LABEL_6:
    if (a2[5])
    {
      return result;
    }

LABEL_13:
    v17 = v19;
    v18 = mlir::MLIRContext::getAttributeUniquer(v19);
    v26 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
    v27 = v17;
    *&v24 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *(&v24 + 1) = &v26;
    v23 = 2;
    v20 = &v23;
    v21 = &v24;
    v22 = &v23;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v18, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
    a2[5] = result;
    return result;
  }

LABEL_12:
  v15 = v19;
  v16 = mlir::MLIRContext::getAttributeUniquer(v19);
  v26 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v27 = v15;
  *&v24 = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v24 + 1) = &v26;
  v23 = 4;
  v20 = &v23;
  v21 = &v24;
  v22 = &v23;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v16, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, 0xCA312C5D, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
  a2[4] = result;
  if (!a2[5])
  {
    goto LABEL_13;
  }

  return result;
}

BOOL mlir::mps::StencilOp::verifyInvariantsImpl(mlir::Block ***this)
{
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = v3[8];
  v4 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  v9 = v3[12];
  v8 = v3[13];
  v10 = v3[14];
  v11 = v3[15];
  v15 = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(v6, "offsets", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v11, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v4, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v7, "paddingConstant", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(v10, "reductionMode", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(v9, "paddingMode", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v12 = (*this - 2);
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::StencilOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.stencil", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B2CF60;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::mps::StridedSliceGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72 = v6;
  if (!v6)
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v74 = "expected DictionaryAttr to set properties";
      v75 = 41;
      v26 = &v73;
      v27 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v27 = v78;
          v26 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v26 = &v73;
          v27 = v78;
        }
      }

      v28 = &v27[24 * v79];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }

    if (v87 != 1)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v85;
      v32 = __p;
      if (v85 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v85 = v30;
      operator delete(v32);
    }

    v21 = v82;
    if (!v82)
    {
      goto LABEL_70;
    }

    v33 = v83;
    v23 = v82;
    if (v83 == v82)
    {
LABEL_69:
      v83 = v21;
      operator delete(v23);
LABEL_70:
      if (v78 != v81)
      {
        free(v78);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v82;
    goto LABEL_69;
  }

  v89.var0 = "begin_mask";
  v89.var1 = 10;
  v8 = mlir::DictionaryAttr::get(&v72, v89);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 55;
        v10 = &v73;
        v11 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v66 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v11 = v78;
            v10 = (v78 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v10 = &v73;
            v11 = v78;
          }
        }

        v12 = &v11[24 * v79];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v79;
        if (v76)
        {
          v14 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
          v15 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v67 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v15 = v78;
              v14 = (v78 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v14 = &v73;
              v15 = v78;
            }
          }

          v16 = &v15[24 * v79];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v85;
        v20 = __p;
        if (v85 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v85 = v18;
        operator delete(v20);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v22 = v83;
      v23 = v82;
      if (v83 == v82)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v90.var0 = "end_is_size";
  v90.var1 = 11;
  v36 = mlir::DictionaryAttr::get(&v72, v90);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 56;
        v38 = &v73;
        v39 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v68 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v39 = v78;
            v38 = (v78 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v38 = &v73;
            v39 = v78;
          }
        }

        v40 = &v39[24 * v79];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v79;
        if (v76)
        {
          v42 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v37);
          v43 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v69 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v43 = v78;
              v42 = (v78 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v42 = &v73;
              v43 = v78;
            }
          }

          v44 = &v43[24 * v79];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v85;
        v48 = __p;
        if (v85 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v85 = v46;
        operator delete(v48);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v49 = v83;
      v23 = v82;
      if (v83 == v82)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v91.var0 = "end_mask";
  v91.var1 = 8;
  v53 = mlir::DictionaryAttr::get(&v72, v91);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v54 = v53;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 53;
        v55 = &v73;
        v56 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v70 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v56 = v78;
            v55 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v55 = &v73;
            v56 = v78;
          }
        }

        v57 = &v56[24 * v79];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v79;
        if (v76)
        {
          v59 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v54);
          v60 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v71 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v60 = v78;
              v59 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v59 = &v73;
              v60 = v78;
            }
          }

          v61 = &v60[24 * v79];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if (v87 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v77);
      }

      return 0;
    }

    a1[2] = v53;
  }

  v92.var0 = "shrink_axis_mask";
  v92.var1 = 16;
  v63 = mlir::DictionaryAttr::get(&v72, v92);
  v73 = v63;
  if (!v63)
  {
    return 1;
  }

  if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[3] = v63;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::mps::StridedSliceGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "begin_mask", 0xAuLL, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "end_is_size", 0xBuLL, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "end_mask", 8uLL, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "shrink_axis_mask", 0x10uLL, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::StridedSliceGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "end_is_size", 0xBuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 16 && !memcmp(__s1, "shrink_axis_mask", 0x10uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "end_mask", 8uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 10)
  {
    return 0;
  }

  if (*__s1 != 0x616D5F6E69676562 || *(__s1 + 4) != 27507)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::StridedSliceGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      result = memcmp(__s1, "end_is_size", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          v5[1] = v9;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 16)
    {
      result = memcmp(__s1, "shrink_axis_mask", 0x10uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[3] = v7;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "end_mask", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[2] = v8;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 10 && *__s1 == 0x616D5F6E69676562 && *(__s1 + 4) == 27507)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::StridedSliceGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "begin_mask", 0xA, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "end_is_size", 0xB, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v10, "end_mask", 8, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v11, "shrink_axis_mask", 0x10, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::StridedSliceGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::StridedSliceGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3);
  }

  return 0;
}

void mlir::mps::StridedSliceGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, char a11)
{
  v52[2] = *MEMORY[0x1E69E9840];
  v46 = a4;
  v47 = a3;
  v44 = a6;
  v45 = a5;
  v43 = a7;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x20uLL);
    *v17 = 0u;
    v17[1] = 0u;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v50;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v50;
    {
      mlir::mps::StridedSliceGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *v16 = IntegerAttr;
  v18 = mlir::Builder::getIntegerType(a1, 32, 0);
  v19 = mlir::Builder::getIntegerAttr(a1, v18, a9);
  v20 = *(a2 + 256);
  if (!v20)
  {
    v21 = operator new(0x20uLL);
    *v21 = 0u;
    v21[1] = 0u;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v50;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v50;
    {
      mlir::mps::StridedSliceGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

  *(v20 + 16) = v19;
  v22 = mlir::Builder::getIntegerType(a1, 32, 0);
  v23 = mlir::Builder::getIntegerAttr(a1, v22, a10);
  v25 = v23;
  v26 = *(a2 + 256);
  if (v26)
  {
    *(v26 + 24) = v23;
    if (!a11)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v27 = operator new(0x20uLL);
  *v27 = 0u;
  v27[1] = 0u;
  *(a2 + 256) = v27;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v50;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v50;
  {
    mlir::mps::StridedSliceGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 24) = v25;
  if (a11)
  {
LABEL_15:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v29 = *(a2 + 256);
    if (!v29)
    {
      v30 = operator new(0x20uLL);
      *v30 = 0u;
      v30[1] = 0u;
      *(a2 + 256) = v30;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v50;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v50;
      {
        mlir::mps::StridedSliceGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v29 = *(a2 + 256);
    }

    *(v29 + 8) = UnitAttr;
  }

LABEL_20:
  v50 = v52;
  v51 = 0x200000000;
  v31 = *a2;
  mlir::ValueRange::ValueRange(v49, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = mlir::ValueRange::ValueRange(&v48, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::StridedSliceGradientOp::inferReturnTypes(v33, v31, 1, v49[0], v49[1], v34, v35, v36, v41, v42, &v50))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v37);
  }

  v38 = v50;
  v39 = v51;
  v40 = *(a2 + 72);
  if (v40 + v51 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v40 + v51, 8);
    LODWORD(v40) = *(a2 + 72);
  }

  if (v39)
  {
    memcpy((*(a2 + 64) + 8 * v40), v38, 8 * v39);
    LODWORD(v40) = *(a2 + 72);
  }

  *(a2 + 72) = v40 + v39;
  if (v50 != v52)
  {
    free(v50);
  }
}

BOOL mlir::mps::StridedSliceGradientOp::verifyInvariantsImpl(mlir::Block ***this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      if (v6)
      {
        v8 = v3[1];
        v35[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "begin_mask", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
        {
          return 0;
        }

        v35[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v5, "end_mask", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
        {
          return 0;
        }

        v35[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v6, "shrink_axis_mask", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
        {
          return 0;
        }

        v35[0] = *this;
        if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "end_is_size", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 7) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 11) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 15) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 19) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u))
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v9 = (*this - 2);
        }

        else
        {
          v9 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
      }

      v33[0] = "requires attribute 'shrink_axis_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v41;
          v28 = __p;
          if (v41 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v41 = v26;
          operator delete(v28);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v29 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_67:
          v39 = v15;
          operator delete(v17);
LABEL_68:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
        }

        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v29 != v15);
LABEL_66:
        v17 = v38;
        goto LABEL_67;
      }
    }

    else
    {
      v33[0] = "requires attribute 'end_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v41;
          v22 = __p;
          if (v41 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v41 = v20;
          operator delete(v22);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v23 = v39;
        v17 = v38;
        if (v39 == v38)
        {
          goto LABEL_67;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v23 != v15);
        goto LABEL_66;
      }
    }
  }

  else
  {
    v33[0] = "requires attribute 'begin_mask'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v16 = v39;
      v17 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          operator delete[](v18);
        }
      }

      while (v16 != v15);
      goto LABEL_66;
    }
  }

  return v11;
}

uint64_t mlir::RewritePatternSet::add<mlir::mps::StridedSliceGradientOp>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.strided_slice_gradient", 26, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D000;
  v11[12] = a2;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12)
  {
    v15 = *(a1 + 8);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *(a1 + 8) = v21;
    *(a1 + 16) = v14;
    *(a1 + 24) = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  *(a1 + 16) = v14;
  return a1;
}

uint64_t mlir::mps::detail::StridedSliceOpGenericAdaptorBase::StridedSliceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 56), 0, 0);
  }

  return a1;
}

BOOL mlir::mps::StridedSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::StridedSliceOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3);
  }

  return 0;
}

void mlir::mps::StridedSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, char a10)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v44 = a4;
  v45 = a3;
  v42 = a6;
  v43 = a5;
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x20uLL);
    *v17 = 0u;
    v17[1] = 0u;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StridedSliceOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *v16 = IntegerAttr;
  v18 = mlir::Builder::getIntegerType(a1, 32, 0);
  v19 = mlir::Builder::getIntegerAttr(a1, v18, a8);
  v20 = *(a2 + 256);
  if (!v20)
  {
    v21 = operator new(0x20uLL);
    *v21 = 0u;
    v21[1] = 0u;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StridedSliceOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

  *(v20 + 16) = v19;
  v22 = mlir::Builder::getIntegerType(a1, 32, 0);
  v23 = mlir::Builder::getIntegerAttr(a1, v22, a9);
  v25 = v23;
  v26 = *(a2 + 256);
  if (v26)
  {
    *(v26 + 24) = v23;
    if (!a10)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v27 = operator new(0x20uLL);
  *v27 = 0u;
  v27[1] = 0u;
  *(a2 + 256) = v27;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::StridedSliceOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 24) = v25;
  if (a10)
  {
LABEL_15:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v29 = *(a2 + 256);
    if (!v29)
    {
      v30 = operator new(0x20uLL);
      *v30 = 0u;
      v30[1] = 0u;
      *(a2 + 256) = v30;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::StridedSliceOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v29 = *(a2 + 256);
    }

    *(v29 + 8) = UnitAttr;
  }

LABEL_20:
  __src = v50;
  v49 = 0x200000000;
  v31 = *a1;
  v32 = *a2;
  mlir::ValueRange::ValueRange(v47, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v35 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v46, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StridedSliceOp::inferReturnTypes(v31, v32, 1, v47[0], v47[1], Dictionary, v35, v36, v46[0], v46[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v37);
  }

  v38 = __src;
  v39 = v49;
  v40 = *(a2 + 72);
  v41 = v40 + v49;
  if (v41 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v41, 8);
    LODWORD(v40) = *(a2 + 72);
  }

  if (v39)
  {
    memcpy((*(a2 + 64) + 8 * v40), v38, 8 * v39);
    LODWORD(v40) = *(a2 + 72);
  }

  *(a2 + 72) = v40 + v39;
  if (__src != v50)
  {
    free(__src);
  }
}