llvm::ConstantExpr *llvm::ConstantFoldUnaryInstruction(llvm *this, llvm::Constant *a2, llvm::Constant *a3, BOOL a4)
{
  v4 = a2;
  v36 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 8);
  if ((*(*a2 + 8) & 0xFE) != 0x12 || v7 == 19)
  {
    v10 = *(a2 + 16);
    v9 = this == 12;
    if (this == 12 && (v10 - 11) < 2)
    {
      return v4;
    }
  }

  else
  {
    v9 = this == 12;
    v10 = *(a2 + 16);
  }

  if (v10 == 17)
  {
    if (v9)
    {
      v11 = *v6;
      llvm::APFloat::Storage::Storage(&v34, (a2 + 32));
      llvm::APFloat::changeSign(v33);
      if (v34 == &llvm::semPPCDoubleDouble)
      {
        v31 = &llvm::semPPCDoubleDouble;
        v32[0] = v35;
        v34 = &llvm::semBogus;
        v35 = 0;
      }

      else
      {
        v31 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v31, &v34);
      }

      v4 = llvm::ConstantFP::get(v11, &v30, v12, v13);
      llvm::APFloat::Storage::~Storage(&v31);
      llvm::APFloat::Storage::~Storage(&v34);
      return v4;
    }

    return 0;
  }

  if (v7 != 18)
  {
    return 0;
  }

  v14 = **v6;
  SplatValue = llvm::Constant::getSplatValue(a2, 0, a3, a4);
  if (!SplatValue || (v17 = llvm::ConstantFoldUnaryInstruction(this, SplatValue, v16)) == 0)
  {
    v30 = v32;
    v31 = 0x1000000000;
    v21 = *(v6 + 8);
    if (v21)
    {
      v22 = 0;
      while (1)
      {
        v23 = llvm::ConstantInt::get((v14 + 1992), v22, 0);
        Element = llvm::ConstantExpr::getExtractElement(v4, v23, 0, v24);
        v27 = llvm::ConstantFoldUnaryInstruction(this, Element, v26);
        if (!v27)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<void *,true>::push_back(&v30, v27);
        v22 = (v22 + 1);
        if (v21 == v22)
        {
          v28 = v30;
          v29 = v31;
          goto LABEL_27;
        }
      }

      v4 = 0;
    }

    else
    {
      v29 = 0;
      v28 = v32;
LABEL_27:
      v4 = llvm::ConstantVector::get(v28, v29, v16);
    }

    if (v30 != v32)
    {
      free(v30);
    }

    return v4;
  }

  v18 = v17;
  v19 = *(v6 + 8) | ((*(v6 + 8) == 19) << 32);

  return llvm::ConstantVector::getSplat(v19, v18, v16);
}

llvm::ConstantFP **llvm::ConstantFoldBinaryInstruction(llvm *this, llvm::ConstantFP **a2, llvm::Constant *a3, llvm::Constant *a4, BOOL a5)
{
  v124[16] = *MEMORY[0x277D85DE8];
  BinOpIdentity = llvm::ConstantExpr::getBinOpIdentity(this, *a2, 0, 0);
  if (BinOpIdentity)
  {
    if (BinOpIdentity == a2)
    {
      return a3;
    }

    if (BinOpIdentity == a3)
    {
      return a2;
    }
  }

  v14 = *(a2 + 16);
  if (v14 == 12 || (v15 = *(a3 + 16), v15 == 12))
  {
    v16 = *a2;
LABEL_7:

    return llvm::PoisonValue::get(v16, v9);
  }

  v18 = *a2;
  if ((*(*a2 + 2) & 0xFE) != 0x12 || *(*a2 + 2) == 19)
  {
    v20 = v14 - 11;
    v21 = v15 - 11;
    if ((v14 - 11) < 2u || (v15 - 11) <= 1u)
    {
      switch(this)
      {
        case 13:
        case 15:
          goto LABEL_127;
        case 14:
        case 18:
        case 21:
        case 24:
          goto LABEL_20;
        case 16:
          if (llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_neg_zero_fp,llvm::ConstantFP>::match<llvm::Constant>(a2, v9, v10, v11) && *(a3 + 16) - 11 < 2)
          {
            return a3;
          }

LABEL_20:
          if (*(a2 + 16) - 11 <= 1 && *(a3 + 16) - 11 < 2)
          {
            return a2;
          }

          v23 = *a2;

          return llvm::ConstantFP::getNaN(v23, 0, 0);
        case 17:
          if ((v21 | v20) < 2u)
          {
            return a2;
          }

          v121 = 0;
          __src = &v121;
          LOBYTE(v123) = 0;
          if ((llvm::PatternMatch::apint_match::match<llvm::Constant>(&__src, a2, v10, v11) & 1) == 0)
          {
            v119 = &v121;
            v120 = 0;
            if ((llvm::PatternMatch::apint_match::match<llvm::Constant>(&v119, a3, v33, v34) & 1) == 0)
            {
              return llvm::Constant::getNullValue(*a2, v9, v33, v34);
            }
          }

          v54 = v121;
          if (*(v121 + 8) >= 0x41u)
          {
            v54 = *v121;
          }

          if ((*v54 & 1) == 0)
          {
            return llvm::Constant::getNullValue(*a2, v9, v33, v34);
          }

          return llvm::UndefValue::get(*a2, v9);
        case 19:
        case 20:
          if (llvm::PatternMatch::undef_match::check(a3, v9) || llvm::PatternMatch::is_zero::match<llvm::Constant>(&__src + 1, a3))
          {
            goto LABEL_91;
          }

          if (llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_one,llvm::ConstantInt>::match<llvm::Constant>(&__src, a3, v38, v39))
          {
            return a2;
          }

          return llvm::Constant::getNullValue(*a2, v9, v33, v34);
        case 22:
        case 23:
          if (!llvm::PatternMatch::undef_match::check(a3, v9) && !llvm::PatternMatch::is_zero::match<llvm::Constant>(&__src + 1, a3))
          {
            return llvm::Constant::getNullValue(*a2, v9, v33, v34);
          }

LABEL_91:
          v40 = *a3;
          return llvm::PoisonValue::get(v40, v9);
        case 25:
        case 26:
        case 27:
          if ((v15 - 11) <= 1u)
          {
            goto LABEL_81;
          }

          if (llvm::PatternMatch::is_zero::match<llvm::Constant>(&__src, a3))
          {
            return a2;
          }

          return llvm::Constant::getNullValue(*a2, v9, v33, v34);
        case 28:
          NullValue = a2;
          if ((v21 | v20) < 2u)
          {
            return NullValue;
          }

          goto LABEL_77;
        case 29:
          NullValue = a2;
          if ((v21 | v20) < 2u)
          {
            return NullValue;
          }

          return llvm::Constant::getAllOnesValue(v18, v9);
        case 30:
          if ((v21 | v20) <= 1u)
          {
            goto LABEL_77;
          }

LABEL_127:

          return llvm::UndefValue::get(v18, v9);
        default:
          break;
      }
    }
  }

  if (v15 != 16)
  {
    if (v14 != 16 || this > 0x1E || ((1 << this) & 0x70066000) == 0)
    {
      goto LABEL_158;
    }

    v26 = this;
    v27 = a3;
    v28 = a2;
    goto LABEL_37;
  }

  if (this <= 21)
  {
    if (this > 18)
    {
      if ((this - 19) >= 2)
      {
        goto LABEL_158;
      }

      v24 = *(a3 + 8);
      if (v24 > 0x40)
      {
        v35 = llvm::APInt::countLeadingZerosSlowCase((a3 + 24));
        if (v35 != v24 - 1)
        {
LABEL_80:
          if (v35 == v24)
          {
            goto LABEL_81;
          }

LABEL_158:
          v47 = *(a2 + 16);
LABEL_159:
          if (v47 != 17)
          {
            if (v47 == 16)
            {
              if (*(a3 + 16) == 16)
              {
                v63 = (a3 + 24);
                switch(this)
                {
                  case 13:
                    v64 = **a2;
                    v118 = *(a2 + 8);
                    if (v118 > 0x40)
                    {
                      operator new[]();
                    }

                    v117 = a2[3];
                    llvm::APInt::operator+=(&v117, v63);
                    LODWORD(v123) = v118;
                    __src = v117;
                    v118 = 0;
                    NullValue = llvm::ConstantInt::get(v64, &__src, v111, v112);
                    if (v123 >= 0x41 && __src)
                    {
                      MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
                    }

                    if (v118 < 0x41 || !v117)
                    {
                      return NullValue;
                    }

                    goto LABEL_285;
                  case 15:
                    v101 = **a2;
                    v116 = *(a2 + 8);
                    if (v116 > 0x40)
                    {
                      operator new[]();
                    }

                    v115 = a2[3];
                    llvm::APInt::operator-=(&v115, v63);
                    LODWORD(v123) = v116;
                    __src = v115;
                    v116 = 0;
                    NullValue = llvm::ConstantInt::get(v101, &__src, v113, v114);
                    if (v123 >= 0x41 && __src)
                    {
                      MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
                    }

                    if (v116 >= 0x41 && v115)
                    {
                      goto LABEL_285;
                    }

                    return NullValue;
                  case 17:
                    v98 = **a2;
                    llvm::APInt::operator*((a2 + 3), v63, &__src);
                    goto LABEL_283;
                  case 19:
                    v98 = **a2;
                    llvm::APInt::udiv(&__src, (a2 + 3), v63);
                    goto LABEL_283;
                  case 20:
                    if (llvm::APInt::isAllOnes((a3 + 24)) && llvm::APInt::isMinSignedValue((a2 + 3)))
                    {
                      goto LABEL_276;
                    }

                    v98 = **a2;
                    llvm::APInt::sdiv((a2 + 3), v63, &__src);
                    goto LABEL_283;
                  case 22:
                    v98 = **a2;
                    llvm::APInt::urem((a2 + 3), v63, &__src);
                    goto LABEL_283;
                  case 23:
                    if (llvm::APInt::isAllOnes((a3 + 24)) && llvm::APInt::isMinSignedValue((a2 + 3)))
                    {
                      goto LABEL_276;
                    }

                    v98 = **a2;
                    llvm::APInt::srem((a2 + 3), v63, &__src);
                    goto LABEL_283;
                  case 25:
                    v102 = *(a2 + 8);
                    v103 = *(a3 + 8);
                    v104 = v63;
                    if (v103 < 0x41)
                    {
                      goto LABEL_264;
                    }

                    if (v103 - llvm::APInt::countLeadingZerosSlowCase(v63) >= 0x41)
                    {
                      goto LABEL_276;
                    }

                    v104 = *v63;
LABEL_264:
                    v40 = *a2;
                    if (*v104 >= v102)
                    {
                      return llvm::PoisonValue::get(v40, v9);
                    }

                    v98 = *v40;
                    llvm::APInt::shl(a2 + 3, v63, &__src);
                    goto LABEL_283;
                  case 26:
                    v108 = *(a2 + 8);
                    v109 = *(a3 + 8);
                    v110 = v63;
                    if (v109 < 0x41)
                    {
                      goto LABEL_274;
                    }

                    if (v109 - llvm::APInt::countLeadingZerosSlowCase(v63) >= 0x41)
                    {
                      goto LABEL_276;
                    }

                    v110 = *v63;
LABEL_274:
                    v40 = *a2;
                    if (*v110 >= v108)
                    {
                      return llvm::PoisonValue::get(v40, v9);
                    }

                    v98 = *v40;
                    llvm::APInt::lshr(a2 + 3, v63, &__src);
                    goto LABEL_283;
                  case 27:
                    v105 = *(a2 + 8);
                    v106 = *(a3 + 8);
                    v107 = v63;
                    if (v106 < 0x41)
                    {
                      goto LABEL_269;
                    }

                    if (v106 - llvm::APInt::countLeadingZerosSlowCase(v63) >= 0x41)
                    {
LABEL_276:
                      v40 = *a2;
                      return llvm::PoisonValue::get(v40, v9);
                    }

                    v107 = *v63;
LABEL_269:
                    v40 = *a2;
                    if (*v107 >= v105)
                    {
                      return llvm::PoisonValue::get(v40, v9);
                    }

                    v98 = *v40;
                    llvm::APInt::ashr(a2 + 3, v63, &__src);
LABEL_283:
                    NullValue = llvm::ConstantInt::get(v98, &__src, v10, v11);
                    if (v123 >= 0x41 && __src)
                    {
LABEL_285:
                      MEMORY[0x277C69E10]();
                    }

                    break;
                  case 28:
                    v98 = **a2;
                    v99 = *(a2 + 8);
                    if (v99 > 0x40)
                    {
                      operator new[]();
                    }

                    v100 = (*v63 & a2[3]);
                    goto LABEL_282;
                  case 29:
                    v98 = **a2;
                    v99 = *(a2 + 8);
                    if (v99 > 0x40)
                    {
                      operator new[]();
                    }

                    v100 = (*v63 | a2[3]);
                    goto LABEL_282;
                  case 30:
                    v98 = **a2;
                    v99 = *(a2 + 8);
                    if (v99 > 0x40)
                    {
                      operator new[]();
                    }

                    v100 = (*v63 ^ a2[3]);
LABEL_282:
                    LODWORD(v123) = v99;
                    __src = v100;
                    goto LABEL_283;
                  default:
                    goto LABEL_207;
                }

                return NullValue;
              }

              if (this <= 0x1B && ((1 << this) & 0xED80000) != 0)
              {
                v71 = *(a2 + 8);
                if (v71 > 0x40)
                {
                  if (llvm::APInt::countLeadingZerosSlowCase((a2 + 3)) == v71)
                  {
                    return a2;
                  }
                }

                else if (!a2[3])
                {
                  return a2;
                }
              }
            }

            else
            {
              v67 = *a2;
              if (*a2 && (*(v67 + 2) & 0xFE) == 0x12)
              {
                SplatValue = llvm::Constant::getSplatValue(a3, 0, v10, v11);
                if (SplatValue)
                {
                  v70 = SplatValue;
                  if (this <= 0x17 && ((1 << this) & 0xD80000) != 0 && llvm::Constant::isNullValue(SplatValue))
                  {
                    v40 = v67;
                    return llvm::PoisonValue::get(v40, v9);
                  }

                  v72 = llvm::Constant::getSplatValue(a2, 0, v69, v11);
                  if (v72)
                  {
                    if (((1 << this) & 0x1FD4000) != 0)
                    {
                      v73 = llvm::ConstantFoldBinaryInstruction(this, v72, v70, v11, v12);
                    }

                    else
                    {
                      v73 = llvm::ConstantExpr::get(this, v72, v70, 0, 0, v13);
                    }

                    if (v73)
                    {
                      return llvm::ConstantVector::getSplat(*(v67 + 8) | ((*(v67 + 8) == 19) << 32), v73, v74);
                    }

                    return 0;
                  }
                }

                if (*(v67 + 8) == 18)
                {
                  __src = v124;
                  v123 = 0x1000000000;
                  v75 = *(v67 + 8);
                  if (v75)
                  {
                    v76 = 0;
                    v77 = **v67;
                    v78 = 1 << this;
                    while (1)
                    {
                      v79 = llvm::ConstantInt::get((v77 + 1992), v76, 0);
                      Element = llvm::ConstantExpr::getExtractElement(a2, v79, 0, v80);
                      v83 = llvm::ConstantExpr::getExtractElement(a3, v79, 0, v82);
                      v87 = v83;
                      if ((v78 & 0x7E02A000) != 0)
                      {
                        v88 = llvm::ConstantExpr::get(this, Element, v83, 0, 0, v86);
                      }

                      else
                      {
                        if ((v78 & 0x1254000) == 0 && llvm::Constant::isNullValue(v83))
                        {
                          NullValue = llvm::PoisonValue::get(v67, v89);
                          goto LABEL_242;
                        }

                        v88 = llvm::ConstantFoldBinaryInstruction(this, Element, v87, v84, v85);
                      }

                      if (!v88)
                      {
                        NullValue = 0;
                        goto LABEL_242;
                      }

                      llvm::SmallVectorTemplateBase<void *,true>::push_back(&__src, v88);
                      v76 = (v76 + 1);
                      if (v75 == v76)
                      {
                        v90 = __src;
                        v91 = v123;
                        goto LABEL_240;
                      }
                    }
                  }

                  v91 = 0;
                  v90 = v124;
LABEL_240:
                  NullValue = llvm::ConstantVector::get(v90, v91, v69);
LABEL_242:
                  if (__src != v124)
                  {
                    free(__src);
                  }

                  return NullValue;
                }
              }
            }

LABEL_207:
            if (*(a2 + 16) == 5)
            {
              if (this <= 0x1E && ((1 << this) & 0x70022000) != 0 && *(a2 + 9) == this)
              {
                v92 = llvm::ConstantExpr::get(this, a2[-4 * (*(a2 + 5) & 0x7FFFFFF) + 4], a3, 0, 0, v13);
                v93 = v92;
                if (*(v92 + 16) != 5 || *(v92 + 9) != this)
                {
                  v94 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
                  v95 = this;
                  return llvm::ConstantExpr::get(v95, v94, v93, 0, 0, v13);
                }
              }
            }

            else if (*(a3 + 16) == 5 && this <= 0x1E && ((1 << this) & 0x70066000) != 0)
            {
              return llvm::ConstantFoldBinaryInstruction(this, a3, a2, v11, v12);
            }

            if (*(*a2 + 2) == 269)
            {
              if (this <= 18)
              {
                if (this == 13 || this == 15)
                {
                  v95 = 30;
                }

                else
                {
                  NullValue = 0;
                  if (this != 17)
                  {
                    return NullValue;
                  }

                  v95 = 28;
                }

                v94 = a2;
                v93 = a3;
                return llvm::ConstantExpr::get(v95, v94, v93, 0, 0, v13);
              }

              if (this <= 0x1B)
              {
                if (((1 << this) & 0xE000000) == 0)
                {
                  NullValue = a2;
                  if (((1 << this) & 0x180000) == 0)
                  {
                    NullValue = 0;
                    if (((1 << this) & 0xC00000) != 0)
                    {
                      v96 = **a2;
                      v97 = *v96;
                      NullValue = *(*v96 + 1600);
                      if (!NullValue)
                      {
                        NullValue = llvm::ConstantInt::get(v97 + 1920, 0, 0);
                        *(v97 + 1600) = NullValue;
                      }
                    }
                  }

                  return NullValue;
                }

                return a2;
              }
            }

            return 0;
          }

          if (*(a3 + 16) != 17)
          {
            goto LABEL_207;
          }

          llvm::APFloat::Storage::Storage(&v123, (a2 + 4));
          if (this <= 17)
          {
            if (this == 14)
            {
              llvm::APFloat::add(&__src, a3 + 24, 1);
              goto LABEL_205;
            }

            if (this == 16)
            {
              llvm::APFloat::subtract(&__src, a3 + 24, 1);
              goto LABEL_205;
            }
          }

          else
          {
            switch(this)
            {
              case 0x12:
                llvm::APFloat::multiply(&__src, a3 + 24, 1);
                goto LABEL_205;
              case 0x15:
                llvm::APFloat::divide(&__src, a3 + 24, 1);
                goto LABEL_205;
              case 0x18:
                llvm::APFloat::mod(&__src, (a3 + 24));
LABEL_205:
                NullValue = llvm::ConstantFP::get(**a2, &__src, v65, v66);
                llvm::APFloat::Storage::~Storage(&v123);
                return NullValue;
            }
          }

          llvm::APFloat::Storage::~Storage(&v123);
          goto LABEL_207;
        }

        return a2;
      }

      v30 = *(a3 + 3);
      if (!v30)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (this == 13 || this == 15)
      {
        v32 = *(a3 + 8);
        if (v32 > 0x40)
        {
          if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) != v32)
          {
            goto LABEL_158;
          }
        }

        else if (*(a3 + 3))
        {
          goto LABEL_158;
        }

        return a2;
      }

      if (this != 17)
      {
        goto LABEL_158;
      }

      v29 = *(a3 + 8);
      if (v29 > 0x40)
      {
        v41 = llvm::APInt::countLeadingZerosSlowCase((a3 + 24));
        if (v41 != v29)
        {
          if (v41 != v29 - 1)
          {
            goto LABEL_158;
          }

          return a2;
        }

        return a3;
      }

      v30 = *(a3 + 3);
      if (!v30)
      {
        return a3;
      }
    }

    if (v30 != 1)
    {
      goto LABEL_158;
    }

    return a2;
  }

  if (this <= 27)
  {
    if ((this - 22) < 2)
    {
      v24 = *(a3 + 8);
      if (v24 <= 0x40)
      {
        v25 = *(a3 + 3);
        if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_158;
          }

          goto LABEL_76;
        }

LABEL_81:
        v16 = *a3;
        goto LABEL_7;
      }

      v35 = llvm::APInt::countLeadingZerosSlowCase((a3 + 24));
      if (v35 == v24 - 1)
      {
LABEL_76:
        v18 = *a3;
LABEL_77:

        return llvm::Constant::getNullValue(v18, v9, v10, v11);
      }

      goto LABEL_80;
    }

    if (this != 27 || v14 != 5 || *(a2 + 9) != 39)
    {
      goto LABEL_158;
    }

    v26 = 26;
    v27 = a2;
    v28 = a3;
LABEL_37:

    return llvm::ConstantExpr::get(v26, v27, v28, 0, 0, v13);
  }

  if (this == 28)
  {
    v37 = *(a3 + 8);
    if (v37 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) == v37)
      {
        return a3;
      }
    }

    else if (!*(a3 + 3))
    {
      return a3;
    }

    if (llvm::APInt::isAllOnes((a3 + 24)))
    {
      return a2;
    }

    v47 = *(a2 + 16);
    if (v47 != 5)
    {
      goto LABEL_159;
    }

    v48 = *(a2 + 9);
    if (v48 == 39)
    {
      v49 = (*(*a3 + 8) >> 8);
      PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*a2[-4 * (*(a2 + 5) & 0x7FFFFFF)]);
      if (v50)
      {
      }

      llvm::APInt::getLowBitsSet(v49, PrimitiveSizeInBits, &__src);
      if (v123 > 0x40)
      {
        operator new[]();
      }

      if ((__src & ~*(a3 + 3)) == 0)
      {
        return a2;
      }

      v48 = *(a2 + 9);
    }

    if (v48 != 47)
    {
      goto LABEL_158;
    }

    v56 = a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
    v57 = *(v56 + 16);
    if (v57 > 3)
    {
      goto LABEL_158;
    }

    v58 = *(v56 + 5);
    if (v58)
    {
      PointerAlignment = llvm::Value::getPointerAlignment(a2[-4 * (*(a2 + 5) & 0x7FFFFFF)], (v58 + 256));
      if (!*(v56 + 16) && (*(v58 + 276) & 0x100) == 0)
      {
        PointerAlignment = 2;
        goto LABEL_146;
      }
    }

    else
    {
      if (v57 != 3)
      {
        goto LABEL_158;
      }

      v60 = (*(v56 + 8) >> 17) & 0x3F;
      if (!v60)
      {
        goto LABEL_158;
      }

      PointerAlignment = v60 - 1;
    }

    if (!PointerAlignment)
    {
      goto LABEL_158;
    }

LABEL_146:
    if (*(*a3 + 8) >> 8 >= PointerAlignment)
    {
      v61 = PointerAlignment;
    }

    else
    {
      v61 = *(*a3 + 8) >> 8;
    }

    llvm::APInt::getLowBitsSet((*(*a3 + 8) >> 8), v61, &__src);
    if (*(a3 + 8) > 0x40u)
    {
      operator new[]();
    }

    if ((*(a3 + 3) & ~__src) != 0)
    {
      v62 = 0;
      NullValue = a2;
    }

    else
    {
      NullValue = llvm::Constant::getNullValue(*a3, v9, v10, v11);
      v62 = 1;
    }

    if (v123 >= 0x41 && __src)
    {
      MEMORY[0x277C69E10](__src, 0x1000C8000313F17);
    }

    if (v62)
    {
      return NullValue;
    }

    goto LABEL_158;
  }

  if (this == 29)
  {
    v36 = *(a3 + 8);
    if (v36 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) == v36)
      {
        return a2;
      }
    }

    else if (!*(a3 + 3))
    {
      return a2;
    }

    if (!llvm::APInt::isAllOnes((a3 + 24)))
    {
      goto LABEL_158;
    }

    return a3;
  }

  if (this != 30)
  {
    goto LABEL_158;
  }

  v31 = *(a3 + 8);
  if (v31 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((a3 + 24)) != v31)
    {
      goto LABEL_99;
    }

    return a2;
  }

  if (!*(a3 + 3))
  {
    return a2;
  }

LABEL_99:
  if (v14 != 5 || *(a2 + 9) - 53 > 1)
  {
    goto LABEL_158;
  }

  InversePredicate = llvm::CmpInst::getInversePredicate(*(a2 + 12));
  v44 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  v45 = *v44;
  v46 = v44[4];

  return llvm::ConstantExpr::getCompare(InversePredicate, v45, v46, 0, v43);
}

