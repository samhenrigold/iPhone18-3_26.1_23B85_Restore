uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_15legalizeRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEE3__1NS1_24TargetLegalizerInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::Operation *a2)
{
  v107 = *MEMORY[0x1E69E9840];
  if (!mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v5 = *a1;
  v91[0] = a2;
  v91[1] = InterfaceFor;
  mlir::SymbolTable::getSymbolUses(a2, &v88, **v5);
  if (v90)
  {
    ShapedType = mlir::ElementsAttr::getShapedType(v91);
    *(*(v5 + 8) + 8) = 0;
    if ((v90 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      goto LABEL_133;
    }

    v7 = ShapedType;
    v8 = v88;
    v9 = v89;
    if (v88 != v89)
    {
      do
      {
        v10 = *v8;
        if (*(*(*v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOps,void>::id)
        {
          v11 = *(v5 + 8);
          v12 = *(v11 + 8);
          if (v12 >= *(v11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(*(v5 + 8), (v11 + 16), v12 + 1, 8);
            v12 = *(v11 + 8);
          }

          *(*v11 + 8 * v12) = v10;
          ++*(v11 + 8);
        }

        v8 += 16;
      }

      while (v8 != v9);
    }

    v22 = *(v5 + 16);
    v23 = *(v22 + 8);
    if (!v23 && !*(v22 + 12))
    {
LABEL_45:
      v33 = mlir::TargetLegalizerInterface::legalizeBody(v91, **(v5 + 8), *(*(v5 + 8) + 8), **(v5 + 24), *(v5 + 16));
      if (v33)
      {
        v34 = v33;
        mlir::TargetLegalizerInterface::getBodyBlock(v91);
        v35 = *(v5 + 8);
        v36 = *(v35 + 8);
        if (!v36)
        {
LABEL_75:
          if (v34 != v7)
          {
            mlir::Operation::cloneWithoutRegions(v91[0]);
          }

          result = 1;
          goto LABEL_120;
        }

        v37 = *v35;
        v38 = *v35 + 8 * v36;
        v86 = &v106;
        v87 = v100;
        v84 = v7;
        v85 = v38;
        while (1)
        {
          v39 = *v37;
          *(*(v5 + 32) + 8) = 0;
          v40 = v39[9];
          v41 = v40 ? (v39 - 4) : 0;
          if (v40)
          {
            break;
          }

LABEL_74:
          if (++v37 == v38)
          {
            goto LABEL_75;
          }
        }

        v42 = 0;
        v43 = 0;
        while (1)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, v43);
          v46 = *(v5 + 16);
          v47 = *(v46 + 4);
          if (!v47)
          {
            break;
          }

          v48 = *v46;
          v49 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
          v50 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v49 >> 47) ^ v49);
          v51 = (-348639895 * ((v50 >> 47) ^ v50)) & (v47 - 1);
          v52 = *(v48 + 16 * v51);
          if (v52 != NextResultAtOffset)
          {
            v58 = 1;
            while (v52 != -4096)
            {
              v59 = v51 + v58++;
              v51 = v59 & (v47 - 1);
              v52 = *(v48 + 16 * v51);
              if (v52 == NextResultAtOffset)
              {
                goto LABEL_57;
              }
            }

            break;
          }

LABEL_57:
          if (v51 == v47)
          {
            break;
          }

          v53 = *(v48 + 16 * v51 + 8);
          if (!v53)
          {
            break;
          }

          if (v53 != NextResultAtOffset)
          {
            while (1)
            {
              v54 = *NextResultAtOffset;
              if (!*NextResultAtOffset)
              {
                break;
              }

              v55 = v54[1];
              if (v55)
              {
                v56 = *v54;
                *v55 = *v54;
                if (v56)
                {
                  *(v56 + 8) = v54[1];
                }
              }

              v54[3] = v53;
              v54[1] = v53;
              v57 = *v53;
              *v54 = *v53;
              if (v57)
              {
                *(v57 + 8) = v54;
              }

              *v53 = v54;
            }

            v42 = 1;
          }

          if (++v43 == v40)
          {
            v7 = v84;
            v38 = v85;
            if (v42)
            {
              mlir::Operation::erase(v39, v45);
              v38 = v85;
            }

            goto LABEL_74;
          }
        }

        v94 = "Result has no mapping in the valueMap (result #";
        v95 = 259;
        v60 = NextResultAtOffset;
        mlir::Operation::emitOpError(v39, &v94, &v96);
        v61 = *(v60 + 8) & 7;
        if (v60 && v61 == 6)
        {
          v61 = (*(v60 + 16) + 6);
        }

        if (!v96)
        {
LABEL_83:
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v96, ")");
          if (v96)
          {
            mlir::InFlightDiagnostic::report(&v96);
          }

          if ((v106 & 1) == 0)
          {
            goto LABEL_119;
          }

          if (v105 != v86)
          {
            free(v105);
          }

          v67 = __p;
          if (__p)
          {
            v68 = v104;
            v69 = __p;
            if (v104 != __p)
            {
              do
              {
                v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
              }

              while (v68 != v67);
              v69 = __p;
            }

            v104 = v67;
            operator delete(v69);
          }

          v70 = v101;
          if (v101)
          {
            v71 = v102;
            v72 = v101;
            if (v102 != v101)
            {
              do
              {
                v74 = *--v71;
                v73 = v74;
                *v71 = 0;
                if (v74)
                {
                  MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
                }
              }

              while (v71 != v70);
              v72 = v101;
            }

            v102 = v70;
            operator delete(v72);
          }

          v81 = v97;
          if (v97 == v87)
          {
            goto LABEL_119;
          }

          goto LABEL_118;
        }

        v92 = 5;
        v93 = v61;
        v62 = v98;
        v63 = &v92;
        v64 = v97;
        if (v98 < v99)
        {
          goto LABEL_82;
        }

        if (v97 > &v92 || v97 + 24 * v98 <= &v92)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
          v63 = &v92;
          v64 = v97;
          goto LABEL_82;
        }

LABEL_133:
        v83 = (&v92 - v64);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v87, v62 + 1, 24);
        v64 = v97;
        v63 = &v83[v97];
LABEL_82:
        v65 = &v64[24 * v98];
        v66 = *v63;
        *(v65 + 2) = *(v63 + 2);
        *v65 = v66;
        ++v98;
        goto LABEL_83;
      }

      v94 = "Legalization failed";
      v95 = 259;
      mlir::OpState::emitOpError(v91, &v94, &v96);
      if (v96)
      {
        mlir::InFlightDiagnostic::report(&v96);
      }

      if (v106 != 1)
      {
        goto LABEL_119;
      }

      if (v105 != &v106)
      {
        free(v105);
      }

      v75 = __p;
      if (__p)
      {
        v76 = v104;
        v77 = __p;
        if (v104 != __p)
        {
          do
          {
            v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
          }

          while (v76 != v75);
          v77 = __p;
        }

        v104 = v75;
        operator delete(v77);
      }

      v17 = v101;
      if (v101)
      {
        v78 = v102;
        v19 = v101;
        if (v102 != v101)
        {
          do
          {
            v80 = *--v78;
            v79 = v80;
            *v78 = 0;
            if (v80)
            {
              MEMORY[0x1AC55A040](v79, 0x1000C8077774924);
            }
          }

          while (v78 != v17);
LABEL_115:
          v19 = v101;
          goto LABEL_116;
        }

        goto LABEL_116;
      }

      goto LABEL_117;
    }

    v24 = *(v22 + 16);
    if (v24 > 4 * v23 && v24 >= 0x41)
    {
      llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::shrink_and_clear(v22);
      goto LABEL_45;
    }

    if (v24)
    {
      v25 = *v22;
      v26 = (v24 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v26)
      {
        v27 = v26 + 1;
        v28 = (v26 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v29 = &v25[2 * v28];
        v30 = v25 + 2;
        v31 = v28;
        do
        {
          *(v30 - 2) = -4096;
          *v30 = -4096;
          v30 += 4;
          v31 -= 2;
        }

        while (v31);
        if (v27 == v28)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v29 = *v22;
      }

      v32 = &v25[2 * v24];
      do
      {
        *v29 = -4096;
        v29 += 2;
      }

      while (v29 != v32);
    }

LABEL_44:
    *(v22 + 8) = 0;
    goto LABEL_45;
  }

  v94 = "Operation has no symbol table uses";
  v95 = 259;
  mlir::OpState::emitOpError(v91, &v94, &v96);
  if (v96)
  {
    mlir::InFlightDiagnostic::report(&v96);
  }

  if (v106 != 1)
  {
    goto LABEL_119;
  }

  if (v105 != &v106)
  {
    free(v105);
  }

  v14 = __p;
  if (__p)
  {
    v15 = v104;
    v16 = __p;
    if (v104 != __p)
    {
      do
      {
        v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v104 = v14;
    operator delete(v16);
  }

  v17 = v101;
  if (v101)
  {
    v18 = v102;
    v19 = v101;
    if (v102 != v101)
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
      goto LABEL_115;
    }

LABEL_116:
    v102 = v17;
    operator delete(v19);
  }

LABEL_117:
  v81 = v97;
  if (v97 != v100)
  {
LABEL_118:
    free(v81);
  }

LABEL_119:
  result = 0;
LABEL_120:
  if (v90 == 1)
  {
    if (v88)
    {
      v89 = v88;
      v82 = result;
      operator delete(v88);
      return v82;
    }
  }

  return result;
}

unsigned int *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::legalizeRegions(mlir::ModuleOp,mlir::RegionOpCreator *)::$_1::operator() const(mlir::TargetLegalizerInterface)::{lambda(mlir::Operation *)#1}>(uint64_t a1, mlir::Operation *a2)
{
  result = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!result)
  {
    v5 = *a1;
    v6 = *(a1 + 8);

    return mlir::OpBuilder::clone(v5, a2, v6);
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ExecutionCostOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ExecutionCostOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::ExecutionCostOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExecutionCostOpInterface]";
  v6 = 80;
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

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_14collectRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEPKNS1_15CostModelParamsEE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESS_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ****a1, ZinIrHalH13g *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v5 = *a1;
      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v7 = **v5;
      v8 = 0;
      mlir::collectRegions(a2, InterfaceFor, v7);
    }
  }

  return result;
}

uint64_t mlir::RegionOpCreator::getRegionCall(mlir::UnitAttr ***a1, uint64_t a2, mlir::Operation **a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v100 = *MEMORY[0x1E69E9840];
  v96 = a5;
  v97 = 0;
  if (!a6)
  {
    goto LABEL_29;
  }

  v76 = a3;
  v14 = 0;
  for (i = 0; i != a6; v97 = i)
  {
    v84[0] = mlir::ValueRange::dereference_iterator(&v96, i);
    DefiningOp = mlir::Value::getDefiningOp(v84);
    v17 = DefiningOp;
    if (DefiningOp)
    {
      v18 = v14 == 0;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = DefiningOp;
    }

    else
    {
      v19 = v14;
    }

    if (v14 && DefiningOp)
    {
      if (mlir::Operation::isBeforeInBlock(v14, DefiningOp))
      {
        v19 = v17;
      }

      else
      {
        v19 = v14;
      }
    }

    v20 = *v84[0];
    v14 = v19;
    if (*v84[0])
    {
      do
      {
        v21 = v20[2];
        if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v21))
        {
          if (v21)
          {
            InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v21);
          }

          else
          {
            InterfaceFor = 0;
          }

          v91 = v21;
          v92 = InterfaceFor;
          if (v21 && mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>(&v91) && mlir::Operation::isBeforeInBlock(v17, v21))
          {
            v14 = v21;
          }
        }

        else
        {
          v91 = 0;
          v92 = 0;
        }

        v20 = *v20;
      }

      while (v20);
    }

    i = v97 + 1;
  }

  a3 = v76;
  if (!v14)
  {
LABEL_29:
    v14 = *a3;
  }

  v23 = a1[1];
  v24 = v23 + 2;
  v77 = *(v23 + 1);
  v25 = *(v14 + 2);
  ZinIrHalH13g::~ZinIrHalH13g(v14);
  v27 = *(v26 + 8);
  v23[2] = v25;
  v23[3] = v27;
  v28 = ((*a1)[17])(a1, *(v14 + 3), a2, a5, a6);
  v29 = *(v28 + 36);
  v30 = (v28 - 16);
  if (!v29)
  {
    v30 = 0;
  }

  v96 = v30;
  v97 = 0;
  v98 = a7;
  v99 = 0;
  if (v29)
  {
    v31 = a8 == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    goto LABEL_47;
  }

  v32 = 0;
  do
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v96, v32);
    v36 = mlir::ValueRange::dereference_iterator(&v98, v99);
    v84[0] = NextResultAtOffset;
    if ((*(v36 + 8) ^ *(NextResultAtOffset + 1)) >= 8)
    {
      v37 = v36;
      v38 = a1[1];
      Loc = mlir::Value::getLoc(v84);
      v91 = (*(v37 + 8) & 0xFFFFFFFFFFFFFFF8);
      v40 = mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type,mlir::Value &>(v38, Loc, &v91, v84);
      v41 = v84[0];
      if (*(v40 + 9))
      {
        v42 = v40 - 16;
      }

      else
      {
        v42 = 0;
      }

      v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
      v91 = v41;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a9, &v91) = v43;
    }

    v32 = v97 + 1;
    v33 = v99 + 1;
    v97 = v32;
    ++v99;
  }

  while (v32 != v29 && v33 != a8);
  if (v23)
  {
LABEL_47:
    if (v77)
    {
      *v24 = v77;
    }

    else
    {
      *v24 = 0;
      v23[3] = 0;
    }
  }

  v95 = 0;
  v96 = &v98;
  v97 = 0x400000000;
  v94 = a7;
  if (a8)
  {
    v44 = 0;
    while (1)
    {
      v45 = mlir::ValueRange::dereference_iterator(&v94, v44);
      v46 = *(a9 + 4);
      if (v46)
      {
        v47 = *a9;
        v48 = 0x9DDFEA08EB382D69 * ((8 * v45 - 0xAE502812AA7333) ^ HIDWORD(v45));
        v49 = 0x9DDFEA08EB382D69 * (HIDWORD(v45) ^ (v48 >> 47) ^ v48);
        v50 = (-348639895 * ((v49 >> 47) ^ v49)) & (v46 - 1);
        v51 = *(*a9 + 16 * v50);
        if (v51 == v45)
        {
LABEL_56:
          if (v50 != v46)
          {
            v52 = *(v47 + 16 * v50 + 8);
            goto LABEL_59;
          }
        }

        else
        {
          v68 = 1;
          while (v51 != -4096)
          {
            v69 = v50 + v68++;
            v50 = v69 & (v46 - 1);
            v51 = *(v47 + 16 * v50);
            if (v51 == v45)
            {
              goto LABEL_56;
            }
          }
        }
      }

      v52 = 0;
LABEL_59:
      v90 = v52;
      v53 = mlir::Value::getDefiningOp(&v90);
      v54 = v53;
      if (!*(v53 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v53, "name", 4), (v56 & 1) == 0))
      {
        InherentAttr = mlir::DictionaryAttr::get(v54 + 56, "name", 4uLL);
      }

      if (!InherentAttr)
      {
        UnitAttr = mlir::Builder::getUnitAttr(a1[1], v56);
        v59 = v97;
        if (v97 >= HIDWORD(v97))
        {
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v96, UnitAttr);
        }

        else
        {
          v96[v97] = UnitAttr;
          LODWORD(v97) = v59 + 1;
        }

        goto LABEL_53;
      }

      if (v90 && (*(v90 + 8) & 7) == 6)
      {
        v57 = *(v90 + 16) + 6;
      }

      else
      {
        v57 = *(v90 + 8) & 7;
      }

      v89 = InherentAttr;
      v60 = a1[1];
      AttrData = mlir::OpaqueAttr::getAttrData(&v89);
      v83 = 773;
      v80 = AttrData;
      v81 = v62;
      v82 = ":";
      std::to_string(&v79, v57);
      v63 = v83;
      if (v83)
      {
        if (v83 == 1)
        {
          v84[0] = &v79;
          v64 = 1;
          v63 = 4;
        }

        else
        {
          if (HIBYTE(v83) != 1)
          {
            v63 = 2;
          }

          v65 = &v80;
          if (HIBYTE(v83) == 1)
          {
            v65 = v80;
          }

          v84[0] = v65;
          v84[1] = v81;
          v84[2] = &v79;
          v64 = 4;
        }
      }

      else
      {
        v64 = 1;
      }

      v85 = v63;
      v86 = v64;
      llvm::Twine::str(v84, __p);
      v93 = 260;
      v91 = __p;
      StringAttr = mlir::Builder::getStringAttr(v60, &v91);
      v67 = v97;
      if (v97 >= HIDWORD(v97))
      {
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v96, StringAttr);
        if (v88 < 0)
        {
LABEL_52:
          operator delete(__p[0]);
          if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_81;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v96[v97] = StringAttr;
        LODWORD(v97) = v67 + 1;
        if (v88 < 0)
        {
          goto LABEL_52;
        }
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_81:
        operator delete(v79.__r_.__value_.__l.__data_);
      }

LABEL_53:
      v44 = v95 + 1;
      v95 = v44;
      if (v44 == a8)
      {
        v70 = v96;
        v71 = v97;
        goto LABEL_91;
      }
    }
  }

  v71 = 0;
  v70 = &v98;
