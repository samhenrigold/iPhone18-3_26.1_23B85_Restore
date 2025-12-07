char *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(uint64_t a1, uint64_t *a2)
{
  v27 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v27);
  v6 = *(a1 + 8);
  v7 = 8 * v6;
  v8 = *a2;
  *a2 = 0;
  *&v5[8 * v6] = v8;
  v9 = *a1;
  v10 = *a1;
  if (!v6)
  {
    goto LABEL_18;
  }

  v11 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v11 < 0xB)
  {
    v12 = v5;
    do
    {
LABEL_12:
      v21 = *v10;
      *v10 = 0;
      v10 += 8;
      *v12 = v21;
      v12 += 8;
    }

    while (v10 != &v9[v7]);
    goto LABEL_13;
  }

  v13 = v9 >= &v5[v7] || v5 >= &v9[v7];
  v12 = v5;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v11 + 1;
  v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
  v12 = &v5[v15];
  v10 = &v9[v15];
  v16 = (v9 + 16);
  v17 = v5 + 16;
  v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = *(v16 - 1);
    v20 = *v16;
    *(v16 - 1) = 0uLL;
    *v16 = 0uLL;
    *(v17 - 1) = v19;
    *v17 = v20;
    v16 += 2;
    v17 += 2;
    v18 -= 4;
  }

  while (v18);
  if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  v22 = v9 - 8;
  do
  {
    v23 = *&v22[v7];
    *&v22[v7] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v7 -= 8;
  }

  while (v7);
  v10 = *a1;
LABEL_18:
  v24 = v27;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v5;
  v25 = *(a1 + 8) + 1;
  *(a1 + 8) = v25;
  *(a1 + 12) = v24;
  return &v5[8 * v25 - 8];
}

mlir::bytecode::detail::IRNumberingState *mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2, const mlir::BytecodeWriterConfig *a3)
{
  v181[16] = *MEMORY[0x1E69E9840];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 24) = 0u;
  v5 = this + 24;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 18) = this + 160;
  *(this + 16) = 0u;
  *(this + 62) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 34) = this + 288;
  *(this + 35) = 0x400000000;
  *(this + 40) = this + 336;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 0;
  *(this + 46) = this + 384;
  *(this + 47) = 0x400000000;
  *(this + 52) = this + 432;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 57) = 0;
  *(this + 58) = this + 480;
  *(this + 59) = 0x400000000;
  *(this + 64) = this + 528;
  *(this + 69) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 70) = this + 576;
  *(this + 71) = 0x400000000;
  *(this + 76) = this + 624;
  *(this + 81) = 0;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 82) = this + 672;
  *(this + 83) = 0x400000000;
  *(this + 88) = this + 720;
  *(this + 93) = 0;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 94) = this + 768;
  *(this + 95) = 0x400000000;
  *(this + 100) = this + 816;
  *(this + 218) = 0;
  *(this + 856) = 0u;
  *(this + 224) = 0;
  *(this + 55) = 0u;
  *(this + 230) = 0;
  *(this + 904) = 0u;
  *(this + 232) = 0;
  *(this + 836) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 117) = a3;
  LODWORD(v176) = 0;
  v179 = v181;
  v180 = 0x200000000;
  *&v173 = &v179;
  *(&v173 + 1) = this;
  v174 = &v176;
  mlir::detail::walk(a2, llvm::function_ref<void ()(mlir::Operation *,mlir::WalkStage const&)>::callback_fn<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::$_0>, &v173);
  if (v179 != v181)
  {
    free(v179);
  }

  mlir::bytecode::detail::IRNumberingState::number(this, a2);
  v179 = v181;
  v180 = 0x800000000;
  v172 = a2;
  v6 = *(a2 + 11);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_67;
  }

  v8 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  *&v173 = v172;
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v5, &v173);
  if (*(*v9 + 5) & 1) != 0 && (*(*v9 + 4))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(this + 232);
  }

  LODWORD(v176) = v10;
  v11 = 24 * v7;
  do
  {
    while (1)
    {
      *&v173 = v8;
      v12 = v180;
      if (v180 >= HIDWORD(v180))
      {
        break;
      }

      v13 = v179 + 16 * v180;
      *v13 = v8;
      *(v13 + 2) = v176;
      LODWORD(v180) = v12 + 1;
      v8 += 24;
      v11 -= 24;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,unsigned int>,true>::growAndEmplaceBack<mlir::Region *,unsigned int &>(&v179, &v173, &v176);
    v8 += 24;
    v11 -= 24;
  }

  while (v11);
LABEL_13:
  v14 = v180;
  if (!v180)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v15 = v179 + 16 * v14;
    v17 = *(v15 - 2);
    v16 = *(v15 - 1);
    LODWORD(v180) = v14 - 1;
    *(this + 232) = v16;
    mlir::bytecode::detail::IRNumberingState::number(this, v17);
    mlir::Region::OpIterator::OpIterator(&v176, v17, 0);
    mlir::Region::OpIterator::OpIterator(v175, v17, 1);
    v18 = v177;
    v174 = v177;
    v173 = v176;
    v19 = v175[2];
    while (v18 != v19)
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v21 = *(v20 + 44);
      if ((v21 & 0x7FFFFF) == 0)
      {
        goto LABEL_17;
      }

      v22 = *(v20 + 40);
      v23 = *(this + 10);
      if (!v23)
      {
        goto LABEL_49;
      }

      v24 = *(this + 3);
      v25 = v23 - 1;
      v26 = (v23 - 1) & ((v20 >> 4) ^ (v20 >> 9));
      v27 = (v24 + 16 * v26);
      v28 = *v27;
      if (v20 != *v27)
      {
        v29 = 0;
        v30 = 1;
        while (v28 != -4096)
        {
          if (v29)
          {
            v31 = 0;
          }

          else
          {
            v31 = v28 == -8192;
          }

          if (v31)
          {
            v29 = v27;
          }

          v32 = v26 + v30++;
          v26 = v32 & v25;
          v27 = (v24 + 16 * (v32 & v25));
          v28 = *v27;
          if (v20 == *v27)
          {
            goto LABEL_36;
          }
        }

        if (v29)
        {
          v27 = v29;
        }

        v41 = *(this + 8);
        if (4 * v41 + 4 < 3 * v23)
        {
          if (v23 + ~v41 - *(this + 9) > v23 >> 3)
          {
            *(this + 8) = v41 + 1;
            if (*v27 == -4096)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          v42 = v20;
          llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v5, v23);
          v43 = *(this + 10);
          if (v43)
          {
            goto LABEL_50;
          }
        }

        else
        {
LABEL_49:
          v42 = v20;
          llvm::DenseMap<mlir::Operation *,unsigned long long,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned long long>>::grow(v5, 2 * v23);
          v43 = *(this + 10);
          if (v43)
          {
LABEL_50:
            v44 = *(this + 3);
            v20 = v42;
            v45 = v43 - 1;
            v46 = (v43 - 1) & ((v42 >> 4) ^ (v42 >> 9));
            v27 = (v44 + 16 * v46);
            v47 = *v27;
            if (v42 != *v27)
            {
              v48 = 0;
              v49 = 1;
              while (v47 != -4096)
              {
                if (v48)
                {
                  v50 = 0;
                }

                else
                {
                  v50 = v47 == -8192;
                }

                if (v50)
                {
                  v48 = v27;
                }

                v51 = v46 + v49++;
                v46 = v51 & v45;
                v27 = (v44 + 16 * (v51 & v45));
                v47 = *v27;
                if (v42 == *v27)
                {
                  goto LABEL_62;
                }
              }

              if (v48)
              {
                v27 = v48;
              }
            }

LABEL_62:
            ++*(this + 8);
            if (*v27 == -4096)
            {
LABEL_35:
              *v27 = v20;
              v27[1] = 0;
              goto LABEL_36;
            }

LABEL_34:
            --*(this + 9);
            goto LABEL_35;
          }
        }

        v27 = 0;
        v20 = v42;
        goto LABEL_62;
      }

LABEL_36:
      v33 = v27[1];
      if (*(v33 + 5) == 1 && (*(v33 + 4) & 1) != 0)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(this + 232);
      }

      v35 = v20 + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 32 * v22 + 64;
      v36 = v180;
      v37 = 24 * (v21 & 0x7FFFFF);
      v38 = v35;
      do
      {
        while (v36 < HIDWORD(v180))
        {
          v39 = v179 + 16 * v36;
          *v39 = v38;
          *(v39 + 2) = v34;
          LODWORD(v180) = ++v36;
          v38 += 24;
          v35 += 24;
          v37 -= 24;
          if (!v37)
          {
            goto LABEL_17;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(&v179, v181, v36 + 1, 16);
        v40 = (v179 + 16 * v180);
        *v40 = v35;
        v40[1] = v34;
        v36 = v180 + 1;
        LODWORD(v180) = v180 + 1;
        v38 += 24;
        v35 += 24;
        v37 -= 24;
      }

      while (v37);
LABEL_17:
      mlir::Region::OpIterator::operator++(&v176);
      v18 = v177;
    }

    v14 = v180;
    if (v180)
    {
      continue;
    }

    break;
  }

LABEL_67:
  v52 = *(this + 38);
  if (v52)
  {
    v53 = *(this + 18);
    v54 = 24 * v52 - 24;
    if (v54 <= 0x17)
    {
      LODWORD(v55) = 0;
      v56 = *(this + 18);
      goto LABEL_73;
    }

    v57 = 0;
    v58 = v54 / 0x18 + 1;
    v55 = v58 & 0x1FFFFFFFFFFFFFFELL;
    v56 = v53 + 24 * (v58 & 0x1FFFFFFFFFFFFFFELL);
    v59 = (v53 + 40);
    do
    {
      v60 = *(v59 - 3);
      v61 = *v59;
      v59 += 6;
      *(v60 + 16) = v57;
      *(v61 + 16) = v57 + 1;
      v57 += 2;
    }

    while (v55 != v57);
    if (v58 != v55)
    {
LABEL_73:
      v62 = v53 + 24 * v52;
      do
      {
        *(*(v56 + 16) + 16) = v55;
        LODWORD(v55) = v55 + 1;
        v56 += 24;
      }

      while (v56 != v62);
    }
  }

  v63 = *(this + 20);
  v64 = *(this + 21);
  if ((v64 - v63) >> 3 < 129)
  {
    v68 = 0;
LABEL_81:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v63, v64, (v64 - v63) >> 3, 0, v68);
    v70 = *(this + 23);
    v71 = *(this + 24);
    v72 = (v71 - v70) >> 3;
    if (v72 >= 129)
    {
      goto LABEL_82;
    }

LABEL_87:
    v76 = 0;
LABEL_88:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v70, v71, v72, 0, v76);
    v78 = *(this + 26);
    v79 = *(this + 27);
    v80 = (v79 - v78) >> 3;
    if (v80 >= 129)
    {
      goto LABEL_89;
    }

LABEL_94:
    v84 = 0;
