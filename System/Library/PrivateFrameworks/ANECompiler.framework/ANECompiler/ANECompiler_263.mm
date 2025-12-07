__n128 *mlir::createElementsAttr(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v33);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&RHS);
  v29[1] = 0;
  RHS = &v32;
  v31 = xmmword_1A7598A10;
  v29[0] = 0;
  MutableElementsAttr = mlir::tryCreateMutableElementsAttr(v33, v29);
  v26 = MutableElementsAttr;
  RawElementsAttr = v29[0];
  if (v29[0])
  {
    v25 = v7;
    if (a3 < 1)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v9 = mlir::TensorType::operator mlir::ShapedType(&v33);
  MutableElementsAttr = mlir::mps::getElementsAttrStorageSize(v9, v10);
  v11 = v31;
  if (v31 != MutableElementsAttr)
  {
    if (v31 <= MutableElementsAttr)
    {
      if (*(&v31 + 1) < MutableElementsAttr)
      {
        v12 = MutableElementsAttr;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&RHS, &v32, MutableElementsAttr, 1);
        MutableElementsAttr = v12;
        v11 = v31;
      }

      if (MutableElementsAttr != v11)
      {
        v13 = MutableElementsAttr;
        bzero(v11 + RHS, MutableElementsAttr - v11);
        MutableElementsAttr = v13;
      }
    }

    *&v31 = MutableElementsAttr;
  }

  v25 = MutableElementsAttr;
  v26 = RHS;
  if (a3 >= 1)
  {
LABEL_12:
    v14 = IntOrFloatBitWidth >> 3;
    v16 = llvm::APFloatBase::PPCDoubleDouble(MutableElementsAttr);
    v17 = (a2 + 8);
    v18 = v26;
    do
    {
      if (v16 == *v17)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&v27, v17, v15);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&v27, v17);
      }

      v19 = v28;
      v20 = v27;
      if (v28 >= 0x41)
      {
        v21 = v27;
      }

      else
      {
        v21 = &v27;
      }

      memcpy(v18, v21, v14);
      if (v19 >= 0x41 && v20 != 0)
      {
        MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
      }

      v18 += v14;
      v17 = (v17 + 32);
      --a3;
    }

    while (a3);
  }

LABEL_25:
  if (!RawElementsAttr)
  {
    RawElementsAttr = mlir::createRawElementsAttr(v33, v26, v25);
    v23 = RHS;
    if (RHS == &v32)
    {
      return RawElementsAttr;
    }

    goto LABEL_27;
  }

  v23 = RHS;
  if (RHS != &v32)
  {
LABEL_27:
    free(v23);
  }

  return RawElementsAttr;
}

void *mlir::createSplatF16ElementsAttr(void *a1, float _S0)
{
  __asm { FCVT            H0, S0 }

  v8 = _H0;
  return mlir::createRawElementsAttr(a1, &v8, 2uLL);
}

void *mlir::rewriteElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v526[5] = *MEMORY[0x1E69E9840];
  *&v516 = a1;
  *(&v516 + 1) = a2;
  v515[0] = a3;
  v515[1] = a4;
  v514[0] = mlir::ElementsAttr::getShapedType(&v516);
  v514[1] = v8;
  if (mlir::ElementsAttr::getShapedType(v515))
  {
    Shape = mlir::ShapedType::getShape(v515);
    if (!v10)
    {
LABEL_6:
      v12 = v515;
      goto LABEL_8;
    }

    v11 = 8 * v10;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = v514;
LABEL_8:
  v13 = mlir::ShapedType::getShape(v12);
  v15 = v14;
  isSplat = mlir::ElementsAttr::isSplat(v515);
  v513 = mlir::RankedTensorType::get(v13, v15, isSplat, 0);
  v17 = mlir::ElementsAttr::isSplat(v514);
  if (v17 == mlir::ElementsAttr::isSplat(v515))
  {
    *&v516 = mlir::convertElementsAttr(v516, *(&v516 + 1), a5);
    *(&v516 + 1) = v18;
    v19 = mlir::ShapedType::getShape(v514);
    if (v15 == v20 && !memcmp(v13, v19, 8 * v15))
    {
      return v516;
    }

    v21 = v516;
    v22 = mlir::TensorType::operator mlir::ShapedType(&v513);
    return mlir::reshapeElementsAttr(v21, *(&v21 + 1), v22, v23);
  }

  if (*(*mlir::ElementsAttr::isSplat(v514) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::ElementsAttr::isSplat(v515) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 0;
  }

  v521 = v523;
  v522 = xmmword_1A75DA800;
  if (mlir::ElementsAttr::isSplat(&v516))
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v513);
    ElementsAttrStorageSize = (mlir::mps::getElementsAttrElementBitWidth(RHS) + 7) >> 3;
    v27 = v522;
    v28 = v522 > ElementsAttrStorageSize;
    if (v522 == ElementsAttrStorageSize)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v29 = mlir::TensorType::operator mlir::ShapedType(&v513);
    ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v29, v30);
    v27 = v522;
    v28 = v522 > ElementsAttrStorageSize;
    if (v522 == ElementsAttrStorageSize)
    {
      goto LABEL_23;
    }
  }

  if (!v28)
  {
    if (*(&v522 + 1) < ElementsAttrStorageSize)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v521, v523, ElementsAttrStorageSize, 1);
      v27 = v522;
    }

    if (ElementsAttrStorageSize != v27)
    {
      bzero(v521 + v27, ElementsAttrStorageSize - v27);
    }
  }

  *&v522 = ElementsAttrStorageSize;
LABEL_23:
  v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
  if (!mlir::Type::isUnsignedInteger(&v524, 8))
  {
    v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
    if (mlir::Type::isInteger(&v524, 8))
    {
      v31 = v521;
      v520 = v516;
      Type = mlir::ElementsAttr::getType(&v520);
      if (Type)
      {
        v44 = *Type;
        {
          v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v46 = *(v44 + 8);
          v47 = *(v44 + 16);
          if (!v47)
          {
            goto LABEL_285;
          }
        }

        else
        {
          v168 = Type;
          mlir::Builder::getI32VectorAttr();
          Type = v168;
          v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v46 = *(v44 + 8);
          v47 = *(v44 + 16);
          if (!v47)
          {
            goto LABEL_285;
          }
        }

        v48 = v46;
        v49 = v47;
        do
        {
          v50 = v49 >> 1;
          v51 = &v48[2 * (v49 >> 1)];
          v53 = *v51;
          v52 = v51 + 2;
          v49 += ~(v49 >> 1);
          if (v53 < v45)
          {
            v48 = v52;
          }

          else
          {
            v49 = v50;
          }
        }

        while (v49);
        if (v48 != &v46[2 * v47] && *v48 == v45)
        {
          v169 = v48[1];
LABEL_286:
          v518 = Type;
          v519 = v169;
          v517 = mlir::ElementsAttr::isSplat(&v518);
          v170 = mlir::ElementsAttr::isSplat(&v520);
          RawStringData = v520;
          if (mlir::DenseElementsAttr::classof(v520))
          {
            v171 = RawStringData;
          }

          else
          {
            v171 = 0;
          }

          v524 = v171;
          if (v171)
          {
            RawStringData = mlir::DenseElementsAttr::getRawStringData(&v524);
            v6 = v172;
            if (v170)
            {
              goto LABEL_291;
            }

LABEL_298:
            NumElements = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
            if (mlir::Type::isUnsignedInteger(&v517, 8))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_300:
              for (i = 0; i != NumElements; ++i)
              {
                if (v170)
                {
                  v176 = 0;
                }

                else
                {
                  v176 = i;
                }

                v31[i] = RawStringData[v176];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 8))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_310:
              for (j = 0; j != NumElements; ++j)
              {
                if (v170)
                {
                  v178 = 0;
                }

                else
                {
                  v178 = j;
                }

                v31[j] = RawStringData[v178];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 16))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_323:
              for (k = 0; k != NumElements; ++k)
              {
                if (v170)
                {
                  v180 = 0;
                }

                else
                {
                  v180 = k;
                }

                v31[k] = *&RawStringData[2 * v180];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 16))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_333:
              for (m = 0; m != NumElements; ++m)
              {
                if (v170)
                {
                  v182 = 0;
                }

                else
                {
                  v182 = m;
                }

                v31[m] = *&RawStringData[2 * v182];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 32))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_343:
              for (n = 0; n != NumElements; ++n)
              {
                if (v170)
                {
                  v184 = 0;
                }

                else
                {
                  v184 = n;
                }

                v31[n] = *&RawStringData[4 * v184];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 32))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_353:
              for (ii = 0; ii != NumElements; ++ii)
              {
                if (v170)
                {
                  v186 = 0;
                }

                else
                {
                  v186 = ii;
                }

                v31[ii] = *&RawStringData[4 * v186];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 64))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
              {
                v187 = 0;
LABEL_368:
                v188 = NumElements - v187;
                v189 = &v31[v187];
                v190 = &RawStringData[8 * v187];
                do
                {
                  v191 = *v190;
                  v190 += 8;
                  *v189++ = v191;
                  --v188;
                }

                while (v188);
                goto LABEL_944;
              }

              if (NumElements >= 0x20)
              {
                v187 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v206 = (RawStringData + 128);
                v207 = v31 + 16;
                v208 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  *&v209 = vqtbl4q_s8(v206[-2], xmmword_1A7600F10).u64[0];
                  *&v210 = vqtbl4q_s8(*v206, xmmword_1A7600F10).u64[0];
                  *(&v209 + 1) = vqtbl4q_s8(v206[-1], xmmword_1A7600F10).u64[0];
                  *(&v210 + 1) = vqtbl4q_s8(v206[1], xmmword_1A7600F10).u64[0];
                  *(v207 - 1) = v209;
                  *v207 = v210;
                  v206 += 4;
                  v207 += 2;
                  v208 -= 32;
                }

                while (v208);
                if (NumElements == v187)
                {
                  goto LABEL_944;
                }

                if ((NumElements & 0x18) == 0)
                {
                  goto LABEL_368;
                }
              }

              else
              {
                v187 = 0;
              }

              v211 = v187;
              v187 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v212 = &RawStringData[8 * v211];
              v213 = &v31[v211];
              v214 = v211 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                *v213 = vqtbl4q_s8(*v212, xmmword_1A7600F20).u64[0];
                v213 += 8;
                ++v212;
                v214 += 8;
              }

              while (v214);
              if (NumElements == v187)
              {
                goto LABEL_944;
              }

              goto LABEL_368;
            }

            if (mlir::Type::isInteger(&v517, 64))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
              {
                v192 = 0;
LABEL_377:
                v193 = NumElements - v192;
                v194 = &v31[v192];
                v195 = &RawStringData[8 * v192];
                do
                {
                  v196 = *v195;
                  v195 += 8;
                  *v194++ = v196;
                  --v193;
                }

                while (v193);
                goto LABEL_944;
              }

              if (NumElements >= 0x20)
              {
                v192 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v217 = (RawStringData + 128);
                v218 = v31 + 16;
                v219 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  *&v220 = vqtbl4q_s8(v217[-2], xmmword_1A7600F10).u64[0];
                  *&v221 = vqtbl4q_s8(*v217, xmmword_1A7600F10).u64[0];
                  *(&v220 + 1) = vqtbl4q_s8(v217[-1], xmmword_1A7600F10).u64[0];
                  *(&v221 + 1) = vqtbl4q_s8(v217[1], xmmword_1A7600F10).u64[0];
                  *(v218 - 1) = v220;
                  *v218 = v221;
                  v217 += 4;
                  v218 += 2;
                  v219 -= 32;
                }

                while (v219);
                if (NumElements == v192)
                {
                  goto LABEL_944;
                }

                if ((NumElements & 0x18) == 0)
                {
                  goto LABEL_377;
                }
              }

              else
              {
                v192 = 0;
              }

              v222 = v192;
              v192 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v223 = &RawStringData[8 * v222];
              v224 = &v31[v222];
              v225 = v222 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                *v224 = vqtbl4q_s8(*v223, xmmword_1A7600F20).u64[0];
                v224 += 8;
                ++v223;
                v225 += 8;
              }

              while (v225);
              if (NumElements == v192)
              {
                goto LABEL_944;
              }

              goto LABEL_377;
            }

            if (mlir::Type::isF16(&v517))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_384:
              for (jj = 0; jj != NumElements; ++jj)
              {
                if (v170)
                {
                  v198 = 0;
                }

                else
                {
                  v198 = jj;
                }

                v31[jj] = *&RawStringData[2 * v198];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isF32(&v517))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_394:
              for (kk = 0; kk != NumElements; ++kk)
              {
                if (v170)
                {
                  v200 = 0;
                }

                else
                {
                  v200 = kk;
                }

                v31[kk] = *&RawStringData[4 * v200];
              }

              goto LABEL_944;
            }

            if (!mlir::Type::isF64(&v517))
            {
              if (!mlir::Type::isBF16(&v517))
              {
                goto LABEL_433;
              }

              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              goto LABEL_427;
            }

            if (NumElements < 1)
            {
              goto LABEL_944;
            }

            if (NumElements < 4 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
            {
              v201 = 0;
LABEL_410:
              v202 = NumElements - v201;
              v203 = &v31[v201];
              v204 = &RawStringData[8 * v201];
              do
              {
                v205 = *v204++;
                *v203++ = v205;
                --v202;
              }

              while (v202);
              goto LABEL_944;
            }

            if (NumElements >= 0x10)
            {
              v201 = NumElements & 0x7FFFFFFFFFFFFFF0;
              v227 = NumElements & 0x7FFFFFFFFFFFFFF0;
              v228 = v31;
              v229 = RawStringData;
              do
              {
                *v228++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v229), vcvtq_s64_f64(v229[1])), vuzp1q_s32(vcvtq_s64_f64(v229[2]), vcvtq_s64_f64(v229[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v229[4]), vcvtq_s64_f64(v229[5])), vuzp1q_s32(vcvtq_s64_f64(v229[6]), vcvtq_s64_f64(v229[7]))));
                v229 += 8;
                v227 -= 16;
              }

              while (v227);
              if (NumElements == v201)
              {
                goto LABEL_944;
              }

              if ((NumElements & 0xC) == 0)
              {
                goto LABEL_410;
              }
            }

            else
            {
              v201 = 0;
            }

            v230 = v201;
            v201 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
            v231 = &RawStringData[8 * v230];
            v232 = &v31[v230];
            v233 = v230 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              v234 = *v231;
              v235 = v231[1];
              v231 += 2;
              *&v234.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v234), vcvtq_s64_f64(v235)));
              *v232 = vuzp1_s8(*&v234.f64[0], *&v234.f64[0]).u32[0];
              v232 += 4;
              v233 += 4;
            }

            while (v233);
            if (NumElements == v201)
            {
              goto LABEL_944;
            }

            goto LABEL_410;
          }

          if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
          {
            v173 = RawStringData;
          }

          else
          {
            v173 = 0;
          }

          v524 = v173;
          if (v173)
          {
            RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
            v6 = v174;
            if ((v170 & 1) == 0)
            {
              goto LABEL_298;
            }
          }

          else if ((v170 & 1) == 0)
          {
            goto LABEL_298;
          }

LABEL_291:
          if (mlir::Type::isUnsignedInteger(&v517, 8))
          {
            NumElements = 1;
            goto LABEL_300;
          }

          if (mlir::Type::isInteger(&v517, 8))
          {
            NumElements = 1;
            goto LABEL_310;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 16))
          {
            NumElements = 1;
            goto LABEL_323;
          }

          if (mlir::Type::isInteger(&v517, 16))
          {
            NumElements = 1;
            goto LABEL_333;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 32))
          {
            NumElements = 1;
            goto LABEL_343;
          }

          if (mlir::Type::isInteger(&v517, 32))
          {
            NumElements = 1;
            goto LABEL_353;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 64) || mlir::Type::isInteger(&v517, 64))
          {
            goto LABEL_361;
          }

          if (mlir::Type::isF16(&v517))
          {
            NumElements = 1;
            goto LABEL_384;
          }

          if (mlir::Type::isF32(&v517))
          {
            NumElements = 1;
            goto LABEL_394;
          }

          if (mlir::Type::isF64(&v517))
          {
            goto LABEL_403;
          }

          NumElements = 1;
          if (!mlir::Type::isBF16(&v517))
          {
LABEL_433:
            if (!mlir::Type::isInteger(&v517, 1))
            {
LABEL_261:
              mlir::Type::getIntOrFloatBitWidth(&v517);
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v517);
              mlir::detail::unpackQuantizedData<unsigned char>(RawStringData, v6, v31, NumElements, IntOrFloatBitWidth);
              goto LABEL_944;
            }

            llvm::SmallVector<char,40u>::SmallVector(&v524, NumElements);
            mlir::detail::unpackBooleanData(RawStringData, v6, v524, v525);
            v134 = v524;
            if (NumElements < 1)
            {
              goto LABEL_437;
            }

            if (v170)
            {
              goto LABEL_436;
            }

            v226 = 0;
            if (NumElements >= 8 && (v31 - v524) >= 0x20)
            {
              if (NumElements < 0x20)
              {
                v226 = 0;
LABEL_466:
                v240 = v226;
                v226 = NumElements & 0x7FFFFFFFFFFFFFF8;
                v241 = &v134[v240];
                v242 = &v31[v240];
                v243 = v240 - (NumElements & 0x7FFFFFFFFFFFFFF8);
                do
                {
                  v244 = *v241;
                  v241 += 8;
                  *v242 = v244;
                  v242 += 8;
                  v243 += 8;
                }

                while (v243);
                if (NumElements == v226)
                {
                  goto LABEL_437;
                }

                goto LABEL_469;
              }

              v226 = NumElements & 0x7FFFFFFFFFFFFFE0;
              v236 = (v524 + 16);
              v237 = v31 + 16;
              v238 = NumElements & 0x7FFFFFFFFFFFFFE0;
              do
              {
                v239 = *v236;
                *(v237 - 1) = *(v236 - 1);
                *v237 = v239;
                v236 += 2;
                v237 += 2;
                v238 -= 32;
              }

              while (v238);
              if (NumElements == v226)
              {
                goto LABEL_437;
              }

              if ((NumElements & 0x18) != 0)
              {
                goto LABEL_466;
              }
            }

LABEL_469:
            v245 = NumElements - v226;
            v246 = &v31[v226];
            v247 = &v134[v226];
            do
            {
              v248 = *v247++;
              *v246++ = v248;
              --v245;
            }

            while (v245);
            goto LABEL_437;
          }

