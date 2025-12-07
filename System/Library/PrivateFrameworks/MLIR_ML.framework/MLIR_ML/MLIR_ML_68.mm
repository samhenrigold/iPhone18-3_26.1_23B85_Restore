void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcMeshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcSPMDCallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

uint64_t OUTLINED_FUNCTION_11_3@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 2;
  return result;
}

__n128 OUTLINED_FUNCTION_22_3@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 16 * v1);
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *(v2 + 24) = *v3;
  *(v2 + 40) = v4;
  return result;
}

uint64_t *OUTLINED_FUNCTION_26_4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = v12;

  return mlir::ResultRange::getTypes(&a3, &a11);
}

uint64_t mlir::getANENextSupportedInterleaveValue(uint64_t this)
{
  v1 = 4;
  if (this > 4)
  {
    v1 = 8;
  }

  v2 = this & 0xFFFFFFFFFFFFFF00;
  if (this > 2)
  {
    v2 = 0;
  }

  else
  {
    v1 = this;
  }

  if (this <= 8)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return v3 | v1;
}

uint64_t mlir::legalizeA12(mlir::SymbolRefAttr *InterfaceFor, uint64_t *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v6 = InterfaceFor;
  v180[12] = *MEMORY[0x277D85DE8];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v162[0] = v6;
  v162[1] = InterfaceFor;
  BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v162);
  v8 = a4[1];
  v178 = v180;
  v179 = 0x400000000;
  v175 = v177;
  v176 = 0x400000000;
  v173[0] = mlir::TargetLegalizerInterface::getFunctionType(v162);
  Inputs = mlir::FunctionType::getInputs(v173);
  if (v10)
  {
    v11 = *(BodyBlock + 6);
    v12 = *(BodyBlock + 7);
    if (v11 != v12)
    {
      v13 = v11 + 8;
      v14 = 8 * v10 - 8;
      do
      {
        v15 = *Inputs;
        v16 = (*(*(v13 - 8) + 8) & 0xFFFFFFFFFFFFFFF8);
        v173[0] = *(v13 - 8);
        v173[1] = v16;
        v174[0] = v15;
        if (v179 >= HIDWORD(v179))
        {
          v18 = Inputs;
          llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v178, v173);
          Inputs = v18;
          if (!v14)
          {
            break;
          }
        }

        else
        {
          v17 = &v178[24 * v179];
          *v17 = *v173;
          *(v17 + 2) = v174[0];
          LODWORD(v179) = v179 + 1;
          if (!v14)
          {
            break;
          }
        }

        ++Inputs;
        v14 -= 8;
        v45 = v13 == v12;
        v13 += 8;
      }

      while (!v45);
    }
  }

  v158 = v8;
  v173[0] = mlir::TargetLegalizerInterface::getFunctionType(v162);
  Results = mlir::FunctionType::getResults(v173);
  v21 = v20;
  mlir::Block::getTerminator(BodyBlock);
  if ((*(v22 + 46) & 0x80) != 0)
  {
    if (v21)
    {
      v23 = *(v22 + 68);
      if (v23)
      {
        v24 = *(v22 + 72) + 24;
        v25 = v23 - 1;
        v26 = 8 * v21 - 8;
        do
        {
          v27 = (*(*v24 + 8) & 0xFFFFFFFFFFFFFFF8);
          v173[0] = *v24;
          v173[1] = v27;
          v174[0] = *Results;
          if (v176 >= HIDWORD(v176))
          {
            llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v175, v173);
          }

          else
          {
            v28 = v175 + 24 * v176;
            *v28 = *v173;
            *(v28 + 2) = v174[0];
            LODWORD(v176) = v176 + 1;
          }

          v29 = v25-- != 0;
          v30 = v29;
          if (!v26)
          {
            break;
          }

          ++Results;
          v24 += 32;
          v26 -= 8;
        }

        while ((v30 & 1) != 0);
      }
    }
  }

  v31 = a3;
  if (!v32)
  {
    v33 = llvm::errs(v32);
    v34 = v33[4];
    if (v33[3] - v34 <= 0x1DuLL)
    {
      v35 = "checkAndCollectANEArgs failed\n";
      v36 = 30;
LABEL_28:
      llvm::raw_ostream::write(v33, v35, v36);
      v37 = 0;
      goto LABEL_31;
    }

    v37 = 0;
    qmemcpy(v34, "checkAndCollectANEArgs failed\n", 30);
    v38 = v33[4] + 30;
LABEL_30:
    v33[4] = v38;
    goto LABEL_31;
  }

  if ((v40 & 1) == 0)
  {
    v33 = llvm::errs(v40);
    v41 = v33[4];
    if (v33[3] - v41 <= 0x20uLL)
    {
      v35 = "checkAndCollectANEResults failed\n";
      v36 = 33;
      goto LABEL_28;
    }

    v37 = 0;
    qmemcpy(v41, "checkAndCollectANEResults failed\n", 33);
    v38 = v33[4] + 33;
    goto LABEL_30;
  }

  if (!(v179 | v176))
  {
    v37 = mlir::minimalLegalize(v162[0], a2, a3, a5);
    goto LABEL_31;
  }

  v42 = v158;
  if (v179)
  {
    v43 = 0;
    v44 = v178;
    v155 = &v178[24 * v179];
    do
    {
      v45 = *(v44 + 1) == *(v44 + 2) || v31 == 0;
      if (!v45)
      {
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        v48 = 8 * a3;
        v49 = a2;
        do
        {
          v170 = *(*(*v49 + 72) + 32 * v43 + 24);
          v173[0] = v170;
          DefiningOp = mlir::Value::getDefiningOp(v173);
          if (DefiningOp)
          {
            v51 = *(DefiningOp + 16);
            llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
            v53 = (v52 + 8);
          }

          else
          {
            v51 = *(v173[0] + 2);
            v53 = (v51 + 40);
          }

          v54 = *v53;
          *(v42 + 16) = v51;
          *(v42 + 24) = v54;
          Loc = mlir::Value::getLoc(&v170);
          v56 = v170;
          v57 = *(v44 + 1);
          if (v57)
          {
            v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v57 + 8);
          }

          else
          {
            v58 = 0;
          }

          (*(*a4 + 120))(a4, Loc, v56, v57, v58, a5);
          if (v47)
          {
            v42 = v158;
            *(v158 + 16) = v47;
            *(v158 + 24) = v46;
          }

          else
          {
            v46 = 0;
            v42 = v158;
            *(v158 + 16) = 0;
            *(v158 + 24) = 0;
          }

          ++v49;
          v48 -= 8;
        }

        while (v48);
      }

      ++v43;
      v44 += 24;
      v31 = a3;
    }

    while (v44 != v155);
  }

  v173[0] = v174;
  v173[1] = 0x400000000;
  v59 = mlir::TargetLegalizerInterface::getBodyBlock(v162);
  v60 = *(v59 + 48);
  v61 = *(v59 + 56);
  if (v60 != v61)
  {
    v62 = v173[1];
    do
    {
      if (v62 >= HIDWORD(v173[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v173[0] + v62) = *&v178[24 * *(*v60 + 24) + 8];
      v62 = ++LODWORD(v173[1]);
      v60 += 8;
    }

    while (v60 != v61);
  }

  v170 = v172;
  v171 = 0x400000000;
  v63 = mlir::TargetLegalizerInterface::getBodyBlock(v162);
  mlir::Block::getTerminator(v63);
  if ((*(v64 + 46) & 0x80) != 0)
  {
    v65 = *(v64 + 68);
    if (v65)
    {
      v66 = v171;
      v67 = 8;
      do
      {
        if (v66 >= HIDWORD(v171))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v170 + v66) = *(v175 + v67);
        v66 = v171 + 1;
        LODWORD(v171) = v171 + 1;
        v67 += 24;
        --v65;
      }

      while (v65);
    }
  }

  v167 = v169;
  v168 = 0x400000000;
  v154 = &a2[a3];
  if (a3)
  {
    v149 = (v42 + 16);
    v152 = *(v42 + 24);
    v153 = *(v42 + 16);
    v68 = a2;
    do
    {
      v156 = v68;
      v69 = *v68;
      v70 = *(*v68 + 16);
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
      *(v42 + 16) = v70;
      *(v42 + 24) = v72;
      if ((*(v69 + 46) & 0x80) != 0)
      {
        v73 = *(v69 + 72);
        v74 = *(v69 + 68);
        v164 = v166;
        v165 = 0x400000000;
        if (v74 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v74)
        {
          v75 = 0;
          v76 = v164;
          do
          {
            v77 = *(v73 + 32 * v75 + 24);
            v78 = *(a5 + 4);
            if (v78)
            {
              v79 = *a5;
              v80 = 0x9DDFEA08EB382D69 * ((8 * *(v73 + 32 * v75 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v73 + 32 * v75 + 24)));
              v81 = 0x9DDFEA08EB382D69 * (HIDWORD(v77) ^ (v80 >> 47) ^ v80);
              v82 = (-348639895 * ((v81 >> 47) ^ v81)) & (v78 - 1);
              v83 = *(*a5 + 16 * v82);
              if (v83 == v77)
              {
LABEL_85:
                if (v82 != v78)
                {
                  v77 = *(v79 + 16 * v82 + 8);
                }
              }

              else
              {
                v84 = 1;
                while (v83 != -4096)
                {
                  v85 = v82 + v84++;
                  v82 = v85 & (v78 - 1);
                  v83 = *(v79 + 16 * v82);
                  if (v83 == v77)
                  {
                    goto LABEL_85;
                  }
                }
              }
            }

            *v76++ = v77;
            ++v75;
          }

          while (v75 != v74);
          v86 = v165;
        }

        else
        {
          v86 = 0;
        }
      }

      else
      {
        LODWORD(v74) = 0;
        v86 = 0;
        v164 = v166;
        HIDWORD(v165) = 4;
      }

      LODWORD(v165) = v86 + v74;
      v87 = *(v69 + 24);
      v163[0] = mlir::SymbolRefAttr::get(v162[0], v71);
      v160 = mlir::placement::RegionTypeAttr::get(*v42, 1u);
      v88 = mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v42, v87, &v170, v163, &v160, &v164);
      v161 = v88;
      if (v168 >= HIDWORD(v168))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v167 + v168) = v88;
      LODWORD(v168) = v168 + 1;
      v89 = *(v69 + 36);
      if (v89)
      {
        v90 = v69 - 16;
      }

      else
      {
        v90 = 0;
      }

      ODSResultIndexAndLength = mlir::mpsx::FusionOp::getODSResultIndexAndLength(&v161, 0);
      v92 = ODSResultIndexAndLength;
      if (*(v161 + 9))
      {
        NextResultAtOffset = (v161 - 16);
      }

      else
      {
        NextResultAtOffset = 0;
      }

      v94 = ODSResultIndexAndLength;
      if (ODSResultIndexAndLength)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
      }

      if (v89)
      {
        v95 = (HIDWORD(v92) + v92);
        if (v95 != v92)
        {
          v96 = 0;
          v97 = ~v94 + v95;
          v98 = v89 - 1;
          do
          {
            v99 = mlir::detail::OpResultImpl::getNextResultAtOffset(v90, v96);
            v100 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v96);
            v163[0] = v99;
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, v163) = v100;
            if (v98 == v96)
            {
              break;
            }

            v45 = v97 == v96++;
          }

          while (!v45);
        }
      }

      if (v164 != v166)
      {
        free(v164);
      }

      v42 = v158;
      if (v153)
      {
        *(v158 + 16) = v153;
        *(v158 + 24) = v152;
      }

      else
      {
        v152 = 0;
        *v149 = 0;
        v149[1] = 0;
      }

      v68 = v156 + 1;
    }

    while (v156 + 1 != v154);
  }

  v101 = a3;
  if (v176)
  {
    v102 = 0;
    v103 = v175;
    v104 = v175 + 24 * v176;
    v148 = v104;
    while (*(v103 + 1) == *(v103 + 2) || v101 == 0)
    {
      ++v102;
LABEL_117:
      v103 += 24;
      if (v103 == v104)
      {
        goto LABEL_158;
      }
    }

    v106 = a2;
    while (1)
    {
      if (v102 >= 6)
      {
        v107 = *v106 - 24 * (v102 - 5) - 96;
      }

      else
      {
        v107 = *v106 - 16 * ((v102 + 1) & 0xF);
      }

      v108 = *(a5 + 4);
      if (!v108)
      {
        goto LABEL_132;
      }

      v109 = *a5;
      v110 = 0x9DDFEA08EB382D69 * ((8 * v107 - 0xAE502812AA7333) ^ HIDWORD(v107));
      v111 = 0x9DDFEA08EB382D69 * (HIDWORD(v107) ^ (v110 >> 47) ^ v110);
      v112 = (-348639895 * ((v111 >> 47) ^ v111)) & (v108 - 1);
      v113 = *(*a5 + 16 * v112);
      if (v113 != v107)
      {
        break;
      }

LABEL_131:
      if (v112 == v108)
      {
        goto LABEL_132;
      }

      v114 = *(v109 + 16 * v112 + 8);
LABEL_134:
      v157 = *(v42 + 16);
      v163[0] = v114;
      v164 = v114;
      v115 = mlir::Value::getDefiningOp(&v164);
      if (v115)
      {
        v116 = *(v115 + 16);
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
        v118 = (v117 + 8);
      }

      else
      {
        v116 = *(v164 + 2);
        v118 = (v116 + 40);
      }

      v119 = *v118;
      *(v42 + 16) = v116;
      *(v42 + 24) = v119;
      v120 = mlir::Value::getLoc(v163);
      v121 = v163[0];
      v122 = *(v103 + 2);
      if (v122)
      {
        v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v122 + 8);
      }

      else
      {
        v123 = 0;
      }

      (*(*a4 + 120))(a4, v120, v121, v122, v123, a5);
      v124 = v163[0];
      v125 = *(a5 + 4);
      if (v125)
      {
        v126 = *a5;
        v127 = 0x9DDFEA08EB382D69 * ((8 * LODWORD(v163[0]) - 0xAE502812AA7333) ^ HIDWORD(v163[0]));
        v128 = 0x9DDFEA08EB382D69 * (HIDWORD(v163[0]) ^ (v127 >> 47) ^ v127);
        v129 = (-348639895 * ((v128 >> 47) ^ v128)) & (v125 - 1);
        v130 = *(*a5 + 16 * v129);
        if (v130 == v163[0])
        {
          v42 = v158;
LABEL_143:
          if (v129 != v125)
          {
            v124 = *(v126 + 16 * v129 + 8);
          }
        }

        else
        {
          v133 = 1;
          v42 = v158;
          while (v130 != -4096)
          {
            v134 = v129 + v133++;
            v129 = v134 & (v125 - 1);
            v130 = *(v126 + 16 * v129);
            if (v130 == v163[0])
            {
              goto LABEL_143;
            }
          }
        }

        v164 = v107;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v164) = v124;
        if (!v42)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v164 = v107;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v164) = v124;
        v42 = v158;
      }

      if (v157)
      {
        *(v42 + 16) = v157;
      }

      else
      {
        *(v42 + 16) = 0;
        *(v42 + 24) = 0;
      }