llvm::ConstantFP **llvm::ConstantFoldCompareInstruction(uint64_t a1, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  FoldedCast = a2;
  v6 = a1;
  v72[4] = *MEMORY[0x277D85DE8];
  v7 = (***a2 + 1920);
  if (*a2)
  {
    v8 = (*(*a2 + 8) & 0xFE) == 18;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    llvm::VectorType::get(v7, (*(*a2 + 32) | (((~*(*a2 + 8) & 0x13) == 0) << 32)), a3);
    v7 = v9;
  }

  if (v6 == 15)
  {
LABEL_40:

    return llvm::Constant::getAllOnesValue(v7, a2);
  }

  if (!v6)
  {
LABEL_9:

    return llvm::Constant::getNullValue(v7, a2, a3, a4);
  }

  v11 = *(FoldedCast + 16);
  if (v11 == 12 || (v12 = *(a3 + 16), v12 == 12))
  {

    return llvm::PoisonValue::get(v7, a2);
  }

  if ((v11 - 11) >= 2 && (v12 - 11) > 1)
  {
    v13 = constantFoldCompareGlobalToNull(v6, FoldedCast, a3);
    if (v13)
    {
      return v13;
    }

    v13 = constantFoldCompareGlobalToNull(v6, a3, FoldedCast);
    if (v13)
    {
      return v13;
    }

    if (llvm::Constant::isNullValue(a3))
    {
      if (v6 == 36)
      {
        goto LABEL_9;
      }

      if (v6 == 35)
      {
        goto LABEL_40;
      }
    }

    v19 = *FoldedCast;
    if (*(*FoldedCast + 8) == 269)
    {
      if (v6 == 33)
      {
        v21 = FoldedCast;
        goto LABEL_77;
      }

      if (v6 == 32)
      {
        if (*(a3 + 16) == 16)
        {
          Not = llvm::ConstantExpr::getNot(a3, a2);
          v21 = FoldedCast;
LABEL_78:

          return llvm::ConstantExpr::get(0x1E, v21, Not, 0, 0, v18);
        }

        v21 = llvm::ConstantExpr::getNot(FoldedCast, a2);
LABEL_77:
        Not = a3;
        goto LABEL_78;
      }
    }

    v22 = *(FoldedCast + 16);
    if (v22 == 17)
    {
      if (*(a3 + 16) == 17)
      {
        v23 = llvm::FCmpInst::compare((FoldedCast + 24), (a3 + 24), v6);
        goto LABEL_54;
      }
    }

    else if (v22 == 16 && *(a3 + 16) == 16)
    {
      v23 = llvm::ICmpInst::compare((FoldedCast + 24), (a3 + 24), v6);
LABEL_54:
      v16 = v23;
      goto LABEL_34;
    }

    if ((*(*FoldedCast + 8) & 0xFE) == 0x12)
    {
      SplatValue = llvm::Constant::getSplatValue(FoldedCast, 0, a3, a4);
      if (SplatValue)
      {
        v27 = SplatValue;
        v28 = llvm::Constant::getSplatValue(a3, 0, v25, v26);
        if (v28)
        {
          v30 = *(v19 + 8);
          v31 = *(v19 + 8) == 19;
          Compare = llvm::ConstantExpr::getCompare(v6, v27, v28, 0, v29);

          return llvm::ConstantVector::getSplat(v30 | (v31 << 32), Compare, v33);
        }
      }

      if (*(v19 + 8) != 19)
      {
        v70 = v72;
        v71 = 0x400000000;
        v39 = *(v19 + 8);
        if (v39)
        {
          v40 = 0;
          v41 = ***FoldedCast;
          do
          {
            v42 = llvm::ConstantInt::get((v41 + 1992), v40, 0);
            Element = llvm::ConstantExpr::getExtractElement(FoldedCast, v42, 0, v43);
            v45 = llvm::ConstantInt::get((v41 + 1992), v40, 0);
            v47 = llvm::ConstantExpr::getExtractElement(a3, v45, 0, v46);
            v49 = llvm::ConstantExpr::getCompare(v6, Element, v47, 0, v48);
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v70, v49);
            v40 = (v40 + 1);
          }

          while (v39 != v40);
          v50 = v70;
          v51 = v71;
        }

        else
        {
          v51 = 0;
          v50 = v72;
        }

        v14 = llvm::ConstantVector::get(v50, v51, v25);
        if (v70 != v72)
        {
          free(v70);
        }

        return v14;
      }

      return 0;
    }

    if ((*(*FoldedCast + 8) < 4u || *(*FoldedCast + 8) == 5 || (*(*FoldedCast + 8) & 0xFD) == 4) && (v22 == 5 || *(a3 + 16) == 5))
    {
      v34 = evaluateFCmpRelation(FoldedCast, a3, a3, a4, v17);
      v14 = 0;
      if (v34 > 3)
      {
        if (v34 <= 0x10)
        {
          if (((1 << v34) & 0x1FD80) != 0)
          {
            return v14;
          }

          if (v34 == 6)
          {
            if ((v6 & 0xFFFFFFF7) != 1)
            {
              if ((v6 & 0xFFFFFFF7) != 6)
              {
                return 0;
              }

              goto LABEL_132;
            }

LABEL_155:
            v16 = 0;
            goto LABEL_34;
          }

          if (v34 == 9)
          {
            if (v6 != 6)
            {
              if (v6 != 9)
              {
                return 0;
              }

              goto LABEL_132;
            }

            goto LABEL_155;
          }
        }

        if (v34 != 4)
        {
          if ((v6 & 0xFFFFFFF7) != 2)
          {
            if ((v6 & 0xFFFFFFF7) != 4)
            {
              return 0;
            }

            goto LABEL_132;
          }

          goto LABEL_155;
        }

        v55 = v6 - 4;
        if (v6 - 4 >= 0xB)
        {
          goto LABEL_155;
        }

        v56 = &unk_2750C8B08;
LABEL_139:
        v16 = v56[v55];
        goto LABEL_34;
      }

      if (v34 > 1)
      {
        if (v34 != 2)
        {
          if ((v6 & 0xFFFFFFF7) == 2)
          {
            goto LABEL_132;
          }

          if ((v6 & 0xFFFFFFF7) != 4)
          {
            return 0;
          }

          goto LABEL_155;
        }

        v55 = v6 - 2;
        if (v6 - 2 >= 0xD)
        {
          goto LABEL_155;
        }

        v56 = &unk_2750C8B60;
        goto LABEL_139;
      }

      if (!v34)
      {
        return v14;
      }

      HIDWORD(v53) = v6 - 1;
      LODWORD(v53) = v6 - 1;
      v52 = v53 >> 1;
      if (v52 < 7 && ((0x75u >> v52) & 1) != 0)
      {
        goto LABEL_132;
      }

      v15 = v6 == 3;
LABEL_30:
      v16 = v15;
      goto LABEL_34;
    }

    v35 = v6 - 38;
    v36 = evaluateICmpRelation(FoldedCast, a3, v6 - 38 < 4, a4, v17);
    if (v36 <= 36)
    {
      if (v36 <= 33)
      {
        if (v36 == 32)
        {
          v16 = 0;
          if (v6 > 0x29 || ((1 << v6) & 0x2A90000AA00) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_132;
        }

        v54 = v6 != 32;
        if (v6 == 33)
        {
LABEL_132:
          v16 = 1;
          goto LABEL_34;
        }
      }

      else
      {
        if (v36 == 34)
        {
          v55 = v6 - 32;
          if (v6 - 32 < 6)
          {
            v56 = &unk_2750C8C48;
            goto LABEL_139;
          }

          goto LABEL_142;
        }

        if (v36 != 35)
        {
          v55 = v6 - 32;
          if (v6 - 32 < 6)
          {
            v56 = &unk_2750C8BC8;
            goto LABEL_139;
          }

          goto LABEL_142;
        }

        v54 = v6 != 36;
        if ((v6 & 0xFFFFFFFE) == 0x22)
        {
          goto LABEL_132;
        }
      }
    }

    else if (v36 > 39)
    {
      if (v36 == 40)
      {
        v37 = v6 - 32;
        if (v6 - 32 < 0xA && ((0x3C3u >> v37) & 1) != 0)
        {
          v38 = &unk_2750C8BF8;
          goto LABEL_136;
        }

LABEL_142:
        v57 = *(a3 + 16);
        if (v57 == 5 && *(a3 + 18) == 49)
        {
          v58 = *(a3 - 32 * (*(a3 + 20) & 0x7FFFFFF));
          v59 = *v58;
          v60 = *(*v58 + 8);
          if (((*(*a3 + 8) & 0xFE) == 18) == ((v60 & 0xFE) == 18))
          {
            if ((v60 & 0xFE) == 0x12)
            {
              v60 = *(**(v59 + 16) + 8);
            }

            if (v60 >= 4u && v60 != 5 && (v60 & 0xFD) != 4)
            {
              if (*FoldedCast != v59)
              {
                FoldedCast = getFoldedCast(0x31, FoldedCast, v59, 0);
              }

              SwappedPredicate = v6;
              v68 = FoldedCast;
              v69 = v58;
              goto LABEL_167;
            }
          }
        }

        if (*(FoldedCast + 16) != 5)
        {
LABEL_163:
          if (v57 == 5)
          {
LABEL_166:
            SwappedPredicate = llvm::CmpInst::getSwappedPredicate(v6);
            v68 = a3;
            v69 = FoldedCast;
LABEL_167:

            return llvm::ConstantExpr::getICmp(SwappedPredicate, v68, v69, 0);
          }

LABEL_164:
          if (!llvm::Constant::isNullValue(FoldedCast) || (llvm::Constant::isNullValue(a3) & 1) != 0)
          {
            return 0;
          }

          goto LABEL_166;
        }

        v61 = *(FoldedCast + 9);
        if (v61 == 39)
        {
          if (v35 < 4)
          {
LABEL_161:
            if (*(FoldedCast + 16) == 5)
            {
              goto LABEL_164;
            }

            v57 = *(a3 + 16);
            goto LABEL_163;
          }
        }

        else
        {
          if (v61 != 40)
          {
            goto LABEL_164;
          }

          if (v35 >= 4)
          {
            goto LABEL_161;
          }
        }

        v62 = (FoldedCast - 32 * (*(FoldedCast + 5) & 0x7FFFFFF));
        v63 = *v62;
        v64 = getFoldedCast(0x26, FoldedCast, **v62, 0);
        if (v64 == v63)
        {
          v65 = v64;
          v66 = getFoldedCast(0x26, a3, *v63, 0);
          if (llvm::ConstantExpr::getCast(*(FoldedCast + 9), v66, *a3, 0) == a3)
          {
            SwappedPredicate = v6;
            v68 = v65;
            v69 = v66;
            goto LABEL_167;
          }
        }

        goto LABEL_161;
      }

      if (v36 != 41)
      {
        goto LABEL_142;
      }

      v54 = v6 != 38;
      if ((v6 & 0xFFFFFFFE) == 0x28)
      {
        goto LABEL_132;
      }
    }

    else if (v36 == 37)
    {
      v54 = v6 != 34;
      if ((v6 & 0xFFFFFFFE) == 0x24)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if (v36 == 38)
      {
        v37 = v6 - 32;
        if (v6 - 32 < 0xA && ((0x3C3u >> v37) & 1) != 0)
        {
          v38 = &unk_2750C8C78;
LABEL_136:
          v16 = v38[v37];
          goto LABEL_34;
        }

        goto LABEL_142;
      }

      v54 = v6 != 40;
      if ((v6 & 0xFFFFFFFE) == 0x26)
      {
        goto LABEL_132;
      }
    }

    if (!v54)
    {
      goto LABEL_155;
    }

    goto LABEL_142;
  }

  if ((v6 & 0xFFFFFFFE) != 0x20)
  {
    if (v6 - 32 > 9)
    {
      v16 = v6 - 8 < 7;
LABEL_34:

      return llvm::ConstantInt::get(v7, v16, 0);
    }

    if (FoldedCast != a3)
    {
      v15 = ((v6 - 35) & 0xFFFFFFF9) == 0;
      goto LABEL_30;
    }
  }

  return llvm::UndefValue::get(v7, a2);
}

llvm::Value *constantFoldCompareGlobalToNull(int a1, llvm::Constant *a2, llvm::GlobalValue *a3)
{
  result = 0;
  if (!a3 || *(a3 + 16) > 3u)
  {
    return result;
  }

  if (!llvm::Constant::isNullValue(a2) || *(a3 + 16) == 1 || (llvm::GlobalValue::hasExternalWeakLinkage(a3) & 1) != 0 || *(*a3 + 8) > 0xFFu)
  {
    return 0;
  }

  if (a1 != 33)
  {
    if (a1 == 32)
    {
      v7 = ***a2;
      result = *(v7 + 1600);
      if (!result)
      {
        v8 = 0;
        v9 = (v7 + 1600);
LABEL_15:
        result = llvm::ConstantInt::get(v7 + 1920, v8, 0);
        *v9 = result;
        return result;
      }

      return result;
    }

    return 0;
  }

  v7 = ***a2;
  result = *(v7 + 1592);
  if (!result)
  {
    v9 = (v7 + 1592);
    v8 = 1;
    goto LABEL_15;
  }

  return result;
}

uint64_t evaluateFCmpRelation(llvm::Constant *a1, llvm::Constant *a2, uint64_t a3, uint64_t a4, BOOL a5)
{
  if (a1 == a2)
  {
    return 9;
  }

  if (*(a1 + 16) == 5)
  {
    return 16;
  }

  if (*(a2 + 16) == 5)
  {
    result = evaluateFCmpRelation(a2, a1, a3, a4, a5);
    if (result != 16)
    {

      return llvm::CmpInst::getSwappedPredicate(result);
    }

    return result;
  }

  FCmp = llvm::ConstantExpr::getFCmp(1, a1, a2, 0);
  if (FCmp && *(FCmp + 16) == 16)
  {
    v9 = *(FCmp + 8);
    if (v9 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((FCmp + 3)) != v9)
      {
        return 1;
      }
    }

    else if (FCmp[3])
    {
      return 1;
    }
  }

  v10 = llvm::ConstantExpr::getFCmp(4, a1, a2, 0);
  if (v10 && *(v10 + 16) == 16)
  {
    v11 = *(v10 + 8);
    if (v11 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v10 + 3)) != v11)
      {
        return 4;
      }
    }

    else if (v10[3])
    {
      return 4;
    }
  }

  v12 = llvm::ConstantExpr::getFCmp(2, a1, a2, 0);
  if (!v12 || *(v12 + 16) != 16)
  {
    return 16;
  }

  v13 = *(v12 + 8);
  if (v13 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v12 + 3)) == v13)
    {
      return 16;
    }
  }

  else if (!v12[3])
  {
    return 16;
  }

  return 2;
}

uint64_t evaluateICmpRelation(llvm::Constant *a1, llvm::Constant *a2, char a3, uint64_t a4, BOOL a5)
{
  if (a1 == a2)
  {
    return 32;
  }

  NullValue = a2;
  v7 = a1;
  while (1)
  {
    v8 = *(v7 + 16);
    if (v8 >= 6)
    {
      if (*(NullValue + 16) < 6u)
      {
        goto LABEL_43;
      }

      ICmp = llvm::ConstantExpr::getICmp(0x20, v7, NullValue, 0);
      if (!ICmp || *(ICmp + 16) != 16)
      {
LABEL_66:
        if (a3)
        {
          v20 = 40;
        }

        else
        {
          v20 = 36;
        }

        v28 = llvm::ConstantExpr::getICmp(v20, v7, NullValue, 0);
        if (v28 && *(v28 + 16) == 16)
        {
          v29 = *(v28 + 32);
          if (v29 > 0x40)
          {
            if (llvm::APInt::countLeadingZerosSlowCase((v28 + 24)) == v29)
            {
              goto LABEL_79;
            }
          }

          else if (!*(v28 + 24))
          {
            goto LABEL_79;
          }

          return v20;
        }

LABEL_79:
        if (a3)
        {
          v20 = 38;
        }

        else
        {
          v20 = 34;
        }

        v30 = llvm::ConstantExpr::getICmp(v20, v7, NullValue, 0);
        if (!v30 || *(v30 + 16) != 16)
        {
          return 42;
        }

        v31 = *(v30 + 32);
        if (v31 > 0x40)
        {
          if (llvm::APInt::countLeadingZerosSlowCase((v30 + 24)) == v31)
          {
            return 42;
          }
        }

        else if (!*(v30 + 24))
        {
          return 42;
        }

        return v20;
      }

      v19 = *(ICmp + 32);
      if (v19 <= 0x40)
      {
        if (*(ICmp + 24))
        {
          return 32;
        }

        goto LABEL_66;
      }

      if (llvm::APInt::countLeadingZerosSlowCase((ICmp + 24)) == v19)
      {
        goto LABEL_66;
      }

      return 32;
    }

    if (v8 <= 3)
    {
      v21 = *(NullValue + 16);
      if (v21 != 5)
      {
        if (v21 <= 3)
        {
          v17 = v7;
LABEL_61:
          v27 = NullValue;
          goto LABEL_62;
        }

        if (v21 != 4)
        {
          if ((llvm::GlobalValue::hasExternalWeakLinkage(v7) & 1) == 0 && *(v7 + 16) != 1 && *(*v7 + 8) < 0x100u)
          {
            return 34;
          }

          return 42;
        }

        return 33;
      }

LABEL_43:
      v23 = evaluateICmpRelation(NullValue, v7, a3 & 1, a4, a5);
      if (v23 == 42)
      {
        return 42;
      }

      return llvm::CmpInst::getSwappedPredicate(v23);
    }

    if (v8 == 4)
    {
      v22 = *(NullValue + 16);
      if (v22 == 4)
      {
        if (*(NullValue - 8) == *(v7 - 8))
        {
          return 42;
        }
      }

      else if (v22 == 5)
      {
        goto LABEL_43;
      }

      return 33;
    }

    v9 = *(v7 + 9);
    if (v9 > 0x31)
    {
      return 42;
    }

    v10 = *(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF));
    if (((1 << v9) & 0x198000000000) != 0)
    {
      goto LABEL_8;
    }

    if (v9 != 49)
    {
      break;
    }

    v16 = v10[16] > 3u || v10 == 0;
    if (!v16 && NullValue && *(NullValue + 16) <= 3u)
    {
      v17 = *(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF));
      goto LABEL_61;
    }

LABEL_8:
    v11 = *(*v10 + 8);
    if ((v11 & 0xFE) == 0x12)
    {
      v11 = *(**(*v10 + 16) + 8);
    }

    if (v11 < 6u && ((0x2Fu >> v11) & 1) != 0 || (v11 & 0xFD) == 4 || !llvm::Constant::isNullValue(NullValue) || (*(*v7 + 8) & 0xFD) != 0xD)
    {
      return 42;
    }

    v15 = *(v7 + 9);
    if (v15 == 40)
    {
      a3 = 1;
    }

    else
    {
      a3 &= v15 != 39;
    }

    NullValue = llvm::Constant::getNullValue(*v10, v12, v13, v14);
    v7 = v10;
    if (v10 == NullValue)
    {
      return 32;
    }
  }

  if (v9 != 34)
  {
    return 42;
  }

  v25 = *(NullValue + 16);
  if (v25 == 19)
  {
    v26 = v10[16] > 3u || v10 == 0;
    if (!v26 && (llvm::GlobalValue::hasExternalWeakLinkage(*(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF))) & 1) == 0 && (*(v7 + 17) & 2) != 0)
    {
      return 34;
    }

    return 42;
  }

  if (v25 <= 3)
  {
    if (v10[16] >= 4u)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v7 - 4 * (*(v7 + 5) & 0x7FFFFFF));
    }

    if (v32)
    {
      v33 = v32 == NullValue;
    }

    else
    {
      v33 = 1;
    }

    if (v33 || !llvm::GEPOperator::hasAllZeroIndices(v7))
    {
      return 42;
    }

    v17 = v32;
    goto LABEL_61;
  }

  if (v25 <= 0x1B)
  {
    if (v25 != 5 || *(NullValue + 9) != 34)
    {
      return 42;
    }
  }

  else if (v25 != 62)
  {
    return 42;
  }

  v34 = *(NullValue + 5);
  if ((v34 & 0x40000000) != 0)
  {
    v35 = *(NullValue - 1);
  }

  else
  {
    v35 = NullValue - 32 * (v34 & 0x7FFFFFF);
  }

  if (v10[16] > 3u)
  {
    return 42;
  }

  v36 = *v35;
  if (*(*v35 + 16) > 3u || v10 == v36 || !llvm::GEPOperator::hasAllZeroIndices(v7) || !llvm::GEPOperator::hasAllZeroIndices(NullValue))
  {
    return 42;
  }

  v17 = v10;
  v27 = v36;
LABEL_62:

  return areGlobalsPotentiallyEqual(v17, v27);
}

llvm::Value *llvm::ConstantFoldGetElementPtr(llvm::GetElementPtrInst *a1, unsigned __int8 *a2, unsigned int a3, unint64_t a4, llvm::Constant **a5, _BOOL8 a6)
{
  v6 = a2;
  v183[16] = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    return v6;
  }

  v8 = a5;
  TypeAtIndex = a1;
  llvm::GetElementPtrInst::getGEPReturnType(a1, a2, a5, a6);
  v14 = v12;
  v15 = v6[16];
  if (v15 == 12)
  {
    goto LABEL_3;
  }

  if ((v15 - 11) <= 1)
  {
    if (!a3)
    {

      return llvm::UndefValue::get(v12, v13);
    }

LABEL_3:

    return llvm::PoisonValue::get(v12, v13);
  }

  v17 = *v6;
  if ((*(*v6 + 8) & 0xFE) == 0x12)
  {
    v17 = **(v17 + 16);
    v18 = *(v17 + 8);
  }

  else
  {
    v18 = *(*v6 + 8);
  }

  v176 = a3;
  v19 = v18 == 15 && *(v17 + 24) == 0;
  v177 = a6;
  if ((a6 || v19) && (a4 & 0x100000000) == 0)
  {
    v121 = 8 * a6;
    v122 = v8;
    do
    {
      v123 = *v122;
      if ((llvm::Constant::isNullValue(*v122) & 1) == 0 && *(v123 + 16) - 11 > 1)
      {
        goto LABEL_20;
      }

      ++v122;
      v121 -= 8;
    }

    while (v121);
    if ((*(v14 + 2) & 0xFE) == 0x12 && (*(*v6 + 8) & 0xFE) != 0x12)
    {
      v130 = *(v14 + 8) | (((~*(v14 + 2) & 0x13) == 0) << 32);

      return llvm::ConstantVector::getSplat(v130, v6, v124);
    }

    return v6;
  }