LABEL_427:
          for (mm = 0; mm != NumElements; ++mm)
          {
            if (v170)
            {
              v216 = 0;
            }

            else
            {
              v216 = mm;
            }

            v31[mm] = COERCE_FLOAT(*&RawStringData[2 * v216] << 16);
          }

          goto LABEL_944;
        }
      }

LABEL_285:
      v169 = 0;
      goto LABEL_286;
    }

    v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
    if (mlir::Type::isUnsignedInteger(&v524, 16))
    {
      v54 = v521;
      v520 = v516;
      v55 = mlir::ElementsAttr::getType(&v520);
      if (!v55)
      {
        goto LABEL_476;
      }

      v56 = *v55;
      {
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (v59)
        {
          goto LABEL_51;
        }
      }

      else
      {
        RawData = v55;
        mlir::Builder::getI32VectorAttr();
        v55 = RawData;
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (v59)
        {
LABEL_51:
          v60 = v58;
          v61 = v59;
          do
          {
            v62 = v61 >> 1;
            v63 = &v60[2 * (v61 >> 1)];
            v65 = *v63;
            v64 = v63 + 2;
            v61 += ~(v61 >> 1);
            if (v65 < v57)
            {
              v60 = v64;
            }

            else
            {
              v61 = v62;
            }
          }

          while (v61);
LABEL_474:
          if (v60 != &v58[2 * v59] && *v60 == v57)
          {
            v249 = v60[1];
LABEL_477:
            v518 = v55;
            v519 = v249;
            v517 = mlir::ElementsAttr::isSplat(&v518);
            v250 = mlir::ElementsAttr::isSplat(&v520);
            v251 = v520;
            if (mlir::DenseElementsAttr::classof(v520))
            {
              v252 = v251;
            }

            else
            {
              v252 = 0;
            }

            v524 = v252;
            if (v252)
            {
              RawData = mlir::DenseElementsAttr::getRawStringData(&v524);
              v6 = v253;
              if (v250)
              {
                goto LABEL_482;
              }

LABEL_489:
              v254 = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
              if (mlir::Type::isUnsignedInteger(&v517, 8))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_491:
                for (nn = 0; nn != v254; ++nn)
                {
                  if (v250)
                  {
                    v258 = 0;
                  }

                  else
                  {
                    v258 = nn;
                  }

                  v54->i16[nn] = RawData[v258];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v517, 8))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_501:
                for (i1 = 0; i1 != v254; ++i1)
                {
                  if (v250)
                  {
                    v260 = 0;
                  }

                  else
                  {
                    v260 = i1;
                  }

                  v54->i16[i1] = RawData[v260];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v517, 16))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_514:
                for (i2 = 0; i2 != v254; ++i2)
                {
                  if (v250)
                  {
                    v262 = 0;
                  }

                  else
                  {
                    v262 = i2;
                  }

                  v54->i16[i2] = *&RawData[2 * v262];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v517, 16))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_524:
                for (i3 = 0; i3 != v254; ++i3)
                {
                  if (v250)
                  {
                    v264 = 0;
                  }

                  else
                  {
                    v264 = i3;
                  }

                  v54->i16[i3] = *&RawData[2 * v264];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v517, 32))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_534:
                if (v254 >= 2)
                {
                  v267 = 0;
                  v265 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v268 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v269 = 0;
                    }

                    else
                    {
                      v269 = v267;
                    }

                    if (v250)
                    {
                      v270 = 0;
                    }

                    else
                    {
                      v270 = v267 + 1;
                    }

                    v271 = *&RawData[4 * v270];
                    *(v268 - 1) = *&RawData[4 * v269];
                    *v268 = v271;
                    v268 += 2;
                    v267 += 2;
                  }

                  while (v267 != v265);
                  goto LABEL_913;
                }

                v265 = 0;
                do
                {
                  if (v250)
                  {
                    v501 = 0;
                  }

                  else
                  {
                    v501 = v265;
                  }

                  v54->i16[v265++] = *&RawData[4 * v501];
LABEL_913:
                  ;
                }

                while (v254 != v265);
                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v517, 32))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_540:
                if (v254 >= 2)
                {
                  v273 = 0;
                  v266 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v274 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v275 = 0;
                    }

                    else
                    {
                      v275 = v273;
                    }

                    if (v250)
                    {
                      v276 = 0;
                    }

                    else
                    {
                      v276 = v273 + 1;
                    }

                    v277 = *&RawData[4 * v276];
                    *(v274 - 1) = *&RawData[4 * v275];
                    *v274 = v277;
                    v274 += 2;
                    v273 += 2;
                  }

                  while (v273 != v266);
                  goto LABEL_919;
                }

                v266 = 0;
                do
                {
                  if (v250)
                  {
                    v502 = 0;
                  }

                  else
                  {
                    v502 = v266;
                  }

                  v54->i16[v266++] = *&RawData[4 * v502];
LABEL_919:
                  ;
                }

                while (v254 != v266);
                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v517, 64))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                if (v254 < 4)
                {
                  v272 = 0;
LABEL_602:
                  v296 = v254 - v272;
                  v297 = &v54->i16[v272];
                  v298 = &RawData[8 * v272];
                  do
                  {
                    v299 = *v298;
                    v298 += 8;
                    *v297++ = v299;
                    --v296;
                  }

                  while (v296);
                  goto LABEL_944;
                }

                if (v254 >= 0x10)
                {
                  v272 = v254 & 0x7FFFFFFFFFFFFFF0;
                  v286 = (RawData + 64);
                  v287 = v54 + 1;
                  v288 = v254 & 0x7FFFFFFFFFFFFFF0;
                  do
                  {
                    v289 = vuzp1q_s16(vuzp1q_s32(*v286, v286[1]), vuzp1q_s32(v286[2], v286[3]));
                    v287[-1] = vuzp1q_s16(vuzp1q_s32(v286[-4], v286[-3]), vuzp1q_s32(v286[-2], v286[-1]));
                    *v287 = v289;
                    v286 += 8;
                    v287 += 2;
                    v288 -= 16;
                  }

                  while (v288);
                  if (v254 == v272)
                  {
                    goto LABEL_944;
                  }

                  if ((v254 & 0xC) == 0)
                  {
                    goto LABEL_602;
                  }
                }

                else
                {
                  v272 = 0;
                }

                v290 = v272;
                v272 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                v291 = &RawData[8 * v290];
                v292 = (v54 + 2 * v290);
                v293 = v290 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                do
                {
                  v295 = *v291;
                  v294 = v291[1];
                  v291 += 2;
                  *v292++ = vmovn_s32(vuzp1q_s32(v295, v294));
                  v293 += 4;
                }

                while (v293);
                if (v254 == v272)
                {
                  goto LABEL_944;
                }

                goto LABEL_602;
              }

              if (mlir::Type::isInteger(&v517, 64))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                if (v254 < 4)
                {
                  v278 = 0;
LABEL_628:
                  v320 = v254 - v278;
                  v321 = &v54->i16[v278];
                  v322 = &RawData[8 * v278];
                  do
                  {
                    v323 = *v322;
                    v322 += 8;
                    *v321++ = v323;
                    --v320;
                  }

                  while (v320);
                  goto LABEL_944;
                }

                if (v254 >= 0x10)
                {
                  v278 = v254 & 0x7FFFFFFFFFFFFFF0;
                  v310 = (RawData + 64);
                  v311 = v54 + 1;
                  v312 = v254 & 0x7FFFFFFFFFFFFFF0;
                  do
                  {
                    v313 = vuzp1q_s16(vuzp1q_s32(*v310, v310[1]), vuzp1q_s32(v310[2], v310[3]));
                    v311[-1] = vuzp1q_s16(vuzp1q_s32(v310[-4], v310[-3]), vuzp1q_s32(v310[-2], v310[-1]));
                    *v311 = v313;
                    v310 += 8;
                    v311 += 2;
                    v312 -= 16;
                  }

                  while (v312);
                  if (v254 == v278)
                  {
                    goto LABEL_944;
                  }

                  if ((v254 & 0xC) == 0)
                  {
                    goto LABEL_628;
                  }
                }

                else
                {
                  v278 = 0;
                }

                v314 = v278;
                v278 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                v315 = &RawData[8 * v314];
                v316 = (v54 + 2 * v314);
                v317 = v314 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                do
                {
                  v319 = *v315;
                  v318 = v315[1];
                  v315 += 2;
                  *v316++ = vmovn_s32(vuzp1q_s32(v319, v318));
                  v317 += 4;
                }

                while (v317);
                if (v254 == v278)
                {
                  goto LABEL_944;
                }

                goto LABEL_628;
              }

              if (mlir::Type::isF16(&v517))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_574:
                if (v254 >= 2)
                {
                  v281 = 0;
                  v279 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v282 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v283 = 0;
                    }

                    else
                    {
                      v283 = v281;
                    }

                    if (v250)
                    {
                      v284 = 0;
                    }

                    else
                    {
                      v284 = v281 + 1;
                    }

                    v285 = *&RawData[2 * v284];
                    *(v282 - 1) = *&RawData[2 * v283];
                    *v282 = v285;
                    v282 += 2;
                    v281 += 2;
                  }

                  while (v281 != v279);
                  goto LABEL_925;
                }

                v279 = 0;
                do
                {
                  if (v250)
                  {
                    v503 = 0;
                  }

                  else
                  {
                    v503 = v279;
                  }

                  v54->i16[v279++] = *&RawData[2 * v503];
LABEL_925:
                  ;
                }

                while (v254 != v279);
                goto LABEL_944;
              }

              if (mlir::Type::isF32(&v517))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_582:
                if (v254 >= 2)
                {
                  v305 = 0;
                  v280 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v306 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v307 = 0;
                    }

                    else
                    {
                      v307 = v305;
                    }

                    if (v250)
                    {
                      v308 = 0;
                    }

                    else
                    {
                      v308 = v305 + 1;
                    }

                    v309 = *&RawData[4 * v308];
                    *(v306 - 1) = *&RawData[4 * v307];
                    *v306 = v309;
                    v306 += 2;
                    v305 += 2;
                  }

                  while (v305 != v280);
                  goto LABEL_931;
                }

                v280 = 0;
                do
                {
                  if (v250)
                  {
                    v504 = 0;
                  }

                  else
                  {
                    v504 = v280;
                  }

                  v54->i16[v280++] = *&RawData[4 * v504];
LABEL_931:
                  ;
                }

                while (v254 != v280);
                goto LABEL_944;
              }

              if (!mlir::Type::isF64(&v517))
              {
                if (!mlir::Type::isBF16(&v517))
                {
                  goto LABEL_639;
                }

                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                goto LABEL_633;
              }

              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v304 = 0;
LABEL_666:
                v353 = v254 - v304;
                v354 = &v54->i16[v304];
                v355 = &RawData[8 * v304];
                do
                {
                  v356 = *v355++;
                  *v354++ = v356;
                  --v353;
                }

                while (v353);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v304 = v254 & 0x7FFFFFFFFFFFFFF0;
                v335 = (RawData + 64);
                v336 = &v54[1];
                v337 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v338 = v335[3];
                  v339 = vmovn_s64(vcvtq_s64_f64(v335[-1]));
                  v340 = vmovn_s64(vcvtq_s64_f64(v335[-2]));
                  v341 = vmovn_s64(vcvtq_s64_f64(v335[-3]));
                  v342 = vmovn_s64(vcvtq_s64_f64(v335[-4]));
                  v343 = vqtbl4q_s8(*(&v300 - 1), xmmword_1A7600F00);
                  v344 = vmovn_s64(vcvtq_s64_f64(v338));
                  v345 = vmovn_s64(vcvtq_s64_f64(v335[2]));
                  v346 = vmovn_s64(vcvtq_s64_f64(v335[1]));
                  *&v338.f64[0] = vmovn_s64(vcvtq_s64_f64(*v335));
                  v336[-1] = v343;
                  *v336 = vqtbl4q_s8(*(&v300 - 3), xmmword_1A7600F00);
                  v335 += 8;
                  v336 += 2;
                  v337 -= 16;
                }

                while (v337);
                if (v254 == v304)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_666;
                }
              }

              else
              {
                v304 = 0;
              }

              v347 = v304;
              v304 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v348 = &RawData[8 * v347];
              v349 = (v54 + 2 * v347);
              v350 = v347 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v351 = *v348;
                v352 = v348[1];
                v348 += 2;
                *v349++ = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v351), vcvtq_s64_f64(v352)));
                v350 += 4;
              }

              while (v350);
              if (v254 == v304)
              {
                goto LABEL_944;
              }

              goto LABEL_666;
            }

            if (*(*v251 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
            {
              v255 = v251;
            }

            else
            {
              v255 = 0;
            }

            v524 = v255;
            if (v255)
            {
              RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
              v6 = v256;
              if ((v250 & 1) == 0)
              {
                goto LABEL_489;
              }
            }

            else if ((v250 & 1) == 0)
            {
              goto LABEL_489;
            }

LABEL_482:
            if (mlir::Type::isUnsignedInteger(&v517, 8))
            {
              v254 = 1;
              goto LABEL_491;
            }

            if (mlir::Type::isInteger(&v517, 8))
            {
              v254 = 1;
              goto LABEL_501;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 16))
            {
              v254 = 1;
              goto LABEL_514;
            }

            if (mlir::Type::isInteger(&v517, 16))
            {
              v254 = 1;
              goto LABEL_524;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 32))
            {
              v254 = 1;
              goto LABEL_534;
            }

            if (mlir::Type::isInteger(&v517, 32))
            {
              v254 = 1;
              goto LABEL_540;
            }

            if (!mlir::Type::isUnsignedInteger(&v517, 64) && !mlir::Type::isInteger(&v517, 64))
            {
              if (mlir::Type::isF16(&v517))
              {
                v254 = 1;
                goto LABEL_574;
              }

              if (mlir::Type::isF32(&v517))
              {
                v254 = 1;
                goto LABEL_582;
              }

              if (!mlir::Type::isF64(&v517))
              {
                v254 = 1;
                if (!mlir::Type::isBF16(&v517))
                {
LABEL_639:
                  if (mlir::Type::isInteger(&v517, 1))
                  {
                    llvm::SmallVector<char,40u>::SmallVector(&v524, v254);
                    mlir::detail::unpackBooleanData(RawData, v6, v524, v525);
                    v82 = v524;
                    if (v254 < 1)
                    {
                      goto LABEL_877;
                    }

                    if (v250)
                    {
                      if (v254 < 4 || v54 < (v524 + 1) && v524 < v54 + 2 * v254)
                      {
                        v326 = 0;
                        goto LABEL_646;
                      }

                      if (v254 >= 0x20)
                      {
                        v326 = v254 & 0x7FFFFFFFFFFFFFE0;
                        v357 = vld1_dup_s8(v524);
                        v358 = vmovl_s8(v357);
                        v359 = v54 + 2;
                        v360 = v254 & 0x7FFFFFFFFFFFFFE0;
                        do
                        {
                          v359[-2] = v358;
                          v359[-1] = v358;
                          *v359 = v358;
                          v359[1] = v358;
                          v359 += 4;
                          v360 -= 32;
                        }

                        while (v360);
                        if (v254 == v326)
                        {
                          goto LABEL_877;
                        }

                        if ((v254 & 0x1C) == 0)
                        {
LABEL_646:
                          v327 = v254 - v326;
                          v328 = &v54->i16[v326];
                          do
                          {
                            *v328++ = *v82;
                            --v327;
                          }

                          while (v327);
                          goto LABEL_877;
                        }
                      }

                      else
                      {
                        v326 = 0;
                      }

                      v361 = v326;
                      v326 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                      v362 = vshr_n_s16(vshl_n_s16(vdup_n_s16(*v82), 8uLL), 8uLL);
                      v363 = (v54 + 2 * v361);
                      v364 = v361 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                      do
                      {
                        *v363++ = v362;
                        v364 += 4;
                      }

                      while (v364);
                      if (v254 != v326)
                      {
                        goto LABEL_646;
                      }

LABEL_877:
                      if (v82 == v526)
                      {
                        goto LABEL_944;
                      }

                      goto LABEL_95;
                    }

                    if (v254 < 8 || v54 < (v524 + v254) && v524 < v54 + 2 * v254)
                    {
                      v330 = 0;
                      goto LABEL_656;
                    }

                    if (v254 >= 0x20)
                    {
                      v330 = v254 & 0x7FFFFFFFFFFFFFE0;
                      v365 = (v524 + 16);
                      v366 = v54 + 2;
                      v367 = v254 & 0x7FFFFFFFFFFFFFE0;
                      do
                      {
                        v368 = *v365[-2].i8;
                        v369 = vmovl_s8(*v365);
                        v370 = vmovl_high_s8(*v365->i8);
                        v366[-2] = vmovl_s8(*v368.i8);
                        v366[-1] = vmovl_high_s8(v368);
                        *v366 = v369;
                        v366[1] = v370;
                        v366 += 4;
                        v365 += 4;
                        v367 -= 32;
                      }

                      while (v367);
                      if (v254 == v330)
                      {
                        goto LABEL_877;
                      }

                      if ((v254 & 0x18) == 0)
                      {
LABEL_656:
                        v331 = v254 - v330;
                        v332 = &v54->i16[v330];
                        v333 = v82 + v330;
                        do
                        {
                          v334 = *v333++;
                          *v332++ = v334;
                          --v331;
                        }

                        while (v331);
                        goto LABEL_877;
                      }
                    }

                    else
                    {
                      v330 = 0;
                    }

                    v371 = v330;
                    v330 = v254 & 0x7FFFFFFFFFFFFFF8;
                    v372 = (v82 + v371);
                    v373 = (v54 + 2 * v371);
                    v374 = v371 - (v254 & 0x7FFFFFFFFFFFFFF8);
                    do
                    {
                      v375 = *v372++;
                      *v373++ = vmovl_s8(v375);
                      v374 += 8;
                    }

                    while (v374);
                    if (v254 == v330)
                    {
                      goto LABEL_877;
                    }

                    goto LABEL_656;
                  }

LABEL_649:
                  mlir::Type::getIntOrFloatBitWidth(&v517);
                  v329 = mlir::Type::getIntOrFloatBitWidth(&v517);
                  mlir::detail::unpackQuantizedData<unsigned short>(RawData, v6, v54, v254, v329);
                  goto LABEL_944;
                }

LABEL_633:
                for (i4 = 0; i4 != v254; ++i4)
                {
                  if (v250)
                  {
                    v325 = 0;
                  }

                  else
                  {
                    v325 = i4;
                  }

                  v54->i16[i4] = COERCE_FLOAT(*&RawData[2 * v325] << 16);
                }

                goto LABEL_944;
              }

LABEL_824:
              v54->i16[0] = *RawData;
              goto LABEL_944;
            }