LABEL_95:
    v86.n128_f64[0] = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v78, v79, v80, 0, v84);
    v88 = *(this + 20);
    v87 = *(this + 21);
    v89 = v87 - v88;
    v90 = v172;
    if (v87 == v88)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v65 = MEMORY[0x1E69E5398];
    v66 = (v64 - v63) >> 3;
    while (1)
    {
      v67 = operator new(8 * v66, v65);
      if (v67)
      {
        break;
      }

      v68 = v66 >> 1;
      v69 = v66 > 1;
      v66 >>= 1;
      if (!v69)
      {
        goto LABEL_81;
      }
    }

    v77 = v67;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v63, v64, (v64 - v63) >> 3, v67, v66);
    operator delete(v77);
    v70 = *(this + 23);
    v71 = *(this + 24);
    v72 = (v71 - v70) >> 3;
    if (v72 < 129)
    {
      goto LABEL_87;
    }

LABEL_82:
    v73 = MEMORY[0x1E69E5398];
    v74 = v72;
    while (1)
    {
      v75 = operator new(8 * v74, v73);
      if (v75)
      {
        break;
      }

      v76 = v74 >> 1;
      v69 = v74 > 1;
      v74 >>= 1;
      if (!v69)
      {
        goto LABEL_88;
      }
    }

    v85 = v75;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v70, v71, v72, v75, v74);
    operator delete(v85);
    v78 = *(this + 26);
    v79 = *(this + 27);
    v80 = (v79 - v78) >> 3;
    if (v80 < 129)
    {
      goto LABEL_94;
    }

LABEL_89:
    v81 = MEMORY[0x1E69E5398];
    v82 = v80;
    while (1)
    {
      v83 = operator new(8 * v82, v81);
      if (v83)
      {
        break;
      }

      v84 = v82 >> 1;
      v69 = v82 > 1;
      v82 >>= 1;
      if (!v69)
      {
        goto LABEL_95;
      }
    }

    v91 = v83;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v78, v79, v80, v83, v82);
    operator delete(v91);
    v88 = *(this + 20);
    v87 = *(this + 21);
    v89 = v87 - v88;
    v90 = v172;
    if (v87 == v88)
    {
      goto LABEL_118;
    }
  }

  v169 = v87;
  v92 = 0;
  v163 = v89;
  v93 = v89 >> 3;
  LODWORD(v176) = 0;
  v94 = MEMORY[0x1E69E5398];
  v95 = 1;
  v166 = v88;
  v96 = v88;
  while (2)
  {
    v92 = (1 << (7 * v95)) - v92;
    if (v93 >= v92)
    {
      v97 = v92;
    }

    else
    {
      v97 = v93;
    }

    v98 = &v96[8 * v97];
    *&v173 = &v178;
    *(&v173 + 1) = &v176;
    if (v97 >= 129)
    {
      v99 = v97;
      while (1)
      {
        v100 = operator new(8 * v99, v94);
        if (v100)
        {
          break;
        }

        v101 = v99 >> 1;
        v69 = v99 > 1;
        v99 >>= 1;
        if (!v69)
        {
          goto LABEL_108;
        }
      }

      v102 = v100;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v96, &v96[8 * v97], &v173, v97, v100, v99);
      operator delete(v102);
      LODWORD(v176) = *(*(*(v98 - 1) + 16) + 16);
      v93 -= v97;
      if (!v93)
      {
        break;
      }

      goto LABEL_111;
    }

    v101 = 0;
LABEL_108:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v96, &v96[8 * v97], &v173, v97, 0, v101);
    LODWORD(v176) = *(*(*(v98 - 1) + 16) + 16);
    v93 -= v97;
    if (v93)
    {
LABEL_111:
      ++v95;
      v96 += 8 * v97;
      if (v95 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v163 - 8) <= 7)
  {
    LODWORD(v103) = 0;
    v104 = v166;
    v105 = v169;
    v90 = v172;
    goto LABEL_117;
  }

  v106 = 0;
  v107 = ((v163 - 8) >> 3) + 1;
  v103 = v107 & 0x3FFFFFFFFFFFFFFELL;
  v105 = v169;
  v104 = &v166[8 * (v107 & 0x3FFFFFFFFFFFFFFELL)];
  v108 = (v166 + 8);
  v90 = v172;
  do
  {
    v109 = *v108;
    *(*(v108 - 1) + 8) = v106;
    *(v109 + 8) = v106 + 1;
    v106 += 2;
    v108 += 2;
  }

  while (v103 != v106);
  if (v107 != v103)
  {
    do
    {
LABEL_117:
      v110 = *v104++;
      *(v110 + 8) = v103;
      LODWORD(v103) = v103 + 1;
    }

    while (v104 != v105);
  }

LABEL_118:
  v112 = *(this + 23);
  v111 = *(this + 24);
  if (v111 == v112)
  {
    goto LABEL_139;
  }

  v170 = *(this + 24);
  v113 = 0;
  v164 = v111 - v112;
  v114 = (v111 - v112) >> 3;
  LODWORD(v176) = 0;
  v115 = MEMORY[0x1E69E5398];
  v116 = 1;
  v167 = v112;
  v117 = v112;
  while (2)
  {
    v113 = (1 << (7 * v116)) - v113;
    if (v114 >= v113)
    {
      v118 = v113;
    }

    else
    {
      v118 = v114;
    }

    v119 = &v117[8 * v118];
    *&v173 = &v178;
    *(&v173 + 1) = &v176;
    if (v118 >= 129)
    {
      v120 = v118;
      while (1)
      {
        v121 = operator new(8 * v120, v115);
        if (v121)
        {
          break;
        }

        v122 = v120 >> 1;
        v69 = v120 > 1;
        v120 >>= 1;
        if (!v69)
        {
          goto LABEL_129;
        }
      }

      v123 = v121;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v117, &v117[8 * v118], &v173, v118, v121, v120);
      operator delete(v123);
      LODWORD(v176) = *(**(v119 - 1) + 16);
      v114 -= v118;
      if (!v114)
      {
        break;
      }

      goto LABEL_132;
    }

    v122 = 0;
LABEL_129:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v117, &v117[8 * v118], &v173, v118, 0, v122);
    LODWORD(v176) = *(**(v119 - 1) + 16);
    v114 -= v118;
    if (v114)
    {
LABEL_132:
      ++v116;
      v117 += 8 * v118;
      if (v116 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v164 - 8) <= 7)
  {
    LODWORD(v124) = 0;
    v125 = v167;
    v126 = v170;
    v90 = v172;
    goto LABEL_138;
  }

  v127 = 0;
  v128 = ((v164 - 8) >> 3) + 1;
  v124 = v128 & 0x3FFFFFFFFFFFFFFELL;
  v126 = v170;
  v125 = &v167[8 * (v128 & 0x3FFFFFFFFFFFFFFELL)];
  v129 = (v167 + 8);
  v90 = v172;
  do
  {
    v130 = *v129;
    *(*(v129 - 1) + 16) = v127;
    *(v130 + 16) = v127 + 1;
    v127 += 2;
    v129 += 2;
  }

  while (v124 != v127);
  if (v128 != v124)
  {
    do
    {
LABEL_138:
      v131 = *v125++;
      *(v131 + 16) = v124;
      LODWORD(v124) = v124 + 1;
    }

    while (v125 != v126);
  }

LABEL_139:
  v133 = *(this + 26);
  v132 = *(this + 27);
  if (v132 == v133)
  {
    goto LABEL_160;
  }

  v171 = *(this + 27);
  v134 = 0;
  v165 = v132 - v133;
  v135 = (v132 - v133) >> 3;
  LODWORD(v176) = 0;
  v136 = MEMORY[0x1E69E5398];
  v137 = 1;
  v168 = v133;
  v138 = v133;
  while (2)
  {
    v134 = (1 << (7 * v137)) - v134;
    if (v135 >= v134)
    {
      v139 = v134;
    }

    else
    {
      v139 = v135;
    }

    v140 = &v138->n128_i8[8 * v139];
    *&v173 = &v178;
    *(&v173 + 1) = &v176;
    if (v139 >= 129)
    {
      v141 = v139;
      while (1)
      {
        v142 = operator new(8 * v141, v136);
        if (v142)
        {
          break;
        }

        v143 = v141 >> 1;
        v69 = v141 > 1;
        v141 >>= 1;
        if (!v69)
        {
          goto LABEL_150;
        }
      }

      v144 = v142;
      _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v138, (v138 + 8 * v139), &v173, v139, v142, v141);
      operator delete(v144);
      LODWORD(v176) = *(*(*(v140 - 1) + 16) + 16);
      v135 -= v139;
      if (!v135)
      {
        break;
      }

      goto LABEL_153;
    }

    v143 = 0;
LABEL_150:
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v138, (v138 + 8 * v139), &v173, v139, 0, v143);
    LODWORD(v176) = *(*(*(v140 - 1) + 16) + 16);
    v135 -= v139;
    if (v135)
    {
LABEL_153:
      ++v137;
      v138 = (v138 + 8 * v139);
      if (v137 == 9)
      {
        break;
      }

      continue;
    }

    break;
  }

  if ((v165 - 8) <= 7)
  {
    LODWORD(v145) = 0;
    v146 = v168;
    v147 = v171;
    v90 = v172;
    goto LABEL_159;
  }

  v148 = 0;
  v149 = ((v165 - 8) >> 3) + 1;
  v145 = v149 & 0x3FFFFFFFFFFFFFFELL;
  v147 = v171;
  v146 = (v168 + 8 * (v149 & 0x3FFFFFFFFFFFFFFELL));
  v150 = &v168->n128_u64[1];
  v90 = v172;
  do
  {
    v151 = *v150;
    *(*(v150 - 1) + 8) = v148;
    *(v151 + 8) = v148 + 1;
    v148 += 2;
    v150 += 2;
  }

  while (v145 != v148);
  if (v149 != v145)
  {
    do
    {
LABEL_159:
      v152 = v146->n128_u64[0];
      v146 = (v146 + 8);
      *(v152 + 8) = v145;
      LODWORD(v145) = v145 + 1;
    }

    while (v146 != v147);
  }