LABEL_125:
      if (++v106 == v154)
      {
        v101 = a3;
        v104 = v148;
        ++v102;
        goto LABEL_117;
      }
    }

    v131 = 1;
    while (v113 != -4096)
    {
      v132 = v112 + v131++;
      v112 = v132 & (v108 - 1);
      v113 = *(v109 + 16 * v112);
      if (v113 == v107)
      {
        goto LABEL_131;
      }
    }

LABEL_132:
    v114 = 0;
    goto LABEL_134;
  }

LABEL_158:
  v135 = mlir::TargetLegalizerInterface::getBodyBlock(v162);
  mlir::Block::getTerminator(v135);
  if ((*(v136 + 46) & 0x80) != 0)
  {
    v137 = *(v136 + 68);
    if (v137 && v171 != 0)
    {
      v139 = v170;
      v140 = (*(v136 + 72) + 24);
      v141 = v137 - 1;
      v142 = 8 * v171 - 8;
      do
      {
        v144 = *v140;
        v140 += 4;
        v143 = v144;
        v145 = *v139++;
        *(v143 + 8) = *(v143 + 8) & 7 | v145;
        v29 = v141-- != 0;
        if (!v29)
        {
          break;
        }

        v146 = v142;
        v142 -= 8;
      }

      while (v146);
    }
  }

  Context = mlir::Attribute::getContext((v162[0] + 24));
  mlir::TypeRange::TypeRange(&v164, v173[0], LODWORD(v173[1]));
  mlir::TypeRange::TypeRange(v163, v170, v171);
  v37 = mlir::FunctionType::get(Context, v164, v165, v163[0], v163[1]);
  if (v167 != v169)
  {
    free(v167);
  }

  if (v170 != v172)
  {
    free(v170);
  }

  if (v173[0] != v174)
  {
    free(v173[0]);
  }

LABEL_31:
  if (v175 != v177)
  {
    free(v175);
  }

  if (v178 != v180)
  {
    free(v178);
  }

  return v37;
}

BOOL mlir::anonymous namespace::checkAndCollectANEArgs(mlir::Operation *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v162[1] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  if (v9 == v8)
  {
    return 1;
  }

  v10 = 0;
  v11 = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v12 = &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id;
  v13 = &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id;
  while (1)
  {
    v30 = (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v30 + 136) != v11)
    {
      v30 = 0;
    }

    v143 = v30;
    if (!v30)
    {
      v144 = "Argument was not memref: ";
      v147 = 259;
      mlir::Operation::emitOpError(&Layout, a1, &v144);
      if (Layout)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v161, v143);
        if (v152 >= v153)
        {
          if (v151 > &v161 || v151 + 24 * v152 <= &v161)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v96 = v151 + 24 * v152;
        v97 = v161;
        *(v96 + 2) = v162[0];
        *v96 = v97;
        ++v152;
        if (Layout)
        {
          mlir::InFlightDiagnostic::report(&Layout);
        }
      }

      if (v160 == 1)
      {
        if (v159 != &v160)
        {
          free(v159);
        }

        v98 = __p;
        if (__p)
        {
          v99 = v158;
          v100 = __p;
          if (v158 != __p)
          {
            do
            {
              v99 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v99 - 1);
            }

            while (v99 != v98);
            v100 = __p;
          }

          v158 = v98;
          operator delete(v100);
        }

        v101 = v155;
        if (v155)
        {
          v102 = v156;
          v103 = v155;
          if (v156 != v155)
          {
            do
            {
              v105 = *--v102;
              v104 = v105;
              *v102 = 0;
              if (v105)
              {
                MEMORY[0x259C63150](v104, 0x1000C8077774924);
              }
            }

            while (v102 != v101);
LABEL_148:
            v103 = v155;
          }

LABEL_149:
          v156 = v101;
          operator delete(v103);
        }

LABEL_150:
        if (v151 != v154)
        {
          free(v151);
        }
      }

      return 0;
    }

    mlir::MemRefType::getShape(&v143);
    if (v31 != 4)
    {
      mlir::MemRefType::getShape(&v143);
      if (v32 != 5)
      {
        break;
      }
    }

    {
      return 0;
    }

    if (!v7)
    {
      goto LABEL_19;
    }

    v142 = *(*(v7 + 72) + 32 * v10 + 24);
    v141 = *(*(mlir::Value::getDefiningOp(&v142) + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v141);
    if (!DefiningOp)
    {
      goto LABEL_19;
    }

    v34 = *(*(DefiningOp + 48) + 16);
    if (v34 != v12)
    {
      if (v34 != v13)
      {
        goto LABEL_19;
      }

      v35 = *(DefiningOp + 72);
      v36 = *(v35 + 24);
      v139 = *(v35 + 56);
      v140 = v36;
      v37 = mlir::Value::getDefiningOp(&v139);
      if (v37)
      {
        v38 = *(*(v37 + 48) + 16);
        v39 = v38 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
        if (v38 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
        {
          v40 = v37;
        }

        else
        {
          v40 = 0;
        }

        v138 = v40;
        if (!v39)
        {
          goto LABEL_130;
        }

        AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v138);
        mlir::DenseIntElementsAttr::classof(AsAttribute);
        v42 = mlir::Value::getDefiningOp(&v140);
        if (v42 && *(*(v42 + 48) + 16) == v12)
        {
          v137 = *(*(*(v42 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          mlir::MemRefType::getShape(&v137);
          v44 = v43;
          Layout = mlir::MemRefType::getLayout(&v137);
          v149 = v45;
          AffineMap = mlir::MemRefLayoutAttrInterface::getAffineMap(&Layout);
          Layout = &v150;
          v149 = 0x300000000;
          v144 = v146;
          v145 = 0x100000000;
          v46 = *mlir::AffineMap::getResults(&AffineMap);
          if (v46 && (*&v161 = v46, mlir::AffineExpr::getKind(&v161) < 5))
          {
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v161, v47);
          v135 = v161;
          LHS = mlir::AffineBinaryOpExpr::getLHS(&v135);
          if (LHS && (v49 = LHS, *&v161 = LHS, mlir::AffineExpr::getKind(&v161) < 5))
          {
            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v161, v50);
          v51 = v161;
          RHS = mlir::AffineBinaryOpExpr::getRHS(&v135);
          if (RHS && (v53 = RHS, *&v161 = RHS, mlir::AffineExpr::getKind(&v161) < 5))
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v161, v54);
          v134 = v161;
          if (v161 && mlir::AffineExpr::getKind(&v134) == 2)
          {
            v55 = mlir::AffineBinaryOpExpr::getRHS(&v134);
            if (v145 >= HIDWORD(v145))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v144 + v145) = v55;
            LODWORD(v145) = v145 + 1;
            v135 = v51;
          }

          if (v44 - 1 >= 1)
          {
            do
            {
              v56 = mlir::AffineBinaryOpExpr::getLHS(&v135);
              if (v56 && (v57 = v56, *&v161 = v56, mlir::AffineExpr::getKind(&v161) < 5))
              {
                v58 = v57;
              }

              else
              {
                v58 = 0;
              }

              mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v161, v58);
              v59 = v161;
              v60 = mlir::AffineBinaryOpExpr::getRHS(&v135);
              if (v60 && (v61 = v60, *&v161 = v60, mlir::AffineExpr::getKind(&v161) < 5))
              {
                v62 = v61;
              }

              else
              {
                v62 = 0;
              }

              mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v161, v62);
              v134 = v161;
              if (v161 && mlir::AffineExpr::getKind(&v134) == 1)
              {
                AffineConstantExpr = mlir::AffineBinaryOpExpr::getRHS(&v134);
              }

              else
              {
                Context = mlir::Type::getContext(&v143);
                AffineConstantExpr = mlir::getAffineConstantExpr(1, Context, v65);
              }

              if (v149 >= HIDWORD(v149))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(Layout + v149) = AffineConstantExpr;
              LODWORD(v149) = v149 + 1;
              v135 = v59;
              --v44;
            }

            while (v44 > 1);
          }

          v66 = mlir::AffineBinaryOpExpr::getRHS(&v135);
          if (v149 >= HIDWORD(v149))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(Layout + v149) = v66;
          LODWORD(v149) = v149 + 1;
          if (v145 == 1)
          {
            v67 = *v144;
            if (*v144 && (*&v161 = *v144, mlir::AffineExpr::getKind(&v161) == 5))
            {
              v68 = v67;
            }

            else
            {
              v68 = 0;
            }

            v70 = mlir::AffineConstantExpr::AffineConstantExpr(&v161, v68);
            Value = mlir::AffineConstantExpr::getValue(v70);
          }

          else
          {
            Value = 1;
          }

          *&v161 = v162;
          *(&v161 + 1) = 0x100000000;
          v71 = mlir::Type::getContext(&v143);
          AffineDimExpr = mlir::getAffineDimExpr(0, v71, v72);
          v132 = mlir::AffineExpr::operator*(&AffineDimExpr, *(Layout + 2));
          Shape = mlir::MemRefType::getShape(&v143);
          v133 = mlir::AffineExpr::operator*(&v132, *(Shape + 8) / Value);
          v74 = mlir::Type::getContext(&v143);
          v132 = mlir::getAffineDimExpr(1, v74, v75);
          if (v145 == 1)
          {
            v132 = mlir::AffineExpr::floorDiv(&v132, *v144);
          }

          v76 = mlir::AffineExpr::operator*(&v132, *(Layout + 2));
          v133 = mlir::AffineExpr::operator+(&v133, v76);
          v77 = mlir::Type::getContext(&v143);
          AffineDimExpr = mlir::getAffineDimExpr(2, v77, v78);
          v79 = mlir::AffineExpr::operator*(&AffineDimExpr, *(Layout + 1));
          v133 = mlir::AffineExpr::operator+(&v133, v79);
          v80 = mlir::Type::getContext(&v143);
          AffineDimExpr = mlir::getAffineDimExpr(3, v80, v81);
          v82 = mlir::AffineExpr::operator*(&AffineDimExpr, *Layout);
          v83 = mlir::AffineExpr::operator+(&v133, v82);
          v133 = v83;
          if (v145 == 1)
          {
            v84 = mlir::Type::getContext(&v143);
            AffineDimExpr = mlir::getAffineDimExpr(1, v84, v85);
            v86 = mlir::AffineExpr::operator%(&AffineDimExpr, *v144);
            v83 = mlir::AffineExpr::operator+(&v133, v86);
            v133 = v83;
          }

          if (DWORD2(v161) >= HIDWORD(v161))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v161 + 8 * DWORD2(v161)) = v83;
          ++DWORD2(v161);
          v87 = DWORD2(v161);
          v88 = v161;
          v89 = mlir::Type::getContext(&v143);
          v90 = mlir::AffineMap::get(4, 0, v88, v87, v89);
          v91 = mlir::MemRefType::getShape(&v143);
          v93 = v92;
          ElementType = mlir::MemRefType::getElementType(&v143);
          *(*a3 + 24 * *(*v9 + 24) + 8) = mlir::MemRefType::get(v91, v93, ElementType, v90, 0);
          if (v161 != v162)
          {
            free(v161);
          }

          v12 = &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id;
          v13 = &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id;
          if (v144 != v146)
          {
            free(v144);
          }

          if (Layout != &v150)
          {
            free(Layout);
          }

          goto LABEL_8;
        }

LABEL_19:
        {
          goto LABEL_8;
        }

        if (v143 == CanonicalMemRefType)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v138 = 0;
LABEL_130:
      v144 = "Reshape pattern not present: ";
      v147 = 259;
      mlir::Operation::emitOpError(&Layout, a1, &v144);
      if (Layout)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v161, v143);
        if (v152 >= v153)
        {
          if (v151 > &v161 || v151 + 24 * v152 <= &v161)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v121 = v151 + 24 * v152;
        v122 = v161;
        *(v121 + 2) = v162[0];
        *v121 = v122;
        ++v152;
        if (Layout)
        {
          mlir::InFlightDiagnostic::report(&Layout);
        }
      }

      if (v160 == 1)
      {
        if (v159 != &v160)
        {
          free(v159);
        }

        v123 = __p;
        if (__p)
        {
          v124 = v158;
          v125 = __p;
          if (v158 != __p)
          {
            do
            {
              v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
            }

            while (v124 != v123);
            v125 = __p;
          }

          v158 = v123;
          operator delete(v125);
        }

        v101 = v155;
        if (v155)
        {
          v126 = v156;
          v103 = v155;
          if (v156 != v155)
          {
            do
            {
              v128 = *--v126;
              v127 = v128;
              *v126 = 0;
              if (v128)
              {
                MEMORY[0x259C63150](v127, 0x1000C8077774924);
              }
            }

            while (v126 != v101);
            goto LABEL_148;
          }

          goto LABEL_149;
        }

        goto LABEL_150;
      }

      return 0;
    }

    v144 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    Layout = mlir::MemRefType::getLayout(&v144);
    v149 = v14;
    v129 = mlir::MemRefLayoutAttrInterface::getAffineMap(&Layout);
    v130 = v10;
    v15 = a1;
    v16 = v7;
    v17 = v8;
    v18 = v11;
    v19 = a3;
    v20 = v12;
    v21 = mlir::MemRefType::getShape(&v143);
    v22 = v9;
    v23 = v13;
    v25 = v24;
    v26 = mlir::MemRefType::getElementType(&v143);
    v27 = v21;
    v12 = v20;
    a3 = v19;
    v11 = v18;
    v8 = v17;
    v7 = v16;
    a1 = v15;
    v10 = v130;
    v28 = v25;
    v13 = v23;
    v9 = v22;
    CanonicalMemRefType = mlir::MemRefType::get(v27, v28, v26, v129, 0);
LABEL_7:
    *(*a3 + 24 * *(*v9 + 24) + 8) = CanonicalMemRefType;
