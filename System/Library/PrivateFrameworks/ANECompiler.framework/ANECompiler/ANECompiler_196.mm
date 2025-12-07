void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)6>::~ConvertResize(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)6>::~ConvertResize(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_110;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
LABEL_109:
          memset_pattern16(&v168, v73, 0x10uLL);
          goto LABEL_111;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_110:
          __p[0] = &v168;
          v168 = 0uLL;
LABEL_111:
          __p[1] = 0x600000002;
          llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
          if (__p[0] != &v168)
          {
            free(__p[0]);
          }

          __p[0] = 2;
          v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
          if (v114)
          {
            v115 = v114;
            v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
            v114 = v115;
          }

          else
          {
            v116 = 0;
          }

          v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
          v117 = v183;
          v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
          v122 = llvm::APFloatBase::IEEEsingle(v121);
          llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v189);
          llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
          llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v158);
          v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
          v158 = v126;
          v127 = *(&v189 + 1);
          v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
          if (v128 == v127)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
          }

          if (v128 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v146 == 1)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v22;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v22;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
            if (v130)
            {
              v131 = v130;
              v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
              v130 = v131;
            }

            else
            {
              v132 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          mlir::ShapedType::getShape(v154);
          if (v133 <= 3)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v149;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v149;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
            if (v135)
            {
              v136 = v135;
              v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
              v135 = v136;
            }

            else
            {
              v137 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
            *&v189 = v126 - 16;
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          if (v174 != v176)
          {
            free(v174);
          }

          if (v177 != v179)
          {
            free(v177);
          }

          if (v180 != v182)
          {
            free(v180);
          }

          if (v183 != v185)
          {
            free(v183);
          }

          if (v186 != v187)
          {
            free(v186);
          }

          *&v160 = v126 - 16;
          mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
          mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
      goto LABEL_109;
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)7>::~ConvertResize(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)7>::~ConvertResize(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_110;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
LABEL_109:
          memset_pattern16(&v168, v73, 0x10uLL);
          goto LABEL_111;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_110:
          __p[0] = &v168;
          v168 = 0uLL;
LABEL_111:
          __p[1] = 0x600000002;
          llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
          if (__p[0] != &v168)
          {
            free(__p[0]);
          }

          __p[0] = 2;
          v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
          if (v114)
          {
            v115 = v114;
            v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
            v114 = v115;
          }

          else
          {
            v116 = 0;
          }

          v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
          v117 = v183;
          v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
          v122 = llvm::APFloatBase::IEEEsingle(v121);
          llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v189);
          llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
          llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v158);
          v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
          v158 = v126;
          v127 = *(&v189 + 1);
          v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
          if (v128 == v127)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
          }

          if (v128 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v146 == 1)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v22;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v22;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
            if (v130)
            {
              v131 = v130;
              v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
              v130 = v131;
            }

            else
            {
              v132 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          mlir::ShapedType::getShape(v154);
          if (v133 <= 3)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v149;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v149;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
            if (v135)
            {
              v136 = v135;
              v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
              v135 = v136;
            }

            else
            {
              v137 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
            *&v189 = v126 - 16;
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          if (v174 != v176)
          {
            free(v174);
          }

          if (v177 != v179)
          {
            free(v177);
          }

          if (v180 != v182)
          {
            free(v180);
          }

          if (v183 != v185)
          {
            free(v183);
          }

          if (v186 != v187)
          {
            free(v186);
          }

          *&v160 = v126 - 16;
          mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
          mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
      goto LABEL_109;
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}

void mlir::anonymous namespace::ConvertInstanceNorm::~ConvertInstanceNorm(mlir::_anonymous_namespace_::ConvertInstanceNorm *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::InstanceNormOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::InstanceNormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::InstanceNormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v33 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v32 = v18;
        v33 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v32) || !mlir::ElementsAttr::getShapedType(&v32))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v32);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v29 = v23;
  v24 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertInstanceNorm::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v7 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v39[0] = v7;
  v39[1] = v8;
  v42 = a3[6];
  v43 = 1;
  v42 = mlir::ValueRange::offset_base(&v42, 1);
  v43 = 0;
  v9 = mlir::ValueRange::dereference_iterator(&v42, 0);
  mlir::ShapedType::getShape(v39);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  v37 = SortedUniquePromotedPositiveAxesAttr;
  v38 = v12;
  if (v12)
  {
    v42 = v44;
    v43 = 0x400000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<int>(SortedUniquePromotedPositiveAxesAttr, v14, &v42, 1);
    if (v43)
    {
      v16 = v42;
      v17 = 4 * v43 - 4;
      do
      {
        v18 = *v16++;
        v19 = v18 == 1;
        v20 = v18 == 1 || v17 == 0;
        v17 -= 4;
      }

      while (!v20);
    }

    else
    {
      v19 = 0;
    }

    v40 = a3[6];
    v21 = (*(mlir::ValueRange::dereference_iterator(&v40, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v21)
    {
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    v36[0] = mlir::getRankPromotionTypeForANE(v21, v22);
    v36[1] = v23;
    v24 = *(a2 + 24);
    F16Type = mlir::Builder::getF16Type((a4 + 8), v23);
    LOBYTE(v40) = 0;
    v41 = 0;
    v34[0] = mlir::ShapedType::cloneWith(v36, &v40, F16Type);
    v34[1] = v26;
    v40 = a3[6];
    *&v40 = mlir::ValueRange::dereference_iterator(&v40, 0);
    v35 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>((a4 + 8), v24, v34, &v40) - 16;
    v27 = *(a2 + 24);
    mlir::mps::detail::InstanceNormOpGenericAdaptorBase::getEpsilon(&v40, a3);
    if (v19)
    {
      v28 = mlir::OpBuilder::create<mlir::anec::LayerNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>((a4 + 8), v27, &v35, &v37, &v40);
    }

    else
    {
      v28 = mlir::OpBuilder::create<mlir::anec::InstanceNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>((a4 + 8), v27, &v35, &v37, &v40);
    }

    v35 = v28 - 16;
    v29 = *(&v40 + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(v28) == v29)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v40 + 8));
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat((&v40 + 8));
    }

    v30 = *(a2 + 24);
    v40 = a3[6];
    v31 = mlir::ValueRange::dereference_iterator(&v40, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v31);
    LOBYTE(v40) = 0;
    v41 = 0;
    *&v40 = mlir::ShapedType::cloneWith(v36, &v40, ElementTypeOrSelf);
    *(&v40 + 1) = v33;
    v35 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>((a4 + 8), v30, &v40, &v35) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v35, 1);
  }

  return 0;
}

float mlir::getIntValues<int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a1;
  v10 = a2;
  if (!mlir::ElementsAttr::isSplat(&v9) || v4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v9, v10);
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), NumElements, 4);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 4 * v7), 4 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  return mlir::copyElementsAttrData<int>(v9, v10, *a3, v4);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::LayerNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::LayerNorm,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::LayerNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(v27, v24, v23);
  }

  mlir::OperationState::OperationState(v27, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v16 = *(a5 + 8);
  v15 = (a5 + 8);
  v18 = llvm::APFloatBase::PPCDoubleDouble(v17);
  if (v18 == v16)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v26, v15);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v26, v15);
  }

  mlir::anec::InstanceNorm::build(a1, v27, v13, v14, v25);
  if (v18 == v26.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v26);
  }

  v19 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::LayerNorm,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v20;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::InstanceNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InstanceNorm,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InstanceNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(v27, v24, v23);
  }

  mlir::OperationState::OperationState(v27, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v16 = *(a5 + 8);
  v15 = (a5 + 8);
  v18 = llvm::APFloatBase::PPCDoubleDouble(v17);
  if (v18 == v16)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v26, v15);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v26, v15);
  }

  mlir::anec::InstanceNorm::build(a1, v27, v13, v14, v25);
  if (v18 == v26.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v26);
  }

  v19 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InstanceNorm,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v20;
}

