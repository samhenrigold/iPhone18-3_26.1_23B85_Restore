void *anonymous namespace::BitcodeReader::getIdentifiedStructTypes@<X0>(void *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = this[234];
  v4 = this[235];
  if (v4 != v3)
  {
    std::vector<llvm::jitlink::Block *>::__vallocate[abi:nn200100](a2, (v4 - v3) >> 3);
  }

  return this;
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::BitcodeReader(llvm::BitstreamCursor,llvm::StringRef,llvm::StringRef,llvm::LLVMContext &)::$_0,std::allocator<anonymous namespace::BitcodeReader::BitcodeReader(llvm::BitstreamCursor,llvm::StringRef,llvm::StringRef,llvm::LLVMContext &)::$_0>,llvm::Expected<llvm::Value *> ()(unsigned int,llvm::BasicBlock *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFBD8;
  a2[1] = v2;
  return result;
}

void anonymous namespace::BitcodeReader::materializeValue(_anonymous_namespace_::BitcodeReader *this, void *a2, llvm::BasicBlock *a3, llvm::BasicBlock *a4)
{
  v4 = a3;
  v6 = this;
  v149 = *MEMORY[0x277D85DE8];
  v129 = a3;
  v7 = a2[89];
  if (((a2[90] - v7) >> 5) > a3)
  {
    v8 = *(v7 + 32 * a3 + 16);
    if (v8)
    {
      if (*(v8 + 16) != 255)
      {
        *(this + 8) &= ~1u;
        *this = v8;
        return;
      }
    }
  }

  v143 = 1;
  LODWORD(v144) = -1;
  v146 = -1;
  v147 = -1;
  v148 = -1;
  v9 = v142;
  v140 = v142;
  v141 = 0xC00000000;
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v140, a3);
  v10 = v141;
  if (v141)
  {
    v116 = (a4 + 40);
    do
    {
      while (1)
      {
        v11 = v140 + 4 * v10;
        v12 = *(v11 - 1);
        if ((llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(&v143, *(v11 - 1), &v130) & 1) == 0)
        {
          break;
        }

LABEL_12:
        LODWORD(v141) = --v10;
        if (!v10)
        {
          goto LABEL_178;
        }
      }

      v17 = a2[89];
      if (v12 >= ((a2[90] - v17) >> 5) || (v18 = *(v17 + 32 * v12 + 16)) == 0)
      {
        v130 = "Invalid value ID";
        v133 = 259;
      }

      if (*(v18 + 16) != 255)
      {
        LODWORD(v137) = v12;
        v138 = v18;
        llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(&v130, &v143, &v137, &v138);
        v10 = v141;
        goto LABEL_12;
      }

      v137 = v139;
      v138 = 0x600000000;
      v19 = *(v18 + 7);
      if (v19)
      {
        v20 = 4 * v19;
        do
        {
          v21 = *(v18 + v20 + 44);
          v130 = 0;
          v22 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(&v143, v21, &v130);
          v23 = v130;
          v24 = (v144 + 16 * v145);
          if (v143)
          {
            v24 = &v149;
          }

          if (v22)
          {
            v25 = v130 == v24;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v140, v21);
          }

          else
          {
            if (!v22)
            {
              v23 = v24;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v137, v23[1]);
          }

          v20 -= 4;
        }

        while (v20);
        v26 = v138;
        v27 = v137;
        if (v138 != *(v18 + 7))
        {
          v43 = 2;
          goto LABEL_95;
        }

        if (v138)
        {
          v28 = v137 + 8 * v138 - 8;
          if (v28 > v137)
          {
            v29 = v137 + 8;
            do
            {
              v30 = *(v29 - 1);
              *(v29 - 1) = *v28;
              *v28 = v30;
              v28 -= 8;
              v31 = v29 >= v28;
              v29 += 8;
            }

            while (!v31);
            v27 = v137;
          }
        }

        v134 = v136;
        v135 = 0x600000000;
        if (v26)
        {
          v32 = 8 * v26;
          do
          {
            v13 = *v27;
            if (*v27)
            {
              v33 = *(*v27 + 16) > 0x14u;
            }

            else
            {
              v33 = 1;
            }

            if (!v33)
            {
              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v134, v13);
            }

            ++v27;
            v32 -= 8;
          }

          while (v32);
        }
      }

      else
      {
        v134 = v136;
        v135 = 0x600000000;
      }

      v34 = *(v18 + 24);
      if (v34 <= 0xF9)
      {
        if (byte_2815AA2A0)
        {
          goto LABEL_51;
        }

        if (v34 - 13 > 0x11)
        {
          switch(v34)
          {
            case 0xCu:
              goto LABEL_51;
            case 0x39u:
              goto LABEL_51;
            case 0x22u:
              v48 = v18[5];
              v49 = *(v48 + 8);
              if (v49 == 19)
              {
                goto LABEL_51;
              }

              if (v49 == 21)
              {
                getTargetTypeInfo(v48);
                if (*(v50 + 8) == 19)
                {
                  goto LABEL_51;
                }
              }

              break;
          }
        }

        else if (((1 << v34) & 0x1FD4000) != 0)
        {
          goto LABEL_51;
        }
      }

      v35 = v135;
      if (v135 == v138)
      {
        v36 = *(v18 + 24);
        if ((v36 - 38) > 0xC)
        {
          if ((v36 - 13) > 0x11)
          {
            if (*(v18 + 24) > 0xF9u)
            {
              if (*(v18 + 24) > 0xFCu)
              {
                if (v36 == 253)
                {
                  Element = llvm::ConstantVector::get(v134, v135, v135);
                }

                else if (v36 == 254)
                {
                  Element = llvm::ConstantArray::get(*v18, v134, v135);
                }

                else
                {
                  Element = llvm::ConstantStruct::get(*v18, v134, v135);
                }
              }

              else
              {
                if (v36 == 250)
                {
                  if (*(*v134 + 16))
                  {
                    v82 = 0;
                  }

                  else
                  {
                    v82 = *v134;
                  }

                  __src = v82;
                  if (!v82)
                  {
                    v130 = "blockaddress operand must be a function";
                    v133 = 259;
                  }

                  v83 = v9;
                  v84 = *(v18 + 8);
                  if (!v84)
                  {
                    v130 = "Invalid ID";
                    v133 = 259;
                  }

                  if (*(v82 + 9) == (v82 + 72))
                  {
                    v103 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::FindAndConstruct((a2 + 202), &__src);
                    v105 = v103 + 1;
                    v104 = v103[1];
                    v106 = v103[2];
                    if (v104 == v106)
                    {
                      v107 = v103;
                      std::deque<llvm::jitlink::Block *>::push_back(a2 + 205, &__src);
                      v104 = v107[1];
                      v106 = v107[2];
                    }

                    v108 = (v84 + 1);
                    if (v108 > (v106 - v104) >> 3)
                    {
                      std::vector<llvm::BasicBlock *>::resize(v105, v108);
                      v104 = *v105;
                    }

                    v86 = *(v104 + 8 * v84);
                    if (!v86)
                    {
                      v109 = a2[53];
                      v133 = 257;
                      llvm::BasicBlock::Create(v109, &v130, 0, 0);
                    }
                  }

                  else
                  {
                    v85 = *(v82 + 10);
                    do
                    {
                      if (v85 == (v82 + 72))
                      {
                        v130 = "Invalid ID";
                        v133 = 259;
                      }

                      v85 = v85[1];
                      --v84;
                    }

                    while (v84);
                    if (v85)
                    {
                      v86 = (v85 - 3);
                    }

                    else
                    {
                      v86 = 0;
                    }
                  }

                  ShuffleVector = llvm::BlockAddress::get(v82, v86, v35);
                  v9 = v83;
                  goto LABEL_67;
                }

                if (v36 == 251)
                {
                  v65 = *v134;
                  if (!*v134 || v65[16] >= 4u)
                  {
                    v130 = "dso_local operand must be GlobalValue";
                    v133 = 259;
                  }

                  Element = llvm::DSOLocalEquivalent::get(v65, v13);
                }

                else
                {
                  v87 = *v134;
                  if (!*v134 || v87[16] >= 4u)
                  {
                    v130 = "no_cfi operand must be GlobalValue";
                    v133 = 259;
                  }

                  Element = llvm::NoCFIValue::get(v87, v13);
                }
              }
            }

            else if (*(v18 + 24) > 0x3Cu)
            {
              if (v36 == 61)
              {
                Element = llvm::ConstantExpr::getExtractElement(*v134, *(v134 + 1), 0, v14);
              }

              else
              {
                if (v36 != 62)
                {
                  v130 = v132;
                  v131 = 0x1000000000;
                  llvm::ShuffleVectorInst::getShuffleMask(*(v134 + 2), &v130, v135, v14);
                  ShuffleVector = llvm::ConstantExpr::getShuffleVector(*v134, *(v134 + 1), v130, v131, 0);
                  if (v130 != v132)
                  {
                    free(v130);
                  }

                  goto LABEL_67;
                }

                Element = llvm::ConstantExpr::getInsertElement(*v134, *(v134 + 1), *(v134 + 2), 0, v15);
              }
            }

            else if ((v36 - 53) >= 2)
            {
              LODWORD(v80) = *(v18 + 8);
              v81 = v80 != -1;
              if (v80 == -1)
              {
                v80 = 0;
              }

              else
              {
                v80 = v80;
              }

              Element = llvm::ConstantExpr::getGetElementPtr(v18[5], *v134, v134 + 1, v135 - 1, *(v18 + 25) != 0, v80 | (v81 << 32), 0);
            }

            else
            {
              Element = llvm::ConstantExpr::getCompare(*(v18 + 25), *v134, *(v134 + 1), 0, v15);
            }
          }

          else
          {
            Element = llvm::ConstantExpr::get(v36, *v134, *(v134 + 1), *(v18 + 25), 0, v16);
          }

LABEL_66:
          ShuffleVector = Element;
        }

        else
        {
          ShuffleVector = llvm::UpgradeBitCastExpr(v36, *v134, *v18, v14);
          if (!ShuffleVector)
          {
            Element = llvm::ConstantExpr::getCast(*(v18 + 24), *v134, *v18, 0);
            goto LABEL_66;
          }
        }

LABEL_67:
        llvm::ValueHandleBase::operator=((a2[89] + 32 * v12), ShuffleVector);
        LODWORD(__src) = v12;
        v122 = ShuffleVector;
        llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(&v130, &v143, &__src, &v122);
        LODWORD(v141) = v141 - 1;
        v43 = 2;
        goto LABEL_92;
      }

LABEL_51:
      if (!a4)
      {
        OpcodeName = llvm::Instruction::getOpcodeName(*(v18 + 24));
        if (*OpcodeName)
        {
          v130 = "Value referenced by initializer is an unsupported constant expression of type ";
          v132[0] = OpcodeName;
          v45 = 3;
        }

        else
        {
          v130 = "Value referenced by initializer is an unsupported constant expression of type ";
          v45 = 1;
        }

        LOBYTE(v133) = 3;
        HIBYTE(v133) = v45;
      }

      v117 = v9;
      v118 = v6;
      v39 = *(v18 + 24);
      if ((v39 - 38) > 0xC)
      {
        if (v39 == 12)
        {
          v46 = *v137;
          v130 = "constexpr";
          v133 = 259;
          v42 = llvm::UnaryOperator::Create(v39, v46, &v130, a4);
        }

        else
        {
          if ((v39 - 13) <= 0x11)
          {
            v51 = *v137;
            v52 = *(v137 + 1);
            v130 = "constexpr";
            v133 = 259;
            v53 = llvm::BinaryOperator::Create(v39, v51, v52, &v130, a4);
            v47 = v53;
            v54 = v53[16];
            HIDWORD(v56) = v54 - 41;
            LODWORD(v56) = v54 - 41;
            v55 = v56 >> 1;
            v33 = v55 > 6;
            v57 = (1 << v55) & 0x47;
            if (!v33 && v57 != 0)
            {
              v59 = *(v18 + 25);
              if ((v59 & 2) != 0)
              {
                v53[17] |= 4u;
                v59 = *(v18 + 25);
              }

              if (v59)
              {
                v53[17] |= 2u;
              }
            }

            v33 = v54 > 0x37;
            v60 = (1 << v54) & 0xC1800000000000;
            v61 = v33 || v60 == 0;
            if (v61 || (*(v18 + 25) & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_89:
            *(v47 + 17) |= 2u;
            goto LABEL_63;
          }

          if (*(v18 + 24) > 0x3Du)
          {
            if (*(v18 + 24) > 0xFDu)
            {
              v73 = llvm::PoisonValue::get(*v18, v13);
              v74 = v73;
              if (v138)
              {
                v75 = 0;
                v112 = v137;
                v76 = 8 * v138;
                do
                {
                  v114 = v112[v75];
                  LODWORD(__src) = v75;
                  v130 = "constexpr.ins";
                  v133 = 259;
                  v77 = operator new(0xA0uLL);
                  *(v77 + 21) = *(v77 + 21) & 0x38000000 | 2;
                  *(v77 + 1) = 0;
                  *(v77 + 2) = 0;
                  *v77 = 0;
                  *(v77 + 5) = 0;
                  *(v77 + 6) = 0;
                  *(v77 + 4) = 0;
                  *(v77 + 8) = *v74;
                  v47 = v77 + 64;
                  *(v77 + 21) = 2;
                  *(v77 + 3) = v77 + 64;
                  *(v77 + 7) = v77 + 64;
                  *(v77 + 9) = 0;
                  v77[80] = 93;
                  v77[81] = 0;
                  *(v77 + 41) = 0;
                  *(v77 + 30) = 0;
                  *(v77 + 104) = 0u;
                  *(v77 + 88) = 0u;
                  v78 = v77 + 88;
                  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v116, (v77 + 64));
                  v79 = *v116;
                  v47[4] = v116;
                  *v78 = v79;
                  *(v79 + 8) = v78;
                  *v116 = v78;
                  v47[8] = v47 + 10;
                  v47[9] = 0x400000000;
                  llvm::InsertValueInst::init(v47, v74, v114, &__src, 1, &v130);
                  ++v75;
                  v74 = v47;
                  v76 -= 8;
                }

                while (v76);
              }

              else
              {
                v47 = v73;
              }

              goto LABEL_63;
            }

            if (v39 != 62)
            {
              if (v39 == 63)
              {
                v66 = operator new(0xA8uLL);
                v47 = v66 + 64;
                *(v66 + 21) = *(v66 + 21) & 0x38000000 | 2;
                *v66 = 0;
                *(v66 + 1) = 0;
                *(v66 + 2) = 0;
                *(v66 + 3) = v66 + 64;
                *(v66 + 4) = 0;
                *(v66 + 5) = 0;
                *(v66 + 6) = 0;
                *(v66 + 7) = v66 + 64;
                v67 = *v137;
                v68 = *(v137 + 1);
                v69 = *(v137 + 2);
                v130 = "constexpr";
                v133 = 259;
                llvm::ShuffleVectorInst::ShuffleVectorInst((v66 + 64), v67, v68, v69, &v130, a4);
              }

              else
              {
                *v115 = ***v18;
                v93 = llvm::PoisonValue::get(*v18, v13);
                v94 = v93;
                if (v138)
                {
                  v95 = 0;
                  v96 = v137;
                  v113 = (v137 + 8 * v138);
                  do
                  {
                    v97 = llvm::ConstantInt::get((*v115 + 1992), v95, 0);
                    v98 = *v96;
                    v130 = "constexpr.ins";
                    v133 = 259;
                    v99 = operator new(0xA0uLL);
                    v47 = v99 + 96;
                    *(v99 + 29) = *(v99 + 29) & 0x38000000 | 3;
                    v100 = 96;
                    do
                    {
                      *v99 = 0;
                      *(v99 + 1) = 0;
                      *(v99 + 2) = 0;
                      *(v99 + 3) = v47;
                      v99 += 32;
                      v100 -= 32;
                    }

                    while (v100);
                    llvm::InsertElementInst::InsertElementInst(v47, v94, v98, v97, &v130, a4);
                    v95 = (v95 + 1);
                    ++v96;
                    v94 = v47;
                  }

                  while (v96 != v113);
                }

                else
                {
                  v47 = v93;
                }
              }

              goto LABEL_63;
            }

            v90 = *v137;
            v91 = *(v137 + 1);
            v92 = *(v137 + 2);
            v130 = "constexpr";
            v133 = 259;
            v42 = llvm::InsertElementInst::Create(v90, v91, v92, &v130, a4, v16);
          }

          else if (*(v18 + 24) > 0x38u)
          {
            if (v39 == 57)
            {
              v70 = *v137;
              v71 = *(v137 + 1);
              v72 = *(v137 + 2);
              v130 = "constexpr";
              v133 = 259;
              v42 = llvm::SelectInst::Create(v70, v71, v72, &v130, a4, v16);
            }

            else
            {
              v101 = *v137;
              v102 = *(v137 + 1);
              v130 = "constexpr";
              v133 = 259;
              v42 = llvm::ExtractElementInst::Create(v101, v102, &v130, a4, v15);
            }
          }

          else
          {
            if ((v39 - 53) >= 2)
            {
              v88 = v18[5];
              v89 = *v137;
              v130 = "constexpr";
              v133 = 259;
              v47 = llvm::GetElementPtrInst::Create(v88, v89, (v137 + 8), v138 - 1, &v130, a4);
              if (!*(v18 + 25))
              {
                goto LABEL_63;
              }

              goto LABEL_89;
            }

            v62 = *(v18 + 25);
            v63 = *v137;
            v64 = *(v137 + 1);
            v130 = "constexpr";
            v133 = 259;
            v42 = llvm::CmpInst::Create(v39, v62, v63, v64, &v130, a4);
          }
        }
      }

      else
      {
        v40 = *v137;
        v41 = *v18;
        v130 = "constexpr";
        v133 = 259;
        v42 = llvm::CastInst::Create(v39, v40, v41, &v130, a4);
      }

      v47 = v42;
LABEL_63:
      LODWORD(__src) = v12;
      v122 = v47;
      llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(&v130, &v143, &__src, &v122);
      v43 = 0;
      LODWORD(v141) = v141 - 1;
      v9 = v117;
      v6 = v118;
LABEL_92:
      if (v134 != v136)
      {
        free(v134);
      }

      v27 = v137;
LABEL_95:
      if (v27 != v139)
      {
        free(v27);
      }

      if ((v43 | 2) != 2)
      {
        goto LABEL_183;
      }

      v10 = v141;
    }

    while (v141);
  }

LABEL_178:
  v130 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(&v143, v4, &v130))
  {
    v110 = *(v130 + 1);
  }

  else
  {
    inserted = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::InsertIntoBucketImpl<unsigned int>(&v143, &v129, v130);
    v110 = 0;
    *inserted = v4;
    *(inserted + 1) = 0;
  }

  *(v6 + 8) &= ~1u;
  *v6 = v110;
LABEL_183:
  if (v140 != v9)
  {
    free(v140);
  }

  if ((v143 & 1) == 0)
  {
    MEMORY[0x277C69E30](v144, 8);
  }
}

void anonymous namespace::BitcodeReaderBase::error(_anonymous_namespace_::BitcodeReaderBase *this, const llvm::Twine *a2, llvm::Twine *a3)
{
  llvm::Twine::str(a3, &v24);
  v5 = *(a2 + 415);
  if (v5 < 0)
  {
    v5 = *(a2 + 50);
  }

  if (v5)
  {
    std::operator+<char>();
    v6 = std::string::append(&v21, "' Reader: 'LLVM ");
    v7 = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    llvm::AppleInternalGetFullBitcodeVersionString(v19);
    if ((v20 & 0x80u) == 0)
    {
      v8 = v19;
    }

    else
    {
      v8 = v19[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v9 = v20;
    }

    else
    {
      v9 = v19[1];
    }

    v10 = std::string::append(&v22, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v23, "')");
    v13 = v12->__r_.__value_.__r.__words[2];
    *__p = *&v12->__r_.__value_.__l.__data_;
    v17 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v17 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if (v17 >= 0)
    {
      v15 = HIBYTE(v17);
    }

    else
    {
      v15 = __p[1];
    }

    v4 = std::string::append(&v24, v14, v15);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v18 = 260;
  __p[0] = &v24;
  llvm::BitcodeErrorCategory(v4);
  operator new();
}

void std::vector<llvm::BasicBlock *>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1, v10);
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

llvm::InsertElementInst *llvm::InsertElementInst::Create(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, const char **a4, const llvm::Twine *a5, llvm::BasicBlock *a6)
{
  v11 = operator new(0xA0uLL);
  v12 = (v11 + 24);
  v11[29] = v11[29] & 0x38000000 | 3;
  v13 = 96;
  do
  {
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = v12;
    v11 += 8;
    v13 -= 32;
  }

  while (v13);

  return llvm::InsertElementInst::InsertElementInst(v12, this, a2, a3, a4, a5);
}

void *llvm::GetElementPtrInst::Create(llvm::GetElementPtrInst *TypeAtIndex, uint64_t *a2, llvm::Value *a3, uint64_t a4, const char **a5, uint64_t a6)
{
  v12 = a4 + 1;
  v13 = llvm::User::operator new(0x50, a4 + 1);
  llvm::GetElementPtrInst::getGEPReturnType(TypeAtIndex, a2, a3, a4);
  *v13 = v14;
  v13[1] = 0;
  v15 = *(v13 + 5) & 0xC0000000 | v12 & 0x7FFFFFF;
  *(v13 + 4) = 62;
  *(v13 + 5) = v15;
  *(v13 + 5) = 0u;
  *(v13 + 14) = 0;
  *(v13 + 3) = 0u;
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList((a6 + 40), v13);
  v18 = *(a6 + 40);
  v13[4] = a6 + 40;
  v13[3] = v18;
  *(v18 + 8) = v13 + 3;
  *(a6 + 40) = v13 + 3;
  v13[8] = TypeAtIndex;
  if (a4)
  {
    v19 = (a3 + 8);
    v20 = 8 * a4 - 8;
    do
    {
      if (!v20)
      {
        break;
      }

      v21 = *v19++;
      TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v21, v16, v17);
      v20 -= 8;
    }

    while (TypeAtIndex);
  }

  v13[9] = TypeAtIndex;
  llvm::GetElementPtrInst::init(v13, a2, a3, a4, a5);
  return v13;
}

llvm::Value *llvm::SelectInst::Create(llvm::SelectInst *this, llvm::Value *a2, llvm::Value *a3, const char **a4, const llvm::Twine *a5, llvm::BasicBlock *a6)
{
  v11 = operator new(0xA0uLL);
  v12 = (v11 + 96);
  *(v11 + 29) = *(v11 + 29) & 0x38000000 | 3;
  v13 = 96;
  v14 = v11;
  do
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = v12;
    v14 += 4;
    v13 -= 32;
  }

  while (v13);
  *(v11 + 120) = 0u;
  v15 = v11 + 120;
  *(v11 + 12) = *a2;
  *(v11 + 13) = 0;
  v16 = *(v11 + 29) & 0xC0000000 | 3;
  *(v11 + 28) = 85;
  *(v11 + 29) = v16;
  *(v11 + 136) = 0u;
  *(v11 + 38) = 0;
  llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(a5 + 5, v12);
  v17 = *(a5 + 5);
  *v15 = v17;
  v15[1] = a5 + 40;
  *(v17 + 8) = v15;
  *(a5 + 5) = v15;
  llvm::SelectInst::init(v12, this, a2, a3);
  llvm::Value::setName(v12, a4);
  return v12;
}

llvm::ExtractElementInst *llvm::ExtractElementInst::Create(llvm::ExtractElementInst *this, llvm::Value *a2, const char **a3, const llvm::Twine *a4, llvm::BasicBlock *a5)
{
  v9 = operator new(0x80uLL);
  v9[21] = v9[21] & 0x38000000 | 2;
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = v9 + 16;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = v9 + 16;
  v10 = (v9 + 16);

  return llvm::ExtractElementInst::ExtractElementInst(v10, this, a2, a3, a4);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, void *a3)
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
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & (37 * a2);
  v7 = (v3 + 16 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -1)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 16 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::try_emplace<llvm::Value *>(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v16 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(a2, *a3, &v16);
  v9 = v16;
  if (result)
  {
    v10 = a2 + 8;
    if (*a2)
    {
      v11 = 4;
    }

    else
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
    }

    v14 = 0;
    v15 = v10 + 16 * v11;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::InsertIntoBucketImpl<unsigned int>(a2, a3, v16);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v12 = a2 + 8;
    if (*a2)
    {
      v13 = 4;
    }

    else
    {
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
    }

    v15 = v12 + 16 * v13;
    v14 = 1;
  }

  *a1 = v9;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::InsertIntoBucketImpl<unsigned int>(_DWORD *a1, int *a2, _DWORD *a3)
{
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(a1, *a2, &v8);
  a3 = v8;
LABEL_6:
  *a1 += 2;
  if (*a3 != -1)
  {
    --a1[1];
  }

  return a3;
}