LABEL_20:
  v23 = v177;
  if (llvm::Constant::isNullValue(v6))
  {
    v24 = 8 * v177;
    v25 = 8 * v177;
    v26 = v8;
    while (*(*v26 + 16) - 11 < 2 || llvm::Constant::isNullValue(*v26))
    {
      ++v26;
      v25 -= 8;
      if (!v25)
      {
        v27 = *v6;
        if ((*(*v6 + 8) & 0xFE) == 0x12)
        {
          v27 = **(v27 + 16);
        }

        v28 = v8 + 1;
        v29 = v24 - 8;
        do
        {
          if (!v29)
          {
            break;
          }

          v30 = *v28++;
          TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v30, v21, v22);
          v29 -= 8;
        }

        while (TypeAtIndex);
        v31 = llvm::PointerType::get(TypeAtIndex, (*(v27 + 8) >> 8));
        v32 = llvm::PointerType::get(TypeAtIndex, (*(v27 + 8) >> 8));
        if (*v6)
        {
          v36 = (*(*v6 + 8) & 0xFE) == 18;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          llvm::VectorType::get(v31, (*(*v6 + 32) | (((~*(*v6 + 8) & 0x13) == 0) << 32)), v34);
        }

        while (1)
        {
          v37 = **v8;
          if (v37 && (*(v37 + 8) & 0xFE) == 18)
          {
            break;
          }

          ++v8;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_178;
          }
        }

        llvm::VectorType::get(v31, (*(v37 + 32) | (((~*(v37 + 8) & 0x13) == 0) << 32)), v34);
LABEL_178:

        return llvm::Constant::getNullValue(v32, v33, v34, v35);
      }
    }
  }

  if (v6 && v6[16] == 5)
  {
    if (*(v6 + 9) == 34 && *(v6 + 4) == TypeAtIndex)
    {
      SExtOrBitCast = *v8;
      if (llvm::Constant::isNullValue(*v8))
      {
        v181 = v183;
        v182 = 0x1000000000;
        v126 = *(v6 + 5);
        v127 = v177 + (v126 & 0x7FFFFFFu) - 1;
        if (v127 >= 0x11)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v181, v183, v127, 8);
          v126 = *(v6 + 5);
        }

        if ((v126 & 0x40000000) != 0)
        {
          v129 = *(v6 - 1);
          v128 = v126 & 0x7FFFFFF;
        }

        else
        {
          v128 = v126 & 0x7FFFFFF;
          v129 = &v6[-32 * v128];
        }

        llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v181, v129 + 32, &v129[32 * v128]);
        llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v181, v8 + 8, &v8[v177]);
        v137 = 24;
        if (v6[16] == 62)
        {
          v137 = 64;
        }

        v138 = *&v6[v137];
        v139 = *(v6 + 5);
        if ((v139 & 0x40000000) != 0)
        {
          v140 = *(v6 - 1);
        }

        else
        {
          v140 = &v6[-32 * (v139 & 0x7FFFFFF)];
        }

        v146 = *v140;
        v147 = v6[17];
        v148 = *&v176 & ((v147 & 2) >> 1);
        if ((v147 & 0xFC) != 0)
        {
          v149 = (v147 >> 2) - 1;
        }

        else
        {
          v149 = 0;
        }

        ElementPtr = llvm::ConstantExpr::getGetElementPtr(v138, v146, v181, v182, v148, v149 | ((v6[17] > 3u) << 32), 0);
        if (v181 != v183)
        {
          free(v181);
        }

        if (ElementPtr)
        {
          return ElementPtr;
        }
      }

      else
      {
        v131 = 24;
        if (v6[16] == 62)
        {
          v131 = 64;
        }

        v132 = *&v6[v131];
        v133 = *(v6 + 5);
        if ((v133 & 0x40000000) != 0)
        {
          v135 = *(v6 - 1);
          v136 = v135 + 32;
          v181 = v135 + 32;
          v182 = v132 | 4;
          v134 = v133 & 0x7FFFFFF;
        }

        else
        {
          v134 = v133 & 0x7FFFFFF;
          v135 = &v6[-32 * v134];
          v136 = v135 + 32;
          v181 = v135 + 32;
          v182 = v132 | 4;
        }

        v141 = &v135[32 * v134];
        if (v136 != v141)
        {
          do
          {
            v142 = v182;
            llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(&v181, v20, v21, v22);
          }

          while (v181 != v141);
          if ((v142 & 4) != 0 && SExtOrBitCast && *(SExtOrBitCast + 16) == 16)
          {
            v143 = *(v6 + 5);
            v144 = (v143 & 0x7FFFFFFu) - 1;
            v145 = (v143 & 0x40000000) != 0 ? *(v6 - 1) : &v6[-32 * (v143 & 0x7FFFFFF)];
            v150 = *&v145[32 * (v143 & 0x7FFFFFF) - 32];
            v151 = *v150;
            if (((*v150)[1] & 0xFE) != 0x12)
            {
              v181 = v183;
              v182 = 0x1000000000;
              if ((v177 + v144) >= 0x11)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v181, v183, v177 + v144, 8);
                v143 = *(v6 + 5);
              }

              if ((v143 & 0x40000000) != 0)
              {
                v153 = *(v6 - 1);
                v152 = v143 & 0x7FFFFFF;
              }

              else
              {
                v152 = v143 & 0x7FFFFFF;
                v153 = &v6[-32 * v152];
              }

              v154 = TypeAtIndex;
              llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(&v181, v153 + 32, &v153[32 * v152 - 32]);
              if (v151 != *SExtOrBitCast)
              {
                if (*(v151 + 2) >> 8 <= *(*SExtOrBitCast + 2) >> 8)
                {
                  v156 = *(*SExtOrBitCast + 2) >> 8;
                }

                else
                {
                  v156 = *(v151 + 2) >> 8;
                }

                if (v156 <= 0x40)
                {
                  v157 = 64;
                }

                else
                {
                  v157 = v156;
                }

                v158 = llvm::IntegerType::get(*v151, v157);
                SExtOrBitCast = llvm::ConstantExpr::getSExtOrBitCast(SExtOrBitCast, v158, v159);
                v150 = llvm::ConstantExpr::getSExtOrBitCast(v150, v158, v160);
              }

              v161 = llvm::ConstantExpr::get(0xD, SExtOrBitCast, v150, 0, 0, v155);
              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v181, v161);
              llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(&v181, v8 + 8, &v8[v177]);
              v162 = 0;
              v163 = v6[17];
              if (v163 <= 3)
              {
                v164 = 0;
              }

              else
              {
                v164 = (v6[17] >> 2) - 1;
              }

              v165 = *(v6 + 5);
              TypeAtIndex = v154;
              if (v163 >= 4)
              {
                v162 = ((v165 & 0x7FFFFFF) - 2 != ((v6[17] >> 2) - 1)) << 32;
              }

              v166 = 24;
              if (v6[16] == 62)
              {
                v166 = 64;
              }

              if ((v165 & 0x40000000) != 0)
              {
                v167 = *(v6 - 1);
              }

              else
              {
                v167 = &v6[-32 * (v165 & 0x7FFFFFF)];
              }

              ElementPtr = llvm::ConstantExpr::getGetElementPtr(*&v6[v166], *v167, v181, v182, v176 & (v6[17] >> 1), v162 | v164, 0);
              if (v181 != v183)
              {
                free(v181);
              }

              v23 = v177;
              if (ElementPtr)
              {
                return ElementPtr;
              }
            }
          }
        }
      }
    }

    if (v23 != 1 && *(v6 + 9) - 38 <= 0xC && llvm::Constant::isNullValue(*v8))
    {
      v20 = *&v6[-32 * (*(v6 + 5) & 0x7FFFFFF)];
      v39 = *v20;
      if (*(*v20 + 8) != 15)
      {
        v39 = 0;
      }

      v40 = *v6;
      if (*(*v6 + 8) != 15)
      {
        v40 = 0;
      }

      v41 = !v39 || v40 == 0;
      if (!v41 && *(v39 + 24) && *(v40 + 24))
      {
        if (*(**(v39 + 16) + 8) == 17)
        {
          v42 = **(v39 + 16);
        }

        else
        {
          v42 = 0;
        }

        v43 = **(v40 + 16);
        if (*(v43 + 8) != 17)
        {
          v43 = 0;
        }

        v44 = !v42 || v43 == 0;
        if (!v44 && *(v42 + 3) == *(v43 + 24) && (*(v40 + 8) ^ *(v39 + 8)) <= 0xFF)
        {

          return llvm::ConstantExpr::getGetElementPtr(v42, v20, v8, v23, v176, a4, 0);
        }
      }
    }
  }

  v182 = 0x800000000;
  v45 = *v6;
  v180[0] = v8;
  v180[1] = TypeAtIndex | 4;
  v181 = v183;
  v46 = *(*v8 + 16) - 17 < 0xFFFFFFFE;
  if (v23 == 1)
  {
    goto LABEL_159;
  }

  v47 = (a4 + 1);
  v48 = a4;
  v49 = 1;
  v172 = v48;
  v178 = HIDWORD(v48);
  v179 = v47;
  v50 = 1;
  v173 = TypeAtIndex;
  IndexedType = TypeAtIndex;
  v52 = *(*v8 + 16) - 17 < 0xFFFFFFFE;
  do
  {
    v53 = v45;
    v45 = IndexedType;
    v54 = v8[v49];
    v55 = *(v54 + 16);
    if ((v55 - 15) > 1)
    {
LABEL_80:
      v52 = 1;
      goto LABEL_81;
    }

    if (*(v8[v49 - 1] + 16) - 17 >= 0xFFFFFFFE && (v178 & (v49 == v179)) == 0)
    {
      v56 = *(IndexedType + 8);
      if (v56 != 16)
      {
        if ((v56 & 0xFE) == 0x12)
        {
          goto LABEL_80;
        }

        if (v55 == 16)
        {
          v169 = v49 - 1;
          if (isIndexInRangeOfArrayType(*(IndexedType + 32), v54))
          {
            goto LABEL_81;
          }

          v61 = (v54 + 24);
          v62 = *(v54 + 8);
          v63 = v62 - 1;
          if (v62 >= 0x41)
          {
            v61 = (*v61 + 8 * (v63 >> 6));
          }

          if ((*v61 >> v63))
          {
            goto LABEL_80;
          }
        }

        else
        {
          v174 = v6;
          v170 = v52;
          v64 = *(*v54 + 32);
          if (!v64)
          {
            v6 = v174;
            v23 = v177;
            goto LABEL_81;
          }

          v169 = v49 - 1;
          v65 = 0;
          v66 = 1;
          do
          {
            ElementAsConstant = llvm::ConstantDataSequential::getElementAsConstant(v54, v65);
            v68 = isIndexInRangeOfArrayType(*(v45 + 32), ElementAsConstant);
            v69 = (ElementAsConstant + 24);
            v70 = *(ElementAsConstant + 32);
            v71 = v70 - 1;
            if (v70 >= 0x41)
            {
              v69 = (*v69 + 8 * (v71 >> 6));
            }

            if ((*v69 >> v71))
            {
              v52 = 1;
              v6 = v174;
              v23 = v177;
              goto LABEL_81;
            }

            v66 &= v68;
            ++v65;
          }

          while (v64 != v65);
          v72 = v66 | v170;
          v52 = v170;
          v6 = v174;
          v23 = v177;
          if (v72)
          {
            goto LABEL_81;
          }

          v52 = 0;
        }

        if (*(v53 + 8) == 16)
        {
          goto LABEL_80;
        }

        v73 = *(v45 + 32);
        if (!v73)
        {
          goto LABEL_80;
        }

        llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(&v181, v23);
        v75 = *(v181 + v169);
        if (!v75)
        {
          v75 = v8[v169];
        }

        Splat = v8[v49];
        v77 = *(*Splat + 8) & 0xFE;
        v78 = v77 == 18;
        v79 = *(*v75 + 8) & 0xFE;
        if (v79 == 18)
        {
          v78 = 1;
        }

        v175 = v78;
        if (v77 != 18 && v79 == 18)
        {
          Splat = llvm::ConstantDataVector::getSplat(*(*v75 + 32), Splat, v74);
        }

        else if (v79 != 18 && v77 == 18)
        {
          v75 = llvm::ConstantDataVector::getSplat(*(*Splat + 32), v75, v74);
        }

        v82 = *Splat;
        if ((*(*Splat + 8) & 0xFE) == 0x12)
        {
          v82 = **(v82 + 2);
        }

        v86 = llvm::ConstantInt::get(v82, v73, 0);
        if (v175)
        {
          if (v79 == 18)
          {
            v87 = v75;
          }

          else
          {
            v87 = Splat;
          }

          v86 = llvm::ConstantDataVector::getSplat(*(*v87 + 32), v86, v83);
        }

        v168 = v79;
        v88 = llvm::ConstantFoldBinaryInstruction(0x17, Splat, v86, v84, v85);
        *(v181 + v49) = v88;
        v91 = llvm::ConstantFoldBinaryInstruction(0x14, Splat, v86, v89, v90);
        v92 = *v75;
        v171 = v52;
        if ((*(*v75 + 8) & 0xFE) == 0x12)
        {
          v92 = **(v92 + 2);
        }

        PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v92);
        v94 = *v91;
        v95 = *v91;
        if (((*v91)[1] & 0xFE) == 0x12)
        {
          v95 = *v94[2];
        }

        v96 = llvm::Type::getPrimitiveSizeInBits(v95);
        if (PrimitiveSizeInBits <= v96)
        {
          v97 = v96;
        }

        else
        {
          v97 = PrimitiveSizeInBits;
        }

        if (v97 <= 0x40)
        {
          v98 = 64;
        }

        else
        {
          v98 = v97;
        }

        v99 = llvm::IntegerType::get(*v94, v98);
        v101 = v99;
        if (v175)
        {
          if (v168 == 18)
          {
            v102 = v75;
          }

          else
          {
            v102 = Splat;
          }

          llvm::FixedVectorType::get(v99, *(*v102 + 32));
          v101 = v103;
        }

        v23 = v177;
        v52 = v171;
        v104 = *(*v75 + 8);
        if ((v104 & 0xFE) == 0x12)
        {
          v104 = *(**(*v75 + 16) + 8);
        }

        if (v104 != 13 || v104 >> 8 != v98)
        {
          v105 = v75;
          v106 = v101;
          FoldedCast = getFoldedCast(0x28, v105, v101, 0);
          v101 = v106;
          v75 = FoldedCast;
        }

        v108 = v91;
        v109 = *(*v91 + 2);
        if ((v109 & 0xFE) == 0x12)
        {
          v109 = *(*(*v91)[2] + 8);
        }

        v110 = v109;
        v111 = v109 >> 8;
        if (v110 != 13 || v111 != v98)
        {
          v108 = getFoldedCast(0x28, v91, v101, 0);
        }

        v113 = llvm::ConstantExpr::get(0xD, v75, v108, 0, 0, v100);
        *(v181 + v169) = v113;
      }
    }

LABEL_81:
    v57 = llvm::generic_gep_type_iterator<llvm::Value const* const*>::operator++(v180, v20, v21, v22);
    IndexedType = llvm::generic_gep_type_iterator<llvm::Use const*>::getIndexedType(v57, v58, v59, v60);
    ++v50;
    ++v49;
  }

  while (v50 != v23);
  v46 = v52;
  v114 = v182;
  a4 = v172;
  TypeAtIndex = v173;
  if (v182)
  {
    v115 = v176;
    if (v23)
    {
      v116 = 0;
      do
      {
        if (!*(v181 + v116 * 8))
        {
          *(v181 + v116 * 8) = v8[v116];
        }

        ++v116;
      }

      while (v23 != v116);
    }

    v117 = v181;
    v118 = v173;
    v119 = v6;
LABEL_158:
    ElementPtr = llvm::ConstantExpr::getGetElementPtr(v118, v119, v117, v114, v115, a4, 0);
    goto LABEL_175;
  }

LABEL_159:
  ElementPtr = 0;
  if (!v46 && (v176 & 1) == 0)
  {
    if (v6[16] == 3 && (llvm::GlobalValue::hasExternalWeakLinkage(v6) & 1) == 0 && *(v6 + 3) == TypeAtIndex && isInBoundsIndices<llvm::Value *>(v8, v23))
    {
      v118 = TypeAtIndex;
      v119 = v6;
      v117 = v8;
      v114 = v23;
      v115 = 1;
      goto LABEL_158;
    }

    ElementPtr = 0;
  }

LABEL_175:
  if (v181 != v183)
  {
    free(v181);
  }

  return ElementPtr;
}

BOOL isIndexInRangeOfArrayType(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 - llvm::APInt::getNumSignBits((a2 + 24)) + 1 > 0x40)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (v5 > 0x40)
  {
    v6 = **(a2 + 24);
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = (*(a2 + 24) << -v5) >> -v5;
  if ((v6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

LABEL_4:
  if (v6)
  {
    v7 = v6 >= a1;
  }

  else
  {
    v7 = 0;
  }

  return !v7;
}

uint64_t isInBoundsIndices<llvm::Value *>(llvm::Constant **a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  if (llvm::Constant::isNullValue(*a1))
  {
    return 1;
  }

  v5 = *a1;
  if (*a1 && *(v5 + 16) == 16)
  {
    v6 = *(v5 + 8);
    if (v6 <= 0x40)
    {
      v7 = *(v5 + 3);
      goto LABEL_9;
    }

    v9 = llvm::APInt::countLeadingZerosSlowCase((v5 + 24));
    v10 = v6 - 1;
  }

  else
  {
    result = llvm::ConstantDataVector::isSplat(*a1);
    if (!result)
    {
      return result;
    }

    result = llvm::ConstantDataSequential::getElementAsConstant(v5, 0);
    if (!result)
    {
      return result;
    }

    if (*(result + 16) != 16)
    {
      return 0;
    }

    v8 = *(result + 32);
    if (v8 <= 0x40)
    {
      v7 = *(result + 24);
LABEL_9:
      if (v7 != 1)
      {
        return 0;
      }

      goto LABEL_18;
    }

    v9 = llvm::APInt::countLeadingZerosSlowCase((result + 24));
    v10 = v8 - 1;
  }

  if (v9 != v10)
  {
    return 0;
  }

LABEL_18:
  if (v2 == 1)
  {
    return 1;
  }

  v11 = v2 - 2;
  v12 = a1 + 1;
  do
  {
    v13 = *v12++;
    result = llvm::Constant::isNullValue(v13);
    v15 = v11-- != 0;
  }

  while (result && v15);
  return result;
}

uint64_t llvm::APSInt::compareValues(llvm::APSInt *this, const llvm::APSInt *a2, const llvm::APSInt *a3)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v5 != v6 || *(this + 12) != *(a2 + 12))
  {
    if (v5 <= v6)
    {
      if (v6 <= v5)
      {
        if (*(this + 12))
        {
          if (*(a2 + 12))
          {
            goto LABEL_26;
          }

          v12 = (*a2 + 8 * ((v6 - 1) >> 6));
          if (v6 < 0x41)
          {
            v12 = a2;
          }

          if (((*v12 >> (v6 - 1)) & 1) == 0)
          {
            goto LABEL_26;
          }

          return 1;
        }

        else
        {
          v13 = v5 - 1;
          if (v5 >= 0x41)
          {
            v14 = (*this + 8 * ((v5 - 1) >> 6));
          }

          else
          {
            v14 = this;
          }

          if (((*v14 >> v13) & 1) == 0)
          {
            goto LABEL_26;
          }

          return 0xFFFFFFFFLL;
        }
      }

      llvm::APSInt::extend(&v15, this, v6);
      v10 = &v15;
      v9 = a2;
    }

    else
    {
      llvm::APSInt::extend(&v15, a2, v5);
      v9 = &v15;
      v10 = this;
    }

    v11 = llvm::APSInt::compareValues(v10, v9, v8);
    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x277C69E10](v15, 0x1000C8000313F17);
    }

    return v11;
  }

  if (!*(this + 12))
  {

    return llvm::APInt::compareSigned(this, a2);
  }

LABEL_26:

  return llvm::APInt::compare(this, a2);
}

void llvm::APSInt::extend(llvm::APSInt *this, llvm::APInt *a2, unsigned int a3)
{
  if (*(a2 + 12) == 1)
  {
    v5 = v9;
    llvm::APInt::zext(v9, a2, a3);
  }

  else
  {
    v5 = v8;
    llvm::APInt::sext(a2, a3, v8);
  }

  v6 = *(a2 + 12);
  v7 = *v5;
  *(this + 2) = *(v5 + 2);
  *this = v7;
  *(this + 12) = v6;
}

uint64_t areGlobalsPotentiallyEqual(const llvm::GlobalValue *a1, const llvm::GlobalValue *a2)
{
  if (*(a1 + 16) == 1)
  {
    return 42;
  }

  if (*(a2 + 16) == 1)
  {
    return 42;
  }

  if (llvm::GlobalValue::isInterposable(a1))
  {
    return 42;
  }

  if ((*(a1 + 8) & 0xC0) == 0x80)
  {
    return 42;
  }

  if (*(a1 + 16) == 3)
  {
    v5 = *(a1 + 3);
    if (!llvm::Type::isSized(v5, 0) || (llvm::Type::isEmptyTy(v5, v6) & 1) != 0)
    {
      return 42;
    }
  }

  if (llvm::GlobalValue::isInterposable(a2))
  {
    return 42;
  }

  if ((*(a2 + 8) & 0xC0) == 0x80)
  {
    return 42;
  }

  if (*(a2 + 16) == 3)
  {
    v7 = *(a2 + 3);
    if (!llvm::Type::isSized(v7, 0) || llvm::Type::isEmptyTy(v7, v8))
    {
      return 42;
    }
  }

  return 33;
}

uint64_t llvm::GEPOperator::hasAllZeroIndices(llvm::GEPOperator *this)
{
  v1 = *(this + 5);
  if ((v1 & 0x40000000) != 0)
  {
    v3 = *(this - 1);
    v2 = v1 & 0x7FFFFFF;
  }

  else
  {
    v2 = v1 & 0x7FFFFFF;
    v3 = this - 32 * v2;
  }

  if (v2 == 1)
  {
    return 1;
  }

  v5 = v3 + 32;
  v6 = 32 * v2 - 32;
  while (1)
  {
    v7 = *v5;
    if (!*v5 || *(*v5 + 16) != 16)
    {
      break;
    }

    v9 = *(v7 + 32);
    if (v9 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v7 + 24)) != v9)
      {
        return 0;
      }
    }

    else if (*(v7 + 24))
    {
      return 0;
    }

    v5 += 32;
    v6 -= 32;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::PatternMatch::cstval_pred_ty<llvm::PatternMatch::is_neg_zero_fp,llvm::ConstantFP>::match<llvm::Constant>(llvm::Constant *SplatValue, uint64_t a2, uint64_t a3, BOOL a4)
{
  v4 = SplatValue;
  if (!SplatValue || *(SplatValue + 16) != 17)
  {
    v6 = *SplatValue;
    if (*SplatValue)
    {
      v7 = (*(*SplatValue + 8) & 0xFE) == 18;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      goto LABEL_29;
    }

    SplatValue = llvm::Constant::getSplatValue(SplatValue, 0, a3, a4);
    if (!SplatValue || *(SplatValue + 16) != 17)
    {
      if (*(v6 + 8) == 18)
      {
        v10 = *(v6 + 32);
        if (v10)
        {
          v11 = 0;
          LOBYTE(v12) = 0;
          while (1)
          {
            AggregateElement = llvm::Constant::getAggregateElement(v4, v11, v8, v9);
            if (!AggregateElement)
            {
              break;
            }

            v14 = *(AggregateElement + 16);
            if ((v14 - 11) >= 2)
            {
              if (v14 != 17)
              {
                goto LABEL_29;
              }

              v15 = *(AggregateElement + 4) == &llvm::semPPCDoubleDouble ? *(*(AggregateElement + 5) + 28) : *(AggregateElement + 52);
              if ((v15 & 7) != 3 || (v15 & 8) == 0)
              {
                goto LABEL_29;
              }

              LOBYTE(v12) = 1;
            }

            v11 = (v11 + 1);
            if (v10 == v11)
            {
              return v12 & 1;
            }
          }
        }
      }

      goto LABEL_29;
    }
  }

  if (*(SplatValue + 4) == &llvm::semPPCDoubleDouble)
  {
    v5 = *(*(SplatValue + 5) + 28);
  }

  else
  {
    v5 = *(SplatValue + 52);
  }

  if ((v5 & 7) != 3)
  {
LABEL_29:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  v12 = (v5 >> 3) & 1;
  return v12 & 1;
}

llvm::ConstantRange *llvm::ConstantRange::ConstantRange(llvm::ConstantRange *this, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = -1;
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  llvm::APInt::APInt(this, a2, v4, v5);
  v6 = *(this + 2);
  *(this + 6) = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *(this + 2) = *this;
  return this;
}

BOOL llvm::ConstantRange::isEmptySet(const void **this)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    if (memcmp(*this, this[2], ((v2 + 63) >> 3) & 0x3FFFFFF8))
    {
      return 0;
    }

    return llvm::APInt::countLeadingZerosSlowCase(this) == v2;
  }

  else
  {
    return (this[2] | *this) == 0;
  }
}

