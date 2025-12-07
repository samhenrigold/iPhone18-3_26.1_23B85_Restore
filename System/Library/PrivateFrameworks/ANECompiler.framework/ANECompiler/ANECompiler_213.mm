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
  v185[12] = *MEMORY[0x1E69E9840];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v167[0] = v6;
  v167[1] = InterfaceFor;
  BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v167);
  v8 = a4[1];
  v183 = v185;
  v184 = 0x400000000;
  v180 = v182;
  v181 = 0x400000000;
  v178[0] = mlir::ElementsAttr::getShapedType(v167);
  Inputs = mlir::FunctionType::getInputs(v178);
  if (v10)
  {
    v11 = *(BodyBlock + 48);
    v12 = *(BodyBlock + 56);
    if (v11 != v12)
    {
      v13 = v11 + 8;
      v14 = 8 * v10 - 8;
      do
      {
        v15 = *Inputs;
        v16 = (*(*(v13 - 8) + 8) & 0xFFFFFFFFFFFFFFF8);
        v178[0] = *(v13 - 8);
        v178[1] = v16;
        v179[0] = v15;
        if (v184 >= HIDWORD(v184))
        {
          v18 = Inputs;
          Inputs = v18;
          if (!v14)
          {
            break;
          }
        }

        else
        {
          v17 = &v183[24 * v184];
          *v17 = *v178;
          *(v17 + 2) = v179[0];
          LODWORD(v184) = v184 + 1;
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

  v163 = v8;
  v178[0] = mlir::ElementsAttr::getShapedType(v167);
  Results = mlir::FunctionType::getResults(v178);
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
          v178[0] = *v24;
          v178[1] = v27;
          v179[0] = *Results;
          if (v181 >= HIDWORD(v181))
          {
          }

          else
          {
            v28 = v180 + 24 * v181;
            *v28 = *v178;
            *(v28 + 2) = v179[0];
            LODWORD(v181) = v181 + 1;
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

  if (!(v184 | v181))
  {
    v37 = mlir::minimalLegalize(v167[0], a2, a3, a5);
    goto LABEL_31;
  }

  v42 = v163;
  if (v184)
  {
    v43 = 0;
    v44 = v183;
    v160 = &v183[24 * v184];
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
          v175 = *(*(*v49 + 72) + 32 * v43 + 24);
          v178[0] = v175;
          DefiningOp = mlir::Value::getDefiningOp(v178);
          if (DefiningOp)
          {
            v51 = *(DefiningOp + 2);
            ZinIrHalH13g::~ZinIrHalH13g(DefiningOp);
            v53 = (v52 + 8);
          }

          else
          {
            v51 = *(v178[0] + 2);
            v53 = (v51 + 40);
          }

          v54 = *v53;
          *(v42 + 16) = v51;
          *(v42 + 24) = v54;
          Loc = mlir::Value::getLoc(&v175);
          v56 = v175;
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
            v42 = v163;
            *(v163 + 16) = v47;
            *(v163 + 24) = v46;
          }

          else
          {
            v46 = 0;
            v42 = v163;
            *(v163 + 16) = 0;
            *(v163 + 24) = 0;
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

    while (v44 != v160);
  }

  v178[0] = v179;
  v178[1] = 0x400000000;
  v59 = mlir::TargetLegalizerInterface::getBodyBlock(v167);
  v60 = *(v59 + 48);
  v61 = *(v59 + 56);
  if (v60 != v61)
  {
    v62 = v178[1];
    do
    {
      v63 = *&v183[24 * *(*v60 + 24) + 8];
      if (v62 >= HIDWORD(v178[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v178, v179, v62 + 1, 8);
        v62 = v178[1];
      }

      *(v178[0] + v62) = v63;
      v62 = ++LODWORD(v178[1]);
      v60 += 8;
    }

    while (v60 != v61);
  }

  v175 = v177;
  v176 = 0x400000000;
  v64 = mlir::TargetLegalizerInterface::getBodyBlock(v167);
  mlir::Block::getTerminator(v64);
  if ((*(v65 + 46) & 0x80) != 0)
  {
    v66 = *(v65 + 68);
    if (v66)
    {
      v67 = v176;
      v68 = 8;
      do
      {
        v69 = *(v180 + v68);
        if (v67 >= HIDWORD(v176))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v175, v177, v67 + 1, 8);
          v67 = v176;
        }

        *(v175 + v67) = v69;
        v67 = v176 + 1;
        LODWORD(v176) = v176 + 1;
        v68 += 24;
        --v66;
      }

      while (v66);
    }
  }

  v172 = v174;
  v173 = 0x400000000;
  v159 = &a2[a3];
  if (a3)
  {
    v154 = (v42 + 16);
    v157 = *(v42 + 24);
    v158 = *(v42 + 16);
    v70 = a2;
    do
    {
      v161 = v70;
      v71 = *v70;
      v72 = *(*v70 + 2);
      ZinIrHalH13g::~ZinIrHalH13g(*v70);
      *(v42 + 16) = v72;
      *(v42 + 24) = v74;
      if ((*(v71 + 46) & 0x80) != 0)
      {
        v75 = *(v71 + 9);
        v76 = *(v71 + 17);
        v169 = v171;
        v170 = 0x400000000;
        if (v76 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v171, v76, 8);
          v77 = v170;
          goto LABEL_80;
        }

        if (v76)
        {
          v77 = 0;
LABEL_80:
          v78 = 0;
          v79 = (v169 + 8 * v77);
          do
          {
            v80 = *(v75 + 32 * v78 + 24);
            v81 = *(a5 + 4);
            if (v81)
            {
              v82 = *a5;
              v83 = 0x9DDFEA08EB382D69 * ((8 * *(v75 + 32 * v78 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v75 + 32 * v78 + 24)));
              v84 = 0x9DDFEA08EB382D69 * (HIDWORD(v80) ^ (v83 >> 47) ^ v83);
              v85 = (-348639895 * ((v84 >> 47) ^ v84)) & (v81 - 1);
              v86 = *(*a5 + 16 * v85);
              if (v86 == v80)
              {
LABEL_84:
                if (v85 != v81)
                {
                  v80 = *(v82 + 16 * v85 + 8);
                }
              }

              else
              {
                v87 = 1;
                while (v86 != -4096)
                {
                  v88 = v85 + v87++;
                  v85 = v88 & (v81 - 1);
                  v86 = *(v82 + 16 * v85);
                  if (v86 == v80)
                  {
                    goto LABEL_84;
                  }
                }
              }
            }

            *v79++ = v80;
            ++v78;
          }

          while (v78 != v76);
          v89 = v170;
          goto LABEL_91;
        }

        v89 = 0;
      }

      else
      {
        LODWORD(v76) = 0;
        v89 = 0;
        v169 = v171;
        HIDWORD(v170) = 4;
      }

LABEL_91:
      LODWORD(v170) = v89 + v76;
      v90 = *(v71 + 3);
      v168[0] = mlir::SymbolRefAttr::get(v167[0], v73);
      v165 = mlir::placement::RegionTypeAttr::get(*v42, 1u);
      v91 = mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v42, v90, &v175, v168, &v165, &v169);
      v166 = v91;
      v92 = v173;
      if (v173 >= HIDWORD(v173))
      {
        v105 = v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v172, v174, v173 + 1, 8);
        v91 = v105;
        v92 = v173;
      }

      *(v172 + v92) = v91;
      LODWORD(v173) = v173 + 1;
      v93 = *(v71 + 9);
      if (v93)
      {
        v94 = v71 - 16;
      }

      else
      {
        v94 = 0;
      }

      ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v166, 0);
      v96 = ODSResultIndexAndLength;
      if (*(v166 + 9))
      {
        NextResultAtOffset = v166 - 16;
      }

      else
      {
        NextResultAtOffset = 0;
      }

      v98 = ODSResultIndexAndLength;
      if (ODSResultIndexAndLength)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
      }

      if (v93)
      {
        v99 = (HIDWORD(v96) + v96);
        if (v99 != v96)
        {
          v100 = 0;
          v101 = ~v98 + v99;
          v102 = v93 - 1;
          do
          {
            v103 = mlir::detail::OpResultImpl::getNextResultAtOffset(v94, v100);
            v104 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v100);
            v168[0] = v103;
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, v168) = v104;
            if (v102 == v100)
            {
              break;
            }

            v45 = v101 == v100++;
          }

          while (!v45);
        }
      }

      if (v169 != v171)
      {
        free(v169);
      }

      v42 = v163;
      if (v158)
      {
        *(v163 + 16) = v158;
        *(v163 + 24) = v157;
      }

      else
      {
        v157 = 0;
        *v154 = 0;
        v154[1] = 0;
      }

      v70 = v161 + 1;
    }

    while (v161 + 1 != v159);
  }

  v106 = a3;
  if (v181)
  {
    v107 = 0;
    v108 = v180;
    v109 = v180 + 24 * v181;
    v153 = v109;
    while (*(v108 + 1) == *(v108 + 2) || v106 == 0)
    {
      ++v107;
LABEL_116:
      v108 += 24;
      if (v108 == v109)
      {
        goto LABEL_157;
      }
    }

    v111 = a2;
    while (1)
    {
      if (v107 >= 6)
      {
        v112 = *v111 - 24 * (v107 - 5) - 96;
      }

      else
      {
        v112 = *v111 - 16 * ((v107 + 1) & 0xF);
      }

      v113 = *(a5 + 4);
      if (!v113)
      {
        goto LABEL_131;
      }

      v114 = *a5;
      v115 = 0x9DDFEA08EB382D69 * ((8 * v112 - 0xAE502812AA7333) ^ HIDWORD(v112));
      v116 = 0x9DDFEA08EB382D69 * (HIDWORD(v112) ^ (v115 >> 47) ^ v115);
      v117 = (-348639895 * ((v116 >> 47) ^ v116)) & (v113 - 1);
      v118 = *(*a5 + 16 * v117);
      if (v118 != v112)
      {
        break;
      }

LABEL_130:
      if (v117 == v113)
      {
        goto LABEL_131;
      }

      v119 = *(v114 + 16 * v117 + 8);
LABEL_133:
      v162 = *(v42 + 16);
      v168[0] = v119;
      v169 = v119;
      v120 = mlir::Value::getDefiningOp(&v169);
      if (v120)
      {
        v121 = *(v120 + 2);
        ZinIrHalH13g::~ZinIrHalH13g(v120);
        v123 = (v122 + 8);
      }

      else
      {
        v121 = *(v169 + 2);
        v123 = (v121 + 40);
      }

      v124 = *v123;
      *(v42 + 16) = v121;
      *(v42 + 24) = v124;
      v125 = mlir::Value::getLoc(v168);
      v126 = v168[0];
      v127 = *(v108 + 2);
      if (v127)
      {
        v128 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v127 + 8);
      }

      else
      {
        v128 = 0;
      }

      (*(*a4 + 120))(a4, v125, v126, v127, v128, a5);
      v129 = v168[0];
      v130 = *(a5 + 4);
      if (v130)
      {
        v131 = *a5;
        v132 = 0x9DDFEA08EB382D69 * ((8 * LODWORD(v168[0]) - 0xAE502812AA7333) ^ HIDWORD(v168[0]));
        v133 = 0x9DDFEA08EB382D69 * (HIDWORD(v168[0]) ^ (v132 >> 47) ^ v132);
        v134 = (-348639895 * ((v133 >> 47) ^ v133)) & (v130 - 1);
        v135 = *(*a5 + 16 * v134);
        if (v135 == v168[0])
        {
          v42 = v163;
LABEL_142:
          if (v134 != v130)
          {
            v129 = *(v131 + 16 * v134 + 8);
          }
        }

        else
        {
          v138 = 1;
          v42 = v163;
          while (v135 != -4096)
          {
            v139 = v134 + v138++;
            v134 = v139 & (v130 - 1);
            v135 = *(v131 + 16 * v134);
            if (v135 == v168[0])
            {
              goto LABEL_142;
            }
          }
        }

        v169 = v112;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v169) = v129;
        if (!v42)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v169 = v112;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v169) = v129;
        v42 = v163;
      }

      if (v162)
      {
        *(v42 + 16) = v162;
      }

      else
      {
        *(v42 + 16) = 0;
        *(v42 + 24) = 0;
      }

LABEL_124:
      if (++v111 == v159)
      {
        v106 = a3;
        v109 = v153;
        ++v107;
        goto LABEL_116;
      }
    }

    v136 = 1;
    while (v118 != -4096)
    {
      v137 = v117 + v136++;
      v117 = v137 & (v113 - 1);
      v118 = *(v114 + 16 * v117);
      if (v118 == v112)
      {
        goto LABEL_130;
      }
    }

LABEL_131:
    v119 = 0;
    goto LABEL_133;
  }

