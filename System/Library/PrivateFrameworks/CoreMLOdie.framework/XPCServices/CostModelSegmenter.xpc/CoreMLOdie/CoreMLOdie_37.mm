BOOL mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 2)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001D4DAC(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReverseOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 2)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001D4DAC(a2, a3, "expected exactly 2 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::ReverseOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v222 = *(v4 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v222))
  {
    return 1;
  }

  Shape = mlir::RankedTensorType::getShape(&v222);
  if (v6)
  {
    v7 = 8 * v6;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_6:
  v221 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v221);
  v9 = v8;
  v10 = mlir::RankedTensorType::getShape(&v222);
  if (mlir::ShapedType::getNumElements(v10, v11) > v9)
  {
    v249[4] = 257;
    p_src = &__src;
    mlir::OpState::emitError(this, &v247, &__src);
    if (!__src)
    {
LABEL_10:
      v18 = mlir::RankedTensorType::getShape(&v222);
      NumElements = mlir::ShapedType::getNumElements(v18, v19);
      if (__src)
      {
        LODWORD(v223) = 2;
        v224 = NumElements;
        v21 = &v223;
        v22 = v236;
        if (v237 >= v238)
        {
          if (v236 <= &v223 && v236 + 24 * v237 > &v223)
          {
            v198 = &v223 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v22 = v236;
            v21 = (v236 + v198);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v21 = &v223;
            v22 = v236;
          }
        }

        v23 = &v22[24 * v237];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        v25 = ++v237;
        if (__src)
        {
          LODWORD(v223) = 3;
          v224 = " must be <= input rank ";
          v225 = 23;
          v26 = &v223;
          v27 = v236;
          if (v25 >= v238)
          {
            if (v236 <= &v223 && v236 + 24 * v25 > &v223)
            {
              v199 = &v223 - v236;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v25 + 1, 24);
              v27 = v236;
              v26 = (v236 + v199);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v25 + 1, 24);
              v26 = &v223;
              v27 = v236;
            }
          }

          v28 = &v27[24 * v237];
          v29 = *v26;
          *(v28 + 2) = v26[2];
          *v28 = v29;
          v30 = ++v237;
          if (__src)
          {
            LODWORD(v223) = 2;
            v224 = v9;
            v31 = &v223;
            v32 = v236;
            if (v30 >= v238)
            {
              if (v236 <= &v223 && v236 + 24 * v30 > &v223)
              {
                v200 = &v223 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v30 + 1, 24);
                v32 = v236;
                v31 = (v236 + v200);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v30 + 1, 24);
                v31 = &v223;
                v32 = v236;
              }
            }

            v33 = &v32[24 * v237];
            v34 = *v31;
            *(v33 + 2) = v31[2];
            *v33 = v34;
            ++v237;
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
      v36 = result;
      if (__src)
      {
        mlir::InFlightDiagnostic::report(&__src);
        result = v36;
      }

      if (v246 == 1)
      {
        if (v245 != &v246)
        {
          free(v245);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v244;
          v39 = __p;
          if (v244 != __p)
          {
            do
            {
              v38 = sub_100052FFC(v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v244 = v37;
          operator delete(v39);
        }

        v40 = v241;
        result = v36;
        if (v241)
        {
          v41 = v242;
          v42 = v241;
          if (v242 != v241)
          {
            do
            {
              v43 = *--v41;
              *v41 = 0;
              if (v43)
              {
                operator delete[]();
              }
            }

            while (v41 != v40);
            v42 = v241;
          }

          v242 = v40;
          operator delete(v42);
          result = v36;
        }

        if (v236 != v239)
        {
          free(v236);
          return v36;
        }
      }

      return result;
    }

    LODWORD(v223) = 3;
    v224 = " number of dimensions ";
    v225 = 22;
    v13 = v237;
    v14 = &v223;
    v15 = v236;
    if (v237 < v238)
    {
LABEL_9:
      v16 = &v15[24 * v237];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v237;
      goto LABEL_10;
    }

    if (v236 > &v223 || v236 + 24 * v237 <= &v223)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
      v14 = &v223;
      v15 = v236;
      goto LABEL_9;
    }

LABEL_300:
    v197 = (&v223 - v15);
    llvm::SmallVectorBase<unsigned int>::grow_pod(p_src + 24, v239, v13 + 1, 24);
    v15 = v236;
    v14 = &v197[v236];
    goto LABEL_9;
  }

  __src = 0;
  *&v235 = 0;
  v223 = &__src;
  v247 = v4;
  DefiningOp = mlir::Value::getDefiningOp(&v247);
  if (!DefiningOp || !sub_100250A7C(&v223, DefiningOp))
  {
    return 1;
  }

  __src = mlir::RankedTensorType::getElementType(&v222);
  isSignedInteger = mlir::Type::isSignedInteger(&__src, 16);
  p_src = *this;
  if (!isSignedInteger)
  {
    sub_1001F2F84(*(*(p_src + 9) + 56), &__src);
    if ((v240 & 1) == 0)
    {
      goto LABEL_299;
    }

    v46 = &v248 + 8;
    v247 = &v248 + 8;
    *&v248 = 0xC00000000;
    v49 = v235;
    v50 = __src;
    if (!v235)
    {
      goto LABEL_68;
    }

    if (__src != &v235 + 8)
    {
      v247 = __src;
      *&v248 = v235;
      v228 = 0;
      v229 = 0;
      v230 = 0;
LABEL_143:
      v56 = &v50[v49];
      while (1)
      {
LABEL_144:
        v126 = *v50;
        v227 = *v50;
        if (v230)
        {
          v127 = (v230 - 1) & (37 * v126);
          v128 = *(v228 + v127);
          if (v126 == v128)
          {
LABEL_146:
            if (v127 != v230)
            {
              v226 = 257;
              mlir::Operation::emitError(&__src, p_src, &v223);
              if (__src)
              {
                v231 = 3;
                v232 = " dimension ";
                v233 = 11;
                v175 = &v231;
                v176 = v236;
                if (v237 >= v238)
                {
                  if (v236 <= &v231 && v236 + 24 * v237 > &v231)
                  {
                    v204 = &v231 - v236;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                    v176 = v236;
                    v175 = (v236 + v204);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                    v175 = &v231;
                    v176 = v236;
                  }
                }

                v177 = &v176[24 * v237];
                v178 = *v175;
                *(v177 + 2) = *(v175 + 2);
                *v177 = v178;
                v179 = ++v237;
                if (__src)
                {
                  v231 = 2;
                  v232 = v227;
                  v180 = &v231;
                  v181 = v236;
                  if (v179 >= v238)
                  {
                    if (v236 <= &v231 && v236 + 24 * v179 > &v231)
                    {
                      v208 = &v231 - v236;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v179 + 1, 24);
                      v181 = v236;
                      v180 = (v236 + v208);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v179 + 1, 24);
                      v180 = &v231;
                      v181 = v236;
                    }
                  }

                  v182 = &v181[24 * v237];
                  v183 = *v180;
                  *(v182 + 2) = *(v180 + 2);
                  *v182 = v183;
                  v184 = ++v237;
                  if (__src)
                  {
                    v231 = 3;
                    v232 = " is specified more than once in dimensions operand";
                    v233 = 50;
                    v185 = &v231;
                    v186 = v236;
                    if (v184 >= v238)
                    {
                      if (v236 <= &v231 && v236 + 24 * v184 > &v231)
                      {
                        v212 = &v231 - v236;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v184 + 1, 24);
                        v186 = v236;
                        v185 = (v236 + v212);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v184 + 1, 24);
                        v185 = &v231;
                        v186 = v236;
                      }
                    }

                    v187 = &v186[24 * v237];
                    v188 = *v185;
                    *(v187 + 2) = *(v185 + 2);
                    *v187 = v188;
                    ++v237;
                  }
                }
              }

              v166 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
              v167 = v166;
              if (__src)
              {
                mlir::InFlightDiagnostic::report(&__src);
                v166 = v167;
              }

              if (v246 == 1)
              {
                if (v245 != &v246)
                {
                  free(v245);
                  v166 = v167;
                }

                v189 = __p;
                if (__p)
                {
                  v190 = v244;
                  v191 = __p;
                  if (v244 != __p)
                  {
                    do
                    {
                      v190 = sub_100052FFC(v190 - 1);
                    }

                    while (v190 != v189);
                    v191 = __p;
                  }

                  v244 = v189;
                  operator delete(v191);
                  v166 = v167;
                }

                v171 = v241;
                if (v241)
                {
                  v192 = v242;
                  v173 = v241;
                  if (v242 != v241)
                  {
                    do
                    {
                      v193 = *--v192;
                      *v192 = 0;
                      if (v193)
                      {
                        operator delete[]();
                      }
                    }

                    while (v192 != v171);
LABEL_218:
                    v173 = v241;
                  }

LABEL_219:
                  v242 = v171;
                  operator delete(v173);
                  v166 = v167;
                }

LABEL_220:
                if (v236 != v239)
                {
                  free(v236);
                  v166 = v167;
                }
              }

LABEL_222:
              v55 = v166;
LABEL_223:
              v194 = v228;
              v195 = (4 * v230);
              v196 = 4;
              goto LABEL_224;
            }
          }

          else
          {
            v130 = 1;
            while (v128 != 0x7FFFFFFF)
            {
              v131 = v127 + v130++;
              v127 = v131 & (v230 - 1);
              v128 = *(v228 + v127);
              if (v126 == v128)
              {
                goto LABEL_146;
              }
            }
          }
        }

        sub_100256190(&v228, &v227, &__src);
        if (v227 < -v9 || v9 <= v227)
        {
          v226 = 257;
          mlir::Operation::emitError(&__src, p_src, &v223);
          if (__src)
          {
            v231 = 3;
            v232 = " dimension ";
            v233 = 11;
            v132 = &v231;
            v133 = v236;
            if (v237 >= v238)
            {
              if (v236 <= &v231 && v236 + 24 * v237 > &v231)
              {
                v202 = &v231 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                v133 = v236;
                v132 = (v236 + v202);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
                v132 = &v231;
                v133 = v236;
              }
            }

            v134 = &v133[24 * v237];
            v135 = *v132;
            *(v134 + 2) = *(v132 + 2);
            *v134 = v135;
            v136 = ++v237;
            if (__src)
            {
              v231 = 2;
              v232 = v227;
              v137 = &v231;
              v138 = v236;
              if (v136 >= v238)
              {
                if (v236 <= &v231 && v236 + 24 * v136 > &v231)
                {
                  v206 = &v231 - v236;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v136 + 1, 24);
                  v138 = v236;
                  v137 = (v236 + v206);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v136 + 1, 24);
                  v137 = &v231;
                  v138 = v236;
                }
              }

              v139 = &v138[24 * v237];
              v140 = *v137;
              *(v139 + 2) = *(v137 + 2);
              *v139 = v140;
              v141 = ++v237;
              if (__src)
              {
                v231 = 3;
                v232 = " is beyond the legal range [";
                v233 = 28;
                v142 = &v231;
                v143 = v236;
                if (v141 >= v238)
                {
                  if (v236 <= &v231 && v236 + 24 * v141 > &v231)
                  {
                    v210 = &v231 - v236;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v141 + 1, 24);
                    v143 = v236;
                    v142 = (v236 + v210);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v141 + 1, 24);
                    v142 = &v231;
                    v143 = v236;
                  }
                }

                v144 = &v143[24 * v237];
                v145 = *v142;
                *(v144 + 2) = *(v142 + 2);
                *v144 = v145;
                v146 = ++v237;
                if (__src)
                {
                  v231 = 2;
                  v232 = -v9;
                  v147 = &v231;
                  v148 = v236;
                  if (v146 >= v238)
                  {
                    if (v236 <= &v231 && v236 + 24 * v146 > &v231)
                    {
                      v214 = &v231 - v236;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v146 + 1, 24);
                      v148 = v236;
                      v147 = (v236 + v214);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v146 + 1, 24);
                      v147 = &v231;
                      v148 = v236;
                    }
                  }

                  v149 = &v148[24 * v237];
                  v150 = *v147;
                  *(v149 + 2) = *(v147 + 2);
                  *v149 = v150;
                  v151 = ++v237;
                  if (__src)
                  {
                    v231 = 3;
                    v232 = ", ";
                    v233 = 2;
                    v152 = &v231;
                    v153 = v236;
                    if (v151 >= v238)
                    {
                      if (v236 <= &v231 && v236 + 24 * v151 > &v231)
                      {
                        v216 = &v231 - v236;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v151 + 1, 24);
                        v153 = v236;
                        v152 = (v236 + v216);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v151 + 1, 24);
                        v152 = &v231;
                        v153 = v236;
                      }
                    }

                    v154 = &v153[24 * v237];
                    v155 = *v152;
                    *(v154 + 2) = *(v152 + 2);
                    *v154 = v155;
                    v156 = ++v237;
                    if (__src)
                    {
                      v231 = 2;
                      v232 = v9;
                      v157 = &v231;
                      v158 = v236;
                      if (v156 >= v238)
                      {
                        if (v236 <= &v231 && v236 + 24 * v156 > &v231)
                        {
                          v218 = &v231 - v236;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v156 + 1, 24);
                          v158 = v236;
                          v157 = (v236 + v218);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v156 + 1, 24);
                          v157 = &v231;
                          v158 = v236;
                        }
                      }

                      v159 = &v158[24 * v237];
                      v160 = *v157;
                      *(v159 + 2) = *(v157 + 2);
                      *v159 = v160;
                      v161 = ++v237;
                      if (__src)
                      {
                        v231 = 3;
                        v232 = ")";
                        v233 = 1;
                        v162 = &v231;
                        v163 = v236;
                        if (v161 >= v238)
                        {
                          if (v236 <= &v231 && v236 + 24 * v161 > &v231)
                          {
                            v220 = &v231 - v236;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v161 + 1, 24);
                            v163 = v236;
                            v162 = (v236 + v220);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v161 + 1, 24);
                            v162 = &v231;
                            v163 = v236;
                          }
                        }

                        v164 = &v163[24 * v237];
                        v165 = *v162;
                        *(v164 + 2) = *(v162 + 2);
                        *v164 = v165;
                        ++v237;
                      }
                    }
                  }
                }
              }
            }
          }

          v166 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
          v167 = v166;
          if (__src)
          {
            mlir::InFlightDiagnostic::report(&__src);
            v166 = v167;
          }

          if (v246 == 1)
          {
            if (v245 != &v246)
            {
              free(v245);
              v166 = v167;
            }

            v168 = __p;
            if (__p)
            {
              v169 = v244;
              v170 = __p;
              if (v244 != __p)
              {
                do
                {
                  v169 = sub_100052FFC(v169 - 1);
                }

                while (v169 != v168);
                v170 = __p;
              }

              v244 = v168;
              operator delete(v170);
              v166 = v167;
            }

            v171 = v241;
            if (v241)
            {
              v172 = v242;
              v173 = v241;
              if (v242 != v241)
              {
                do
                {
                  v174 = *--v172;
                  *v172 = 0;
                  if (v174)
                  {
                    operator delete[]();
                  }
                }

                while (v172 != v171);
                goto LABEL_218;
              }

              goto LABEL_219;
            }

            goto LABEL_220;
          }

          goto LABEL_222;
        }

        if (++v50 == v56)
        {
          goto LABEL_157;
        }
      }
    }

    if (v235 < 0xD)
    {
      v54 = &v248 + 8;
      v53 = v235;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v247, &v248 + 8, v235, 4);
      v53 = v235;
      if (!v235)
      {
LABEL_66:
        LODWORD(v248) = v49;
        LODWORD(v235) = 0;
        if ((v240 & 1) == 0)
        {
          v228 = 0;
          v229 = 0;
          v230 = 0;
          v50 = v247;
          goto LABEL_143;
        }

        v50 = __src;
LABEL_68:
        if (v50 != (&v235 + 8))
        {
          free(v50);
          LODWORD(v49) = v248;
        }

        v228 = 0;
        v229 = 0;
        v230 = 0;
        if (v49)
        {
          v50 = v247;
          v56 = &v247[4 * v49];
          goto LABEL_144;
        }

LABEL_157:
        v55 = 1;
        goto LABEL_223;
      }

      v50 = __src;
      v54 = v247;
    }

    memcpy(v54, v50, 4 * v53);
    goto LABEL_66;
  }

  sub_100255AF8(*(*(p_src + 9) + 56), &__src);
  if ((v240 & 1) == 0)
  {
LABEL_299:
    sub_10024F430();
    goto LABEL_300;
  }

  v46 = v249;
  v247 = v249;
  v248 = xmmword_10028FD10;
  v47 = __src;
  v48 = v235;
  if (!v235)
  {
    goto LABEL_60;
  }

  if (__src == &v236)
  {
    if (v235 < 0x15)
    {
      v52 = v249;
      v51 = v235;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v247, v249, v235, 2);
      v51 = v235;
      if (!v235)
      {
LABEL_58:
        *&v248 = v48;
        *&v235 = 0;
        if ((v240 & 1) == 0)
        {
          v228 = 0;
          v229 = 0;
          v230 = 0;
LABEL_73:
          v47 = v247;
          goto LABEL_74;
        }

        v47 = __src;
LABEL_60:
        if (v47 != &v236)
        {
          free(v47);
          v48 = v248;
        }

        v228 = 0;
        v229 = 0;
        v230 = 0;
        if (!v48)
        {
LABEL_63:
          v55 = 1;
          goto LABEL_217;
        }

        goto LABEL_73;
      }

      v47 = __src;
      v52 = v247;
    }

    memcpy(v52, v47, 2 * v51);
    goto LABEL_58;
  }

  v247 = __src;
  v248 = v235;
  v228 = 0;
  v229 = 0;
  v230 = 0;