BOOL llvm::ConstantRange::isFullSet(const void **this)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    if (!memcmp(*this, this[2], ((v2 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*this != this[2])
  {
    return 0;
  }

LABEL_3:

  return llvm::APInt::isAllOnes(this);
}

uint64_t llvm::ConstantRange::intersectWith@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>, int a4@<W2>)
{
  while (1)
  {
    v7 = a2;
    a2 = a1;
    result = llvm::ConstantRange::isEmptySet(a1);
    if ((result & 1) != 0 || (result = llvm::ConstantRange::isFullSet(v7), result))
    {
      v15 = *(a2 + 2);
      *(a3 + 8) = v15;
      if (v15 > 0x40)
      {
        operator new[]();
      }

      *a3 = *a2;
      v17 = *(a2 + 6);
      *(a3 + 24) = v17;
      if (v17 > 0x40)
      {
        operator new[]();
      }

      v18 = a2[2];
LABEL_22:
      *(a3 + 16) = v18;
      return result;
    }

    result = llvm::ConstantRange::isEmptySet(v7);
    if ((result & 1) != 0 || (result = llvm::ConstantRange::isFullSet(a2), result))
    {
      v16 = *(v7 + 2);
      *(a3 + 8) = v16;
      if (v16 > 0x40)
      {
        operator new[]();
      }

      *a3 = *v7;
      v19 = *(v7 + 6);
      *(a3 + 24) = v19;
      if (v19 > 0x40)
      {
        operator new[]();
      }

      v18 = v7[2];
      goto LABEL_22;
    }

    v9 = llvm::APInt::compare(a2, (a2 + 2));
    v10 = llvm::APInt::compare(v7, (v7 + 2));
    v11 = v10;
    if (v9 > 0)
    {
      break;
    }

    a1 = v7;
    if (v11 <= 0)
    {
      if ((llvm::APInt::compare(a2, v7) & 0x80000000) == 0)
      {
        result = llvm::APInt::compare((a2 + 2), (v7 + 2));
        if ((result & 0x80000000) != 0)
        {
          v26 = *(a2 + 2);
          *(a3 + 8) = v26;
          if (v26 > 0x40)
          {
            operator new[]();
          }

          *a3 = *a2;
          v30 = *(a2 + 6);
          *(a3 + 24) = v30;
          if (v30 > 0x40)
          {
            operator new[]();
          }

          v18 = a2[2];
          goto LABEL_22;
        }

        result = llvm::APInt::compare(a2, (v7 + 2));
        v12 = *(a2 + 2);
        if ((result & 0x80000000) == 0)
        {
LABEL_10:
          v13 = a3;
          v14 = v12;
LABEL_55:

          return llvm::ConstantRange::ConstantRange(v13, v14, 0);
        }

        if (v12 > 0x40)
        {
          operator new[]();
        }

        v27 = *a2;
        v36 = *(v7 + 6);
        if (v36 > 0x40)
        {
          operator new[]();
        }

        v37 = v7[2];
        *(a3 + 8) = v12;
        *a3 = v27;
        *(a3 + 24) = v36;
LABEL_98:
        *(a3 + 16) = v37;
        return result;
      }

      if (llvm::APInt::compare((a2 + 2), v7) <= 0)
      {
        v14 = *(a2 + 2);
        v13 = a3;
        goto LABEL_55;
      }

      result = llvm::APInt::compare((a2 + 2), (v7 + 2));
      if ((result & 0x80000000) != 0)
      {
        v32 = *(v7 + 2);
        if (v32 > 0x40)
        {
          operator new[]();
        }

        v33 = *v7;
        v40 = *(a2 + 6);
        if (v40 > 0x40)
        {
          operator new[]();
        }

        v39 = a2[2];
        *(a3 + 8) = v32;
        *a3 = v33;
        *(a3 + 24) = v40;
        goto LABEL_88;
      }

      v23 = *(v7 + 2);
      *(a3 + 8) = v23;
      if (v23 > 0x40)
      {
        operator new[]();
      }

      *a3 = *v7;
      v35 = *(v7 + 6);
      *(a3 + 24) = v35;
      if (v35 <= 0x40)
      {
LABEL_74:
        v18 = v7[2];
        goto LABEL_22;
      }

LABEL_78:
      operator new[]();
    }
  }

  if (v10 <= 0)
  {
    if ((llvm::APInt::compare(v7, (a2 + 2)) & 0x80000000) == 0)
    {
      result = llvm::APInt::compare(v7, a2);
      if ((result & 0x80000000) == 0)
      {
        v22 = *(v7 + 2);
        *(a3 + 8) = v22;
        if (v22 > 0x40)
        {
          operator new[]();
        }

        *a3 = *v7;
        v34 = *(v7 + 6);
        *(a3 + 24) = v34;
        if (v34 <= 0x40)
        {
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      result = llvm::APInt::compare((v7 + 2), a2);
      v12 = *(a2 + 2);
      if (result <= 0)
      {
        goto LABEL_10;
      }

      if (v12 > 0x40)
      {
        operator new[]();
      }

      v31 = *a2;
      v41 = *(v7 + 6);
      if (v41 > 0x40)
      {
        operator new[]();
      }

      v37 = v7[2];
      *(a3 + 8) = v12;
      *a3 = v31;
LABEL_97:
      *(a3 + 24) = v41;
      goto LABEL_98;
    }

    if ((llvm::APInt::compare((v7 + 2), (a2 + 2)) & 0x80000000) == 0)
    {
      result = llvm::APInt::compare((v7 + 2), a2);
      if (result <= 0)
      {
        goto LABEL_58;
      }

      goto LABEL_47;
    }

LABEL_50:
    v20 = a3;
    v21 = v7;
LABEL_51:

    return llvm::ConstantRange::ConstantRange(v20, v21);
  }

  if ((llvm::APInt::compare((v7 + 2), (a2 + 2)) & 0x80000000) != 0)
  {
    if ((llvm::APInt::compare(v7, (a2 + 2)) & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    result = llvm::APInt::compare(v7, a2);
    if ((result & 0x80000000) != 0)
    {
      v24 = *(a2 + 2);
      if (v24 > 0x40)
      {
        operator new[]();
      }

      v25 = *a2;
      v41 = *(v7 + 6);
      if (v41 > 0x40)
      {
        operator new[]();
      }

      v37 = v7[2];
      *(a3 + 8) = v24;
      *a3 = v25;
      goto LABEL_97;
    }

    goto LABEL_50;
  }

  if (llvm::APInt::compare((v7 + 2), a2) > 0)
  {
LABEL_47:

    return getPreferredRange(a3, a2, v7, a4);
  }

  result = llvm::APInt::compare(v7, a2);
  if ((result & 0x80000000) != 0)
  {
    v20 = a3;
    v21 = a2;
    goto LABEL_51;
  }

LABEL_58:
  v28 = *(v7 + 2);
  if (v28 > 0x40)
  {
    operator new[]();
  }

  v29 = *v7;
  v38 = *(a2 + 6);
  if (v38 > 0x40)
  {
    operator new[]();
  }

  v39 = a2[2];
  *(a3 + 8) = v28;
  *a3 = v29;
  *(a3 + 24) = v38;
LABEL_88:
  *(a3 + 16) = v39;
  return result;
}

uint64_t llvm::ConstantRange::isWrappedSet(llvm::ConstantRange *this)
{
  if (llvm::APInt::compare(this, (this + 16)) < 1)
  {
    return 0;
  }

  v2 = *(this + 6);
  if (v2 > 0x40)
  {
    v3 = llvm::APInt::countLeadingZerosSlowCase((this + 16)) == v2;
  }

  else
  {
    v3 = *(this + 2) == 0;
  }

  v5 = v3;
  return v5 ^ 1u;
}

uint64_t llvm::ConstantRange::isSizeStrictlySmallerThan(const void **this, const void **a2)
{
  if (llvm::ConstantRange::isFullSet(this))
  {
    return 0;
  }

  if (llvm::ConstantRange::isFullSet(a2))
  {
    return 1;
  }

  v15 = *(this + 6);
  if (v15 > 0x40)
  {
    operator new[]();
  }

  v14 = this[2];
  llvm::APInt::operator-=(&v14, this);
  v5 = v15;
  v6 = v14;
  v15 = 0;
  v13 = *(a2 + 6);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  v12 = a2[2];
  llvm::APInt::operator-=(&v12, a2);
  v7 = v13;
  v13 = 0;
  if (v5 > 0x40)
  {
    v8 = ((v5 + 63) >> 3) & 0x3FFFFFF8;
    while (v8)
    {
      v9 = *&v6[v8 - 8];
      v10 = *&v12[v8 - 8];
      v8 -= 8;
      if (v9 != v10)
      {
        v4 = v9 <= v10;
        goto LABEL_18;
      }
    }

    v4 = 0;
  }

  else
  {
    v4 = v6 < v12;
  }

LABEL_18:
  if (v7 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x277C69E10](v12, 0x1000C8000313F17);
      if (v13 >= 0x41)
      {
        if (v12)
        {
          MEMORY[0x277C69E10](v12, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v5 >= 0x41 && v6)
  {
    MEMORY[0x277C69E10](v6, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x277C69E10](v14, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t getPreferredRange(uint64_t a1, llvm::ConstantRange *this, llvm::ConstantRange *a3, int a4)
{
  if (a4 == 2)
  {
    if (!llvm::ConstantRange::isSignWrappedSet(this))
    {
      result = llvm::ConstantRange::isSignWrappedSet(a3);
      if (result)
      {
        goto LABEL_13;
      }
    }

    if (llvm::ConstantRange::isSignWrappedSet(this))
    {
      result = llvm::ConstantRange::isSignWrappedSet(a3);
      if ((result & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else if (a4 == 1)
  {
    isWrappedSet = llvm::ConstantRange::isWrappedSet(this);
    result = llvm::ConstantRange::isWrappedSet(a3);
    if (isWrappedSet)
    {
      if ((result & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (result)
    {
      goto LABEL_13;
    }
  }

  result = llvm::ConstantRange::isSizeStrictlySmallerThan(this, a3);
  if (!result)
  {
LABEL_15:
    v10 = *(a3 + 2);
    *(a1 + 8) = v10;
    if (v10 > 0x40)
    {
      operator new[]();
    }

    *a1 = *a3;
    v13 = *(a3 + 6);
    *(a1 + 24) = v13;
    if (v13 > 0x40)
    {
      operator new[]();
    }

    v12 = *(a3 + 2);
    goto LABEL_24;
  }

LABEL_13:
  v9 = *(this + 2);
  *(a1 + 8) = v9;
  if (v9 > 0x40)
  {
    operator new[]();
  }

  *a1 = *this;
  v11 = *(this + 6);
  *(a1 + 24) = v11;
  if (v11 > 0x40)
  {
    operator new[]();
  }

  v12 = *(this + 2);
LABEL_24:
  *(a1 + 16) = v12;
  return result;
}

uint64_t llvm::Constant::getSplatValue(llvm::Constant *this, llvm::Type *a2, uint64_t a3, BOOL a4)
{
  v5 = 0;
  v6 = *(this + 16);
  if (v6 <= 0xC)
  {
    if (v6 != 5)
    {
      if (v6 == 10)
      {
        v7 = *(this + 5) & 0x7FFFFFF;
        v8 = *(this - 4 * v7);
        if (v7 < 2)
        {
          return *(this - 4 * v7);
        }

        else
        {
          v9 = -32 * v7;
          do
          {
            v5 = *(this + v9 + 32);
            v10 = v5 == v8 || a2 == 0;
            if (v10)
            {
              v10 = v5 == v8;
              v5 = v8;
              if (!v10)
              {
                return 0;
              }
            }

            else if (*(v5 + 16) - 11 >= 2)
            {
              if (*(v8 + 16) - 11 >= 2)
              {
                return 0;
              }
            }

            else
            {
              v5 = v8;
            }

            v9 += 32;
            v8 = v5;
          }

          while (v9 != -32);
        }
      }

      return v5;
    }

    if (*(this + 9) != 63)
    {
      return 0;
    }

    v13 = (this - 32 * (*(this + 5) & 0x7FFFFFF));
    if (*(v13[4] + 16) - 11 > 1)
    {
      return 0;
    }

    v14 = *v13;
    if (!v14 || *(v14 + 16) != 5)
    {
      return 0;
    }

    if (*(v14 + 18) != 62)
    {
      return 0;
    }

    v16 = (v14 - 32 * (*(v14 + 20) & 0x7FFFFFF));
    if (*(*v16 + 16) - 11 > 1)
    {
      return 0;
    }

    v17 = v16[8];
    if (!v17 || *(v17 + 16) != 16)
    {
      return 0;
    }

    v19 = *(this + 3);
    v20 = *(this + 8);
    v5 = v16[4];
    v21 = (v17 + 24);
    v22 = *(v17 + 32);
    if (v22 >= 0x41)
    {
      if (v22 - llvm::APInt::countLeadingZerosSlowCase((v17 + 24)) > 0x40)
      {
        return 0;
      }

      v21 = *v21;
    }

    if (!*v21)
    {
      if (v20)
      {
        v23 = 4 * v20;
        while (!*v19)
        {
          ++v19;
          v23 -= 4;
          if (!v23)
          {
            return v5;
          }
        }

        return 0;
      }

      return v5;
    }

    return 0;
  }

  if (v6 == 15)
  {
    if (!llvm::ConstantDataVector::isSplat(this))
    {
      return 0;
    }

    return llvm::ConstantDataSequential::getElementAsConstant(this, 0);
  }

  else
  {
    if (v6 != 13)
    {
      return v5;
    }

    v11 = *(*this + 24);

    return llvm::Constant::getNullValue(v11, a2, a3, a4);
  }
}

uint64_t llvm::Constant::isNullValue(llvm::Constant *this)
{
  v1 = *(this + 16);
  if (this && v1 == 16)
  {
    v2 = *(this + 8);
    if (v2 > 0x40)
    {
      v3 = llvm::APInt::countLeadingZerosSlowCase((this + 24)) == v2;
    }

    else
    {
      v3 = *(this + 3) == 0;
    }

    LOBYTE(v6) = v3;
    return v6 & 1;
  }

  if (!this || v1 != 17)
  {
    v5 = v1 > 0x14;
    v6 = 0x1C2000u >> v1;
    if (v5)
    {
      LOBYTE(v6) = 0;
    }

    return v6 & 1;
  }

  return llvm::ConstantFP::isExactlyValue(this, 0.0);
}

uint64_t llvm::Constant::isZeroValue(llvm::Constant *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (this && *(this + 16) == 17)
  {
    if (*(this + 4) == &llvm::semPPCDoubleDouble)
    {
      v5 = *(this + 5);
    }

    else
    {
      v5 = this + 24;
    }

    return (v5[28] & 7) == 3;
  }

  if ((*(*this + 8) & 0xFE) == 0x12)
  {
    SplatValue = llvm::Constant::getSplatValue(this, 0, a3, a4);
    if (SplatValue)
    {
      if (*(SplatValue + 16) == 17)
      {
        if (*(SplatValue + 32) == &llvm::semPPCDoubleDouble)
        {
          v5 = *(SplatValue + 40);
        }

        else
        {
          v5 = (SplatValue + 24);
        }

        return (v5[28] & 7) == 3;
      }
    }
  }

  return llvm::Constant::isNullValue(this);
}

BOOL llvm::Constant::isAllOnesValue(llvm::Constant *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  while (1)
  {
    v4 = *(this + 16);
    if (this)
    {
      if (v4 == 16)
      {
        break;
      }
    }

    if (this && v4 == 17)
    {
      llvm::APFloat::bitcastToAPInt(&v8, (this + 24));
      isAllOnes = llvm::APInt::isAllOnes(&v8);
      if (v9 >= 0x41 && v8)
      {
        MEMORY[0x277C69E10](v8, 0x1000C8000313F17);
      }

      return isAllOnes;
    }

    if ((*(*this + 8) & 0xFE) == 0x12)
    {
      this = llvm::Constant::getSplatValue(this, 0, a3, a4);
      if (this)
      {
        continue;
      }
    }

    return 0;
  }

  v6 = (this + 24);

  return llvm::APInt::isAllOnes(v6);
}

llvm::Value *llvm::Constant::getAggregateElement(llvm::Constant *this, llvm::Type *a2, uint64_t a3, BOOL a4)
{
  v4 = *(this + 16);
  if (this && (v4 - 11) >= 0xFDu)
  {
    v5 = *(this + 5) & 0x7FFFFFF;
    if (v5 > a2)
    {
      return *(this + 4 * a2 + -4 * v5);
    }

    return 0;
  }

  v7 = *this;
  v8 = *(*this + 8);
  if (this && v4 == 13)
  {
    if (v7 && v8 == 17)
    {
      v9 = *(v7 + 32);
    }

    else if (v7 && (v8 & 0xFE) == 0x12)
    {
      LODWORD(v9) = *(v7 + 32);
    }

    else
    {
      LODWORD(v9) = *(v7 + 12);
    }

    if (v9 > a2)
    {
      if (v8 == 17 || (v8 & 0xFE) == 18)
      {
        v13 = (v7 + 24);
      }

      else
      {
        v13 = (*(v7 + 16) + 8 * a2);
      }

      return llvm::Constant::getNullValue(*v13, a2, a3, a4);
    }

    return 0;
  }

  if (v8 == 19)
  {
    return 0;
  }

  if (v4 == 12)
  {
    if (v8 == 17 || (v8 & 0xFE) == 0x12)
    {
      v10 = *(v7 + 32);
    }

    else
    {
      v10 = *(v7 + 12);
    }

    if (v10 <= a2)
    {
      return 0;
    }

    if (v8 == 17 || (v8 & 0xFE) == 18)
    {
      v15 = (v7 + 24);
    }

    else
    {
      v15 = (*(v7 + 16) + 8 * a2);
    }

    return llvm::PoisonValue::get(*v15, a2);
  }

  else
  {
    if ((v4 - 11) > 1u)
    {
      if ((v4 & 0xFE) == 0xE && *(v7 + 32) > a2)
      {
        return llvm::ConstantDataSequential::getElementAsConstant(this, a2);
      }

      return 0;
    }

    if (v8 == 17 || (v8 & 0xFE) == 0x12)
    {
      v11 = *(v7 + 32);
    }

    else
    {
      v11 = *(v7 + 12);
    }

    if (v11 <= a2)
    {
      return 0;
    }

    if (v8 == 17 || (v8 & 0xFE) == 0x12)
    {
      v16 = (v7 + 24);
    }

    else
    {
      v16 = (*(v7 + 16) + 8 * a2);
    }

    return llvm::UndefValue::get(*v16, a2);
  }
}

llvm::ConstantFP **llvm::ConstantExpr::getICmp(llvm::ConstantExpr *this, llvm::Type *a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v4 = a4;
  v7 = this;
  v19[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldCompareInstruction(this, a2, a3, a4);
  if (!result && (v4 & 1) == 0)
  {
    v19[0] = a2;
    v19[1] = a3;
    v11 = ***a2;
    v12 = (v11 + 1920);
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      llvm::VectorType::get((v11 + 1920), (*(*a2 + 32) | (((~*(*a2 + 8) & 0x13) == 0) << 32)), v9);
      v12 = v13;
      v11 = ***a2;
    }

    LOWORD(v14) = 53;
    WORD1(v14) = v7;
    *(&v14 + 1) = v19;
    v15 = 2;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v11 + 1544, v12, &v14, v10);
  }

  return result;
}

uint64_t containsUndefinedElement(llvm::Constant *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = (*(*a1 + 8) & 0xFE) == 18;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  if ((a2(a3, a1) & 1) == 0)
  {
    if (*(a1 + 16) == 13)
    {
      return 0;
    }

    if (*(*a1 + 8) == 19)
    {
      return 0;
    }

    v11 = *(v3 + 32);
    if (!v11)
    {
      return 0;
    }

    v12 = 0;
    while (1)
    {
      AggregateElement = llvm::Constant::getAggregateElement(a1, v12, v9, v10);
      if (AggregateElement)
      {
        if (a2(a3, AggregateElement))
        {
          break;
        }
      }

      result = 0;
      v12 = (v12 + 1);
      if (v11 == v12)
      {
        return result;
      }
    }
  }

  return 1;
}

BOOL llvm::Constant::containsConstantExpression(llvm::Constant *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (*this)
  {
    v4 = *(*this + 8) == 18;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(*this + 32);
  if (!v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = v5 - 1;
  do
  {
    v9 = *(llvm::Constant::getAggregateElement(this, v7, a3, a4) + 16);
    result = v9 == 5;
    v11 = v9 == 5 || v8 == v7;
    v7 = (v7 + 1);
  }

  while (!v11);
  return result;
}

llvm::Value *llvm::Constant::getNullValue(llvm::Constant *this, llvm::Type *a2, uint64_t a3, BOOL a4)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 8);
  if (v4 > 0xC)
  {
    if (*(this + 8) <= 0xFu)
    {
      if (v4 == 13)
      {

        return llvm::ConstantInt::get(this, 0, 0);
      }

      else
      {

        return llvm::ConstantPointerNull::get(this);
      }
    }

    else if (v4 - 16 >= 4)
    {

      return llvm::ConstantTargetNone::get(this);
    }

    else
    {

      return llvm::ConstantAggregateZero::get(this, a2);
    }
  }

  else if (v4 >= 7)
  {
    v11 = *this;

    return llvm::ConstantTokenNone::get(v11);
  }

  else
  {
    v5 = *this;
    FltSemantics = llvm::Type::getFltSemantics(this);
    llvm::APFloat::Storage::Storage<>(v13, FltSemantics);
    llvm::APFloat::makeZero(v12, 0);
    v9 = llvm::ConstantFP::get(v5, v12, v7, v8);
    llvm::APFloat::Storage::~Storage(v13);
    return v9;
  }
}

llvm::Value *llvm::ConstantInt::get(llvm::ConstantInt *this, llvm::Type *a2, BOOL a3)
{
  v3 = this;
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    this = **(this + 2);
  }

  result = llvm::ConstantInt::get(this, a2, a3);
  v6 = result;
  if ((*(v3 + 2) & 0xFE) == 0x12)
  {
    v7 = *(v3 + 8) | (((~*(v3 + 2) & 0x13) == 0) << 32);

    return llvm::ConstantVector::getSplat(v7, v6, v5);
  }

  return result;
}

uint64_t llvm::ConstantFP::get(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = (llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::FindAndConstruct((*a1 + 240), a2, a3, a4) + 32);
  result = *v7;
  if (!*v7)
  {
    v10 = *(a2 + 8);
    v9 = (a2 + 8);
    v8 = v10;
    if (v10 == &llvm::semIEEEhalf)
    {
      v11 = *a1 + 1656;
    }

    else if (v8 == &llvm::semBFloat)
    {
      v11 = *a1 + 1680;
    }

    else if (v8 == &llvm::semIEEEsingle)
    {
      v11 = *a1 + 1704;
    }

    else if (v8 == &llvm::semIEEEdouble)
    {
      v11 = *a1 + 1728;
    }

    else if (v8 == &llvm::semX87DoubleExtended)
    {
      v11 = *a1 + 1800;
    }

    else if (v8 == &llvm::semIEEEquad)
    {
      v11 = *a1 + 1824;
    }

    else
    {
      v11 = *a1 + 1848;
    }

    v12 = operator new(0x38uLL);
    *v12 = v11;
    v12[1] = 0;
    v12[2] = 17;
    llvm::APFloat::Storage::Storage((v12 + 4), v9);
    std::unique_ptr<llvm::ConstantFP>::reset[abi:nn200100](v7, v12);
    return *v7;
  }

  return result;
}

llvm::Value *llvm::ConstantPointerNull::get(void **a1)
{
  v4 = a1;
  v2 = (llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**a1 + 1352), &v4) + 1);
  result = *v2;
  if (!*v2)
  {
    v3 = operator new(0x18uLL);
    *v3 = v4;
    *(v3 + 1) = 0;
    *(v3 + 2) = 19;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v2, v3);
    return *v2;
  }

  return result;
}

llvm::Value *llvm::ConstantAggregateZero::get(llvm::ConstantAggregateZero *this, llvm::Type *a2)
{
  v5 = this;
  v3 = (llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**this + 1256), &v5) + 1);
  result = *v3;
  if (!*v3)
  {
    v4 = operator new(0x18uLL);
    *v4 = v5;
    *(v4 + 1) = 0;
    *(v4 + 2) = 13;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v3, v4);
    return *v3;
  }

  return result;
}

llvm::Value *llvm::ConstantTokenNone::get(uint64_t *a1)
{
  v2 = *a1;
  result = *(*a1 + 2064);
  if (!result)
  {
    v4 = (v2 + 2064);
    v5 = operator new(0x18uLL);
    *v5 = *a1 + 1776;
    *(v5 + 1) = 0;
    *(v5 + 2) = 20;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v4, v5);
    return *v4;
  }

  return result;
}

llvm::Value *llvm::ConstantTargetNone::get(void **a1)
{
  v4 = a1;
  v2 = (llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**a1 + 1376), &v4) + 1);
  result = *v2;
  if (!*v2)
  {
    v3 = operator new(0x18uLL);
    *v3 = v4;
    *(v3 + 1) = 0;
    *(v3 + 2) = 18;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v2, v3);
    return *v2;
  }

  return result;
}

llvm::Value *llvm::ConstantInt::get(uint64_t **a1, llvm::APInt *this, uint64_t a3, unint64_t *a4)
{
  v6 = *a1;
  v7 = *(this + 2);
  if (v7 > 0x40)
  {
    v10 = llvm::APInt::countLeadingZerosSlowCase(this);
    if (v10 != v7)
    {
      if (v10 == v7 - 1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }

LABEL_6:
    v16 = v7;
    v8 = v6 + 21;
    v9 = &v16;
    goto LABEL_7;
  }

  if (!*this)
  {
    goto LABEL_6;
  }

  if (*this == 1)
  {
LABEL_4:
    v15 = v7;
    v8 = v6 + 24;
    v9 = &v15;
LABEL_7:
    v11 = (llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(v8, v9) + 2);
    goto LABEL_10;
  }

LABEL_9:
  v11 = (llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(v6 + 27, this, a3, a4) + 16);
LABEL_10:
  result = *v11;
  if (!*v11)
  {
    v13 = llvm::IntegerType::get(a1, *(this + 2));
    v14 = operator new(0x28uLL);
    *(v14 + 5) &= 0x38000000u;
    llvm::ConstantInt::ConstantInt(v14, v13, this);
    std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](v11, v14);
    return *v11;
  }

  return result;
}

llvm::Value *llvm::ConstantVector::getSplat(size_t a1, unsigned __int8 *a2, llvm::Constant *a3)
{
  v4 = a1;
  v25[32] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2[16] & 0xFE) == 0x10)
    {
      v5 = *(*a2 + 8);
      if (v5 < 4u || v5 == 13 && ((HIDWORD(v7) = (v5 >> 8) - 8, LODWORD(v7) = HIDWORD(v7), v6 = v7 >> 3, v8 = v6 > 7, v9 = (1 << v6) & 0x8B, !v8) ? (v10 = v9 == 0) : (v10 = 1), !v10))
      {

        return llvm::ConstantDataVector::getSplat(a1, a2, a3);
      }
    }

    v23 = v25;
    v24 = 0x2000000000;
    llvm::SmallVectorImpl<llvm::Constant *>::assign(&v23, a1, a2);
    ShuffleVector = llvm::ConstantVector::get(v23, v24, v15);
    v17 = v23;
    if (v23 == v25)
    {
      return ShuffleVector;
    }

LABEL_17:
    free(v17);
    return ShuffleVector;
  }

  llvm::VectorType::get(*a2, a1, a3);
  v13 = v12;
  if (llvm::Constant::isNullValue(a2))
  {

    return llvm::ConstantAggregateZero::get(v13, v14);
  }

  else
  {
    if (a2[16] - 11 > 1)
    {
      v18 = **v13;
      v19 = llvm::PoisonValue::get(v13, v14);
      v20 = llvm::ConstantInt::get((v18 + 2016), 0, 0);
      InsertElement = llvm::ConstantExpr::getInsertElement(v19, a2, v20, 0, v21);
      v23 = v25;
      v24 = 0x800000000;
      llvm::SmallVectorImpl<int>::assign(&v23, v4, 0);
      ShuffleVector = llvm::ConstantExpr::getShuffleVector(InsertElement, v19, v23, v24, 0);
      v17 = v23;
      if (v23 == v25)
      {
        return ShuffleVector;
      }

      goto LABEL_17;
    }

    return llvm::UndefValue::get(v13, v14);
  }
}

uint64_t llvm::Constant::getAllOnesValue(llvm::Constant *this, llvm::Type *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  v4 = v3;
  if (this && v3 == 13)
  {
    v5 = *this;
    llvm::APInt::APInt(&v20, v3 >> 8, -1, 1);
    v8 = llvm::ConstantInt::get(v5, &v20, v6, v7);
    if (v21[0] >= 0x41)
    {
      if (v20)
      {
        MEMORY[0x277C69E10](v20, 0x1000C8000313F17);
      }
    }

    return v8;
  }

  v9 = v3 < 4u || v3 == 5;
  v10 = v3 & 0xFD;
  if (v9 || v10 == 4)
  {
    FltSemantics = llvm::Type::getFltSemantics(this);
    llvm::APFloat::getAllOnesValue(FltSemantics, &v20);
    v8 = llvm::ConstantFP::get(*this, &v20, v13, v14);
    llvm::APFloat::Storage::~Storage(v21);
    return v8;
  }

  v16 = *(this + 8);
  v17 = v4 == 19;
  AllOnesValue = llvm::Constant::getAllOnesValue(*(this + 3), a2);

  return llvm::ConstantVector::getSplat(v16 | (v17 << 32), AllOnesValue, v19);
}

uint64_t llvm::ConstantDataSequential::getElementAsConstant(llvm::ConstantDataSequential *this, unsigned int a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = *(*this + 24);
  if ((*(v2 + 8) & 0xFC) != 0)
  {
    ElementAsInteger = llvm::ConstantDataSequential::getElementAsInteger(this, a2);

    return llvm::ConstantInt::get(v2, ElementAsInteger, 0);
  }

  else
  {
    v5 = **this;
    llvm::ConstantDataSequential::getElementAsAPFloat(&v9, this, a2);
    v8 = llvm::ConstantFP::get(v5, &v9, v6, v7);
    llvm::APFloat::Storage::~Storage(v10);
    return v8;
  }
}

llvm::Value *llvm::Constant::getAggregateElement(llvm::Constant *this, llvm::Constant *a2, uint64_t a3, BOOL a4)
{
  if (!a2 || *(a2 + 16) != 16)
  {
    return 0;
  }

  v5 = (a2 + 24);
  v6 = *(a2 + 8);
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) > 0x40)
    {
      return 0;
    }

    v5 = *v5;
  }

  v8 = *v5;

  return llvm::Constant::getAggregateElement(this, v8, a3, a4);
}