LABEL_91:
  ArrayAttr = mlir::Builder::getArrayAttr(a1[1], v70, v71);
  Context = mlir::Attribute::getContext((v28 + 24));
  v93 = 261;
  v91 = "output_names";
  v92 = 12;
  v74 = mlir::StringAttr::get(Context, &v91);
  mlir::Operation::setAttr(v28, v74, ArrayAttr);
  if (v96 != &v98)
  {
    free(v96);
  }

  return v28;
}

BOOL mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>(uint64_t a1)
{
  v12[20] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  mlir::ExecutionCostOpInterface::getExecutionCost(a1, &v10);
  v1 = v10;
  if (!v11)
  {
    v5 = 0;
    if (v10 == v12)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v2 = 40 * v11 - 40;
  v3 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
  do
  {
    v4 = **v1;
    {
      v8 = v2;
      v9 = v1;
      mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>();
      v3 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
      v2 = v8;
      v1 = v9;
    }

    v6 = v4 == v3[144];
    v5 = v6;
    v6 = v6 || v2 == 0;
    v2 -= 40;
    v1 += 5;
  }

  while (!v6);
  v1 = v10;
  if (v10 != v12)
  {
LABEL_11:
    free(v1);
  }

  return v5;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::RegionOpCreator::getPromotedTypes(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a4 + 8) = 0;
  v11 = a2;
  v12 = 0;
  if (a3)
  {
    v6 = result;
    for (i = 0; i != a3; v12 = i)
    {
      v8 = mlir::ValueRange::dereference_iterator(&v11, i);
      result = (*(*v6 + 168))(v6, *(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
      v9 = *(a4 + 8);
      if (v9 >= *(a4 + 12))
      {
        v10 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v9 + 1, 8);
        result = v10;
        v9 = *(a4 + 8);
      }

      *(*a4 + 8 * v9) = result;
      ++*(a4 + 8);
      i = v12 + 1;
    }
  }

  return result;
}

{
  *(a4 + 8) = 0;
  if (a3)
  {
    v7 = result;
    for (i = 0; i != a3; ++i)
    {
      v9 = mlir::TypeRange::dereference_iterator(a2, i);
      result = (*(*v7 + 168))(v7, v9);
      v10 = *(a4 + 8);
      if (v10 >= *(a4 + 12))
      {
        v11 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v10 + 1, 8);
        result = v11;
        v10 = *(a4 + 8);
      }

      *(*a4 + 8 * v10) = result;
      ++*(a4 + 8);
    }
  }

  return result;
}

uint64_t mlir::RegionOpCreator::getClonedArgAttrs@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  *a6 = a6 + 2;
  a6[1] = 0x600000000;
  if (!a5)
  {
    return result;
  }

  v8 = result;
  if (a5 < 7)
  {
    v9 = 0;
    v10 = a5;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, a5, 8);
  v9 = *(a6 + 2);
  v10 = a5 - v9;
  if (a5 != v9)
  {
LABEL_6:
    bzero((*a6 + 8 * v9), 8 * v10);
  }

  v11 = 0;
  *(a6 + 2) = a5;
  v12 = 1;
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v19, v11);
    if (result)
    {
      v13 = result;
      if ((*(result + 8) & 7) == 7)
      {
        v14 = *(result + 24);
        result = mlir::FunctionOpInterface::getArgumentTypes(&v17);
        if (v14 < v15)
        {
          result = mlir::function_interface_impl::getArgAttrDict(v17, v18, *(v13 + 24));
          v16 = result;
          if (result)
          {
            result = (*(*v8 + 192))(v8, &v16);
            *(*a6 + 8 * v11) = result;
          }
        }
      }
    }

    v11 = v12++;
  }

  while (v20 > v11);
  return result;
}

uint64_t mlir::RegionOpCreator::getClonedResultAttrs@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  *a6 = a6 + 2;
  a6[1] = 0x600000000;
  if (!a5)
  {
    return result;
  }

  v8 = result;
  if (a5 < 7)
  {
    v9 = 0;
    v10 = a5;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, a5, 8);
  v9 = *(a6 + 2);
  v10 = a5 - v9;
  if (a5 != v9)
  {
LABEL_6:
    bzero((*a6 + 8 * v9), 8 * v10);
  }

  v11 = 0;
  *(a6 + 2) = a5;
  v12 = 1;
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v22, v11);
    if ((~*(result + 8) & 7) != 0)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = *(v13 + 8);
      v15 = (v14 & 7) == 6 ? *(v13 + 16) + 6 : v14 & 7;
      result = mlir::FunctionOpInterface::getResultTypes(&v20);
      if (v15 < v16)
      {
        v17 = *(v13 + 8);
        if ((v17 & 7) == 6)
        {
          v18 = *(v13 + 16) + 6;
        }

        else
        {
          v18 = v17 & 7;
        }

        result = mlir::function_interface_impl::getResultAttrDict(v20, v21, v18);
        v19 = result;
        if (result)
        {
          result = (*(*v8 + 192))(v8, &v19);
          *(*a6 + 8 * v11) = result;
        }
      }
    }

    v11 = v12++;
  }

  while (v23 > v11);
  return result;
}

uint64_t mlir::RegionOpCreator::finalizeArgAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v11 = a3;
  result = mlir::FunctionOpInterface::getArgumentTypes(&v10);
  if (v5)
  {
    for (i = 0; i < v7; ++i)
    {
      ArgAttrDict = mlir::function_interface_impl::getArgAttrDict(v10, v11, i);
      if (ArgAttrDict)
      {
        v8 = (*(*a1 + 216))(a1, &ArgAttrDict);
        mlir::function_interface_impl::setArgAttrs(v10, v11, i, v8);
      }

      result = mlir::FunctionOpInterface::getArgumentTypes(&v10);
    }
  }

  return result;
}

uint64_t mlir::RegionOpCreator::finalizeResultAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v11 = a3;
  result = mlir::FunctionOpInterface::getResultTypes(&v10);
  if (v5)
  {
    for (i = 0; i < v7; ++i)
    {
      ResultAttrDict = mlir::function_interface_impl::getResultAttrDict(v10, v11, i);
      if (ResultAttrDict)
      {
        v8 = (*(*a1 + 216))(a1, &ResultAttrDict);
        mlir::function_interface_impl::setResultAttrs(v10, v11, i, v8);
      }

      result = mlir::FunctionOpInterface::getResultTypes(&v10);
    }
  }

  return result;
}

uint64_t mlir::minimalLegalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a2;
    v7 = a2 + 8 * a3;
    do
    {
      v8 = *(*v6 + 36);
      if (v8)
      {
        v9 = *v6 - 16;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, i);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a4, &NextResultAtOffset) = NextResultAtOffset;
        }
      }

      v6 += 8;
    }

    while (v6 != v7);
  }

  if (!mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a1);
  return (*(InterfaceFor + 16))(InterfaceFor, a1);
}

float mlir::getDeviceInfo@<S0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 48) = 978433816;
  *(a3 + 52) = a1;
  *a3 = 1;
  *(a3 + 36) = a2;
  if ((a1 - 5) > 1)
  {
    *(a3 + 4) = 1072399647;
    if (a1 == 3)
    {
      *(a3 + 32) = 1112014848;
      *(a3 + 40) = 0x4248000041A3D70ALL;
      if (a2 < 6)
      {
        v3 = 0x424800003FEB851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0xA)
      {
        goto LABEL_19;
      }

      if (a2 <= 0x14)
      {
LABEL_25:
        *(a3 + 32) = 1128792064;
        v4 = 1120403456;
LABEL_28:
        *(a3 + 44) = v4;
        *(a3 + 4) = 1080788255;
        v3 = 0x43480000406B851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0x28)
      {
LABEL_30:
        *(a3 + 32) = 1137180672;
        v5 = 1120403456;
LABEL_33:
        *(a3 + 44) = v5;
        *(a3 + 4) = 1080788255;
        v3 = 0x43C80000406B851FLL;
        goto LABEL_37;
      }

      *(a3 + 32) = 1145569280;
      v6 = 1120403456;
    }

    else
    {
      if (a1 == 4)
      {
        *(a3 + 32) = 1112014848;
        *(a3 + 40) = 0x4248000041A3D70ALL;
        v3 = 0x424800003FEB851FLL;
        if (a2 < 7)
        {
          goto LABEL_37;
        }

        if (a2 > 0xA)
        {
          if (a2 > 0x14)
          {
            if (a2 > 0x28)
            {
              goto LABEL_37;
            }

            goto LABEL_30;
          }

          goto LABEL_25;
        }

LABEL_19:
        *(a3 + 32) = 1120403456;
        *(a3 + 44) = 1120403456;
        v3 = 0x42C800003FEB851FLL;
        goto LABEL_37;
      }

      *(a3 + 32) = 1107846758;
      *(a3 + 40) = 0x4208666641591EB8;
      if (a2 < 6)
      {
        v3 = 0x420866663FEB851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0xA)
      {
        *(a3 + 32) = 1116235366;
        *(a3 + 44) = 1116235366;
        v3 = 0x428866663FEB851FLL;
        goto LABEL_37;
      }

      if (a2 <= 0x14)
      {
        *(a3 + 32) = 1128792064;
        v4 = 1116235366;
        goto LABEL_28;
      }

      if (a2 <= 0x28)
      {
        *(a3 + 32) = 1137180672;
        v5 = 1116235366;
        goto LABEL_33;
      }

      *(a3 + 32) = 1145569280;
      v6 = 1116235366;
    }

    *(a3 + 44) = v6;
    *(a3 + 4) = 1089176863;
    v3 = 0x4448000040EB851FLL;
    goto LABEL_37;
  }

  *(a3 + 4) = 1072399647;
  *(a3 + 32) = 1115291648;
  *(a3 + 40) = 0x427A000041A3D70ALL;
  v3 = 0x427A00003FEB851FLL;
  if (a2 >= 7)
  {
    if (a2 > 0xA)
    {
      if (a2 > 0x14)
      {
        if (a2 <= 0x28)
        {
          *(a3 + 32) = 1140457472;
          *(a3 + 44) = 1123680256;
          *(a3 + 4) = 1080788255;
          v3 = 0x43FA0000406B851FLL;
        }
      }

      else
      {
        *(a3 + 32) = 1132068864;
        *(a3 + 44) = 1123680256;
        *(a3 + 4) = 1080788255;
        v3 = 0x437A0000406B851FLL;
      }
    }

    else
    {
      *(a3 + 32) = 1123680256;
      *(a3 + 44) = 1123680256;
      v3 = 0x42FA00003FEB851FLL;
    }
  }

LABEL_37:
  v7 = a2 * 0.33;
  *(a3 + 8) = *&v3 + *&v3;
  *(a3 + 12) = v3;
  *(a3 + 20) = v7;
  *(a3 + 24) = v7;
  result = v7 * 0.25;
  *(a3 + 28) = v7 * 0.25;
  return result;
}

void mlir::placement::PlacementDialect::PlacementDialect(mlir::placement::PlacementDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "placement", 9, a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id);
  *v2 = &unk_1F1A05D00;
  mlir::Dialect::addOperations<mlir::placement::ANEIOCast,mlir::placement::HostTypeCast,mlir::placement::MemrefToTensor,mlir::placement::RegionCall,mlir::placement::ReplacedOps,mlir::placement::ReplacedOpsLiveOuts,mlir::placement::StartTimer,mlir::placement::StopTimer,mlir::placement::TensorToMemref>(v2);
}

void sub_1A6D6F7F4()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::placement::RegionTypeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::placement::RegionTypeAttr::parse(mlir::AsmParser *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v48 = 0;
    v49 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v48))
    {
LABEL_42:
      v30 = (*(*a1 + 40))(a1);
      LOWORD(v65) = 259;
      (*(*a1 + 24))(v54, a1, v30, v63);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v31 = v59;
        if (v59)
        {
          v32 = v60;
          v33 = v59;
          if (v60 != v59)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = v59;
          }

          v60 = v31;
          operator delete(v33);
        }

        v34 = v57;
        if (v57)
        {
          v35 = v58;
          v36 = v57;
          if (v58 != v57)
          {
            do
            {
              v38 = *--v35;
              v37 = v38;
              *v35 = 0;
              if (v38)
              {
                MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
              }
            }

            while (v35 != v34);
            v36 = v57;
          }

          v58 = v34;
          operator delete(v36);
        }

        if (v55 != &v56)
        {
          free(v55);
        }
      }

      return 0;
    }

    if (v49 != 3)
    {
LABEL_16:
      v47 = 257;
      (*(*a1 + 24))(v63, a1, v2, v46);
      if (v63[0])
      {
        LODWORD(v50) = 3;
        v51 = "expected ";
        v52 = 9;
        v6 = &v50;
        v7 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v50 && v64 + 24 * v65 > &v50)
          {
            v44 = &v50 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v7 = v64;
            v6 = (v64 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v6 = &v50;
            v7 = v64;
          }
        }

        v8 = &v7[24 * v65];
        v9 = *v6;
        *(v8 + 2) = v6[2];
        *v8 = v9;
        v10 = ++v65;
        if (v63[0])
        {
          LODWORD(v50) = 3;
          v51 = "::mlir::placement::RegionType";
          v52 = 29;
          v11 = &v50;
          v12 = v64;
          if (v10 >= v66)
          {
            if (v64 <= &v50 && v64 + 24 * v10 > &v50)
            {
              v45 = &v50 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v10 + 1, 24);
              v12 = v64;
              v11 = (v64 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v10 + 1, 24);
              v11 = &v50;
              v12 = v64;
            }
          }

          v13 = &v12[24 * v65];
          v14 = *v11;
          *(v13 + 2) = v11[2];
          *v13 = v14;
          ++v65;
        }
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v63, " to be one of: ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "GPU");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v16, ", ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v17, "ANE");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, ", ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v19, "CPU");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }

      if (v73 == 1)
      {
        if (v72 != &v73)
        {
          free(v72);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v71;
          v23 = __p;
          if (v71 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v71 = v21;
          operator delete(v23);
        }

        v24 = v68;
        if (v68)
        {
          v25 = v69;
          v26 = v68;
          if (v69 != v68)
          {
            do
            {
              v28 = *--v25;
              v27 = v28;
              *v25 = 0;
              if (v28)
              {
                MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
              }
            }

            while (v25 != v24);
            v26 = v68;
          }

          v69 = v24;
          operator delete(v26);
        }

        if (v64 != v67)
        {
          free(v64);
        }
      }

      goto LABEL_42;
    }

    if (*v48 == 20551 && *(v48 + 2) == 85)
    {
      v29 = 0;
    }

    else if (*v48 == 20033 && *(v48 + 2) == 69)
    {
      v29 = 1;
    }

    else
    {
      if (*v48 != 20547 || *(v48 + 2) != 85)
      {
        goto LABEL_16;
      }

      v29 = 2;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v50 = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
      v51 = Context;
      v63[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v63[1] = &v50;
      v53 = v29;
      v41 = v29 ^ 0xFF51AFD7ED558CCDLL;
      v42 = 0x9DDFEA08EB382D69 * (((8 * v29) | 4) ^ v41);
      v48 = &v53;
      v46[0] = &v53;
      v46[1] = v63;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) >> 32) >> 15) ^ (-348639895 * (v41 ^ (v42 >> 47) ^ v42))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v46);
    }
  }

  return 0;
}

llvm::raw_ostream *mlir::placement::RegionTypeAttr::print(mlir::placement::RegionTypeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (!v6)
  {
    v7 = 0;
    v9 = "GPU";
    goto LABEL_14;
  }

  if (v6 == 2)
  {
    v7 = 0;
    v9 = "CPU";
LABEL_14:
    v8 = 3;
    goto LABEL_15;
  }

  v7 = v6 != 1;
  if (v6 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 1)
  {
    v9 = "ANE";
  }

  else
  {
    v9 = "";
  }

LABEL_15:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::placement::PlacementDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v30[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v33[2] = 0;
  v31 = 0;
  v32 = 0;
  v30[1] = v5;
  v33[0] = 0;
  if (((*(*a2 + 640))(a2, &v31) & 1) == 0)
  {
    v6 = 0;
    *v33 = 256;
    if (v33[2])
    {
      v27 = "region_type";
    }

    else
    {
      v33[2] = 1;
    }

    goto LABEL_15;
  }

  v27 = "region_type";
  v28 = 11;
  if (v33[2])
  {
    v6 = 0;
LABEL_15:
    v7 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v32;
  if (v32)
  {
    if (v32 == 11 && *v31 == 0x745F6E6F69676572 && *(v31 + 3) == 0x657079745F6E6F69)
    {
      v6 = mlir::placement::RegionTypeAttr::parse(a2);
      v33[0] = v6 != 0;
      *&v33[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v30[0] + 648))(v30[0], &v27, 1);
    if (v33[2])
    {
      v7 = 0;
      v9 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = v32;
  }

  v6 = 0;
  v9 = v31;
  *v33 = 0;
  v33[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v30) & 0x100) == 0)
  {
    v26 = 257;
    (*(*a2 + 24))(v30, a2, v4, v25);
    if (*v10)
    {
      v29 = 261;
      v27 = v9;
      v28 = v7;
      v11 = v10;
      mlir::Diagnostic::operator<<((v10 + 1), &v27);
      v10 = v11;
    }

    if (*v12)
    {
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v29 = 261;
      v27 = v13;
      v28 = v14;
      v15 = v12;
      mlir::Diagnostic::operator<<((v12 + 1), &v27);
      v12 = v15;
    }

    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v38;
        v18 = __p;
        if (v38 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v38 = v16;
        operator delete(v18);
      }

      v19 = v35;
      if (v35)
      {
        v20 = v36;
        v21 = v35;
        if (v36 != v35)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v35;
        }

        v36 = v19;
        operator delete(v21);
      }

      if (v32 != &v34)
      {
        free(v32);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::placement::PlacementDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 0xA)
    {
      *(v7 + 7) = 1701869940;
      *v7 = *"region_type";
      v6[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v6, "region_type", 0xBuLL);
    }

    mlir::placement::RegionTypeAttr::print(v8, a3);
  }
}