LABEL_770:
            v54->i16[0] = *RawData;
            goto LABEL_944;
          }

LABEL_476:
          v249 = 0;
          goto LABEL_477;
        }
      }

      v59 = 0;
      v60 = v58;
      goto LABEL_474;
    }

    v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
    if (!mlir::Type::isInteger(&v524, 16))
    {
      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isUnsignedInteger(&v524, 32))
      {
        mlir::copyElementsAttrData<unsigned int>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isInteger(&v524, 32))
      {
        mlir::copyElementsAttrData<int>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isUnsignedInteger(&v524, 64))
      {
        mlir::copyElementsAttrData<unsigned long long>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isInteger(&v524, 64))
      {
        mlir::copyElementsAttrData<long long>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isF16(&v524))
      {
        mlir::copyElementsAttrData<half>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isBF16(&v524))
      {
        mlir::copyElementsAttrData<__emulated_bf16>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isF32(&v524))
      {
        mlir::copyElementsAttrData<float>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (mlir::Type::isF64(&v524))
      {
        mlir::copyElementsAttrData<double>(v516, *(&v516 + 1), v521);
        goto LABEL_944;
      }

      v524 = mlir::AffineBinaryOpExpr::getRHS(&v513);
      if (!mlir::Type::isInteger(&v524, 1))
      {
        v78 = mlir::AffineBinaryOpExpr::getRHS(&v513);
        if (*(*v78 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v79 = v78;
        }

        else
        {
          v79 = 0;
        }

        v524 = v79;
        if (v79)
        {
          *&v520 = mlir::AffineMapAttr::getValue(&v524);
          if (mlir::Type::isF32(&v520))
          {
            mlir::copyElementsAttrData<complex_support::complex_fp<float,(void *)0>>(v516, *(&v516 + 1), v521);
          }

          else
          {
            *&v520 = mlir::AffineMapAttr::getValue(&v524);
            mlir::Type::isF16(&v520);
            mlir::copyElementsAttrData<complex_support::complex_fp<half,(void *)0>>(v516, *(&v516 + 1), v521);
          }
        }

        goto LABEL_944;
      }

      if (mlir::ElementsAttr::isSplat(&v516))
      {
        v77 = 1;
      }

      else
      {
        Value = mlir::ArrayAttr::getValue(&v513);
        v77 = mlir::ShapedType::getNumElements(Value, v81);
      }

      llvm::SmallVector<char,40u>::SmallVector(&v524, v77);
      mlir::copyElementsAttrData<char>(v516, *(&v516 + 1), v524);
      mlir::detail::packBooleanData(v524, v525, v521, v522);
      v82 = v524;
      if (v524 == v526)
      {
        goto LABEL_944;
      }

LABEL_95:
      free(v82);
      goto LABEL_944;
    }

    v54 = v521;
    v520 = v516;
    v66 = mlir::ElementsAttr::getType(&v520);
    if (!v66)
    {
      goto LABEL_693;
    }

    v67 = *v66;
    {
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = *(v67 + 8);
      v70 = *(v67 + 16);
      if (v70)
      {
        goto LABEL_62;
      }
    }

    else
    {
      RawData = v66;
      mlir::Builder::getI32VectorAttr();
      v66 = RawData;
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = *(v67 + 8);
      v70 = *(v67 + 16);
      if (v70)
      {
LABEL_62:
        v71 = v69;
        v72 = v70;
        do
        {
          v73 = v72 >> 1;
          v74 = &v71[2 * (v72 >> 1)];
          v76 = *v74;
          v75 = v74 + 2;
          v72 += ~(v72 >> 1);
          if (v76 < v68)
          {
            v71 = v75;
          }

          else
          {
            v72 = v73;
          }
        }

        while (v72);
LABEL_691:
        if (v71 != &v69[2 * v70] && *v71 == v68)
        {
          v376 = v71[1];
LABEL_694:
          v518 = v66;
          v519 = v376;
          v517 = mlir::ElementsAttr::isSplat(&v518);
          v377 = mlir::ElementsAttr::isSplat(&v520);
          v378 = v520;
          if (mlir::DenseElementsAttr::classof(v520))
          {
            v379 = v378;
          }

          else
          {
            v379 = 0;
          }

          v524 = v379;
          if (v379)
          {
            RawData = mlir::DenseElementsAttr::getRawStringData(&v524);
            v6 = v380;
            if (v377)
            {
              goto LABEL_699;
            }

LABEL_706:
            v254 = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
            if (mlir::Type::isUnsignedInteger(&v517, 8))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_708:
              for (i5 = 0; i5 != v254; ++i5)
              {
                if (v377)
                {
                  v384 = 0;
                }

                else
                {
                  v384 = i5;
                }

                v54->i16[i5] = RawData[v384];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 8))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_718:
              for (i6 = 0; i6 != v254; ++i6)
              {
                if (v377)
                {
                  v386 = 0;
                }

                else
                {
                  v386 = i6;
                }

                v54->i16[i6] = RawData[v386];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 16))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_731:
              for (i7 = 0; i7 != v254; ++i7)
              {
                if (v377)
                {
                  v388 = 0;
                }

                else
                {
                  v388 = i7;
                }

                v54->i16[i7] = *&RawData[2 * v388];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 16))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_741:
              for (i8 = 0; i8 != v254; ++i8)
              {
                if (v377)
                {
                  v390 = 0;
                }

                else
                {
                  v390 = i8;
                }

                v54->i16[i8] = *&RawData[2 * v390];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 32))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_751:
              if (v254 >= 2)
              {
                v393 = 0;
                v391 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v394 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v395 = 0;
                  }

                  else
                  {
                    v395 = v393;
                  }

                  if (v377)
                  {
                    v396 = 0;
                  }

                  else
                  {
                    v396 = v393 + 1;
                  }

                  v397 = *&RawData[4 * v396];
                  *(v394 - 1) = *&RawData[4 * v395];
                  *v394 = v397;
                  v394 += 2;
                  v393 += 2;
                }

                while (v393 != v391);
                goto LABEL_937;
              }

              v391 = 0;
              do
              {
                if (v377)
                {
                  v505 = 0;
                }

                else
                {
                  v505 = v391;
                }

                v54->i16[v391++] = *&RawData[4 * v505];
LABEL_937:
                ;
              }

              while (v254 != v391);
              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v517, 32))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_757:
              if (v254 >= 2)
              {
                v399 = 0;
                v392 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v400 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v401 = 0;
                  }

                  else
                  {
                    v401 = v399;
                  }

                  if (v377)
                  {
                    v402 = 0;
                  }

                  else
                  {
                    v402 = v399 + 1;
                  }

                  v403 = *&RawData[4 * v402];
                  *(v400 - 1) = *&RawData[4 * v401];
                  *v400 = v403;
                  v400 += 2;
                  v399 += 2;
                }

                while (v399 != v392);
                goto LABEL_943;
              }

              v392 = 0;
              do
              {
                if (v377)
                {
                  v506 = 0;
                }

                else
                {
                  v506 = v392;
                }

                v54->i16[v392++] = *&RawData[4 * v506];
LABEL_943:
                ;
              }

              while (v254 != v392);
              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v517, 64))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v398 = 0;
LABEL_820:
                v422 = v254 - v398;
                v423 = &v54->i16[v398];
                v424 = &RawData[8 * v398];
                do
                {
                  v425 = *v424;
                  v424 += 8;
                  *v423++ = v425;
                  --v422;
                }

                while (v422);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v398 = v254 & 0x7FFFFFFFFFFFFFF0;
                v412 = (RawData + 64);
                v413 = v54 + 1;
                v414 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v415 = vuzp1q_s16(vuzp1q_s32(*v412, v412[1]), vuzp1q_s32(v412[2], v412[3]));
                  v413[-1] = vuzp1q_s16(vuzp1q_s32(v412[-4], v412[-3]), vuzp1q_s32(v412[-2], v412[-1]));
                  *v413 = v415;
                  v412 += 8;
                  v413 += 2;
                  v414 -= 16;
                }

                while (v414);
                if (v254 == v398)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_820;
                }
              }

              else
              {
                v398 = 0;
              }

              v416 = v398;
              v398 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v417 = &RawData[8 * v416];
              v418 = (v54 + 2 * v416);
              v419 = v416 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v421 = *v417;
                v420 = v417[1];
                v417 += 2;
                *v418++ = vmovn_s32(vuzp1q_s32(v421, v420));
                v419 += 4;
              }

              while (v419);
              if (v254 == v398)
              {
                goto LABEL_944;
              }

              goto LABEL_820;
            }

            if (mlir::Type::isInteger(&v517, 64))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v404 = 0;
LABEL_845:
                v446 = v254 - v404;
                v447 = &v54->i16[v404];
                v448 = &RawData[8 * v404];
                do
                {
                  v449 = *v448;
                  v448 += 8;
                  *v447++ = v449;
                  --v446;
                }

                while (v446);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v404 = v254 & 0x7FFFFFFFFFFFFFF0;
                v436 = (RawData + 64);
                v437 = v54 + 1;
                v438 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v439 = vuzp1q_s16(vuzp1q_s32(*v436, v436[1]), vuzp1q_s32(v436[2], v436[3]));
                  v437[-1] = vuzp1q_s16(vuzp1q_s32(v436[-4], v436[-3]), vuzp1q_s32(v436[-2], v436[-1]));
                  *v437 = v439;
                  v436 += 8;
                  v437 += 2;
                  v438 -= 16;
                }

                while (v438);
                if (v254 == v404)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_845;
                }
              }

              else
              {
                v404 = 0;
              }

              v440 = v404;
              v404 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v441 = &RawData[8 * v440];
              v442 = (v54 + 2 * v440);
              v443 = v440 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v445 = *v441;
                v444 = v441[1];
                v441 += 2;
                *v442++ = vmovn_s32(vuzp1q_s32(v445, v444));
                v443 += 4;
              }

              while (v443);
              if (v254 == v404)
              {
                goto LABEL_944;
              }

              goto LABEL_845;
            }

            if (mlir::Type::isF16(&v517))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_792:
              if (v254 >= 2)
              {
                v407 = 0;
                v405 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v408 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v409 = 0;
                  }

                  else
                  {
                    v409 = v407;
                  }

                  if (v377)
                  {
                    v410 = 0;
                  }

                  else
                  {
                    v410 = v407 + 1;
                  }

                  v411 = *&RawData[2 * v410];
                  *(v408 - 1) = *&RawData[2 * v409];
                  *v408 = v411;
                  v408 += 2;
                  v407 += 2;
                }

                while (v407 != v405);
                goto LABEL_954;
              }

              v405 = 0;
              do
              {
                if (v377)
                {
                  v511 = 0;
                }

                else
                {
                  v511 = v405;
                }

                v54->i16[v405++] = *&RawData[2 * v511];
LABEL_954:
                ;
              }

              while (v254 != v405);
              goto LABEL_944;
            }

            if (mlir::Type::isF32(&v517))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_800:
              if (v254 >= 2)
              {
                v431 = 0;
                v406 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v432 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v433 = 0;
                  }

                  else
                  {
                    v433 = v431;
                  }

                  if (v377)
                  {
                    v434 = 0;
                  }

                  else
                  {
                    v434 = v431 + 1;
                  }

                  v435 = *&RawData[4 * v434];
                  *(v432 - 1) = *&RawData[4 * v433];
                  *v432 = v435;
                  v432 += 2;
                  v431 += 2;
                }

                while (v431 != v406);
                goto LABEL_960;
              }

              v406 = 0;
              do
              {
                if (v377)
                {
                  v512 = 0;
                }

                else
                {
                  v512 = v406;
                }

                v54->i16[v406++] = *&RawData[4 * v512];
LABEL_960:
                ;
              }

              while (v254 != v406);
              goto LABEL_944;
            }

            if (!mlir::Type::isF64(&v517))
            {
              if (!mlir::Type::isBF16(&v517))
              {
                goto LABEL_858;
              }

              if (v254 < 1)
              {
                goto LABEL_944;
              }

              goto LABEL_852;
            }

            if (v254 < 1)
            {
              goto LABEL_944;
            }

            if (v254 < 4)
            {
              v430 = 0;
LABEL_886:
              v478 = v254 - v430;
              v479 = &v54->i16[v430];
              v480 = &RawData[8 * v430];
              do
              {
                v481 = *v480++;
                *v479++ = v481;
                --v478;
              }

              while (v478);
              goto LABEL_944;
            }

            if (v254 >= 0x10)
            {
              v430 = v254 & 0x7FFFFFFFFFFFFFF0;
              v460 = (RawData + 64);
              v461 = &v54[1];
              v462 = v254 & 0x7FFFFFFFFFFFFFF0;
              do
              {
                v463 = v460[3];
                v464 = vmovn_s64(vcvtq_s64_f64(v460[-1]));
                v465 = vmovn_s64(vcvtq_s64_f64(v460[-2]));
                v466 = vmovn_s64(vcvtq_s64_f64(v460[-3]));
                v467 = vmovn_s64(vcvtq_s64_f64(v460[-4]));
                v468 = vqtbl4q_s8(*(&v426 - 1), xmmword_1A7600F00);
                v469 = vmovn_s64(vcvtq_s64_f64(v463));
                v470 = vmovn_s64(vcvtq_s64_f64(v460[2]));
                v471 = vmovn_s64(vcvtq_s64_f64(v460[1]));
                *&v463.f64[0] = vmovn_s64(vcvtq_s64_f64(*v460));
                v461[-1] = v468;
                *v461 = vqtbl4q_s8(*(&v426 - 3), xmmword_1A7600F00);
                v460 += 8;
                v461 += 2;
                v462 -= 16;
              }

              while (v462);
              if (v254 == v430)
              {
                goto LABEL_944;
              }

              if ((v254 & 0xC) == 0)
              {
                goto LABEL_886;
              }
            }

            else
            {
              v430 = 0;
            }

            v472 = v430;
            v430 = v254 & 0x7FFFFFFFFFFFFFFCLL;
            v473 = &RawData[8 * v472];
            v474 = (v54 + 2 * v472);
            v475 = v472 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              v476 = *v473;
              v477 = v473[1];
              v473 += 2;
              *v474++ = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v476), vcvtq_s64_f64(v477)));
              v475 += 4;
            }

            while (v475);
            if (v254 == v430)
            {
              goto LABEL_944;
            }

            goto LABEL_886;
          }

          if (*(*v378 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
          {
            v381 = v378;
          }

          else
          {
            v381 = 0;
          }

          v524 = v381;
          if (v381)
          {
            RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
            v6 = v382;
            if ((v377 & 1) == 0)
            {
              goto LABEL_706;
            }
          }

          else if ((v377 & 1) == 0)
          {
            goto LABEL_706;
          }

LABEL_699:
          if (mlir::Type::isUnsignedInteger(&v517, 8))
          {
            v254 = 1;
            goto LABEL_708;
          }

          if (mlir::Type::isInteger(&v517, 8))
          {
            v254 = 1;
            goto LABEL_718;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 16))
          {
            v254 = 1;
            goto LABEL_731;
          }

          if (mlir::Type::isInteger(&v517, 16))
          {
            v254 = 1;
            goto LABEL_741;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 32))
          {
            v254 = 1;
            goto LABEL_751;
          }

          if (mlir::Type::isInteger(&v517, 32))
          {
            v254 = 1;
            goto LABEL_757;
          }

          if (mlir::Type::isUnsignedInteger(&v517, 64) || mlir::Type::isInteger(&v517, 64))
          {
            goto LABEL_770;
          }

          if (mlir::Type::isF16(&v517))
          {
            v254 = 1;
            goto LABEL_792;
          }

          if (mlir::Type::isF32(&v517))
          {
            v254 = 1;
            goto LABEL_800;
          }

          if (mlir::Type::isF64(&v517))
          {
            goto LABEL_824;
          }

          v254 = 1;
          if (!mlir::Type::isBF16(&v517))
          {
LABEL_858:
            if (!mlir::Type::isInteger(&v517, 1))
            {
              goto LABEL_649;
            }

            llvm::SmallVector<char,40u>::SmallVector(&v524, v254);
            mlir::detail::unpackBooleanData(RawData, v6, v524, v525);
            v82 = v524;
            if (v254 < 1)
            {
              goto LABEL_877;
            }

            if (v377)
            {
              if (v254 < 4 || v54 < (v524 + 1) && v524 < v54 + 2 * v254)
              {
                v452 = 0;
                goto LABEL_865;
              }

              if (v254 >= 0x20)
              {
                v452 = v254 & 0x7FFFFFFFFFFFFFE0;
                v482 = vld1_dup_s8(v524);
                v483 = vmovl_s8(v482);
                v484 = v54 + 2;
                v485 = v254 & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  v484[-2] = v483;
                  v484[-1] = v483;
                  *v484 = v483;
                  v484[1] = v483;
                  v484 += 4;
                  v485 -= 32;
                }

                while (v485);
                if (v254 == v452)
                {
                  goto LABEL_877;
                }

                if ((v254 & 0x1C) == 0)
                {
LABEL_865:
                  v453 = v254 - v452;
                  v454 = &v54->i16[v452];
                  do
                  {
                    *v454++ = *v82;
                    --v453;
                  }

                  while (v453);
                  goto LABEL_877;
                }
              }

              else
              {
                v452 = 0;
              }

              v486 = v452;
              v452 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v487 = vshr_n_s16(vshl_n_s16(vdup_n_s16(*v82), 8uLL), 8uLL);
              v488 = (v54 + 2 * v486);
              v489 = v486 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                *v488++ = v487;
                v489 += 4;
              }

              while (v489);
              if (v254 == v452)
              {
                goto LABEL_877;
              }

              goto LABEL_865;
            }

            if (v254 < 8 || v54 < (v524 + v254) && v524 < v54 + 2 * v254)
            {
              v455 = 0;
              goto LABEL_875;
            }

            if (v254 >= 0x20)
            {
              v455 = v254 & 0x7FFFFFFFFFFFFFE0;
              v490 = (v524 + 16);
              v491 = v54 + 2;
              v492 = v254 & 0x7FFFFFFFFFFFFFE0;
              do
              {
                v493 = *v490[-2].i8;
                v494 = vmovl_s8(*v490);
                v495 = vmovl_high_s8(*v490->i8);
                v491[-2] = vmovl_s8(*v493.i8);
                v491[-1] = vmovl_high_s8(v493);
                *v491 = v494;
                v491[1] = v495;
                v491 += 4;
                v490 += 4;
                v492 -= 32;
              }

              while (v492);
              if (v254 == v455)
              {
                goto LABEL_877;
              }

              if ((v254 & 0x18) == 0)
              {
LABEL_875:
                v456 = v254 - v455;
                v457 = &v54->i16[v455];
                v458 = v82 + v455;
                do
                {
                  v459 = *v458++;
                  *v457++ = v459;
                  --v456;
                }

                while (v456);
                goto LABEL_877;
              }
            }

            else
            {
              v455 = 0;
            }

            v496 = v455;
            v455 = v254 & 0x7FFFFFFFFFFFFFF8;
            v497 = (v82 + v496);
            v498 = (v54 + 2 * v496);
            v499 = v496 - (v254 & 0x7FFFFFFFFFFFFFF8);
            do
            {
              v500 = *v497++;
              *v498++ = vmovl_s8(v500);
              v499 += 8;
            }

            while (v499);
            if (v254 == v455)
            {
              goto LABEL_877;
            }

            goto LABEL_875;
          }

