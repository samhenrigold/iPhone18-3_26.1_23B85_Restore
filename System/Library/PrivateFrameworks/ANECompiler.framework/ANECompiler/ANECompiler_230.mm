uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::verify(uint64_t **this)
{
  v277 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[9];
  v4 = v3[3];
  v5 = v3[7];
  if (*(*this + 17) != 2)
  {
    v6 = v3[11];
    v256 = v2[14];
    v257 = v2;
    v9 = v2[11];
    v254 = v2[12];
    v255 = v9;
    if (v256)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v255)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v6 = 0;
  v256 = v2[14];
  v257 = v2;
  v7 = v2[11];
  v254 = v2[12];
  v255 = v7;
  if (!v256)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (mlir::DenseElementsAttr::getNumElements(&v256) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v244, v256, 0);
    v1 = v256;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v256);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v251, v1, NumElements);
    while (v246 != v253)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v244, &v249);
      if (v250 > 0x40)
      {
        if (*v249 <= 0)
        {
          goto LABEL_100;
        }
      }

      else if (!v250 || (v249 << -v250) >> -v250 <= 0)
      {
LABEL_100:
        v264 = 259;
        mlir::OpState::emitOpError(&v257, &v261, &v265);
        if (v250 > 0x40)
        {
          v79 = *v249;
          if (!v265)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v250)
          {
            v79 = (v249 << -v250) >> -v250;
          }

          else
          {
            v79 = 0;
          }

          if (!v265)
          {
            goto LABEL_116;
          }
        }

        LODWORD(v258) = 2;
        v259 = v79;
        v81 = v267;
        if (v268 >= v269)
        {
          if (v267 <= &v258 && v267 + 24 * v268 > &v258)
          {
            v98 = &v258 - v267;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v81 = v267;
            v82 = v267 + v98;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v82 = &v258;
            v81 = v267;
          }
        }

        else
        {
          v82 = &v258;
        }

        v83 = &v81[24 * v268];
        v84 = *v82;
        *(v83 + 2) = *(v82 + 2);
        *v83 = v84;
        v85 = ++v268;
        if (v265)
        {
          LODWORD(v258) = 3;
          v259 = ", all values should be positive.";
          v260 = 32;
          v86 = v267;
          if (v85 >= v269)
          {
            if (v267 <= &v258 && v267 + 24 * v85 > &v258)
            {
              v99 = &v258 - v267;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v85 + 1, 24);
              v86 = v267;
              v87 = v267 + v99;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v85 + 1, 24);
              v87 = &v258;
              v86 = v267;
            }
          }

          else
          {
            v87 = &v258;
          }

          v88 = &v86[24 * v268];
          v89 = *v87;
          *(v88 + 2) = *(v87 + 2);
          *v88 = v89;
          ++v268;
        }

LABEL_116:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
        if (v265)
        {
          mlir::InFlightDiagnostic::report(&v265);
        }

        if (v276 == 1)
        {
          if (v275 != &v276)
          {
            free(v275);
          }

          v90 = __p;
          if (__p)
          {
            v91 = v274;
            v92 = __p;
            if (v274 != __p)
            {
              do
              {
                v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
              }

              while (v91 != v90);
              v92 = __p;
            }

            v274 = v90;
            operator delete(v92);
          }

          v93 = v271;
          if (v271)
          {
            v94 = v272;
            v95 = v271;
            if (v272 != v271)
            {
              do
              {
                v97 = *--v94;
                v96 = v97;
                *v94 = 0;
                if (v97)
                {
                  MEMORY[0x1AC55A040](v96, 0x1000C8077774924);
                }
              }

              while (v94 != v93);
              v95 = v271;
            }

            v272 = v93;
            operator delete(v95);
          }

          if (v267 != v270)
          {
            free(v267);
          }
        }

        v80 = 0;
        if (v250 < 0x41)
        {
          goto LABEL_139;
        }

LABEL_137:
        if (v249)
        {
          MEMORY[0x1AC55A040](v249, 0x1000C8000313F17);
        }

        goto LABEL_139;
      }

      v80 = 1;
      if (v250 >= 0x41)
      {
        goto LABEL_137;
      }

LABEL_139:
      if (!v80)
      {
        return v1;
      }

      ++v246;
    }
  }

  if (!v255)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (mlir::DenseElementsAttr::getNumElements(&v255) == 3)
  {
    v241 = v4;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v244, v255, 0);
    v10 = v255;
    v11 = mlir::DenseElementsAttr::getNumElements(&v255);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v251, v10, v11);
    if (v246 == v253)
    {
LABEL_11:
      v4 = v241;
      goto LABEL_12;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v244, &v249);
      if (v250 > 0x40)
      {
        if (*v249 <= 0)
        {
          goto LABEL_153;
        }
      }

      else if (!v250 || (v249 << -v250) >> -v250 <= 0)
      {
LABEL_153:
        v264 = 259;
        mlir::OpState::emitOpError(&v257, &v261, &v265);
        if (v250 > 0x40)
        {
          v100 = *v249;
          if (!v265)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (v250)
          {
            v100 = (v249 << -v250) >> -v250;
          }

          else
          {
            v100 = 0;
          }

          if (!v265)
          {
            goto LABEL_169;
          }
        }

        LODWORD(v258) = 2;
        v259 = v100;
        v102 = v267;
        if (v268 >= v269)
        {
          if (v267 <= &v258 && v267 + 24 * v268 > &v258)
          {
            v119 = &v258 - v267;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v102 = v267;
            v103 = v267 + v119;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v103 = &v258;
            v102 = v267;
          }
        }

        else
        {
          v103 = &v258;
        }

        v104 = &v102[24 * v268];
        v105 = *v103;
        *(v104 + 2) = *(v103 + 2);
        *v104 = v105;
        v106 = ++v268;
        if (v265)
        {
          LODWORD(v258) = 3;
          v259 = ", all values should be positive.";
          v260 = 32;
          v107 = v267;
          if (v106 >= v269)
          {
            if (v267 <= &v258 && v267 + 24 * v106 > &v258)
            {
              v120 = &v258 - v267;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v106 + 1, 24);
              v107 = v267;
              v108 = v267 + v120;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v106 + 1, 24);
              v108 = &v258;
              v107 = v267;
            }
          }

          else
          {
            v108 = &v258;
          }

          v109 = &v107[24 * v268];
          v110 = *v108;
          *(v109 + 2) = *(v108 + 2);
          *v109 = v110;
          ++v268;
        }

LABEL_169:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
        if (v265)
        {
          mlir::InFlightDiagnostic::report(&v265);
        }

        if (v276 == 1)
        {
          if (v275 != &v276)
          {
            free(v275);
          }

          v111 = __p;
          if (__p)
          {
            v112 = v274;
            v113 = __p;
            if (v274 != __p)
            {
              do
              {
                v112 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v112 - 1);
              }

              while (v112 != v111);
              v113 = __p;
            }

            v274 = v111;
            operator delete(v113);
          }

          v114 = v271;
          if (v271)
          {
            v115 = v272;
            v116 = v271;
            if (v272 != v271)
            {
              do
              {
                v118 = *--v115;
                v117 = v118;
                *v115 = 0;
                if (v118)
                {
                  MEMORY[0x1AC55A040](v117, 0x1000C8077774924);
                }
              }

              while (v115 != v114);
              v116 = v271;
            }

            v272 = v114;
            operator delete(v116);
          }

          if (v267 != v270)
          {
            free(v267);
          }
        }

        v101 = 0;
        if (v250 < 0x41)
        {
          goto LABEL_192;
        }

LABEL_190:
        if (v249)
        {
          MEMORY[0x1AC55A040](v249, 0x1000C8000313F17);
        }

        goto LABEL_192;
      }

      v101 = 1;
      if (v250 >= 0x41)
      {
        goto LABEL_190;
      }

LABEL_192:
      if (!v101)
      {
        return v1;
      }

      if (++v246 == v253)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v254 && mlir::DenseElementsAttr::getNumElements(&v254) == 6)
  {
    v242 = v4;
    v243 = v6;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v244, v254, 0);
    v12 = v254;
    v13 = mlir::DenseElementsAttr::getNumElements(&v254);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v251, v12, v13);
    if (v246 == v253)
    {
LABEL_15:
      v4 = v242;
      v6 = v243;
      goto LABEL_16;
    }

    v121 = 0x1000C8000313F17;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v244, &v249);
      if (v250 > 0x40)
      {
        break;
      }

      if (v250)
      {
        v123 = (v249 << -v250) >> -v250;
        if (v123 < 0)
        {
          goto LABEL_209;
        }

LABEL_216:
        if (v250 >= 0x41)
        {
LABEL_246:
          if (v249)
          {
            MEMORY[0x1AC55A040](v249, v121);
          }
        }

LABEL_204:
        if (v123 < 0)
        {
          return v1;
        }
      }

      if (++v246 == v253)
      {
        goto LABEL_15;
      }
    }

    v123 = *v249;
    if ((*v249 & 0x8000000000000000) == 0)
    {
      goto LABEL_216;
    }

LABEL_209:
    v261 = v122;
    v264 = 259;
    mlir::OpState::emitOpError(&v257, &v261, &v265);
    if (v250 > 0x40)
    {
      v124 = *v249;
      if (!v265)
      {
        goto LABEL_225;
      }
    }

    else
    {
      if (v250)
      {
        v124 = (v249 << -v250) >> -v250;
      }

      else
      {
        v124 = 0;
      }

      if (!v265)
      {
        goto LABEL_225;
      }
    }

    LODWORD(v258) = 2;
    v259 = v124;
    v125 = v267;
    if (v268 >= v269)
    {
      if (v267 <= &v258 && v267 + 24 * v268 > &v258)
      {
        v144 = &v258 - v267;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
        v125 = v267;
        v126 = v267 + v144;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
        v126 = &v258;
        v125 = v267;
      }
    }

    else
    {
      v126 = &v258;
    }

    v127 = &v125[24 * v268];
    v128 = *v126;
    *(v127 + 2) = *(v126 + 2);
    *v127 = v128;
    v129 = ++v268;
    if (v265)
    {
      LODWORD(v258) = 3;
      v259 = ", all values should be non-negative.";
      v260 = 36;
      v130 = v267;
      if (v129 >= v269)
      {
        if (v267 <= &v258 && v267 + 24 * v129 > &v258)
        {
          v145 = &v258 - v267;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v129 + 1, 24);
          v130 = v267;
          v131 = v267 + v145;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v129 + 1, 24);
          v131 = &v258;
          v130 = v267;
        }
      }

      else
      {
        v131 = &v258;
      }

      v132 = &v130[24 * v268];
      v133 = *v131;
      *(v132 + 2) = *(v131 + 2);
      *v132 = v133;
      ++v268;
    }

LABEL_225:
    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
    if (v265)
    {
      mlir::InFlightDiagnostic::report(&v265);
    }

    if (v276 == 1)
    {
      if (v275 != &v276)
      {
        free(v275);
      }

      v134 = v122;
      v135 = __p;
      if (__p)
      {
        v136 = v274;
        v137 = __p;
        if (v274 != __p)
        {
          do
          {
            v136 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v136 - 1);
          }

          while (v136 != v135);
          v137 = __p;
        }

        v274 = v135;
        operator delete(v137);
      }

      v138 = v271;
      if (v271)
      {
        v139 = v121;
        v140 = v272;
        v141 = v271;
        if (v272 != v271)
        {
          do
          {
            v143 = *--v140;
            v142 = v143;
            *v140 = 0;
            if (v143)
            {
              MEMORY[0x1AC55A040](v142, 0x1000C8077774924);
            }
          }

          while (v140 != v138);
          v141 = v271;
        }

        v272 = v138;
        operator delete(v141);
        v121 = v139;
      }

      v122 = v134;
      if (v267 != v270)
      {
        free(v267);
      }
    }

    if (v250 >= 0x41)
    {
      goto LABEL_246;
    }

    goto LABEL_204;
  }

LABEL_16:
  v261 = v257[2 * ((*(v257 + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(&v261, &v265);
  if (v266[0] > 0x40)
  {
    v14 = *v265;
    MEMORY[0x1AC55A040]();
    v258 = 0;
    if (!v4)
    {
LABEL_46:
      v249 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    if (v266[0])
    {
      v14 = (v265 << -LOBYTE(v266[0])) >> -LOBYTE(v266[0]);
    }

    else
    {
      LODWORD(v14) = 0;
    }

    v258 = 0;
    if (!v4)
    {
      goto LABEL_46;
    }
  }

  v15 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v15)
  {
    goto LABEL_46;
  }

  v16 = *(*v15 + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = 0;
  }

  v249 = v15;
  if (v16 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_47;
  }

  mlir::ArrayAttr::getValue(&v249);
  v18 = v17;
  if (v17 > 3)
  {
    if (v14 >= 0)
    {
      v196 = v17;
    }

    else
    {
      v196 = 0;
    }

    if ((v14 - v196) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v264 = 259;
      mlir::OpState::emitOpError(&v257, &v261, &v265);
      if (v265)
      {
        LODWORD(v244) = 2;
        v245 = v14;
        v197 = &v244;
        v198 = v267;
        if (v268 >= v269)
        {
          if (v267 <= &v244 && v267 + 24 * v268 > &v244)
          {
            v231 = &v244 - v267;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v198 = v267;
            v197 = (v267 + v231);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v197 = &v244;
            v198 = v267;
          }
        }

        v199 = &v198[24 * v268];
        v200 = *v197;
        *(v199 + 2) = v197[2];
        *v199 = v200;
        v201 = ++v268;
        if (v265)
        {
          LODWORD(v244) = 3;
          v245 = " for input gradient rank ";
          v246 = 25;
          v202 = &v244;
          v203 = v267;
          if (v201 >= v269)
          {
            if (v267 <= &v244 && v267 + 24 * v201 > &v244)
            {
              v235 = &v244 - v267;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v201 + 1, 24);
              v203 = v267;
              v202 = (v267 + v235);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v201 + 1, 24);
              v202 = &v244;
              v203 = v267;
            }
          }

          v204 = &v203[24 * v268];
          v205 = *v202;
          *(v204 + 2) = v202[2];
          *v204 = v205;
          v206 = ++v268;
          if (v265)
          {
            LODWORD(v244) = 2;
            v245 = v18;
            v207 = &v244;
            v208 = v267;
            if (v206 >= v269)
            {
              if (v267 <= &v244 && v267 + 24 * v206 > &v244)
              {
                v238 = &v244 - v267;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v206 + 1, 24);
                v208 = v267;
                v207 = (v267 + v238);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v206 + 1, 24);
                v207 = &v244;
                v208 = v267;
              }
            }

            v209 = &v208[24 * v268];
            v210 = *v207;
            *(v209 + 2) = v207[2];
            *v209 = v210;
            v211 = ++v268;
            if (v265)
            {
              LODWORD(v244) = 3;
              v245 = ".";
              v246 = 1;
              v212 = &v244;
              v213 = v267;
              if (v211 >= v269)
              {
                if (v267 <= &v244 && v267 + 24 * v211 > &v244)
                {
                  v240 = &v244 - v267;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v211 + 1, 24);
                  v213 = v267;
                  v212 = (v267 + v240);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v211 + 1, 24);
                  v212 = &v244;
                  v213 = v267;
                }
              }

              v214 = &v213[24 * v268];
              v215 = *v212;
              *(v214 + 2) = v212[2];
              *v214 = v215;
              ++v268;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
      if (v265)
      {
        mlir::InFlightDiagnostic::report(&v265);
      }

      if (v276 == 1)
      {
        if (v275 != &v276)
        {
          free(v275);
        }

        v216 = __p;
        if (__p)
        {
          v217 = v274;
          v218 = __p;
          if (v274 != __p)
          {
            do
            {
              v217 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v217 - 1);
            }

            while (v217 != v216);
            v218 = __p;
          }

          v274 = v216;
          operator delete(v218);
        }

        v31 = v271;
        if (v271)
        {
          v219 = v272;
          v33 = v271;
          if (v272 != v271)
          {
            do
            {
              v221 = *--v219;
              v220 = v221;
              *v219 = 0;
              if (v221)
              {
                MEMORY[0x1AC55A040](v220, 0x1000C8077774924);
              }
            }

            while (v219 != v31);
            goto LABEL_338;
          }

          goto LABEL_339;
        }

        goto LABEL_340;
      }

      return v1;
    }

LABEL_47:
    if (v5 && (v34 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v35 = *(*v34 + 136);
      if (v35 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v34 = 0;
      }

      v248 = v34;
      if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        mlir::ArrayAttr::getValue(&v248);
        if (v36 != 4)
        {
          v264 = 259;
          mlir::OpState::emitOpError(&v257, &v261, &v265);
          mlir::ArrayAttr::getValue(&v248);
          if (v265)
          {
            LODWORD(v244) = 5;
            v245 = v37;
            v38 = &v244;
            v39 = v267;
            if (v268 >= v269)
            {
              if (v267 <= &v244 && v267 + 24 * v268 > &v244)
              {
                v225 = &v244 - v267;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
                v39 = v267;
                v38 = (v267 + v225);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
                v38 = &v244;
                v39 = v267;
              }
            }

            v40 = &v39[24 * v268];
            v41 = *v38;
            *(v40 + 2) = v38[2];
            *v40 = v41;
            v42 = ++v268;
            if (v265)
            {
              LODWORD(v244) = 3;
              v245 = ".";
              v246 = 1;
              v43 = &v244;
              v44 = v267;
              if (v42 >= v269)
              {
                if (v267 <= &v244 && v267 + 24 * v42 > &v244)
                {
                  v230 = &v244 - v267;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v42 + 1, 24);
                  v44 = v267;
                  v43 = (v267 + v230);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v42 + 1, 24);
                  v43 = &v244;
                  v44 = v267;
                }
              }

              v45 = &v44[24 * v268];
              v46 = *v43;
              *(v45 + 2) = v43[2];
              *v45 = v46;
              ++v268;
            }
          }

          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
          if (v265)
          {
            mlir::InFlightDiagnostic::report(&v265);
          }

          if (v276 == 1)
          {
            if (v275 != &v276)
            {
              free(v275);
            }

            v47 = __p;
            if (__p)
            {
              v48 = v274;
              v49 = __p;
              if (v274 != __p)
              {
                do
                {
                  v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
                }

                while (v48 != v47);
                v49 = __p;
              }

              v274 = v47;
              operator delete(v49);
            }

            v31 = v271;
            if (v271)
            {
              v50 = v272;
              v33 = v271;
              if (v272 != v271)
              {
                do
                {
                  v78 = *--v50;
                  v77 = v78;
                  *v50 = 0;
                  if (v78)
                  {
                    MEMORY[0x1AC55A040](v77, 0x1000C8077774924);
                  }
                }

                while (v50 != v31);
LABEL_338:
                v33 = v271;
                goto LABEL_339;
              }

              goto LABEL_339;
            }

            goto LABEL_340;
          }

          return v1;
        }
      }
    }

    else
    {
      v248 = 0;
    }

    v261 = v263;
    v262 = 0x500000000;
    if ((mlir::matchConstantWithIntVector<long long>(v6, &v261) & 1) == 0)
    {
      goto LABEL_257;
    }

    if (v5)
    {
      if (!v258 || (v51 = v262, mlir::ArrayAttr::getValue(&v258), v52 == v51))
      {
        if (v249)
        {
          v53 = v262;
          mlir::ArrayAttr::getValue(&v249);
          if (v54 != v53)
          {
            v247 = 259;
            mlir::OpState::emitOpError(&v257, &v244, &v265);
            mlir::ArrayAttr::getValue(&v249);
            if (v265)
            {
              LODWORD(v251) = 5;
              v252 = v55;
              v56 = &v251;
              v57 = v267;
              if (v268 >= v269)
              {
                if (v267 <= &v251 && v267 + 24 * v268 > &v251)
                {
                  v226 = &v251 - v267;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
                  v57 = v267;
                  v56 = v267 + v226;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
                  v56 = &v251;
                  v57 = v267;
                }
              }

              v58 = &v57[24 * v268];
              v59 = *v56;
              *(v58 + 2) = *(v56 + 2);
              *v58 = v59;
              v60 = ++v268;
              if (v265)
              {
                LODWORD(v251) = 3;
                v253 = 38;
                v61 = &v251;
                v62 = v267;
                if (v60 >= v269)
                {
                  if (v267 <= &v251 && v267 + 24 * v60 > &v251)
                  {
                    v232 = &v251 - v267;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v60 + 1, 24);
                    v62 = v267;
                    v61 = v267 + v232;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v60 + 1, 24);
                    v61 = &v251;
                    v62 = v267;
                  }
                }

                v63 = &v62[24 * v268];
                v64 = *v61;
                *(v63 + 2) = *(v61 + 2);
                *v63 = v64;
                v65 = ++v268;
                if (v265)
                {
                  LODWORD(v251) = 5;
                  v252 = v262;
                  v66 = &v251;
                  v67 = v267;
                  if (v65 >= v269)
                  {
                    if (v267 <= &v251 && v267 + 24 * v65 > &v251)
                    {
                      v236 = &v251 - v267;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v65 + 1, 24);
                      v67 = v267;
                      v66 = v267 + v236;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v65 + 1, 24);
                      v66 = &v251;
                      v67 = v267;
                    }
                  }

                  v68 = &v67[24 * v268];
                  v69 = *v66;
                  *(v68 + 2) = *(v66 + 2);
                  *v68 = v69;
                  v70 = ++v268;
                  if (v265)
                  {
                    LODWORD(v251) = 3;
                    v252 = " values.";
                    v253 = 8;
                    v71 = &v251;
                    v72 = v267;
                    if (v70 >= v269)
                    {
                      if (v267 <= &v251 && v267 + 24 * v70 > &v251)
                      {
                        v239 = &v251 - v267;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v70 + 1, 24);
                        v72 = v267;
                        v71 = v267 + v239;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v70 + 1, 24);
                        v71 = &v251;
                        v72 = v267;
                      }
                    }

                    v73 = &v72[24 * v268];
                    v74 = *v71;
                    *(v73 + 2) = *(v71 + 2);
                    *v73 = v74;
                    ++v268;
                  }
                }
              }
            }

            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
            if (v265)
            {
              mlir::InFlightDiagnostic::report(&v265);
            }

            if (v276 == 1)
            {
              mlir::Diagnostic::~Diagnostic(v266);
            }

            goto LABEL_258;
          }
        }