uint64_t mlir::placement::TimerHandleType::get(mlir::placement::TimerHandleType *this, unint64_t a2)
{
  v8 = this;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(this);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v7[1] = &v8;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
  v12[1] = v7;
  v11 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::placement::TimerHandleType::parse(mlir::placement::TimerHandleType *this, mlir::AsmParser *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(this);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v20 = 257;
    if ((*(*this + 400))(this, "handle", 6, v19) & 1) != 0 && ((*(*this + 136))(this))
    {
      v19[0] = 0;
      v3 = mlir::AsmParser::parseInteger<unsigned long long>(this, v19);
      v4 = *this;
      if (v3)
      {
        v5 = v19[0];
        if ((*(v4 + 168))(this))
        {
          Context = mlir::AsmParser::getContext(this);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
          v21[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
          v21[1] = &Context;
          v19[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
          v19[1] = v21;
          v25 = v5;
          v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
          v8 = 0x9DDFEA08EB382D69 * ((8 * v5 + 8) ^ v7);
          v23[0] = &v25;
          v23[1] = v19;
          v24 = &v25;
          return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
        }
      }

      else
      {
        v10 = (*(v4 + 40))(this);
        v20 = 259;
        (*(*this + 24))(v26, this, v10, v19);
        if (v26[0])
        {
          mlir::InFlightDiagnostic::report(v26);
        }

        if (v34 == 1)
        {
          if (v33 != &v34)
          {
            free(v33);
          }

          v11 = __p;
          if (__p)
          {
            v12 = v32;
            v13 = __p;
            if (v32 != __p)
            {
              do
              {
                v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
              }

              while (v12 != v11);
              v13 = __p;
            }

            v32 = v11;
            operator delete(v13);
          }

          v14 = v29;
          if (v29)
          {
            v15 = v30;
            v16 = v29;
            if (v30 != v29)
            {
              do
              {
                v18 = *--v15;
                v17 = v18;
                *v15 = 0;
                if (v18)
                {
                  MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
                }
              }

              while (v15 != v14);
              v16 = v29;
            }

            v30 = v14;
            operator delete(v16);
          }

          if (v27 != &v28)
          {
            free(v27);
          }
        }
      }
    }
  }

  return 0;
}

llvm::raw_ostream *mlir::placement::TimerHandleType::print(mlir::placement::TimerHandleType *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 25964;
    *v7 = 1684955496;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "handle", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = *(*this + 8);
  v15 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v15, v14);
  result = (*(*a2 + 16))(a2);
  v17 = *(result + 4);
  if (*(result + 3) == v17)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::placement::PlacementDialect::parseType(uint64_t a1, mlir::placement::TimerHandleType *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v31[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v34[2] = 0;
  v32 = 0;
  v33 = 0;
  v31[1] = v5;
  v34[0] = 0;
  if (((*(*a2 + 640))(a2, &v32) & 1) == 0)
  {
    v7 = 0;
    *v34 = 256;
    if (v34[2])
    {
      v28 = "timer";
    }

    else
    {
      v34[2] = 1;
    }

    goto LABEL_15;
  }

  v28 = "timer";
  v29 = 5;
  if (v34[2])
  {
    goto LABEL_3;
  }

  v8 = v33;
  if (v33)
  {
    if (v33 == 5 && *v32 == 1701669236 && *(v32 + 4) == 114)
    {
      v7 = mlir::placement::TimerHandleType::parse(a2, v6);
      v34[0] = v7 != 0;
      *&v34[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v31[0] + 648))(v31[0], &v28, 1);
    if (v34[2])
    {
LABEL_3:
      v7 = 0;
LABEL_15:
      v8 = 0;
      v10 = 0;
      goto LABEL_16;
    }

    v8 = v33;
  }

  v7 = 0;
  v10 = v32;
  *v34 = 0;
  v34[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v31) & 0x100) == 0)
  {
    v27 = 257;
    (*(*a2 + 24))(v31, a2, v4, v26);
    if (*v11)
    {
      v30 = 261;
      v28 = v10;
      v29 = v8;
      v12 = v11;
      mlir::Diagnostic::operator<<((v11 + 1), &v28);
      v11 = v12;
    }

    if (*v13)
    {
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v30 = 261;
      v28 = v14;
      v29 = v15;
      v16 = v13;
      mlir::Diagnostic::operator<<((v13 + 1), &v28);
      v13 = v16;
    }

    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v39;
        v19 = __p;
        if (v39 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v39 = v17;
        operator delete(v19);
      }

      v20 = v36;
      if (v36)
      {
        v21 = v37;
        v22 = v36;
        if (v37 != v36)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          v22 = v36;
        }

        v37 = v20;
        operator delete(v22);
      }

      if (v33 != &v35)
      {
        free(v33);
      }
    }

    return 0;
  }

  return v7;
}

void mlir::placement::PlacementDialect::printType(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 4)
    {
      *(v7 + 4) = 114;
      *v7 = 1701669236;
      v6[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v6, "timer", 5uLL);
    }

    mlir::placement::TimerHandleType::print(v8, a3);
  }
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(uint64_t *a1, const char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v52[0] = a2;
    v10 = v52;
LABEL_34:
    v10[1] = v9;
    mlir::ElementsAttr::isSplat(v10);
    return 1;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v47[0] = a2;
    v10 = v47;
    goto LABEL_34;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v48 = 261;
  v47[0] = a3;
  v47[1] = a4;
  mlir::Operation::emitOpError(a1, v47, v52);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " #");
  if (*v12)
  {
    v14 = v12 + 24;
    v13 = *(v12 + 24);
    v49 = 5;
    v50 = a5;
    v15 = *(v12 + 32);
    v16 = &v49;
    if (v15 >= *(v12 + 36))
    {
      if (v13 <= &v49 && v13 + 24 * v15 > &v49)
      {
        v42 = &v49 - v13;
        v43 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, (v12 + 40), v15 + 1, 24);
        v12 = v43;
        v13 = *(v43 + 24);
        v16 = &v42[v13];
      }

      else
      {
        v40 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, (v12 + 40), v15 + 1, 24);
        v12 = v40;
        v13 = *(v40 + 24);
        v16 = &v49;
      }
    }

    v17 = v13 + 24 * *(v12 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    v19 = (*(v12 + 32) + 1);
    *(v12 + 32) = v19;
    if (*v12)
    {
      v49 = 3;
      v50 = " must be tensor of any type values or memref of any type values or index, but got ";
      v51 = 82;
      v20 = *(v12 + 24);
      v21 = &v49;
      if (v19 >= *(v12 + 36))
      {
        if (v20 <= &v49 && v20 + 24 * v19 > &v49)
        {
          v44 = &v49 - v20;
          v45 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 40), v19 + 1, 24);
          v12 = v45;
          v20 = *(v45 + 24);
          v21 = &v44[v20];
        }

        else
        {
          v41 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 40), v19 + 1, 24);
          v12 = v41;
          v20 = *(v41 + 24);
          v21 = &v49;
        }
      }

      v22 = v20 + 24 * *(v12 + 32);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 2);
      *v22 = v23;
      ++*(v12 + 32);
      if (*v12)
      {
        v24 = &v49;
        v25 = v12;
        mlir::DiagnosticArgument::DiagnosticArgument(&v49, a2);
        v26 = *(v25 + 32);
        v27 = *(v25 + 24);
        if (v26 >= *(v25 + 36))
        {
          if (v27 <= &v49 && v27 + 24 * v26 > &v49)
          {
            v46 = &v49 - v27;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v25 + 40), v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v46[v27];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v25 + 40), v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v49;
          }
        }

        else
        {
          v12 = v25;
        }

        v28 = v27 + 24 * *(v12 + 32);
        v29 = *v24;
        *(v28 + 16) = *(v24 + 2);
        *v28 = v29;
        ++*(v12 + 32);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  v31 = result;
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
    result = v31;
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
      result = v31;
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
      result = v31;
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
      result = v31;
    }

    if (v53 != &v54)
    {
      free(v53);
      return v31;
    }
  }

  return result;
}

BOOL mlir::placement::ANEIOCast::verify(uint64_t **this)
{
  v34 = *MEMORY[0x1E69E9840];
  v23[0] = *((*this)[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(v23);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id || (*(*this - 1) ^ *(*(*(DefiningOp + 72) + 24) + 8)) < 8)
  {
    return 1;
  }

  v19 = 257;
  mlir::OpState::emitOpError(this, v18, v23);
  if (v23[0])
  {
    v20 = 3;
    v21 = "invalid conversion";
    v22 = 18;
    v4 = &v20;
    v5 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v17 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v5 = v24;
        v4 = (v24 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v4 = &v20;
        v5 = v24;
      }
    }

    v6 = &v5[24 * v25];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v25;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  v8 = result;
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
    result = v8;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v31;
      v11 = __p;
      if (v31 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v31 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v28;
    if (v28)
    {
      v13 = v29;
      v14 = v28;
      if (v29 != v28)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v28;
      }

      v29 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v24 != v27)
    {
      free(v24);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(ZinCompressedFootprintInfo *this, ZinCompressedFootprintInfo *a2, uint64_t a3)
{
  v3 = this;
  v18 = a3;
  v4 = a2 - this;
  if (a2 - this >= 257)
  {
    AttrData = mlir::OpaqueAttr::getAttrData(&v18);
    v7 = v6;
    v8 = v4 >> 4;
    while (1)
    {
      v9 = v8 >> 1;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes((v3 + 16 * (v8 >> 1)));
      v10 = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
      v12 = v11;
      v13 = v7 >= v11 ? v11 : v7;
      if (v13)
      {
        v14 = memcmp(v10, AttrData, v13);
        if (v14)
        {
          break;
        }
      }

      if (v12 == v7)
      {
        v3 = (v3 + 16 * (v8 >> 1));
        return *(v3 + 1);
      }

      if (v12 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v8 = v9;
      if (v9 <= 0)
      {
        return 0;
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v8 >> 1) + 16);
    v9 = v8 + ~v9;
    goto LABEL_4;
  }

  if (this != a2)
  {
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(v3) == a3)
      {
        return *(v3 + 1);
      }

      v3 = (v3 + 16);
    }

    while (v3 != a2);
  }

  return 0;
}

uint64_t mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(mlir::placement::detail::MemrefToTensorGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v3, **(*(this + 1) + 96));
  if (v4 && ((v5 = *(*v4 + 136), v6 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) ? (v7 = 0) : (v7 = v4), v16 = v7, v6))
  {
    mlir::IntegerAttr::getValue(&v16, &v14);
    if (v15 >= 0x41)
    {
      v11 = v14;
    }

    else
    {
      v11 = &v14;
    }

    v12 = *v11;
    v8 = *v11 & 0xFFFFFF00;
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x1AC55A040]();
    }

    v10 = v12;
    v9 = 0x100000000;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  return v9 | v8 | v10;
}

BOOL mlir::placement::MemrefToTensorAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v40);
  if (Value == mlir::DictionaryAttr::end(&v40))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
      {
        v5 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v40));
    if (v7)
    {
      if (!mlir::DenseIntElementsAttr::classof(v7))
      {
        goto LABEL_16;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v35[0] = v7;
      v35[1] = v8;
      Type = mlir::ElementsAttr::getType(v35);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v41[0] = v10;
      v41[1] = Type;
      mlir::ShapedType::getShape(v41);
      if (v11 != 1 || (v37 = v7, v38[0] = mlir::ArrayAttr::getValue(&v37), v38[1] = v12, isSplat = mlir::ElementsAttr::isSplat(v38), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_16:
        v35[0] = "'placement.memref_to_tensor' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v36 = 259;
        mlir::emitError(a2, v35, v41);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v14 = __p;
          if (__p)
          {
            v15 = v47;
            v16 = __p;
            if (v47 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v47 = v14;
            operator delete(v16);
          }

          v17 = v44;
          if (!v44)
          {
            goto LABEL_74;
          }

          v18 = v45;
          v19 = v44;
          if (v45 == v44)
          {
LABEL_73:
            v45 = v17;
            operator delete(v19);
LABEL_74:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v13;
          }

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
LABEL_72:
          v19 = v44;
          goto LABEL_73;
        }

        return v13;
      }
    }
  }

  if (!v6)
  {
LABEL_52:
    if (!v5)
    {
      return 1;
    }

    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v35[0] = v5;
      v41[0] = mlir::AffineMapAttr::getValue(v35);
      if (mlir::Type::isUnsignedInteger(v41, 32))
      {
        return 1;
      }
    }

    v35[0] = "'placement.memref_to_tensor' op attribute 'interleave' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v36 = 259;
    mlir::emitError(a2, v35, v41);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v47;
        v30 = __p;
        if (v47 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v47 = v28;
        operator delete(v30);
      }

      v17 = v44;
      if (!v44)
      {
        goto LABEL_74;
      }

      v31 = v45;
      v19 = v44;
      if (v45 == v44)
      {
        goto LABEL_73;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
        }
      }

      while (v31 != v17);
      goto LABEL_72;
    }

    return v13;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v41[0] = v6;
    mlir::AffineMapAttr::getValue(v41);
    goto LABEL_52;
  }

  v35[0] = "'placement.memref_to_tensor' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v36 = 259;
  mlir::emitError(a2, v35, v41);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v47;
      v24 = __p;
      if (v47 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v47 = v22;
      operator delete(v24);
    }

    v17 = v44;
    if (!v44)
    {
      goto LABEL_74;
    }

    v25 = v45;
    v19 = v44;
    if (v45 == v44)
    {
      goto LABEL_73;
    }

    do
    {
      v27 = *--v25;
      v26 = v27;
      *v25 = 0;
      if (v27)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
      }
    }

    while (v25 != v17);
    goto LABEL_72;
  }

  return v13;
}

uint64_t mlir::placement::MemrefToTensor::getShapeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getResultElementTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x1E69E9840];
  v65 = a11;
  v69 = a6;
  LOBYTE(v70) = 0;
  v71 = 0;
  v72 = a9;
  v73 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v69);
    if (v71 == 1)
    {
      v71 = 0;
    }

    mlir::OperationName::OperationName(&v70, "placement.memref_to_tensor", 26, Context);
    v71 = 1;
  }

  v74 = a4;
  v75 = a5;
  if (a5)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::placement::MemrefToTensorAdaptor::verify(&v69, v15))
    {
      v66 = v74;
      v67 = 0;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v66, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v63 = v16;
        v64 = v17;
        if (v16)
        {
          isSplat = mlir::ElementsAttr::isSplat(&v63);
          Shape = mlir::ShapedType::getShape(&v63);
          v21 = v19;
          v66 = v68;
          v67 = 0x500000000;
          v22 = (8 * v19) >> 3;
          if (v22 < 6)
          {
            v23 = 0;
            v24 = 8 * v19;
            if (!v19)
            {
LABEL_19:
              LODWORD(v67) = v23 + (v24 >> 3);
              Value = mlir::AffineMapAttr::getValue(&v69);
              v30 = mlir::DictionaryAttr::end(&v69);
              v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v30, *(*(v70 + 96) + 8));
              if (v31)
              {
                v32 = *(*v31 + 136);
                v33 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
                v34 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id ? v31 : 0;
                v61 = v34;
                if (v33)
                {
                  isSplat = mlir::AffineMapAttr::getValue(&v61);
                }
              }

              v35 = mlir::AffineMapAttr::getValue(&v69);
              v36 = mlir::DictionaryAttr::end(&v69);
              v37 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v35, v36, *(*(v70 + 96) + 16));
              if (!v37 || (v38 = v37, !mlir::DenseIntElementsAttr::classof(v37)))
              {
LABEL_43:
                v46 = mlir::AffineMapAttr::getValue(&v69);
                v47 = mlir::DictionaryAttr::end(&v69);
                v48 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v46, v47, **(v70 + 96));
                if (v48)
                {
                  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                  {
                    v52 = mlir::AffineMapAttr::getValue(&v69);
                    v53 = mlir::DictionaryAttr::end(&v69);
                    v54 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v52, v53, *(*(v70 + 96) + 16));
                    if (!v54 || !mlir::DenseIntElementsAttr::classof(v54))
                    {
                      v55 = v67;
                      if ((v67 & 0xFFFFFFFE) != 4)
                      {
LABEL_48:
                        if (v66 != v68)
                        {
                          v51 = result;
                          free(v66);
                          return v51;
                        }

                        return result;
                      }

                      Interleave = mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(&v69);
                      v57 = 16;
                      if (v55 == 4)
                      {
                        v57 = 8;
                      }

                      v58 = v66;
                      *(v66 + v57) /= Interleave;
                      v58[v55 - 1] *= Interleave;
                    }
                  }
                }

                v49 = mlir::RankedTensorType::get(v66, v67, isSplat, 0);
                v50 = *(a11 + 8);
                if (v50 >= *(a11 + 12))
                {
                  v60 = v49;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v50 + 1, 8);
                  v49 = v60;
                  LODWORD(v50) = *(a11 + 8);
                }

                *(*a11 + 8 * v50) = v49;
                ++*(a11 + 8);
                result = 1;
                goto LABEL_48;
              }

              v61 = v38;
              v62 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v61, 8, 1, 0))
              {
                RawStringData = mlir::DenseElementsAttr::getRawStringData(&v61);
                LOBYTE(v21) = mlir::DenseElementsAttr::isSplat(&v61);
                mlir::ArrayAttr::getValue(&v61);
                mlir::DenseElementsAttr::getNumElements(&v61);
              }

              else
              {
                RawStringData = 0;
              }

              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v61, 8, 1, 0))
              {
                mlir::DenseElementsAttr::getRawStringData(&v61);
                mlir::DenseElementsAttr::isSplat(&v61);
                mlir::ArrayAttr::getValue(&v61);
                NumElements = mlir::DenseElementsAttr::getNumElements(&v61);
                v24 = NumElements;
                LODWORD(v67) = 0;
                if (NumElements <= HIDWORD(v67))
                {
                  v41 = 0;
                  v42 = 0;
                  if (!NumElements)
                  {
LABEL_42:
                    LODWORD(v67) = v42;
                    goto LABEL_43;
                  }
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, NumElements, 8);
                  v41 = v67;
                }
              }

              else
              {
                v41 = 0;
              }

              v43 = 0;
              v44 = v66 + 8 * v41;
              do
              {
                if (v21)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v43;
                }

                *&v44[8 * v43++] = *(RawStringData + 8 * v45);
              }

              while (v24 != v43);
              v42 = v41 + v24;
              goto LABEL_42;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v22, 8);
            v23 = v67;
            v24 = 8 * v21;
            if (!v21)
            {
              goto LABEL_19;
            }
          }

          memcpy(v66 + 8 * v23, Shape, v24);
          v23 = v67;
          goto LABEL_19;
        }
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }
    }
  }

  v25 = mlir::Float32Type::get(this, a2);
  v26 = mlir::UnrankedTensorType::get(v25);
  v27 = *(a11 + 8);
  if (v27 >= *(a11 + 12))
  {
    v59 = v26;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v27 + 1, 8);
    v26 = v59;
    LODWORD(v27) = *(a11 + 8);
  }

  *(*a11 + 8 * v27) = v26;
  ++*(a11 + 8);
  return 1;
}