LABEL_852:
          for (i9 = 0; i9 != v254; ++i9)
          {
            if (v377)
            {
              v451 = 0;
            }

            else
            {
              v451 = i9;
            }

            v54->i16[i9] = COERCE_FLOAT(*&RawData[2 * v451] << 16);
          }

          goto LABEL_944;
        }

LABEL_693:
        v376 = 0;
        goto LABEL_694;
      }
    }

    v70 = 0;
    v71 = v69;
    goto LABEL_691;
  }

  v31 = v521;
  v520 = v516;
  v32 = mlir::ElementsAttr::getType(&v520);
  if (!v32)
  {
    goto LABEL_100;
  }

  v33 = *v32;
  {
    v83 = v32;
    mlir::Builder::getI32VectorAttr();
    v32 = v83;
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (v36)
    {
      goto LABEL_27;
    }

LABEL_100:
    v84 = 0;
    goto LABEL_101;
  }

  v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  if (!v36)
  {
    goto LABEL_100;
  }

LABEL_27:
  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
    goto LABEL_100;
  }

  v84 = v37[1];
LABEL_101:
  v518 = v32;
  v519 = v84;
  v517 = mlir::ElementsAttr::isSplat(&v518);
  v85 = mlir::ElementsAttr::isSplat(&v520);
  RawStringData = v520;
  if (mlir::DenseElementsAttr::classof(v520))
  {
    v87 = RawStringData;
  }

  else
  {
    v87 = 0;
  }

  v524 = v87;
  if (v87)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v524);
    v6 = v88;
    if (v85)
    {
      goto LABEL_106;
    }

    goto LABEL_113;
  }

  if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v90 = RawStringData;
  }

  else
  {
    v90 = 0;
  }

  v524 = v90;
  if (!v90)
  {
    if ((v85 & 1) == 0)
    {
      goto LABEL_113;
    }

LABEL_106:
    if (mlir::Type::isUnsignedInteger(&v517, 8))
    {
      NumElements = 1;
      goto LABEL_115;
    }

    if (mlir::Type::isInteger(&v517, 8))
    {
      NumElements = 1;
      goto LABEL_125;
    }

    if (mlir::Type::isUnsignedInteger(&v517, 16))
    {
      NumElements = 1;
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v517, 16))
    {
      NumElements = 1;
      goto LABEL_148;
    }

    if (mlir::Type::isUnsignedInteger(&v517, 32))
    {
      NumElements = 1;
      goto LABEL_158;
    }

    if (mlir::Type::isInteger(&v517, 32))
    {
      NumElements = 1;
      goto LABEL_168;
    }

    if (!mlir::Type::isUnsignedInteger(&v517, 64) && !mlir::Type::isInteger(&v517, 64))
    {
      if (mlir::Type::isF16(&v517))
      {
        NumElements = 1;
        goto LABEL_198;
      }

      if (mlir::Type::isF32(&v517))
      {
        NumElements = 1;
        goto LABEL_208;
      }

      if (!mlir::Type::isF64(&v517))
      {
        NumElements = 1;
        if (!mlir::Type::isBF16(&v517))
        {
LABEL_246:
          if (mlir::Type::isInteger(&v517, 1))
          {
            llvm::SmallVector<char,40u>::SmallVector(&v524, NumElements);
            mlir::detail::unpackBooleanData(RawStringData, v6, v524, v525);
            v134 = v524;
            if (NumElements < 1)
            {
              goto LABEL_437;
            }

            if ((v85 & 1) == 0)
            {
              v135 = 0;
              if (NumElements < 8 || (v31 - v524) < 0x20)
              {
                goto LABEL_279;
              }

              if (NumElements >= 0x20)
              {
                v135 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v155 = (v524 + 16);
                v156 = v31 + 16;
                v157 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  v158 = *v155;
                  *(v156 - 1) = *(v155 - 1);
                  *v156 = v158;
                  v155 += 2;
                  v156 += 2;
                  v157 -= 32;
                }

                while (v157);
                if (NumElements == v135)
                {
                  goto LABEL_437;
                }

                if ((NumElements & 0x18) == 0)
                {
LABEL_279:
                  v164 = NumElements - v135;
                  v165 = &v31[v135];
                  v166 = &v134[v135];
                  do
                  {
                    v167 = *v166++;
                    *v165++ = v167;
                    --v164;
                  }

                  while (v164);
                  goto LABEL_437;
                }
              }

              else
              {
                v135 = 0;
              }

              v159 = v135;
              v135 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v160 = &v134[v159];
              v161 = &v31[v159];
              v162 = v159 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                v163 = *v160;
                v160 += 8;
                *v161 = v163;
                v161 += 8;
                v162 += 8;
              }

              while (v162);
              if (NumElements != v135)
              {
                goto LABEL_279;
              }

LABEL_437:
              if (v134 != v526)
              {
                free(v134);
              }

              goto LABEL_944;
            }

LABEL_436:
            memset(v31, *v134, NumElements);
            goto LABEL_437;
          }

          goto LABEL_261;
        }

        goto LABEL_240;
      }

LABEL_403:
      *v31 = *RawStringData;
      goto LABEL_944;
    }

LABEL_361:
    *v31 = *RawStringData;
    goto LABEL_944;
  }

  RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(&v524);
  v6 = v91;
  if (v85)
  {
    goto LABEL_106;
  }

LABEL_113:
  NumElements = mlir::ElementsAttr::getNumElements(v520, *(&v520 + 1));
  if (mlir::Type::isUnsignedInteger(&v517, 8))
  {
    if (NumElements >= 1)
    {
LABEL_115:
      for (i10 = 0; i10 != NumElements; ++i10)
      {
        if (v85)
        {
          v93 = 0;
        }

        else
        {
          v93 = i10;
        }

        v31[i10] = RawStringData[v93];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v517, 8))
  {
    if (NumElements >= 1)
    {
LABEL_125:
      for (i11 = 0; i11 != NumElements; ++i11)
      {
        if (v85)
        {
          v95 = 0;
        }

        else
        {
          v95 = i11;
        }

        v31[i11] = RawStringData[v95];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v517, 16))
  {
    if (NumElements >= 1)
    {
LABEL_138:
      for (i12 = 0; i12 != NumElements; ++i12)
      {
        if (v85)
        {
          v97 = 0;
        }

        else
        {
          v97 = i12;
        }

        v31[i12] = *&RawStringData[2 * v97];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v517, 16))
  {
    if (NumElements >= 1)
    {
LABEL_148:
      for (i13 = 0; i13 != NumElements; ++i13)
      {
        if (v85)
        {
          v99 = 0;
        }

        else
        {
          v99 = i13;
        }

        v31[i13] = *&RawStringData[2 * v99];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v517, 32))
  {
    if (NumElements >= 1)
    {
LABEL_158:
      for (i14 = 0; i14 != NumElements; ++i14)
      {
        if (v85)
        {
          v101 = 0;
        }

        else
        {
          v101 = i14;
        }

        v31[i14] = *&RawStringData[4 * v101];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v517, 32))
  {
    if (NumElements >= 1)
    {
LABEL_168:
      for (i15 = 0; i15 != NumElements; ++i15)
      {
        if (v85)
        {
          v103 = 0;
        }

        else
        {
          v103 = i15;
        }

        v31[i15] = *&RawStringData[4 * v103];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v517, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
    {
      v104 = 0;
LABEL_184:
      v105 = NumElements - v104;
      v106 = &v31[v104];
      v107 = &RawStringData[8 * v104];
      do
      {
        v108 = *v107;
        v107 += 8;
        *v106++ = v108;
        --v105;
      }

      while (v105);
      goto LABEL_944;
    }

    if (NumElements >= 0x20)
    {
      v104 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v123 = (RawStringData + 128);
      v124 = v31 + 16;
      v125 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *&v126 = vqtbl4q_s8(v123[-2], xmmword_1A7600F10).u64[0];
        *&v127 = vqtbl4q_s8(*v123, xmmword_1A7600F10).u64[0];
        *(&v126 + 1) = vqtbl4q_s8(v123[-1], xmmword_1A7600F10).u64[0];
        *(&v127 + 1) = vqtbl4q_s8(v123[1], xmmword_1A7600F10).u64[0];
        *(v124 - 1) = v126;
        *v124 = v127;
        v123 += 4;
        v124 += 2;
        v125 -= 32;
      }

      while (v125);
      if (NumElements == v104)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0x18) == 0)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v104 = 0;
    }

    v128 = v104;
    v104 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v129 = &RawStringData[8 * v128];
    v130 = &v31[v128];
    v131 = v128 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v130 = vqtbl4q_s8(*v129, xmmword_1A7600F20).u64[0];
      v130 += 8;
      ++v129;
      v131 += 8;
    }

    while (v131);
    if (NumElements == v104)
    {
      goto LABEL_944;
    }

    goto LABEL_184;
  }

  if (mlir::Type::isInteger(&v517, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
    {
      v109 = 0;
LABEL_193:
      v110 = NumElements - v109;
      v111 = &v31[v109];
      v112 = &RawStringData[8 * v109];
      do
      {
        v113 = *v112;
        v112 += 8;
        *v111++ = v113;
        --v110;
      }

      while (v110);
      goto LABEL_944;
    }

    if (NumElements >= 0x20)
    {
      v109 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v136 = (RawStringData + 128);
      v137 = v31 + 16;
      v138 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *&v139 = vqtbl4q_s8(v136[-2], xmmword_1A7600F10).u64[0];
        *&v140 = vqtbl4q_s8(*v136, xmmword_1A7600F10).u64[0];
        *(&v139 + 1) = vqtbl4q_s8(v136[-1], xmmword_1A7600F10).u64[0];
        *(&v140 + 1) = vqtbl4q_s8(v136[1], xmmword_1A7600F10).u64[0];
        *(v137 - 1) = v139;
        *v137 = v140;
        v136 += 4;
        v137 += 2;
        v138 -= 32;
      }

      while (v138);
      if (NumElements == v109)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0x18) == 0)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v109 = 0;
    }

    v141 = v109;
    v109 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v142 = &RawStringData[8 * v141];
    v143 = &v31[v141];
    v144 = v141 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v143 = vqtbl4q_s8(*v142, xmmword_1A7600F20).u64[0];
      v143 += 8;
      ++v142;
      v144 += 8;
    }

    while (v144);
    if (NumElements == v109)
    {
      goto LABEL_944;
    }

    goto LABEL_193;
  }

  if (mlir::Type::isF16(&v517))
  {
    if (NumElements >= 1)
    {
LABEL_198:
      for (i16 = 0; i16 != NumElements; ++i16)
      {
        if (v85)
        {
          v115 = 0;
        }

        else
        {
          v115 = i16;
        }

        v31[i16] = *&RawStringData[2 * v115];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isF32(&v517))
  {
    if (NumElements >= 1)
    {
LABEL_208:
      for (i17 = 0; i17 != NumElements; ++i17)
      {
        if (v85)
        {
          v117 = 0;
        }

        else
        {
          v117 = i17;
        }

        v31[i17] = *&RawStringData[4 * v117];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isF64(&v517))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 4 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
    {
      v118 = 0;
LABEL_225:
      v119 = NumElements - v118;
      v120 = &v31[v118];
      v121 = &RawStringData[8 * v118];
      do
      {
        v122 = *v121++;
        *v120++ = v122;
        --v119;
      }

      while (v119);
      goto LABEL_944;
    }

    if (NumElements >= 0x10)
    {
      v118 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v146 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v147 = v31;
      v148 = RawStringData;
      do
      {
        *v147++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v148), vcvtq_s64_f64(v148[1])), vuzp1q_s32(vcvtq_s64_f64(v148[2]), vcvtq_s64_f64(v148[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v148[4]), vcvtq_s64_f64(v148[5])), vuzp1q_s32(vcvtq_s64_f64(v148[6]), vcvtq_s64_f64(v148[7]))));
        v148 += 8;
        v146 -= 16;
      }

      while (v146);
      if (NumElements == v118)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0xC) == 0)
      {
        goto LABEL_225;
      }
    }

    else
    {
      v118 = 0;
    }

    v149 = v118;
    v118 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v150 = &RawStringData[8 * v149];
    v151 = &v31[v149];
    v152 = v149 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v153 = *v150;
      v154 = v150[1];
      v150 += 2;
      *&v153.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v153), vcvtq_s64_f64(v154)));
      *v151 = vuzp1_s8(*&v153.f64[0], *&v153.f64[0]).u32[0];
      v151 += 4;
      v152 += 4;
    }

    while (v152);
    if (NumElements == v118)
    {
      goto LABEL_944;
    }

    goto LABEL_225;
  }

  if (!mlir::Type::isBF16(&v517))
  {
    goto LABEL_246;
  }

  if (NumElements >= 1)
  {
LABEL_240:
    for (i18 = 0; i18 != NumElements; ++i18)
    {
      if (v85)
      {
        v133 = 0;
      }

      else
      {
        v133 = i18;
      }

      v31[i18] = COERCE_FLOAT(*&RawStringData[2 * v133] << 16);
    }
  }

LABEL_944:
  if (a5)
  {
    v507 = mlir::TensorType::operator mlir::ShapedType(&v513);
    v524 = mlir::DenseElementsAttr::getFromRawBuffer(v507, v508, v521, v522);
    result = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v524);
    v509 = v521;
    if (v521 == v523)
    {
      return result;
    }
  }

  else
  {
    result = mlir::createRawElementsAttr(v513, v521, v522);
    v509 = v521;
    if (v521 == v523)
    {
      return result;
    }
  }

  v510 = result;
  free(v509);
  return v510;
}

float mlir::copyElementsAttrData<unsigned int>(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v143[5] = *MEMORY[0x1E69E9840];
  v140 = a1;
  v141 = a2;
  Type = mlir::ElementsAttr::getType(&v140);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v139[0] = Type;
  v139[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v139);
  v18 = mlir::ElementsAttr::isSplat(&v140);
  v19 = v140;
  if (mlir::DenseElementsAttr::classof(v140))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v142[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v142[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v142);
      v4 = v25;
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_20:
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_29:
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3->i32[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3->i32[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = &a3->i32[1];
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_221;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v132 = 0;
        }

        else
        {
          v132 = v30;
        }

        a3->i32[v30++] = *&RawData[2 * v132];
LABEL_221:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v39 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v40 = &a3->i32[1];
        do
        {
          if (v18)
          {
            v41 = 0;
          }

          else
          {
            v41 = v39;
          }

          if (v18)
          {
            v42 = 0;
          }

          else
          {
            v42 = v39 + 1;
          }

          v43 = *&RawData[2 * v42];
          *(v40 - 1) = *&RawData[2 * v41];
          *v40 = v43;
          v40 += 2;
          v39 += 2;
        }

        while (v39 != v31);
        goto LABEL_227;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v133 = 0;
        }

        else
        {
          v133 = v31;
        }

        a3->i32[v31++] = *&RawData[2 * v133];
LABEL_227:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      for (k = 0; k != NumElements; ++k)
      {
        if (v18)
        {
          v38 = 0;
        }

        else
        {
          v38 = k;
        }

        a3->i32[k] = *&RawData[4 * v38];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_92:
      for (m = 0; m != NumElements; ++m)
      {
        if (v18)
        {
          v45 = 0;
        }

        else
        {
          v45 = m;
        }

        a3->i32[m] = *&RawData[4 * v45];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      a3->i32[0] = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_113:
      if (NumElements >= 2)
      {
        v61 = 0;
        v48 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v62 = &a3->u32[1];
        do
        {
          if (v18)
          {
            v63 = 0;
          }

          else
          {
            v63 = v61;
          }

          if (v18)
          {
            v64 = 0;
          }

          else
          {
            v64 = v61 + 1;
          }

          v22.i16[0] = *&RawData[2 * v63];
          v65 = *&RawData[2 * v64];
          *(v62 - 1) = *v22.i16;
          *v62 = v65;
          v62 += 2;
          v61 += 2;
        }

        while (v61 != v48);
        goto LABEL_233;
      }

      v48 = 0;
      do
      {
        if (v18)
        {
          v134 = 0;
        }

        else
        {
          v134 = v48;
        }

        v22.i16[0] = *&RawData[2 * v134];
        a3->i32[v48++] = *v22.i16;
LABEL_233:
        ;
      }

      while (NumElements != v48);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_125:
      if (NumElements >= 2)
      {
        v78 = 0;
        v60 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v79 = &a3->u32[1];
        do
        {
          if (v18)
          {
            v80 = 0;
          }

          else
          {
            v80 = v78;
          }

          if (v18)
          {
            v81 = 0;
          }

          else
          {
            v81 = v78 + 1;
          }

          v22.i32[0] = *&RawData[4 * v80];
          v82 = *&RawData[4 * v81];
          *(v79 - 1) = *v22.i32;
          *v79 = v82;
          v79 += 2;
          v78 += 2;
        }

        while (v78 != v60);
        goto LABEL_239;
      }

      v60 = 0;
      do
      {
        if (v18)
        {
          v135 = 0;
        }

        else
        {
          v135 = v60;
        }

        v22.i32[0] = *&RawData[4 * v135];
        a3->i32[v60++] = *v22.i32;
LABEL_239:
        ;
      }

      while (NumElements != v60);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      a3->i32[0] = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_163;
    }

    goto LABEL_161;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v142);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v140, v141);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_92;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v46 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v49 = (RawData + 32);
      v50 = a3 + 1;
      v51 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v53 = v49[-2];
        v52 = v49[-1];
        v55 = *v49;
        v54 = v49[1];
        v49 += 4;
        v22 = vuzp1q_s32(v53, v52);
        v50[-1] = v22;
        *v50 = vuzp1q_s32(v55, v54);
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (NumElements == v46)
      {
        return *v22.i32;
      }
    }

    else
    {
      v46 = 0;
    }

    v56 = &RawData[8 * v46];
    v57 = NumElements - v46;
    v58 = &a3->i32[v46];
    do
    {
      v59 = *v56;
      v56 += 8;
      *v58++ = v59;
      --v57;
    }

    while (v57);
    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v47 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v66 = (RawData + 32);
      v67 = a3 + 1;
      v68 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v70 = v66[-2];
        v69 = v66[-1];
        v72 = *v66;
        v71 = v66[1];
        v66 += 4;
        v22 = vuzp1q_s32(v70, v69);
        v67[-1] = v22;
        *v67 = vuzp1q_s32(v72, v71);
        v67 += 2;
        v68 -= 8;
      }

      while (v68);
      if (NumElements == v47)
      {
        return *v22.i32;
      }
    }

    else
    {
      v47 = 0;
    }

    v73 = &RawData[8 * v47];
    v74 = NumElements - v47;
    v75 = &a3->i32[v47];
    do
    {
      v76 = *v73;
      v73 += 8;
      *v75++ = v76;
      --v74;
    }

    while (v74);
    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_113;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_125;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v77 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v93 = (RawData + 32);
      v94 = a3 + 1;
      v95 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v96 = v93[-2];
        v97 = v93[-1];
        v98 = *v93;
        v99 = v93[1];
        v93 += 4;
        v22 = vuzp1q_s32(vcvtq_u64_f64(v96), vcvtq_u64_f64(v97));
        v94[-1] = v22;
        *v94 = vuzp1q_s32(vcvtq_u64_f64(v98), vcvtq_u64_f64(v99));
        v94 += 2;
        v95 -= 8;
      }

      while (v95);
      if (NumElements == v77)
      {
        return *v22.i32;
      }
    }

    else
    {
      v77 = 0;
    }

    v100 = &RawData[8 * v77];
    v101 = NumElements - v77;
    v102 = &a3->i32[v77];
    do
    {
      v103 = *v100++;
      v22.i32[0] = LODWORD(v103);
      *v102++ = v103;
      --v101;
    }

    while (v101);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_163:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned int>(RawData, v4, a3->i32, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v142, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v142[0], v142[1]);
    v84 = v142[0];
    if (NumElements < 1)
    {
      goto LABEL_195;
    }

    if (v18)
    {
      if (NumElements < 4 || v142[0] + 1 > a3 && v142[0] < a3 + 4 * NumElements)
      {
        v85 = 0;
        goto LABEL_170;
      }

      if (NumElements >= 0x20)
      {
        v109 = vld1_dup_s8(v142[0]);
        v85 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v110 = vmovl_s8(v109);
        v22 = vmovl_high_s16(v110);
        v111 = vmovl_s16(*v110.i8);
        v112 = a3 + 4;
        v113 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v112[-4] = v111;
          v112[-3] = v22;
          v112[-2] = v111;
          v112[-1] = v22;
          *v112 = v111;
          v112[1] = v22;
          v112[2] = v111;
          v112[3] = v22;
          v112 += 8;
          v113 -= 32;
        }

        while (v113);
        if (NumElements == v85)
        {
          goto LABEL_195;
        }

        if ((NumElements & 0x1C) == 0)
        {
LABEL_170:
          v86 = NumElements - v85;
          v87 = &a3->i32[v85];
          do
          {
            *v87++ = *v84;
            --v86;
          }

          while (v86);
          goto LABEL_195;
        }
      }

      else
      {
        v85 = 0;
      }

      v114 = v85;
      v85 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vshrq_n_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v84)), 0x18uLL), 0x18uLL);
      v115 = (a3 + 4 * v114);
      v116 = v114 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v115++ = v22;
        v116 += 4;
      }

      while (v116);
      if (NumElements != v85)
      {
        goto LABEL_170;
      }