int *llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::grow(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      *(a1 + 8) = operator new(16 * a2, 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::moveFromOldBuckets(a1, v6, v6 + 16 * v7);

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v14;
  do
  {
    v10 = *(a1 + v8 + 8);
    if (v10 <= 0xFFFFFFFD)
    {
      *v9 = v10;
      *(v9 + 1) = *(a1 + v8 + 16);
      v9 += 16;
    }

    v8 += 16;
  }

  while (v8 != 64);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(16 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::moveFromOldBuckets(int *result, uint64_t a2, uint64_t a3)
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
      goto LABEL_17;
    }

    v8 = *(result + 1);
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 8;
  do
  {
    v14 = vdupq_n_s64(v10);
    v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2750C1210)));
    if (vuzp1_s16(v15, *v12.i8).u8[0])
    {
      *(v13 - 8) = -1;
    }

    if (vuzp1_s16(v15, *&v12).i8[2])
    {
      *(v13 - 4) = -1;
    }

    if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_2750C1830)))).i32[1])
    {
      *v13 = -1;
      v13[4] = -1;
    }

    v10 += 4;
    v13 += 16;
  }

  while (((v11 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v10);
LABEL_17:
  while (a2 != a3)
  {
    v16 = *a2;
    if (*a2 <= 0xFFFFFFFD)
    {
      v18 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::Value *,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>,unsigned int,llvm::Value *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::Value *>>::LookupBucketFor<unsigned int>(v5, v16, &v18);
      v17 = v18;
      *v18 = *a2;
      *(v17 + 1) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 16;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::grow(a1, v7);
    v8 = 0;
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t std::__function::__value_func<llvm::Expected<llvm::Value *> ()(unsigned int,llvm::BasicBlock *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__base_destruct_at_end[abi:nn200100](uint64_t result, llvm::ValueHandleBase *a2)
{
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *(v4 - 2);
    v4 = (v4 - 32);
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v4);
    }
  }

  *(result + 8) = a2;
}

void std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::BitstreamBlockInfo::BlockInfo>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::BitstreamBlockInfo::BlockInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 24);
      std::vector<std::pair<unsigned int,std::string>>::__destroy_vector::operator()[abi:nn200100](&v4);
      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 48));
      }

      v4 = (v3 - 72);
      std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v4);
      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void std::vector<std::pair<unsigned int,std::string>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<unsigned int,std::string>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<unsigned int,std::string>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void anonymous namespace::BitcodeReader::parseFunctionBody(_anonymous_namespace_::BitcodeReader *this, llvm::Function *a2, uint64_t ***a3)
{
  v844[12] = *MEMORY[0x277D85DE8];
  v810 = a3;
  llvm::BitstreamCursor::EnterSubBlock(this, (a2 + 32), 0, 12);
  if (*this)
  {
    return;
  }

  v6 = *(a2 + 97);
  if (*(v6 + 24) >= 2u)
  {
    v834 = "Invalid function metadata: incoming forward references";
    v836[8] = 259;
  }

  *(a2 + 212) = 0;
  v7 = (a2 + 712);
  v790 = *(a2 + 90) - *(a2 + 89);
  v791 = *(v6 + 8);
  v8 = *(llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>,llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::FindAndConstruct(a2 + 592, &v810) + 8);
  v9 = llvm::Function::args(a3);
  if (v9 != v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = 1;
    do
    {
      llvm::BitcodeReaderValueList::push_back(a2 + 89, v11, ContainedTypeID);
      v11 = (v11 + 40);
      ++v13;
    }

    while (v11 != v12);
  }

  v15 = *(a2 + 90);
  v16 = *(a2 + 89);
  v809 = 0;
  v808 = 0;
  v837 = 1;
  v838 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v840 = v838;
  v17 = v844;
  v839 = v838;
  v841 = v838;
  v842 = v844;
  v18 = v836;
  v843 = 0x400000000;
  v806[2] = a2;
  v807 = 0;
  v806[0] = &v809;
  v806[1] = &v808;
  v792 = (a2 + 1488);
  v803 = 0;
  v804 = 0;
  v805 = 0;
  v834 = v836;
  *v793 = (v15 - v16) >> 5;
  *v835 = 0x4000000000;
  while (2)
  {
    llvm::BitstreamCursor::advance(&v832, a2 + 4, 0);
    if (v833)
    {
      v20 = v832;
      v832 = 0;
      *this = v20;
LABEL_10:
      v21 = 1;
      goto LABEL_11;
    }

    v19 = HIDWORD(v832);
    switch(v832)
    {
      case 2:
        if (SHIDWORD(v832) <= 14)
        {
          if (HIDWORD(v832) == 11)
          {
            if (!*this)
            {
              *v793 = (*(a2 + 90) - *(a2 + 89)) >> 5;
              v21 = 4;
              goto LABEL_11;
            }

            goto LABEL_10;
          }

          if (HIDWORD(v832) == 14)
          {
            goto LABEL_40;
          }
        }

        else
        {
          switch(HIDWORD(v832))
          {
            case 0xF:
              llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(*(a2 + 97), 0, this);
              goto LABEL_40;
            case 0x10:
              llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataAttachment(*(a2 + 97), v810, *(a2 + 105), this);
              goto LABEL_40;
            case 0x12:
              goto LABEL_40;
          }
        }

        llvm::BitstreamCursor::SkipBlock(this, (a2 + 32));
LABEL_40:
        if (*this)
        {
          v21 = 1;
        }

        else
        {
          v21 = 4;
        }

        goto LABEL_11;
      case 1:
        v21 = 7;
        goto LABEL_11;
      case 0:
        v822 = "Malformed block";
        v826 = 259;
    }

    v835[0] = 0;
    VirtualTypeID = -1;
    llvm::BitstreamCursor::readRecord(&v830, (a2 + 32), SHIDWORD(v832), &v834, 0);
    if (v831)
    {
      v24 = v830;
      v830 = 0;
      *this = v24;
      v21 = 1;
      goto LABEL_796;
    }

    v25 = v830;
    switch(v830)
    {
      case 1:
        if (!v835[0] || !*v834)
        {
          goto LABEL_352;
        }

        v774 = v18;
        std::vector<llvm::BasicBlock *>::resize(v792, *v834);
        v207 = v810;
        v208 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::find(a2 + 1616, v810);
        if (*(a2 + 202) + 32 * *(a2 + 408) == v208)
        {
          if (*(a2 + 186) != *(a2 + 187))
          {
            v826 = 257;
            operator new();
          }
        }

        else
        {
          v209 = v208;
          v210 = *(v208 + 16) - *(v208 + 8);
          v211 = *(a2 + 187) - *(a2 + 186);
          if (v210 >> 3 > (v211 >> 3))
          {
            v822 = "Invalid ID";
            v826 = 259;
          }

          v786 = v7;
          *v754 = v17;
          if ((v211 & 0x7FFFFFFF8) != 0)
          {
            v501 = 0;
            v502 = (v210 >> 3);
            v503 = (v211 >> 3);
            v504 = (v207 + 72);
            do
            {
              if (v501 >= v502 || (v505 = v209[1], (v506 = *(v505 + 8 * v501)) == 0))
              {
                v509 = *(a2 + 53);
                v826 = 257;
                llvm::BasicBlock::Create(v509, &v822, v207, 0);
              }

              llvm::SymbolTableListTraits<llvm::BasicBlock>::addNodeToList(v207 + 72, *(v505 + 8 * v501));
              v507 = *v504;
              *(v506 + 24) = *v504;
              *(v506 + 32) = v504;
              v508 = v506 + 24;
              *(v507 + 8) = v508;
              *v504 = v508;
              *(*v792 + 8 * v501) = *(v209[1] + 8 * v501);
              ++v501;
            }

            while (v503 != v501);
          }

          llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::erase(a2 + 202, v209);
          v17 = *v754;
          v7 = v786;
        }

        v809 = **v792;
        v21 = 4;
        v18 = v774;
        goto LABEL_796;
      case 2:
        v212 = v18;
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        v222 = DecodedBinaryOpcode;
        v826 = 257;
        v223 = llvm::BinaryOperator::Create(DecodedBinaryOpcode, v214, v220, &v822, 0);
        VirtualTypeID = v215;
        v224 = v223;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v223);
        if (v835[0] <= v219)
        {
          goto LABEL_989;
        }

        HIDWORD(v226) = v222 - 13;
        LODWORD(v226) = v222 - 13;
        v225 = v226 >> 1;
        if (v225 <= 6 && ((1 << v225) & 0x47) != 0)
        {
          v18 = v212;
          v227 = v834;
          v228 = *(v834 + v219);
          v121 = v224;
          if ((v228 & 2) != 0)
          {
            *(v224 + 17) |= 4u;
            v228 = v227[v219];
          }

          if (v228)
          {
            *(v224 + 17) |= 2u;
          }

          v21 = 9;
          goto LABEL_790;
        }

        if (v222 <= 0x1B && ((1 << v222) & 0xC180000) != 0)
        {
          if ((*(v834 + v219) & 1) == 0)
          {
LABEL_989:
            v21 = 9;
            v18 = v212;
            v121 = v224;
            goto LABEL_790;
          }

          v661 = *(v224 + 17) | 2;
        }

        else
        {
          if (!llvm::FPMathOperator::classof(v224))
          {
            goto LABEL_989;
          }

          v693 = *(v834 + v219) & 0x7E | (*(v834 + v219) >> 7) & 1 | -(*(v834 + v219) & 1);
          if (!v693)
          {
            goto LABEL_989;
          }

          v661 = *(v224 + 17) | (2 * v693);
        }

        *(v224 + 17) = v661;
        v21 = 9;
        v18 = v212;
        v121 = v224;
        goto LABEL_790;
      case 3:
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v795[0] = 0;
        {
          goto LABEL_788;
        }

        v246 = v811;
        if (v835[0] != v811 + 2)
        {
          goto LABEL_788;
        }

        v247 = v18;
        v248 = *(v834 + v811);
        VirtualTypeID = v248;
        DecodedCastOpcode = getDecodedCastOpcode(*(v834 + (v246 + 1)));
        v252 = DecodedCastOpcode == -1 || TypeByID == 0;
        if (!v252)
        {
          v477 = DecodedCastOpcode;
          *v753 = v17;
          v815 = 0;
          v478 = __p.n128_u64[0];
          v479 = llvm::UpgradeBitCastInst(DecodedCastOpcode, __p.n128_u64[0], TypeByID, &v815, v251);
          if (v479)
          {
            v480 = v479;
            v481 = v815;
            if (v815)
            {
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v815);
              v482 = v809;
              v483 = v809 + 40;
              llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v809 + 5, v481);
              v484 = *(v482 + 5);
              *(v481 + 3) = v484;
              *(v481 + 4) = v483;
              v485 = v481 + 24;
              *(v484 + 8) = v485;
              *(v482 + 5) = v485;
            }

            v18 = v247;
            v121 = v480;
          }

          else
          {
            if (!llvm::CastInst::castIsValid(v477, *v478, TypeByID))
            {
              v822 = "Invalid cast";
              v826 = 259;
            }

            v826 = 257;
            v121 = llvm::CastInst::Create(v477, v478, TypeByID, &v822, 0);
            v18 = v247;
          }

          v17 = *v753;
LABEL_209:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
          v21 = 9;
          goto LABEL_790;
        }

LABEL_304:
        v253 = "Invalid record";
        goto LABEL_305;
      case 4:
      case 30:
      case 43:
        v26 = v18;
        v795[0] = 0;
        if (v830 == 43)
        {
          v27 = *v834 != 0;
          v795[0] = 2;
          LODWORD(v28) = *(v834 + 2);
        }

        else
        {
          v29 = 0;
          v27 = v830 == 30;
          LODWORD(v28) = -1;
        }

        v815 = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        if (v29)
        {
          v55 = v815;
          v56 = *v815;
          if ((*(*v815 + 8) & 0xFE) == 0x12)
          {
            v56 = **(v56 + 16);
          }

          v57 = &v824;
          v58 = *(v56 + 24);
          if (v58 && v58 != v29)
          {
            v822 = "Explicit gep type does not match pointee type of pointer operand";
            v826 = 259;
          }
        }

        else
        {
          v55 = v815;
          if ((*(*v815 + 8) & 0xFE) == 0x12)
          {
          }

          v57 = &v824;
        }

        v822 = &v824;
        v823 = 0x1000000000;
        if (v835[0] == v795[0])
        {
          v762 = v27;
          *v750 = v17;
          v297 = 0;
        }

        else
        {
          do
          {
            v811 = 0;
            v798[0] = 0;
            {
              __p.n128_u64[0] = "Invalid record";
              v821 = 259;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, v811);
          }

          while (v835[0] != v795[0]);
          v762 = v27;
          *v750 = v17;
          v57 = v822;
          v297 = v823;
        }

        v821 = 257;
        v298 = llvm::GetElementPtrInst::Create(v29, v55, v57, v297, &__p, 0);
        v300 = v298;
        VirtualTypeID = v28;
        v301 = *(v298 + 5);
        v18 = v26;
        v302 = v298;
        if ((v301 & 0x7FFFFFF) != 1)
        {
          v303 = 24;
          if (*(v298 + 16) == 62)
          {
            v303 = 64;
          }

          if ((v301 & 0x40000000) != 0)
          {
            v304 = *(v298 - 1);
          }

          else
          {
            v304 = v298 - 32 * (v301 & 0x7FFFFFF);
          }

          std::next[abi:nn200100]<llvm::generic_gep_type_iterator<llvm::Use const*>,0>((v304 + 32), *(v298 + v303) | 4, 1, v299);
          __p.n128_u64[0] = v419;
          __p.n128_u64[1] = v420;
          v421 = v300[5];
          if ((v421 & 0x40000000) != 0)
          {
            v423 = *(v300 - 1);
            v422 = v421 & 0x7FFFFFF;
          }

          else
          {
            v422 = v421 & 0x7FFFFFF;
            v423 = &v300[-8 * v422];
          }

          if (v422 != 2)
          {
            v424 = v423 + 16;
            v425 = 32 * v422 - 64;
            do
            {
              if ((__p.n128_u8[8] & 4) != 0)
              {
                v428 = 0;
              }

              else
              {
                SplatValue = *v424;
                if ((*(**v424 + 8) & 0xFE) == 0x12)
                {
                  SplatValue = llvm::Constant::getSplatValue(SplatValue, 0, v417, v418);
                }

                v427 = SplatValue + 6;
                if (SplatValue[8] >= 0x41u)
                {
                  v427 = *v427;
                }

                v428 = *v427;
              }

              llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(&__p, v429, v430, v431);
              v424 += 8;
              v425 -= 32;
            }

            while (v425);
          }

          v300 = v302;
        }

        v432 = *v300;
        if ((*(*v300 + 8) & 0xFE) == 0x12)
        {
          v432 = **(v432 + 16);
        }

        if ((*(*v302 + 8) & 0xFE) == 0x12)
        {
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v302);
        if (v762)
        {
          *(v302 + 17) |= 2u;
        }

        v21 = 9;
        v121 = v302;
        v17 = *v750;
        v581 = v822;
        v433 = &v824;
        goto LABEL_901;
      case 5:
        v165 = v17;
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        v166 = **(a2 + 53);
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        v179 = v178;
        v180 = v169;
        v826 = 257;
        v181 = operator new(0xA0uLL);
        v121 = (v181 + 24);
        v181[29] = v181[29] & 0x38000000 | 3;
        v182 = 96;
        do
        {
          *v181 = 0;
          *(v181 + 1) = 0;
          *(v181 + 2) = 0;
          *(v181 + 3) = v121;
          v181 += 8;
          v182 -= 32;
        }

        while (v182);
        llvm::SelectInst::SelectInst(v121, v179, v168, v173, &v822, 0);
        VirtualTypeID = v180;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
        v21 = 9;
        v17 = v165;
        goto LABEL_790;
      case 6:
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v815 = 0;
        v795[0] = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        if ((*(*__p.n128_u64[0] + 8) & 0xFE) == 0x12)
        {
          v826 = 257;
          v121 = llvm::ExtractElementInst::Create(__p.n128_u64[0], v815, &v822, v254, v255);
LABEL_358:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
LABEL_359:
          v21 = 9;
          goto LABEL_790;
        }

        v340 = "Invalid type for value";
        goto LABEL_434;
      case 7:
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v815 = 0;
        v795[0] = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v191 = __p.n128_u64[0];
        if ((*(*__p.n128_u64[0] + 8) & 0xFE) == 0x12)
        {
          v192 = v18;
          v193 = *(*__p.n128_u64[0] + 24);
          v194 = v795[0];
          v196 = v811;
          {
            v822 = "Invalid record";
            v826 = 259;
          }

          v826 = 257;
          v121 = llvm::InsertElementInst::Create(v191, v200, v815, &v822, v201, v202);
          VirtualTypeID = v194;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
          v21 = 9;
          v18 = v192;
          goto LABEL_790;
        }

        v104 = "Invalid type for value";
        goto LABEL_789;
      case 8:
        v63 = v18;
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v815 = 0;
        v795[0] = 0;
        {
          goto LABEL_304;
        }

        v229 = v811;
        if (v835[0] == v811)
        {
          goto LABEL_304;
        }

        v230 = __p.n128_u64[0];
        v231 = v795[0];
        v232 = *(v834 + v811);
        v233 = *(a2 + 1712) ? v793[0] - v232 : v232;
        if (!v234)
        {
          goto LABEL_304;
        }

        v235 = v234;
        LODWORD(v811) = v229 + 1;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_304;
        }

        if ((*(*v230 + 8) & 0xFE) != 0x12 || (*(*v235 + 8) & 0xFE) != 0x12)
        {
          v253 = "Invalid type for value";
LABEL_305:
          v822 = v253;
          v826 = 259;
        }

        v236 = v17;
        v237 = operator new(0xA8uLL);
        v237[21] = v237[21] & 0x38000000 | 2;
        *v237 = 0;
        *(v237 + 1) = 0;
        *(v237 + 2) = 0;
        *(v237 + 3) = v237 + 16;
        *(v237 + 4) = 0;
        *(v237 + 5) = 0;
        *(v237 + 6) = 0;
        *(v237 + 7) = v237 + 16;
        v826 = 257;
        v238 = v235;
        v121 = (v237 + 16);
        llvm::ShuffleVectorInst::ShuffleVectorInst((v237 + 16), v230, v238, v815, &v822, 0);
        v239 = *(v237 + 8);
        v17 = v236;
        goto LABEL_785;
      case 9:
      case 28:
        v38 = v18;
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          goto LABEL_741;
        }

        v39 = v815;
        if (v835[0] == v815)
        {
          goto LABEL_741;
        }

        v40 = __p.n128_u64[0];
        v41 = *(v834 + v815);
        v42 = *(a2 + 1712) ? v793[0] - v41 : v41;
        if (!v43)
        {
          goto LABEL_741;
        }

        v44 = v39 + 1;
        if (v835[0] > (v39 + 1))
        {
          v45 = v43;
          v46 = *v40;
          v47 = *(*v40 + 2);
          LOBYTE(v48) = v47;
          if ((v47 & 0xFE) == 0x12)
          {
            v48 = *(**(v46 + 2) + 8);
          }

          v49 = *(v834 + v44);
          if ((v48 < 4u || v48 == 5 || (v48 & 0xFD) == 4) && v835[0] > (v39 + 2))
          {
            LODWORD(v815) = v39 + 2;
            v50 = *(v834 + (v39 + 2)) & 0x7E | (*(v834 + (v39 + 2)) >> 7) & 1 | -(*(v834 + (v39 + 2)) & 1);
            v44 = v39 + 2;
          }

          else
          {
            v50 = 0;
          }

          if (v835[0] == v44 + 1)
          {
            if ((v47 & 0xFE) == 0x12)
            {
              v47 = *(**(v46 + 2) + 8);
            }

            if (v47 < 4u || v47 == 5 || (v47 & 0xFD) == 4)
            {
              v519 = operator new(0x80uLL);
              v519[21] = v519[21] & 0x38000000 | 2;
              v520 = (v519 + 16);
              *v519 = 0;
              *(v519 + 1) = 0;
              *(v519 + 2) = 0;
              *(v519 + 3) = v519 + 16;
              *(v519 + 4) = 0;
              *(v519 + 5) = 0;
              *(v519 + 6) = 0;
              *(v519 + 7) = v519 + 16;
              v826 = 257;
              llvm::FCmpInst::FCmpInst(v519 + 32, v49, v40, v45, &v822);
            }

            else
            {
              v633 = operator new(0x80uLL);
              v633[21] = v633[21] & 0x38000000 | 2;
              v520 = (v633 + 16);
              *v633 = 0;
              *(v633 + 1) = 0;
              *(v633 + 2) = 0;
              *(v633 + 3) = v633 + 16;
              *(v633 + 4) = 0;
              *(v633 + 5) = 0;
              *(v633 + 6) = 0;
              *(v633 + 7) = v633 + 16;
              v826 = 257;
              llvm::ICmpInst::ICmpInst(v633 + 32, v49, v40, v45, &v822);
            }

            v521 = *v520;
            v18 = v38;
            v121 = v520;
            if ((*(*v520 + 8) & 0xFE) == 0x12)
            {
              v521 = **(v521 + 16);
            }

            if ((*(*v40 + 2) & 0xFE) == 0x12)
            {
            }

            if (v50)
            {
              v520[17] |= 2 * v50;
            }

            goto LABEL_209;
          }

          goto LABEL_741;
        }

        v447 = "Invalid record: operand number exceeded available operands";
        goto LABEL_633;
      case 10:
        if (!v835[0])
        {
          v121 = llvm::ReturnInst::Create(*(a2 + 53), 0, v23);
LABEL_409:
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
          goto LABEL_791;
        }

        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          goto LABEL_433;
        }

        v121 = llvm::ReturnInst::Create(*(a2 + 53), __p.n128_u64[0], v160);
        goto LABEL_358;
      case 11:
        if ((v835[0] | 2) != 3)
        {
          goto LABEL_352;
        }

        v268 = *v834;
        v269 = *(a2 + 186);
        v270 = (*(a2 + 187) - v269) >> 3;
        if (v270 <= v268)
        {
          goto LABEL_397;
        }

        v271 = *(v269 + 8 * v268);
        if (!v271)
        {
          goto LABEL_397;
        }

        if (v835[0] == 1)
        {
          v157 = llvm::BranchInst::Create(*(v269 + 8 * v268), v19, v23);
LABEL_693:
          v121 = v157;
        }

        else
        {
          v512 = v18;
          v513 = *(v834 + 2);
          if (v270 <= v513)
          {
            v514 = 0;
          }

          else
          {
            v514 = *(v269 + 8 * v513);
          }

          v541 = **(a2 + 53);
          {
LABEL_761:
            v822 = "Invalid record";
            v826 = 259;
          }

          v121 = llvm::BranchInst::Create(v271, v514, v545, v546, v547);
          v18 = v512;
        }

        goto LABEL_409;
      case 12:
        v256 = *v834;
        if (*v834 >> 16 != 1205)
        {
          if (v835[0] < 3u || (v835[0] & 1) == 0)
          {
LABEL_397:
            v822 = "Invalid record";
            v826 = 259;
          }

          v775 = v18;
          v322 = v17;
          if (v835[0] == 1)
          {
            v323 = 0;
          }

          else
          {
            v486 = *(v834 + 2);
            if (*(a2 + 1712))
            {
              v487 = v793[0] - v486;
            }

            else
            {
              v487 = v486;
            }
          }

          v488 = *(v834 + 4);
          v489 = *(a2 + 186);
          if (v488 >= (*(a2 + 187) - v489) >> 3 || !v321 || !v323 || (v490 = *(v489 + 8 * v488)) == 0)
          {
            v822 = "Invalid record";
            v826 = 259;
          }

          v491 = v835[0] + 0x1FFFFFFFDLL;
          v492 = operator new(0x48uLL);
          v492[7] = v492[7] & 0x38000000 | 0x40000000;
          *v492 = 0;
          v493 = v323;
          v121 = (v492 + 2);
          llvm::SwitchInst::SwitchInst((v492 + 2), v493, v490, v491 >> 1, 0);
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
          if ((v491 >> 1))
          {
            v494 = (v491 >> 1);
            v495 = 4;
            v17 = v322;
            do
            {
              if (v496)
              {
                if (*(v496 + 16) == 16)
                {
                  v497 = v496;
                }

                else
                {
                  v497 = 0;
                }
              }

              else
              {
                v497 = 0;
              }

              v498 = *(v834 + 2 * v495);
              v499 = *(a2 + 186);
              if (v498 >= (*(a2 + 187) - v499) >> 3 || !v497 || (v500 = *(v499 + 8 * v498)) == 0)
              {
                llvm::Instruction::~Instruction(v121, v497);
                llvm::User::operator delete(v590);
                v822 = "Invalid record";
                v826 = 259;
              }

              llvm::SwitchInst::addCase(v121, v497, v500);
              v495 += 2;
              --v494;
            }

            while (v494);
            v18 = v775;
          }

          else
          {
            v17 = v322;
            v18 = v775;
          }

          goto LABEL_791;
        }

        v257 = *(v834 + 2);
        v259 = *(v258 + 2);
        if (v835[0] == 2)
        {
          v260 = v18;
          v261 = 0;
        }

        else
        {
          v260 = v18;
          v357 = *(v834 + 4);
          if (*(a2 + 1712))
          {
            v358 = v793[0] - v357;
          }

          else
          {
            v358 = v357;
          }
        }

        v359 = *(v834 + 6);
        v360 = *(a2 + 186);
        if (v359 < (*(a2 + 187) - v360) >> 3)
        {
          if (v261)
          {
            v361 = *(v360 + 8 * v359);
            if (v361)
            {
              v763 = v259;
              v362 = *(v834 + 8);
              v363 = operator new(0x48uLL);
              v121 = (v363 + 2);
              v363[7] = v363[7] & 0x38000000 | 0x40000000;
              *v363 = 0;
              llvm::SwitchInst::SwitchInst((v363 + 2), v261, v361, v362, 0);
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
              v743 = v362;
              if (!v362)
              {
                v18 = v260;
                goto LABEL_791;
              }

              v776 = v260;
              v784 = v7;
              *v752 = v17;
              v364 = 0;
              v365 = v763 >> 8;
              v366 = 5;
LABEL_466:
              v764 = v364;
              v822 = &v824;
              v823 = 0x100000000;
              v367 = v366 + 1;
              v368 = v834;
              v369 = *(v834 + v366);
              if (!v369)
              {
                goto LABEL_498;
              }

              v370 = 0;
LABEL_468:
              v371 = v121;
              v372 = v367 + 1;
              v373 = *(v834 + v367);
              LODWORD(v121) = 1;
              __p.n128_u32[2] = 1;
              __p.n128_u64[0] = 0;
              if (v365 >= 0x41)
              {
                v121 = *(v834 + v372);
                v372 = v367 + 2;
              }

              llvm::readWideAPInt(v834 + v372, v121, v365, &v815);
              if (__p.n128_u32[2] >= 0x41 && __p.n128_u64[0])
              {
                MEMORY[0x277C69E10](__p.n128_u64[0], 0x1000C8000313F17);
              }

              __p.n128_u64[0] = v815;
              __p.n128_u32[2] = v816;
              v367 = v372 + v121;
              if (v373)
              {
                v376 = llvm::ConstantInt::get(*(a2 + 53), &__p, v374, v375);
                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, v376);
                v121 = v371;
                goto LABEL_493;
              }

              v121 = v371;
              if (v365 < 0x41)
              {
                LODWORD(v377) = 1;
              }

              else
              {
                v377 = *(v834 + v367++);
              }

              llvm::readWideAPInt(v834 + v367, v377, v365, &v815);
              while (1)
              {
                if (__p.n128_u32[2] > 0x40)
                {
                  v380 = v815;
                  v381 = ((__p.n128_u32[2] + 63) >> 3) & 0x3FFFFFF8;
                  while (v381)
                  {
                    v382 = *(__p.n128_u64[0] - 8 + v381);
                    v383 = *(v815 + v381 - 8);
                    v381 -= 8;
                    if (v382 != v383)
                    {
                      if (v382 > v383)
                      {
                        goto LABEL_487;
                      }

                      break;
                    }
                  }
                }

                else
                {
                  v380 = v815;
                  if (__p.n128_u64[0] > v815)
                  {
LABEL_487:
                    if (v816 >= 0x41 && v380 != 0)
                    {
                      MEMORY[0x277C69E10]();
                    }

                    v367 += v377;
LABEL_493:
                    if (__p.n128_u32[2] >= 0x41 && __p.n128_u64[0])
                    {
                      MEMORY[0x277C69E10](__p.n128_u64[0], 0x1000C8000313F17);
                    }

                    if (++v370 == v369)
                    {
                      v368 = v834;
LABEL_498:
                      v386 = v368[2 * v367];
                      v387 = *(a2 + 186);
                      if (v386 >= (*(a2 + 187) - v387) >> 3)
                      {
                        v388 = 0;
                      }

                      else
                      {
                        v388 = *(v387 + 8 * v386);
                      }

                      v389 = v822;
                      if (v823)
                      {
                        v390 = 8 * v823;
                        do
                        {
                          v391 = *v389++;
                          llvm::SwitchInst::addCase(v121, v391, v388);
                          v390 -= 8;
                        }

                        while (v390);
                        v389 = v822;
                      }

                      v18 = v776;
                      if (v389 != &v824)
                      {
                        free(v389);
                      }

                      v366 = v367 + 1;
                      v364 = v764 + 1;
                      if (v764 + 1 == v743)
                      {
                        v17 = *v752;
                        v7 = v784;
                        goto LABEL_791;
                      }

                      goto LABEL_466;
                    }

                    goto LABEL_468;
                  }
                }

                v384 = llvm::ConstantInt::get(*(a2 + 53), &__p, v378, v379);
                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, v384);
                llvm::APInt::operator++(&__p);
              }
            }
          }
        }

        goto LABEL_761;
      case 13:
        if (v835[0] <= 3u)
        {
          goto LABEL_352;
        }

        v262 = (*v834 - 1);
        v263 = *(a2 + 180);
        if (v262 >= (*(a2 + 181) - v263) >> 3)
        {
          v264 = 0;
        }

        else
        {
          v264 = *(v263 + 8 * v262);
        }

        v392 = *(v834 + 4);
        v393 = *(a2 + 186);
        v394 = (*(a2 + 187) - v393) >> 3;
        if (v394 <= v392)
        {
          v395 = 0;
        }

        else
        {
          v395 = *(v393 + 8 * v392);
        }

        v396 = *(v834 + 1);
        LODWORD(v794.__r_.__value_.__l.__data_) = 4;
        v397 = *(v834 + 6);
        if (v394 <= v397)
        {
          v765 = 0;
        }

        else
        {
          v765 = *(v393 + 8 * v397);
        }

        v785 = v7;
        v398 = v17;
        if ((v396 & 0x2000) != 0)
        {
          LODWORD(v794.__r_.__value_.__l.__data_) = 5;
          v400 = *(v834 + 8);
          if (!v401 || (v399 = v401, *(v401 + 8) != 14))
          {
            v402 = "Explicit invoke type is not a function type";
            goto LABEL_867;
          }
        }

        else
        {
          v399 = 0;
          v400 = 0xFFFFFFFFLL;
        }

        v811 = 0;
        v798[0] = 0;
        {
          v402 = "Invalid record";
          goto LABEL_867;
        }

        v442 = v811;
        v443 = *v811;
        if (*v811 && *(v443 + 8) == 15)
        {
          if (v399)
          {
            v444 = *(v443 + 24);
            if (v444 && v444 != v399)
            {
              v402 = "Explicit invoke type does not match pointee type of callee operand";
              goto LABEL_867;
            }

LABEL_840:
            v756 = v395;
            v577 = v835[0];
            v578 = (*(v399 + 12) - 1);
            data = v794.__r_.__value_.__l.__data_;
            if (v835[0] < (v578 + LODWORD(v794.__r_.__value_.__l.__data_)))
            {
              v822 = "Insufficient operands to call";
              v826 = 259;
            }

            v744 = v264;
            v822 = &v824;
            v823 = 0x1000000000;
            __p.n128_u64[0] = v820;
            __p.n128_u64[1] = 0x1000000000;
            v779 = v18;
            v737 = v442;
            if (v578)
            {
              v597 = 1;
              while (1)
              {
                if (data == v835[0])
                {
                  v599 = 0;
                }

                else
                {
                  v600 = *(v834 + data);
                  v601 = *(a2 + 1712) ? v793[0] - v600 : v600;
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, v599);
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v598);
                if (!*(v822 + v823 - 1))
                {
                  break;
                }

                ++data;
                ++v597;
                if (!--v578)
                {
                  v577 = v835[0];
                  goto LABEL_886;
                }
              }

              LODWORD(v794.__r_.__value_.__l.__data_) = data;
LABEL_970:
              v815 = "Invalid record";
              v818 = 259;
            }

LABEL_886:
            LODWORD(v794.__r_.__value_.__l.__data_) = data;
            if (*(v399 + 8) < 0x100u)
            {
              if (v577 != data)
              {
                goto LABEL_970;
              }
            }

            else if (v577 != data)
            {
              do
              {
                *v795 = 0;
                v799 = 0;
                {
                  goto LABEL_970;
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, *v795);
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v799);
              }

              while (v835[0] != LODWORD(v794.__r_.__value_.__l.__data_));
            }

            v631 = v803;
            if (v803 == v804)
            {
              v632 = v803;
            }

            else
            {
              llvm::UpgradeOperandBundles(&v803);
              v632 = v803;
              v631 = v804;
            }

            v818 = 257;
            v650 = llvm::InvokeInst::Create(v399, v737, v756, v765, v822, v823, v632, 0xAAAAAAAAAAAAAAABLL * ((v631 - v632) >> 4), &v815, 0);
            v651 = v803;
            for (i = v804; i != v651; std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](&v803, i))
            {
              i -= 48;
            }

            v804 = v651;
            llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v650);
            v653 = 4 * (v396 & 0x3FF);
            v121 = v650;
            *(v650 + 9) = *(v650 + 9) & 0xF003 | v653;
            *(v650 + 8) = v744;
            if (*this)
            {
              llvm::Value::deleteValue(v650, v19);
              v21 = 1;
            }

            else
            {
              v21 = 9;
            }

            v17 = v398;
            v18 = v779;
            v7 = v785;
            v654 = __p.n128_u64[0];
            if (__p.n128_u64[0] == v820)
            {
LABEL_775:
              v581 = v822;
              v433 = &v824;
              goto LABEL_901;
            }