void mlir::placement::MemrefToTensor::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v28;
  v27 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v25, *(a2 + 224), *(a2 + 232));
  if ((mlir::placement::MemrefToTensor::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v25[0], v25[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v20);
  }

  v21 = __src;
  v22 = v27;
  v23 = *(a2 + 72);
  v24 = v23 + v27;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v28)
  {
    free(__src);
  }
}

BOOL mlir::placement::MemrefToTensor::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v10 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = *this;
  }

  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v10, v7, "shape", 5) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v6, "resultElementType", 0x11) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, v5, "interleave", 0xA) || !mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_8;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v29 = a2;
  v30 = v8;
  Type = mlir::ElementsAttr::getType(&v29);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  mlir::ShapedType::getShape(v32);
  if (v11 == 1)
  {
    v26 = a2;
    v27[0] = mlir::ArrayAttr::getValue(&v26);
    v27[1] = v12;
    isSplat = mlir::ElementsAttr::isSplat(v27);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_8:
  v31 = 257;
  mlir::Operation::emitOpError(a1, &v29, v32);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, "attribute '");
  if (*v14)
  {
    v31 = 261;
    v29 = a3;
    v30 = a4;
    v15 = v14;
    mlir::Diagnostic::operator<<((v14 + 1), &v29);
    v14 = v15;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v14, "' failed to satisfy constraint: ui64 elements attribute of rank 1");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v13;
}

BOOL mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v21[0] = a2;
    mlir::AffineMapAttr::getValue(v21);
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(a1, v19, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: any type attribute");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

BOOL mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isUnsignedInteger = mlir::Type::isUnsignedInteger(v23, 32);
    a1 = v6;
    if (isUnsignedInteger)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 32-bit unsigned integer attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
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

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v39[0] = a2;
    v39[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ElementsAttr::isSplat(v39);
    return 1;
  }

  else
  {
    v36 = 261;
    v35[0] = a3;
    v35[1] = a4;
    mlir::Operation::emitOpError(a1, v35, v39);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, " #");
    if (*v8)
    {
      v9 = *(v8 + 24);
      v37 = 5;
      v38 = a5;
      v10 = *(v8 + 32);
      v11 = &v37;
      if (v10 >= *(v8 + 36))
      {
        if (v9 <= &v37 && v9 + 24 * v10 > &v37)
        {
          v32 = &v37 - v9;
          v33 = v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, (v8 + 40), v10 + 1, 24);
          v8 = v33;
          v9 = *(v33 + 24);
          v11 = &v32[v9];
        }

        else
        {
          v31 = v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, (v8 + 40), v10 + 1, 24);
          v8 = v31;
          v9 = *(v31 + 24);
          v11 = &v37;
        }
      }

      v12 = v9 + 24 * *(v8 + 32);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      ++*(v8 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v8, " must be memref of any type values, but got ");
    if (*v14)
    {
      v15 = &v37;
      v16 = v14;
      mlir::DiagnosticArgument::DiagnosticArgument(&v37, a2);
      v14 = v16;
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      if (v18 >= *(v16 + 36))
      {
        if (v17 <= &v37 && v17 + 24 * v18 > &v37)
        {
          v34 = &v37 - v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, (v16 + 40), v18 + 1, 24);
          v14 = v16;
          v17 = *(v16 + 24);
          v15 = &v34[v17];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, (v16 + 40), v18 + 1, 24);
          v14 = v16;
          v17 = *(v16 + 24);
          v15 = &v37;
        }
      }

      v19 = v17 + 24 * *(v14 + 32);
      v20 = *v15;
      *(v19 + 16) = *(v15 + 2);
      *v19 = v20;
      ++*(v14 + 32);
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
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

      v22 = __p;
      if (__p)
      {
        v23 = v45;
        v24 = __p;
        if (v45 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v45 = v22;
        operator delete(v24);
      }

      v25 = v42;
      if (v42)
      {
        v26 = v43;
        v27 = v42;
        if (v43 != v42)
        {
          do
          {
            v29 = *--v26;
            v28 = v29;
            *v26 = 0;
            if (v29)
            {
              MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
            }
          }

          while (v26 != v25);
          v27 = v42;
        }

        v43 = v25;
        operator delete(v27);
      }

      if (v40 != &v41)
      {
        free(v40);
      }
    }
  }

  return v21;
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v41[0] = a2;
    v41[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ElementsAttr::isSplat(v41);
    return 1;
  }

  else
  {
    v38 = 261;
    v37[0] = a3;
    v37[1] = a4;
    mlir::Operation::emitOpError(a1, v37, v41);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v41, " #");
    if (*v11)
    {
      v12 = *(v11 + 24);
      v39 = 5;
      v40 = a5;
      v13 = *(v11 + 32);
      v14 = &v39;
      if (v13 >= *(v11 + 36))
      {
        if (v12 <= &v39 && v12 + 24 * v13 > &v39)
        {
          v34 = &v39 - v12;
          v35 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v13 + 1, 24);
          v11 = v35;
          v12 = *(v35 + 24);
          v14 = &v34[v12];
        }

        else
        {
          v33 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v13 + 1, 24);
          v11 = v33;
          v12 = *(v33 + 24);
          v14 = &v39;
        }
      }

      v15 = v12 + 24 * *(v11 + 32);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, " must be tensor of any type values, but got ");
    if (*v17)
    {
      v18 = &v39;
      v19 = v17;
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, a2);
      v17 = v19;
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);
      if (v21 >= *(v19 + 36))
      {
        if (v20 <= &v39 && v20 + 24 * v21 > &v39)
        {
          v36 = &v39 - v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v36[v20];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, (v19 + 40), v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v39;
        }
      }

      v22 = v20 + 24 * *(v17 + 32);
      v23 = *v18;
      *(v22 + 16) = *(v18 + 2);
      *v22 = v23;
      ++*(v17 + 32);
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v47;
        v26 = __p;
        if (v47 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v47 = v24;
        operator delete(v26);
      }

      v27 = v44;
      if (v44)
      {
        v28 = v45;
        v29 = v44;
        if (v45 != v44)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
            }
          }

          while (v28 != v27);
          v29 = v44;
        }

        v45 = v27;
        operator delete(v29);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v9;
}

uint64_t mlir::placement::MemrefToTensor::verify(mlir::Operation **this)
{
  v133 = *MEMORY[0x1E69E9840];
  v118 = *this;
  v2 = (*(*(*(v118 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  if (v3)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v117[0] = v2;
  v117[1] = v3;
  if (!mlir::placement::MemrefToTensor::getShapeAttr(&v118) || !v117[0] || !mlir::ElementsAttr::getShapedType(v117))
  {
    goto LABEL_32;
  }

  Shape = mlir::ShapedType::getShape(v117);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_11:
  v7 = mlir::ShapedType::getShape(v117);
  NumElements = mlir::ShapedType::getNumElements(v7, v8);
  ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v118);
  LOBYTE(v124[0]) = ShapeAttr != 0;
  isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0);
  if ((isValidIntOrFloat & 1) == 0)
  {
    RawStringData = 0;
    if (isValidIntOrFloat <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    v12 = isValidIntOrFloat & 0xFFFFFFFFFFFFFFFELL;
    v15 = 1;
    v16 = 1;
    do
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14;
      }

      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 + 1;
      }

      v15 *= *(RawStringData + 8 * v17);
      v16 *= *(RawStringData + 8 * v18);
      v14 += 2;
    }

    while (v14 != v12);
    v13 = v16 * v15;
    goto LABEL_30;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
  isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
  mlir::ArrayAttr::getValue(&ShapeAttr);
  isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  if (!isValidIntOrFloat)
  {
    v13 = 1;
    goto LABEL_31;
  }

  if (isValidIntOrFloat > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v12 = 0;
  v13 = 1;
  do
  {
    if (isSplat)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12;
    }

    v13 *= *(RawStringData + 8 * v19);
    ++v12;
LABEL_30:
    ;
  }

  while (isValidIntOrFloat != v12);
LABEL_31:
  if (NumElements != v13)
  {
    v122 = 257;
    mlir::Operation::emitOpError(v118, &v119, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Input shape ");
    if (*v32)
    {
      v33 = &v114;
      v34 = v32;
      mlir::DiagnosticArgument::DiagnosticArgument(&v114, v117[0]);
      v35 = *(v34 + 24);
      v36 = *(v34 + 32);
      if (v36 >= *(v34 + 36))
      {
        if (v35 <= &v114 && v35 + 24 * v36 > &v114)
        {
          v107 = &v114 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, (v34 + 40), v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v107[v35];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, (v34 + 40), v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v114;
        }
      }

      else
      {
        v32 = v34;
      }

      v37 = v35 + 24 * *(v32 + 32);
      v38 = *v33;
      *(v37 + 16) = v33[2];
      *v37 = v38;
      ++*(v32 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " (");
    if (*v39)
    {
      v40 = *(v39 + 24);
      LODWORD(v114) = 5;
      v115 = NumElements;
      v41 = *(v39 + 32);
      v42 = &v114;
      if (v41 >= *(v39 + 36))
      {
        if (v40 <= &v114 && v40 + 24 * v41 > &v114)
        {
          v108 = &v114 - v40;
          v109 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
          v39 = v109;
          v40 = *(v109 + 24);
          v42 = &v108[v40];
        }

        else
        {
          v105 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
          v39 = v105;
          v40 = *(v105 + 24);
          v42 = &v114;
        }
      }

      v43 = v40 + 24 * *(v39 + 32);
      v44 = *v42;
      *(v43 + 16) = v42[2];
      *v43 = v44;
      ++*(v39 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, " elements) is not compatible with shape attribute ");
    v46 = v45;
    v47 = mlir::placement::MemrefToTensor::getShapeAttr(&v118);
    if (*v46)
    {
      v48 = &v114;
      mlir::DiagnosticArgument::DiagnosticArgument(&v114, v47);
      v49 = v46 + 24;
      v50 = *(v46 + 24);
      v51 = *(v46 + 32);
      if (v51 >= *(v46 + 36))
      {
        if (v50 <= &v114 && v50 + 24 * v51 > &v114)
        {
          v110 = &v114 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v46 + 40), v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v110[v50];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v46 + 40), v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v114;
        }
      }

      v52 = v50 + 24 * *(v46 + 32);
      v53 = *v48;
      *(v52 + 16) = v48[2];
      *v52 = v53;
      ++*(v46 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v46, " (");
    if (*v54)
    {
      v55 = *(v54 + 24);
      LODWORD(v114) = 2;
      v115 = v13;
      v56 = *(v54 + 32);
      v57 = &v114;
      if (v56 >= *(v54 + 36))
      {
        if (v55 <= &v114 && v55 + 24 * v56 > &v114)
        {
          v111 = &v114 - v55;
          v112 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, (v54 + 40), v56 + 1, 24);
          v54 = v112;
          v55 = *(v112 + 24);
          v57 = &v111[v55];
        }

        else
        {
          v106 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, (v54 + 40), v56 + 1, 24);
          v54 = v106;
          v55 = *(v106 + 24);
          v57 = &v114;
        }
      }

      v58 = v55 + 24 * *(v54 + 32);
      v59 = *v57;
      *(v58 + 16) = v57[2];
      *v58 = v59;
      ++*(v54 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " elements)");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    v62 = result;
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v62;
    }

    if ((v132 & 1) == 0)
    {
      return result;
    }

    if (v131 != &v132)
    {
      free(v131);
      result = v62;
    }

    v63 = __p;
    if (__p)
    {
      v64 = v130;
      v65 = __p;
      if (v130 != __p)
      {
        do
        {
          v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
        }

        while (v64 != v63);
        v65 = __p;
      }

      v130 = v63;
      operator delete(v65);
      result = v62;
    }

    v66 = v127;
    if (v127)
    {
      v67 = v128;
      v68 = v127;
      if (v128 != v127)
      {
        do
        {
          v70 = *--v67;
          v69 = v70;
          *v67 = 0;
          if (v70)
          {
            MEMORY[0x1AC55A040](v69, 0x1000C8077774924);
          }
        }

        while (v67 != v66);
        goto LABEL_107;
      }

LABEL_108:
      v128 = v66;
      operator delete(v68);
      result = v62;
    }

LABEL_109:
    if (v125 != &v126)
    {
      free(v125);
      return v62;
    }

    return result;
  }

LABEL_32:
  ShapeAttr = mlir::Operation::getAttrDictionary(v118);
  Value = mlir::ArrayAttr::getValue(&ShapeAttr);
  ShapeAttr = mlir::Operation::getAttrDictionary(v118);
  v21 = mlir::ArrayAttr::getValue(&ShapeAttr);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v21 + 16 * v22), **(*(v118 + 6) + 96));
  if (!v23)
  {
    return 1;
  }

  v24 = *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v117[0] == 0;
  if (v24 || !mlir::ElementsAttr::getShapedType(v117))
  {
    return 1;
  }

  v25 = mlir::ShapedType::getShape(v117);
  if (v26)
  {
    v27 = 8 * v26;
    while (*v25 != 0x8000000000000000)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_42;
      }
    }

    return 1;
  }