LABEL_257:
        v1 = 1;
        goto LABEL_258;
      }

      v247 = 259;
      mlir::OpState::emitOpError(&v257, &v244, &v265);
      mlir::ArrayAttr::getValue(&v258);
      if (v265)
      {
        LODWORD(v251) = 5;
        v252 = v148;
        v149 = &v251;
        v150 = v267;
        if (v268 >= v269)
        {
          if (v267 <= &v251 && v267 + 24 * v268 > &v251)
          {
            v222 = &v251 - v267;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v150 = v267;
            v149 = v267 + v222;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v149 = &v251;
            v150 = v267;
          }
        }

        v151 = &v150[24 * v268];
        v152 = *v149;
        *(v151 + 2) = *(v149 + 2);
        *v151 = v152;
        v153 = ++v268;
        if (v265)
        {
          LODWORD(v251) = 3;
          v253 = 35;
          v154 = &v251;
          v155 = v267;
          if (v153 >= v269)
          {
            if (v267 <= &v251 && v267 + 24 * v153 > &v251)
            {
              v227 = &v251 - v267;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v153 + 1, 24);
              v155 = v267;
              v154 = v267 + v227;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v153 + 1, 24);
              v154 = &v251;
              v155 = v267;
            }
          }

          v156 = &v155[24 * v268];
          v157 = *v154;
          *(v156 + 2) = *(v154 + 2);
          *v156 = v157;
          v158 = ++v268;
          if (v265)
          {
            LODWORD(v251) = 5;
            v252 = v262;
            v159 = &v251;
            v160 = v267;
            if (v158 >= v269)
            {
              if (v267 <= &v251 && v267 + 24 * v158 > &v251)
              {
                v233 = &v251 - v267;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v158 + 1, 24);
                v160 = v267;
                v159 = v267 + v233;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v158 + 1, 24);
                v159 = &v251;
                v160 = v267;
              }
            }

            v161 = &v160[24 * v268];
            v162 = *v159;
            *(v161 + 2) = *(v159 + 2);
            *v161 = v162;
            v163 = ++v268;
            if (v265)
            {
              LODWORD(v251) = 3;
              v252 = " values.";
              v253 = 8;
              v164 = &v251;
              v165 = v267;
              if (v163 >= v269)
              {
                if (v267 <= &v251 && v267 + 24 * v163 > &v251)
                {
                  v237 = &v251 - v267;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v163 + 1, 24);
                  v165 = v267;
                  v164 = v267 + v237;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v163 + 1, 24);
                  v164 = &v251;
                  v165 = v267;
                }
              }

              v166 = &v165[24 * v268];
              v167 = *v164;
              *(v166 + 2) = *(v164 + 2);
              *v166 = v167;
              ++v268;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
      if (v265)
      {
        mlir::InFlightDiagnostic::report(&v265);
      }

      if (v276 == 1)
      {
        if (v275 != &v276)
        {
          free(v275);
        }

        v168 = __p;
        if (__p)
        {
          v169 = v274;
          v170 = __p;
          if (v274 != __p)
          {
            do
            {
              v169 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v169 - 1);
            }

            while (v169 != v168);
            v170 = __p;
          }

          v274 = v168;
          operator delete(v170);
        }

        v171 = v271;
        if (!v271)
        {
          goto LABEL_344;
        }

        v172 = v272;
        v173 = v271;
        if (v272 == v271)
        {
LABEL_343:
          v272 = v171;
          operator delete(v173);
LABEL_344:
          if (v267 != v270)
          {
            free(v267);
          }

          goto LABEL_258;
        }

        do
        {
          v175 = *--v172;
          v174 = v175;
          *v172 = 0;
          if (v175)
          {
            MEMORY[0x1AC55A040](v174, 0x1000C8077774924);
          }
        }

        while (v172 != v171);
LABEL_342:
        v173 = v271;
        goto LABEL_343;
      }
    }

    else
    {
      if (v262 == 4)
      {
        goto LABEL_257;
      }

      v247 = 259;
      mlir::OpState::emitOpError(&v257, &v244, &v265);
      if (v265)
      {
        LODWORD(v251) = 3;
        v253 = 21;
        v176 = &v251;
        v177 = v267;
        if (v268 >= v269)
        {
          if (v267 <= &v251 && v267 + 24 * v268 > &v251)
          {
            v223 = &v251 - v267;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v177 = v267;
            v176 = v267 + v223;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
            v176 = &v251;
            v177 = v267;
          }
        }

        v178 = &v177[24 * v268];
        v179 = *v176;
        *(v178 + 2) = *(v176 + 2);
        *v178 = v179;
        v180 = ++v268;
        if (v265)
        {
          LODWORD(v251) = 5;
          v252 = v262;
          v181 = &v251;
          v182 = v267;
          if (v180 >= v269)
          {
            if (v267 <= &v251 && v267 + 24 * v180 > &v251)
            {
              v228 = &v251 - v267;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v180 + 1, 24);
              v182 = v267;
              v181 = v267 + v228;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v180 + 1, 24);
              v181 = &v251;
              v182 = v267;
            }
          }

          v183 = &v182[24 * v268];
          v184 = *v181;
          *(v183 + 2) = *(v181 + 2);
          *v183 = v184;
          v185 = ++v268;
          if (v265)
          {
            LODWORD(v251) = 3;
            v252 = " values.";
            v253 = 8;
            v186 = &v251;
            v187 = v267;
            if (v185 >= v269)
            {
              if (v267 <= &v251 && v267 + 24 * v185 > &v251)
              {
                v234 = &v251 - v267;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v185 + 1, 24);
                v187 = v267;
                v186 = v267 + v234;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v185 + 1, 24);
                v186 = &v251;
                v187 = v267;
              }
            }

            v188 = &v187[24 * v268];
            v189 = *v186;
            *(v188 + 2) = *(v186 + 2);
            *v188 = v189;
            ++v268;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
      if (v265)
      {
        mlir::InFlightDiagnostic::report(&v265);
      }

      if (v276 == 1)
      {
        if (v275 != &v276)
        {
          free(v275);
        }

        v190 = __p;
        if (__p)
        {
          v191 = v274;
          v192 = __p;
          if (v274 != __p)
          {
            do
            {
              v191 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v191 - 1);
            }

            while (v191 != v190);
            v192 = __p;
          }

          v274 = v190;
          operator delete(v192);
        }

        v171 = v271;
        if (!v271)
        {
          goto LABEL_344;
        }

        v193 = v272;
        v173 = v271;
        if (v272 == v271)
        {
          goto LABEL_343;
        }

        do
        {
          v195 = *--v193;
          v194 = v195;
          *v193 = 0;
          if (v195)
          {
            MEMORY[0x1AC55A040](v194, 0x1000C8077774924);
          }
        }

        while (v193 != v171);
        goto LABEL_342;
      }
    }

LABEL_258:
    v146 = v261;
    if (v261 != v263)
    {
LABEL_259:
      free(v146);
      return v1;
    }

    return v1;
  }

  v264 = 259;
  mlir::OpState::emitOpError(&v257, &v261, &v265);
  if (v265)
  {
    LODWORD(v244) = 2;
    v245 = v18;
    v19 = &v244;
    v20 = v267;
    if (v268 >= v269)
    {
      if (v267 <= &v244 && v267 + 24 * v268 > &v244)
      {
        v224 = &v244 - v267;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
        v20 = v267;
        v19 = (v267 + v224);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v268 + 1, 24);
        v19 = &v244;
        v20 = v267;
      }
    }

    v21 = &v20[24 * v268];
    v22 = *v19;
    *(v21 + 2) = v19[2];
    *v21 = v22;
    v23 = ++v268;
    if (v265)
    {
      LODWORD(v244) = 3;
      v245 = ".";
      v246 = 1;
      v24 = &v244;
      v25 = v267;
      if (v23 >= v269)
      {
        if (v267 <= &v244 && v267 + 24 * v23 > &v244)
        {
          v229 = &v244 - v267;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v23 + 1, 24);
          v25 = v267;
          v24 = (v267 + v229);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v267, v270, v23 + 1, 24);
          v24 = &v244;
          v25 = v267;
        }
      }

      v26 = &v25[24 * v268];
      v27 = *v24;
      *(v26 + 2) = v24[2];
      *v26 = v27;
      ++v268;
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v265);
  if (v265)
  {
    mlir::InFlightDiagnostic::report(&v265);
  }

  if (v276 == 1)
  {
    if (v275 != &v276)
    {
      free(v275);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v274;
      v30 = __p;
      if (v274 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v274 = v28;
      operator delete(v30);
    }

    v31 = v271;
    if (v271)
    {
      v32 = v272;
      v33 = v271;
      if (v272 != v271)
      {
        do
        {
          v76 = *--v32;
          v75 = v76;
          *v32 = 0;
          if (v76)
          {
            MEMORY[0x1AC55A040](v75, 0x1000C8077774924);
          }
        }

        while (v32 != v31);
        goto LABEL_338;
      }

LABEL_339:
      v272 = v31;
      operator delete(v33);
    }

LABEL_340:
    v146 = v267;
    if (v267 == v270)
    {
      return v1;
    }

    goto LABEL_259;
  }

  return v1;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v213[8] = *MEMORY[0x1E69E9840];
  v184 = a4;
  v185 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = *(a7 + 4);
  }

  else
  {
    v18 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v174 = a6;
  LOBYTE(v175) = 0;
  v176 = 0;
  v177 = v16;
  v178 = v17;
  v179 = v18;
  v180 = a9;
  v19 = a5;
  v181 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v174);
    if (v176 == 1)
    {
      v176 = 0;
    }

    mlir::OperationName::OperationName(&v175, "mps.depthwise_conv_3d_data_gradient", 35, Context);
    v176 = 1;
    v19 = v185;
  }

  v182 = a4;
  v183 = a5;
  if (v19 < 2 || (v21 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv3DDataGradientOpAdaptor::verify(&v174, v21)))
  {
    v42 = mlir::Float32Type::get(this, a2);
LABEL_25:
    v43 = mlir::UnrankedTensorType::get(v42);
    goto LABEL_26;
  }

  v22 = mlir::ValueRange::dereference_iterator(&v184, 0);
  v23 = mlir::ValueRange::dereference_iterator(&v184, 1);
  v24 = 0;
  if (v185 == 3)
  {
    v24 = mlir::ValueRange::dereference_iterator(&v184, 2);
  }

  v25 = v177;
  v26 = *(&v178 + 1);
  v166 = *(&v177 + 1);
  v167 = v178;
  v165 = v179;
  v28 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  v199 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = v199;
  v200 = v28;
  mlir::ValueRange::ValueRange(&v211, &v199, 2uLL);
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v27);
  v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v28);
  if (!v30 || ((v32 = *(*v30 + 136), v32 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) ? (v33 = v31 == 0) : (v33 = 1), v33 || *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
  {
    v42 = v29;
    goto LABEL_25;
  }

  v164 = v26;
  v208 = v210;
  v209 = 0x500000000;
  if (!v24)
  {
    if (v32 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v48 = v30;
    }

    else
    {
      v48 = 0;
    }

    v169 = v48;
    if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v49 = v28;
    }

    else
    {
      v49 = 0;
    }

    v168 = v49;
    Value = mlir::ArrayAttr::getValue(&v169);
    v52 = v51;
    v205 = v207;
    v206 = 0x500000000;
    v202 = v204;
    v203 = 0x500000000;
    v199 = v201;
    v200 = 0x600000000;
    v196 = v198;
    v197 = 0x300000000;
    v193 = v195;
    v194 = 0x300000000;
    v172 = v166;
    v173 = v165;
    v170 = v25;
    v171 = v167;
    if (v25)
    {
      Int = mlir::IntegerAttr::getInt(&v170);
      v54 = v200;
      if (v200 == 6)
      {
        v55 = v197;
        v56 = v197 > 3;
        if (v197 == 3)
        {
          goto LABEL_48;
        }

        goto LABEL_58;
      }

      if (v200 > 6 || HIDWORD(v200) <= 5 && (llvm::SmallVectorBase<unsigned int>::grow_pod(&v199, v201, 6uLL, 8), v54 = v200, v200 == 6))
      {
LABEL_57:
        LODWORD(v200) = 6;
        v55 = v197;
        v56 = v197 > 3;
        if (v197 == 3)
        {
LABEL_48:
          v57 = v194;
          v58 = v194 > 3;
          if (v194 == 3)
          {
            goto LABEL_49;
          }

          goto LABEL_76;
        }

LABEL_58:
        if (v56)
        {
          v64 = 3;
        }

        else
        {
          v71 = v55;
          v72 = v55;
          if (HIDWORD(v197) <= 2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v196, v198, 3uLL, 8);
            v71 = v197;
            v72 = v197;
          }

          memset_pattern16(v196 + 8 * v71, &unk_1A75989B0, 24 - 8 * v55);
          v64 = v72 - v55 + 3;
        }

        LODWORD(v197) = v64;
        v57 = v194;
        v58 = v194 > 3;
        if (v194 == 3)
        {
LABEL_49:
          v59 = v206;
          v60 = v206 > 5;
          if (v206 == 5)
          {
            goto LABEL_50;
          }

          goto LABEL_83;
        }

LABEL_76:
        if (v58)
        {
          v73 = 3;
        }

        else
        {
          v74 = v57;
          v75 = v57;
          if (HIDWORD(v194) <= 2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v193, v195, 3uLL, 8);
            v74 = v194;
            v75 = v194;
          }

          memset_pattern16(v193 + 8 * v74, &unk_1A75989B0, 24 - 8 * v57);
          v73 = v75 - v57 + 3;
        }

        LODWORD(v194) = v73;
        v59 = v206;
        v60 = v206 > 5;
        if (v206 == 5)
        {
LABEL_50:
          v61 = v203;
          v62 = v203 > 5;
          if (v203 == 5)
          {
            goto LABEL_51;
          }

          goto LABEL_88;
        }

LABEL_83:
        if (!v60)
        {
          if (HIDWORD(v206) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v207, 5uLL, 8), v59 = v206, v206 != 5))
          {
            bzero(v205 + 8 * v59, 40 - 8 * v59);
          }
        }

        LODWORD(v206) = 5;
        v61 = v203;
        v62 = v203 > 5;
        if (v203 == 5)
        {
LABEL_51:
          v63 = v52 - 4;
          if (v52 < 4)
          {
            goto LABEL_131;
          }

          goto LABEL_93;
        }