LABEL_1110:
            free(v654);
            goto LABEL_775;
          }

          v575 = v811;
          if (v576)
          {
            v442 = v575;
            v399 = v576;
            if (*(v576 + 8) == 14)
            {
              goto LABEL_840;
            }
          }

          v402 = "Callee is not of pointer to function type";
        }

        else
        {
          v402 = "Callee is not a pointer";
        }

LABEL_867:
        v822 = v402;
        v826 = 259;
      case 15:
        v121 = operator new(0x40uLL);
        *(v121 + 20) &= 0x38000000u;
        *v121 = **(a2 + 53) + 1608;
        *(v121 + 8) = 0;
        *(v121 + 16) = 35;
        *(v121 + 33) = 0u;
        *(v121 + 44) = 0u;
        *(v121 + 17) = 0u;
        goto LABEL_409;
      case 16:
        if (v835[0])
        {
          v781 = v7;
          v749 = *v834;
          if (!v122)
          {
            v822 = "Invalid phi record";
            v826 = 259;
          }

          v123 = v122;
          v124 = v835[0] - 1;
          v826 = 257;
          v125 = operator new(0x48uLL);
          v126 = (v125 + 8);
          *(v125 + 7) = *(v125 + 7) & 0x38000000 | 0x40000000;
          *v125 = 0;
          v741 = v124 >> 1;
          llvm::PHINode::PHINode((v125 + 8), v123, v124 >> 1, &v822, 0);
          if ((v835[0] & 1) == 0 && !llvm::FPMathOperator::classof(v126))
          {
            llvm::Value::deleteValue(v126, v127);
            v822 = "Invalid phi record";
            v826 = 259;
          }

          v735 = v125;
          v761 = (v125 + 8);
          v773 = v18;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v126);
          v822 = 1;
          v823 = -4096;
          v825 = -4096;
          v827 = -4096;
          v828 = -4096;
          if (v124 >= 2)
          {
            v128 = 1;
            v129 = 1;
            v130 = v124 >> 1;
            do
            {
              v131 = *(v834 + 2 * v128 + 2);
              v132 = *(a2 + 186);
              if (v131 >= (*(a2 + 187) - v132) >> 3 || (v133 = *(v132 + 8 * v131)) == 0)
              {
                llvm::Value::deleteValue(v761, v19);
                __p.n128_u64[0] = "Invalid phi BB";
                v821 = 259;
              }

              v134 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::find(&v822, *(v132 + 8 * v131));
              v135 = (v823 + 16 * v824);
              if (v822)
              {
                v135 = &v829;
              }

              if (v135 == v134)
              {
                __p.n128_u64[0] = v133;
                __p.n128_u64[1] = v809;
                v136 = llvm::MapVector<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *,llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,llvm::SmallVector<std::pair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *>,4u>>::lookup(&v837, &__p);
                if (!v136)
                {
                  v138 = *(a2 + 53);
                  __p.n128_u64[0] = "phi.constexpr";
                  v821 = 259;
                  llvm::BasicBlock::Create(v138, &__p, v810, 0);
                }

                if (*(a2 + 1712) == 1)
                {
                }

                else
                {
                  if (v128 == v835[0])
                  {
                    goto LABEL_872;
                  }
                }

                v140 = ValueSigned;
                if (!ValueSigned)
                {
LABEL_872:
                  llvm::Value::deleteValue(v761, v137);
                  llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::erase(MEMORY[0x38] + 72, 24);
                  __p.n128_u64[0] = "Invalid phi record";
                  v821 = 259;
                }

                llvm::PHINode::addIncoming(v761, ValueSigned, v133);
                v815 = v133;
                v816 = v140;
                llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::try_emplace<llvm::Value *>(&__p, &v822, &v815, &v816);
                v130 = v741;
              }

              else
              {
                llvm::PHINode::addIncoming(v761, v134[1], v133);
              }

              v252 = v130 == v129++;
              v128 += 2;
            }

            while (!v252);
          }

          VirtualTypeID = v749;
          if (v835[0])
          {
            v21 = 9;
            v18 = v773;
            v7 = v781;
            v121 = v761;
          }

          else
          {
            v141 = *(v834 + 2 * v835[0] - 2);
            v142 = v141 & 0x7E | (v141 >> 7) & 1 | -(v141 & 1);
            v18 = v773;
            v7 = v781;
            v121 = v761;
            if (v142)
            {
              v735[25] |= 2 * v142;
            }

            v21 = 9;
          }

          if ((v822 & 1) == 0)
          {
            MEMORY[0x277C69E30](v823, 8);
          }

          goto LABEL_790;
        }

        v295 = "Invalid phi record";
        goto LABEL_353;
      case 19:
        if ((v835[0] & 0xFFFFFFFE) != 4)
        {
          goto LABEL_352;
        }

        v183 = *(v834 + 3);
        LODWORD(v815) = *v834;
        {
          v185 = v184;
          v98 = v18;
          v186 = *(v834 + 2);
          LOWORD(v811) = 0;
          if (!*this)
          {
            if (v185 && v188)
            {
              v189 = *(a2 + 54);
              if (v835[0] == 5)
              {
                v190 = *(v834 + 8);
              }

              else
              {
                v190 = *(v189 + 260);
              }

              v822 = &v826;
              v823 = &v826;
              v824 = 4;
              LODWORD(v825) = 0;
              if (BYTE1(v811) == 1)
              {
                v789 = v7;
                *v755 = v17;
                Alignment = v811;
              }

              else
              {
                if ((llvm::Type::isSized(v185, &v822) & 1) == 0)
                {
                  __p.n128_u64[0] = "alloca of unsized type";
                  v821 = 259;
                }

                v789 = v7;
                *v755 = v17;
                Alignment = llvm::DataLayout::getAlignment((v189 + 256), v185, 0);
                LOWORD(v811) = Alignment | 0x100;
              }

              v565 = operator new(0x68uLL);
              *(v565 + 13) = *(v565 + 13) & 0x38000000 | 1;
              *v565 = 0;
              *(v565 + 1) = 0;
              *(v565 + 2) = 0;
              *(v565 + 3) = v565 + 32;
              v821 = 257;
              v566 = v190;
              v121 = (v565 + 32);
              llvm::AllocaInst::AllocaInst((v565 + 32), v185, v566, v188, Alignment, &__p, 0);
              *(v565 + 25) = v183 & 0x80 | (((v183 >> 5) & 1) << 6) | *(v565 + 25) & 0xFF3F;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, (v565 + 32));
              v21 = 9;
              v17 = *v755;
              v7 = v789;
              v581 = v823;
              v18 = v98;
              if (v823 != v822)
              {
                goto LABEL_894;
              }

              goto LABEL_790;
            }

            goto LABEL_741;
          }

          goto LABEL_743;
        }

        v104 = "Missing element type for old-style alloca";
        goto LABEL_789;
      case 20:
        LODWORD(v811) = 0;
        v815 = 0;
        v795[0] = 0;
        {
          goto LABEL_788;
        }

        v272 = v811;
        v273 = v811 + 3;
        if (v835[0] != v811 + 2 && v835[0] != v273)
        {
          goto LABEL_788;
        }

        v274 = v815;
        if (*(*v815 + 8) != 15)
        {
          goto LABEL_435;
        }

        v98 = v18;
        if (v835[0] == v273)
        {
          v275 = v811 + 1;
          LODWORD(v811) = v811 + 1;
          v276 = *(v834 + v272);
          VirtualTypeID = v276;
LABEL_748:
          if (!*this)
          {
            LOWORD(v794.__r_.__value_.__l.__data_) = 0;
            if (!*this)
            {
              v822 = &v826;
              v823 = &v826;
              v824 = 4;
              LODWORD(v825) = 0;
              if (v794.__r_.__value_.__s.__data_[1] == 1)
              {
                v534 = v794.__r_.__value_.__s.__data_[0];
              }

              else
              {
                if ((llvm::Type::isSized(v277, &v822) & 1) == 0)
                {
                  __p.n128_u64[0] = "load of unsized type";
                  v821 = 259;
                }

                v534 = llvm::DataLayout::getAlignment((*(a2 + 54) + 256), v277, 1);
                LOWORD(v794.__r_.__value_.__l.__data_) = v534 | 0x100;
              }

              v629 = operator new(0x60uLL);
              v630 = (v629 + 8);
              v629[13] = v629[13] & 0x38000000 | 1;
              *v629 = 0;
              *(v629 + 1) = 0;
              *(v629 + 2) = 0;
              *(v629 + 3) = v629 + 8;
              v821 = 257;
              llvm::LoadInst::LoadInst((v629 + 8), v277, v274, &__p, *(v834 + v275 + 1) != 0, v534, 0);
              v121 = v630;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v630);
              v21 = 9;
              if (v823 != v822)
              {
                free(v823);
              }

              goto LABEL_744;
            }
          }

          goto LABEL_743;
        }

        if (v533)
        {
          v277 = v533;
          v275 = v272;
          goto LABEL_748;
        }

        v447 = "Missing element type for old-style load";
        goto LABEL_633;
      case 23:
        if (v835[0] <= 2u)
        {
          goto LABEL_352;
        }

        v161 = v18;
        v162 = *v834;
        if (v835[0] == 1)
        {
          v164 = 0;
        }

        else
        {
          v341 = *(v834 + 2);
          if (*(a2 + 1712))
          {
            v342 = v793[0] - v341;
          }

          else
          {
            v342 = v341;
          }
        }

        VirtualTypeID = *(v834 + 4);
        if (!v163 || !v164 || (v344 = v343) == 0)
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        v345 = operator new(0x60uLL);
        v345[13] = v345[13] & 0x38000000 | 1;
        *v345 = 0;
        *(v345 + 1) = 0;
        *(v345 + 2) = 0;
        *(v345 + 3) = v345 + 8;
        v826 = 257;
        v346 = v344;
        v121 = (v345 + 8);
        llvm::UnaryInstruction::UnaryInstruction((v345 + 8), v346, 60, v164, 0);
        llvm::Value::setName(v121, &v822);
        v18 = v161;
        goto LABEL_409;
      case 24:
      case 44:
        v795[0] = 0;
        v815 = 0;
        v811 = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        v798[0] = 0;
        {
          goto LABEL_788;
        }

        if (v25 == 44)
        {
          {
            v37 = v795[0];
            goto LABEL_428;
          }

LABEL_788:
          v104 = "Invalid record";
LABEL_789:
          v822 = v104;
          v826 = 259;
        }

        v798[0] = v305;
        v307 = v795[0];
        if (v835[0] == v795[0])
        {
          v815 = 0;
        }

        else
        {
          v334 = *(v834 + v795[0]);
          if (*(a2 + 1712))
          {
            v335 = v793[0] - v334;
          }

          else
          {
            v335 = v334;
          }

          if (v815)
          {
            v37 = v307 + 1;
            v795[0] = v307 + 1;
LABEL_428:
            if (v835[0] == v37 + 2)
            {
              v336 = v18;
              v337 = v815;
              v338 = v811;
              if (!*this)
              {
                LOWORD(v799) = 0;
                if (!*this)
                {
                  v822 = &v826;
                  v823 = &v826;
                  v824 = 4;
                  LODWORD(v825) = 0;
                  if ((v799 & 0x100) != 0)
                  {
                    v339 = v799;
                  }

                  else
                  {
                    if ((llvm::Type::isSized(*v337, &v822) & 1) == 0)
                    {
                      __p.n128_u64[0] = "store of unsized type";
                      v821 = 259;
                    }

                    v339 = llvm::DataLayout::getAlignment((*(a2 + 54) + 256), *v337, 1);
                    LOWORD(v799) = v339 | 0x100;
                  }

                  v611 = operator new(0x80uLL);
                  v611[21] = v611[21] & 0x38000000 | 2;
                  *v611 = 0;
                  *(v611 + 1) = 0;
                  *(v611 + 2) = 0;
                  *(v611 + 3) = v611 + 16;
                  *(v611 + 4) = 0;
                  *(v611 + 5) = 0;
                  *(v611 + 6) = 0;
                  *(v611 + 7) = v611 + 16;
                  v612 = v339;
                  v121 = (v611 + 16);
                  llvm::StoreInst::StoreInst((v611 + 16), v337, v338, *(v834 + v37 + 1) != 0, v612, 0, 1, 0);
                  llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
                  v21 = 9;
                  v581 = v823;
                  v18 = v336;
                  if (v823 != v822)
                  {
                    goto LABEL_894;
                  }

                  goto LABEL_790;
                }
              }

LABEL_631:
              v121 = 0;
              v21 = 1;
              v18 = v336;
              goto LABEL_790;
            }

            goto LABEL_788;
          }
        }

LABEL_433:
        v340 = "Invalid record";
        goto LABEL_434;
      case 26:
        LODWORD(v811) = 0;
        v815 = 0;
        v795[0] = 0;
        {
          goto LABEL_788;
        }

        v265 = v835[0];
        v266 = v811;
        if (v811 != v835[0])
        {
          v403 = v815;
          v404 = *v815;
          __p.n128_u64[0] = v820;
          __p.n128_u64[1] = 0x400000000;
          VirtualTypeID = v795[0];
          while (1)
          {
            if ((*(v404 + 2) & 0xFE) != 0x10)
            {
              LODWORD(v811) = v266;
              v822 = "EXTRACTVAL: Invalid type";
              v826 = 259;
            }

            v405 = v18;
            v406 = *(v834 + v266);
            if (HIDWORD(v406))
            {
              LODWORD(v811) = v266;
              v527 = "Invalid value";
              goto LABEL_847;
            }

            if (*(v404 + 2) == 16)
            {
              if (v406 >= *(v404 + 3))
              {
                LODWORD(v811) = v266;
                v527 = "EXTRACTVAL: Invalid struct index";
LABEL_847:
                v822 = v527;
                v826 = 259;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v834 + v266));
              v404 = *(*(v404 + 2) + 8 * v406);
              v407 = VirtualTypeID;
              v408 = a2;
              v409 = v406;
            }

            else
            {
              if (v406 >= *(v404 + 4))
              {
                LODWORD(v811) = v266;
                v527 = "EXTRACTVAL: Invalid array index";
                goto LABEL_847;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v834 + v266));
              v404 = **(v404 + 2);
              v407 = VirtualTypeID;
              v408 = a2;
              v409 = 0;
            }

            ++v266;
            v18 = v405;
            if (v265 == v266)
            {
              LODWORD(v811) = v265;
              v826 = 257;
              v121 = llvm::ExtractValueInst::Create(v403, __p.n128_u64[0], __p.n128_u32[2], &v822);
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
              v21 = 9;
              v581 = __p.n128_u64[0];
              v582 = __p.n128_u64[0] == v820;
              goto LABEL_848;
            }
          }
        }

        v267 = "EXTRACTVAL: Invalid instruction with 0 indices";
        goto LABEL_420;
      case 27:
        v795[0] = 0;
        v815 = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v811 = 0;
        v798[0] = 0;
        {
          goto LABEL_788;
        }

        v102 = v835[0];
        v103 = v795[0];
        if (v795[0] == v835[0])
        {
          v104 = "INSERTVAL: Invalid instruction with 0 indices";
          goto LABEL_789;
        }

        __p.n128_u64[0] = v820;
        __p.n128_u64[1] = 0x400000000;
        v471 = v815;
        v472 = *v815;
        do
        {
          if ((*(v472 + 2) & 0xFE) != 0x10)
          {
            v795[0] = v103;
            v476 = "INSERTVAL: Invalid type";
LABEL_843:
            v822 = v476;
            v826 = 259;
          }

          v473 = v18;
          v474 = *(v834 + v103);
          if (HIDWORD(v474))
          {
            v795[0] = v103;
            v580 = "Invalid value";
            goto LABEL_899;
          }

          if (*(v472 + 2) == 16)
          {
            if (v474 < *(v472 + 3))
            {
              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v834 + v103));
              v475 = (*(v472 + 2) + 8 * v474);
              goto LABEL_642;
            }

            v795[0] = v103;
            v580 = "INSERTVAL: Invalid struct index";
LABEL_899:
            v822 = v580;
            v826 = 259;
          }

          if (v474 >= *(v472 + 4))
          {
            v795[0] = v103;
            v580 = "INSERTVAL: Invalid array index";
            goto LABEL_899;
          }

          llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, *(v834 + v103));
          v475 = *(v472 + 2);