LABEL_42:
  ShapeAttr = mlir::Operation::getAttrDictionary(v118);
  v28 = mlir::ArrayAttr::getValue(&ShapeAttr);
  ShapeAttr = mlir::Operation::getAttrDictionary(v118);
  v29 = mlir::ArrayAttr::getValue(&ShapeAttr);
  v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 + 16 * v30), **(*(v118 + 6) + 96));
  if (v31)
  {
    if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v119 = v31;
      mlir::IntegerAttr::getValue(&v119, &ShapeAttr);
      if (v124[0] >= 0x41u)
      {
        p_ShapeAttr = ShapeAttr;
      }

      else
      {
        p_ShapeAttr = &ShapeAttr;
      }

      v31 = *p_ShapeAttr;
      if (v124[0] >= 0x41u && ShapeAttr)
      {
        v72 = *p_ShapeAttr;
        MEMORY[0x1AC55A040](ShapeAttr, 0x1000C8000313F17);
        v31 = v72;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  mlir::getANENextSupportedInterleaveValue(v31);
  if ((v73 & 1) == 0)
  {
    v122 = 257;
    mlir::Operation::emitOpError(v118, &v119, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "interleave factor not supported");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v86);
    v62 = result;
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v62;
    }

    if (v132 != 1)
    {
      return result;
    }

    if (v131 != &v132)
    {
      free(v131);
      result = v62;
    }

    v87 = __p;
    if (__p)
    {
      v88 = v130;
      v89 = __p;
      if (v130 != __p)
      {
        do
        {
          v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
        }

        while (v88 != v87);
        v89 = __p;
      }

      v130 = v87;
      operator delete(v89);
      result = v62;
    }

    v66 = v127;
    if (v127)
    {
      v90 = v128;
      v68 = v127;
      if (v128 != v127)
      {
        do
        {
          v92 = *--v90;
          v91 = v92;
          *v90 = 0;
          if (v92)
          {
            MEMORY[0x1AC55A040](v91, 0x1000C8077774924);
          }
        }

        while (v90 != v66);
LABEL_107:
        v68 = v127;
        goto LABEL_108;
      }

      goto LABEL_108;
    }

    goto LABEL_109;
  }

  v119 = v121;
  v120 = 0x400000000;
  v74 = mlir::ShapedType::getShape(v117);
  v75 = mlir::ShapedType::getShape(v117);
  v76 = 0;
  v78 = (v75 + 8 * v77);
  LODWORD(v120) = 0;
  v79 = v78 - v74;
  v80 = (v78 - v74) >> 3;
  if (v80 > HIDWORD(v120))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v119, v121, v80, 8);
    v76 = v120;
  }

  if (v78 != v74)
  {
    memcpy(v119 + 8 * v76, v74, v78 - v74);
    v76 = v120;
  }

  v81 = v76 + (v79 >> 3);
  LODWORD(v120) = v76 + (v79 >> 3);
  if ((v81 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    ShapeAttr = mlir::Operation::getAttrDictionary(v118);
    v93 = mlir::ArrayAttr::getValue(&ShapeAttr);
    ShapeAttr = mlir::Operation::getAttrDictionary(v118);
    v94 = mlir::ArrayAttr::getValue(&ShapeAttr);
    result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v93, (v94 + 16 * v95), **(*(v118 + 6) + 96));
    if (result && *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v114 = result;
      mlir::IntegerAttr::getValue(&v114, &ShapeAttr);
      result = ShapeAttr;
      if (v124[0] >= 0x41u)
      {
        v104 = ShapeAttr;
      }

      else
      {
        v104 = &ShapeAttr;
      }

      v96 = *v104;
      if (v124[0] >= 0x41u && ShapeAttr)
      {
        result = MEMORY[0x1AC55A040]();
      }
    }

    else
    {
      v96 = 0;
    }

    v113 = v96;
    if (v81 == 4)
    {
      v97 = 1;
    }

    else
    {
      v97 = 2;
    }

    v98 = *(v119 + v97) % v96;
    v85 = v98 == 0;
    if (v98)
    {
      v116 = 257;
      mlir::Operation::emitOpError(v118, &v114, &ShapeAttr);
      if (ShapeAttr)
      {
        mlir::Diagnostic::append<char const(&)[7]>(v124, "channel ");
      }

      mlir::InFlightDiagnostic::operator<<<long long &>(&ShapeAttr, v119 + v97);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v99, " must be a multiple of interleave ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v100, &v113);
      v102 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAttr);
      result = v102;
    }
  }

  else
  {
    v116 = 257;
    mlir::Operation::emitOpError(v118, &v114, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Interleave can only be applied on 4D or 5D tensor");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
    if (ShapeAttr)
    {
      v83 = result;
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v83;
    }

    if (v132 == 1)
    {
      v84 = result;
      mlir::Diagnostic::~Diagnostic(v124);
      result = v84;
    }

    v85 = 0;
  }

  if (v119 != v121)
  {
    v103 = result;
    free(v119);
    result = v103;
  }

  if (v85)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::placement::RegionCall::getCallee(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v6 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  AttrDictionary = mlir::AffineMapAttr::getValue(&v6);
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

uint64_t mlir::placement::RegionCall::getRegionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 8);
}

void mlir::placement::RegionCall::build(mlir::MLIRContext **a1, uint64_t a2, mlir::SymbolRefAttr *a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  }

  else
  {
    InterfaceFor = 0;
  }

  v33 = a3;
  v34 = InterfaceFor;
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v33);
  Results = mlir::FunctionType::getResults(&FunctionType);
  v15 = v13;
  v16 = 8 * v13;
  v17 = *(a2 + 72);
  v18 = v17 + ((8 * v13) >> 3);
  if (v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v18, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v17), Results, v16);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + (v16 >> 3);
  v19 = mlir::SymbolRefAttr::get(a3, v13);
  Context = mlir::Attribute::getContext(a2);
  v35 = 261;
  v33 = "callee";
  v34 = 6;
  v21 = mlir::StringAttr::get(Context, &v33);
  ZinMirCacheTensors::ZinMirCacheTensors(&v36, v21, v19);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v22);
  v30[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v30[1] = v22;
  v33 = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v34 = v30;
  v32 = a4;
  v24 = a4 ^ 0xFF51AFD7ED558CCDLL;
  v25 = 0x9DDFEA08EB382D69 * (((8 * a4) | 4) ^ v24);
  v31 = &v32;
  v36 = &v32;
  v37 = &v33;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 32) >> 15) ^ (-348639895 * (v24 ^ (v25 >> 47) ^ v25))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v36);
  v27 = mlir::Attribute::getContext(a2);
  v35 = 261;
  v33 = "region_type";
  v34 = 11;
  v28 = mlir::StringAttr::get(v27, &v33);
  ZinMirCacheTensors::ZinMirCacheTensors(&v36, v28, ParametricStorageTypeImpl);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  mlir::OperationState::addOperands(a2, a5, a6);
}

void mlir::placement::RegionCall::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  ZinMirCacheTensors::ZinMirCacheTensors(&v16, **(*(a2 + 8) + 96), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  ZinMirCacheTensors::ZinMirCacheTensors(&v16, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), a4 + v13, 8);
    v13 = *(a2 + 72);
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      *(v15 + 8 * v14) = mlir::TypeRange::dereference_iterator(a3, v14);
      ++v14;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
}

uint64_t mlir::placement::RegionCall::verifyInvariantsImpl(mlir::Operation **this)
{
  v59 = *MEMORY[0x1E69E9840];
  *v50 = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v50);
  if (!v3)
  {
LABEL_5:
    v46 = "requires attribute 'callee'";
    v49 = 259;
    mlir::OpState::emitOpError(this, &v46, v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (*v50)
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 != 1)
    {
      return v6;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v56;
      v9 = __p;
      if (v56 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v56 = v7;
      operator delete(v9);
    }

    v10 = v53;
    if (v53)
    {
      v11 = v54;
      v12 = v53;
      if (v54 != v53)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
LABEL_41:
        v12 = v53;
      }

LABEL_42:
      v54 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v51 != v52)
    {
      free(v51);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v46 = "requires attribute 'region_type'";
    v49 = 259;
    mlir::OpState::emitOpError(this, &v46, v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (*v50)
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 != 1)
    {
      return v6;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v56;
      v18 = __p;
      if (v56 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v56 = v16;
      operator delete(v18);
    }

    v10 = v53;
    if (v53)
    {
      v19 = v54;
      v12 = v53;
      if (v54 != v53)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v4 + 1);
  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(*this, v15, "callee", 6))
  {
    return 0;
  }

  v23 = *this;
  if (v22 && *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id)
  {
    v49 = 257;
    mlir::Operation::emitOpError(v23, &v46, v50);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, "attribute '");
    if (*v24)
    {
      v49 = 261;
      v46 = "region_type";
      v47 = 11;
      v25 = v24;
      mlir::Diagnostic::operator<<(v24 + 8, &v46);
      v24 = v25;
      if (*v25)
      {
        v26 = *(v25 + 24);
        LODWORD(v46) = 3;
        v47 = "' failed to satisfy constraint: Available region types";
        v48 = 54;
        v27 = *(v25 + 32);
        v28 = &v46;
        if (v27 >= *(v25 + 36))
        {
          if (v26 <= &v46 && v26 + 24 * v27 > &v46)
          {
            v45 = &v46 - v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, (v25 + 40), v27 + 1, 24);
            v24 = v25;
            v26 = *(v25 + 24);
            v28 = &v45[v26];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, (v25 + 40), v27 + 1, 24);
            v24 = v25;
            v26 = *(v25 + 24);
            v28 = &v46;
          }
        }

        v29 = v26 + 24 * *(v24 + 32);
        v30 = *v28;
        *(v29 + 16) = v28[2];
        *v29 = v30;
        ++*(v24 + 32);
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (*v50)
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v56;
        v34 = __p;
        if (v56 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v56 = v32;
        operator delete(v34);
      }

      v35 = v53;
      if (v53)
      {
        v36 = v54;
        v37 = v53;
        if (v54 != v53)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v53;
        }

        v54 = v35;
        operator delete(v37);
      }

      if (v51 != v52)
      {
        free(v51);
      }
    }

    if (!v31)
    {
      return 0;
    }

    v23 = *this;
  }

  if ((*(v23 + 46) & 0x80) != 0)
  {
    v40 = *(v23 + 17);
    if (v40)
    {
      v41 = 0;
      v42 = *(v23 + 9) + 24;
      while (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps5(*this, (*(*v42 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41))
      {
        ++v41;
        v42 += 32;
        if (v40 == v41)
        {
          v43 = *this;
          goto LABEL_83;
        }
      }

      return 0;
    }
  }

  v43 = v23;
LABEL_83:
  mlir::placement::RegionCall::verifyInvariantsImpl(this, v43, v50);
  return v50[0];
}

BOOL mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v6 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a2 : 0;
  v24[0] = v6;
  if (v6)
  {
    v7 = a1;
    mlir::OpaqueAttr::getAttrData(v24);
    a1 = v7;
    if (!v8)
    {
      return 1;
    }
  }

  v23 = 257;
  mlir::Operation::emitOpError(a1, v22, v24);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v24, "attribute '");
  if (*v9)
  {
    v23 = 261;
    v22[0] = a3;
    v22[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v22);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: flat symbol reference attribute");
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v30;
      v15 = __p;
      if (v30 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v30 = v13;
      operator delete(v15);
    }

    v16 = v27;
    if (v27)
    {
      v17 = v28;
      v18 = v27;
      if (v28 != v27)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v27;
      }

      v28 = v16;
      operator delete(v18);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v12;
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps5(uint64_t *a1, const char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v52[0] = a2;
    v10 = v52;
LABEL_34:
    v10[1] = v9;
    mlir::ElementsAttr::isSplat(v10);
    return 1;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v47[0] = a2;
    v10 = v47;
    goto LABEL_34;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v48 = 261;
  v47[0] = a3;
  v47[1] = a4;
  mlir::Operation::emitOpError(a1, v47, v52);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " #");
  if (*v12)
  {
    v14 = v12 + 24;
    v13 = *(v12 + 24);
    v49 = 5;
    v50 = a5;
    v15 = *(v12 + 32);
    v16 = &v49;
    if (v15 >= *(v12 + 36))
    {
      if (v13 <= &v49 && v13 + 24 * v15 > &v49)
      {
        v42 = &v49 - v13;
        v43 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, (v12 + 40), v15 + 1, 24);
        v12 = v43;
        v13 = *(v43 + 24);
        v16 = &v42[v13];
      }

      else
      {
        v40 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, (v12 + 40), v15 + 1, 24);
        v12 = v40;
        v13 = *(v40 + 24);
        v16 = &v49;
      }
    }

    v17 = v13 + 24 * *(v12 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    v19 = (*(v12 + 32) + 1);
    *(v12 + 32) = v19;
    if (*v12)
    {
      v49 = 3;
      v50 = " must be variadic of tensor of any type values or memref of any type values or index, but got ";
      v51 = 94;
      v20 = *(v12 + 24);
      v21 = &v49;
      if (v19 >= *(v12 + 36))
      {
        if (v20 <= &v49 && v20 + 24 * v19 > &v49)
        {
          v44 = &v49 - v20;
          v45 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 40), v19 + 1, 24);
          v12 = v45;
          v20 = *(v45 + 24);
          v21 = &v44[v20];
        }

        else
        {
          v41 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 40), v19 + 1, 24);
          v12 = v41;
          v20 = *(v41 + 24);
          v21 = &v49;
        }
      }

      v22 = v20 + 24 * *(v12 + 32);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 2);
      *v22 = v23;
      ++*(v12 + 32);
      if (*v12)
      {
        v24 = &v49;
        v25 = v12;
        mlir::DiagnosticArgument::DiagnosticArgument(&v49, a2);
        v26 = *(v25 + 32);
        v27 = *(v25 + 24);
        if (v26 >= *(v25 + 36))
        {
          if (v27 <= &v49 && v27 + 24 * v26 > &v49)
          {
            v46 = &v49 - v27;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v25 + 40), v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v46[v27];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v25 + 40), v26 + 1, 24);
            v12 = v25;
            v27 = *(v25 + 24);
            v24 = &v49;
          }
        }

        else
        {
          v12 = v25;
        }

        v28 = v27 + 24 * *(v12 + 32);
        v29 = *v24;
        *(v28 + 16) = *(v24 + 2);
        *v28 = v29;
        ++*(v12 + 32);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  v31 = result;
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
    result = v31;
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
      result = v31;
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
      result = v31;
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
      result = v31;
    }

    if (v53 != &v54)
    {
      free(v53);
      return v31;
    }
  }

  return result;
}

void mlir::placement::ReplacedOps::build(mlir::StringAttr **a1, mlir::Attribute *a2, void *a3, uint64_t a4, mlir::SymbolRefAttr *a5, mlir::Operation **a6, uint64_t a7, uint64_t a8, char *a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v34[10] = *MEMORY[0x1E69E9840];
  v17 = *a1;
  mlir::TypeRange::TypeRange(&v31, a9, a10);
  mlir::TypeRange::TypeRange(&v28, a11, a12);
  v18 = mlir::FunctionType::get(v17, v31, v32, v28, v29);
  v19 = *(*(*(a2 + 1) + 96) + 8);
  v20 = mlir::TypeAttr::get(v18);
  ZinMirCacheTensors::ZinMirCacheTensors(&v31, v19, v20);
  mlir::NamedAttrList::push_back(a2 + 112, v31, v32);
  v30 = 261;
  v28 = a3;
  v29 = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, &v28);
  Context = mlir::Attribute::getContext(a2);
  LOWORD(v33) = 261;
  v31 = "sym_name";
  v32 = 8;
  v23 = mlir::StringAttr::get(Context, &v31);
  ZinMirCacheTensors::ZinMirCacheTensors(v34, v23, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v34[0], v34[1]);
  v25 = mlir::SymbolRefAttr::get(a5, v24);
  v26 = mlir::Attribute::getContext(a2);
  LOWORD(v33) = 261;
  v31 = "replaced_by";
  v32 = 11;
  v27 = mlir::StringAttr::get(v26, &v31);
  ZinMirCacheTensors::ZinMirCacheTensors(&v28, v27, v25);
  mlir::NamedAttrList::push_back(a2 + 112, v28, v29);
  mlir::OperationState::addRegion(a2);
}