LABEL_157:
  v140 = mlir::TargetLegalizerInterface::getBodyBlock(v167);
  mlir::Block::getTerminator(v140);
  if ((*(v141 + 46) & 0x80) != 0)
  {
    v142 = *(v141 + 68);
    if (v142 && v176 != 0)
    {
      v144 = v175;
      v145 = (*(v141 + 72) + 24);
      v146 = v142 - 1;
      v147 = 8 * v176 - 8;
      do
      {
        v149 = *v145;
        v145 += 4;
        v148 = v149;
        v150 = *v144++;
        *(v148 + 8) = *(v148 + 8) & 7 | v150;
        v29 = v146-- != 0;
        if (!v29)
        {
          break;
        }

        v151 = v147;
        v147 -= 8;
      }

      while (v151);
    }
  }

  Context = mlir::Attribute::getContext((v167[0] + 24));
  mlir::ValueRange::ValueRange(&v169, v178[0], LODWORD(v178[1]));
  mlir::ValueRange::ValueRange(v168, v175, v176);
  v37 = mlir::FunctionType::get(Context, v169, v170, v168[0], v168[1]);
  if (v172 != v174)
  {
    free(v172);
  }

  if (v175 != v177)
  {
    free(v175);
  }

  if (v178[0] != v179)
  {
    free(v178[0]);
  }

LABEL_31:
  if (v180 != v182)
  {
    free(v180);
  }

  if (v183 != v185)
  {
    free(v183);
  }

  return v37;
}

BOOL mlir::anonymous namespace::checkAndCollectANEArgs(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v183[1] = *MEMORY[0x1E69E9840];
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

    v163 = v30;
    if (!v30)
    {
      v164 = "Argument was not memref: ";
      v167 = 259;
      mlir::Operation::emitOpError(a1, &v164, &RawStringData);
      if (RawStringData)
      {
        v104 = &v181;
        mlir::DiagnosticArgument::DiagnosticArgument(&v181, v163);
        v105 = v171;
        if (v172 >= v173)
        {
          if (v171 <= &v181 && v171 + 24 * v172 > &v181)
          {
            v145 = &v181 - v171;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v105 = v171;
            v104 = v171 + v145;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v105 = v171;
          }
        }

        v106 = &v105[24 * v172];
        v107 = *v104;
        *(v106 + 2) = *(v104 + 2);
        *v106 = v107;
        ++v172;
        if (RawStringData)
        {
          mlir::InFlightDiagnostic::report(&RawStringData);
        }
      }

      if (v180 == 1)
      {
        if (v179 != &v180)
        {
          free(v179);
        }

        v108 = __p;
        if (__p)
        {
          v109 = v178;
          v110 = __p;
          if (v178 != __p)
          {
            do
            {
              v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
            }

            while (v109 != v108);
            v110 = __p;
          }

          v178 = v108;
          operator delete(v110);
        }

        v111 = v175;
        if (v175)
        {
          v112 = v176;
          v113 = v175;
          if (v176 != v175)
          {
            do
            {
              v115 = *--v112;
              v114 = v115;
              *v112 = 0;
              if (v115)
              {
                MEMORY[0x1AC55A040](v114, 0x1000C8077774924);
              }
            }

            while (v112 != v111);
LABEL_147:
            v113 = v175;
          }

LABEL_148:
          v176 = v111;
          operator delete(v113);
        }

LABEL_149:
        if (v171 != v174)
        {
          free(v171);
        }
      }

      return 0;
    }

    mlir::ArrayAttr::getValue(&v163);
    if (v31 != 4)
    {
      mlir::ArrayAttr::getValue(&v163);
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

    v162 = *(*(v7 + 72) + 32 * v10 + 24);
    v161 = *(*(mlir::Value::getDefiningOp(&v162) + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v161);
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
      v159 = *(v35 + 56);
      v160 = v36;
      v37 = mlir::Value::getDefiningOp(&v159);
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

        v158 = v40;
        if (!v39)
        {
          goto LABEL_129;
        }

        AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v158);
        mlir::DenseIntElementsAttr::classof(AsAttribute);
        v42 = mlir::Value::getDefiningOp(&v160);
        if (v42 && *(*(v42 + 48) + 16) == v12)
        {
          v157 = *(*(*(v42 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          mlir::ArrayAttr::getValue(&v157);
          v44 = v43;
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v157);
          v169 = v45;
          FunctionType = mlir::FunctionOpInterface::getFunctionType(&RawStringData);
          RawStringData = &v170;
          v169 = 0x300000000;
          v164 = v166;
          v165 = 0x100000000;
          v46 = *mlir::AffineMap::getResults(&FunctionType);
          if (v46 && (v181 = v46, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
          {
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v181, v47);
          v155 = v181;
          LHS = mlir::AffineBinaryOpExpr::getLHS(&v155);
          if (LHS && (v49 = LHS, v181 = LHS, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
          {
            v50 = v49;
          }

          else
          {
            v50 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v181, v50);
          v51 = v181;
          RHS = mlir::AffineBinaryOpExpr::getRHS(&v155);
          if (RHS && (v53 = RHS, v181 = RHS, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v181, v54);
          v154 = v181;
          if (v181 && mlir::arith::FastMathFlagsAttr::getValue(&v154) == 2)
          {
            v55 = mlir::AffineBinaryOpExpr::getRHS(&v154);
            v56 = v165;
            if (v165 >= HIDWORD(v165))
            {
              v102 = v55;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v166, v165 + 1, 8);
              v55 = v102;
              v56 = v165;
            }

            *(v164 + v56) = v55;
            LODWORD(v165) = v165 + 1;
            v155 = v51;
          }

          if (v44 - 1 >= 1)
          {
            do
            {
              v57 = mlir::AffineBinaryOpExpr::getLHS(&v155);
              if (v57 && (v58 = v57, v181 = v57, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
              {
                v59 = v58;
              }

              else
              {
                v59 = 0;
              }

              ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v181, v59);
              v60 = v181;
              v61 = mlir::AffineBinaryOpExpr::getRHS(&v155);
              if (v61 && (v62 = v61, v181 = v61, mlir::arith::FastMathFlagsAttr::getValue(&v181) < 5))
              {
                v63 = v62;
              }

              else
              {
                v63 = 0;
              }

              ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v181, v63);
              v154 = v181;
              if (v181 && mlir::arith::FastMathFlagsAttr::getValue(&v154) == 1)
              {
                AffineConstantExpr = mlir::AffineBinaryOpExpr::getRHS(&v154);
              }

              else
              {
                Context = mlir::Attribute::getContext(&v163);
                AffineConstantExpr = mlir::getAffineConstantExpr(1, Context, v66);
              }

              v67 = v169;
              if (v169 >= HIDWORD(v169))
              {
                v68 = AffineConstantExpr;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, &v170, v169 + 1, 8);
                AffineConstantExpr = v68;
                v67 = v169;
              }

              *(RawStringData + v67) = AffineConstantExpr;
              LODWORD(v169) = v169 + 1;
              v155 = v60;
              --v44;
            }

            while (v44 > 1);
          }

          v69 = mlir::AffineBinaryOpExpr::getRHS(&v155);
          v70 = v169;
          if (v169 >= HIDWORD(v169))
          {
            v100 = v69;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, &v170, v169 + 1, 8);
            v69 = v100;
            v70 = v169;
          }

          *(RawStringData + v70) = v69;
          LODWORD(v169) = v169 + 1;
          if (v165 == 1)
          {
            v71 = *v164;
            if (*v164 && (v181 = *v164, mlir::arith::FastMathFlagsAttr::getValue(&v181) == 5))
            {
              v72 = v71;
            }

            else
            {
              v72 = 0;
            }

            v74 = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v181, v72);
            v73 = mlir::AffineBinaryOpExpr::getLHS(v74);
          }

          else
          {
            v73 = 1;
          }

          v181 = v183;
          v182 = 0x100000000;
          v75 = mlir::Attribute::getContext(&v163);
          AffineDimExpr = mlir::getAffineDimExpr(0, v75, v76);
          v152 = mlir::AffineExpr::operator*(&AffineDimExpr, *(RawStringData + 2));
          Value = mlir::ArrayAttr::getValue(&v163);
          v153 = mlir::AffineExpr::operator*(&v152, *(Value + 8) / v73);
          v78 = mlir::Attribute::getContext(&v163);
          v152 = mlir::getAffineDimExpr(1, v78, v79);
          if (v165 == 1)
          {
            v152 = mlir::AffineExpr::floorDiv(&v152, *v164);
          }

          v80 = mlir::AffineExpr::operator*(&v152, *(RawStringData + 2));
          v153 = mlir::AffineExpr::operator+(&v153, v80);
          v81 = mlir::Attribute::getContext(&v163);
          AffineDimExpr = mlir::getAffineDimExpr(2, v81, v82);
          v83 = mlir::AffineExpr::operator*(&AffineDimExpr, *(RawStringData + 1));
          v153 = mlir::AffineExpr::operator+(&v153, v83);
          v84 = mlir::Attribute::getContext(&v163);
          AffineDimExpr = mlir::getAffineDimExpr(3, v84, v85);
          v86 = mlir::AffineExpr::operator*(&AffineDimExpr, *RawStringData);
          v87 = mlir::AffineExpr::operator+(&v153, v86);
          v153 = v87;
          if (v165 == 1)
          {
            v88 = mlir::Attribute::getContext(&v163);
            AffineDimExpr = mlir::getAffineDimExpr(1, v88, v89);
            v90 = mlir::AffineExpr::operator%(&AffineDimExpr, *v164);
            v87 = mlir::AffineExpr::operator+(&v153, v90);
            v153 = v87;
          }

          v91 = v182;
          if (v182 >= HIDWORD(v182))
          {
            v101 = v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v181, v183, v182 + 1, 8);
            v87 = v101;
            v91 = v182;
          }

          v181[v91] = v87;
          LODWORD(v182) = v182 + 1;
          v92 = v182;
          v93 = v181;
          v94 = mlir::Attribute::getContext(&v163);
          v95 = mlir::AffineMap::get(4, 0, v93, v92, v94);
          v96 = mlir::ArrayAttr::getValue(&v163);
          v98 = v97;
          v99 = mlir::AffineBinaryOpExpr::getRHS(&v163);
          *(*a3 + 24 * *(*v9 + 24) + 8) = mlir::MemRefType::get(v96, v98, v99, v95, 0);
          if (v181 != v183)
          {
            free(v181);
          }

          v12 = &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id;
          v13 = &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id;
          if (v164 != v166)
          {
            free(v164);
          }

          if (RawStringData != &v170)
          {
            free(RawStringData);
          }

          goto LABEL_8;
        }

LABEL_19:
        {
          goto LABEL_8;
        }

        if (v163 == CanonicalMemRefType)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v158 = 0;
LABEL_129:
      v164 = "Reshape pattern not present: ";
      v167 = 259;
      mlir::Operation::emitOpError(a1, &v164, &RawStringData);
      if (RawStringData)
      {
        v135 = &v181;
        mlir::DiagnosticArgument::DiagnosticArgument(&v181, v163);
        v136 = v171;
        if (v172 >= v173)
        {
          if (v171 <= &v181 && v171 + 24 * v172 > &v181)
          {
            v148 = &v181 - v171;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v136 = v171;
            v135 = v171 + v148;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
            v136 = v171;
          }
        }

        v137 = &v136[24 * v172];
        v138 = *v135;
        *(v137 + 2) = *(v135 + 2);
        *v137 = v138;
        ++v172;
        if (RawStringData)
        {
          mlir::InFlightDiagnostic::report(&RawStringData);
        }
      }

      if (v180 == 1)
      {
        if (v179 != &v180)
        {
          free(v179);
        }

        v139 = __p;
        if (__p)
        {
          v140 = v178;
          v141 = __p;
          if (v178 != __p)
          {
            do
            {
              v140 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v140 - 1);
            }

            while (v140 != v139);
            v141 = __p;
          }

          v178 = v139;
          operator delete(v141);
        }

        v111 = v175;
        if (v175)
        {
          v142 = v176;
          v113 = v175;
          if (v176 != v175)
          {
            do
            {
              v144 = *--v142;
              v143 = v144;
              *v142 = 0;
              if (v144)
              {
                MEMORY[0x1AC55A040](v143, 0x1000C8077774924);
              }
            }

            while (v142 != v111);
            goto LABEL_147;
          }

          goto LABEL_148;
        }

        goto LABEL_149;
      }

      return 0;
    }

    v164 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v164);
    v169 = v14;
    v149 = mlir::FunctionOpInterface::getFunctionType(&RawStringData);
    v150 = v10;
    v15 = a1;
    v16 = v7;
    v17 = v8;
    v18 = v11;
    v19 = a3;
    v20 = v12;
    v21 = mlir::ArrayAttr::getValue(&v163);
    v22 = v9;
    v23 = v13;
    v25 = v24;
    v26 = mlir::AffineBinaryOpExpr::getRHS(&v163);
    v27 = v21;
    v12 = v20;
    a3 = v19;
    v11 = v18;
    v8 = v17;
    v7 = v16;
    a1 = v15;
    v10 = v150;
    v28 = v25;
    v13 = v23;
    v9 = v22;
    CanonicalMemRefType = mlir::MemRefType::get(v27, v28, v26, v149, 0);
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

  v164 = "Region input ";
  v167 = 259;
  mlir::Operation::emitOpError(a1, &v164, &RawStringData);
  if (RawStringData)
  {
    v116 = *(*v9 + 24);
    LODWORD(v181) = 5;
    v182 = v116;
    v117 = &v181;
    v118 = v171;
    if (v172 >= v173)
    {
      if (v171 <= &v181 && v171 + 24 * v172 > &v181)
      {
        v146 = &v181 - v171;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
        v118 = v171;
        v117 = v171 + v146;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v172 + 1, 24);
        v117 = &v181;
        v118 = v171;
      }
    }

    v119 = &v118[24 * v172];
    v120 = *v117;
    *(v119 + 2) = *(v117 + 2);
    *v119 = v120;
    v121 = ++v172;
    if (RawStringData)
    {
      LODWORD(v181) = 3;
      v182 = " was not rank-4 or rank-5";
      v183[0] = 25;
      v122 = &v181;
      v123 = v171;
      if (v121 >= v173)
      {
        if (v171 <= &v181 && v171 + 24 * v121 > &v181)
        {
          v147 = &v181 - v171;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v121 + 1, 24);
          v123 = v171;
          v122 = v171 + v147;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v171, v174, v121 + 1, 24);
          v122 = &v181;
          v123 = v171;
        }
      }

      v124 = &v123[24 * v172];
      v125 = *v122;
      *(v124 + 2) = *(v122 + 2);
      *v124 = v125;
      ++v172;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
  v126 = result;
  if (RawStringData)
  {
    mlir::InFlightDiagnostic::report(&RawStringData);
    result = v126;
  }

  if (v180 == 1)
  {
    if (v179 != &v180)
    {
      free(v179);
      result = v126;
    }

    v127 = __p;
    if (__p)
    {
      v128 = v178;
      v129 = __p;
      if (v178 != __p)
      {
        do
        {
          v128 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v128 - 1);
        }

        while (v128 != v127);
        v129 = __p;
      }

      v178 = v127;
      operator delete(v129);
      result = v126;
    }

    v130 = v175;
    if (v175)
    {
      v131 = v176;
      v132 = v175;
      if (v176 != v175)
      {
        do
        {
          v134 = *--v131;
          v133 = v134;
          *v131 = 0;
          if (v134)
          {
            MEMORY[0x1AC55A040](v133, 0x1000C8077774924);
          }
        }

        while (v131 != v130);
        v132 = v175;
      }

      v176 = v130;
      operator delete(v132);
      result = v126;
    }

    if (v171 != v174)
    {
      free(v171);
      return v126;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v21, v23, v22);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::ValueRange::ValueRange(v23, *a3, *(a3 + 8));
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