LABEL_8:
    ++v10;
    v9 += 8;
    if (v9 == v8)
    {
      return 1;
    }
  }

  v144 = "Region input ";
  v147 = 259;
  mlir::Operation::emitOpError(&Layout, a1, &v144);
  if (Layout)
  {
    v106 = *(*v9 + 24);
    LODWORD(v161) = 5;
    *(&v161 + 1) = v106;
    if (v152 >= v153)
    {
      if (v151 > &v161 || v151 + 24 * v152 <= &v161)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v107 = v151 + 24 * v152;
    v108 = v161;
    *(v107 + 2) = v162[0];
    *v107 = v108;
    v109 = ++v152;
    if (Layout)
    {
      LODWORD(v161) = 3;
      *(&v161 + 1) = " was not rank-4 or rank-5";
      v162[0] = 25;
      if (v109 >= v153)
      {
        if (v151 > &v161 || v151 + 24 * v109 <= &v161)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v110 = v151 + 24 * v152;
      v111 = v161;
      *(v110 + 2) = v162[0];
      *v110 = v111;
      ++v152;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
  v112 = result;
  if (Layout)
  {
    mlir::InFlightDiagnostic::report(&Layout);
    result = v112;
  }

  if (v160 == 1)
  {
    if (v159 != &v160)
    {
      free(v159);
      result = v112;
    }

    v113 = __p;
    if (__p)
    {
      v114 = v158;
      v115 = __p;
      if (v158 != __p)
      {
        do
        {
          v114 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v114 - 1);
        }

        while (v114 != v113);
        v115 = __p;
      }

      v158 = v113;
      operator delete(v115);
      result = v112;
    }

    v116 = v155;
    if (v155)
    {
      v117 = v156;
      v118 = v155;
      if (v156 != v155)
      {
        do
        {
          v120 = *--v117;
          v119 = v120;
          *v117 = 0;
          if (v120)
          {
            MEMORY[0x259C63150](v119, 0x1000C8077774924);
          }
        }

        while (v117 != v116);
        v118 = v155;
      }

      v156 = v116;
      operator delete(v118);
      result = v112;
    }

    if (v151 != v154)
    {
      free(v151);
      return v112;
    }
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v21, v23, v22);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::TypeRange::TypeRange(v23, *a3, *(a3 + 8));
  v15 = *a4;
  v16 = *a5;
  mlir::ValueRange::ValueRange(v22, *a6, *(a6 + 8));
  mlir::placement::RegionCall::build(a1, v21, v23[0], v23[1], v15, v16, v22[0], v22[1]);
  v17 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v18;
}

uint64_t mlir::legalizeA12(mlir::SymbolRefAttr *InterfaceFor, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = InterfaceFor;
  v183[12] = *MEMORY[0x277D85DE8];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v161 = a3;
  v162 = a4;
  v165[0] = v10;
  v165[1] = InterfaceFor;
  BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v165);
  v181 = v183;
  v182 = 0x400000000;
  v178 = v180;
  v179 = 0x400000000;
  v176[0] = mlir::TargetLegalizerInterface::getFunctionType(v165);
  Inputs = mlir::FunctionType::getInputs(v176);
  if (v13)
  {
    v14 = *(BodyBlock + 6);
    v15 = *(BodyBlock + 7);
    if (v14 != v15)
    {
      v16 = v14 + 8;
      v17 = 8 * v13 - 8;
      do
      {
        v18 = (*(*(v16 - 8) + 8) & 0xFFFFFFFFFFFFFFF8);
        v176[0] = *(v16 - 8);
        v176[1] = v18;
        v177[0] = *Inputs;
        if (v182 >= HIDWORD(v182))
        {
          v20 = a2;
          v21 = Inputs;
          llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v181, v176);
          Inputs = v21;
          a2 = v20;
          if (!v17)
          {
            break;
          }
        }

        else
        {
          v19 = &v181[24 * v182];
          *v19 = *v176;
          *(v19 + 2) = v177[0];
          LODWORD(v182) = v182 + 1;
          if (!v17)
          {
            break;
          }
        }

        ++Inputs;
        v17 -= 8;
        v46 = v16 == v15;
        v16 += 8;
      }

      while (!v46);
    }
  }

  v176[0] = mlir::TargetLegalizerInterface::getFunctionType(v165);
  Results = mlir::FunctionType::getResults(v176);
  v24 = v23;
  mlir::Block::getTerminator(BodyBlock);
  if ((*(v25 + 46) & 0x80) != 0)
  {
    if (v24)
    {
      v26 = *(v25 + 68);
      if (v26)
      {
        v27 = *(v25 + 72) + 24;
        v28 = v26 - 1;
        v29 = 8 * v24 - 8;
        do
        {
          v30 = (*(*v27 + 8) & 0xFFFFFFFFFFFFFFF8);
          v176[0] = *v27;
          v176[1] = v30;
          v177[0] = *Results;
          if (v179 >= HIDWORD(v179))
          {
            llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(&v178, v176);
          }

          else
          {
            v31 = v178 + 24 * v179;
            *v31 = *v176;
            *(v31 + 2) = v177[0];
            LODWORD(v179) = v179 + 1;
          }

          v32 = v28-- != 0;
          v33 = v32;
          if (!v29)
          {
            break;
          }

          ++Results;
          v27 += 32;
          v29 -= 8;
        }

        while ((v33 & 1) != 0);
      }
    }
  }

  if (!v34)
  {
    v35 = llvm::errs(v34);
    v36 = v35[4];
    if (v35[3] - v36 <= 0x1DuLL)
    {
      v37 = "checkAndCollectANEArgs failed\n";
      v38 = 30;
LABEL_28:
      llvm::raw_ostream::write(v35, v37, v38);
      v39 = 0;
      goto LABEL_31;
    }

    v39 = 0;
    qmemcpy(v36, "checkAndCollectANEArgs failed\n", 30);
    v40 = v35[4] + 30;
LABEL_30:
    v35[4] = v40;
    goto LABEL_31;
  }

  if ((v42 & 1) == 0)
  {
    v35 = llvm::errs(v42);
    v43 = v35[4];
    if (v35[3] - v43 <= 0x20uLL)
    {
      v37 = "checkAndCollectANEResults failed\n";
      v38 = 33;
      goto LABEL_28;
    }

    v39 = 0;
    qmemcpy(v43, "checkAndCollectANEResults failed\n", 33);
    v40 = v35[4] + 33;
    goto LABEL_30;
  }

  if (!(v182 | v179))
  {
    v39 = mlir::minimalLegalize(v165[0], v161, v162, a6);
    goto LABEL_31;
  }

  if (!v182)
  {
LABEL_63:
    v159 = a2;
    v176[0] = v177;
    v176[1] = 0x400000000;
    v60 = mlir::TargetLegalizerInterface::getBodyBlock(v165);
    v61 = *(v60 + 48);
    v62 = *(v60 + 56);
    if (v61 != v62)
    {
      v63 = v176[1];
      do
      {
        if (v63 >= HIDWORD(v176[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v176[0] + v63) = *&v181[24 * *(*v61 + 24) + 8];
        v63 = ++LODWORD(v176[1]);
        v61 += 8;
      }

      while (v61 != v62);
    }

    v173 = v175;
    v174 = 0x400000000;
    v64 = mlir::TargetLegalizerInterface::getBodyBlock(v165);
    mlir::Block::getTerminator(v64);
    if ((*(v65 + 46) & 0x80) != 0)
    {
      v66 = *(v65 + 68);
      if (v66)
      {
        v67 = v174;
        v68 = 8;
        do
        {
          if (v67 >= HIDWORD(v174))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v173 + v67) = *(v178 + v68);
          v67 = v174 + 1;
          LODWORD(v174) = v174 + 1;
          v68 += 24;
          --v66;
        }

        while (v66);
      }
    }

    v170 = v172;
    v171 = 0x400000000;
    v158 = &v161[v162];
    if (v162)
    {
      v153 = *(a2 + 3);
      v69 = v161;
      v155 = *(a2 + 2);
      do
      {
        v70 = *v69;
        v71 = *(*v69 + 16);
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
        *(v159 + 2) = v71;
        *(v159 + 3) = v73;
        if ((*(v70 + 46) & 0x80) != 0)
        {
          v74 = *(v70 + 72);
          v75 = *(v70 + 68);
          v167 = v169;
          v168 = 0x400000000;
          v72 = v169;
          if (v75 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v75)
          {
            v76 = 0;
            v77 = v167;
            do
            {
              v78 = *(v74 + 32 * v76 + 24);
              v79 = *(a6 + 4);
              if (v79)
              {
                v80 = *a6;
                v81 = 0x9DDFEA08EB382D69 * ((8 * *(v74 + 32 * v76 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v74 + 32 * v76 + 24)));
                v82 = 0x9DDFEA08EB382D69 * (HIDWORD(v78) ^ (v81 >> 47) ^ v81);
                v83 = (-348639895 * ((v82 >> 47) ^ v82)) & (v79 - 1);
                v84 = *(*a6 + 16 * v83);
                if (v84 == v78)
                {
LABEL_88:
                  if (v83 != v79)
                  {
                    v78 = *(v80 + 16 * v83 + 8);
                  }
                }

                else
                {
                  v85 = 1;
                  while (v84 != -4096)
                  {
                    v86 = v83 + v85++;
                    v83 = v86 & (v79 - 1);
                    v84 = *(v80 + 16 * v83);
                    if (v84 == v78)
                    {
                      goto LABEL_88;
                    }
                  }
                }
              }

              *v77++ = v78;
              ++v76;
            }

            while (v76 != v75);
            v87 = v168;
          }

          else
          {
            v87 = 0;
          }
        }

        else
        {
          LODWORD(v75) = 0;
          v87 = 0;
          v167 = v169;
          HIDWORD(v168) = 4;
        }

        LODWORD(v168) = v87 + v75;
        v88 = *(v70 + 24);
        v166[0] = mlir::SymbolRefAttr::get(v165[0], v72);
        v163 = mlir::placement::RegionTypeAttr::get(*v159, 1u);
        v89 = mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v159, v88, &v173, v166, &v163, &v167);
        v164 = v89;
        if (v171 >= HIDWORD(v171))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v170 + v171) = v89;
        LODWORD(v171) = v171 + 1;
        v90 = *(v70 + 36);
        if (v90)
        {
          v91 = v70 - 16;
        }

        else
        {
          v91 = 0;
        }

        ODSResultIndexAndLength = mlir::mpsx::FusionOp::getODSResultIndexAndLength(&v164, 0);
        v93 = ODSResultIndexAndLength;
        if (*(v164 + 9))
        {
          NextResultAtOffset = (v164 - 16);
        }

        else
        {
          NextResultAtOffset = 0;
        }

        v95 = ODSResultIndexAndLength;
        if (ODSResultIndexAndLength)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
        }

        if (v90)
        {
          v96 = (HIDWORD(v93) + v93);
          if (v96 != v93)
          {
            v97 = 0;
            v98 = ~v95 + v96;
            v99 = v90 - 1;
            do
            {
              v100 = mlir::detail::OpResultImpl::getNextResultAtOffset(v91, v97);
              v101 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v97);
              v166[0] = v100;
              *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, v166) = v101;
              if (v99 == v97)
              {
                break;
              }

              v46 = v98 == v97++;
            }

            while (!v46);
          }
        }

        if (v167 != v169)
        {
          free(v167);
        }

        if (v155)
        {
          *(v159 + 2) = v155;
          *(v159 + 3) = v153;
        }

        else
        {
          v153 = 0;
          *(v159 + 2) = 0;
          *(v159 + 3) = 0;
        }

        ++v69;
      }

      while (v69 != v158);
    }

    v102 = v159;
    if (!v179)
    {
LABEL_162:
      v137 = mlir::TargetLegalizerInterface::getBodyBlock(v165);
      mlir::Block::getTerminator(v137);
      if ((*(v138 + 46) & 0x80) != 0)
      {
        v139 = *(v138 + 68);
        if (v139 && v174 != 0)
        {
          v141 = v173;
          v142 = (*(v138 + 72) + 24);
          v143 = v139 - 1;
          v144 = 8 * v174 - 8;
          do
          {
            v146 = *v142;
            v142 += 4;
            v145 = v146;
            v147 = *v141++;
            *(v145 + 8) = *(v145 + 8) & 7 | v147;
            v32 = v143-- != 0;
            if (!v32)
            {
              break;
            }

            v148 = v144;
            v144 -= 8;
          }

          while (v148);
        }
      }

      Context = mlir::Attribute::getContext((v165[0] + 24));
      mlir::TypeRange::TypeRange(&v167, v176[0], LODWORD(v176[1]));
      mlir::TypeRange::TypeRange(v166, v173, v174);
      v39 = mlir::FunctionType::get(Context, v167, v168, v166[0], v166[1]);
LABEL_173:
      if (v170 != v172)
      {
        free(v170);
      }

      if (v173 != v175)
      {
        free(v173);
      }

      if (v176[0] != v177)
      {
        free(v176[0]);
      }

      goto LABEL_31;
    }

    v156 = 0;
    v103 = v178;
    v150 = v178 + 24 * v179;
    while (*(v103 + 1) == *(v103 + 2) || v162 == 0)
    {
      v105 = v156 + 1;
LABEL_161:
      v103 += 24;
      v156 = v105;
      if (v103 == v150)
      {
        goto LABEL_162;
      }
    }

    v151 = *(v102 + 3);
    v152 = *(v102 + 2);
    v106 = v161;
    while (1)
    {
      v107 = v156 >= 6 ? *v106 - 24 * (v156 - 5) - 96 : *v106 - 16 * ((v156 + 1) & 0xF);
      v108 = *(a6 + 4);
      if (!v108)
      {
        break;
      }

      v109 = *a6;
      v110 = 0x9DDFEA08EB382D69 * ((8 * v107 - 0xAE502812AA7333) ^ HIDWORD(v107));
      v111 = 0x9DDFEA08EB382D69 * (HIDWORD(v107) ^ (v110 >> 47) ^ v110);
      v112 = (-348639895 * ((v111 >> 47) ^ v111)) & (v108 - 1);
      v113 = *(*a6 + 16 * v112);
      if (v113 == v107)
      {
LABEL_132:
        if (v112 == v108)
        {
          break;
        }

        v114 = *(v109 + 16 * v112 + 8);
      }

      else
      {
        v133 = 1;
        while (v113 != -4096)
        {
          v134 = v112 + v133++;
          v112 = v134 & (v108 - 1);
          v113 = *(v109 + 16 * v112);
          if (v113 == v107)
          {
            goto LABEL_132;
          }
        }

        v114 = 0;
      }

LABEL_135:
      v166[0] = v114;
      v167 = v114;
      DefiningOp = mlir::Value::getDefiningOp(&v167);
      if (DefiningOp)
      {
        v116 = *(DefiningOp + 16);
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
        v118 = (v117 + 8);
      }

      else
      {
        v116 = *(v167 + 2);
        v118 = (v116 + 40);
      }

      v119 = *v118;
      *(v159 + 2) = v116;
      *(v159 + 3) = v119;
      v102 = v159;
      Loc = mlir::Value::getLoc(v166);
      v121 = v166[0];
      v122 = v103;
      v123 = *(v103 + 2);
      if (v123)
      {
        v124 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v123 + 8);
      }

      else
      {
        v124 = 0;
      }

      v125 = (*(*a5 + 24))(a5, v159, Loc, v121, v123, v124, a6);
      v103 = v122;
      if (v125)
      {
        v126 = v166[0];
        v127 = *(a6 + 4);
        if (v127)
        {
          v128 = *a6;
          v129 = 0x9DDFEA08EB382D69 * ((8 * LODWORD(v166[0]) - 0xAE502812AA7333) ^ HIDWORD(v166[0]));
          v130 = 0x9DDFEA08EB382D69 * (HIDWORD(v166[0]) ^ (v129 >> 47) ^ v129);
          v131 = (-348639895 * ((v130 >> 47) ^ v130)) & (v127 - 1);
          v132 = *(*a6 + 16 * v131);
          if (v132 == v166[0])
          {
LABEL_144:
            if (v131 != v127)
            {
              v126 = *(v128 + 16 * v131 + 8);
            }
          }

          else
          {
            v135 = 1;
            while (v132 != -4096)
            {
              v136 = v131 + v135++;
              v131 = v136 & (v127 - 1);
              v132 = *(v128 + 16 * v131);
              v102 = v159;
              v103 = v122;
              if (v132 == v166[0])
              {
                goto LABEL_144;
              }
            }

            v102 = v159;
            v103 = v122;
          }
        }

        v167 = v107;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &v167) = v126;
      }

      if (v152)
      {
        *(v102 + 2) = v152;
        *(v102 + 3) = v151;
        if ((v125 & 1) == 0)
        {
LABEL_172:
          v39 = 0;
          goto LABEL_173;
        }
      }

      else
      {
        v151 = 0;
        *(v102 + 2) = 0;
        *(v102 + 3) = 0;
        if ((v125 & 1) == 0)
        {
          goto LABEL_172;
        }
      }

      if (++v106 == v158)
      {
        v105 = v156 + 1;
        goto LABEL_161;
      }
    }

    v114 = 0;
    goto LABEL_135;
  }

  v44 = 0;
  v45 = v181;
  v154 = &v181[24 * v182];
  while (1)
  {
    v46 = *(v45 + 1) == *(v45 + 2) || v162 == 0;
    if (!v46)
    {
      break;
    }

LABEL_43:
    ++v44;
    v45 += 24;
    if (v45 == v154)
    {
      goto LABEL_63;
    }
  }

  v47 = *(a2 + 2);
  v157 = *(a2 + 3);
  v48 = 8 * v162;
  v49 = v161;
  while (1)
  {
    v50 = a2;
    v173 = *(*(*v49 + 72) + 32 * v44 + 24);
    v176[0] = v173;
    v51 = mlir::Value::getDefiningOp(v176);
    if (v51)
    {
      v52 = *(v51 + 16);
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
      v54 = (v53 + 8);
    }

    else
    {
      v52 = *(v176[0] + 2);
      v54 = (v52 + 40);
    }

    v55 = *v54;
    *(v50 + 2) = v52;
    *(v50 + 3) = v55;
    a2 = v50;
    v56 = mlir::Value::getLoc(&v173);
    v57 = v173;
    v58 = *(v45 + 1);
    v59 = v58 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8) : 0;
    if (((*(*a5 + 24))(a5, a2, v56, v57, v58, v59, a6) & 1) == 0)
    {
      break;
    }

    if (v47)
    {
      *(a2 + 2) = v47;
      *(a2 + 3) = v157;
    }

    else
    {
      v157 = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
    }

    ++v49;
    v48 -= 8;
    if (!v48)
    {
      goto LABEL_43;
    }
  }

  v39 = 0;
  if (v47)
  {
    *(a2 + 2) = v47;
    *(a2 + 3) = v157;
  }

  else
  {
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
  }