LABEL_642:
          v472 = *v475;
          ++v103;
          v18 = v473;
        }

        while (v102 != v103);
        v795[0] = v102;
        if (v472 != *v811)
        {
          v476 = "Inserted value type doesn't match aggregate type";
          goto LABEL_843;
        }

        v826 = 257;
        v121 = llvm::InsertValueInst::Create(v471, v811, __p.n128_u64[0], __p.n128_u32[2], &v822);
        VirtualTypeID = v794.__r_.__value_.__l.__data_;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
        v21 = 9;
LABEL_900:
        v581 = __p.n128_u64[0];
        v433 = v820;
LABEL_901:
        if (v581 != v433)
        {
LABEL_894:
          free(v581);
        }

LABEL_790:
        if (v21 == 9)
        {
LABEL_791:
          v554 = v809;
          if (!v809)
          {
            llvm::Value::deleteValue(v121, v19);
            v540 = "Invalid instruction with no BB";
LABEL_795:
            v822 = v540;
            v826 = 259;
          }

          if (v803 != v804)
          {
            llvm::Value::deleteValue(v121, v19);
            v540 = "Operand bundles found with no consumer";
            goto LABEL_795;
          }

          llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v809 + 5, v121);
          v556 = *(v554 + 5);
          *(v121 + 24) = v556;
          *(v121 + 32) = v554 + 40;
          *(v556 + 8) = v121 + 24;
          *(v554 + 5) = v121 + 24;
          if (*(v121 + 16) - 29 <= 0xA)
          {
            ++v808;
            v557 = *(a2 + 186);
            if (v808 >= ((*(a2 + 187) - v557) >> 3))
            {
              v558 = 0;
            }

            else
            {
              v558 = *(v557 + 8 * v808);
            }

            v809 = v558;
          }

          if (*(*v121 + 8) == 7)
          {
            v21 = 0;
          }

          else
          {
            llvm::BitcodeReaderValueList::assignValue(v7, v121, v793[0], VirtualTypeID, this);
            v21 = *this != 0;
            ++v793[0];
          }
        }

LABEL_796:
        if (v831)
        {
          v555 = v830;
          v830 = 0;
          if (v555)
          {
            (*(*v555 + 8))(v555);
          }
        }

LABEL_11:
        if (v833)
        {
          v22 = v832;
          v832 = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }
        }

        if (!v21 || v21 == 4)
        {
          continue;
        }

        if (v21 == 7)
        {
          if (v803 != v804)
          {
            v706 = "Operand bundles found with no consumer";
            goto LABEL_1131;
          }

          v707 = *(a2 + 90);
          v708 = *(v707 - 16);
          if (v708 && *(v708 + 16) == 21 && !*(v708 + 24))
          {
            v721 = (v707 - *v7) >> 5;
            for (j = v790 >> 5; v721 != j; LODWORD(j) = j + 1)
            {
              v723 = *(*v7 + 4 * j + 2);
              if (v723 && *(v723 + 16) == 21 && !*(v723 + 24))
              {
                v724 = j;
                v725 = llvm::PoisonValue::get(*v723, v19);
                llvm::Value::doRAUW(v723, v725, 1);
                llvm::Value::~Value(v723, v726);
                MEMORY[0x277C69E40]();
                LODWORD(j) = v724;
              }
            }

            v822 = "Never resolved value found in function";
            v826 = 259;
          }

          if (*(*(a2 + 97) + 24) >= 2u)
          {
            v706 = "Invalid function metadata: outgoing forward refs";
LABEL_1131:
            v822 = v706;
            v826 = 259;
          }

          v709 = v18;
          if (v843)
          {
            v710 = v842;
            v711 = v842 + 24 * v843;
            do
            {
              v713 = *v710;
              v712 = *(v710 + 1);
              v714 = *(v710 + 2);
              v715 = operator new(0x60uLL);
              v715[13] = v715[13] & 0x38000000 | 1;
              *v715 = 0;
              *(v715 + 1) = 0;
              *(v715 + 2) = 0;
              *(v715 + 3) = v715 + 8;
              llvm::BranchInst::BranchInst((v715 + 8), v712, v714);
              v716 = *(v713 + 5);
              if (v716 == (v713 + 40))
              {
                v719 = 0;
              }

              else
              {
                v717 = (v716 - 3);
                if (v716)
                {
                  v718 = v716 - 3;
                }

                else
                {
                  v718 = 0;
                }

                if (*(v718 + 16) - 29 >= 0xB)
                {
                  v719 = 0;
                }

                else
                {
                  v719 = v717;
                }
              }

              llvm::Instruction::replaceSuccessorWith(v719, v712, v714);
              llvm::BasicBlock::replacePhiUsesWith(v712, v713, v714);
              llvm::BasicBlock::moveBefore(v714, v712);
              v710 += 24;
            }

            while (v710 != v711);
          }

          std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::resize(v7, (v790 >> 5));
          llvm::SmallVectorImpl<llvm::TrackingMDRef>::resizeImpl<false>(*(a2 + 97), v791);
          v720 = *(a2 + 186);
          *v792 = 0;
          *(a2 + 187) = 0;
          *(a2 + 188) = 0;
          if (v720)
          {
            operator delete(v720);
          }

          *this = 0;
          v18 = v709;
        }

        if (v834 != v18)
        {
          free(v834);
        }

        v834 = &v803;
        std::vector<llvm::OperandBundleDefT<llvm::Value *>>::__destroy_vector::operator()[abi:nn200100](&v834);
        if (v807)
        {
          llvm::MetadataTracking::untrack(&v807, v807);
        }

        if (v842 != v17)
        {
          free(v842);
        }

        if ((v837 & 1) == 0)
        {
          MEMORY[0x277C69E30](v838.i64[0], 8);
        }

        return;
      case 29:
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v815 = 0;
        v795[0] = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v278 = v811;
        if (v835[0] == v811)
        {
          goto LABEL_788;
        }

        v279 = __p.n128_u64[0];
        v280 = v795[0];
        v281 = *(v834 + v811);
        v282 = *(a2 + 1712) ? v793[0] - v281 : v281;
        if (!v283)
        {
          goto LABEL_788;
        }

        v284 = v283;
        LODWORD(v811) = v278 + 1;
        {
          goto LABEL_788;
        }

        v285 = v7;
        v286 = v815;
        v287 = *v815;
        if (*v815 && (*(v287 + 2) & 0xFE) == 0x12)
        {
          v287 = *(v287 + 3);
        }

        if (v287 != (**(a2 + 53) + 1920))
        {
          v822 = "Invalid type for value";
          v826 = 259;
        }

        v583 = v280;
        *v757 = v17;
        v826 = 257;
        v584 = operator new(0xA0uLL);
        v585 = v584;
        v121 = (v584 + 24);
        v584[29] = v584[29] & 0x38000000 | 3;
        v586 = 96;
        v587 = v584;
        do
        {
          *v587 = 0;
          v587[1] = 0;
          v587[2] = 0;
          v587[3] = v121;
          v587 += 4;
          v586 -= 32;
        }

        while (v586);
        llvm::SelectInst::SelectInst((v584 + 24), v286, v279, v284, &v822, 0);
        VirtualTypeID = v583;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
        v588 = v811;
        if (v835[0] > v811 && llvm::FPMathOperator::classof(v121))
        {
          v589 = *(v834 + v588) & 0x7E | (*(v834 + v588) >> 7) & 1 | -(*(v834 + v588) & 1);
          if (v589)
          {
            *(v585 + 113) |= 2 * v589;
          }
        }

        v21 = 9;
        v17 = *v757;
        v7 = v285;
        goto LABEL_790;
      case 31:
        if (v835[0] <= 1u)
        {
          goto LABEL_352;
        }

        v243 = v18;
        v244 = *v834;
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        v352 = (v835[0] - 2);
        v353 = operator new(0x48uLL);
        v121 = (v353 + 2);
        v353[7] = v353[7] & 0x38000000 | 0x40000000;
        *v353 = 0;
        llvm::IndirectBrInst::IndirectBrInst((v353 + 2), v351, v352, 0);
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
        if (!v352)
        {
          v18 = v243;
          goto LABEL_791;
        }

        v354 = 2;
        v18 = v243;
        while (1)
        {
          v355 = *(v834 + 2 * v354);
          v356 = *(a2 + 186);
          if (v355 >= (*(a2 + 187) - v356) >> 3)
          {
            break;
          }

          v19 = *(v356 + 8 * v355);
          if (!v19)
          {
            break;
          }

          llvm::IndirectBrInst::addDestination(v121, v19);
          ++v354;
          if (!--v352)
          {
            goto LABEL_791;
          }
        }

        llvm::Instruction::~Instruction(v121, v19);
        llvm::User::operator delete(v539);
        goto LABEL_758;
      case 33:
        if (!v240)
        {
          goto LABEL_352;
        }

        v241 = v240;
        v801 = v807;
        if (v807)
        {
          llvm::MetadataTracking::track(&v801, v807, 2);
        }

        llvm::TrackingMDRef::operator=((v241 + 48), &v801);
        v19 = v801;
        if (!v801)
        {
          goto LABEL_293;
        }

        v242 = &v801;
        goto LABEL_292;
      case 34:
        if (v835[0] <= 2u)
        {
          goto LABEL_352;
        }

        v288 = (*v834 - 1);
        v289 = *(a2 + 180);
        v782 = v7;
        if (v288 >= (*(a2 + 181) - v289) >> 3)
        {
          v290 = 0;
        }

        else
        {
          v290 = *(v289 + 8 * v288);
        }

        v410 = 2;
        LODWORD(v794.__r_.__value_.__l.__data_) = 2;
        v411 = *(v834 + 1);
        if ((v411 & 0x20000) != 0)
        {
          v410 = 3;
          LODWORD(v794.__r_.__value_.__l.__data_) = 3;
          v412 = *(v834 + 4) & 0x7E | (*(v834 + 4) >> 7) & 1 | -(*(v834 + 4) & 1);
          if (!v412)
          {
            v822 = "Fast math flags indicator set for call with no FMF";
            v826 = 259;
          }
        }

        else
        {
          v412 = 0;
        }

        if ((v411 & 0x8000) != 0)
        {
          LODWORD(v794.__r_.__value_.__l.__data_) = v410 + 1;
          v414 = *(v834 + v410);
          if (!v415 || (v413 = v415, *(v415 + 8) != 14))
          {
            v416 = "Explicit call type is not a function type";
            goto LABEL_896;
          }
        }

        else
        {
          v413 = 0;
          v414 = 0xFFFFFFFFLL;
        }

        v811 = 0;
        v798[0] = 0;
        {
          v416 = "Invalid record";
          goto LABEL_896;
        }

        v460 = *v811;
        if (*v811 && *(v460 + 8) == 15)
        {
          v766 = v811;
          if (v413)
          {
            v461 = *(v460 + 24);
            if (v461 && v461 != v413)
            {
              v416 = "Explicit call type does not match pointee type of callee operand";
              goto LABEL_896;
            }

            goto LABEL_864;
          }

          if (v593)
          {
            v413 = v593;
            if (*(v593 + 8) == 14)
            {
LABEL_864:
              *v759 = v17;
              v594 = v835[0];
              v595 = (*(v413 + 12) - 1);
              v596 = v794.__r_.__value_.__l.__data_;
              if (v835[0] < (v595 + LODWORD(v794.__r_.__value_.__l.__data_)))
              {
                v822 = "Insufficient operands to call";
                v826 = 259;
              }

              v738 = v412;
              v745 = v290;
              v780 = v18;
              v822 = &v824;
              v823 = 0x1000000000;
              __p.n128_u64[0] = v820;
              __p.n128_u64[1] = 0x1000000000;
              if (!v595)
              {
LABEL_918:
                LODWORD(v794.__r_.__value_.__l.__data_) = v596;
                if (*(v413 + 8) < 0x100u)
                {
                  if (v594 != v596)
                  {
                    goto LABEL_993;
                  }
                }

                else if (v594 != v596)
                {
                  while (1)
                  {
                    *v795 = 0;
                    v799 = 0;
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, *v795);
                    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v799);
                    if (v835[0] == LODWORD(v794.__r_.__value_.__l.__data_))
                    {
                      goto LABEL_984;
                    }
                  }

LABEL_993:
                  v815 = "Invalid record";
                  v818 = 259;
                }

LABEL_984:
                v639 = v803;
                if (v803 == v804)
                {
                  v640 = v803;
                }

                else
                {
                  llvm::UpgradeOperandBundles(&v803);
                  v640 = v803;
                  v639 = v804;
                }

                v818 = 257;
                v769 = llvm::CallInst::Create(v413, v766, v822, v823, v640, 0xAAAAAAAAAAAAAAABLL * ((v639 - v640) >> 4), &v815, 0);
                v658 = v803;
                for (k = v804; k != v658; std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](&v803, k))
                {
                  k -= 48;
                }

                v804 = v658;
                llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v769);
                v660 = v411 & 1;
                if ((v411 & 0x4000) != 0)
                {
                  v660 = 2;
                }

                if ((v411 & 0x10000) != 0)
                {
                  v660 = 3;
                }

                *(v769 + 9) = v660 & 0xF003 | (4 * ((v411 >> 1) & 0x3FF)) | *(v769 + 9) & 0xF000;
                *(v769 + 8) = v745;
                if (*this)
                {
                  llvm::Value::deleteValue(v769, v19);
                  v21 = 1;
                }

                else
                {
                  if (v738)
                  {
                    if (!llvm::FPMathOperator::classof(v769))
                    {
                      v815 = "Fast-math-flags specified for call without floating-point scalar or vector return type";
                      v818 = 259;
                    }

                    v769[17] |= 2 * v738;
                  }

                  v21 = 9;
                }

                if (__p.n128_u64[0] != v820)
                {
                  free(__p.n128_u64[0]);
                }

                if (v822 != &v824)
                {
                  free(v822);
                }

                v17 = *v759;
                v121 = v769;
                v18 = v780;
                v7 = v782;
                goto LABEL_790;
              }

              v603 = 1;
              while (1)
              {
                v605 = *(*(v413 + 16) + 8 * v603);
                if (*(v605 + 8) == 8)
                {
                  break;
                }

                if (v596 == v835[0])
                {
                  goto LABEL_910;
                }

                v609 = *(v834 + v596);
                if (*(a2 + 1712))
                {
                  v610 = v793[0] - v609;
                }

                else
                {
                  v610 = v609;
                }

LABEL_915:
                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, v608);
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&__p, v604);
                if (!*(v822 + v823 - 1))
                {
                  LODWORD(v794.__r_.__value_.__l.__data_) = v596;
                  goto LABEL_993;
                }

                ++v596;
                ++v603;
                if (!--v595)
                {
                  v594 = v835[0];
                  goto LABEL_918;
                }
              }

              v606 = *(v834 + 2 * v596);
              v607 = *(a2 + 186);
              if (v606 < (*(a2 + 187) - v607) >> 3)
              {
                v608 = *(v607 + 8 * v606);
                goto LABEL_915;
              }

LABEL_910:
              v608 = 0;
              goto LABEL_915;
            }
          }

          v416 = "Callee is not of pointer to function type";
        }

        else
        {
          v416 = "Callee is not a pointer type";
        }

LABEL_896:
        v822 = v416;
        v826 = 259;
      case 35:
        if (!v105 || v835[0] <= 3u)
        {
          goto LABEL_352;
        }

        v106 = v105;
        v772 = v18;
        v107 = v835[0] == 5 && *(v834 + 4) != 0;
        v448 = v17;
        v449 = *v834;
        v450 = *(v834 + 2);
        v451 = *(v834 + 4);
        v452 = *(v834 + 6);
        if (v451)
        {
          MetadataFwdRefOrLoad = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(*(a2 + 97), (v451 - 1));
          if (!MetadataFwdRefOrLoad || (v454 = MetadataFwdRefOrLoad, (llvm::MDNode::classof(MetadataFwdRefOrLoad) & 1) == 0))
          {
            v822 = "Invalid record";
            v826 = 259;
          }
        }

        else
        {
          v454 = 0;
        }

        v787 = v7;
        if (v452)
        {
          v510 = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(*(a2 + 97), (v452 - 1));
          if (!v510 || (v511 = v510, (llvm::MDNode::classof(v510) & 1) == 0))
          {
            v822 = "Invalid record";
            v826 = 259;
          }
        }

        else
        {
          v511 = 0;
        }

        v524 = *(v454 + 8);
        v525 = (v524 & 0xFFFFFFFFFFFFFFF8);
        if ((v524 & 4) != 0)
        {
          v525 = *v525;
        }

        Impl = llvm::DILocation::getImpl(v525, v449, v450, v454, v511, v107, 0, 1);
        v822 = Impl;
        if (Impl)
        {
          llvm::MetadataTracking::track(&v822, Impl, 2);
        }

        llvm::TrackingMDRef::operator=(&v807, &v822);
        v17 = v448;
        v18 = v772;
        v7 = v787;
        if (v822)
        {
          llvm::MetadataTracking::untrack(&v822, v822);
        }

        v800 = v807;
        if (v807)
        {
          llvm::MetadataTracking::track(&v800, v807, 2);
        }

        llvm::TrackingMDRef::operator=((v106 + 48), &v800);
        v19 = v800;
        if (!v800)
        {
          goto LABEL_293;
        }

        v242 = &v800;
LABEL_292:
        llvm::MetadataTracking::untrack(v242, v19);
LABEL_293:
        v21 = 4;
        goto LABEL_796;
      case 36:
        if (v835[0] != 2)
        {
          goto LABEL_352;
        }

        v143 = v834;
        DecodedOrdering = getDecodedOrdering(*v834);
        if (DecodedOrdering <= 2)
        {
          goto LABEL_758;
        }

        v145 = DecodedOrdering;
        v146 = v143[1];
        v147 = v146;
        if ((v146 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v146)
          {
            v147 = 1;
          }

          else
          {
            v147 = *(*(a2 + 225) + v146);
          }
        }

        v121 = operator new(0x40uLL);
        *(v121 + 20) &= 0x38000000u;
        *v121 = **(a2 + 53) + 1608;
        *(v121 + 8) = 0;
        *(v121 + 16) = 63;
        *(v121 + 17) = 0u;
        *(v121 + 33) = 0u;
        *(v121 + 44) = 0u;
        *(v121 + 18) = v145;
        *(v121 + 60) = v147;
        goto LABEL_409;
      case 37:
        v108 = v835[0];
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          goto LABEL_788;
        }

        v109 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
          goto LABEL_377;
        }

        v98 = v18;
        v112 = v815;
        if (v835[0] == v815)
        {
          goto LABEL_741;
        }

        v113 = *(v834 + v815);
        v114 = *(a2 + 1712) ? v793[0] - v113 : v113;
        if (!v115)
        {
          goto LABEL_741;
        }

        *v748 = v17;
        if (v835[0] == v112 + 1)
        {
          goto LABEL_164;
        }

        v116 = v115;
        v117 = *(v834 + (v112 + 1));
        v118 = *(a2 + 1712) ? v793[0] - v117 : v117;
        if (!v119)
        {
          goto LABEL_164;
        }

        LODWORD(v815) = v112 + 2;
        if (v108 < v112 + 5)
        {
          goto LABEL_164;
        }

        if (v108 > v112 + 7)
        {
          goto LABEL_164;
        }

        v731 = v119;
        v120 = v834;
        v733 = getDecodedOrdering(*(v834 + (v112 + 3)));
        if (v733 <= 1)
        {
          goto LABEL_164;
        }

        v634 = v120[v112 + 4];
        v739 = v634;
        if ((v634 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v634)
          {
            v739 = 1;
          }

          else
          {
            v739 = *(*(a2 + 225) + v634);
          }
        }

        if (*this)
        {
          v121 = 0;
          v21 = 1;
        }

        else
        {
          if (v108 > 6)
          {
            v728 = getDecodedOrdering(*(v834 + (v112 + 5)));
            if (v728 <= 1)
            {
LABEL_164:
              v822 = "Invalid record";
              v826 = 259;
            }
          }

          else
          {
            v728 = dword_2750C80D0[v733 - 2];
          }

          TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits((*(a2 + 54) + 256), *v116);
          if (v665)
          {
          }

          v668 = __clz((TypeSizeInBits + 7) >> 3);
          v669 = operator new(0xA0uLL);
          v670 = (v669 + 24);
          v669[29] = v669[29] & 0x38000000 | 3;
          v671 = 96;
          v746 = v669;
          do
          {
            *v669 = 0;
            *(v669 + 1) = 0;
            *(v669 + 2) = 0;
            *(v669 + 3) = v670;
            v669 += 8;
            v671 -= 32;
          }

          while (v671);
          v672 = 63 - v668;
          v673 = v670;
          llvm::AtomicCmpXchgInst::AtomicCmpXchgInst(v670, v109, v116, v731, v672, v733, v728, v739, 0);
          v674 = v834;
          v675 = *(v746 + 57) & 0xFFFE;
          if (*(v834 + (v112 + 2)))
          {
            ++v675;
          }

          *(v746 + 57) = v675;
          if (v108 > 7)
          {
            *(v746 + 57) = v675 & 0xFFFD | (2 * (v674[v112 + 6] != 0));
            v695 = *(v746 + 12);
            v822 = __PAIR64__(v694, v110);
          }

          else
          {
            v676 = v809;
            v677 = v809 + 40;
            llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList(v809 + 5, v673);
            v678 = *(v676 + 5);
            *(v746 + 15) = v678;
            *(v746 + 16) = v677;
            *(v678 + 8) = v746 + 30;
            *(v676 + 5) = v746 + 30;
            v795[0] = 0;
            v826 = 257;
            v673 = llvm::ExtractValueInst::Create(v673, v795, 1, &v822);
          }

          VirtualTypeID = v110;
          v121 = v673;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v673);
          v21 = 9;
        }

        v17 = *v748;
        goto LABEL_744;
      case 38:
      case 59:
        v30 = v835[0];
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v795[0] = 0;
        {
          goto LABEL_419;
        }

        v31 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
          goto LABEL_419;
        }

        v815 = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = -1;
        if (v25 == 38)
        {
          LODWORD(v794.__r_.__value_.__l.__data_) = v32;
          v34 = v811;
          if (v835[0] == v811)
          {
            v815 = 0;
            goto LABEL_619;
          }

          v462 = *(v834 + v811);
          if (*(a2 + 1712))
          {
            v463 = v793[0] - v462;
          }

          else
          {
            v463 = v462;
          }

          if (!v815)
          {
LABEL_619:
            v822 = "Invalid record";
            v826 = 259;
          }

          v777 = v18;
          v464 = v17;
          v465 = v34 + 1;
          LODWORD(v811) = v34 + 1;
        }

        else
        {
          {
LABEL_419:
            v267 = "Invalid record";
LABEL_420:
            v822 = v267;
            v826 = 259;
          }

          v777 = v18;
          v464 = v17;
          v465 = v811;
        }

        v466 = v465 + 4;
        v467 = v465 + 5;
        if (v30 != v465 + 4 && v30 != v467)
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        v788 = v7;
        v515 = v834;
        DecodedRMWOperation = getDecodedRMWOperation(*(v834 + v465));
        if (DecodedRMWOperation >= 0x11 || (v517 = DecodedRMWOperation, v767 = v515[v465 + 1], v518 = getDecodedOrdering(v515[v465 + 2]), v518 <= 1))
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        v591 = v515[v465 + 3];
        v592 = v591;
        v758 = v518;
        if ((v591 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v591)
          {
            v592 = 1;
          }

          else
          {
            v592 = *(*(a2 + 225) + v591);
          }
        }

        LOWORD(v822) = 0;
        if (v30 == v467)
        {
          if (*this)
          {
            v121 = 0;
            v21 = 1;
LABEL_958:
            v17 = v464;
            v18 = v777;
            v7 = v788;
            goto LABEL_790;
          }

          v621 = v815;
          if (BYTE1(v822))
          {
            v625 = v822;
LABEL_955:
            v626 = operator new(0x80uLL);
            v626[21] = v626[21] & 0x38000000 | 2;
            *v626 = 0;
            *(v626 + 1) = 0;
            *(v626 + 2) = 0;
            *(v626 + 3) = v626 + 16;
            *(v626 + 4) = 0;
            *(v626 + 5) = 0;
            *(v626 + 6) = 0;
            *(v626 + 7) = v626 + 16;
            v627 = v31;
            v121 = (v626 + 16);
            llvm::AtomicRMWInst::AtomicRMWInst((v626 + 16), v517, v627, v621, v625, v758, v592, 0);
            VirtualTypeID = v794.__r_.__value_.__l.__data_;
            v628 = *(v626 + 41) & 0xFFFE;
            if (v767)
            {
              ++v628;
            }

            *(v626 + 41) = v628;
            llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
            v21 = 9;
            goto LABEL_958;
          }
        }

        else
        {
          v621 = v815;
        }

        v624 = llvm::DataLayout::getTypeSizeInBits((*(a2 + 54) + 256), *v621);
        if (v622)
        {
        }

        v625 = 63 - __clz((v624 + 7) >> 3);
        goto LABEL_955;
      case 39:
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          goto LABEL_788;
        }

        v121 = llvm::ResumeInst::Create(__p.n128_u64[0], v158, v159);
        goto LABEL_209;
      case 40:
      case 47:
        if (v830 == 47)
        {
          if (v835[0] <= 2u)
          {
            goto LABEL_788;
          }
        }

        else if (v835[0] <= 3u)
        {
          goto LABEL_788;
        }

        LODWORD(v815) = 1;
        VirtualTypeID = *v834;
        if (v59)
        {
          v61 = v59;
          if (v25 == 40)
          {
            __p.n128_u64[0] = 0;
            LODWORD(v811) = 0;
            {
              goto LABEL_788;
            }

            v63 = v18;
            v64 = v810;
            if ((*(v810 + 9) & 8) != 0)
            {
              v522 = *(v810 + 5);
              if ((v522 & 0x40000000) != 0)
              {
                v523 = *(v810 - 1);
              }

              else
              {
                v523 = &v810[-4 * (v522 & 0x7FFFFFF)];
              }

              if (*v523 != __p.n128_u64[0])
              {
                v822 = "Personality function mismatch";
                v826 = 259;
              }
            }

            else
            {
              v65 = __p.n128_u64[0] != 0;
              llvm::Function::setHungoffOperand<0>(v810, __p.n128_i64[0], v62);
              *(v64 + 9) = *(v64 + 9) & 0xFFF7 | (8 * v65);
            }

            v329 = v815;
          }

          else
          {
            v63 = v18;
            v329 = 1;
          }

          v548 = *(v834 + v329);
          LODWORD(v815) = v329 + 2;
          v549 = *(v834 + v329 + 1);
          v826 = 257;
          v550 = llvm::LandingPadInst::Create(v61, v549, &v822, 0, v60);
          v121 = v550;
          v551 = *(v550 + 9) & 0xFFFE;
          if (v548)
          {
            ++v551;
          }

          *(v550 + 9) = v551;
          if (!v549)
          {
LABEL_785:
            llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
            v21 = 9;
            v18 = v63;
            goto LABEL_790;
          }

          while (1)
          {
            LODWORD(v815) = v815 + 1;
            __p.n128_u64[0] = 0;
            LODWORD(v811) = 0;
            {
              break;
            }

            llvm::LandingPadInst::addClause(v121, __p.n128_u64[0]);
            LODWORD(v549) = v549 - 1;
            if (!v549)
            {
              goto LABEL_785;
            }
          }

          if (v121)
          {
            llvm::Instruction::~Instruction(v121, v552);
            llvm::User::operator delete(v553);
          }

          goto LABEL_788;
        }

        goto LABEL_788;
      case 41:
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          goto LABEL_788;
        }

        v95 = v815;
        v96 = v815 + 5;
        if (v835[0] != v815 + 4 && v835[0] != v96)
        {
          goto LABEL_788;
        }

        v97 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