float mlir::copyElementsAttrData<int>(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v88[5] = *MEMORY[0x1E69E9840];
  v85 = a1;
  v86 = a2;
  Type = mlir::ElementsAttr::getType(&v85);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v84[0] = v7;
  v84[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v84);
  v8 = mlir::ElementsAttr::isSplat(&v85);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v85);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (v8)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_73;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_84;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_91;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_107;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v87, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v87[0], v87[1]);
      v61 = v87[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v88)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<int>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (v8)
      {
        v74 = 0;
      }

      else
      {
        v74 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v74];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v27 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v28 = a3 + 1;
      do
      {
        if (v8)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        if (v8)
        {
          v30 = 0;
        }

        else
        {
          v30 = v27 + 1;
        }

        v31 = *&ElementsAttrRawData[2 * v30];
        *(v28 - 1) = *&ElementsAttrRawData[2 * v29];
        *v28 = v31;
        v28 += 2;
        v27 += 2;
      }

      while (v27 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (v8)
      {
        v75 = 0;
      }

      else
      {
        v75 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v75];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v26 = 0;
      }

      else
      {
        v26 = m;
      }

      a3[m] = *&ElementsAttrRawData[4 * v26];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_73:
    for (n = 0; n != NumElements; ++n)
    {
      if (v8)
      {
        v33 = 0;
      }

      else
      {
        v33 = n;
      }

      a3[n] = *&ElementsAttrRawData[4 * v33];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_84:
    if (NumElements >= 2)
    {
      v36 = 0;
      v34 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v37 = a3 + 1;
      do
      {
        if (v8)
        {
          v38 = 0;
        }

        else
        {
          v38 = v36;
        }

        if (v8)
        {
          v39 = 0;
        }

        else
        {
          v39 = v36 + 1;
        }

        v40 = *&ElementsAttrRawData[8 * v39];
        *(v37 - 1) = *&ElementsAttrRawData[8 * v38];
        *v37 = v40;
        v37 += 2;
        v36 += 2;
      }

      while (v36 != v34);
      goto LABEL_197;
    }

    v34 = 0;
    do
    {
      if (v8)
      {
        v76 = 0;
      }

      else
      {
        v76 = v34;
      }

      a3[v34++] = *&ElementsAttrRawData[8 * v76];
LABEL_197:
      ;
    }

    while (NumElements != v34);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_91:
    if (NumElements >= 2)
    {
      v42 = 0;
      v35 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v43 = a3 + 1;
      do
      {
        if (v8)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (v8)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42 + 1;
        }

        v46 = *&ElementsAttrRawData[8 * v45];
        *(v43 - 1) = *&ElementsAttrRawData[8 * v44];
        *v43 = v46;
        v43 += 2;
        v42 += 2;
      }

      while (v42 != v35);
      goto LABEL_202;
    }

    v35 = 0;
    do
    {
      if (v8)
      {
        v77 = 0;
      }

      else
      {
        v77 = v35;
      }

      a3[v35++] = *&ElementsAttrRawData[8 * v77];
LABEL_202:
      ;
    }

    while (NumElements != v35);
    return *&v12;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_107:
    if (NumElements >= 2)
    {
      v48 = 0;
      v41 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (v8)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (v8)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v41);
      goto LABEL_207;
    }

    v41 = 0;
    do
    {
      if (v8)
      {
        v78 = 0;
      }

      else
      {
        v78 = v41;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v78];
      a3[v41++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v41);
    return *&v12;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (v8)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (v8)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (v8)
      {
        v79 = 0;
      }

      else
      {
        v79 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v79];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (v8)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (v8)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (v8)
      {
        v80 = 0;
      }

      else
      {
        v80 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v80];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3;
    do
    {
      if (v8)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (v8)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v72];
      WORD2(v12) = *&ElementsAttrRawData[2 * v73];
      v12 = COERCE_DOUBLE(vcvt_s32_f32(vshl_n_s32(*&v12, 0x10uLL)));
      *v71++ = v12;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (v8)
    {
      v81 = 0;
    }

    else
    {
      v81 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v81] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<int>(unsigned __int8 *result, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = v7 & ~(-1 << a5);
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (v12)
      {
        v13 = *result;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = &a3[v9 * v11];
        v16 = vmovn_s64(vcgeq_u64(v14, xmmword_1A7598670));
        if (vuzp1_s16(v16, 0).u8[0])
        {
          *v15 = v10 & v13;
        }

        if (vuzp1_s16(v16, 0).i8[2])
        {
          v15[1] = (v13 >> a5) & v10;
        }

        if (vuzp1_s16(0, vmovn_s64(vcgeq_u64(v14, xmmword_1A7598660))).i32[1])
        {
          v15[2] = (v13 >> (2 * a5)) & v10;
          v15[3] = (v13 >> (3 * a5)) & v10;
        }

        if (((v12 + 3) & 0x1C) != 4)
        {
          v17 = vmovn_s64(vcgtq_u64(v14, xmmword_1A75DA400));
          if (vuzp1_s16(v17, 0).u8[0])
          {
            v15[4] = (v13 >> (4 * a5)) & v10;
          }

          if (vuzp1_s16(v17, 0).i8[2])
          {
            v15[5] = (v13 >> (5 * a5)) & v10;
          }

          if (vuzp1_s16(0, vmovn_s64(vcgtq_u64(v14, xmmword_1A75DA6A0))).i32[1])
          {
            v15[6] = (v13 >> (6 * a5)) & v10;
            v15[7] = (v13 >> (7 * a5)) & v10;
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

void mlir::anonymous namespace::ConvertPermute::~ConvertPermute(mlir::_anonymous_namespace_::ConvertPermute *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PermuteOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PermuteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PermuteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v25 = v10;
        v26 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v25) || !mlir::ElementsAttr::getShapedType(&v25))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v25);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v31 = v18;
        v32 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v31) || !mlir::ElementsAttr::getShapedType(&v31))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v31);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v28 = v23;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertPermute::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v23 = *(a3 + 40);
  if ((*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  v20 = 0;
  v21 = 0;
  v6 = mlir::ValueRange::dereference_iterator(&v23, 1);
  v24 = &v20;
  __p = v6;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v24, DefiningOp) & 1) != 0)
  {
    v8 = v23;
    v9 = v20;
    v10 = v21;
    v11 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v22[0] = v11;
    v22[1] = v12;
    __p = v29;
    v28 = 0x600000000;
    mlir::getIntValues<long long>(v9, v10, &__p, 1);
    v24 = v26;
    v25 = 0x400000000;
    v13 = __p;
    v14 = v28;
    mlir::ShapedType::getShape(v22);
    if (mlir::getPositivePromotedAxes(v13, v14, v15, &v24, *(a2 + 24), 1))
    {
      if (v25)
      {
        operator new();
      }

      v16 = Transpose;
      v18 = Transpose >> 8;
      v17 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    if (v24 != v26)
    {
      free(v24);
    }

    if (__p != v29)
    {
      free(__p);
    }

    v24 = (v16 | (v18 << 8));
    LOBYTE(v25) = v17;
    if (v17)
    {
      mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v24, 1);
    }

    operator new();
  }

  operator new();
}

uint64_t mlir::anonymous namespace::createTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v47[0] = a2;
  v47[1] = a3;
  v10 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v39[0] = v10;
  v39[1] = v11;
  v43 = v46;
  v45 = 4;
  if (a5 < 5)
  {
    if (!a5)
    {
      v44 = 0;
      v40 = v42;
      v41 = 0x500000000;
      goto LABEL_43;
    }

    bzero(v46, 8 * a5);
    v12 = v46;
  }

  else
  {
    v44 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, a5, 8);
    v12 = v43;
    bzero(v43, 8 * a5);
  }

  v44 = a5;
  if (!a5)
  {
    goto LABEL_31;
  }

  v13 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v13 < 3)
  {
    v14 = 0;
    v15 = v12;
    do
    {
LABEL_14:
      *v15++ = v14++;
    }

    while (v15 != (v12 + 8 * a5));
    goto LABEL_15;
  }

  v16 = v13 + 1;
  v14 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v15 = &v12->i64[v14];
  v17 = xmmword_1A7598670;
  v18 = v12 + 1;
  v19 = vdupq_n_s64(2uLL);
  v20 = vdupq_n_s64(4uLL);
  v21 = v14;
  do
  {
    v18[-1] = v17;
    *v18 = vaddq_s64(v17, v19);
    v17 = vaddq_s64(v17, v20);
    v18 += 2;
    v21 -= 4;
  }

  while (v21);
  if (v16 != v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a5)
  {
    v22 = 8 * a5;
    do
    {
      v23 = v12->i64[0];
      mlir::ShapedType::getShape(v39);
      if (v23 == 2)
      {
        v25 = 3;
      }

      else
      {
        v25 = v23;
      }

      if (v23)
      {
        v26 = 3;
      }

      else
      {
        v26 = 1;
      }

      if (v24 != 2)
      {
        v26 = v23;
      }

      if (v24 != 3)
      {
        v25 = v26;
      }

      if (v24 < 2)
      {
        v25 = 3;
      }

      v12->i64[0] = v25;
      v12 = (v12 + 8);
      v22 -= 8;
    }

    while (v22);
    v12 = v43;
    v27 = v44;
    goto LABEL_32;
  }

LABEL_31:
  v27 = a5;
LABEL_32:
  v40 = v42;
  v41 = 0x500000000;
  if (a5 && v27)
  {
    v28 = 0;
    v29 = 8 * v27 - 8;
    v30 = 8 * a5 - 8;
    do
    {
      v31 = *a4;
      v32 = v12->i64[0];
      if (*a4 != v12->i64[0])
      {
        if (v28 >= HIDWORD(v41))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v28 + 1, 16);
          v28 = v41;
        }

        v33 = v40 + 16 * v28;
        *v33 = v31;
        v33[1] = v32;
        v28 = v41 + 1;
        LODWORD(v41) = v41 + 1;
      }

      if (!v30)
      {
        break;
      }

      ++a4;
      v12 = (v12 + 8);
      v34 = v29;
      v29 -= 8;
      v30 -= 8;
    }

    while (v34);
  }

LABEL_43:
  v35 = *(a1 + 24);
  v38 = mlir::ValueRange::dereference_iterator(v47, 0);
  v48[0] = v49;
  v48[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value,llvm::SmallVector<std::pair<unsigned long long,unsigned long long>,5u> &>((a6 + 8), v48, v35, &v38, &v40);
  v36 = *v48[0];
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v46)
  {
    free(v43);
  }

  return v36;
}

void mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value,llvm::SmallVector<std::pair<unsigned long long,unsigned long long>,5u> &>(uint64_t **a1, _DWORD *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v27 = a3;
  Context = mlir::Attribute::getContext(&v27);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v30, v29, v28);
  }

  mlir::OperationState::OperationState(v30, a3, v11);
  mlir::anec::Transpose::build(a1, v30, *a4, *a5, *(a5 + 8));
  v14 = mlir::Operation::create(v30, v13);
  v15 = a1[2];
  if (v15)
  {
    v16 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList((v15 + 4), v14);
    ZinIrHalH13g::~ZinIrHalH13g(v14);
    v17 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v17 + 8) = v18;
    *v16 = v18;
    ZinIrHalH13g::~ZinIrHalH13g(v14);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && a2[2])
  {
    mlir::Operation::erase(v14, v19);
    goto LABEL_20;
  }

  v20 = v14[9];
  if (v20)
  {
    v21 = (v14 - 4);
  }

  else
  {
    v21 = 0;
  }

  a2[2] = 0;
  if (v20 <= a2[3])
  {
    if (!v20)
    {
      v25 = 0;
      goto LABEL_17;
    }

    v22 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v20, 8);
    v22 = a2[2];
  }

  v23 = 0;
  v24 = *a2 + 8 * v22;
  do
  {
    *(v24 + 8 * v23) = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v23);
    ++v23;
  }

  while (v20 != v23);
  v25 = a2[2];