void sub_1A6D75D5C()
{
  if (v4)
  {
    *v0 = v4;
  }

  else
  {
    *v0 = 0;
    *(v0 + 8) = 0;
  }

  v3 = *(v2 - 176);
  if (v3 != v1)
  {
    free(v3);
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::placement::ReplacedOpsLiveOuts,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::ReplacedOpsLiveOuts,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::ReplacedOpsLiveOuts,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOpsLiveOuts,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

BOOL mlir::placement::ReplacedOps::verifyInvariantsImpl(mlir::Operation **this)
{
  v82 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_7:
    v68[0] = "requires attribute 'function_type'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v81 != 1)
    {
      return v7;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v79;
      v10 = __p;
      if (v79 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v79 = v8;
      operator delete(v10);
    }

    v11 = v76;
    if (v76)
    {
      v12 = v77;
      v13 = v76;
      if (v77 != v76)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
LABEL_43:
        v13 = v76;
      }

LABEL_44:
      v77 = v11;
      operator delete(v13);
    }

LABEL_45:
    if (v72 != v75)
    {
      free(v72);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v68[0] = "requires attribute 'replaced_by'";
    v69 = 259;
    mlir::OpState::emitOpError(this, v68, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v81 != 1)
    {
      return v7;
    }

    if (v80 != &v81)
    {
      free(v80);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v79;
      v23 = __p;
      if (v79 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v79 = v21;
      operator delete(v23);
    }

    v11 = v76;
    if (v76)
    {
      v24 = v77;
      v13 = v76;
      if (v77 != v76)
      {
        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v11);
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16));
    v20 = *this;
    if (CompressedBytes == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v27 = *(v18 + 1);
  v28 = 0;
  for (i = v6 - v16; i; i -= 16)
  {
    v41 = ZinCompressedFootprintInfo::GetCompressedBytes(v18);
    v20 = *this;
    if (v41 == *(*(*(*this + 6) + 96) + 24))
    {
      v28 = *(v18 + 1);
    }

    v18 = (v18 + 16);
  }

  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(v20, v27, "replaced_by", 0xB))
  {
    return 0;
  }

  if (v17)
  {
    v30 = *this;
    if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (AttrDictionary = v17, *(*mlir::AffineMapAttr::getValue(&AttrDictionary) + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id) || (v68[0] = v17, *(*mlir::AffineMapAttr::getValue(v68) + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
    {
      v69 = 257;
      mlir::Operation::emitOpError(v30, v68, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
      if (*v31)
      {
        v69 = 261;
        v68[0] = "function_type";
        v68[1] = 13;
        v32 = v31;
        mlir::Diagnostic::operator<<((v31 + 1), v68);
        v31 = v32;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, "' failed to satisfy constraint: type attribute of function type");
      v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v81 == 1)
      {
        if (v80 != &v81)
        {
          free(v80);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v79;
          v37 = __p;
          if (v79 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v79 = v35;
          operator delete(v37);
        }

        v38 = v76;
        if (v76)
        {
          v39 = v77;
          v40 = v76;
          if (v77 != v76)
          {
            do
            {
              v43 = *--v39;
              v42 = v43;
              *v39 = 0;
              if (v43)
              {
                MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
              }
            }

            while (v39 != v38);
            v40 = v76;
          }

          v77 = v38;
          operator delete(v40);
        }

        if (v72 != v75)
        {
          free(v72);
        }
      }

      if (!v34)
      {
        return 0;
      }
    }
  }

  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v5, "arg_attrs", 9) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(*this, v28, "res_attrs", 9))
  {
    return 0;
  }

  v44 = *this;
  v45 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v46 = *(v45 + 8);
  if (v46 != v45 && *(v46 + 8) == v45)
  {
    return 1;
  }

  v68[0] = "region #";
  v69 = 259;
  mlir::Operation::emitOpError(v44, v68, &AttrDictionary);
  if (AttrDictionary)
  {
    LODWORD(v66[0]) = 5;
    v66[1] = 0;
    v47 = v66;
    v48 = v72;
    if (v73 >= v74)
    {
      if (v72 <= v66 && v72 + 24 * v73 > v66)
      {
        v63 = v66 - v72;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v48 = v72;
        v47 = (v72 + v63);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v75, v73 + 1, 24);
        v47 = v66;
        v48 = v72;
      }
    }

    v49 = &v48[24 * v73];
    v50 = *v47;
    *(v49 + 2) = v47[2];
    *v49 = v50;
    ++v73;
    v51 = AttrDictionary == 0;
  }

  else
  {
    v51 = 1;
  }

  v65 = 1283;
  v64[0] = " ('";
  v64[2] = "body";
  v64[3] = 4;
  v66[0] = v64;
  v66[2] = "') ";
  v67 = 770;
  if (!v51)
  {
    mlir::Diagnostic::operator<<(&v71, v66);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "failed to verify constraint: region with 1 blocks");
  v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v81 == 1)
  {
    if (v80 != &v81)
    {
      free(v80);
    }

    v54 = __p;
    if (__p)
    {
      v55 = v79;
      v56 = __p;
      if (v79 != __p)
      {
        do
        {
          v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
        }

        while (v55 != v54);
        v56 = __p;
      }

      v79 = v54;
      operator delete(v56);
    }

    v57 = v76;
    if (v76)
    {
      v58 = v77;
      v59 = v76;
      if (v77 != v76)
      {
        do
        {
          v61 = *--v58;
          v60 = v61;
          *v58 = 0;
          if (v61)
          {
            MEMORY[0x1AC55A040](v60, 0x1000C8077774924);
          }
        }

        while (v58 != v57);
        v59 = v76;
      }

      v77 = v57;
      operator delete(v59);
    }

    if (v72 != v75)
    {
      free(v72);
    }
  }

  return v53;
}

BOOL mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps7(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v33[0] = a2;
    v22 = a1;
    Value = mlir::ArrayAttr::getValue(v33);
    v24 = mlir::ArrayAttr::getValue(v33);
    v26 = v24 + 8 * v25;
    if (v26 != Value)
    {
      a1 = v22;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v26)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  v32 = 257;
  mlir::Operation::emitOpError(a1, &v29, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v33, "attribute '");
  if (*v6)
  {
    v32 = 261;
    v29 = a3;
    v30 = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<(v6 + 8, &v29);
    v6 = v7;
    if (*v7)
    {
      v8 = *(v7 + 24);
      LODWORD(v29) = 3;
      v30 = "' failed to satisfy constraint: Array of dictionary attributes";
      v31 = 62;
      v9 = *(v7 + 32);
      v10 = &v29;
      if (v9 >= *(v7 + 36))
      {
        if (v8 <= &v29 && v8 + 24 * v9 > &v29)
        {
          v28 = &v29 - v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v28[v8];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v29;
        }
      }

      v11 = v8 + 24 * *(v6 + 32);
      v12 = *v10;
      *(v11 + 16) = v10[2];
      *v11 = v12;
      ++*(v6 + 32);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v39;
      v16 = __p;
      if (v39 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v39 = v14;
      operator delete(v16);
    }

    v17 = v36;
    if (v36)
    {
      v18 = v37;
      v19 = v36;
      if (v37 != v36)
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
        v19 = v36;
      }

      v37 = v17;
      operator delete(v19);
    }

    if (v34 != &v35)
    {
      free(v34);
    }
  }

  return v13;
}

BOOL mlir::placement::ReplacedOpsLiveOuts::parse(uint64_t a1, uint64_t a2)
{
  v10[16] = *MEMORY[0x1E69E9840];
  v9[0] = v10;
  v9[1] = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 720))(a1, v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v9, v7, v4, a2 + 16);
  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v5;
}

void mlir::placement::StartTimer::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ZinMirCacheTensors::ZinMirCacheTensors(v7, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, v7[0], v7[1]);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

BOOL mlir::placement::StartTimer::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(*this, v4[1], "replaced_ops_ref", 0x10))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'replaced_ops_ref'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id)
  {
    return 1;
  }

  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(a1, v34, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, " #");
  if (*v7)
  {
    v8 = *(v7 + 24);
    v36 = 5;
    v37 = a5;
    v9 = *(v7 + 32);
    v10 = &v36;
    if (v9 >= *(v7 + 36))
    {
      if (v8 <= &v36 && v8 + 24 * v9 > &v36)
      {
        v31 = &v36 - v8;
        v32 = v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
        v7 = v32;
        v8 = *(v32 + 24);
        v10 = &v31[v8];
      }

      else
      {
        v30 = v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
        v7 = v30;
        v8 = *(v30 + 24);
        v10 = &v36;
      }
    }

    v11 = v8 + 24 * *(v7 + 32);
    v12 = *v10;
    *(v11 + 16) = *(v10 + 2);
    *v11 = v12;
    ++*(v7 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v7, " must be , but got ");
  if (*v13)
  {
    v14 = &v36;
    v15 = v13;
    mlir::DiagnosticArgument::DiagnosticArgument(&v36, a2);
    v13 = v15;
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    if (v17 >= *(v15 + 36))
    {
      if (v16 <= &v36 && v16 + 24 * v17 > &v36)
      {
        v33 = &v36 - v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, (v15 + 40), v17 + 1, 24);
        v13 = v15;
        v16 = *(v15 + 24);
        v14 = &v33[v16];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, (v15 + 40), v17 + 1, 24);
        v13 = v15;
        v16 = *(v15 + 24);
        v14 = &v36;
      }
    }

    v18 = v16 + 24 * *(v13 + 32);
    v19 = *v14;
    *(v18 + 16) = *(v14 + 2);
    *v18 = v19;
    ++*(v13 + 32);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v44;
      v23 = __p;
      if (v44 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v44 = v21;
      operator delete(v23);
    }

    v24 = v41;
    if (v41)
    {
      v25 = v42;
      v26 = v41;
      if (v42 != v41)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v20;
}

BOOL mlir::placement::TensorToMemrefAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v40 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v40);
  if (Value == mlir::DictionaryAttr::end(&v40))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
      {
        v5 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v40));
    if (v7)
    {
      if (!mlir::DenseIntElementsAttr::classof(v7))
      {
        goto LABEL_16;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v35[0] = v7;
      v35[1] = v8;
      Type = mlir::ElementsAttr::getType(v35);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v41[0] = v10;
      v41[1] = Type;
      mlir::ShapedType::getShape(v41);
      if (v11 != 1 || (v37 = v7, v38[0] = mlir::ArrayAttr::getValue(&v37), v38[1] = v12, isSplat = mlir::ElementsAttr::isSplat(v38), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_16:
        v35[0] = "'placement.tensor_to_memref' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v36 = 259;
        mlir::emitError(a2, v35, v41);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 == 1)
        {
          if (v48 != &v49)
          {
            free(v48);
          }

          v14 = __p;
          if (__p)
          {
            v15 = v47;
            v16 = __p;
            if (v47 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v47 = v14;
            operator delete(v16);
          }

          v17 = v44;
          if (!v44)
          {
            goto LABEL_74;
          }

          v18 = v45;
          v19 = v44;
          if (v45 == v44)
          {
LABEL_73:
            v45 = v17;
            operator delete(v19);
LABEL_74:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v13;
          }

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
LABEL_72:
          v19 = v44;
          goto LABEL_73;
        }

        return v13;
      }
    }
  }

  if (!v6)
  {
LABEL_52:
    if (!v5)
    {
      return 1;
    }

    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v35[0] = v5;
      v41[0] = mlir::AffineMapAttr::getValue(v35);
      if (mlir::Type::isUnsignedInteger(v41, 32))
      {
        return 1;
      }
    }

    v35[0] = "'placement.tensor_to_memref' op attribute 'interleave' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v36 = 259;
    mlir::emitError(a2, v35, v41);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v47;
        v30 = __p;
        if (v47 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v47 = v28;
        operator delete(v30);
      }

      v17 = v44;
      if (!v44)
      {
        goto LABEL_74;
      }

      v31 = v45;
      v19 = v44;
      if (v45 == v44)
      {
        goto LABEL_73;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
        }
      }

      while (v31 != v17);
      goto LABEL_72;
    }

    return v13;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v41[0] = v6;
    mlir::AffineMapAttr::getValue(v41);
    goto LABEL_52;
  }

  v35[0] = "'placement.tensor_to_memref' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v36 = 259;
  mlir::emitError(a2, v35, v41);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v47;
      v24 = __p;
      if (v47 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v47 = v22;
      operator delete(v24);
    }

    v17 = v44;
    if (!v44)
    {
      goto LABEL_74;
    }

    v25 = v45;
    v19 = v44;
    if (v45 == v44)
    {
      goto LABEL_73;
    }

    do
    {
      v27 = *--v25;
      v26 = v27;
      *v25 = 0;
      if (v27)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
      }
    }

    while (v25 != v17);
    goto LABEL_72;
  }

  return v13;
}

uint64_t mlir::placement::TensorToMemref::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = *MEMORY[0x1E69E9840];
  v64 = a6;
  LOBYTE(v65) = 0;
  v66 = 0;
  v67 = a9;
  v68 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v64);
    if (v66 == 1)
    {
      v66 = 0;
    }

    mlir::OperationName::OperationName(&v65, "placement.tensor_to_memref", 26, Context);
    v66 = 1;
  }

  v69 = a4;
  v70 = a5;
  if (a5)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::placement::TensorToMemrefAdaptor::verify(&v64, v15))
    {
      v61 = v69;
      v62 = 0;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v61, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v59 = v16;
        v60 = v17;
        if (v16)
        {
          isSplat = mlir::ElementsAttr::isSplat(&v59);
          Shape = mlir::ShapedType::getShape(&v59);
          v21 = v19;
          v61 = v63;
          v62 = 0x500000000;
          v22 = (8 * v19) >> 3;
          if (v22 < 6)
          {
            v23 = 0;
            v24 = 8 * v19;
            if (!v19)
            {
LABEL_19:
              LODWORD(v62) = v23 + (v24 >> 3);
              Value = mlir::AffineMapAttr::getValue(&v64);
              v30 = mlir::DictionaryAttr::end(&v64);
              v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, v30, *(*(v65 + 96) + 8));
              if (v31)
              {
                v32 = *(*v31 + 136);
                v33 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
                v34 = v32 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id ? v31 : 0;
                v57 = v34;
                if (v33)
                {
                  isSplat = mlir::AffineMapAttr::getValue(&v57);
                }
              }

              v35 = mlir::AffineMapAttr::getValue(&v64);
              v36 = mlir::DictionaryAttr::end(&v64);
              v37 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v35, v36, *(*(v65 + 96) + 16));
              if (!v37 || (v38 = v37, !mlir::DenseIntElementsAttr::classof(v37)))
              {
LABEL_43:
                v46 = mlir::AffineMapAttr::getValue(&v64);
                v47 = mlir::DictionaryAttr::end(&v64);
                v48 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v46, v47, **(v65 + 96));
                if (v48 && *(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                {
                  v49 = v62;
                  if ((v62 & 0xFFFFFFFE) != 4)
                  {
                    v53 = mlir::UnrankedTensorType::get(isSplat);
                    goto LABEL_50;
                  }

                  Interleave = mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(&v64);
                  v51 = 16;
                  if (v49 == 4)
                  {
                    v51 = 8;
                  }

                  v52 = v61;
                  *(v61 + v51) *= Interleave;
                  v52[v49 - 1] /= Interleave;
                }

                v53 = mlir::MemRefType::get(v61, v62, isSplat, 0, 0, 0);
LABEL_50:
                v54 = *(a11 + 8);
                if (v54 >= *(a11 + 12))
                {
                  v56 = v53;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v54 + 1, 8);
                  v53 = v56;
                  v54 = *(a11 + 8);
                }

                *(*a11 + 8 * v54) = v53;
                ++*(a11 + 8);
                if (v61 != v63)
                {
                  free(v61);
                }

                return 1;
              }

              v57 = v38;
              v58 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v57, 8, 1, 0))
              {
                RawStringData = mlir::DenseElementsAttr::getRawStringData(&v57);
                LOBYTE(v21) = mlir::DenseElementsAttr::isSplat(&v57);
                mlir::ArrayAttr::getValue(&v57);
                mlir::DenseElementsAttr::getNumElements(&v57);
              }

              else
              {
                RawStringData = 0;
              }

              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v57, 8, 1, 0))
              {
                mlir::DenseElementsAttr::getRawStringData(&v57);
                mlir::DenseElementsAttr::isSplat(&v57);
                mlir::ArrayAttr::getValue(&v57);
                NumElements = mlir::DenseElementsAttr::getNumElements(&v57);
                v24 = NumElements;
                LODWORD(v62) = 0;
                if (NumElements <= HIDWORD(v62))
                {
                  v41 = 0;
                  v42 = 0;
                  if (!NumElements)
                  {
LABEL_42:
                    LODWORD(v62) = v42;
                    goto LABEL_43;
                  }
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, NumElements, 8);
                  v41 = v62;
                }
              }

              else
              {
                v41 = 0;
              }

              v43 = 0;
              v44 = v61 + 8 * v41;
              do
              {
                if (v21)
                {
                  v45 = 0;
                }

                else
                {
                  v45 = v43;
                }

                *&v44[8 * v43++] = *(RawStringData + 8 * v45);
              }

              while (v24 != v43);
              v42 = v41 + v24;
              goto LABEL_42;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v22, 8);
            v23 = v62;
            v24 = 8 * v21;
            if (!v21)
            {
              goto LABEL_19;
            }
          }

          memcpy(v61 + 8 * v23, Shape, v24);
          v23 = v62;
          goto LABEL_19;
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }
    }
  }

  v25 = mlir::Float32Type::get(this, a2);
  v26 = mlir::UnrankedTensorType::get(v25);
  v27 = *(a11 + 8);
  if (v27 >= *(a11 + 12))
  {
    v55 = v26;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v27 + 1, 8);
    v26 = v55;
    LODWORD(v27) = *(a11 + 8);
  }

  *(*a11 + 8 * v27) = v26;
  ++*(a11 + 8);
  return 1;
}

void mlir::placement::TensorToMemref::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v28;
  v27 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v25, *(a2 + 224), *(a2 + 232));
  if ((mlir::placement::TensorToMemref::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v25[0], v25[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v20);
  }

  v21 = __src;
  v22 = v27;
  v23 = *(a2 + 72);
  v24 = v23 + v27;
  if (v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v24, 8);
    LODWORD(v23) = *(a2 + 72);
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v23), v21, 8 * v22);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v28)
  {
    free(__src);
  }
}