void llvm::Constant::destroyConstant(int32x2_t ****this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  switch(*(this + 16))
  {
    case 5:
      llvm::ConstantUniqueMap<llvm::ConstantExpr>::remove(***this + 193, this, a3, a4);
      goto LABEL_18;
    case 6:
      v17[0] = *(this - 4);
      llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(***v17[0] + 1496, v17);
      goto LABEL_18;
    case 7:
      v17[0] = *(this - 4);
      llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(***v17[0] + 1520, v17);
      goto LABEL_18;
    case 8:
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(***this + 160, this, a3, a4);
      goto LABEL_18;
    case 9:
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(***this + 163, this, a3, a4);
      goto LABEL_18;
    case 0xA:
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(***this + 166, this, a3, a4);
      goto LABEL_18;
    case 0xB:
      llvm::UndefValue::destroyConstantImpl(this);
    case 0xC:
      v10 = ***this;
      v17[0] = *this;
      llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(&v10[178], v17);
      goto LABEL_18;
    case 0xD:
      v8 = ***this;
      v16 = *this;
      v17[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v8[157], &v16, v17))
      {
        v9 = v17[0];
        std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100]((v17[0] + 8), 0);
        *v9 = -8192;
        v8[158] = vadd_s32(v8[158], 0x1FFFFFFFFLL);
      }

      goto LABEL_18;
    case 0xE:
    case 0xF:
      llvm::ConstantDataSequential::destroyConstantImpl(this);
      goto LABEL_18;
    case 0x10:
    case 0x11:
      __break(1u);
      return;
    case 0x12:
      v13 = ***this;
      v16 = *this;
      v17[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v13[172], &v16, v17))
      {
        v14 = v17[0];
        std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100]((v17[0] + 8), 0);
        *v14 = -8192;
        v13[173] = vadd_s32(v13[173], 0x1FFFFFFFFLL);
      }

      goto LABEL_18;
    case 0x13:
      v6 = ***this;
      v16 = *this;
      v17[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(&v6[169], &v16, v17))
      {
        v7 = v17[0];
        std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100]((v17[0] + 8), 0);
        *v7 = -8192;
        v6[170] = vadd_s32(v6[170], 0x1FFFFFFFFLL);
      }

      goto LABEL_18;
    default:
      v11 = ****(this - 8);
      v12 = *(this - 4);
      v17[0] = *(this - 8);
      v17[1] = v12;
      llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::erase(v11 + 184, v17);
      *(*(this - 4) + 9) = *(*(this - 4) + 9) & 0x8000 | (*(*(this - 4) + 9) - 1) & 0x7FFF;
LABEL_18:
      while (1)
      {
        v15 = this[1];
        if (!v15)
        {
          break;
        }

        llvm::Constant::destroyConstant(v15[3]);
      }

      llvm::deleteConstant(this, v5);
      return;
  }
}

void llvm::UndefValue::destroyConstantImpl(uint64_t ***this)
{
  if (*(this + 16) == 11)
  {
    v1 = ***this;
    v3 = *this;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(v1 + 1400, &v3);
    __break(1u);
  }

  v2 = ***this;
  v3 = *this;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(v2 + 1424, &v3);
  __break(1u);
}

void llvm::ConstantDataSequential::destroyConstantImpl(llvm::Value **this)
{
  v2 = ***this;
  RawDataValues = llvm::ConstantDataSequential::getRawDataValues(this);
  Key = llvm::StringMapImpl::FindKey((v2 + 1448), RawDataValues, v4);
  v6 = *(v2 + 1448);
  if (Key == -1)
  {
    v7 = *(v2 + 1456);
  }

  else
  {
    v7 = Key;
  }

  v8 = *(v6 + 8 * v7);
  v10 = *(v8 + 8);
  v9 = (v8 + 8);
  if (!*(v10 + 32))
  {
    llvm::StringMapImpl::RemoveKey(***this + 1448, (*(v6 + 8 * v7) + *(***this + 1468)), **(v6 + 8 * v7));
    std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v9, 0);

    JUMPOUT(0x277C69E30);
  }

  do
  {
    v11 = v9;
    v12 = *v9;
    v9 = (*v9 + 4);
  }

  while (v12 != this);
  v13 = *v9;
  *v9 = 0;

  std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v11, v13);
}

void llvm::deleteConstant(llvm::Value ***this, llvm::Constant *a2)
{
  switch(*(this + 16))
  {
    case 5:
      v4 = *(this + 9);
      if ((v4 - 38) <= 0xC || (v4 - 13) <= 0x11 || v4 != 63)
      {
        goto LABEL_2;
      }

      llvm::ShuffleVectorConstantExpr::~ShuffleVectorConstantExpr(this, a2);
      goto LABEL_3;
    case 0xE:
    case 0xF:
      std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](this + 4, 0);
      goto LABEL_2;
    case 0x10:
      if (*(this + 8) >= 0x41u)
      {
        v3 = this[3];
        if (v3)
        {
          MEMORY[0x277C69E10](v3, 0x1000C8000313F17);
        }
      }

      goto LABEL_2;
    case 0x11:
      llvm::APFloat::Storage::~Storage((this + 4));
      goto LABEL_2;
    case 0x12:
      __break(1u);
      return;
    default:
LABEL_2:
      llvm::Value::~Value(this, a2);
LABEL_3:

      llvm::User::operator delete(this);
      return;
  }
}

BOOL llvm::Constant::isConstantUsed(llvm::Constant *this)
{
  do
  {
    this = *(this + 1);
    if (!this)
    {
      break;
    }

    v2 = *(this + 3);
    v3 = v2 && v2[16] - 21 >= 0xFFFFFFEF;
  }

  while (v3 && !llvm::Constant::isConstantUsed(v2));
  return this != 0;
}

uint64_t llvm::Constant::removeDeadConstantUsers(uint64_t this)
{
  v1 = (this + 8);
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 24);
      if (this)
      {
        v4 = *(this + 16) >= 0x15u;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        v5 = (v2 + 8);
      }

      else
      {
        this = constantIsDead(this, 1);
        v5 = (v3 + 8);
        if (!v3)
        {
          v5 = v1;
        }

        if (this)
        {
          v2 = v3;
        }

        else
        {
          v5 = (v2 + 8);
        }
      }

      v3 = v2;
      v2 = *v5;
    }

    while (*v5);
  }

  return this;
}

uint64_t constantIsDead(const llvm::Constant *a1, const llvm::Constant *a2)
{
  if (*(a1 + 16) < 4u)
  {
    return 0;
  }

  v5 = a1 + 8;
  v6 = *(a1 + 1);
  if (v6)
  {
    while (1)
    {
      v7 = *(v6 + 24);
      if (!v7 || v7[16] > 0x14u)
      {
        return 0;
      }

      result = constantIsDead(v7, a2);
      if (!result)
      {
        return result;
      }

      v9 = (v6 + 8);
      if (a2)
      {
        v9 = v5;
      }

      v6 = *v9;
      if (!*v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (a2)
    {
      llvm::ReplaceableMetadataImpl::SalvageDebugInfo(a1, a2);
      llvm::Constant::destroyConstant(a1, v10, v11, v12);
    }

    return 1;
  }
}

llvm::Value *llvm::ConstantVector::get(uint64_t ****a1, llvm::Type *a2, unsigned int a3)
{
  result = llvm::ConstantVector::getImpl(a1, a2, a3);
  if (!result)
  {
    llvm::FixedVectorType::get(**a1, a2);
    v7 = v6;
    v8 = **v6 + 1328;

    return llvm::ConstantUniqueMap<llvm::ConstantVector>::getOrCreate(v8, v7, a1, a2);
  }

  return result;
}

llvm::Value *llvm::UndefValue::get(llvm::UndefValue *this, llvm::Type *a2)
{
  v5 = this;
  v3 = (llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**this + 1400), &v5) + 1);
  result = *v3;
  if (!*v3)
  {
    v4 = operator new(0x18uLL);
    *v4 = v5;
    *(v4 + 1) = 0;
    *(v4 + 2) = 11;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v3, v4);
    return *v3;
  }

  return result;
}

uint64_t llvm::ConstantInt::ConstantInt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v3 = *(a1 + 20) & 0xC0000000;
  *(a1 + 16) = 16;
  *(a1 + 20) = v3;
  v4 = *(a3 + 8);
  *(a1 + 32) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *(a1 + 24) = *a3;
  return a1;
}

llvm::Value *llvm::ConstantInt::get(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = *a1;
  llvm::APInt::APInt(&v8, *(a1 + 8) >> 8, a2, a3);
  v6 = llvm::ConstantInt::get(v3, &v8, v4, v5);
  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x277C69E10](v8, 0x1000C8000313F17);
  }

  return v6;
}

void std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](llvm::Value **a1, llvm::Value *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(v2 + 8) >= 0x41u)
    {
      v3 = *(v2 + 3);
      if (v3)
      {
        MEMORY[0x277C69E10](v3, 0x1000C8000313F17);
      }
    }

    llvm::Value::~Value(v2, a2);

    llvm::User::operator delete(v4);
  }
}

llvm::Value *llvm::ConstantInt::get(llvm::IntegerType **this, llvm::Type *a2, const llvm::APInt *a3, unint64_t *a4)
{
  result = llvm::ConstantInt::get(*this, a2, a3, a4);
  v7 = result;
  if ((this[1] & 0xFE) == 0x12)
  {
    v8 = *(this + 8) | (((~*(this + 2) & 0x13) == 0) << 32);

    return llvm::ConstantVector::getSplat(v8, v7, v6);
  }

  return result;
}

unsigned __int8 *llvm::ConstantFP::get(llvm::Type ***this, llvm::Type *a2, double a3)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = *this;
  llvm::APFloat::APFloat(v13, a3);
  v5 = this;
  if ((this[1] & 0xFE) == 0x12)
  {
    v5 = *this[2];
  }

  FltSemantics = llvm::Type::getFltSemantics(v5);
  llvm::APFloat::convert(v13, FltSemantics, 1, &v12);
  Splat = llvm::ConstantFP::get(v4, v13, v7, v8);
  if ((this[1] & 0xFE) == 0x12)
  {
    Splat = llvm::ConstantVector::getSplat(*(this + 8) | (((~*(this + 2) & 0x13) == 0) << 32), Splat, v9);
  }

  llvm::APFloat::Storage::~Storage(v14);
  return Splat;
}

unsigned __int8 *llvm::ConstantFP::getNaN(llvm::ConstantFP *this, llvm::Type *a2, uint64_t a3)
{
  v4 = a2;
  v5 = this;
  v13[3] = *MEMORY[0x277D85DE8];
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    this = **(this + 2);
  }

  FltSemantics = llvm::Type::getFltSemantics(this);
  llvm::APFloat::getNaN(FltSemantics, v4, a3, v12);
  Splat = llvm::ConstantFP::get(*v5, v12, v7, v8);
  if ((*(v5 + 2) & 0xFE) == 0x12)
  {
    Splat = llvm::ConstantVector::getSplat(*(v5 + 8) | (((~*(v5 + 2) & 0x13) == 0) << 32), Splat, v9);
  }

  llvm::APFloat::Storage::~Storage(v13);
  return Splat;
}

unsigned __int8 *llvm::ConstantFP::getZero(llvm::ConstantFP *this, llvm::Type *a2)
{
  v2 = a2;
  v3 = this;
  v11[3] = *MEMORY[0x277D85DE8];
  if ((*(this + 2) & 0xFE) == 0x12)
  {
    this = **(this + 2);
  }

  FltSemantics = llvm::Type::getFltSemantics(this);
  llvm::APFloat::Storage::Storage<>(v11, FltSemantics);
  llvm::APFloat::makeZero(v10, v2);
  Splat = llvm::ConstantFP::get(*v3, v10, v5, v6);
  if ((*(v3 + 2) & 0xFE) == 0x12)
  {
    Splat = llvm::ConstantVector::getSplat(*(v3 + 8) | (((~*(v3 + 2) & 0x13) == 0) << 32), Splat, v7);
  }

  llvm::APFloat::Storage::~Storage(v11);
  return Splat;
}

void std::unique_ptr<llvm::ConstantFP>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    llvm::APFloat::Storage::~Storage((v2 + 32));
    llvm::Value::~Value(v2, v3);

    llvm::User::operator delete(v4);
  }
}

llvm::Value *llvm::PoisonValue::get(llvm::PoisonValue *this, llvm::Type *a2)
{
  v5 = this;
  v3 = (llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>,llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::ConstantAggregateZero>>>::FindAndConstruct((**this + 1424), &v5) + 1);
  result = *v3;
  if (!*v3)
  {
    v4 = operator new(0x18uLL);
    *v4 = v5;
    *(v4 + 1) = 0;
    *(v4 + 2) = 12;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](v3, v4);
    return *v3;
  }

  return result;
}

llvm::Value *llvm::ConstantArray::get(llvm::PoisonValue *a1, unsigned __int8 **a2, unint64_t *a3)
{
  result = llvm::ConstantArray::getImpl(a1, a2, a3);
  if (!result)
  {
    v7 = **a1 + 1280;

    return llvm::ConstantUniqueMap<llvm::ConstantArray>::getOrCreate(v7, a1, a2, a3);
  }

  return result;
}

llvm::Value *llvm::ConstantArray::getImpl(llvm::PoisonValue *this, unsigned __int8 **a2, uint64_t a3)
{
  v71[15] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
    v7 = (*a2)[16];
    if (v7 == 12)
    {
      v8 = 8 * a3;
      for (i = a2; *i == v6; i = (i + 8))
      {
        v8 -= 8;
        if (!v8)
        {

          return llvm::PoisonValue::get(this, a2);
        }
      }
    }

    if ((v7 - 11) <= 1)
    {
      v11 = 8 * a3;
      for (j = a2; *j == v6; j = (j + 8))
      {
        v11 -= 8;
        if (!v11)
        {

          return llvm::UndefValue::get(this, a2);
        }
      }
    }

    if (llvm::Constant::isNullValue(*a2))
    {
      v14 = 8 * a3;
      v15 = a2;
      while (*v15 == v6)
      {
        v15 = (v15 + 8);
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_20;
        }
      }
    }

    v16 = *(*v6 + 8);
    v17 = v16;
    if (v16 >= 4u)
    {
      if (v16 != 13)
      {
        return 0;
      }

      HIDWORD(v19) = (v16 >> 8) - 8;
      LODWORD(v19) = HIDWORD(v19);
      v18 = v19 >> 3;
      v20 = v18 > 7;
      v21 = (1 << v18) & 0x8B;
      if (v20 || v21 == 0)
      {
        return 0;
      }
    }

    v23 = v6[16];
    if (v23 != 17)
    {
      if (v23 == 16)
      {
        v24 = v16 >> 8;
        if (v17 == 13 && v24 == 8)
        {
          v35 = 0;
          v28 = v71;
          v69 = v71;
          *v70 = xmmword_2750C3D00;
          v36 = 8 * a3;
          while (1)
          {
            v37 = a2[v35 / 8];
            if (!v37 || v37[16] != 16)
            {
              break;
            }

            v39 = (v37 + 24);
            if (*(v37 + 8) >= 0x41u)
            {
              v39 = *v39;
            }

            llvm::SmallVectorTemplateBase<char,true>::push_back(&v69, *v39);
            v35 += 8;
            if (v36 == v35)
            {
              Impl = llvm::ConstantDataArray::get<unsigned char>(***a2, v69, v70[0]);
              goto LABEL_101;
            }
          }
        }

        else
        {
          if (v17 != 13 || v24 != 16)
          {
            if (v17 == 13 && v24 == 32)
            {
              v27 = 0;
              v28 = &v70[1];
              v69 = &v70[1];
              v70[0] = 0x1000000000;
              v29 = 8 * a3;
              while (1)
              {
                v30 = a2[v27 / 8];
                if (!v30 || v30[16] != 16)
                {
                  goto LABEL_114;
                }

                v32 = (v30 + 24);
                if (*(v30 + 8) >= 0x41u)
                {
                  v32 = *v32;
                }

                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v69, *v32);
                v27 += 8;
                if (v29 == v27)
                {
                  Impl = llvm::ConstantDataArray::get<unsigned int>(***a2, v69, LODWORD(v70[0]));
                  goto LABEL_101;
                }
              }
            }

            v34 = 0;
            if (v17 == 13 && v24 == 64)
            {
              v62 = 0;
              v28 = &v70[1];
              v69 = &v70[1];
              v70[0] = 0x1000000000;
              v63 = 8 * a3;
              while (1)
              {
                v64 = a2[v62 / 8];
                if (!v64 || v64[16] != 16)
                {
                  goto LABEL_114;
                }

                v66 = (v64 + 24);
                if (*(v64 + 8) >= 0x41u)
                {
                  v66 = *v66;
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v69, *v66);
                v62 += 8;
                if (v63 == v62)
                {
                  Impl = llvm::ConstantDataArray::get<unsigned long long>(***a2, v69, LODWORD(v70[0]));
                  goto LABEL_101;
                }
              }
            }

            return v34;
          }

          v50 = 0;
          v28 = v71;
          v69 = v71;
          *v70 = xmmword_2750C3D00;
          v51 = 8 * a3;
          while (1)
          {
            v52 = a2[v50 / 8];
            if (!v52 || v52[16] != 16)
            {
              break;
            }

            v54 = (v52 + 24);
            if (*(v52 + 8) >= 0x41u)
            {
              v54 = *v54;
            }

            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v69, *v54);
            v50 += 8;
            if (v51 == v50)
            {
              Impl = llvm::ConstantDataArray::get<unsigned short>(***a2, v69, v70[0]);
              goto LABEL_101;
            }
          }
        }

LABEL_114:
        v34 = 0;
LABEL_115:
        if (v69 != v28)
        {
          free(v69);
        }

        return v34;
      }

      return 0;
    }

    if (v16 < 2u)
    {
      v40 = 0;
      v28 = v71;
      v69 = v71;
      *v70 = xmmword_2750C3D00;
      v41 = 8 * a3;
      while (1)
      {
        v42 = a2[v40 / 8];
        if (!v42 || v42[16] != 17)
        {
          goto LABEL_114;
        }

        llvm::APFloat::bitcastToAPInt(&v67, (v42 + 24));
        LimitedValue = llvm::APInt::getLimitedValue(&v67, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v69, LimitedValue);
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x277C69E10](v67, 0x1000C8000313F17);
        }

        v40 += 8;
        if (v41 == v40)
        {
          v45 = v69;
          v46 = v70[0];
          llvm::ArrayType::get(**a2, v70[0]);
          v48 = v47;
          v49 = (2 * v46);
LABEL_100:
          Impl = llvm::ConstantDataSequential::getImpl(v45, v49, v48);
LABEL_101:
          v34 = Impl;
          goto LABEL_115;
        }
      }
    }

    if (v16 == 2)
    {
      v55 = 0;
      v28 = &v70[1];
      v69 = &v70[1];
      v70[0] = 0x1000000000;
      v56 = 8 * a3;
      while (1)
      {
        v57 = a2[v55 / 8];
        if (!v57 || v57[16] != 17)
        {
          goto LABEL_114;
        }

        llvm::APFloat::bitcastToAPInt(&v67, (v57 + 24));
        v59 = llvm::APInt::getLimitedValue(&v67, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v69, v59);
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x277C69E10](v67, 0x1000C8000313F17);
        }

        v55 += 8;
        if (v56 == v55)
        {
          v45 = v69;
          v60 = LODWORD(v70[0]);
          llvm::ArrayType::get(**a2, LODWORD(v70[0]));
          v48 = v61;
          v49 = (4 * v60);
          goto LABEL_100;
        }
      }
    }

    if (v16 != 3)
    {
      return 0;
    }

    return getFPSequenceIfElementsMatch<llvm::ConstantDataArray,unsigned long long>(a2, a3, v13);
  }

  else
  {
LABEL_20:

    return llvm::ConstantAggregateZero::get(this, a2);
  }
}

void *llvm::ConstantUniqueMap<llvm::ConstantArray>::getOrCreate(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v12, a2, a3, a4);
  v10 = v12;
  v11 = v13;
  v14 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, &HashValue, &v14) || v14 == (*a1 + 8 * *(a1 + 16)))
  {
    return llvm::ConstantUniqueMap<llvm::ConstantArray>::create(a1, a2, a3, a4, &HashValue);
  }

  else
  {
    return *v14;
  }
}

llvm::Value *llvm::ConstantStruct::get(llvm::ConstantAggregateZero *this, llvm::Type *a2, unint64_t *a3)
{
  if (!a3)
  {
LABEL_9:

    return llvm::ConstantAggregateZero::get(this, a2);
  }

  v6 = *(*a2 + 16);
  isNullValue = llvm::Constant::isNullValue(*a2);
  v8 = (v6 - 11) < 2;
  if ((v6 - 11) >= 2 && isNullValue == 0)
  {
    goto LABEL_20;
  }

  v10 = isNullValue;
  v11 = v6 == 12;
  v12 = 8 * a3;
  v13 = a2;
  do
  {
    v14 = *v13++;
    v10 &= llvm::Constant::isNullValue(v14);
    v15 = v14[16];
    v16 = v15 == 12;
    v11 &= v16;
    v8 &= v16 ^ ((v15 - 11) < 2);
    v12 -= 8;
  }

  while (v12);
  if (v10)
  {
    goto LABEL_9;
  }

  if (v11)
  {

    return llvm::PoisonValue::get(this, a2);
  }

  if (!v8)
  {
LABEL_20:
    v18 = **this + 1304;

    return llvm::ConstantUniqueMap<llvm::ConstantStruct>::getOrCreate(v18, this, a2, a3);
  }

  else
  {

    return llvm::UndefValue::get(this, a2);
  }
}

void *llvm::ConstantUniqueMap<llvm::ConstantStruct>::getOrCreate(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v12, a2, a3, a4);
  v10 = v12;
  v11 = v13;
  v14 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, &HashValue, &v14) || v14 == (*a1 + 8 * *(a1 + 16)))
  {
    return llvm::ConstantUniqueMap<llvm::ConstantStruct>::create(a1, a2, a3, a4, &HashValue);
  }

  else
  {
    return *v14;
  }
}

llvm::Value *llvm::ConstantVector::getImpl(uint64_t ****a1, llvm::Type *a2, unsigned int a3)
{
  v3 = a2;
  v75[15] = *MEMORY[0x277D85DE8];
  llvm::FixedVectorType::get(**a1, a2);
  v6 = v5;
  v7 = *a1;
  isNullValue = llvm::Constant::isNullValue(*a1);
  v11 = *(v7 + 16);
  if ((v11 - 11) < 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = isNullValue;
  }

  if (v3 == 1 || !v12)
  {
LABEL_9:
    if (isNullValue)
    {

      return llvm::ConstantAggregateZero::get(v6, v9);
    }

    if (v11 == 12)
    {

      return llvm::PoisonValue::get(v6, v9);
    }

    if ((v11 - 11) <= 1)
    {

      return llvm::UndefValue::get(v6, v9);
    }
  }

  else
  {
    v13 = 1;
    while (a1[v13] == v7)
    {
      if (v3 == ++v13)
      {
        goto LABEL_9;
      }
    }
  }

  v15 = *(*v7 + 2);
  if (v15 >= 4u)
  {
    if (v15 != 13)
    {
      return 0;
    }

    HIDWORD(v17) = (v15 >> 8) - 8;
    LODWORD(v17) = HIDWORD(v17);
    v16 = v17 >> 3;
    v18 = v16 > 7;
    v19 = (1 << v16) & 0x8B;
    if (v18 || v19 == 0)
    {
      return 0;
    }
  }

  if (v11 != 17)
  {
    if (v11 == 16)
    {
      v21 = v15 >> 8;
      if (v15 != 13 || v21 != 8)
      {
        if (v15 == 13 && v21 == 16)
        {
          v24 = v75;
          v73 = v75;
          *v74 = xmmword_2750C3D00;
          if (v3)
          {
            v45 = 8 * v3;
            v46 = a1;
            while (1)
            {
              v47 = *v46;
              if (!*v46 || *(*v46 + 16) != 16)
              {
                goto LABEL_120;
              }

              v49 = (v47 + 3);
              if (*(v47 + 8) >= 0x41u)
              {
                v49 = *v49;
              }

              llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v73, *v49);
              ++v46;
              v45 -= 8;
              if (!v45)
              {
                v50 = v73;
                v51 = v74[0];
                goto LABEL_122;
              }
            }
          }

          v51 = 0;
          v50 = v75;
LABEL_122:
          Impl = llvm::ConstantDataVector::get(***a1, v50, v51);
          goto LABEL_127;
        }

        if (v15 == 13 && v21 == 32)
        {
          v24 = &v74[1];
          v73 = &v74[1];
          v74[0] = 0x1000000000;
          if (v3)
          {
            v25 = 8 * v3;
            v26 = a1;
            while (1)
            {
              v27 = *v26;
              if (!*v26 || *(*v26 + 16) != 16)
              {
                break;
              }

              v29 = (v27 + 3);
              if (*(v27 + 8) >= 0x41u)
              {
                v29 = *v29;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v73, *v29);
              ++v26;
              v25 -= 8;
              if (!v25)
              {
                v30 = v73;
                v31 = LODWORD(v74[0]);
                goto LABEL_132;
              }
            }

LABEL_120:
            v32 = 0;
            goto LABEL_128;
          }

          v31 = 0;
          v30 = &v74[1];
LABEL_132:
          Impl = llvm::ConstantDataVector::get(***a1, v30, v31);
          goto LABEL_127;
        }

        v32 = 0;
        if (v15 == 13 && v21 == 64)
        {
          v24 = &v74[1];
          v73 = &v74[1];
          v74[0] = 0x1000000000;
          if (v3)
          {
            v62 = 8 * v3;
            v63 = a1;
            while (1)
            {
              v64 = *v63;
              if (!*v63 || *(*v63 + 16) != 16)
              {
                goto LABEL_120;
              }

              v66 = (v64 + 3);
              if (*(v64 + 8) >= 0x41u)
              {
                v66 = *v66;
              }

              llvm::SmallVectorTemplateBase<void *,true>::push_back(&v73, *v66);
              ++v63;
              v62 -= 8;
              if (!v62)
              {
                v67 = v73;
                v68 = LODWORD(v74[0]);
                goto LABEL_134;
              }
            }
          }

          v68 = 0;
          v67 = &v74[1];
LABEL_134:
          Impl = llvm::ConstantDataVector::get(***a1, v67, v68);
LABEL_127:
          v32 = Impl;
LABEL_128:
          if (v73 != v24)
          {
            free(v73);
          }
        }

        return v32;
      }

      v24 = v75;
      v73 = v75;
      *v74 = xmmword_2750C3D00;
      if (v3)
      {
        v33 = 8 * v3;
        v34 = a1;
        while (1)
        {
          v35 = *v34;
          if (!*v34 || *(*v34 + 16) != 16)
          {
            goto LABEL_120;
          }

          v37 = (v35 + 3);
          if (*(v35 + 8) >= 0x41u)
          {
            v37 = *v37;
          }

          llvm::SmallVectorTemplateBase<char,true>::push_back(&v73, *v37);
          ++v34;
          v33 -= 8;
          if (!v33)
          {
            v38 = v73;
            v3 = v74[0];
            goto LABEL_104;
          }
        }
      }

      v38 = v75;
LABEL_104:
      llvm::FixedVectorType::get((****a1 + 1944), v3);
      v58 = v57;
      v59 = v38;
      v60 = v3;
LABEL_126:
      Impl = llvm::ConstantDataSequential::getImpl(v59, v60, v58);
      goto LABEL_127;
    }

    return 0;
  }

  if (v15 < 2u)
  {
    v24 = v75;
    v73 = v75;
    *v74 = xmmword_2750C3D00;
    if (v3)
    {
      v39 = 8 * v3;
      v40 = a1;
      while (*v40 && *(*v40 + 16) == 17)
      {
        llvm::APFloat::bitcastToAPInt(&v71, (*v40 + 3));
        LimitedValue = llvm::APInt::getLimitedValue(&v71, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(&v73, LimitedValue);
        if (v72 >= 0x41 && v71)
        {
          MEMORY[0x277C69E10](v71, 0x1000C8000313F17);
        }

        ++v40;
        v39 -= 8;
        if (!v39)
        {
          v43 = v73;
          v44 = v74[0];
          goto LABEL_106;
        }
      }

      goto LABEL_120;
    }

    v44 = 0;
    v43 = v75;
LABEL_106:
    llvm::FixedVectorType::get(**a1, v44);
    v58 = v61;
    v60 = (2 * v44);
LABEL_125:
    v59 = v43;
    goto LABEL_126;
  }

  if (v15 == 2)
  {
    v24 = &v74[1];
    v73 = &v74[1];
    v74[0] = 0x1000000000;
    if (v3)
    {
      v52 = 8 * v3;
      v53 = a1;
      while (*v53 && *(*v53 + 16) == 17)
      {
        llvm::APFloat::bitcastToAPInt(&v71, (*v53 + 3));
        v55 = llvm::APInt::getLimitedValue(&v71, 0xFFFFFFFFFFFFFFFFLL);
        llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v73, v55);
        if (v72 >= 0x41 && v71)
        {
          MEMORY[0x277C69E10](v71, 0x1000C8000313F17);
        }

        ++v53;
        v52 -= 8;
        if (!v52)
        {
          v43 = v73;
          v56 = LODWORD(v74[0]);
          goto LABEL_124;
        }
      }

      goto LABEL_120;
    }

    v56 = 0;
    v43 = &v74[1];
LABEL_124:
    llvm::FixedVectorType::get(**a1, v56);
    v58 = v70;
    v60 = (4 * v56);
    goto LABEL_125;
  }

  if (v15 != 3)
  {
    return 0;
  }

  return getFPSequenceIfElementsMatch<llvm::ConstantDataVector,unsigned long long>(a1, v3, v10);
}