LABEL_195:
      if (v84 != v143)
      {
        free(v84);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v142[0] + NumElements > a3 && v142[0] < a3 + 4 * NumElements)
    {
      v104 = 0;
      goto LABEL_193;
    }

    if (NumElements >= 0x20)
    {
      v104 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v117 = (v142[0] + 16);
      v118 = a3 + 4;
      v119 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v120 = *v117[-2].i8;
        v121 = *v117->i8;
        v122 = vmovl_s8(*v120.i8);
        v123 = vmovl_high_s8(v120);
        v124 = vmovl_s8(*v117);
        v118[-2] = vmovl_s16(*v123.i8);
        v118[-1] = vmovl_high_s16(v123);
        v125 = vmovl_high_s8(v121);
        v126 = vmovl_s16(*v125.i8);
        v118[-4] = vmovl_s16(*v122.i8);
        v118[-3] = vmovl_high_s16(v122);
        v22 = vmovl_high_s16(v125);
        v118[2] = v126;
        v118[3] = v22;
        *v118 = vmovl_s16(*v124.i8);
        v118[1] = vmovl_high_s16(v124);
        v118 += 8;
        v117 += 4;
        v119 -= 32;
      }

      while (v119);
      if (NumElements == v104)
      {
        goto LABEL_195;
      }

      if ((NumElements & 0x1C) == 0)
      {
LABEL_193:
        v105 = &v84[v104];
        v106 = NumElements - v104;
        v107 = &a3->i32[v104];
        do
        {
          v108 = *v105++;
          *v107++ = v108;
          --v106;
        }

        while (v106);
        goto LABEL_195;
      }
    }

    else
    {
      v104 = 0;
    }

    v127 = v104;
    v104 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v128 = &v84[v127];
    v129 = (a3 + 4 * v127);
    v130 = v127 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v131 = *v128;
      v128 += 4;
      v22.i32[0] = v131;
      v22 = vmovl_s16(*&vmovl_s8(*v22.i8));
      *v129++ = v22;
      v130 += 4;
    }

    while (v130);
    if (NumElements == v104)
    {
      goto LABEL_195;
    }

    goto LABEL_193;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_161:
  if (NumElements >= 2)
  {
    v89 = 0;
    v83 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v90 = a3;
    do
    {
      if (v18)
      {
        v91 = 0;
      }

      else
      {
        v91 = v89;
      }

      if (v18)
      {
        v92 = 0;
      }

      else
      {
        v92 = v89 + 1;
      }

      v22.i16[0] = *&RawData[2 * v91];
      v22.i16[2] = *&RawData[2 * v92];
      *v22.i8 = vcvt_u32_f32(vshl_n_s32(*v22.i8, 0x10uLL));
      v90->i64[0] = v22.i64[0];
      v90 = (v90 + 8);
      v89 += 2;
    }

    while (v89 != v83);
    goto LABEL_245;
  }

  v83 = 0;
  do
  {
    if (v18)
    {
      v136 = 0;
    }

    else
    {
      v136 = v83;
    }

    v22.i32[0] = *&RawData[2 * v136] << 16;
    a3->i32[v83++] = *v22.i32;
LABEL_245:
    ;
  }

  while (NumElements != v83);
  return *v22.i32;
}

float mlir::copyElementsAttrData<int>(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v143[5] = *MEMORY[0x1E69E9840];
  v140 = a1;
  v141 = a2;
  Type = mlir::ElementsAttr::getType(&v140);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v139[0] = Type;
  v139[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v139);
  v18 = mlir::ElementsAttr::isSplat(&v140);
  v19 = v140;
  if (mlir::DenseElementsAttr::classof(v140))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v142[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v142[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v142);
      v4 = v25;
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_20:
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_29:
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3->i32[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3->i32[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = &a3->i32[1];
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_221;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v132 = 0;
        }

        else
        {
          v132 = v30;
        }

        a3->i32[v30++] = *&RawData[2 * v132];
LABEL_221:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v39 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v40 = &a3->i32[1];
        do
        {
          if (v18)
          {
            v41 = 0;
          }

          else
          {
            v41 = v39;
          }

          if (v18)
          {
            v42 = 0;
          }

          else
          {
            v42 = v39 + 1;
          }

          v43 = *&RawData[2 * v42];
          *(v40 - 1) = *&RawData[2 * v41];
          *v40 = v43;
          v40 += 2;
          v39 += 2;
        }

        while (v39 != v31);
        goto LABEL_227;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v133 = 0;
        }

        else
        {
          v133 = v31;
        }

        a3->i32[v31++] = *&RawData[2 * v133];
LABEL_227:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      for (k = 0; k != NumElements; ++k)
      {
        if (v18)
        {
          v38 = 0;
        }

        else
        {
          v38 = k;
        }

        a3->i32[k] = *&RawData[4 * v38];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_92:
      for (m = 0; m != NumElements; ++m)
      {
        if (v18)
        {
          v45 = 0;
        }

        else
        {
          v45 = m;
        }

        a3->i32[m] = *&RawData[4 * v45];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      a3->i32[0] = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_113:
      if (NumElements >= 2)
      {
        v61 = 0;
        v48 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v62 = &a3->i32[1];
        do
        {
          if (v18)
          {
            v63 = 0;
          }

          else
          {
            v63 = v61;
          }

          if (v18)
          {
            v64 = 0;
          }

          else
          {
            v64 = v61 + 1;
          }

          v22.i16[0] = *&RawData[2 * v63];
          v65 = *&RawData[2 * v64];
          *(v62 - 1) = *v22.i16;
          *v62 = v65;
          v62 += 2;
          v61 += 2;
        }

        while (v61 != v48);
        goto LABEL_233;
      }

      v48 = 0;
      do
      {
        if (v18)
        {
          v134 = 0;
        }

        else
        {
          v134 = v48;
        }

        v22.i16[0] = *&RawData[2 * v134];
        a3->i32[v48++] = *v22.i16;
LABEL_233:
        ;
      }

      while (NumElements != v48);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_125:
      if (NumElements >= 2)
      {
        v78 = 0;
        v60 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v79 = &a3->i32[1];
        do
        {
          if (v18)
          {
            v80 = 0;
          }

          else
          {
            v80 = v78;
          }

          if (v18)
          {
            v81 = 0;
          }

          else
          {
            v81 = v78 + 1;
          }

          v22.i32[0] = *&RawData[4 * v80];
          v82 = *&RawData[4 * v81];
          *(v79 - 1) = *v22.i32;
          *v79 = v82;
          v79 += 2;
          v78 += 2;
        }

        while (v78 != v60);
        goto LABEL_239;
      }

      v60 = 0;
      do
      {
        if (v18)
        {
          v135 = 0;
        }

        else
        {
          v135 = v60;
        }

        v22.i32[0] = *&RawData[4 * v135];
        a3->i32[v60++] = *v22.i32;
LABEL_239:
        ;
      }

      while (NumElements != v60);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      a3->i32[0] = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_163;
    }

    goto LABEL_161;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v142);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v140, v141);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_92;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v46 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v49 = (RawData + 32);
      v50 = a3 + 1;
      v51 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v53 = v49[-2];
        v52 = v49[-1];
        v55 = *v49;
        v54 = v49[1];
        v49 += 4;
        v22 = vuzp1q_s32(v53, v52);
        v50[-1] = v22;
        *v50 = vuzp1q_s32(v55, v54);
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (NumElements == v46)
      {
        return *v22.i32;
      }
    }

    else
    {
      v46 = 0;
    }

    v56 = &RawData[8 * v46];
    v57 = NumElements - v46;
    v58 = &a3->i32[v46];
    do
    {
      v59 = *v56;
      v56 += 8;
      *v58++ = v59;
      --v57;
    }

    while (v57);
    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v47 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v66 = (RawData + 32);
      v67 = a3 + 1;
      v68 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v70 = v66[-2];
        v69 = v66[-1];
        v72 = *v66;
        v71 = v66[1];
        v66 += 4;
        v22 = vuzp1q_s32(v70, v69);
        v67[-1] = v22;
        *v67 = vuzp1q_s32(v72, v71);
        v67 += 2;
        v68 -= 8;
      }

      while (v68);
      if (NumElements == v47)
      {
        return *v22.i32;
      }
    }

    else
    {
      v47 = 0;
    }

    v73 = &RawData[8 * v47];
    v74 = NumElements - v47;
    v75 = &a3->i32[v47];
    do
    {
      v76 = *v73;
      v73 += 8;
      *v75++ = v76;
      --v74;
    }

    while (v74);
    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_113;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_125;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 7)
    {
      v77 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v93 = (RawData + 32);
      v94 = a3 + 1;
      v95 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v96 = v93[-2];
        v97 = v93[-1];
        v98 = *v93;
        v99 = v93[1];
        v93 += 4;
        v22 = vuzp1q_s32(vcvtq_s64_f64(v96), vcvtq_s64_f64(v97));
        v94[-1] = v22;
        *v94 = vuzp1q_s32(vcvtq_s64_f64(v98), vcvtq_s64_f64(v99));
        v94 += 2;
        v95 -= 8;
      }

      while (v95);
      if (NumElements == v77)
      {
        return *v22.i32;
      }
    }

    else
    {
      v77 = 0;
    }

    v100 = &RawData[8 * v77];
    v101 = NumElements - v77;
    v102 = &a3->i32[v77];
    do
    {
      v103 = *v100++;
      v22.i32[0] = LODWORD(v103);
      *v102++ = v103;
      --v101;
    }

    while (v101);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_163:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<int>(RawData, v4, a3->i32, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v142, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v142[0], v142[1]);
    v84 = v142[0];
    if (NumElements < 1)
    {
      goto LABEL_195;
    }

    if (v18)
    {
      if (NumElements < 4 || v142[0] + 1 > a3 && v142[0] < a3 + 4 * NumElements)
      {
        v85 = 0;
        goto LABEL_170;
      }

      if (NumElements >= 0x20)
      {
        v109 = vld1_dup_s8(v142[0]);
        v85 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v110 = vmovl_s8(v109);
        v22 = vmovl_high_s16(v110);
        v111 = vmovl_s16(*v110.i8);
        i32 = a3[4].i32;
        v113 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          *(i32 - 4) = v111;
          *(i32 - 3) = v22;
          *(i32 - 2) = v111;
          *(i32 - 1) = v22;
          *i32 = v111;
          *(i32 + 1) = v22;
          *(i32 + 2) = v111;
          *(i32 + 3) = v22;
          i32 += 32;
          v113 -= 32;
        }

        while (v113);
        if (NumElements == v85)
        {
          goto LABEL_195;
        }

        if ((NumElements & 0x1C) == 0)
        {
LABEL_170:
          v86 = NumElements - v85;
          v87 = &a3->i32[v85];
          do
          {
            *v87++ = *v84;
            --v86;
          }

          while (v86);
          goto LABEL_195;
        }
      }

      else
      {
        v85 = 0;
      }

      v114 = v85;
      v85 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vshrq_n_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v84)), 0x18uLL), 0x18uLL);
      v115 = &a3->i32[v114];
      v116 = v114 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v115 = v22;
        v115 += 4;
        v116 += 4;
      }

      while (v116);
      if (NumElements != v85)
      {
        goto LABEL_170;
      }

LABEL_195:
      if (v84 != v143)
      {
        free(v84);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v142[0] + NumElements > a3 && v142[0] < a3 + 4 * NumElements)
    {
      v104 = 0;
      goto LABEL_193;
    }

    if (NumElements >= 0x20)
    {
      v104 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v117 = (v142[0] + 16);
      v118 = a3[4].i32;
      v119 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v120 = *v117[-2].i8;
        v121 = *v117->i8;
        v122 = vmovl_s8(*v120.i8);
        v123 = vmovl_high_s8(v120);
        v124 = vmovl_s8(*v117);
        *(v118 - 2) = vmovl_s16(*v123.i8);
        *(v118 - 1) = vmovl_high_s16(v123);
        v125 = vmovl_high_s8(v121);
        v126 = vmovl_s16(*v125.i8);
        *(v118 - 4) = vmovl_s16(*v122.i8);
        *(v118 - 3) = vmovl_high_s16(v122);
        v22 = vmovl_high_s16(v125);
        *(v118 + 2) = v126;
        *(v118 + 3) = v22;
        *v118 = vmovl_s16(*v124.i8);
        *(v118 + 1) = vmovl_high_s16(v124);
        v118 += 32;
        v117 += 4;
        v119 -= 32;
      }

      while (v119);
      if (NumElements == v104)
      {
        goto LABEL_195;
      }

      if ((NumElements & 0x1C) == 0)
      {
LABEL_193:
        v105 = &v84[v104];
        v106 = NumElements - v104;
        v107 = &a3->i32[v104];
        do
        {
          v108 = *v105++;
          *v107++ = v108;
          --v106;
        }

        while (v106);
        goto LABEL_195;
      }
    }

    else
    {
      v104 = 0;
    }

    v127 = v104;
    v104 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v128 = &v84[v127];
    v129 = &a3->i32[v127];
    v130 = v127 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v131 = *v128;
      v128 += 4;
      v22.i32[0] = v131;
      v22 = vmovl_s16(*&vmovl_s8(*v22.i8));
      *v129 = v22;
      v129 += 4;
      v130 += 4;
    }

    while (v130);
    if (NumElements == v104)
    {
      goto LABEL_195;
    }

    goto LABEL_193;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_161:
  if (NumElements >= 2)
  {
    v89 = 0;
    v83 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v90 = a3;
    do
    {
      if (v18)
      {
        v91 = 0;
      }

      else
      {
        v91 = v89;
      }

      if (v18)
      {
        v92 = 0;
      }

      else
      {
        v92 = v89 + 1;
      }

      v22.i16[0] = *&RawData[2 * v91];
      v22.i16[2] = *&RawData[2 * v92];
      *v22.i8 = vcvt_s32_f32(vshl_n_s32(*v22.i8, 0x10uLL));
      *v90 = v22.i64[0];
      v90 += 2;
      v89 += 2;
    }

    while (v89 != v83);
    goto LABEL_245;
  }

  v83 = 0;
  do
  {
    if (v18)
    {
      v136 = 0;
    }

    else
    {
      v136 = v83;
    }

    v22.i32[0] = *&RawData[2 * v136] << 16;
    a3->i32[v83++] = *v22.i32;
LABEL_245:
    ;
  }

  while (NumElements != v83);
  return *v22.i32;
}