LABEL_160:
  LODWORD(v176) = 0;
  v153 = *(this + 38);
  if (v153)
  {
    v154 = *(this + 18);
    v155 = v154 + 24 * v153;
    do
    {
      v156 = *(v154 + 16);
      v157 = *(v156 + 32);
      if (v157)
      {
        *&v173 = &unk_1F5AF2508;
        *(&v173 + 1) = v156;
        v174 = &v176;
        (*(*v157 + 56))(v157, v90, v156 + 40, &v173, v86);
        v158 = *(v156 + 112);
        if (v158)
        {
          v159 = v176;
          v160 = 24 * v158;
          v161 = *(v156 + 104) + 16;
          do
          {
            if (*(*v161 + 28) == 1)
            {
              *(*v161 + 24) = v159++;
              LODWORD(v176) = v159;
            }

            v161 += 24;
            v160 -= 24;
          }

          while (v160);
        }

        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      }

      v154 += 24;
    }

    while (v154 != v155);
  }

  if (v179 != v181)
  {
    free(v179);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2)
{
  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 6));
  v4 = *(a2 + 9);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v11[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, i);
      v7 = *(this + 232);
      *(this + 232) = v7 + 1;
      LODWORD(AttrDictionary) = v7;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this + 107, v11, &AttrDictionary, v13);
      mlir::bytecode::detail::IRNumberingState::number(this, (*(v11[0] + 8) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) > 4)
  {
    AttrDictionary = *(a2 + 7);
    if (!mlir::AffineBinaryOpExpr::getLHS(&AttrDictionary))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  if (mlir::AffineBinaryOpExpr::getLHS(&AttrDictionary))
  {
LABEL_11:
    mlir::bytecode::detail::IRNumberingState::number(this, AttrDictionary);
  }

LABEL_12:
  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) >= 5 && HIBYTE(*(a2 + 11)))
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v10 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
      if (v10)
      {
        mlir::bytecode::detail::IRNumberingState::number(this, v10);
      }
    }

    else
    {
      InterfaceFor = mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v11[0] = a2;
      v11[1] = InterfaceFor;
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(this + 117));
      v13[0] = &unk_1F5AF2468;
      v13[1] = this;
      v13[2] = DialectVersionMap;
      mlir::FunctionOpInterface::setFunctionTypeAttr(v11, v13);
    }
  }

  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 3));
}

unsigned int *mlir::bytecode::detail::IRNumberingState::number(unsigned int *this, mlir::Region *a2)
{
  if (*a2 != a2)
  {
    v14[7] = v2;
    v14[8] = v3;
    v5 = this;
    v6 = this[232];
    v14[0] = 0;
    v7 = *(a2 + 1);
    v8 = v6;
    if (v7 != a2)
    {
      v9 = 0;
      do
      {
        if (v7)
        {
          v10 = (v7 - 8);
        }

        else
        {
          v10 = 0;
        }

        v12 = v9;
        v13 = v10;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned long>(v5 + 104, &v13, &v12, v11);
        mlir::bytecode::detail::IRNumberingState::number(v5, v10);
        ++v14[0];
        ++v9;
        v7 = *(v7 + 1);
      }

      while (v7 != a2);
      v8 = v5[232];
    }

    v12 = v8 - v6;
    v13 = a2;
    return llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::try_emplace<unsigned long &,unsigned long>(v5 + 113, &v13, v14, &v12, v11);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, mlir::Dialect ***a2)
{
  v62 = a2;
  v52 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(a1, &v52, &v52 + 1, &v60);
  if ((v61 & 1) == 0)
  {
    ++*(*(v60 + 8) + 12);
    return;
  }

  *(a1 + 336) += 24;
  v4 = *(a1 + 256);
  Slow = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = Slow + 3;
  if (v4)
  {
    v7 = v6 > *(a1 + 264);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 256, 24, 24, 3);
  }

  else
  {
    *(a1 + 256) = v6;
  }

  *Slow = a2 & 0xFFFFFFFFFFFFFFFBLL;
  Slow[1] = 0x100000000;
  Slow[2] = 0;
  *(v60 + 8) = Slow;
  v9 = *(a1 + 168);
  v8 = *(a1 + 176);
  if (v9 >= v8)
  {
    v11 = *(a1 + 160);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v17 = operator new(8 * v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = &v17[8 * v13];
    *v18 = Slow;
    v10 = v18 + 8;
    memcpy(v17, v11, v12);
    *(a1 + 160) = v17;
    *(a1 + 168) = v10;
    *(a1 + 176) = &v17[8 * v16];
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = Slow;
    v10 = v9 + 8;
  }

  *(a1 + 168) = v10;
  v19 = *a2;
  v20 = (*a2)[17];
  v21 = v20 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  if (v20 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v22 = a2;
  }

  else
  {
    v22 = 0;
  }

  *&v58 = v22;
  if (v21)
  {
    *&v63 = mlir::AffineMapAttr::getValue(&v58);
    *&v52 = mlir::OpaqueAttr::getAttrData(&v63);
    *(&v52 + 1) = v42;
    v43 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v52);
    v44 = *v43;
    if (*v43)
    {
LABEL_49:
      Slow[2] = v44;
      return;
    }

    *(a1 + 432) += 120;
    v45 = *(a1 + 352);
    if (v45 && (v44 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8, v44 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v44 + 120;
    }

    else
    {
      v50 = v43;
      v44 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v43 = v50;
    }

    v46 = *(a1 + 152) - 1;
    v47 = v52;
LABEL_48:
    *v44 = v47;
    *(v44 + 16) = v46;
    *(v44 + 24) = 0u;
    *(v44 + 40) = 0u;
    *(v44 + 56) = 0;
    *(v44 + 80) = 0;
    *(v44 + 64) = v44 + 80;
    *(v44 + 72) = 0;
    *(v44 + 88) = 0;
    *(v44 + 96) = 0;
    *(v44 + 104) = v44 + 120;
    *(v44 + 112) = 0;
    *v43 = v44;
    goto LABEL_49;
  }

  Slow[2] = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v19);
  v23 = *a2;
  {
  }

  v24 = v23 + 9;
  v25 = v23[12];
  if ((v25 & 2) == 0)
  {
    v24 = *v24;
  }

  if ((*(v25 & 0xFFFFFFFFFFFFFFF8))(v24, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
LABEL_37:
    Context = mlir::Attribute::getContext(&v62);
    mlir::OpPrintingFlags::OpPrintingFlags(&v52);
    mlir::AsmState::AsmState(&v58, Context, &v52, 0, 0);
    DWORD2(v52) = 0;
    v56 = 0;
    v57 = 1;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    *&v52 = &unk_1F5B3FC80;
    mlir::Attribute::print(&v62, &v52, &v58, 0);
    DialectResources = mlir::AsmState::getDialectResources(&v58);
    if (*(DialectResources + 8))
    {
      v36 = *(DialectResources + 16);
      if (v36)
      {
        v37 = 48 * v36;
        v38 = *DialectResources;
        while ((*v38 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v38 += 48;
          v37 -= 48;
          if (!v37)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        v38 = *DialectResources;
      }

      v48 = *DialectResources + 48 * v36;
      while (v38 != v48)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v38, *(v38 + 32), *(v38 + 40));
        do
        {
          v38 += 48;
        }

        while (v38 != v48 && (*v38 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_42:
    llvm::raw_null_ostream::~raw_null_ostream(&v52);
    mlir::AsmState::~AsmState(&v58, v39, v40, v41);
    return;
  }

  AttributeWriterCallbacks = mlir::BytecodeWriterConfig::getAttributeWriterCallbacks(*(a1 + 936));
  if (!v27)
  {
LABEL_35:
    v32 = *(Slow[2] + 24);
    if (v32)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v52 = &unk_1F5AF2468;
      *(&v52 + 1) = a1;
      v53 = DialectVersionMap;
      if ((*(*v32 + 32))(v32, v62, &v52))
      {
        return;
      }
    }

    goto LABEL_37;
  }

  v28 = AttributeWriterCallbacks;
  v29 = v62;
  v30 = 8 * v27;
  while (1)
  {
    v31 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v52 = &unk_1F5AF2468;
    *(&v52 + 1) = a1;
    v53 = v31;
    LOBYTE(v58) = 0;
    v59 = 0;
    if ((*(**v28 + 16))(*v28, v29, &v58, &v52))
    {
      break;
    }

    ++v28;
    v30 -= 8;
    if (!v30)
    {
      goto LABEL_35;
    }
  }

  if (v59 == 1)
  {
    v63 = v58;
    v43 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v63);
    v44 = *v43;
    if (*v43)
    {
      goto LABEL_49;
    }

    *(a1 + 432) += 120;
    v49 = *(a1 + 352);
    if (v49 && (v44 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8, v44 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v44 + 120;
    }

    else
    {
      v51 = v43;
      v44 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v43 = v51;
    }

    v46 = *(a1 + 152) - 1;
    v47 = v63;
    goto LABEL_48;
  }
}

{
  v61 = a2;
  v51 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((a1 + 72), &v51, &v51 + 1, &v59);
  if ((v60 & 1) == 0)
  {
    ++*(*(v59 + 8) + 12);
    return;
  }

  v4 = (a1 + 736);
  *(a1 + 816) += 24;
  v5 = *(a1 + 736);
  if (v5 && (Slow = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 3) <= *(a1 + 744)))
  {
    *v4 = Slow + 3;
  }

  else
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v4, 24, 24, 3);
  }

  *Slow = a2 | 4;
  Slow[1] = 0x100000000;
  Slow[2] = 0;
  *(v59 + 8) = Slow;
  v8 = *(a1 + 216);
  v7 = *(a1 + 224);
  if (v8 >= v7)
  {
    v10 = *(a1 + 208);
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v16 = operator new(8 * v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * v12];
    *v17 = Slow;
    v9 = v17 + 8;
    memcpy(v16, v10, v11);
    *(a1 + 208) = v16;
    *(a1 + 216) = v9;
    *(a1 + 224) = &v16[8 * v15];
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = Slow;
    v9 = v8 + 8;
  }

  *(a1 + 216) = v9;
  v18 = *a2;
  v19 = (*a2)[17];
  v20 = v19 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  if (v19 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0;
  }

  *&v57 = v21;
  if (v20)
  {
    *&v62 = mlir::AffineMapAttr::getValue(&v57);
    *&v51 = mlir::OpaqueAttr::getAttrData(&v62);
    *(&v51 + 1) = v41;
    v42 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v51);
    v43 = *v42;
    if (*v42)
    {
LABEL_47:
      Slow[2] = v43;
      return;
    }

    *(a1 + 432) += 120;
    v44 = *(a1 + 352);
    if (v44 && (v43 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8, v43 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v43 + 120;
    }

    else
    {
      v49 = v42;
      v43 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v42 = v49;
    }

    v45 = *(a1 + 152) - 1;
    v46 = v51;
LABEL_46:
    *v43 = v46;
    *(v43 + 16) = v45;
    *(v43 + 24) = 0u;
    *(v43 + 40) = 0u;
    *(v43 + 56) = 0;
    *(v43 + 80) = 0;
    *(v43 + 64) = v43 + 80;
    *(v43 + 72) = 0;
    *(v43 + 88) = 0;
    *(v43 + 96) = 0;
    *(v43 + 104) = v43 + 120;
    *(v43 + 112) = 0;
    *v42 = v43;
    goto LABEL_47;
  }

  Slow[2] = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v18);
  v22 = *a2;
  {
  }

  v23 = v22 + 9;
  v24 = v22[12];
  if ((v24 & 2) == 0)
  {
    v23 = *v23;
  }

  if ((*(v24 & 0xFFFFFFFFFFFFFFF8))(v23, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
LABEL_35:
    Context = mlir::Attribute::getContext(&v61);
    mlir::OpPrintingFlags::OpPrintingFlags(&v51);
    mlir::AsmState::AsmState(&v57, Context, &v51, 0, 0);
    DWORD2(v51) = 0;
    v55 = 0;
    v56 = 1;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    *&v51 = &unk_1F5B3FC80;
    mlir::Type::print(&v61, &v51, &v57);
    DialectResources = mlir::AsmState::getDialectResources(&v57);
    if (*(DialectResources + 8))
    {
      v35 = *(DialectResources + 16);
      if (v35)
      {
        v36 = 48 * v35;
        v37 = *DialectResources;
        while ((*v37 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v37 += 48;
          v36 -= 48;
          if (!v36)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v37 = *DialectResources;
      }

      v47 = *DialectResources + 48 * v35;
      while (v37 != v47)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v37, *(v37 + 32), *(v37 + 40));
        do
        {
          v37 += 48;
        }

        while (v37 != v47 && (*v37 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_40:
    llvm::raw_null_ostream::~raw_null_ostream(&v51);
    mlir::AsmState::~AsmState(&v57, v38, v39, v40);
    return;
  }

  TypeWriterCallbacks = mlir::BytecodeWriterConfig::getTypeWriterCallbacks(*(a1 + 936));
  if (!v26)
  {
LABEL_33:
    v31 = *(Slow[2] + 24);
    if (v31)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v51 = &unk_1F5AF2468;
      *(&v51 + 1) = a1;
      v52 = DialectVersionMap;
      if ((*(*v31 + 40))(v31, v61, &v51))
      {
        return;
      }
    }

    goto LABEL_35;
  }

  v27 = TypeWriterCallbacks;
  v28 = v61;
  v29 = 8 * v26;
  while (1)
  {
    v30 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v51 = &unk_1F5AF2468;
    *(&v51 + 1) = a1;
    v52 = v30;
    LOBYTE(v57) = 0;
    v58 = 0;
    if ((*(**v27 + 16))(*v27, v28, &v57, &v51))
    {
      break;
    }

    ++v27;
    v29 -= 8;
    if (!v29)
    {
      goto LABEL_33;
    }
  }

  if (v58 == 1)
  {
    v62 = v57;
    v42 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v62);
    v43 = *v42;
    if (*v42)
    {
      goto LABEL_47;
    }

    *(a1 + 432) += 120;
    v48 = *(a1 + 352);
    if (v48 && (v43 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8, v43 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v43 + 120;
    }

    else
    {
      v50 = v42;
      v43 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      v42 = v50;
    }

    v45 = *(a1 + 152) - 1;
    v46 = v62;
    goto LABEL_46;
  }
}

uint64_t mlir::bytecode::detail::IRNumberingState::numberDialect(mlir::bytecode::detail::IRNumberingState *this, mlir::Dialect *a2)
{
  v14 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](this + 96, &v14);
  result = *v3;
  if (!*v3)
  {
    v15 = *(v14 + 8);
    v5 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](this + 120, &v15);
    Slow = *v5;
    if (!*v5)
    {
      *(this + 54) += 120;
      v7 = *(this + 44);
      if (v7 && (Slow = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 120 <= *(this + 45)))
      {
        *(this + 44) = Slow + 120;
      }

      else
      {
        v13 = v5;
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(this + 352, 120, 120, 3);
        v5 = v13;
      }

      v8 = *(this + 38) - 1;
      *Slow = v15;
      *(Slow + 16) = v8;
      *(Slow + 24) = 0u;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0;
      *(Slow + 80) = 0;
      *(Slow + 64) = Slow + 80;
      *(Slow + 72) = 0;
      *(Slow + 88) = 0;
      *(Slow + 96) = 0;
      *(Slow + 104) = Slow + 120;
      *(Slow + 112) = 0;
      *v5 = Slow;
    }

    *v3 = Slow;
    v9 = v14;
    v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v14);
    if (v10)
    {
      v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v9);
    }

    *(*v3 + 24) = v10;
    v11 = v14;
    if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v14))
    {
      v12 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v11);
      result = *v3;
      *(*v3 + 32) = v12;
    }

    else
    {
      result = *v3;
      *(*v3 + 32) = 0;
    }
  }

  return result;
}