void *llvm::ConstantUniqueMap<llvm::ConstantVector>::getOrCreate(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v12, a2, a3, a4);
  v10 = v12;
  v11 = v13;
  v14 = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, &HashValue, &v14) || v14 == (*a1 + 8 * *(a1 + 16)))
  {
    return llvm::ConstantUniqueMap<llvm::ConstantVector>::create(a1, a2, a3, a4, &HashValue);
  }

  else
  {
    return *v14;
  }
}

llvm::Value *llvm::ConstantDataVector::getSplat(llvm::Type *__len, unsigned __int8 *a2, llvm::Constant *a3)
{
  v49[15] = *MEMORY[0x277D85DE8];
  v5 = a2[16];
  if (a2 && v5 == 16)
  {
    v6 = *a2;
    v7 = *(*a2 + 8);
    v8 = *(*a2 + 8) >> 8;
    if (v7 == 13 && v8 == 8)
    {
      v23 = a2 + 24;
      if (*(a2 + 8) >= 0x41u)
      {
        v23 = *v23;
      }

      v24 = *v23;
      __b = v49;
      v48[1] = 16;
      if (__len < 0x11)
      {
        if (__len)
        {
          memset(v49, v24, __len);
        }

        v25 = v49;
      }

      else
      {
        v48[0] = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&__b, v49, __len, 1);
        memset(__b, v24, __len);
        v6 = *a2;
        v25 = __b;
      }

      v48[0] = __len;
      llvm::FixedVectorType::get((**v6 + 1944), __len);
      Impl = llvm::ConstantDataSequential::getImpl(v25, __len, v36);
      v38 = __b;
      if (__b == v49)
      {
        return Impl;
      }

      goto LABEL_57;
    }

    v10 = a2 + 24;
    if (v7 != 13 || v8 != 16)
    {
      if (v7 == 13 && v8 == 32)
      {
        if (*(a2 + 8) >= 0x41u)
        {
          v10 = *v10;
        }

        v12 = *v10;
        v13 = &v48[1];
        __b = &v48[1];
        v48[0] = 0x1000000000;
        llvm::SmallVectorImpl<int>::assign(&__b, __len, v12);
        v14 = **a2;
        v15 = __b;
        v16 = LODWORD(v48[0]);
        v17 = (*v14 + 1992);
LABEL_55:
        llvm::FixedVectorType::get(v17, v16);
        v34 = v44;
        v35 = (4 * v16);
LABEL_56:
        Impl = llvm::ConstantDataSequential::getImpl(v15, v35, v34);
        v38 = __b;
        if (__b == v13)
        {
          return Impl;
        }

LABEL_57:
        free(v38);
        return Impl;
      }

      if (*(a2 + 8) >= 0x41u)
      {
        v10 = *v10;
      }

      v39 = *v10;
      v13 = &v48[1];
      __b = &v48[1];
      v48[0] = 0x1000000000;
      llvm::SmallVectorImpl<unsigned long long>::assign(&__b, __len, v39);
      v40 = **a2;
      v15 = __b;
      v29 = LODWORD(v48[0]);
      v28 = (*v40 + 2016);
LABEL_50:
      llvm::FixedVectorType::get(v28, v29);
      v34 = v41;
      v35 = (8 * v29);
      goto LABEL_56;
    }

    if (*(a2 + 8) >= 0x41u)
    {
      v10 = *v10;
    }

    v31 = *v10;
    v13 = v49;
    __b = v49;
    *v48 = xmmword_2750C3D00;
    llvm::SmallVectorImpl<unsigned short>::assign(&__b, __len, v31);
    v32 = **a2;
    v15 = __b;
    v22 = v48[0];
    v21 = (*v32 + 1968);
LABEL_41:
    llvm::FixedVectorType::get(v21, v22);
    v34 = v33;
    v35 = (2 * v22);
    goto LABEL_56;
  }

  if (a2 && v5 == 17)
  {
    v18 = *(*a2 + 8);
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v42 = __len;
        llvm::APFloat::bitcastToAPInt(&v45, (a2 + 24));
        LimitedValue = llvm::APInt::getLimitedValue(&v45, 0xFFFFFFFFFFFFFFFFLL);
        v13 = &v48[1];
        __b = &v48[1];
        v48[0] = 0x1000000000;
        llvm::SmallVectorImpl<int>::assign(&__b, v42, LimitedValue);
        if (v46 >= 0x41 && v45)
        {
          MEMORY[0x277C69E10](v45, 0x1000C8000313F17);
        }

        v17 = *a2;
        v15 = __b;
        v16 = LODWORD(v48[0]);
        goto LABEL_55;
      }

      if (v18 == 3)
      {
        v26 = __len;
        llvm::APFloat::bitcastToAPInt(&v45, (a2 + 24));
        v27 = llvm::APInt::getLimitedValue(&v45, 0xFFFFFFFFFFFFFFFFLL);
        v13 = &v48[1];
        __b = &v48[1];
        v48[0] = 0x1000000000;
        llvm::SmallVectorImpl<unsigned long long>::assign(&__b, v26, v27);
        if (v46 >= 0x41 && v45)
        {
          MEMORY[0x277C69E10](v45, 0x1000C8000313F17);
        }

        v28 = *a2;
        v15 = __b;
        v29 = LODWORD(v48[0]);
        goto LABEL_50;
      }
    }

    else if (!*(*a2 + 8) || v18 == 1)
    {
      v19 = __len;
      llvm::APFloat::bitcastToAPInt(&v45, (a2 + 24));
      v20 = llvm::APInt::getLimitedValue(&v45, 0xFFFFFFFFFFFFFFFFLL);
      v13 = v49;
      __b = v49;
      *v48 = xmmword_2750C3D00;
      llvm::SmallVectorImpl<unsigned short>::assign(&__b, v19, v20);
      if (v46 >= 0x41 && v45)
      {
        MEMORY[0x277C69E10](v45, 0x1000C8000313F17);
      }

      v21 = *a2;
      v15 = __b;
      v22 = v48[0];
      goto LABEL_41;
    }
  }

  return llvm::ConstantVector::getSplat(__len, a2, a3);
}

llvm::ConstantExpr *llvm::ConstantExpr::getInsertElement(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Constant *a4, llvm::Type *a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldInsertElementInstruction(this, a2, a3, a4);
  if (!result)
  {
    v11 = *this;
    if (*this == a4)
    {
      return 0;
    }

    else
    {
      v18[0] = this;
      v18[1] = a2;
      v18[2] = a3;
      v12 = **v11;
      LODWORD(v13) = 62;
      *(&v13 + 1) = v18;
      v14 = 3;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v12 + 1544, v11, &v13, v10);
    }
  }

  return result;
}

llvm::Value *llvm::ConstantExpr::getShuffleVector(llvm::ConstantExpr *a1, llvm::ConstantExpr *a2, llvm::Constant *a3, _BOOL8 a4, uint64_t **a5)
{
  v20[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldShuffleVectorInstruction(a1, a2, a3, a4);
  if (!result)
  {
    llvm::VectorType::get(*(*a1 + 24), (a4 | ((*(*a1 + 8) == 19) << 32)), v11);
    if (v12 == a5)
    {
      return 0;
    }

    else
    {
      v20[0] = a1;
      v20[1] = a2;
      v14 = **v12;
      LODWORD(v15) = 63;
      *(&v15 + 1) = v20;
      v16 = 2;
      v17 = a3;
      v18 = a4;
      v19 = 0;
      return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v14 + 1544, v12, &v15, v13);
    }
  }

  return result;
}

void std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100](llvm::Value **a1, llvm::Value *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    llvm::Value::~Value(v3, a2);

    llvm::User::operator delete(v4);
  }
}

llvm::ConstantExpr *llvm::ConstantExpr::getWithOperands(llvm::ConstantExpr *result, llvm::ConstantExpr **a2, uint64_t a3, llvm::Type *a4, llvm::Type *a5, llvm::Type *a6)
{
  if (*result == a4)
  {
    if (!a3)
    {
      return result;
    }

    v8 = -32 * (*(result + 5) & 0x7FFFFFF);
    v9 = 8 * a3;
    v10 = a2;
    while (*v10 == *(result + v8))
    {
      ++v10;
      v8 += 32;
      v9 -= 8;
      if (!v9)
      {
        return result;
      }
    }
  }

  if (a5)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(result + 9);
  if (v7 > 0x34)
  {
    if (*(result + 9) > 0x3Du)
    {
      if (v7 == 62)
      {
        return llvm::ConstantExpr::getInsertElement(*a2, a2[1], a2[2], v6, a5);
      }

      if (v7 == 63)
      {
        return llvm::ConstantExpr::getShuffleVector(*a2, a2[1], *(result + 3), *(result + 8), v6);
      }
    }

    else
    {
      if (v7 - 53 < 2)
      {
        return llvm::ConstantExpr::getCompare(*(result + 12), *a2, a2[1], (v6 != 0), a5);
      }

      if (v7 == 61)
      {
        return llvm::ConstantExpr::getExtractElement(*a2, a2[1], v6, a4);
      }
    }

    return llvm::ConstantExpr::get(*(result + 9), *a2, a2[1], (*(result + 17) >> 1), v6, a6);
  }

  if (v7 - 38 < 0xD)
  {
    return llvm::ConstantExpr::getCast(*(result + 9), *a2, a4, a5);
  }

  if (v7 != 34)
  {
    return llvm::ConstantExpr::get(*(result + 9), *a2, a2[1], (*(result + 17) >> 1), v6, a6);
  }

  if (!a6)
  {
    v11 = 24;
    if (*(result + 16) == 62)
    {
      v11 = 64;
    }

    a6 = *(result + v11);
  }

  v13 = a2 + 1;
  v12 = *a2;
  v14 = *(result + 17);
  v15 = v14 > 3;
  v16 = (v14 >> 1) & 1;
  if (v14 >= 4)
  {
    v17 = (*(result + 17) >> 2) - 1;
  }

  else
  {
    v17 = 0;
  }

  return llvm::ConstantExpr::getGetElementPtr(a6, v12, v13, a3 - 1, v16, v17 | (v15 << 32), v6);
}

llvm::ConstantFP ***llvm::ConstantExpr::getCast(llvm::ConstantExpr *this, llvm::ConstantFP ***a2, llvm::Constant **a3, llvm::Type *a4)
{
  switch(this)
  {
    case '\'':
      v4 = 39;
      return getFoldedCast(v4, a2, a3, a4);
    case '(':
      v4 = 40;
      return getFoldedCast(v4, a2, a3, a4);
    case ')':
      v4 = 41;
      return getFoldedCast(v4, a2, a3, a4);
    case '*':
      v4 = 42;
      return getFoldedCast(v4, a2, a3, a4);
    case '+':
      v4 = 43;
      return getFoldedCast(v4, a2, a3, a4);
    case ',':
      v4 = 44;
      return getFoldedCast(v4, a2, a3, a4);
    case '-':
      v4 = 45;
      return getFoldedCast(v4, a2, a3, a4);
    case '.':
      v4 = 46;
      return getFoldedCast(v4, a2, a3, a4);
    case '/':
      v4 = 47;
      return getFoldedCast(v4, a2, a3, a4);
    case '0':
      v4 = 48;
      return getFoldedCast(v4, a2, a3, a4);
    case '1':
      if (*a2 == a3)
      {
        return a2;
      }

      v4 = 49;
      return getFoldedCast(v4, a2, a3, a4);
    case '2':
      return llvm::ConstantExpr::getAddrSpaceCast(a2, a3, a4);
    default:
      v4 = 38;
      return getFoldedCast(v4, a2, a3, a4);
  }
}

llvm::Value *llvm::ConstantExpr::getExtractElement(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Constant *a3, llvm::Type *a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldExtractElementInstruction(this, a2, a3, a4);
  if (!result)
  {
    v9 = *this;
    v10 = *(*this + 24);
    if (v10 == a3)
    {
      return 0;
    }

    else
    {
      v17[0] = this;
      v17[1] = a2;
      v11 = **v9;
      LODWORD(v12) = 61;
      *(&v12 + 1) = v17;
      v13 = 2;
      v15 = 0;
      v16 = 0;
      v14 = 0;
      return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v11 + 1544, v10, &v12, v8);
    }
  }

  return result;
}

llvm::ConstantFP **llvm::ConstantExpr::getCompare(llvm::ConstantExpr *this, llvm::Type *a2, llvm::Constant *a3, llvm::Constant *a4, BOOL a5)
{
  if (this > 0xF)
  {
    return llvm::ConstantExpr::getICmp(this, a2, a3, a4);
  }

  else
  {
    return llvm::ConstantExpr::getFCmp(this, a2, a3, a4);
  }
}

llvm::ConstantFP **llvm::ConstantExpr::get(llvm::ConstantExpr *this, llvm::ConstantFP **a2, llvm::Constant *a3, llvm::Constant *a4, llvm::ConstantFP *a5, llvm::Type *a6)
{
  v7 = a4;
  v10 = this;
  v20[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldBinaryInstruction(this, a2, a3, a4, a5);
  if (!result)
  {
    v13 = *a2;
    if (*a2 == a5)
    {
      return 0;
    }

    else
    {
      v20[0] = a2;
      v20[1] = a3;
      v14 = **v13;
      LOBYTE(v15) = v10;
      BYTE1(v15) = v7;
      WORD1(v15) = 0;
      *(&v15 + 1) = v20;
      v16 = 2;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v14 + 1544, v13, &v15, v12);
    }
  }

  return result;
}

int32x2_t llvm::ConstantUniqueMap<llvm::ConstantArray>::remove(int32x2_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = *a1;
  v6 = a1[2].i32[0];
  if (!v6)
  {
    v13 = 0;
LABEL_8:
    v9 = (v5 + 8 * v13);
    goto LABEL_9;
  }

  LODWORD(v8) = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(a2, a2, a3, a4) & (v6 - 1);
  v9 = (v5 + 8 * v8);
  v10 = *v9;
  if (*v9 != a2)
  {
    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v6 - 1);
      v10 = *(v5 + 8 * v8);
      if (v10 == a2)
      {
        v9 = (v5 + 8 * v8);
        goto LABEL_9;
      }
    }

    v5 = *a1;
    v13 = a1[2].u32[0];
    goto LABEL_8;
  }

LABEL_9:
  *v9 = -8192;
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t llvm::Constant::getUniqueInteger(llvm::Constant *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  v4 = *(this + 16);
  if (!this || v4 != 16)
  {
    if (v4 == 5)
    {
      this = llvm::Constant::getSplatValue(this, 0, a3, a4);
    }

    else
    {
      this = llvm::Constant::getAggregateElement(this, 0, a3, a4);
    }
  }

  return this + 24;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>,llvm::Type *,std::unique_ptr<llvm::UndefValue>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::unique_ptr<llvm::UndefValue>>>::erase(uint64_t a1, void *a2)
{
  v5 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v5))
  {
    v4 = v5;
    std::unique_ptr<llvm::ConstantTokenNone>::reset[abi:nn200100]((v5 + 8), 0);
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

llvm::BlockAddress *llvm::BlockAddress::get(llvm::BlockAddress *this, llvm::Function *a2, llvm::BasicBlock *a3)
{
  v5 = ***this;
  v9[0] = this;
  v9[1] = a2;
  v6 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::FindAndConstruct((v5 + 1472), v9);
  result = v6[2];
  if (!result)
  {
    v8 = operator new(0x58uLL);
    v8[21] = v8[21] & 0x38000000 | 2;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = v8 + 16;
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *(v8 + 7) = v8 + 16;
    result = llvm::BlockAddress::BlockAddress((v8 + 16), this, a2);
    v6[2] = result;
  }

  return result;
}

llvm::BlockAddress *llvm::BlockAddress::BlockAddress(llvm::BlockAddress *this, llvm::Function *a2, llvm::BasicBlock *a3)
{
  *this = llvm::PointerType::get((***a2 + 1944), (*(*a2 + 8) >> 8));
  *(this + 1) = 0;
  v6 = *(this + 5) & 0xC0000000 | 2;
  *(this + 4) = 4;
  *(this + 5) = v6;
  if (*(this - 8))
  {
    v7 = *(this - 7);
    **(this - 6) = v7;
    if (v7)
    {
      *(v7 + 16) = *(this - 6);
    }
  }

  *(this - 8) = a2;
  v10 = *(a2 + 1);
  v9 = (a2 + 8);
  v8 = v10;
  *(this - 7) = v10;
  if (v10)
  {
    *(v8 + 16) = this - 56;
  }

  *(this - 6) = v9;
  *v9 = this - 64;
  v11 = (this - 32);
  if (*(this - 4))
  {
    v12 = *(this - 3);
    **(this - 2) = v12;
    if (v12)
    {
      *(v12 + 16) = *(this - 2);
    }
  }

  *v11 = a3;
  if (a3)
  {
    v13 = (a3 + 8);
    v14 = *(a3 + 1);
    *(this - 3) = v14;
    if (v14)
    {
      *(v14 + 16) = this - 24;
    }

    *(this - 2) = v13;
    *v13 = v11;
  }

  *(a3 + 9) = *(a3 + 9) & 0x8000 | (*(a3 + 9) + 1) & 0x7FFF;
  return this;
}

uint64_t llvm::BlockAddress::lookup(llvm::BlockAddress *this, const llvm::BasicBlock *a2)
{
  if ((*(this + 9) & 0x7FFF) == 0)
  {
    return 0;
  }

  v8[1] = v2;
  v8[2] = v3;
  v4 = ****(this + 7);
  v7[0] = *(this + 7);
  v7[1] = this;
  v8[0] = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>((v4 + 1472), v7, v8);
  result = 0;
  if (v5)
  {
    return *(v8[0] + 16);
  }

  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::erase(int32x2_t *a1, uint64_t a2)
{
  v5 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::LookupBucketFor<std::pair<llvm::Function const*,llvm::BasicBlock const*>>(a1, a2, &v5))
  {
    v4 = v5;
    *v5 = -8192;
    v4[1] = -8192;
    result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
    a1[1] = result;
  }

  return result;
}

uint64_t llvm::BlockAddress::handleOperandChangeImpl(int32x2_t ****this, llvm::Value *a2, llvm::Value *a3)
{
  v3 = a3;
  v6 = (this - 8);
  v5 = *(this - 8);
  v7 = (this - 4);
  if (v5 == a2)
  {
    v8 = *v7;
    v5 = llvm::Value::stripPointerCasts(a3);
    v3 = v8;
  }

  v9 = ***this;
  v24 = v5;
  v25 = v3;
  v10 = llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::FindAndConstruct(&v9[184], &v24);
  v11 = v10[2];
  if (!v11)
  {
    v12 = v10;
    v13 = *(this - 4);
    *(v13 + 9) = *(v13 + 9) & 0x8000 | (*(v13 + 9) - 1) & 0x7FFF;
    v14 = ***this;
    v24 = *(this - 8);
    v25 = v13;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>,std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *,llvm::DenseMapInfo<std::pair<llvm::Function const*,llvm::BasicBlock const*>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Function const*,llvm::BasicBlock const*>,llvm::BlockAddress *>>::erase(v14 + 184, &v24);
    v12[2] = this;
    if (*(this - 8))
    {
      v15 = *(this - 7);
      **(this - 6) = v15;
      if (v15)
      {
        v15[2] = *(this - 6);
      }
    }

    *v6 = v5;
    if (v5)
    {
      v18 = *(v5 + 1);
      v17 = (v5 + 8);
      v16 = v18;
      *(this - 7) = v18;
      if (v18)
      {
        v16[2] = (this - 7);
      }

      *(this - 6) = v17;
      *v17 = v6;
    }

    if (*v7)
    {
      v19 = *(this - 3);
      **(this - 2) = v19;
      if (v19)
      {
        v19[2] = *(this - 2);
      }
    }

    *(this - 4) = v3;
    v22 = *(v3 + 1);
    v21 = (v3 + 8);
    v20 = v22;
    *(this - 3) = v22;
    if (v22)
    {
      v20[2] = (this - 3);
    }

    *(this - 2) = v21;
    *v21 = v7;
    *(*(this - 4) + 9) = *(*(this - 4) + 9) & 0x8000 | (*(*(this - 4) + 9) + 1) & 0x7FFF;
  }

  return v11;
}

uint64_t llvm::DSOLocalEquivalent::get(llvm::DSOLocalEquivalent *this, llvm::GlobalValue *a2)
{
  v5 = this;
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 1496), &v5);
  result = v2[1];
  if (!result)
  {
    v4 = operator new(0x38uLL);
    v4[13] = v4[13] & 0x38000000 | 1;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = v4 + 8;
    result = llvm::DSOLocalEquivalent::DSOLocalEquivalent((v4 + 8), v5);
    v2[1] = result;
  }

  return result;
}

uint64_t llvm::DSOLocalEquivalent::DSOLocalEquivalent(uint64_t this, llvm::GlobalValue *a2)
{
  *this = *a2;
  *(this + 8) = 0;
  v2 = *(this + 20) & 0xC0000000 | 1;
  *(this + 16) = 6;
  *(this + 20) = v2;
  if (*(this - 32))
  {
    v3 = *(this - 24);
    **(this - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(this - 16);
    }
  }

  *(this - 32) = a2;
  v6 = *(a2 + 1);
  v4 = (a2 + 8);
  v5 = v6;
  *(this - 24) = v6;
  if (v6)
  {
    *(v5 + 16) = this - 24;
  }

  *(this - 16) = v4;
  *v4 = this - 32;
  return this;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(uint64_t a1, void *a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v4))
  {
    *v4 = -8192;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

llvm::Constant *llvm::DSOLocalEquivalent::handleOperandChangeImpl(llvm::ConstantFP ***this, llvm::Value *a2, llvm::Value *a3)
{
  v3 = a3;
  if (*(a3 + 16) >= 4u)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v18 = v5;
  if (v5)
  {
    v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 1496), &v18)[1];
    if (v6)
    {
      if (*v6 != *this)
      {
        return getFoldedCast(0x31, v6, *this, 0);
      }

      return v6;
    }
  }

  if (llvm::Constant::isNullValue(v3))
  {
    return v3;
  }

  v7 = llvm::Value::stripPointerCastsAndAliases(v3);
  v8 = ***this;
  v17 = v7;
  v18 = 0;
  v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>((v8 + 1496), &v17, &v18);
  v10 = v18;
  if (v9)
  {
    v3 = *(v18 + 1);
    if (v3)
    {
      if (*v3 != *this)
      {
        return getFoldedCast(0x31, *(v18 + 1), *this, 0);
      }

      return v3;
    }
  }

  else
  {
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::InsertIntoBucketImpl<llvm::GlobalValue const*>(v8 + 1496, &v17, &v17, v18);
    *v10 = v17;
    v10[1] = 0;
  }

  v11 = ***this;
  v12 = (this - 4);
  v18 = *(this - 4);
  llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(v11 + 1496, &v18);
  v10[1] = this;
  if (*(this - 4))
  {
    v13 = *(this - 3);
    **(this - 2) = v13;
    if (v13)
    {
      v13[2] = *(this - 2);
    }
  }

  *v12 = v7;
  if (v7)
  {
    v14 = (v7 + 8);
    v15 = *(v7 + 1);
    *(this - 3) = v15;
    if (v15)
    {
      *(v15 + 16) = this - 3;
    }

    *(this - 2) = v14;
    *v14 = v12;
  }

  v3 = 0;
  if (*v7 != *this)
  {
    *this = *v7;
  }

  return v3;
}

uint64_t llvm::NoCFIValue::get(llvm::NoCFIValue *this, llvm::GlobalValue *a2)
{
  v5 = this;
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 1520), &v5);
  result = v2[1];
  if (!result)
  {
    v4 = operator new(0x38uLL);
    v4[13] = v4[13] & 0x38000000 | 1;
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = v4 + 8;
    result = llvm::NoCFIValue::NoCFIValue((v4 + 8), v5);
    v2[1] = result;
  }

  return result;
}