LABEL_74:
  v57 = v47 + v48;
  while (1)
  {
    v58 = *v47;
    LOWORD(v227) = *v47;
    if (!v230)
    {
      goto LABEL_78;
    }

    v59 = (v230 - 1) & (37 * v58);
    v60 = *(v228 + v59);
    if (v60 == v58)
    {
      break;
    }

    v62 = 1;
    while (v60 != 0x7FFF)
    {
      v63 = v59 + v62++;
      v59 = v63 & (v230 - 1);
      v60 = *(v228 + v59);
      if (v60 == v58)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    sub_100255D94(&v228, &v227, &__src);
    if (v227 < -v9 || v9 <= v227)
    {
      v226 = 257;
      mlir::Operation::emitError(&__src, p_src, &v223);
      if (__src)
      {
        v231 = 3;
        v232 = " dimension ";
        v233 = 11;
        v64 = &v231;
        v65 = v236;
        if (v237 >= v238)
        {
          if (v236 <= &v231 && v236 + 24 * v237 > &v231)
          {
            v201 = &v231 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v65 = v236;
            v64 = (v236 + v201);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
            v64 = &v231;
            v65 = v236;
          }
        }

        v66 = &v65[24 * v237];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        v68 = ++v237;
        if (__src)
        {
          v231 = 2;
          v232 = v227;
          v69 = &v231;
          v70 = v236;
          if (v68 >= v238)
          {
            if (v236 <= &v231 && v236 + 24 * v68 > &v231)
            {
              v205 = &v231 - v236;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v68 + 1, 24);
              v70 = v236;
              v69 = (v236 + v205);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v68 + 1, 24);
              v69 = &v231;
              v70 = v236;
            }
          }

          v71 = &v70[24 * v237];
          v72 = *v69;
          *(v71 + 2) = *(v69 + 2);
          *v71 = v72;
          v73 = ++v237;
          if (__src)
          {
            v231 = 3;
            v232 = " is beyond the legal range [";
            v233 = 28;
            v74 = &v231;
            v75 = v236;
            if (v73 >= v238)
            {
              if (v236 <= &v231 && v236 + 24 * v73 > &v231)
              {
                v209 = &v231 - v236;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v73 + 1, 24);
                v75 = v236;
                v74 = (v236 + v209);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v73 + 1, 24);
                v74 = &v231;
                v75 = v236;
              }
            }

            v76 = &v75[24 * v237];
            v77 = *v74;
            *(v76 + 2) = *(v74 + 2);
            *v76 = v77;
            v78 = ++v237;
            if (__src)
            {
              v231 = 2;
              v232 = -v9;
              v79 = &v231;
              v80 = v236;
              if (v78 >= v238)
              {
                if (v236 <= &v231 && v236 + 24 * v78 > &v231)
                {
                  v213 = &v231 - v236;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v78 + 1, 24);
                  v80 = v236;
                  v79 = (v236 + v213);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v78 + 1, 24);
                  v79 = &v231;
                  v80 = v236;
                }
              }

              v81 = &v80[24 * v237];
              v82 = *v79;
              *(v81 + 2) = *(v79 + 2);
              *v81 = v82;
              v83 = ++v237;
              if (__src)
              {
                v231 = 3;
                v232 = ", ";
                v233 = 2;
                v84 = &v231;
                v85 = v236;
                if (v83 >= v238)
                {
                  if (v236 <= &v231 && v236 + 24 * v83 > &v231)
                  {
                    v215 = &v231 - v236;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v83 + 1, 24);
                    v85 = v236;
                    v84 = (v236 + v215);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v83 + 1, 24);
                    v84 = &v231;
                    v85 = v236;
                  }
                }

                v86 = &v85[24 * v237];
                v87 = *v84;
                *(v86 + 2) = *(v84 + 2);
                *v86 = v87;
                v88 = ++v237;
                if (__src)
                {
                  v231 = 2;
                  v232 = v9;
                  v89 = &v231;
                  v90 = v236;
                  if (v88 >= v238)
                  {
                    if (v236 <= &v231 && v236 + 24 * v88 > &v231)
                    {
                      v217 = &v231 - v236;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v88 + 1, 24);
                      v90 = v236;
                      v89 = (v236 + v217);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v88 + 1, 24);
                      v89 = &v231;
                      v90 = v236;
                    }
                  }

                  v91 = &v90[24 * v237];
                  v92 = *v89;
                  *(v91 + 2) = *(v89 + 2);
                  *v91 = v92;
                  v93 = ++v237;
                  if (__src)
                  {
                    v231 = 3;
                    v232 = ")";
                    v233 = 1;
                    v94 = &v231;
                    v95 = v236;
                    if (v93 >= v238)
                    {
                      if (v236 <= &v231 && v236 + 24 * v93 > &v231)
                      {
                        v219 = &v231 - v236;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v93 + 1, 24);
                        v95 = v236;
                        v94 = (v236 + v219);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v93 + 1, 24);
                        v94 = &v231;
                        v95 = v236;
                      }
                    }

                    v96 = &v95[24 * v237];
                    v97 = *v94;
                    *(v96 + 2) = *(v94 + 2);
                    *v96 = v97;
                    ++v237;
                  }
                }
              }
            }
          }
        }
      }

      v98 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
      v99 = v98;
      if (__src)
      {
        mlir::InFlightDiagnostic::report(&__src);
        v98 = v99;
      }

      if (v246 == 1)
      {
        if (v245 != &v246)
        {
          free(v245);
        }

        v100 = __p;
        if (__p)
        {
          v101 = v244;
          v102 = __p;
          if (v244 != __p)
          {
            do
            {
              v101 = sub_100052FFC(v101 - 1);
            }

            while (v101 != v100);
            v102 = __p;
          }

          v244 = v100;
          operator delete(v102);
        }

        v103 = v241;
        v98 = v99;
        if (v241)
        {
          v104 = v242;
          v105 = v241;
          if (v242 != v241)
          {
            do
            {
              v106 = *--v104;
              *v104 = 0;
              if (v106)
              {
                operator delete[]();
              }
            }

            while (v104 != v103);
            goto LABEL_212;
          }

          goto LABEL_213;
        }

        goto LABEL_214;
      }

      goto LABEL_216;
    }

    v47 = (v47 + 2);
    if (v47 == v57)
    {
      goto LABEL_63;
    }
  }

LABEL_77:
  if (v59 == v230)
  {
    goto LABEL_78;
  }

  v226 = 257;
  mlir::Operation::emitError(&__src, p_src, &v223);
  if (__src)
  {
    v231 = 3;
    v232 = " dimension ";
    v233 = 11;
    v107 = &v231;
    v108 = v236;
    if (v237 >= v238)
    {
      if (v236 <= &v231 && v236 + 24 * v237 > &v231)
      {
        v203 = &v231 - v236;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
        v108 = v236;
        v107 = (v236 + v203);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v237 + 1, 24);
        v107 = &v231;
        v108 = v236;
      }
    }

    v109 = &v108[24 * v237];
    v110 = *v107;
    *(v109 + 2) = *(v107 + 2);
    *v109 = v110;
    v111 = ++v237;
    if (__src)
    {
      v231 = 2;
      v232 = v227;
      v112 = &v231;
      v113 = v236;
      if (v111 >= v238)
      {
        if (v236 <= &v231 && v236 + 24 * v111 > &v231)
        {
          v207 = &v231 - v236;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v111 + 1, 24);
          v113 = v236;
          v112 = (v236 + v207);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v111 + 1, 24);
          v112 = &v231;
          v113 = v236;
        }
      }

      v114 = &v113[24 * v237];
      v115 = *v112;
      *(v114 + 2) = *(v112 + 2);
      *v114 = v115;
      v116 = ++v237;
      if (__src)
      {
        v231 = 3;
        v232 = " is specified more than once in dimensions operand";
        v233 = 50;
        v117 = &v231;
        v118 = v236;
        if (v116 >= v238)
        {
          if (v236 <= &v231 && v236 + 24 * v116 > &v231)
          {
            v211 = &v231 - v236;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v116 + 1, 24);
            v118 = v236;
            v117 = (v236 + v211);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v236, v239, v116 + 1, 24);
            v117 = &v231;
            v118 = v236;
          }
        }

        v119 = &v118[24 * v237];
        v120 = *v117;
        *(v119 + 2) = *(v117 + 2);
        *v119 = v120;
        ++v237;
      }
    }
  }

  v98 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
  v99 = v98;
  if (__src)
  {
    mlir::InFlightDiagnostic::report(&__src);
    v98 = v99;
  }

  if (v246 == 1)
  {
    if (v245 != &v246)
    {
      free(v245);
    }

    v121 = __p;
    if (__p)
    {
      v122 = v244;
      v123 = __p;
      if (v244 != __p)
      {
        do
        {
          v122 = sub_100052FFC(v122 - 1);
        }

        while (v122 != v121);
        v123 = __p;
      }

      v244 = v121;
      operator delete(v123);
    }

    v103 = v241;
    v98 = v99;
    if (v241)
    {
      v124 = v242;
      v105 = v241;
      if (v242 != v241)
      {
        do
        {
          v125 = *--v124;
          *v124 = 0;
          if (v125)
          {
            operator delete[]();
          }
        }

        while (v124 != v103);
LABEL_212:
        v105 = v241;
      }

LABEL_213:
      v242 = v103;
      operator delete(v105);
      v98 = v99;
    }

LABEL_214:
    if (v236 != v239)
    {
      free(v236);
      v98 = v99;
    }
  }