LABEL_31:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  return v39;
}

uint64_t mlir::anonymous namespace::checkStrideAndInterleave(mlir::Operation *a1, uint64_t a2)
{
  v82[4] = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = a2;
  v80 = v82;
  v81 = 0x400000000;
  if ((mlir::getStridesAndOffset(a2, &v80, &v64) & 1) == 0)
  {
    v62[0] = "Unable to get strides for type: ";
    v63 = 259;
    mlir::Operation::emitOpError(&v68, a1, v62);
    if (v68)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v66, a2);
      if (v71 >= v72)
      {
        if (v70 > &v66 || v70 + 24 * v71 <= &v66)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v70 + 24 * v71;
      v15 = v66;
      *(v14 + 2) = v67;
      *v14 = v15;
      ++v71;
      if (v68)
      {
        mlir::InFlightDiagnostic::report(&v68);
      }
    }

    if (v79 != 1)
    {
      goto LABEL_101;
    }

    if (v78 != &v79)
    {
      free(v78);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v77;
      v18 = __p;
      if (v77 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v77 = v16;
      operator delete(v18);
    }

    v9 = v74;
    if (!v74)
    {
      goto LABEL_99;
    }

    v19 = v75;
    v11 = v74;
    if (v75 == v74)
    {
      goto LABEL_98;
    }

    do
    {
      v21 = *--v19;
      v20 = v21;
      *v19 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v19 != v9);
    goto LABEL_97;
  }

  if (v64)
  {
    v62[0] = "Invalid offset for type: ";
    v63 = 259;
    mlir::Operation::emitOpError(&v68, a1, v62);
    if (v68)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v66, a2);
      if (v71 >= v72)
      {
        if (v70 > &v66 || v70 + 24 * v71 <= &v66)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = v70 + 24 * v71;
      v5 = v66;
      *(v4 + 2) = v67;
      *v4 = v5;
      ++v71;
      if (v68)
      {
        mlir::InFlightDiagnostic::report(&v68);
      }
    }

    if (v79 != 1)
    {
      goto LABEL_101;
    }

    if (v78 != &v79)
    {
      free(v78);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v77;
      v8 = __p;
      if (v77 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v77 = v6;
      operator delete(v8);
    }

    v9 = v74;
    if (!v74)
    {
LABEL_99:
      if (v70 != &v73)
      {
        free(v70);
      }

LABEL_101:
      v39 = 0;
      goto LABEL_102;
    }

    v10 = v75;
    v11 = v74;
    if (v75 == v74)
    {
LABEL_98:
      v75 = v9;
      operator delete(v11);
      goto LABEL_99;
    }

    do
    {
      v13 = *--v10;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        MEMORY[0x259C63150](v12, 0x1000C8077774924);
      }
    }

    while (v10 != v9);
LABEL_97:
    v11 = v74;
    goto LABEL_98;
  }

  v22 = &v80[8 * v81];
  if (v81 >= 2)
  {
    v25 = v80 + 8;
    v24 = *v80;
    v26 = 8 * v81 - 8;
    v23 = v80;
    v27 = v80 + 8;
    do
    {
      v29 = *v27;
      v27 += 8;
      v28 = v29;
      if (v29 < v24)
      {
        v24 = v28;
        v23 = v25;
      }

      v25 = v27;
      v26 -= 8;
    }

    while (v26);
  }

  else
  {
    v23 = v80;
  }

  v31 = v81 < 3 || v23 - v80 != 8;
  v32 = v23 + 8;
  if (v23 + 8 != v22)
  {
    v33 = v23 + 8;
    while (*v23 < *v33)
    {
      if (++v33 == v22)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_68;
  }

LABEL_55:
  if (v31 || *v23 != 1)
  {
LABEL_68:
    if (v32 == v22)
    {
LABEL_71:
      v39 = 1;
      goto LABEL_102;
    }

    while (*v23 == *v32)
    {
      v32 += 8;
      if (v32 == v22)
      {
        goto LABEL_71;
      }
    }

    v62[0] = "Smallest stride was: ";
    v63 = 259;
    mlir::Operation::emitOpError(&v68, a1, v62);
    if (v68)
    {
      LODWORD(v66) = 2;
      *(&v66 + 1) = (v23 - v80) >> 3;
      if (v71 >= v72)
      {
        if (v70 > &v66 || v70 + 24 * v71 <= &v66)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v70 + 24 * v71;
      v43 = v66;
      *(v42 + 2) = v67;
      *v42 = v43;
      ++v71;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v68, " expected ");
    if (*v44)
    {
      v45 = *(v44 + 24);
      LODWORD(v66) = 5;
      *(&v66 + 1) = v81 - 1;
      v46 = *(v44 + 32);
      if (v46 >= *(v44 + 36))
      {
        if (v45 > &v66 || v45 + 24 * v46 <= &v66)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = v45 + 24 * *(v44 + 32);
      v48 = v66;
      *(v47 + 16) = v67;
      *v47 = v48;
      ++*(v44 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v44, " for type ");
    if (*v49)
    {
      v50 = v49;
      mlir::DiagnosticArgument::DiagnosticArgument(&v66, a2);
      v51 = v50[3];
      v52 = *(v50 + 8);
      if (v52 >= *(v50 + 9))
      {
        if (v51 > &v66 || v51 + 24 * v52 <= &v66)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v53 = v51 + 24 * *(v50 + 8);
      v54 = v66;
      *(v53 + 16) = v67;
      *v53 = v54;
      ++*(v50 + 8);
    }

    if (v68)
    {
      mlir::InFlightDiagnostic::report(&v68);
    }

    if (v79 != 1)
    {
      goto LABEL_101;
    }

    if (v78 != &v79)
    {
      free(v78);
    }

    v55 = __p;
    if (__p)
    {
      v56 = v77;
      v57 = __p;
      if (v77 != __p)
      {
        do
        {
          v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
        }

        while (v56 != v55);
        v57 = __p;
      }

      v77 = v55;
      operator delete(v57);
    }

    v9 = v74;
    if (!v74)
    {
      goto LABEL_99;
    }

    v58 = v75;
    v11 = v74;
    if (v75 == v74)
    {
      goto LABEL_98;
    }

    do
    {
      v60 = *--v58;
      v59 = v60;
      *v58 = 0;
      if (v60)
      {
        MEMORY[0x259C63150](v59, 0x1000C8077774924);
      }
    }

    while (v58 != v9);
    goto LABEL_97;
  }

  v34 = *(mlir::MemRefType::getShape(&v65) + 8);
  v35 = *(mlir::MemRefType::getShape(&v65) + 8);
  v36 = *(mlir::MemRefType::getShape(&v65) + 8);
  v37 = *(mlir::MemRefType::getShape(&v65) + 8);
  Shape = mlir::MemRefType::getShape(&v65);
  v39 = 1;
  if (v34 != 1 && v35 != 2 && v36 != 3 && v37 != 4 && *(Shape + 8) != 8)
  {
    v62[0] = "Disallowed interleave size, cannot legalize argument of type: ";
    v63 = 259;
    mlir::Operation::emitOpError(&v68, a1, v62);
    if (v68)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v66, v65);
      if (v71 >= v72)
      {
        if (v70 > &v66 || v70 + 24 * v71 <= &v66)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v40 = v70 + 24 * v71;
      v41 = v66;
      *(v40 + 2) = v67;
      *v40 = v41;
      ++v71;
      if (v68)
      {
        mlir::InFlightDiagnostic::report(&v68);
      }
    }

    if (v79 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v69);
    }

    goto LABEL_101;
  }

LABEL_102:
  if (v80 != v82)
  {
    free(v80);
  }

  return v39;
}

BOOL mlir::anonymous namespace::isRowAligned(mlir::Operation *a1, uint64_t a2)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = a2;
  v54 = v56;
  v55 = 0x400000000;
  if (mlir::getStridesAndOffset(a2, &v54, &v39))
  {
    v4 = v54;
    v5 = v55;
    v6 = v55;
    if (v55 > 1)
    {
      v20 = (v54 + 1);
      v19 = *v54;
      v21 = v6 * 8 - 8;
      v22 = v54;
      v23 = v54 + 1;
      do
      {
        v25 = *v23++;
        v24 = v25;
        if (v25 < v19)
        {
          v19 = v24;
          v22 = v20;
        }

        v20 = v23;
        v21 -= 8;
      }

      while (v21);
      v26 = 1;
      if (v55 != 2)
      {
        v26 = 2;
      }

      if (v22 - v54 == 8)
      {
        v8 = v26;
      }

      else
      {
        v8 = 1;
      }

      if (v55 >= 0x81)
      {
        v27 = v54;
        v28 = MEMORY[0x277D826F0];
        v29 = v55;
        v30 = v55;
        while (1)
        {
          v31 = operator new(8 * v30, v28);
          if (v31)
          {
            break;
          }

          v7 = v30 >> 1;
          v32 = v30 > 1;
          v30 >>= 1;
          if (!v32)
          {
            v4 = v27;
            v5 = v29;
            goto LABEL_37;
          }
        }

        v36 = v31;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v27, &v27[v6], v43, v29, v31, v30);
        operator delete(v36);
        goto LABEL_38;
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 1;
    }

LABEL_37:
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v4, &v4[v6], v43, v5, 0, v7);
LABEL_38:
    v33 = v54[v8];
    v43[0] = mlir::MemRefType::getElementType(&v40);
    v34 = ((v33 * (mlir::Type::getIntOrFloatBitWidth(v43) >> 3)) & 0x3FLL) == 0;
    goto LABEL_44;
  }

  v37 = "Unable to get strides for type: ";
  v38 = 259;
  mlir::Operation::emitOpError(v43, a1, &v37);
  if (v43[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
    if (v45 >= v46)
    {
      if (v44 > &v41 || v44 + 24 * v45 <= &v41)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v44 + 24 * v45;
    v10 = v41;
    *(v9 + 2) = v42;
    *v9 = v10;
    ++v45;
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v51;
      v13 = __p;
      if (v51 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v51 = v11;
      operator delete(v13);
    }

    v14 = v48;
    if (v48)
    {
      v15 = v49;
      v16 = v48;
      if (v49 != v48)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v48;
      }

      v49 = v14;
      operator delete(v16);
    }

    if (v44 != &v47)
    {
      free(v44);
    }
  }

  v34 = 0;
LABEL_44:
  if (v54 != v56)
  {
    free(v54);
  }

  return v34;
}

void *mlir::anonymous namespace::makeCanonicalMemRefType(void *a1)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v31 = a1;
  mlir::MemRefType::getShape(&v31);
  if (!v1)
  {
    return v31;
  }

  mlir::MemRefType::getShape(&v31);
  v3 = v2;
  v33 = v36;
  v35 = 4;
  if (v2 >= 5)
  {
    v34 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v2)
  {
    memset_pattern16(v36, &unk_257369660, 8 * v2);
  }

  v34 = v3;
  ElementType = mlir::MemRefType::getElementType(&v31);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
  v6 = v33;
  v7 = v34;
  *(v33 + v34 - 1) = 0x40 / (IntOrFloatBitWidth >> 3);
  v8 = v31;
  if (v31)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v9 = 0;
  }

  v32[0] = v8;
  v32[1] = v9;
  v39[0] = 1;
  ElementType = v39;
  v38 = 0x400000001;
  Shape = mlir::ShapedType::getShape(v32);
  v12 = v38;
  if (v11 != 1)
  {
    v26 = &v6[8 * v7 - 8];
    v27 = 8 * v11 - 8;
    do
    {
      v29 = *v26;
      v26 -= 8;
      v28 = v29;
      if (v29)
      {
        v30 = (v28 + *(ElementType + v12 - 1) * *(Shape + v27) - 1) / v28 * v28;
      }

      else
      {
        v30 = 0;
      }

      if (v12 >= HIDWORD(v38))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(ElementType + v12) = v30;
      v12 = v38 + 1;
      LODWORD(v38) = v38 + 1;
      v27 -= 8;
    }

    while (v27);
  }

  v13 = ElementType;
  v14 = v12;
  if (v12)
  {
    v15 = ElementType + 8 * v12 - 8;
    if (v15 > ElementType)
    {
      v16 = ElementType + 8;
      do
      {
        v17 = *(v16 - 1);
        *(v16 - 1) = *v15;
        *v15 = v17;
        v15 -= 8;
        v18 = v16 >= v15;
        v16 += 8;
      }

      while (!v18);
    }
  }

  Context = mlir::Type::getContext(v32);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v13, v14, 0, Context);
  v21 = mlir::ShapedType::getShape(v32);
  v23 = v22;
  v24 = mlir::ShapedType::getElementType(v32);
  v4 = mlir::MemRefType::get(v21, v23, v24, StridedLinearLayoutMap, 0);
  if (ElementType != v39)
  {
    free(ElementType);
  }

  if (v33 != v36)
  {
    free(v33);
  }

  return v4;
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *result;
      if (v6 < *result)
      {
        *result = v6;
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a4 > 128)
    {
      if (a4 <= a6)
      {
        if (a4 - 32769 >= 0xFFFFFFFFFFFF83FFLL)
        {

          return std::__radix_sort_impl[abi:nn200100]<long long *,long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,0>(result);
        }

        else
        {
          v24 = a4 >> 1;
          v25 = a4 >> 1;
          v27 = result;
          std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(result, &result[v25], a3, a4 >> 1, a5);
          v31 = &a5[v25];
          result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(&v27[v25], a2, a3, a4 - v24, &a5[v25]);
          v32 = v27;
          v33 = &a5[v25];
          v34 = a5;
          v35 = &a5[a4];
          do
          {
            if (v33 == v35)
            {
              if (v34 == v31)
              {
                return result;
              }

              v51 = &a5[v24] - v34 - 8;
              if (v51 >= 0x38)
              {
                if ((v32 - v34) >= 0x20)
                {
                  v53 = v27 + 2;
                  v54 = (v51 >> 3) + 1;
                  v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                  v27 = (v27 + v55 * 8);
                  v52 = &v34[v55];
                  v56 = (v34 + 2);
                  v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v58 = *v56;
                    *(v53 - 1) = *(v56 - 1);
                    *v53 = v58;
                    v56 += 2;
                    v53 += 2;
                    v57 -= 4;
                  }

                  while (v57);
                  if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
                  {
                    return result;
                  }
                }

                else
                {
                  v52 = v34;
                }
              }

              else
              {
                v52 = v34;
              }

              do
              {
                v59 = *v52++;
                *v27++ = v59;
              }

              while (v52 != v31);
              return result;
            }

            v36 = v33;
            v37 = *v33;
            v38 = v37 < *v34;
            if (v37 >= *v34)
            {
              v39 = *v34;
            }

            else
            {
              v39 = v37;
            }

            v34 += v37 >= *v34;
            v40 = v38;
            v33 = &v36[v40];
            *v27++ = v39;
            ++v32;
          }

          while (v34 != v31);
          if (v33 != v35)
          {
            v41 = v35 - v36 - v40 * 8 - 8;
            if (v41 <= 0x57)
            {
              goto LABEL_51;
            }

            if ((v32 - v36 - v40 * 8) < 0x20)
            {
              goto LABEL_51;
            }

            v42 = 0;
            v43 = (v41 >> 3) + 1;
            v44 = v43 & 0x3FFFFFFFFFFFFFFCLL;
            v45 = &v27[v44];
            v33 = (v33 + v44 * 8);
            v46 = &v36[v40 + 2];
            v47 = v43 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v48 = &v27[v42];
              v49 = *v46;
              *v48 = *(v46 - 1);
              *(v48 + 1) = v49;
              v46 += 4;
              v42 += 4;
              v47 -= 4;
            }

            while (v47);
            v27 = v45;
            if (v43 != (v43 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_51:
              do
              {
                v50 = *v33++;
                *v27++ = v50;
              }

              while (v33 != v35);
            }
          }
        }
      }

      else
      {
        v15 = a4 >> 1;
        v16 = &result[a4 >> 1];
        v17 = result;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(result, v16, a3, a4 >> 1, a5, a6);
        v23 = a4 - v15;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v16, a2, a3, v23, a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v17, v16, a2, a3, v15, v23, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 1;
      if (result + 1 != a2)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v13 = *v10;
          v12 = v10[1];
          v10 = v8;
          if (v12 < v13)
          {
            v14 = v9;
            do
            {
              *(result + v14 + 8) = v13;
              if (!v14)
              {
                v11 = result;
                goto LABEL_11;
              }

              v13 = *(result + v14 - 8);
              v14 -= 8;
            }

            while (v12 < v13);
            v11 = (result + v14 + 8);
LABEL_11:
            *v11 = v12;
          }

          v8 = v10 + 1;
          v9 += 8;
        }

        while (v10 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = v7 < *result;
      if (v7 >= *result)
      {
        v6 = *result;
      }

      *a5++ = v6;
      if (!v8)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v18 = a4 >> 1;
      v19 = a4 >> 1;
      v20 = &result[v19];
      v21 = result;
      v25 = a5;
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(result, &result[v19], a3, v18, a5, v18);
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v20, a2, a3, a4 - v18, &v25[v19], a4 - v18);
      v26 = v25;
      v27 = v21;
      v28 = v20;
      do
      {
        if (v28 == a2)
        {
          if (v27 == v20)
          {
            return result;
          }

          v44 = &v21[v18] - v27 - 8;
          if (v44 >= 0x38)
          {
            if ((v26 - v27) >= 0x20)
            {
              v46 = v25 + 2;
              v47 = (v44 >> 3) + 1;
              v48 = v47 & 0x3FFFFFFFFFFFFFFCLL;
              v25 = (v25 + v48 * 8);
              v45 = &v27[v48];
              v49 = (v27 + 2);
              v50 = v47 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v51 = *v49;
                *(v46 - 1) = *(v49 - 1);
                *v46 = v51;
                v49 += 2;
                v46 += 2;
                v50 -= 4;
              }

              while (v50);
              if (v47 == (v47 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v45 = v27;
            }
          }

          else
          {
            v45 = v27;
          }

          do
          {
            v52 = *v45++;
            *v25++ = v52;
          }

          while (v45 != v20);
          return result;
        }

        v29 = v28;
        v30 = *v28;
        v31 = v30 >= *v27;
        if (v30 >= *v27)
        {
          v32 = *v27;
        }

        else
        {
          v32 = v30;
        }

        v33 = v30 < *v27;
        v28 = &v29[v33];
        v27 += v31;
        *v25++ = v32;
        ++v26;
      }

      while (v27 != v20);
      if (v28 != a2)
      {
        v34 = a2 - &v29[v33] - 8;
        if (v34 < 0x58)
        {
          goto LABEL_48;
        }

        if (v26 - v29 - v33 * 8 < 0x20)
        {
          goto LABEL_48;
        }

        v35 = 0;
        v36 = (v34 >> 3) + 1;
        v37 = v36 & 0x3FFFFFFFFFFFFFFCLL;
        v38 = &v25[v37];
        v28 = (v28 + v37 * 8);
        v39 = &v29[v33 + 2];
        v40 = v36 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = &v25[v35];
          v42 = *v39;
          *v41 = *(v39 - 1);
          *(v41 + 1) = v42;
          v39 += 4;
          v35 += 4;
          v40 -= 4;
        }

        while (v40);
        v25 = v38;
        if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_48:
          do
          {
            v43 = *v28++;
            *v25++ = v43;
          }

          while (v28 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result++;
      *a5 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a5;
        v12 = a5;
        do
        {
          v14 = *v12++;
          v13 = v14;
          if (*result >= v14)
          {
            *v12 = *result;
          }

          else
          {
            v11[1] = v13;
            v15 = a5;
            if (v11 != a5)
            {
              v16 = v10;
              while (1)
              {
                v15 = (a5 + v16);
                v17 = *(a5 + v16 - 8);
                if (*result >= v17)
                {
                  break;
                }

                *v15 = v17;
                v16 -= 8;
                if (!v16)
                {
                  v15 = a5;
                  break;
                }
              }
            }

            *v15 = *result;
          }

          ++result;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    while (a6 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = *a2;
      while (1)
      {
        v12 = *result;
        if (v11 < *result)
        {
          break;
        }

        result += 8;
        if (!--a5)
        {
          return result;
        }
      }

      if (a5 >= a6)
      {
        if (a5 == 1)
        {
          *result = v11;
          *a2 = v12;
          return result;
        }

        v21 = a5 / 2;
        v16 = &result[8 * (a5 / 2)];
        if (a3 == a2)
        {
          v14 = a2;
        }

        else
        {
          v22 = (a3 - a2) >> 3;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = v24 + 8;
            v22 += ~(v22 >> 1);
            if (v26 < *v16)
            {
              v14 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = (v14 - a2) >> 3;
      }

      else
      {
        v13 = a6 / 2;
        v14 = &a2[8 * (a6 / 2)];
        if (result == a2)
        {
          v16 = result;
        }

        else
        {
          v15 = (a2 - result) >> 3;
          v16 = result;
          do
          {
            v17 = v15 >> 1;
            v18 = &v16[8 * (v15 >> 1)];
            v20 = *v18;
            v19 = v18 + 8;
            v15 += ~(v15 >> 1);
            if (*v14 < v20)
            {
              v15 = v17;
            }

            else
            {
              v16 = v19;
            }
          }

          while (v15);
        }

        v21 = (v16 - result) >> 3;
      }

      v27 = v14;
      if (v16 != a2)
      {
        v27 = v16;
        if (a2 != v14)
        {
          v28 = v16 + 8;
          if (v16 + 8 == a2)
          {
            v100 = *v16;
            v102 = a4;
            v35 = v14 - a2;
            v104 = result;
            v36 = a3;
            v37 = a6;
            v38 = a7;
            v39 = a5;
            memmove(v16, v16 + 8, v14 - a2);
            a5 = v39;
            a7 = v38;
            a6 = v37;
            a4 = v102;
            result = v104;
            a3 = v36;
            v27 = &v16[v35];
            *v27 = v100;
          }

          else
          {
            v29 = a2 + 8;
            if (a2 + 8 == v14)
            {
              v40 = *(v14 - 1);
              v27 = v16 + 8;
              if (v14 - 8 != v16)
              {
                v103 = a4;
                v105 = result;
                v41 = a3;
                v42 = a6;
                v101 = a7;
                v43 = a5;
                memmove(v16 + 8, v16, v14 - 8 - v16);
                a5 = v43;
                a6 = v42;
                a7 = v101;
                a4 = v103;
                result = v105;
                a3 = v41;
              }

              *v16 = v40;
            }

            else
            {
              v30 = (a2 - v16);
              v31 = (a2 - v16) >> 3;
              v32 = (v14 - a2) >> 3;
              if (v31 == v32)
              {
                do
                {
                  v33 = *(v28 - 1);
                  *(v28 - 1) = *(v29 - 1);
                  *(v29 - 1) = v33;
                  if (v28 == a2)
                  {
                    break;
                  }

                  v28 += 8;
                  v34 = v29 == v14;
                  v29 += 8;
                }

                while (!v34);
                v27 = a2;
              }

              else
              {
                v44 = (a2 - v16) >> 3;
                do
                {
                  v45 = v44;
                  v44 = v32;
                  v32 = v45 % v32;
                }

                while (v32);
                v46 = &v16[8 * v44];
                do
                {
                  v48 = *(v46 - 1);
                  v46 -= 8;
                  v47 = v48;
                  v49 = &v30[v46];
                  v50 = v46;
                  do
                  {
                    v51 = v50;
                    v50 = v49;
                    *v51 = *v49;
                    v52 = (v14 - v49) >> 3;
                    v53 = __OFSUB__(v31, v52);
                    v54 = v31 - v52;
                    v76 = (v54 < 0) ^ v53;
                    v49 = &v16[8 * v54];
                    if (v76)
                    {
                      v49 = &v30[v50];
                    }
                  }

                  while (v49 != v46);
                  *v50 = v47;
                }

                while (v46 != v16);
                v27 = &v16[v14 - a2];
              }
            }
          }
        }
      }

      v55 = a5 - v21;
      v56 = a6 - v13;
      if (v21 + v13 >= v55 + v56)
      {
        v62 = result;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v27, v14, a3, a4, v55, v56, a7, a8);
        result = v62;
        a6 = v13;
        a5 = v21;
        a3 = v27;
        a2 = v16;
        if (!v13)
        {
          return result;
        }
      }

      else
      {
        v57 = v16;
        v58 = a3;
        v59 = v55;
        v60 = v21;
        v61 = v56;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(result, v57, v27, a4, v60, v13, a7, a8);
        a5 = v59;
        a6 = v61;
        a3 = v58;
        result = v27;
        a2 = v14;
        if (!v61)
        {
          return result;
        }
      }
    }

    if (a5 <= a6)
    {
      if (result != a2)
      {
        v77 = a2 - result - 8;
        v78 = a7;
        v79 = result;
        if (v77 < 0x18)
        {
          goto LABEL_102;
        }

        v78 = a7;
        v79 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_102;
        }

        v80 = (v77 >> 3) + 1;
        v81 = 8 * (v80 & 0x3FFFFFFFFFFFFFFCLL);
        v78 = &a7[v81];
        v79 = &result[v81];
        v82 = result + 16;
        v83 = a7 + 16;
        v84 = v80 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v85 = *v82;
          *(v83 - 1) = *(v82 - 1);
          *v83 = v85;
          v82 += 32;
          v83 += 32;
          v84 -= 4;
        }

        while (v84);
        if (v80 != (v80 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_102:
          do
          {
            v86 = *v79;
            v79 += 8;
            *v78 = v86;
            v78 += 8;
          }

          while (v79 != a2);
        }

        while (a2 != a3)
        {
          v87 = *a2;
          v88 = *a2 < *a7;
          if (*a2 >= *a7)
          {
            v87 = *a7;
          }

          a7 += 8 * (*a2 >= *a7);
          a2 += 8 * v88;
          *result = v87;
          result += 8;
          if (a7 == v78)
          {
            return result;
          }
        }

        return memmove(result, a7, v78 - a7);
      }
    }

    else if (a2 != a3)
    {
      v63 = a3 - a2 - 8;
      v64 = a7;
      v65 = a2;
      if (v63 < 0x18)
      {
        goto LABEL_103;
      }

      v64 = a7;
      v65 = a2;
      if ((a7 - a2) <= 0x1F)
      {
        goto LABEL_103;
      }

      v66 = (v63 >> 3) + 1;
      v67 = 8 * (v66 & 0x3FFFFFFFFFFFFFFCLL);
      v64 = &a7[v67];
      v65 = &a2[v67];
      v68 = a2 + 16;
      v69 = a7 + 16;
      v70 = v66 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v71 = *v68;
        *(v69 - 1) = *(v68 - 1);
        *v69 = v71;
        v68 += 32;
        v69 += 32;
        v70 -= 4;
      }

      while (v70);
      if (v66 != (v66 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_103:
        do
        {
          v72 = *v65;
          v65 += 8;
          *v64 = v72;
          v64 += 8;
        }

        while (v65 != a3);
      }

      v73 = a3;
      while (a2 != result)
      {
        v74 = *(v64 - 1);
        v75 = *(a2 - 1);
        v76 = v74 < v75;
        if (v74 <= v75)
        {
          v74 = *(a2 - 1);
        }

        if (v76)
        {
          a2 -= 8;
        }

        else
        {
          v64 -= 8;
        }

        *(a3 - 1) = v74;
        a3 -= 8;
        v73 -= 8;
        if (v64 == a7)
        {
          return result;
        }
      }

      v89 = v64 - a7;
      if (v64 != a7)
      {
        v90 = v89 - 8;
        if ((v89 - 8) < 0x48 || (v64 - v73) < 0x20)
        {
          v91 = v64;
LABEL_90:
          v92 = a3 - 8;
          do
          {
            v93 = *(v91 - 1);
            v91 -= 8;
            *v92 = v93;
            v92 -= 8;
          }

          while (v91 != a7);
          return result;
        }

        v94 = a3 - 16;
        v95 = (v90 >> 3) + 1;
        v96 = 8 * (v95 & 0x3FFFFFFFFFFFFFFCLL);
        v91 = &v64[-v96];
        a3 -= v96;
        v97 = v64 - 16;
        v98 = v95 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v99 = *v97;
          *(v94 - 1) = *(v97 - 1);
          *v94 = v99;
          v94 -= 32;
          v97 -= 32;
          v98 -= 4;
        }

        while (v98);
        if (v95 != (v95 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_90;
        }
      }
    }
  }

  return result;
}

uint64_t std::__radix_sort_impl[abi:nn200100]<long long *,long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,0>(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v27[2048] = *MEMORY[0x277D85DE8];
  bzero(v27, 0x4000uLL);
  memset(v26, 0, sizeof(v26));
  result = std::__collect_impl[abi:nn200100]<long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,long (*)[256],long *,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>(v8, v7, v3, v27, v26);
  if ((result & 1) == 0)
  {
    v10 = 0;
    v11 = v7 - v8;
    do
    {
      v13 = *&v26[v10];
      v14 = *(v26 + ((v10 * 2) | 1));
      if (v13 == v11 && v14 == v11)
      {
        goto LABEL_6;
      }

      if (v13 == v11)
      {
        if (v7 != v8)
        {
          result = memmove(v5, v8, v7 - v8);
          if (v14 != v11)
          {
            goto LABEL_21;
          }

LABEL_5:
          result = memmove(v8, v5, v7 - v8);
          goto LABEL_6;
        }
      }

      else if (v7 != v8)
      {
        v16 = v7;
        v17 = &v27[128 * v10];
        do
        {
          v18 = *--v16;
          v19 = ((v18 ^ 0x8000000000000000) >> (8 * (v10 * 2)));
          v20 = v17[v19] - 1;
          v17[v19] = v20;
          *&v5[8 * v20] = v18;
        }

        while (v16 != v8);
      }

      if (v14 == v11)
      {
        if (v7 != v8)
        {
          goto LABEL_5;
        }
      }

      else if (v7 != v8)
      {
LABEL_21:
        v21 = &v27[256 * ((v10 * 2) | 1)];
        v22 = v7 - v8;
        do
        {
          v23 = *&v5[v22 - 8];
          v24 = ((v23 ^ 0x8000000000000000) >> ((4 * v10) | 8));
          v25 = v21[v24] - 1;
          v21[v24] = v25;
          v8[v25] = v23;
          v22 -= 8;
        }

        while (v22);
      }

LABEL_6:
      ;
    }

    while (v10++ < 3);
  }

  return result;
}

uint64_t std::__collect_impl[abi:nn200100]<long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,long (*)[256],long *,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (result == a2)
  {
    result = 1;
  }

  else
  {
    v5 = result;
    v6 = 0;
    LOBYTE(result) = 1;
    do
    {
      v7 = *v5++;
      ++a4[v7];
      ++a4[BYTE1(v7) + 256];
      ++a4[BYTE2(v7) + 512];
      ++a4[BYTE3(v7) + 768];
      ++a4[BYTE4(v7) + 1024];
      ++a4[BYTE5(v7) + 1280];
      ++a4[BYTE6(v7) + 1536];
      result = result & ((v7 ^ 0x8000000000000000) >= v6);
      ++*(a4 + (((v7 ^ 0x8000000000000000) >> 53) & 0x7F8) + 14336);
      v6 = v7 ^ 0x8000000000000000;
    }

    while (v5 != a2);
  }

  v8 = *a4;
  v9 = 1;
  v10 = *a4;
  do
  {
    v11 = a4[v9];
    if (v10 <= v11)
    {
      v10 = a4[v9];
    }

    v8 += v11;
    a4[v9++] = v8;
  }

  while (v9 != 256);
  v12 = 0;
  *a5 = v10;
  v13 = a4[256];
  v14 = a4 + 257;
  v15 = v13;
  do
  {
    v16 = v14[v12];
    if (v15 <= v16)
    {
      v15 = v14[v12];
    }

    v13 += v16;
    v14[v12++] = v13;
  }

  while (v12 != 255);
  v17 = 0;
  a5[1] = v15;
  v18 = a4[512];
  v19 = a4 + 513;
  v20 = v18;
  do
  {
    v21 = v19[v17];
    if (v20 <= v21)
    {
      v20 = v19[v17];
    }

    v18 += v21;
    v19[v17++] = v18;
  }

  while (v17 != 255);
  v22 = 0;
  a5[2] = v20;
  v23 = a4[768];
  v24 = a4 + 769;
  v25 = v23;
  do
  {
    v26 = v24[v22];
    if (v25 <= v26)
    {
      v25 = v24[v22];
    }

    v23 += v26;
    v24[v22++] = v23;
  }

  while (v22 != 255);
  v27 = 0;
  a5[3] = v25;
  v28 = a4[1024];
  v29 = a4 + 1025;
  v30 = v28;
  do
  {
    v31 = v29[v27];
    if (v30 <= v31)
    {
      v30 = v29[v27];
    }

    v28 += v31;
    v29[v27++] = v28;
  }

  while (v27 != 255);
  v32 = 0;
  a5[4] = v30;
  v33 = a4[1280];
  v34 = a4 + 1281;
  v35 = v33;
  do
  {
    v36 = v34[v32];
    if (v35 <= v36)
    {
      v35 = v34[v32];
    }

    v33 += v36;
    v34[v32++] = v33;
  }

  while (v32 != 255);
  v37 = 0;
  a5[5] = v35;
  v38 = a4[1536];
  v39 = a4 + 1537;
  v40 = v38;
  do
  {
    v41 = v39[v37];
    if (v40 <= v41)
    {
      v40 = v39[v37];
    }

    v38 += v41;
    v39[v37++] = v38;
  }

  while (v37 != 255);
  v42 = 0;
  a5[6] = v40;
  v43 = a4[1792];
  v44 = a4 + 1793;
  v45 = v43;
  do
  {
    v46 = v44[v42];
    if (v45 <= v46)
    {
      v45 = v44[v42];
    }

    v43 += v46;
    v44[v42++] = v43;
  }

  while (v42 != 255);
  a5[7] = v45;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{
  *(v1 - 136) = a1;

  return mlir::AffineExpr::getKind((v1 - 136));
}

void OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return mlir::AffineExpr::operator+(va, a1);
}