uint64_t llvm::NoCFIValue::NoCFIValue(uint64_t this, llvm::GlobalValue *a2)
{
  *this = *a2;
  *(this + 8) = 0;
  v2 = *(this + 20) & 0xC0000000 | 1;
  *(this + 16) = 7;
  *(this + 20) = v2;
  if (*(this - 32))
  {
    v3 = *(this - 24);
    **(this - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(this - 16);
    }
  }

  *(this - 32) = a2;
  v6 = *(a2 + 1);
  v4 = (a2 + 8);
  v5 = v6;
  *(this - 24) = v6;
  if (v6)
  {
    *(v5 + 16) = this - 24;
  }

  *(this - 16) = v4;
  *v4 = this - 32;
  return this;
}

llvm::ConstantFP ***llvm::NoCFIValue::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, llvm::Value *a3)
{
  v4 = llvm::Value::stripPointerCasts(a3);
  if (*(v4 + 16) >= 4u)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v19 = v5;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::FindAndConstruct((***this + 1520), &v19);
  v7 = v6[1];
  v8 = *this;
  if (v7)
  {
    if (*v7 != v8)
    {
      return getFoldedCast(0x31, v7, v8, 0);
    }
  }

  else
  {
    v9 = v6;
    v10 = **v8;
    v11 = this - 4;
    v18 = *(this - 4);
    llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>,llvm::GlobalValue const*,llvm::DSOLocalEquivalent *,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::DSOLocalEquivalent *>>::erase(v10 + 1520, &v18);
    v9[1] = this;
    v12 = v19;
    if (*(this - 4))
    {
      v13 = *(this - 3);
      **(this - 2) = v13;
      if (v13)
      {
        v13[2] = *(this - 2);
      }
    }

    *v11 = v12;
    if (v12)
    {
      v16 = v12[1];
      v14 = (v12 + 1);
      v15 = v16;
      *(this - 3) = v16;
      if (v16)
      {
        v15[2] = (this - 3);
      }

      *(this - 2) = v14;
      *v14 = v11;
    }

    v7 = 0;
    if (*v19 != *this)
    {
      *this = *v19;
    }
  }

  return v7;
}

uint64_t llvm::ConstantExpr::getAddrSpaceCast(llvm::ConstantFP ***this, llvm::Constant ***a2, llvm::Type *a3)
{
  FoldedCast = this;
  v6 = *this;
  if (((*this)[1] & 0xFE) == 0x12)
  {
    v6 = *v6[2];
  }

  v7 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v7 = *a2[2];
  }

  if (v6[3] != v7[3])
  {
    v8 = llvm::PointerType::getWithSamePointeeType(v7, (*(v6 + 2) >> 8), a3);
    v9 = v8;
    if ((a2[1] & 0xFE) == 0x12)
    {
      llvm::FixedVectorType::get(v8, *(a2 + 8));
      v9 = v10;
    }

    if (*FoldedCast != v9)
    {
      FoldedCast = getFoldedCast(0x31, FoldedCast, v9, 0);
    }
  }

  return getFoldedCast(0x32, FoldedCast, a2, a3);
}

llvm::ConstantFP ***llvm::ConstantExpr::getZExtOrBitCast(llvm::ConstantFP ***this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if (((*this)[1] & 0xFE) == 0x12)
  {
    v6 = *v5[2];
  }

  else
  {
    v6 = *this;
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  if (PrimitiveSizeInBits == llvm::Type::getPrimitiveSizeInBits(v8))
  {
    if (v5 == a2)
    {
      return this;
    }

    v9 = 49;
  }

  else
  {
    v9 = 39;
  }

  return getFoldedCast(v9, this, a2, 0);
}

llvm::ConstantFP ***llvm::ConstantExpr::getSExtOrBitCast(llvm::ConstantFP ***this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if (((*this)[1] & 0xFE) == 0x12)
  {
    v6 = *v5[2];
  }

  else
  {
    v6 = *this;
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  if (PrimitiveSizeInBits == llvm::Type::getPrimitiveSizeInBits(v8))
  {
    if (v5 == a2)
    {
      return this;
    }

    v9 = 49;
  }

  else
  {
    v9 = 40;
  }

  return getFoldedCast(v9, this, a2, 0);
}

llvm::ConstantFP ***llvm::ConstantExpr::getTruncOrBitCast(llvm::ConstantFP ***this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if (((*this)[1] & 0xFE) == 0x12)
  {
    v6 = *v5[2];
  }

  else
  {
    v6 = *this;
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  if (PrimitiveSizeInBits == llvm::Type::getPrimitiveSizeInBits(v8))
  {
    if (v5 == a2)
    {
      return this;
    }

    v9 = 49;
  }

  else
  {
    v9 = 38;
  }

  return getFoldedCast(v9, this, a2, 0);
}

llvm::ConstantFP ***llvm::ConstantExpr::getPointerCast(llvm::ConstantFP ***this, llvm::ConstantFP **a2, llvm::Type *a3)
{
  v4 = this;
  v5 = *(a2 + 2);
  v6 = v5;
  if ((v5 & 0xFE) == 0x12)
  {
    v6 = *(*a2[2] + 8);
  }

  if (v6 == 13)
  {
    v7 = 47;
    return getFoldedCast(v7, v4, a2, 0);
  }

  v8 = *this;
  v9 = *(*this + 2);
  if ((v9 & 0xFE) == 0x12)
  {
    v9 = *(*v8[2] + 8);
  }

  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(*a2[2] + 8);
  }

  if (v5 == 15 && (v5 ^ v9) >= 0x100)
  {
    return llvm::ConstantExpr::getAddrSpaceCast(this, a2, 0);
  }

  if (v8 != a2)
  {
    v7 = 49;
    return getFoldedCast(v7, v4, a2, 0);
  }

  return this;
}

llvm::ConstantExpr *llvm::ConstantExpr::getPointerBitCastOrAddrSpaceCast(llvm::ConstantExpr *this, llvm::Constant *a2, llvm::Type *a3)
{
  v3 = *this;
  v4 = *(*this + 8);
  if ((v4 & 0xFE) == 0x12)
  {
    v4 = *(**(v3 + 2) + 8);
  }

  v5 = *(a2 + 2);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(a2 + 2) + 8);
  }

  if ((v5 ^ v4) >= 0x100)
  {
    return llvm::ConstantExpr::getAddrSpaceCast(this, a2, 0);
  }

  if (v3 != a2)
  {
    return getFoldedCast(0x31, this, a2, 0);
  }

  return this;
}

llvm::ConstantFP ***llvm::ConstantExpr::getIntegerCast(llvm::ConstantFP ***this, llvm::Type ***a2, llvm::Type *a3)
{
  v3 = a3;
  v6 = *this;
  if ((v6[1] & 0xFE) == 0x12)
  {
    v6 = *v6[2];
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v6);
  v8 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v8 = *a2[2];
  }

  v9 = llvm::Type::getPrimitiveSizeInBits(v8);
  if (v3)
  {
    v10 = 40;
  }

  else
  {
    v10 = 39;
  }

  if (PrimitiveSizeInBits > v9)
  {
    v10 = 38;
  }

  if (PrimitiveSizeInBits == v9)
  {
    v11 = 49;
  }

  else
  {
    v11 = v10;
  }

  return llvm::ConstantExpr::getCast(v11, this, a2, 0);
}

llvm::ConstantFP ***llvm::ConstantExpr::getFPCast(llvm::ConstantFP ***this, llvm::Type ***a2, llvm::Type *a3)
{
  v5 = *this;
  if ((v5[1] & 0xFE) == 0x12)
  {
    v5 = *v5[2];
  }

  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v5);
  v7 = a2;
  if ((a2[1] & 0xFE) == 0x12)
  {
    v7 = *a2[2];
  }

  v8 = llvm::Type::getPrimitiveSizeInBits(v7);
  if (PrimitiveSizeInBits == v8)
  {
    return this;
  }

  if (PrimitiveSizeInBits > v8)
  {
    v10 = 45;
  }

  else
  {
    v10 = 46;
  }

  return llvm::ConstantExpr::getCast(v10, this, a2, 0);
}

llvm::Value *getFoldedCast(llvm *a1, llvm::ConstantFP ***a2, llvm::Constant **a3, llvm::Type *a4)
{
  v4 = a4;
  v6 = a1;
  v15 = a2;
  result = llvm::ConstantFoldCastInstruction(a1, a2, a3, a4);
  if (!result && (v4 & 1) == 0)
  {
    v9 = **a3;
    LODWORD(v10) = v6;
    *(&v10 + 1) = &v15;
    v11 = 1;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v9 + 1544, a3, &v10, v8);
  }

  return result;
}

void *llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(uint64_t a1, llvm::Type *a2, _OWORD *a3, unint64_t *a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  *v18 = a2;
  v7 = a3[1];
  *&v18[8] = *a3;
  *&v18[24] = v7;
  *&v18[40] = a3[2];
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(v18, a2, a3, a4);
  v14 = *v18;
  v15 = *&v18[16];
  v16 = *&v18[32];
  v17 = *&v18[48];
  *&v12[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, &HashValue, v12) && *&v12[0] != *a1 + 8 * *(a1 + 16))
  {
    return **&v12[0];
  }

  v10 = a3[1];
  v12[0] = *a3;
  v12[1] = v10;
  v12[2] = a3[2];
  v9 = llvm::ConstantExprKeyType::create(v12, a2, v8);
  v20[0] = v9;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::insert_as<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, v20, &HashValue, v19);
  return v9;
}

void *llvm::ConstantExpr::getFCmp(llvm::ConstantExpr *this, llvm::Type *a2, llvm::Constant *a3, llvm::Constant *a4)
{
  v4 = a4;
  v7 = this;
  v19[2] = *MEMORY[0x277D85DE8];
  result = llvm::ConstantFoldCompareInstruction(this, a2, a3, a4);
  if (!result && (v4 & 1) == 0)
  {
    v19[0] = a2;
    v19[1] = a3;
    v11 = ***a2;
    v12 = (v11 + 1920);
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      llvm::VectorType::get((v11 + 1920), (*(*a2 + 32) | (((~*(*a2 + 8) & 0x13) == 0) << 32)), v9);
      v12 = v13;
      v11 = ***a2;
    }

    LOWORD(v14) = 54;
    WORD1(v14) = v7;
    *(&v14 + 1) = v19;
    v15 = 2;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    return llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v11 + 1544, v12, &v14, v10);
  }

  return result;
}

void *llvm::ConstantExpr::getGetElementPtr(llvm::GetElementPtrInst *a1, unsigned __int8 *a2, llvm::Constant **a3, uint64_t a4, char a5, unint64_t a6, llvm::Type *a7)
{
  v11 = a3;
  v60 = *MEMORY[0x277D85DE8];
  v57 = a2;
  v14 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v14 = *v14[2];
  }

  ElementPtr = llvm::ConstantFoldGetElementPtr(a1, a2, a5, a6, a3, a4);
  if (!ElementPtr)
  {
    TypeAtIndex = a1;
    if (a4)
    {
      v20 = v11 + 1;
      v21 = 8 * a4 - 8;
      TypeAtIndex = a1;
      do
      {
        if (!v21)
        {
          break;
        }

        v22 = *v20++;
        TypeAtIndex = llvm::GetElementPtrInst::getTypeAtIndex(TypeAtIndex, v22, v15, v16);
        v21 -= 8;
      }

      while (TypeAtIndex);
    }

    v23 = (*(v14 + 2) >> 8);
    if (v14[3])
    {
      v24 = llvm::PointerType::get(TypeAtIndex, v23);
    }

    else
    {
      v24 = llvm::PointerType::get(*v14, v23);
    }

    v26 = v24;
    v27 = *a2;
    if (*a2 && (v28 = *(v27 + 2), (v28 & 0xFE) == 0x12))
    {
      v29 = *(v27 + 8);
      v30 = (~v28 & 0x13) == 0;
    }

    else
    {
      v30 = 0;
      if (!a4)
      {
        goto LABEL_26;
      }

      v29 = 0;
      v31 = 8 * a4;
      v32 = v11;
      do
      {
        v33 = **v32;
        if (v33)
        {
          v34 = (*(v33 + 8) & 0xFE) == 18;
        }

        else
        {
          v34 = 0;
        }

        if (v34)
        {
          v29 = *(v33 + 32);
          v30 = (~*(v33 + 8) & 0x13) == 0;
        }

        ++v32;
        v31 -= 8;
      }

      while (v31);
    }

    if (v29)
    {
      v48 = v29;
      llvm::VectorType::get(v24, (v29 | (v30 << 32)), v25);
      v26 = v35;
      v36 = 0;
LABEL_27:
      if (v26 == a7)
      {
        return 0;
      }

      __p = 0;
      v55 = 0;
      v56 = 0;
      v37 = a4 + 1;
      if (a4 != -1)
      {
        if (!(v37 >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v37);
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, &v57);
      v58 = v11;
      v59 = a1 | 4;
      v40 = v11 - 1;
      while (1)
      {
        v41 = *v11;
        *&v49 = *v11;
        if ((v59 & 4) != 0)
        {
          break;
        }

        if ((*(*v41 + 8) & 0xFE) == 0x12)
        {
          SplatValue = llvm::Constant::getSplatValue(v41, 0, v38, v39);
LABEL_38:
          *&v49 = SplatValue;
        }

LABEL_39:
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, &v49);
        llvm::generic_gep_type_iterator<llvm::Value const* const*>::operator++(&v58, v43, v44, v45);
        v11 = v58;
        if (v58 == v40)
        {
          if ((BYTE4(a6) & (a6 < 0x3F)) != 0)
          {
            v46 = 2 * a6 + 2;
          }

          else
          {
            v46 = 0;
          }

          v47 = ***a2;
          LOBYTE(v49) = 34;
          BYTE1(v49) = v46 | a5;
          WORD1(v49) = 0;
          *(&v49 + 1) = __p;
          v50 = (v55 - __p) >> 3;
          v51 = 0;
          v52 = 0;
          v53 = a1;
          ElementPtr = llvm::ConstantUniqueMap<llvm::ConstantExpr>::getOrCreate(v47 + 1544, v26, &v49, v39);
          if (__p)
          {
            v55 = __p;
            operator delete(__p);
          }

          return ElementPtr;
        }
      }

      if ((v36 & 1) != 0 || (*(*v41 + 8) & 0xFE) == 0x12)
      {
        goto LABEL_39;
      }

      SplatValue = llvm::ConstantVector::getSplat(v48 | (v30 << 32), v41, v38);
      goto LABEL_38;
    }

LABEL_26:
    v48 = 0;
    v36 = 1;
    goto LABEL_27;
  }

  return ElementPtr;
}

llvm::ConstantFP **llvm::ConstantExpr::getNot(llvm::Constant **this, llvm::Constant *a2)
{
  AllOnesValue = llvm::Constant::getAllOnesValue(*this, a2);

  return llvm::ConstantExpr::get(0x1E, this, AllOnesValue, 0, 0, v4);
}

unsigned __int8 *llvm::ConstantExpr::getBinOpIdentity(llvm::ConstantExpr *this, llvm::ConstantFP *a2, llvm::Type *a3, _BOOL4 a4)
{
  if (this <= 17)
  {
    if (this != 13)
    {
      if (this == 14)
      {
        return llvm::ConstantFP::getZero(a2, !a4);
      }

      if (this == 17)
      {
        return llvm::ConstantInt::get(a2, 1, 0);
      }

      goto LABEL_11;
    }

    return llvm::Constant::getNullValue(a2, a2, a3, a4);
  }

  if ((this - 29) < 2)
  {
    return llvm::Constant::getNullValue(a2, a2, a3, a4);
  }

  if (this == 18)
  {
    return llvm::ConstantFP::get(a2, a2, 1.0);
  }

  if (this == 28)
  {
    return llvm::Constant::getAllOnesValue(a2, a2);
  }

LABEL_11:
  if (a3 && this <= 0x1B)
  {
    if (((1 << this) & 0xE018000) != 0)
    {
      return llvm::Constant::getNullValue(a2, a2, a3, a4);
    }

    if (((1 << this) & 0x180000) != 0)
    {
      return llvm::ConstantInt::get(a2, 1, 0);
    }

    if (this == 21)
    {
      return llvm::ConstantFP::get(a2, a2, 1.0);
    }
  }

  return 0;
}

int32x2_t llvm::ConstantUniqueMap<llvm::ConstantExpr>::remove(int32x2_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *a1;
  v6 = a1[2].i32[0];
  if (!v6)
  {
    v13 = 0;
LABEL_8:
    v9 = (v5 + 8 * v13);
    goto LABEL_9;
  }

  LODWORD(v8) = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(a2, a2, a3, a4) & (v6 - 1);
  v9 = (v5 + 8 * v8);
  v10 = *v9;
  if (*v9 != a2)
  {
    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v6 - 1);
      v10 = *(v5 + 8 * v8);
      if (v10 == a2)
      {
        v9 = (v5 + 8 * v8);
        goto LABEL_9;
      }
    }

    v5 = *a1;
    v13 = a1[2].u32[0];
    goto LABEL_8;
  }

LABEL_9:
  *v9 = -8192;
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t llvm::ConstantDataSequential::getRawDataValues(llvm::ConstantDataSequential *this)
{
  v1 = *(this + 3);
  llvm::Type::getPrimitiveSizeInBits(*(*this + 24));
  if (v2)
  {
  }

  return v1;
}

llvm::Value *llvm::ConstantDataSequential::getImpl(llvm::Type *a1, llvm::Type *a2, uint64_t **a3)
{
  v4 = a2;
  if (a2)
  {
    a2 = a1;
    v5 = 0;
    while (!*(a1 + v5))
    {
      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v7 = **a3;
    v13 = 0;
    v8 = *llvm::StringMap<std::unique_ptr<llvm::ConstantDataSequential>,llvm::MallocAllocator>::try_emplace<std::unique_ptr<llvm::ConstantDataSequential>>((v7 + 1448), a1, v4, &v13);
    std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](&v13, 0);
    v10 = (v8 + 1);
    v9 = v8[1];
    if (v9)
    {
      while (1)
      {
        result = v9;
        if (*v9 == a3)
        {
          break;
        }

        v9 = *(v9 + 32);
        if (!v9)
        {
          v10 = (result + 32);
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v11 = v8 + 2;
      if (*(a3 + 8) == 17)
      {
        v12 = operator new(0x28uLL);
        *v12 = a3;
        v12[1] = 0;
        v12[2] = 14;
        v12[3] = v11;
        v12[4] = 0;
      }

      else
      {
        v12 = operator new(0x30uLL);
        *v12 = a3;
        v12[1] = 0;
        v12[2] = 15;
        v12[3] = v11;
        v12[4] = 0;
        *(v12 + 40) &= ~1u;
      }

      std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v10, v12);
      return *v10;
    }
  }

  else
  {
LABEL_5:

    return llvm::ConstantAggregateZero::get(a3, a2);
  }

  return result;
}

void std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](llvm::Value ***a1, llvm::Value **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::unique_ptr<llvm::ConstantDataSequential>::reset[abi:nn200100](v2 + 4, 0);
    llvm::Value::~Value(v2, v3);

    llvm::User::operator delete(v4);
  }
}

llvm::Value *llvm::ConstantDataArray::getFP(uint64_t **a1, llvm::Type *a2, llvm::Type *a3)
{
  llvm::ArrayType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (2 * a3), v5);
}

{
  llvm::ArrayType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (4 * a3), v5);
}

{
  llvm::ArrayType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (8 * a3), v5);
}

llvm::Value *llvm::ConstantDataArray::getString(uint64_t a1, llvm::Type *a2, llvm::Type *a3, char a4)
{
  v15[8] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v13 = v15;
    v14 = xmmword_2750C1860;
    llvm::SmallVectorImpl<unsigned char>::append<char const*,void>(&v13, a2, a3 + a2);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v13, 0);
    v7 = v13;
    v8 = v14;
    llvm::ArrayType::get((*a1 + 1944), v14);
    Impl = llvm::ConstantDataSequential::getImpl(v7, v8, v9);
    if (v13 != v15)
    {
      free(v13);
    }

    return Impl;
  }

  else
  {
    llvm::ArrayType::get((*a1 + 1944), a3);

    return llvm::ConstantDataSequential::getImpl(a2, a3, v12);
  }
}

void *llvm::SmallVectorImpl<unsigned char>::append<char const*,void>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = v7 + a3 - a2;
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 1);
    v7 = v5[1];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + v7);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
    }

    while (v4 != a3);
    v7 = v5[1];
  }

  v5[1] = v7 + v6;
  return result;
}

llvm::Value *llvm::ConstantDataVector::get(uint64_t a1, llvm::Type *a2, llvm::Type *a3)
{
  llvm::FixedVectorType::get((*a1 + 1944), a3);

  return llvm::ConstantDataSequential::getImpl(a2, a3, v5);
}

{
  llvm::FixedVectorType::get((*a1 + 1968), a3);

  return llvm::ConstantDataSequential::getImpl(a2, (2 * a3), v5);
}

{
  llvm::FixedVectorType::get((*a1 + 1992), a3);

  return llvm::ConstantDataSequential::getImpl(a2, (4 * a3), v5);
}

{
  llvm::FixedVectorType::get((*a1 + 2016), a3);

  return llvm::ConstantDataSequential::getImpl(a2, (8 * a3), v5);
}

llvm::Value *llvm::ConstantDataVector::getFP(uint64_t **a1, llvm::Type *a2, llvm::Type *a3)
{
  llvm::FixedVectorType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (2 * a3), v5);
}

{
  llvm::FixedVectorType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (4 * a3), v5);
}

{
  llvm::FixedVectorType::get(a1, a3);

  return llvm::ConstantDataSequential::getImpl(a2, (8 * a3), v5);
}

uint64_t llvm::ConstantDataSequential::getElementAsInteger(llvm::ConstantDataSequential *this, unsigned int a2)
{
  v3 = *(this + 3);
  v4 = a2;
  v5 = *(*this + 24);
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v5);
  if (v6)
  {
    v5 = *(*this + 24);
  }

  v9 = (PrimitiveSizeInBits >> 3) * v4;
  v10 = __clz(__rbit32(*(v5 + 2) >> 8));
  if (v10 > 4)
  {
    if (v10 == 5)
    {
      return *(v3 + v9);
    }

    else
    {
      return *(v3 + v9);
    }
  }

  else if (v10 == 3)
  {
    return *(v3 + v9);
  }

  else
  {
    return *(v3 + v9);
  }
}

void llvm::ConstantDataSequential::getElementAsAPFloat(uint64_t *__return_ptr a1@<X8>, llvm::ConstantDataSequential *this@<X0>, unsigned int a3@<W1>)
{
  v5 = *(this + 3);
  v6 = a3;
  v7 = *(*this + 24);
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v7);
  if (v8)
  {
    v7 = *(*this + 24);
  }

  v11 = (PrimitiveSizeInBits >> 3) * v6;
  v12 = v7[8];
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = *(v5 + v11);
      v17 = 32;
      v16 = v14;
      llvm::detail::IEEEFloat::initFromFloatAPInt((a1 + 1), &v16);
    }

    else
    {
      v15 = *(v5 + v11);
      v17 = 64;
      v16 = v15;
      llvm::detail::IEEEFloat::initFromDoubleAPInt((a1 + 1), &v16);
    }
  }

  else
  {
    v13 = *(v5 + v11);
    v17 = 16;
    v16 = v13;
    if (v12)
    {
      llvm::detail::IEEEFloat::initFromBFloatAPInt((a1 + 1), &v16);
    }

    else
    {
      llvm::detail::IEEEFloat::initFromHalfAPInt((a1 + 1), &v16);
    }
  }
}

BOOL llvm::ConstantDataVector::isSplatData(llvm::ConstantDataVector *this)
{
  RawDataValues = llvm::ConstantDataSequential::getRawDataValues(this);
  v3 = *this;
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(*(*this + 24));
  if (v4)
  {
    v3 = *this;
  }

  v7 = *(v3 + 32);
  if (v7 == 1)
  {
    return 1;
  }

  v9 = PrimitiveSizeInBits >> 3;
  v10 = (PrimitiveSizeInBits >> 3);
  v11 = v7 - 2;
  v12 = v9;
  do
  {
    v13 = memcmp(RawDataValues, &RawDataValues[v12], v10);
    result = v13 == 0;
    v15 = v11-- != 0;
    if (v13)
    {
      break;
    }

    v12 += v9;
  }

  while (v15);
  return result;
}

uint64_t llvm::ConstantDataVector::isSplat(llvm::ConstantDataVector *this)
{
  v1 = *(this + 40);
  if ((v1 & 1) == 0)
  {
    *(this + 40) = v1 | 1;
    if (llvm::ConstantDataVector::isSplatData(this))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    v1 = *(this + 40) & 0xFD | v3;
    *(this + 40) = v1;
  }

  return (v1 >> 1) & 1;
}

void llvm::Constant::handleOperandChange(int32x2_t ****this, llvm::Value *a2, llvm::Value *a3)
{
  v4 = *(this + 16);
  if (v4 <= 6)
  {
    if (v4 == 4)
    {
      v5 = llvm::BlockAddress::handleOperandChangeImpl(this, a2, a3);
    }

    else if (v4 == 5)
    {
      v5 = llvm::ConstantExpr::handleOperandChangeImpl(this, a2, a3);
    }

    else
    {
      v5 = llvm::DSOLocalEquivalent::handleOperandChangeImpl(this, a2, a3);
    }
  }

  else if (*(this + 16) > 8u)
  {
    if (v4 == 9)
    {
      v5 = llvm::ConstantStruct::handleOperandChangeImpl(this, a2, a3);
    }

    else
    {
      v5 = llvm::ConstantVector::handleOperandChangeImpl(this, a2, a3);
    }
  }

  else if (v4 == 7)
  {
    v5 = llvm::NoCFIValue::handleOperandChangeImpl(this, a2, a3);
  }

  else
  {
    v5 = llvm::ConstantArray::handleOperandChangeImpl(this, a2, a3);
  }

  if (v5)
  {
    llvm::Value::doRAUW(this, v5, 1);

    llvm::Constant::destroyConstant(this, v6, v7, v8);
  }
}