LABEL_435:
          v340 = "Load operand is not a pointer type";
LABEL_434:
          v822 = v340;
          v826 = 259;
        }

        v98 = v18;
        if (v835[0] == v96)
        {
          v99 = v815 + 1;
          LODWORD(v815) = v815 + 1;
          v100 = *(v834 + v95);
          VirtualTypeID = v100;
LABEL_738:
          if (!*this)
          {
            v529 = v834;
            v530 = getDecodedOrdering(*(v834 + v99 + 2));
            v531 = v530;
            if (v530 <= 6 && ((1 << v530) & 0x61) != 0 || (v618 = v529[v99]) == 0)
            {
LABEL_741:
              v532 = "Invalid record";
              goto LABEL_742;
            }

            v619 = v529[v99 + 3];
            v620 = v619;
            if ((v619 & 0xFFFFFFFE) != 0)
            {
              if (*(a2 + 226) <= v619)
              {
                v620 = 1;
              }

              else
              {
                v620 = *(*(a2 + 225) + v619);
              }
            }

            LOWORD(v795[0]) = 0;
            if (!*this)
            {
              if ((v795[0] & 0x100) == 0)
              {
                v532 = "Alignment missing from atomic load";
LABEL_742:
                v822 = v532;
                v826 = 259;
              }

              v662 = operator new(0x60uLL);
              v662[13] = v662[13] & 0x38000000 | 1;
              *v662 = 0;
              *(v662 + 1) = 0;
              *(v662 + 2) = 0;
              *(v662 + 3) = v662 + 8;
              v826 = 257;
              v663 = v620;
              v664 = (v662 + 8);
              llvm::LoadInst::LoadInst((v662 + 8), v101, v97, &v822, *(v834 + v99 + 1) != 0, v795[0], v531, v663, 0);
              v121 = v664;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v664);
              v21 = 9;
LABEL_744:
              v18 = v98;
              goto LABEL_790;
            }
          }

LABEL_743:
          v121 = 0;
          v21 = 1;
          goto LABEL_744;
        }

        if (v528)
        {
          v101 = v528;
          v99 = v95;
          goto LABEL_738;
        }

        v447 = "Missing element type for old style atomic load";
        goto LABEL_633;
      case 42:
      case 45:
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v815 = 0;
        v795[0] = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v35 = v815;
        if (*(*v815 + 8) != 15)
        {
          goto LABEL_788;
        }

        if (v25 == 45)
        {
          {
            goto LABEL_788;
          }

          v36 = v811;
LABEL_629:
          if (v835[0] != v36 + 4)
          {
            goto LABEL_788;
          }

          v336 = v18;
          v470 = __p.n128_u64[0];
          if (*this)
          {
            goto LABEL_631;
          }

          v559 = v834;
          v560 = getDecodedOrdering(*(v834 + (v36 + 2)));
          if (v560 == 6)
          {
            goto LABEL_979;
          }

          v561 = v560;
          if ((v560 & 3) == 0)
          {
            goto LABEL_979;
          }

          v562 = v559[v36 + 3];
          v563 = v562;
          if ((v562 & 0xFFFFFFFE) != 0)
          {
            if (*(a2 + 226) <= v562)
            {
              v768 = 1;
LABEL_975:
              v635 = v559[v36];
              if (v635)
              {
                LOWORD(v798[0]) = 0;
                if (*this)
                {
                  v121 = 0;
                  v21 = 1;
                  goto LABEL_982;
                }

                if ((v798[0] & 0x100) != 0)
                {
                  v636 = operator new(0x80uLL);
                  v636[21] = v636[21] & 0x38000000 | 2;
                  *v636 = 0;
                  *(v636 + 1) = 0;
                  *(v636 + 2) = 0;
                  *(v636 + 3) = v636 + 16;
                  *(v636 + 4) = 0;
                  *(v636 + 5) = 0;
                  *(v636 + 6) = 0;
                  *(v636 + 7) = v636 + 16;
                  v637 = v561;
                  v121 = (v636 + 16);
                  llvm::StoreInst::StoreInst((v636 + 16), v470, v35, *(v834 + (v36 + 1)) != 0, v798[0], v637, v768, 0);
                  llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
                  v21 = 9;
LABEL_982:
                  v18 = v336;
                  goto LABEL_790;
                }

                v638 = "Alignment missing from atomic store";
LABEL_980:
                v822 = v638;
                v826 = 259;
              }

LABEL_979:
              v638 = "Invalid record";
              goto LABEL_980;
            }

            v563 = *(*(a2 + 225) + v562);
          }

          v768 = v563;
          goto LABEL_975;
        }

        v330 = v18;
        LODWORD(v794.__r_.__value_.__l.__data_) = v331;
        v333 = v811;
        if (v835[0] == v811)
        {
          __p.n128_u64[0] = 0;
        }

        else
        {
          v468 = *(v834 + v811);
          if (*(a2 + 1712))
          {
            v469 = v793[0] - v468;
          }

          else
          {
            v469 = v468;
          }

          if (__p.n128_u64[0])
          {
            v36 = v333 + 1;
            LODWORD(v811) = v333 + 1;
            v18 = v330;
            goto LABEL_629;
          }
        }

        v447 = "Invalid record";
LABEL_633:
        v822 = v447;
        v826 = 259;
      case 46:
        v66 = v835[0];
        LODWORD(v811) = 0;
        __p.n128_u64[0] = 0;
        v795[0] = 0;
        {
          goto LABEL_788;
        }

        v67 = __p.n128_u64[0];
        if (*(*__p.n128_u64[0] + 8) != 15)
        {
LABEL_377:
          v104 = "Cmpxchg operand is not a pointer type";
          goto LABEL_789;
        }

        v815 = 0;
        LODWORD(v794.__r_.__value_.__l.__data_) = 0;
        {
          goto LABEL_788;
        }

        v68 = v811;
        {
          v822 = "Invalid record";
          v826 = 259;
        }

        v771 = v18;
        LODWORD(v811) = v68 + 1;
        if (v66 < v68 + 4 || v66 > v68 + 7)
        {
          v602 = "Invalid record";
          goto LABEL_1026;
        }

        v740 = v69;
        v74 = v834;
        v732 = *(v834 + (v68 + 1));
        v734 = v73;
        v75 = getDecodedOrdering(*(v834 + (v68 + 2)));
        if (v75 <= 1)
        {
          v602 = "Invalid cmpxchg success ordering";
          goto LABEL_1026;
        }

        v730 = v75;
        v76 = v74[v68 + 3];
        v747 = v76;
        if ((v76 & 0xFFFFFFFE) != 0)
        {
          if (*(a2 + 226) <= v76)
          {
            v747 = 1;
          }

          else
          {
            v747 = *(*(a2 + 225) + v76);
          }
        }

        if (*this)
        {
          goto LABEL_1027;
        }

        v655 = v834;
        v656 = getDecodedOrdering(*(v834 + (v68 + 4)));
        v657 = v656;
        if (v656 <= 6 && ((1 << v656) & 0x63) != 0)
        {
          v602 = "Invalid cmpxchg failure ordering";
LABEL_1026:
          v822 = v602;
          v826 = 259;
        }

        v729 = v655[v68 + 5];
        LOWORD(v798[0]) = 0;
        if (v66 != v68 + 7)
        {
          goto LABEL_1122;
        }

        if (*this)
        {
LABEL_1027:
          v121 = 0;
          v21 = 1;
        }

        else
        {
          if ((v798[0] & 0x100) != 0)
          {
            v696 = v798[0];
          }

          else
          {
LABEL_1122:
            v699 = llvm::DataLayout::getTypeSizeInBits((*(a2 + 54) + 256), *v70);
            if (v697)
            {
            }

            v696 = 63 - __clz((v699 + 7) >> 3);
          }

          v727 = v696;
          v700 = operator new(0xA0uLL);
          v701 = v700 + 96;
          *(v700 + 29) = *(v700 + 29) & 0x38000000 | 3;
          v702 = 96;
          v770 = v700;
          v703 = v700;
          do
          {
            *v703 = 0;
            *(v703 + 1) = 0;
            *(v703 + 2) = 0;
            *(v703 + 3) = v701;
            v703 = (v703 + 32);
            v702 -= 32;
          }

          while (v702);
          llvm::AtomicCmpXchgInst::AtomicCmpXchgInst(v700 + 96, v67, v70, v734, v727, v730, v657, v747, 0);
          *(v770 + 57) = (v732 != 0) | (2 * (v729 != 0)) | *(v770 + 57) & 0xFFFC;
          v705 = *(v770 + 12);
          v822 = __PAIR64__(v704, v740);
          v121 = v701;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v701);
          v21 = 9;
        }

        v18 = v771;
        goto LABEL_790;
      case 48:
        if (v835[0] - 1 >= 2)
        {
          goto LABEL_352;
        }

        v77 = **(a2 + 53);
        if (!v835[0])
        {
          goto LABEL_758;
        }

        v79 = *(a2 + 1712) ? v793[0] - *v834 : *v834;
        if (!v80)
        {
          goto LABEL_758;
        }

        if (v835[0] == 2)
        {
          v83 = *(v834 + 2);
          v84 = *(a2 + 186);
          if (v83 >= (*(a2 + 187) - v84) >> 3 || (v85 = *(v84 + 8 * v83)) == 0)
          {
LABEL_758:
            v540 = "Invalid record";
            goto LABEL_795;
          }
        }

        else
        {
          v85 = 0;
        }

        v157 = llvm::CleanupReturnInst::Create(v80, v85, v81, v82);
        goto LABEL_693;
      case 49:
        if (v835[0] != 2)
        {
          goto LABEL_352;
        }

        v148 = **(a2 + 53);
        if (!v835[0])
        {
          goto LABEL_758;
        }

        v150 = *(a2 + 1712) ? v793[0] - *v834 : *v834;
        if (!v151)
        {
          goto LABEL_758;
        }

        v154 = *(v834 + 2);
        v155 = *(a2 + 186);
        if (v154 >= (*(a2 + 187) - v155) >> 3)
        {
          goto LABEL_758;
        }

        v156 = *(v155 + 8 * v154);
        if (!v156)
        {
          goto LABEL_758;
        }

        v157 = llvm::CatchReturnInst::Create(v151, v156, v152, v153);
        goto LABEL_693;
      case 50:
      case 51:
        if (v835[0] <= 1u)
        {
          goto LABEL_352;
        }

        v51 = **(a2 + 53);
        if (v835[0])
        {
          if (*(a2 + 1712))
          {
            v53 = v793[0] - *v834;
          }

          else
          {
            v53 = *v834;
          }
        }

        else
        {
          v54 = 0;
        }

        v324 = 2;
        LODWORD(v811) = 2;
        v325 = *(v834 + 2);
        __p.n128_u64[0] = v820;
        __p.n128_u64[1] = 0x200000000;
        if (!v325)
        {
          goto LABEL_403;
        }

        do
        {
          v815 = 0;
          v795[0] = 0;
          {
            goto LABEL_406;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, v815);
          --v325;
        }

        while (v325);
        v324 = v811;
LABEL_403:
        if (v835[0] == v324)
        {
          v826 = 257;
          if (v25 == 51)
          {
            v326 = llvm::CleanupPadInst::Create(v54, __p.n128_u64[0], __p.n128_u32[2], &v822);
          }

          else
          {
            v326 = llvm::CatchPadInst::Create(v54, __p.n128_u64[0], __p.n128_u32[2], &v822);
          }

          v121 = v326;
          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
          v21 = 9;
          goto LABEL_900;
        }

LABEL_406:
        v822 = "Invalid record";
        v826 = 259;
      case 52:
        if (v835[0] <= 1u)
        {
          goto LABEL_352;
        }

        v86 = **(a2 + 53);
        if (v835[0])
        {
          v88 = v18;
          if (*(a2 + 1712))
          {
            v89 = v793[0] - *v834;
          }

          else
          {
            v89 = *v834;
          }
        }

        else
        {
          v88 = v18;
          v90 = 0;
        }

        v434 = *(v834 + 2);
        __p.n128_u64[0] = v820;
        __p.n128_u64[1] = 0x200000000;
        if (v434)
        {
          v435 = 2;
          do
          {
            v436 = *(v834 + 2 * v435);
            v437 = *(a2 + 186);
            if (v436 >= (*(a2 + 187) - v437) >> 3 || (v438 = *(v437 + 8 * v436)) == 0)
            {
              v822 = "Invalid record";
              v826 = 259;
            }

            ++v435;
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, v438);
          }

          while (v435 - v434 != 2);
        }

        else
        {
          v435 = 2;
        }

        if (v835[0] == v435 + 1)
        {
          v439 = *(v834 + 2 * v435);
          v440 = *(a2 + 186);
          if (v439 >= (*(a2 + 187) - v440) >> 3)
          {
            goto LABEL_606;
          }

          v441 = *(v440 + 8 * v439);
          if (!v441)
          {
            goto LABEL_606;
          }

          ++v435;
        }

        else
        {
          v441 = 0;
        }

        if (v835[0] == v435)
        {
          v826 = 257;
          v455 = operator new(0x48uLL);
          v455[7] = v455[7] & 0x38000000 | 0x40000000;
          *v455 = 0;
          v456 = v441;
          v121 = (v455 + 2);
          llvm::CatchSwitchInst::CatchSwitchInst((v455 + 2), v90, v456, v434, &v822, 0);
          if (__p.n128_u32[2])
          {
            v457 = __p.n128_u64[0];
            v458 = 8 * __p.n128_u32[2];
            do
            {
              v459 = *v457++;
              llvm::CatchSwitchInst::addHandler(v121, v459);
              v458 -= 8;
            }

            while (v458);
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
          v21 = 9;
          v18 = v88;
          v581 = __p.n128_u64[0];
          v582 = __p.n128_u64[0] == v820;
LABEL_848:
          if (!v582)
          {
            goto LABEL_894;
          }

          goto LABEL_790;
        }

LABEL_606:
        v822 = "Invalid record";
        v826 = 259;
      case 55:
        if (!v835[0])
        {
          goto LABEL_352;
        }

        v93 = v834;
        v94 = *(a2 + 222);
        if (*v834 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 223) - v94) >> 3))
        {
          goto LABEL_352;
        }

        __p = 0uLL;
        v820[0] = 0;
        LODWORD(v811) = 1;
        if (v835[0] != 1)
        {
          do
          {
            v815 = 0;
            v795[0] = 0;
            {
              v822 = "Invalid record";
              v826 = 259;
            }

            std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, &v815);
          }

          while (v835[0] != v811);
          v93 = v834;
          v94 = *(a2 + 222);
        }

        std::vector<llvm::OperandBundleDefT<llvm::Value *>>::emplace_back<std::string &,std::vector<llvm::Value *>>(&v803, v94 + 24 * *v93, &__p);
        v21 = 4;
        if (__p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }

        goto LABEL_796;
      case 56:
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          goto LABEL_788;
        }

        v203 = (v815 + 1);
        if (v835[0] < v203)
        {
          goto LABEL_788;
        }

        v204 = __p.n128_u64[0];
        DecodedUnaryOpcode = getDecodedUnaryOpcode(*(v834 + v815), *__p.n128_u64[0]);
        if (DecodedUnaryOpcode == -1)
        {
          goto LABEL_433;
        }

        v826 = 257;
        v121 = llvm::UnaryOperator::Create(DecodedUnaryOpcode, v204, &v822, 0);
        VirtualTypeID = v811;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v121);
        if (v835[0] > v203 && llvm::FPMathOperator::classof(v121))
        {
          v206 = *(v834 + v203) & 0x7E | (*(v834 + v203) >> 7) & 1 | -(*(v834 + v203) & 1);
          if (v206)
          {
            *(v121 + 17) |= 2 * v206;
          }
        }

        goto LABEL_359;
      case 57:
        v91 = (*v834 - 1);
        v92 = *(a2 + 180);
        if (v91 >= (*(a2 + 181) - v92) >> 3)
        {
          v760 = 0;
        }

        else
        {
          v760 = *(v92 + 8 * v91);
        }

        v308 = *(v834 + 4);
        v309 = *(a2 + 186);
        v783 = v7;
        if (v308 >= (*(a2 + 187) - v309) >> 3)
        {
          v742 = 0;
        }

        else
        {
          v742 = *(v309 + 8 * v308);
        }

        v310 = *(v834 + 1);
        v311 = *(v834 + 6);
        v822 = &v824;
        v823 = 0x1000000000;
        for (m = 4; v311; --v311)
        {
          v313 = *(v834 + 2 * m);
          v314 = *(a2 + 186);
          if (v313 >= (*(a2 + 187) - v314) >> 3)
          {
            v315 = 0;
          }

          else
          {
            v315 = *(v314 + 8 * v313);
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v822, v315);
          ++m;
        }

        *v751 = v17;
        v799 = m;
        if ((v310 & 0x8000) != 0)
        {
          v799 = m + 1;
          v317 = *(v834 + m);
          if (!v318 || (v316 = v318, *(v318 + 8) != 14))
          {
            v320 = "Explicit call type is not a function type";
            goto LABEL_774;
          }
        }

        else
        {
          v316 = 0;
          v317 = 0xFFFFFFFFLL;
        }

        *v798 = 0;
        v797 = 0;
        {
          v320 = "Invalid record";
          goto LABEL_774;
        }

        v327 = *v798;
        if (**v798)
        {
          v328 = *(**v798 + 8) == 15;
        }

        else
        {
          v328 = 0;
        }

        if (!v328)
        {
          v320 = "Callee is not a pointer type";
          goto LABEL_774;
        }

        if (v316)
        {
          v445 = *(**v798 + 24);
          if (v445)
          {
            v446 = v445 == v316;
          }

          else
          {
            v446 = 1;
          }

          if (!v446)
          {
            v320 = "Explicit call type does not match pointee type of callee operand";
            goto LABEL_774;
          }
        }

        else
        {
          if (!v535 || (v316 = v535, *(v535 + 8) != 14))
          {
            v320 = "Callee is not of pointer to function type";
LABEL_774:
            __p.n128_u64[0] = v320;
            v821 = 259;
          }
        }

        v536 = v835[0];
        v537 = (*(v316 + 12) - 1);
        v538 = v799;
        if (v835[0] < (v537 + v799))
        {
          __p.n128_u64[0] = "Insufficient operands to call";
          v821 = 259;
        }

        v778 = v18;
        __p.n128_u64[0] = v820;
        __p.n128_u64[1] = 0x1000000000;
        v815 = v817;
        v816 = 0x1000000000;
        if (v537)
        {
          v567 = 1;
          while (1)
          {
            v569 = *(*(v316 + 16) + 8 * v567);
            if (*(v569 + 8) == 8)
            {
              v570 = *(v834 + 2 * v538);
              v571 = *(a2 + 186);
              if (v570 >= (*(a2 + 187) - v571) >> 3)
              {
                break;
              }

              v572 = *(v571 + 8 * v570);
            }

            else
            {
              if (v538 == v835[0])
              {
                break;
              }

              v573 = *(v834 + v538);
              v574 = *(a2 + 1712) ? v793[0] - v573 : v573;
            }

            if (!v572)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, v572);
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v815, v568);
            ++v538;
            ++v567;
            if (!--v537)
            {
              v536 = v835[0];
              goto LABEL_833;
            }
          }

          v799 = v538;
LABEL_941:
          v811 = "Invalid record";
          v814 = 259;
        }