uint64_t mlir::legalizeA12(mlir::SymbolRefAttr *InterfaceFor, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = InterfaceFor;
  v188[12] = *MEMORY[0x1E69E9840];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v166 = a3;
  v167 = a4;
  v170[0] = v10;
  v170[1] = InterfaceFor;
  BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(v170);
  v186 = v188;
  v187 = 0x400000000;
  v183 = v185;
  v184 = 0x400000000;
  v181[0] = mlir::ElementsAttr::getShapedType(v170);
  Inputs = mlir::FunctionType::getInputs(v181);
  if (v13)
  {
    v14 = *(BodyBlock + 48);
    v15 = *(BodyBlock + 56);
    if (v14 != v15)
    {
      v16 = v14 + 8;
      v17 = 8 * v13 - 8;
      do
      {
        v18 = (*(*(v16 - 8) + 8) & 0xFFFFFFFFFFFFFFF8);
        v181[0] = *(v16 - 8);
        v181[1] = v18;
        v182[0] = *Inputs;
        if (v187 >= HIDWORD(v187))
        {
          v20 = a2;
          v21 = Inputs;
          Inputs = v21;
          a2 = v20;
          if (!v17)
          {
            break;
          }
        }

        else
        {
          v19 = &v186[24 * v187];
          *v19 = *v181;
          *(v19 + 2) = v182[0];
          LODWORD(v187) = v187 + 1;
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

  v181[0] = mlir::ElementsAttr::getShapedType(v170);
  Results = mlir::FunctionType::getResults(v181);
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
          v181[0] = *v27;
          v181[1] = v30;
          v182[0] = *Results;
          if (v184 >= HIDWORD(v184))
          {
          }

          else
          {
            v31 = v183 + 24 * v184;
            *v31 = *v181;
            *(v31 + 2) = v182[0];
            LODWORD(v184) = v184 + 1;
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

  if (!(v187 | v184))
  {
    v39 = mlir::minimalLegalize(v170[0], v166, v167, a6);
    goto LABEL_31;
  }

  if (!v187)
  {
LABEL_63:
    v164 = a2;
    v181[0] = v182;
    v181[1] = 0x400000000;
    v60 = mlir::TargetLegalizerInterface::getBodyBlock(v170);
    v61 = *(v60 + 48);
    v62 = *(v60 + 56);
    if (v61 != v62)
    {
      v63 = v181[1];
      do
      {
        v64 = *&v186[24 * *(*v61 + 24) + 8];
        if (v63 >= HIDWORD(v181[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v181, v182, v63 + 1, 8);
          v63 = v181[1];
        }

        *(v181[0] + v63) = v64;
        v63 = ++LODWORD(v181[1]);
        v61 += 8;
      }

      while (v61 != v62);
    }

    v178 = v180;
    v179 = 0x400000000;
    v65 = mlir::TargetLegalizerInterface::getBodyBlock(v170);
    mlir::Block::getTerminator(v65);
    if ((*(v66 + 46) & 0x80) != 0)
    {
      v67 = *(v66 + 68);
      if (v67)
      {
        v68 = v179;
        v69 = 8;
        do
        {
          v70 = *(v183 + v69);
          if (v68 >= HIDWORD(v179))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v178, v180, v68 + 1, 8);
            v68 = v179;
          }

          *(v178 + v68) = v70;
          v68 = v179 + 1;
          LODWORD(v179) = v179 + 1;
          v69 += 24;
          --v67;
        }

        while (v67);
      }
    }

    v175 = v177;
    v176 = 0x400000000;
    v163 = &v166[v167];
    if (v167)
    {
      v158 = *(v164 + 24);
      v71 = v166;
      v160 = *(v164 + 16);
      do
      {
        v72 = *v71;
        v73 = *(*v71 + 2);
        ZinIrHalH13g::~ZinIrHalH13g(*v71);
        *(v164 + 16) = v73;
        *(v164 + 24) = v75;
        if ((*(v72 + 46) & 0x80) != 0)
        {
          v76 = *(v72 + 9);
          v77 = *(v72 + 17);
          v172 = v174;
          v173 = 0x400000000;
          v74 = v174;
          if (v77 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v172, v174, v77, 8);
            v78 = v173;
            goto LABEL_83;
          }

          if (v77)
          {
            v78 = 0;
LABEL_83:
            v79 = 0;
            v80 = (v172 + 8 * v78);
            do
            {
              v81 = *(v76 + 32 * v79 + 24);
              v82 = *(a6 + 4);
              if (v82)
              {
                v83 = *a6;
                v84 = 0x9DDFEA08EB382D69 * ((8 * *(v76 + 32 * v79 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v76 + 32 * v79 + 24)));
                v85 = 0x9DDFEA08EB382D69 * (HIDWORD(v81) ^ (v84 >> 47) ^ v84);
                v86 = (-348639895 * ((v85 >> 47) ^ v85)) & (v82 - 1);
                v87 = *(*a6 + 16 * v86);
                if (v87 == v81)
                {
LABEL_87:
                  if (v86 != v82)
                  {
                    v81 = *(v83 + 16 * v86 + 8);
                  }
                }

                else
                {
                  v88 = 1;
                  while (v87 != -4096)
                  {
                    v89 = v86 + v88++;
                    v86 = v89 & (v82 - 1);
                    v87 = *(v83 + 16 * v86);
                    if (v87 == v81)
                    {
                      goto LABEL_87;
                    }
                  }
                }
              }

              *v80++ = v81;
              ++v79;
            }

            while (v79 != v77);
            v90 = v173;
            goto LABEL_94;
          }

          v90 = 0;
        }

        else
        {
          LODWORD(v77) = 0;
          v90 = 0;
          v172 = v174;
          HIDWORD(v173) = 4;
        }

LABEL_94:
        LODWORD(v173) = v90 + v77;
        v91 = *(v72 + 3);
        v171[0] = mlir::SymbolRefAttr::get(v170[0], v74);
        v168 = mlir::placement::RegionTypeAttr::get(*v164, 1u);
        v92 = mlir::OpBuilder::create<mlir::placement::RegionCall,llvm::SmallVector<mlir::Type,4u> &,mlir::FlatSymbolRefAttr,mlir::placement::RegionTypeAttr,llvm::SmallVector<mlir::Value,4u> &>(v164, v91, &v178, v171, &v168, &v172);
        v169 = v92;
        v93 = v176;
        if (v176 >= HIDWORD(v176))
        {
          v106 = v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v175, v177, v176 + 1, 8);
          v92 = v106;
          v93 = v176;
        }

        *(v175 + v93) = v92;
        LODWORD(v176) = v176 + 1;
        v94 = *(v72 + 9);
        if (v94)
        {
          v95 = v72 - 16;
        }

        else
        {
          v95 = 0;
        }

        ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v169, 0);
        v97 = ODSResultIndexAndLength;
        if (*(v169 + 9))
        {
          NextResultAtOffset = v169 - 16;
        }

        else
        {
          NextResultAtOffset = 0;
        }

        v99 = ODSResultIndexAndLength;
        if (ODSResultIndexAndLength)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
        }

        if (v94)
        {
          v100 = (HIDWORD(v97) + v97);
          if (v100 != v97)
          {
            v101 = 0;
            v102 = ~v99 + v100;
            v103 = v94 - 1;
            do
            {
              v104 = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, v101);
              v105 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v101);
              v171[0] = v104;
              *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, v171) = v105;
              if (v103 == v101)
              {
                break;
              }

              v46 = v102 == v101++;
            }

            while (!v46);
          }
        }

        if (v172 != v174)
        {
          free(v172);
        }

        if (v160)
        {
          *(v164 + 16) = v160;
          *(v164 + 24) = v158;
        }

        else
        {
          v158 = 0;
          *(v164 + 16) = 0;
          *(v164 + 24) = 0;
        }

        ++v71;
      }

      while (v71 != v163);
    }

    v107 = v164;
    if (!v184)
    {
LABEL_161:
      v142 = mlir::TargetLegalizerInterface::getBodyBlock(v170);
      mlir::Block::getTerminator(v142);
      if ((*(v143 + 46) & 0x80) != 0)
      {
        v144 = *(v143 + 68);
        if (v144 && v179 != 0)
        {
          v146 = v178;
          v147 = (*(v143 + 72) + 24);
          v148 = v144 - 1;
          v149 = 8 * v179 - 8;
          do
          {
            v151 = *v147;
            v147 += 4;
            v150 = v151;
            v152 = *v146++;
            *(v150 + 8) = *(v150 + 8) & 7 | v152;
            v32 = v148-- != 0;
            if (!v32)
            {
              break;
            }

            v153 = v149;
            v149 -= 8;
          }

          while (v153);
        }
      }

      Context = mlir::Attribute::getContext((v170[0] + 24));
      mlir::ValueRange::ValueRange(&v172, v181[0], LODWORD(v181[1]));
      mlir::ValueRange::ValueRange(v171, v178, v179);
      v39 = mlir::FunctionType::get(Context, v172, v173, v171[0], v171[1]);
LABEL_172:
      if (v175 != v177)
      {
        free(v175);
      }

      if (v178 != v180)
      {
        free(v178);
      }

      if (v181[0] != v182)
      {
        free(v181[0]);
      }

      goto LABEL_31;
    }

    v161 = 0;
    v108 = v183;
    v155 = v183 + 24 * v184;
    while (*(v108 + 1) == *(v108 + 2) || v167 == 0)
    {
      v110 = v161 + 1;
LABEL_160:
      v108 += 24;
      v161 = v110;
      if (v108 == v155)
      {
        goto LABEL_161;
      }
    }

    v156 = *(v107 + 24);
    v157 = *(v107 + 16);
    v111 = v166;
    while (1)
    {
      v112 = v161 >= 6 ? *v111 - 24 * (v161 - 5) - 96 : *v111 - 16 * ((v161 + 1) & 0xF);
      v113 = *(a6 + 4);
      if (!v113)
      {
        break;
      }

      v114 = *a6;
      v115 = 0x9DDFEA08EB382D69 * ((8 * v112 - 0xAE502812AA7333) ^ HIDWORD(v112));
      v116 = 0x9DDFEA08EB382D69 * (HIDWORD(v112) ^ (v115 >> 47) ^ v115);
      v117 = (-348639895 * ((v116 >> 47) ^ v116)) & (v113 - 1);
      v118 = *(*a6 + 16 * v117);
      if (v118 == v112)
      {
LABEL_131:
        if (v117 == v113)
        {
          break;
        }

        v119 = *(v114 + 16 * v117 + 8);
      }

      else
      {
        v138 = 1;
        while (v118 != -4096)
        {
          v139 = v117 + v138++;
          v117 = v139 & (v113 - 1);
          v118 = *(v114 + 16 * v117);
          if (v118 == v112)
          {
            goto LABEL_131;
          }
        }

        v119 = 0;
      }

LABEL_134:
      v171[0] = v119;
      v172 = v119;
      DefiningOp = mlir::Value::getDefiningOp(&v172);
      if (DefiningOp)
      {
        v121 = *(DefiningOp + 2);
        ZinIrHalH13g::~ZinIrHalH13g(DefiningOp);
        v123 = (v122 + 8);
      }

      else
      {
        v121 = *(v172 + 2);
        v123 = (v121 + 40);
      }

      v124 = *v123;
      *(v164 + 16) = v121;
      *(v164 + 24) = v124;
      v107 = v164;
      Loc = mlir::Value::getLoc(v171);
      v126 = v171[0];
      v127 = v108;
      v128 = *(v108 + 2);
      if (v128)
      {
        v129 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v128 + 8);
      }

      else
      {
        v129 = 0;
      }

      v130 = (*(*a5 + 24))(a5, v164, Loc, v126, v128, v129, a6);
      v108 = v127;
      if (v130)
      {
        v131 = v171[0];
        v132 = *(a6 + 4);
        if (v132)
        {
          v133 = *a6;
          v134 = 0x9DDFEA08EB382D69 * ((8 * LODWORD(v171[0]) - 0xAE502812AA7333) ^ HIDWORD(v171[0]));
          v135 = 0x9DDFEA08EB382D69 * (HIDWORD(v171[0]) ^ (v134 >> 47) ^ v134);
          v136 = (-348639895 * ((v135 >> 47) ^ v135)) & (v132 - 1);
          v137 = *(*a6 + 16 * v136);
          if (v137 == v171[0])
          {
LABEL_143:
            if (v136 != v132)
            {
              v131 = *(v133 + 16 * v136 + 8);
            }
          }

          else
          {
            v140 = 1;
            while (v137 != -4096)
            {
              v141 = v136 + v140++;
              v136 = v141 & (v132 - 1);
              v137 = *(v133 + 16 * v136);
              v107 = v164;
              v108 = v127;
              if (v137 == v171[0])
              {
                goto LABEL_143;
              }
            }

            v107 = v164;
            v108 = v127;
          }
        }

        v172 = v112;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &v172) = v131;
      }

      if (v157)
      {
        *(v107 + 16) = v157;
        *(v107 + 24) = v156;
        if ((v130 & 1) == 0)
        {
LABEL_171:
          v39 = 0;
          goto LABEL_172;
        }
      }

      else
      {
        v156 = 0;
        *(v107 + 16) = 0;
        *(v107 + 24) = 0;
        if ((v130 & 1) == 0)
        {
          goto LABEL_171;
        }
      }

      if (++v111 == v163)
      {
        v110 = v161 + 1;
        goto LABEL_160;
      }
    }

    v119 = 0;
    goto LABEL_134;
  }

  v44 = 0;
  v45 = v186;
  v159 = &v186[24 * v187];
  while (1)
  {
    v46 = *(v45 + 1) == *(v45 + 2) || v167 == 0;
    if (!v46)
    {
      break;
    }

LABEL_43:
    ++v44;
    v45 += 24;
    if (v45 == v159)
    {
      goto LABEL_63;
    }
  }

  v47 = *(a2 + 16);
  v162 = *(a2 + 24);
  v48 = 8 * v167;
  v49 = v166;
  while (1)
  {
    v50 = a2;
    v178 = *(*(*v49 + 72) + 32 * v44 + 24);
    v181[0] = v178;
    v51 = mlir::Value::getDefiningOp(v181);
    if (v51)
    {
      v52 = *(v51 + 2);
      ZinIrHalH13g::~ZinIrHalH13g(v51);
      v54 = (v53 + 8);
    }

    else
    {
      v52 = *(v181[0] + 2);
      v54 = (v52 + 40);
    }

    v55 = *v54;
    *(v50 + 16) = v52;
    *(v50 + 24) = v55;
    a2 = v50;
    v56 = mlir::Value::getLoc(&v178);
    v57 = v178;
    v58 = *(v45 + 1);
    v59 = v58 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8) : 0;
    if (((*(*a5 + 24))(a5, a2, v56, v57, v58, v59, a6) & 1) == 0)
    {
      break;
    }

    if (v47)
    {
      *(a2 + 16) = v47;
      *(a2 + 24) = v162;
    }

    else
    {
      v162 = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
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
    *(a2 + 16) = v47;
    *(a2 + 24) = v162;
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

LABEL_31:
  if (v183 != v185)
  {
    free(v183);
  }

  if (v186 != v188)
  {
    free(v186);
  }

  return v39;
}