LABEL_216:
  v55 = v98;
LABEL_217:
  v194 = v228;
  v195 = (2 * v230);
  v196 = 2;
LABEL_224:
  llvm::deallocate_buffer(v194, v195, v196);
  if (v247 != v46)
  {
    free(v247);
  }

  return v55;
}

void mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58[0] = a4;
  v58[1] = a5;
  if (a5 == 4)
  {
    v11 = mlir::ValueRange::dereference_iterator(v58, 2);
    v12 = mlir::ValueRange::dereference_iterator(v58, 1);
    v13 = *(mlir::ValueRange::dereference_iterator(v58, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 0;
    }

    v53 = v13;
    v14 = *(v12 + 1) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 0;
    }

    v52 = v14;
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      Shape = mlir::RankedTensorType::getShape(&v53);
      v18 = v17;
      ElementType = mlir::RankedTensorType::getElementType(&v52);
      LOBYTE(v54) = 0;
      v57 = 0;
      v65 = 0;
      *&v66 = 0;
      __src = &v65;
      v69 = v12;
      DefiningOp = mlir::Value::getDefiningOp(&v69);
      if (!DefiningOp || !sub_100250A7C(&__src, DefiningOp))
      {
LABEL_93:
        if (v57 == 1 && v54 != v56)
        {
          free(v54);
        }

        return;
      }

      if (!mlir::Type::isSignedInteger(&ElementType, 16))
      {
        if (mlir::Type::isSignedInteger(&ElementType, 32))
        {
          sub_100205B58(&v65, Shape, v18, v12, v11);
        }

        else
        {
          sub_100205EF8(&v65, Shape, v18, v12, v11);
        }

        sub_100201484(&v54, &v65);
        if (v68 != 1)
        {
LABEL_89:
          if (v57 != 1)
          {
            return;
          }

          v40 = v54;
          v41 = v55;
          v42 = mlir::RankedTensorType::getElementType(&v53);
          v43 = mlir::RankedTensorType::get(v40, v41, v42, 0);
          v44 = *(a11 + 8);
          if (v44 >= *(a11 + 12))
          {
            v45 = v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v44 + 1, 8);
            v43 = v45;
            LODWORD(v44) = *(a11 + 8);
          }

          *(*a11 + 8 * v44) = v43;
          ++*(a11 + 8);
          goto LABEL_93;
        }

        v22 = v65;
LABEL_87:
        if (v22 != &v66 + 8)
        {
          free(v22);
        }

        goto LABEL_89;
      }

      sub_100255AF8(v12, &v65);
      if ((v68 & 1) == 0)
      {
        goto LABEL_98;
      }

      v59 = v61;
      v60 = xmmword_10028FD10;
      v20 = v65;
      v21 = v66;
      if (!v66)
      {
        goto LABEL_34;
      }

      if (v65 != v67)
      {
        v59 = v65;
        v60 = v66;
        goto LABEL_36;
      }

      if (v66 < 0x15)
      {
        v24 = v61;
        v23 = v66;
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v59, v61, v66, 2);
        v23 = v66;
        if (!v66)
        {
LABEL_32:
          *&v60 = v21;
          *&v66 = 0;
          if ((v68 & 1) == 0)
          {
            goto LABEL_36;
          }

          v20 = v65;
LABEL_34:
          if (v20 != v67)
          {
            free(v20);
          }

LABEL_36:
          sub_100251198(v11, &v65);
          if (v68)
          {
            v69 = v71;
            v70 = xmmword_10028F060;
            v25 = v65;
            v26 = v66;
            if (!v66)
            {
              goto LABEL_47;
            }

            if (v65 != v67)
            {
              v69 = v65;
              v70 = v66;
              goto LABEL_49;
            }

            if (v66 < 0x29)
            {
              v28 = v71;
              v27 = v66;
            }

            else
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(&v69, v71, v66, 1);
              v27 = v66;
              if (!v66)
              {
LABEL_45:
                *&v70 = v26;
                *&v66 = 0;
                if ((v68 & 1) == 0)
                {
                  goto LABEL_49;
                }

                v25 = v65;
LABEL_47:
                if (v25 != v67)
                {
                  free(v25);
                }

LABEL_49:
                __src = v64;
                v63 = 0x600000000;
                v29 = (8 * v18) >> 3;
                if (v29 < 7)
                {
                  v30 = 0;
                  v31 = v64;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v64, v29, 8);
                  v30 = v63;
                  v31 = __src;
                }

                v32 = 8 * v18;
                if (v18)
                {
                  memcpy(&v31[8 * v30], Shape, 8 * v18);
                  v30 = v63;
                  v31 = __src;
                }

                v33 = (v30 + v18);
                LODWORD(v63) = v30 + (v32 >> 3);
                if (!v63)
                {
                  v65 = &v66 + 8;
                  *&v66 = 0x600000000;
LABEL_69:
                  v68 = 1;
                  if (v31 != v64)
                  {
                    free(v31);
                  }

                  if (v69 != v71)
                  {
                    free(v69);
                  }

                  if (v59 != v61)
                  {
                    free(v59);
                  }

                  if (v57 == v68)
                  {
                    if (v57)
                    {
                      sub_100056AF0(&v54, &v65);
                    }
                  }

                  else if (v57)
                  {
                    if (v54 != v56)
                    {
                      free(v54);
                    }

                    v57 = 0;
                  }

                  else
                  {
                    v54 = v56;
                    v55 = 0x600000000;
                    if (v66)
                    {
                      sub_100056AF0(&v54, &v65);
                    }

                    v57 = 1;
                  }

                  if (v68 != 1)
                  {
                    goto LABEL_89;
                  }

                  v22 = v65;
                  goto LABEL_87;
                }

                v34 = 0;
                v35 = v69;
                v36 = v59;
                do
                {
                  v37 = *(Shape + v34);
                  if (v35[v34] == 1)
                  {
                    v37 = (v37 * v36[v34]);
                  }

                  *&v31[8 * v34++] = v37;
                }

                while (v33 != v34);
                v38 = &v66 + 8;
                v65 = &v66 + 8;
                *&v66 = 0x600000000;
                if (v31 != v64)
                {
                  v65 = v31;
                  *&v66 = __PAIR64__(HIDWORD(v63), v33);
                  __src = v64;
                  HIDWORD(v63) = 0;
                  v31 = v64;
LABEL_68:
                  LODWORD(v63) = 0;
                  goto LABEL_69;
                }

                if (v33 < 7)
                {
                  v39 = v33;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, &v66 + 8, v33, 8);
                  v39 = v63;
                  v31 = __src;
                  if (!v63)
                  {
LABEL_67:
                    LODWORD(v66) = v33;
                    goto LABEL_68;
                  }

                  v38 = v65;
                }

                memcpy(v38, v31, 8 * v39);
                v31 = __src;
                goto LABEL_67;
              }

              v25 = v65;
              v28 = v69;
            }

            memcpy(v28, v25, v27);
            goto LABEL_45;
          }

LABEL_98:
          v46 = sub_10024F430();
          sub_100205B58(v46, v47, v48, v49, v50);
          return;
        }

        v20 = v65;
        v24 = v59;
      }

      memcpy(v24, v20, 2 * v23);
      goto LABEL_32;
    }
  }

  else
  {

    sub_1001D4DAC(a2, a3, "expected exactly 4 operands");
  }
}

void sub_100205B58(uint64_t a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  sub_1001F2F84(a4, &__src);
  if ((v33 & 1) == 0)
  {
LABEL_53:
    sub_10024F430();
  }

  __dst = v29;
  v28 = 0xC00000000;
  v9 = v31;
  if (!v31)
  {
    goto LABEL_9;
  }

  if (__src != &v31 + 8)
  {
    __dst = __src;
    v28 = v31;
    __src = &v31 + 8;
    *&v31 = 0;
LABEL_9:
    if (__src != &v31 + 8)
    {
      free(__src);
    }

    goto LABEL_11;
  }

  v10 = v31;
  if (v31 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v29, v31, 4), (v10 = v31) != 0))
  {
    memcpy(__dst, __src, 4 * v10);
  }

  LODWORD(v28) = v9;
  LODWORD(v31) = 0;
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_100251198(a5, &__src);
  if ((v33 & 1) == 0)
  {
    goto LABEL_53;
  }

  v34 = v36;
  v35 = xmmword_10028F060;
  v11 = __src;
  v12 = v31;
  if (!v31)
  {
    goto LABEL_22;
  }

  if (__src != v32)
  {
    v34 = __src;
    v35 = v31;
    goto LABEL_24;
  }

  if (v31 < 0x29)
  {
    v14 = v36;
    v13 = v31;
    goto LABEL_19;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v34, v36, v31, 1);
  v13 = v31;
  if (v31)
  {
    v11 = __src;
    v14 = v34;
LABEL_19:
    memcpy(v14, v11, v13);
  }

  *&v35 = v12;
  *&v31 = 0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = __src;
LABEL_22:
  if (v11 != v32)
  {
    free(v11);
  }

LABEL_24:
  __src = &v31 + 8;
  *&v31 = 0x600000000;
  v15 = (8 * a3) >> 3;
  if (v15 < 7)
  {
    v16 = 0;
    v17 = (&v31 + 8);
    v18 = 8 * a3;
    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v31 + 8, v15, 8);
  v16 = v31;
  v17 = __src;
  v18 = 8 * a3;
  if (a3)
  {
LABEL_28:
    memcpy(v17 + 8 * v16, a2, v18);
    v16 = v31;
    v17 = __src;
  }

LABEL_29:
  v19 = v16 + (v18 >> 3);
  LODWORD(v31) = v16 + (v18 >> 3);
  if (!v31)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = v34;
  v22 = __dst;
  do
  {
    v23 = *(a2 + v20);
    if (v21[v20] == 1)
    {
      v23 = (v23 * v22[v20]);
    }

    *(v17 + v20++) = v23;
  }

  while (v19 != v20);
  v24 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (&__src == a1)
  {
LABEL_38:
    *(a1 + 64) = 1;
    if (v17 == (&v31 + 8))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v17 != (&v31 + 8))
  {
    *a1 = v17;
    v25 = DWORD1(v31);
    *(a1 + 8) = v19;
    *(a1 + 12) = v25;
    __src = &v31 + 8;
    DWORD1(v31) = 0;
    v17 = (&v31 + 8);
    goto LABEL_51;
  }

  if (v19 < 7)
  {
    v26 = v19;
    goto LABEL_49;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v19, 8);
  v26 = v31;
  v17 = __src;
  if (v31)
  {
    v24 = *a1;
LABEL_49:
    memcpy(v24, v17, 8 * v26);
    v17 = __src;
  }

  *(a1 + 8) = v19;
LABEL_51:
  LODWORD(v31) = 0;
  *(a1 + 64) = 1;
  if (v17 != (&v31 + 8))
  {
LABEL_39:
    free(v17);
  }

LABEL_40:
  if (v34 != v36)
  {
    free(v34);
  }

  if (__dst != v29)
  {
    free(__dst);
  }
}

void sub_100205EF8(uint64_t a1, const void *a2, uint64_t a3, void *a4, void *a5)
{
  sub_100250D40(a4, &__src);
  if ((v33 & 1) == 0)
  {
LABEL_53:
    sub_10024F430();
  }

  __dst = v29;
  v28 = 0xC00000000;
  v9 = v31;
  if (!v31)
  {
    goto LABEL_9;
  }

  if (__src != &v31 + 8)
  {
    __dst = __src;
    v28 = v31;
    __src = &v31 + 8;
    *&v31 = 0;
LABEL_9:
    if (__src != &v31 + 8)
    {
      free(__src);
    }

    goto LABEL_11;
  }

  v10 = v31;
  if (v31 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v29, v31, 4), (v10 = v31) != 0))
  {
    memcpy(__dst, __src, 4 * v10);
  }

  LODWORD(v28) = v9;
  LODWORD(v31) = 0;
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_100251198(a5, &__src);
  if ((v33 & 1) == 0)
  {
    goto LABEL_53;
  }

  v34 = v36;
  v35 = xmmword_10028F060;
  v11 = __src;
  v12 = v31;
  if (!v31)
  {
    goto LABEL_22;
  }

  if (__src != v32)
  {
    v34 = __src;
    v35 = v31;
    goto LABEL_24;
  }

  if (v31 < 0x29)
  {
    v14 = v36;
    v13 = v31;
    goto LABEL_19;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v34, v36, v31, 1);
  v13 = v31;
  if (v31)
  {
    v11 = __src;
    v14 = v34;
LABEL_19:
    memcpy(v14, v11, v13);
  }

  *&v35 = v12;
  *&v31 = 0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = __src;