LABEL_17:
  a2[2] = v25 + v20;
  if (a1[2])
  {
    v26 = a1[1];
    if (v26)
    {
      (*(*v26 + 16))(v26, v14, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v30);
}

void mlir::anonymous namespace::ConvertGatherND::~ConvertGatherND(mlir::_anonymous_namespace_::ConvertGatherND *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::GatherNDOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::GatherNDOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GatherNDOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v33 = v18;
        v34 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v33) || !mlir::ElementsAttr::getShapedType(&v33))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v33);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v23;
  v32 = *(a3 + 64);
  v24 = *(a3 + 16);
  *__p = *a3;
  v29 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertGatherND::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v127 = *MEMORY[0x1E69E9840];
  v117 = a2;
  v126 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v116[0] = v7;
  v116[1] = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v115[0] = v9;
  v115[1] = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v114[0] = v12;
  v114[1] = v13;
  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v117);
  Shape = mlir::ShapedType::getShape(v115);
  v17 = *(Shape + 8 * v16 - 8);
  mlir::ShapedType::getShape(v116);
  if (v18 > 5 || (mlir::ShapedType::getShape(v115), v19 > 5) || (mlir::ShapedType::getShape(v114), v20 >= 6))
  {
    operator new();
  }

  v113 = mlir::ValueRange::dereference_iterator(&v126, 1);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v113 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) >= 9 && !mlir::Type::isF16(&ElementTypeOrSelf))
  {
    v22 = (*(v113 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v23 = 0;
    }

    *&v122 = v22;
    *(&v122 + 1) = v23;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
    LOBYTE(v124) = 0;
    v125[0] = 0;
    mlir::ShapedType::cloneWith(&v122, &v124, F16Type);
    v25 = *(v117 + 24);
    *&v122 = mlir::Builder::getF16Type(a4 + 1, v26);
    *&v124 = v125;
    *(&v124 + 1) = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::mps::CastOp,mlir::Value &,mlir::FloatType>(a4 + 1, &v124, v25, &v113, &v122);
    v27 = *v124;
    if (v124 != v125)
    {
      free(v124);
    }

    v113 = v27;
  }

  v28 = Count;
  *&v124 = v125;
  *(&v124 + 1) = 0x500000000;
  v29 = mlir::ShapedType::getShape(v116);
  v30 = mlir::ShapedType::getShape(v116);
  v31 = 0;
  v33 = (v30 + 8 * v32);
  DWORD2(v124) = 0;
  v34 = (v33 - v29) >> 3;
  if (v34 > HIDWORD(v124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v125, v34, 8);
    v31 = DWORD2(v124);
  }

  if (v33 != v29)
  {
    memcpy((v124 + 8 * v31), v29, v33 - v29);
    v31 = DWORD2(v124);
  }

  DWORD2(v124) = v31 + ((v33 - v29) >> 3);
  mlir::ShapedType::getShape(v115);
  v36 = v35 + ~(v17 + v28);
  if (v36 >= 1)
  {
    v37 = v35 + ~(v17 + v28);
    do
    {
      *&v122 = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124 + 8 * v28, &v122);
      --v37;
    }

    while (v37);
  }

  v38 = DWORD2(v124);
  if (DWORD2(v124) >= 5)
  {
    v39 = DWORD2(v124);
    if (DWORD2(v124) != 5)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *&v122 = 1;
    llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
    if (v38 != 4)
    {
      *&v122 = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
      if (v38 != 3)
      {
        *&v122 = 1;
        llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
        if (v38 != 2)
        {
          *&v122 = 1;
          llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
          if (v38 != 1)
          {
            *&v122 = 1;
            llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
          }
        }
      }
    }

    v39 = DWORD2(v124);
    if (DWORD2(v124) != 5)
    {
LABEL_40:
      std::to_string(&v120, v39);
      v40 = std::string::insert(&v120, 0, "Expected data tensor to have 5 dimensions after padding, but got ");
      v41 = v40->__r_.__value_.__r.__words[2];
      *&v121.__r_.__value_.__l.__data_ = *&v40->__r_.__value_.__l.__data_;
      v121.__r_.__value_.__r.__words[2] = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v121, " dimensions instead.");
      v43 = v42->__r_.__value_.__r.__words[2];
      v122 = *&v42->__r_.__value_.__l.__data_;
      v123[0] = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      result = mlir::logMatchFailure(&v122, *(v117 + 24), a4);
      if (SHIBYTE(v123[0]) < 0)
      {
        v69 = result;
        operator delete(v122);
        result = v69;
        if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_107;
          }

LABEL_71:
          v71 = result;
          operator delete(v120.__r_.__value_.__l.__data_);
LABEL_106:
          result = v71;
          goto LABEL_107;
        }
      }

      else if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      v70 = result;
      operator delete(v121.__r_.__value_.__l.__data_);
      result = v70;
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_71;
    }
  }

  v45 = 5 - v38;
  *&v122 = v123;
  v46 = v124;
  v47 = (v124 + 8 * v28 + 8 * v45);
  *(&v122 + 1) = 0x500000000;
  v48 = 8 * v28 + 8 * v45;
  if ((v48 >> 3) < 6)
  {
    v49 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v123, v48 >> 3, 8);
    v49 = DWORD2(v122);
  }

  if (v46 != v47)
  {
    memcpy((v122 + 8 * v49), v46, 8 * v28 + 8 * v45);
    v49 = DWORD2(v122);
  }

  v50 = v49 + (v48 >> 3);
  DWORD2(v122) = v50;
  v51 = -v36;
  if (v36 < 0)
  {
    if (v51 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = -v36;
    }

    do
    {
      if (v50 >= HIDWORD(v122))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v123, v50 + 1, 8);
        v50 = DWORD2(v122);
      }

      *(v122 + 8 * v50) = 1;
      v50 = ++DWORD2(v122);
      --v72;
    }

    while (v72);
  }

  v52 = v122 + 8 * v50;
  v53 = (mlir::ShapedType::getShape(v115) + 8 * v28);
  v54 = mlir::ShapedType::getShape(v115);
  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v122, v52, v53, (v54 + 8 * v55 - 8));
  v56 = (v36 & ~(v36 >> 63)) + v28 + v45;
  v57 = 5 - (v17 + v56);
  v58 = DWORD2(v122);
  if (v57 >= 1)
  {
    for (i = 0; i < v57; ++i)
    {
      if (v58 >= HIDWORD(v122))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v123, v58 + 1, 8);
        v58 = DWORD2(v122);
      }

      *(v122 + 8 * v58) = 1;
      v58 = ++DWORD2(v122);
    }
  }

  if (v58 == 5)
  {
    v121.__r_.__value_.__r.__words[0] = &v121.__r_.__value_.__r.__words[2];
    v121.__r_.__value_.__l.__size_ = 0x500000000;
    if (v17)
    {
      LODWORD(v60) = 0;
      v61 = v17;
      do
      {
        if (v60 >= HIDWORD(v121.__r_.__value_.__r.__words[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, &v121.__r_.__value_.__r.__words[2], v60 + 1, 8);
          LODWORD(v60) = v121.__r_.__value_.__r.__words[1];
        }

        *(v121.__r_.__value_.__r.__words[0] + 8 * v60) = v56;
        v60 = ++LODWORD(v121.__r_.__value_.__r.__words[1]);
        ++v56;
        --v61;
      }

      while (v61);
      v73 = v121.__r_.__value_.__r.__words[0];
    }

    else
    {
      v60 = 0;
      v73 = &v121.__r_.__value_.__s.__data_[16];
    }

    v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
    v120.__r_.__value_.__l.__size_ = 0x500000000;
    if (*&v73[8 * v60 - 8] > 2uLL)
    {
      v74 = (*(v113 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v74)
      {
        v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8);
      }

      else
      {
        v75 = 0;
      }

      v118.__r_.__value_.__r.__words[0] = v74;
      v118.__r_.__value_.__l.__size_ = v75;
      mlir::ShapedType::getShape(&v118);
      v77 = v120.__r_.__value_.__r.__words[1];
      if (v76)
      {
        v78 = 0;
        v79 = v51 & ~(v51 >> 63);
        v80 = *(v121.__r_.__value_.__r.__words[0] + 8 * LODWORD(v121.__r_.__value_.__r.__words[1]) - 8);
        v81 = v79 + v76 - v80 + 1;
        v82 = v76 - 1;
        v83 = ~v79 + v80;
        do
        {
          if (v83 == v76)
          {
            v84 = v82;
          }

          else
          {
            v84 = (__PAIR128__(v78, v81) - v78) >> 64;
          }

          if (v77 >= HIDWORD(v120.__r_.__value_.__r.__words[1]))
          {
            v106 = v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, &v120.__r_.__value_.__r.__words[2], v77 + 1, 8);
            v76 = v106;
            v77 = v120.__r_.__value_.__r.__words[1];
          }

          *(v120.__r_.__value_.__r.__words[0] + 8 * v77) = v84;
          v77 = ++LODWORD(v120.__r_.__value_.__r.__words[1]);
          ++v78;
          --v76;
        }

        while (v76);
      }

      v85 = *(v117 + 24);
      v113 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v85, &v113, &v118) - 16;
      v60 = LODWORD(v121.__r_.__value_.__r.__words[1]);
    }

    v118.__r_.__value_.__r.__words[0] = v60;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v87 = mlir::RankedTensorType::get(&v118, 1, IntegerType, 0);
    if (v87)
    {
      v88 = v87;
      v89 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v87 + 8);
      v87 = v88;
    }

    else
    {
      v89 = 0;
    }

    v111 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v89, v121.__r_.__value_.__l.__data_, 8 * LODWORD(v121.__r_.__value_.__r.__words[1]));
    v90 = v124;
    v91 = DWORD2(v124);
    isSplat = mlir::ElementsAttr::isSplat(v116);
    v110 = mlir::MemRefType::get(v90, v91, isSplat, 0, 0, 0);
    *&v118.__r_.__value_.__l.__data_ = *v122;
    v118.__r_.__value_.__r.__words[2] = *(v122 + 16) * v17;
    v119 = *(v122 + 24);
    v93 = mlir::getElementTypeOrSelf(v113);
    v109 = mlir::MemRefType::get(&v118, 5, v93, 0, 0, 0);
    v94 = *(v117 + 24);
    v118.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v126, 0);
    v108 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), v94, &v110, &v118) - 16;
    v113 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v117 + 24), &v109, &v113) - 16;
    v107 = mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(v117 + 24), &v108, &v113, &v111);
    v95 = mlir::ShapedType::getShape(v114);
    v97 = v96;
    v98 = mlir::ElementsAttr::isSplat(v114);
    v99 = mlir::MemRefType::get(v95, v97, v98, 0, 0, 0);
    v100 = v117;
    if (v99)
    {
      v101 = v99;
      v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v99 + 8);
      v99 = v101;
    }

    else
    {
      v102 = 0;
    }

    v118.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v99, v102);
    v118.__r_.__value_.__l.__size_ = v103;
    v104 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType,mlir::anec::GatherND &>((a4 + 1), *(v100 + 24), &v118, &v107);
    (*(*a4 + 1))(a4, v100, v104);
    if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
    {
      free(v120.__r_.__value_.__l.__data_);
    }

    if (v121.__r_.__value_.__l.__data_ != &v121.__r_.__value_.__r.__words[2])
    {
      free(v121.__r_.__value_.__l.__data_);
    }

    result = 1;
  }

  else
  {
    std::to_string(&v118, v58);
    v62 = std::string::insert(&v118, 0, "Expected index tensor to have 5 dimensions after padding, but got ");
    v63 = v62->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = *&v62->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(&v120, " dimensions instead.");
    v65 = v64->__r_.__value_.__r.__words[2];
    *&v121.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
    v121.__r_.__value_.__r.__words[2] = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    result = mlir::logMatchFailure(&v121, *(v117 + 24), a4);
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      v66 = result;
      operator delete(v121.__r_.__value_.__l.__data_);
      result = v66;
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      v67 = result;
      operator delete(v120.__r_.__value_.__l.__data_);
      result = v67;
    }

    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      v68 = result;
      operator delete(v118.__r_.__value_.__l.__data_);
      result = v68;
    }
  }

  if (v122 != v123)
  {
    v71 = result;
    free(v122);
    goto LABEL_106;
  }