void sub_25682E690()
{

  std::mutex::~mutex(v0);
}

uint64_t mlir::ANEPropertiesRegistry::getProperties(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v4 + 16 * v6);
    if (v7 == a2)
    {
      goto LABEL_8;
    }

    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v6 + v8++;
      v6 = v9 & (v5 - 1);
      v7 = *(v4 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = *(a1 + 80);
LABEL_8:
  v10 = v4 + 16 * v6 + 8;
  if (v6 == v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::mutex::unlock(a1);
  return v11;
}

uint64_t _GLOBAL__sub_I_ANEProperties_cpp()
{
  qword_27F876E38 = 0;
  mlir::ANEPropertiesRegistry::instance = 850045863;
  unk_27F876DF0 = 0u;
  unk_27F876E00 = 0u;
  unk_27F876E10 = 0u;
  unk_27F876E20 = 0u;
  unk_27F876E2C = 0u;
  return __cxa_atexit(mlir::ANEPropertiesRegistry::~ANEPropertiesRegistry, &mlir::ANEPropertiesRegistry::instance, &dword_25639F000);
}

BOOL mlir::hasUniqueValues(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v37 = a1;
  v40 = v42;
  v41 = 0x400000000;
  v44 = 0;
  v45 = 0;
  v43 = &v44;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v35, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v37);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v33, a1, NumElements);
  while (v36 != v34)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v35, &v38);
    if (v45)
    {
      goto LABEL_17;
    }

    v14 = v40;
    v15 = v41;
    v16 = (v40 + 16 * v41);
    if (!v41)
    {
      goto LABEL_26;
    }

    v17 = v38;
    v18 = 16 * v41;
    v19 = v40;
    while (*(v19 + 2) > 0x40u)
    {
      if (llvm::APInt::equalSlowCase(v19, &v38))
      {
        goto LABEL_24;
      }

LABEL_21:
      v19 = (v19 + 16);
      v18 -= 16;
      if (!v18)
      {
        goto LABEL_25;
      }
    }

    if (*v19 != v17)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (v18)
    {
      goto LABEL_28;
    }