BOOL mlir::placement::TensorToMemref::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v10 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = *this;
  }

  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v10, v7, "shape", 5) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v6, "resultElementType", 0x11) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, v5, "interleave", 0xA) || !mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::placement::TensorToMemref::verify(mlir::Operation **this)
{
  v139 = *MEMORY[0x1E69E9840];
  v124 = *this;
  v3 = (*(*(*(v124 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v123[0] = v3;
  v123[1] = v4;
  if (!mlir::placement::MemrefToTensor::getShapeAttr(&v124) || !v123[0] || !mlir::ElementsAttr::getShapedType(v123))
  {
    goto LABEL_32;
  }

  Shape = mlir::ShapedType::getShape(v123);
  if (v6)
  {
    v7 = 8 * v6;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_11:
  v8 = mlir::ShapedType::getShape(v123);
  NumElements = mlir::ShapedType::getNumElements(v8, v9);
  ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v124);
  LOBYTE(v130[0]) = ShapeAttr != 0;
  isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0);
  if ((isValidIntOrFloat & 1) == 0)
  {
    RawStringData = 0;
    if (isValidIntOrFloat <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    v13 = isValidIntOrFloat & 0xFFFFFFFFFFFFFFFELL;
    v15 = 1;
    v16 = 1;
    do
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14;
      }

      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 + 1;
      }

      v15 *= *(RawStringData + 8 * v17);
      v16 *= *(RawStringData + 8 * v18);
      v14 += 2;
    }

    while (v14 != v13);
    v2 = v16 * v15;
    goto LABEL_30;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
  isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
  mlir::ArrayAttr::getValue(&ShapeAttr);
  isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  if (!isValidIntOrFloat)
  {
    v2 = 1;
    goto LABEL_31;
  }

  if (isValidIntOrFloat > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v13 = 0;
  v2 = 1;
  do
  {
    if (isSplat)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    v2 *= *(RawStringData + 8 * v19);
    ++v13;
LABEL_30:
    ;
  }

  while (isValidIntOrFloat != v13);
LABEL_31:
  if (NumElements != v2)
  {
    v128 = 257;
    mlir::Operation::emitOpError(v124, &v125, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Input shape ");
    if (*v32)
    {
      v33 = &v120;
      v34 = v32;
      mlir::DiagnosticArgument::DiagnosticArgument(&v120, v123[0]);
      v35 = *(v34 + 24);
      v36 = *(v34 + 32);
      if (v36 >= *(v34 + 36))
      {
        if (v35 <= &v120 && v35 + 24 * v36 > &v120)
        {
          v113 = &v120 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, (v34 + 40), v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v113[v35];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, (v34 + 40), v36 + 1, 24);
          v32 = v34;
          v35 = *(v34 + 24);
          v33 = &v120;
        }
      }

      else
      {
        v32 = v34;
      }

      v37 = v35 + 24 * *(v32 + 32);
      v38 = *v33;
      *(v37 + 16) = v33[2];
      *v37 = v38;
      ++*(v32 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " (");
    if (*v39)
    {
      v40 = *(v39 + 24);
      LODWORD(v120) = 5;
      v121 = NumElements;
      v41 = *(v39 + 32);
      v42 = &v120;
      if (v41 >= *(v39 + 36))
      {
        if (v40 <= &v120 && v40 + 24 * v41 > &v120)
        {
          v114 = &v120 - v40;
          v115 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
          v39 = v115;
          v40 = *(v115 + 24);
          v42 = &v114[v40];
        }

        else
        {
          v111 = v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39 + 24, (v39 + 40), v41 + 1, 24);
          v39 = v111;
          v40 = *(v111 + 24);
          v42 = &v120;
        }
      }

      v43 = v40 + 24 * *(v39 + 32);
      v44 = *v42;
      *(v43 + 16) = v42[2];
      *v43 = v44;
      ++*(v39 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, " elements) is not compatible with shape attribute ");
    v46 = v45;
    v47 = mlir::placement::MemrefToTensor::getShapeAttr(&v124);
    if (*v46)
    {
      v48 = &v120;
      mlir::DiagnosticArgument::DiagnosticArgument(&v120, v47);
      v49 = v46 + 24;
      v50 = *(v46 + 24);
      v51 = *(v46 + 32);
      if (v51 >= *(v46 + 36))
      {
        if (v50 <= &v120 && v50 + 24 * v51 > &v120)
        {
          v116 = &v120 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v46 + 40), v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v116[v50];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v46 + 40), v51 + 1, 24);
          v50 = *(v46 + 24);
          v48 = &v120;
        }
      }

      v52 = v50 + 24 * *(v46 + 32);
      v53 = *v48;
      *(v52 + 16) = v48[2];
      *v52 = v53;
      ++*(v46 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v46, " (");
    if (*v54)
    {
      v55 = *(v54 + 24);
      LODWORD(v120) = 2;
      v121 = v2;
      v56 = *(v54 + 32);
      v57 = &v120;
      if (v56 >= *(v54 + 36))
      {
        if (v55 <= &v120 && v55 + 24 * v56 > &v120)
        {
          v117 = &v120 - v55;
          v118 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, (v54 + 40), v56 + 1, 24);
          v54 = v118;
          v55 = *(v118 + 24);
          v57 = &v117[v55];
        }

        else
        {
          v112 = v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54 + 24, (v54 + 40), v56 + 1, 24);
          v54 = v112;
          v55 = *(v112 + 24);
          v57 = &v120;
        }
      }

      v58 = v55 + 24 * *(v54 + 32);
      v59 = *v57;
      *(v58 + 16) = v57[2];
      *v58 = v59;
      ++*(v54 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " elements)");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    v62 = result;
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v62;
    }

    if ((v138 & 1) == 0)
    {
      return result;
    }

    if (v137 != &v138)
    {
      free(v137);
      result = v62;
    }

    v63 = __p;
    if (__p)
    {
      v64 = v136;
      v65 = __p;
      if (v136 != __p)
      {
        do
        {
          v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
        }

        while (v64 != v63);
        v65 = __p;
      }

      v136 = v63;
      operator delete(v65);
      result = v62;
    }

    v66 = v133;
    if (v133)
    {
      v67 = v134;
      v68 = v133;
      if (v134 != v133)
      {
        do
        {
          v70 = *--v67;
          v69 = v70;
          *v67 = 0;
          if (v70)
          {
            MEMORY[0x1AC55A040](v69, 0x1000C8077774924);
          }
        }

        while (v67 != v66);
        goto LABEL_100;
      }

LABEL_101:
      v134 = v66;
      operator delete(v68);
      result = v62;
    }

LABEL_102:
    if (v131 != &v132)
    {
      free(v131);
      return v62;
    }

    return result;
  }

LABEL_32:
  ShapeAttr = mlir::Operation::getAttrDictionary(v124);
  Value = mlir::ArrayAttr::getValue(&ShapeAttr);
  ShapeAttr = mlir::Operation::getAttrDictionary(v124);
  v21 = mlir::ArrayAttr::getValue(&ShapeAttr);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v21 + 16 * v22), **(*(v124 + 6) + 96));
  if (!v23)
  {
    return 1;
  }

  v24 = *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v123[0] == 0;
  if (v24 || !mlir::ElementsAttr::getShapedType(v123))
  {
    return 1;
  }

  v25 = mlir::ShapedType::getShape(v123);
  if (v26)
  {
    v27 = 8 * v26;
    while (*v25 != 0x8000000000000000)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_42;
      }
    }

    return 1;
  }

LABEL_42:
  ShapeAttr = mlir::Operation::getAttrDictionary(v124);
  v28 = mlir::ArrayAttr::getValue(&ShapeAttr);
  ShapeAttr = mlir::Operation::getAttrDictionary(v124);
  v29 = mlir::ArrayAttr::getValue(&ShapeAttr);
  v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 + 16 * v30), **(*(v124 + 6) + 96));
  if (v31)
  {
    if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v125 = v31;
      mlir::IntegerAttr::getValue(&v125, &ShapeAttr);
      if (v130[0] >= 0x41u)
      {
        p_ShapeAttr = ShapeAttr;
      }

      else
      {
        p_ShapeAttr = &ShapeAttr;
      }

      v31 = *p_ShapeAttr;
      if (v130[0] >= 0x41u && ShapeAttr)
      {
        v72 = *p_ShapeAttr;
        MEMORY[0x1AC55A040](ShapeAttr, 0x1000C8000313F17);
        v31 = v72;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  mlir::getANENextSupportedInterleaveValue(v31);
  if ((v73 & 1) == 0)
  {
    v128 = 257;
    mlir::Operation::emitOpError(v124, &v125, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "interleave factor not supported");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v75);
    v62 = result;
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v62;
    }

    if (v138 != 1)
    {
      return result;
    }

    if (v137 != &v138)
    {
      free(v137);
      result = v62;
    }

    v76 = __p;
    if (__p)
    {
      v77 = v136;
      v78 = __p;
      if (v136 != __p)
      {
        do
        {
          v77 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v77 - 1);
        }

        while (v77 != v76);
        v78 = __p;
      }

      v136 = v76;
      operator delete(v78);
      result = v62;
    }

    v66 = v133;
    if (v133)
    {
      v79 = v134;
      v68 = v133;
      if (v134 != v133)
      {
        do
        {
          v81 = *--v79;
          v80 = v81;
          *v79 = 0;
          if (v81)
          {
            MEMORY[0x1AC55A040](v80, 0x1000C8077774924);
          }
        }

        while (v79 != v66);
LABEL_100:
        v68 = v133;
        goto LABEL_101;
      }

      goto LABEL_101;
    }

    goto LABEL_102;
  }

  v125 = v127;
  v126 = 0x400000000;
  if (mlir::placement::MemrefToTensor::getShapeAttr(&v124))
  {
    ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v124);
    LOBYTE(v130[0]) = ShapeAttr != 0;
    if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
    {
      v74 = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
      isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
      mlir::ArrayAttr::getValue(&ShapeAttr);
      mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
    }

    else
    {
      v74 = 0;
    }

    v120 = mlir::placement::MemrefToTensor::getShapeAttr(&v124);
    LOBYTE(v121) = v120 != 0;
    if (mlir::DenseElementsAttr::isValidIntOrFloat(&v120, 8, 1, 0))
    {
      mlir::DenseElementsAttr::getRawStringData(&v120);
      mlir::DenseElementsAttr::isSplat(&v120);
      mlir::ArrayAttr::getValue(&v120);
      v89 = mlir::DenseElementsAttr::getNumElements(&v120);
      v2 = v89;
      LODWORD(v126) = 0;
      if (v89 <= HIDWORD(v126))
      {
        v90 = 0;
        v88 = 0;
        if (!v89)
        {
          goto LABEL_121;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v89, 8);
        v90 = v126;
      }
    }

    else
    {
      v90 = 0;
    }

    v91 = 0;
    v92 = v125 + 8 * v90;
    do
    {
      if (isSplat)
      {
        v93 = 0;
      }

      else
      {
        v93 = v91;
      }

      *&v92[8 * v91++] = *(v74 + 8 * v93);
    }

    while (v2 != v91);
    v88 = v90 + v2;
  }

  else
  {
    v82 = mlir::ShapedType::getShape(v123);
    v83 = mlir::ShapedType::getShape(v123);
    v84 = 0;
    v86 = (v83 + 8 * v85);
    LODWORD(v126) = 0;
    v87 = (v86 - v82) >> 3;
    if (v87 > HIDWORD(v126))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v87, 8);
      v84 = v126;
    }

    if (v86 != v82)
    {
      memcpy(v125 + 8 * v84, v82, v86 - v82);
      v84 = v126;
    }

    v88 = v84 + ((v86 - v82) >> 3);
  }

LABEL_121:
  LODWORD(v126) = v88;
  v94 = v88;
  if (v88 - 6 > 0xFFFFFFFFFFFFFFFDLL)
  {
    ShapeAttr = mlir::Operation::getAttrDictionary(v124);
    v99 = mlir::ArrayAttr::getValue(&ShapeAttr);
    ShapeAttr = mlir::Operation::getAttrDictionary(v124);
    v100 = mlir::ArrayAttr::getValue(&ShapeAttr);
    result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v99, (v100 + 16 * v101), **(*(v124 + 6) + 96));
    if (result && *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v120 = result;
      mlir::IntegerAttr::getValue(&v120, &ShapeAttr);
      result = ShapeAttr;
      if (v130[0] >= 0x41u)
      {
        v110 = ShapeAttr;
      }

      else
      {
        v110 = &ShapeAttr;
      }

      v102 = *v110;
      if (v130[0] >= 0x41u && ShapeAttr)
      {
        result = MEMORY[0x1AC55A040]();
      }
    }

    else
    {
      v102 = 0;
    }

    v119 = v102;
    v103 = v94 - 1;
    v104 = *(v125 + v94 - 1) % v102;
    v98 = v104 == 0;
    if (v104)
    {
      v122 = 257;
      mlir::Operation::emitOpError(v124, &v120, &ShapeAttr);
      if (ShapeAttr)
      {
        mlir::Diagnostic::append<char const(&)[7]>(v130, "width ");
      }

      mlir::InFlightDiagnostic::operator<<<long long &>(&ShapeAttr, v125 + v103);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v105, " must be a multiple of interleave ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v106, &v119);
      v108 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAttr);
      result = v108;
    }
  }

  else
  {
    v122 = 257;
    mlir::Operation::emitOpError(v124, &v120, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "Interleave can only be applied on 4D or 5D tensor");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
    if (ShapeAttr)
    {
      v96 = result;
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v96;
    }

    if (v138 == 1)
    {
      v97 = result;
      mlir::Diagnostic::~Diagnostic(v130);
      result = v97;
    }

    v98 = 0;
  }

  if (v125 != v127)
  {
    v109 = result;
    free(v125);
    result = v109;
  }

  if (v98)
  {
    return 1;
  }

  return result;
}

BOOL mlir::placement::anonymous namespace::isCompatibleMemrefTensorOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a2 && a4)
  {
    v7 = 0;
    v8 = a2 - 1;
    v9 = a4 - 1;
    while (1)
    {
      v10 = mlir::TypeRange::dereference_iterator(a1, v7);
      v11 = mlir::TypeRange::dereference_iterator(a3, v7);
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      if (v12)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      }

      else
      {
        v10 = 0;
      }

      v22[0] = v10;
      v22[1] = v12;
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      if (v13)
      {
        v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v11 = 0;
      }

      v21[0] = v11;
      v21[1] = v13;
      if (!v22[0])
      {
        break;
      }

      if (!v11)
      {
        break;
      }

      Shape = mlir::ShapedType::getShape(v22);
      v16 = v15;
      v17 = mlir::ShapedType::getShape(v21);
      if (v16 != v18 || memcmp(Shape, v17, 8 * v16))
      {
        break;
      }

      isSplat = mlir::ElementsAttr::isSplat(v22);
      v20 = isSplat == mlir::ElementsAttr::isSplat(v21);
      result = v20;
      if (v20 && v8 != v7)
      {
        v20 = v9 == v7++;
        if (!v20)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

mlir::Operation *mlir::placement::MemrefToTensor::fold(mlir::Operation **a1)
{
  AttrDictionary = *(*(*a1 + 9) + 24);
  result = mlir::Value::getDefiningOp(&AttrDictionary);
  if (result)
  {
    if (*(*(result + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
    {
      v3 = result;
      v4 = *(*(*(result + 9) + 24) + 8);
      v5 = *(*a1 + 9) ? *a1 - 16 : 0;
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) ^ v4) <= 7)
      {
        InterleaveAttr = mlir::placement::MemrefToTensor::getInterleaveAttr(a1);
        AttrDictionary = mlir::Operation::getAttrDictionary(v3);
        Value = mlir::ArrayAttr::getValue(&AttrDictionary);
        AttrDictionary = mlir::Operation::getAttrDictionary(v3);
        v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
        v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(v3 + 6) + 96));
        if (v10)
        {
          if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == InterleaveAttr)
          {
LABEL_14:
            if (!mlir::placement::MemrefToTensor::getResultElementTypeAttr(a1))
            {
              AttrDictionary = mlir::Operation::getAttrDictionary(v3);
              v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
              AttrDictionary = mlir::Operation::getAttrDictionary(v3);
              v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
              v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14), *(*(*(v3 + 6) + 96) + 8));
              if (!v15 || *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
              {
                return (*(*(v3 + 9) + 24) | 4);
              }
            }
          }
        }

        else if (!InterleaveAttr)
        {
          goto LABEL_14;
        }
      }
    }

    return 0;
  }

  return result;
}

void mlir::placement::ReplacedOps::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), *(*(*(*this + 6) + 96) + 8));
  mlir::AffineMapAttr::getValue(&AttrDictionary);
  v7 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  AttrDictionary = *(*(*(*this + 6) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&AttrDictionary);
  v10 = *(*(*this + 6) + 96);
  mlir::function_interface_impl::printFunctionOp(a2, v7, InterfaceFor, 0, AttrData, v11, *v10, v10[3]);
}