LABEL_107:
  if (v124 != v125)
  {
    v105 = result;
    free(v124);
    return v105;
  }

  return result;
}

uint64_t mlir::anonymous namespace::getANECTransposeAttrFromPermutes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x500000000;
  if (a3)
  {
    v5 = 0;
    v6 = 8 * a3;
    do
    {
      if (v5 != *(a2 + 8 * v5))
      {
        v14 = *(a2 + 8 * v5);
        v15 = v5;
        llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v16, v16 + 8 * v17, &v14, &v16);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
    v7 = v17 >> 1;
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = 2;
  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 64, 0);
  v9 = mlir::RankedTensorType::get(&v14, 2, IntegerType, 0);
  if (v9)
  {
    v10 = v9;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, v16, 8 * v17);
  if (v16 != v18)
  {
    v13 = result;
    free(v16);
    return v13;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GatherND,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::GatherND::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GatherND,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void mlir::OpBuilder::createOrFold<mlir::mps::CastOp,mlir::Value &,mlir::FloatType>(mlir::UnknownLoc **a1, _DWORD *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v27 = a3;
  Context = mlir::Attribute::getContext(&v27);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(v30, v29, v28);
  }

  mlir::OperationState::OperationState(v30, a3, v11);
  mlir::mps::CastOp::build(a1, v30, *a4, *a5);
  v14 = mlir::Operation::create(v30, v13);
  v15 = a1[2];
  if (v15)
  {
    v16 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    ZinIrHalH13g::~ZinIrHalH13g(v14);
    v17 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v17 + 8) = v18;
    *v16 = v18;
    ZinIrHalH13g::~ZinIrHalH13g(v14);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && a2[2])
  {
    mlir::Operation::erase(v14, v19);
    goto LABEL_20;
  }

  v20 = v14[9];
  if (v20)
  {
    v21 = (v14 - 4);
  }

  else
  {
    v21 = 0;
  }

  a2[2] = 0;
  if (v20 <= a2[3])
  {
    if (!v20)
    {
      v25 = 0;
      goto LABEL_17;
    }

    v22 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v20, 8);
    v22 = a2[2];
  }

  v23 = 0;
  v24 = *a2 + 8 * v22;
  do
  {
    *(v24 + 8 * v23) = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v23);
    ++v23;
  }

  while (v20 != v23);
  v25 = a2[2];
LABEL_17:
  a2[2] = v25 + v20;
  if (a1[2])
  {
    v26 = a1[1];
    if (v26)
    {
      (*(*v26 + 16))(v26, v14, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v30);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType,mlir::anec::GatherND &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
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

void mlir::anonymous namespace::ConvertGather::~ConvertGather(mlir::_anonymous_namespace_::ConvertGather *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::GatherOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::GatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v33 = v18;
        v34 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v33) || !mlir::ElementsAttr::getShapedType(&v33))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v33);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v23;
  v32 = *(a3 + 64);
  v24 = *(a3 + 16);
  *__p = *a3;
  v29 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertGather::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, void **a3, mlir::Float16Type **a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 72);
  v8 = (*(*(v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v7 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  v83[0] = v8;
  v83[1] = v9;
  v10 = (*(*(v7 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v82[0] = v10;
  v82[1] = v11;
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v81[0] = v13;
  v81[1] = v14;
  BatchDims = mlir::mps::detail::GatherOpGenericAdaptorBase::getBatchDims(a3);
  *&__p = a3[7];
  *(&__p + 1) = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v80 = mlir::ValueRange::dereference_iterator(&__p, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v80);
  if (mlir::mps::getElementBitWidth(ElementTypeOrSelf) >= 9 && !mlir::Type::isF16(&ElementTypeOrSelf))
  {
    v17 = (*(v80 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v17)
    {
      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    }

    else
    {
      v18 = 0;
    }

    v90 = v17;
    v91 = v18;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v16);
    LOBYTE(__p) = 0;
    v86[0] = 0;
    mlir::ShapedType::cloneWith(&v90, &__p, F16Type);
    v20 = *(a2 + 24);
    v90 = mlir::Builder::getF16Type(a4 + 1, v21);
    *&__p = v86;
    *(&__p + 1) = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::mps::CastOp,mlir::Value &,mlir::FloatType>(a4 + 1, &__p, v20, &v80, &v90);
    v22 = *__p;
    if (__p != v86)
    {
      free(__p);
    }

    v80 = v22;
  }

  v78 = 0;
  *&__p = a3[7];
  *(&__p + 1) = 2;
  __p = mlir::ValueRange::offset_base(&__p, 2);
  v23 = mlir::ValueRange::dereference_iterator(&__p, 0);
  v90 = &v78;
  *&__p = v23;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v90, DefiningOp) & 1) == 0)
  {
    operator new();
  }

  v96 = &v98;
  v97 = 0x100000000;
  v25 = v78;
  if (v78)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v78 + 8);
  }

  else
  {
    v26 = 0;
  }

  mlir::getIntValues<long long>(v25, v26, &v96, 1);
  v93 = &v95;
  v94 = 0x100000000;
  v27 = v96;
  v28 = v97;
  mlir::ShapedType::getShape(v83);
  if (!mlir::getPositiveAxes(v27, v28, v29, &v93, 0, 0, 0))
  {
    operator new();
  }

  if (v94 != 1)
  {
    operator new();
  }

  v73 = *v93;
  mlir::ShapedType::getShape(v83);
  v72 = v30;
  Shape = mlir::ShapedType::getShape(v83);
  v33 = v32;
  v90 = v92;
  v91 = 0x500000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 6)
  {
    v35 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v92, v34, 8);
    v35 = v91;
  }

  if (v33)
  {
    memcpy(&v90[v35], Shape, 8 * v33);
    v35 = v91;
  }

  LODWORD(v91) = v35 + v33;
  mlir::ShapedType::getShape(v82);
  if (v36)
  {
    mlir::ShapedType::getShape(v82);
  }

  else
  {
    v37 = 1;
  }

  llvm::SmallVectorImpl<long long>::insert(&v90, &v90[*v93], v37 + ~BatchDims, 1uLL);
  v38 = (5 - v91) & ~((5 - v91) >> 63);
  if (v91 <= 4)
  {
    llvm::SmallVectorImpl<long long>::insert(&v90, v90, (5 - v91) & ~((5 - v91) >> 63), 1uLL);
  }

  v87 = v89;
  v39 = v90;
  v40 = &v90[BatchDims + v38];
  v88 = 0x500000000;
  v41 = 8 * BatchDims + 8 * v38;
  if ((v41 >> 3) < 6)
  {
    v42 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v41 >> 3, 8);
    v42 = v88;
  }

  if (v39 != v40)
  {
    memcpy(v87 + 8 * v42, v39, v41);
    v42 = v88;
  }

  v43 = v42 + (v41 >> 3);
  LODWORD(v88) = v43;
  if (*v93 - BatchDims >= 1)
  {
    llvm::SmallVectorImpl<long long>::insert(&v87, v87 + 8 * v43, *v93 - BatchDims, 1uLL);
  }

  v44 = mlir::ShapedType::getShape(v82);
  v46 = v45;
  *&__p = v86;
  *(&__p + 1) = 0x600000000;
  v47 = (8 * v45) >> 3;
  if (v47 < 7)
  {
    v48 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v86, v47, 8);
    v48 = DWORD2(__p);
  }

  if (v46)
  {
    memcpy((__p + 8 * v48), v44, 8 * v46);
    v48 = DWORD2(__p);
  }

  v49 = v48 + v46;
  DWORD2(__p) = v49;
  if (!v49)
  {
    if (HIDWORD(__p))
    {
      v50 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v86, 1uLL, 8);
      v50 = DWORD2(__p);
    }

    *(__p + 8 * v50) = 1;
    v49 = ++DWORD2(__p);
  }

  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v87, v87 + 8 * v88, (__p + 8 * BatchDims), (__p + 8 * v49));
  if (v88 <= 4)
  {
    llvm::SmallVectorImpl<long long>::insert(&v87, v87 + 8 * v88, 5 - v88, 1uLL);
  }

  RankPromotionTypeForANE = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v52 = mlir::RankedTensorType::get(&RankPromotionTypeForANE, 1, IntegerType, 0);
  if (v52)
  {
    v53 = v52;
    v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
    v52 = v53;
  }

  else
  {
    v54 = 0;
  }

  v84 = ((5 - v72) & ~((5 - v72) >> 63)) + v73;
  v77 = mlir::DenseElementsAttr::getFromRawBuffer(v52, v54, &v84, 8);
  v55 = v90;
  v56 = v91;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  v84 = mlir::MemRefType::get(v55, v56, isSplat, 0, 0, 0);
  v58 = v87;
  v59 = v88;
  v60 = mlir::getElementTypeOrSelf(v80);
  v76 = mlir::MemRefType::get(v58, v59, v60, 0, 0, 0);
  v61 = *(a2 + 24);
  RankPromotionTypeForANE = a3[7];
  v100 = 0;
  RankPromotionTypeForANE = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, 0);
  v75 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), v61, &v84, &RankPromotionTypeForANE) - 16;
  v80 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &v76, &v80) - 16;
  v74 = mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v75, &v80, &v77);
  v62 = mlir::ShapedType::getShape(v81);
  v64 = v63;
  v65 = mlir::ElementsAttr::isSplat(v81);
  v66 = mlir::MemRefType::get(v62, v64, v65, 0, 0, 0);
  if (v66)
  {
    v67 = v66;
    v68 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v66 + 8);
    v66 = v67;
  }

  else
  {
    v68 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v66, v68);
  v100 = v69;
  v70 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType,mlir::anec::GatherND &>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v74);
  (*(*a4 + 1))(a4, a2, v70);
  if (__p != v86)
  {
    free(__p);
  }

  if (v87 != v89)
  {
    free(v87);
  }

  if (v90 != v92)
  {
    free(v90);
  }

  if (v93 != &v95)
  {
    free(v93);
  }

  if (v96 != &v98)
  {
    free(v96);
  }

  return 1;
}

void mlir::anonymous namespace::ConvertSampleGrid::~ConvertSampleGrid(mlir::_anonymous_namespace_::ConvertSampleGrid *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SampleGridOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SampleGridOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SampleGridOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v28 = v10;
        v29 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v28) || !mlir::ElementsAttr::getShapedType(&v28))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v28);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