LABEL_833:
        v736 = v327;
        v799 = v538;
        if (*(v316 + 8) < 0x100u)
        {
          if (v536 != v538)
          {
            goto LABEL_941;
          }
        }

        else if (v536 != v538)
        {
          do
          {
            *v795 = 0;
            LODWORD(v794.__r_.__value_.__l.__data_) = 0;
            {
              goto LABEL_941;
            }

            llvm::SmallVectorTemplateBase<void *,true>::push_back(&__p, *v795);
            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v815, v794.__r_.__value_.__l.__data_);
          }

          while (v835[0] != v799);
        }

        if (v803 != v804)
        {
          llvm::UpgradeOperandBundles(&v803);
        }

        v613 = v327;
        if (*(v327 + 16) == 24)
        {
          v614 = *(v327 + 71);
          if (v614 >= 0)
          {
            v615 = (v327 + 48);
          }

          else
          {
            v615 = *(v327 + 48);
          }

          if (v614 >= 0)
          {
            v616 = *(v327 + 71);
          }

          else
          {
            v616 = *(v327 + 56);
          }

          llvm::InlineAsm::ParseConstraints(v615, v616, v795);
          for (n = *v795; n != v796; n += 20)
          {
            if (*n == 3)
            {
              goto LABEL_1101;
            }
          }

          v641 = __p.n128_u32[2] - v823;
          v642 = __p.n128_u64[0];
          if (__p.n128_u32[2] > __p.n128_u32[2] - v823)
          {
            v643 = 0;
            do
            {
              v644 = *(__p.n128_u64[0] + 8 * v641 + 8 * v643);
              if (v644)
              {
                v645 = *(v644 + 16) == 4;
              }

              else
              {
                v645 = 0;
              }

              if (!v645 || v643 > v823 || *(v644 - 64) != v810 || *(v644 - 32) != *(v822 + v643))
              {
                v811 = "callbr argument does not match indirect dest";
                v814 = 259;
              }

              ++v643;
            }

            while (__p.n128_u32[2] - v641 != v643);
          }

          __p.n128_u32[2] -= v823;
          LODWORD(v816) = v641;
          v811 = v813;
          v812 = 0x600000000;
          if (v641)
          {
            v646 = 8 * v641;
            do
            {
              v647 = *v642++;
              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v811, *v647);
              v646 -= 8;
            }

            while (v646);
            v648 = v811;
            v649 = v812;
          }

          else
          {
            v649 = 0;
            v648 = v813;
          }

          v316 = llvm::FunctionType::get(**(v316 + 16), v648, v649, (*(v316 + 8) > 0xFFu));
          if (*(v736 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v794, *(v736 + 48), *(v736 + 56));
          }

          else
          {
            v794 = *(v736 + 48);
          }

          v679 = v796;
          if (*v795 != v796)
          {
            v680 = 0;
            v681 = 0;
            v682 = *v795 + 80;
            do
            {
              v683 = *(v682 - 80);
              if (!v683 || v683 == 1 && *(v682 - 67) == 1)
              {
                if (v680 >= v641)
                {
                  std::string::insert(&v794, v681, "!");
                }

                ++v680;
              }

              v684 = std::string::find(&v794, 44, v681);
              v681 = v684 + 1;
              if (v684 == -1)
              {
                break;
              }

              v252 = v682 == v679;
              v682 += 80;
            }

            while (!v252);
          }

          v685 = *(v736 + 47);
          if (v685 >= 0)
          {
            v686 = v736 + 24;
          }

          else
          {
            v686 = *(v736 + 24);
          }

          if (v685 >= 0)
          {
            v687 = *(v736 + 47);
          }

          else
          {
            v687 = *(v736 + 32);
          }

          if ((v794.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v688 = &v794;
          }

          else
          {
            v688 = v794.__r_.__value_.__r.__words[0];
          }

          if ((v794.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v794.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v794.__r_.__value_.__l.__size_;
          }

          v736 = llvm::InlineAsm::get(v316, v686, v687, v688, size, *(v736 + 80), *(v736 + 81), *(v736 + 84), *(v736 + 88));
          *v798 = v736;
          if (SHIBYTE(v794.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v794.__r_.__value_.__l.__data_);
          }

          if (v811 != v813)
          {
            free(v811);
          }

LABEL_1101:
          v811 = v795;
          std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](&v811);
          v613 = v736;
        }

        v814 = 257;
        v690 = llvm::CallBrInst::Create(v316, v613, v742, v822, v823, __p.n128_u64[0], __p.n128_u32[2], v319, v803, 0xAAAAAAAAAAAAAAABLL * ((v804 - v803) >> 4), &v811, 0);
        v691 = v803;
        for (ii = v804; ii != v691; std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](&v803, ii))
        {
          ii -= 48;
        }

        v804 = v691;
        v121 = v690;
        llvm::SmallVectorTemplateBase<void *,true>::push_back(a2 + 210, v690);
        *(v690 + 9) = *(v690 + 9) & 0xF003 | (2 * v310) & 0xFFC;
        *(v690 + 8) = v760;
        if (*this)
        {
          llvm::Value::deleteValue(v690, v19);
          v21 = 1;
        }

        else
        {
          v21 = 9;
        }

        v17 = *v751;
        v18 = v778;
        v7 = v783;
        if (v815 != v817)
        {
          free(v815);
        }

        v654 = __p.n128_u64[0];
        if (__p.n128_u64[0] == v820)
        {
          goto LABEL_775;
        }

        goto LABEL_1110;
      case 58:
        LODWORD(v815) = 0;
        __p.n128_u64[0] = 0;
        LODWORD(v811) = 0;
        {
          goto LABEL_788;
        }

        if (v835[0] != v815)
        {
          goto LABEL_433;
        }

        v296 = operator new(0x60uLL);
        v121 = (v296 + 8);
        v296[13] = v296[13] & 0x38000000 | 1;
        *v296 = 0;
        *(v296 + 1) = 0;
        *(v296 + 2) = 0;
        *(v296 + 3) = v296 + 8;
        v826 = 257;
        llvm::FreezeInst::FreezeInst((v296 + 8), __p.n128_u64[0], &v822, 0);
        VirtualTypeID = v811;
        goto LABEL_358;
      case 60:
        if (!v835[0])
        {
LABEL_352:
          v295 = "Invalid record";
LABEL_353:
          v822 = v295;
          v826 = 259;
LABEL_354:
        }

        v291 = v18;
        v292 = v834;
        v293 = 8 * v835[0];
        while (1)
        {
          v294 = *(*v7 + 4 * *v292 + 2);
          if (*(v294 + 16))
          {
            v294 = 0;
          }

          __p.n128_u64[0] = v294;
          if (!v294)
          {
            goto LABEL_761;
          }

          std::vector<llvm::orc::NonOwningSymbolStringPtr>::push_back[abi:nn200100](a2 + 1688, &__p);
          v292 += 2;
          v21 = 4;
          v293 -= 8;
          if (!v293)
          {
            v18 = v291;
            goto LABEL_796;
          }
        }

      default:
        v822 = "Invalid value";
        v826 = 259;
        goto LABEL_354;
    }
  }
}

void anonymous namespace::BitcodeReader::rememberAndSkipFunctionBody(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  v4 = *(a2 + 1520);
  if (*(a2 + 1512) == v4)
  {
    v6[0] = "Insufficient function protos";
    v7 = 259;
  }

  v6[0] = *(v4 - 8);
  *(a2 + 1520) = v4 - 8;
  v5 = 8 * *(a2 + 48) - *(a2 + 64);
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, v6)[1] = v5;
  llvm::BitstreamCursor::SkipBlock(this, (a2 + 32));
}

uint64_t anonymous namespace::BitcodeReader::getContainedTypeID(_anonymous_namespace_::BitcodeReader *this, uint64_t a2, unsigned int a3)
{
  v7 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*(this + 68), *(this + 140), a2, &v7))
  {
    v5 = v7 == *(this + 68) + 32 * *(this + 140);
  }

  else
  {
    v5 = 1;
  }

  if (v5 || *(v7 + 16) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(v7 + 8) + 4 * a3);
  }
}

llvm::ValueHandleBase **llvm::BitcodeReaderValueList::push_back(llvm::ValueHandleBase **this, llvm::Value *a2, int a3)
{
  v5 = this;
  v7 = this[1];
  v6 = this[2];
  if (v7 >= v6)
  {
    v9 = (v7 - *this) >> 5;
    if ((v9 + 1) >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v6 - *this;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v18[4] = this;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>>(this, v12);
    }

    v13 = 32 * v9;
    *v13 = 6;
    *(v13 + 8) = 0;
    *(v13 + 16) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      llvm::ValueHandleBase::AddToUseList(v13);
    }

    *(v13 + 24) = a3;
    v8 = v13 + 32;
    v14 = v5[1];
    v15 = v13 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v5[1] = (v13 + 32);
    v17 = v5[2];
    v5[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    this = std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::~__split_buffer(v18);
  }

  else
  {
    *v7 = 6;
    *(v7 + 1) = 0;
    *(v7 + 2) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      this = llvm::ValueHandleBase::AddToUseList(v7);
    }

    *(v7 + 6) = a3;
    v8 = v7 + 32;
  }

  v5[1] = v8;
  return this;
}

void anonymous namespace::BitcodeReader::parseConstants(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  v168[64] = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock(this, (a2 + 32), 0, 11);
  if (!*this)
  {
    v4 = v168;
    __src = v168;
    v167 = 0x4000000000;
    v5 = **(a2 + 424) + 1992;
    v6 = (*(a2 + 720) - *(a2 + 712)) >> 5;
    PtrElementTypeByID = 0;
    while (1)
    {
      llvm::BitstreamCursor::advanceSkippingSubblocks(&v164, (a2 + 32), 0);
      if (v165)
      {
        v7 = v164;
        v164 = 0;
        *this = v7;
        goto LABEL_10;
      }

      if (v164 == 2)
      {
        goto LABEL_8;
      }

      if (v164 != 1)
      {
        break;
      }

      if (v6 != ((*(a2 + 720) - *(a2 + 712)) >> 5))
      {
        v158 = "Invalid constant reference";
LABEL_9:
        v161 = 259;
      }

      *this = 0;
LABEL_10:
      v8 = 1;
LABEL_11:
      if (v165)
      {
        v9 = v164;
        v164 = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      if ((v8 | 2) != 2)
      {
        if (__src != v4)
        {
          free(__src);
        }

        return;
      }
    }

    if (!v164)
    {
LABEL_8:
      v158 = "Malformed block";
      goto LABEL_9;
    }

    LODWORD(v167) = 0;
    v10 = **(a2 + 424);
    llvm::BitstreamCursor::readRecord(&v162, (a2 + 32), SHIDWORD(v164), &__src, 0);
    if (v163)
    {
      v14 = v162;
      v162 = 0;
      *this = v14;
      v8 = 1;
LABEL_290:
      if (v163)
      {
        v131 = v162;
        v162 = 0;
        if (v131)
        {
          (*(*v131 + 8))(v131);
        }
      }

      goto LABEL_11;
    }

    LODWORD(v15) = v162;
    switch(v162)
    {
      case 1:
        if (!v167)
        {
          v16 = "Invalid settype record";
          goto LABEL_269;
        }

        v69 = *__src;
        v70 = *(a2 + 520);
        if (*__src >= ((*(a2 + 528) - v70) >> 3) || (v71 = *(v70 + 8 * v69)) == 0)
        {
          v114 = "Invalid settype record";
          goto LABEL_229;
        }

        if (v71 == v10 + 1608)
        {
          v114 = "Invalid constant type";
LABEL_229:
          v158 = v114;
          v161 = 259;
        }

        v72 = *(v70 + 8 * v69);
        v8 = 2;
        VirtualTypeID = v69;
        v5 = v72;
        goto LABEL_290;
      case 2:
        v76 = *(v5 + 8);
        if (v76 <= 0xE && ((1 << v76) & 0x4180) != 0 || v76 == 21 && (getTargetTypeInfo(v5), (v11 & 1) == 0))
        {
          v16 = "Invalid type for a constant null value";
          goto LABEL_269;
        }

        v154 = v5;
        NullValue = llvm::Constant::getNullValue(v5, v11, v12, v13);
        goto LABEL_286;
      case 4:
        if (*(v5 + 8) != 13 || !v167)
        {
          v16 = "Invalid integer const record";
          goto LABEL_269;
        }

        v56 = *__src;
        if (*__src)
        {
          if (v56 == 1)
          {
            v57 = 0x8000000000000000;
          }

          else
          {
            v57 = -(v56 >> 1);
          }
        }

        else
        {
          v57 = v56 >> 1;
        }

        v154 = v5;
        NullValue = llvm::ConstantInt::get(v5, v57, 0);
        goto LABEL_286;
      case 5:
        if (*(v5 + 8) != 13 || !v167)
        {
          v16 = "Invalid wide integer const record";
          goto LABEL_269;
        }

        v154 = v5;
        llvm::readWideAPInt(__src, v167, *(v5 + 8) >> 8, &v158);
        String = llvm::ConstantInt::get(*(a2 + 424), &v158, v77, v78);
        if (v159 >= 0x41 && v158)
        {
          MEMORY[0x277C69E10](v158, 0x1000C8000313F17);
        }

        goto LABEL_287;
      case 6:
        if (!v167)
        {
          v16 = "Invalid float const record";
          goto LABEL_269;
        }

        v79 = *(v5 + 8);
        v154 = v5;
        if (v79 <= 2)
        {
          if (*(v5 + 8))
          {
            if (v79 == 1)
            {
              v122 = *(a2 + 424);
              v145 = *__src;
              LODWORD(__s.__r_.__value_.__r.__words[1]) = 16;
              __s.__r_.__value_.__r.__words[0] = v145;
              llvm::detail::IEEEFloat::initFromBFloatAPInt(&v159, &__s);
            }

            else
            {
              if (v79 != 2)
              {
                goto LABEL_147;
              }

              v122 = *(a2 + 424);
              v123 = *__src;
              LODWORD(__s.__r_.__value_.__r.__words[1]) = 32;
              __s.__r_.__value_.__r.__words[0] = v123;
              llvm::detail::IEEEFloat::initFromFloatAPInt(&v159, &__s);
            }
          }

          else
          {
            v122 = *(a2 + 424);
            v143 = *__src;
            LODWORD(__s.__r_.__value_.__r.__words[1]) = 16;
            __s.__r_.__value_.__r.__words[0] = v143;
            llvm::detail::IEEEFloat::initFromHalfAPInt(&v159, &__s);
          }
        }

        else
        {
          if (*(v5 + 8) > 4u)
          {
            if (v79 == 5)
            {
              LODWORD(__s.__r_.__value_.__r.__words[1]) = 128;
              llvm::APInt::initFromArray(&__s, __src, v167);
              llvm::detail::IEEEFloat::initFromQuadrupleAPInt(&v159, &__s);
            }

            if (v79 == 6)
            {
              LODWORD(__s.__r_.__value_.__r.__words[1]) = 128;
              llvm::APInt::initFromArray(&__s, __src, v167);
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v159, &llvm::semPPCDoubleDouble, &__s);
            }

            goto LABEL_147;
          }

          if (v79 != 3)
          {
            if (v79 == 4)
            {
              __s.__r_.__value_.__r.__words[0] = *(__src + 4) | (*__src << 16);
              __s.__r_.__value_.__l.__size_ = *(__src + 3);
              LODWORD(v155.__r_.__value_.__r.__words[1]) = 80;
              llvm::APInt::initFromArray(&v155, &__s, 2u);
              llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(&v159, &v155);
            }

LABEL_147:
            v80 = v5;
            goto LABEL_148;
          }

          v122 = *(a2 + 424);
          v144 = *__src;
          LODWORD(__s.__r_.__value_.__r.__words[1]) = 64;
          __s.__r_.__value_.__r.__words[0] = v144;
          llvm::detail::IEEEFloat::initFromDoubleAPInt(&v159, &__s);
        }

        String = llvm::ConstantFP::get(v122, &v158, v124, v125);
        llvm::APFloat::Storage::~Storage(&v159);
        goto LABEL_287;
      case 7:
        if (!v167)
        {
          v16 = "Invalid aggregate record";
          goto LABEL_269;
        }

        v58 = 0;
        v158 = &v159 + 8;
        *&v159 = 0x1000000000;
        v59 = 8 * v167;
        do
        {
          llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v158, *(__src + v58));
          v58 += 8;
        }

        while (v59 != v58);
        v61 = *(v5 + 8);
        v154 = v5;
        if (v61 == 16)
        {
          v62 = 255;
          goto LABEL_265;
        }

        if (v61 == 17)
        {
          v62 = 254;
LABEL_265:
          LOWORD(__s.__r_.__value_.__l.__data_) = v62;
          HIDWORD(__s.__r_.__value_.__r.__words[0]) = 0;
          __s.__r_.__value_.__l.__size_ = 0;
          goto LABEL_266;
        }

        if ((v61 & 0xFE) == 0x12)
        {
          v62 = 253;
          goto LABEL_265;
        }

        v127 = llvm::UndefValue::get(v5, v60);
        goto LABEL_266;
      case 8:
      case 9:
        if (!v167)
        {
          v16 = "Invalid string record";
          goto LABEL_269;
        }

        v154 = v5;
        v158 = &v160;
        v159 = xmmword_2750C3D00;
        llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v158, __src, __src + 8 * v167);
        String = llvm::ConstantDataArray::getString(*(a2 + 424), v158, v159, v15 == 9);
        v18 = v158;
        if (v158 == &v160)
        {
          goto LABEL_287;
        }

        goto LABEL_338;
      case 10:
        v64 = v167;
        if (v167 <= 2)
        {
          v16 = "Invalid binary op constexpr record";
          goto LABEL_269;
        }

        v104 = __src;
        DecodedBinaryOpcode = getDecodedBinaryOpcode(*__src, v5);
        v154 = v5;
        if (DecodedBinaryOpcode < 0)
        {
          goto LABEL_147;
        }

        if (v64 != 3 && ((v130 = 3, (DecodedBinaryOpcode & 0x7FFFFFFD) == 0xD) || (DecodedBinaryOpcode & 0x7FFFFFF7) == 0x11 || (v130 = 1, (DecodedBinaryOpcode - 19) < 2) || (DecodedBinaryOpcode & 0x7FFFFFFE) == 0x1A))
        {
          v106 = v130 & v104[24];
        }

        else
        {
          v106 = 0;
        }

        LOBYTE(v158) = DecodedBinaryOpcode;
        BYTE1(v158) = v106;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        __s.__r_.__value_.__l.__data_ = vmovn_s64(*(v104 + 8));
        v94 = (a2 + 616);
        goto LABEL_284;
      case 11:
        if (v167 <= 2)
        {
          v16 = "Invalid cast constexpr record";
          goto LABEL_269;
        }

        v154 = v5;
        v101 = __src;
        DecodedCastOpcode = getDecodedCastOpcode(*__src);
        if (DecodedCastOpcode < 0)
        {
          v80 = v5;
LABEL_148:
          NullValue = llvm::UndefValue::get(v80, v11);
        }

        else
        {
          v103 = DecodedCastOpcode;
          {
            v120 = "Invalid cast constexpr record";
            goto LABEL_318;
          }

          LOWORD(v158) = v103;
          HIDWORD(v158) = 0;
          *&v159 = 0;
          LODWORD(__s.__r_.__value_.__l.__data_) = *(__src + 2);
          v94 = (a2 + 616);
          v99 = v154;
LABEL_202:
          v100 = 1;
LABEL_285:
        }

LABEL_286:
        String = NullValue;
        goto LABEL_287;
      case 12:
      case 20:
      case 24:
        if (v167 <= 1)
        {
          v16 = "Constant GEP record must have at least two elements";
          goto LABEL_269;
        }

        v154 = v5;
        if (v162 != 24 && (v167 & 1) == 0)
        {
          v19 = 0;
          TypeByID = 0;
LABEL_193:
          LOBYTE(v15) = v15 == 20;
          LODWORD(v95) = -1;
          v96 = __src;
          goto LABEL_233;
        }

        if (v15 != 24)
        {
          v19 = 1;
          goto LABEL_193;
        }

        v96 = __src;
        v15 = *(__src + 1);
        v95 = v15 >> 1;
        v19 = 2;
LABEL_233:
        v158 = &v159 + 8;
        *&v159 = 0x1000000000;
        if (v167 == v19)
        {
          goto LABEL_234;
        }

        v150 = v95;
        ContainedTypeID = v96[v19];
        do
        {
          {
            v115 = "Invalid getelementptr constexpr record";
            goto LABEL_326;
          }

          v117 = v19 + 1;
          v19 += 2;
          llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v158, *(__src + v117));
        }

        while (v19 != v167);
        if (!v159)
        {
LABEL_234:
          v115 = "Invalid gep with no operands";
          goto LABEL_326;
        }

        if ((*(v118 + 8) & 0xFE) == 0x12)
        {
          if (v118)
          {
            v119 = *(v118 + 8);
            goto LABEL_320;
          }

          goto LABEL_325;
        }

        v119 = *(v118 + 8);
LABEL_320:
        if (v119 != 15)
        {
LABEL_325:
          v115 = "GEP base operand must be pointer or vector of pointer";
LABEL_326:
          __s.__r_.__value_.__r.__words[0] = v115;
          v157 = 259;
        }

        if (TypeByID)
        {
          v140 = *(v118 + 24);
          if (v140)
          {
            v141 = v150;
            if (v140 != TypeByID)
            {
              v115 = "Explicit gep operator type does not match pointee type of pointer operand";
              goto LABEL_326;
            }
          }

          else
          {
            v141 = v150;
          }
        }

        else
        {
          v141 = v150;
          if (!TypeByID)
          {
            __s.__r_.__value_.__r.__words[0] = "Missing element type for old-style constant GEP";
            v157 = 259;
          }
        }

        __s.__r_.__value_.__s.__data_[0] = 34;
        __s.__r_.__value_.__s.__data_[1] = v15 & 1;
        HIDWORD(__s.__r_.__value_.__r.__words[0]) = v141;
        __s.__r_.__value_.__l.__size_ = TypeByID;
        if (v158 != &v159 + 8)
        {
          free(v158);
        }

        goto LABEL_287;
      case 13:
        if (v167 <= 2)
        {
          v16 = "Invalid select constexpr record";
          goto LABEL_269;
        }

        v81 = 57;
LABEL_217:
        LOWORD(v158) = v81;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        __s.__r_.__value_.__l.__data_ = vmovn_s64(*__src);
        v55 = *(__src + 2);
LABEL_218:
        LODWORD(__s.__r_.__value_.__r.__words[1]) = v55;
        goto LABEL_219;
      case 14:
        if (v167 <= 2)
        {
          goto LABEL_189;
        }

        if (!v65 || (*(v65 + 8) & 0xFE) != 0x12)
        {
          goto LABEL_189;
        }

        v66 = __src;
        v67 = (__src + 16);
        if (v167 != 4)
        {
          goto LABEL_117;
        }

        {
LABEL_189:
          v16 = "Invalid extractelement constexpr record";
          goto LABEL_269;
        }

        v66 = __src;
        v67 = (__src + 24);
LABEL_117:
        v68 = *v67;
        LOWORD(v158) = 61;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        LODWORD(__s.__r_.__value_.__l.__data_) = v66[1];
        HIDWORD(__s.__r_.__value_.__r.__words[0]) = v68;
        goto LABEL_261;
      case 15:
        if (v167 < 3 || (*(v5 + 8) & 0xFE) != 0x12 || !v5)
        {
          goto LABEL_198;
        }

        v73 = __src;
        v74 = (__src + 16);
        if (v167 != 4)
        {
          goto LABEL_129;
        }

        {
LABEL_198:
          v16 = "Invalid insertelement constexpr record";
          goto LABEL_269;
        }

        v73 = __src;
        v74 = (__src + 24);
LABEL_129:
        v75 = *v74;
        LOWORD(v158) = 62;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        __s.__r_.__value_.__l.__data_ = vmovn_s64(*v73);
        LODWORD(__s.__r_.__value_.__r.__words[1]) = v75;
LABEL_219:
        v94 = (a2 + 616);
        v154 = v5;
        v99 = v5;
        v100 = 3;
        goto LABEL_285;
      case 16:
        if (v167 < 3 || (*(v5 + 8) & 0xFE) != 0x12 || !v5)
        {
          goto LABEL_153;
        }

        v81 = 63;
        goto LABEL_217;
      case 17:
        if (v167 <= 3)
        {
          v16 = "Invalid cmp constexpt record";
          goto LABEL_269;
        }

        if (!v107)
        {
          v16 = "Invalid cmp constexpr record";
LABEL_269:
          v158 = v16;
          v161 = 259;
        }

        v108 = *(v107 + 8);
        if ((v108 & 0xFE) == 0x12)
        {
          v108 = *(**(v107 + 16) + 8);
        }

        if (v108 < 6u && ((0x2Fu >> v108) & 1) != 0)
        {
          v109 = 54;
        }

        else if ((v108 & 0xFD) == 4)
        {
          v109 = 54;
        }

        else
        {
          v109 = 53;
        }

        v126 = *(__src + 3);
        LOBYTE(v158) = v109;
        BYTE1(v158) = v126;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        __s.__r_.__value_.__l.__data_ = vmovn_s64(*(__src + 8));
LABEL_261:
        v94 = (a2 + 616);
        v154 = v5;