uint64_t mlir::placement::RegionCall::verifySymbolUses(mlir::placement::RegionCall *this, mlir::SymbolTableCollection *a2)
{
  v151 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "callee", 6), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v4 + 56, "callee", 6uLL);
  }

  if (!InherentAttr || (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v7 = 0) : (v7 = InherentAttr), (AttrDictionary = v7) == 0))
  {
    v134 = 0;
    goto LABEL_56;
  }

  v8 = InherentAttr;
  mlir::OpaqueAttr::getAttrData(&AttrDictionary);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v134 = v10;
  if (!v10)
  {
LABEL_56:
    Value = "requires a 'callee' symbol reference attribute";
    v138 = 259;
    mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v148;
      v39 = __p;
      if (v148 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v148 = v37;
      operator delete(v39);
    }

    v40 = v145;
    if (v145)
    {
      v41 = v146;
      v42 = v145;
      if (v146 != v145)
      {
        do
        {
          v44 = *--v41;
          v43 = v44;
          *v41 = 0;
          if (v44)
          {
            MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
          }
        }

        while (v41 != v40);
        goto LABEL_170;
      }

      goto LABEL_171;
    }

    goto LABEL_172;
  }

  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *this, v10);
  if (!v11)
  {
    v133 = 257;
    mlir::OpState::emitOpError(this, &v130, &AttrDictionary);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "'");
    v46 = v45;
    Value = mlir::AffineMapAttr::getValue(&v134);
    AttrData = mlir::OpaqueAttr::getAttrData(&Value);
    if (*v46)
    {
      v138 = 261;
      Value = AttrData;
      v136 = v48;
      mlir::Diagnostic::operator<<(v46 + 8, &Value);
      if (*v46)
      {
        v49 = v46 + 24;
        v50 = *(v46 + 24);
        LODWORD(Value) = 3;
        v136 = "' does not reference a valid function";
        v137 = 37;
        v51 = *(v46 + 32);
        p_Value = &Value;
        if (v51 >= *(v46 + 36))
        {
          if (v50 <= &Value && v50 + 24 * v51 > &Value)
          {
            v122 = &Value - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v46 + 40), v51 + 1, 24);
            v50 = *(v46 + 24);
            p_Value = &v122[v50];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v49, (v46 + 40), v51 + 1, 24);
            v50 = *(v46 + 24);
            p_Value = &Value;
          }
        }

        v53 = v50 + 24 * *(v46 + 32);
        v54 = *p_Value;
        *(v53 + 16) = p_Value[2];
        *v53 = v54;
        ++*(v46 + 32);
      }
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v55 = __p;
    if (__p)
    {
      v56 = v148;
      v57 = __p;
      if (v148 != __p)
      {
        do
        {
          v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
        }

        while (v56 != v55);
        v57 = __p;
      }

      v148 = v55;
      operator delete(v57);
    }

    v40 = v145;
    if (v145)
    {
      v58 = v146;
      v42 = v145;
      if (v146 != v145)
      {
        do
        {
          v60 = *--v58;
          v59 = v60;
          *v58 = 0;
          if (v60)
          {
            MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
          }
        }

        while (v58 != v40);
        goto LABEL_170;
      }

      goto LABEL_171;
    }

    goto LABEL_172;
  }

  v12 = v11;
  v13 = *(*(v11 + 48) + 16);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2 * (v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::CPUOp,void>::id);
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    v23 = 1;
  }

  else
  {
    v23 = v14;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v24 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v25 = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (*(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v24 + 16), (v25 + 16 * v26), *(*(*(*this + 48) + 96) + 8)) + 8) != v23)
  {
    v133 = 257;
    mlir::OpState::emitOpError(this, &v130, &AttrDictionary);
    if (AttrDictionary)
    {
      LODWORD(Value) = 3;
      v136 = "failed: callee of type '";
      v137 = 24;
      v61 = &Value;
      v62 = v141;
      if (v142 >= v143)
      {
        if (v141 <= &Value && v141 + 24 * v142 > &Value)
        {
          v121 = &Value - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v62 = v141;
          v61 = (v141 + v121);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
          v61 = &Value;
          v62 = v141;
        }
      }

      v63 = &v62[24 * v142];
      v64 = *v61;
      *(v63 + 2) = v61[2];
      *v63 = v64;
      ++v142;
    }

    if (AttrDictionary)
    {
      v65 = (&off_1E77C4EA8)[v23];
      v138 = 261;
      Value = v65;
      v136 = 3;
      mlir::Diagnostic::operator<<(v140, &Value);
      if (AttrDictionary)
      {
        LODWORD(Value) = 3;
        v136 = "' does not match the call region type ('";
        v137 = 40;
        v66 = &Value;
        v67 = v141;
        if (v142 >= v143)
        {
          if (v141 <= &Value && v141 + 24 * v142 > &Value)
          {
            v123 = &Value - v141;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
            v67 = v141;
            v66 = (v141 + v123);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
            v66 = &Value;
            v67 = v141;
          }
        }

        v68 = &v67[24 * v142];
        v69 = *v66;
        *(v68 + 2) = v66[2];
        *v68 = v69;
        ++v142;
      }
    }

    Value = mlir::Operation::getAttrDictionary(*this);
    v70 = mlir::ArrayAttr::getValue(&Value);
    Value = mlir::Operation::getAttrDictionary(*this);
    v71 = mlir::ArrayAttr::getValue(&Value);
    v73 = *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v70 + 16), (v71 + 16 * v72), *(*(*(*this + 48) + 96) + 8)) + 8);
    if (v73 > 2)
    {
      v75 = 0;
      v74 = "";
    }

    else
    {
      v74 = (&off_1E77C4EA8)[v73];
      v75 = 3;
    }

    if (AttrDictionary)
    {
      v138 = 261;
      Value = v74;
      v136 = v75;
      mlir::Diagnostic::operator<<(v140, &Value);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "')");
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v77 = __p;
    if (__p)
    {
      v78 = v148;
      v79 = __p;
      if (v148 != __p)
      {
        do
        {
          v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
        }

        while (v78 != v77);
        v79 = __p;
      }

      v148 = v77;
      operator delete(v79);
    }

    v40 = v145;
    if (v145)
    {
      v80 = v146;
      v42 = v145;
      if (v146 != v145)
      {
        do
        {
          v82 = *--v80;
          v81 = v82;
          *v80 = 0;
          if (v82)
          {
            MEMORY[0x1AC55A040](v81, 0x1000C8077774924);
          }
        }

        while (v80 != v40);
        goto LABEL_170;
      }

LABEL_171:
      v146 = v40;
      operator delete(v42);
    }

LABEL_172:
    if (v141 != v144)
    {
      free(v141);
    }

    return v34;
  }

  v129[0] = v12;
  v129[1] = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v12);
  FunctionType = mlir::FunctionOpInterface::getFunctionType(v129);
  v27 = mlir::arith::FastMathFlagsAttr::getValue(&FunctionType);
  if ((*(*this + 46) & 0x80) != 0)
  {
    if (v27 == *(*this + 68))
    {
      goto LABEL_47;
    }

LABEL_154:
    Value = "incorrect number of operands for callee";
    v138 = 259;
    mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v150 != 1)
    {
      return v34;
    }

    if (v149 != &v150)
    {
      free(v149);
    }

    v114 = __p;
    if (__p)
    {
      v115 = v148;
      v116 = __p;
      if (v148 != __p)
      {
        do
        {
          v115 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v115 - 1);
        }

        while (v115 != v114);
        v116 = __p;
      }

      v148 = v114;
      operator delete(v116);
    }

    v40 = v145;
    if (v145)
    {
      v117 = v146;
      v42 = v145;
      if (v146 != v145)
      {
        do
        {
          v119 = *--v117;
          v118 = v119;
          *v117 = 0;
          if (v119)
          {
            MEMORY[0x1AC55A040](v118, 0x1000C8077774924);
          }
        }

        while (v117 != v40);
LABEL_170:
        v42 = v145;
        goto LABEL_171;
      }

      goto LABEL_171;
    }

    goto LABEL_172;
  }

  if (v27)
  {
    goto LABEL_154;
  }

LABEL_47:
  v28 = mlir::arith::FastMathFlagsAttr::getValue(&FunctionType);
  if (!v28)
  {
LABEL_51:
    if (mlir::FunctionType::getNumResults(&FunctionType) == *(*this + 36))
    {
      NumResults = mlir::FunctionType::getNumResults(&FunctionType);
      if (!NumResults)
      {
        return 1;
      }

      v34 = NumResults;
      v35 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*mlir::FunctionType::getResults(&FunctionType) == v35)
      {
        if (v34)
        {
          return v34;
        }

        v106 = *(*this - 24) & 0xFFFFFFFFFFFFFFF8;
        if (*(mlir::FunctionType::getResults(&FunctionType) + 8) == v106)
        {
          if (v34 == 2)
          {
            return 1;
          }

          v107 = *(*this - 40) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::FunctionType::getResults(&FunctionType) + 16) == v107)
          {
            if (v34 == 3)
            {
              return 1;
            }

            v108 = *(*this - 56) & 0xFFFFFFFFFFFFFFF8;
            if (*(mlir::FunctionType::getResults(&FunctionType) + 24) == v108)
            {
              if (v34 == 4)
              {
                return 1;
              }

              v109 = *(*this - 72) & 0xFFFFFFFFFFFFFFF8;
              if (*(mlir::FunctionType::getResults(&FunctionType) + 32) == v109)
              {
                if (v34 == 5)
                {
                  return 1;
                }

                v110 = *(*this - 88) & 0xFFFFFFFFFFFFFFF8;
                if (*(mlir::FunctionType::getResults(&FunctionType) + 40) == v110)
                {
                  v111 = v34 - 6;
                  if (v34 == 6)
                  {
                    return 1;
                  }

                  v112 = 0;
                  while (1)
                  {
                    v113 = *(*this - 24 * (v112 + 1) - 88) & 0xFFFFFFFFFFFFFFF8;
                    if (*(mlir::FunctionType::getResults(&FunctionType) + 8 * v112 + 48) != v113)
                    {
                      break;
                    }

                    ++v112;
                    v34 = 1;
                    if (v111 == v112)
                    {
                      return v34;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v36 = "result type mismatch";
    }

    else
    {
      v36 = "incorrect number of results for callee";
    }

    Value = v36;
    v138 = 259;
    mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v34;
  }

  v29 = 0;
  v30 = v28;
  v31 = 24;
  while (1)
  {
    v32 = *(*(*(*this + 72) + v31) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getInputs(&FunctionType) + 8 * v29) != v32)
    {
      break;
    }

    ++v29;
    v31 += 32;
    if (v30 == v29)
    {
      goto LABEL_51;
    }
  }

  Value = "operand type mismatch: expected operand type ";
  v138 = 259;
  mlir::OpState::emitOpError(this, &Value, &AttrDictionary);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  if (AttrDictionary)
  {
    v84 = &v130;
    mlir::DiagnosticArgument::DiagnosticArgument(&v130, *(Inputs + 8 * v29));
    v85 = v141;
    if (v142 >= v143)
    {
      if (v141 <= &v130 && v141 + 24 * v142 > &v130)
      {
        v124 = &v130 - v141;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
        v85 = v141;
        v84 = (v141 + v124);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v144, v142 + 1, 24);
        v84 = &v130;
        v85 = v141;
      }
    }

    v86 = &v85[24 * v142];
    v87 = *v84;
    *(v86 + 2) = v84[2];
    *v86 = v87;
    ++v142;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, ", but provided ");
  if (*v88)
  {
    v89 = *(*(*(*this + 72) + v31) + 8);
    v90 = &v130;
    v91 = v88;
    mlir::DiagnosticArgument::DiagnosticArgument(&v130, v89 & 0xFFFFFFFFFFFFFFF8);
    v92 = *(v91 + 24);
    v93 = *(v91 + 32);
    if (v93 >= *(v91 + 36))
    {
      if (v92 <= &v130 && v92 + 24 * v93 > &v130)
      {
        v125 = &v130 - v92;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, (v91 + 40), v93 + 1, 24);
        v88 = v91;
        v92 = *(v91 + 24);
        v90 = &v125[v92];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, (v91 + 40), v93 + 1, 24);
        v88 = v91;
        v92 = *(v91 + 24);
        v90 = &v130;
      }
    }

    else
    {
      v88 = v91;
    }

    v94 = v92 + 24 * *(v88 + 32);
    v95 = *v90;
    *(v94 + 16) = v90[2];
    *v94 = v95;
    v96 = (*(v88 + 32) + 1);
    *(v88 + 32) = v96;
    if (*v88)
    {
      LODWORD(v130) = 3;
      v131 = " for operand number ";
      v132 = 20;
      v97 = *(v88 + 24);
      v98 = &v130;
      if (v96 >= *(v88 + 36))
      {
        if (v97 <= &v130 && v97 + 24 * v96 > &v130)
        {
          v126 = &v130 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, (v91 + 40), v96 + 1, 24);
          v88 = v91;
          v97 = *(v91 + 24);
          v98 = &v126[v97];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, (v91 + 40), v96 + 1, 24);
          v88 = v91;
          v97 = *(v91 + 24);
          v98 = &v130;
        }
      }

      v99 = v97 + 24 * *(v88 + 32);
      v100 = *v98;
      *(v99 + 16) = v98[2];
      *v99 = v100;
      v101 = (*(v88 + 32) + 1);
      *(v88 + 32) = v101;
      if (*v88)
      {
        LODWORD(v130) = 5;
        v131 = v29;
        v102 = *(v88 + 24);
        v103 = &v130;
        if (v101 >= *(v88 + 36))
        {
          if (v102 <= &v130 && v102 + 24 * v101 > &v130)
          {
            v127 = &v130 - v102;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, (v91 + 40), v101 + 1, 24);
            v88 = v91;
            v102 = *(v91 + 24);
            v103 = &v127[v102];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v91 + 24, (v91 + 40), v101 + 1, 24);
            v88 = v91;
            v102 = *(v91 + 24);
            v103 = &v130;
          }
        }

        v104 = v102 + 24 * *(v88 + 32);
        v105 = *v103;
        *(v104 + 16) = v103[2];
        *v104 = v105;
        ++*(v88 + 32);
      }
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v88);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v150 == 1)
  {
    mlir::Diagnostic::~Diagnostic(v140);
  }

  return v34;
}

float mlir::placement::RegionCall::getExecutionCost(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*a1, "callee", 6), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "callee", 6uLL);
  }

  if (InherentAttr && (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v5 = 0) : (v5 = InherentAttr), (AttrDictionary = v5) != 0))
  {
    v6 = InherentAttr;
    mlir::OpaqueAttr::getAttrData(&AttrDictionary);
    if (v7)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  ParentOp = *a1;
  do
  {
    ParentOp = *(ParentOp + 2);
    if (!ParentOp)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(ParentOp);
    if (!ParentOp)
    {
      break;
    }
  }

  while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
  mlir::SymbolTable::lookupSymbolIn(ParentOp, v6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v12 = *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v10 + 16 * v11), *(*(*(*a1 + 48) + 96) + 8)) + 8);
  v13 = 0.0;
  if (v12)
  {
    if (v12 == 1)
    {
      return 0.0008;
    }

    return v13;
  }

  v15 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    goto LABEL_36;
  }

  v16 = *(v15 + 68);
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = *(v15 + 72);
  do
  {
    v20 = (*(*(v18 + 32 * v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
    }

    else
    {
      v21 = 0;
    }

    AttrDictionary = v20;
    v42 = v21;
    if (!mlir::ElementsAttr::getShapedType(&AttrDictionary))
    {
      goto LABEL_24;
    }

    Shape = mlir::ShapedType::getShape(&AttrDictionary);
    if (v23)
    {
      v24 = 8 * v23;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_34;
        }
      }

LABEL_24:
      v19 = 128.0;
      goto LABEL_25;
    }

LABEL_34:
    isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
    v25 = mlir::Type::getIntOrFloatBitWidth(&isSplat) >> 3;
    v26 = mlir::ShapedType::getShape(&AttrDictionary);
    v19 = (v25 * mlir::ShapedType::getNumElements(v26, v27)) * 0.0039062;
LABEL_25:
    v13 = v13 + (v19 / 1080000000.0);
    ++v17;
  }

  while (v17 != v16);
  v15 = *a1;
LABEL_36:
  v28 = *(v15 + 36);
  v29 = v15 - 16;
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v33 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v33)
      {
        v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      AttrDictionary = v33;
      v42 = v34;
      if (mlir::ElementsAttr::getShapedType(&AttrDictionary))
      {
        v35 = mlir::ShapedType::getShape(&AttrDictionary);
        if (!v36)
        {
LABEL_51:
          isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
          v38 = mlir::Type::getIntOrFloatBitWidth(&isSplat) >> 3;
          v39 = mlir::ShapedType::getShape(&AttrDictionary);
          v32 = (v38 * mlir::ShapedType::getNumElements(v39, v40)) * 0.0039062;
          goto LABEL_42;
        }

        v37 = 8 * v36;
        while (*v35 != 0x8000000000000000)
        {
          ++v35;
          v37 -= 8;
          if (!v37)
          {
            goto LABEL_51;
          }
        }
      }

      v32 = 128.0;
LABEL_42:
      v13 = v13 + (v32 / 1080000000.0);
    }
  }

  return v13;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::ANEIOCast>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::ANEIOCast>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::placement::ANEIOCast>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v17[1] = *(a1 + 56);
  v17[2] = v8;
  v18 = 1;
  v9 = *(a1 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a1 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v19, v11, v10);
  v19[2] = a2;
  v19[3] = a3;
  v17[0] = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (!DefiningOp)
  {
    return 0;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id)
  {
    return 0;
  }

  v13 = *(*(DefiningOp + 72) + 24);
  if ((*(a1 - 8) ^ *(v13 + 8)) >= 8 || v13 < 8)
  {
    return 0;
  }

  if (a1 - 16 != (v13 & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = v13 | 4;
    v15 = *(a4 + 8);
    if (v15 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v15 + 1, 8);
      LODWORD(v15) = *(a4 + 8);
    }

    *(*a4 + 8 * v15) = v14;
    ++*(a4 + 8);
  }

  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v35;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v29 = v1;
    v36 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v29;
    a1 = v36;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v30 = v1;
    v37 = a1;
    v24 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v24;
    v1 = v30;
    a1 = v37;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v31 = v1;
    v38 = a1;
    v25 = v2;
    v20 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v20;
    v2 = v25;
    v1 = v31;
    a1 = v38;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v32 = v1;
    v39 = a1;
    v26 = v2;
    v17 = v4;
    v21 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v17;
    v3 = v21;
    v2 = v26;
    v1 = v32;
    a1 = v39;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v34 = v1;
    v41 = a1;
    v28 = v2;
    v19 = v4;
    v23 = v3;
    v14 = v6;
    v16 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v14;
    v5 = v16;
    v4 = v19;
    v3 = v23;
    v2 = v28;
    v1 = v34;
    a1 = v41;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}