LABEL_3:
      i = v38 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v37 = v18;
        v38 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v37) || !mlir::ElementsAttr::getShapedType(&v37))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v37);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 96);
  v35 = *(a3 + 80);
  v36 = v23;
  v24 = *(a3 + 64);
  v25 = *(a3 + 16);
  *__p = *a3;
  v31 = v25;
  v26 = *(a3 + 32);
  v33 = *(a3 + 48);
  v34 = v24;
  v32 = v26;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertSampleGrid::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v84 = a2;
  v7 = *(a2 + 24);
  v8 = *(a2 + 72);
  v9 = (*(*(v8 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v8 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
  }

  v83[0] = v9;
  v83[1] = v10;
  v11 = (*(*(v8 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v82[0] = v11;
  v82[1] = v12;
  if (*(a2 + 36))
  {
    v13 = a2 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v81[0] = v14;
  v81[1] = v15;
  v108 = *(a3 + 6);
  v16 = (*(mlir::ValueRange::dereference_iterator(&v108, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  mlir::getRankPromotionTypeForANE(v16, v17);
  mlir::ShapedType::getShape(v83);
  if (v18 > 5 || (mlir::ShapedType::getShape(v81), v19 >= 6))
  {
    operator new();
  }

  mlir::ShapedType::getShape(v82);
  if (v21 != 4)
  {
    operator new();
  }

  v22 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v23 = (v22[1] & 0xFFFFFFFFFFFFFFF8);
  if (v23)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  v80[0] = mlir::getRankPromotionTypeForANE(v23, v24);
  v80[1] = v25;
  if (*(mlir::ShapedType::getShape(v80) + 24) != 1 && *(mlir::ShapedType::getShape(v80) + 24) != 2)
  {
    operator new();
  }

  __p[0] = mlir::ElementsAttr::isSplat(v82);
  if (!mlir::Type::isInteger(__p, 8))
  {
    __src[0] = mlir::ElementsAttr::isSplat(v82);
    if (!mlir::Type::isF16(__src))
    {
      operator new();
    }
  }

  v105 = v107;
  v107[0] = xmmword_1A75EA250;
  v107[1] = unk_1A75EA260;
  v106 = 0x600000004;
  v26 = v84;
  __src[0] = v22;
  mlir::ValueRange::ValueRange(__p, __src, 1uLL);
  v28 = (*(Transpose + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v28)
  {
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  mlir::getRankPromotionTypeForANE(v28, v29);
  v30 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v31 = *(a3 + 5);
  v113[3] = *(a3 + 4);
  v113[4] = v31;
  v113[5] = *(a3 + 6);
  v32 = *(a3 + 1);
  *__p = *a3;
  v113[0] = v32;
  v33 = *(a3 + 3);
  v113[1] = *(a3 + 2);
  v113[2] = v33;
  LODWORD(v106) = 0;
  Layout = mlir::mps::detail::SampleGridOpGenericAdaptorBase::getLayout(__p);
  if (Layout <= 3)
  {
    if (!Layout)
    {
      goto LABEL_44;
    }

    if (Layout != 1)
    {
      goto LABEL_96;
    }

    v35 = v105 + 8 * v106;
    *__src = xmmword_1A75EA250;
    v103 = unk_1A75EA260;
    v36 = v104;
LABEL_43:
    llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v105, v35, __src, v36);
    goto LABEL_44;
  }

  if (Layout == 4)
  {
    goto LABEL_44;
  }

  if (Layout == 5)
  {
    v35 = v105 + 8 * v106;
    *__src = xmmword_1A75EA270;
    *&v103 = 1;
    v36 = &v103 + 8;
    goto LABEL_43;
  }

  if (Layout != 6)
  {
LABEL_96:
    operator new();
  }

LABEL_44:
  v37 = v84;
  __src[0] = v30;
  mlir::ValueRange::ValueRange(__p, __src, 1uLL);
  __src[0] = &v103;
  __src[1] = 0x400000000;
  v104[6] = 4;
  v99 = v101;
  memset_pattern16(v101, &unk_1A75989B0, 0x10uLL);
  v100 = 0x200000002;
  if (mlir::mps::CropResizeOp::getNormalizeCoordinates(&v84) && mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v84))
  {
    v38 = 1;
  }

  else if (mlir::mps::CropResizeOp::getNormalizeCoordinates(&v84))
  {
    v38 = 2;
  }

  else
  {
    v38 = 0;
  }

  __p[0] = 2;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v40 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
  if (v40)
  {
    v41 = v40;
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8);
    v40 = v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = mlir::DenseElementsAttr::getFromRawBuffer(v40, v42, v99, 8 * v100);
  v96 = v98;
  v98[0] = v38;
  v98[1] = v38;
  v97 = 0x200000002;
  __p[0] = 2;
  v44 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v45 = mlir::RankedTensorType::get(__p, 1, v44, 0);
  if (v45)
  {
    v46 = v45;
    v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
    v45 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = mlir::DenseElementsAttr::getFromRawBuffer(v45, v47, v96, 8 * v97);
  mlir::NamedAttrList::set(__src, "normalized_range", 0x10uLL, v43);
  mlir::NamedAttrList::set(__src, "coordinate_mode", 0xFuLL, v48);
  Training = mlir::mps::LSTMOp::getTraining(&v84);
  v93 = v95;
  v95[0] = !Training;
  v95[1] = v95[0];
  v94 = 0x200000002;
  __p[0] = 2;
  v50 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v51 = mlir::RankedTensorType::get(__p, 1, v50, 0);
  if (v51)
  {
    v52 = v51;
    v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    v51 = v52;
  }

  else
  {
    v53 = 0;
  }

  v54 = mlir::DenseElementsAttr::getFromRawBuffer(v51, v53, v93, 8 * v94);
  mlir::NamedAttrList::set(__src, "coordinate_type", 0xFuLL, v54);
  v90 = &v92;
  v91 = 0x100000001;
  v92 = 0;
  __p[0] = 1;
  v55 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v56 = mlir::RankedTensorType::get(__p, 1, v55, 0);
  if (v56)
  {
    v57 = v56;
    v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
    v56 = v57;
  }

  else
  {
    v58 = 0;
  }

  v59 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v58, v90, 8 * v91);
  mlir::NamedAttrList::set(__src, "warp_coordinate_mode", 0x14uLL, v59);
  SamplingMode = mlir::mps::detail::SampleGridOpGenericAdaptorBase::getSamplingMode(a3);
  if (SamplingMode == 1)
  {
    v61 = 0;
  }

  else
  {
    if (SamplingMode)
    {
    }

    v61 = 1;
  }

  __p[0] = v113;
  *&v113[0] = v61;
  *(&v113[0] + 1) = v61;
  __p[1] = 0x200000002;
  v109 = 2;
  v62 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v63 = mlir::RankedTensorType::get(&v109, 1, v62, 0);
  if (v63)
  {
    v64 = v63;
    v65 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
    v63 = v64;
  }

  else
  {
    v65 = 0;
  }

  v66 = mlir::DenseElementsAttr::getFromRawBuffer(v63, v65, __p[0], 8 * LODWORD(__p[1]));
  mlir::NamedAttrList::set(__src, "sampling_method", 0xFuLL, v66);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v84);
  if (PaddingStyle > 3)
  {
    v68 = 5;
  }

  else
  {
    v68 = qword_1A75EA408[PaddingStyle];
  }

  v109 = v111;
  v111[0] = v68;
  v111[1] = v68;
  v110 = 0x200000002;
  v88[0] = 2;
  v69 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v70 = mlir::RankedTensorType::get(v88, 1, v69, 0);
  if (v70)
  {
    v71 = v70;
    v72 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v70 + 8);
    v70 = v71;
  }

  else
  {
    v72 = 0;
  }

  v73 = mlir::DenseElementsAttr::getFromRawBuffer(v70, v72, v109, 8 * v110);
  mlir::NamedAttrList::set(__src, "padding_modes", 0xDuLL, v73);
  v88[0] = &v89;
  v88[1] = 0x100000000;
  v86 = a3[12];
  *&v87 = 2;
  v86 = mlir::ValueRange::offset_base(&v86, 2);
  *&v87 = 0;
  v74 = mlir::ValueRange::dereference_iterator(&v86, 0);
  if ((mlir::matchConstantWithFloatVector<float>(v74, v88) & 1) == 0)
  {
    operator new();
  }

  F16FloatAttr = mlir::Builder::getF16FloatAttr(a4 + 1, *v88[0], v75);
  mlir::NamedAttrList::set(__src, "background_value", 0x10uLL, F16FloatAttr);
  v77 = v84;
  v85[0] = v79;
  v85[1] = Transpose;
  mlir::ValueRange::ValueRange(&v86, v85, 2uLL);
  v78 = mlir::OpBuilder::create<mlir::anec::Resample,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(v77 + 24), &v86, __src);
  ((*a4)[1])(a4, v77, v78);
  if (v88[0] != &v89)
  {
    free(v88[0]);
  }

  if (v109 != v111)
  {
    free(v109);
  }

  if (__p[0] != v113)
  {
    free(__p[0]);
  }

  if (v90 != &v92)
  {
    free(v90);
  }

  if (v93 != v95)
  {
    free(v93);
  }

  if (v96 != v98)
  {
    free(v96);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  if (__src[0] != &v103)
  {
    free(__src[0]);
  }

  if (v105 != v107)
  {
    free(v105);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Resample,mlir::ValueRange,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Resample,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Resample,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Resample::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Resample,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertScaledDotProductAttention::~ConvertScaledDotProductAttention(mlir::_anonymous_namespace_::ConvertScaledDotProductAttention *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps_spi::ScaledDotProductAttentionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps_spi::ScaledDotProductAttentionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps_spi::ScaledDotProductAttentionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v25 = v10;
        v26 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v25) || !mlir::ElementsAttr::getShapedType(&v25))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v25);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v31 = v18;
        v32 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v31) || !mlir::ElementsAttr::getShapedType(&v31))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v31);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v28 = v23;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertScaledDotProductAttention::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 48);
  v40[0] = *(a3 + 40);
  v40[1] = v6;
  if (v6 == 5)
  {
    v7 = mlir::ValueRange::dereference_iterator(v40, 0);
    Transpose = v7;
    v8 = mlir::ValueRange::dereference_iterator(v40, 1);
    v32 = v8;
    v9 = mlir::ValueRange::dereference_iterator(v40, 2);
    v31 = v9;
    v30 = mlir::ValueRange::dereference_iterator(v40, 3);
    v29 = mlir::ValueRange::dereference_iterator(v40, 4);
    if (*(a2 + 36))
    {
      v10 = a2 - 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v28[0] = v11;
    v28[1] = v12;
    mlir::ShapedType::getShape(v28);
    v14 = *(a2 + 24);
    if (v13 >= 5)
    {
      operator new();
    }

    v15 = v13;
    v16 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v16)
    {
      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    }

    else
    {
      v17 = 0;
    }

    v27[0] = v16;
    v27[1] = v17;
    v18 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v18)
    {
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v26[0] = v18;
    v26[1] = v19;
    Shape = mlir::ShapedType::getShape(v27);
    v22 = v21;
    v23 = mlir::ShapedType::getShape(v26);
    if (v22 != v24 || memcmp(Shape, v23, 8 * v22))
    {
      operator new();
    }

    __p = &v38[1];
    *&v38[1] = xmmword_1A75EA288;
    v39 = unk_1A75EA298;
    v38[0] = 0x600000004;
    if (v15 == 4)
    {
      v34 = v7;
      mlir::ValueRange::ValueRange(&v35, &v34, 1uLL);
      v34 = v32;
      mlir::ValueRange::ValueRange(&v35, &v34, 1uLL);
      v34 = v31;
      mlir::ValueRange::ValueRange(&v35, &v34, 1uLL);
      v34 = mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 8), v14, &Transpose, &v32, &v31, &v29, &v30) - 16;
      mlir::ValueRange::ValueRange(&v35, &v34, 1uLL);
    }

    else
    {
      v25 = mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 8), v14, &Transpose, &v32, &v31, &v29, &v30) - 16;
    }

    v34 = v25;
    mlir::ValueRange::ValueRange(&v35, &v34, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v35, v36);
  }

  operator new();
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ScaledDotProductAttention,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ScaledDotProductAttention,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::ScaledDotProductAttention::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ScaledDotProductAttention,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::PixelShuffle>::~ConvertDepthToSpace2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::PixelShuffle>::~ConvertDepthToSpace2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::DepthToSpace2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::DepthToSpace2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DepthToSpace2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v33 = v18;
        v34 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v33) || !mlir::ElementsAttr::getShapedType(&v33))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v33);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v23;
  v32 = *(a3 + 64);
  v24 = *(a3 + 16);
  *__p = *a3;
  v29 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::PixelShuffle>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v31 = *(a3 + 56);
  if (*(a2 + 47) && (result = mlir::Operation::getInherentAttr(a2, "pixel_shuffle", 13), (v7 & 1) != 0))
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "pixel_shuffle", 0xDuLL);
    if (!result)
    {
      return result;
    }
  }

  v28 = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v9 = mlir::RankedTensorType::get(&v28, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v27);
  v11 = mlir::pdl::ResultOp::getIndex(&v27);
  v30[0] = Index;
  v30[1] = v11;
  v30[2] = 1;
  v28 = v30;
  v29 = 0x300000003;
  if (v9)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v13 = v28;
    v14 = 8 * v29;
  }

  else
  {
    v12 = 0;
    v14 = 24;
    v13 = v30;
  }

  v26 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v12, v13, v14);
  v15 = v27;
  v16 = mlir::ValueRange::dereference_iterator(&v31, 0);
  v17 = *(*(v27 + 72) + 24);
  v18 = mlir::ValueRange::dereference_iterator(&v31, 1);
  v19 = mlir::ValueRange::dereference_iterator(&v31, 2);
  v20 = mlir::ValueRange::dereference_iterator(&v31, 3);
  result = 0;
  if (v21)
  {
    v22 = v27;
    v25 = mlir::ValueRange::dereference_iterator(&v31, 0);
    v23 = mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v22 + 24), &v25, &v26);
    ((*a4)[1])(a4, v22, v23);
    result = 1;
  }

  if (v28 != v30)
  {
    v24 = result;
    free(v28);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::convertDepthSpaceCommon<mlir::mps::DepthToSpace2DOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v56 = *MEMORY[0x1E69E9840];
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v50[0] = v12;
  v50[1] = v13;
  if ((mlir::ElementsAttr::getShapedType(v50) & 1) == 0)
  {
    operator new();
  }

  mlir::ShapedType::getShape(v50);
  if (v14 != 4)
  {
    mlir::ShapedType::getShape(v50);
    if (v15 != 5)
    {
      operator new();
    }
  }

  v16 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v49[0] = v16;
  v49[1] = v17;
  mlir::ShapedType::getShape(v50);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if ((v20 & 1) == 0)
  {
    v40 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(v40, v41, v42, v43);
  }

  v21 = IndexFromDim;
  __p = &v53;
  v53 = a7;
  v54 = a6;
  v55 = a5;
  v52 = 0x300000003;
  mlir::ShapedType::getShape(v49);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(a7, v22, *(a1 + 24), 1);
  v48 = v23;
  if (v23)
  {
    if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) != 1)
    {
      goto LABEL_40;
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v44, SortedUniquePromotedPositiveAxesAttr, 0);
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v44, &v45);
    if (v46 > 0x40)
    {
      v25 = *v45;
      MEMORY[0x1AC55A040]();
      if (v21 != v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v46)
      {
        v24 = (v45 << -v46) >> -v46;
      }

      else
      {
        v24 = 0;
      }

      if (v21 != v24)
      {
LABEL_38:
        operator new();
      }
    }

    v26 = v54;
    mlir::ShapedType::getShape(v49);
    SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v26, v27, *(a1 + 24), 1);
    v48 = v28;
    if (v28)
    {
      if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) != 1)
      {
        goto LABEL_40;
      }

      v29 = v21 + 1;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v44, SortedUniquePromotedPositiveAxesAttr, 0);
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v44, &v45);
      if (v46 >= 0x41)
      {
        v31 = *v45;
        MEMORY[0x1AC55A040]();
        if (v29 != v31)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v46)
        {
          v30 = (v45 << -v46) >> -v46;
        }

        else
        {
          v30 = 0;
        }

        if (v29 != v30)
        {
          goto LABEL_38;
        }
      }

      v32 = v55;
      mlir::ShapedType::getShape(v49);
      SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v32, v33, *(a1 + 24), 1);
      v48 = v34;
      if (v34)
      {
        if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) == 1)
        {
          v35 = v21 + 2;
          mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v44, SortedUniquePromotedPositiveAxesAttr, 0);
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v44, &v45);
          if (v46 >= 0x41)
          {
            v39 = *v45;
            MEMORY[0x1AC55A040]();
            if (v35 != v39)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v46)
            {
              v36 = (v45 << -v46) >> -v46;
            }

            else
            {
              v36 = 0;
            }

            if (v35 != v36)
            {
              goto LABEL_38;
            }
          }

          result = 1;
          goto LABEL_41;
        }