uint64_t mlir::anec::IOAttributes::toMLIRAttribute(mlir::anec::IOAttributes *this, mlir::MLIRContext *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *&v29[0] = "name";
  LOWORD(v30) = 259;
  v4 = mlir::StringAttr::get(a2, v29);
  v27 = 260;
  v26[0] = this;
  v5 = mlir::StringAttr::get(a2, v26);
  ZinMirCacheTensors::ZinMirCacheTensors(&v28, v4, v5);
  v26[0] = a2;
  memset(&v26[1], 0, 24);
  *&v29[0] = "elementType";
  LOWORD(v30) = 259;
  v6 = mlir::StringAttr::get(a2, v29);
  v7 = mlir::TypeAttr::get(*(this + 3));
  ZinMirCacheTensors::ZinMirCacheTensors(&v25, v6, v7);
  *&v29[0] = "shape";
  LOWORD(v30) = 259;
  v8 = mlir::StringAttr::get(a2, v29);
  *&v34 = *(this + 10);
  IntegerType = mlir::Builder::getIntegerType(v26, 64, 1);
  v10 = mlir::RankedTensorType::get(&v34, 1, IntegerType, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = mlir::DenseElementsAttr::getFromRawBuffer(v10, v12, *(this + 4), 8 * *(this + 10));
  ZinMirCacheTensors::ZinMirCacheTensors(&v24, v8, v13);
  *&v29[0] = "strides";
  LOWORD(v30) = 259;
  v14 = mlir::StringAttr::get(a2, v29);
  *&v33 = *(this + 22);
  v15 = mlir::Builder::getIntegerType(v26, 64, 1);
  v16 = mlir::RankedTensorType::get(&v33, 1, v15, 0);
  if (v16)
  {
    v17 = v16;
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v18, *(this + 10), 8 * *(this + 22));
  ZinMirCacheTensors::ZinMirCacheTensors(&v34, v14, v19);
  *&v29[0] = "interleave";
  LOWORD(v30) = 259;
  v20 = mlir::StringAttr::get(a2, v29);
  v21 = mlir::Builder::getIntegerType(v26, 64, 0);
  v22 = mlir::IntegerAttr::get(v21, *(this + 16));
  ZinMirCacheTensors::ZinMirCacheTensors(&v33, v20, v22);
  v29[0] = v28;
  v29[1] = v25;
  v30 = v24;
  v31 = v34;
  v32 = v33;
  return mlir::DictionaryAttr::get(a2, v29, 5);
}

uint64_t mlir::anonymous namespace::checkStrideAndInterleave(uint64_t *a1, uint64_t a2)
{
  v101[4] = *MEMORY[0x1E69E9840];
  v83 = 0;
  v84 = a2;
  v99 = v101;
  v100 = 0x400000000;
  if ((mlir::getStridesAndOffset(a2, &v99, &v83) & 1) == 0)
  {
    v81[0] = "Unable to get strides for type: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v16 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
      v17 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v74 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v17 = v89;
          v16 = (v89 + v74);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v16 = &v85;
          v17 = v89;
        }
      }

      v18 = &v17[24 * v90];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v90;
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }
    }

    if (v98 != 1)
    {
      goto LABEL_101;
    }

    if (v97 != &v98)
    {
      free(v97);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v96;
      v22 = __p;
      if (v96 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v96 = v20;
      operator delete(v22);
    }

    v11 = v93;
    if (!v93)
    {
      goto LABEL_99;
    }

    v23 = v94;
    v13 = v93;
    if (v94 == v93)
    {
      goto LABEL_98;
    }

    do
    {
      v25 = *--v23;
      v24 = v25;
      *v23 = 0;
      if (v25)
      {
        MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
      }
    }

    while (v23 != v11);
    goto LABEL_97;
  }

  if (v83)
  {
    v81[0] = "Invalid offset for type: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v4 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
      v5 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v75 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v5 = v89;
          v4 = (v89 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v4 = &v85;
          v5 = v89;
        }
      }

      v6 = &v5[24 * v90];
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
      ++v90;
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }
    }

    if (v98 != 1)
    {
      goto LABEL_101;
    }

    if (v97 != &v98)
    {
      free(v97);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v96;
      v10 = __p;
      if (v96 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v96 = v8;
      operator delete(v10);
    }

    v11 = v93;
    if (!v93)
    {
LABEL_99:
      if (v89 != v92)
      {
        free(v89);
      }

LABEL_101:
      v43 = 0;
      goto LABEL_102;
    }

    v12 = v94;
    v13 = v93;
    if (v94 == v93)
    {
LABEL_98:
      v94 = v11;
      operator delete(v13);
      goto LABEL_99;
    }

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
LABEL_97:
    v13 = v93;
    goto LABEL_98;
  }

  v26 = &v99[8 * v100];
  if (v100 >= 2)
  {
    v29 = v99 + 8;
    v28 = *v99;
    v30 = 8 * v100 - 8;
    v27 = v99;
    v31 = v99 + 8;
    do
    {
      v33 = *v31;
      v31 += 8;
      v32 = v33;
      if (v33 < v28)
      {
        v28 = v32;
        v27 = v29;
      }

      v29 = v31;
      v30 -= 8;
    }

    while (v30);
  }

  else
  {
    v27 = v99;
  }

  v35 = v100 < 3 || v27 - v99 != 8;
  v36 = v27 + 8;
  if (v27 + 8 != v26)
  {
    v37 = v27 + 8;
    while (*v27 < *v37)
    {
      if (++v37 == v26)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_68;
  }

LABEL_55:
  if (v35 || *v27 != 1)
  {
LABEL_68:
    if (v36 == v26)
    {
LABEL_71:
      v43 = 1;
      goto LABEL_102;
    }

    while (*v27 == *v36)
    {
      v36 += 8;
      if (v36 == v26)
      {
        goto LABEL_71;
      }
    }

    v81[0] = "Smallest stride was: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v85 = 2;
      v86 = (v27 - v99) >> 3;
      v48 = &v85;
      v49 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v76 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v49 = v89;
          v48 = (v89 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v48 = &v85;
          v49 = v89;
        }
      }

      v50 = &v49[24 * v90];
      v51 = *v48;
      *(v50 + 2) = *(v48 + 2);
      *v50 = v51;
      ++v90;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v87, " expected ");
    if (*v52)
    {
      v53 = *(v52 + 24);
      v85 = 5;
      v86 = v100 - 1;
      v54 = *(v52 + 32);
      v55 = &v85;
      if (v54 >= *(v52 + 36))
      {
        if (v53 <= &v85 && v53 + 24 * v54 > &v85)
        {
          v77 = &v85 - v53;
          v78 = v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52 + 24, (v52 + 40), v54 + 1, 24);
          v52 = v78;
          v53 = *(v78 + 24);
          v55 = &v77[v53];
        }

        else
        {
          v73 = v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52 + 24, (v52 + 40), v54 + 1, 24);
          v52 = v73;
          v53 = *(v73 + 24);
          v55 = &v85;
        }
      }

      v56 = v53 + 24 * *(v52 + 32);
      v57 = *v55;
      *(v56 + 16) = *(v55 + 2);
      *v56 = v57;
      ++*(v52 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " for type ");
    if (*v58)
    {
      v59 = v58;
      v60 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
      v61 = (v59 + 3);
      v62 = v59[3];
      v63 = *(v59 + 8);
      if (v63 >= *(v59 + 9))
      {
        if (v62 <= &v85 && v62 + 24 * v63 > &v85)
        {
          v79 = &v85 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v61, v59 + 5, v63 + 1, 24);
          v62 = v59[3];
          v60 = &v79[v62];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v61, v59 + 5, v63 + 1, 24);
          v62 = v59[3];
          v60 = &v85;
        }
      }

      v64 = v62 + 24 * *(v59 + 8);
      v65 = *v60;
      *(v64 + 16) = *(v60 + 2);
      *v64 = v65;
      ++*(v59 + 8);
    }

    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v98 != 1)
    {
      goto LABEL_101;
    }

    if (v97 != &v98)
    {
      free(v97);
    }

    v66 = __p;
    if (__p)
    {
      v67 = v96;
      v68 = __p;
      if (v96 != __p)
      {
        do
        {
          v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
        }

        while (v67 != v66);
        v68 = __p;
      }

      v96 = v66;
      operator delete(v68);
    }

    v11 = v93;
    if (!v93)
    {
      goto LABEL_99;
    }

    v69 = v94;
    v13 = v93;
    if (v94 == v93)
    {
      goto LABEL_98;
    }

    do
    {
      v71 = *--v69;
      v70 = v71;
      *v69 = 0;
      if (v71)
      {
        MEMORY[0x1AC55A040](v70, 0x1000C8077774924);
      }
    }

    while (v69 != v11);
    goto LABEL_97;
  }

  v38 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  v39 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  v40 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  v41 = *(mlir::ArrayAttr::getValue(&v84) + 8);
  Value = mlir::ArrayAttr::getValue(&v84);
  v43 = 1;
  if (v38 != 1 && v39 != 2 && v40 != 3 && v41 != 4 && *(Value + 8) != 8)
  {
    v81[0] = "Disallowed interleave size, cannot legalize argument of type: ";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v87);
    if (v87)
    {
      v44 = &v85;
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, v84);
      v45 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v85 && v89 + 24 * v90 > &v85)
        {
          v80 = &v85 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v45 = v89;
          v44 = (v89 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v44 = &v85;
          v45 = v89;
        }
      }

      v46 = &v45[24 * v90];
      v47 = *v44;
      *(v46 + 2) = *(v44 + 2);
      *v46 = v47;
      ++v90;
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }
    }

    if (v98 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v88);
    }

    goto LABEL_101;
  }