LABEL_88:
        if (!v62)
        {
          if (HIDWORD(v203) > 4 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v202, v204, 5uLL, 8), v61 = v203, v203 != 5))
          {
            bzero(v202 + 8 * v61, 40 - 8 * v61);
          }
        }

        LODWORD(v203) = 5;
        v63 = v52 - 4;
        if (v52 < 4)
        {
LABEL_131:
          if (v173)
          {
            if (mlir::DenseElementsAttr::getNumElements(&v173) == 3)
            {
              LODWORD(v197) = 0;
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v211, v173, 0);
              v102 = v173;
              NumElements = mlir::DenseElementsAttr::getNumElements(&v173);
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v186, v102, NumElements);
              for (; v213[0] != v188[0]; ++v213[0])
              {
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v211, &v189);
                if (v190 > 0x40)
                {
                  v142 = *v189;
                }

                else if (v190)
                {
                  v142 = (v189 << -v190) >> -v190;
                }

                else
                {
                  v142 = 0;
                }

                v143 = v197;
                if (v197 >= HIDWORD(v197))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v196, v198, v197 + 1, 8);
                  v143 = v197;
                }

                *(v196 + v143) = v142;
                LODWORD(v197) = v197 + 1;
                if (v190 >= 0x41 && v189)
                {
                  MEMORY[0x1AC55A040](v189, 0x1000C8000313F17);
                }
              }
            }
          }

          if (v166)
          {
            if (mlir::DenseElementsAttr::getNumElements(&v172) == 3)
            {
              LODWORD(v194) = 0;
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v211, v172, 0);
              v104 = v172;
              v105 = mlir::DenseElementsAttr::getNumElements(&v172);
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v186, v104, v105);
              for (; v213[0] != v188[0]; ++v213[0])
              {
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v211, &v189);
                if (v190 > 0x40)
                {
                  v144 = *v189;
                }

                else if (v190)
                {
                  v144 = (v189 << -v190) >> -v190;
                }

                else
                {
                  v144 = 0;
                }

                v145 = v194;
                if (v194 >= HIDWORD(v194))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v193, v195, v194 + 1, 8);
                  v145 = v194;
                }

                *(v193 + v145) = v144;
                LODWORD(v194) = v194 + 1;
                if (v190 >= 0x41 && v189)
                {
                  MEMORY[0x1AC55A040](v189, 0x1000C8000313F17);
                }
              }
            }
          }

          if (v167)
          {
            if (mlir::DenseElementsAttr::getNumElements(&v171) == 6)
            {
              LODWORD(v200) = 0;
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v211, v171, 0);
              v106 = v171;
              v107 = mlir::DenseElementsAttr::getNumElements(&v171);
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v186, v106, v107);
              for (; v213[0] != v188[0]; ++v213[0])
              {
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v211, &v189);
                if (v190 > 0x40)
                {
                  v146 = *v189;
                }

                else if (v190)
                {
                  v146 = (v189 << -v190) >> -v190;
                }

                else
                {
                  v146 = 0;
                }

                v147 = v200;
                if (v200 >= HIDWORD(v200))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v199, v201, v200 + 1, 8);
                  v147 = v200;
                }

                *(v199 + v147) = v146;
                LODWORD(v200) = v200 + 1;
                if (v190 >= 0x41 && v189)
                {
                  MEMORY[0x1AC55A040](v189, 0x1000C8000313F17);
                }
              }
            }
          }

          if (v164)
          {
            v108 = *(v164 + 8);
          }

          else
          {
            v108 = 2;
          }

          v109 = mlir::ArrayAttr::getValue(&v168);
          v189 = &v191;
          v191 = xmmword_1A75F4140;
          v192 = unk_1A75F4150;
          v190 = 0x400000004;
          if (Int >= 0)
          {
            v111 = v52;
          }

          else
          {
            v111 = 0;
          }

          if (v110 == 4)
          {
            v112 = Int - v111 + 4;
            if (v112 <= 3)
            {
              *&v191 = *(v109 + 8 * v112);
              if (v112)
              {
                v113 = -1;
              }

              else
              {
                v113 = 0;
              }

              *(&v191 + 1) = *(v109 + 8 * v113 + 8);
              if (v112 <= 1)
              {
                v114 = 0;
              }

              else
              {
                v114 = -1;
              }

              *&v192 = *(v109 + 8 * v114 + 16);
              if (v112 <= 2)
              {
                v115 = 0;
              }

              else
              {
                v115 = -1;
              }

              *(&v192 + 1) = *(v109 + 8 * v115 + 24);
            }
          }

          v186 = v188;
          v187 = 0x500000000;
          v116 = v206;
          v211 = v213;
          v212 = 0x800000000;
          if (!v206)
          {
            goto LABEL_256;
          }

          if (v206 < 9)
          {
            v117 = 0;
            v118 = v213;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v211, v213, v206, 8);
            v117 = v212;
            v118 = v211;
          }

          if (v116 != v117)
          {
            bzero(v118 + 8 * v117, 8 * (v116 - v117));
          }

          LODWORD(v212) = v116;
          if (v116 < 4)
          {
LABEL_254:
            if (v118 != v213)
            {
              free(v118);
            }

LABEL_256:
            v43 = mlir::RankedTensorType::get(v186, v187, v29, 0);
            v161 = v43;
            if (v186 != v188)
            {
              free(v186);
              v43 = v161;
            }

            if (v189 != &v191)
            {
              free(v189);
              v43 = v161;
            }

            if (v193 != v195)
            {
              free(v193);
              v43 = v161;
            }

            if (v196 != v198)
            {
              free(v196);
              v43 = v161;
            }

            if (v199 != v201)
            {
              free(v199);
              v43 = v161;
            }

            if (v202 != v204)
            {
              free(v202);
              v43 = v161;
            }

            if (v205 != v207)
            {
              free(v205);
              v43 = v161;
            }

            goto LABEL_270;
          }

          v119 = v116 - 3;
          v120 = v205;
          v121 = v116 - 4;
          if (v116 != 4)
          {
            v122 = 0;
            if (v121 < 4)
            {
              goto LABEL_171;
            }

            if ((v118 - v205) <= 0x1F)
            {
              goto LABEL_171;
            }

            v122 = v121 & 0xFFFFFFFFFFFFFFFCLL;
            v123 = (v205 + 16);
            v124 = (v118 + 16);
            v125 = v121 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v126 = *v123;
              *(v124 - 1) = *(v123 - 1);
              *v124 = v126;
              v123 += 2;
              v124 += 2;
              v125 -= 4;
            }

            while (v125);
            if (v121 != v122)
            {
LABEL_171:
              v127 = v116 - v122 - 4;
              v128 = v122;
              v129 = (v118 + 8 * v122);
              v130 = &v120[v128];
              do
              {
                v131 = *v130++;
                *v129++ = v131;
                --v127;
              }

              while (v127);
            }
          }

          v132 = v189;
          *(v118 + v121) = *v189;
          v133 = v196;
          v134 = v193;
          v135 = v199;
          v136 = v120[v119];
          v137 = 0x8000000000000000;
          v138 = 0x8000000000000000;
          if (v136 != 0x8000000000000000)
          {
            v139 = *v196;
            v140 = v132[1];
            if (v108 > 1)
            {
              if (v108 == 4 || v108 == 2)
              {
                v136 *= v139;
              }

LABEL_219:
              v138 = v136;
              if (v140 == 0x8000000000000000)
              {
                goto LABEL_221;
              }

              goto LABEL_220;
            }

            v141 = *v193 * (v140 - 1) + 1;
            if (v108)
            {
              if (v108 == 1)
              {
                v136 = v141 + v139 * (v136 - 1);
                if (v140 == 0x8000000000000000)
                {
                  v136 = 0x8000000000000000;
                }
              }

              goto LABEL_219;
            }

            v138 = 0x8000000000000000;
            if (v140 != 0x8000000000000000)
            {
              v136 = v141 + v139 * (v136 - 1) - (*v199 + *(v199 + 1));
LABEL_220:
              v138 = v136 & ~(v136 >> 63);
            }
          }

LABEL_221:
          *(v118 + v119) = v138;
          v148 = v120[v116 - 2];
          if (v148 == 0x8000000000000000)
          {
            goto LABEL_233;
          }

          v149 = v133[1];
          v150 = v132[2];
          if (v108 > 1)
          {
            if (v108 == 2 || v108 == 4)
            {
              v148 *= v149;
            }
          }

          else
          {
            v151 = v134[1] * (v150 - 1) + 1;
            if (!v108)
            {
              v137 = 0x8000000000000000;
              if (v150 == 0x8000000000000000)
              {
LABEL_233:
                *(v118 + v116 - 2) = v137;
                v152 = v120[v116 - 1];
                v153 = 0x8000000000000000;
                if (v152 != 0x8000000000000000)
                {
                  v154 = v133[2];
                  v155 = v132[3];
                  if (v108 > 1)
                  {
                    if (v108 == 2 || v108 == 4)
                    {
                      v152 *= v154;
                    }
                  }

                  else
                  {
                    v156 = v134[2] * (v155 - 1) + 1;
                    if (!v108)
                    {
                      v153 = 0x8000000000000000;
                      if (v155 == 0x8000000000000000)
                      {
                        goto LABEL_245;
                      }

                      v152 = v156 + v154 * (v152 - 1) - (v135[4] + v135[5]);
                      goto LABEL_244;
                    }

                    if (v108 == 1)
                    {
                      v152 = v156 + v154 * (v152 - 1);
                      if (v155 == 0x8000000000000000)
                      {
                        v152 = 0x8000000000000000;
                      }
                    }
                  }

                  v153 = v152;
                  if (v155 != 0x8000000000000000)
                  {
LABEL_244:
                    v153 = v152 & ~(v152 >> 63);
                  }
                }

LABEL_245:
                *(v118 + v116 - 1) = v153;
                v157 = v187;
                if (v187 != v116)
                {
                  if (v187 <= v116)
                  {
                    if (HIDWORD(v187) < v116)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v188, v116, 8);
                      v157 = v187;
                    }

                    if (v157 != v116)
                    {
                      bzero(v186 + 8 * v157, 8 * (v116 - v157));
                    }
                  }

                  LODWORD(v187) = v116;
                  v118 = v211;
                }

                v158 = v202;
                v159 = v186;
                do
                {
                  v160 = *v158++;
                  *v159++ = *(v118 + v160);
                  --v116;
                }

                while (v116);
                goto LABEL_254;
              }

              v148 = v151 + v149 * (v148 - 1) - (v135[2] + v135[3]);
LABEL_232:
              v137 = v148 & ~(v148 >> 63);
              goto LABEL_233;
            }

            if (v108 == 1)
            {
              if (v150 == 0x8000000000000000)
              {
                v148 = 0x8000000000000000;
              }

              else
              {
                v148 = v151 + v149 * (v148 - 1);
              }
            }
          }

          v137 = v148;
          if (v150 == 0x8000000000000000)
          {
            goto LABEL_233;
          }

          goto LABEL_232;
        }

LABEL_93:
        v76 = (v52 & (Int >> 63)) + Int;
        if (v76 <= v63)
        {
          v77 = v63;
        }

        else
        {
          v77 = (v52 & (Int >> 63)) + Int;
        }

        if (v76 >= v52)
        {
          v78 = v63;
        }

        else
        {
          v78 = v77;
        }

        v79 = v52 - 4;
        if (v52 != 4)
        {
          if (v52 == 5)
          {
            goto LABEL_110;
          }

          if (v52 <= HIDWORD(v203))
          {
            v80 = 5;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v202, v204, v52, 8);
            v80 = v203;
          }

          if (v52 != v80)
          {
            bzero(v202 + 8 * v80, 8 * (v52 - v80));
          }
        }

        LODWORD(v203) = v52;
LABEL_110:
        v81 = v202;
        v82 = v52 & 0x7FFFFFFFFFFFFFFCLL;
        v83 = vdupq_n_s64(v78);
        v84 = vdupq_n_s64(v79);
        v85 = xmmword_1A7598670;
        v86 = (v202 + 16);
        v87 = vdupq_n_s64(2uLL);
        v88 = vdupq_n_s64(1uLL);
        v89 = vdupq_n_s64(3uLL);
        v90 = vdupq_n_s64(4uLL);
        v91 = v52 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v92 = vaddq_s64(v85, v87);
          v86[-1] = vbslq_s8(vorrq_s8(vcgtq_s64(v85, v83), vcgtq_s64(v84, v85)), v85, vbslq_s8(vcgtq_s64(v83, v85), vaddq_s64(v85, v88), v84));
          *v86 = vbslq_s8(vorrq_s8(vcgtq_s64(v92, v83), vcgtq_s64(v84, v92)), v92, vbslq_s8(vcgtq_s64(v83, v92), vaddq_s64(v85, v89), v84));
          v85 = vaddq_s64(v85, v90);
          v86 += 2;
          v91 -= 4;
        }

        while (v91);
        for (; v52 != v82; ++v82)
        {
          if (v82 < v78)
          {
            v93 = v82 + 1;
          }

          else
          {
            v93 = v52 - 4;
          }

          if (v82 < v79 || v82 > v78)
          {
            v93 = v82;
          }

          v81[v82] = v93;
        }

        v95 = v206;
        if (v52 != v206)
        {
          if (v52 >= v206)
          {
            if (v52 > HIDWORD(v206))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v207, v52, 8);
              v95 = v206;
            }

            if (v52 != v95)
            {
              bzero(v205 + 8 * v95, 8 * (v52 - v95));
            }
          }

          LODWORD(v206) = v52;
        }

        v96 = v202;
        v97 = v205;
        v98 = v52;
        do
        {
          v100 = *Value++;
          v99 = v100;
          v101 = *v96++;
          v97[v101] = v99;
          --v98;
        }

        while (v98);
        goto LABEL_131;
      }
    }

    else
    {
      v54 = 0;
      Int = -4;
    }

    bzero(v199 + 8 * v54, 48 - 8 * v54);
    goto LABEL_57;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v24, &v208) & 1) == 0)
  {
    v43 = mlir::UnrankedTensorType::get(v29);
LABEL_270:
    v69 = 0;
    goto LABEL_271;
  }

  v34 = v209;
  if (!v209)
  {
    goto LABEL_62;
  }

  v35 = v208;
  v36 = (v209 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v208;
  if (v36 >= 3)
  {
    v38 = v36 + 1;
    v37 = &v208->i8[8 * (v38 & 0x3FFFFFFFFFFFFFFCLL)];
    v39 = v208 + 1;
    v40.i64[0] = -1;
    v40.i64[1] = -1;
    v41 = v38 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v46 = vmovn_s64(vceqq_s64(v39[-1], v40));
      if (v46.i8[0])
      {
        v39[-1].i64[0] = 0x8000000000000000;
        if ((v46.i8[4] & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if ((v46.i8[4] & 1) == 0)
      {
LABEL_32:
        v47 = vmovn_s64(vceqq_s64(*v39, v40));
        if (v47.i8[0])
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v39[-1].i64[1] = 0x8000000000000000;
      v47 = vmovn_s64(vceqq_s64(*v39, v40));
      if (v47.i8[0])
      {
LABEL_33:
        v39->i64[0] = 0x8000000000000000;
        if (v47.i8[4])
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

LABEL_37:
      if (v47.i8[4])
      {
LABEL_38:
        v39->i64[1] = 0x8000000000000000;
      }

LABEL_29:
      v39 += 2;
      v41 -= 4;
      if (!v41)
      {
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_62;
        }

        break;
      }
    }
  }

  v70 = &v35->i8[8 * v34];
  do
  {
    if (*v37 == -1)
    {
      *v37 = 0x8000000000000000;
    }

    v37 += 8;
  }

  while (v37 != v70);
LABEL_62:
  v211 = v27;
  v65 = mlir::ArrayAttr::getValue(&v211);
  v211 = v213;
  v212 = 0x500000000;
  if (v67)
  {
    v43 = mlir::RankedTensorType::get(v211, v212, v29, 0);
  }

  else
  {
    v43 = 0;
  }

  if (v211 != v213)
  {
    v68 = v43;
    free(v211);
    v43 = v68;
  }

  v69 = !v67;
LABEL_271:
  if (v208 != v210)
  {
    v162 = v43;
    free(v208);
    v43 = v162;
  }

  if (v69)
  {
    return 0;
  }

LABEL_26:
  v44 = *(a11 + 8);
  if (v44 >= *(a11 + 12))
  {
    v163 = v43;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v44 + 1, 8);
    v43 = v163;
    v44 = *(a11 + 8);
  }

  *(*a11 + 8 * v44) = v43;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::DepthwiseConv3DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v58 = a1[4];
  if (!v58)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v67;
      v22 = __p;
      if (v67 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v67 = v20;
      operator delete(v22);
    }

    v23 = v64;
    if (v64)
    {
      v24 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v54 = a1[5];
  if (!v54)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v67;
      v30 = __p;
      if (v67 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v67 = v28;
      operator delete(v30);
    }

    v23 = v64;
    if (v64)
    {
      v31 = v65;
      v25 = v64;
      if (v65 != v64)
      {
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

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  if (!a1[6])
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'padding_style'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v67;
      v36 = __p;
      if (v67 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v67 = v34;
      operator delete(v36);
    }

    v23 = v64;
    if (v64)
    {
      v37 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v65 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v19;
  }

  v53 = a1[7];
  if (!v53)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'strides'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v67;
      v42 = __p;
      if (v67 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v67 = v40;
      operator delete(v42);
    }

    v23 = v64;
    if (v64)
    {
      v43 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v45 = *--v43;
          v44 = v45;
          *v43 = 0;
          if (v45)
          {
            MEMORY[0x1AC55A040](v44, 0x1000C8077774924);
          }
        }

        while (v43 != v23);
LABEL_85:
        v25 = v64;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
  v56 = v4;
  Type = mlir::ElementsAttr::getType(&v55);
  v60 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
  v61 = v5;
  Shape = mlir::ShapedType::getShape(&v60);
  v59 = 3;
  if (v7 == 1 && *Shape == v59)
  {
    v48 = v53;
    Value = mlir::ArrayAttr::getValue(&v48);
    v50 = v8;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v58);
      v56 = v9;
      Type = mlir::ElementsAttr::getType(&v55);
      v60 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
      v61 = v10;
      v11 = mlir::ShapedType::getShape(&v60);
      v59 = 3;
      if (v12 == 1 && *v11 == v59 && (v48 = v58, Value = mlir::ArrayAttr::getValue(&v48), v50 = v13, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
        v56 = v14;
        Type = mlir::ElementsAttr::getType(&v55);
        v60 = mlir::BaseMemRefType::operator mlir::ShapedType(&Type);
        v61 = v15;
        v16 = mlir::ShapedType::getShape(&v60);
        v59 = 6;
        if (v17 == 1 && *v16 == v59 && (v48 = v54, Value = mlir::ArrayAttr::getValue(&v48), v50 = v18, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          if (!v3)
          {
            return 1;
          }

          v55 = v3;
          v60 = mlir::AffineMapAttr::getValue(&v55);
          if (mlir::Type::isSignedInteger(&v60, 32))
          {
            return 1;
          }

          v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'channelAxis' failed to satisfy constraint: 32-bit signed integer attribute";
        }

        else
        {
          v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        }
      }

      else
      {
        v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      }

      v55 = v47;
      v57 = 259;
      mlir::emitError(a2, &v55, &v60);
      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
      return v19;
    }
  }

  v55 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v57 = 259;
  mlir::emitError(a2, &v55, &v60);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DWeightsGradientOp::verify(uint64_t **this)
{
  v247 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[9];
  v4 = v3[7];
  v5 = v3[3];
  v6 = v3[11];
  v226 = (*this)[14];
  v227 = v2;
  v7 = v2[11];
  v224 = v2[12];
  v225 = v7;
  if (v226)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v226) != 3 || (mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v215, v226, 0), v1 = v226, NumElements = mlir::DenseElementsAttr::getNumElements(&v226), mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v221, v1, NumElements), v217 == v223))
    {
LABEL_4:
      if (!v225)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v215, &v219);
      if (v220 > 0x40)
      {
        if (*v219 <= 0)
        {
          goto LABEL_103;
        }
      }

      else if (!v220 || (v219 << -v220) >> -v220 <= 0)
      {
LABEL_103:
        v234 = 259;
        mlir::OpState::emitOpError(&v227, &v231, &v235);
        if (v220 > 0x40)
        {
          v78 = *v219;
          if (!v235)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v220)
          {
            v78 = (v219 << -v220) >> -v220;
          }

          else
          {
            v78 = 0;
          }

          if (!v235)
          {
            goto LABEL_119;
          }
        }

        LODWORD(v228) = 2;
        v229 = v78;
        v80 = v237;
        if (v238 >= v239)
        {
          if (v237 <= &v228 && v237 + 24 * v238 > &v228)
          {
            v97 = &v228 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v80 = v237;
            v81 = (v237 + v97);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v81 = &v228;
            v80 = v237;
          }
        }

        else
        {
          v81 = &v228;
        }

        v82 = &v80[24 * v238];
        v83 = *v81;
        *(v82 + 2) = v81[2];
        *v82 = v83;
        v84 = ++v238;
        if (v235)
        {
          LODWORD(v228) = 3;
          v229 = ", all values should be positive.";
          v230 = 32;
          v85 = v237;
          if (v84 >= v239)
          {
            if (v237 <= &v228 && v237 + 24 * v84 > &v228)
            {
              v98 = &v228 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v84 + 1, 24);
              v85 = v237;
              v86 = (v237 + v98);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v84 + 1, 24);
              v86 = &v228;
              v85 = v237;
            }
          }

          else
          {
            v86 = &v228;
          }

          v87 = &v85[24 * v238];
          v88 = *v86;
          *(v87 + 2) = v86[2];
          *v87 = v88;
          ++v238;
        }

LABEL_119:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
        if (v235)
        {
          mlir::InFlightDiagnostic::report(&v235);
        }

        if (v246 == 1)
        {
          if (v245 != &v246)
          {
            free(v245);
          }

          v89 = __p;
          if (__p)
          {
            v90 = v244;
            v91 = __p;
            if (v244 != __p)
            {
              do
              {
                v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
              }

              while (v90 != v89);
              v91 = __p;
            }

            v244 = v89;
            operator delete(v91);
          }

          v92 = v241;
          if (v241)
          {
            v93 = v242;
            v94 = v241;
            if (v242 != v241)
            {
              do
              {
                v96 = *--v93;
                v95 = v96;
                *v93 = 0;
                if (v96)
                {
                  MEMORY[0x1AC55A040](v95, 0x1000C8077774924);
                }
              }

              while (v93 != v92);
              v94 = v241;
            }

            v242 = v92;
            operator delete(v94);
          }

          if (v237 != v240)
          {
            free(v237);
          }
        }

        v79 = 0;
        if (v220 < 0x41)
        {
          goto LABEL_142;
        }

LABEL_140:
        if (v219)
        {
          MEMORY[0x1AC55A040](v219, 0x1000C8000313F17);
        }

        goto LABEL_142;
      }

      v79 = 1;
      if (v220 >= 0x41)
      {
        goto LABEL_140;
      }