LABEL_25:
    if (v15 >= 4)
    {
      do
      {
        v21 = v44;
        v22 = &v44;
        if (v43 == &v44)
        {
          goto LABEL_45;
        }

        v23 = v44;
        v24 = &v44;
        if (v44)
        {
          do
          {
            v22 = v23;
            v23 = v23[1];
          }

          while (v23);
        }

        else
        {
          do
          {
            v22 = v24[2];
            v25 = *v22 == v24;
            v24 = v22;
          }

          while (v25);
        }

        if ((llvm::APInt::compare((v22 + 4), v14) & 0x80000000) != 0)
        {
LABEL_45:
          if (v21)
          {
            v27 = v22 + 1;
          }

          else
          {
            v27 = &v44;
          }

          if (!*v27)
          {
LABEL_49:
            operator new();
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_49;
          }

          while (1)
          {
            while (1)
            {
              v26 = v21;
              if ((llvm::APInt::compare(v14, (v21 + 4)) & 0x80000000) == 0)
              {
                break;
              }

              v21 = *v21;
              if (!*v26)
              {
                goto LABEL_49;
              }
            }

            if ((llvm::APInt::compare((v21 + 4), v14) & 0x80000000) == 0)
            {
              break;
            }

            v21 = v21[1];
            if (!v21)
            {
              goto LABEL_49;
            }
          }
        }

        v14 = (v14 + 16);
      }

      while (v14 != v16);
      if (v41)
      {
        v28 = (v40 + 16 * v41 - 8);
        v29 = -16 * v41;
        v30 = v28;
        do
        {
          v31 = *v30;
          v30 -= 4;
          if (v31 >= 0x41)
          {
            v32 = *(v28 - 1);
            if (v32)
            {
              MEMORY[0x259C63150](v32, 0x1000C8000313F17);
            }
          }

          v28 = v30;
          v29 += 16;
        }

        while (v29);
      }

      LODWORD(v41) = 0;
LABEL_17:
      std::set<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::insert[abi:nn200100](&v43, &v38);
      goto LABEL_28;
    }

LABEL_26:
    if (v15 >= HIDWORD(v41))
    {
      if (v14 > &v38 || v16 <= &v38)
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v40, v15 + 1);
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v40, v15 + 1);
    }

    v20 = v14 + 16 * v41;
    *(v20 + 2) = v39;
    *v20 = v38;
    v39 = 0;
    LODWORD(v41) = v41 + 1;
LABEL_28:
    if (v39 >= 0x41 && v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

    ++v36;
  }

  v3 = mlir::DenseElementsAttr::getNumElements(&v37);
  v4 = v41;
  v5 = v45;
  std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(v44);
  v6 = v40;
  if (v41)
  {
    v7 = (v40 + 16 * v41 - 8);
    v8 = -16 * v41;
    v9 = v7;
    do
    {
      v10 = *v9;
      v9 -= 4;
      if (v10 >= 0x41)
      {
        v11 = *(v7 - 1);
        if (v11)
        {
          MEMORY[0x259C63150](v11, 0x1000C8000313F17);
        }
      }

      v7 = v9;
      v8 += 16;
    }

    while (v8);
    v6 = v40;
    if (v40 != v42)
    {
      goto LABEL_9;
    }
  }

  else if (v40 != v42)
  {
LABEL_9:
    free(v6);
  }

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v4;
  }

  return v3 == v12;
}

void std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(*a1);
    std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(a1[1]);
    if (*(a1 + 10) >= 0x41u)
    {
      v2 = a1[4];
      if (v2)
      {
        MEMORY[0x259C63150](v2, 0x1000C8000313F17);
      }
    }

    operator delete(a1);
  }
}

uint64_t std::set<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::insert[abi:nn200100](uint64_t **a1, llvm::APInt *this)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      if ((llvm::APInt::compare(this, (v3 + 4)) & 0x80000000) == 0)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = llvm::APInt::compare((v4 + 4), this);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

llvm::APFloatBase *std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100](llvm::APFloatBase *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = llvm::APFloatBase::PPCDoubleDouble(result);
      v4 = 32 * v2 + v1 - 24;
      v5 = -32 * v2;
      do
      {
        if (v3 == *v4)
        {
          std::unique_ptr<llvm::APFloat []>::reset[abi:nn200100]((v4 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v4);
        }

        v4 -= 32;
        v5 += 32;
      }

      while (v5);
    }

    JUMPOUT(0x259C63150);
  }

  return result;
}

void *_GLOBAL__sub_I_Conversion_cpp(llvm::APFloatBase *a1)
{
  result = llvm::APFloatBase::IEEEhalf(a1);
  return result;
}

uint64_t mlir::mps::getBNNSDataType(void *a1)
{
  v1 = 65552;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  if (mlir::Type::isF32(&ElementTypeOrSelf))
  {
    return 65568;
  }

  if (mlir::Type::isF16(&ElementTypeOrSelf))
  {
    return v1;
  }

  if (mlir::Type::isBF16(&ElementTypeOrSelf))
  {
    return 98320;
  }

  v1 = 262152;
  if (mlir::Type::isInteger(&ElementTypeOrSelf, 64))
  {
    return 262208;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 32))
  {
    return 262176;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 16))
  {
    return 262160;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 8))
  {
    return v1;
  }

  if (mlir::Type::isInteger(&ElementTypeOrSelf, 1))
  {
    return 1048584;
  }

  result = mlir::Type::dump(&ElementTypeOrSelf);
  __break(1u);
  return result;
}