LABEL_22:
  if (v11 != v32)
  {
    free(v11);
  }

LABEL_24:
  __src = &v31 + 8;
  *&v31 = 0x600000000;
  v15 = (8 * a3) >> 3;
  if (v15 < 7)
  {
    v16 = 0;
    v17 = (&v31 + 8);
    v18 = 8 * a3;
    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v31 + 8, v15, 8);
  v16 = v31;
  v17 = __src;
  v18 = 8 * a3;
  if (a3)
  {
LABEL_28:
    memcpy(v17 + 8 * v16, a2, v18);
    v16 = v31;
    v17 = __src;
  }

LABEL_29:
  v19 = v16 + (v18 >> 3);
  LODWORD(v31) = v16 + (v18 >> 3);
  if (!v31)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = v34;
  v22 = __dst;
  do
  {
    v23 = *(a2 + v20);
    if (v21[v20] == 1)
    {
      v23 = vcvtms_s32_f32(v22[v20] * v23);
    }

    *(v17 + v20++) = v23;
  }

  while (v19 != v20);
  v24 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (&__src == a1)
  {
LABEL_38:
    *(a1 + 64) = 1;
    if (v17 == (&v31 + 8))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v17 != (&v31 + 8))
  {
    *a1 = v17;
    v25 = DWORD1(v31);
    *(a1 + 8) = v19;
    *(a1 + 12) = v25;
    __src = &v31 + 8;
    DWORD1(v31) = 0;
    v17 = (&v31 + 8);
    goto LABEL_51;
  }

  if (v19 < 7)
  {
    v26 = v19;
    goto LABEL_49;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v19, 8);
  v26 = v31;
  v17 = __src;
  if (v31)
  {
    v24 = *a1;
LABEL_49:
    memcpy(v24, v17, 8 * v26);
    v17 = __src;
  }

  *(a1 + 8) = v19;
LABEL_51:
  LODWORD(v31) = 0;
  *(a1 + 64) = 1;
  if (v17 != (&v31 + 8))
  {
LABEL_39:
    free(v17);
  }

LABEL_40:
  if (v34 != v36)
  {
    free(v34);
  }

  if (__dst != v29)
  {
    free(__dst);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = v25;
  v24 = 0x600000000;
  mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, &v23);
  if ((v11 & 1) == 0)
  {
    v15 = 0;
    v16 = v23;
    if (v23 == v25)
    {
      return v15;
    }

    goto LABEL_12;
  }

  mlir::TypeRange::TypeRange(v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v21, v23, v24);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22[0], v22[1], v21[0], v21[1]))
  {
    v12 = v23;
    v13 = v24;
    *(a11 + 8) = 0;
    if (v13 <= *(a11 + 12))
    {
      if (!v13)
      {
        v17 = 0;
        goto LABEL_10;
      }

      v14 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v13, 8);
      v14 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v14), v12, 8 * v13);
    v17 = *(a11 + 8);
LABEL_10:
    *(a11 + 8) = v17 + v13;
  }

  v15 = 1;
  v16 = v23;
  if (v23 != v25)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verify(mlir::Operation **this)
{
  v2 = *(*(*this + 9) + 88);
  v66[0] = 0;
  v66[1] = 0;
  v63 = v66;
  v61[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v61);
  if (DefiningOp && (sub_100250A7C(&v63, DefiningOp) & 1) != 0)
  {
    v4 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v4 = 0;
    }

    v60 = v4;
    if (v4)
    {
      mlir::RankedTensorType::getShape(&v60);
      v66[0] = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v5 == *mlir::RankedTensorType::getShape(v66))
      {
        return 1;
      }

      v62 = 257;
      mlir::OpState::emitError(this, v61, v66);
      if (v66[0])
      {
        LODWORD(v63) = 3;
        v64 = " Rank of input needs to be same as len(axes), but input.rank == ";
        v65 = 64;
        v27 = &v63;
        v28 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v55 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v28 = v67;
            v27 = (v67 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v27 = &v63;
            v28 = v67;
          }
        }

        v29 = &v28[24 * v68];
        v30 = *v27;
        *(v29 + 2) = v27[2];
        *v29 = v30;
        ++v68;
      }

      mlir::RankedTensorType::getShape(&v60);
      if (v66[0])
      {
        LODWORD(v63) = 2;
        v64 = v31;
        v32 = &v63;
        v33 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v56 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v33 = v67;
            v32 = (v67 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v32 = &v63;
            v33 = v67;
          }
        }

        v34 = &v33[24 * v68];
        v35 = *v32;
        *(v34 + 2) = v32[2];
        *v34 = v35;
        v36 = ++v68;
        if (v66[0])
        {
          LODWORD(v63) = 3;
          v64 = " whereas len(axes) == ";
          v65 = 22;
          v37 = &v63;
          v38 = v67;
          if (v36 >= v69)
          {
            if (v67 <= &v63 && v67 + 24 * v36 > &v63)
            {
              v58 = &v63 - v67;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v36 + 1, 24);
              v38 = v67;
              v37 = (v67 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v36 + 1, 24);
              v37 = &v63;
              v38 = v67;
            }
          }

          v39 = &v38[24 * v68];
          v40 = *v37;
          *(v39 + 2) = v37[2];
          *v39 = v40;
          ++v68;
        }
      }

      v59 = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
      Shape = mlir::RankedTensorType::getShape(&v59);
      if (v66[0])
      {
        v42 = *Shape;
        LODWORD(v63) = 2;
        v64 = v42;
        v43 = &v63;
        v44 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v57 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v44 = v67;
            v43 = (v67 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v43 = &v63;
            v44 = v67;
          }
        }

        v45 = &v44[24 * v68];
        v46 = *v43;
        *(v45 + 2) = v43[2];
        *v45 = v46;
        ++v68;
      }

      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
      if (v66[0])
      {
        mlir::InFlightDiagnostic::report(v66);
      }

      if (v76 == 1)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v47 = __p;
        if (__p)
        {
          v48 = v74;
          v49 = __p;
          if (v74 != __p)
          {
            do
            {
              v48 = sub_100052FFC(v48 - 1);
            }

            while (v48 != v47);
            v49 = __p;
          }

          v74 = v47;
          operator delete(v49);
        }

        v14 = v71;
        if (!v71)
        {
          goto LABEL_75;
        }

        v50 = v72;
        v16 = v71;
        if (v72 == v71)
        {
LABEL_74:
          v72 = v14;
          operator delete(v16);
LABEL_75:
          if (v67 != v70)
          {
            free(v67);
          }

          return v6;
        }

        do
        {
          v51 = *--v50;
          *v50 = 0;
          if (v51)
          {
            operator delete[]();
          }
        }

        while (v50 != v14);