LABEL_142:
      if (!v79)
      {
        return v1;
      }

      if (++v217 == v223)
      {
        goto LABEL_4;
      }
    }
  }

  if (!v225)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (mlir::DenseElementsAttr::getNumElements(&v225) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v215, v225, 0);
    v9 = v225;
    v10 = mlir::DenseElementsAttr::getNumElements(&v225);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v221, v9, v10);
    while (v217 != v223)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v215, &v219);
      if (v220 > 0x40)
      {
        if (*v219 <= 0)
        {
          goto LABEL_156;
        }
      }

      else if (!v220 || (v219 << -v220) >> -v220 <= 0)
      {
LABEL_156:
        v234 = 259;
        mlir::OpState::emitOpError(&v227, &v231, &v235);
        if (v220 > 0x40)
        {
          v99 = *v219;
          if (!v235)
          {
            goto LABEL_172;
          }
        }

        else
        {
          if (v220)
          {
            v99 = (v219 << -v220) >> -v220;
          }

          else
          {
            v99 = 0;
          }

          if (!v235)
          {
            goto LABEL_172;
          }
        }

        LODWORD(v228) = 2;
        v229 = v99;
        v101 = v237;
        if (v238 >= v239)
        {
          if (v237 <= &v228 && v237 + 24 * v238 > &v228)
          {
            v118 = &v228 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v101 = v237;
            v102 = (v237 + v118);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v102 = &v228;
            v101 = v237;
          }
        }

        else
        {
          v102 = &v228;
        }

        v103 = &v101[24 * v238];
        v104 = *v102;
        *(v103 + 2) = v102[2];
        *v103 = v104;
        v105 = ++v238;
        if (v235)
        {
          LODWORD(v228) = 3;
          v229 = ", all values should be positive.";
          v230 = 32;
          v106 = v237;
          if (v105 >= v239)
          {
            if (v237 <= &v228 && v237 + 24 * v105 > &v228)
            {
              v119 = &v228 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v105 + 1, 24);
              v106 = v237;
              v107 = (v237 + v119);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v105 + 1, 24);
              v107 = &v228;
              v106 = v237;
            }
          }

          else
          {
            v107 = &v228;
          }

          v108 = &v106[24 * v238];
          v109 = *v107;
          *(v108 + 2) = v107[2];
          *v108 = v109;
          ++v238;
        }

LABEL_172:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
        if (v235)
        {
          mlir::InFlightDiagnostic::report(&v235);
        }

        if (v246 == 1)
        {
          if (v245 != &v246)
          {
            free(v245);
          }

          v110 = __p;
          if (__p)
          {
            v111 = v244;
            v112 = __p;
            if (v244 != __p)
            {
              do
              {
                v111 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v111 - 1);
              }

              while (v111 != v110);
              v112 = __p;
            }

            v244 = v110;
            operator delete(v112);
          }

          v113 = v241;
          if (v241)
          {
            v114 = v242;
            v115 = v241;
            if (v242 != v241)
            {
              do
              {
                v117 = *--v114;
                v116 = v117;
                *v114 = 0;
                if (v117)
                {
                  MEMORY[0x1AC55A040](v116, 0x1000C8077774924);
                }
              }

              while (v114 != v113);
              v115 = v241;
            }

            v242 = v113;
            operator delete(v115);
          }

          if (v237 != v240)
          {
            free(v237);
          }
        }

        v100 = 0;
        if (v220 < 0x41)
        {
          goto LABEL_195;
        }

LABEL_193:
        if (v219)
        {
          MEMORY[0x1AC55A040](v219, 0x1000C8000313F17);
        }

        goto LABEL_195;
      }

      v100 = 1;
      if (v220 >= 0x41)
      {
        goto LABEL_193;
      }

LABEL_195:
      if (!v100)
      {
        return v1;
      }

      ++v217;
    }
  }

LABEL_9:
  if (v224 && mlir::DenseElementsAttr::getNumElements(&v224) == 6)
  {
    v214 = v6;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v215, v224, 0);
    v11 = v224;
    v12 = mlir::DenseElementsAttr::getNumElements(&v224);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v221, v11, v12);
    if (v217 == v223)
    {
LABEL_12:
      v6 = v214;
      goto LABEL_13;
    }

    v120 = 0x1000C8000313F17;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v215, &v219);
      if (v220 > 0x40)
      {
        break;
      }

      if (v220)
      {
        v122 = (v219 << -v220) >> -v220;
        if ((v122 & 0x8000000000000000) == 0)
        {
          goto LABEL_212;
        }

LABEL_215:
        v231 = v121;
        v234 = 259;
        mlir::OpState::emitOpError(&v227, &v231, &v235);
        if (v220 > 0x40)
        {
          v123 = *v219;
          if (!v235)
          {
            goto LABEL_228;
          }
        }

        else
        {
          if (v220)
          {
            v123 = (v219 << -v220) >> -v220;
          }

          else
          {
            v123 = 0;
          }

          if (!v235)
          {
            goto LABEL_228;
          }
        }

        LODWORD(v228) = 2;
        v229 = v123;
        v124 = v237;
        if (v238 >= v239)
        {
          if (v237 <= &v228 && v237 + 24 * v238 > &v228)
          {
            v143 = &v228 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v124 = v237;
            v125 = (v237 + v143);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v125 = &v228;
            v124 = v237;
          }
        }

        else
        {
          v125 = &v228;
        }

        v126 = &v124[24 * v238];
        v127 = *v125;
        *(v126 + 2) = v125[2];
        *v126 = v127;
        v128 = ++v238;
        if (v235)
        {
          LODWORD(v228) = 3;
          v229 = ", all values should be non-negative.";
          v230 = 36;
          v129 = v237;
          if (v128 >= v239)
          {
            if (v237 <= &v228 && v237 + 24 * v128 > &v228)
            {
              v144 = &v228 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v128 + 1, 24);
              v129 = v237;
              v130 = (v237 + v144);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v128 + 1, 24);
              v130 = &v228;
              v129 = v237;
            }
          }

          else
          {
            v130 = &v228;
          }

          v131 = &v129[24 * v238];
          v132 = *v130;
          *(v131 + 2) = v130[2];
          *v131 = v132;
          ++v238;
        }

LABEL_228:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
        if (v235)
        {
          mlir::InFlightDiagnostic::report(&v235);
        }

        if (v246 == 1)
        {
          if (v245 != &v246)
          {
            free(v245);
          }

          v133 = v121;
          v134 = __p;
          if (__p)
          {
            v135 = v244;
            v136 = __p;
            if (v244 != __p)
            {
              do
              {
                v135 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v135 - 1);
              }

              while (v135 != v134);
              v136 = __p;
            }

            v244 = v134;
            operator delete(v136);
          }

          v137 = v241;
          if (v241)
          {
            v138 = v120;
            v139 = v242;
            v140 = v241;
            if (v242 != v241)
            {
              do
              {
                v142 = *--v139;
                v141 = v142;
                *v139 = 0;
                if (v142)
                {
                  MEMORY[0x1AC55A040](v141, 0x1000C8077774924);
                }
              }

              while (v139 != v137);
              v140 = v241;
            }

            v242 = v137;
            operator delete(v140);
            v120 = v138;
          }

          v121 = v133;
          if (v237 != v240)
          {
            free(v237);
          }
        }

        if (v220 >= 0x41)
        {
LABEL_249:
          if (v219)
          {
            MEMORY[0x1AC55A040](v219, v120);
          }
        }

LABEL_207:
        if (v122 < 0)
        {
          return v1;
        }
      }

      if (++v217 == v223)
      {
        goto LABEL_12;
      }
    }

    v122 = *v219;
    if ((*v219 & 0x8000000000000000) != 0)
    {
      goto LABEL_215;
    }

LABEL_212:
    if (v220 >= 0x41)
    {
      goto LABEL_249;
    }

    goto LABEL_207;
  }

LABEL_13:
  v231 = v227[2 * ((*(v227 + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(&v231, &v235);
  if (v236 > 0x40)
  {
    v15 = *v235;
    MEMORY[0x1AC55A040]();
    v14 = v15;
    if (!v4)
    {
LABEL_43:
      v228 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    if (v236)
    {
      v13 = (v235 << -v236) >> -v236;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = v13;
    if (!v4)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v16)
  {
    goto LABEL_43;
  }

  v17 = *(*v16 + 136);
  if (v17 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  v228 = v16;
  if (v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    mlir::ArrayAttr::getValue(&v228);
    v19 = v18;
    if (v18 <= 3)
    {
      v234 = 259;
      mlir::OpState::emitOpError(&v227, &v231, &v235);
      if (v235)
      {
        LODWORD(v215) = 2;
        v216 = v19;
        v20 = &v215;
        v21 = v237;
        if (v238 >= v239)
        {
          if (v237 <= &v215 && v237 + 24 * v238 > &v215)
          {
            v202 = &v215 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v21 = v237;
            v20 = (v237 + v202);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v20 = &v215;
            v21 = v237;
          }
        }

        v22 = &v21[24 * v238];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        v24 = ++v238;
        if (v235)
        {
          LODWORD(v215) = 3;
          v216 = ".";
          v217 = 1;
          v25 = &v215;
          v26 = v237;
          if (v24 >= v239)
          {
            if (v237 <= &v215 && v237 + 24 * v24 > &v215)
            {
              v204 = &v215 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v24 + 1, 24);
              v26 = v237;
              v25 = (v237 + v204);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v24 + 1, 24);
              v25 = &v215;
              v26 = v237;
            }
          }

          v27 = &v26[24 * v238];
          v28 = *v25;
          *(v27 + 2) = v25[2];
          *v27 = v28;
          ++v238;
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
      if (v235)
      {
        mlir::InFlightDiagnostic::report(&v235);
      }

      if (v246 == 1)
      {
        if (v245 != &v246)
        {
          free(v245);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v244;
          v31 = __p;
          if (v244 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v244 = v29;
          operator delete(v31);
        }

        v32 = v241;
        if (v241)
        {
          v33 = v242;
          v34 = v241;
          if (v242 != v241)
          {
            do
            {
              v75 = *--v33;
              v74 = v75;
              *v33 = 0;
              if (v75)
              {
                MEMORY[0x1AC55A040](v74, 0x1000C8077774924);
              }
            }

            while (v33 != v32);
            goto LABEL_324;
          }

          goto LABEL_325;
        }

        goto LABEL_326;
      }

      return v1;
    }

    if (v14 >= 0)
    {
      v147 = v18;
    }

    else
    {
      v147 = 0;
    }

    if ((v14 - v147) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v234 = 259;
      mlir::OpState::emitOpError(&v227, &v231, &v235);
      if (v235)
      {
        LODWORD(v215) = 2;
        v216 = v14;
        v148 = &v215;
        v149 = v237;
        if (v238 >= v239)
        {
          if (v237 <= &v215 && v237 + 24 * v238 > &v215)
          {
            v206 = &v215 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v149 = v237;
            v148 = (v237 + v206);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v148 = &v215;
            v149 = v237;
          }
        }

        v150 = &v149[24 * v238];
        v151 = *v148;
        *(v150 + 2) = v148[2];
        *v150 = v151;
        v152 = ++v238;
        if (v235)
        {
          LODWORD(v215) = 3;
          v216 = " for input rank ";
          v217 = 16;
          v153 = &v215;
          v154 = v237;
          if (v152 >= v239)
          {
            if (v237 <= &v215 && v237 + 24 * v152 > &v215)
            {
              v208 = &v215 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v152 + 1, 24);
              v154 = v237;
              v153 = (v237 + v208);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v152 + 1, 24);
              v153 = &v215;
              v154 = v237;
            }
          }

          v155 = &v154[24 * v238];
          v156 = *v153;
          *(v155 + 2) = v153[2];
          *v155 = v156;
          v157 = ++v238;
          if (v235)
          {
            LODWORD(v215) = 2;
            v216 = v19;
            v158 = &v215;
            v159 = v237;
            if (v157 >= v239)
            {
              if (v237 <= &v215 && v237 + 24 * v157 > &v215)
              {
                v210 = &v215 - v237;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v157 + 1, 24);
                v159 = v237;
                v158 = (v237 + v210);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v157 + 1, 24);
                v158 = &v215;
                v159 = v237;
              }
            }

            v160 = &v159[24 * v238];
            v161 = *v158;
            *(v160 + 2) = v158[2];
            *v160 = v161;
            v162 = ++v238;
            if (v235)
            {
              LODWORD(v215) = 3;
              v216 = ".";
              v217 = 1;
              v163 = &v215;
              v164 = v237;
              if (v162 >= v239)
              {
                if (v237 <= &v215 && v237 + 24 * v162 > &v215)
                {
                  v212 = &v215 - v237;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v162 + 1, 24);
                  v164 = v237;
                  v163 = (v237 + v212);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v162 + 1, 24);
                  v163 = &v215;
                  v164 = v237;
                }
              }

              v165 = &v164[24 * v238];
              v166 = *v163;
              *(v165 + 2) = v163[2];
              *v165 = v166;
              ++v238;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
      if (v235)
      {
        mlir::InFlightDiagnostic::report(&v235);
      }

      if (v246 == 1)
      {
        if (v245 != &v246)
        {
          free(v245);
        }

        v167 = __p;
        if (__p)
        {
          v168 = v244;
          v169 = __p;
          if (v244 != __p)
          {
            do
            {
              v168 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v168 - 1);
            }

            while (v168 != v167);
            v169 = __p;
          }

          v244 = v167;
          operator delete(v169);
        }

        v32 = v241;
        if (v241)
        {
          v170 = v242;
          v34 = v241;
          if (v242 != v241)
          {
            do
            {
              v172 = *--v170;
              v171 = v172;
              *v170 = 0;
              if (v172)
              {
                MEMORY[0x1AC55A040](v171, 0x1000C8077774924);
              }
            }

            while (v170 != v32);
            goto LABEL_324;
          }

          goto LABEL_325;
        }

        goto LABEL_326;
      }

      return v1;
    }
  }

LABEL_44:
  if (!v5 || (v35 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v219 = 0;
    goto LABEL_69;
  }

  v36 = *(*v35 + 136);
  if (v36 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v35 = 0;
  }

  v219 = v35;
  if (v36 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_69;
  }

  mlir::ArrayAttr::getValue(&v219);
  v38 = v37;
  if (v37 <= 3)
  {
    v234 = 259;
    mlir::OpState::emitOpError(&v227, &v231, &v235);
    if (v235)
    {
      LODWORD(v215) = 2;
      v216 = v38;
      v39 = &v215;
      v40 = v237;
      if (v238 >= v239)
      {
        if (v237 <= &v215 && v237 + 24 * v238 > &v215)
        {
          v203 = &v215 - v237;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
          v40 = v237;
          v39 = (v237 + v203);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
          v39 = &v215;
          v40 = v237;
        }
      }

      v41 = &v40[24 * v238];
      v42 = *v39;
      *(v41 + 2) = v39[2];
      *v41 = v42;
      v43 = ++v238;
      if (v235)
      {
        LODWORD(v215) = 3;
        v216 = ".";
        v217 = 1;
        v44 = &v215;
        v45 = v237;
        if (v43 >= v239)
        {
          if (v237 <= &v215 && v237 + 24 * v43 > &v215)
          {
            v205 = &v215 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v43 + 1, 24);
            v45 = v237;
            v44 = (v237 + v205);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v43 + 1, 24);
            v44 = &v215;
            v45 = v237;
          }
        }

        v46 = &v45[24 * v238];
        v47 = *v44;
        *(v46 + 2) = v44[2];
        *v46 = v47;
        ++v238;
      }
    }

    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
    if (v235)
    {
      mlir::InFlightDiagnostic::report(&v235);
    }

    if (v246 == 1)
    {
      if (v245 != &v246)
      {
        free(v245);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v244;
        v50 = __p;
        if (v244 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v244 = v48;
        operator delete(v50);
      }

      v32 = v241;
      if (v241)
      {
        v51 = v242;
        v34 = v241;
        if (v242 != v241)
        {
          do
          {
            v77 = *--v51;
            v76 = v77;
            *v51 = 0;
            if (v77)
            {
              MEMORY[0x1AC55A040](v76, 0x1000C8077774924);
            }
          }

          while (v51 != v32);
LABEL_324:
          v34 = v241;
          goto LABEL_325;
        }

        goto LABEL_325;
      }

      goto LABEL_326;
    }

    return v1;
  }

  v173 = v14 >= 0 ? v37 : 0;
  if ((v14 - v173) > 0xFFFFFFFFFFFFFFFBLL)
  {
LABEL_69:
    v231 = v233;
    v232 = 0x500000000;
    v1 = 1;
    if ((mlir::matchConstantWithIntVector<long long>(v6, &v231) & 1) != 0 && v232 != 4)
    {
      v218 = 259;
      mlir::OpState::emitOpError(&v227, &v215, &v235);
      if (v235)
      {
        LODWORD(v221) = 3;
        v223 = 21;
        v52 = &v221;
        v53 = v237;
        if (v238 >= v239)
        {
          if (v237 <= &v221 && v237 + 24 * v238 > &v221)
          {
            v199 = &v221 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v53 = v237;
            v52 = v237 + v199;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
            v52 = &v221;
            v53 = v237;
          }
        }

        v54 = &v53[24 * v238];
        v55 = *v52;
        *(v54 + 2) = *(v52 + 2);
        *v54 = v55;
        v56 = ++v238;
        if (v235)
        {
          LODWORD(v221) = 5;
          v222 = v232;
          v57 = &v221;
          v58 = v237;
          if (v56 >= v239)
          {
            if (v237 <= &v221 && v237 + 24 * v56 > &v221)
            {
              v200 = &v221 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v56 + 1, 24);
              v58 = v237;
              v57 = v237 + v200;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v56 + 1, 24);
              v57 = &v221;
              v58 = v237;
            }
          }

          v59 = &v58[24 * v238];
          v60 = *v57;
          *(v59 + 2) = *(v57 + 2);
          *v59 = v60;
          v61 = ++v238;
          if (v235)
          {
            LODWORD(v221) = 3;
            v222 = " values.";
            v223 = 8;
            v62 = &v221;
            v63 = v237;
            if (v61 >= v239)
            {
              if (v237 <= &v221 && v237 + 24 * v61 > &v221)
              {
                v201 = &v221 - v237;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v61 + 1, 24);
                v63 = v237;
                v62 = v237 + v201;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v61 + 1, 24);
                v62 = &v221;
                v63 = v237;
              }
            }

            v64 = &v63[24 * v238];
            v65 = *v62;
            *(v64 + 2) = *(v62 + 2);
            *v64 = v65;
            ++v238;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
      if (v235)
      {
        mlir::InFlightDiagnostic::report(&v235);
      }

      if (v246 == 1)
      {
        if (v245 != &v246)
        {
          free(v245);
        }

        v66 = __p;
        if (__p)
        {
          v67 = v244;
          v68 = __p;
          if (v244 != __p)
          {
            do
            {
              v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
            }

            while (v67 != v66);
            v68 = __p;
          }

          v244 = v66;
          operator delete(v68);
        }

        v69 = v241;
        if (v241)
        {
          v70 = v242;
          v71 = v241;
          if (v242 != v241)
          {
            do
            {
              v73 = *--v70;
              v72 = v73;
              *v70 = 0;
              if (v73)
              {
                MEMORY[0x1AC55A040](v72, 0x1000C8077774924);
              }
            }

            while (v70 != v69);
            v71 = v241;
          }

          v242 = v69;
          operator delete(v71);
        }

        if (v237 != v240)
        {
          free(v237);
        }
      }
    }

    v145 = v231;
    if (v231 != v233)
    {
LABEL_264:
      free(v145);
      return v1;
    }

    return v1;
  }

  v234 = 259;
  mlir::OpState::emitOpError(&v227, &v231, &v235);
  if (v235)
  {
    LODWORD(v215) = 2;
    v216 = v14;
    v174 = &v215;
    v175 = v237;
    if (v238 >= v239)
    {
      if (v237 <= &v215 && v237 + 24 * v238 > &v215)
      {
        v207 = &v215 - v237;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
        v175 = v237;
        v174 = (v237 + v207);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v238 + 1, 24);
        v174 = &v215;
        v175 = v237;
      }
    }

    v176 = &v175[24 * v238];
    v177 = *v174;
    *(v176 + 2) = v174[2];
    *v176 = v177;
    v178 = ++v238;
    if (v235)
    {
      LODWORD(v215) = 3;
      v216 = " for input gradient rank ";
      v217 = 25;
      v179 = &v215;
      v180 = v237;
      if (v178 >= v239)
      {
        if (v237 <= &v215 && v237 + 24 * v178 > &v215)
        {
          v209 = &v215 - v237;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v178 + 1, 24);
          v180 = v237;
          v179 = (v237 + v209);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v178 + 1, 24);
          v179 = &v215;
          v180 = v237;
        }
      }

      v181 = &v180[24 * v238];
      v182 = *v179;
      *(v181 + 2) = v179[2];
      *v181 = v182;
      v183 = ++v238;
      if (v235)
      {
        LODWORD(v215) = 2;
        v216 = v38;
        v184 = &v215;
        v185 = v237;
        if (v183 >= v239)
        {
          if (v237 <= &v215 && v237 + 24 * v183 > &v215)
          {
            v211 = &v215 - v237;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v183 + 1, 24);
            v185 = v237;
            v184 = (v237 + v211);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v183 + 1, 24);
            v184 = &v215;
            v185 = v237;
          }
        }

        v186 = &v185[24 * v238];
        v187 = *v184;
        *(v186 + 2) = v184[2];
        *v186 = v187;
        v188 = ++v238;
        if (v235)
        {
          LODWORD(v215) = 3;
          v216 = ".";
          v217 = 1;
          v189 = &v215;
          v190 = v237;
          if (v188 >= v239)
          {
            if (v237 <= &v215 && v237 + 24 * v188 > &v215)
            {
              v213 = &v215 - v237;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v188 + 1, 24);
              v190 = v237;
              v189 = (v237 + v213);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v240, v188 + 1, 24);
              v189 = &v215;
              v190 = v237;
            }
          }

          v191 = &v190[24 * v238];
          v192 = *v189;
          *(v191 + 2) = v189[2];
          *v191 = v192;
          ++v238;
        }
      }
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
  if (v235)
  {
    mlir::InFlightDiagnostic::report(&v235);
  }

  if (v246 == 1)
  {
    if (v245 != &v246)
    {
      free(v245);
    }

    v193 = __p;
    if (__p)
    {
      v194 = v244;
      v195 = __p;
      if (v244 != __p)
      {
        do
        {
          v194 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v194 - 1);
        }

        while (v194 != v193);
        v195 = __p;
      }

      v244 = v193;
      operator delete(v195);
    }

    v32 = v241;
    if (v241)
    {
      v196 = v242;
      v34 = v241;
      if (v242 != v241)
      {
        do
        {
          v198 = *--v196;
          v197 = v198;
          *v196 = 0;
          if (v198)
          {
            MEMORY[0x1AC55A040](v197, 0x1000C8077774924);
          }
        }

        while (v196 != v32);
        goto LABEL_324;
      }

LABEL_325:
      v242 = v32;
      operator delete(v34);
    }