LABEL_40:
        operator new();
      }
    }
  }

  result = 0;
LABEL_41:
  if (__p != &v53)
  {
    v38 = result;
    free(__p);
    return v38;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::PixelShuffle,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::PixelShuffle::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id)
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

void *mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::ChannelToSpace>::~ConvertDepthToSpace2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::ChannelToSpace>::~ConvertDepthToSpace2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertDepthToSpace2D<mlir::anec::ChannelToSpace>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v32 = *(a3 + 56);
  if (*(a2 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(a2, "pixel_shuffle", 13), (v7 & 1) != 0))
  {
    if (InherentAttr)
    {
      return 0;
    }
  }

  else if (mlir::DictionaryAttr::contains(a2 + 56, "pixel_shuffle", 0xDuLL))
  {
    return 0;
  }

  v29 = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v10 = mlir::RankedTensorType::get(&v29, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v28);
  v12 = mlir::pdl::ResultOp::getIndex(&v28);
  v31[0] = Index;
  v31[1] = v12;
  v31[2] = 1;
  v29 = v31;
  v30 = 0x300000003;
  if (v10)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v14 = v29;
    v15 = 8 * v30;
  }

  else
  {
    v13 = 0;
    v15 = 24;
    v14 = v31;
  }

  v27 = mlir::DenseElementsAttr::getFromRawBuffer(v10, v13, v14, v15);
  v16 = v28;
  v17 = mlir::ValueRange::dereference_iterator(&v32, 0);
  v18 = *(*(v28 + 72) + 24);
  v19 = mlir::ValueRange::dereference_iterator(&v32, 1);
  v20 = mlir::ValueRange::dereference_iterator(&v32, 2);
  v21 = mlir::ValueRange::dereference_iterator(&v32, 3);
  result = 0;
  if (v22)
  {
    v23 = v28;
    v26 = mlir::ValueRange::dereference_iterator(&v32, 0);
    v24 = mlir::OpBuilder::create<mlir::anec::ChannelToSpace,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v23 + 24), &v26, &v27);
    ((*a4)[1])(a4, v23, v24);
    result = 1;
  }

  if (v29 != v31)
  {
    v25 = result;
    free(v29);
    return v25;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ChannelToSpace,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ChannelToSpace,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ChannelToSpace::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ChannelToSpace,void>::id)
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

void *mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::PixelUnshuffle>::~ConvertSpaceToDepth2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::PixelUnshuffle>::~ConvertSpaceToDepth2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToDepth2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToDepth2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SpaceToDepth2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v33 = v18;
        v34 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v33) || !mlir::ElementsAttr::getShapedType(&v33))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v33);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v23;
  v32 = *(a3 + 64);
  v24 = *(a3 + 16);
  *__p = *a3;
  v29 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::PixelUnshuffle>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v5 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v38 = *(a3 + 56);
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "pixel_shuffle", 13), (v7 & 1) == 0))
  {
    if (mlir::DictionaryAttr::contains(v5 + 56, "pixel_shuffle", 0xDuLL))
    {
      goto LABEL_4;
    }

LABEL_7:
    __p[0] = *(*(v5 + 48) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v17 = v16;
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v16;
      if (v16)
      {
        memmove(&__dst, AttrData, v16);
      }

      __dst.__r_.__value_.__s.__data_[v17] = 0;
      v5 = v35;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v28 = std::string::insert(&__dst, 0, "Invalid pattern to convert");
    v29 = v28->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v34, " to ANE");
    v31 = v30->__r_.__value_.__r.__words[2];
    *__p = *&v30->__r_.__value_.__l.__data_;
    v37[0] = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v5 + 24), a4);
    if (SHIBYTE(v37[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_27:
        operator delete(__dst.__r_.__value_.__l.__data_);
        return matched;
      }
    }

    else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_27;
  }

  if (!InherentAttr)
  {
    goto LABEL_7;
  }