LABEL_284:
        v99 = v5;
        v100 = 2;
        goto LABEL_285;
      case 18:
        if (v167 <= 1)
        {
          goto LABEL_188;
        }

        v154 = v5;
        memset(&v155, 0, sizeof(v155));
        memset(&__s, 0, sizeof(__s));
        v83 = *(__src + 1);
        v84 = (v83 + 2);
        if (v84 >= v167)
        {
          goto LABEL_222;
        }

        v85 = *(__src + v84);
        if (v167 < v83 + v85 + 3)
        {
          goto LABEL_222;
        }

        v86 = v4;
        v149 = *__src;
        if (v83)
        {
          v87 = v83;
          v88 = 2;
          do
          {
            std::string::push_back(&__s, *(__src + v88++));
            --v87;
          }

          while (v87);
        }

        if (v85)
        {
          v85 = v85;
          v89 = v83 + 3;
          do
          {
            std::string::push_back(&v155, *(__src + v89++));
            --v85;
          }

          while (v85);
        }

        llvm::UpgradeInlineAsmString(&__s);
        v4 = v86;
        if (!PtrElementTypeByID)
        {
          goto LABEL_316;
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __s.__r_.__value_.__l.__size_;
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v92 = &v155;
        }

        else
        {
          v92 = v155.__r_.__value_.__r.__words[0];
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v93 = SHIBYTE(v155.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v93 = v155.__r_.__value_.__l.__size_;
        }

        v52 = llvm::InlineAsm::get(PtrElementTypeByID, p_s, size, v92, v93, v149 & 1, v149 > 1, 0, 0);
        goto LABEL_315;
      case 19:
        v53 = *(v5 + 8);
        if (!v54 || v167 < 4 || (v53 & 0xFE) != 0x12 || (*(v54 + 8) & 0xFE) != 0x12)
        {
LABEL_153:
          v16 = "Invalid shufflevector constexpr record";
          goto LABEL_269;
        }

        LOWORD(v158) = 63;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        __s.__r_.__value_.__l.__data_ = vmovn_s64(*(__src + 8));
        v55 = *(__src + 3);
        goto LABEL_218;
      case 21:
        {
          v16 = "Invalid blockaddress record";
          goto LABEL_269;
        }

        LOWORD(v158) = 250;
        *&v159 = 0;
        v82 = *(__src + 1);
        HIDWORD(v158) = *(__src + 2);
        goto LABEL_186;
      case 22:
        if (!v167)
        {
          v16 = "Invalid data record";
          goto LABEL_269;
        }

        v21 = v5;
        v22 = *(v5 + 24);
        v23 = *(v22 + 8);
        v24 = v23 >> 8;
        v25 = v23 == 13 && v24 == 8;
        v154 = v21;
        if (v25)
        {
          v158 = &v160;
          v159 = xmmword_2750C3D00;
          llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v158, __src, __src + 8 * v167);
          v121 = *(a2 + 424);
          if ((*(v21 + 8) & 0xFE) == 0x12)
          {
            FP = llvm::ConstantDataVector::get(v121, v158, v159);
          }

          else
          {
            FP = llvm::ConstantDataArray::get<unsigned char>(v121, v158, v159);
          }

          goto LABEL_336;
        }

        if (v23 == 13 && v24 == 16)
        {
          v158 = &v160;
          v159 = xmmword_2750C3D00;
          llvm::SmallVectorImpl<unsigned short>::append<unsigned long long *,void>(&v158, __src, __src + 8 * v167);
          v26 = *(a2 + 424);
          if ((*(v21 + 8) & 0xFE) == 0x12)
          {
            FP = llvm::ConstantDataVector::get(v26, v158, v159);
          }

          else
          {
            FP = llvm::ConstantDataArray::get<unsigned short>(v26, v158, v159);
          }

LABEL_336:
          String = FP;
          v18 = v158;
          v128 = &v160;
          goto LABEL_337;
        }

        if (v23 == 13 && v24 == 32)
        {
          v158 = &v159 + 8;
          *&v159 = 0x1000000000;
          llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v158, __src, __src + 8 * v167);
          v129 = *(a2 + 424);
          if ((*(v21 + 8) & 0xFE) == 0x12)
          {
            v127 = llvm::ConstantDataVector::get(v129, v158, v159);
          }

          else
          {
            v127 = llvm::ConstantDataArray::get<unsigned int>(v129, v158, v159);
          }
        }

        else if (v23 == 13 && v24 == 64)
        {
          v158 = &v159 + 8;
          *&v159 = 0x1000000000;
          llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v158, __src, __src + 8 * v167);
          v142 = *(a2 + 424);
          if ((*(v21 + 8) & 0xFE) == 0x12)
          {
            v127 = llvm::ConstantDataVector::get(v142, v158, v159);
          }

          else
          {
            v127 = llvm::ConstantDataArray::get<unsigned long long>(v142, v158, v159);
          }
        }

        else
        {
          if (v23 <= 1u)
          {
            v158 = &v160;
            v159 = xmmword_2750C3D00;
            llvm::SmallVectorImpl<unsigned short>::append<unsigned long long *,void>(&v158, __src, __src + 8 * v167);
            if ((*(v21 + 8) & 0xFE) == 0x12)
            {
              FP = llvm::ConstantDataVector::getFP(v22, v158, v159);
            }

            else
            {
              FP = llvm::ConstantDataArray::getFP(v22, v158, v159);
            }

            goto LABEL_336;
          }

          if (v23 == 2)
          {
            v158 = &v159 + 8;
            *&v159 = 0x1000000000;
            llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v158, __src, __src + 8 * v167);
            if ((*(v21 + 8) & 0xFE) == 0x12)
            {
              v127 = llvm::ConstantDataVector::getFP(v22, v158, v159);
            }

            else
            {
              v127 = llvm::ConstantDataArray::getFP(v22, v158, v159);
            }
          }

          else
          {
            if (v23 != 3)
            {
              v120 = "Invalid type for value";
LABEL_318:
              v158 = v120;
              v161 = 259;
            }

            v158 = &v159 + 8;
            *&v159 = 0x1000000000;
            llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v158, __src, __src + 8 * v167);
            if ((*(v21 + 8) & 0xFE) == 0x12)
            {
              v127 = llvm::ConstantDataVector::getFP(v22, v158, v159);
            }

            else
            {
              v127 = llvm::ConstantDataArray::getFP(v22, v158, v159);
            }
          }
        }

LABEL_266:
        String = v127;
        v18 = v158;
        v128 = &v159 + 8;
LABEL_337:
        if (v18 != v128)
        {
LABEL_338:
          free(v18);
        }

LABEL_287:
        llvm::BitcodeReaderValueList::assignValue((a2 + 712), String, v6, VirtualTypeID, this);
        v8 = *this != 0;
        if (!*this)
        {
          LODWORD(v6) = v6 + 1;
        }

        v5 = v154;
        goto LABEL_290;
      case 23:
        if (v167 <= 1)
        {
          goto LABEL_188;
        }

        v154 = v5;
        memset(&v155, 0, sizeof(v155));
        memset(&__s, 0, sizeof(__s));
        v41 = *(__src + 1);
        v42 = (v41 + 2);
        if (v42 >= v167)
        {
          goto LABEL_222;
        }

        v43 = *(__src + v42);
        if (v167 < v41 + v43 + 3)
        {
          goto LABEL_222;
        }

        v148 = v4;
        v44 = *__src;
        if (v41)
        {
          v45 = v41;
          v46 = 2;
          do
          {
            std::string::push_back(&__s, *(__src + v46++));
            --v45;
          }

          while (v45);
        }

        if (v43)
        {
          v43 = v43;
          v47 = v41 + 3;
          do
          {
            std::string::push_back(&v155, *(__src + v47++));
            --v43;
          }

          while (v43);
        }

        llvm::UpgradeInlineAsmString(&__s);
        v4 = v148;
        if (!PtrElementTypeByID)
        {
          goto LABEL_316;
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &__s;
        }

        else
        {
          v48 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v49 = __s.__r_.__value_.__l.__size_;
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = &v155;
        }

        else
        {
          v50 = v155.__r_.__value_.__r.__words[0];
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = SHIBYTE(v155.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = v155.__r_.__value_.__l.__size_;
        }

        v52 = llvm::InlineAsm::get(PtrElementTypeByID, v48, v49, v50, v51, v44 & 1, (v44 & 2) != 0, v44 >> 2, 0);
        goto LABEL_315;
      case 25:
        if (v167 <= 1)
        {
          v16 = "Invalid unary op constexpr record";
          goto LABEL_269;
        }

        v97 = __src;
        DecodedUnaryOpcode = getDecodedUnaryOpcode(*__src, v5);
        v154 = v5;
        if (DecodedUnaryOpcode < 0)
        {
          goto LABEL_147;
        }

        LOWORD(v158) = DecodedUnaryOpcode;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        LODWORD(__s.__r_.__value_.__l.__data_) = v97[1];
        v94 = (a2 + 616);
        goto LABEL_201;
      case 26:
        v154 = v5;
        NullValue = llvm::PoisonValue::get(v5, v11);
        goto LABEL_286;
      case 27:
        {
          v16 = "Invalid dso_local record";
          goto LABEL_269;
        }

        v28 = 251;
        goto LABEL_185;
      case 28:
        if (v167 <= 1)
        {
          goto LABEL_188;
        }

        v154 = v5;
        memset(&v155, 0, sizeof(v155));
        memset(&__s, 0, sizeof(__s));
        v110 = *(__src + 1);
        v111 = (v110 + 2);
        if (v111 >= v167)
        {
          goto LABEL_222;
        }

        v112 = *(__src + v111);
        if (v167 < v110 + v112 + 3)
        {
          goto LABEL_222;
        }

        v151 = v4;
        v132 = *__src;
        if (v110)
        {
          v133 = v110;
          v134 = 2;
          do
          {
            std::string::push_back(&__s, *(__src + v134++));
            --v133;
          }

          while (v133);
        }

        if (v112)
        {
          v112 = v112;
          v135 = v110 + 3;
          do
          {
            std::string::push_back(&v155, *(__src + v135++));
            --v112;
          }

          while (v112);
        }

        llvm::UpgradeInlineAsmString(&__s);
        v4 = v151;
        if (!PtrElementTypeByID)
        {
LABEL_316:
          v113 = "Missing element type for old-style inlineasm";
LABEL_223:
          v158 = v113;
          v161 = 259;
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v136 = &__s;
        }

        else
        {
          v136 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v137 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v137 = __s.__r_.__value_.__l.__size_;
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v138 = &v155;
        }

        else
        {
          v138 = v155.__r_.__value_.__r.__words[0];
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v139 = SHIBYTE(v155.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v139 = v155.__r_.__value_.__l.__size_;
        }

        v52 = llvm::InlineAsm::get(PtrElementTypeByID, v136, v137, v138, v139, v132 & 1, (v132 & 2) != 0, (v132 >> 2) & 1, (v132 & 8) != 0);
LABEL_315:
        String = v52;
        goto LABEL_224;
      case 29:
        {
          v16 = "Invalid no_cfi record";
          goto LABEL_269;
        }

        v28 = 252;
LABEL_185:
        LOWORD(v158) = v28;
        HIDWORD(v158) = 0;
        *&v159 = 0;
        v82 = *(__src + 1);
LABEL_186:
        LODWORD(__s.__r_.__value_.__l.__data_) = v82;
        v94 = (a2 + 616);
        v154 = v5;
LABEL_201:
        v99 = v5;
        goto LABEL_202;
      case 30:
        if (v167 <= 2)
        {
LABEL_188:
          v16 = "Invalid inlineasm record";
          goto LABEL_269;
        }

        v154 = v5;
        if (!v29 || (v30 = v29, *(v29 + 8) != 14))
        {
          v120 = "Invalid inlineasm record";
          goto LABEL_318;
        }

        memset(&__s, 0, sizeof(__s));
        memset(&v155, 0, sizeof(v155));
        v31 = *(__src + 2);
        v32 = (v31 + 3);
        if (v32 >= v167 || (v33 = *(__src + v32), v167 < v31 + v33 + 4))
        {
LABEL_222:
          v113 = "Invalid inlineasm record";
          goto LABEL_223;
        }

        v146 = *(__src + 1);
        v147 = v4;
        if (v31)
        {
          v34 = v31;
          v35 = 3;
          do
          {
            std::string::push_back(&__s, *(__src + v35++));
            --v34;
          }

          while (v34);
        }

        if (v33)
        {
          v33 = v33;
          v36 = v31 + 4;
          do
          {
            std::string::push_back(&v155, *(__src + v36++));
            --v33;
          }

          while (v33);
        }

        llvm::UpgradeInlineAsmString(&__s);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &__s;
        }

        else
        {
          v37 = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v38 = __s.__r_.__value_.__l.__size_;
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v155;
        }

        else
        {
          v39 = v155.__r_.__value_.__r.__words[0];
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = SHIBYTE(v155.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v40 = v155.__r_.__value_.__l.__size_;
        }

        String = llvm::InlineAsm::get(v30, v37, v38, v39, v40, v146 & 1, (v146 & 2) != 0, (v146 >> 2) & 1, (v146 & 8) != 0);
        v4 = v147;
LABEL_224:
        if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v155.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        goto LABEL_287;
      default:
        v154 = v5;
        goto LABEL_147;
    }
  }
}

void anonymous namespace::BitcodeReader::parseValueSymbolTable(_anonymous_namespace_::BitcodeReader *this, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    llvm::SimpleBitstreamCursor::JumpToBit(&v47, (a2 + 32), 32 * a3);
    v8 = v47;
    if (v47)
    {
LABEL_5:
      *this = v8;
      return;
    }

    llvm::BitstreamCursor::advance(&v40, (a2 + 32), 0);
    if (v41)
    {
      v8 = v40;
      goto LABEL_5;
    }

    if (v40 != 0xE00000002)
    {
      v47 = "Expected value symbol table subblock";
      v49[8] = 259;
      llvm::BitcodeErrorCategory(v9);
      operator new();
    }

    v10 = 8 * v6 - v7;
    if (*(a2 + 392) == 1)
    {
      v14 = *(a2 + 68);
      llvm::BitstreamCursor::EnterSubBlock(this, (a2 + 32), 0, 14);
      if (!*this)
      {
        v47 = v49;
        v48 = 0x4000000000;
        llvm::BitstreamCursor::advanceSkippingSubblocks(&__p, (a2 + 32), 0);
        if (v45)
        {
LABEL_14:
          *this = __p;
        }

        else
        {
          v26 = (v14 + 8);
          while (1)
          {
            switch(__p)
            {
              case 2:
LABEL_84:
                v40 = "Malformed block";
                v43 = 259;
              case 1:
                *this = 0;
                goto LABEL_91;
              case 0:
                goto LABEL_84;
            }

            LODWORD(v48) = 0;
            llvm::BitstreamCursor::readRecord(&v35, (a2 + 32), SHIDWORD(__p), &v47, 0);
            if (v36)
            {
              break;
            }

            if (v35 == 3)
            {
              v27 = *(a2 + 712);
              if (((*(a2 + 720) - v27) >> 5) <= *v47 || !*(v27 + 32 * *v47 + 16))
              {
                v40 = "Invalid value reference in symbol table";
                v43 = 259;
              }

              v40 = *(v27 + 32 * *v47 + 16);
              v28 = 32 * *(v47 + 1) - 32;
              llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, &v40)[1] = v28 + v26;
              if (v28 > *(a2 + 448))
              {
                *(a2 + 448) = v28;
              }

              if (v36)
              {
                v29 = v35;
                v35 = 0;
                if (v29)
                {
                  (*(*v29 + 8))(v29);
                }
              }
            }

            if (v45)
            {
              v30 = __p;
              __p = 0;
              if (v30)
              {
                (*(*v30 + 8))(v30);
              }
            }

            llvm::BitstreamCursor::advanceSkippingSubblocks(&__p, (a2 + 32), 0);
            if (v45)
            {
              goto LABEL_14;
            }
          }

          *this = v35;
          if (v45)
          {
            v31 = __p;
            __p = 0;
            if (v31)
            {
              (*(*v31 + 8))(v31);
            }
          }
        }

LABEL_91:
        if (v47 != v49)
        {
          free(v47);
        }

        if (!*this)
        {
          llvm::SimpleBitstreamCursor::JumpToBit(this, (a2 + 32), v10);
        }
      }

      return;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 68);
  llvm::BitstreamCursor::EnterSubBlock(this, (a2 + 32), 0, 14);
  if (!*this)
  {
    v47 = v49;
    v48 = 0x4000000000;
    v12 = (*(a2 + 432) + 208);
    v43 = 260;
    v40 = v12;
    llvm::Triple::Triple(&__p, &v40);
    v40 = &v42;
    v41 = xmmword_2750C1290;
    llvm::BitstreamCursor::advanceSkippingSubblocks(&v38, (a2 + 32), 0);
    if (v39)
    {
LABEL_9:
      v13 = v38;
      v38 = 0;
      *this = v13;
    }

    else
    {
      v15 = (v11 + 8);
      while (1)
      {
        if (v38 == 2)
        {
LABEL_45:
          v35 = "Malformed block";
          v37 = 259;
        }

        if (v38 == 1)
        {
          break;
        }

        if (!v38)
        {
          goto LABEL_45;
        }

        LODWORD(v48) = 0;
        llvm::BitstreamCursor::readRecord(&v33, (a2 + 32), SHIDWORD(v38), &v47, 0);
        if (v34)
        {
          v23 = v33;
          v33 = 0;
LABEL_50:
          *this = v23;
LABEL_52:
          if (v34)
          {
            v24 = v33;
            v33 = 0;
            if (v24)
            {
              (*(*v24 + 8))(v24);
            }
          }

          goto LABEL_55;
        }

        switch(v33)
        {
          case 3:
            if (v36)
            {
              v23 = v35;
              goto LABEL_50;
            }

            *this = 0;
            if (v35)
            {
              if (!v35[16])
              {
                v32 = v35;
                v20 = 32 * *(v47 + 1) - 32;
                llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, &v32)[1] = v20 + v15;
                if (v20 > *(a2 + 448))
                {
                  *(a2 + 448) = v20;
                }
              }
            }

            break;
          case 2:
            if (!v48 || (llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v40, v47 + 8, v47 + 8 * v48), v17 = *v47, v18 = *(a2 + 1488), v17 >= (*(a2 + 1496) - v18) >> 3) || (v19 = *(v18 + 8 * v17)) == 0)
            {
              v35 = "Invalid bbentry record";
              v37 = 259;
            }

            v37 = 261;
            v35 = v40;
            v36 = v41;
            llvm::Value::setName(v19, &v35);
            *&v41 = 0;
            break;
          case 1:
            if (v36)
            {
              v16 = v35;
              *this = v35;
              if (v16)
              {
                goto LABEL_52;
              }
            }

            else
            {
              *this = 0;
            }

            break;
        }

        if (v34)
        {
          v21 = v33;
          v33 = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }
        }

        if (v39)
        {
          v22 = v38;
          v38 = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }
        }

        llvm::BitstreamCursor::advanceSkippingSubblocks(&v38, (a2 + 32), 0);
        if (v39)
        {
          goto LABEL_9;
        }
      }

      if (!a3 || (llvm::SimpleBitstreamCursor::JumpToBit(this, (a2 + 32), v10), !*this))
      {
        *this = 0;
      }
    }

LABEL_55:
    if (v39)
    {
      v25 = v38;
      v38 = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }
    }

    if (v40 != &v42)
    {
      free(v40);
    }

    if (v46 < 0)
    {
      operator delete(__p);
    }

    if (v47 != v49)
    {
      free(v47);
    }
  }
}

void anonymous namespace::BitcodeReader::parseUseLists(_anonymous_namespace_::BitcodeReader *this, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  llvm::BitstreamCursor::EnterSubBlock(this, (a2 + 4), 0, 18);
  if (!*this)
  {
    v44 = v46;
    v45 = 0x4000000000;
    llvm::BitstreamCursor::advanceSkippingSubblocks(&v42, (a2 + 4), 0);
    if (v43)
    {
LABEL_3:
      *this = v42;
LABEL_4:
      if (v44 != v46)
      {
        free(v44);
      }

      return;
    }

    while (1)
    {
      switch(v42)
      {
        case 2:
LABEL_75:
          v37[0] = "Malformed block";
          v39 = 259;
        case 1:
          *this = 0;
          goto LABEL_4;
        case 0:
          goto LABEL_75;
      }

      LODWORD(v45) = 0;
      llvm::BitstreamCursor::readRecord(&v40, (a2 + 4), SHIDWORD(v42), &v44, 0);
      if (v41)
      {
        *this = v40;
        if (v43)
        {
          v36 = v42;
          v42 = 0;
          if (v36)
          {
            (*(*v36 + 8))(v36);
          }
        }

        goto LABEL_4;
      }

      if (v40 == 1)
      {
        break;
      }

      if (v40 == 2)
      {
        if (v45 <= 2)
        {
          goto LABEL_78;
        }

        v4 = *(v44 + 2 * v45 - 2);
        v5 = v45 - 1;
        LODWORD(v45) = v45 - 1;
        v6 = (a2[186] + 8 * v4);
        goto LABEL_17;
      }

LABEL_70:
      if (v43)
      {
        v35 = v42;
        v42 = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }
      }

      llvm::BitstreamCursor::advanceSkippingSubblocks(&v42, (a2 + 4), 0);
      if (v43)
      {
        goto LABEL_3;
      }
    }

    if (v45 <= 2)
    {
LABEL_78:
      v37[0] = "Invalid record";
      v39 = 259;
    }

    v7 = *(v44 + 2 * v45 - 2);
    v5 = v45 - 1;
    LODWORD(v45) = v45 - 1;
    v6 = (a2[89] + 32 * v7 + 16);
LABEL_17:
    v8 = *v6;
    v37[0] = 1;
    for (i = 1; i != 33; i += 2)
    {
      v37[i] = -4096;
    }

    v12 = *(v8 + 8);
    v11 = (v8 + 8);
    v10 = v12;
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        v14 = v13++;
        v5 = v45;
        if (v45 < v13)
        {
          goto LABEL_36;
        }

        v15 = *(v44 + v14);
        v47 = 0;
        v16 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(v37, v10, &v47);
        v17 = v47;
        if ((v16 & 1) == 0)
        {
          break;
        }

LABEL_31:
        *(v17 + 8) = v15;
        v10 = *(v10 + 8);
        if (!v10)
        {
          v5 = v45;
          v13 = v14 + 1;
          goto LABEL_36;
        }
      }

      v18 = LODWORD(v37[0]) >> 1;
      if (v37[0])
      {
        v19 = 16;
      }

      else
      {
        v19 = v38;
      }

      if (4 * v18 + 4 >= 3 * v19)
      {
        v19 *= 2;
      }

      else if (v19 + ~v18 - HIDWORD(v37[0]) > v19 >> 3)
      {
LABEL_28:
        LODWORD(v37[0]) += 2;
        if (*v17 != -4096)
        {
          --HIDWORD(v37[0]);
        }

        *v17 = v10;
        *(v17 + 8) = 0;
        goto LABEL_31;
      }

      llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::grow(v37, v19);
      v47 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(v37, v10, &v47);
      v17 = v47;
      goto LABEL_28;
    }

    v13 = 0;
LABEL_36:
    v20 = v37[0];
    v21 = v5 >= v13 && v5 == LODWORD(v37[0]) >> 1;
    if (!v21 || (v22 = *v11) == 0 || (v23 = *(v22 + 8)) == 0)
    {
LABEL_65:
      if ((v20 & 1) == 0)
      {
        MEMORY[0x277C69E30](v37[1], 8);
      }

      if (v41)
      {
        v34 = v40;
        v40 = 0;
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }
      }

      goto LABEL_70;
    }

    v63 = 0;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    *(v22 + 8) = 0;
    v47 = v22;
    v24 = *(v23 + 8);
    if (v24)
    {
      v25 = 1;
      do
      {
        v26 = v23;
        v23 = v24;
        v27 = v25;
        *(v26 + 8) = 0;
        if (v25)
        {
          v28 = 0;
          while (1)
          {
            v29 = *(&v47 + v28);
            if (!v29)
            {
              break;
            }

            *(&v47 + v28++) = 0;
            if (v27 == v28)
            {
              LODWORD(v28) = v27;
              break;
            }
          }
        }

        else
        {
          LODWORD(v28) = 0;
        }

        if (v28 == v27)
        {
          v25 = v27 + 1;
        }

        else
        {
          v25 = v27;
        }

        *(&v47 + v28) = v26;
        v24 = *(v23 + 8);
      }

      while (v24);
      *v11 = v23;
      if (!v25)
      {
        do
        {
LABEL_63:
          v33 = *(v23 + 8);
          v32 = (v23 + 8);
          v32[1] = v11;
          v11 = v32;
          v23 = v33;
        }

        while (v33);
LABEL_64:
        v20 = v37[0];
        goto LABEL_65;
      }
    }

    else
    {
      *v11 = v23;
      v25 = 1;
    }

    v30 = v25;
    v31 = &v47;
    do
    {
      if (*v31)
      {
        *v11 = v23;
      }

      ++v31;
      --v30;
    }

    while (v30);
    if (!v23)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::find(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  {
    return v4;
  }

  else
  {
    return *a1 + 32 * *(a1 + 16);
  }
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>,llvm::Function *,std::vector<llvm::BasicBlock *>,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,std::vector<llvm::BasicBlock *>>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;
    operator delete(v4);
  }

  *a2 = -8192;
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t anonymous namespace::BitcodeReader::parseFunctionBody(llvm::Function *)::$_1::operator()(uint64_t **a1)
{
  v1 = **a1;
  if (!v1 || (v2 = *(v1 + 40), v2 == v1 + 40))
  {
    v5 = *a1[1];
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1[2][186] + 8 * (v5 - 1));
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 40);
    if (v7 == v6 + 40)
    {
      return 0;
    }

    v3 = v7 - 24;
    v4 = v7 == 0;
  }

  else
  {
    v3 = v2 - 24;
    v4 = v2 == 0;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

BOOL anonymous namespace::BitcodeReader::getValueTypePair(_BYTE *a1, uint64_t *a2, _DWORD *a3, unsigned int a4, llvm::MCAsmLexer **a5, unsigned int *a6, llvm::BasicBlock *a7)
{
  v7 = *a3;
  if (*(a2 + 2) == v7)
  {
    return 1;
  }

  v13 = v7 + 1;
  v14 = *a2;
  v15 = *(*a2 + 8 * v7);
  *a3 = v7 + 1;
  if (a1[1712])
  {
    v16 = a4 - v15;
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= a4)
  {
    if (*(a2 + 2) == v13)
    {
      return 1;
    }

    *a3 = v7 + 2;
    v19 = *(v14 + 8 * v13);
    *a6 = v19;
  }

  else
  {
    v17 = *(*(a1 + 89) + 32 * v16 + 24);
    *a6 = v17;
    FnValueByID = llvm::BitcodeReaderValueList::getValueFwdRef((a1 + 712), v16, 0, v17, a7);
  }

  *a5 = FnValueByID;
  return FnValueByID == 0;
}

uint64_t getDecodedUnaryOpcode(int a1, uint64_t a2)
{
  LOBYTE(v2) = *(a2 + 8);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v2 = *(**(a2 + 16) + 8);
  }

  v3 = v2 < 4u || v2 == 5;
  v4 = v2 & 0xFD;
  if (!v3 && v4 != 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    return 0xFFFFFFFFLL;
  }

  return 12;
}