llvm::ConstantExpr *llvm::ConstantExpr::handleOperandChangeImpl(int32x2_t ****this, int32x2_t ***a2, llvm::Value *a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x800000000;
  v6 = *(this + 5);
  v7 = v6 & 0x7FFFFFF;
  if ((v6 & 0x7FFFFFF) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = this;
    do
    {
      if (v11[-4 * (*(this + 5) & 0x7FFFFFF)] == a2)
      {
        v10 = v8;
        ++v9;
        v12 = a3;
      }

      else
      {
        v12 = v11[-4 * (*(this + 5) & 0x7FFFFFF)];
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v17, v12);
      ++v8;
      v11 += 4;
    }

    while (v7 != v8);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v14 = 0;
    v10 = 0;
    v9 = 0;
    v13 = v19;
  }

  v15 = llvm::ConstantExpr::getWithOperands(this, v13, v14, *this, 1, 0);
  if (!v15)
  {
    v15 = llvm::ConstantUniqueMap<llvm::ConstantExpr>::replaceOperandsInPlace(***this + 193, v17, v18, this, a2, a3, v9, v10);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

llvm::Value *llvm::ConstantArray::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, uint64_t ***a3)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v45 = v47;
  v46 = 0x800000000;
  v6 = *(this + 5);
  if ((v6 & 0x7FFFFFFu) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v6 & 0x7FFFFFF, 8);
    v6 = *(this + 5);
  }

  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(this - 1);
    v7 = v6 & 0x7FFFFFF;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v7 = v6 & 0x7FFFFFF;
  v8 = &this[-4 * v7];
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 32 * v7;
  v13 = 1;
  do
  {
    v15 = *v8;
    v8 += 4;
    v14 = v15;
    if (v15 == a2)
    {
      v11 = v9;
      ++v10;
      v16 = a3;
    }

    else
    {
      v16 = v14;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v45, v16);
    v13 &= v16 == a3;
    ++v9;
    v12 -= 32;
  }

  while (v12);
  if (v13)
  {
LABEL_14:
    if (llvm::Constant::isNullValue(a3))
    {
      v18 = llvm::ConstantAggregateZero::get(*this, v17);
    }

    else
    {
      if (*(a3 + 16) - 11 > 1)
      {
        goto LABEL_19;
      }

      v18 = llvm::UndefValue::get(*this, v17);
    }

    Impl = v18;
    goto LABEL_45;
  }

LABEL_19:
  Impl = llvm::ConstantArray::getImpl(*this, v45, v46);
  if (!Impl)
  {
    v23 = ***this;
    *&v42 = *this;
    *(&v42 + 1) = v45;
    v43 = v46;
    HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v42, v20, v21, v22);
    v40 = v42;
    v41 = v43;
    v44[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>((v23 + 1280), &HashValue, v44))
    {
      v26 = v44[0] == (*(v23 + 1280) + 8 * *(v23 + 1296));
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove((v23 + 1280), this, v24, v25);
      v27 = *(this + 5) & 0x7FFFFFF;
      if (v10 == 1)
      {
        v28 = &(&this[4 * v11])[-4 * v27];
        if (*v28)
        {
          v29 = v28[1];
          *v28[2] = v29;
          if (v29)
          {
            v29[2] = v28[2];
          }
        }

        *v28 = a3;
        if (a3)
        {
          v32 = a3[1];
          v31 = (a3 + 1);
          v30 = v32;
          v28[1] = v32;
          if (v32)
          {
            v30[2] = (v28 + 1);
          }

          v28[2] = v31;
          *v31 = v28;
        }
      }

      else if (v27)
      {
        v33 = (a3 + 1);
        v27 = v27;
        v34 = this;
        do
        {
          v35 = v34 - 32 * (*(this + 5) & 0x7FFFFFF);
          if (*v35 == a2)
          {
            if (a2)
            {
              v36 = *(v35 + 1);
              **(v35 + 2) = v36;
              if (v36)
              {
                *(v36 + 16) = *(v35 + 2);
              }
            }

            *v35 = a3;
            if (a3)
            {
              v37 = *v33;
              *(v35 + 1) = *v33;
              if (v37)
              {
                *(v37 + 16) = v35 + 8;
              }

              *(v35 + 2) = v33;
              *v33 = v35;
            }
          }

          v34 = (v34 + 32);
          --v27;
        }

        while (v27);
      }

      v48[0] = this;
      llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(v23 + 1280, v48, &HashValue, v44);
      Impl = 0;
    }

    else
    {
      Impl = *v44[0];
    }
  }

LABEL_45:
  if (v45 != v47)
  {
    free(v45);
  }

  return Impl;
}

llvm::Value *llvm::ConstantStruct::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, uint64_t ***a3)
{
  v47[2] = *MEMORY[0x277D85DE8];
  v6 = *(this + 5);
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(this - 1);
    LODWORD(v7) = v6 & 0x7FFFFFF;
  }

  else
  {
    v7 = v6 & 0x7FFFFFF;
    v8 = &this[-4 * v7];
  }

  v44 = v46;
  v45 = 0x800000000;
  if (v7 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v7, 8);
    LODWORD(v7) = *(this + 5) & 0x7FFFFFF;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 32 * v7;
  v13 = 1;
  do
  {
    v15 = *v8;
    v8 += 4;
    v14 = v15;
    if (v15 == a2)
    {
      ++v11;
      v10 = v9;
      v16 = a3;
    }

    else
    {
      v16 = v14;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v44, v16);
    v13 &= v16 == a3;
    ++v9;
    v12 -= 32;
  }

  while (v12);
  if (v13)
  {
LABEL_15:
    if (llvm::Constant::isNullValue(a3))
    {
      v20 = llvm::ConstantAggregateZero::get(*this, v17);
    }

    else
    {
      if (*(a3 + 16) - 11 > 1)
      {
        goto LABEL_20;
      }

      v20 = llvm::UndefValue::get(*this, v17);
    }

    v21 = v20;
    goto LABEL_45;
  }

LABEL_20:
  v22 = ***this;
  *&v41 = *this;
  *(&v41 + 1) = v44;
  v42 = v45;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v41, v17, v18, v19);
  v39 = v41;
  v40 = v42;
  v43[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>((v22 + 1304), &HashValue, v43))
  {
    v25 = v43[0] == (*(v22 + 1304) + 8 * *(v22 + 1320));
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    llvm::ConstantUniqueMap<llvm::ConstantArray>::remove((v22 + 1304), this, v23, v24);
    v26 = *(this + 5) & 0x7FFFFFF;
    if (v11 == 1)
    {
      v27 = &(&this[4 * v10])[-4 * v26];
      if (*v27)
      {
        v28 = v27[1];
        *v27[2] = v28;
        if (v28)
        {
          v28[2] = v27[2];
        }
      }

      *v27 = a3;
      if (a3)
      {
        v31 = a3[1];
        v30 = (a3 + 1);
        v29 = v31;
        v27[1] = v31;
        if (v31)
        {
          v29[2] = (v27 + 1);
        }

        v27[2] = v30;
        *v30 = v27;
      }
    }

    else if (v26)
    {
      v32 = (a3 + 1);
      v26 = v26;
      v33 = this;
      do
      {
        v34 = v33 - 32 * (*(this + 5) & 0x7FFFFFF);
        if (*v34 == a2)
        {
          if (a2)
          {
            v35 = *(v34 + 1);
            **(v34 + 2) = v35;
            if (v35)
            {
              *(v35 + 16) = *(v34 + 2);
            }
          }

          *v34 = a3;
          if (a3)
          {
            v36 = *v32;
            *(v34 + 1) = *v32;
            if (v36)
            {
              *(v36 + 16) = v34 + 8;
            }

            *(v34 + 2) = v32;
            *v32 = v34;
          }
        }

        v33 = (v33 + 32);
        --v26;
      }

      while (v26);
    }

    v47[0] = this;
    llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(v22 + 1304, v47, &HashValue, v43);
    v21 = 0;
  }

  else
  {
    v21 = *v43[0];
  }

LABEL_45:
  if (v44 != v46)
  {
    free(v44);
  }

  return v21;
}

llvm::Value *llvm::ConstantVector::handleOperandChangeImpl(uint64_t ***this, llvm::Value *a2, uint64_t ***a3)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v42 = v44;
  v43 = 0x800000000;
  v6 = *(this + 5);
  v7 = v6 & 0x7FFFFFF;
  if ((v6 & 0x7FFFFFFu) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v7, 8);
    LODWORD(v7) = *(this + 5) & 0x7FFFFFF;
  }

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = this;
    v12 = v7;
    do
    {
      v13 = *(v11 - 4 * (*(this + 5) & 0x7FFFFFF));
      if (v13 == a2)
      {
        v10 = v8;
      }

      else
      {
        v10 = v10;
      }

      if (v13 == a2)
      {
        ++v9;
        v14 = a3;
      }

      else
      {
        v14 = *(v11 - 4 * (*(this + 5) & 0x7FFFFFF));
      }

      llvm::SmallVectorTemplateBase<void *,true>::push_back(&v42, v14);
      ++v8;
      v11 = (v11 + 32);
    }

    while (v12 != v8);
    v15 = v9 == 1;
  }

  else
  {
    v10 = 0;
    v15 = 0;
  }

  Impl = llvm::ConstantVector::getImpl(v42, v43, v7);
  if (!Impl)
  {
    v20 = ***this;
    *&v39 = *this;
    *(&v39 + 1) = v42;
    v40 = v43;
    HashValue = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(&v39, v16, v17, v18);
    v37 = v39;
    v38 = v40;
    v41[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>((v20 + 1328), &HashValue, v41))
    {
      v23 = v41[0] == (*(v20 + 1328) + 8 * *(v20 + 1344));
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      llvm::ConstantUniqueMap<llvm::ConstantArray>::remove((v20 + 1328), this, v21, v22);
      v24 = *(this + 5) & 0x7FFFFFF;
      if (v15)
      {
        v25 = &(&this[4 * v10])[-4 * v24];
        if (*v25)
        {
          v26 = v25[1];
          *v25[2] = v26;
          if (v26)
          {
            v26[2] = v25[2];
          }
        }

        *v25 = a3;
        if (a3)
        {
          v29 = a3[1];
          v28 = (a3 + 1);
          v27 = v29;
          v25[1] = v29;
          if (v29)
          {
            v27[2] = (v25 + 1);
          }

          v25[2] = v28;
          *v28 = v25;
        }
      }

      else if (v24)
      {
        v30 = (a3 + 1);
        v24 = v24;
        v31 = this;
        do
        {
          v32 = v31 - 32 * (*(this + 5) & 0x7FFFFFF);
          if (*v32 == a2)
          {
            if (a2)
            {
              v33 = *(v32 + 1);
              **(v32 + 2) = v33;
              if (v33)
              {
                *(v33 + 16) = *(v32 + 2);
              }
            }

            *v32 = a3;
            if (a3)
            {
              v34 = *v30;
              *(v32 + 1) = *v30;
              if (v34)
              {
                *(v34 + 16) = v32 + 8;
              }

              *(v32 + 2) = v30;
              *v30 = v32;
            }
          }

          v31 = (v31 + 32);
          --v24;
        }

        while (v24);
      }

      v45[0] = this;
      llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(v20 + 1328, v45, &HashValue, v41);
      Impl = 0;
    }

    else
    {
      Impl = *v41[0];
    }
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return Impl;
}

uint64_t llvm::ConstantUniqueMap<llvm::ConstantExpr>::replaceOperandsInPlace(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v14 = *(a4 + 18);
  v15 = *(a4 + 18);
  v16 = *(a4 + 17) >> 1;
  if ((v14 - 53) > 1)
  {
    if (v14 == 34)
    {
      v17 = 0;
      v18 = 0;
      v20 = 0;
      v19 = *(a4 + 24);
    }

    else if (v14 == 63)
    {
      v20 = 0;
      v19 = 0;
      v18 = *(a4 + 24);
      v17 = *(a4 + 32);
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v20 = 0;
      v19 = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *(a4 + 24);
  }

  *&v40 = *a4;
  BYTE8(v40) = v15;
  BYTE9(v40) = v16;
  WORD5(v40) = v20;
  *&v41 = a2;
  *(&v41 + 1) = a3;
  *&v42 = v18;
  *(&v42 + 1) = v17;
  v43 = v19;
  HashValue = llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo::getHashValue(&v40, a2, a3, a4);
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v44[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, &HashValue, v44) && v44[0] != *a1 + 8 * a1[2].u32[0])
  {
    return *v44[0];
  }

  llvm::ConstantUniqueMap<llvm::ConstantExpr>::remove(a1, a4, v21, v22);
  v24 = *(a4 + 20) & 0x7FFFFFF;
  if (a7 == 1)
  {
    v25 = a4 - 32 * v24 + 32 * a8;
    if (*v25)
    {
      v26 = *(v25 + 8);
      **(v25 + 16) = v26;
      if (v26)
      {
        *(v26 + 16) = *(v25 + 16);
      }
    }

    *v25 = a6;
    if (a6)
    {
      v29 = *(a6 + 8);
      v28 = (a6 + 8);
      v27 = v29;
      *(v25 + 8) = v29;
      if (v29)
      {
        *(v27 + 16) = v25 + 8;
      }

      *(v25 + 16) = v28;
      *v28 = v25;
    }
  }

  else if (v24)
  {
    v30 = (a6 + 8);
    v24 = v24;
    v31 = a4;
    do
    {
      v32 = v31 - 32 * (*(a4 + 20) & 0x7FFFFFF);
      if (*v32 == a5)
      {
        if (a5)
        {
          v33 = *(v32 + 8);
          **(v32 + 16) = v33;
          if (v33)
          {
            *(v33 + 16) = *(v32 + 16);
          }
        }

        *v32 = a6;
        if (a6)
        {
          v34 = *v30;
          *(v32 + 8) = *v30;
          if (v34)
          {
            *(v34 + 16) = v32 + 8;
          }

          *(v32 + 16) = v30;
          *v30 = v32;
        }
      }

      v31 += 32;
      --v24;
    }

    while (v24);
  }

  v45[0] = a4;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>,llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantExpr>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::insert_as<std::pair<unsigned int,std::pair<llvm::Type *,llvm::ConstantExprKeyType>>>(a1, v45, &HashValue, v44);
  return 0;
}

void llvm::ShuffleVectorConstantExpr::~ShuffleVectorConstantExpr(llvm::ShuffleVectorConstantExpr *this, llvm::Value *a2)
{
  v3 = *(this + 3);
  if (v3 != this + 40)
  {
    free(v3);
  }

  llvm::Value::~Value(this, a2);
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = 0;
  }

  return inserted;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>,unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<unsigned int,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::unique_ptr<llvm::ConstantInt>>>::grow(uint64_t a1, int a2)
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
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          *(v16 + 4) = -1;
        }

        v11 += 4;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = (v4 + 8);
      do
      {
        if (*(v20 - 2) <= 0xFFFFFFFD)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>,unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::MachOLinkGraphBuilder::NormalizedSymbol *>>::LookupBucketFor<unsigned int>(a1, v20 - 2, &v32);
          v21 = v32;
          *v32 = *(v20 - 2);
          v22 = *v20;
          *v20 = 0;
          *(v21 + 1) = v22;
          ++*(a1 + 8);
          std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](v20, 0);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 3) + 4;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vdupq_n_s64(v24);
      v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1210)));
      if (vuzp1_s16(v31, *v28.i8).u8[0])
      {
        *(v29 - 8) = -1;
      }

      if (vuzp1_s16(v31, *&v28).i8[2])
      {
        *(v29 - 4) = -1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1830)))).i32[1])
      {
        *v29 = -1;
        *(v29 + 4) = -1;
      }

      v24 += 4;
      v29 += 64;
    }

    while (v27 != v24);
  }

  return result;
}

llvm::APInt *llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::FindAndConstruct(uint64_t *a1, llvm::hashing::detail::hash_state **a2, uint64_t a3, unint64_t *a4)
{
  v9 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(a1, a2, &v9, a4);
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<llvm::APInt>(a1, a2, a2, v9);
    llvm::APInt::operator=(v7, a2);
    *(v7 + 2) = 0;
  }

  return v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(uint64_t *a1, llvm::hashing::detail::hash_state **this, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v22 = 0;
    v21 = -1;
    v20 = 0;
    v19 = -2;
    v8 = llvm::hash_value(this, this, a3, a4);
    v18 = 0;
    v9 = v5 - 1;
    v10 = *(this + 2);
    v11 = *this;
    for (i = 1; ; ++i)
    {
      v13 = v8 & v9;
      v14 = v7 + 24 * (v8 & v9);
      if (v10 == *(v14 + 8))
      {
        if (v10 > 0x40)
        {
          if (!memcmp(v11, *v14, ((v10 + 63) >> 3) & 0x3FFFFFF8))
          {
LABEL_12:
            result = 1;
            goto LABEL_13;
          }
        }

        else if (*v14 == v11)
        {
          goto LABEL_12;
        }
      }

      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v7 + 24 * v13, &v21))
      {
        break;
      }

      isEqual = llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v7 + 24 * v13, &v19);
      v16 = v18;
      if (isEqual && v18 == 0)
      {
        v16 = v7 + 24 * v13;
      }

      v18 = v16;
      v8 = v13 + i;
    }

    result = 0;
    if (v18)
    {
      v14 = v18;
    }

LABEL_13:
    *a3 = v14;
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

BOOL llvm::DenseMapInfo<llvm::APInt,void>::isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    return memcmp(*a1, *a2, ((v2 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  return *a1 == *a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::InsertIntoBucketImpl<llvm::APInt>(uint64_t a1, uint64_t a2, llvm::hashing::detail::hash_state **a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_8;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_8:
    llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::grow(a1, v7);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(a1, a3, &v10, v9);
    a4 = v10;
  }

  ++*(a1 + 8);
  if (*(a4 + 8) || *a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 24 * v11;
      v13 = result + 8;
      do
      {
        *v13 = 0;
        *(v13 - 1) = -1;
        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    if (v3)
    {
      v14 = (v4 + 16);
      v15 = 24 * v3;
      do
      {
        v16 = v14 - 2;
        if (*(v14 - 2) || *v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v22 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>,llvm::APInt,std::unique_ptr<llvm::ConstantInt>,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseMapPair<llvm::APInt,std::unique_ptr<llvm::ConstantInt>>>::LookupBucketFor<llvm::APInt>(a1, v14 - 2, &v22, v10);
          v17 = v22;
          llvm::APInt::operator=(v22, (v14 - 2));
          v18 = *v14;
          *v14 = 0;
          *(v17 + 16) = v18;
          ++*(a1 + 8);
          std::unique_ptr<llvm::ConstantInt>::reset[abi:nn200100](v14, 0);
          if (*(v14 - 2) >= 0x41u)
          {
            if (*v16)
            {
              MEMORY[0x277C69E10](*v16, 0x1000C8000313F17);
            }
          }
        }

        v14 += 3;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 24 * v19;
    v21 = result + 8;
    do
    {
      *v21 = 0;
      *(v21 - 1) = -1;
      v21 += 24;
      v20 -= 24;
    }

    while (v20);
  }

  return result;
}

llvm::APFloat *llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::FindAndConstruct(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(a1, a2, &v9, a4);
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::InsertIntoBucketImpl<llvm::APFloat>(a1, a2, a2, v9);
    llvm::APFloat::Storage::operator=((v7 + 8), (a2 + 8));
    *(v7 + 4) = 0;
  }

  return v7;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(uint64_t *a1, llvm *a2, llvm::APFloat **a3, unsigned int a4)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = 1;
    llvm::detail::IEEEFloat::IEEEFloat(v24, &llvm::semBogus, 1, a4);
    llvm::detail::IEEEFloat::IEEEFloat(v22, &llvm::semBogus, 2, v9);
    v13 = v5 - 1;
    v14 = v13 & llvm::hash_value(a2, v10, v11, v12);
    v15 = (v7 + 40 * v14);
    if ((llvm::APFloat::bitwiseIsEqual(a2, v15) & 1) == 0)
    {
      v20 = 0;
      v19 = 1;
      while (!llvm::APFloat::bitwiseIsEqual(v15, v23))
      {
        IsEqual = llvm::APFloat::bitwiseIsEqual(v15, v21);
        v18 = v20;
        if ((IsEqual & (v20 == 0)) != 0)
        {
          v18 = v15;
        }

        v20 = v18;
        v14 = (v14 + v19) & v13;
        v15 = (v7 + 40 * v14);
        v8 = 1;
        ++v19;
        if (llvm::APFloat::bitwiseIsEqual(a2, v15))
        {
          goto LABEL_3;
        }
      }

      v8 = 0;
      if (v20)
      {
        v15 = v20;
      }
    }

LABEL_3:
    *a3 = v15;
    llvm::APFloat::Storage::~Storage(v22);
    llvm::APFloat::Storage::~Storage(v24);
  }

  else
  {
    v8 = 0;
    *a3 = 0;
  }

  return v8;
}

llvm::APFloat *llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::InsertIntoBucketImpl<llvm::APFloat>(uint64_t a1, uint64_t a2, llvm *a3, llvm::APFloat *a4)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else
  {
    v8 = a4;
    if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      goto LABEL_3;
    }
  }

  llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::grow(a1, v7);
  v11 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(a1, a3, &v11, v10);
  v8 = v11;
LABEL_3:
  ++*(a1 + 8);
  llvm::detail::IEEEFloat::IEEEFloat(v12, &llvm::semBogus, 1, a4);
  if ((llvm::APFloat::bitwiseIsEqual(v8, &v11) & 1) == 0)
  {
    --*(a1 + 12);
  }

  llvm::APFloat::Storage::~Storage(v12);
  return v8;
}

void llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::grow(uint64_t a1, int a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
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
  *a1 = operator new(40 * v8, 8uLL);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::initEmpty(a1, v9, v10, v11);
    llvm::detail::IEEEFloat::IEEEFloat(v23, &llvm::semBogus, 1, v12);
    llvm::detail::IEEEFloat::IEEEFloat(v21, &llvm::semBogus, 2, v13);
    if (v3)
    {
      v14 = 40 * v3;
      v15 = (v4 + 32);
      do
      {
        if ((llvm::APFloat::bitwiseIsEqual((v15 - 4), v22) & 1) == 0 && (llvm::APFloat::bitwiseIsEqual((v15 - 4), v20) & 1) == 0)
        {
          v19 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::LookupBucketFor<llvm::APFloat>(a1, (v15 - 4), &v19, v16);
          v17 = v19;
          llvm::APFloat::Storage::operator=((v19 + 8), (v15 - 3));
          v18 = *v15;
          *v15 = 0;
          *(v17 + 4) = v18;
          ++*(a1 + 8);
          std::unique_ptr<llvm::ConstantFP>::reset[abi:nn200100](v15, 0);
        }

        llvm::APFloat::Storage::~Storage((v15 - 3));
        v15 += 5;
        v14 -= 40;
      }

      while (v14);
    }

    llvm::APFloat::Storage::~Storage(v21);
    llvm::APFloat::Storage::~Storage(v23);

    JUMPOUT(0x277C69E30);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::initEmpty(a1, v9, v10, v11);
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>,llvm::APFloat,std::unique_ptr<llvm::ConstantFP>,llvm::DenseMapAPFloatKeyInfo,llvm::detail::DenseMapPair<llvm::APFloat,std::unique_ptr<llvm::ConstantFP>>>::initEmpty(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9[3] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  llvm::detail::IEEEFloat::IEEEFloat(v9, &llvm::semBogus, 1, a4);
  v5 = *(a1 + 4);
  if (v5)
  {
    v6 = *a1;
    v7 = 40 * v5;
    v8 = (v6 + 8);
    do
    {
      v8 = (llvm::APFloat::Storage::Storage(v8, v9) + 40);
      v7 -= 40;
    }

    while (v7);
  }

  llvm::APFloat::Storage::~Storage(v9);
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  result = a3;
  v5 = (a4 + 8);
  do
  {
    v6 = v5 - 1;
    v7 = *a2;
    if (*(v5 - 1))
    {
      v8 = *v5;
      *v5[1] = *v5;
      if (v8)
      {
        *(v8 + 16) = v5[1];
      }
    }

    *v6 = v7;
    if (v7)
    {
      v11 = *(v7 + 8);
      v9 = (v7 + 8);
      v10 = v11;
      *v5 = v11;
      if (v11)
      {
        *(v10 + 16) = v5;
      }

      v5[1] = v9;
      *v9 = v6;
    }

    ++a2;
    v5 += 4;
  }

  while (a2 != a3);
  return result;
}

unint64_t llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::getHashValue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*(a1 + 8), *(a1 + 8) + 8 * *(a1 + 16), a3, a4);
  llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v7);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(v7, 0, v7, v8, a1, &v6);
}

void *llvm::ConstantUniqueMap<llvm::ConstantArray>::create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, _DWORD *a5)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v10 = llvm::User::operator new(0x18, a4);
  *v10 = a2;
  v10[1] = 0;
  v11 = *(v10 + 5) & 0xC0000000 | a4 & 0x7FFFFFF;
  *(v10 + 4) = 8;
  *(v10 + 5) = v11;
  std::__copy_impl::operator()[abi:nn200100]<llvm::Constant * const*,llvm::Constant * const*,llvm::Use *>(v13, a3, &a3[a4], &v10[-4 * (a4 & 0x7FFFFFF)]);
  v14[0] = v10;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::insert_as<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(a1, v14, a5, v13);
  return v10;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayType *,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>,llvm::ConstantArray *,llvm::detail::DenseSetEmpty,llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo,llvm::detail::DenseSetPair<llvm::ConstantArray *>>::LookupBucketFor<std::pair<unsigned int,std::pair<llvm::ArrayType *,llvm::ConstantAggrKeyType<llvm::ConstantArray>>>>(uint64_t *a1, _DWORD *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = v4 - 1;
    v8 = *a2 & (v4 - 1);
    v9 = (*a1 + 8 * v8);
    if (llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::isEqual(a2, *v9))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -4096)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -8192;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = (v6 + 8 * v8);
        isEqual = llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::isEqual(a2, *v9);
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

BOOL llvm::ConstantUniqueMap<llvm::ConstantArray>::MapInfo::isEqual(void *a1, uint64_t a2)
{
  if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    return 0;
  }

  if (a1[1] != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  if (v2 != (*(a2 + 20) & 0x7FFFFFF))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a1[2];
  v4 = (a2 - 32 * v2);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4;
    v4 += 4;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}