LABEL_102:
  if (v99 != v101)
  {
    free(v99);
  }

  return v43;
}

BOOL mlir::anonymous namespace::isRowAligned(uint64_t *a1, uint64_t a2)
{
  v58[4] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = a2;
  v56 = v58;
  v57 = 0x400000000;
  if (mlir::getStridesAndOffset(a2, &v56, &v42))
  {
    v4 = v56;
    v5 = v57;
    v6 = v57;
    if (v57 > 1)
    {
      v22 = (v56 + 1);
      v21 = *v56;
      v23 = v6 * 8 - 8;
      v24 = v56;
      v25 = v56 + 1;
      do
      {
        v27 = *v25++;
        v26 = v27;
        if (v27 < v21)
        {
          v21 = v26;
          v24 = v22;
        }

        v22 = v25;
        v23 -= 8;
      }

      while (v23);
      v28 = 1;
      if (v57 != 2)
      {
        v28 = 2;
      }

      if (v24 - v56 == 8)
      {
        v8 = v28;
      }

      else
      {
        v8 = 1;
      }

      if (v57 >= 0x81)
      {
        v29 = v56;
        v30 = MEMORY[0x1E69E5398];
        v31 = v57;
        v32 = v57;
        while (1)
        {
          v33 = operator new(8 * v32, v30);
          if (v33)
          {
            break;
          }

          v7 = v32 >> 1;
          v34 = v32 > 1;
          v32 >>= 1;
          if (!v34)
          {
            v4 = v29;
            v5 = v31;
            goto LABEL_37;
          }
        }

        v38 = v33;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v29, &v29[v6], v45, v31, v33, v32);
        operator delete(v38);
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
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,long long *>(v4, &v4[v6], v45, v5, 0, v7);
LABEL_38:
    v35 = v56[v8];
    v45[0] = mlir::AffineBinaryOpExpr::getRHS(&v43);
    v36 = ((v35 * (mlir::Type::getIntOrFloatBitWidth(v45) >> 3)) & 0x3FLL) == 0;
    goto LABEL_44;
  }

  v40 = "Unable to get strides for type: ";
  v41 = 259;
  mlir::Operation::emitOpError(a1, &v40, v45);
  if (v45[0])
  {
    v9 = v44;
    mlir::DiagnosticArgument::DiagnosticArgument(v44, a2);
    v10 = v46;
    if (v47 >= v48)
    {
      if (v46 <= v44 && v46 + 24 * v47 > v44)
      {
        v39 = v44 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v10 = v46;
        v9 = v46 + v39;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v9 = v44;
        v10 = v46;
      }
    }

    v11 = &v10[24 * v47];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v47;
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v53;
      v15 = __p;
      if (v53 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v53 = v13;
      operator delete(v15);
    }

    v16 = v50;
    if (v50)
    {
      v17 = v51;
      v18 = v50;
      if (v51 != v50)
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
        v18 = v50;
      }

      v51 = v16;
      operator delete(v18);
    }

    if (v46 != v49)
    {
      free(v46);
    }
  }

  v36 = 0;
LABEL_44:
  if (v56 != v58)
  {
    free(v56);
  }

  return v36;
}

void *mlir::anonymous namespace::makeCanonicalMemRefType(void *a1)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v34 = a1;
  mlir::ArrayAttr::getValue(&v34);
  if (!v1)
  {
    return v34;
  }

  mlir::ArrayAttr::getValue(&v34);
  v3 = v2;
  v36 = v39;
  v38 = 4;
  if (v2 >= 5)
  {
    v37 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v39, v2, 8);
    v4 = v36;
    v5 = 8 * v3;
LABEL_7:
    memset_pattern16(v4, &unk_1A75989B0, v5);
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = 8 * v2;
    v4 = v39;
    goto LABEL_7;
  }

LABEL_8:
  v37 = v3;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v34);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&RHS);
  v8 = v36;
  v9 = v37;
  *(v36 + v37 - 1) = 0x40 / (IntOrFloatBitWidth >> 3);
  v10 = v34;
  if (v34)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
    v8 = v36;
    v9 = v37;
  }

  else
  {
    v11 = 0;
  }

  v35[0] = v10;
  v35[1] = v11;
  v42[0] = 1;
  RHS = v42;
  v41 = 0x400000001;
  Shape = mlir::ShapedType::getShape(v35);
  LODWORD(v14) = v41;
  if (v13 != 1)
  {
    v28 = &v8[8 * v9 - 8];
    v29 = 8 * v13 - 8;
    do
    {
      v14 = v14;
      v31 = *v28;
      v28 -= 8;
      v30 = v31;
      if (v31)
      {
        v32 = (v30 + *(RHS + v14 - 1) * *(Shape + v29) - 1) / v30 * v30;
      }

      else
      {
        v32 = 0;
      }

      if (v14 >= HIDWORD(v41))
      {
        v33 = Shape;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&RHS, v42, v14 + 1, 8);
        Shape = v33;
        v14 = v41;
      }

      *(RHS + v14) = v32;
      LODWORD(v14) = v41 + 1;
      LODWORD(v41) = v41 + 1;
      v29 -= 8;
    }

    while (v29);
  }

  v15 = RHS;
  v16 = v14;
  if (v14)
  {
    v17 = RHS + 8 * v14 - 8;
    if (v17 > RHS)
    {
      v18 = RHS + 8;
      do
      {
        v19 = *(v18 - 1);
        *(v18 - 1) = *v17;
        *v17 = v19;
        v17 -= 8;
        v20 = v18 >= v17;
        v18 += 8;
      }

      while (!v20);
    }
  }

  Context = mlir::Attribute::getContext(v35);
  StridedLinearLayoutMap = mlir::makeStridedLinearLayoutMap(v15, v16, 0, Context);
  v23 = mlir::ShapedType::getShape(v35);
  v25 = v24;
  isSplat = mlir::ElementsAttr::isSplat(v35);
  v6 = mlir::MemRefType::get(v23, v25, isSplat, StridedLinearLayoutMap, 0);
  if (RHS != v42)
  {
    free(RHS);
  }

  if (v36 != v39)
  {
    free(v36);
  }

  return v6;
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

          return std::__radix_sort_impl[abi:nn200100]<long long *,long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,0>(result, a2, a5);
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

uint64_t std::__radix_sort_impl[abi:nn200100]<long long *,long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v29[2048] = *MEMORY[0x1E69E9840];
  bzero(v29, 0x4000uLL);
  memset(v28, 0, sizeof(v28));
  result = std::__collect_impl[abi:nn200100]<long long *,void std::__radix_sort[abi:nn200100]<long long *,long long *,std::__identity,std::__low_byte_fn>(long long *,long long *,long long *,std::__identity,std::__low_byte_fn)::{lambda(long long * const&)#1},std::__low_byte_fn,long (*)[256],long *,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul>(v10, v9, v5, v29, v28);
  if ((result & 1) == 0)
  {
    v12 = 0;
    v13 = v9 - v10;
    do
    {
      v15 = *&v28[v12];
      v16 = *(v28 + ((v12 * 2) | 1));
      if (v15 == v13 && v16 == v13)
      {
        goto LABEL_6;
      }

      if (v15 == v13)
      {
        if (v9 != v10)
        {
          result = memmove(v7, v10, v9 - v10);
          if (v16 != v13)
          {
            goto LABEL_21;
          }

LABEL_5:
          result = memmove(v10, v7, v9 - v10);
          goto LABEL_6;
        }
      }

      else if (v9 != v10)
      {
        v18 = v9;
        v19 = &v29[128 * v12];
        do
        {
          v20 = *--v18;
          v21 = ((v20 ^ 0x8000000000000000) >> (8 * (v12 * 2)));
          v22 = v19[v21] - 1;
          v19[v21] = v22;
          *&v7[8 * v22] = v20;
        }

        while (v18 != v10);
      }

      if (v16 == v13)
      {
        if (v9 != v10)
        {
          goto LABEL_5;
        }
      }

      else if (v9 != v10)
      {
LABEL_21:
        v23 = &v29[256 * ((v12 * 2) | 1)];
        v24 = v9 - v10;
        do
        {
          v25 = *&v7[v24 - 8];
          v26 = ((v25 ^ 0x8000000000000000) >> ((4 * v12) | 8));
          v27 = v23[v26] - 1;
          v23[v26] = v27;
          v10[v27] = v25;
          v24 -= 8;
        }

        while (v24);
      }

LABEL_6:
      ;
    }

    while (v12++ < 3);
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

__n128 llvm::SmallVectorTemplateBase<mlir::anonymous namespace::ArgPack,true>::growAndEmplaceBack<mlir::anonymous namespace::ArgPack>(unint64_t *a1, __int128 *a2)
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

uint64_t OUTLINED_FUNCTION_0_38(uint64_t a1)
{
  *(v1 - 136) = a1;

  return mlir::arith::FastMathFlagsAttr::getValue((v1 - 136));
}

void OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v34 + 24, &a33, v33 + 1, 24);
}

void OUTLINED_FUNCTION_7_16(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, a5, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return mlir::AffineExpr::operator+(va, a1);
}

void mlir::ANEProperties::createFromModule(mlir::ANEProperties *this, mlir::Operation *a2)
{
  v3 = this;
  v2 = &v3;
  operator new();
}