float mlir::copyElementsAttrData<unsigned long long>(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v163[5] = *MEMORY[0x1E69E9840];
  v160 = a1;
  v161 = a2;
  Type = mlir::ElementsAttr::getType(&v160);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v159[0] = Type;
  v159[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v159);
  v18 = mlir::ElementsAttr::isSplat(&v160);
  v19 = v160;
  if (mlir::DenseElementsAttr::classof(v160))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v162[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v162[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v162);
      v4 = v25;
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_20:
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_29:
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3->i64[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3->i64[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_231;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v150 = 0;
        }

        else
        {
          v150 = v30;
        }

        a3->i64[v30++] = *&RawData[2 * v150];
LABEL_231:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v38 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v39 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v40 = 0;
          }

          else
          {
            v40 = v38;
          }

          if (v18)
          {
            v41 = 0;
          }

          else
          {
            v41 = v38 + 1;
          }

          v42 = *&RawData[2 * v41];
          *(v39 - 1) = *&RawData[2 * v40];
          *v39 = v42;
          v39 += 2;
          v38 += 2;
        }

        while (v38 != v31);
        goto LABEL_237;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v151 = 0;
        }

        else
        {
          v151 = v31;
        }

        a3->i64[v31++] = *&RawData[2 * v151];
LABEL_237:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      if (NumElements >= 2)
      {
        v44 = 0;
        v37 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v45 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v46 = 0;
          }

          else
          {
            v46 = v44;
          }

          if (v18)
          {
            v47 = 0;
          }

          else
          {
            v47 = v44 + 1;
          }

          v48 = *&RawData[4 * v47];
          *(v45 - 1) = *&RawData[4 * v46];
          *v45 = v48;
          v45 += 2;
          v44 += 2;
        }

        while (v44 != v37);
        goto LABEL_243;
      }

      v37 = 0;
      do
      {
        if (v18)
        {
          v152 = 0;
        }

        else
        {
          v152 = v37;
        }

        a3->i64[v37++] = *&RawData[4 * v152];
LABEL_243:
        ;
      }

      while (NumElements != v37);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_88:
      if (NumElements >= 2)
      {
        v59 = 0;
        v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v60 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v61 = 0;
          }

          else
          {
            v61 = v59;
          }

          if (v18)
          {
            v62 = 0;
          }

          else
          {
            v62 = v59 + 1;
          }

          v63 = *&RawData[4 * v62];
          *(v60 - 1) = *&RawData[4 * v61];
          *v60 = v63;
          v60 += 2;
          v59 += 2;
        }

        while (v59 != v43);
        goto LABEL_249;
      }

      v43 = 0;
      do
      {
        if (v18)
        {
          v153 = 0;
        }

        else
        {
          v153 = v43;
        }

        a3->i64[v43++] = *&RawData[4 * v153];
LABEL_249:
        ;
      }

      while (NumElements != v43);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_135:
      if (NumElements >= 2)
      {
        v76 = 0;
        v74 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v77 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v78 = 0;
          }

          else
          {
            v78 = v76;
          }

          if (v18)
          {
            v79 = 0;
          }

          else
          {
            v79 = v76 + 1;
          }

          v22.i16[0] = *&RawData[2 * v78];
          v80 = *&RawData[2 * v79];
          *(v77 - 1) = *v22.i16;
          *v77 = v80;
          v77 += 2;
          v76 += 2;
        }

        while (v76 != v74);
        goto LABEL_255;
      }

      v74 = 0;
      do
      {
        if (v18)
        {
          v154 = 0;
        }

        else
        {
          v154 = v74;
        }

        v22.i16[0] = *&RawData[2 * v154];
        a3->i64[v74++] = *v22.i16;
LABEL_255:
        ;
      }

      while (NumElements != v74);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_141:
      if (NumElements >= 2)
      {
        v82 = 0;
        v75 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v83 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v84 = 0;
          }

          else
          {
            v84 = v82;
          }

          if (v18)
          {
            v85 = 0;
          }

          else
          {
            v85 = v82 + 1;
          }

          v22.i32[0] = *&RawData[4 * v84];
          v86 = *&RawData[4 * v85];
          *(v83 - 1) = *v22.i32;
          *v83 = v86;
          v83 += 2;
          v82 += 2;
        }

        while (v82 != v75);
        goto LABEL_261;
      }

      v75 = 0;
      do
      {
        if (v18)
        {
          v155 = 0;
        }

        else
        {
          v155 = v75;
        }

        v22.i32[0] = *&RawData[4 * v155];
        a3->i64[v75++] = *v22.i32;
LABEL_261:
        ;
      }

      while (NumElements != v75);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v162);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v160, v161);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_88;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v49 = 0;
      if (NumElements < 4)
      {
        goto LABEL_109;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_109;
      }

      v49 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v50 = (RawData + 16);
      v51 = a3 + 1;
      v52 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v50[-1];
        v53 = *v50;
        v51[-1] = v22;
        *v51 = v53;
        v50 += 2;
        v51 += 2;
        v52 -= 4;
      }

      while (v52);
      if (NumElements != v49)
      {
LABEL_109:
        v54 = v49;
        v55 = &RawData[8 * v49];
        v56 = NumElements - v49;
        v57 = &a3->i64[v54];
        do
        {
          v58 = *v55;
          v55 += 8;
          *v57++ = v58;
          --v56;
        }

        while (v56);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v64 = 0;
      if (NumElements < 4)
      {
        goto LABEL_128;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_128;
      }

      v64 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v65 = (RawData + 16);
      v66 = a3 + 1;
      v67 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v65[-1];
        v68 = *v65;
        v66[-1] = v22;
        *v66 = v68;
        v65 += 2;
        v66 += 2;
        v67 -= 4;
      }

      while (v67);
      if (NumElements != v64)
      {
LABEL_128:
        v69 = v64;
        v70 = &RawData[8 * v64];
        v71 = NumElements - v64;
        v72 = &a3->i64[v69];
        do
        {
          v73 = *v70;
          v70 += 8;
          *v72++ = v73;
          --v71;
        }

        while (v71);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_135;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_141;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 3)
    {
      v81 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v98 = (RawData + 16);
      v99 = a3 + 1;
      v100 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = vcvtq_u64_f64(v98[-1]);
        v101 = vcvtq_u64_f64(*v98);
        v99[-1] = v22;
        *v99 = v101;
        v98 += 2;
        v99 += 2;
        v100 -= 4;
      }

      while (v100);
      if (NumElements == v81)
      {
        return *v22.i32;
      }
    }

    else
    {
      v81 = 0;
    }

    v102 = v81;
    v103 = &RawData[8 * v81];
    v104 = NumElements - v81;
    v105 = &a3->i64[v102];
    do
    {
      v106 = *v103++;
      v22.i32[0] = LODWORD(v106);
      *v105++ = v106;
      --v104;
    }

    while (v104);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_173:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v162, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v162[0], v162[1]);
    v88 = v162[0];
    if (NumElements < 1)
    {
      goto LABEL_205;
    }

    if (v18)
    {
      if (NumElements < 4 || v162[0] + 1 > a3 && v162[0] < a3 + 8 * NumElements)
      {
        v89 = 0;
        goto LABEL_180;
      }

      if (NumElements >= 0x10)
      {
        v89 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v112 = vld1_dup_s8(v162[0]);
        v113 = vmovl_s8(v112);
        v114 = vmovl_high_s16(v113);
        v115.i64[0] = v114.i32[2];
        v115.i64[1] = v114.i32[3];
        v22 = v115;
        v115.i64[0] = v114.i32[0];
        v115.i64[1] = v114.i32[1];
        v116 = v115;
        v117 = vmovl_s16(*v113.i8);
        v115.i64[0] = v117.i32[2];
        v115.i64[1] = v117.i32[3];
        v118 = v115;
        v115.i64[0] = v117.i32[0];
        v115.i64[1] = v117.i32[1];
        v119 = v115;
        v120 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v121 = a3;
        do
        {
          *v121 = v119;
          v121[1] = v118;
          v121[2] = v116;
          v121[3] = v22;
          v121[4] = v119;
          v121[5] = v118;
          v121[6] = v116;
          v121[7] = v22;
          v121 += 8;
          v120 -= 16;
        }

        while (v120);
        if (NumElements == v89)
        {
          goto LABEL_205;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_180:
          v90 = NumElements - v89;
          v91 = &a3->i64[v89];
          do
          {
            *v91++ = *v88;
            --v90;
          }

          while (v90);
          goto LABEL_205;
        }
      }

      else
      {
        v89 = 0;
      }

      v122 = v89;
      v123 = vdup_n_s32(*v88);
      v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v124.i64[0] = v123.u32[0];
      v124.i64[1] = v123.u32[1];
      v22 = vshrq_n_s64(vshlq_n_s64(v124, 0x38uLL), 0x38uLL);
      v125 = (a3 + 8 * v122);
      v126 = v122 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v125 = v22;
        v125[1] = v22;
        v125 += 2;
        v126 += 4;
      }

      while (v126);
      if (NumElements != v89)
      {
        goto LABEL_180;
      }

LABEL_205:
      if (v88 != v163)
      {
        free(v88);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v162[0] + NumElements > a3 && v162[0] < a3 + 8 * NumElements)
    {
      v107 = 0;
      goto LABEL_203;
    }

    if (NumElements >= 0x10)
    {
      v107 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v127 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v128 = a3;
      v129 = v162[0];
      do
      {
        v130 = *v129++;
        v131 = vmovl_s8(*v130.i8);
        v132 = vmovl_s16(*v131.i8);
        v133.i64[0] = v132.i32[0];
        v133.i64[1] = v132.i32[1];
        v134 = v133;
        v135 = vmovl_high_s16(v131);
        v133.i64[0] = v135.i32[0];
        v133.i64[1] = v135.i32[1];
        v136 = v133;
        v137 = vmovl_high_s8(v130);
        v138 = vmovl_high_s16(v137);
        v133.i64[0] = v138.i32[0];
        v133.i64[1] = v138.i32[1];
        v139 = v133;
        v133.i64[0] = v138.i32[2];
        v133.i64[1] = v138.i32[3];
        v128[6] = v139;
        v128[7] = v133;
        v22 = vmovl_s16(*v137.i8);
        v133.i64[0] = v22.i32[0];
        v133.i64[1] = v22.i32[1];
        v140 = v133;
        v133.i64[0] = v135.i32[2];
        v133.i64[1] = v135.i32[3];
        v141 = v133;
        v133.i64[0] = v22.i32[2];
        v133.i64[1] = v22.i32[3];
        v128[4] = v140;
        v128[5] = v133;
        v128[2] = v136;
        v128[3] = v141;
        v133.i64[0] = v132.i32[2];
        v133.i64[1] = v132.i32[3];
        v22.i64[0] = v132.i32[2];
        *v128 = v134;
        v128[1] = v133;
        v128 += 8;
        v127 -= 16;
      }

      while (v127);
      if (NumElements == v107)
      {
        goto LABEL_205;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_203:
        v108 = &v88[v107];
        v109 = NumElements - v107;
        v110 = &a3->i64[v107];
        do
        {
          v111 = *v108++;
          *v110++ = v111;
          --v109;
        }

        while (v109);
        goto LABEL_205;
      }
    }

    else
    {
      v107 = 0;
    }

    v142 = v107;
    v107 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v143 = &v88[v142];
    v144 = (a3 + 8 * v142);
    v145 = v142 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v146 = *v143;
      v143 += 4;
      v22.i32[0] = v146;
      v147 = vmovl_u16(*&vmovl_u8(*v22.i8));
      v148.i64[0] = v147.u32[0];
      v148.i64[1] = v147.u32[1];
      v149 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      v148.i64[0] = v147.u32[2];
      v148.i64[1] = v147.u32[3];
      v22 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      *v144 = v149;
      v144[1] = v22;
      v144 += 2;
      v145 += 4;
    }

    while (v145);
    if (NumElements == v107)
    {
      goto LABEL_205;
    }

    goto LABEL_203;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_171:
  if (NumElements >= 2)
  {
    v93 = 0;
    v87 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v94 = &a3->i64[1];
    do
    {
      if (v18)
      {
        v95 = 0;
      }

      else
      {
        v95 = v93;
      }

      if (v18)
      {
        v96 = 0;
      }

      else
      {
        v96 = v93 + 1;
      }

      v22.i32[0] = *&RawData[2 * v95] << 16;
      v97 = COERCE_FLOAT(*&RawData[2 * v96] << 16);
      *(v94 - 1) = *v22.i32;
      *v94 = v97;
      v94 += 2;
      v93 += 2;
    }

    while (v93 != v87);
    goto LABEL_267;
  }

  v87 = 0;
  do
  {
    if (v18)
    {
      v156 = 0;
    }

    else
    {
      v156 = v87;
    }

    v22.i32[0] = *&RawData[2 * v156] << 16;
    a3->i64[v87++] = *v22.i32;
LABEL_267:
    ;
  }

  while (NumElements != v87);
  return *v22.i32;
}

float mlir::copyElementsAttrData<long long>(uint64_t a1, uint64_t a2, int32x4_t *a3)
{
  v163[5] = *MEMORY[0x1E69E9840];
  v160 = a1;
  v161 = a2;
  Type = mlir::ElementsAttr::getType(&v160);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v159[0] = Type;
  v159[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v159);
  v18 = mlir::ElementsAttr::isSplat(&v160);
  v19 = v160;
  if (mlir::DenseElementsAttr::classof(v160))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v162[0] = v20;
  if (!v20)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v162[0] = v24;
    if (v24)
    {
      RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v162);
      v4 = v25;
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_20:
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_29:
      for (i = 0; i != NumElements; ++i)
      {
        if (v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = i;
        }

        a3->i64[i] = RawData[v27];
      }

      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      NumElements = 1;
LABEL_39:
      for (j = 0; j != NumElements; ++j)
      {
        if (v18)
        {
          v29 = 0;
        }

        else
        {
          v29 = j;
        }

        a3->i64[j] = RawData[v29];
      }

      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_52:
      if (NumElements >= 2)
      {
        v32 = 0;
        v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v33 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          if (v18)
          {
            v35 = 0;
          }

          else
          {
            v35 = v32 + 1;
          }

          v36 = *&RawData[2 * v35];
          *(v33 - 1) = *&RawData[2 * v34];
          *v33 = v36;
          v33 += 2;
          v32 += 2;
        }

        while (v32 != v30);
        goto LABEL_231;
      }

      v30 = 0;
      do
      {
        if (v18)
        {
          v150 = 0;
        }

        else
        {
          v150 = v30;
        }

        a3->i64[v30++] = *&RawData[2 * v150];
LABEL_231:
        ;
      }

      while (NumElements != v30);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      NumElements = 1;
LABEL_58:
      if (NumElements >= 2)
      {
        v38 = 0;
        v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v39 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v40 = 0;
          }

          else
          {
            v40 = v38;
          }

          if (v18)
          {
            v41 = 0;
          }

          else
          {
            v41 = v38 + 1;
          }

          v42 = *&RawData[2 * v41];
          *(v39 - 1) = *&RawData[2 * v40];
          *v39 = v42;
          v39 += 2;
          v38 += 2;
        }

        while (v38 != v31);
        goto LABEL_237;
      }

      v31 = 0;
      do
      {
        if (v18)
        {
          v151 = 0;
        }

        else
        {
          v151 = v31;
        }

        a3->i64[v31++] = *&RawData[2 * v151];
LABEL_237:
        ;
      }

      while (NumElements != v31);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_73:
      if (NumElements >= 2)
      {
        v44 = 0;
        v37 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v45 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v46 = 0;
          }

          else
          {
            v46 = v44;
          }

          if (v18)
          {
            v47 = 0;
          }

          else
          {
            v47 = v44 + 1;
          }

          v48 = *&RawData[4 * v47];
          *(v45 - 1) = *&RawData[4 * v46];
          *v45 = v48;
          v45 += 2;
          v44 += 2;
        }

        while (v44 != v37);
        goto LABEL_243;
      }

      v37 = 0;
      do
      {
        if (v18)
        {
          v152 = 0;
        }

        else
        {
          v152 = v37;
        }

        a3->i64[v37++] = *&RawData[4 * v152];
LABEL_243:
        ;
      }

      while (NumElements != v37);
      return *v22.i32;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