void *mlir::mps::CPUNDArray::CPUNDArray(void *a1, uint64_t a2, uint64_t a3)
{
  v35[0] = a2;
  v35[1] = a3;
  *a1 = mlir::ElementsAttr::getType(v35);
  a1[1] = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 57) = 1;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  *(a1 + 88) = 0;
  a1[3] = mlir::RankedTensorType::getShape(a1);
  a1[4] = v4;
  mlir::RankedTensorType::getShape(a1);
  a1[2] = v5;
  ElementsAttrRawData = mlir::getElementsAttrRawData(v35[0]);
  NumElements = v7;
  isInteger = 0;
  if (mlir::ElementsAttr::isSplat(v35))
  {
    if (*(*mlir::RankedTensorType::getElementType(a1) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v36 = mlir::RankedTensorType::getElementType(a1), mlir::Type::getIntOrFloatBitWidth(&v36) <= 7))
    {
      ElementType = mlir::RankedTensorType::getElementType(a1);
      isInteger = 1;
      if (!mlir::Type::isInteger(&ElementType, 1))
      {
        v33 = mlir::RankedTensorType::getElementType(a1);
        if (!mlir::Type::isInteger(&v33, 2))
        {
          v32 = mlir::RankedTensorType::getElementType(a1);
          if (!mlir::Type::isInteger(&v32, 3))
          {
            v31 = mlir::RankedTensorType::getElementType(a1);
            if (!mlir::Type::isInteger(&v31, 4))
            {
              v30 = mlir::RankedTensorType::getElementType(a1);
              isInteger = mlir::Type::isInteger(&v30, 6);
            }
          }
        }
      }
    }

    else
    {
      isInteger = 1;
    }
  }

  *(a1 + 58) = isInteger;
  mlir::mps::CPUNDArray::calculateStrides(a1);
  if (*(a1 + 58) == 1)
  {
    v36 = mlir::RankedTensorType::getElementType(a1);
    if (mlir::Type::isInteger(&v36, 1))
    {
      ElementsAttrElementBitWidth = 8;
    }

    else
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*a1);
    }

    if (ElementsAttrElementBitWidth)
    {
      v26 = ((ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3) + 1;
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 56) = 1;
    v14 = malloc_type_malloc(v26, 0x100004077774924uLL);
    Shape = mlir::RankedTensorType::getShape(a1);
    NumElements = mlir::ShapedType::getNumElements(Shape, v28);
    v36 = mlir::RankedTensorType::getElementType(a1);
    if (mlir::Type::isInteger(&v36, 1))
    {
      *v14 = *ElementsAttrRawData != 0;
    }

    else
    {
      memcpy(v14, ElementsAttrRawData, v26);
    }
  }

  else
  {
    v36 = mlir::RankedTensorType::getElementType(a1);
    if (mlir::Type::isInteger(&v36, 1))
    {
      *(a1 + 56) = 1;
      v11 = mlir::RankedTensorType::getShape(a1);
      v13 = mlir::ShapedType::getNumElements(v11, v12);
      v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
      v15 = mlir::RankedTensorType::getShape(a1);
      v17 = mlir::ShapedType::getNumElements(v15, v16);
      if (NumElements)
      {
        v18 = v14 + 3;
        v19 = v17;
        do
        {
          if (v19)
          {
            if (v19 >= 8)
            {
              v20 = 8;
            }

            else
            {
              v20 = v19;
            }

            if (v20 <= 1)
            {
              v21 = 1;
            }

            else
            {
              v21 = v20;
            }

            v22 = *ElementsAttrRawData;
            v23 = vdupq_n_s64(v21 - 1);
            v24 = vmovn_s64(vcgeq_u64(v23, xmmword_2573686A0));
            if (vuzp1_s8(vuzp1_s16(v24, 0), 0).u8[0])
            {
              *(v18 - 3) = v22 & 1;
            }

            if (vuzp1_s8(vuzp1_s16(v24, 0), 0).i8[1])
            {
              *(v18 - 2) = (v22 & 2) != 0;
            }

            if (vuzp1_s8(vuzp1_s16(0, vmovn_s64(vcgeq_u64(v23, xmmword_2573695C0))), 0).i8[2])
            {
              *(v18 - 1) = (v22 & 4) != 0;
              *v18 = (v22 & 8) != 0;
            }

            v25 = vmovn_s64(vcgeq_u64(v23, xmmword_2573695D0));
            if (vuzp1_s8(0, vuzp1_s16(v25, 0)).i32[1])
            {
              v18[1] = (v22 & 0x10) != 0;
            }

            if (vuzp1_s8(0, vuzp1_s16(v25, 0)).i8[5])
            {
              v18[2] = (v22 & 0x20) != 0;
            }

            if (vuzp1_s8(0, vuzp1_s16(0, vmovn_s64(vcgeq_u64(v23, xmmword_2573695E0)))).i8[6])
            {
              v18[3] = (v22 & 0x40) != 0;
              v18[4] = v22 >> 7;
            }
          }

          v19 -= 8;
          ++ElementsAttrRawData;
          v18 += 8;
          --NumElements;
        }

        while (NumElements);
      }

      NumElements = v17;
    }

    else
    {
      *(a1 + 56) = 0;
      v14 = ElementsAttrRawData;
    }
  }

  a1[5] = v14;
  a1[6] = NumElements;
  return a1;
}

int8x16_t mlir::mps::CPUNDArray::calculateStrides(mlir::mps::CPUNDArray *this)
{
  ElementType = mlir::RankedTensorType::getElementType(this);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    ElementsAttrElementBitWidth = 8;
  }

  else
  {
    ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*this);
  }

  v5 = (ElementsAttrElementBitWidth & 7) == 0 && ElementsAttrElementBitWidth > 7;
  *(this + 88) = v5;
  if (v5)
  {
    v6 = ElementsAttrElementBitWidth >> 3;
    v7 = *(this + 8);
    v8 = *(this + 2);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = (*(this + 9) - v7) >> 3;
    if (v8 <= v9)
    {
      if (v8 < v9)
      {
        *(this + 9) = v7 + 8 * v8;
      }
    }

    else
    {
      std::vector<long long>::__append(this + 64, v8 - v9);
      v7 = *(this + 8);
    }

    v10 = *(this + 58);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }

    v7->i64[0] = v11;
    v12 = *(this + 2);
    if (v12 >= 2)
    {
      v13 = 0;
      v14 = -1;
      do
      {
        if (v10)
        {
          v15 = 0;
        }

        else
        {
          v15 = *(*(this + 3) + 8 * (v12 + v14)) * v7->i64[v13];
        }

        v7->i64[v13 + 1] = v15;
        v12 = *(this + 2);
        --v14;
        v16 = v13 + 2;
        ++v13;
      }

      while (v16 < v12);
    }

    v17 = *(this + 9);
    v18 = (v17 - 8);
    if (v7 != v17 && v18 > v7)
    {
      v20 = v17 - 1;
      v21 = &v7->u64[1];
      if (&v17[-1] <= &v7->u64[1])
      {
        v22 = &v7->u64[1];
      }

      else
      {
        v22 = v17 - 1;
      }

      v23 = &v22[-1].i8[8];
      if (v23 == v7)
      {
        v24 = v7;
      }

      else
      {
        v24 = &v7->i8[1];
      }

      v25 = v23 == v7;
      v26 = (v23 - v24) >> 4;
      if (!v25)
      {
        ++v26;
      }

      if (v26 < 0x13)
      {
        goto LABEL_50;
      }

      v27 = v20 <= v21 ? &v7->u64[1] : &v17[-1];
      v28 = (v27 - 8);
      v29 = v28 == v7 ? v7 : &v7->i8[1];
      v25 = v28 == v7;
      v30 = (v28 - v29) >> 4;
      if (!v25)
      {
        ++v30;
      }

      if (v7 >= v17 || v17 - 8 * v30 - 8 >= v21 + 8 * v30)
      {
        v35 = v26 + 1;
        v36 = (v26 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v18 = (v18 - 8 * v36);
        v31 = &v7->i64[v36];
        v37 = v7 + 1;
        v38 = v36;
        do
        {
          v39 = v37[-1];
          v40 = *v37;
          v41 = vextq_s8(v20[-1], v20[-1], 8uLL);
          v37[-1] = vextq_s8(*v20, *v20, 8uLL);
          *v37 = v41;
          result = vextq_s8(v39, v39, 8uLL);
          v20[-1] = vextq_s8(v40, v40, 8uLL);
          *v20 = result;
          v37 += 2;
          v20 -= 2;
          v38 -= 4;
        }

        while (v38);
        if (v35 == v36)
        {
          return result;
        }
      }

      else
      {
LABEL_50:
        v31 = v7;
      }

      v32 = (v31 + 1);
      do
      {
        v33 = *(v32 - 8);
        *(v32 - 8) = v18->i64[0];
        v18->i64[0] = v33;
        v18 = (v18 - 8);
        v34 = v32 >= v18;
        v32 += 8;
      }

      while (!v34);
    }
  }

  return result;
}

uint64_t *mlir::mps::CPUNDArray::CPUNDArray(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v18[0] = a2;
  v18[1] = a3;
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 55) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  *(a1 + 88) = 0;
  Shape = mlir::ShapedType::getShape(v18);
  v8 = v7;
  ElementType = mlir::ShapedType::getElementType(v18);
  *a1 = mlir::RankedTensorType::get(Shape, v8, ElementType, 0);
  a1[3] = mlir::RankedTensorType::getShape(a1);
  a1[4] = v10;
  mlir::RankedTensorType::getShape(a1);
  a1[2] = v11;
  v12 = mlir::RankedTensorType::getShape(a1);
  if (mlir::ShapedType::getNumElements(v12, v13) == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4;
  }

  *(a1 + 58) = v14;
  mlir::mps::CPUNDArray::calculateStrides(a1);
  *(a1 + 56) = 1;
  if (*(a1 + 58) == 1)
  {
    v19 = mlir::RankedTensorType::getElementType(a1);
    if (mlir::Type::isInteger(&v19, 1))
    {
      ElementsAttrElementBitWidth = 8;
    }

    else
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*a1);
    }

    if (ElementsAttrElementBitWidth)
    {
      BufferByteSize = ((ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3) + 1;
    }

    else
    {
      BufferByteSize = 0;
    }
  }

  else
  {
    BufferByteSize = mlir::mps::CPUNDArray::getBufferByteSize(a1);
  }

  a1[5] = malloc_type_malloc(BufferByteSize, 0x100004077774924uLL);
  a1[6] = BufferByteSize;
  return a1;
}

unint64_t mlir::mps::CPUNDArray::getBufferByteSize(mlir::mps::CPUNDArray *this)
{
  ElementType = mlir::RankedTensorType::getElementType(this);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    Shape = mlir::RankedTensorType::getShape(this);
    return mlir::ShapedType::getNumElements(Shape, v3);
  }

  else
  {
    v5 = *this;
    if (v5)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    return mlir::mps::getElementsAttrStorageSize(v5, v6);
  }
}

void *std::vector<long long>::vector[abi:nn200100](void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

uint64_t *mlir::mps::CPUNDArray::tryMakeAliasedArray@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 **a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a1;
  v14 = a2;
  ElementType = mlir::ShapedType::getElementType(&v13);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    Shape = mlir::ShapedType::getShape(&v13);
    v8 = v7;
    v9 = mlir::ShapedType::getElementType(&v13);
    v10 = mlir::RankedTensorType::get(Shape, v8, v9, 0);
    mlir::tryCreateMutableElementsAttr(v10, a3);
    if (*a3)
    {
      return mlir::mps::CPUNDArray::CPUNDArray(a4, *a3, a3[1]);
    }
  }

  return mlir::mps::CPUNDArray::CPUNDArray(a4, v13, v14, 0);
}

void mlir::mps::CPUNDArray::~CPUNDArray(mlir::mps::CPUNDArray *this)
{
  if (*(this + 56) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }
}

uint64_t mlir::mps::CPUNDArray::getNumElements(mlir::mps::CPUNDArray *this)
{
  Shape = mlir::RankedTensorType::getShape(this);

  return mlir::ShapedType::getNumElements(Shape, v2);
}