uint64_t mlir::ANEProperties::createFromModule(mlir::Operation *)::$_0::operator()(uint64_t **a1, const void ***a2)
{
  v2 = a2;
  v4 = **a1;
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (*(v4 + 47) && (result = mlir::Operation::getInherentAttr(**a1, v6, v7), (v9 & 1) != 0))
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = mlir::DictionaryAttr::contains(v4 + 56, v6, v7);
    if (!result)
    {
      return result;
    }
  }

  v10 = **a1;
  v11 = *(v2 + 23);
  v12 = v2[1];
  if (v11 < 0)
  {
    v2 = *v2;
  }

  if (v11 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (!*(v10 + 47) || (result = mlir::Operation::getInherentAttr(v10, v2, v13), (v14 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(v10 + 56, v2, v13);
  }

  if (result)
  {
    v15 = result;
    result = mlir::BoolAttr::classof(result);
    if (result)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if (result)
    {
      return mlir::BoolAttr::getValue(&v17);
    }
  }

  return result;
}

void mlir::ANEPropertiesRegistry::registerProperties(std::mutex *this, mlir::MLIRContext *a2, const mlir::ANEProperties *a3)
{
  v21 = a2;
  std::mutex::lock(this);
  v6 = this;
  sig = this[1].__m_.__sig;
  v8 = this + 1;
  v7 = sig;
  v10 = *&v8->__m_.__opaque[8];
  if (v10)
  {
    v11 = v10 - 1;
    v12 = ((a2 >> 4) ^ (a2 >> 9)) & (v10 - 1);
    v13 = v7 + 16 * v12;
    v14 = *v13;
    if (*v13 == a2)
    {
      goto LABEL_18;
    }

    v15 = 0;
    v16 = 1;
    while (v14 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14 == -8192;
      }

      if (v17)
      {
        v15 = v13;
      }

      v18 = v12 + v16++;
      v12 = v18 & v11;
      v13 = v7 + 16 * (v18 & v11);
      v14 = *v13;
      if (*v13 == a2)
      {
        goto LABEL_18;
      }
    }

    if (v15)
    {
      v13 = v15;
    }
  }

  else
  {
    v13 = 0;
  }

  v22 = v13;
  v19 = *v6[1].__m_.__opaque;
  if (4 * v19 + 4 >= 3 * v10)
  {
    v20 = v6;
    v10 *= 2;
LABEL_24:
    llvm::DenseMap<mlir::MLIRContext *,mlir::ANEProperties,llvm::DenseMapInfo<mlir::MLIRContext *,void>,llvm::detail::DenseMapPair<mlir::MLIRContext *,mlir::ANEProperties>>::grow(v8, v10);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(&v8->__m_.__sig, &v21, &v22);
    v6 = v20;
    v19 = *v20[1].__m_.__opaque;
    v13 = v22;
    goto LABEL_15;
  }

  if (v10 + ~v19 - *&v6[1].__m_.__opaque[4] <= v10 >> 3)
  {
    v20 = v6;
    goto LABEL_24;
  }

LABEL_15:
  *v6[1].__m_.__opaque = v19 + 1;
  if (*v13 != -4096)
  {
    --*&v6[1].__m_.__opaque[4];
  }

  *v13 = v21;
  *(v13 + 8) = 0;
LABEL_18:
  *(v13 + 8) = *a3;
  std::mutex::unlock(v6);
}

uint64_t mlir::ANEPropertiesRegistry::getProperties(std::mutex *this, mlir::MLIRContext *a2)
{
  std::mutex::lock(this);
  sig = this[1].__m_.__sig;
  v5 = *&this[1].__m_.__opaque[8];
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(sig + 16 * v6);
    if (v7 == a2)
    {
      goto LABEL_8;
    }

    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v6 + v8++;
      v6 = v9 & (v5 - 1);
      v7 = *(sig + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = *&this[1].__m_.__opaque[8];
LABEL_8:
  v10 = sig + 16 * v6 + 8;
  if (v6 == v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::mutex::unlock(this);
  return v11;
}

mlir::ScopedANEProperties *mlir::ScopedANEProperties::ScopedANEProperties(mlir::ScopedANEProperties *this, mlir::MLIRContext *a2, const mlir::ANEProperties *a3)
{
  *this = a2;
  mlir::ANEPropertiesRegistry::registerProperties(&mlir::ANEPropertiesRegistry::instance, a2, a3);
  return this;
}

void mlir::ScopedANEProperties::~ScopedANEProperties(mlir::ScopedANEProperties *this)
{
  v1 = *this;
  std::mutex::lock(&mlir::ANEPropertiesRegistry::instance);
  if (qword_1ED4415F8)
  {
    v2 = (qword_1ED4415F8 - 1) & ((v1 >> 4) ^ (v1 >> 9));
    v3 = *(qword_1ED4415E8 + 16 * v2);
    if (v3 == v1)
    {
LABEL_3:
      *(qword_1ED4415E8 + 16 * v2) = -8192;
      qword_1ED4415F0 = vadd_s32(qword_1ED4415F0, 0x1FFFFFFFFLL);
    }

    else
    {
      v4 = 1;
      while (v3 != -4096)
      {
        v5 = v2 + v4++;
        v2 = v5 & (qword_1ED4415F8 - 1);
        v3 = *(qword_1ED4415E8 + 16 * v2);
        if (v3 == v1)
        {
          goto LABEL_3;
        }
      }
    }
  }

  std::mutex::unlock(&mlir::ANEPropertiesRegistry::instance);
}

void *llvm::DenseMap<mlir::MLIRContext *,mlir::ANEProperties,llvm::DenseMapInfo<mlir::MLIRContext *,void>,llvm::detail::DenseMapPair<mlir::MLIRContext *,mlir::ANEProperties>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = *a1 + 16 * v25;
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = *a1 + 16 * (v30 & v24);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          *(v22 + 8) = *(v16 + 4);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

BOOL mlir::hasUniqueValues(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v42 = v44;
  v43 = 0x400000000;
  v46 = 0;
  v47 = 0;
  v45 = &v46;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v37, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v39);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v35, a1, NumElements);
  while (v38 != v36)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v37, &v40);
    if (v47)
    {
      goto LABEL_17;
    }

    v14 = v42;
    v15 = v43;
    v16 = (v42 + 16 * v43);
    if (!v43)
    {
      goto LABEL_26;
    }

    v17 = v40;
    v18 = 16 * v43;
    v19 = v42;
    while (*(v19 + 2) > 0x40u)
    {
      if (llvm::APInt::equalSlowCase(v19, &v40))
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
      goto LABEL_29;
    }

LABEL_25:
    if (v15 >= 4)
    {
      do
      {
        v22 = v46;
        v23 = &v46;
        if (v45 == &v46)
        {
          goto LABEL_46;
        }

        v24 = v46;
        v25 = &v46;
        if (v46)
        {
          do
          {
            v23 = v24;
            v24 = v24[1];
          }

          while (v24);
        }

        else
        {
          do
          {
            v23 = v25[2];
            v26 = *v23 == v25;
            v25 = v23;
          }

          while (v26);
        }

        if ((llvm::APInt::compare((v23 + 4), v14) & 0x80000000) != 0)
        {
LABEL_46:
          if (v22)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = &v46;
          }

          if (!*v28)
          {
LABEL_50:
            operator new();
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_50;
          }

          while (1)
          {
            while (1)
            {
              v27 = v22;
              if ((llvm::APInt::compare(v14, (v22 + 4)) & 0x80000000) == 0)
              {
                break;
              }

              v22 = *v22;
              if (!*v27)
              {
                goto LABEL_50;
              }
            }

            if ((llvm::APInt::compare((v22 + 4), v14) & 0x80000000) == 0)
            {
              break;
            }

            v22 = v22[1];
            if (!v22)
            {
              goto LABEL_50;
            }
          }
        }

        v14 = (v14 + 16);
      }

      while (v14 != v16);
      if (v43)
      {
        v29 = (v42 + 16 * v43 - 8);
        v30 = -16 * v43;
        v31 = v29;
        do
        {
          v32 = *v31;
          v31 -= 4;
          if (v32 >= 0x41)
          {
            v33 = *(v29 - 1);
            if (v33)
            {
              MEMORY[0x1AC55A040](v33, 0x1000C8000313F17);
            }
          }

          v29 = v31;
          v30 += 16;
        }

        while (v30);
      }

      LODWORD(v43) = 0;
LABEL_17:
      std::set<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::insert[abi:nn200100](&v45, &v40);
      goto LABEL_29;
    }

LABEL_26:
    if (v15 >= HIDWORD(v43))
    {
      if (v14 <= &v40 && v16 > &v40)
      {
        v34 = (&v40 - v14);
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v42, v15 + 1);
        v14 = v42;
        v20 = &v34[v42];
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v42, v15 + 1);
        v20 = &v40;
        v14 = v42;
      }
    }

    else
    {
      v20 = &v40;
    }

    v21 = v14 + 16 * v43;
    *(v21 + 2) = *(v20 + 2);
    *v21 = *v20;
    *(v20 + 2) = 0;
    LODWORD(v43) = v43 + 1;
LABEL_29:
    if (v41 >= 0x41 && v40)
    {
      MEMORY[0x1AC55A040](v40, 0x1000C8000313F17);
    }

    ++v38;
  }

  v3 = mlir::DenseElementsAttr::getNumElements(&v39);
  v4 = v43;
  v5 = v47;
  std::__tree<llvm::APInt,mlir::hasUniqueValues(mlir::DenseIntElementsAttr,std::optional<mlir::Location>)::APIntLess,std::allocator<llvm::APInt>>::destroy(v46);
  v6 = v42;
  if (v43)
  {
    v7 = (v42 + 16 * v43 - 8);
    v8 = -16 * v43;
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
          MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
        }
      }

      v7 = v9;
      v8 += 16;
    }

    while (v8);
    v6 = v42;
    if (v42 != v44)
    {
      goto LABEL_9;
    }
  }

  else if (v42 != v44)
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
        MEMORY[0x1AC55A040](v2, 0x1000C8000313F17);
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