LABEL_4:
  __p[0] = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v9 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v35);
  v11 = mlir::pdl::ResultOp::getIndex(&v35);
  v37[0] = Index;
  v37[1] = v11;
  v37[2] = 1;
  __p[0] = v37;
  __p[1] = 0x300000003;
  if (v9)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v13 = __p[0];
    v14 = 8 * LODWORD(__p[1]);
  }

  else
  {
    v12 = 0;
    v14 = 24;
    v13 = v37;
  }

  v34.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v9, v12, v13, v14);
  v18 = v35;
  v19 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v20 = *(*(v35 + 72) + 24);
  v21 = mlir::ValueRange::dereference_iterator(&v38, 1);
  v22 = mlir::ValueRange::dereference_iterator(&v38, 2);
  v23 = mlir::ValueRange::dereference_iterator(&v38, 3);
  matched = 0;
  if (v24)
  {
    v26 = v35;
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v38, 0);
    v27 = mlir::OpBuilder::create<mlir::anec::PixelUnshuffle,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v26 + 24), &__dst, &v34);
    ((*a4)[1])(a4, v26, v27);
    matched = 1;
  }

  if (__p[0] != v37)
  {
    free(__p[0]);
  }

  return matched;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::PixelUnshuffle,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::PixelUnshuffle,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::PixelUnshuffle::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id)
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

void *mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::SpaceToChannel>::~ConvertSpaceToDepth2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::SpaceToChannel>::~ConvertSpaceToDepth2D(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertSpaceToDepth2D<mlir::anec::SpaceToChannel>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v5 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v38 = *(a3 + 56);
  if (*(a2 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(a2, "pixel_shuffle", 13), (v7 & 1) != 0))
  {
    if (InherentAttr)
    {
      goto LABEL_4;
    }
  }

  else if (mlir::DictionaryAttr::contains(v5 + 56, "pixel_shuffle", 0xDuLL))
  {
LABEL_4:
    __p[0] = *(*(v5 + 48) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v10 = v9;
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v9 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v9;
      if (v9)
      {
        memmove(&__dst, AttrData, v9);
      }

      __dst.__r_.__value_.__s.__data_[v10] = 0;
      v5 = v35;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v28 = std::string::insert(&__dst, 0, "Invalid pattern to convert");
    v29 = v28->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v34, " to ANE");
    v31 = v30->__r_.__value_.__r.__words[2];
    *__p = *&v30->__r_.__value_.__l.__data_;
    v37[0] = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v5 + 24), a4);
    if (SHIBYTE(v37[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_27:
        operator delete(__dst.__r_.__value_.__l.__data_);
        return matched;
      }
    }

    else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_27;
  }

  __p[0] = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v12 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
  Index = mlir::pdl::ResultOp::getIndex(&v35);
  v14 = mlir::pdl::ResultOp::getIndex(&v35);
  v37[0] = Index;
  v37[1] = v14;
  v37[2] = 1;
  __p[0] = v37;
  __p[1] = 0x300000003;
  if (v12)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v16 = __p[0];
    v17 = 8 * LODWORD(__p[1]);
  }

  else
  {
    v15 = 0;
    v17 = 24;
    v16 = v37;
  }

  v34.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v12, v15, v16, v17);
  v18 = v35;
  v19 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v20 = *(*(v35 + 72) + 24);
  v21 = mlir::ValueRange::dereference_iterator(&v38, 1);
  v22 = mlir::ValueRange::dereference_iterator(&v38, 2);
  v23 = mlir::ValueRange::dereference_iterator(&v38, 3);
  matched = 0;
  if (v24)
  {
    v26 = v35;
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v38, 0);
    v27 = mlir::OpBuilder::create<mlir::anec::SpaceToChannel,mlir::Value,mlir::DenseIntElementsAttr &>(a4 + 1, *(v26 + 24), &__dst, &v34);
    ((*a4)[1])(a4, v26, v27);
    matched = 1;
  }

  if (__p[0] != v37)
  {
    free(__p[0]);
  }

  return matched;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::SpaceToChannel,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::SpaceToChannel,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::SpaceToChannel::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToChannel,void>::id)
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

void *mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::BatchToSpaceOp,mlir::anec::BatchToSpace>::~ConvertBatchToSpace(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::BatchToSpaceOp,mlir::anec::BatchToSpace>::~ConvertBatchToSpace(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::BatchToSpaceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::BatchToSpaceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::BatchToSpaceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v33 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v32 = v18;
        v33 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v32) || !mlir::ElementsAttr::getShapedType(&v32))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v32);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v29 = v23;
  v24 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::BatchToSpaceOp,mlir::anec::BatchToSpace>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v60 = *(a3 + 48);
  v6 = mlir::ValueRange::dereference_iterator(&v60, 0);
  v47 = v6;
  v7 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  RankPromotionTypeForANE = v7;
  v58 = v8;
  mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v10 = v9;
  v11 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v11, v12);
  v58 = v13;
  mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v15 = v14;
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 56), v10, *(a2 + 24), 1);
  v46 = v16;
  if ((v16 & 1) == 0)
  {
    operator new();
  }

  v43 = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 88), v10, *(a2 + 24), 1);
  v44 = v17;
  if ((v17 & 1) == 0)
  {
    operator new();
  }

  IndexFromDim = mlir::anec::getIndexFromDim(0, v15);
  v19 = mlir::anec::getIndexFromDim(2, v15);
  v21 = v20;
  v22 = mlir::anec::getIndexFromDim(3, v15);
  v23 = mlir::anec::getIndexFromDim(4, v15);
  if (mlir::DenseElementsAttr::getNumElements(&v43) != 1)
  {
LABEL_15:
    operator new();
  }

  v24 = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&RankPromotionTypeForANE, v43, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(v24, &v53);
  if (v54 >= 0x41)
  {
    v26 = *v53;
    MEMORY[0x1AC55A040]();
    if (IndexFromDim != v26)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v54)
    {
      v25 = (v53 << -v54) >> -v54;
    }

    else
    {
      v25 = 0;
    }

    if (IndexFromDim != v25)
    {
      goto LABEL_15;
    }
  }

  RankPromotionTypeForANE = v59;
  v58 = 0x300000000;
  if ((mlir::matchConstantWithIntVector<unsigned long long>(*(*(a2 + 72) + 120), &RankPromotionTypeForANE) & 1) == 0)
  {
    operator new();
  }

  v53 = &v55;
  v56 = 1;
  v55 = xmmword_1A75EA2A8;
  v54 = 0x300000003;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, SortedUniquePromotedPositiveAxesAttr, 0);
  v50 = *__p;
  v51 = v49;
  v52 = RankPromotionTypeForANE;
  v27 = SortedUniquePromotedPositiveAxesAttr;
  NumElements = mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v27, NumElements);
  v29 = v49;
  if (v51 != v49)
  {
    v30 = &RankPromotionTypeForANE[8 * v58];
    if (v52 != v30)
    {
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v50, __p);
        v31 = __p[1];
        v32 = __p[0];
        if (v21)
        {
          if (LODWORD(__p[1]) > 0x40)
          {
            if (*__p[0] == v19)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v33 = __p[0] << -LOBYTE(__p[1]) >> -LOBYTE(__p[1]);
            if (!LODWORD(__p[1]))
            {
              v33 = 0;
            }

            if (v33 == v19)
            {
LABEL_37:
              *(v53 + 2) = *v52;
              goto LABEL_40;
            }
          }
        }

        if (LODWORD(__p[1]) > 0x40)
        {
          v34 = *__p[0];
          if (*__p[0] != v22)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v34 = __p[0] << -LOBYTE(__p[1]) >> -LOBYTE(__p[1]);
          if (!LODWORD(__p[1]))
          {
            v34 = 0;
          }

          if (v34 != v22)
          {
LABEL_32:
            v35 = *v52;
            if (v34 == v23)
            {
              *v53 = v35;
            }

            else if (v35 != 1)
            {
              operator new();
            }

            goto LABEL_40;
          }
        }

        *(v53 + 1) = *v52;
LABEL_40:
        if (v31 >= 0x41 && v32)
        {
          MEMORY[0x1AC55A040](v32, 0x1000C8000313F17);
        }

        v36 = v52 + 8;
        *&v51 = v51 + 1;
        v52 += 8;
      }

      while (v51 != v29 && v36 != v30);
    }
  }

  *&v50 = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v38 = mlir::RankedTensorType::get(&v50, 1, IntegerType, 0);
  if (v38)
  {
    v39 = v38;
    v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
    v38 = v39;
  }

  else
  {
    v40 = 0;
  }

  *&v50 = mlir::DenseElementsAttr::getFromRawBuffer(v38, v40, v53, 8 * v54);
  v41 = mlir::OpBuilder::create<mlir::anec::BatchToSpace,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v47, &v50);
  ((*a4)[1])(a4, a2, v41);
  if (v53 != &v55)
  {
    free(v53);
  }

  result = 1;
  if (RankPromotionTypeForANE != v59)
  {
    free(RankPromotionTypeForANE);
    return 1;
  }

  return result;
}