uint64_t getDecodedBinaryOpcode(int a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 8) & 0xFE;
  LOBYTE(v4) = *(a2 + 8);
  if (v3 == 18)
  {
    v4 = *(**(a2 + 16) + 8);
  }

  if (v4 >= 6u)
  {
    if ((v4 & 0xFD) == 4)
    {
      v5 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 1;
    if (v4 & 5) == 4 || ((0x2Fu >> v4))
    {
      goto LABEL_13;
    }
  }

  if (v3 == 18)
  {
    v2 = *(**(a2 + 16) + 8);
  }

  if (v2 != 13)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
LABEL_13:
  switch(a1)
  {
    case 0:
      v6 = v5 == 0;
      v7 = 13;
      goto LABEL_26;
    case 1:
      v6 = v5 == 0;
      v7 = 15;
      goto LABEL_26;
    case 2:
      v6 = v5 == 0;
      v7 = 17;
      goto LABEL_26;
    case 3:
      v9 = v5 == 0;
      v10 = 19;
      goto LABEL_31;
    case 4:
      v6 = v5 == 0;
      v7 = 20;
      goto LABEL_26;
    case 5:
      v9 = v5 == 0;
      v10 = 22;
      goto LABEL_31;
    case 6:
      v6 = v5 == 0;
      v7 = 23;
LABEL_26:
      if (v6)
      {
        return v7;
      }

      else
      {
        return v7 + 1;
      }

    case 7:
      v9 = v5 == 0;
      v10 = 25;
      goto LABEL_31;
    case 8:
      v9 = v5 == 0;
      v10 = 26;
      goto LABEL_31;
    case 9:
      v9 = v5 == 0;
      v10 = 27;
      goto LABEL_31;
    case 10:
      v9 = v5 == 0;
      v10 = 28;
      goto LABEL_31;
    case 11:
      v9 = v5 == 0;
      v10 = 29;
      goto LABEL_31;
    case 12:
      v9 = v5 == 0;
      v10 = 30;
LABEL_31:
      if (v9)
      {
        result = v10;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      break;
    default:
      return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t anonymous namespace::BitcodeReader::getTypeByID(_anonymous_namespace_::BitcodeReader *this, unsigned int a2)
{
  v2 = a2;
  v3 = *(this + 65);
  if (a2 >= ((*(this + 66) - v3) >> 3))
  {
    return 0;
  }

  v4 = *(v3 + 8 * a2);
  if (!v4)
  {
    v6 = *(this + 53);
    v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((*v6 + 2072), 32, 3);
    *v4 = v6;
    *(v4 + 8) = 16;
    *(v4 + 20) = 0;
    *(v4 + 12) = 0;
    *(v4 + 28) = 0;
    v8 = v4;
    std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](this + 1872, &v8);
    *(*(this + 65) + 8 * v2) = v4;
  }

  return v4;
}

uint64_t getDecodedCastOpcode(unsigned int a1)
{
  if (a1 >= 0xD)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 + 38;
  }
}

uint64_t anonymous namespace::BitcodeReader::getVirtualTypeID(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *a3;
  }

  else
  {
    v8 = -1;
  }

  v28 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*(a1 + 568), *(a1 + 584), a2, v8, &v28))
  {
    v9 = v28 == *(a1 + 568) + 24 * *(a1 + 584);
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return *(v28 + 16);
  }

  v10 = *(a1 + 528);
  v11 = *(a1 + 520);
  v14 = (v10 - v11) >> 3;
  v27 = v14;
  v12 = *(a1 + 536);
  if (v10 >= v12)
  {
    if ((v14 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v15 = v12 - v11;
    v16 = v15 >> 2;
    if (v15 >> 2 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(a1 + 520, v17);
    }

    *(8 * v14) = a2;
    v13 = 8 * v14 + 8;
    v18 = *(a1 + 520);
    v19 = *(a1 + 528) - v18;
    v20 = (8 * v14 - v19);
    memcpy(v20, v18, v19);
    v21 = *(a1 + 520);
    *(a1 + 520) = v20;
    *(a1 + 528) = v13;
    *(a1 + 536) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v10 = a2;
    v13 = (v10 + 1);
  }

  *(a1 + 528) = v13;
  if (a4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::FindAndConstruct(a1 + 544, &v27);
    llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>((v22 + 8), a3, &a3[4 * a4]);
  }

  v28 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*(a1 + 568), *(a1 + 584), a2, v8, &v28) & 1) == 0)
  {
    v23 = *(a1 + 576);
    v24 = *(a1 + 584);
    if (4 * v23 + 4 >= 3 * v24)
    {
      v24 *= 2;
    }

    else if (v24 + ~v23 - *(a1 + 580) > v24 >> 3)
    {
      goto LABEL_26;
    }

    llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::grow(a1 + 568, v24);
    v28 = 0;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*(a1 + 568), *(a1 + 584), a2, v8, &v28);
LABEL_26:
    v25 = v28;
    ++*(a1 + 576);
    if (*v25 != -4096 || *(v25 + 8) != -1)
    {
      --*(a1 + 580);
    }

    *v25 = a2;
    *(v25 + 8) = v8;
    *(v25 + 16) = v14;
  }

  return v14;
}

llvm::Value *llvm::ExtractValueInst::Create(llvm::Value *a1, unsigned int *a2, uint64_t a3, const char **a4)
{
  v8 = operator new(0x80uLL);
  v9 = (v8 + 8);
  v8[13] = v8[13] & 0x38000000 | 1;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v8 + 8;
  IndexedType = llvm::ExtractValueInst::getIndexedType(*a1, a2, a3);
  llvm::UnaryInstruction::UnaryInstruction((v8 + 8), IndexedType, 64, a1, 0);
  *(v8 + 12) = v8 + 28;
  v8 += 24;
  *(v8 + 1) = 0x400000000;
  llvm::SmallVectorImpl<unsigned int>::append<unsigned int const*,void>(v8, a2, &a2[a3]);
  llvm::Value::setName(v9, a4);
  return v9;
}

char *llvm::InsertValueInst::Create(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, const char **a5)
{
  v10 = operator new(0xA0uLL);
  *v10 = 0;
  *(v10 + 8) = 0u;
  *(v10 + 8) = *a1;
  v11 = v10 + 64;
  *(v10 + 3) = v10 + 64;
  *(v10 + 4) = 0;
  *(v10 + 40) = 0u;
  *(v10 + 7) = v10 + 64;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0x20000005DLL;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 30) = 0;
  *(v10 + 16) = v10 + 144;
  *(v10 + 17) = 0x400000000;
  llvm::InsertValueInst::init(v10 + 16, a1, a2, a3, a4, a5);
  return v11;
}

llvm::ExtractElementInst *llvm::ExtractElementInst::Create(llvm::ExtractElementInst *this, llvm::Value *a2, const char **a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v8 = operator new(0x80uLL);
  v8[21] = v8[21] & 0x38000000 | 2;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = v8 + 16;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 7) = v8 + 16;
  v9 = (v8 + 16);

  return llvm::ExtractElementInst::ExtractElementInst(v9, this, a2, a3, 0);
}

llvm::InsertElementInst *llvm::InsertElementInst::Create(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, const char **a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v10 = operator new(0xA0uLL);
  v11 = (v10 + 24);
  v10[29] = v10[29] & 0x38000000 | 3;
  v12 = 96;
  do
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = v11;
    v10 += 8;
    v12 -= 32;
  }

  while (v12);

  return llvm::InsertElementInst::InsertElementInst(v11, this, a2, a3, a4, 0);
}

uint64_t llvm::ReturnInst::Create(llvm::LLVMContext *a1, llvm::Value *a2, unsigned int a3)
{
  v5 = llvm::User::operator new(0x40, a2 != 0);

  return llvm::ReturnInst::ReturnInst(v5, a1, a2, 0);
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v4 = operator new(0x60uLL);
  v4[13] = v4[13] & 0x38000000 | 1;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = v4 + 8;
  v5 = (v4 + 8);

  return llvm::BranchInst::BranchInst(v5, this, 0);
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v8 = operator new(0xA0uLL);
  v9 = (v8 + 24);
  v8[29] = v8[29] & 0x38000000 | 3;
  v10 = 96;
  do
  {
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = v9;
    v8 += 8;
    v10 -= 32;
  }

  while (v10);

  return llvm::BranchInst::BranchInst(v9, this, a2, a3, 0);
}

void *llvm::CleanupReturnInst::Create(llvm::CleanupReturnInst *this, llvm::Value *a2, llvm::BasicBlock *a3, llvm::Instruction *a4)
{
  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = llvm::User::operator new(0x40, v6);
  *v7 = ***this + 1608;
  v7[1] = 0;
  *(v7 + 16) = 36;
  *(v7 + 17) = 0;
  *(v7 + 9) = 0;
  *(v7 + 5) = *(v7 + 5) & 0xC0000000 | v6;
  *(v7 + 14) = 0;
  *(v7 + 5) = 0u;
  *(v7 + 3) = 0u;
  llvm::CleanupReturnInst::init(v7, this, a2);
  return v7;
}

char *llvm::CatchReturnInst::Create(llvm::CatchReturnInst *this, llvm::Value *a2, llvm::BasicBlock *a3, llvm::Instruction *a4)
{
  v6 = operator new(0x80uLL);
  *(v6 + 21) = *(v6 + 21) & 0x38000000 | 2;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  *(v6 + 4) = 0;
  *(v6 + 8) = ***a2 + 1608;
  v7 = v6 + 64;
  *(v6 + 21) = 2;
  *(v6 + 3) = v6 + 64;
  *(v6 + 7) = v6 + 64;
  *(v6 + 9) = 0;
  v6[80] = 37;
  v6[81] = 0;
  *(v6 + 41) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 30) = 0;
  llvm::CatchReturnInst::init((v6 + 64), this, a2);
  return v7;
}

void *llvm::CleanupPadInst::Create(void *a1, uint64_t *a2, uint64_t a3, const char **a4)
{
  v8 = a3 + 1;
  v9 = llvm::User::operator new(0x40, a3 + 1);
  *v9 = *a1;
  v9[1] = 0;
  v10 = *(v9 + 5) & 0xC0000000 | v8 & 0x7FFFFFF;
  *(v9 + 4) = 79;
  *(v9 + 5) = v10;
  *(v9 + 14) = 0;
  *(v9 + 5) = 0u;
  *(v9 + 3) = 0u;
  llvm::FuncletPadInst::init(v9, a1, a2, a3, a4);
  return v9;
}

void *llvm::CatchPadInst::Create(void *a1, uint64_t *a2, uint64_t a3, const char **a4)
{
  v8 = a3 + 1;
  v9 = llvm::User::operator new(0x40, a3 + 1);
  *v9 = *a1;
  v9[1] = 0;
  v10 = *(v9 + 5) & 0xC0000000 | v8 & 0x7FFFFFF;
  *(v9 + 4) = 80;
  *(v9 + 5) = v10;
  *(v9 + 14) = 0;
  *(v9 + 5) = 0u;
  *(v9 + 3) = 0u;
  llvm::FuncletPadInst::init(v9, a1, a2, a3, a4);
  return v9;
}

llvm::MCAsmLexer *anonymous namespace::BitcodeReader::getFnValueByID(llvm::MetadataLoader::MetadataLoaderImpl **this, uint64_t a2, llvm::Type *a3, int a4, llvm::BasicBlock *a5)
{
  if (a3 && *(a3 + 8) == 9)
  {
    v6 = *a3;
    MetadataFwdRefOrLoad = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(this[97], a2);

    return llvm::MetadataAsValue::get(v6, MetadataFwdRefOrLoad);
  }

  else
  {
    v9 = (this + 89);

    return llvm::BitcodeReaderValueList::getValueFwdRef(v9, a2, a3, a4, a5);
  }
}

char *llvm::InvokeInst::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, const char **a9, uint64_t *a10)
{
  v16 = 0;
  if (a8)
  {
    v17 = 48 * a8;
    v18 = (a7 + 32);
    do
    {
      v16 += (*v18 - *(v18 - 1)) >> 3;
      v18 += 6;
      v17 -= 48;
    }

    while (v17);
  }

  v19 = a6 + v16 + 3;
  v20 = llvm::User::operator new(0x50, v19, 16 * a8);
  v21 = llvm::Instruction::Instruction(v20, **(a1 + 16), 5, &v20[-32 * v19], v19, a10);
  *(v21 + 64) = 0;
  llvm::InvokeInst::init(v21, a1, a2, a3, a4, a5, a6, v22, a7, a8, a9);
  return v20;
}

void anonymous namespace::BitcodeReader::propagateAttributeTypes(_anonymous_namespace_::BitcodeReaderBase *a1, void *a2, llvm::CallBase *this, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = *(this + 8);
  v42 = v7;
  v41 = 0;
  if (((llvm::CallBase::arg_end(this) - (this - 32 * (*(this + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) != 0)
  {
    do
    {
      v8 = 0;
      v43 = 0x4A00000046;
      LODWORD(v44) = 72;
      v9 = v7;
      do
      {
        if (v9)
        {
          v10 = v41;
          if (v41 + 2 < *(v9 + 2))
          {
            v11 = v9[v41 + 7];
            if (v11)
            {
              v12 = *(&v43 + v8);
              if ((*(v11 + v12 / 8 + 12) >> (v12 & 7)))
              {
                EnumAttribute = llvm::AttributeSetNode::findEnumAttribute(v11, *(&v43 + v8));
                if ((v14 & 1) == 0 || !EnumAttribute || !*(EnumAttribute + 16))
                {
                  if (!PtrElementTypeByID)
                  {
                    v34 = "Missing element type for typed attribute upgrade";
                    goto LABEL_43;
                  }

                  v16 = llvm::Attribute::get(a2[53], v12, PtrElementTypeByID);
                  v7 = llvm::AttributeList::addParamAttribute(&v42, a2[53], &v41, 1, v16);
                  v42 = v7;
                  v9 = v7;
                }
              }
            }
          }
        }

        v8 += 4;
      }

      while (v8 != 12);
      v17 = ++v41;
    }

    while (v17 != ((llvm::CallBase::arg_end(this) - (this - 32 * (*(this + 5) & 0x7FFFFFF))) >> 5));
  }

  v18 = *(this - 4);
  v19 = *(v18 + 16);
  if (v19 == 24)
  {
    v41 = 0;
    v22 = *(v18 + 48);
    v20 = v18 + 48;
    v21 = v22;
    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = v21;
    }

    v25 = *(v20 + 8);
    if (v23 >= 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = v25;
    }

    llvm::InlineAsm::ParseConstraints(v24, v26, &v43);
    v27 = v43;
    v28 = v44;
    if (v43 != v44)
    {
      v29 = 0;
      do
      {
        if (*v27 == 1)
        {
          if (*(v27 + 13) == 1)
          {
            goto LABEL_28;
          }
        }

        else if (!*v27)
        {
          if (*(v27 + 13))
          {
LABEL_28:
            if (!llvm::AttributeList::getParamElementType(&v42, v29))
            {
              if (!v30)
              {
                v39[0] = "Missing element type for inline asm upgrade";
                v40 = 259;
              }

              v31 = a2[53];
              v32 = llvm::Attribute::get(v31, 71, v30);
              v7 = llvm::AttributeList::addParamAttribute(&v42, v31, &v41, 1, v32);
              v42 = v7;
              v29 = v41;
            }
          }

          v41 = ++v29;
        }

        v27 += 80;
      }

      while (v27 != v28);
    }

    v39[0] = &v43;
    std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](v39);
    v18 = *(this - 4);
    if (!v18)
    {
      goto LABEL_61;
    }

    v19 = *(v18 + 16);
  }

  if (!v19 && *(v18 + 24) == *(this + 9))
  {
    v33 = *(v18 + 36);
    if (v33 > 954)
    {
      if (v33 <= 2604)
      {
        if (v33 != 955 && v33 != 2599)
        {
          goto LABEL_61;
        }
      }

      else if (v33 != 2605 && v33 != 3007 && v33 != 3005)
      {
        goto LABEL_61;
      }
    }

    else if (v33 > 479)
    {
      if (v33 != 480 && v33 != 953)
      {
        goto LABEL_61;
      }
    }

    else if ((v33 - 245) >= 2 && v33 != 477)
    {
      goto LABEL_61;
    }

    v35 = 1;
    if (v33 <= 3004 && v33 != 953)
    {
      v35 = v33 == 955;
    }

    LODWORD(v43) = v35;
    if (!llvm::AttributeList::getParamElementType(&v42, v35))
    {
      if (!v36)
      {
        v34 = "Missing element type for elementtype upgrade";
LABEL_43:
        v39[0] = v34;
        v40 = 259;
      }

      v37 = llvm::Attribute::get(a2[53], 71, v36);
      v7 = llvm::AttributeList::addParamAttribute(&v42, a2[53], &v43, 1, v37);
    }
  }

LABEL_61:
  *(this + 8) = v7;
  *a1 = 0;
}

uint64_t llvm::ResumeInst::Create(llvm::ResumeInst *this, llvm::Value *a2, llvm::Instruction *a3)
{
  v4 = operator new(0x60uLL);
  v4[13] = v4[13] & 0x38000000 | 1;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = v4 + 8;
  v5 = (v4 + 8);

  return llvm::ResumeInst::ResumeInst(v5, this, 0);
}

char *llvm::CallBrInst::Create(uint64_t a1, uint64_t a2, llvm::BasicBlock *a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const char **a11, uint64_t *a12)
{
  v16 = 0;
  if (a10)
  {
    v17 = 48 * a10;
    v18 = (a9 + 32);
    do
    {
      v16 += (*v18 - *(v18 - 1)) >> 3;
      v18 += 6;
      v17 -= 48;
    }

    while (v17);
  }

  v19 = a5 + a7 + v16 + 2;
  v20 = llvm::User::operator new(0x58, v19, 16 * a10);
  v21 = llvm::Instruction::Instruction(v20, **(a1 + 16), 11, &v20[-32 * v19], v19, a12);
  *(v21 + 64) = 0;
  llvm::CallBrInst::init(v21, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11);
  return v20;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::find(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 4;
  }

  else
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (!v3)
    {
      v4 = 0;
      return (v2 + 16 * v4);
    }
  }

  v6 = v3 - 1;
  LODWORD(v7) = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = (v2 + 16 * v7);
  v8 = *v5;
  if (*v5 == a2)
  {
    return v5;
  }

  v10 = 1;
  while (v8 != -4096)
  {
    v11 = v7 + v10++;
    v7 = v11 & v6;
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return (v2 + 16 * v7);
    }
  }

  if (*a1)
  {
    return (a1 + 72);
  }

  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  return (v2 + 16 * v4);
}

uint64_t llvm::MapVector<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *,llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,llvm::SmallVector<std::pair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *>,4u>>::lookup(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(a1, a2, &v6))
  {
    v3 = v6;
    if ((*a1 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = a1 + 104;
    goto LABEL_9;
  }

  if (*a1)
  {
    v3 = a1 + 104;
    goto LABEL_6;
  }

  v3 = *(a1 + 8) + 24 * *(a1 + 16);
LABEL_8:
  v4 = *(a1 + 8) + 24 * *(a1 + 16);
LABEL_9:
  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 104) + 24 * *(v3 + 16) + 16);
  }
}

llvm::MCAsmLexer *anonymous namespace::BitcodeReader::getValueSigned(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, llvm::Type *a6, int a7, llvm::BasicBlock *a8)
{
  if (a3 == a4)
  {
    return 0;
  }

  v9 = *(a2 + 8 * a4);
  LODWORD(v10) = 0;
  if (v9 != 1)
  {
    v10 = -(v9 >> 1);
  }

  if (v9)
  {
    LODWORD(v11) = v10;
  }

  else
  {
    v11 = v9 >> 1;
  }

  if (*(a1 + 1712))
  {
    v12 = (a5 - v11);
  }

  else
  {
    v12 = v11;
  }
}

__n128 llvm::MapVector<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *,llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,llvm::SmallVector<std::pair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,llvm::BasicBlock *>,4u>>::insert(uint64_t a1, __n128 *a2)
{
  v2 = a2;
  v13 = *a2;
  v14 = 0;
  v15 = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(a1, &v13, &v15))
  {
    return result;
  }

  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 4) > v6 >> 3)
  {
    goto LABEL_7;
  }

  llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::grow(a1, v6);
  v15 = 0;
  llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(a1, &v13, &v15);
LABEL_7:
  v7 = v15;
  *a1 += 2;
  if (*v7 != -4096 || *(v7 + 8) != -4096)
  {
    --*(a1 + 4);
  }

  *v7 = v13;
  *(v7 + 16) = v14;
  v8 = a1 + 104;
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  if (v10 >= *(a1 + 116))
  {
    if (v9 <= v2 && v9 + 24 * v10 > v2)
    {
      v12 = v2 - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (a1 + 120), v10 + 1, 24);
      v9 = *(a1 + 104);
      v2 = &v12[v9];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (a1 + 120), v10 + 1, 24);
      v9 = *(a1 + 104);
    }
  }

  v11 = (v9 + 24 * *(a1 + 112));
  result = *v2;
  v11[1].n128_u64[0] = v2[1].n128_u64[0];
  *v11 = result;
  LODWORD(v11) = *(a1 + 112);
  *(a1 + 112) = v11 + 1;
  *(v7 + 16) = v11;
  return result;
}

void anonymous namespace::BitcodeReader::parseAlignmentValue(_anonymous_namespace_::BitcodeReaderBase *a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  if (a3 >= 0x22)
  {
    v9 = v4;
    v10 = v5;
    v7 = "Invalid alignment value";
    v8 = 259;
  }

  if (a3)
  {
    v6 = (a3 - 1) | 0x100;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  *a1 = 0;
}

void anonymous namespace::BitcodeReader::typeCheckLoadStoreInst(_anonymous_namespace_::BitcodeReader *this, llvm::Type *a2, llvm::Type *a3, uint64_t a4)
{
  if (*(a4 + 8) != 15)
  {
    v10 = "Load/Store operand is not a pointer type";
LABEL_13:
    v11 = v10;
    v12 = 259;
  }

  v4 = *(a4 + 24);
  if (v4)
  {
    v5 = v4 == a3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v10 = "Explicit load/store type does not match pointee type of pointer operand";
    goto LABEL_13;
  }

  v6 = *(a3 + 8);
  v7 = v6 > 0xE;
  v8 = (1 << v6) & 0x5B80;
  if (!v7 && v8 != 0)
  {
    v10 = "Cannot load/store from pointer";
    goto LABEL_13;
  }

  *this = 0;
}

uint64_t getDecodedOrdering(unsigned int a1)
{
  if (a1 > 5)
  {
    return 7;
  }

  else
  {
    return dword_2750C80E8[a1];
  }
}

uint64_t getDecodedRMWOperation(uint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  else
  {
    return result;
  }
}

void std::vector<llvm::OperandBundleDefT<llvm::Value *>>::emplace_back<std::string &,std::vector<llvm::Value *>>(void **a1, uint64_t a2, __n128 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4);
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>>(a1, v11);
    }

    v12 = 48 * v8;
    std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::construct[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *>,std::string &,std::vector<llvm::Value *>>(v12, a2, a3);
    v7 = v12 + 48;
    v13 = a1[1];
    v14 = *a1 + v12 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>,llvm::OperandBundleDefT<llvm::Value *>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    a1[1] = (v12 + 48);
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::~__split_buffer(v17);
  }

  else
  {
    std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::construct[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *>,std::string &,std::vector<llvm::Value *>>(a1[1], a2, a3);
    v7 = v6 + 48;
  }

  a1[1] = v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>,llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  *(result + 8) = 0;
  return result;
}

char *llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = operator new(16 * v8, 8uLL);
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
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 32;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 32;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = (37 * a3) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -1)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -2;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*>(int a1, llvm::ValueHandleBase *this, llvm::ValueHandleBase *a3, uint64_t a4)
{
  if (this != a3)
  {
    v8 = this;
    do
    {
      llvm::ValueHandleBase::ValueHandleBase(a4, 3u, v8);
      *(a4 + 24) = *(v8 + 6);
      v8 = (v8 + 32);
      a4 += 32;
    }

    while (v8 != a3);
  }

  std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*,std::pair<llvm::WeakTrackingVH,unsigned int>*>(a1, this, a3);
}

void std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*,std::pair<llvm::WeakTrackingVH,unsigned int>*>(int a1, llvm::ValueHandleBase *this, llvm::ValueHandleBase *a3)
{
  if (this != a3)
  {
    v4 = this;
    do
    {
      v5 = *(v4 + 2);
      if (v5 != -8192 && v5 != -4096 && v5 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v4);
      }

      v4 = (v4 + 32);
    }

    while (v4 != a3);
  }
}

uint64_t std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

llvm::ValueHandleBase *std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::__destruct_at_end[abi:nn200100](uint64_t a1, llvm::ValueHandleBase *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v5 = *(result - 2);
    result = (result - 32);
    *(a1 + 16) = result;
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(result);
      result = *(a1 + 16);
    }
  }

  return result;
}

void llvm::BitstreamCursor::advanceSkippingSubblocks(uint64_t *__return_ptr a1@<X8>, llvm::BitstreamCursor *this@<X0>, char a3@<W1>)
{
  v3 = a3;
  v4 = this;
  v13 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  while (1)
  {
    llvm::BitstreamCursor::advance(&v11, this, a3);
    if (v12)
    {
      v6 = v6 & 0xFE | v12 & 1;
      v7 = v11;
LABEL_11:
      *a1 = v7;
      goto LABEL_12;
    }

    v7 = v11;
    if (v11 != 2)
    {
      v6 &= ~1u;
      goto LABEL_11;
    }

    llvm::BitstreamCursor::SkipBlock(&v10, v4);
    v8 = v10;
    v6 |= v10 != 0;
    if (v12)
    {
      v9 = v11;
      v11 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (v8)
    {
      break;
    }

    this = v4;
    a3 = v3;
  }

  *a1 = v8;
LABEL_12:
  *(a1 + 8) = v6;
}