BOOL mlir::detail::is_constant_fp_value<unsigned long long>(unint64_t *a1, unint64_t a2)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v4 = *(*mlir::getElementTypeOrSelf((a1[1] & 0xFFFFFFFFFFFFFFF8)) + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v31 = 0;
  v33 = &v31;
  v34 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v34);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v33, DefiningOp) && mlir::DenseElementsAttr::isSplat(&v31))
  {
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v31, &v34);
    v25 = llvm::APFloat::convertToFloat(&v34, v22, v23, v24);
    v26 = v35[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v27) == v26)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v35);
    }
  }

  else
  {
    v34 = 0;
    v35[0] = 0;
    v32 = &v34;
    v33 = a1;
    v28 = mlir::Value::getDefiningOp(&v33);
    if (!v28)
    {
      return 0;
    }

    if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v32, v28) & 1) == 0)
    {
      return 0;
    }

    SingleFloat = mlir::getSingleFloatValue<float>(v34, v35[0]);
    if ((SingleFloat & 0x100000000) == 0)
    {
      return 0;
    }

    v25 = *&SingleFloat;
  }

  return v25 == a2;
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseFPElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

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
  a1[3] = mlir::ArrayAttr::getValue(a1);
  a1[4] = v4;
  mlir::ArrayAttr::getValue(a1);
  a1[2] = v5;
  ElementsAttrRawData = mlir::getElementsAttrRawData(v35[0]);
  NumElements = v7;
  isInteger = 0;
  if (mlir::ElementsAttr::isSplat(v35))
  {
    if (*(*mlir::AffineBinaryOpExpr::getRHS(a1) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v36 = mlir::AffineBinaryOpExpr::getRHS(a1), mlir::Type::getIntOrFloatBitWidth(&v36) <= 7))
    {
      RHS = mlir::AffineBinaryOpExpr::getRHS(a1);
      isInteger = 1;
      if (!mlir::Type::isInteger(&RHS, 1))
      {
        v33 = mlir::AffineBinaryOpExpr::getRHS(a1);
        if (!mlir::Type::isInteger(&v33, 2))
        {
          v32 = mlir::AffineBinaryOpExpr::getRHS(a1);
          if (!mlir::Type::isInteger(&v32, 3))
          {
            v31 = mlir::AffineBinaryOpExpr::getRHS(a1);
            if (!mlir::Type::isInteger(&v31, 4))
            {
              v30 = mlir::AffineBinaryOpExpr::getRHS(a1);
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
    v36 = mlir::AffineBinaryOpExpr::getRHS(a1);
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
    Value = mlir::ArrayAttr::getValue(a1);
    NumElements = mlir::ShapedType::getNumElements(Value, v28);
    v36 = mlir::AffineBinaryOpExpr::getRHS(a1);
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
    v36 = mlir::AffineBinaryOpExpr::getRHS(a1);
    if (mlir::Type::isInteger(&v36, 1))
    {
      *(a1 + 56) = 1;
      v11 = mlir::ArrayAttr::getValue(a1);
      v13 = mlir::ShapedType::getNumElements(v11, v12);
      v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
      v15 = mlir::ArrayAttr::getValue(a1);
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
            v24 = vmovn_s64(vcgeq_u64(v23, xmmword_1A7598670));
            if (vuzp1_s8(vuzp1_s16(v24, 0), 0).u8[0])
            {
              *(v18 - 3) = v22 & 1;
            }

            if (vuzp1_s8(vuzp1_s16(v24, 0), 0).i8[1])
            {
              *(v18 - 2) = (v22 & 2) != 0;
            }

            if (vuzp1_s8(vuzp1_s16(0, vmovn_s64(vcgeq_u64(v23, xmmword_1A7598660))), 0).i8[2])
            {
              *(v18 - 1) = (v22 & 4) != 0;
              *v18 = (v22 & 8) != 0;
            }

            v25 = vmovn_s64(vcgeq_u64(v23, xmmword_1A759D330));
            if (vuzp1_s8(0, vuzp1_s16(v25, 0)).i32[1])
            {
              v18[1] = (v22 & 0x10) != 0;
            }

            if (vuzp1_s8(0, vuzp1_s16(v25, 0)).i8[5])
            {
              v18[2] = (v22 & 0x20) != 0;
            }

            if (vuzp1_s8(0, vuzp1_s16(0, vmovn_s64(vcgeq_u64(v23, xmmword_1A759D320)))).i8[6])
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
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(&RHS, 1))
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
  isSplat = mlir::ElementsAttr::isSplat(v18);
  *a1 = mlir::RankedTensorType::get(Shape, v8, isSplat, 0);
  a1[3] = mlir::ArrayAttr::getValue(a1);
  a1[4] = v10;
  mlir::ArrayAttr::getValue(a1);
  a1[2] = v11;
  Value = mlir::ArrayAttr::getValue(a1);
  if (mlir::ShapedType::getNumElements(Value, v13) == 1)
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
    RHS = mlir::AffineBinaryOpExpr::getRHS(a1);
    if (mlir::Type::isInteger(&RHS, 1))
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
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(&RHS, 1))
  {
    Value = mlir::ArrayAttr::getValue(this);
    return mlir::ShapedType::getNumElements(Value, v3);
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

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

uint64_t *mlir::mps::CPUNDArray::tryMakeAliasedArray@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 **a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a1;
  v14 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v13);
  if (mlir::Type::isInteger(&isSplat, 1))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    Shape = mlir::ShapedType::getShape(&v13);
    v8 = v7;
    v9 = mlir::ElementsAttr::isSplat(&v13);
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
  Value = mlir::ArrayAttr::getValue(this);

  return mlir::ShapedType::getNumElements(Value, v2);
}

void *mlir::mps::CPUNDArray::getElementsAttr(mlir::mps::CPUNDArray *this, int a2, int a3)
{
  if (*(this + 58))
  {
    NumElements = 1;
  }

  else
  {
    Value = mlir::ArrayAttr::getValue(this);
    NumElements = mlir::ShapedType::getNumElements(Value, v8);
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(&RHS, 1))
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
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isUnsignedInteger(&RHS, 8))
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

  if (mlir::Type::isInteger(&RHS, 8))
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

  if (mlir::Type::isUnsignedInteger(&RHS, 16))
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

  if (mlir::Type::isInteger(&RHS, 16))
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

  if (mlir::Type::isUnsignedInteger(&RHS, 32))
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

  if (mlir::Type::isInteger(&RHS, 32))
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

  if (mlir::Type::isUnsignedInteger(&RHS, 64))
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

  if (mlir::Type::isInteger(&RHS, 64))
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

  if (mlir::Type::isF32(&RHS))
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

  if (mlir::Type::isF16(&RHS))
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

  if (mlir::Type::isBF16(&RHS))
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

  v52 = RHS;
  v53 = *(*RHS + 136);
  if (v53 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v52 = 0;
  }

  v65 = v52;
  if (v53 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_101;
  }

  v64 = mlir::AffineMapAttr::getValue(&v65);
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

  v64 = mlir::AffineMapAttr::getValue(&v65);
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
    RHS = mlir::AffineBinaryOpExpr::getRHS(this);
    if (!mlir::Type::isInteger(&RHS, 1) && mlir::mps::getElementsAttrElementBitWidth(*this) <= 7)
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
  v40 = mlir::AffineBinaryOpExpr::getRHS(this);
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

float mlir::mps::CPUNDArray::getSplatFloatValue(mlir::mps::CPUNDArray *this)
{
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  v3 = *(*RHS + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    RHS = 0;
  }

  v26 = RHS;
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
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

void mlir::mps::CPUNDArrayArithmeticBinaryKernel::arithmeticBinaryTileKernel(uint64_t ***a1, uint64_t ***a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 16);
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v13 = a3[1];
        if (v13 == *a3)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v14 = a4[1] - *a4;
          if (!v14)
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)2>(a1, a2, &v58, &v55, a5, a6);
            if (v55)
            {
              v56 = v55;
              operator delete(v55);
            }

            v10 = v58;
            if (v58)
            {
              v59 = v58;
              goto LABEL_88;
            }

            return;
          }

          if ((v14 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else if (((v13 - *a3) & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v21 = a3[1];
        if (v21 == *a3)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)3>(a1, a2, &v52, &v49, a5, a6);
            if (v49)
            {
              v50 = v49;
              operator delete(v49);
            }

            v10 = v52;
            if (v52)
            {
              v53 = v52;
              goto LABEL_88;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else if (((v21 - *a3) & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!v7)
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v8 = a3[1];
        if (v8 != *a3)
        {
          if (((v8 - *a3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_90;
        }

        v67 = 0;
        v68 = 0;
        v69 = 0;
        v9 = a4[1] - *a4;
        if (v9)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_90;
        }

        mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(a1, a2, &v70, &v67, a5, a6);
        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        v10 = v70;
        if (v70)
        {
          v71 = v70;
LABEL_88:
          operator delete(v10);
          return;
        }

        return;
      }

      v64 = 0;
      v65 = 0;
      v66 = 0;
      v17 = a3[1];
      if (v17 == *a3)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v18 = a4[1] - *a4;
        if (!v18)
        {
          mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)1>(a1, a2, &v64, &v61, a5, a6);
          if (v61)
          {
            v62 = v61;
            operator delete(v61);
          }

          v10 = v64;
          if (v64)
          {
            v65 = v64;
            goto LABEL_88;
          }

          return;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v17 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_90:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v7 > 14)
  {
    if (v7 == 15)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v15 = a3[1];
      if (v15 == *a3)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v16 = a4[1] - *a4;
        if (!v16)
        {
          mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)15>(a1, a2, &v34, &v31, a5, a6);
          if (v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          v10 = v34;
          if (v34)
          {
            v35 = v34;
            goto LABEL_88;
          }

          return;
        }

        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v15 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v23 = a3[1];
      if (v23 == *a3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)16>(a1, a2, &v28, &v25, a5, a6);
          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          v10 = v28;
          if (v28)
          {
            v29 = v28;
            goto LABEL_88;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v23 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_90;
  }

  if (v7 != 4)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v19 = a3[1];
    if (v19 == *a3)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v20 = a4[1] - *a4;
      if (!v20)
      {
        mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)5>(a1, a2, &v40, &v37, a5, a6);
        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        v10 = v40;
        if (v40)
        {
          v41 = v40;
          goto LABEL_88;
        }

        return;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if (((v19 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_90;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v11 = a3[1];
  if (v11 != *a3)
  {
    if (((v11 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_90;
  }

  __p = 0;
  v44 = 0;
  v45 = 0;
  v12 = a4[1] - *a4;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_90;
  }

  mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)4>(a1, a2, &v46, &__p, a5, a6);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  v10 = v46;
  if (v46)
  {
    v47 = v46;
    goto LABEL_88;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v134[0] = ElementType;
  v132 = ***a1;
  v11 = mlir::TensorType::getElementType(&v132);
  Value = v11;
  v131 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v131);
  v131 = ElementType;
  v132 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v130 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v129 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v128 = v15;
    v134[0] = mlir::AffineMapAttr::getValue(&v130);
    Value = mlir::AffineMapAttr::getValue(&v129);
    v132 = mlir::AffineMapAttr::getValue(&v128);
  }

  if (mlir::Type::isF32(v134) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v132))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      v116 = 0;
      v117 = 0;
      v118 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v119, &v116);
      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      v18 = v119;
      if (v119)
      {
        v120 = v119;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v125 = 0;
    v126 = 0;
    v127 = 0;
    v40 = a3[1] - *a3;
    if (v40)
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v41 = a4[1] - *a4;
      if (!v41)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v125, &v122);
        if (v122)
        {
          v123 = v122;
          operator delete(v122);
        }

        v18 = v125;
        if (v125)
        {
          v126 = v125;
          goto LABEL_173;
        }

        return;
      }

      if ((v41 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v134) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v132))
  {
    if (mlir::Type::isF32(v134) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v132))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v44 = a3[1] - *a3;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v45 = a4[1] - *a4;
          if (!v45)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v101, &v98, v22, v23);
            if (v98)
            {
              v99 = v98;
              operator delete(v98);
            }

            v18 = v101;
            if (v101)
            {
              v102 = v101;
              goto LABEL_173;
            }

            return;
          }

          if ((v45 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v24 = a3[1] - *a3;
        if (v24)
        {
          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v25 = a4[1] - *a4;
          if (!v25)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v95, &v92);
            if (v92)
            {
              v93 = v92;
              operator delete(v92);
            }

            v18 = v95;
            if (v95)
            {
              v96 = v95;
              goto LABEL_173;
            }

            return;
          }

          if ((v25 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(v134) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v132))
    {
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v26 = a3[1] - *a3;
      if (v26)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v27 = a4[1] - *a4;
        if (!v27)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v89, &v86);
          if (v86)
          {
            v87 = v86;
            operator delete(v86);
          }

          v18 = v89;
          if (v89)
          {
            v90 = v89;
            goto LABEL_173;
          }

          return;
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v134) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v132))
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v28 = a3[1] - *a3;
      if (v28)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v83, &v80);
          if (v80)
          {
            v81 = v80;
            operator delete(v80);
          }

          v18 = v83;
          if (v83)
          {
            v84 = v83;
            goto LABEL_173;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v134))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v36 = a3[1] - *a3;
        if (v36)
        {
          if ((v36 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v37 = a4[1] - *a4;
          if (!v37)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v77, &v74);
            if (v74)
            {
              v75 = v74;
              operator delete(v74);
            }

            v18 = v77;
            if (v77)
            {
              v78 = v77;
              goto LABEL_173;
            }

            return;
          }

          if ((v37 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v30 = a3[1] - *a3;
        if (v30)
        {
          if ((v30 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v31 = a4[1] - *a4;
          if (!v31)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)0>(a1, a2, &v71, &v68);
            if (v68)
            {
              v69 = v68;
              operator delete(v68);
            }

            v18 = v71;
            if (v71)
            {
              v72 = v71;
              goto LABEL_173;
            }

            return;
          }

          if ((v31 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v134))
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v33 = a4[1] - *a4;
        if (!v33)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)0>(a1, a2, &v65, &v62);
          if (v62)
          {
            v63 = v62;
            operator delete(v62);
          }

          v18 = v65;
          if (v65)
          {
            v66 = v65;
            goto LABEL_173;
          }

          return;
        }

        if ((v33 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v134, 64))
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v35 = a4[1] - *a4;
        if (!v35)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)0>(a1, a2, &v59, &v56);
          if (v56)
          {
            v57 = v56;
            operator delete(v56);
          }

          v18 = v59;
          if (v59)
          {
            v60 = v59;
            goto LABEL_173;
          }

          return;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(v134, 32))
      {
        if (mlir::Type::isInteger(v134, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v49, a3);
          std::vector<long long>::vector[abi:nn200100](v48, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)0>(a1, a2, v49, v48);
          if (v48[0])
          {
            v48[1] = v48[0];
            operator delete(v48[0]);
          }

          v18 = v49[0];
          if (v49[0])
          {
            v49[1] = v49[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v134, 8) && !mlir::Type::isInteger(v134, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v131);
          }

          std::vector<long long>::vector[abi:nn200100](v47, a3);
          std::vector<long long>::vector[abi:nn200100](v46, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)0>(a1, a2, v47, v46);
          if (v46[0])
          {
            v46[1] = v46[0];
            operator delete(v46[0]);
          }

          v18 = v47[0];
          if (v47[0])
          {
            v47[1] = v47[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      v38 = a3[1] - *a3;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v39 = a4[1] - *a4;
        if (!v39)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)0>(a1, a2, &v53, &v50);
          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          v18 = v53;
          if (v53)
          {
            v54 = v53;
            goto LABEL_173;
          }

          return;
        }

        if ((v39 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v114 = 0;
    v113 = 0;
    v115 = 0;
    v42 = a3[1] - *a3;
    if (v42)
    {
      if ((v42 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v111 = 0;
      v110 = 0;
      v112 = 0;
      v43 = a4[1] - *a4;
      if (!v43)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v113, &v110, v19);
        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        v18 = v113;
        if (v113)
        {
          v114 = v113;
          goto LABEL_173;
        }

        return;
      }

      if ((v43 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
  }

  v108 = 0;
  v107 = 0;
  v109 = 0;
  v20 = a3[1] - *a3;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  v105 = 0;
  __p = 0;
  v106 = 0;
  v21 = a4[1] - *a4;
  if (v21)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v107, &__p);
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  v18 = v107;
  if (v107)
  {
    v108 = v107;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)1>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v134[0] = ElementType;
  v132 = ***a1;
  v11 = mlir::TensorType::getElementType(&v132);
  Value = v11;
  v131 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v131);
  v131 = ElementType;
  v132 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v130 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v129 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v128 = v15;
    v134[0] = mlir::AffineMapAttr::getValue(&v130);
    Value = mlir::AffineMapAttr::getValue(&v129);
    v132 = mlir::AffineMapAttr::getValue(&v128);
  }

  if (mlir::Type::isF32(v134) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v132))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      v116 = 0;
      v117 = 0;
      v118 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v119, &v116);
      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      v18 = v119;
      if (v119)
      {
        v120 = v119;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v125 = 0;
    v126 = 0;
    v127 = 0;
    v40 = a3[1] - *a3;
    if (v40)
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v41 = a4[1] - *a4;
      if (!v41)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v125, &v122);
        if (v122)
        {
          v123 = v122;
          operator delete(v122);
        }

        v18 = v125;
        if (v125)
        {
          v126 = v125;
          goto LABEL_173;
        }

        return;
      }

      if ((v41 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v134) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v132))
  {
    if (mlir::Type::isF32(v134) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v132))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v44 = a3[1] - *a3;
        if (v44)
        {
          if ((v44 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v45 = a4[1] - *a4;
          if (!v45)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v101, &v98, v22, v23);
            if (v98)
            {
              v99 = v98;
              operator delete(v98);
            }

            v18 = v101;
            if (v101)
            {
              v102 = v101;
              goto LABEL_173;
            }

            return;
          }

          if ((v45 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v24 = a3[1] - *a3;
        if (v24)
        {
          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v25 = a4[1] - *a4;
          if (!v25)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v95, &v92);
            if (v92)
            {
              v93 = v92;
              operator delete(v92);
            }

            v18 = v95;
            if (v95)
            {
              v96 = v95;
              goto LABEL_173;
            }

            return;
          }

          if ((v25 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(v134) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v132))
    {
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v26 = a3[1] - *a3;
      if (v26)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v27 = a4[1] - *a4;
        if (!v27)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v89, &v86);
          if (v86)
          {
            v87 = v86;
            operator delete(v86);
          }

          v18 = v89;
          if (v89)
          {
            v90 = v89;
            goto LABEL_173;
          }

          return;
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v134) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v132))
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v28 = a3[1] - *a3;
      if (v28)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v83, &v80);
          if (v80)
          {
            v81 = v80;
            operator delete(v80);
          }

          v18 = v83;
          if (v83)
          {
            v84 = v83;
            goto LABEL_173;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v134))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v36 = a3[1] - *a3;
        if (v36)
        {
          if ((v36 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v37 = a4[1] - *a4;
          if (!v37)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v77, &v74);
            if (v74)
            {
              v75 = v74;
              operator delete(v74);
            }

            v18 = v77;
            if (v77)
            {
              v78 = v77;
              goto LABEL_173;
            }

            return;
          }

          if ((v37 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v30 = a3[1] - *a3;
        if (v30)
        {
          if ((v30 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v31 = a4[1] - *a4;
          if (!v31)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)1>(a1, a2, &v71, &v68);
            if (v68)
            {
              v69 = v68;
              operator delete(v68);
            }

            v18 = v71;
            if (v71)
            {
              v72 = v71;
              goto LABEL_173;
            }

            return;
          }

          if ((v31 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v134))
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v33 = a4[1] - *a4;
        if (!v33)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)1>(a1, a2, &v65, &v62);
          if (v62)
          {
            v63 = v62;
            operator delete(v62);
          }

          v18 = v65;
          if (v65)
          {
            v66 = v65;
            goto LABEL_173;
          }

          return;
        }

        if ((v33 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v134, 64))
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v35 = a4[1] - *a4;
        if (!v35)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)1>(a1, a2, &v59, &v56);
          if (v56)
          {
            v57 = v56;
            operator delete(v56);
          }

          v18 = v59;
          if (v59)
          {
            v60 = v59;
            goto LABEL_173;
          }

          return;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(v134, 32))
      {
        if (mlir::Type::isInteger(v134, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v49, a3);
          std::vector<long long>::vector[abi:nn200100](v48, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)1>(a1, a2, v49, v48);
          if (v48[0])
          {
            v48[1] = v48[0];
            operator delete(v48[0]);
          }

          v18 = v49[0];
          if (v49[0])
          {
            v49[1] = v49[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v134, 8) && !mlir::Type::isInteger(v134, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v131);
          }

          std::vector<long long>::vector[abi:nn200100](v47, a3);
          std::vector<long long>::vector[abi:nn200100](v46, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)1>(a1, a2, v47, v46);
          if (v46[0])
          {
            v46[1] = v46[0];
            operator delete(v46[0]);
          }

          v18 = v47[0];
          if (v47[0])
          {
            v47[1] = v47[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      v38 = a3[1] - *a3;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v39 = a4[1] - *a4;
        if (!v39)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)1>(a1, a2, &v53, &v50);
          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          v18 = v53;
          if (v53)
          {
            v54 = v53;
            goto LABEL_173;
          }

          return;
        }

        if ((v39 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v114 = 0;
    v113 = 0;
    v115 = 0;
    v42 = a3[1] - *a3;
    if (v42)
    {
      if ((v42 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v111 = 0;
      v110 = 0;
      v112 = 0;
      v43 = a4[1] - *a4;
      if (!v43)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v113, &v110, v19);
        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        v18 = v113;
        if (v113)
        {
          v114 = v113;
          goto LABEL_173;
        }

        return;
      }

      if ((v43 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
  }

  v108 = 0;
  v107 = 0;
  v109 = 0;
  v20 = a3[1] - *a3;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  v105 = 0;
  __p = 0;
  v106 = 0;
  v21 = a4[1] - *a4;
  if (v21)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v107, &__p);
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  v18 = v107;
  if (v107)
  {
    v108 = v107;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)2>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v131[0] = ElementType;
  v129 = ***a1;
  v11 = mlir::TensorType::getElementType(&v129);
  Value = v11;
  v128 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v128);
  v128 = ElementType;
  v129 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v127 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v126 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v131[0] = mlir::AffineMapAttr::getValue(&v127);
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
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

        goto LABEL_175;
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

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
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
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v38 = a4[1] - *a4;
      if (!v38)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_173;
        }

        return;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v131) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v129))
  {
    if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v129))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
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
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_173;
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
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_173;
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

    else if (mlir::Type::isF32(v131) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
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
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v86, &v83);
          if (v83)
          {
            v84 = v83;
            operator delete(v83);
          }

          v18 = v86;
          if (v86)
          {
            v87 = v86;
            goto LABEL_173;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
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
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v80, &v77);
          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          v18 = v80;
          if (v80)
          {
            v81 = v80;
            goto LABEL_173;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v131))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
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
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v34 = a4[1] - *a4;
          if (!v34)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v74, &v71);
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            v18 = v74;
            if (v74)
            {
              v75 = v74;
              goto LABEL_173;
            }

            return;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
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
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)2>(a1, a2, &v68, &v65);
            if (v65)
            {
              v66 = v65;
              operator delete(v65);
            }

            v18 = v68;
            if (v68)
            {
              v69 = v68;
              goto LABEL_173;
            }

            return;
          }

          if ((v28 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v131))
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
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)2>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_173;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v131, 64))
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
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)2>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_173;
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
      if (!mlir::Type::isInteger(v131, 32))
      {
        if (mlir::Type::isInteger(v131, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)2>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v131, 8) && !mlir::Type::isInteger(v131, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v128);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)2>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
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
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)2>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_173;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v111 = 0;
    v110 = 0;
    v112 = 0;
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
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v40 = a4[1] - *a4;
      if (!v40)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v110, &v107);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_173;
        }

        return;
      }

      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
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

    goto LABEL_175;
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

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)3>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v131[0] = ElementType;
  v129 = ***a1;
  v11 = mlir::TensorType::getElementType(&v129);
  Value = v11;
  v128 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v128);
  v128 = ElementType;
  v129 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v127 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v126 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v131[0] = mlir::AffineMapAttr::getValue(&v127);
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
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

        goto LABEL_175;
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

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
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
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v38 = a4[1] - *a4;
      if (!v38)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_173;
        }

        return;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v131) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v129))
  {
    if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v129))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
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
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_173;
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
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_173;
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

    else if (mlir::Type::isF32(v131) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
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
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v86, &v83);
          if (v83)
          {
            v84 = v83;
            operator delete(v83);
          }

          v18 = v86;
          if (v86)
          {
            v87 = v86;
            goto LABEL_173;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
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
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v80, &v77);
          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          v18 = v80;
          if (v80)
          {
            v81 = v80;
            goto LABEL_173;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v131))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
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
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v34 = a4[1] - *a4;
          if (!v34)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v74, &v71);
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            v18 = v74;
            if (v74)
            {
              v75 = v74;
              goto LABEL_173;
            }

            return;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
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
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)3>(a1, a2, &v68, &v65);
            if (v65)
            {
              v66 = v65;
              operator delete(v65);
            }

            v18 = v68;
            if (v68)
            {
              v69 = v68;
              goto LABEL_173;
            }

            return;
          }

          if ((v28 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v131))
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
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)3>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_173;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v131, 64))
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
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)3>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_173;
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
      if (!mlir::Type::isInteger(v131, 32))
      {
        if (mlir::Type::isInteger(v131, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)3>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v131, 8) && !mlir::Type::isInteger(v131, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v128);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)3>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
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
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)3>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_173;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v111 = 0;
    v110 = 0;
    v112 = 0;
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
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v40 = a4[1] - *a4;
      if (!v40)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v110, &v107);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_173;
        }

        return;
      }

      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
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

    goto LABEL_175;
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

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)4>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v133[0] = ElementType;
  v131 = ***a1;
  v11 = mlir::TensorType::getElementType(&v131);
  Value = v11;
  v130 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v130);
  v130 = ElementType;
  v131 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v129 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v128 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v127 = v15;
    v133[0] = mlir::AffineMapAttr::getValue(&v129);
    Value = mlir::AffineMapAttr::getValue(&v128);
    v131 = mlir::AffineMapAttr::getValue(&v127);
  }

  if (mlir::Type::isF32(v133) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v131))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      v115 = 0;
      v116 = 0;
      v117 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v118, &v115);
      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      v18 = v118;
      if (v118)
      {
        v119 = v118;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v124 = 0;
    v125 = 0;
    v126 = 0;
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
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v38 = a4[1] - *a4;
      if (!v38)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v124, &v121);
        if (v121)
        {
          v122 = v121;
          operator delete(v121);
        }

        v18 = v124;
        if (v124)
        {
          v125 = v124;
          goto LABEL_173;
        }

        return;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v133) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v131))
  {
    if (mlir::Type::isF32(v133) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v131))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v100 = 0;
        v101 = 0;
        v102 = 0;
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
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v100, &v97);
            if (v97)
            {
              v98 = v97;
              operator delete(v97);
            }

            v18 = v100;
            if (v100)
            {
              v101 = v100;
              goto LABEL_173;
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
        v94 = 0;
        v95 = 0;
        v96 = 0;
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
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v94, &v91);
            if (v91)
            {
              v92 = v91;
              operator delete(v91);
            }

            v18 = v94;
            if (v94)
            {
              v95 = v94;
              goto LABEL_173;
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

    else if (mlir::Type::isF32(v133) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v131))
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
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
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v88, &v85);
          if (v85)
          {
            v86 = v85;
            operator delete(v85);
          }

          v18 = v88;
          if (v88)
          {
            v89 = v88;
            goto LABEL_173;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v133) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v131))
    {
      v82 = 0;
      v83 = 0;
      v84 = 0;
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
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v82, &v79);
          if (v79)
          {
            v80 = v79;
            operator delete(v79);
          }

          v18 = v82;
          if (v82)
          {
            v83 = v82;
            goto LABEL_173;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v133))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
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
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v34 = a4[1] - *a4;
          if (!v34)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v76, &v73);
            if (v73)
            {
              v74 = v73;
              operator delete(v73);
            }

            v18 = v76;
            if (v76)
            {
              v77 = v76;
              goto LABEL_173;
            }

            return;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
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
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v28 = a4[1] - *a4;
          if (!v28)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)4>(a1, a2, &v70, &v67);
            if (v67)
            {
              v68 = v67;
              operator delete(v67);
            }

            v18 = v70;
            if (v70)
            {
              v71 = v70;
              goto LABEL_173;
            }

            return;
          }

          if ((v28 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v133))
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
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
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)4>(a1, a2, &v64, &v61);
          if (v61)
          {
            v62 = v61;
            operator delete(v61);
          }

          v18 = v64;
          if (v64)
          {
            v65 = v64;
            goto LABEL_173;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v133, 64))
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
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
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)4>(a1, a2, &v58, &v55);
          if (v55)
          {
            v56 = v55;
            operator delete(v55);
          }

          v18 = v58;
          if (v58)
          {
            v59 = v58;
            goto LABEL_173;
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
      if (!mlir::Type::isInteger(v133, 32))
      {
        if (mlir::Type::isInteger(v133, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v48, a3);
          std::vector<long long>::vector[abi:nn200100](v47, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)4>(a1, a2, v48, v47, v43, v44);
          if (v47[0])
          {
            v47[1] = v47[0];
            operator delete(v47[0]);
          }

          v18 = v48[0];
          if (v48[0])
          {
            v48[1] = v48[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v133, 8) && !mlir::Type::isInteger(v133, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v130);
          }

          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)4>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v52 = 0;
      v53 = 0;
      v54 = 0;
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
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)4>(a1, a2, &v52, &v49);
          if (v49)
          {
            v50 = v49;
            operator delete(v49);
          }

          v18 = v52;
          if (v52)
          {
            v53 = v52;
            goto LABEL_173;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v113 = 0;
    v112 = 0;
    v114 = 0;
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
      v110 = 0;
      v109 = 0;
      v111 = 0;
      v40 = a4[1] - *a4;
      if (!v40)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v112, &v109);
        if (v109)
        {
          v110 = v109;
          operator delete(v109);
        }

        v18 = v112;
        if (v112)
        {
          v113 = v112;
          goto LABEL_173;
        }

        return;
      }

      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
  }

  v107 = 0;
  v106 = 0;
  v108 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  v104 = 0;
  __p = 0;
  v105 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v106, &__p);
  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }

  v18 = v106;
  if (v106)
  {
    v107 = v106;
    goto LABEL_173;
  }
}