uint64_t mlir::matchConstantWithIntVector<unsigned long long>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::ElementsAttr::getShapedType(&v8);
  v6[1] = v4;
  if (*(*mlir::ElementsAttr::isSplat(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<unsigned long long>(v8, v9, a2, 1);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::BatchToSpace,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::BatchToSpace,mlir::Value &,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::BatchToSpace::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::BatchToSpace,void>::id)
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

void *mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::SpaceToBatchOp,mlir::anec::SpaceToBatch>::~ConvertBatchToSpace(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::SpaceToBatchOp,mlir::anec::SpaceToBatch>::~ConvertBatchToSpace(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToBatchOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SpaceToBatchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SpaceToBatchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v33 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v32 = v18;
        v33 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v32) || !mlir::ElementsAttr::getShapedType(&v32))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v32);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v29 = v23;
  v24 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertBatchToSpace<mlir::mps::SpaceToBatchOp,mlir::anec::SpaceToBatch>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v60 = *(a3 + 48);
  v6 = mlir::ValueRange::dereference_iterator(&v60, 0);
  v47 = v6;
  v7 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  RankPromotionTypeForANE = v7;
  v58 = v8;
  mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v10 = v9;
  v11 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v11, v12);
  v58 = v13;
  mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v15 = v14;
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 56), v10, *(a2 + 24), 1);
  v46 = v16;
  if ((v16 & 1) == 0)
  {
    operator new();
  }

  v43 = mlir::getSortedUniquePromotedPositiveAxesAttr(*(*(a2 + 72) + 88), v10, *(a2 + 24), 1);
  v44 = v17;
  if ((v17 & 1) == 0)
  {
    operator new();
  }

  IndexFromDim = mlir::anec::getIndexFromDim(0, v15);
  v19 = mlir::anec::getIndexFromDim(2, v15);
  v21 = v20;
  v22 = mlir::anec::getIndexFromDim(3, v15);
  v23 = mlir::anec::getIndexFromDim(4, v15);
  if (mlir::DenseElementsAttr::getNumElements(&v43) != 1)
  {
LABEL_15:
    operator new();
  }

  v24 = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&RankPromotionTypeForANE, v43, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(v24, &v53);
  if (v54 >= 0x41)
  {
    v26 = *v53;
    MEMORY[0x1AC55A040]();
    if (IndexFromDim != v26)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v54)
    {
      v25 = (v53 << -v54) >> -v54;
    }

    else
    {
      v25 = 0;
    }

    if (IndexFromDim != v25)
    {
      goto LABEL_15;
    }
  }

  RankPromotionTypeForANE = v59;
  v58 = 0x300000000;
  if ((mlir::matchConstantWithIntVector<unsigned long long>(*(*(a2 + 72) + 120), &RankPromotionTypeForANE) & 1) == 0)
  {
    operator new();
  }

  v53 = &v55;
  v56 = 1;
  v55 = xmmword_1A75EA2A8;
  v54 = 0x300000003;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, SortedUniquePromotedPositiveAxesAttr, 0);
  v50 = *__p;
  v51 = v49;
  v52 = RankPromotionTypeForANE;
  v27 = SortedUniquePromotedPositiveAxesAttr;
  NumElements = mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, v27, NumElements);
  v29 = v49;
  if (v51 != v49)
  {
    v30 = &RankPromotionTypeForANE[8 * v58];
    if (v52 != v30)
    {
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v50, __p);
        v31 = __p[1];
        v32 = __p[0];
        if (v21)
        {
          if (LODWORD(__p[1]) > 0x40)
          {
            if (*__p[0] == v19)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v33 = __p[0] << -LOBYTE(__p[1]) >> -LOBYTE(__p[1]);
            if (!LODWORD(__p[1]))
            {
              v33 = 0;
            }

            if (v33 == v19)
            {
LABEL_37:
              *(v53 + 2) = *v52;
              goto LABEL_40;
            }
          }
        }

        if (LODWORD(__p[1]) > 0x40)
        {
          v34 = *__p[0];
          if (*__p[0] != v22)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v34 = __p[0] << -LOBYTE(__p[1]) >> -LOBYTE(__p[1]);
          if (!LODWORD(__p[1]))
          {
            v34 = 0;
          }

          if (v34 != v22)
          {
LABEL_32:
            v35 = *v52;
            if (v34 == v23)
            {
              *v53 = v35;
            }

            else if (v35 != 1)
            {
              operator new();
            }

            goto LABEL_40;
          }
        }

        *(v53 + 1) = *v52;
LABEL_40:
        if (v31 >= 0x41 && v32)
        {
          MEMORY[0x1AC55A040](v32, 0x1000C8000313F17);
        }

        v36 = v52 + 8;
        *&v51 = v51 + 1;
        v52 += 8;
      }

      while (v51 != v29 && v36 != v30);
    }
  }

  *&v50 = 3;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v38 = mlir::RankedTensorType::get(&v50, 1, IntegerType, 0);
  if (v38)
  {
    v39 = v38;
    v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
    v38 = v39;
  }

  else
  {
    v40 = 0;
  }

  *&v50 = mlir::DenseElementsAttr::getFromRawBuffer(v38, v40, v53, 8 * v54);
  v41 = mlir::OpBuilder::create<mlir::anec::SpaceToBatch,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v47, &v50);
  ((*a4)[1])(a4, a2, v41);
  if (v53 != &v55)
  {
    free(v53);
  }

  result = 1;
  if (RankPromotionTypeForANE != v59)
  {
    free(RankPromotionTypeForANE);
    return 1;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::SpaceToBatch,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::SpaceToBatch,mlir::Value &,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::SpaceToBatch::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::SpaceToBatch,void>::id)
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

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)0>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)0>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::TransposeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::TransposeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TransposeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v25 = v10;
        v26 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v25) || !mlir::ElementsAttr::getShapedType(&v25))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v25);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v31 = v18;
        v32 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v31) || !mlir::ElementsAttr::getShapedType(&v31))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v31);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v28 = v23;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)1>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)1>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)2>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)2>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)3>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)3>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)4>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)4>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)5>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)5>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)6>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)6>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)7>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)7>::~ConvertTranspose(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::anonymous namespace::ConvertTranspose<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = *(a3 + 40);
  v7 = (*(*(a2[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  mlir::ShapedType::getShape(v28);
  v10 = v9;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v34[0] = &v35;
  v34[1] = 0x100000000;
  __p = *(a3 + 40);
  v32 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  v32 = 0;
  v11 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<long long>(v11, v36) & 1) == 0 || (__p = *(a3 + 40), v32 = 2, __p = mlir::ValueRange::offset_base(&__p, 2), v32 = 0, v12 = mlir::ValueRange::dereference_iterator(&__p, 0), (mlir::matchConstantWithIntVector<long long>(v12, v34) & 1) == 0))
  {
    operator new();
  }

  v13 = *v36[0];
  v14 = *v34[0];
  __p = v33;
  v33[0] = v13;
  v33[1] = v14;
  v32 = 0x600000002;
  v29[0] = v30;
  v29[1] = 0x600000000;
  if (mlir::getPositivePromotedAxes(v33, 2, v10, v29, 0, 0))
  {
    v15 = *(v29[0] + 1);
    v26[0] = *v29[0];
    __dst.__r_.__value_.__r.__words[0] = v15;
    v24 = mlir::ValueRange::dereference_iterator(&v38, 0);
    v16 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(a4 + 1, a2[3], &v24, v26, &__dst);
    ((*a4)[1])(a4, a2, v16);
    matched = 1;
  }

  else
  {
    v26[0] = *(a2[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v26);
    if (AttrData)
    {
      v20 = v19;
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v19;
      if (v19)
      {
        memmove(&__dst, AttrData, v19);
      }

      __dst.__r_.__value_.__s.__data_[v20] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v21 = std::string::insert(&__dst, 0, "Failed to extract positive axes from Op ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v26 = *&v21->__r_.__value_.__l.__data_;
    v27 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(v26, a2[3], a4);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (__p != v33)
  {
    free(__p);
  }

  if (v34[0] != &v35)
  {
    free(v34[0]);
  }

  if (v36[0] != &v37)
  {
    free(v36[0]);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)0>::~ConvertBroadcast(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)0>::~ConvertBroadcast(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::OpConversionPattern<mlir::mps::BroadcastToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::BroadcastToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::BroadcastToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v25 = v10;
        v26 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v25) || !mlir::ElementsAttr::getShapedType(&v25))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v25);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v31 = v18;
        v32 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v31) || !mlir::ElementsAttr::getShapedType(&v31))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v31);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v28 = v23;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v63 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v63, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v50 = v6;
  v51 = v7;
  v60 = v62;
  v61 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v63, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v60) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(&v50);
  v9 = mlir::MemRefType::get(v60, v61, isSplat, 0, 0, 0);
  if (v9)
  {
    v10 = v9;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v11);
  v14 = v13;
  v48[0] = RankPromotionTypeForANE;
  v48[1] = v13;
  if (!mlir::Type::isF16(&isSplat))
  {
    operator new();
  }

  v15 = mlir::getRankPromotionTypeForANE(v50, v51);
  v57 = v59;
  v58 = 0x400000000;
  if ((mlir::getBroadcastIndices(v15, v16, RankPromotionTypeForANE, v14, &v57) & 1) == 0)
  {
    operator new();
  }

  mlir::ShapedType::getShape(v48);
  IndexFromDim = mlir::anec::getIndexFromDim(4, v17);
  if (!v58)
  {
    operator new();
  }

  v19 = v57;
  v20 = 8 * v58;
  while (IndexFromDim != *v19)
  {
    ++v19;
    v20 -= 8;
    if (!v20)
    {
      v47 = mlir::ValueRange::dereference_iterator(&v63, 0);
      Shape = mlir::ShapedType::getShape(v48);
      v23 = v22;
      v24 = mlir::ElementsAttr::isSplat(v48);
      v25 = mlir::RankedTensorType::get(Shape, v23, v24, 0);
      __p = mlir::createSplatF16ElementsAttr(v25, 0.0);
      v55 = v26;
      v27 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), *(a2 + 24), v48, &__p);
      v52[0] = mlir::ValueRange::dereference_iterator(&v63, 0);
      v52[1] = v27 - 16;
      mlir::ValueRange::ValueRange(v53, v52, 2uLL);
      v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ValueRange>((a4 + 8), *(a2 + 24), v53);
      (*(*a4 + 8))(a4, a2, v28);
      goto LABEL_26;
    }
  }

  v29 = IndexFromDim;
  v47 = mlir::ValueRange::dereference_iterator(&v63, 0);
  mlir::ShapedType::getShape(v48);
  v31 = v30;
  __p = v56;
  HIDWORD(v55) = 5;
  if (v30 < 6)
  {
    if (!v30)
    {
      goto LABEL_24;
    }

    v33 = 8 * v30;
    v32 = v56;
  }

  else
  {
    LODWORD(v55) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v56, v30, 8);
    v32 = __p;
    v33 = 8 * v31;
  }

  memset_pattern16(v32, &unk_1A75989B0, v33);
LABEL_24:
  LODWORD(v55) = v31;
  v34 = mlir::ShapedType::getShape(v48);
  v35 = __p;
  *(__p + v29) = *(v34 + 8 * v29);
  v36 = v55;
  v37 = mlir::ElementsAttr::isSplat(v48);
  v38 = mlir::RankedTensorType::get(v35, v36, v37, 0);
  v53[0] = mlir::createSplatF16ElementsAttr(v38, 1.0);
  v53[1] = v39;
  v40 = *(a2 + 24);
  v41 = __p;
  v42 = v55;
  v43 = mlir::ElementsAttr::isSplat(v48);
  v46 = mlir::MemRefType::get(v41, v42, v43, 0, 0, 0);
  v52[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v40, &v46, v53);
  v46 = 0;
  v44 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::mps::ConstantOp &,decltype(nullptr)>((a4 + 8), *(a2 + 24), &v47, v52);
  (*(*a4 + 8))(a4, a2, v44);
  if (__p != v56)
  {
    free(__p);
  }

LABEL_26:
  if (v57 != v59)
  {
    free(v57);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  return 1;
}