LABEL_326:
    v145 = v237;
    if (v237 == v240)
    {
      return v1;
    }

    goto LABEL_264;
  }

  return v1;
}

BOOL mlir::mps::DepthwiseConv3DWeightsGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v26[0] = a4;
  v26[1] = a5;
  if (a5 == 3)
  {
    v11 = mlir::ValueRange::dereference_iterator(v26, 0);
    v12 = mlir::ValueRange::dereference_iterator(v26, 1);
    v13 = mlir::ValueRange::dereference_iterator(v26, 2);
    v15 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = v30[0];
    v30[1] = v15;
    mlir::ValueRange::ValueRange(&v27, v30, 2uLL);
    v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v15);
    v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
    if (!v17 || (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v19 = v18 == 0) : (v19 = 1), v19 || *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
    {
      v21 = mlir::UnrankedTensorType::get(v16);
    }

    else
    {
      v27 = v29;
      v28 = 0x400000000;
      if (mlir::matchConstantWithIntVector<long long>(v13, &v27))
      {
        v20 = v28;
        if (v28 <= 3)
        {
          if (HIDWORD(v28) > 3 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, 4uLL, 8), v20 = v28, v28 != 4))
          {
            bzero(v27 + 8 * v20, 32 - 8 * v20);
          }

          v20 = 4;
          LODWORD(v28) = 4;
        }

        v21 = mlir::RankedTensorType::get(v27, v20, v16, 0);
      }

      else
      {
        v21 = mlir::UnrankedTensorType::get(v16);
      }

      if (v27 != v29)
      {
        v24 = v21;
        free(v27);
        v21 = v24;
      }
    }

    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      v25 = v21;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
      v21 = v25;
      LODWORD(v23) = *(a11 + 8);
    }

    *(*a11 + 8 * v23) = v21;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::inferPool4DShape(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8, unsigned __int8 a9, uint64_t *a10)
{
  v10 = *(a4 + 2);
  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = *(a4 + 2);
  }

  if (v10 <= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 - v11;
  }

  v13 = *(a10 + 2);
  if (v10 != v13)
  {
    v14 = *(a4 + 2);
    if (v10 >= v13)
    {
      v122 = v11;
      v123 = a5;
      v124 = a4;
      v15 = a3;
      v16 = a6;
      v17 = a7;
      v18 = a8;
      v19 = *(a10 + 2);
      v20 = *(a10 + 2);
      if (*(a10 + 3) < v10)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a10, a10 + 2, v10, 8);
        v19 = *(a10 + 2);
        v20 = *(a10 + 2);
      }

      bzero((*a10 + 8 * v19), 8 * (v10 - v13));
      v14 = v20 + v10 - v13;
      a8 = v18;
      a7 = v17;
      a6 = v16;
      a3 = v15;
      a5 = v123;
      a4 = v124;
      v11 = v122;
    }

    *(a10 + 2) = v14;
  }

  if (v12)
  {
    v21 = *a4;
    v22 = *a10;
    if (v12 < 4 || (*a10 - *a4) <= 0x1F)
    {
      v24 = 0;
LABEL_22:
      v29 = v12 - v24;
      v30 = 8 * v24;
      v31 = (v21 + v30);
      v32 = (v22 + v30);
      do
      {
        v33 = *v31++;
        *v32++ = v33;
        --v29;
      }

      while (v29);
      goto LABEL_24;
    }

    v24 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = (v21 + 16);
    v26 = (v22 + 16);
    v27 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v28 = *v25;
      *(v26 - 1) = *(v25 - 1);
      *v26 = v28;
      v25 += 2;
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    if (v12 != v24)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v10)
  {
    v34 = *a4;
    v35 = *a5;
    v36 = *a10;
    if (a8 == 4 || a8 == 2)
    {
      v37 = v35 + 32;
      v38 = *(v34 + 8 * v12);
      v39 = (v37 - 8 * v11);
      v40 = *v39;
      if (*v39 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = *v39;
      }

      v42 = *(v34 + 8 * v12);
      if (v40 >= 2)
      {
        v42 = 0x8000000000000000;
        if (v38 != 0x8000000000000000)
        {
          v42 = v38 / v41;
          v43 = v38 / v41 * v41;
          if (v38 >= 0 && v43 != v38)
          {
            ++v42;
          }
        }
      }

      *(v36 + 8 * v12) = v42;
      if (v10 != 1)
      {
        v45 = *(v34 + 8 * (v12 + 1));
        v46 = *(v37 + 8 * (1 - v11));
        if (v46 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = *(v37 + 8 * (1 - v11));
        }

        v48 = *(v34 + 8 * (v12 + 1));
        if (v46 >= 2)
        {
          v48 = 0x8000000000000000;
          if (v45 != 0x8000000000000000)
          {
            v48 = v45 / v47;
            v49 = v45 / v47 * v47;
            if (v45 >= 0 && v49 != v45)
            {
              ++v48;
            }
          }
        }

        *(v36 + 8 * (v12 + 1)) = v48;
        if (v10 != 2)
        {
          v51 = *(v34 + 8 * (v12 + 2));
          v52 = *(v37 + 8 * (2 - v11));
          if (v52 <= 1)
          {
            v53 = 1;
          }

          else
          {
            v53 = *(v37 + 8 * (2 - v11));
          }

          v54 = *(v34 + 8 * (v12 + 2));
          if (v52 >= 2)
          {
            v54 = 0x8000000000000000;
            if (v51 != 0x8000000000000000)
            {
              v54 = v51 / v53;
              v55 = v51 / v53 * v53;
              if (v51 >= 0 && v55 != v51)
              {
                ++v54;
              }
            }
          }

          *(v36 + 8 * (v12 + 2)) = v54;
          if (v10 != 3)
          {
            v57 = v12 + 3;
            v58 = *(v34 + 8 * (v12 + 3));
            v59 = *(v37 + 8 * (3 - v11));
            if (v59 <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = v59;
            }

            if (v59 >= 2)
            {
              if (v58 == 0x8000000000000000)
              {
                v58 = 0x8000000000000000;
              }

              else
              {
                v118 = v58 / v60;
                v119 = v58 / v60 * v60;
                if (v58 < 0 || v119 == v58)
                {
                  v58 = v118;
                }

                else
                {
                  v58 = v118 + 1;
                }
              }
            }

LABEL_136:
            *(v36 + 8 * v57) = v58;
          }
        }
      }
    }

    else
    {
      v61 = a9;
      v62 = *a3;
      v63 = *a6;
      v64 = *a7;
      v65 = *(v34 + 8 * v12);
      v66 = 4 - v11;
      v67 = *(*a3 + 8 * (4 - v11));
      v68 = 0x8000000000000000;
      if (v67 != 0x8000000000000000 && v65 != 0x8000000000000000)
      {
        v70 = *(v64 + 16 * v66 + 8) & ~(*(v64 + 16 * v66 + 8) >> 63);
        v71 = *(v64 + 16 * v66) & ~(*(v64 + 16 * v66) >> 63);
        v72 = *(v63 + 8 * v66);
        if (v72 <= 1)
        {
          v72 = 1;
        }

        v73 = *(v35 + 8 * v66);
        if (v73 <= 1)
        {
          v73 = 1;
        }

        if (a8 == 1)
        {
          v70 = 0;
          v71 = 0;
        }

        v74 = v73 + v65 + v71 + v70 + ~(v72 * (v67 - 1));
        v75 = v74 / v73;
        v76 = v74 / v73 * v73;
        if (v74 >= 0)
        {
          v77 = a9;
        }

        else
        {
          v77 = a9 - 1;
        }

        if (v76 == v74)
        {
          v78 = 0;
        }

        else
        {
          v78 = v77;
        }

        v68 = (v75 + v78) & ~((v75 + v78) >> 63);
      }

      *(v36 + 8 * v12) = v68;
      if (v10 != 1)
      {
        v79 = v12 + 1;
        v80 = 5 - v11;
        v81 = *(v62 + 8 * (5 - v11));
        v82 = 0x8000000000000000;
        if (v81 != 0x8000000000000000)
        {
          v83 = *(v34 + 8 * v79);
          if (v83 != 0x8000000000000000)
          {
            v84 = *(v64 + 16 * v80 + 8) & ~(*(v64 + 16 * v80 + 8) >> 63);
            v85 = *(v64 + 16 * v80) & ~(*(v64 + 16 * v80) >> 63);
            v86 = *(v63 + 8 * v80);
            if (v86 <= 1)
            {
              v86 = 1;
            }

            v87 = *(v35 + 8 * v80);
            if (v87 <= 1)
            {
              v87 = 1;
            }

            if (a8 == 1)
            {
              v84 = 0;
              v85 = 0;
            }

            v88 = v87 + v83 + v85 + v84 + ~(v86 * (v81 - 1));
            v89 = v88 / v87;
            v90 = v88 / v87 * v87;
            if (v88 >= 0)
            {
              v91 = a9;
            }

            else
            {
              v91 = a9 - 1;
            }

            if (v90 == v88)
            {
              v92 = 0;
            }

            else
            {
              v92 = v91;
            }

            v82 = (v89 + v92) & ~((v89 + v92) >> 63);
          }
        }

        *(v36 + 8 * v79) = v82;
        if (v10 != 2)
        {
          v93 = v12 + 2;
          v94 = 6 - v11;
          v95 = *(v62 + 8 * (6 - v11));
          v96 = 0x8000000000000000;
          if (v95 != 0x8000000000000000)
          {
            v97 = *(v34 + 8 * v93);
            if (v97 != 0x8000000000000000)
            {
              v98 = *(v64 + 16 * v94 + 8) & ~(*(v64 + 16 * v94 + 8) >> 63);
              v99 = *(v64 + 16 * v94) & ~(*(v64 + 16 * v94) >> 63);
              v100 = *(v63 + 8 * v94);
              if (v100 <= 1)
              {
                v100 = 1;
              }

              v101 = *(v35 + 8 * v94);
              if (v101 <= 1)
              {
                v101 = 1;
              }

              if (a8 == 1)
              {
                v98 = 0;
                v99 = 0;
              }

              v102 = v101 + v97 + v99 + v98 + ~(v100 * (v95 - 1));
              v103 = v102 / v101;
              v104 = v102 / v101 * v101;
              if (v102 >= 0)
              {
                v105 = a9;
              }

              else
              {
                v105 = a9 - 1;
              }

              if (v104 == v102)
              {
                v106 = 0;
              }

              else
              {
                v106 = v105;
              }

              v96 = (v103 + v106) & ~((v103 + v106) >> 63);
            }
          }

          *(v36 + 8 * v93) = v96;
          if (v10 != 3)
          {
            v57 = v12 + 3;
            v107 = v11 ^ 7;
            v108 = *(v62 + 8 * (v11 ^ 7));
            v58 = 0x8000000000000000;
            if (v108 != 0x8000000000000000)
            {
              v109 = *(v34 + 8 * v57);
              if (v109 != 0x8000000000000000)
              {
                v110 = *(v64 + 16 * v107 + 8) & ~(*(v64 + 16 * v107 + 8) >> 63);
                v111 = *(v64 + 16 * v107) & ~(*(v64 + 16 * v107) >> 63);
                v112 = *(v63 + 8 * v107);
                if (v112 <= 1)
                {
                  v112 = 1;
                }

                v113 = *(v35 + 8 * v107);
                if (v113 <= 1)
                {
                  v113 = 1;
                }

                if (a8 == 1)
                {
                  v110 = 0;
                  v111 = 0;
                }

                v114 = v113 + v109 + v111 + v110 + ~(v112 * (v108 - 1));
                v115 = v114 / v113;
                v116 = v114 / v113 * v113;
                if (v114 < 0)
                {
                  v61 = a9 - 1;
                }

                if (v116 == v114)
                {
                  v117 = 0;
                }

                else
                {
                  v117 = v61;
                }

                v58 = (v115 + v117) & ~((v115 + v117) >> 63);
              }
            }

            goto LABEL_136;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::mps::inferPool4DGradientOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v45[0] = a3;
  v45[1] = a4;
  v7 = (*(mlir::ValueRange::dereference_iterator(v45, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v34 = v12[1];
      v40 = v7;
      v41 = v34;
      if (a4 == 3)
      {
        goto LABEL_15;
      }

LABEL_34:
      v35 = mlir::ValueRange::dereference_iterator(v45, 1);
    }
  }

LABEL_14:
  v40 = v7;
  v41 = 0;
  if (a4 != 3)
  {
    goto LABEL_34;
  }

LABEL_15:
  v42 = v44;
  v43 = 0x400000000;
  v18 = mlir::ValueRange::dereference_iterator(v45, 2);
  if (mlir::matchConstantWithIntVector<long long>(v18, &v42))
  {
    v19 = v43;
    if (v43 >= 4)
    {
      v21 = v42;
      v23 = (v42 + 8 * v43);
      v24 = 8 * v43 - 8;
      if (v24 >= 0x18)
      {
LABEL_21:
        v25 = (v24 >> 3) + 1;
        v26 = (v21 + 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL));
        v27 = (v21 + 16);
        v28.i64[0] = -1;
        v28.i64[1] = -1;
        v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
        while (1)
        {
          v30 = vmovn_s64(vceqq_s64(v27[-1], v28));
          if (v30.i8[0])
          {
            v27[-1].i64[0] = 0x8000000000000000;
            if ((v30.i8[4] & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else if ((v30.i8[4] & 1) == 0)
          {
LABEL_25:
            v31 = vmovn_s64(vceqq_s64(*v27, v28));
            if (v31.i8[0])
            {
              goto LABEL_26;
            }

            goto LABEL_30;
          }

          v27[-1].i64[1] = 0x8000000000000000;
          v31 = vmovn_s64(vceqq_s64(*v27, v28));
          if (v31.i8[0])
          {
LABEL_26:
            v27->i64[0] = 0x8000000000000000;
            if (v31.i8[4])
            {
              goto LABEL_31;
            }

            goto LABEL_22;
          }

LABEL_30:
          if (v31.i8[4])
          {
LABEL_31:
            v27->i64[1] = 0x8000000000000000;
          }

LABEL_22:
          v27 += 2;
          v29 -= 4;
          if (!v29)
          {
            if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_40;
            }

            goto LABEL_43;
          }
        }
      }
    }

    else
    {
      if (HIDWORD(v43) <= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, 4uLL, 8);
      }

      v20 = v43;
      v21 = v42;
      memset_pattern16(v42 + 8 * v43, &unk_1A75989B0, 32 - 8 * v19);
      v22 = v20 - v19;
      v19 = (v20 - v19 + 4);
      LODWORD(v43) = v22 + 4;
      if (v22 == -4)
      {
        v19 = 0;
        goto LABEL_43;
      }

      v23 = (v21 + 8 * v19);
      v24 = 8 * v19 - 8;
      if (v24 >= 0x18)
      {
        goto LABEL_21;
      }
    }

    v26 = v21;
    do
    {
LABEL_40:
      if (*v26 == -1)
      {
        *v26 = 0x8000000000000000;
      }

      v26 = (v26 + 8);
    }

    while (v26 != v23);
LABEL_43:
    isSplat = mlir::ElementsAttr::isSplat(&v40);
    v33 = mlir::RankedTensorType::get(v21, v19, isSplat, 0);
  }

  else
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v7);
    v33 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

  v38 = *(a5 + 8);
  if (v38 >= *(a5 + 12))
  {
    v39 = v33;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v38 + 1, 8);
    v33 = v39;
    LODWORD(v38) = *(a5 + 8);
  }

  *(*a5 + 8 * v38) = v33;
  ++*(a5 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::mps::PoolAvgOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v27 = a6;
  BYTE8(v27) = 0;
  v28[0] = 0;
  *&v28[8] = v15;
  *&v28[24] = v16;
  *&v28[40] = v17;
  *&v28[56] = v18;
  v29 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v27);
    if (v28[0] == 1)
    {
      v28[0] = 0;
    }

    mlir::OperationName::OperationName(&v27 + 1, "mps.pooling_average", 19, Context);
    v28[0] = 1;
  }

  *&v30 = a4;
  *(&v30 + 1) = a5;
  if (a5 && (v20 = mlir::UnknownLoc::get(this, a2), mlir::mps::PoolAvgOpAdaptor::verify(&v27, v20)))
  {
    v26[4] = *&v28[48];
    v26[5] = v29;
    v26[6] = v30;
    v26[0] = v27;
    v26[1] = *v28;
    v26[2] = *&v28[16];
    v26[3] = *&v28[32];
    return mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(a2, a3, v26, a10);
  }

  else
  {
    v22 = mlir::Float32Type::get(this, a2);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a10 + 8);
    if (v24 >= *(a10 + 12))
    {
      v25 = v23;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, (a10 + 16), v24 + 1, 8);
      v23 = v25;
      LODWORD(v24) = *(a10 + 8);
    }

    *(*a10 + 8 * v24) = v23;
    ++*(a10 + 8);
    return 1;
  }
}