uint64_t *mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *a1, mlir::Dialect *a2, __int128 *a3, uint64_t a4)
{
  result = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, a2);
  if (a4)
  {
    v8 = result;
    v9 = 24 * a4;
    v10 = a3;
    do
    {
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>(v8 + 5, v10, v32);
      if (v33 != 1)
      {
        break;
      }

      v12 = *(v8 + 18);
      v13 = v8[8];
      v14 = v10;
      if (v12 >= *(v8 + 19))
      {
        v23 = v13 <= v10 && v13 + 24 * v12 > v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 8), v8 + 10, v12 + 1, 24);
        if (v23)
        {
          v14 = (a3 + v8[8] - v13);
          v13 = v8[8];
        }

        else
        {
          v13 = v8[8];
          v14 = v10;
        }
      }

      v15 = v13 + 24 * *(v8 + 18);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      ++*(v8 + 18);
      *(a1 + 90) += 32;
      v17 = *(a1 + 80);
      if (v17 && (Slow = (v17 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 32 <= *(a1 + 81)))
      {
        *(a1 + 80) = Slow + 32;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 640, 32, 32, 3);
      }

      (*(*v8[4] + 40))(&v26);
      v19 = v26;
      *(Slow + 16) = v27;
      *Slow = v19;
      v27 = 0;
      v26 = 0uLL;
      *(Slow + 24) = 0;
      *(Slow + 28) = 1;
      v20 = *(Slow + 23);
      v28 = Slow;
      v21 = *Slow;
      if (v20 >= 0)
      {
        v21 = Slow;
      }

      if (v20 < 0)
      {
        v20 = *(Slow + 8);
      }

      *&v24 = v21;
      *(&v24 + 1) = v20;
      v25 = Slow;
      v30 = v24;
      v31 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>((v8 + 10), &v30, &v31, v32);
      if (v33 == 1)
      {
        v22 = *(v8 + 28);
        *(v32[0] + 16) = v22;
        v29 = &v25;
        *&v30 = &v24;
        if (v22 < *(v8 + 29))
        {
          v11 = v8[13] + 24 * v22;
          *v11 = v24;
          *(v11 + 16) = v25;
          ++*(v8 + 28);
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<llvm::CachedHashStringRef,unsigned long>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::CachedHashStringRef&&>,std::tuple<unsigned long &&>>(v8 + 13, &std::piecewise_construct, &v30, &v29);
        }
      }

      result = llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::try_emplace<mlir::bytecode::detail::DialectResourceNumbering *&>(a1 + 29, v10, &v28, v32);
      v10 = (v10 + 24);
      a3 = (a3 + 24);
      v9 -= 24;
    }

    while (v9);
  }

  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Block *a2)
{
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  while (v4 != v5)
  {
    v6 = *v4++;
    v15 = v6;
    v7 = *(this + 232);
    *(this + 232) = v7 + 1;
    v14 = v7;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>(this + 107, &v15, &v14, v13);
    mlir::bytecode::detail::IRNumberingState::number(this, *(v15 + 32));
    mlir::bytecode::detail::IRNumberingState::number(this, (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  }

  v13[0] = a2;
  v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>,mlir::CallGraphNode *,unsigned int,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,unsigned int>>::operator[](this + 880, v13);
  v9 = a2 + 32;
  v10 = *(a2 + 5);
  if (v10 != v9)
  {
    v11 = v8;
    do
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      mlir::bytecode::detail::IRNumberingState::number(this, v12);
      ++*v11;
      v10 = *(v10 + 8);
    }

    while (v10 != v9);
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = *result + 16 * v10;
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = v6 + 16 * (v18 & v9);
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 2);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        *(v11 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

uint64_t llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](uint64_t a1, __int128 *a2)
{
  v18 = *a2;
  v19[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>(a1, &v18, v19, &v16);
  v4 = v16;
  if (v17)
  {
    v5 = a1 + 24;
    v6 = *(a1 + 24);
    v14 = *a2;
    v15 = 0;
    v7 = *(a1 + 32);
    v8 = &v14;
    if (v7 >= *(a1 + 36))
    {
      if (v6 <= &v14 && v6 + 24 * v7 > &v14)
      {
        v13 = &v14 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v13[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v14;
      }
    }

    v9 = v6 + 24 * *(a1 + 32);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    v11 = *(a1 + 32);
    *(a1 + 32) = v11 + 1;
    *(v4 + 16) = v11;
  }

  else
  {
    v11 = *(v16 + 16);
  }

  return *(a1 + 24) + 24 * v11 + 16;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>,mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::try_emplace<unsigned long &,unsigned long>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(result + 4);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v7 = *result;
  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = *result + 16 * v9;
  v11 = *v10;
  if (*a2 != *v10)
  {
    v15 = 0;
    v16 = 1;
    while (v11 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v11 == -8192;
      }

      if (v17)
      {
        v15 = v10;
      }

      v18 = v9 + v16++;
      v9 = v18 & v8;
      v10 = v7 + 16 * (v18 & v8);
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v10 = v15;
    }

LABEL_5:
    v23 = v10;
    v13 = *(result + 2);
    if (4 * v13 + 4 >= 3 * v6)
    {
      v6 *= 2;
    }

    else if (v6 + ~v13 - *(result + 3) > v6 >> 3)
    {
      *(result + 2) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v14 = *a4;
        *(v10 + 8) = *a3;
        *(v10 + 12) = v14;
        v7 = *result;
        v6 = *(result + 4);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a5;
    v21 = a4;
    v22 = a3;
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(result, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v19, a2, &v23);
    a3 = v22;
    a4 = v21;
    result = v19;
    a5 = v20;
    v10 = v23;
    ++*(v19 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a5 = v10;
  *(a5 + 8) = v7 + 16 * v6;
  *(a5 + 16) = v12;
  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 48, &v26);
  if (*v3)
  {
    ++*(*v3 + 20);
    return;
  }

  v4 = v3;
  if (*(v26 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v27 = *(v26 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v27);
    if (Values)
    {
      goto LABEL_5;
    }

LABEL_7:
    *&v27 = mlir::OperationName::getDialectNamespace(&v26);
    *(&v27 + 1) = v7;
    v8 = llvm::MapVector<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *,llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::SmallVector<std::pair<llvm::StringRef,mlir::bytecode::detail::DialectNumbering *>,0u>>::operator[](a1 + 120, &v27);
    Slow = *v8;
    if (!*v8)
    {
      *(a1 + 432) += 120;
      v9 = *(a1 + 352);
      if (v9 && (Slow = (v9 + 7) & 0xFFFFFFFFFFFFFFF8, (Slow + 120) <= *(a1 + 360)))
      {
        *(a1 + 352) = Slow + 120;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 352, 120, 120, 3);
      }

      v10 = *(a1 + 152) - 1;
      *Slow = v27;
      *(Slow + 16) = v10;
      *(Slow + 24) = 0u;
      *(Slow + 40) = 0u;
      *(Slow + 56) = 0;
      *(Slow + 80) = 0;
      *(Slow + 64) = Slow + 80;
      *(Slow + 72) = 0;
      *(Slow + 88) = 0;
      *(Slow + 96) = 0;
      *(Slow + 104) = Slow + 120;
      *(Slow + 112) = 0;
      *v8 = Slow;
    }

    goto LABEL_12;
  }

  Values = *(v26 + 24);
  if (!Values)
  {
    goto LABEL_7;
  }

LABEL_5:
  Slow = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, Values);
LABEL_12:
  *(a1 + 624) += 24;
  v11 = *(a1 + 544);
  if (v11 && (v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8), (v12 + 3) <= *(a1 + 552)))
  {
    *(a1 + 544) = v12 + 3;
  }

  else
  {
    v25 = Slow;
    v12 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1 + 544, 24, 24, 3);
    Slow = v25;
  }

  v13 = v26;
  *v12 = Slow;
  v12[1] = v13;
  v12[2] = 0x100000000;
  *v4 = v12;
  v15 = *(a1 + 192);
  v14 = *(a1 + 200);
  if (v15 >= v14)
  {
    v17 = *(a1 + 184);
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v21 = v14 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v23 = operator new(8 * v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = &v23[8 * v19];
    *v24 = v12;
    v16 = v24 + 8;
    memcpy(v23, v17, v18);
    *(a1 + 184) = v23;
    *(a1 + 192) = v16;
    *(a1 + 200) = &v23[8 * v22];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v15 = v12;
    v16 = v15 + 8;
  }

  *(a1 + 192) = v16;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::try_emplace<mlir::bytecode::detail::DialectResourceNumbering *&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v8 = (*result + 32 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & (v5 - 1);
      v8 = (v6 + 32 * v7);
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v20 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v11 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v8[3] = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v8 = v20;
    ++*(v17 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a4 = v8;
  *(a4 + 8) = v6 + 32 * v5;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,unsigned int>,true>::growAndEmplaceBack<mlir::Region *,unsigned int &>(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter::writeOptionalAttribute(uint64_t a1, mlir::Dialect ***a2)
{
  if (a2)
  {
    mlir::bytecode::detail::IRNumberingState::number(*(a1 + 8), a2);
  }
}

uint64_t mlir::bytecode::detail::IRNumberingState::NumberingDialectWriter::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(v7, a2, a3, v8);
  if (Key == -1)
  {
    v10 = *(v7 + 8);
  }

  else
  {
    v10 = Key;
  }

  v11 = *v7 + 8 * v10;
  if (v11 == **(a1 + 16) + 8 * *(*(a1 + 16) + 8))
  {
    return 0;
  }

  else
  {
    return *(*v11 + 8);
  }
}

void anonymous namespace::NumberingResourceBuilder::~NumberingResourceBuilder(_anonymous_namespace_::NumberingResourceBuilder *this)
{
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v1);
}

uint64_t anonymous namespace::NumberingResourceBuilder::buildBool(uint64_t a1, llvm::hashing::detail *a2, llvm::hashing::detail *a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t anonymous namespace::NumberingResourceBuilder::buildString(uint64_t a1, llvm::hashing::detail *a2, llvm::hashing::detail *a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t anonymous namespace::NumberingResourceBuilder::buildBlob(uint64_t a1, llvm::hashing::detail *a2, llvm::hashing::detail *a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(uint64_t *result, __n128 *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = a2[-1].n128_i64[1];
      v6 = *result;
      if (*(v5 + 12) > *(*result + 12))
      {
        *result = v5;
        a2[-1].n128_u64[1] = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = &result[v17 / 8];
      v20 = result;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(result, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>((v20 + v17), a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(result, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20, (v20 + v17), a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v7 = result + 1;
      if (result + 1 != a2)
      {
        v8 = 0;
        v9 = result;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(result + v14 + 8) = v11;
              if (!v14)
              {
                v10 = result;
                goto LABEL_11;
              }

              v11 = *(result + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = (result + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = a2 - 1;
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(*result + 12);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = &result[v20];
      v22 = result;
      v25 = a4;
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(result, &result[v20], v19, a4, v19);
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = v21 - v22 - 8;
          if (v47 >= 0x38)
          {
            if ((v26 - v22) >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              v25 = (v25 + v51 * 8);
              v48 = &v22[v51];
              v52 = (v22 + 2);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 12);
        v31 = *(*v22 + 12);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = v34;
        v27 = &v28[v36];
        v22 += v33;
        *v25++ = v35;
        ++v26;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if (v26 - v28 - v36 * 8 < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 = (v27 + v40 * 8);
        v42 = &v28[v36 + 2];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 4;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27++;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result++;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 12) > *(v14 + 12))
            {
              break;
            }

            *v12 = *result++;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 12) <= *(v17 + 12))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result++;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_u64[v10 / 8];
      if (*(a2->n128_u64[0] + 12) > *(v12 + 12))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = a2->n128_u64[0];
        a2->n128_u64[0] = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_i8[8 * (v14 / 2)];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16->n128_u64[v25 >> 1];
          v29 = *v27;
          v28 = (v27 + 1);
          v25 += ~(v25 >> 1);
          if (*(v29 + 12) > *(*&v24[v10] + 12))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = (a1 + v10);
        do
        {
          v19 = v18 >> 1;
          v20 = &v17->n128_u64[v18 >> 1];
          v22 = *v20;
          v21 = (v20 + 1);
          v18 += ~(v18 >> 1);
          if (*(v16->n128_u64[0] + 12) > *(v22 + 12))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v33, v16, v78, a4, v30, __src, v77).n128_u64[0];
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>((a1 + v10), v17, v33, v34, v15, __src, v77).n128_u64[0];
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = a6 + 16;
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        *(v53 - 1) = result;
        *v53 = v55;
        v52 += 2;
        v53 += 32;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = a2->n128_u64[0];
        v58 = *(a2->n128_u64[0] + 12);
        v59 = *(*a6 + 12);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 = (a2 + 8 * v62);
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if ((a6 - a2) > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = a2 + 1;
      v44 = a6 + 16;
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        *(v44 - 1) = result;
        *v44 = v46;
        v43 += 2;
        v44 += 32;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = v40->n128_u64[0];
    v40 = (v40 + 8);
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = a2[-1].n128_u64[1];
    if (*(*(v39 - 1) + 12) > *(v65 + 12))
    {
      a2 = (a2 - 8);
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    a3[-1].n128_u64[1] = v65;
    a3 = (a3 - 8);
    v64 = (v64 - 8);
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = &a3[-1].n128_i8[8];
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69 = v70;
        v69 -= 8;
      }

      while (v68 != a6);
      return result;
    }

    v71 = a3 - 1;
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(char *__src, uint64_t a2, void *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 8 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 8, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 8) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 8;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 8, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 3;
    v16 = v6 >> 3;
    if (v5 >> 3 == v6 >> 3)
    {
      v17 = __src + 8;
      v18 = (a2 + 8);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 8;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 3;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[8 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 3;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[8 * v32];
          if (v31)
          {
            v26 = &v28[8 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(uint64_t *result, __n128 *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = a2[-1].n128_i64[1];
      v6 = *result;
      if (*(v5 + 20) > *(*result + 20))
      {
        *result = v5;
        a2[-1].n128_u64[1] = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = &result[v17 / 8];
      v20 = result;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(result, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>((v20 + v17), a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 20);
          v34 = *(*v28 + 20);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(result, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v20, (v20 + v17), a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v7 = result + 1;
      if (result + 1 != a2)
      {
        v8 = 0;
        v9 = result;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 20);
          if (v13 > *(v11 + 20))
          {
            v14 = v8;
            do
            {
              *(result + v14 + 8) = v11;
              if (!v14)
              {
                v10 = result;
                goto LABEL_11;
              }

              v11 = *(result + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 20));
            v10 = (result + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = a2 - 1;
      v5 = v6;
      v7 = *(v6 + 20);
      v8 = *(*result + 20);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = &result[v20];
      v22 = result;
      v25 = a4;
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(result, &result[v20], v19, a4, v19);
      result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = v21 - v22 - 8;
          if (v47 >= 0x38)
          {
            if ((v26 - v22) >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              v25 = (v25 + v51 * 8);
              v48 = &v22[v51];
              v52 = (v22 + 2);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 20);
        v31 = *(*v22 + 20);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = v34;
        v27 = &v28[v36];
        v22 += v33;
        *v25++ = v35;
        ++v26;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if (v26 - v28 - v36 * 8 < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 = (v27 + v40 * 8);
        v42 = &v28[v36 + 2];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 4;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27++;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result++;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 20) > *(v14 + 20))
            {
              break;
            }

            *v12 = *result++;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 20) <= *(v17 + 20))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result++;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_u64[v10 / 8];
      if (*(a2->n128_u64[0] + 20) > *(v12 + 20))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = a2->n128_u64[0];
        a2->n128_u64[0] = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_i8[8 * (v14 / 2)];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16->n128_u64[v25 >> 1];
          v29 = *v27;
          v28 = (v27 + 1);
          v25 += ~(v25 >> 1);
          if (*(v29 + 20) > *(*&v24[v10] + 20))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = (a1 + v10);
        do
        {
          v19 = v18 >> 1;
          v20 = &v17->n128_u64[v18 >> 1];
          v22 = *v20;
          v21 = (v20 + 1);
          v18 += ~(v18 >> 1);
          if (*(v16->n128_u64[0] + 20) > *(v22 + 20))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>(v33, v16, v78, a4, v30, __src, v77).n128_u64[0];
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::OpNameNumbering **>>((a1 + v10), v17, v33, v34, v15, __src, v77).n128_u64[0];
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = a6 + 16;
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        *(v53 - 1) = result;
        *v53 = v55;
        v52 += 2;
        v53 += 32;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = a2->n128_u64[0];
        v58 = *(a2->n128_u64[0] + 20);
        v59 = *(*a6 + 20);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 = (a2 + 8 * v62);
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if ((a6 - a2) > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = a2 + 1;
      v44 = a6 + 16;
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        *(v44 - 1) = result;
        *v44 = v46;
        v43 += 2;
        v44 += 32;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = v40->n128_u64[0];
    v40 = (v40 + 8);
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = a2[-1].n128_i64[1];
    if (*(*(v39 - 1) + 20) > *(v65 + 20))
    {
      a2 = (a2 - 8);
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    a3[-1].n128_u64[1] = v65;
    a3 = (a3 - 8);
    --v64;
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = &a3[-1].n128_i64[1];
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69-- = v70;
      }

      while (v68 != a6);
      return result;
    }

    v71 = a3 - 1;
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(__n128 *a1, __n128 *a2, unint64_t a3, char *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = a2[-1].n128_u64[1];
      v6 = a1->n128_u64[0];
      if (*(v5 + 12) > *(a1->n128_u64[0] + 12))
      {
        a1->n128_u64[0] = v5;
        a2[-1].n128_u64[1] = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (a1 + v17);
      v20 = a1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(a1, v19, a3 >> 1, a4);
        v26 = &a4[8 * v16];
        std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>((v20 + v17), a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[8 * a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
                v49 = &v28[v52];
                v29 = (v29 + v52);
                v53 = (v28 + 16);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49;
              v49 += 8;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += 8 * v36;
          v39 = 8 * v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 += v43;
          v29 = (v29 + v43);
          v44 = &v31[v39 + 16];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27;
              v27 += 8;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(a1, v19, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>((v20 + v17), a2, v18, a4, a5);

        v23.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::AttributeNumbering **>>(v20, (v20 + v17), a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = &a1->n128_u64[1];
      if (&a1->n128_i8[8] != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = v9->n128_u64[0];
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(&a1->n128_u64[1] + v14) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(&a1->n128_u64[-1] + v14);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = &a1->n128_i8[v14 + 8];
LABEL_11:
            v10->n128_u64[0] = v12;
          }

          v7 = &v9->n128_u64[1];
          v8 += 8;
        }

        while (&v9->n128_i8[8] != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(__n128 *a1, __n128 *a2, unint64_t a3, char *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = a1->n128_u64[0];
      return;
    }

    if (a3 == 2)
    {
      v6 = a2[-1].n128_u64[1];
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(a1->n128_u64[0] + 12);
      if (v7 <= v8)
      {
        v5 = a1->n128_u64[0];
      }

      *a4 = v5;
      a4 += 8;
      if (v7 <= v8)
      {
        a1 = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v20 = a3 >> 1;
      v21 = 8 * (a3 >> 1);
      v22 = (a1 + v21);
      v23 = a1;
      v26 = a4;
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(a1, a1 + v21, v20, a4, v20);
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::bytecode::detail::IRNumberingState::IRNumberingState(mlir::Operation *,mlir::BytecodeWriterConfig const&)::$_1 &,std::__wrap_iter<mlir::bytecode::detail::TypeNumbering **>>(v22, a2, a3 - v20, &v26[v21], a3 - v20);
      v27 = v26;
      v28 = v22;
      do
      {
        if (v28 == a2)
        {
          if (v23 == v22)
          {
            return;
          }

          v48 = v22 - v23 - 8;
          if (v48 >= 0x38)
          {
            if ((v27 - v23) >= 0x20)
            {
              v50 = (v26 + 16);
              v51 = (v48 >> 3) + 1;
              v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
              v26 += v52;
              v49 = (v23 + v52);
              v53 = v23 + 1;
              v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v55 = *v53;
                v50[-1] = v53[-1];
                *v50 = v55;
                v53 += 2;
                v50 += 2;
                v54 -= 4;
              }

              while (v54);
              if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return;
              }
            }

            else
            {
              v49 = v23;
            }
          }

          else
          {
            v49 = v23;
          }

          do
          {
            v56 = v49->n128_u64[0];
            v49 = (v49 + 8);
            *v26 = v56;
            v26 += 8;
          }

          while (v49 != v22);
          return;
        }

        v29 = v28;
        v30 = *v28;
        v31 = *(v30 + 12);
        v32 = *(v23->n128_u64[0] + 12);
        v33 = v31 > v32;
        v34 = v31 <= v32;
        v35 = v33;
        if (v33)
        {
          v36 = v30;
        }

        else
        {
          v36 = v23->n128_u64[0];
        }

        v37 = 8 * v35;
        v28 = &v29[v37];
        v23 = (v23 + 8 * v34);
        *v26 = v36;
        v26 += 8;
        v27 += 8;
      }

      while (v23 != v22);
      if (v28 != a2)
      {
        v38 = a2 - &v29[v37] - 8;
        if (v38 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v27 - v29 - v37) < 0x20)
        {
          goto LABEL_51;
        }

        v39 = 0;
        v40 = (v38 >> 3) + 1;
        v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
        v42 = &v26[v41];
        v28 += v41;
        v43 = &v29[v37 + 16];
        v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = &v26[v39];
          v46 = *v43;
          *v45 = *(v43 - 1);
          *(v45 + 1) = v46;
          v43 += 32;
          v39 += 32;
          v44 -= 4;
        }

        while (v44);
        v26 = v42;
        if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v47 = *v28;
            v28 += 8;
            *v26 = v47;
            v26 += 8;
          }

          while (v28 != a2);
        }
      }
    }

    else if (a1 != a2)
    {
      v10 = a1->n128_u64[0];
      v9 = &a1->n128_i8[8];
      *a4 = v10;
      if (v9 != a2)
      {
        v11 = 0;
        v12 = a4;
        v13 = a4;
        do
        {
          while (1)
          {
            v15 = *v13;
            v13 += 8;
            v14 = v15;
            if (*(*v9 + 12) > *(v15 + 12))
            {
              break;
            }

            *v13 = *v9;
            v9 += 8;
            v11 += 8;
            v12 = v13;
            if (v9 == a2)
            {
              return;
            }
          }

          *(v12 + 1) = v14;
          v16 = a4;
          if (v12 != a4)
          {
            v17 = v11;
            while (1)
            {
              v16 = &a4[v17];
              v18 = *&a4[v17 - 8];
              if (*(*v9 + 12) <= *(v18 + 12))
              {
                break;
              }

              *v16 = v18;
              v17 -= 8;
              if (!v17)
              {
                v16 = a4;
                break;
              }
            }
          }

          v19 = *v9;
          v9 += 8;
          *v16 = v19;
          v11 += 8;
          v12 = v13;
        }

        while (v9 != a2);
      }
    }
  }
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(void *result, char *a2, uint64_t a3, unint64_t a4, __n128 *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *result;
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(*result + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    *result = v6;
    *(a2 - 1) = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return;
    }

    v11 = result + 1;
    if (result + 1 == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = result;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(*v16 + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v21 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v21);
            v22 = *(result + v21 - 8);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            *v15 = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v24 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v24);
            v25 = *(result + v24 - 8);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            *v15 = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = result;
              break;
            }
          }
        }
      }

      *v15 = v17;
LABEL_13:
      v11 = v14 + 1;
      v12 += 8;
      if (v14 + 1 == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = &result[a4 >> 1];
  v32 = a4 - (a4 >> 1);
  v33 = result;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(result, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(result, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0uLL:
      return result;
    case 1uLL:
LABEL_36:
      a5->n128_u64[0] = *a1;
      return result;
    case 2uLL:
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(*a1 + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = *a1;
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = *a1;
    v12 = a1 + 1;
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = v17->n128_u64[0];
      v17 = (v17 + 8);
      v20 = v21;
      v22 = *(*(*v12 + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(*v12 + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = *v12++;
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      v17->n128_u64[0] = *v12++;
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = a4 >> 1;
  v32 = &a1[v31];
  v33 = a1;
  v37 = a5;
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, &a1[v31], a3, v30, a5, v30);
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31 * 8, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            v37 = (v37 + v55 * 8);
            v52 = &v41[v55];
            v56 = (v41 + 2);
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
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
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = *v52++;
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(*v42 + 16) + 16);
      v45 = *(*(*v41 + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = *v42;
      v37 = (v37 + 8);
      ++v42;
      v40 = (v40 + 8);
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = *v41;
    v37 = (v37 + 8);
    ++v41;
    v40 = (v40 + 8);
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = *v49++;
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  v48 = (v37 + v62 * 8);
  v49 = &v42[v62];
  v63 = (v42 + 2);
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *_ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v80 = a3 - a2 - 8;
          v81 = a7;
          v82 = a2;
          if (v80 < 0x18)
          {
            goto LABEL_133;
          }

          v81 = a7;
          v82 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v83 = (v80 >> 3) + 1;
          v84 = 8 * (v83 & 0x3FFFFFFFFFFFFFFCLL);
          v81 = &a7[v84];
          v82 = &a2[v84];
          v85 = a2 + 16;
          v86 = a7 + 16;
          v87 = v83 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 32;
            v86 += 32;
            v87 -= 4;
          }

          while (v87);
          if (v83 != (v83 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v89 = *v82;
              v82 += 8;
              *v81 = v89;
              v81 += 8;
            }

            while (v82 != a3);
          }

          v90 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v113 = v81 - a7;
              if (v81 != a7)
              {
                v114 = v113 - 8;
                if ((v113 - 8) < 0x48 || (v81 - i) < 0x20)
                {
                  v115 = v81;
                  goto LABEL_121;
                }

                v118 = a3 - 16;
                v119 = (v114 >> 3) + 1;
                v120 = 8 * (v119 & 0x3FFFFFFFFFFFFFFCLL);
                v115 = &v81[-v120];
                a3 -= v120;
                v121 = v81 - 16;
                v122 = v119 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v123 = *v121;
                  *(v118 - 1) = *(v121 - 1);
                  *v118 = v123;
                  v118 -= 32;
                  v121 -= 32;
                  v122 -= 4;
                }

                while (v122);
                if (v119 != (v119 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v116 = a3 - 8;
                  do
                  {
                    v117 = *(v115 - 1);
                    v115 -= 8;
                    *v116 = v117;
                    v116 -= 8;
                  }

                  while (v115 != a7);
                }
              }

              return result;
            }

            v93 = a2 - 8;
            v92 = *(a2 - 1);
            v94 = *v90;
            v95 = *(*(v92 + 16) + 16);
            v96 = *(*(*(v81 - 1) + 16) + 16);
            if (v96 == *v90)
            {
              if (v95 != v94)
              {
                goto LABEL_87;
              }
            }

            else if (v95 != v94 && v95 > v96)
            {
              goto LABEL_87;
            }

            v92 = *(v81 - 1);
            v93 = a2;
            v81 -= 8;
LABEL_87:
            *(a3 - 1) = v92;
            a3 -= 8;
            a2 = v93;
            if (v81 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v98 = a2 - result - 8;
        v99 = a7;
        v100 = result;
        if (v98 < 0x18)
        {
          goto LABEL_134;
        }

        v99 = a7;
        v100 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v101 = (v98 >> 3) + 1;
        v102 = 8 * (v101 & 0x3FFFFFFFFFFFFFFCLL);
        v99 = &a7[v102];
        v100 = &result[v102];
        v103 = result + 16;
        v104 = a7 + 16;
        v105 = v101 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v106 = *v103;
          *(v104 - 1) = *(v103 - 1);
          *v104 = v106;
          v103 += 32;
          v104 += 32;
          v105 -= 4;
        }

        while (v105);
        if (v101 != (v101 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v107 = *v100;
            v100 += 8;
            *v99 = v107;
            v99 += 8;
          }

          while (v100 != a2);
        }

        v108 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v99 - a7);
            }

            v109 = *v108;
            v110 = *(*(*a2 + 16) + 16);
            v111 = *(*(*a7 + 16) + 16);
            if (v110 == *v108)
            {
              break;
            }

            if (v111 == v109 || v111 <= v110)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v99)
            {
              return result;
            }
          }

          if (v111 != v109)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v99)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(*(*a2 + 16) + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*(v14 + 16) + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(*(*&v33[8 * v10] + 16) + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = v37 + 8;
              v40 = *(*(v39 + 16) + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = v43 + 8;
              v46 = *(*(v45 + 16) + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v124 = *v22;
            v126 = v17;
            v55 = v19 - a2;
            v128 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v126;
            a3 = v128;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v124;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v127 = v17;
                v129 = a3;
                v60 = a5;
                v125 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v125;
                v17 = v127;
                a4 = v61;
                a5 = v60;
                a3 = v129;
              }

              *v22 = v59;
            }

            else
            {
              v51 = (a2 - v22);
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v51[v64];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = &v51[v68];
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(*(*v19 + 16) + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = v24 + 8;
          v20 += ~(v20 >> 1);
          if (*(*(v26 + 16) + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = v28 + 8;
          v20 += ~(v20 >> 1);
          if (*(*(v30 + 16) + 16) != v11 && *(*(v30 + 16) + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v17, v22, v32, a4, v31, v18, a7, a8);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = a5 - v31 - v10;
    v79 = v17;
    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v32, v19, a3, a4, v78, a6 - v18, a7, a8);
    result = v79;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(void *result, char *a2, uint64_t a3, unint64_t a4, __n128 *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *result;
    v8 = **(a3 + 8);
    v9 = *(*v6 + 16);
    v10 = *(**result + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    *result = v6;
    *(a2 - 1) = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return;
    }

    v11 = result + 1;
    if (result + 1 == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = result;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*v17 + 16);
      v20 = *(**v16 + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v21 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v21);
            v22 = *(result + v21 - 8);
            if (*(*v22 + 16) == v13)
            {
              break;
            }

            *v15 = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16[1] = v18;
        v24 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v24);
            v25 = *(result + v24 - 8);
            v26 = *(*v25 + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            *v15 = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = result;
              break;
            }
          }
        }
      }

      *v15 = v17;
LABEL_13:
      v11 = v14 + 1;
      v12 += 8;
      if (v14 + 1 == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = &result[a4 >> 1];
  v32 = a4 - (a4 >> 1);
  v33 = result;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(result, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(result, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*v44->n128_u64[0] + 16);
      v47 = *(*v39->n128_u64[0] + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0uLL:
      return result;
    case 1uLL:
LABEL_36:
      a5->n128_u64[0] = *a1;
      return result;
    case 2uLL:
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*v7 + 16);
      v10 = *(**a1 + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = *a1;
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = *a1;
    v12 = a1 + 1;
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = v17->n128_u64[0];
      v17 = (v17 + 8);
      v20 = v21;
      v22 = *(**v12 + 16);
      v23 = *(*v21 + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(**v12 + 16);
            v27 = *(*v25 + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = *v12++;
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      v17->n128_u64[0] = *v12++;
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = a4 >> 1;
  v32 = &a1[v31];
  v33 = a1;
  v37 = a5;
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, &a1[v31], a3, v30, a5, v30);
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, v37 + v31 * 8, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            v37 = (v37 + v55 * 8);
            v52 = &v41[v55];
            v56 = (v41 + 2);
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
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
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = *v52++;
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(**v42 + 16);
      v45 = *(**v41 + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = *v42;
      v37 = (v37 + 8);
      ++v42;
      v40 = (v40 + 8);
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = *v41;
    v37 = (v37 + 8);
    ++v41;
    v40 = (v40 + 8);
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = *v49++;
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  v48 = (v37 + v62 * 8);
  v49 = &v42[v62];
  v63 = (v42 + 2);
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *_ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v80 = a3 - a2 - 8;
          v81 = a7;
          v82 = a2;
          if (v80 < 0x18)
          {
            goto LABEL_133;
          }

          v81 = a7;
          v82 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v83 = (v80 >> 3) + 1;
          v84 = 8 * (v83 & 0x3FFFFFFFFFFFFFFCLL);
          v81 = &a7[v84];
          v82 = &a2[v84];
          v85 = a2 + 16;
          v86 = a7 + 16;
          v87 = v83 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 32;
            v86 += 32;
            v87 -= 4;
          }

          while (v87);
          if (v83 != (v83 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v89 = *v82;
              v82 += 8;
              *v81 = v89;
              v81 += 8;
            }

            while (v82 != a3);
          }

          v90 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v113 = v81 - a7;
              if (v81 != a7)
              {
                v114 = v113 - 8;
                if ((v113 - 8) < 0x48 || (v81 - i) < 0x20)
                {
                  v115 = v81;
                  goto LABEL_121;
                }

                v118 = a3 - 16;
                v119 = (v114 >> 3) + 1;
                v120 = 8 * (v119 & 0x3FFFFFFFFFFFFFFCLL);
                v115 = &v81[-v120];
                a3 -= v120;
                v121 = v81 - 16;
                v122 = v119 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v123 = *v121;
                  *(v118 - 1) = *(v121 - 1);
                  *v118 = v123;
                  v118 -= 32;
                  v121 -= 32;
                  v122 -= 4;
                }

                while (v122);
                if (v119 != (v119 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v116 = a3 - 8;
                  do
                  {
                    v117 = *(v115 - 1);
                    v115 -= 8;
                    *v116 = v117;
                    v116 -= 8;
                  }

                  while (v115 != a7);
                }
              }

              return result;
            }

            v93 = a2 - 8;
            v92 = *(a2 - 1);
            v94 = *v90;
            v95 = *(*v92 + 16);
            v96 = *(**(v81 - 1) + 16);
            if (v96 == *v90)
            {
              if (v95 != v94)
              {
                goto LABEL_87;
              }
            }

            else if (v95 != v94 && v95 > v96)
            {
              goto LABEL_87;
            }

            v92 = *(v81 - 1);
            v93 = a2;
            v81 -= 8;
LABEL_87:
            *(a3 - 1) = v92;
            a3 -= 8;
            a2 = v93;
            if (v81 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v98 = a2 - result - 8;
        v99 = a7;
        v100 = result;
        if (v98 < 0x18)
        {
          goto LABEL_134;
        }

        v99 = a7;
        v100 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v101 = (v98 >> 3) + 1;
        v102 = 8 * (v101 & 0x3FFFFFFFFFFFFFFCLL);
        v99 = &a7[v102];
        v100 = &result[v102];
        v103 = result + 16;
        v104 = a7 + 16;
        v105 = v101 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v106 = *v103;
          *(v104 - 1) = *(v103 - 1);
          *v104 = v106;
          v103 += 32;
          v104 += 32;
          v105 -= 4;
        }

        while (v105);
        if (v101 != (v101 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v107 = *v100;
            v100 += 8;
            *v99 = v107;
            v99 += 8;
          }

          while (v100 != a2);
        }

        v108 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v99 - a7);
            }

            v109 = *v108;
            v110 = *(**a2 + 16);
            v111 = *(**a7 + 16);
            if (v110 == *v108)
            {
              break;
            }

            if (v111 == v109 || v111 <= v110)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v99)
            {
              return result;
            }
          }

          if (v111 != v109)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v99)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(**a2 + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*v14 + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(**&v33[8 * v10] + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = v37 + 8;
              v40 = *(*v39 + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = v43 + 8;
              v46 = *(*v45 + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v124 = *v22;
            v126 = v17;
            v55 = v19 - a2;
            v128 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v126;
            a3 = v128;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v124;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v127 = v17;
                v129 = a3;
                v60 = a5;
                v125 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v125;
                v17 = v127;
                a4 = v61;
                a5 = v60;
                a3 = v129;
              }

              *v22 = v59;
            }

            else
            {
              v51 = (a2 - v22);
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v51[v64];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = &v51[v68];
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(**v19 + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = v24 + 8;
          v20 += ~(v20 >> 1);
          if (*(*v26 + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = v28 + 8;
          v20 += ~(v20 >> 1);
          if (*(*v30 + 16) != v11 && *(*v30 + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v17, v22, v32, a4, v31, v18, a7, a8);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = a5 - v31 - v10;
    v79 = v17;
    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail15OpNameNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v32, v19, a3, a4, v78, a6 - v18, a7, a8);
    result = v79;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(__n128 *result, __n128 *a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = result->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(result->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    result->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return;
    }

    v11 = &result->n128_i8[8];
    if (&result->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = result;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v21);
            v22 = *(&result->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = result;
        if (v16 != result)
        {
          while (1)
          {
            v15 = (result + v24);
            v25 = *(&result->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = result;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_i8[8];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (result + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = result;
  if (a4 > a6)
  {
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(result, v31, a3, a4 >> 1, a5, a6);
    _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v31, a2, a3, v32, a5, a6);

    _ZNSt3__115__inplace_mergeINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail18AttributeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SK_OSE_NS_15iterator_traitsISK_E15difference_typeESO_PNSN_10value_typeEl(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(result, v31, a3, a4 >> 1, a5);
  v40 = &v39[8 * v30];
  _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(v31, a2, a3, v32, v40);
  v41 = &v39[8 * a4];
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = v33 + 16;
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = &v39[v57];
            v58 = (v39 + 16);
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              *(v55 - 1) = *(v58 - 1);
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = *v54;
          v54 += 8;
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(*v44 + 16) + 16);
      v47 = *(*(*v39 + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = *v44;
      v33 += 8;
      v44 += 8;
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = *v39;
    v33 += 8;
    v39 += 8;
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = *v51;
      v51 += 8;
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = &v44[v64];
  v65 = (v44 + 16);
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = *(v65 - 1);
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 _ZNSt3__118__stable_sort_moveINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeE(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, char *a5)
{
  switch(a4)
  {
    case 0uLL:
      return result;
    case 1uLL:
LABEL_36:
      *a5 = a1->n128_u64[0];
      return result;
    case 2uLL:
      v7 = a2[-1].n128_u64[1];
      v5 = &a2[-1].n128_i8[8];
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      *a5 = v6;
      a5 += 8;
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    *a5 = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17;
      v17 += 8;
      v20 = v21;
      v22 = *(*(*v12 + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          *(v16 + 1) = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *&a5[v24 - 8];
            v26 = *(*(*v12 + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = &a5[v24];
LABEL_12:
                v19 = *v12;
                v12 += 8;
                *v18 = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 -= 8;
            *&a5[v24] = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = *v12;
      v12 += 8;
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = a1 + v31;
  v33 = a1;
  v37 = a5;
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(a1, a1 + v31, a3, v30, a5, v30);
  _ZNSt3__113__stable_sortINS_17_ClassicAlgPolicyERZL21groupByDialectPerByteIN4llvm15MutableArrayRefIPN4mlir8bytecode6detail13TypeNumberingEEEEvT_EUlRKSB_RKT0_E_PS9_EEvT1_SK_SE_NS_15iterator_traitsISK_E15difference_typeEPNSM_10value_typeEl(v32, a2, a3, a4 - v30, &v37[v31], a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33[8 * v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = (v37 + 16);
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 += v55;
            v52 = &v41[v55];
            v56 = (v41 + 16);
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
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
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = *v52;
          v52 += 8;
          *v37 = v59;
          v37 += 8;
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(*v41 + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      *v37 = v42->n128_u64[0];
      v37 += 8;
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    *v37 = *v41;
    v37 += 8;
    v41 += 8;
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = *v49;
      v49 += 8;
      *v48 = v50;
      v48 += 8;
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = &v37[v62];
  v49 = v42 + v62;
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    *(v65 + 1) = v66;
    v63 += 2;
    v60 += 32;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

double llvm::function_ref<void ()(mlir::Operation *,mlir::WalkStage const&)>::callback_fn<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::$_0>(uint64_t **result, uint64_t a2, int *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v38 = a2;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0 && v4 == v5)
  {
    v13 = *(*result + 2);
    v14 = *(**result + 24 * v13 - 16);
    *(*result + 2) = v13 - 1;
    if ((*(v14 + 5) & 1) == 0)
    {
      *(v14 + 4) = 257;
    }
  }

  else if (!v4)
  {
    v9 = result[1];
    v10 = *(*result + 2);
    if (v10 && *(**result + 24 * v10 - 8) == 1)
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        Parent = mlir::Block::getParent(v11);
        v6 = *(a2 + 44);
      }

      else
      {
        Parent = 0;
      }

      if ((v6 & 0x800000) != 0)
      {
        v15 = *(a2 + 68);
        if (v15)
        {
          v16 = 0;
          v17 = *(a2 + 72);
          do
          {
            *&v35 = *(v17 + 32 * v16 + 24);
            ParentRegion = mlir::Value::getParentRegion(&v35);
            if (ParentRegion != Parent)
            {
              v19 = **result;
              v20 = 24 * *(*result + 2);
              v21 = v19 + v20;
              while (v20)
              {
                v22 = *(v19 + v20 - 24);
                v23 = *(v19 + v20 - 8);
                v20 -= 24;
                if (v23 != 1 || v22 == *(ParentRegion + 2))
                {
                  v19 += v20 + 24;
                  break;
                }
              }

              while (v21 != v19)
              {
                *(v21 - 8) = *(v19 - 8);
                *(*(v21 - 16) + 4) = 256;
                v21 -= 24;
              }
            }

            ++v16;
          }

          while (v16 != v15);
        }
      }
    }

    v9[66] += 8;
    v25 = v9[56];
    if (v25 && (Slow = (v25 + 3) & 0xFFFFFFFFFFFFFFFCLL, Slow + 8 <= v9[57]))
    {
      v9[56] = Slow + 8;
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v9 + 56), 8, 8, 2);
    }

    v27 = result[2];
    v28 = (*v27)++;
    *Slow = v28;
    *(Slow + 4) = 0;
    v37 = Slow;
    {
      v33 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v33, v34);
    }

    if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      *(v37 + 4) = 257;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>(v9 + 3, &v38, &v37, &v35);
    if ((*(v38 + 44) & 0x7FFFFF) != 0)
    {
      v30 = *result;
      *&v35 = v38;
      *(&v35 + 1) = v37;
      LOBYTE(v36) = *(v37 + 5) ^ 1;
      v31 = *(v30 + 2);
      if (v31 >= *(v30 + 3))
      {
        *&v29 = llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(v30, &v35).n128_u64[0];
      }

      else
      {
        v32 = *v30 + 24 * v31;
        v29 = *&v35;
        *v32 = v35;
        *(v32 + 16) = v36;
        ++*(v30 + 2);
      }
    }
  }

  return v29;
}

__n128 llvm::SmallVectorTemplateBase<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState,true>::growAndEmplaceBack<mlir::bytecode::detail::IRNumberingState::computeGlobalNumberingState(mlir::Operation *)::StackState>(unint64_t *a1, __int128 *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v2 = *(a1 + 2);
  v3 = *a1;
  v4 = &v10;
  if (v2 >= *(a1 + 3))
  {
    if (v3 <= &v10 && v3 + 24 * v2 > &v10)
    {
      v8 = &v10 - v3;
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v2 + 1, 24);
      a1 = v9;
      v3 = *v9;
      v4 = &v8[*v9];
    }

    else
    {
      v7 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v2 + 1, 24);
      a1 = v7;
      v3 = *v7;
      v4 = &v10;
    }
  }

  v5 = (v3 + 24 * *(a1 + 2));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 2);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::try_emplace<unsigned int const&>@<X0>(uint64_t a1@<X0>, llvm::hashing::detail **a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        *(v9 + 4) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v8 = v4 - 1;
  v9 = *a2;
  v10 = a2[1];
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 24 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 24 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 24 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 24 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 24 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 24 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL);
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1E096FB70;
        *(v17 + 24) = xmmword_1E096FB70;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              *(v23 + 4) = *(v22 + 4);
              ++*(a1 + 8);
            }

            v22 = (v22 + 24);
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = result + 24 * v10;
    do
    {
      *v12 = xmmword_1E096FB70;
      v12 += 24;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_25:
      v27 = result + 24 * v13;
      do
      {
        *v15 = xmmword_1E096FB70;
        v15 += 24;
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL);
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_1E096FB70;
      *(v25 + 24) = xmmword_1E096FB70;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 24 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & v6;
      v8 = (v5 + 24 * (v16 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v19 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a3;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(v17, a2, &v19);
    result = v17;
    a3 = v18;
    v8 = v19;
    ++*(v17 + 2);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 24 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x48)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFCLL));
      v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v18 = result;
      v19 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v18 = v17;
        v18[1] = xmmword_1E09701A0;
        v18[4] = xmmword_1E09701A0;
        v18[5] = xmmword_1E0970190;
        v18[2] = xmmword_1E0970190;
        v18[3] = v17;
        v18 += 6;
        v19 -= 4;
      }

      while (v19);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_16:
        if (v3)
        {
          v21 = v4;
          do
          {
            v29 = *v21;
            if ((*v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v30 = *(a1 + 16) - 1;
              v31 = v30 & ((v29 >> 4) ^ (v29 >> 9));
              v27 = (*a1 + 24 * v31);
              v32 = *v27;
              if (v29 != *v27)
              {
                v33 = 0;
                v34 = 1;
                while (v32 != -4096)
                {
                  if (v33)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v32 == -8192;
                  }

                  if (v35)
                  {
                    v33 = v27;
                  }

                  v36 = v31 + v34++;
                  v31 = v36 & v30;
                  v27 = (*a1 + 24 * (v36 & v30));
                  v32 = *v27;
                  if (v29 == *v27)
                  {
                    goto LABEL_26;
                  }
                }

                if (v33)
                {
                  v27 = v33;
                }
              }

LABEL_26:
              v28 = *v21;
              v27[2] = *(v21 + 2);
              *v27 = v28;
              ++*(a1 + 8);
            }

            v21 = (v21 + 24);
          }

          while (v21 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v20 = (result + 24 * v10);
    do
    {
      v12->i64[0] = -4096;
      v12->i64[1] = -4096;
      v12[1].i64[0] = 0;
      v12 = (v12 + 24);
    }

    while (v12 != v20);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x48)
    {
      v15 = result;
LABEL_21:
      v26 = (result + 24 * v13);
      do
      {
        v15->i64[0] = -4096;
        v15->i64[1] = -4096;
        v15[1].i64[0] = 0;
        v15 = (v15 + 24);
      }

      while (v15 != v26);
      return result;
    }

    v22 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v22 & 0x1FFFFFFFFFFFFFFCLL));
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = result;
    v25 = v22 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *v24 = v23;
      v24[1] = xmmword_1E09701A0;
      v24[4] = xmmword_1E09701A0;
      v24[5] = xmmword_1E0970190;
      v24[2] = xmmword_1E0970190;
      v24[3] = v23;
      v24 += 6;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[230];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::RegionBranchOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchOpInterface]";
  v6 = 79;
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*a2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
  LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v6 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 2);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 2);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

{
  v4 = *(result + 4);
  if (v4)
  {
    v5 = *result;
    v6 = HIDWORD(*a2);
    v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
    v8 = v4 - 1;
    v9 = v6 & (v4 - 1);
    v10 = (*result + 8 * v9);
    v11 = *v10;
    if (*a2 == *v10)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_10;
    }

    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = v10;
  v13 = *(result + 2);
  if (4 * v13 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v13 - *(result + 3) <= v4 >> 3)
  {
LABEL_24:
    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v13 = *(v18 + 8);
    v10 = v20;
  }

  *(result + 2) = v13 + 1;
  if (*v10 != -4096)
  {
    --*(result + 3);
  }

  *v10 = *a2;
  v5 = *result;
  v4 = *(result + 4);
  v12 = 1;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
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
        v9 = (v4 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

int64x2_t *llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = (result + 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL));
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          v10->i64[0] = -4096;
          v10 = (v10 + 8);
        }

        while (v10 != (result + 8 * v11));
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0x9DDFEA08EB382D69 * ((8 * *v19 - 0xAE502812AA7333) ^ HIDWORD(*v19));
          v30 = 0x9DDFEA08EB382D69 * (HIDWORD(v28) ^ (v29 >> 47) ^ v29);
          v31 = (-348639895 * ((v30 >> 47) ^ v30)) & v18;
          v27 = &result->i8[8 * v31];
          v32 = *v27;
          if (v28 != *v27)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v27;
              }

              v36 = v31 + v34++;
              v31 = v36 & v18;
              v27 = &result->i8[8 * (v36 & v18)];
              v32 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v33)
            {
              v27 = v33;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = (result + 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL));
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = (result + 8 * v20);
      do
      {
        v10->i64[0] = -4096;
        v10 = (v10 + 8);
      }

      while (v10 != v26);
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[254];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

char *mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, mlir::MLIRContext **a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::tensor::DimOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
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

uint64_t mlir::OperationState::addAttribute(mlir::Attribute *a1, size_t a2, size_t a3, uint64_t a4)
{
  Context = mlir::Attribute::getContext(a1);
  v12 = 261;
  v11[0] = a2;
  v11[1] = a3;
  v9 = mlir::StringAttr::get(Context, v11);
  mlir::NamedAttribute::NamedAttribute(v13, v9, a4);
  return mlir::NamedAttrList::push_back(a1 + 112, v13[0], v13[1]);
}

char *mlir::OpBuilder::create<mlir::memref::DeallocOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::DeallocOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::memref::DeallocOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *mlir::detail::TypedValue<mlir::ShapedType>::getType(uint64_t a1)
{
  result = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::bufferization::CloneOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v22[28] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::bufferization::CloneOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::bufferization::CloneOp,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  v9 = *a3;
  v10 = *(*a3 + 8);
  v17[0] = v9;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  v11 = v20;
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v22, v20 + 1, 8);
    v11 = v20;
  }

  *(v19 + 8 * v11) = v10 & 0xFFFFFFFFFFFFFFF8;
  ++v20;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::bufferization::CloneOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::detail::DenseArrayAttrImpl<int>::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int32_t>]";
  v38 = 91;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 = (v37 + v12 + v13);
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
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