LABEL_88:
      if (NumElements >= 2)
      {
        v59 = 0;
        v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v60 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v61 = 0;
          }

          else
          {
            v61 = v59;
          }

          if (v18)
          {
            v62 = 0;
          }

          else
          {
            v62 = v59 + 1;
          }

          v63 = *&RawData[4 * v62];
          *(v60 - 1) = *&RawData[4 * v61];
          *v60 = v63;
          v60 += 2;
          v59 += 2;
        }

        while (v59 != v43);
        goto LABEL_249;
      }

      v43 = 0;
      do
      {
        if (v18)
        {
          v153 = 0;
        }

        else
        {
          v153 = v43;
        }

        a3->i64[v43++] = *&RawData[4 * v153];
LABEL_249:
        ;
      }

      while (NumElements != v43);
      return *v22.i32;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isInteger(&isSplat, 64))
    {
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_135:
      if (NumElements >= 2)
      {
        v76 = 0;
        v74 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v77 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v78 = 0;
          }

          else
          {
            v78 = v76;
          }

          if (v18)
          {
            v79 = 0;
          }

          else
          {
            v79 = v76 + 1;
          }

          v22.i16[0] = *&RawData[2 * v78];
          v80 = *&RawData[2 * v79];
          *(v77 - 1) = *v22.i16;
          *v77 = v80;
          v77 += 2;
          v76 += 2;
        }

        while (v76 != v74);
        goto LABEL_255;
      }

      v74 = 0;
      do
      {
        if (v18)
        {
          v154 = 0;
        }

        else
        {
          v154 = v74;
        }

        v22.i16[0] = *&RawData[2 * v154];
        a3->i64[v74++] = *v22.i16;
LABEL_255:
        ;
      }

      while (NumElements != v74);
      return *v22.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_141:
      if (NumElements >= 2)
      {
        v82 = 0;
        v75 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v83 = &a3->i64[1];
        do
        {
          if (v18)
          {
            v84 = 0;
          }

          else
          {
            v84 = v82;
          }

          if (v18)
          {
            v85 = 0;
          }

          else
          {
            v85 = v82 + 1;
          }

          v22.i32[0] = *&RawData[4 * v84];
          v86 = *&RawData[4 * v85];
          *(v83 - 1) = *v22.i32;
          *v83 = v86;
          v83 += 2;
          v82 += 2;
        }

        while (v82 != v75);
        goto LABEL_261;
      }

      v75 = 0;
      do
      {
        if (v18)
        {
          v155 = 0;
        }

        else
        {
          v155 = v75;
        }

        v22.i32[0] = *&RawData[4 * v155];
        a3->i64[v75++] = *v22.i32;
LABEL_261:
        ;
      }

      while (NumElements != v75);
      return *v22.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      v22.i64[0] = *RawData;
      a3->i64[0] = *RawData;
      return *v22.i32;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  RawData = mlir::DenseElementsAttr::getRawStringData(v162);
  v4 = v21;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_27:
  NumElements = mlir::ElementsAttr::getNumElements(v160, v161);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_29;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_39;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_52;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_58;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_73;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_88;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v49 = 0;
      if (NumElements < 4)
      {
        goto LABEL_109;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_109;
      }

      v49 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v50 = (RawData + 16);
      v51 = a3 + 1;
      v52 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v50[-1];
        v53 = *v50;
        v51[-1] = v22;
        *v51 = v53;
        v50 += 2;
        v51 += 2;
        v52 -= 4;
      }

      while (v52);
      if (NumElements != v49)
      {
LABEL_109:
        v54 = v49;
        v55 = &RawData[8 * v49];
        v56 = NumElements - v49;
        v57 = &a3->i64[v54];
        do
        {
          v58 = *v55;
          v55 += 8;
          *v57++ = v58;
          --v56;
        }

        while (v56);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    if (NumElements >= 1)
    {
      v64 = 0;
      if (NumElements < 4)
      {
        goto LABEL_128;
      }

      if ((a3 - RawData) <= 0x1F)
      {
        goto LABEL_128;
      }

      v64 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v65 = (RawData + 16);
      v66 = a3 + 1;
      v67 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = v65[-1];
        v68 = *v65;
        v66[-1] = v22;
        *v66 = v68;
        v65 += 2;
        v66 += 2;
        v67 -= 4;
      }

      while (v67);
      if (NumElements != v64)
      {
LABEL_128:
        v69 = v64;
        v70 = &RawData[8 * v64];
        v71 = NumElements - v64;
        v72 = &a3->i64[v69];
        do
        {
          v73 = *v70;
          v70 += 8;
          *v72++ = v73;
          --v71;
        }

        while (v71);
      }
    }

    return *v22.i32;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_135;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    goto LABEL_141;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements < 1)
    {
      return *v22.i32;
    }

    if (NumElements > 3)
    {
      v81 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v98 = (RawData + 16);
      v99 = a3 + 1;
      v100 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = vcvtq_s64_f64(v98[-1]);
        v101 = vcvtq_s64_f64(*v98);
        v99[-1] = v22;
        *v99 = v101;
        v98 += 2;
        v99 += 2;
        v100 -= 4;
      }

      while (v100);
      if (NumElements == v81)
      {
        return *v22.i32;
      }
    }

    else
    {
      v81 = 0;
    }

    v102 = v81;
    v103 = &RawData[8 * v81];
    v104 = NumElements - v81;
    v105 = &a3->i64[v102];
    do
    {
      v106 = *v103++;
      v22.i32[0] = LODWORD(v106);
      *v105++ = v106;
      --v104;
    }

    while (v104);
    return *v22.i32;
  }

  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_173:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(RawData, v4, a3, NumElements, IntOrFloatBitWidth);
      return *v22.i32;
    }

    llvm::SmallVector<char,40u>::SmallVector(v162, NumElements);
    mlir::detail::unpackBooleanData(RawData, v4, v162[0], v162[1]);
    v88 = v162[0];
    if (NumElements < 1)
    {
      goto LABEL_205;
    }

    if (v18)
    {
      if (NumElements < 4 || v162[0] + 1 > a3 && v162[0] < a3 + 8 * NumElements)
      {
        v89 = 0;
        goto LABEL_180;
      }

      if (NumElements >= 0x10)
      {
        v89 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v112 = vld1_dup_s8(v162[0]);
        v113 = vmovl_s8(v112);
        v114 = vmovl_high_s16(v113);
        v115.i64[0] = v114.i32[2];
        v115.i64[1] = v114.i32[3];
        v22 = v115;
        v115.i64[0] = v114.i32[0];
        v115.i64[1] = v114.i32[1];
        v116 = v115;
        v117 = vmovl_s16(*v113.i8);
        v115.i64[0] = v117.i32[2];
        v115.i64[1] = v117.i32[3];
        v118 = v115;
        v115.i64[0] = v117.i32[0];
        v115.i64[1] = v117.i32[1];
        v119 = v115;
        v120 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v121 = a3;
        do
        {
          *v121 = v119;
          v121[1] = v118;
          v121[2] = v116;
          v121[3] = v22;
          v121[4] = v119;
          v121[5] = v118;
          v121[6] = v116;
          v121[7] = v22;
          v121 += 8;
          v120 -= 16;
        }

        while (v120);
        if (NumElements == v89)
        {
          goto LABEL_205;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_180:
          v90 = NumElements - v89;
          v91 = &a3->i64[v89];
          do
          {
            *v91++ = *v88;
            --v90;
          }

          while (v90);
          goto LABEL_205;
        }
      }

      else
      {
        v89 = 0;
      }

      v122 = v89;
      v123 = vdup_n_s32(*v88);
      v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v124.i64[0] = v123.u32[0];
      v124.i64[1] = v123.u32[1];
      v22 = vshrq_n_s64(vshlq_n_s64(v124, 0x38uLL), 0x38uLL);
      v125 = (a3 + 8 * v122);
      v126 = v122 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v125 = v22;
        v125[1] = v22;
        v125 += 2;
        v126 += 4;
      }

      while (v126);
      if (NumElements != v89)
      {
        goto LABEL_180;
      }

LABEL_205:
      if (v88 != v163)
      {
        free(v88);
      }

      return *v22.i32;
    }

    if (NumElements < 4 || v162[0] + NumElements > a3 && v162[0] < a3 + 8 * NumElements)
    {
      v107 = 0;
      goto LABEL_203;
    }

    if (NumElements >= 0x10)
    {
      v107 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v127 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v128 = a3;
      v129 = v162[0];
      do
      {
        v130 = *v129++;
        v131 = vmovl_s8(*v130.i8);
        v132 = vmovl_s16(*v131.i8);
        v133.i64[0] = v132.i32[0];
        v133.i64[1] = v132.i32[1];
        v134 = v133;
        v135 = vmovl_high_s16(v131);
        v133.i64[0] = v135.i32[0];
        v133.i64[1] = v135.i32[1];
        v136 = v133;
        v137 = vmovl_high_s8(v130);
        v138 = vmovl_high_s16(v137);
        v133.i64[0] = v138.i32[0];
        v133.i64[1] = v138.i32[1];
        v139 = v133;
        v133.i64[0] = v138.i32[2];
        v133.i64[1] = v138.i32[3];
        v128[6] = v139;
        v128[7] = v133;
        v22 = vmovl_s16(*v137.i8);
        v133.i64[0] = v22.i32[0];
        v133.i64[1] = v22.i32[1];
        v140 = v133;
        v133.i64[0] = v135.i32[2];
        v133.i64[1] = v135.i32[3];
        v141 = v133;
        v133.i64[0] = v22.i32[2];
        v133.i64[1] = v22.i32[3];
        v128[4] = v140;
        v128[5] = v133;
        v128[2] = v136;
        v128[3] = v141;
        v133.i64[0] = v132.i32[2];
        v133.i64[1] = v132.i32[3];
        v22.i64[0] = v132.i32[2];
        *v128 = v134;
        v128[1] = v133;
        v128 += 8;
        v127 -= 16;
      }

      while (v127);
      if (NumElements == v107)
      {
        goto LABEL_205;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_203:
        v108 = &v88[v107];
        v109 = NumElements - v107;
        v110 = &a3->i64[v107];
        do
        {
          v111 = *v108++;
          *v110++ = v111;
          --v109;
        }

        while (v109);
        goto LABEL_205;
      }
    }

    else
    {
      v107 = 0;
    }

    v142 = v107;
    v107 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v143 = &v88[v142];
    v144 = (a3 + 8 * v142);
    v145 = v142 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v146 = *v143;
      v143 += 4;
      v22.i32[0] = v146;
      v147 = vmovl_u16(*&vmovl_u8(*v22.i8));
      v148.i64[0] = v147.u32[0];
      v148.i64[1] = v147.u32[1];
      v149 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      v148.i64[0] = v147.u32[2];
      v148.i64[1] = v147.u32[3];
      v22 = vshrq_n_s64(vshlq_n_s64(v148, 0x38uLL), 0x38uLL);
      *v144 = v149;
      v144[1] = v22;
      v144 += 2;
      v145 += 4;
    }

    while (v145);
    if (NumElements == v107)
    {
      goto LABEL_205;
    }

    goto LABEL_203;
  }

  if (NumElements < 1)
  {
    return *v22.i32;
  }

LABEL_171:
  if (NumElements >= 2)
  {
    v93 = 0;
    v87 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v94 = &a3->i64[1];
    do
    {
      if (v18)
      {
        v95 = 0;
      }

      else
      {
        v95 = v93;
      }

      if (v18)
      {
        v96 = 0;
      }

      else
      {
        v96 = v93 + 1;
      }

      v22.i32[0] = *&RawData[2 * v95] << 16;
      v97 = COERCE_FLOAT(*&RawData[2 * v96] << 16);
      *(v94 - 1) = *v22.i32;
      *v94 = v97;
      v94 += 2;
      v93 += 2;
    }

    while (v93 != v87);
    goto LABEL_267;
  }

  v87 = 0;
  do
  {
    if (v18)
    {
      v156 = 0;
    }

    else
    {
      v156 = v87;
    }

    v22.i32[0] = *&RawData[2 * v156] << 16;
    a3->i64[v87++] = *v22.i32;
LABEL_267:
    ;
  }

  while (NumElements != v87);
  return *v22.i32;
}

__int16 mlir::copyElementsAttrData<half>@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, short float *a3@<X2>)
{
  v154[5] = *MEMORY[0x1E69E9840];
  v151 = a1;
  v152 = a2;
  Type = mlir::ElementsAttr::getType(&v151);
  if (!Type)
  {
    goto LABEL_14;
  }

  v7 = *Type;
  {
    RawStringData = Type;
    mlir::Builder::getI32VectorAttr();
    Type = RawStringData;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:
  v150[0] = Type;
  v150[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v150);
  v18 = mlir::ElementsAttr::isSplat(&v151);
  v19 = v151;
  if (mlir::DenseElementsAttr::classof(v151))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v153[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v153);
    v4 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v151, v152);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_58;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_73;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_88;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_103;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_118;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      v67 = 0;
      if (NumElements < 4 || (a3 - RawStringData) < 0x20)
      {
        goto LABEL_190;
      }

      if (NumElements >= 0x10)
      {
        v67 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v85 = (RawStringData + 16);
        v86 = (a3 + 8);
        v87 = NumElements & 0x7FFFFFFFFFFFFFF0;
        do
        {
          _Q0 = v85[-1];
          v88 = *v85;
          v86[-1] = _Q0;
          *v86 = v88;
          v85 += 2;
          v86 += 2;
          v87 -= 16;
        }

        while (v87);
        if (NumElements == v67)
        {
          return _Q0.i16[0];
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_190:
          v94 = v67;
          v95 = &RawStringData[2 * v67];
          v96 = NumElements - v67;
          v97 = &a3[v94];
          do
          {
            v98 = *v95;
            v95 += 2;
            _Q0.i16[0] = v98;
            *v97++ = v98;
            --v96;
          }

          while (v96);
          return _Q0.i16[0];
        }
      }

      else
      {
        v67 = 0;
      }

      v89 = v67;
      v67 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v90 = &RawStringData[2 * v89];
      v91 = &a3[v89];
      v92 = v89 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v93 = *v90;
        v90 += 8;
        _Q0.i16[0] = v93;
        *v91 = v93;
        v91 += 4;
        v92 += 4;
      }

      while (v92);
      if (NumElements == v67)
      {
        return _Q0.i16[0];
      }

      goto LABEL_190;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_150;
    }

    if (!mlir::Type::isF64(&isSplat))
    {
      if (!mlir::Type::isBF16(&isSplat))
      {
        goto LABEL_173;
      }

      if (NumElements < 1)
      {
        return _Q0.i16[0];
      }

      goto LABEL_171;
    }

    if (NumElements < 1)
    {
      return _Q0.i16[0];
    }

    if (NumElements == 1)
    {
      v74 = 0;
      goto LABEL_220;
    }

    if (NumElements >= 0x10)
    {
      v74 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v110 = (RawStringData + 64);
      v111 = (a3 + 8);
      v112 = NumElements & 0x7FFFFFFFFFFFFFF0;
      do
      {
        _Q0 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(v110[-4]), v110[-3])), vcvtx_hight_f32_f64(vcvtx_f32_f64(v110[-2]), v110[-1]));
        v113 = vcvt_hight_f16_f32(vcvt_f16_f32(vcvtx_hight_f32_f64(vcvtx_f32_f64(*v110), v110[1])), vcvtx_hight_f32_f64(vcvtx_f32_f64(v110[2]), v110[3]));
        v111[-1] = _Q0;
        *v111 = v113;
        v110 += 8;
        v111 += 2;
        v112 -= 16;
      }

      while (v112);
      if (NumElements == v74)
      {
        return _Q0.i16[0];
      }

      if ((NumElements & 0xE) == 0)
      {
LABEL_220:
        v119 = &RawStringData[8 * v74];
        v120 = NumElements - v74;
        v121 = &a3[v74];
        do
        {
          v122 = *v119;
          v119 += 8;
          _Q0.i64[0] = v122;
          __asm { FCVT            H0, D0 }

          *v121++ = *_Q0.i16;
          --v120;
        }

        while (v120);
        return _Q0.i16[0];
      }
    }

    else
    {
      v74 = 0;
    }

    v114 = v74;
    v74 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v115 = &RawStringData[8 * v114];
    v116 = &a3[v114];
    v117 = v114 - (NumElements & 0x7FFFFFFFFFFFFFFELL);
    do
    {
      v118 = *v115++;
      _Q0.i64[1] = *&v118.f64[1];
      *_Q0.f32 = vcvtx_f32_f64(v118);
      _Q0.i32[0] = vcvt_f16_f32(_Q0).u32[0];
      *v116 = _Q0.i32[0];
      v116 += 2;
      v117 += 2;
    }

    while (v117);
    if (NumElements == v74)
    {
      return _Q0.i16[0];
    }

    goto LABEL_220;
  }

  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  v153[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v153);
    v4 = v25;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    for (i = 0; i != NumElements; ++i)
    {
      if (v18)
      {
        v27 = 0;
      }

      else
      {
        v27 = i;
      }

      _Q0.i8[0] = RawStringData[v27];
      *_Q0.i16 = _Q0.u16[0];
      a3[i] = *_Q0.i16;
    }

    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v29 = 0;
      }

      else
      {
        v29 = j;
      }

      _Q0.i8[0] = RawStringData[v29];
      _Q0.i64[0] = vmovl_s8(*_Q0.f32).u64[0];
      *_Q0.i16 = _Q0.i16[0];
      a3[j] = *_Q0.i16;
    }

    return _Q0.i16[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    if (NumElements >= 2)
    {
      v32 = 0;
      v30 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (v18)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v18)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        *_Q0.i16 = *&RawStringData[2 * v34];
        v36 = *&RawStringData[2 * v35];
        *(v33 - 1) = *_Q0.i16;
        *v33 = v36;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v30);
      goto LABEL_247;
    }

    v30 = 0;
    do
    {
      if (v18)
      {
        v140 = 0;
      }

      else
      {
        v140 = v30;
      }

      *_Q0.i16 = *&RawStringData[2 * v140];
      a3[v30++] = *_Q0.i16;
LABEL_247:
      ;
    }

    while (NumElements != v30);
    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_58:
    if (NumElements >= 2)
    {
      v38 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v39 = a3 + 1;
      do
      {
        if (v18)
        {
          v40 = 0;
        }

        else
        {
          v40 = v38;
        }

        if (v18)
        {
          v41 = 0;
        }

        else
        {
          v41 = v38 + 1;
        }

        *_Q0.i16 = *&RawStringData[2 * v40];
        v42 = *&RawStringData[2 * v41];
        *(v39 - 1) = *_Q0.i16;
        *v39 = v42;
        v39 += 2;
        v38 += 2;
      }

      while (v38 != v31);
      goto LABEL_253;
    }

    v31 = 0;
    do
    {
      if (v18)
      {
        v141 = 0;
      }

      else
      {
        v141 = v31;
      }

      *_Q0.i16 = *&RawStringData[2 * v141];
      a3[v31++] = *_Q0.i16;
LABEL_253:
      ;
    }

    while (NumElements != v31);
    return _Q0.i16[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_73:
    if (NumElements >= 2)
    {
      v44 = 0;
      v37 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v45 = a3 + 1;
      do
      {
        if (v18)
        {
          v46 = 0;
        }

        else
        {
          v46 = v44;
        }

        v47 = *&RawStringData[4 * v46];
        if (v18)
        {
          v48 = 0;
        }

        else
        {
          v48 = v44 + 1;
        }

        _Q0.f32[0] = v47;
        _S1 = *&RawStringData[4 * v48];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v45 - 1) = _Q0.i16[0];
        *v45 = LOWORD(_S1);
        v45 += 2;
        v44 += 2;
      }

      while (v44 != v37);
      goto LABEL_259;
    }

    v37 = 0;
    do
    {
      if (v18)
      {
        v142 = 0;
      }

      else
      {
        v142 = v37;
      }

      _Q0.f32[0] = *&RawStringData[4 * v142];
      __asm { FCVT            H0, S0 }

      a3[v37++] = *_Q0.i16;
LABEL_259:
      ;
    }

    while (NumElements != v37);
    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_88:
    if (NumElements >= 2)
    {
      v55 = 0;
      v43 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v56 = a3 + 1;
      do
      {
        if (v18)
        {
          v57 = 0;
        }

        else
        {
          v57 = v55;
        }

        v58 = *&RawStringData[4 * v57];
        if (v18)
        {
          v59 = 0;
        }

        else
        {
          v59 = v55 + 1;
        }

        _Q0.f32[0] = v58;
        _S1 = *&RawStringData[4 * v59];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v56 - 1) = _Q0.i16[0];
        *v56 = LOWORD(_S1);
        v56 += 2;
        v55 += 2;
      }

      while (v55 != v43);
      goto LABEL_265;
    }

    v43 = 0;
    do
    {
      if (v18)
      {
        v143 = 0;
      }

      else
      {
        v143 = v43;
      }

      _Q0.f32[0] = *&RawStringData[4 * v143];
      __asm { FCVT            H0, S0 }

      a3[v43++] = *_Q0.i16;
LABEL_265:
      ;
    }

    while (NumElements != v43);
    return _Q0.i16[0];
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_103:
    if (NumElements >= 2)
    {
      v62 = 0;
      v54 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v63 = a3 + 1;
      do
      {
        if (v18)
        {
          v64 = 0;
        }

        else
        {
          v64 = v62;
        }

        if (v18)
        {
          v65 = 0;
        }

        else
        {
          v65 = v62 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v64];
        _S1 = *&RawStringData[8 * v65];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v63 - 1) = _Q0.i16[0];
        *v63 = LOWORD(_S1);
        v63 += 2;
        v62 += 2;
      }

      while (v62 != v54);
      goto LABEL_271;
    }

    v54 = 0;
    do
    {
      if (v18)
      {
        v144 = 0;
      }

      else
      {
        v144 = v54;
      }

      _Q0.f32[0] = *&RawStringData[8 * v144];
      __asm { FCVT            H0, S0 }

      a3[v54++] = *_Q0.i16;
LABEL_271:
      ;
    }

    while (NumElements != v54);
    return _Q0.i16[0];
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_118:
    if (NumElements >= 2)
    {
      v68 = 0;
      v61 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v69 = a3 + 1;
      do
      {
        if (v18)
        {
          v70 = 0;
        }

        else
        {
          v70 = v68;
        }

        if (v18)
        {
          v71 = 0;
        }

        else
        {
          v71 = v68 + 1;
        }

        _Q0.f32[0] = *&RawStringData[8 * v70];
        _S1 = *&RawStringData[8 * v71];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v69 - 1) = _Q0.i16[0];
        *v69 = LOWORD(_S1);
        v69 += 2;
        v68 += 2;
      }

      while (v68 != v61);
      goto LABEL_277;
    }

    v61 = 0;
    do
    {
      if (v18)
      {
        v145 = 0;
      }

      else
      {
        v145 = v61;
      }

      _Q0.f32[0] = *&RawStringData[8 * v145];
      __asm { FCVT            H0, S0 }

      a3[v61++] = *_Q0.i16;
LABEL_277:
      ;
    }

    while (NumElements != v61);
    return _Q0.i16[0];
  }

  if (mlir::Type::isF16(&isSplat))
  {
    _Q0.i16[0] = *RawStringData;
    *a3 = *RawStringData;
    return _Q0.i16[0];
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_150:
    if (NumElements >= 2)
    {
      v75 = 0;
      v73 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v76 = a3 + 1;
      do
      {
        if (v18)
        {
          v77 = 0;
        }

        else
        {
          v77 = v75;
        }

        if (v18)
        {
          v78 = 0;
        }

        else
        {
          v78 = v75 + 1;
        }

        _Q0.i32[0] = *&RawStringData[4 * v77];
        _S1 = *&RawStringData[4 * v78];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
        }

        *(v76 - 1) = _Q0.i16[0];
        *v76 = _S1;
        v76 += 2;
        v75 += 2;
      }

      while (v75 != v73);
      goto LABEL_283;
    }

    v73 = 0;
    do
    {
      if (v18)
      {
        v146 = 0;
      }

      else
      {
        v146 = v73;
      }

      _Q0.i32[0] = *&RawStringData[4 * v146];
      __asm { FCVT            H0, S0 }

      a3[v73++] = *_Q0.i16;
LABEL_283:
      ;
    }

    while (NumElements != v73);
    return _Q0.i16[0];
  }

  if (mlir::Type::isF64(&isSplat))
  {
    _Q0.i64[0] = *RawStringData;
    __asm { FCVT            H0, D0 }

    *a3 = *_Q0.i16;
    return _Q0.i16[0];
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
LABEL_173:
    if (!mlir::Type::isInteger(&isSplat, 1))
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<half>(RawStringData, v4, a3, NumElements, IntOrFloatBitWidth);
      return _Q0.i16[0];
    }

    llvm::SmallVector<char,40u>::SmallVector(v153, NumElements);
    mlir::detail::unpackBooleanData(RawStringData, v4, v153[0], v153[1]);
    v81 = v153[0];
    if (NumElements < 1)
    {
      goto LABEL_211;
    }

    if (v18)
    {
      if (NumElements < 4 || v153[0] + 1 > a3 && v153[0] < &a3[NumElements])
      {
        v82 = 0;
        goto LABEL_180;
      }

      if (NumElements >= 0x20)
      {
        v82 = NumElements & 0x7FFFFFFFFFFFFFE0;
        v123 = vld1_dup_s8(v153[0]);
        _Q0 = vcvtq_f16_s16(vmovl_s8(v123));
        v124 = (a3 + 16);
        v125 = NumElements & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v124[-2] = _Q0;
          v124[-1] = _Q0;
          *v124 = _Q0;
          v124[1] = _Q0;
          v124 += 4;
          v125 -= 32;
        }

        while (v125);
        if (NumElements == v82)
        {
          goto LABEL_211;
        }

        if ((NumElements & 0x1C) == 0)
        {
LABEL_180:
          v83 = NumElements - v82;
          v84 = &a3[v82];
          do
          {
            _Q0.i8[0] = *v81;
            _Q0.i64[0] = vmovl_s8(*_Q0.f32).u64[0];
            *_Q0.i16 = _Q0.i16[0];
            *v84++ = *_Q0.i16;
            --v83;
          }

          while (v83);
          goto LABEL_211;
        }
      }

      else
      {
        v82 = 0;
      }

      v126 = v82;
      v82 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      *_Q0.f32 = vcvt_f16_s16(vshr_n_s16(vshl_n_s16(vdup_n_s16(*v81), 8uLL), 8uLL));
      v127 = &a3[v126];
      v128 = v126 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        *v127 = _Q0.i64[0];
        v127 += 4;
        v128 += 4;
      }

      while (v128);
      if (NumElements != v82)
      {
        goto LABEL_180;
      }