BOOL mlir::mps::PoolAvgOpAdaptor::verify(void *a1, uint64_t a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v129 = a1[5];
  v4 = a1[9];
  if (!v4)
  {
    v126 = "'mps.pooling_average' op requires attribute 'window_sizes'";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v139;
        v19 = __p;
        if (v139 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v139 = v17;
        operator delete(v19);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v21 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

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
      goto LABEL_168;
    }

    return v16;
  }

  v5 = a1[8];
  v6 = *v4;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = v6;
    mlir::mps::ConstantOp::getAsAttribute();
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v25 + 8);
    v9 = *(v25 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v27 = v10[1];
    v126 = v4;
    v127 = v27;
    Type = mlir::ElementsAttr::getType(&v126);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v126 = v4;
  v127 = 0;
  Type = mlir::ElementsAttr::getType(&v126);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v28 = *Type;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v119 = v28;
    v120 = Type;
    mlir::Builder::getI32VectorAttr();
    Type = v120;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v119 + 8);
    v31 = *(v119 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  v32 = v30;
  v33 = v31;
  do
  {
    v34 = v33 >> 1;
    v35 = &v32[2 * (v33 >> 1)];
    v37 = *v35;
    v36 = v35 + 2;
    v33 += ~(v33 >> 1);
    if (v37 < v29)
    {
      v32 = v36;
    }

    else
    {
      v33 = v34;
    }
  }

  while (v33);
  if (v32 != &v30[2 * v31] && *v32 == v29)
  {
    v38 = v32[1];
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v132 = Type;
  v133 = v38;
  Shape = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v40 != 1 || *Shape != v131 || (v123 = v4, Value = mlir::ArrayAttr::getValue(&v123), v125 = v41, isSplat = mlir::ElementsAttr::isSplat(&Value), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
  {
    v126 = "'mps.pooling_average' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v139;
        v54 = __p;
        if (v139 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v139 = v52;
        operator delete(v54);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v55 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          MEMORY[0x1AC55A040](v56, 0x1000C8077774924);
        }
      }

      while (v55 != v20);
      goto LABEL_168;
    }

    return v16;
  }

  if (!v5)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v74 = *v3;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
LABEL_101:
        v78 = v76;
        v79 = v77;
        do
        {
          v80 = v79 >> 1;
          v81 = &v78[2 * (v79 >> 1)];
          v83 = *v81;
          v82 = v81 + 2;
          v79 += ~(v79 >> 1);
          if (v83 < v75)
          {
            v78 = v82;
          }

          else
          {
            v79 = v80;
          }
        }

        while (v79);
LABEL_126:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v90 = v78[1];
        }

        else
        {
          v90 = 0;
        }

        v126 = v3;
        v127 = v90;
        v91 = mlir::ElementsAttr::getType(&v126);
        if (!v91)
        {
          goto LABEL_143;
        }

        v92 = *v91;
        {
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v91;
          mlir::Builder::getI32VectorAttr();
          v91 = v102;
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
LABEL_133:
            v96 = v94;
            v97 = v95;
            do
            {
              v98 = v97 >> 1;
              v99 = &v96[2 * (v97 >> 1)];
              v101 = *v99;
              v100 = v99 + 2;
              v97 += ~(v97 >> 1);
              if (v101 < v93)
              {
                v96 = v100;
              }

              else
              {
                v97 = v98;
              }
            }

            while (v97);
LABEL_141:
            if (v96 != &v94[2 * v95] && *v96 == v93)
            {
              v103 = v96[1];
              goto LABEL_144;
            }

LABEL_143:
            v103 = 0;
LABEL_144:
            v132 = v91;
            v133 = v103;
            v104 = mlir::ShapedType::getShape(&v132);
            v131 = 4;
            if (v105 == 1 && *v104 == v131)
            {
              v123 = v3;
              Value = mlir::ArrayAttr::getValue(&v123);
              v125 = v106;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_147:
                if (!v129)
                {
                  return 1;
                }

                v126 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v129);
                v127 = v107;
                v131 = mlir::ElementsAttr::getType(&v126);
                v132 = mlir::BaseMemRefType::operator mlir::ShapedType(&v131);
                v133 = v108;
                v109 = mlir::ShapedType::getShape(&v132);
                isSplat = 8;
                if (v110 == 1 && *v109 == isSplat)
                {
                  v122 = v129;
                  Value = mlir::ArrayAttr::getValue(&v122);
                  v125 = v111;
                  v123 = mlir::ElementsAttr::isSplat(&Value);
                  if (mlir::Type::isUnsignedInteger(&v123, 64))
                  {
                    return 1;
                  }
                }

                v126 = "'mps.pooling_average' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                v128 = 259;
                mlir::emitError(a2, &v126, &v132);
                v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
                if (v132)
                {
                  mlir::InFlightDiagnostic::report(&v132);
                }

                if (v141 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v133);
                }

                return v16;
              }
            }

            v126 = "'mps.pooling_average' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v128 = 259;
            mlir::emitError(a2, &v126, &v132);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
            if (v132)
            {
              mlir::InFlightDiagnostic::report(&v132);
            }

            if (v141 == 1)
            {
              if (v140 != &v141)
              {
                free(v140);
              }

              v112 = __p;
              if (__p)
              {
                v113 = v139;
                v114 = __p;
                if (v139 != __p)
                {
                  do
                  {
                    v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
                  }

                  while (v113 != v112);
                  v114 = __p;
                }

                v139 = v112;
                operator delete(v114);
              }

              v20 = v136;
              if (!v136)
              {
                goto LABEL_170;
              }

              v115 = v137;
              v22 = v136;
              if (v137 == v136)
              {
LABEL_169:
                v137 = v20;
                operator delete(v22);
LABEL_170:
                if (v134 != &v135)
                {
                  free(v134);
                }

                return v16;
              }

              do
              {
                v117 = *--v115;
                v116 = v117;
                *v115 = 0;
                if (v117)
                {
                  MEMORY[0x1AC55A040](v116, 0x1000C8077774924);
                }
              }

              while (v115 != v20);
LABEL_168:
              v22 = v136;
              goto LABEL_169;
            }

            return v16;
          }
        }

        v95 = 0;
        v96 = v94;
        goto LABEL_141;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_126;
  }

  v42 = *v5;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_76:
    v45 = 0;
    v46 = v44;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_76;
  }

LABEL_52:
  v46 = v44;
  v47 = v45;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
LABEL_77:
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v59 = v46[1];
    v126 = v5;
    v127 = v59;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v126 = v5;
    v127 = 0;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  v60 = *v58;
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_84;
    }

LABEL_91:
    v63 = 0;
    v64 = v62;
    goto LABEL_92;
  }

  v121 = v58;
  mlir::Builder::getI32VectorAttr();
  v58 = v121;
  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_91;
  }

LABEL_84:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
LABEL_92:
  if (v64 != &v62[2 * v63] && *v64 == v61)
  {
    v70 = v64[1];
    goto LABEL_95;
  }

LABEL_94:
  v70 = 0;
LABEL_95:
  v132 = v58;
  v133 = v70;
  v71 = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v72 == 1 && *v71 == v131)
  {
    v123 = v5;
    Value = mlir::ArrayAttr::getValue(&v123);
    v125 = v73;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      goto LABEL_98;
    }
  }

  v126 = "'mps.pooling_average' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v128 = 259;
  mlir::emitError(a2, &v126, &v132);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v139;
      v86 = __p;
      if (v139 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v139 = v84;
      operator delete(v86);
    }

    v20 = v136;
    if (!v136)
    {
      goto LABEL_170;
    }

    v87 = v137;
    v22 = v136;
    if (v137 == v136)
    {
      goto LABEL_169;
    }

    do
    {
      v89 = *--v87;
      v88 = v89;
      *v87 = 0;
      if (v89)
      {
        MEMORY[0x1AC55A040](v88, 0x1000C8077774924);
      }
    }

    while (v87 != v20);
    goto LABEL_168;
  }

  return v16;
}

uint64_t mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = a3[6];
  v15 = 0;
  v8 = *(mlir::ValueRange::dereference_iterator(&v18, 0) + 8);
  v9 = a3[5];
  v17[4] = a3[4];
  v17[5] = v9;
  v17[6] = a3[6];
  v10 = a3[1];
  v17[0] = *a3;
  v17[1] = v10;
  v11 = a3[3];
  v17[2] = a3[2];
  v17[3] = v11;
  v16 = *(mlir::ValueRange::dereference_iterator(&v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::Attribute::getContext(&v16);
  if ((mlir::mps::inferPool4DReturnType<mlir::mps::PoolAvgOpAdaptor>(a1, a2, (v8 & 0xFFFFFFFFFFFFFFF8), v17, &v15) & 1) == 0)
  {
    return 0;
  }

  v12 = v15;
  v13 = *(a4 + 8);
  if (v13 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v13 + 1, 8);
    LODWORD(v13) = *(a4 + 8);
  }

  *(*a4 + 8 * v13) = v12;
  ++*(a4 + 8);
  return 1;
}

uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolAvgOp>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v179 = *MEMORY[0x1E69E9840];
  v164 = a1;
  v4 = (a1 + 16 * ((*(a1 + 44) >> 23) & 1));
  v163 = v4[13];
  v162 = v4[9];
  v161 = v4[14];
  v160 = v4[10];
  if (v161)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v161) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v157, v161, 0);
      v3 = v161;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v161);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v154, v3, NumElements);
      while (v159 != v156)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v157, &v152);
        if (v153 > 0x40)
        {
          if (*v152 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v153 || (v152 << -v153) >> -v153 <= 0)
        {
LABEL_7:
          v151 = 259;
          mlir::OpState::emitOpError(&v164, v150, v168);
          if (v153 > 0x40)
          {
            v6 = *v152;
            if (!v168[0])
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v153)
            {
              v6 = (v152 << -v153) >> -v153;
            }

            else
            {
              v6 = 0;
            }

            if (!v168[0])
            {
              goto LABEL_23;
            }
          }

          LODWORD(v165) = 2;
          v166 = v6;
          v8 = v169;
          if (v170 >= v171)
          {
            if (v169 <= &v165 && v169 + 24 * v170 > &v165)
            {
              v25 = &v165 - v169;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
              v8 = v169;
              v9 = (v169 + v25);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
              v9 = &v165;
              v8 = v169;
            }
          }

          else
          {
            v9 = &v165;
          }

          v10 = &v8[24 * v170];
          v11 = *v9;
          *(v10 + 2) = v9[2];
          *v10 = v11;
          v12 = ++v170;
          if (v168[0])
          {
            LODWORD(v165) = 3;
            v166 = ", all values should be positive.";
            v167 = 32;
            v13 = v169;
            if (v12 >= v171)
            {
              if (v169 <= &v165 && v169 + 24 * v12 > &v165)
              {
                v26 = &v165 - v169;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v12 + 1, 24);
                v13 = v169;
                v14 = (v169 + v26);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v12 + 1, 24);
                v14 = &v165;
                v13 = v169;
              }
            }

            else
            {
              v14 = &v165;
            }

            v15 = &v13[24 * v170];
            v16 = *v14;
            *(v15 + 2) = v14[2];
            *v15 = v16;
            ++v170;
          }

LABEL_23:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
          if (v168[0])
          {
            mlir::InFlightDiagnostic::report(v168);
          }

          if (v178 == 1)
          {
            if (v177 != &v178)
            {
              free(v177);
            }

            v17 = __p;
            if (__p)
            {
              v18 = v176;
              v19 = __p;
              if (v176 != __p)
              {
                do
                {
                  v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
                }

                while (v18 != v17);
                v19 = __p;
              }

              v176 = v17;
              operator delete(v19);
            }

            v20 = v173;
            if (v173)
            {
              v21 = v174;
              v22 = v173;
              if (v174 != v173)
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
                v22 = v173;
              }

              v174 = v20;
              operator delete(v22);
            }

            if (v169 != v172)
            {
              free(v169);
            }
          }

          v7 = 0;
          if (v153 < 0x41)
          {
            goto LABEL_46;
          }

LABEL_44:
          if (v152)
          {
            MEMORY[0x1AC55A040](v152, 0x1000C8000313F17);
          }

          goto LABEL_46;
        }

        v7 = 1;
        if (v153 >= 0x41)
        {
          goto LABEL_44;
        }

LABEL_46:
        if (!v7)
        {
          return v3;
        }

        ++v159;
      }
    }
  }

  if (v163)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v163) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v157, v163, 0);
      v27 = v163;
      v28 = mlir::DenseElementsAttr::getNumElements(&v163);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v154, v27, v28);
      while (v159 != v156)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v157, &v152);
        if (v153 > 0x40)
        {
          if (*v152 <= 0)
          {
            goto LABEL_104;
          }
        }

        else if (!v153 || (v152 << -v153) >> -v153 <= 0)
        {
LABEL_104:
          v151 = 259;
          mlir::OpState::emitOpError(&v164, v150, v168);
          if (v153 > 0x40)
          {
            v55 = *v152;
            if (!v168[0])
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v153)
            {
              v55 = (v152 << -v153) >> -v153;
            }

            else
            {
              v55 = 0;
            }

            if (!v168[0])
            {
              goto LABEL_120;
            }
          }

          LODWORD(v165) = 2;
          v166 = v55;
          v57 = v169;
          if (v170 >= v171)
          {
            if (v169 <= &v165 && v169 + 24 * v170 > &v165)
            {
              v74 = &v165 - v169;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
              v57 = v169;
              v58 = (v169 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
              v58 = &v165;
              v57 = v169;
            }
          }

          else
          {
            v58 = &v165;
          }

          v59 = &v57[24 * v170];
          v60 = *v58;
          *(v59 + 2) = v58[2];
          *v59 = v60;
          v61 = ++v170;
          if (v168[0])
          {
            LODWORD(v165) = 3;
            v166 = ", all values should be positive.";
            v167 = 32;
            v62 = v169;
            if (v61 >= v171)
            {
              if (v169 <= &v165 && v169 + 24 * v61 > &v165)
              {
                v75 = &v165 - v169;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v61 + 1, 24);
                v62 = v169;
                v63 = (v169 + v75);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v61 + 1, 24);
                v63 = &v165;
                v62 = v169;
              }
            }

            else
            {
              v63 = &v165;
            }

            v64 = &v62[24 * v170];
            v65 = *v63;
            *(v64 + 2) = v63[2];
            *v64 = v65;
            ++v170;
          }

LABEL_120:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
          if (v168[0])
          {
            mlir::InFlightDiagnostic::report(v168);
          }

          if (v178 == 1)
          {
            if (v177 != &v178)
            {
              free(v177);
            }

            v66 = __p;
            if (__p)
            {
              v67 = v176;
              v68 = __p;
              if (v176 != __p)
              {
                do
                {
                  v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
                }

                while (v67 != v66);
                v68 = __p;
              }

              v176 = v66;
              operator delete(v68);
            }

            v69 = v173;
            if (v173)
            {
              v70 = v174;
              v71 = v173;
              if (v174 != v173)
              {
                do
                {
                  v73 = *--v70;
                  v72 = v73;
                  *v70 = 0;
                  if (v73)
                  {
                    MEMORY[0x1AC55A040](v72, 0x1000C8077774924);
                  }
                }

                while (v70 != v69);
                v71 = v173;
              }

              v174 = v69;
              operator delete(v71);
            }

            if (v169 != v172)
            {
              free(v169);
            }
          }

          v56 = 0;
          if (v153 < 0x41)
          {
            goto LABEL_143;
          }

LABEL_141:
          if (v152)
          {
            MEMORY[0x1AC55A040](v152, 0x1000C8000313F17);
          }

          goto LABEL_143;
        }

        v56 = 1;
        if (v153 >= 0x41)
        {
          goto LABEL_141;
        }

LABEL_143:
        if (!v56)
        {
          return v3;
        }

        ++v159;
      }
    }
  }

  if (v162)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v162) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v157, v162, 0);
      v29 = v162;
      v30 = mlir::DenseElementsAttr::getNumElements(&v162);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v154, v29, v30);
      while (v159 != v156)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v157, &v152);
        if (v153 > 0x40)
        {
          if (*v152 <= 0)
          {
            goto LABEL_157;
          }
        }

        else if (!v153 || (v152 << -v153) >> -v153 <= 0)
        {
LABEL_157:
          v151 = 259;
          mlir::OpState::emitOpError(&v164, v150, v168);
          if (v153 > 0x40)
          {
            v76 = *v152;
            if (!v168[0])
            {
              goto LABEL_173;
            }
          }

          else
          {
            if (v153)
            {
              v76 = (v152 << -v153) >> -v153;
            }

            else
            {
              v76 = 0;
            }

            if (!v168[0])
            {
              goto LABEL_173;
            }
          }

          LODWORD(v165) = 2;
          v166 = v76;
          v78 = v169;
          if (v170 >= v171)
          {
            if (v169 <= &v165 && v169 + 24 * v170 > &v165)
            {
              v95 = &v165 - v169;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
              v78 = v169;
              v79 = (v169 + v95);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
              v79 = &v165;
              v78 = v169;
            }
          }

          else
          {
            v79 = &v165;
          }

          v80 = &v78[24 * v170];
          v81 = *v79;
          *(v80 + 2) = v79[2];
          *v80 = v81;
          v82 = ++v170;
          if (v168[0])
          {
            LODWORD(v165) = 3;
            v166 = ", all values should be positive.";
            v167 = 32;
            v83 = v169;
            if (v82 >= v171)
            {
              if (v169 <= &v165 && v169 + 24 * v82 > &v165)
              {
                v96 = &v165 - v169;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v82 + 1, 24);
                v83 = v169;
                v84 = (v169 + v96);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v82 + 1, 24);
                v84 = &v165;
                v83 = v169;
              }
            }

            else
            {
              v84 = &v165;
            }

            v85 = &v83[24 * v170];
            v86 = *v84;
            *(v85 + 2) = v84[2];
            *v85 = v86;
            ++v170;
          }