void *mlir::mps::CPUNDArray::getElementsAttr(mlir::mps::CPUNDArray *this, int a2, int a3)
{
  if (*(this + 58))
  {
    NumElements = 1;
  }

  else
  {
    Shape = mlir::RankedTensorType::getShape(this);
    NumElements = mlir::ShapedType::getNumElements(Shape, v8);
  }

  ElementType = mlir::RankedTensorType::getElementType(this);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    v9 = *(this + 5);
    v10 = *this;
    if (!a2)
    {
      return mlir::createElementsAttr<BOOL>(v10, *(this + 5), NumElements);
    }

    if (v10)
    {
      v11 = *this;
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      v10 = v11;
    }

    else
    {
      v12 = 0;
    }

    result = mlir::DenseElementsAttr::get(v10, v12, v9, NumElements);
    if (result)
    {
      v23 = result;
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*result + 8);
      return v23;
    }

    return result;
  }

  if (!a3)
  {
    goto LABEL_63;
  }

  v13 = NumElements - 2;
  if (NumElements < 2)
  {
    goto LABEL_63;
  }

  v14 = *(this + 5);
  ElementType = mlir::RankedTensorType::getElementType(this);
  if (mlir::Type::isUnsignedInteger(&ElementType, 8))
  {
    v15 = *v14;
    if (v15 == v14[1])
    {
      v16 = v14 + 2;
      v17 = -1;
      while (v13)
      {
        v18 = *v16++;
        --v17;
        --v13;
        if (v15 != v18)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_64;
    }

LABEL_101:
    v38 = *(this + 5);
    v39 = *(this + 6);
    if (!a2)
    {
      return mlir::createRawElementsAttr(*this, v38, v39);
    }

    goto LABEL_71;
  }

  if (mlir::Type::isInteger(&ElementType, 8))
  {
    v20 = *v14;
    if (v20 != v14[1])
    {
      goto LABEL_101;
    }

    v21 = v14 + 2;
    v17 = -1;
    while (v13)
    {
      v22 = *v21++;
      --v17;
      --v13;
      if (v20 != v22)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 16))
  {
    v24 = *v14;
    if (v24 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v25 = (v14 + 4);
    v17 = -1;
    while (v13)
    {
      v26 = *v25++;
      --v17;
      --v13;
      if (v24 != v26)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isInteger(&ElementType, 16))
  {
    v27 = *v14;
    if (v27 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v28 = (v14 + 4);
    v17 = -1;
    while (v13)
    {
      v29 = *v28++;
      --v17;
      --v13;
      if (v27 != v29)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 32))
  {
    if (*v14 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v30 = (v14 + 8);
    v17 = -1;
    while (v13)
    {
      v31 = *v30++;
      --v17;
      --v13;
      if (*v14 != v31)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isInteger(&ElementType, 32))
  {
    if (*v14 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v32 = (v14 + 8);
    v17 = -1;
    while (v13)
    {
      v33 = *v32++;
      --v17;
      --v13;
      if (*v14 != v33)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    if (*v14 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v34 = (v14 + 16);
    v17 = -1;
    while (v13)
    {
      v35 = *v34++;
      --v17;
      --v13;
      if (*v14 != v35)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isInteger(&ElementType, 64))
  {
    if (*v14 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v36 = (v14 + 16);
    v17 = -1;
    do
    {
      if (!v13)
      {
        goto LABEL_64;
      }

      v37 = *v36++;
      --v17;
      --v13;
    }

    while (*v14 == v37);
LABEL_62:
    if (-v17 < NumElements)
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  if (mlir::Type::isF32(&ElementType))
  {
    if (*v14 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v44 = (v14 + 8);
    v45 = -1;
    while (v13)
    {
      v46 = *v44++;
      --v45;
      --v13;
      if (*v14 != v46)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isF16(&ElementType))
  {
    if (*v14 != *(v14 + 1))
    {
      goto LABEL_101;
    }

    v47 = (v14 + 4);
    v45 = -1;
    while (v13)
    {
      v48 = *v47++;
      --v45;
      --v13;
      if (*v14 != v48)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_64;
  }

  if (mlir::Type::isBF16(&ElementType))
  {
    LODWORD(v49) = *v14 << 16;
    if (v49 != COERCE_FLOAT(*(v14 + 1) << 16))
    {
      goto LABEL_101;
    }

    v50 = (v14 + 4);
    v45 = -1;
    while (v13)
    {
      v51 = *v50++;
      --v45;
      --v13;
      if (v49 != COERCE_FLOAT(v51 << 16))
      {
        goto LABEL_96;
      }
    }

    goto LABEL_64;
  }

  v52 = ElementType;
  v53 = *(*ElementType + 136);
  if (v53 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v52 = 0;
  }

  v65 = v52;
  if (v53 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_101;
  }

  v64 = mlir::ComplexType::getElementType(&v65);
  if (mlir::Type::isF32(&v64))
  {
    if (*v14 != *(v14 + 2))
    {
      goto LABEL_101;
    }

    v54 = *(v14 + 1);
    if (v54 != *(v14 + 3))
    {
      goto LABEL_101;
    }

    v55 = (v14 + 20);
    v45 = -1;
    while (v13)
    {
      v56 = *(v55 - 1);
      v57 = *v55;
      --v45;
      v55 += 2;
      --v13;
      if (*v14 != v56 || v54 != v57)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_64;
  }

  v64 = mlir::ComplexType::getElementType(&v65);
  if (!mlir::Type::isF32(&v64))
  {
    goto LABEL_101;
  }

  if (*v14 != *(v14 + 2))
  {
    goto LABEL_101;
  }

  v59 = *(v14 + 1);
  if (v59 != *(v14 + 3))
  {
    goto LABEL_101;
  }

  v60 = (v14 + 10);
  v45 = -1;
  do
  {
    if (!v13)
    {
      goto LABEL_64;
    }

    v61 = *(v60 - 1);
    v62 = *v60;
    --v45;
    v60 += 2;
    --v13;
  }

  while (*v14 == v61 && v59 == v62);
LABEL_96:
  if (-v45 >= NumElements)
  {
LABEL_64:
    ElementType = mlir::RankedTensorType::getElementType(this);
    if (!mlir::Type::isInteger(&ElementType, 1) && mlir::mps::getElementsAttrElementBitWidth(*this) <= 7)
    {
      operator new();
    }

    operator new();
  }

LABEL_63:
  v38 = *(this + 5);
  if (NumElements == 1)
  {
    goto LABEL_64;
  }

  v39 = *(this + 6);
  if (!a2)
  {
    return mlir::createRawElementsAttr(*this, v38, v39);
  }

LABEL_71:
  v40 = mlir::RankedTensorType::getElementType(this);
  if (!mlir::mps::isCompatibleWithDenseStorage(v40))
  {
    return 0;
  }

  v41 = *this;
  if (v41)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  result = mlir::DenseElementsAttr::getFromRawBuffer(v41, v42, v38, v39);
  if (result)
  {
    v43 = result;
    mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*result + 8);
    return v43;
  }

  return result;
}

BOOL mlir::mps::CPUNDArray::isFloatType(mlir::mps::CPUNDArray *this)
{
  v1 = *(*mlir::RankedTensorType::getElementType(this) + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

float mlir::mps::CPUNDArray::getSplatFloatValue(mlir::mps::CPUNDArray *this)
{
  ElementType = mlir::RankedTensorType::getElementType(this);
  v3 = *(*ElementType + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    ElementType = 0;
  }

  v26 = ElementType;
  if (mlir::Type::isF32(&v26))
  {
    return **(this + 5);
  }

  if (mlir::Type::isF16(&v26))
  {
    _H0 = **(this + 5);
    __asm { FCVT            S0, H0 }
  }

  else
  {
    isBF16 = mlir::Type::isBF16(&v26);
    result = 0.0;
    if (isBF16)
    {
      LODWORD(result) = **(this + 5) << 16;
    }
  }

  return result;
}

uint64_t mlir::mps::CPUNDArray::getSplatIntegerValue(mlir::mps::CPUNDArray *this)
{
  ElementType = mlir::RankedTensorType::getElementType(this);
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = ElementType;
  }

  else
  {
    v3 = 0;
  }

  v8 = v3;
  Width = mlir::IntegerType::getWidth(&v8);
  result = 0;
  if (Width <= 7)
  {
    if ((Width - 3) >= 2 && Width != 1 && Width != 6)
    {
      return result;
    }

    return **(this + 5);
  }

  if (Width > 31)
  {
    if (Width == 32)
    {
      return **(this + 5);
    }

    else if (Width == 64)
    {
      return **(this + 5);
    }
  }

  else
  {
    if (Width == 8)
    {
      return **(this + 5);
    }

    if (Width == 16)
    {
      return **(this + 5);
    }
  }

  return result;
}

float16x4_t mlir::mps::CPUNDArray::getSplatComplexValue(mlir::mps::CPUNDArray *this)
{
  ElementType = mlir::RankedTensorType::getElementType(this);
  v4 = mlir::ComplexType::getElementType(&ElementType);
  if (mlir::Type::isF32(&v4))
  {
    return **(this + 5);
  }

  else
  {
    isF16 = mlir::Type::isF16(&v4);
    result = 0;
    if (isF16)
    {
      result.i32[0] = **(this + 5);
      return vcvtq_f32_f16(result).u64[0];
    }
  }

  return result;
}

void *mlir::mps::CPUNDArray::getBNNSDescriptor@<X0>(mlir::mps::CPUNDArray *this@<X0>, uint64_t a2@<X8>)
{
  result = mlir::RankedTensorType::getElementType(this);
  v6 = *(this + 3);
  v5 = *(this + 4);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  if (v5 <= 8)
  {
    *(a2 + 4) = ((v5 & 0x7FFF) << 16) | 0x8000;
    v7 = result;
    *(a2 + 144) = mlir::mps::getBNNSDataType(result);
    result = mlir::mps::getDataSize(v7);
    if (v5)
    {
      v8 = v6 + 8 * v5;
      *(a2 + 8) = *(v8 - 8);
      if (v5 != 1)
      {
        *(a2 + 16) = *(v8 - 16);
        if (v5 != 2)
        {
          *(a2 + 24) = *(v8 - 24);
          if (v5 != 3)
          {
            *(a2 + 32) = *(v8 - 32);
            if (v5 != 4)
            {
              *(a2 + 40) = *(v8 - 40);
              if (v5 != 5)
              {
                *(a2 + 48) = *(v8 - 48);
                if (v5 != 6)
                {
                  *(a2 + 56) = *(v8 - 56);
                  if (v5 != 7)
                  {
                    *(a2 + 64) = *(v8 - 64);
                  }
                }
              }
            }
          }
        }
      }

      *(a2 + 72) = 1;
      v9 = v5 - 1;
      if (v5 != 1)
      {
        v10 = (a2 + 80);
        v11 = 1;
        do
        {
          v11 *= *(v10 - 9);
          *v10++ = v11;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      *(a2 + 72) = 1;
    }

    *(a2 + 136) = 0;
    *(a2 + 164) = 1065353216;
    if (*(this + 4) <= 3uLL)
    {
      *(a2 + 4) = v5 << 16;
    }
  }

  return result;
}

void mlir::mps::CPUNDArrayKernel::cpuTilingEngine(void (**a1)(uint64_t *, uint64_t **, void **, void **, uint64_t, uint64_t, uint64_t), uint64_t *a2, uint64_t **a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4[1];
  if (v8 != *a4)
  {
    if (((v8 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  v9 = a5[1];
  if (v9 != *a5)
  {
    if (((v9 - *a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_20:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a1[1] + a6 >= a7)
  {
    v14 = *a1;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v14(a2, a3, &v28, &v25, a6, a7, a8);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }
  }

  else
  {
    v10 = **a3;
    v11 = *(v10 + 16);
    v21 = 1;
    v12 = (v11 & (a6 >> 63)) + a6;
    if (v12 < 0 || !v11 || (v21 = *(*(v10 + 24) + 8 * v12), v21 >= 1))
    {
      v13 = 0;
      v20 = a7 - a6;
      do
      {
        if (v20 > a1[1])
        {
          memset(v24, 0, sizeof(v24));
          memset(v23, 0, sizeof(v23));
          mlir::mps::CPUNDArrayKernel::cpuTilingEngine(a1, a2, a3, v24, v23, a6 + 1, a7, a8);
        }

        ++v13;
      }

      while (v13 != v21);
    }
  }
}

void mlir::mps::CPUNDArrayArithmeticUnaryKernel::arithmeticUnaryTileKernel(uint64_t ***a1, uint64_t ***a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 16);
  if (v7 <= 10)
  {
    if (v7 <= 7)
    {
      if (v7 == 6)
      {
        v13 = *(a7 + 24);
        v82 = 0;
        v83 = 0;
        v81 = 0;
        v14 = a3[1];
        if (v14 == *a3)
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v15 = a4[1] - *a4;
          if (!v15)
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(a1, a2, &v81, &v78, a5, a6, v13);
            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            v10 = v81;
            if (v81)
            {
              v82 = v81;
              goto LABEL_110;
            }

            return;
          }

          if ((v15 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else if (((v14 - *a3) & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v26 = a3[1];
        if (v26 == *a3)
        {
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v27 = a4[1] - *a4;
          if (!v27)
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(a1, a2, &v75, &v72, a5, a6, 0);
            if (v72)
            {
              v73 = v72;
              operator delete(v72);
            }

            v10 = v75;
            if (v75)
            {
              v76 = v75;
              goto LABEL_110;
            }

            return;
          }

          if ((v27 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else if (((v26 - *a3) & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (v7 == 8)
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v18 = a3[1];
      if (v18 == *a3)
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v19 = a4[1] - *a4;
        if (!v19)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)8>(a1, a2, &v69, &v66, a5, a6, 0);
          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          v10 = v69;
          if (v69)
          {
            v70 = v69;
            goto LABEL_110;
          }

          return;
        }

        if ((v19 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v18 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      if (v7 == 9)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v8 = a3[1];
        if (v8 != *a3)
        {
          if (((v8 - *a3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_112;
        }

        __p = 0;
        v61 = 0;
        v62 = 0;
        v9 = a4[1] - *a4;
        if (v9)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_112;
        }

        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)9>(a1, a2, &v63, &__p, a5, a6, 0);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        v10 = v63;
        if (v63)
        {
          v64 = v63;
LABEL_110:
          operator delete(v10);
          return;
        }

        return;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      v22 = a3[1];
      if (v22 == *a3)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v23 = a4[1] - *a4;
        if (!v23)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)10>(a1, a2, &v57, &v54, a5, a6, 0.0);
          if (v54)
          {
            v55 = v54;
            operator delete(v54);
          }

          v10 = v57;
          if (v57)
          {
            v58 = v57;
            goto LABEL_110;
          }

          return;
        }

        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v22 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_112:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v7 <= 12)
  {
    if (v7 == 11)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v16 = a3[1];
      if (v16 == *a3)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v17 = a4[1] - *a4;
        if (!v17)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)11>(a1, a2, &v51, &v48, a5, a6, 0);
          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          v10 = v51;
          if (v51)
          {
            v52 = v51;
            goto LABEL_110;
          }

          return;
        }

        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v16 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v28 = a3[1];
      if (v28 == *a3)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)12>(a1, a2, &v45, &v42, a5, a6, 0.0);
          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          v10 = v45;
          if (v45)
          {
            v46 = v45;
            goto LABEL_110;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v28 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_112;
  }

  if (v7 == 13)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v20 = a3[1];
    if (v20 == *a3)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v21 = a4[1] - *a4;
      if (!v21)
      {
        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)13>(a1, a2, &v39, &v36, a5, a6, 0);
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        v10 = v39;
        if (v39)
        {
          v40 = v39;
          goto LABEL_110;
        }

        return;
      }

      if ((v21 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if (((v20 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  if (v7 != 14)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v24 = a3[1];
    if (v24 == *a3)
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v25 = a4[1] - *a4;
      if (!v25)
      {
        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(a1, a2, &v87, &v84, a5, a6, 0.0);
        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        v10 = v87;
        if (v87)
        {
          v88 = v87;
          goto LABEL_110;
        }

        return;
      }

      if ((v25 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if (((v24 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v11 = a3[1];
  if (v11 != *a3)
  {
    if (((v11 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v12 = a4[1] - *a4;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)14>(a1, a2, &v33, &v30, a5, a6, 0.0);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v10 = v33;
  if (v33)
  {
    v34 = v33;
    goto LABEL_110;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  v128 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v128);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  v128 = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v128 = mlir::ComplexType::getElementType(&v126);
    v129 = mlir::ComplexType::getElementType(&v125);
  }

  if (mlir::Type::isF32(&v128) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v128) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&v128) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v98, &v95, a7);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v128) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v128) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v128, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)17>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v128, 32))
      {
        if (mlir::Type::isInteger(&v128, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)17>(a1, a2, v46, v45, a7);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v128, 8) && !mlir::Type::isInteger(&v128, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)17>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)17>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v110, &v107, *&a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  v128 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v128);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  v128 = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v128 = mlir::ComplexType::getElementType(&v126);
    v129 = mlir::ComplexType::getElementType(&v125);
  }

  if (mlir::Type::isF32(&v128) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v116, &v113, a7);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v122, &v119, a7);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v128) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&v128) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v98, &v95, a7);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v92, &v89, a7);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v128) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v86, &v83, a7);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v80, &v77, a7);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v128) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v74, &v71, a7);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v68, &v65, a7);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v62, &v59, a7);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v128, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)6>(a1, a2, &v56, &v53, a7);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v128, 32))
      {
        if (mlir::Type::isInteger(&v128, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)6>(a1, a2, v46, v45, a7);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v128, 8) && !mlir::Type::isInteger(&v128, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)6>(a1, a2, v44, v43, a7);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)6>(a1, a2, &v50, &v47, a7);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v104, &__p, a7);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  v128 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v128);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  v128 = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v128 = mlir::ComplexType::getElementType(&v126);
    v129 = mlir::ComplexType::getElementType(&v125);
  }

  if (mlir::Type::isF32(&v128) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v128) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&v128) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v128) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v128) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v128, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v128, 32))
      {
        if (mlir::Type::isInteger(&v128, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v128, 8) && !mlir::Type::isInteger(&v128, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)8>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  v128 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v128);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  v128 = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v128 = mlir::ComplexType::getElementType(&v126);
    v129 = mlir::ComplexType::getElementType(&v125);
  }

  if (mlir::Type::isF32(&v128) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v128) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&v128) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)8>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v128) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)8>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v128) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)8>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)8>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v128, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v128, 32))
      {
        if (mlir::Type::isInteger(&v128, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v128, 8) && !mlir::Type::isInteger(&v128, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)9>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  v128 = ***a1;
  ElementType = mlir::TensorType::getElementType(&v128);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  v128 = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v128 = mlir::ComplexType::getElementType(&v126);
    v129 = mlir::ComplexType::getElementType(&v125);
  }

  if (mlir::Type::isF32(&v128) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&v128) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&v128) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)9>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&v128) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)9>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&v128) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)9>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&v128) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)9>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&v128, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)9>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&v128, 32))
      {
        if (mlir::Type::isInteger(&v128, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)9>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&v128, 8) && !mlir::Type::isInteger(&v128, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)9>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)9>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}