LABEL_73:
        v16 = v71;
        goto LABEL_74;
      }
    }

    else
    {
      v62 = 257;
      mlir::OpState::emitError(this, v61, v66);
      if (v66[0])
      {
        LODWORD(v63) = 3;
        v65 = 46;
        v18 = &v63;
        v19 = v67;
        if (v68 >= v69)
        {
          if (v67 <= &v63 && v67 + 24 * v68 > &v63)
          {
            v54 = &v63 - v67;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v19 = v67;
            v18 = (v67 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
            v18 = &v63;
            v19 = v67;
          }
        }

        v20 = &v19[24 * v68];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v68;
      }

      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
      if (v66[0])
      {
        mlir::InFlightDiagnostic::report(v66);
      }

      if (v76 == 1)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v74;
          v24 = __p;
          if (v74 != __p)
          {
            do
            {
              v23 = sub_100052FFC(v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v74 = v22;
          operator delete(v24);
        }

        v14 = v71;
        if (!v71)
        {
          goto LABEL_75;
        }

        v25 = v72;
        v16 = v71;
        if (v72 == v71)
        {
          goto LABEL_74;
        }

        do
        {
          v26 = *--v25;
          *v25 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v25 != v14);
        goto LABEL_73;
      }
    }
  }

  else
  {
    v62 = 257;
    mlir::OpState::emitError(this, v61, v66);
    if (v66[0])
    {
      LODWORD(v63) = 3;
      v65 = 61;
      v7 = &v63;
      v8 = v67;
      if (v68 >= v69)
      {
        if (v67 <= &v63 && v67 + 24 * v68 > &v63)
        {
          v53 = &v63 - v67;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
          v8 = v67;
          v7 = (v67 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v70, v68 + 1, 24);
          v7 = &v63;
          v8 = v67;
        }
      }

      v9 = &v8[24 * v68];
      v10 = *v7;
      *(v9 + 2) = v7[2];
      *v9 = v10;
      ++v68;
    }

    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v74;
        v13 = __p;
        if (v74 != __p)
        {
          do
          {
            v12 = sub_100052FFC(v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v74 = v11;
        operator delete(v13);
      }

      v14 = v71;
      if (!v71)
      {
        goto LABEL_75;
      }

      v15 = v72;
      v16 = v71;
      if (v72 == v71)
      {
        goto LABEL_74;
      }

      do
      {
        v17 = *--v15;
        *v15 = 0;
        if (v17)
        {
          operator delete[]();
        }
      }

      while (v15 != v14);
      goto LABEL_73;
    }
  }

  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::RoundOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 1)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001D4DAC(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RoundOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 1)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001D4DAC(a2, a3, "expected exactly 1 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::CumSumOp::verify(mlir::Operation **this)
{
  v2 = *(*(*this + 9) + 56);
  v67 = 0uLL;
  v57 = &v67;
  *&v61[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v61);
  if (!DefiningOp || !sub_100250A7C(&v57, DefiningOp))
  {
    return 1;
  }

  *&v67 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v67);
  v5 = v4;
  v63 = 0;
  v6 = *(*(*this + 9) + 56);
  *&v61[0] = &v63;
  *&v67 = v6;
  v7 = mlir::Value::getDefiningOp(&v67);
  if (v7 && (sub_100277970(v61, v7) & 1) != 0)
  {
    sub_1000B83F8(&v63, v61);
    v67 = v61[0];
    v68 = v61[1];
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v57);
    if (v58 > 0x40)
    {
      operator delete[]();
    }

    if (v58)
    {
      v8 = (v57 << -v58) >> -v58;
    }

    else
    {
      v8 = 0;
    }

    if ((v8 & 0x8000000000000000) == 0 && v8 < v5)
    {
      return 1;
    }

    v60 = 257;
    mlir::OpState::emitError(this, &v57, &v67);
    if (v67)
    {
      v64 = 3;
      v65 = "Axis passed to cumsum is:";
      v66 = 25;
      v22 = &v64;
      v23 = *(&v68 + 1);
      if (v69 >= v70)
      {
        if (*(&v68 + 1) <= &v64 && *(&v68 + 1) + 24 * v69 > &v64)
        {
          v52 = &v64 - *(&v68 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v69 + 1, 24);
          v23 = *(&v68 + 1);
          v22 = &v52[*(&v68 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v69 + 1, 24);
          v22 = &v64;
          v23 = *(&v68 + 1);
        }
      }

      v24 = v23 + 24 * v69;
      v25 = *v22;
      *(v24 + 16) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v69;
      if (v67)
      {
        v64 = 2;
        v65 = v8;
        v27 = &v64;
        v28 = *(&v68 + 1);
        if (v26 >= v70)
        {
          if (*(&v68 + 1) <= &v64 && *(&v68 + 1) + 24 * v26 > &v64)
          {
            v53 = &v64 - *(&v68 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v26 + 1, 24);
            v28 = *(&v68 + 1);
            v27 = &v53[*(&v68 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v26 + 1, 24);
            v27 = &v64;
            v28 = *(&v68 + 1);
          }
        }

        v29 = v28 + 24 * v69;
        v30 = *v27;
        *(v29 + 16) = *(v27 + 2);
        *v29 = v30;
        v31 = ++v69;
        if (v67)
        {
          v64 = 3;
          v65 = ", expected Axis between 0 and ";
          v66 = 30;
          v32 = &v64;
          v33 = *(&v68 + 1);
          if (v31 >= v70)
          {
            if (*(&v68 + 1) <= &v64 && *(&v68 + 1) + 24 * v31 > &v64)
            {
              v54 = &v64 - *(&v68 + 1);
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v31 + 1, 24);
              v33 = *(&v68 + 1);
              v32 = &v54[*(&v68 + 1)];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v31 + 1, 24);
              v32 = &v64;
              v33 = *(&v68 + 1);
            }
          }

          v34 = v33 + 24 * v69;
          v35 = *v32;
          *(v34 + 16) = *(v32 + 2);
          *v34 = v35;
          v36 = ++v69;
          if (v67)
          {
            v64 = 2;
            v65 = (v5 - 1);
            v37 = &v64;
            v38 = *(&v68 + 1);
            if (v36 >= v70)
            {
              if (*(&v68 + 1) <= &v64 && *(&v68 + 1) + 24 * v36 > &v64)
              {
                v55 = &v64 - *(&v68 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v36 + 1, 24);
                v38 = *(&v68 + 1);
                v37 = &v55[*(&v68 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v36 + 1, 24);
                v37 = &v64;
                v38 = *(&v68 + 1);
              }
            }

            v39 = v38 + 24 * v69;
            v40 = *v37;
            *(v39 + 16) = *(v37 + 2);
            *v39 = v40;
            v41 = ++v69;
            if (v67)
            {
              v64 = 3;
              v65 = ", inclusive";
              v66 = 11;
              v42 = &v64;
              v43 = *(&v68 + 1);
              if (v41 >= v70)
              {
                if (*(&v68 + 1) <= &v64 && *(&v68 + 1) + 24 * v41 > &v64)
                {
                  v56 = &v64 - *(&v68 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v41 + 1, 24);
                  v43 = *(&v68 + 1);
                  v42 = &v56[*(&v68 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v41 + 1, 24);
                  v42 = &v64;
                  v43 = *(&v68 + 1);
                }
              }

              v44 = v43 + 24 * v69;
              v45 = *v42;
              *(v44 + 16) = *(v42 + 2);
              *v44 = v45;
              ++v69;
            }
          }
        }
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v77[0] == 1)
    {
      if (v76 != v77)
      {
        free(v76);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v75;
        v48 = __p;
        if (v75 != __p)
        {
          do
          {
            v47 = sub_100052FFC(v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v75 = v46;
        operator delete(v48);
      }

      v17 = v72;
      if (!v72)
      {
        goto LABEL_63;
      }

      v49 = v73;
      v19 = v72;
      if (v73 == v72)
      {
LABEL_62:
        v73 = v17;
        operator delete(v19);
LABEL_63:
        if (*(&v68 + 1) != v71)
        {
          free(*(&v68 + 1));
        }

        return v13;
      }

      do
      {
        v50 = *--v49;
        *v49 = 0;
        if (v50)
        {
          operator delete[]();
        }
      }

      while (v49 != v17);
LABEL_61:
      v19 = v72;
      goto LABEL_62;
    }
  }

  else
  {
    v62 = 257;
    mlir::OpState::emitError(this, v61, &v67);
    if (v67)
    {
      LODWORD(v57) = 3;
      v58 = "Unable to get value of constant axis";
      v59 = 36;
      v9 = &v57;
      v10 = *(&v68 + 1);
      if (v69 >= v70)
      {
        if (*(&v68 + 1) <= &v57 && *(&v68 + 1) + 24 * v69 > &v57)
        {
          v51 = &v57 - *(&v68 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v69 + 1, 24);
          v10 = *(&v68 + 1);
          v9 = &v51[*(&v68 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68 + 8, v71, v69 + 1, 24);
          v9 = &v57;
          v10 = *(&v68 + 1);
        }
      }

      v11 = v10 + 24 * v69;
      v12 = *v9;
      *(v11 + 16) = v9[2];
      *v11 = v12;
      ++v69;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v77[0] == 1)
    {
      if (v76 != v77)
      {
        free(v76);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v75;
        v16 = __p;
        if (v75 != __p)
        {
          do
          {
            v15 = sub_100052FFC(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v75 = v14;
        operator delete(v16);
      }

      v17 = v72;
      if (!v72)
      {
        goto LABEL_63;
      }

      v18 = v73;
      v19 = v72;
      if (v73 == v72)
      {
        goto LABEL_62;
      }

      do
      {
        v20 = *--v18;
        *v18 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v18 != v17);
      goto LABEL_61;
    }
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::CumSumOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[0] = a4;
  v14[1] = a5;
  if (a5 == 4)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12 + 1, 8);
      LODWORD(v12) = *(a11 + 8);
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return sub_1001D4DAC(a2, a3, "expected exactly 4 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CumSumOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = v21;
  v20 = 0x600000000;
  v22 = a4;
  v23 = a5;
  if (a5 == 4)
  {
    *(v19 + v20) = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    LODWORD(v20) = v20 + 1;
  }

  else if (!sub_1001D4DAC(a2, a3, "expected exactly 4 operands"))
  {
    v14 = 0;
    v15 = v19;
    if (v19 == v21)
    {
      return v14;
    }

    goto LABEL_14;
  }

  mlir::TypeRange::TypeRange(&v22, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v18, v19, v20);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v22, v23, v18[0], v18[1]))
  {
    v11 = v19;
    v12 = v20;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_12;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_12:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v15);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100207C18(mlir::Operation *this, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_100251438(a2, this))
  {
    goto LABEL_39;
  }

  v12 = *a2;
  {
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56))
  {
    return 1;
  }

  v23 = *(*v56[0] + 136);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v60 = v56[0];
    ElementType = mlir::ComplexType::getElementType(&v60);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v58 = v56[0];
      v59 = mlir::ComplexType::getElementType(&v58);
      if (mlir::Type::isF32(&v59))
      {
        return 1;
      }
    }
  }

LABEL_39:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v64, this, v56);
  if (v64[0])
  {
    LODWORD(ElementType) = 3;
    v62 = " #";
    v63 = 2;
    p_ElementType = &ElementType;
    v27 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
      {
        v52 = &ElementType - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v27 = v65;
        p_ElementType = (v65 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        p_ElementType = &ElementType;
        v27 = v65;
      }
    }

    v28 = &v27[24 * v66];
    v29 = *p_ElementType;
    *(v28 + 2) = p_ElementType[2];
    *v28 = v29;
    v30 = ++v66;
    if (v64[0])
    {
      LODWORD(ElementType) = 5;
      v62 = a5;
      v31 = &ElementType;
      v32 = v65;
      if (v30 >= v67)
      {
        if (v65 <= &ElementType && v65 + 24 * v30 > &ElementType)
        {
          v53 = &ElementType - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v32 = v65;
          v31 = (v65 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v31 = &ElementType;
          v32 = v65;
        }
      }

      v33 = &v32[24 * v66];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v66;
      if (v64[0])
      {
        LODWORD(ElementType) = 3;
        v62 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v63 = 261;
        v36 = &ElementType;
        v37 = v65;
        if (v35 >= v67)
        {
          if (v65 <= &ElementType && v65 + 24 * v35 > &ElementType)
          {
            v54 = &ElementType - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v37 = v65;
            v36 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v36 = &ElementType;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
        if (v64[0])
        {
          v40 = &ElementType;
          mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, a2);
          v41 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
            {
              v55 = &ElementType - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v41 = v65;
              v40 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v40 = &ElementType;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v66;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v72;
      v46 = __p;
      if (v72 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v72 = v44;
      operator delete(v46);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_1002088C4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(v22, this, v20);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(v22, this, v20);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

      do
      {
        v14 = *--v12;
        *v12 = 0;
        if (v14)
        {
          operator delete[]();
        }
      }

      while (v12 != v11);
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t sub_1002088C4(mlir::Operation *this, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_100251438(a2, this))
  {
    goto LABEL_40;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56))
  {
    return 1;
  }

  v23 = *(*v56[0] + 136);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v60 = v56[0];
    ElementType = mlir::ComplexType::getElementType(&v60);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v58 = v56[0];
      v59 = mlir::ComplexType::getElementType(&v58);
      if (mlir::Type::isF32(&v59))
      {
        return 1;
      }
    }
  }

  v25 = 1;
  if (mlir::Type::isSignlessInteger(v56, 1))
  {
    return v25;
  }

LABEL_40:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v64, this, v56);
  if (v64[0])
  {
    LODWORD(ElementType) = 3;
    v62 = " #";
    v63 = 2;
    p_ElementType = &ElementType;
    v27 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
      {
        v52 = &ElementType - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v27 = v65;
        p_ElementType = (v65 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        p_ElementType = &ElementType;
        v27 = v65;
      }
    }

    v28 = &v27[24 * v66];
    v29 = *p_ElementType;
    *(v28 + 2) = p_ElementType[2];
    *v28 = v29;
    v30 = ++v66;
    if (v64[0])
    {
      LODWORD(ElementType) = 5;
      v62 = a5;
      v31 = &ElementType;
      v32 = v65;
      if (v30 >= v67)
      {
        if (v65 <= &ElementType && v65 + 24 * v30 > &ElementType)
        {
          v53 = &ElementType - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v32 = v65;
          v31 = (v65 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v31 = &ElementType;
          v32 = v65;
        }
      }

      v33 = &v32[24 * v66];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v66;
      if (v64[0])
      {
        LODWORD(ElementType) = 3;
        v62 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v63 = 278;
        v36 = &ElementType;
        v37 = v65;
        if (v35 >= v67)
        {
          if (v65 <= &ElementType && v65 + 24 * v35 > &ElementType)
          {
            v54 = &ElementType - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v37 = v65;
            v36 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v36 = &ElementType;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
        if (v64[0])
        {
          v40 = &ElementType;
          mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, a2);
          v41 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
            {
              v55 = &ElementType - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v41 = v65;
              v40 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v40 = &ElementType;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v66;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v72;
      v46 = __p;
      if (v72 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v72 = v44;
      operator delete(v46);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002090B0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002090B0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL sub_1002090B0(mlir::Operation *this, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v11 && sub_100251438(a2, this))
  {
    v12 = *a2;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_100289EC4();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v16 = v14;
    v17 = v15;
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[2 * (v17 >> 1)];
      v21 = *v19;
      v20 = v19 + 2;
      v17 += ~(v17 >> 1);
      if (v21 < v13)
      {
        v16 = v20;
      }

      else
      {
        v17 = v18;
      }
    }

    while (v17);
    if (v16 != &v14[2 * v15] && *v16 == v13)
    {
      v22 = v16[1];
LABEL_21:
      v59[0] = a2;
      v59[1] = v22;
      v54[0] = mlir::ShapedType::getElementType(v59);
      v23 = 1;
      if (mlir::Type::isSignlessInteger(v54, 1))
      {
        return v23;
      }

      goto LABEL_22;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

LABEL_22:
  v55 = 261;
  v54[0] = a3;
  v54[1] = a4;
  mlir::Operation::emitOpError(v59, this, v54);
  if (v59[0])
  {
    v56 = 3;
    v57 = " #";
    v58 = 2;
    v24 = &v56;
    v25 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v50 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v25 = v60;
        v24 = (v60 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v24 = &v56;
        v25 = v60;
      }
    }

    v26 = &v25[24 * v61];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v61;
    if (v59[0])
    {
      v56 = 5;
      v57 = a5;
      v29 = &v56;
      v30 = v60;
      if (v28 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v28 > &v56)
        {
          v51 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v28 + 1, 24);
          v30 = v60;
          v29 = (v60 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v28 + 1, 24);
          v29 = &v56;
          v30 = v60;
        }
      }

      v31 = &v30[24 * v61];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v61;
      if (v59[0])
      {
        v56 = 3;
        v57 = " must be CoreML Tensor of Boolean type. values, but got ";
        v58 = 56;
        v34 = &v56;
        v35 = v60;
        if (v33 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v33 > &v56)
          {
            v52 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v33 + 1, 24);
            v35 = v60;
            v34 = (v60 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v33 + 1, 24);
            v34 = &v56;
            v35 = v60;
          }
        }

        v36 = &v35[24 * v61];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v61;
        if (v59[0])
        {
          v38 = &v56;
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
          v39 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v53 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v39 = v60;
              v38 = (v60 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v38 = &v56;
              v39 = v60;
            }
          }

          v40 = &v39[24 * v61];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v61;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v69 == 1)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v67;
      v44 = __p;
      if (v67 != __p)
      {
        do
        {
          v43 = sub_100052FFC(v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v67 = v42;
      operator delete(v44);
    }

    v45 = v64;
    if (v64)
    {
      v46 = v65;
      v47 = v64;
      if (v65 != v64)
      {
        do
        {
          v48 = *--v46;
          *v46 = 0;
          if (v48)
          {
            operator delete[]();
          }
        }

        while (v46 != v45);
        v47 = v64;
      }

      v65 = v45;
      operator delete(v47);
    }

    if (v60 != v63)
    {
      free(v60);
    }
  }

  return v23;
}

BOOL sub_10020964C(mlir::Operation *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v9 + 8);
    v39 = *(v9 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_100289EC4();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v47 + 8);
    v39 = *(v47 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v89 = a2;
    v90 = v49;
    hasRank = mlir::ShapedType::hasRank(&v89);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  v48 = mlir::ShapedType::hasRank(&v89);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v81 = v51;
    sub_100289E80();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v81 + 8);
    v54 = *(v81 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v82 = a2;
    v83 = v62;
    mlir::ShapedType::getShape(&v82);
    a1 = v36;
    if (v63 != 1)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  a1 = v36;
  if (v61 != 1)
  {
    goto LABEL_2;
  }

LABEL_74:
  v64 = *a2;
  {
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = *(v64 + 8);
    v67 = *(v64 + 16);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v76 = v64;
    sub_100289E80();
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = *(v76 + 8);
    v67 = *(v76 + 16);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  v68 = v66;
  v69 = v67;
  do
  {
    v70 = v69 >> 1;
    v71 = &v68[2 * (v69 >> 1)];
    v73 = *v71;
    v72 = v71 + 2;
    v69 += ~(v69 >> 1);
    if (v73 < v65)
    {
      v68 = v72;
    }

    else
    {
      v69 = v70;
    }
  }

  while (v69);
  if (v68 != &v66[2 * v67] && *v68 == v65)
  {
    v77 = v68[1];
    goto LABEL_90;
  }

LABEL_88:
  v77 = 0;
LABEL_90:
  v86 = a2;
  v87 = v77;
  ElementType = mlir::ShapedType::getElementType(&v86);
  if (mlir::Type::isSignedInteger(&ElementType, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v86) = 3;
    v87 = " #";
    v88 = 2;
    v10 = &v86;
    v11 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v86 && v91 + 24 * v92 > &v86)
      {
        v74 = &v86 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v11 = v91;
        v10 = (v91 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v10 = &v86;
        v11 = v91;
      }
    }

    v12 = &v11[24 * v92];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v92;
    if (v89)
    {
      LODWORD(v86) = 5;
      v87 = a5;
      v15 = &v86;
      v16 = v91;
      if (v14 >= v93)
      {
        if (v91 <= &v86 && v91 + 24 * v14 > &v86)
        {
          v75 = &v86 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v16 = v91;
          v15 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v15 = &v86;
          v16 = v91;
        }
      }

      v17 = &v16[24 * v92];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v92;
      if (v89)
      {
        LODWORD(v86) = 3;
        v87 = " must be 1D tensor of Index type. values, but got ";
        v88 = 50;
        v20 = &v86;
        v21 = v91;
        if (v19 >= v93)
        {
          if (v91 <= &v86 && v91 + 24 * v19 > &v86)
          {
            v79 = &v86 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v21 = v91;
            v20 = (v91 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v20 = &v86;
            v21 = v91;
          }
        }

        v22 = &v21[24 * v92];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v92;
        if (v89)
        {
          v24 = &v86;
          mlir::DiagnosticArgument::DiagnosticArgument(&v86, a2);
          v25 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v86 && v91 + 24 * v92 > &v86)
            {
              v80 = &v86 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v25 = v91;
              v24 = (v91 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v24 = &v86;
              v25 = v91;
            }
          }

          v26 = &v25[24 * v92];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v92;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v98;
      v31 = __p;
      if (v98 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v98 = v29;
      operator delete(v31);
    }

    v32 = v95;
    if (v95)
    {
      v33 = v96;
      v34 = v95;
      if (v96 != v95)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v95;
      }

      v96 = v32;
      operator delete(v34);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v28;
}

BOOL sub_100209D98(mlir::Operation *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v9 + 8);
    v39 = *(v9 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_100289EC4();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v47 + 8);
    v39 = *(v47 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v89 = a2;
    v90 = v49;
    hasRank = mlir::ShapedType::hasRank(&v89);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  v48 = mlir::ShapedType::hasRank(&v89);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v81 = v51;
    sub_100289E80();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v81 + 8);
    v54 = *(v81 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v82 = a2;
    v83 = v62;
    mlir::ShapedType::getShape(&v82);
    a1 = v36;
    if (!v63)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  a1 = v36;
  if (!v61)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = *(v64 + 8);
      v67 = *(v64 + 16);
      if (!v67)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v76 = v64;
      sub_100289E80();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = *(v76 + 8);
      v67 = *(v76 + 16);
      if (!v67)
      {
        goto LABEL_88;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v77 = v68[1];
LABEL_90:
      v86 = a2;
      v87 = v77;
      ElementType = mlir::ShapedType::getElementType(&v86);
      v28 = 1;
      isSignlessInteger = mlir::Type::isSignlessInteger(&ElementType, 1);
      a1 = v36;
      if (isSignlessInteger)
      {
        return v28;
      }

      goto LABEL_2;
    }

LABEL_88:
    v77 = 0;
    goto LABEL_90;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v86) = 3;
    v87 = " #";
    v88 = 2;
    v10 = &v86;
    v11 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v86 && v91 + 24 * v92 > &v86)
      {
        v74 = &v86 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v11 = v91;
        v10 = (v91 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v10 = &v86;
        v11 = v91;
      }
    }

    v12 = &v11[24 * v92];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v92;
    if (v89)
    {
      LODWORD(v86) = 5;
      v87 = a5;
      v15 = &v86;
      v16 = v91;
      if (v14 >= v93)
      {
        if (v91 <= &v86 && v91 + 24 * v14 > &v86)
        {
          v75 = &v86 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v16 = v91;
          v15 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v15 = &v86;
          v16 = v91;
        }
      }

      v17 = &v16[24 * v92];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v92;
      if (v89)
      {
        LODWORD(v86) = 3;
        v87 = " must be 0D tensor of Boolean type. values, but got ";
        v88 = 52;
        v20 = &v86;
        v21 = v91;
        if (v19 >= v93)
        {
          if (v91 <= &v86 && v91 + 24 * v19 > &v86)
          {
            v79 = &v86 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v21 = v91;
            v20 = (v91 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v20 = &v86;
            v21 = v91;
          }
        }

        v22 = &v21[24 * v92];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v92;
        if (v89)
        {
          v24 = &v86;
          mlir::DiagnosticArgument::DiagnosticArgument(&v86, a2);
          v25 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v86 && v91 + 24 * v92 > &v86)
            {
              v80 = &v86 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v25 = v91;
              v24 = (v91 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v24 = &v86;
              v25 = v91;
            }
          }

          v26 = &v25[24 * v92];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v92;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v98;
      v31 = __p;
      if (v98 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v98 = v29;
      operator delete(v31);
    }

    v32 = v95;
    if (v95)
    {
      v33 = v96;
      v34 = v95;
      if (v96 != v95)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v95;
      }

      v96 = v32;
      operator delete(v34);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[0] = a4;
  v15[1] = a5;
  v12 = *(a11 + 8);
  if (v12 == 1)
  {
    goto LABEL_8;
  }

  if (!v12)
  {
    if (*(a11 + 12))
    {
      v13 = 0;
LABEL_6:
      bzero((*a11 + 8 * v13), 8 - 8 * v13);
      goto LABEL_7;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
    v13 = *(a11 + 8);
    if (v13 != 1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  *(a11 + 8) = 1;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002090B0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002090B0(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002090B0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AnyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002090B0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002090B0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::ArgSortOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10020AA8C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || !sub_10020B0FC(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_10020B840(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v23 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24[0] = sub_10020BDF0(&v23);
  v24[1] = v4;
  Shape = mlir::ShapedType::getShape(v24);
  v7 = v6;
  v22 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v20[0] = sub_10020BDF0(&v22);
  v20[1] = v8;
  v9 = mlir::ShapedType::getShape(v20);
  if (v7 == v10 && !memcmp(Shape, v9, 8 * v7))
  {
    return 1;
  }

  v20[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
  v21 = 259;
  mlir::OpState::emitOpError(v24, this, v20);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  v12 = result;
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
    result = v12;
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
      result = v12;
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
          v14 = sub_100052FFC(v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v30 = v13;
      operator delete(v15);
      result = v12;
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
          v19 = *--v17;
          *v17 = 0;
          if (v19)
          {
            operator delete[]();
          }
        }

        while (v17 != v16);
        v18 = v27;
      }

      v28 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v25 != &v26)
    {
      free(v25);
      return v12;
    }
  }

  return result;
}

uint64_t sub_10020AA8C(mlir::Operation *this, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_100251438(a2, this))
  {
    goto LABEL_38;
  }

  v12 = *a2;
  {
    v56 = v12;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ShapedType::getElementType(v62);
  if (mlir::Type::isF16(v57) || mlir::Type::isF32(v57))
  {
    return 1;
  }

  v23 = *(*v57[0] + 136);
  v24 = v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  if (v24 || mlir::Type::isSignedInteger(v57, 4) || mlir::Type::isSignedInteger(v57, 8) || mlir::Type::isSignedInteger(v57, 16) || mlir::Type::isSignedInteger(v57, 32) || mlir::Type::isSignedInteger(v57, 64) || mlir::Type::isUnsignedInteger(v57, 4) || mlir::Type::isUnsignedInteger(v57, 8) || mlir::Type::isUnsignedInteger(v57, 16) || mlir::Type::isUnsignedInteger(v57, 32) || mlir::Type::isUnsignedInteger(v57, 64))
  {
    return 1;
  }

LABEL_38:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(v62, this, v57);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v26 = &v59;
    v27 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v27 = v63;
        v26 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = &v59;
        v27 = v63;
      }
    }

    v28 = &v27[24 * v64];
    v29 = *v26;
    *(v28 + 2) = *(v26 + 2);
    *v28 = v29;
    v30 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v31 = &v59;
      v32 = v63;
      if (v30 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v30 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v32 = v63;
          v31 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v30 + 1, 24);
          v31 = &v59;
          v32 = v63;
        }
      }

      v33 = &v32[24 * v64];
      v34 = *v31;
      *(v33 + 2) = *(v31 + 2);
      *v33 = v34;
      v35 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer values, but got ";
        v61 = 175;
        v36 = &v59;
        v37 = v63;
        if (v35 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v35 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v37 = v63;
            v36 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v35 + 1, 24);
            v36 = &v59;
            v37 = v63;
          }
        }

        v38 = &v37[24 * v64];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v64;
        if (v62[0])
        {
          v40 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v41 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v41 = v63;
              v40 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = &v59;
              v41 = v63;
            }
          }

          v42 = &v41[24 * v64];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v64;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v70;
      v46 = __p;
      if (v70 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v70 = v44;
      operator delete(v46);
    }

    v47 = v67;
    if (v67)
    {
      v48 = v68;
      v49 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v67;
      }

      v68 = v47;
      operator delete(v49);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v25;
}

BOOL sub_10020B0FC(mlir::Operation *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v9 + 8);
    v39 = *(v9 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_100289EC4();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v47 + 8);
    v39 = *(v47 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v89 = a2;
    v90 = v49;
    hasRank = mlir::ShapedType::hasRank(&v89);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  v48 = mlir::ShapedType::hasRank(&v89);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v81 = v51;
    sub_100289E80();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v81 + 8);
    v54 = *(v81 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v82 = a2;
    v83 = v62;
    mlir::ShapedType::getShape(&v82);
    a1 = v36;
    if (v63)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  a1 = v36;
  if (v61)
  {
    goto LABEL_2;
  }

LABEL_74:
  v64 = *a2;
  {
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = *(v64 + 8);
    v67 = *(v64 + 16);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v76 = v64;
    sub_100289E80();
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = *(v76 + 8);
    v67 = *(v76 + 16);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  v68 = v66;
  v69 = v67;
  do
  {
    v70 = v69 >> 1;
    v71 = &v68[2 * (v69 >> 1)];
    v73 = *v71;
    v72 = v71 + 2;
    v69 += ~(v69 >> 1);
    if (v73 < v65)
    {
      v68 = v72;
    }

    else
    {
      v69 = v70;
    }
  }

  while (v69);
  if (v68 != &v66[2 * v67] && *v68 == v65)
  {
    v77 = v68[1];
    goto LABEL_90;
  }

LABEL_88:
  v77 = 0;
LABEL_90:
  v86 = a2;
  v87 = v77;
  ElementType = mlir::ShapedType::getElementType(&v86);
  if (mlir::Type::isSignedInteger(&ElementType, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v86) = 3;
    v87 = " #";
    v88 = 2;
    v10 = &v86;
    v11 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v86 && v91 + 24 * v92 > &v86)
      {
        v74 = &v86 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v11 = v91;
        v10 = (v91 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v10 = &v86;
        v11 = v91;
      }
    }

    v12 = &v11[24 * v92];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v92;
    if (v89)
    {
      LODWORD(v86) = 5;
      v87 = a5;
      v15 = &v86;
      v16 = v91;
      if (v14 >= v93)
      {
        if (v91 <= &v86 && v91 + 24 * v14 > &v86)
        {
          v75 = &v86 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v16 = v91;
          v15 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v15 = &v86;
          v16 = v91;
        }
      }

      v17 = &v16[24 * v92];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v92;
      if (v89)
      {
        LODWORD(v86) = 3;
        v87 = " must be 0D tensor of Index type. values, but got ";
        v88 = 50;
        v20 = &v86;
        v21 = v91;
        if (v19 >= v93)
        {
          if (v91 <= &v86 && v91 + 24 * v19 > &v86)
          {
            v79 = &v86 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v21 = v91;
            v20 = (v91 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v20 = &v86;
            v21 = v91;
          }
        }

        v22 = &v21[24 * v92];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v92;
        if (v89)
        {
          v24 = &v86;
          mlir::DiagnosticArgument::DiagnosticArgument(&v86, a2);
          v25 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v86 && v91 + 24 * v92 > &v86)
            {
              v80 = &v86 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v25 = v91;
              v24 = (v91 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v24 = &v86;
              v25 = v91;
            }
          }

          v26 = &v25[24 * v92];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v92;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v98;
      v31 = __p;
      if (v98 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v98 = v29;
      operator delete(v31);
    }

    v32 = v95;
    if (v95)
    {
      v33 = v96;
      v34 = v95;
      if (v96 != v95)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v95;
      }

      v96 = v32;
      operator delete(v34);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v28;
}

uint64_t sub_10020B840(mlir::Operation *this, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_100251438(a2, this))
  {
    goto LABEL_24;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v54 = v12;
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v54 + 8);
    v15 = *(v54 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v60[0] = a2;
  v60[1] = v22;
  v55[0] = mlir::ShapedType::getElementType(v60);
  if (mlir::Type::isSignedInteger(v55, 16) || mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

LABEL_24:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(v60, this, v55);
  if (v60[0])
  {
    v57 = 3;
    v58 = " #";
    v59 = 2;
    v24 = &v57;
    v25 = v61;
    if (v62 >= v63)
    {
      if (v61 <= &v57 && v61 + 24 * v62 > &v57)
      {
        v50 = &v57 - v61;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v25 = v61;
        v24 = (v61 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
        v24 = &v57;
        v25 = v61;
      }
    }

    v26 = &v25[24 * v62];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v62;
    if (v60[0])
    {
      v57 = 5;
      v58 = a5;
      v29 = &v57;
      v30 = v61;
      if (v28 >= v63)
      {
        if (v61 <= &v57 && v61 + 24 * v28 > &v57)
        {
          v51 = &v57 - v61;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
          v30 = v61;
          v29 = (v61 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v28 + 1, 24);
          v29 = &v57;
          v30 = v61;
        }
      }

      v31 = &v30[24 * v62];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v62;
      if (v60[0])
      {
        v57 = 3;
        v58 = " must be CoreML Tensor of Index type. values, but got ";
        v59 = 54;
        v34 = &v57;
        v35 = v61;
        if (v33 >= v63)
        {
          if (v61 <= &v57 && v61 + 24 * v33 > &v57)
          {
            v52 = &v57 - v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
            v35 = v61;
            v34 = (v61 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v33 + 1, 24);
            v34 = &v57;
            v35 = v61;
          }
        }

        v36 = &v35[24 * v62];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v62;
        if (v60[0])
        {
          v38 = &v57;
          mlir::DiagnosticArgument::DiagnosticArgument(&v57, a2);
          v39 = v61;
          if (v62 >= v63)
          {
            if (v61 <= &v57 && v61 + 24 * v62 > &v57)
            {
              v53 = &v57 - v61;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v39 = v61;
              v38 = (v61 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v64, v62 + 1, 24);
              v38 = &v57;
              v39 = v61;
            }
          }

          v40 = &v39[24 * v62];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v62;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
  if (v60[0])
  {
    mlir::InFlightDiagnostic::report(v60);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v68;
      v44 = __p;
      if (v68 != __p)
      {
        do
        {
          v43 = sub_100052FFC(v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v68 = v42;
      operator delete(v44);
    }

    v45 = v65;
    if (v65)
    {
      v46 = v66;
      v47 = v65;
      if (v66 != v65)
      {
        do
        {
          v48 = *--v46;
          *v46 = 0;
          if (v48)
          {
            operator delete[]();
          }
        }

        while (v46 != v45);
        v47 = v65;
      }

      v66 = v45;
      operator delete(v47);
    }

    if (v61 != v64)
    {
      free(v61);
    }
  }

  return v23;
}

void *sub_10020BDF0(void **a1)
{
  result = *a1;
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
      sub_100289EC4();
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

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10020CB14(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10020964C(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_10020964C(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || !sub_10020B0FC(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10020CB14(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL sub_10020CB14(mlir::Operation *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v9 + 8);
    v39 = *(v9 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_100289EC4();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v47 + 8);
    v39 = *(v47 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v95 = a2;
    v96 = v49;
    hasRank = mlir::ShapedType::hasRank(&v95);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v95 = a2;
  v96 = 0;
  v48 = mlir::ShapedType::hasRank(&v95);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v83 = v51;
    sub_100289E80();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v83 + 8);
    v54 = *(v83 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v84 = a2;
    v85 = v62;
    mlir::ShapedType::getShape(&v84);
    a1 = v36;
    if (v63 == 4)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v84 = a2;
  v85 = 0;
  mlir::ShapedType::getShape(&v84);
  a1 = v36;
  if (v61 == 4)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = *(v64 + 8);
      v67 = *(v64 + 16);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v75 = v64;
      sub_100289E80();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = *(v75 + 8);
      v67 = *(v75 + 16);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v76 = v68[1];
LABEL_89:
      v92 = a2;
      v93 = v76;
      ElementType = mlir::ShapedType::getElementType(&v92);
      if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
      {
        return 1;
      }

      v77 = *(*ElementType + 136);
      v78 = v77 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v77 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      if (v78 || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }

      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_107;
      }

      v89 = ElementType;
      v90 = mlir::ComplexType::getElementType(&v89);
      if (!mlir::Type::isF16(&v90))
      {
        if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
LABEL_107:
          a1 = v36;
          goto LABEL_2;
        }

        v87 = ElementType;
        v88 = mlir::ComplexType::getElementType(&v87);
        isF32 = mlir::Type::isF32(&v88);
        a1 = v36;
        if (!isF32)
        {
          goto LABEL_2;
        }
      }

      return 1;
    }

LABEL_87:
    v76 = 0;
    goto LABEL_89;
  }

LABEL_2:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(&v95, a1, &v84);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = " #";
    v94 = 2;
    v10 = &v92;
    v11 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v74 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v11 = v97;
        v10 = (v97 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v10 = &v92;
        v11 = v97;
      }
    }

    v12 = &v11[24 * v98];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 5;
      v93 = a5;
      v15 = &v92;
      v16 = v97;
      if (v14 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v14 > &v92)
        {
          v80 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v16 = v97;
          v15 = (v97 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v15 = &v92;
          v16 = v97;
        }
      }

      v17 = &v16[24 * v98];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v98;
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = " must be 4D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v94 = 257;
        v20 = &v92;
        v21 = v97;
        if (v19 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v19 > &v92)
          {
            v81 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v21 = v97;
            v20 = (v97 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v20 = &v92;
            v21 = v97;
          }
        }

        v22 = &v21[24 * v98];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v98;
        if (v95)
        {
          v24 = &v92;
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, a2);
          v25 = v97;
          if (v98 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v98 > &v92)
            {
              v82 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v25 = v97;
              v24 = (v97 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v24 = &v92;
              v25 = v97;
            }
          }

          v26 = &v25[24 * v98];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v98;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v104;
      v31 = __p;
      if (v104 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v104 = v29;
      operator delete(v31);
    }

    v32 = v101;
    if (v101)
    {
      v33 = v102;
      v34 = v101;
      if (v102 != v101)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v101;
      }

      v102 = v32;
      operator delete(v34);
    }

    if (v97 != v100)
    {
      free(v97);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10020D6D4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10020964C(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_10020964C(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || !sub_10020B0FC(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10020D6D4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL sub_10020D6D4(mlir::Operation *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v9 + 8);
    v39 = *(v9 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_100289EC4();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = *(v47 + 8);
    v39 = *(v47 + 16);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v95 = a2;
    v96 = v49;
    hasRank = mlir::ShapedType::hasRank(&v95);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v95 = a2;
  v96 = 0;
  v48 = mlir::ShapedType::hasRank(&v95);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v83 = v51;
    sub_100289E80();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = *(v83 + 8);
    v54 = *(v83 + 16);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v84 = a2;
    v85 = v62;
    mlir::ShapedType::getShape(&v84);
    a1 = v36;
    if (v63 == 5)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v84 = a2;
  v85 = 0;
  mlir::ShapedType::getShape(&v84);
  a1 = v36;
  if (v61 == 5)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = *(v64 + 8);
      v67 = *(v64 + 16);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v75 = v64;
      sub_100289E80();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = *(v75 + 8);
      v67 = *(v75 + 16);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v76 = v68[1];
LABEL_89:
      v92 = a2;
      v93 = v76;
      ElementType = mlir::ShapedType::getElementType(&v92);
      if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
      {
        return 1;
      }

      v77 = *(*ElementType + 136);
      v78 = v77 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v77 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      if (v78 || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }

      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_107;
      }

      v89 = ElementType;
      v90 = mlir::ComplexType::getElementType(&v89);
      if (!mlir::Type::isF16(&v90))
      {
        if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
LABEL_107:
          a1 = v36;
          goto LABEL_2;
        }

        v87 = ElementType;
        v88 = mlir::ComplexType::getElementType(&v87);
        isF32 = mlir::Type::isF32(&v88);
        a1 = v36;
        if (!isF32)
        {
          goto LABEL_2;
        }
      }

      return 1;
    }

LABEL_87:
    v76 = 0;
    goto LABEL_89;
  }

LABEL_2:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(&v95, a1, &v84);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = " #";
    v94 = 2;
    v10 = &v92;
    v11 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v74 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v11 = v97;
        v10 = (v97 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v10 = &v92;
        v11 = v97;
      }
    }

    v12 = &v11[24 * v98];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 5;
      v93 = a5;
      v15 = &v92;
      v16 = v97;
      if (v14 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v14 > &v92)
        {
          v80 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v16 = v97;
          v15 = (v97 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v15 = &v92;
          v16 = v97;
        }
      }

      v17 = &v16[24 * v98];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v98;
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = " must be 5D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v94 = 257;
        v20 = &v92;
        v21 = v97;
        if (v19 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v19 > &v92)
          {
            v81 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v21 = v97;
            v20 = (v97 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v20 = &v92;
            v21 = v97;
          }
        }

        v22 = &v21[24 * v98];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v98;
        if (v95)
        {
          v24 = &v92;
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, a2);
          v25 = v97;
          if (v98 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v98 > &v92)
            {
              v82 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v25 = v97;
              v24 = (v97 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v24 = &v92;
              v25 = v97;
            }
          }

          v26 = &v25[24 * v98];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v98;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v104;
      v31 = __p;
      if (v104 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v104 = v29;
      operator delete(v31);
    }

    v32 = v101;
    if (v101)
    {
      v33 = v102;
      v34 = v101;
      if (v102 != v101)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v101;
      }

      v102 = v32;
      operator delete(v34);
    }

    if (v97 != v100)
    {
      free(v97);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v37 = 261;
    v36[0] = "operand";
    v36[1] = 7;
    mlir::Operation::emitOpError(v41, v2, v36);
    if (v41[0])
    {
      v38 = 3;
      v39 = " #";
      v40 = 2;
      v4 = &v38;
      v5 = v42;
      if (v43 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v43 > &v38)
        {
          v32 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v5 = v42;
          v4 = (v42 + v32);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v4 = &v38;
          v5 = v42;
        }
      }

      v6 = &v5[24 * v43];
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
      v8 = ++v43;
      if (v41[0])
      {
        v38 = 5;
        v39 = 0;
        v9 = &v38;
        v10 = v42;
        if (v8 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v8 > &v38)
          {
            v33 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v8 + 1, 24);
            v10 = v42;
            v9 = (v42 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v8 + 1, 24);
            v9 = &v38;
            v10 = v42;
          }
        }

        v11 = &v10[24 * v43];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        v13 = ++v43;
        if (v41[0])
        {
          v38 = 3;
          v39 = " must be , but got ";
          v40 = 19;
          v14 = &v38;
          v15 = v42;
          if (v13 >= v44)
          {
            if (v42 <= &v38 && v42 + 24 * v13 > &v38)
            {
              v34 = &v38 - v42;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v13 + 1, 24);
              v15 = v42;
              v14 = (v42 + v34);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v13 + 1, 24);
              v14 = &v38;
              v15 = v42;
            }
          }

          v16 = &v15[24 * v43];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v43;
          if (v41[0])
          {
            v18 = &v38;
            mlir::DiagnosticArgument::DiagnosticArgument(&v38, v3);
            v19 = v42;
            if (v43 >= v44)
            {
              if (v42 <= &v38 && v42 + 24 * v43 > &v38)
              {
                v35 = &v38 - v42;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
                v19 = v42;
                v18 = (v42 + v35);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
                v18 = &v38;
                v19 = v42;
              }
            }

            v20 = &v19[24 * v43];
            v21 = *v18;
            *(v20 + 2) = *(v18 + 2);
            *v20 = v21;
            ++v43;
          }
        }
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v49;
        v25 = __p;
        if (v49 != __p)
        {
          do
          {
            v24 = sub_100052FFC(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v49 = v23;
        operator delete(v25);
      }

      v26 = v46;
      if (v46)
      {
        v27 = v47;
        v28 = v46;
        if (v47 != v46)
        {
          do
          {
            v29 = *--v27;
            *v27 = 0;
            if (v29)
            {
              operator delete[]();
            }
          }

          while (v27 != v26);
          v28 = v46;
        }

        v47 = v26;
        operator delete(v28);
      }

      if (v42 != v45)
      {
        free(v42);
      }
    }

    if (!v22)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v30 = *this - 16;
  }

  else
  {
    v30 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::parse(mlir::ODIE::Compiler::CoreML::AwaitOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16[1] = 1;
  v17 = 0;
  v16[0] = &v17;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v23 = 0;
  if (!sub_10020E69C(this, &v23))
  {
    return 0;
  }

  v17 = v23;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0 || !sub_10020E908(this, v18, v16, v5, a2 + 16))
  {
    return 0;
  }

  v23 = v25;
  v24 = 0x600000000;
  mlir::AsmParser::getContext(this);
  v6 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 2), *(a2 + 6));
  Context = mlir::AsmParser::getContext(this);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v8 = mlir::RegionRange::RegionRange(&v21, *(a2 + 28), *(a2 + 58));
  if (mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(v8, v6, 1, v22[0], v22[1], v9, v10, v11, v14, v15, &v23))
  {
    sub_1001D4484(a2, v23, v24);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v23 != v25)
  {
    v13 = result;
    free(v23);
    return v13;
  }

  return result;
}

BOOL sub_10020E69C(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  v18[0] = a1;
  if (((*(*a1 + 544))(a1, &v17, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_, v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v17;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v15 = "invalid kind of Type specified";
  v16 = 259;
  (*(*a1 + 24))(v18, a1, v4, &v15);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  v7 = result;
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
    result = v7;
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v24;
      v10 = __p;
      if (v24 != __p)
      {
        do
        {
          v9 = sub_100052FFC(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v24 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v21;
    if (v21)
    {
      v12 = v22;
      v13 = v21;
      if (v22 != v21)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v21;
      }

      v22 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v19 != &v20)
    {
      free(v19);
      return v7;
    }
  }

  return result;
}

BOOL sub_10020E908(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[1];
  v7 = a3[1];
  if (v6 == v7)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v51 = 257;
    (*(*a1 + 24))(v55, a1, a4, v50);
    if (v55[0])
    {
      v52 = 3;
      v53 = "number of operands and types do not match: got ";
      v54 = 47;
      v13 = &v52;
      v14 = v56;
      if (v57 >= v58)
      {
        if (v56 <= &v52 && v56 + 24 * v57 > &v52)
        {
          v45 = &v52 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v14 = v56;
          v13 = (v56 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v13 = &v52;
          v14 = v56;
        }
      }

      v15 = &v14[24 * v57];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v57;
      if (v55[0])
      {
        v52 = 5;
        v53 = v6;
        v18 = &v52;
        v19 = v56;
        if (v17 >= v58)
        {
          if (v56 <= &v52 && v56 + 24 * v17 > &v52)
          {
            v46 = &v52 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v19 = v56;
            v18 = (v56 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v18 = &v52;
            v19 = v56;
          }
        }

        v20 = &v19[24 * v57];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v57;
        if (v55[0])
        {
          v52 = 3;
          v53 = " operands and ";
          v54 = 14;
          v23 = &v52;
          v24 = v56;
          if (v22 >= v58)
          {
            if (v56 <= &v52 && v56 + 24 * v22 > &v52)
            {
              v47 = &v52 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v24 = v56;
              v23 = (v56 + v47);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v23 = &v52;
              v24 = v56;
            }
          }

          v25 = &v24[24 * v57];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          v27 = ++v57;
          if (v55[0])
          {
            v52 = 5;
            v53 = v7;
            v28 = &v52;
            v29 = v56;
            if (v27 >= v58)
            {
              if (v56 <= &v52 && v56 + 24 * v27 > &v52)
              {
                v48 = &v52 - v56;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v29 = v56;
                v28 = (v56 + v48);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v28 = &v52;
                v29 = v56;
              }
            }

            v30 = &v29[24 * v57];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            v32 = ++v57;
            if (v55[0])
            {
              v52 = 3;
              v53 = " types";
              v54 = 6;
              v33 = &v52;
              v34 = v56;
              if (v32 >= v58)
              {
                if (v56 <= &v52 && v56 + 24 * v32 > &v52)
                {
                  v49 = &v52 - v56;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v34 = v56;
                  v33 = (v56 + v49);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v33 = &v52;
                  v34 = v56;
                }
              }

              v35 = &v34[24 * v57];
              v36 = *v33;
              *(v35 + 2) = *(v33 + 2);
              *v35 = v36;
              ++v57;
            }
          }
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v63;
        v39 = __p;
        if (v63 != __p)
        {
          do
          {
            v38 = sub_100052FFC(v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v63 = v37;
        operator delete(v39);
      }

      v40 = v60;
      if (v60)
      {
        v41 = v61;
        v42 = v60;
        if (v61 != v60)
        {
          do
          {
            v43 = *--v41;
            *v41 = 0;
            if (v43)
            {
              operator delete[]();
            }
          }

          while (v41 != v40);
          v42 = v60;
        }

        v61 = v40;
        operator delete(v42);
      }

      if (v56 != v59)
      {
        free(v56);
      }
    }
  }

  return v12;
}

void mlir::ODIE::Compiler::CoreML::AwaitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  v18 = v12;
  if ((*(*a2 + 64))(a2))
  {
    goto LABEL_18;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
  mlir::ODIE::Compiler::CoreML::AsyncValueType::print(&v18, a2);
  if (v14 != (*(*v13 + 80))(v13) + v13[4] - v13[2])
  {
    goto LABEL_18;
  }

  v12 = v18;
LABEL_17:
  (*(*a2 + 32))(a2, v12);
LABEL_18:
  v18 = v20;
  v19 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v16, v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_100207C18(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0 || *(v4 + 17) < 2u)
  {
LABEL_13:
    v38[0] = "failed to verify that number of dims >=2 and last dim of operand 0 equals second last dim of operand 1";
    v39 = 259;
    mlir::OpState::emitOpError(&v42, this, v38);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    v17 = result;
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
      result = v17;
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v49;
        v20 = __p;
        if (v49 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v49 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v46;
      if (!v46)
      {
        goto LABEL_63;
      }

      v22 = v47;
      v23 = v46;
      if (v47 == v46)
      {
LABEL_62:
        v47 = v21;
        operator delete(v23);
        result = v17;
LABEL_63:
        if (v44 != &v45)
        {
          free(v44);
          return v17;
        }

        return result;
      }

      do
      {
        v24 = *--v22;
        *v22 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v22 != v21);
LABEL_61:
      v23 = v46;
      goto LABEL_62;
    }

    return result;
  }

  v5 = *(v4 + 9);
  if (*(*(*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && *(*(*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v41 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = sub_10020BDF0(&v41);
    v8 = v7;
    v40 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = sub_10020BDF0(&v40);
    v42 = v6;
    v43 = v8;
    v38[0] = v9;
    v38[1] = v10;
    mlir::ShapedType::getShape(&v42);
    v12 = v11;
    mlir::ShapedType::getShape(v38);
    if (v12 != v13)
    {
      goto LABEL_13;
    }

    mlir::ShapedType::getShape(&v42);
    v15 = v14 - 2;
    if (v14 < 2)
    {
      goto LABEL_13;
    }

    v25 = v14 - 1;
    v26 = *(mlir::ShapedType::getShape(&v42) + 8 * (v14 - 1));
    if (v26 != *(mlir::ShapedType::getShape(v38) + 8 * v15) && *(mlir::ShapedType::getShape(&v42) + 8 * v25) != 0x8000000000000000 && *(mlir::ShapedType::getShape(v38) + 8 * v15) != 0x8000000000000000)
    {
      goto LABEL_13;
    }

    if (v15)
    {
      v27 = 0;
      do
      {
        if (*(mlir::ShapedType::getShape(&v42) + 8 * v27) != 0x8000000000000000 && *(mlir::ShapedType::getShape(v38) + 8 * v27) != 0x8000000000000000)
        {
          v28 = *(mlir::ShapedType::getShape(&v42) + 8 * v27);
          if (v28 != *(mlir::ShapedType::getShape(v38) + 8 * v27))
          {
            goto LABEL_13;
          }
        }
      }

      while (v15 != ++v27);
    }

    v4 = *this;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v4 - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v30 = mlir::getElementTypeOrSelf(*this - 16);
    if (v30 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    else
    {
      v38[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
      v39 = 259;
      mlir::OpState::emitOpError(&v42, this, v38);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        v36 = result;
        mlir::InFlightDiagnostic::report(&v42);
        result = v36;
      }

      if (v51 == 1)
      {
        v37 = result;
        sub_100052F18(&v43);
        return v37;
      }
    }
  }

  else
  {
    v38[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v39 = 259;
    mlir::OpState::emitOpError(&v42, this, v38);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    v17 = result;
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
      result = v17;
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
        result = v17;
      }

      v31 = __p;
      if (__p)
      {
        v32 = v49;
        v33 = __p;
        if (v49 != __p)
        {
          do
          {
            v32 = sub_100052FFC(v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v49 = v31;
        operator delete(v33);
        result = v17;
      }

      v21 = v46;
      if (!v46)
      {
        goto LABEL_63;
      }

      v34 = v47;
      v23 = v46;
      if (v47 == v46)
      {
        goto LABEL_62;
      }

      do
      {
        v35 = *--v34;
        *v34 = 0;
        if (v35)
        {
          operator delete[]();
        }
      }

      while (v34 != v21);
      goto LABEL_61;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchNormOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10020FDD4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || !sub_100210418(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_100210418(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_100210418(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !sub_100210418(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !sub_100210BEC(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_10020FDD4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 56));
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)) || (v5 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)), v5 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 56))) || (v6 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 120)), v6 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 88))) || (v7 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 152)), v7 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 120))))
  {
    v34[0] = "failed to verify that Operands should have same element type.";
    v35 = 259;
    mlir::OpState::emitOpError(&v36, this, v34);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v15 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v15;
    }

    if (v44[0] != 1)
    {
      return result;
    }

    if (v43 != v44)
    {
      free(v43);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v42;
      v18 = __p;
      if (v42 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v42 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v39;
    if (v39)
    {
      v20 = v40;
      v21 = v39;
      if (v40 != v39)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v39;
      }

      v40 = v19;
      operator delete(v21);
      result = v15;
    }

    v23 = v37;
    if (v37 == v38)
    {
      return result;
    }

LABEL_45:
    free(v23);
    return v15;
  }

  v8 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
  if (v8 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 184)))
  {
    v9 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 184));
    v10 = *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? v9 : 0;
    *&v36 = v10;
    *(&v36 + 1) = this;
    if (v10)
    {
      v11 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
      if (v11 != mlir::ComplexType::getElementType(&v36))
      {
        v32 = "failed to verify that Operand 5 and operand 0 must have the same inner element type.";
LABEL_64:
        v34[0] = v32;
        v35 = 259;
        mlir::OpState::emitOpError(&v36, this, v34);
        v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
        if (v36)
        {
          mlir::InFlightDiagnostic::report(&v36);
        }

        if (v44[0] == 1)
        {
          sub_100052F18(&v36 + 1);
        }

        return v33;
      }
    }
  }

  v12 = *this;
  v36 = xmmword_10028FDF0;
  if (sub_10021134C(v12, &v36, 4))
  {
    v13 = mlir::getElementTypeOrSelf(*this - 16);
    if (v13 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v32 = "failed to verify that Result 0 element type must match element type of operand 0.";
    goto LABEL_64;
  }

  v34[0] = "failed to verify that Operands should have same shape.";
  v35 = 259;
  mlir::OpState::emitOpError(&v36, this, v34);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    v24 = result;
    mlir::InFlightDiagnostic::report(&v36);
    result = v24;
  }

  if (v44[0] == 1)
  {
    v15 = result;
    if (v43 != v44)
    {
      free(v43);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v42;
      v27 = __p;
      if (v42 != __p)
      {
        do
        {
          v26 = sub_100052FFC(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v42 = v25;
      operator delete(v27);
    }

    v28 = v39;
    if (v39)
    {
      v29 = v40;
      v30 = v39;
      if (v40 != v39)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v39;
      }

      v40 = v28;
      operator delete(v30);
    }

    v23 = v37;
    result = v15;
    if (v37 != v38)
    {
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t sub_10020FDD4(mlir::Operation *this, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_100251438(a2, this))
  {
    goto LABEL_30;
  }

  v12 = *a2;
  {
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56))
  {
    return 1;
  }

  v23 = *(*v56[0] + 136);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (v23 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v60 = v56[0];
    ElementType = mlir::ComplexType::getElementType(&v60);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v58 = v56[0];
      v59 = mlir::ComplexType::getElementType(&v58);
      if (mlir::Type::isF32(&v59))
      {
        return 1;
      }
    }
  }

LABEL_30:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v64, this, v56);
  if (v64[0])
  {
    LODWORD(ElementType) = 3;
    v62 = " #";
    v63 = 2;
    p_ElementType = &ElementType;
    v27 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
      {
        v52 = &ElementType - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v27 = v65;
        p_ElementType = (v65 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        p_ElementType = &ElementType;
        v27 = v65;
      }
    }

    v28 = &v27[24 * v66];
    v29 = *p_ElementType;
    *(v28 + 2) = p_ElementType[2];
    *v28 = v29;
    v30 = ++v66;
    if (v64[0])
    {
      LODWORD(ElementType) = 5;
      v62 = a5;
      v31 = &ElementType;
      v32 = v65;
      if (v30 >= v67)
      {
        if (v65 <= &ElementType && v65 + 24 * v30 > &ElementType)
        {
          v53 = &ElementType - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v32 = v65;
          v31 = (v65 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v31 = &ElementType;
          v32 = v65;
        }
      }

      v33 = &v32[24 * v66];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v66;
      if (v64[0])
      {
        LODWORD(ElementType) = 3;
        v62 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v63 = 189;
        v36 = &ElementType;
        v37 = v65;
        if (v35 >= v67)
        {
          if (v65 <= &ElementType && v65 + 24 * v35 > &ElementType)
          {
            v54 = &ElementType - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v37 = v65;
            v36 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v36 = &ElementType;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
        if (v64[0])
        {
          v40 = &ElementType;
          mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, a2);
          v41 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
            {
              v55 = &ElementType - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v41 = v65;
              v40 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v40 = &ElementType;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v66;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v72;
      v46 = __p;
      if (v72 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v72 = v44;
      operator delete(v46);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v25;
}