LABEL_173:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
          if (v168[0])
          {
            mlir::InFlightDiagnostic::report(v168);
          }

          if (v178 == 1)
          {
            if (v177 != &v178)
            {
              free(v177);
            }

            v87 = __p;
            if (__p)
            {
              v88 = v176;
              v89 = __p;
              if (v176 != __p)
              {
                do
                {
                  v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
                }

                while (v88 != v87);
                v89 = __p;
              }

              v176 = v87;
              operator delete(v89);
            }

            v90 = v173;
            if (v173)
            {
              v91 = v174;
              v92 = v173;
              if (v174 != v173)
              {
                do
                {
                  v94 = *--v91;
                  v93 = v94;
                  *v91 = 0;
                  if (v94)
                  {
                    MEMORY[0x1AC55A040](v93, 0x1000C8077774924);
                  }
                }

                while (v91 != v90);
                v92 = v173;
              }

              v174 = v90;
              operator delete(v92);
            }

            if (v169 != v172)
            {
              free(v169);
            }
          }

          v77 = 0;
          if (v153 < 0x41)
          {
            goto LABEL_196;
          }

LABEL_194:
          if (v152)
          {
            MEMORY[0x1AC55A040](v152, 0x1000C8000313F17);
          }

          goto LABEL_196;
        }

        v77 = 1;
        if (v153 >= 0x41)
        {
          goto LABEL_194;
        }

LABEL_196:
        if (!v77)
        {
          return v3;
        }

        ++v159;
      }
    }
  }

  if (v160)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v160) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v157, v160, 0);
      v31 = v160;
      v32 = mlir::DenseElementsAttr::getNumElements(&v160);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v154, v31, v32);
      if (v159 != v156)
      {
        v97 = 0x1000C8000313F17;
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v157, &v152);
          if (v153 > 0x40)
          {
            break;
          }

          if (v153)
          {
            v99 = (v152 << -v153) >> -v153;
            if (v99 < 0)
            {
              goto LABEL_213;
            }

LABEL_220:
            if (v153 >= 0x41)
            {
LABEL_250:
              if (v152)
              {
                MEMORY[0x1AC55A040](v152, v97);
              }
            }

LABEL_208:
            if (v99 < 0)
            {
              return v3;
            }
          }

          if (++v159 == v156)
          {
            goto LABEL_66;
          }
        }

        v99 = *v152;
        if ((*v152 & 0x8000000000000000) == 0)
        {
          goto LABEL_220;
        }

LABEL_213:
        v150[0] = v98;
        v151 = 259;
        mlir::OpState::emitOpError(&v164, v150, v168);
        if (v153 > 0x40)
        {
          v100 = *v152;
          if (!v168[0])
          {
            goto LABEL_229;
          }
        }

        else
        {
          if (v153)
          {
            v100 = (v152 << -v153) >> -v153;
          }

          else
          {
            v100 = 0;
          }

          if (!v168[0])
          {
            goto LABEL_229;
          }
        }

        LODWORD(v165) = 2;
        v166 = v100;
        v101 = v169;
        if (v170 >= v171)
        {
          if (v169 <= &v165 && v169 + 24 * v170 > &v165)
          {
            v120 = &v165 - v169;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
            v101 = v169;
            v102 = (v169 + v120);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
            v102 = &v165;
            v101 = v169;
          }
        }

        else
        {
          v102 = &v165;
        }

        v103 = &v101[24 * v170];
        v104 = *v102;
        *(v103 + 2) = v102[2];
        *v103 = v104;
        v105 = ++v170;
        if (v168[0])
        {
          LODWORD(v165) = 3;
          v166 = ", all values should be non-negative.";
          v167 = 36;
          v106 = v169;
          if (v105 >= v171)
          {
            if (v169 <= &v165 && v169 + 24 * v105 > &v165)
            {
              v121 = &v165 - v169;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v105 + 1, 24);
              v106 = v169;
              v107 = (v169 + v121);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v105 + 1, 24);
              v107 = &v165;
              v106 = v169;
            }
          }

          else
          {
            v107 = &v165;
          }

          v108 = &v106[24 * v170];
          v109 = *v107;
          *(v108 + 2) = v107[2];
          *v108 = v109;
          ++v170;
        }

LABEL_229:
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
        if (v168[0])
        {
          mlir::InFlightDiagnostic::report(v168);
        }

        if (v178 == 1)
        {
          if (v177 != &v178)
          {
            free(v177);
          }

          v110 = v98;
          v111 = __p;
          if (__p)
          {
            v112 = v176;
            v113 = __p;
            if (v176 != __p)
            {
              do
              {
                v112 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v112 - 1);
              }

              while (v112 != v111);
              v113 = __p;
            }

            v176 = v111;
            operator delete(v113);
          }

          v114 = v173;
          if (v173)
          {
            v115 = v97;
            v116 = v174;
            v117 = v173;
            if (v174 != v173)
            {
              do
              {
                v119 = *--v116;
                v118 = v119;
                *v116 = 0;
                if (v119)
                {
                  MEMORY[0x1AC55A040](v118, 0x1000C8077774924);
                }
              }

              while (v116 != v114);
              v117 = v173;
            }

            v174 = v114;
            operator delete(v117);
            v97 = v115;
          }

          v98 = v110;
          if (v169 != v172)
          {
            free(v169);
          }
        }

        if (v153 >= 0x41)
        {
          goto LABEL_250;
        }

        goto LABEL_208;
      }
    }
  }

LABEL_66:
  v33 = *(v164[2 * ((*(v164 + 11) >> 23) & 1) + 12] + 8);
  if (v33 == 3)
  {
    v151 = 259;
    mlir::OpState::emitOpError(&v164, v150, v168);
    if (v168[0])
    {
      LODWORD(v157) = 3;
      v158 = "not supported by this op.";
      v159 = 25;
      v39 = &v157;
      v40 = v169;
      if (v170 >= v171)
      {
        if (v169 <= &v157 && v169 + 24 * v170 > &v157)
        {
          v145 = &v157 - v169;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
          v40 = v169;
          v39 = (v169 + v145);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
          v39 = &v157;
          v40 = v169;
        }
      }

      v41 = &v40[24 * v170];
      v42 = *v39;
      *(v41 + 2) = v39[2];
      *v41 = v42;
      ++v170;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
    if (v168[0])
    {
      mlir::InFlightDiagnostic::report(v168);
    }

    if (v178 == 1)
    {
      if (v177 != &v178)
      {
        free(v177);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v176;
        v45 = __p;
        if (v176 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v176 = v43;
        operator delete(v45);
      }

      v46 = v173;
      if (!v173)
      {
        goto LABEL_283;
      }

      v47 = v174;
      v48 = v173;
      if (v174 == v173)
      {
        goto LABEL_282;
      }

      do
      {
        v50 = *--v47;
        v49 = v50;
        *v47 = 0;
        if (v50)
        {
          MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
        }
      }

      while (v47 != v46);
      goto LABEL_281;
    }
  }

  else
  {
    if (v33 || v160)
    {
      if (a2)
      {
        v34 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
        v157 = v34;
        v158 = v35;
        v36 = a3;
        if (a3)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v34 = 0;
        v157 = 0;
        v158 = 0;
        v36 = a3;
        if (a3)
        {
LABEL_71:
          v37 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v36 + 8) & 0xFFFFFFFFFFFFFFF8));
          v154 = v37;
          v155 = v38;
          if (!v34)
          {
            return 1;
          }

          goto LABEL_94;
        }
      }

      v37 = 0;
      v154 = 0;
      v155 = 0;
      if (!v34)
      {
        return 1;
      }

LABEL_94:
      if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v37 != 0 && *(*v37 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        mlir::ShapedType::getShape(&v157);
        v53 = v52;
        mlir::ShapedType::getShape(&v154);
        if (v53 != v54)
        {
          v151 = 259;
          mlir::OpState::emitOpError(&v164, v150, v168);
          mlir::ShapedType::getShape(&v157);
          v165 = v138;
          mlir::InFlightDiagnostic::operator<<<unsigned long>(v168, &v165);
          v141 = v140;
          mlir::ShapedType::getShape(&v154);
          v152 = v142;
          mlir::InFlightDiagnostic::operator<<<unsigned long>(v141, &v152);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, ".");
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v144);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v168);
          return v3;
        }
      }

      return 1;
    }

    v151 = 259;
    mlir::OpState::emitOpError(&v164, v150, v168);
    if (v168[0])
    {
      LODWORD(v157) = 3;
      v158 = "invalid type. Must be specified when ";
      v159 = 37;
      v122 = &v157;
      v123 = v169;
      if (v170 >= v171)
      {
        if (v169 <= &v157 && v169 + 24 * v170 > &v157)
        {
          v146 = &v157 - v169;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
          v123 = v169;
          v122 = (v169 + v146);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v170 + 1, 24);
          v122 = &v157;
          v123 = v169;
        }
      }

      v124 = &v123[24 * v170];
      v125 = *v122;
      *(v124 + 2) = v122[2];
      *v124 = v125;
      v126 = ++v170;
      if (v168[0])
      {
        LODWORD(v157) = 3;
        v159 = 31;
        v127 = &v157;
        v128 = v169;
        if (v126 >= v171)
        {
          if (v169 <= &v157 && v169 + 24 * v126 > &v157)
          {
            v147 = &v157 - v169;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v126 + 1, 24);
            v128 = v169;
            v127 = (v169 + v147);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v172, v126 + 1, 24);
            v127 = &v157;
            v128 = v169;
          }
        }

        v129 = &v128[24 * v170];
        v130 = *v127;
        *(v129 + 2) = v127[2];
        *v129 = v130;
        ++v170;
      }
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v168);
    if (v168[0])
    {
      mlir::InFlightDiagnostic::report(v168);
    }

    if (v178 == 1)
    {
      if (v177 != &v178)
      {
        free(v177);
      }

      v131 = __p;
      if (__p)
      {
        v132 = v176;
        v133 = __p;
        if (v176 != __p)
        {
          do
          {
            v132 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v132 - 1);
          }

          while (v132 != v131);
          v133 = __p;
        }

        v176 = v131;
        operator delete(v133);
      }

      v46 = v173;
      if (!v173)
      {
        goto LABEL_283;
      }

      v134 = v174;
      v48 = v173;
      if (v174 == v173)
      {
LABEL_282:
        v174 = v46;
        operator delete(v48);
LABEL_283:
        if (v169 != v172)
        {
          free(v169);
        }

        return v3;
      }

      do
      {
        v136 = *--v134;
        v135 = v136;
        *v134 = 0;
        if (v136)
        {
          MEMORY[0x1AC55A040](v135, 0x1000C8077774924);
        }
      }

      while (v134 != v46);
LABEL_281:
      v48 = v173;
      goto LABEL_282;
    }
  }

  return v3;
}

uint64_t mlir::mps::PoolL2NormOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v27 = a6;
  BYTE8(v27) = 0;
  v28[0] = 0;
  *&v28[8] = v15;
  *&v28[24] = v16;
  *&v28[40] = v17;
  *&v28[56] = v18;
  v29 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v27);
    if (v28[0] == 1)
    {
      v28[0] = 0;
    }

    mlir::OperationName::OperationName(&v27 + 1, "mps.pooling_l2_norm", 19, Context);
    v28[0] = 1;
  }

  *&v30 = a4;
  *(&v30 + 1) = a5;
  if (a5 && (v20 = mlir::UnknownLoc::get(this, a2), mlir::mps::PoolL2NormOpAdaptor::verify(&v27, v20)))
  {
    v26[4] = *&v28[48];
    v26[5] = v29;
    v26[6] = v30;
    v26[0] = v27;
    v26[1] = *v28;
    v26[2] = *&v28[16];
    v26[3] = *&v28[32];
    return mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(a2, a3, v26, a10);
  }

  else
  {
    v22 = mlir::Float32Type::get(this, a2);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a10 + 8);
    if (v24 >= *(a10 + 12))
    {
      v25 = v23;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a10, (a10 + 16), v24 + 1, 8);
      v23 = v25;
      LODWORD(v24) = *(a10 + 8);
    }

    *(*a10 + 8 * v24) = v23;
    ++*(a10 + 8);
    return 1;
  }
}

BOOL mlir::mps::PoolL2NormOpAdaptor::verify(void *a1, uint64_t a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v129 = a1[5];
  v4 = a1[9];
  if (!v4)
  {
    v126 = "'mps.pooling_l2_norm' op requires attribute 'window_sizes'";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v139;
        v19 = __p;
        if (v139 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v139 = v17;
        operator delete(v19);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v21 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

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
      goto LABEL_168;
    }

    return v16;
  }

  v5 = a1[8];
  v6 = *v4;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = v6;
    mlir::mps::ConstantOp::getAsAttribute();
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v25 + 8);
    v9 = *(v25 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v27 = v10[1];
    v126 = v4;
    v127 = v27;
    Type = mlir::ElementsAttr::getType(&v126);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v126 = v4;
  v127 = 0;
  Type = mlir::ElementsAttr::getType(&v126);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v28 = *Type;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v119 = v28;
    v120 = Type;
    mlir::Builder::getI32VectorAttr();
    Type = v120;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v119 + 8);
    v31 = *(v119 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  v32 = v30;
  v33 = v31;
  do
  {
    v34 = v33 >> 1;
    v35 = &v32[2 * (v33 >> 1)];
    v37 = *v35;
    v36 = v35 + 2;
    v33 += ~(v33 >> 1);
    if (v37 < v29)
    {
      v32 = v36;
    }

    else
    {
      v33 = v34;
    }
  }

  while (v33);
  if (v32 != &v30[2 * v31] && *v32 == v29)
  {
    v38 = v32[1];
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v132 = Type;
  v133 = v38;
  Shape = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v40 != 1 || *Shape != v131 || (v123 = v4, Value = mlir::ArrayAttr::getValue(&v123), v125 = v41, isSplat = mlir::ElementsAttr::isSplat(&Value), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
  {
    v126 = "'mps.pooling_l2_norm' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v139;
        v54 = __p;
        if (v139 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v139 = v52;
        operator delete(v54);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v55 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          MEMORY[0x1AC55A040](v56, 0x1000C8077774924);
        }
      }

      while (v55 != v20);
      goto LABEL_168;
    }

    return v16;
  }

  if (!v5)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v74 = *v3;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
LABEL_101:
        v78 = v76;
        v79 = v77;
        do
        {
          v80 = v79 >> 1;
          v81 = &v78[2 * (v79 >> 1)];
          v83 = *v81;
          v82 = v81 + 2;
          v79 += ~(v79 >> 1);
          if (v83 < v75)
          {
            v78 = v82;
          }

          else
          {
            v79 = v80;
          }
        }

        while (v79);
LABEL_126:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v90 = v78[1];
        }

        else
        {
          v90 = 0;
        }

        v126 = v3;
        v127 = v90;
        v91 = mlir::ElementsAttr::getType(&v126);
        if (!v91)
        {
          goto LABEL_143;
        }

        v92 = *v91;
        {
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v91;
          mlir::Builder::getI32VectorAttr();
          v91 = v102;
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
LABEL_133:
            v96 = v94;
            v97 = v95;
            do
            {
              v98 = v97 >> 1;
              v99 = &v96[2 * (v97 >> 1)];
              v101 = *v99;
              v100 = v99 + 2;
              v97 += ~(v97 >> 1);
              if (v101 < v93)
              {
                v96 = v100;
              }

              else
              {
                v97 = v98;
              }
            }

            while (v97);
LABEL_141:
            if (v96 != &v94[2 * v95] && *v96 == v93)
            {
              v103 = v96[1];
              goto LABEL_144;
            }

LABEL_143:
            v103 = 0;
LABEL_144:
            v132 = v91;
            v133 = v103;
            v104 = mlir::ShapedType::getShape(&v132);
            v131 = 4;
            if (v105 == 1 && *v104 == v131)
            {
              v123 = v3;
              Value = mlir::ArrayAttr::getValue(&v123);
              v125 = v106;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_147:
                if (!v129)
                {
                  return 1;
                }

                v126 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v129);
                v127 = v107;
                v131 = mlir::ElementsAttr::getType(&v126);
                v132 = mlir::BaseMemRefType::operator mlir::ShapedType(&v131);
                v133 = v108;
                v109 = mlir::ShapedType::getShape(&v132);
                isSplat = 8;
                if (v110 == 1 && *v109 == isSplat)
                {
                  v122 = v129;
                  Value = mlir::ArrayAttr::getValue(&v122);
                  v125 = v111;
                  v123 = mlir::ElementsAttr::isSplat(&Value);
                  if (mlir::Type::isUnsignedInteger(&v123, 64))
                  {
                    return 1;
                  }
                }

                v126 = "'mps.pooling_l2_norm' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                v128 = 259;
                mlir::emitError(a2, &v126, &v132);
                v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
                if (v132)
                {
                  mlir::InFlightDiagnostic::report(&v132);
                }

                if (v141 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v133);
                }

                return v16;
              }
            }

            v126 = "'mps.pooling_l2_norm' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v128 = 259;
            mlir::emitError(a2, &v126, &v132);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
            if (v132)
            {
              mlir::InFlightDiagnostic::report(&v132);
            }

            if (v141 == 1)
            {
              if (v140 != &v141)
              {
                free(v140);
              }

              v112 = __p;
              if (__p)
              {
                v113 = v139;
                v114 = __p;
                if (v139 != __p)
                {
                  do
                  {
                    v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
                  }

                  while (v113 != v112);
                  v114 = __p;
                }

                v139 = v112;
                operator delete(v114);
              }

              v20 = v136;
              if (!v136)
              {
                goto LABEL_170;
              }

              v115 = v137;
              v22 = v136;
              if (v137 == v136)
              {
LABEL_169:
                v137 = v20;
                operator delete(v22);
LABEL_170:
                if (v134 != &v135)
                {
                  free(v134);
                }

                return v16;
              }

              do
              {
                v117 = *--v115;
                v116 = v117;
                *v115 = 0;
                if (v117)
                {
                  MEMORY[0x1AC55A040](v116, 0x1000C8077774924);
                }
              }

              while (v115 != v20);
LABEL_168:
              v22 = v136;
              goto LABEL_169;
            }

            return v16;
          }
        }

        v95 = 0;
        v96 = v94;
        goto LABEL_141;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_126;
  }

  v42 = *v5;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_76:
    v45 = 0;
    v46 = v44;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_76;
  }

LABEL_52:
  v46 = v44;
  v47 = v45;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
LABEL_77:
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v59 = v46[1];
    v126 = v5;
    v127 = v59;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v126 = v5;
    v127 = 0;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  v60 = *v58;
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_84;
    }

LABEL_91:
    v63 = 0;
    v64 = v62;
    goto LABEL_92;
  }

  v121 = v58;
  mlir::Builder::getI32VectorAttr();
  v58 = v121;
  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_91;
  }

LABEL_84:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
LABEL_92:
  if (v64 != &v62[2 * v63] && *v64 == v61)
  {
    v70 = v64[1];
    goto LABEL_95;
  }

LABEL_94:
  v70 = 0;
LABEL_95:
  v132 = v58;
  v133 = v70;
  v71 = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v72 == 1 && *v71 == v131)
  {
    v123 = v5;
    Value = mlir::ArrayAttr::getValue(&v123);
    v125 = v73;
    isSplat = mlir::ElementsAttr::isSplat(&Value);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      goto LABEL_98;
    }
  }

  v126 = "'mps.pooling_l2_norm' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v128 = 259;
  mlir::emitError(a2, &v126, &v132);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v139;
      v86 = __p;
      if (v139 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v139 = v84;
      operator delete(v86);
    }

    v20 = v136;
    if (!v136)
    {
      goto LABEL_170;
    }

    v87 = v137;
    v22 = v136;
    if (v137 == v136)
    {
      goto LABEL_169;
    }

    do
    {
      v89 = *--v87;
      v88 = v89;
      *v87 = 0;
      if (v89)
      {
        MEMORY[0x1AC55A040](v88, 0x1000C8077774924);
      }
    }

    while (v87 != v20);
    goto LABEL_168;
  }

  return v16;
}

uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolMaxGradientOp>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v178 = *MEMORY[0x1E69E9840];
  v163 = a1;
  v4 = (a1 + 16 * ((*(a1 + 44) >> 23) & 1));
  v162 = v4[15];
  v161 = v4[9];
  v160 = v4[16];
  v159 = v4[10];
  if (v160)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v160) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v156, v160, 0);
      v3 = v160;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v160);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v153, v3, NumElements);
      while (v158 != v155)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v156, &v151);
        if (v152 > 0x40)
        {
          if (*v151 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v152 || (v151 << -v152) >> -v152 <= 0)
        {
LABEL_7:
          v150 = 259;
          mlir::OpState::emitOpError(&v163, v149, v167);
          if (v152 > 0x40)
          {
            v6 = *v151;
            if (!v167[0])
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v152)
            {
              v6 = (v151 << -v152) >> -v152;
            }

            else
            {
              v6 = 0;
            }

            if (!v167[0])
            {
              goto LABEL_23;
            }
          }

          LODWORD(v164) = 2;
          v165 = v6;
          v8 = v168;
          if (v169 >= v170)
          {
            if (v168 <= &v164 && v168 + 24 * v169 > &v164)
            {
              v25 = &v164 - v168;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
              v8 = v168;
              v9 = (v168 + v25);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
              v9 = &v164;
              v8 = v168;
            }
          }

          else
          {
            v9 = &v164;
          }

          v10 = &v8[24 * v169];
          v11 = *v9;
          *(v10 + 2) = v9[2];
          *v10 = v11;
          v12 = ++v169;
          if (v167[0])
          {
            LODWORD(v164) = 3;
            v165 = ", all values should be positive.";
            v166 = 32;
            v13 = v168;
            if (v12 >= v170)
            {
              if (v168 <= &v164 && v168 + 24 * v12 > &v164)
              {
                v26 = &v164 - v168;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v12 + 1, 24);
                v13 = v168;
                v14 = (v168 + v26);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v12 + 1, 24);
                v14 = &v164;
                v13 = v168;
              }
            }

            else
            {
              v14 = &v164;
            }

            v15 = &v13[24 * v169];
            v16 = *v14;
            *(v15 + 2) = v14[2];
            *v15 = v16;
            ++v169;
          }

LABEL_23:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v167);
          if (v167[0])
          {
            mlir::InFlightDiagnostic::report(v167);
          }

          if (v177 == 1)
          {
            if (v176 != &v177)
            {
              free(v176);
            }

            v17 = __p;
            if (__p)
            {
              v18 = v175;
              v19 = __p;
              if (v175 != __p)
              {
                do
                {
                  v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
                }

                while (v18 != v17);
                v19 = __p;
              }

              v175 = v17;
              operator delete(v19);
            }

            v20 = v172;
            if (v172)
            {
              v21 = v173;
              v22 = v172;
              if (v173 != v172)
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
                v22 = v172;
              }

              v173 = v20;
              operator delete(v22);
            }

            if (v168 != v171)
            {
              free(v168);
            }
          }

          v7 = 0;
          if (v152 < 0x41)
          {
            goto LABEL_46;
          }

LABEL_44:
          if (v151)
          {
            MEMORY[0x1AC55A040](v151, 0x1000C8000313F17);
          }

          goto LABEL_46;
        }

        v7 = 1;
        if (v152 >= 0x41)
        {
          goto LABEL_44;
        }

LABEL_46:
        if (!v7)
        {
          return v3;
        }

        ++v158;
      }
    }
  }

  if (v162)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v162) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v156, v162, 0);
      v27 = v162;
      v28 = mlir::DenseElementsAttr::getNumElements(&v162);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v153, v27, v28);
      while (v158 != v155)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v156, &v151);
        if (v152 > 0x40)
        {
          if (*v151 <= 0)
          {
            goto LABEL_112;
          }
        }

        else if (!v152 || (v151 << -v152) >> -v152 <= 0)
        {
LABEL_112:
          v150 = 259;
          mlir::OpState::emitOpError(&v163, v149, v167);
          if (v152 > 0x40)
          {
            v61 = *v151;
            if (!v167[0])
            {
              goto LABEL_128;
            }
          }

          else
          {
            if (v152)
            {
              v61 = (v151 << -v152) >> -v152;
            }

            else
            {
              v61 = 0;
            }

            if (!v167[0])
            {
              goto LABEL_128;
            }
          }

          LODWORD(v164) = 2;
          v165 = v61;
          v63 = v168;
          if (v169 >= v170)
          {
            if (v168 <= &v164 && v168 + 24 * v169 > &v164)
            {
              v80 = &v164 - v168;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
              v63 = v168;
              v64 = (v168 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
              v64 = &v164;
              v63 = v168;
            }
          }

          else
          {
            v64 = &v164;
          }

          v65 = &v63[24 * v169];
          v66 = *v64;
          *(v65 + 2) = v64[2];
          *v65 = v66;
          v67 = ++v169;
          if (v167[0])
          {
            LODWORD(v164) = 3;
            v165 = ", all values should be positive.";
            v166 = 32;
            v68 = v168;
            if (v67 >= v170)
            {
              if (v168 <= &v164 && v168 + 24 * v67 > &v164)
              {
                v81 = &v164 - v168;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v67 + 1, 24);
                v68 = v168;
                v69 = (v168 + v81);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v67 + 1, 24);
                v69 = &v164;
                v68 = v168;
              }
            }

            else
            {
              v69 = &v164;
            }

            v70 = &v68[24 * v169];
            v71 = *v69;
            *(v70 + 2) = v69[2];
            *v70 = v71;
            ++v169;
          }

LABEL_128:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v167);
          if (v167[0])
          {
            mlir::InFlightDiagnostic::report(v167);
          }

          if (v177 == 1)
          {
            if (v176 != &v177)
            {
              free(v176);
            }

            v72 = __p;
            if (__p)
            {
              v73 = v175;
              v74 = __p;
              if (v175 != __p)
              {
                do
                {
                  v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
                }

                while (v73 != v72);
                v74 = __p;
              }

              v175 = v72;
              operator delete(v74);
            }

            v75 = v172;
            if (v172)
            {
              v76 = v173;
              v77 = v172;
              if (v173 != v172)
              {
                do
                {
                  v79 = *--v76;
                  v78 = v79;
                  *v76 = 0;
                  if (v79)
                  {
                    MEMORY[0x1AC55A040](v78, 0x1000C8077774924);
                  }
                }

                while (v76 != v75);
                v77 = v172;
              }

              v173 = v75;
              operator delete(v77);
            }

            if (v168 != v171)
            {
              free(v168);
            }
          }

          v62 = 0;
          if (v152 < 0x41)
          {
            goto LABEL_151;
          }

LABEL_149:
          if (v151)
          {
            MEMORY[0x1AC55A040](v151, 0x1000C8000313F17);
          }

          goto LABEL_151;
        }

        v62 = 1;
        if (v152 >= 0x41)
        {
          goto LABEL_149;
        }

LABEL_151:
        if (!v62)
        {
          return v3;
        }

        ++v158;
      }
    }
  }

  if (v161)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v161) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v156, v161, 0);
      v29 = v161;
      v30 = mlir::DenseElementsAttr::getNumElements(&v161);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v153, v29, v30);
      while (v158 != v155)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v156, &v151);
        if (v152 > 0x40)
        {
          if (*v151 <= 0)
          {
            goto LABEL_170;
          }
        }

        else if (!v152 || (v151 << -v152) >> -v152 <= 0)
        {
LABEL_170:
          v150 = 259;
          mlir::OpState::emitOpError(&v163, v149, v167);
          if (v152 > 0x40)
          {
            v83 = *v151;
            if (!v167[0])
            {
              goto LABEL_186;
            }
          }

          else
          {
            if (v152)
            {
              v83 = (v151 << -v152) >> -v152;
            }

            else
            {
              v83 = 0;
            }

            if (!v167[0])
            {
              goto LABEL_186;
            }
          }

          LODWORD(v164) = 2;
          v165 = v83;
          v85 = v168;
          if (v169 >= v170)
          {
            if (v168 <= &v164 && v168 + 24 * v169 > &v164)
            {
              v102 = &v164 - v168;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
              v85 = v168;
              v86 = (v168 + v102);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
              v86 = &v164;
              v85 = v168;
            }
          }

          else
          {
            v86 = &v164;
          }

          v87 = &v85[24 * v169];
          v88 = *v86;
          *(v87 + 2) = v86[2];
          *v87 = v88;
          v89 = ++v169;
          if (v167[0])
          {
            LODWORD(v164) = 3;
            v165 = ", all values should be positive.";
            v166 = 32;
            v90 = v168;
            if (v89 >= v170)
            {
              if (v168 <= &v164 && v168 + 24 * v89 > &v164)
              {
                v103 = &v164 - v168;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v89 + 1, 24);
                v90 = v168;
                v91 = (v168 + v103);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v89 + 1, 24);
                v91 = &v164;
                v90 = v168;
              }
            }

            else
            {
              v91 = &v164;
            }

            v92 = &v90[24 * v169];
            v93 = *v91;
            *(v92 + 2) = v91[2];
            *v92 = v93;
            ++v169;
          }

LABEL_186:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v167);
          if (v167[0])
          {
            mlir::InFlightDiagnostic::report(v167);
          }

          if (v177 == 1)
          {
            if (v176 != &v177)
            {
              free(v176);
            }

            v94 = __p;
            if (__p)
            {
              v95 = v175;
              v96 = __p;
              if (v175 != __p)
              {
                do
                {
                  v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
                }

                while (v95 != v94);
                v96 = __p;
              }

              v175 = v94;
              operator delete(v96);
            }

            v97 = v172;
            if (v172)
            {
              v98 = v173;
              v99 = v172;
              if (v173 != v172)
              {
                do
                {
                  v101 = *--v98;
                  v100 = v101;
                  *v98 = 0;
                  if (v101)
                  {
                    MEMORY[0x1AC55A040](v100, 0x1000C8077774924);
                  }
                }

                while (v98 != v97);
                v99 = v172;
              }

              v173 = v97;
              operator delete(v99);
            }

            if (v168 != v171)
            {
              free(v168);
            }
          }

          v84 = 0;
          if (v152 < 0x41)
          {
            goto LABEL_209;
          }

LABEL_207:
          if (v151)
          {
            MEMORY[0x1AC55A040](v151, 0x1000C8000313F17);
          }

          goto LABEL_209;
        }

        v84 = 1;
        if (v152 >= 0x41)
        {
          goto LABEL_207;
        }

LABEL_209:
        if (!v84)
        {
          return v3;
        }

        ++v158;
      }
    }
  }

  if (v159)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v159) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v156, v159, 0);
      v31 = v159;
      v32 = mlir::DenseElementsAttr::getNumElements(&v159);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v153, v31, v32);
      if (v158 != v155)
      {
        v104 = 0x1000C8000313F17;
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v156, &v151);
          if (v152 > 0x40)
          {
            break;
          }

          if (v152)
          {
            v106 = (v151 << -v152) >> -v152;
            if (v106 < 0)
            {
              goto LABEL_226;
            }

LABEL_233:
            if (v152 >= 0x41)
            {
LABEL_263:
              if (v151)
              {
                MEMORY[0x1AC55A040](v151, v104);
              }
            }

LABEL_221:
            if (v106 < 0)
            {
              return v3;
            }
          }

          if (++v158 == v155)
          {
            goto LABEL_66;
          }
        }

        v106 = *v151;
        if ((*v151 & 0x8000000000000000) == 0)
        {
          goto LABEL_233;
        }

LABEL_226:
        v149[0] = v105;
        v150 = 259;
        mlir::OpState::emitOpError(&v163, v149, v167);
        if (v152 > 0x40)
        {
          v107 = *v151;
          if (!v167[0])
          {
            goto LABEL_242;
          }
        }

        else
        {
          if (v152)
          {
            v107 = (v151 << -v152) >> -v152;
          }

          else
          {
            v107 = 0;
          }

          if (!v167[0])
          {
            goto LABEL_242;
          }
        }

        LODWORD(v164) = 2;
        v165 = v107;
        v108 = v168;
        if (v169 >= v170)
        {
          if (v168 <= &v164 && v168 + 24 * v169 > &v164)
          {
            v127 = &v164 - v168;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
            v108 = v168;
            v109 = (v168 + v127);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
            v109 = &v164;
            v108 = v168;
          }
        }

        else
        {
          v109 = &v164;
        }

        v110 = &v108[24 * v169];
        v111 = *v109;
        *(v110 + 2) = v109[2];
        *v110 = v111;
        v112 = ++v169;
        if (v167[0])
        {
          LODWORD(v164) = 3;
          v165 = ", all values should be non-negative.";
          v166 = 36;
          v113 = v168;
          if (v112 >= v170)
          {
            if (v168 <= &v164 && v168 + 24 * v112 > &v164)
            {
              v128 = &v164 - v168;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v112 + 1, 24);
              v113 = v168;
              v114 = (v168 + v128);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v112 + 1, 24);
              v114 = &v164;
              v113 = v168;
            }
          }

          else
          {
            v114 = &v164;
          }

          v115 = &v113[24 * v169];
          v116 = *v114;
          *(v115 + 2) = v114[2];
          *v115 = v116;
          ++v169;
        }

LABEL_242:
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v167);
        if (v167[0])
        {
          mlir::InFlightDiagnostic::report(v167);
        }

        if (v177 == 1)
        {
          if (v176 != &v177)
          {
            free(v176);
          }

          v117 = v105;
          v118 = __p;
          if (__p)
          {
            v119 = v175;
            v120 = __p;
            if (v175 != __p)
            {
              do
              {
                v119 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v119 - 1);
              }

              while (v119 != v118);
              v120 = __p;
            }

            v175 = v118;
            operator delete(v120);
          }

          v121 = v172;
          if (v172)
          {
            v122 = v104;
            v123 = v173;
            v124 = v172;
            if (v173 != v172)
            {
              do
              {
                v126 = *--v123;
                v125 = v126;
                *v123 = 0;
                if (v126)
                {
                  MEMORY[0x1AC55A040](v125, 0x1000C8077774924);
                }
              }

              while (v123 != v121);
              v124 = v172;
            }

            v173 = v121;
            operator delete(v124);
            v104 = v122;
          }

          v105 = v117;
          if (v168 != v171)
          {
            free(v168);
          }
        }

        if (v152 >= 0x41)
        {
          goto LABEL_263;
        }

        goto LABEL_221;
      }
    }
  }

LABEL_66:
  v33 = *(v163[2 * ((*(v163 + 11) >> 23) & 1) + 14] + 8);
  if (v33 == 3)
  {
    v150 = 259;
    mlir::OpState::emitOpError(&v163, v149, v167);
    if (v167[0])
    {
      LODWORD(v156) = 3;
      v157 = "not supported by this op.";
      v158 = 25;
      v51 = &v156;
      v52 = v168;
      if (v169 >= v170)
      {
        if (v168 <= &v156 && v168 + 24 * v169 > &v156)
        {
          v144 = &v156 - v168;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
          v52 = v168;
          v51 = (v168 + v144);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
          v51 = &v156;
          v52 = v168;
        }
      }

      v53 = &v52[24 * v169];
      v54 = *v51;
      *(v53 + 2) = v51[2];
      *v53 = v54;
      ++v169;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v167);
    if (v167[0])
    {
      mlir::InFlightDiagnostic::report(v167);
    }

    if (v177 == 1)
    {
      if (v176 != &v177)
      {
        free(v176);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v175;
        v57 = __p;
        if (v175 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v175 = v55;
        operator delete(v57);
      }

      v46 = v172;
      if (!v172)
      {
        goto LABEL_164;
      }

      v58 = v173;
      v48 = v172;
      if (v173 == v172)
      {
        goto LABEL_163;
      }

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

      while (v58 != v46);
      goto LABEL_162;
    }
  }

  else if (v33 || v159)
  {
    if (mlir::mps::checkInputTensors<mlir::mps::PoolMaxGradientOp>(v163))
    {
      if (a2)
      {
        v129 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
        v156 = v129;
        v157 = v130;
      }

      else
      {
        v129 = 0;
        v156 = 0;
        v157 = 0;
      }

      if (a3)
      {
        v131 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
        v153 = v131;
        v154 = v132;
      }

      else
      {
        v131 = 0;
        v153 = 0;
        v154 = 0;
      }

      if (!v129)
      {
        return 1;
      }

      if (*(*v129 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v131 == 0)
      {
        return 1;
      }

      if (*(*v131 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        return 1;
      }

      mlir::ShapedType::getShape(&v156);
      v135 = v134;
      mlir::ShapedType::getShape(&v153);
      if (v135 == v136)
      {
        return 1;
      }

      else
      {
        v150 = 259;
        mlir::OpState::emitOpError(&v163, v149, v167);
        mlir::ShapedType::getShape(&v156);
        v164 = v137;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v167, &v164);
        v140 = v139;
        mlir::ShapedType::getShape(&v153);
        v151 = v141;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v140, &v151);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v142, ".");
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v167);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v150 = 259;
    mlir::OpState::emitOpError(&v163, v149, v167);
    if (v167[0])
    {
      LODWORD(v156) = 3;
      v157 = "invalid type. Must be specified when ";
      v158 = 37;
      v34 = &v156;
      v35 = v168;
      if (v169 >= v170)
      {
        if (v168 <= &v156 && v168 + 24 * v169 > &v156)
        {
          v145 = &v156 - v168;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
          v35 = v168;
          v34 = (v168 + v145);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v169 + 1, 24);
          v34 = &v156;
          v35 = v168;
        }
      }

      v36 = &v35[24 * v169];
      v37 = *v34;
      *(v36 + 2) = v34[2];
      *v36 = v37;
      v38 = ++v169;
      if (v167[0])
      {
        LODWORD(v156) = 3;
        v158 = 31;
        v39 = &v156;
        v40 = v168;
        if (v38 >= v170)
        {
          if (v168 <= &v156 && v168 + 24 * v38 > &v156)
          {
            v146 = &v156 - v168;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v38 + 1, 24);
            v40 = v168;
            v39 = (v168 + v146);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v168, v171, v38 + 1, 24);
            v39 = &v156;
            v40 = v168;
          }
        }

        v41 = &v40[24 * v169];
        v42 = *v39;
        *(v41 + 2) = v39[2];
        *v41 = v42;
        ++v169;
      }
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v167);
    if (v167[0])
    {
      mlir::InFlightDiagnostic::report(v167);
    }

    if (v177 == 1)
    {
      if (v176 != &v177)
      {
        free(v176);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v175;
        v45 = __p;
        if (v175 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v175 = v43;
        operator delete(v45);
      }

      v46 = v172;
      if (!v172)
      {
        goto LABEL_164;
      }

      v47 = v173;
      v48 = v172;
      if (v173 == v172)
      {
LABEL_163:
        v173 = v46;
        operator delete(v48);
LABEL_164:
        if (v168 != v171)
        {
          free(v168);
        }

        return v3;
      }

      do
      {
        v50 = *--v47;
        v49 = v50;
        *v47 = 0;
        if (v50)
        {
          MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
        }
      }

      while (v47 != v46);
LABEL_162:
      v48 = v172;
      goto LABEL_163;
    }
  }

  return v3;
}