LABEL_211:
      if (v81 != v154)
      {
        free(v81);
      }

      return _Q0.i16[0];
    }

    if (NumElements < 4 || v153[0] + NumElements > a3 && v153[0] < &a3[NumElements])
    {
      v105 = 0;
      goto LABEL_209;
    }

    if (NumElements >= 0x20)
    {
      v105 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v129 = (v153[0] + 16);
      v130 = (a3 + 16);
      v131 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v132 = *v129[-2].i8;
        v133 = vcvtq_f16_s16(vmovl_s8(*v129));
        v134 = vmovl_high_s8(*v129->i8);
        v130[-2] = vcvtq_f16_s16(vmovl_s8(*v132.i8));
        v130[-1] = vcvtq_f16_s16(vmovl_high_s8(v132));
        _Q0 = vcvtq_f16_s16(v134);
        *v130 = v133;
        v130[1] = _Q0;
        v130 += 4;
        v129 += 4;
        v131 -= 32;
      }

      while (v131);
      if (NumElements == v105)
      {
        goto LABEL_211;
      }

      if ((NumElements & 0x1C) == 0)
      {
LABEL_209:
        v106 = &v81[v105];
        v107 = NumElements - v105;
        v108 = &a3[v105];
        do
        {
          v109 = *v106++;
          *_Q0.i16 = v109;
          *v108++ = v109;
          --v107;
        }

        while (v107);
        goto LABEL_211;
      }
    }

    else
    {
      v105 = 0;
    }

    v135 = v105;
    v105 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v136 = &v81[v135];
    v137 = &a3[v135];
    v138 = v135 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v139 = *v136++;
      _Q0.i32[0] = v139;
      *_Q0.f32 = vcvt_f16_s16(*&vmovl_s8(*_Q0.f32));
      *v137 = _Q0.i64[0];
      v137 += 4;
      v138 += 4;
    }

    while (v138);
    if (NumElements == v105)
    {
      goto LABEL_211;
    }

    goto LABEL_209;
  }

LABEL_171:
  if (NumElements >= 2)
  {
    v100 = 0;
    v80 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v101 = a3 + 1;
    do
    {
      if (v18)
      {
        v102 = 0;
      }

      else
      {
        v102 = v100;
      }

      if (v18)
      {
        v103 = 0;
      }

      else
      {
        v103 = v100 + 1;
      }

      _Q0.i32[0] = *&RawStringData[2 * v102] << 16;
      _S1 = *&RawStringData[2 * v103] << 16;
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *(v101 - 1) = _Q0.i16[0];
      *v101 = _S1;
      v101 += 2;
      v100 += 2;
    }

    while (v100 != v80);
    goto LABEL_289;
  }

  v80 = 0;
  do
  {
    if (v18)
    {
      v147 = 0;
    }

    else
    {
      v147 = v80;
    }

    _Q0.i32[0] = *&RawStringData[2 * v147] << 16;
    __asm { FCVT            H0, S0 }

    a3[v80++] = *_Q0.i16;
LABEL_289:
    ;
  }

  while (NumElements != v80);
  return _Q0.i16[0];
}

void mlir::copyElementsAttrData<__emulated_bf16>(unsigned __int8 *a1, uint64_t a2, _WORD *a3)
{
  v95[5] = *MEMORY[0x1E69E9840];
  v92 = a1;
  v93 = a2;
  Type = mlir::ElementsAttr::getType(&v92);
  if (!Type)
  {
    goto LABEL_14;
  }

  v6 = *Type;
  {
    v16 = Type;
    mlir::Builder::getI32VectorAttr();
    Type = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_14;
  }

  v17 = v10[1];
LABEL_15:
  v91[0] = Type;
  v91[1] = v17;
  isSplat = mlir::ElementsAttr::isSplat(v91);
  v18 = mlir::ElementsAttr::isSplat(&v92);
  RawStringData = v92;
  if (mlir::DenseElementsAttr::classof(v92))
  {
    v20 = RawStringData;
  }

  else
  {
    v20 = 0;
  }

  v94[0] = v20;
  if (v20)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(v94);
    v3 = v21;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v92, v93);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_62;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_72;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

LABEL_78:
      if (NumElements >= 2)
      {
        v46 = 0;
        v38 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v47 = a3 + 1;
        do
        {
          if (v18)
          {
            v48 = 0;
          }

          else
          {
            v48 = v46;
          }

          if (v18)
          {
            v49 = 0;
          }

          else
          {
            v49 = v46 + 1;
          }

          v50 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v49] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v49]) & 0xFF800000) * 0.0039062)));
          *(v47 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v48] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v48]) & 0xFF800000) * 0.0039062)));
          *v47 = v50;
          v47 += 2;
          v46 += 2;
        }

        while (v46 != v38);
        if (NumElements == v38)
        {
          return;
        }
      }

      else
      {
        v38 = 0;
      }

      do
      {
        if (v18)
        {
          v51 = 0;
        }

        else
        {
          v51 = v38;
        }

        a3[v38++] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v51] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v51]) & 0xFF800000) * 0.0039062)));
      }

      while (NumElements != v38);
      return;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

LABEL_98:
      if (NumElements >= 2)
      {
        v53 = 0;
        v45 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v54 = a3 + 1;
        do
        {
          if (v18)
          {
            v55 = 0;
          }

          else
          {
            v55 = v53;
          }

          if (v18)
          {
            v56 = 0;
          }

          else
          {
            v56 = v53 + 1;
          }

          v57 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v56] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v56]) & 0x7F800000) * 0.0039062)));
          *(v54 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v55] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v55]) & 0x7F800000) * 0.0039062)));
          *v54 = v57;
          v54 += 2;
          v53 += 2;
        }

        while (v53 != v45);
        if (NumElements == v45)
        {
          return;
        }
      }

      else
      {
        v45 = 0;
      }

      do
      {
        if (v18)
        {
          v58 = 0;
        }

        else
        {
          v58 = v45;
        }

        a3[v45++] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v58] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v58]) & 0x7F800000) * 0.0039062)));
      }

      while (NumElements != v45);
      return;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

LABEL_118:
      if (NumElements >= 2)
      {
        v68 = 0;
        v52 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v69 = a3 + 1;
        do
        {
          if (v18)
          {
            v70 = 0;
          }

          else
          {
            v70 = v68;
          }

          if (v18)
          {
            v71 = 0;
          }

          else
          {
            v71 = v68 + 1;
          }

          v72 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v71] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v71]) & 0xFF800000) * 0.0039062)));
          *(v69 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v70] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v70]) & 0xFF800000) * 0.0039062)));
          *v69 = v72;
          v69 += 2;
          v68 += 2;
        }

        while (v68 != v52);
        if (NumElements == v52)
        {
          return;
        }
      }

      else
      {
        v52 = 0;
      }

      do
      {
        if (v18)
        {
          v73 = 0;
        }

        else
        {
          v73 = v52;
        }

        a3[v52++] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[8 * v73] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[8 * v73]) & 0xFF800000) * 0.0039062)));
      }

      while (NumElements != v52);
      return;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_138;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_162;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_172;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
LABEL_188:
      if (mlir::Type::isInteger(&isSplat, 1))
      {
        llvm::SmallVector<char,40u>::SmallVector(v94, NumElements);
        mlir::detail::unpackBooleanData(RawStringData, v3, v94[0], v94[1]);
        v86 = v94[0];
        if (NumElements >= 1)
        {
          for (i = 0; i != NumElements; ++i)
          {
            if (v18)
            {
              v88 = 0;
            }

            else
            {
              v88 = i;
            }

            v85.i8[0] = v86[v88];
            v85 = vmovl_s16(*&vmovl_s8(v85)).u64[0];
            *v85.i32 = v85.i32[0] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(v85.i32[0]) & 0xFF800000) * 0.0039062);
            a3[i] = v85.i16[1];
          }
        }

        if (v86 != v95)
        {
          free(v86);
        }
      }

      else
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<__emulated_bf16>(RawStringData, v3, a3, NumElements, IntOrFloatBitWidth);
      }

      return;
    }

    if (NumElements < 1)
    {
      return;
    }

LABEL_182:
    for (j = 0; j != NumElements; ++j)
    {
      if (v18)
      {
        v82 = 0;
      }

      else
      {
        v82 = j;
      }

      LODWORD(v83) = *&RawStringData[2 * v82] << 16;
      v84 = v83 + (COERCE_FLOAT(LODWORD(v83) & 0xFF800000) * 0.0039062);
      a3[j] = HIWORD(v84);
    }

    return;
  }

  if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = RawStringData;
  }

  else
  {
    v24 = 0;
  }

  v94[0] = v24;
  if (v24)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(v94);
    v3 = v25;
    if ((v18 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_29:
    for (k = 0; k != NumElements; ++k)
    {
      if (v18)
      {
        v27 = 0;
      }

      else
      {
        v27 = k;
      }

      LOBYTE(v22) = RawStringData[v27];
      v22 = LODWORD(v22) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(LODWORD(v22)) & 0x7F800000) * 0.0039062);
      a3[k] = HIWORD(v22);
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_39:
    for (m = 0; m != NumElements; ++m)
    {
      if (v18)
      {
        v30 = 0;
      }

      else
      {
        v30 = m;
      }

      v28.i8[0] = RawStringData[v30];
      v28 = vmovl_s16(*&vmovl_s8(v28)).u64[0];
      *v28.i32 = v28.i32[0] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(v28.i32[0]) & 0xFF800000) * 0.0039062);
      a3[m] = v28.i16[1];
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_52:
    for (n = 0; n != NumElements; ++n)
    {
      if (v18)
      {
        v33 = 0;
      }

      else
      {
        v33 = n;
      }

      LOWORD(v31) = *&RawStringData[2 * v33];
      v31 = LODWORD(v31) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(LODWORD(v31)) & 0x7F800000) * 0.0039062);
      a3[n] = HIWORD(v31);
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_62:
    for (ii = 0; ii != NumElements; ++ii)
    {
      if (v18)
      {
        v36 = 0;
      }

      else
      {
        v36 = ii;
      }

      v34.i16[0] = *&RawStringData[2 * v36];
      v34 = vmovl_s16(v34).u64[0];
      *v34.i32 = v34.i32[0] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(v34.i32[0]) & 0xFF800000) * 0.0039062);
      a3[ii] = v34.i16[1];
    }

    return;
  }

  if (!mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    if (mlir::Type::isInteger(&isSplat, 32))
    {
      NumElements = 1;
      goto LABEL_78;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      NumElements = 1;
      goto LABEL_98;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      NumElements = 1;
      goto LABEL_118;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_138:
      for (jj = 0; jj != NumElements; ++jj)
      {
        if (v18)
        {
          v60 = 0;
        }

        else
        {
          v60 = jj;
        }

        _H0 = *&RawStringData[2 * v60];
        __asm { FCVT            S0, H0 }

        v67 = _S0 + (COERCE_FLOAT(LODWORD(_S0) & 0xFF800000) * 0.0039062);
        a3[jj] = HIWORD(v67);
      }

      return;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
LABEL_162:
      for (kk = 0; kk != NumElements; ++kk)
      {
        if (v18)
        {
          v75 = 0;
        }

        else
        {
          v75 = kk;
        }

        v76 = *&RawStringData[4 * v75] + (COERCE_FLOAT(*&RawStringData[4 * v75] & 0xFF800000) * 0.0039062);
        a3[kk] = HIWORD(v76);
      }

      return;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      NumElements = 1;
LABEL_172:
      for (mm = 0; mm != NumElements; ++mm)
      {
        if (v18)
        {
          v78 = 0;
        }

        else
        {
          v78 = mm;
        }

        v79 = *&RawStringData[8 * v78];
        v80 = v79 + (COERCE_FLOAT(LODWORD(v79) & 0xFF800000) * 0.0039062);
        a3[mm] = HIWORD(v80);
      }

      return;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_188;
    }

    goto LABEL_182;
  }

  NumElements = 1;
LABEL_72:
  if (NumElements < 2)
  {
    for (nn = 0; nn != NumElements; ++nn)
    {
LABEL_89:
      if (v18)
      {
        v44 = 0;
      }

      else
      {
        v44 = nn;
      }

      a3[nn] = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v44] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v44]) & 0x7F800000) * 0.0039062)));
    }

    return;
  }

  v39 = 0;
  nn = NumElements & 0x7FFFFFFFFFFFFFFELL;
  v40 = a3 + 1;
  do
  {
    if (v18)
    {
      v41 = 0;
    }

    else
    {
      v41 = v39;
    }

    if (v18)
    {
      v42 = 0;
    }

    else
    {
      v42 = v39 + 1;
    }

    v43 = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v42] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v42]) & 0x7F800000) * 0.0039062)));
    *(v40 - 1) = HIWORD(COERCE_UNSIGNED_INT(*&RawStringData[4 * v41] + (COERCE_FLOAT(COERCE_UNSIGNED_INT(*&RawStringData[4 * v41]) & 0x7F800000) * 0.0039062)));
    *v40 = v43;
    v40 += 2;
    v39 += 2;
  }

  while (v39 != nn);
  if (NumElements != nn)
  {
    goto LABEL_89;
  }
}