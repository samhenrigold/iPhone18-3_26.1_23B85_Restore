uint64_t llvm::detail::IEEEFloat::mod(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3, unsigned int a4)
{
  result = llvm::detail::IEEEFloat::modSpecials(this, a2, a3, a4);
  v9 = *(this + 20);
  v10 = (v9 & 6) == 0 || (v9 & 7) == 3;
  if (v10 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
  {
    LOBYTE(v11) = *(this + 20);
    goto LABEL_7;
  }

  v14 = (this + 8);
  while (1)
  {
    v15 = *(this + 4) - *(a2 + 4);
    if (!v15)
    {
      v16 = result;
      v17 = *(*this + 8);
      v18 = (this + 8);
      if ((v17 - 64) <= 0xFFFFFF7F)
      {
        v18 = *v14;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v19 = (a2 + 8);
      }

      else
      {
        v19 = *(a2 + 1);
      }

      v15 = llvm::APInt::tcCompare(v18, v19, ((v17 + 64) >> 6));
      result = v16;
    }

    if (v15 < 0)
    {
      break;
    }

    v20 = llvm::detail::ilogb(this, v7, v8);
    v23 = llvm::detail::ilogb(a2, v21, v22);
    v24 = *a2;
    v75 = v24;
    if ((v24[2] + 64) >= 0x80)
    {
      operator new[]();
    }

    v25 = *(a2 + 20);
    v26 = v25 & 7;
    v78 = v78 & 0xF0 | v25 & 0xF;
    v27 = *(a2 + 4);
    v77 = v27;
    v29 = (v25 & 6) != 0 && v26 != 3;
    if (v26 == 1 || v29)
    {
      v31 = v24[2];
      if ((v31 - 64) >= 0xFFFFFF80)
      {
        v32 = &v76;
      }

      else
      {
        v32 = v76;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v33 = (a2 + 8);
      }

      else
      {
        v33 = *(a2 + 1);
      }

      llvm::APInt::tcAssign(v32, v33, ((v31 + 64) >> 6));
      v24 = v75;
      v27 = v77;
    }

    v34 = v20 - v23;
    v35 = *v24 + v24[2] + ~v24[1];
    v36 = -2 - v35;
    if (v35 + 1 < v34)
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v34;
    }

    if (v36 > v34)
    {
      v37 = v36;
    }

    v77 = v37 + v27;
    llvm::detail::IEEEFloat::normalize(&v75, 1, 0);
    v39 = v78;
    v40 = v75;
    if ((v78 & 7) == 1)
    {
      v41 = v75[4];
      if (v41 != 1)
      {
        v42 = v75[2];
        if ((v42 - 64) >= 0xFFFFFF80)
        {
          v43 = &v76;
        }

        else
        {
          v43 = v76;
        }

        llvm::APInt::tcSetBit(v43, (v42 - 2));
        v40 = v75;
        v39 = v78;
        LOBYTE(v41) = (v78 & 7) == 1;
      }
    }

    else
    {
      LOBYTE(v41) = 0;
    }

    v79 = v40;
    v80 = v76;
    v81 = v77;
    v82 = v82 & 0xF0 | v39 & 0xF;
    v75 = &llvm::semBogus;
    if (v41)
    {
      goto LABEL_64;
    }

    v44 = *(this + 4);
    if (v44 == v77)
    {
      v45 = *(*this + 8);
      v46 = (this + 8);
      if ((v45 - 64) <= 0xFFFFFF7F)
      {
        v46 = *v14;
      }

      if ((v40[2] - 64) >= 0xFFFFFF80)
      {
        v47 = &v80;
      }

      else
      {
        v47 = v76;
      }

      if ((llvm::APInt::tcCompare(v46, v47, ((v45 + 64) >> 6)) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

LABEL_64:
      v48 = *a2;
      v71 = v48;
      if ((v48[2] + 64) >= 0x80)
      {
        operator new[]();
      }

      v49 = *(a2 + 20);
      v50 = v49 & 7;
      v74 = v74 & 0xF0 | v49 & 0xF;
      v51 = *(a2 + 4);
      v73 = v51;
      v53 = (v49 & 6) != 0 && v50 != 3;
      if (v50 == 1 || v53)
      {
        v54 = v48[2];
        if ((v54 - 64) >= 0xFFFFFF80)
        {
          v55 = &v72;
        }

        else
        {
          v55 = v72;
        }

        if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
        {
          v56 = (a2 + 8);
        }

        else
        {
          v56 = *(a2 + 1);
        }

        llvm::APInt::tcAssign(v55, v56, ((v54 + 64) >> 6));
        v48 = v71;
        v51 = v73;
      }

      v57 = *v48 + v48[2] + ~v48[1];
      v58 = -2 - v57;
      if (v57 + 1 < v34 - 1)
      {
        v59 = v57 + 1;
      }

      else
      {
        v59 = v34 - 1;
      }

      if (v58 >= v34)
      {
        v59 = v58;
      }

      v73 = v59 + v51;
      llvm::detail::IEEEFloat::normalize(&v71, 1, 0);
      v60 = v74;
      v61 = v71;
      if ((v74 & 7) == 1 && v71[4] != 1)
      {
        v62 = v71[2];
        if ((v62 - 64) >= 0xFFFFFF80)
        {
          v63 = &v72;
        }

        else
        {
          v63 = v72;
        }

        llvm::APInt::tcSetBit(v63, (v62 - 2));
        v61 = v71;
        v60 = v74;
      }

      v64 = v72;
      v65 = v73;
      v71 = &llvm::semBogus;
      if ((v79[2] - 64) <= 0xFFFFFF7F && v80)
      {
        MEMORY[0x259C63150](v80, 0x1000C8000313F17);
        v66 = v71;
      }

      else
      {
        v66 = &llvm::semBogus;
      }

      v79 = v61;
      v80 = v64;
      v81 = v65;
      v82 = v82 & 0xF0 | v60 & 0xF;
      if ((v66[2] - 64) <= 0xFFFFFF7F && v72)
      {
        MEMORY[0x259C63150](v72, 0x1000C8000313F17);
      }

      goto LABEL_99;
    }

    if (v44 - v77 < 0)
    {
      goto LABEL_64;
    }

LABEL_99:
    v82 = v82 & 0xF7 | *(this + 20) & 8;
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v79, 1u, v38);
    if (result == 2)
    {
      v69 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v79, 1u, v67, v68);
      result = llvm::detail::IEEEFloat::normalize(this, 1, v69);
    }

    v11 = *(this + 20);
    if ((v11 & 7) == 3)
    {
      if ((v82 & 7) != 3 || ((v82 ^ v11) & 8) == 0)
      {
        LOBYTE(v11) = v11 & 0xF3;
        *(this + 20) = v11;
      }

      if (*(*this + 20) == 2)
      {
        LOBYTE(v11) = v11 & 0xF3;
        *(this + 20) = v11;
      }
    }

    if ((v79[2] - 64) <= 0xFFFFFF7F && v80)
    {
      v70 = result;
      MEMORY[0x259C63150](v80, 0x1000C8000313F17);
      result = v70;
      LOBYTE(v11) = *(this + 20);
    }

    if ((v11 & 6) == 0 || (v11 & 7) == 3 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(v11) = *(this + 20);
LABEL_7:
  if ((v11 & 7) == 3)
  {
    v12 = v11 & 0xF3;
    v13 = v12 | v9 & 8;
    *(this + 20) = v13;
    if (*(*this + 20) == 2)
    {
      v13 = v12;
    }

    *(this + 20) = v13;
  }

  return result;
}

uint64_t llvm::detail::ilogb(llvm::detail *this, const llvm::detail::IEEEFloat *a2, unsigned int a3)
{
  v5 = *(this + 20);
  v6 = v5 & 7;
  if ((v5 & 7) == 0)
  {
    return 0x7FFFFFFFLL;
  }

  if (v6 == 1)
  {
    return 0x80000000;
  }

  if (v6 == 3)
  {
    return 2147483649;
  }

  v30 = v3;
  v31 = v4;
  v8 = (v5 & 6) == 0 || v6 == 3;
  if (v8 || *(this + 4) != *(*this + 4))
  {
    return *(this + 4);
  }

  v9 = *(*this + 8);
  v10 = (this + 8);
  v11 = (v9 - 64) >= 0xFFFFFF80 ? (this + 8) : *(this + 1);
  v12 = this;
  Bit = llvm::APInt::tcExtractBit(v11, (v9 - 1));
  this = v12;
  if (Bit)
  {
    return *(this + 4);
  }

  v14 = *v12;
  v26 = v14;
  v15 = *(v14 + 8);
  v16 = v14;
  if ((v15 + 64) >= 0x80)
  {
    operator new[]();
  }

  v17 = *(v12 + 20);
  v18 = v17 & 7;
  v29 = v17 & 0xF;
  v19 = *(v12 + 4);
  v28 = v19;
  v21 = (v17 & 6) != 0 && v18 != 3;
  if (v18 == 1 || v21)
  {
    v22 = *(v14 + 8);
    if ((v22 - 64) >= 0xFFFFFF80)
    {
      v15 = &v27;
    }

    if ((*(v14 + 8) - 64) >= 0xFFFFFF80)
    {
      v23 = v10;
    }

    else
    {
      v23 = *(v12 + 1);
    }

    llvm::APInt::tcAssign(v15, v23, ((v22 + 64) >> 6));
    v16 = *v12;
    v19 = v28;
  }

  v24 = *(v16 + 8) - 1;
  v28 = v19 + v24;
  llvm::detail::IEEEFloat::normalize(&v26, 1, 0);
  result = (v28 - v24);
  if ((*(v26 + 8) - 64) <= 0xFFFFFF7F)
  {
    if (v27)
    {
      v25 = (v28 - v24);
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      return v25;
    }
  }

  return result;
}

uint64_t llvm::detail::scalbn@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = **a1 + *(*a1 + 8) + ~*(*a1 + 4);
  v7 = -2 - v6;
  if (v6 + 1 < a2)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = a2;
  }

  if (v7 > a2)
  {
    v8 = v7;
  }

  *(a1 + 4) += v8;
  result = llvm::detail::IEEEFloat::normalize(a1, a3, 0);
  v10 = *(a1 + 20);
  v11 = *a1;
  if ((v10 & 7) == 1 && *(v11 + 16) != 1)
  {
    v12 = *(v11 + 8);
    v13 = a1 + 1;
    if ((v12 - 64) <= 0xFFFFFF7F)
    {
      v13 = *v13;
    }

    result = llvm::APInt::tcSetBit(v13, (v12 - 2));
    v11 = *a1;
    v10 = *(a1 + 20);
  }

  v14 = a1[1];
  *a4 = v11;
  *(a4 + 8) = v14;
  *(a4 + 16) = *(a1 + 4);
  *(a4 + 20) = *(a4 + 20) & 0xF0 | v10 & 0xF;
  *a1 = &llvm::semBogus;
  return result;
}

uint64_t llvm::detail::IEEEFloat::fusedMultiplyAdd(llvm::detail::IEEEFloat **this, const llvm::detail::IEEEFloat *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = this;
  v9 = *(this + 20);
  *(this + 20) = *(a2 + 20) & 8 ^ v9;
  v10 = v9 & 6;
  v11 = v9 & 7;
  if (v10)
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || ((*(a2 + 20) & 6) != 0 ? (v13 = (*(a2 + 20) & 7) == 3) : (v13 = 1), v13 || (v14 = *(a3 + 20), (v14 & 6) == 0)))
  {
    if (llvm::detail::IEEEFloat::multiplySpecials(this, a2, a3, a4))
    {
      return 1;
    }

    else
    {
      result = llvm::detail::IEEEFloat::addOrSubtractSpecials(v8, a3, 0, v16);
      if (result == 2)
      {
        v20 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v8, a3, 0, v18, v19);
        result = llvm::detail::IEEEFloat::normalize(v8, a4, v20);
      }

      v21 = v8[20];
      if ((v21 & 7) == 3)
      {
        v22 = *(a3 + 20);
        if ((v22 & 7) != 3 || ((v22 ^ v21) & 8) != 0)
        {
          LOBYTE(v21) = v21 & 0xF3 | (8 * (a4 == 3));
          v8[20] = v21;
        }

        if (*(*v8 + 20) == 2)
        {
          v23 = v21 & 0xF7;
LABEL_41:
          v8[20] = v23;
        }
      }
    }
  }

  else
  {
    v15 = *a3;
    v30 = v15;
    if ((*(v15 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v24 = v14 & 7;
    v33 = v14 & 0xF;
    v32 = *(a3 + 16);
    if (v24 != 3)
    {
      v25 = *(v15 + 8);
      if ((v25 - 64) >= 0xFFFFFF80)
      {
        this = &v31;
      }

      if ((*(*a3 + 8) - 64) >= 0xFFFFFF80)
      {
        v26 = (a3 + 8);
      }

      else
      {
        v26 = *(a3 + 8);
      }

      v27 = a2;
      llvm::APInt::tcAssign(this, v26, ((v25 + 64) >> 6));
      a2 = v27;
    }

    v28 = llvm::detail::IEEEFloat::multiplySignificand(v8, a2, &v30, a4, a5, a6);
    if ((*(v30 + 8) - 64) <= 0xFFFFFF7F && v31)
    {
      MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }

    LODWORD(result) = llvm::detail::IEEEFloat::normalize(v8, a4, v28);
    if (v28)
    {
      result = result | 0x10;
    }

    else
    {
      result = result;
    }

    v29 = v8[20];
    if ((v29 & 7) == 3 && (result & 8) == 0 && ((*(a3 + 20) ^ v29) & 8) != 0)
    {
      v23 = v29 & 0xF3;
      v8[20] = v23 | (8 * (a4 == 3));
      if (*(*v8 + 20) != 2)
      {
        v23 |= 8 * (a4 == 3);
      }

      goto LABEL_41;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromAPInt(uint64_t a1, const void **a2, int a3, uint64_t a4)
{
  v6 = *(a2 + 2);
  v7 = ((v6 + 63) >> 6);
  v17 = *(a2 + 2);
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, a2);
  }

  v8 = *a2;
  v16 = *a2;
  v9 = *(a1 + 20);
  *(a1 + 20) = v9 & 0xF7;
  if (a3 && ((v16 >> (v6 - 1)) & 1) != 0)
  {
    *(a1 + 20) = v9 | 8;
    v15 = v6;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v10 = 0;
    }

    v14 = (v10 & ~v8);
    llvm::APInt::operator++(&v14);
    LODWORD(v6) = v15;
    v8 = v14;
    v15 = 0;
    if (v17 > 0x40 && v16)
    {
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      v16 = v8;
      v17 = v6;
      if (v15 >= 0x41 && v14)
      {
        MEMORY[0x259C63150](v14, 0x1000C8000313F17);
        LODWORD(v6) = v17;
        v8 = v16;
      }
    }

    else
    {
      v16 = v14;
      v17 = v6;
    }
  }

  if (v6 >= 0x41)
  {
    v11 = v8;
  }

  else
  {
    v11 = &v16;
  }

  result = llvm::detail::IEEEFloat::convertFromUnsignedParts(a1, v11, v7, a4);
  if (v17 >= 0x41)
  {
    if (v16)
    {
      v13 = result;
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      return v13;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertToSignExtendedInteger(uint64_t a1, llvm::APInt *this, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  *a7 = 0;
  v7 = *(a1 + 20) & 7;
  if (v7 < 2)
  {
    return 1;
  }

  v11 = ((a4 + 63) >> 6);
  if (v7 == 3)
  {
    llvm::APInt::tcSet(this, 0, (a4 + 63) >> 6);
    LOBYTE(v12) = ((*(a1 + 20) >> 3) & 1) == 0;
LABEL_5:
    v8 = 0;
    *a7 = v12;
    return v8;
  }

  v14 = (a1 + 8);
  v15 = *(*a1 + 8);
  v16 = (a1 + 8);
  if ((v15 - 64) <= 0xFFFFFF7F)
  {
    v16 = *v14;
  }

  v17 = *(a1 + 16);
  if ((v17 & 0x80000000) != 0)
  {
    v22 = a6;
    v19 = a5;
    v39 = a4;
    llvm::APInt::tcSet(this, 0, (a4 + 63) >> 6);
    v21 = (*(*a1 + 8) + ~*(a1 + 16));
    if (!v21)
    {
LABEL_18:
      v29 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 >= a4)
    {
      return 1;
    }

    v19 = a5;
    v39 = a4;
    v20 = v17 + 1;
    v21 = v15 - (v17 + 1);
    if (v15 <= v17 + 1)
    {
      llvm::APInt::tcExtract(this, ((a4 + 63) >> 6), v16, v15, 0);
      llvm::APInt::tcShiftLeft(this, v11, v20 - *(*a1 + 8));
      v29 = 1;
      v30 = llvm::APInt::tcMSB(this, v11);
      v31 = v30 + 1;
      if ((*(a1 + 20) & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_52;
    }

    v22 = a6;
    llvm::APInt::tcExtract(this, ((a4 + 63) >> 6), v16, (v17 + 1), v15 - v20);
    if (!v21)
    {
      goto LABEL_18;
    }
  }

  v23 = *(*a1 + 8) + 64;
  v24 = llvm::APInt::tcLSB(v16, (v23 >> 6));
  if (v24 >= v21)
  {
    goto LABEL_18;
  }

  v25 = v24 + 1;
  v26 = this;
  if (v25 == v21)
  {
    v27 = 0;
    v28 = 2;
  }

  else if ((v23 & 0xFFFFFFC0) >= v21 && (Bit = llvm::APInt::tcExtractBit(v16, (v21 - 1)), v26 = this, Bit))
  {
    v27 = 0;
    v28 = 3;
  }

  else
  {
    v27 = 1;
    v28 = 1;
  }

  if (v22 <= 1)
  {
    if (v22)
    {
      if (v28 == 3)
      {
        goto LABEL_48;
      }

      if (v28 == 2 && (*(a1 + 20) & 7) != 3)
      {
        if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
        {
          v14 = *v14;
        }

        v35 = llvm::APInt::tcExtractBit(v14, v21);
        v26 = this;
        if (v35)
        {
          goto LABEL_48;
        }
      }
    }

    goto LABEL_51;
  }

  if (v22 == 2)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v22 == 3)
    {
      if ((*(a1 + 20) & 8) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    if (v27)
    {
LABEL_51:
      v29 = 0;
      v30 = llvm::APInt::tcMSB(v26, v11);
      v31 = v30 + 1;
      if ((*(a1 + 20) & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_52:
      if (v19)
      {
        v36 = this;
        if (v31 == v39)
        {
          v37 = v30;
          v38 = llvm::APInt::tcLSB(this, v11);
          v36 = this;
          if (v38 == v37)
          {
            goto LABEL_59;
          }
        }

        else if (v31 <= v39)
        {
LABEL_59:
          llvm::APInt::tcNegate(v36, v11);
          if ((v29 & 1) == 0)
          {
            return 16;
          }

          LOBYTE(v12) = 1;
          goto LABEL_5;
        }
      }

      else
      {
        v36 = this;
        if (!v31)
        {
          goto LABEL_59;
        }
      }

      return 1;
    }
  }

LABEL_48:
  v8 = 1;
  if (llvm::APInt::tcAddPart(v26, 1, v11))
  {
    return v8;
  }

  v29 = 0;
LABEL_19:
  v30 = llvm::APInt::tcMSB(this, v11);
  v31 = v30 + 1;
  if ((*(a1 + 20) & 8) != 0)
  {
    goto LABEL_52;
  }

LABEL_22:
  v32 = (v19 ^ 1) + v39;
  v33 = v31 >= v32;
  if (v31 < v32)
  {
    v12 = v29;
  }

  else
  {
    v12 = 0;
  }

  if (v33)
  {
    v8 = 1;
  }

  else
  {
    v8 = 16;
  }

  if (v12 == 1)
  {
    goto LABEL_5;
  }

  return v8;
}

uint64_t llvm::detail::IEEEFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  result = llvm::detail::IEEEFloat::convertToSignExtendedInteger(a1, a2, a3, a4, a5, a6, a7);
  if (result != 1)
  {
    return result;
  }

  v12 = ((a4 + 63) >> 6);
  if ((*(a1 + 20) & 7) != 1)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v13 = 0;
      LOBYTE(v14) = a5;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = a4 - a5;
      v15 = a4 - a5 - 65;
      if (a4 - a5 < 0x41)
      {
        v13 = 0;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v16 = result;
        memset(a2, 255, 8 * (v15 >> 6) + 8);
        result = v16;
        v13 = (v15 >> 6) + 1;
        v17 = v14 - (v15 & 0xFFFFFFC0);
        LOBYTE(v14) = v17 - 64;
        if (v17 == 64)
        {
          goto LABEL_10;
        }
      }
    }

    *(a2 + v13++) = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  if (v13 < v12)
  {
    v18 = result;
    bzero(a2 + 8 * v13, 8 * (v12 + ~v13) + 8);
    result = v18;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (a5)
    {
      v19 = a4 - 1;
      v20 = result;
      llvm::APInt::tcShiftLeft(a2, v12, v19);
      return v20;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(uint64_t a1, llvm::APInt *this, unint64_t *a3, uint64_t a4)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v8 = llvm::APInt::tcMSB(this, a3);
  v9 = (v8 + 1);
  v10 = *(*a1 + 8);
  v11 = (a1 + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v12 = ((v10 + 64) >> 6);
  v13 = v9 - v10;
  if (v9 >= v10)
  {
    *(a1 + 16) = v8;
    v15 = llvm::APInt::tcLSB(this, a3);
    if (v15 >= v13)
    {
      v14 = 0;
    }

    else if (v15 + 1 == v13)
    {
      v14 = 2;
    }

    else if (v13 <= a3 << 6 && llvm::APInt::tcExtractBit(this, (v13 - 1)))
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    llvm::APInt::tcExtract(v11, v12, this, v10, v13);
  }

  else
  {
    *(a1 + 16) = v10 - 1;
    llvm::APInt::tcExtract(v11, v12, this, v9, 0);
    v14 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(a1, a4, v14);
}

uint64_t llvm::detail::IEEEFloat::convertFromSignExtendedInteger(uint64_t a1, llvm::APInt *this, unint64_t *a3, int a4, uint64_t a5)
{
  if (a4)
  {
    v8 = a1;
    Bit = llvm::APInt::tcExtractBit(this, ((a3 << 6) - 1));
    a1 = v8;
    if (Bit)
    {
      *(v8 + 20) |= 8u;
      operator new[]();
    }
  }

  *(a1 + 20) &= ~8u;

  return llvm::detail::IEEEFloat::convertFromUnsignedParts(a1, this, a3, a5);
}

uint64_t llvm::detail::IEEEFloat::convertFromZeroExtendedInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = a3;
  v10 = ((a3 + 63) >> 6);
  llvm::APInt::APInt(&v19, a3);
  *(a1 + 20) &= ~8u;
  if (a4 && llvm::APInt::tcExtractBit(a2, (v7 - 1)))
  {
    *(a1 + 20) |= 8u;
    v18 = v20;
    if (v20 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v17, &v19);
    }

    if (v20)
    {
      v11 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
    }

    else
    {
      v11 = 0;
    }

    v17 = (v11 & ~v19);
    llvm::APInt::operator++(&v17);
    v12 = v18;
    v13 = v17;
    v18 = 0;
    if (v20 > 0x40 && v19)
    {
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      v19 = v13;
      v20 = v12;
      if (v18 >= 0x41 && v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }
    }

    else
    {
      v19 = v17;
      v20 = v12;
    }
  }

  if (v20 >= 0x41)
  {
    v14 = v19;
  }

  else
  {
    v14 = &v19;
  }

  result = llvm::detail::IEEEFloat::convertFromUnsignedParts(a1, v14, v10, a5);
  if (v20 >= 0x41)
  {
    if (v19)
    {
      v16 = result;
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      return v16;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v10 = *(*a1 + 8);
  v11 = (a1 + 8);
  v12 = (a1 + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v12 = *v11;
  }

  llvm::APInt::tcSet(v12, 0, (v10 + 64) >> 6);
  *(a1 + 16) = 0;
  v14 = *(*a1 + 8);
  if ((v14 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v15 = &a2[a3];
  if (a3)
  {
    v16 = a3 - 1;
    v17 = a2;
    while (1)
    {
      v18 = *v17;
      if (v18 != 48)
      {
        break;
      }

      ++v17;
      if (--v16 == -1)
      {
        v19 = &a2[a3];
        goto LABEL_18;
      }
    }

    if (v18 == 46)
    {
      if (a3 == 1)
      {
        goto LABEL_52;
      }

      v19 = v17;
      do
      {
        if (!v16)
        {
          goto LABEL_52;
        }

        v20 = *++v19;
        --v16;
      }

      while (v20 == 48);
      goto LABEL_19;
    }

    v19 = v17;
  }

  else
  {
    v19 = a2;
  }

LABEL_18:
  v17 = &a2[a3];
LABEL_19:
  if (v19 == v15)
  {
    goto LABEL_52;
  }

  v21 = 0;
  v22 = 0;
  v23 = v14 & 0xFFFFFFC0;
  v24 = v23 + 64;
  v25 = v19;
  do
  {
    v27 = *v25;
    if (v27 == 46)
    {
      if (v17 != v15)
      {
        goto LABEL_51;
      }

      v17 = v25++;
      continue;
    }

    v13 = llvm::hexDigitValue(char)::LUT[v27];
    if (v13 == -1)
    {
      break;
    }

    ++v25;
    if (v24)
    {
      v24 -= 4;
      v26 = v13 << v24;
      v13 = v24 >> 6;
      v11[v13] = (v11[v13] | v26);
    }

    else
    {
      if ((v22 & 1) == 0)
      {
        if ((v27 - 57) > 0xFFFFFFFFFFFFFFF6)
        {
          if ((llvm::hexDigitValue(char)::LUT[v27] & 7) != 0)
          {
            v21 = v21 & 0xFFFFFFFF00000000 | 1;
          }

          else
          {
            v28 = v25;
            if (v25 == v15)
            {
LABEL_51:
              llvm::inconvertibleErrorCode(v13);
              operator new();
            }

            while (1)
            {
              v29 = *v28;
              if (v29 != 48 && v29 != 46)
              {
                break;
              }

              if (++v28 == v15)
              {
                goto LABEL_51;
              }
            }

            v30 = v21 & 0xFFFFFFFF00000000;
            if (llvm::hexDigitValue(char)::LUT[v29] == -1)
            {
              v21 = v30 | (2 * (v27 != 48));
            }

            else
            {
              if (v27 == 48)
              {
                v31 = 1;
              }

              else
              {
                v31 = 3;
              }

              v21 = v31 | v30;
            }
          }
        }

        else
        {
          v21 = v21 & 0xFFFFFFFF00000000 | 3;
        }
      }

      v24 = 0;
      v22 = 1;
    }
  }

  while (v25 != v15);
  if (v25 == v15 || (*v25 | 0x20) != 0x70 || v25 == a2 || v17 != v15 && v25 - a2 == 1)
  {
    goto LABEL_52;
  }

  if (v25 != v19)
  {
    if (v17 == v15)
    {
      v32 = v25;
    }

    else
    {
      v32 = v17;
    }

    v33 = v25 + 1;
    if (v25 + 1 == v15)
    {
      goto LABEL_52;
    }

    v34 = *v33;
    if (v34 == 45 || v34 == 43)
    {
      v33 = v25 + 2;
      if (v25 + 2 == v15)
      {
        goto LABEL_52;
      }
    }

    if (v33 != v15)
    {
      v35 = 0;
      while (1)
      {
        v36 = *v33 - 48;
        if (v36 >= 0xA)
        {
          break;
        }

        v35 = v36 + 10 * v35;
        if (v35 >= 0x8000)
        {
          goto LABEL_74;
        }

        if (++v33 == v15)
        {
          goto LABEL_69;
        }
      }

LABEL_52:
      llvm::inconvertibleErrorCode(v13);
      operator new();
    }

    v35 = 0;
LABEL_69:
    v37 = *(*a1 + 8) - v23 + 4 * (v32 - v19 + ((v32 - v19) >> 31)) - 65;
    if (v37 != v37 || (v34 != 45 ? (v38 = v35) : (v38 = -v35), v39 = v38 + v37, v39 != v39))
    {
LABEL_74:
      if (v34 == 45)
      {
        v39 = -32768;
      }

      else
      {
        v39 = 0x7FFF;
      }
    }

    *(a1 + 16) = v39;
  }

  result = llvm::detail::IEEEFloat::normalize(a1, a4, v21);
  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::detail::IEEEFloat::roundSignificandWithExponent(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v66[0] = v4;
  v65 = v5;
  v6 = v1;
  v78 = *MEMORY[0x277D85DE8];
  *&v66[1] = 0xFFFF800100007FFFLL;
  v67 = 0;
  v68 = 0;
  v62 = v3;
  v8 = v3 == 1 || v3 == 4;
  v63 = v2;
  v64 = v8;
  v9 = (*(*v1 + 8) + 74) >> 6;
  if (v2 >= 0)
  {
    v10 = v2;
  }

  else
  {
    v10 = -v2;
  }

  v74 = 390625;
  v69[0] = llvm::powerOf5(unsigned long long *,unsigned int)::firstEightPowers[v10 & 7];
  if (v10 < 8)
  {
    v11 = 1;
    goto LABEL_34;
  }

  v12 = 1;
  if ((v10 & 8) != 0)
  {
    v14 = &v70;
    v13 = v69;
    llvm::APInt::tcFullMultiply(&v70, v69, &v74, 1, 1);
    if (v71)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (v10 >= 0x10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = &v70;
    v14 = v69;
    if (v10 >= 0x10)
    {
LABEL_14:
      v15 = v10 >> 4;
      v16 = &v75;
      v17 = 1;
      do
      {
        while (1)
        {
          llvm::APInt::tcFullMultiply(v16, v16 - v17, v16 - v17, v17, v17);
          v21 = 2 * v17 - 1;
          v17 = *(v16 + v21) ? (2 * v17) : v21;
          if (v15)
          {
            break;
          }

          v19 = v14;
          v16 = (v16 + 8 * v17);
          v20 = v15 >= 2;
          v15 >>= 1;
          if (!v20)
          {
            goto LABEL_25;
          }
        }

        llvm::APInt::tcFullMultiply(v13, v14, v16, v12, v17);
        v18 = v17 + v12 - 1;
        if (v13[v18])
        {
          v12 = (v17 + v12);
        }

        else
        {
          v12 = v18;
        }

        v19 = v13;
        v13 = v14;
        v14 = v19;
        v16 = (v16 + 8 * v17);
        v20 = v15 >= 2;
        v15 >>= 1;
      }

      while (v20);
LABEL_25:
      if (v19 != v69)
      {
LABEL_26:
        v11 = v12;
        llvm::APInt::tcAssign(v69, v19, v12);
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  v19 = v14;
  if (v14 != v69)
  {
    goto LABEL_26;
  }

LABEL_32:
  v11 = v12;
  do
  {
LABEL_34:
    LODWORD(v67) = (v9 << 6) - 1;
    v22 = *(*v6 + 8);
    v74 = &v66[1];
    if (v9 << 6 > 0x7F)
    {
      operator new[]();
    }

    v23 = v75;
    v77 = v77 & 0xF0 | 3;
    v76 = v66[2] - 1;
    if ((v67 - 64) >= 0xFFFFFF80)
    {
      v23 = &v75;
    }

    llvm::APInt::tcSet(v23, 0, (v67 + 64) >> 6);
    v24 = v77 & 0xF0;
    v77 = v77 & 0xF0 | v6[20] & 8 | 3;
    if (*(v74 + 20) == 2)
    {
      v77 = v24 | 3;
    }

    v76 = *(v74 + 4) - 1;
    v25 = *(v74 + 8);
    if ((v25 - 64) >= 0xFFFFFF80)
    {
      v26 = &v75;
    }

    else
    {
      v26 = v75;
    }

    llvm::APInt::tcSet(v26, 0, (v25 + 64) >> 6);
    v70 = &v66[1];
    if ((v67 + 64) > 0x7F)
    {
      operator new[]();
    }

    v27 = v71;
    v28 = (v9 << 6) - 1 - v22;
    v73 = v73 & 0xF0 | 3;
    v72 = v66[2] - 1;
    if ((v67 - 64) >= 0xFFFFFF80)
    {
      v27 = &v71;
    }

    llvm::APInt::tcSet(v27, 0, (v67 + 64) >> 6);
    v29 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v74, v65, v66[0], 1);
    v30 = v11;
    v33 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v70, v69, v11, 1);
    v76 += v63;
    if (v63 < 0)
    {
      v34 = llvm::detail::IEEEFloat::divideSignificand(&v74, &v70, v31);
      v37 = *(*v6 + 4);
      v36 = (v9 << 6) - 1 - v22;
      v38 = v37 - v76;
      if (v37 > v76)
      {
        v36 = v38 + v28;
        if (v38 + v28 >= v67)
        {
          v28 = v67;
        }

        else
        {
          v28 += v38;
        }
      }

      v35 = 2 * ((v33 | v34) != 0);
    }

    else
    {
      v34 = llvm::detail::IEEEFloat::multiplySignificand(&v74, &v70, v31, v32);
      v35 = v33 != 0;
      v36 = (v9 << 6) - 1 - v22;
    }

    v39 = v34 != 0;
    if (v29)
    {
      ++v35;
    }

    v40 = 2 * v39;
    v41 = v39 | (2 * v35);
    if (v35)
    {
      v42 = v41;
    }

    else
    {
      v42 = v40;
    }

    if ((*(v74 + 8) - 64) >= 0xFFFFFF80)
    {
      v43 = &v75;
    }

    else
    {
      v43 = v75;
    }

    v44 = (v28 - 1) >> 6;
    v45 = v43[v44] & (0xFFFFFFFFFFFFFFFFLL >> ((v28 - 1) & 0x3F ^ 0x3F));
    v46 = 1 << (v28 - 1);
    if (!v64)
    {
      v46 = 0;
    }

    if (v28 - 1 > 0x3F)
    {
      if (v45 == v46)
      {
        v49 = v44 - 1;
        while (v49)
        {
          if (v43[v49--])
          {
            goto LABEL_78;
          }
        }

        v48 = 2 * *v43;
        if (v48 >= v42)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v45 != v46 - 1)
        {
LABEL_78:
          v48 = -2;
LABEL_82:
          v53 = *(*v6 + 8);
          v54 = (v6 + 8);
          if ((v53 - 64) <= 0xFFFFFF7F)
          {
            v54 = *(v6 + 1);
          }

          llvm::APInt::tcExtract(v54, ((v53 + 64) >> 6), v43, (v67 - v28), v28);
          *(v6 + 4) = v76 + v28 + *(*v6 + 8) - v67;
          v55 = *(v74 + 8);
          if ((v55 - 64) >= 0xFFFFFF80)
          {
            v56 = &v75;
          }

          else
          {
            v56 = v75;
          }

          v57 = v55 + 64;
          v58 = llvm::APInt::tcLSB(v56, ((v55 + 64) >> 6));
          if (v58 >= v36)
          {
            v59 = 0;
          }

          else if (v58 + 1 == v36)
          {
            v59 = 2;
          }

          else if ((v57 & 0xFFFFFFC0) >= v36 && llvm::APInt::tcExtractBit(v56, (v36 - 1)))
          {
            v59 = 3;
          }

          else
          {
            v59 = 1;
          }

          v61 = llvm::detail::IEEEFloat::normalize(v6, v62, v59);
          goto LABEL_96;
        }

        v51 = v44 - 1;
        while (v51)
        {
          v52 = v43[v51--];
          if (v52 != -1)
          {
            goto LABEL_78;
          }
        }

        v48 = -2 * *v43;
        if (v48 >= v42)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      v47 = v45 - v46;
      if ((v45 - v46) < 0)
      {
        v47 = v46 - v45;
      }

      v48 = 2 * v47;
      if (2 * v47 >= v42)
      {
        goto LABEL_82;
      }
    }

LABEL_96:
    if ((v70[2] - 64) <= 0xFFFFFF7F && v71)
    {
      MEMORY[0x259C63150](v71, 0x1000C8000313F17);
    }

    v11 = v30;
    if ((*(v74 + 8) - 64) <= 0xFFFFFF7F && v75)
    {
      MEMORY[0x259C63150](v75, 0x1000C8000313F17);
    }

    v9 *= 2;
  }

  while (v48 < v42);
  return v61;
}

llvm *llvm::detail::IEEEFloat::convertFromDecimalString@<X0>(llvm *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = &a2[a3];
  if (!a3)
  {
    v10 = a2;
    v8 = a2;
    if (a2 != v6)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v7 = a3 - 1;
  v8 = a2;
  do
  {
    v9 = *v8;
    if (v9 != 48)
    {
      if (v9 != 46)
      {
        v10 = v8;
        goto LABEL_22;
      }

      if (a3 == 1)
      {
        goto LABEL_89;
      }

      v10 = v8;
      while (v7)
      {
        v11 = *++v10;
        --v7;
        if (v11 != 48)
        {
          goto LABEL_23;
        }
      }

      v10 = &a2[a3];
      goto LABEL_13;
    }

    ++v8;
    --v7;
  }

  while (v7 != -1);
  v10 = &a2[a3];
LABEL_22:
  v8 = &a2[a3];
LABEL_23:
  if (v10 == v6)
  {
LABEL_13:
    v12 = 0;
    v13 = &a2[a3];
    if (v6 == v10)
    {
      goto LABEL_46;
    }

    goto LABEL_14;
  }

LABEL_24:
  v13 = v10;
  while (1)
  {
    v19 = *v13;
    if (v19 != 46)
    {
      v18 = v13;
      if ((v19 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      goto LABEL_26;
    }

    if (v8 != v6)
    {
      goto LABEL_89;
    }

    v18 = v13 + 1;
    if (v13 + 1 == v6)
    {
      v8 = v13++;
      goto LABEL_45;
    }

    v8 = v13;
    if ((*v18 - 58) < 0xFFFFFFF6)
    {
      break;
    }

LABEL_26:
    v13 = v18 + 1;
    if (v18 + 1 == v6)
    {
      goto LABEL_32;
    }
  }

  v13 = v18;
LABEL_32:
  if (v13 == v6)
  {
LABEL_45:
    v12 = 0;
    if (v13 == v10)
    {
      goto LABEL_46;
    }

    goto LABEL_14;
  }

  if ((*v13 | 0x20) != 0x65 || v13 == a2 || v8 != v6 && v13 - a2 == 1)
  {
LABEL_89:
    llvm::inconvertibleErrorCode(result);
    operator new();
  }

  v32 = v13 + 1;
  if (v13 + 1 == v6 || ((v33 = *v32, v33 == 45) || v33 == 43) && v13 + 2 == v6)
  {
    v12 = 0;
    if (v8 == v6)
    {
      v8 = v13;
    }

    if (v13 == v10)
    {
      goto LABEL_46;
    }

LABEL_14:
    if (v13 != a2)
    {
LABEL_15:
      v14 = v13 - 1;
      while (v14 != a2)
      {
        v16 = *v14--;
        v15 = v16;
        if (v16 != 48)
        {
          if (v15 == 46)
          {
            v13 = v14 + 1;
            goto LABEL_15;
          }

          v17 = v14 + 1;
          goto LABEL_39;
        }
      }
    }

    v17 = a2;
LABEL_39:
    v20 = v8 - v17;
    v21 = v8 > v10;
    v22 = v8 >= v17;
    v23 = v8 > v17;
    if (v22)
    {
      v21 = 0;
    }

    v24 = v12 + v20 - v23 + v17 - v10 - v21;
    if (v10 == v6)
    {
      goto LABEL_48;
    }

LABEL_47:
    if ((*v10 - 58) <= 0xFFFFFFF5)
    {
      goto LABEL_48;
    }

    if (v24 < 51085)
    {
      v27 = *result;
      if (v24 < -51082 || 28738 * v24 + 28738 <= 8651 * (v27[1] - v27[2]))
      {
        *(result + 20) = *(result + 20) & 0xF8 | 2;
        v28 = v27[2];
        v29 = (result + 8);
        v31 = result;
        if ((v28 - 64) <= 0xFFFFFF7F)
        {
          v29 = *v29;
        }

        llvm::APInt::tcSet(v29, 0, (v28 + 64) >> 6);
        result = llvm::detail::IEEEFloat::normalize(v31, a4, 1u);
        goto LABEL_60;
      }

      if (42039 * v24 - 42039 < 12655 * *v27)
      {
        operator new[]();
      }
    }

    result = llvm::detail::IEEEFloat::handleOverflow(result, a4, a3);
LABEL_60:
    v26 = result;
    goto LABEL_61;
  }

  if (v33 == 45 || (v34 = *v32, v33 == 43))
  {
    v32 = v13 + 2;
    if (v13 + 2 == v6)
    {
      goto LABEL_89;
    }

    v34 = *v32;
  }

  v35 = v34 - 48;
  if (v35 > 9)
  {
    goto LABEL_89;
  }

  v36 = v32 + 1;
  while (v36 != v6)
  {
    v37 = *v36 - 48;
    if (v37 >= 0xA)
    {
      goto LABEL_89;
    }

    v35 = v37 + 10 * v35;
    ++v36;
    if (v35 >> 6 >= 0x177)
    {
      v35 = 24000;
      break;
    }
  }

  if (v33 == 45)
  {
    v12 = -v35;
  }

  else
  {
    v12 = v35;
  }

  if (v8 == v6)
  {
    v8 = v13;
  }

  if (v13 != v10)
  {
    goto LABEL_14;
  }

LABEL_46:
  v24 = 0;
  if (v10 != v6)
  {
    goto LABEL_47;
  }

LABEL_48:
  v25 = *(result + 20) & 0xF8 | 3;
  *(result + 20) = v25;
  v26 = 0;
  if (*(*result + 20) == 2)
  {
    *(result + 20) = v25 & 0xF3;
  }

LABEL_61:
  *(a5 + 8) &= ~1u;
  *a5 = v26;
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromStringSpecials(llvm::detail::IEEEFloat *a1, unsigned __int8 *a2, size_t a3, unsigned int a4)
{
  if (a3 < 3)
  {
    return 0;
  }

  v45 = v4;
  v46 = v5;
  if (a3 == 8)
  {
    v10 = "INFINITY";
LABEL_14:
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = memcmp(a2, v10, a3);
    a3 = v13;
    a2 = v12;
    v15 = v14;
    a1 = v11;
    if (!v15)
    {
LABEL_20:
      v24 = *a1;
      if (*(*a1 + 16) != 1)
      {
        *(a1 + 20) &= 0xF0u;
        *(a1 + 4) = *v24 + 1;
        v27 = v24[2];
        v28 = (a1 + 8);
        if ((v27 - 64) <= 0xFFFFFF7F)
        {
          v28 = *v28;
        }

        llvm::APInt::tcSet(v28, 0, (v27 + 64) >> 6);
        return 1;
      }

      v25 = 0;
      v26 = 0;
      goto LABEL_45;
    }

LABEL_15:
    v9 = *a2;
    if (v9 != 45)
    {
      v8 = 0;
      v16 = a3;
      goto LABEL_30;
    }

    ++a2;
    v16 = a3 - 1;
    if (a3 == 9)
    {
      v17 = a1;
      v23 = a2;
      v18 = a2;
      v22 = "INFINITY";
    }

    else
    {
      if (a3 != 4)
      {
LABEL_29:
        v9 = *a2;
        v8 = 1;
        goto LABEL_30;
      }

      v17 = a1;
      v18 = a2;
      v21 = memcmp(a2, "inf", 3uLL);
      a1 = v17;
      if (!v21)
      {
LABEL_54:
        llvm::detail::IEEEFloat::makeInf(a1, 1, v19, v20);
        return 1;
      }

      v22 = "Inf";
      v23 = v18;
    }

    v29 = memcmp(v23, v22, v16);
    a2 = v18;
    v30 = v29;
    a1 = v17;
    if (v30)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  if (a3 == 4)
  {
    v10 = "+Inf";
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    goto LABEL_15;
  }

  if (*a2 == 28265 && a2[2] == 102)
  {
    goto LABEL_20;
  }

  v8 = 0;
  v9 = *a2;
  if (v9 == 45)
  {
    return 0;
  }

  v16 = 3;
LABEL_30:
  if ((v9 | 0x20) == 0x73)
  {
    if (--v16 < 3)
    {
      return 0;
    }

    ++a2;
    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  if ((*a2 != 24942 || a2[2] != 110) && (*a2 != 24910 || a2[2] != 78))
  {
    return 0;
  }

  v34 = a2 + 3;
  v35 = v16 - 3;
  v43 = a2 + 3;
  v44 = v16 - 3;
  if (v16 > 3)
  {
    v36 = *v34;
    if (v36 == 40)
    {
      if (v35 < 3 || a2[v16 - 1] != 41)
      {
        return 0;
      }

      v34 = a2 + 4;
      v35 = v16 - 5;
      v43 = a2 + 4;
      v44 = v16 - 5;
      v36 = a2[4];
    }

    v37 = v8;
    v38 = a1;
    if (v36 == 48)
    {
      v39 = v35 - 2;
      if (v35 >= 2 && __tolower(v34[1]) == 120)
      {
        v43 = v34 + 2;
        v44 = v39;
        v40 = 16;
      }

      else
      {
        v40 = 8;
      }
    }

    else
    {
      v40 = 10;
    }

    v42 = 1;
    v41 = 0;
    if ((llvm::StringRef::getAsInteger(&v43, v40, &v41) & 1) == 0)
    {
      llvm::detail::IEEEFloat::makeNaN(v38, v31, v37, &v41);
      if (v42 >= 0x41 && v41)
      {
        MEMORY[0x259C63150](v41, 0x1000C8000313F17);
      }

      return 1;
    }

    if (v42 >= 0x41)
    {
      if (v41)
      {
        MEMORY[0x259C63150](v41, 0x1000C8000313F17);
      }
    }

    return 0;
  }

  v26 = v8;
  v25 = v31;
LABEL_45:
  llvm::detail::IEEEFloat::makeNaN(a1, v25, v26, 0);
  return 1;
}

void llvm::detail::IEEEFloat::makeInf(llvm::detail::IEEEFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  v4 = *this;
  if (*(*this + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(this, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    *(this + 20) = *(this + 20) & 0xF0 | v5;
    *(this + 4) = *v4 + 1;
    v6 = v4[2];
    v7 = (this + 8);
    if ((v6 - 64) <= 0xFFFFFF7F)
    {
      v7 = *v7;
    }

    llvm::APInt::tcSet(v7, 0, (v6 + 64) >> 6);
  }
}

llvm *llvm::detail::IEEEFloat::convertFromString@<X0>(llvm *result@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a3)
  {
    v10 = "Invalid string length";
    goto LABEL_5;
  }

  v7 = a3;
  v8 = a2;
  v9 = result;
  result = llvm::detail::IEEEFloat::convertFromStringSpecials(result, a2, a3, a4);
  if (result)
  {
    *(a5 + 8) &= ~1u;
    *a5 = 0;
    return result;
  }

  *(v9 + 20) = *(v9 + 20) & 0xF7 | (8 * (*v8 == 45));
  v11 = *v8;
  if (v11 == 45 || v11 == 43)
  {
    if (--v7)
    {
      ++v8;
      goto LABEL_10;
    }

    v10 = "String has no digits";
LABEL_5:
    v13 = v10;
    v14 = 259;
    llvm::inconvertibleErrorCode(result);
    operator new();
  }

LABEL_10:
  if (v7 >= 2 && *v8 == 48 && (v8[1] | 0x20) == 0x78)
  {
    if (v7 == 2)
    {
      v13 = "Invalid string";
      v14 = 259;
      llvm::createError(&v12, &v13);
    }

    return llvm::detail::IEEEFloat::convertFromHexadecimalString(v9, v8 + 2, v7 - 2, a4, a5);
  }

  else
  {

    return llvm::detail::IEEEFloat::convertFromDecimalString(v9, v8, v7, a4, a5);
  }
}

uint64_t llvm::detail::IEEEFloat::convertToHexString(llvm::APInt *a1, _BYTE *a2, unsigned int a3, int a4, int a5)
{
  v5 = a2;
  v6 = *(a1 + 20);
  if ((v6 & 8) != 0)
  {
    *a2++ = 45;
    v6 = *(a1 + 20);
  }

  v7 = v6 & 7;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      a2 = llvm::detail::IEEEFloat::convertNormalToHexString(a1, a2, a3, a4, a5);
    }

    else if (v7 == 3)
    {
      *a2 = 48;
      if (a4)
      {
        v9 = 88;
      }

      else
      {
        v9 = 120;
      }

      a2[1] = v9;
      a2[2] = 48;
      if (a3 < 2)
      {
        v13 = a2 + 3;
      }

      else
      {
        v10 = a2 + 4;
        a2[3] = 46;
        v11 = a3 - 1;
        v12 = a4;
        memset(a2 + 4, 48, v11);
        a4 = v12;
        v13 = &v10[v11];
      }

      if (a4)
      {
        v15 = 80;
      }

      else
      {
        v15 = 112;
      }

      *v13 = v15;
      a2 = v13 + 2;
      v13[1] = 48;
    }
  }

  else if (v7)
  {
    v8 = "nan";
    if (a4)
    {
      v8 = "NAN";
    }

    *a2 = *v8;
    a2[2] = v8[2];
    a2 += 3;
  }

  else
  {
    v14 = 0x7974696E69666E69;
    if (a4)
    {
      v14 = 0x5954494E49464E49;
    }

    *a2 = v14;
    a2 += 8;
  }

  *a2 = 0;
  return (a2 - v5);
}

_BYTE *llvm::detail::IEEEFloat::convertNormalToHexString(llvm::APInt *this, _BYTE *a2, unsigned int a3, int a4, int a5)
{
  v64 = *MEMORY[0x277D85DE8];
  *a2 = 48;
  v62 = a4;
  if (a4)
  {
    v8 = 88;
  }

  else
  {
    v8 = 120;
  }

  a2[1] = v8;
  if (a4)
  {
    v9 = "0123456789ABCDEF0";
  }

  else
  {
    v9 = "0123456789abcdef0";
  }

  v11 = (this + 8);
  v12 = *(*this + 8);
  v13 = (this + 8);
  if ((v12 - 64) <= 0xFFFFFF7F)
  {
    v13 = *v11;
  }

  v14 = v12 + 64;
  v61 = v12 + 3;
  v15 = (v12 - llvm::APInt::tcLSB(v13, ((v12 + 64) >> 6)) + 6) >> 2;
  if (!a3)
  {
    v20 = 0;
    a3 = v15;
    goto LABEL_29;
  }

  if (v15 <= a3)
  {
    goto LABEL_28;
  }

  *&v60[3] = a5;
  v16 = llvm::APInt::tcLSB(v13, (v14 >> 6));
  v17 = (v61 - 4 * a3);
  if (v16 >= v17)
  {
    v20 = 0;
    v19 = 0;
    v18 = *&v60[3];
  }

  else
  {
    v18 = *&v60[3];
    if (v16 + 1 == v17)
    {
      v19 = 2;
      v20 = 1;
    }

    else if ((v14 & 0xFFFFFFC0) >= v17 && (Bit = llvm::APInt::tcExtractBit(v13, (v17 - 1)), v17 = (v61 - 4 * a3), Bit))
    {
      v19 = 3;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 1;
    }
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v20 = (*(this + 20) & 8) == 0;
    }

    else if (v18 == 3)
    {
      v20 = (*(this + 20) >> 3) & 1;
    }

    goto LABEL_29;
  }

  if (!v18)
  {
    goto LABEL_28;
  }

  if (v19 == 3)
  {
    v20 = 1;
    goto LABEL_29;
  }

  if (v19 != 2 || (*(this + 20) & 7) == 3)
  {
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v20 = llvm::APInt::tcExtractBit(v11, v17) != 0;
LABEL_29:
  v22 = 3;
  if (a3 && (v12 + 66) >= 0x40)
  {
    v23 = v61 & 0x3F;
    v24 = 64 - (v61 & 0x3F);
    v25 = (v12 + 66) >> 6;
    v22 = 3;
    while (1)
    {
      v26 = v25 - 1;
      if ((v12 + 64) >> 6 == v25 - 1)
      {
        break;
      }

      v27 = *(v13 + v26) << v24;
      if (v25 != 1)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (a3 >= 0x10)
      {
        v28 = 16;
      }

      else
      {
        v28 = a3;
      }

      v29 = v27 >> (-4 * v28);
      v30 = v28;
      do
      {
        a2[v22 - 1 + v30] = v9[v29 & 0xF];
        v29 >>= 4;
        --v30;
      }

      while (v30);
      v22 += v28;
      a3 -= v28;
      if (a3)
      {
        v25 = v26;
        if (v26)
        {
          continue;
        }
      }

      v31 = &a2[v22];
      if (!v20)
      {
        goto LABEL_45;
      }

LABEL_48:
      v32 = v31 - 1;
      do
      {
        v33 = v9[llvm::hexDigitValue(char)::LUT[*v32] + 1];
        *v32-- = v33;
      }

      while (v33 == 48);
      a2[2] = a2[3];
      if (v22 == 4)
      {
        goto LABEL_51;
      }

LABEL_46:
      a2[3] = 46;
      goto LABEL_52;
    }

    v27 = 0;
    if (v25 == 1)
    {
      goto LABEL_37;
    }

LABEL_36:
    v27 |= *(v13 + v25 - 2) >> v23;
    goto LABEL_37;
  }

  v31 = a2 + 3;
  if (v20)
  {
    goto LABEL_48;
  }

LABEL_45:
  memset(v31, 48, a3);
  v22 += a3;
  a2[2] = a2[3];
  if (v22 != 4)
  {
    goto LABEL_46;
  }

LABEL_51:
  v22 = 3;
LABEL_52:
  v34 = &a2[v22];
  if (v62)
  {
    v35 = 80;
  }

  else
  {
    v35 = 112;
  }

  *v34 = v35;
  result = v34 + 1;
  v37 = *(this + 4);
  if ((v37 & 0x80000000) != 0)
  {
    v47 = 0;
    *result = 45;
    v48 = -v37;
    v49 = v63;
    v50 = v60;
    v51 = 1;
    do
    {
      v52 = v47;
      v53 = v50;
      *v49++ = (v48 % 0xA) | 0x30;
      v54 = v51;
      ++v47;
      v50 = (v50 + 1);
      ++v51;
      v39 = v48 > 9;
      v48 /= 0xAu;
    }

    while (v39);
    result = v34 + 2;
    if (v47 < 0x20 || result < v49 && v63 < &a2[v52 + 3 + v22])
    {
      goto LABEL_83;
    }

    result += v47 & 0xFFFFFFFFFFFFFFE0;
    v49 -= v47 & 0xFFFFFFFFFFFFFFE0;
    v55 = &a2[v22 + 18];
    v56 = v54 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v57 = vrev64q_s8(*v53);
      v58 = vrev64q_s8(v53[-1]);
      v55[-1] = vextq_s8(v57, v57, 8uLL);
      *v55 = vextq_s8(v58, v58, 8uLL);
      v53 -= 2;
      v55 += 2;
      v56 -= 32;
    }

    while (v56);
    if (v47 != (v47 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_83:
      do
      {
        v59 = *--v49;
        *result++ = v59;
      }

      while (v49 != v63);
    }
  }

  else
  {
    v38 = 0;
    do
    {
      v63[v38++] = (v37 % 0xA) | 0x30;
      v39 = v37 > 9;
      v37 /= 0xAu;
    }

    while (v39);
    v40 = &v63[v38];
    if (v38 < 0x20 || v34 < v40 - 1 && v63 < &result[v38])
    {
      goto LABEL_84;
    }

    v41 = (v40 - 16);
    result += v38 & 0xFFFFFFFFFFFFFFE0;
    v40 = &v63[v38 - (v38 & 0xFFFFFFFFFFFFFFE0)];
    v42 = &a2[v22 + 17];
    v43 = v38 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v44 = vrev64q_s8(*v41);
      v45 = vrev64q_s8(v41[-1]);
      v42[-1] = vextq_s8(v44, v44, 8uLL);
      *v42 = vextq_s8(v45, v45, 8uLL);
      v41 -= 2;
      v42 += 2;
      v43 -= 32;
    }

    while (v43);
    if (v38 != (v38 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_84:
      do
      {
        v46 = *--v40;
        *result++ = v46;
      }

      while (v40 != v63);
    }
  }

  return result;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    v5 = (v2 >> 3) & 1;
    v6 = *this;
    v26 = 0u;
    v27 = 0u;
    if (v3 == 1)
    {
      LOBYTE(v5) = 0;
    }

    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v21 = 0uLL;
    v28 = 0;
    v29 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v21) = v3;
    BYTE1(v21) = v5;
    v20 = 0;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v20, (&v21 + 2), &v25, *(v6 + 8));
    v8 = v20;
  }

  else
  {
    v9 = (v2 >> 3) & 1;
    v10 = *this;
    v11 = *(*this + 8);
    v12 = (this + 8);
    if ((v11 - 64) < 0xFFFFFF80)
    {
      v12 = *(this + 1);
    }

    v14 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v12, v12 + 8 * ((v11 + 64) >> 6));
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v28 = 0;
    v29 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v21) = v3;
    BYTE1(v21) = v9;
    v18 = 0;
    v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v18, (&v21 + 2), &v25, *(v10 + 8));
    v19 = v18;
    v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v19, v15, &v25, *(this + 4));
    v20 = v19;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v21, &v20, v16, &v25, v14);
    v8 = v20;
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(&v21, v8, v7, &v25);
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat **this@<X0>, uint64_t a3@<X8>)
{
  v3 = this;
  v64 = *MEMORY[0x277D85DE8];
  v5 = *this;
  v6 = *(*this + 2);
  v59 = **this;
  v60 = v6;
  DWORD1(v59) = -1022;
  v55 = v5;
  if ((*(v5 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v7 = *(this + 20);
  v8 = v7 & 7;
  v58 = v7 & 0xF;
  v57 = *(this + 4);
  v10 = (v7 & 6) != 0 && v8 != 3;
  if (v8 == 1 || v10)
  {
    v11 = *(v5 + 2);
    if ((v11 - 64) >= 0xFFFFFF80)
    {
      this = &v56;
    }

    v12 = *(*v3 + 2) - 64;
    v15 = v3[1];
    v14 = (v3 + 1);
    v13 = v15;
    if (v12 >= 0xFFFFFF80)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    llvm::APInt::tcAssign(this, v16, ((v11 + 64) >> 6));
  }

  v61 = 0;
  llvm::detail::IEEEFloat::convert(&v55, &v59, 1u, &v61);
  v51 = v55;
  if ((*(v55 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v17 = v58 & 7;
  v54 = v54 & 0xF0 | v58 & 0xF;
  v53 = v57;
  v19 = (v58 & 6) != 0 && v17 != 3;
  if (v17 == 1 || v19)
  {
    v20 = *(v51 + 2);
    if ((v20 - 64) >= 0xFFFFFF80)
    {
      v21 = &v52;
    }

    else
    {
      v21 = v52;
    }

    if ((*(v55 + 2) - 64) >= 0xFFFFFF80)
    {
      v22 = &v56;
    }

    else
    {
      v22 = v56;
    }

    llvm::APInt::tcAssign(v21, v22, ((v20 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v51, &llvm::semIEEEdouble, 1u, &v61);
  v23 = v54 & 7;
  v24 = (v54 & 6) == 0 || v23 == 3;
  v25 = !v24;
  if (v24)
  {
    if (v23 != 3)
    {
      if ((v54 & 7) != 0)
      {
        if ((*(v51 + 2) - 64) >= 0xFFFFFF80)
        {
          v29 = &v52;
        }

        else
        {
          v29 = v52;
        }

        v28 = *v29;
      }

      else
      {
        v28 = 0;
      }

      v62 = (v54 << 60) & 0x8000000000000000 | v28 & 0xFFFFFFFFFFFFFLL | 0x7FF0000000000000;
      if (!v25)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }

    v27 = 0;
    v26 = 0;
    goto LABEL_51;
  }

  v26 = v53 + 1023;
  if ((*(v51 + 2) - 64) > 0xFFFFFF7F)
  {
    v27 = v52;
    if (v53 != -1022)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v27 = *v52;
    if (v53 != -1022)
    {
LABEL_51:
      v62 = (v54 << 60) & 0x8000000000000000 | v27 & 0xFFFFFFFFFFFFFLL | ((v26 & 0x7FF) << 52);
      if (!v25)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }
  }

  v62 = (v54 << 60) & 0x8000000000000000 | v27 & 0xFFFFFFFFFFFFFLL | (((v27 >> 52) & 1) << 52);
  if (!v25)
  {
    goto LABEL_72;
  }

LABEL_58:
  if (!v61)
  {
LABEL_72:
    v63 = 0;
    goto LABEL_73;
  }

  v30 = llvm::detail::IEEEFloat::convert(&v51, &v59, 1u, &v61);
  v47 = v55;
  if ((*(v55 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v32 = v58 & 7;
  v50 = v58 & 0xF;
  v49 = v57;
  v34 = (v58 & 6) != 0 && v32 != 3;
  if (v32 != 1 && !v34)
  {
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v47, &v51, 1u, v31) != 2)
    {
      goto LABEL_70;
    }

LABEL_86:
    v42 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v47, &v51, 1u, v35, v36);
    llvm::detail::IEEEFloat::normalize(&v47, 1, v42);
    v37 = v50;
    if ((v50 & 7) != 3)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

  v39 = *(v55 + 2);
  if ((v39 - 64) >= 0xFFFFFF80)
  {
    v30 = &v48;
  }

  if ((*(v55 + 2) - 64) >= 0xFFFFFF80)
  {
    v40 = &v56;
  }

  else
  {
    v40 = v56;
  }

  llvm::APInt::tcAssign(v30, v40, ((v39 + 64) >> 6));
  if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v47, &v51, 1u, v41) == 2)
  {
    goto LABEL_86;
  }

LABEL_70:
  v37 = v50;
  if ((v50 & 7) != 3)
  {
    goto LABEL_92;
  }

LABEL_87:
  if ((v54 & 7) != 3 || ((v54 ^ v37) & 8) == 0)
  {
    LOBYTE(v37) = v37 & 0xF3;
    v50 = v37;
  }

  if (*(v47 + 5) == 2)
  {
    v50 = v37 & 0xF3;
  }

LABEL_92:
  llvm::detail::IEEEFloat::convert(&v47, &llvm::semIEEEdouble, 1u, &v61);
  v43 = v50 & 7;
  if ((v50 & 6) == 0 || v43 == 3)
  {
    if (v43 == 3)
    {
      v45 = 0;
      LOWORD(v44) = 0;
    }

    else
    {
      if ((v50 & 7) != 0)
      {
        if ((*(v47 + 2) - 64) >= 0xFFFFFF80)
        {
          v46 = &v48;
        }

        else
        {
          v46 = v48;
        }

        v45 = *v46;
      }

      else
      {
        v45 = 0;
      }

      LOWORD(v44) = 2047;
    }
  }

  else
  {
    LOWORD(v44) = v49 + 1023;
    if ((*(v47 + 2) - 64) <= 0xFFFFFF7F)
    {
      v45 = *v48;
      if (v49 != -1022)
      {
        goto LABEL_108;
      }

      goto LABEL_101;
    }

    v45 = v48;
    if (v49 == -1022)
    {
LABEL_101:
      v44 = (v45 >> 52) & 1;
    }
  }

LABEL_108:
  v63 = (v50 << 60) & 0x8000000000000000 | v45 & 0xFFFFFFFFFFFFFLL | ((v44 & 0x7FF) << 52);
  if ((*(v47 + 2) - 64) <= 0xFFFFFF7F && v48)
  {
    MEMORY[0x259C63150](v48, 0x1000C8000313F17);
  }

LABEL_73:
  result = llvm::APInt::APInt(a3, 128);
  if ((*(v51 + 2) - 64) <= 0xFFFFFF7F)
  {
    result = v52;
    if (v52)
    {
      result = MEMORY[0x259C63150](v52, 0x1000C8000313F17);
    }
  }

  if ((*(v55 + 2) - 64) <= 0xFFFFFF7F)
  {
    result = v56;
    if (v56)
    {
      return MEMORY[0x259C63150](v56, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      v5 = 0;
      LOWORD(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        v5 = 0;
      }

      LOWORD(v6) = 2047;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 1023;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -1022)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -1022)
    {
LABEL_13:
      v6 = (v5 >> 52) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 64;
  *a2 = (v2 << 60) & 0x8000000000000000 | v5 & 0xFFFFFFFFFFFFFLL | ((v6 & 0x7FF) << 52);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LODWORD(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LODWORD(v5) = 0;
      }

      LOBYTE(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 127;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -126)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -126)
    {
LABEL_13:
      v6 = (v5 >> 23) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 32;
  *a2 = (v2 << 28) & 0x80000000 | v5 & 0x7FFFFF | (v6 << 23);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertBFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 127;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -126)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -126)
    {
LABEL_13:
      v6 = (v5 >> 7) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 16;
  *a2 = (v2 << 12) & 0x8000 | v5 & 0x7F | (v6 << 7);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertHalfAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOWORD(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOWORD(v5) = 0;
      }

      LOBYTE(v6) = 31;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 15;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -14)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -14)
    {
LABEL_13:
      v6 = (v5 >> 10) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 16;
  *a2 = (v2 << 12) & 0x8000 | v5 & 0x3FF | ((v6 & 0x1F) << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 31;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 15;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -14)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -14)
    {
LABEL_13:
      v6 = (v5 >> 2) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 3 | (4 * (v6 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 16;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -15)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -15)
    {
LABEL_15:
      v6 = (v5 >> 2) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 3 | (4 * (v6 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 15;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 7;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -6)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -6)
    {
LABEL_13:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      v5 = *this;
      LOBYTE(v6) = 15;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 7;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -6)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 8;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -7)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -7)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 11;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -10)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -10)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 7;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 3;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -2)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -2)
    {
LABEL_13:
      v6 = (v5 >> 4) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 0xF | (16 * (v6 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOWORD(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOWORD(v5) = 0;
      }

      LOBYTE(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 127;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -126)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -126)
    {
LABEL_13:
      v6 = (v5 >> 10) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 19;
  *a2 = (v2 << 15) & 0x40000 | v5 & 0x3FF | (v6 << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    LODWORD(v5) = *(this + 16) + 3;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v4 = **(this + 8);
      if (*(this + 16) != -2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 8);
    if (*(this + 16) == -2)
    {
LABEL_11:
      v5 = (v4 >> 2) & 1;
    }
  }

LABEL_12:
  *(a2 + 8) = 6;
  *a2 = (4 * v2) & 0x20 | v4 & 3 | (4 * (v5 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(this + 16);
    LOBYTE(v5) = v6 + 1;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v4 = *(this + 8);
      if (!v6)
      {
LABEL_11:
        v5 = (v4 >> 3) & 1;
      }
    }

    else
    {
      v4 = **(this + 8);
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  *(a2 + 8) = 6;
  *a2 = (4 * v2) & 0x20 | v4 & 7 | (8 * (v5 & 3));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(this + 16);
    LOBYTE(v5) = v6 + 1;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v4 = *(this + 8);
      if (!v6)
      {
LABEL_11:
        v5 = (v4 >> 1) & 1;
      }
    }

    else
    {
      v4 = **(this + 8);
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  *(a2 + 8) = 4;
  *a2 = v2 & 8 | v4 & 1 | (2 * (v5 & 3));
  return this;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::bitcastToAPInt@<X0>(uint64_t a2@<X8>, llvm::detail::IEEEFloat *this@<X0>)
{
  v3 = *this;
  if (*this == &llvm::semIEEEhalf)
  {
    v4 = *(this + 20);
    v5 = v4 & 7;
    if ((v4 & 6) == 0 || v5 == 3)
    {
      if (v5 == 3)
      {
        LOWORD(v7) = 0;
        LOBYTE(v12) = 0;
      }

      else
      {
        if ((v4 & 7) != 0)
        {
          v7 = *(this + 1);
        }

        else
        {
          LOWORD(v7) = 0;
        }

        LOBYTE(v12) = 31;
      }
    }

    else
    {
      LODWORD(v12) = *(this + 4) + 15;
      v7 = *(this + 1);
      if (*(this + 4) == -14)
      {
        v12 = (v7 >> 10) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = (v4 << 12) & 0x8000 | v7 & 0x3FF | ((v12 & 0x1F) << 10);
  }

  else if (v3 == &llvm::semBFloat)
  {
    v8 = *(this + 20);
    v9 = v8 & 7;
    if ((v8 & 6) == 0 || v9 == 3)
    {
      if (v9 == 3)
      {
        LOBYTE(v11) = 0;
        LOBYTE(v17) = 0;
      }

      else
      {
        if ((v8 & 7) != 0)
        {
          v11 = *(this + 1);
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        LOBYTE(v17) = -1;
      }
    }

    else
    {
      LODWORD(v17) = *(this + 4) + 127;
      v11 = *(this + 1);
      if (*(this + 4) == -126)
      {
        v17 = (v11 >> 7) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = (v8 << 12) & 0x8000 | v11 & 0x7F | (v17 << 7);
  }

  else if (v3 == &llvm::semIEEEsingle)
  {
    v13 = *(this + 20);
    v14 = v13 & 7;
    if ((v13 & 6) == 0 || v14 == 3)
    {
      if (v14 == 3)
      {
        LODWORD(v16) = 0;
        LOBYTE(v15) = 0;
      }

      else
      {
        if ((v13 & 7) != 0)
        {
          v16 = *(this + 1);
        }

        else
        {
          LODWORD(v16) = 0;
        }

        LOBYTE(v15) = -1;
      }
    }

    else
    {
      LODWORD(v15) = *(this + 4) + 127;
      v16 = *(this + 1);
      if (*(this + 4) == -126)
      {
        v15 = (v16 >> 23) & 1;
      }
    }

    *(a2 + 8) = 32;
    *a2 = (v13 << 28) & 0x80000000 | v16 & 0x7FFFFF | (v15 << 23);
  }

  else if (v3 == &llvm::semIEEEdouble)
  {
    v18 = *(this + 20);
    v19 = v18 & 7;
    if ((v18 & 6) == 0 || v19 == 3)
    {
      if (v19 == 3)
      {
        v21 = 0;
        LOWORD(v20) = 0;
      }

      else
      {
        if ((v18 & 7) != 0)
        {
          v21 = *(this + 1);
        }

        else
        {
          v21 = 0;
        }

        LOWORD(v20) = 2047;
      }
    }

    else
    {
      LODWORD(v20) = *(this + 4) + 1023;
      v21 = *(this + 1);
      if (*(this + 4) == -1022)
      {
        v20 = (v21 >> 52) & 1;
      }
    }

    *(a2 + 8) = 64;
    *a2 = (v18 << 60) & 0x8000000000000000 | v21 & 0xFFFFFFFFFFFFFLL | ((v20 & 0x7FF) << 52);
  }

  else if (v3 == &llvm::semIEEEquad)
  {
    return llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(a2);
  }

  else if (v3 == &llvm::semPPCDoubleDoubleLegacy)
  {
    return llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E5M2)
  {
    v22 = *(this + 20);
    v23 = v22 & 7;
    if ((v22 & 6) == 0 || v23 == 3)
    {
      if (v23 == 3)
      {
        LOBYTE(v25) = 0;
        LOBYTE(v24) = 0;
      }

      else
      {
        if ((v22 & 7) != 0)
        {
          v25 = *(this + 1);
        }

        else
        {
          LOBYTE(v25) = 0;
        }

        LOBYTE(v24) = 31;
      }
    }

    else
    {
      LODWORD(v24) = *(this + 4) + 15;
      v25 = *(this + 1);
      if (*(this + 4) == -14)
      {
        v24 = (v25 >> 2) & 1;
      }
    }

    *(a2 + 8) = 8;
    *a2 = (16 * v22) & 0x80 | v25 & 3 | (4 * (v24 & 0x1F));
  }

  else if (v3 == &llvm::semFloat8E5M2FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3B11FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E3M4)
  {
    return llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloatTF32)
  {
    return llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat6E3M2FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat6E2M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat4E2M1FN)
  {
    return llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a2);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(a2);
  }

  return this;
}

float llvm::detail::IEEEFloat::convertToFloat(llvm::detail::IEEEFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(&v6, this);
  if (v7 <= 0x40)
  {
    return *&v6;
  }

  v5 = *v6;
  MEMORY[0x259C63150]();
  return *&v5;
}

double llvm::detail::IEEEFloat::convertToDouble(llvm::detail::IEEEFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(&v6, this);
  if (v7 <= 0x40)
  {
    return *&v6;
  }

  v5 = *v6;
  MEMORY[0x259C63150]();
  return v5;
}

uint64_t llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  if (*(a2 + 2) >= 0x41u)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5;
  v7 = v5[1];
  LODWORD(v20) = 64;
  v19 = v6;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v19, a3, a4);
  result = llvm::detail::IEEEFloat::convert(this, &llvm::semPPCDoubleDoubleLegacy, 1u, &v22);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v18 = 64;
    v17 = v7;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v19, &v17, v9, v10);
    llvm::detail::IEEEFloat::convert(&v19, &llvm::semPPCDoubleDoubleLegacy, 1u, &v22);
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v19, 0, v12);
    if (result == 2)
    {
      v15 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v19, 0, v13, v14);
      result = llvm::detail::IEEEFloat::normalize(this, 1, v15);
    }

    v16 = *(this + 20);
    if ((v16 & 7) == 3)
    {
      if ((v21 & 7) != 3 || ((v21 ^ v16) & 8) != 0)
      {
        LOBYTE(v16) = v16 & 0xF3;
        *(this + 20) = v16;
      }

      if (*(*this + 20) == 2)
      {
        *(this + 20) = v16 & 0xF3;
      }
    }

    if ((*(v19 + 2) - 64) <= 0xFFFFFF7F)
    {
      result = v20;
      if (v20)
      {
        return MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void llvm::detail::IEEEFloat::initFromDoubleAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 0xFFFFFFFFFFFFFLL;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 52) & 0x7FF;
  *this = &llvm::semIEEEdouble;
  v9 = *(this + 20);
  v10 = (v7 >> 60) & 8;
  if (v8 == 2047 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 1024;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 2047 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 1023;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 0x10000000000000;
      }

      else
      {
        *(this + 16) = -1022;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -1023;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 1024;
    *(this + 8) = v6;
  }
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *a1, void *a2, const llvm::APInt ***a3, unsigned int a4)
{
  llvm::detail::IEEEFloat::initFromAPInt(a1, a2, a3, a4);
  return a1;
}

{
  llvm::detail::IEEEFloat::initFromAPInt(a1, a2, a3, a4);
  return a1;
}

void llvm::detail::IEEEFloat::initFromFloatAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 0x7FFFFF;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 23);
  *this = &llvm::semIEEEsingle;
  v9 = *(this + 20);
  v10 = (v7 >> 28) & 8;
  if (v8 == 255 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 255 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 127;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 0x800000;
      }

      else
      {
        *(this + 16) = -126;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 128;
    *(this + 8) = v6;
  }
}

void llvm::detail::IEEEFloat::initFromBFloatAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 0x7F;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 7);
  *this = &llvm::semBFloat;
  v9 = *(this + 20);
  v10 = (v7 >> 12) & 8;
  if (v8 == 255 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 255 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 127;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 0x80;
      }

      else
      {
        *(this + 16) = -126;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 128;
    *(this + 8) = v6;
  }
}

void llvm::detail::IEEEFloat::initFromHalfAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 0x3FF;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 10) & 0x1F;
  *this = &llvm::semIEEEhalf;
  v9 = *(this + 20);
  v10 = (v7 >> 12) & 8;
  if (v8 == 31 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 31 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 15;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 0x400;
      }

      else
      {
        *(this + 16) = -14;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -15;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 16;
    *(this + 8) = v6;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 3;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 2) & 0x1F;
  *this = &llvm::semFloat8E5M2;
  v9 = *(this + 20);
  v10 = (v7 >> 4) & 8;
  if (v8 == 31 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 31 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 15;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 4;
      }

      else
      {
        *(this + 16) = -14;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -15;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 16;
    *(this + 8) = v6;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 3;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 2) & 0x1F;
  *this = &llvm::semFloat8E5M2FNUZ;
  v9 = *(this + 20);
  if (v8 | v6)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 2;
    *(this + 16) = v8 - 16;
    *(this + 8) = v6;
    if (v8)
    {
      *(this + 8) = v6 | 4;
    }

    else
    {
      *(this + 16) = -15;
    }
  }

  else if (((v7 >> 4) & 8) != 0)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 1;
    *(this + 16) = -16;
    *(this + 8) = 0;
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | 3;
    *(this + 16) = -16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 7;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3;
  v9 = *(this + 20);
  v10 = (v7 >> 4) & 8;
  if (v8 == 15 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 8;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 15 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 7;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 8;
      }

      else
      {
        *(this + 16) = -6;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -7;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 8;
    *(this + 8) = v6;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 7;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3FN;
  v9 = *(this + 20);
  if (v8 == 15 && v6 == 7)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 1;
    *(this + 16) = 8;
    *(this + 8) = 7;
  }

  else if (v8 | v6)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 2;
    *(this + 16) = v8 - 7;
    *(this + 8) = v6;
    if (v8)
    {
      *(this + 8) = v6 | 8;
    }

    else
    {
      *(this + 16) = -6;
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 3;
    *(this + 16) = -7;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 7;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3FNUZ;
  v9 = *(this + 20);
  if (v8 | v6)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 2;
    *(this + 16) = v8 - 8;
    *(this + 8) = v6;
    if (v8)
    {
      *(this + 8) = v6 | 8;
    }

    else
    {
      *(this + 16) = -7;
    }
  }

  else if (((v7 >> 4) & 8) != 0)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 1;
    *(this + 16) = -8;
    *(this + 8) = 0;
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | 3;
    *(this + 16) = -8;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 7;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3B11FNUZ;
  v9 = *(this + 20);
  if (v8 | v6)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 2;
    *(this + 16) = v8 - 11;
    *(this + 8) = v6;
    if (v8)
    {
      *(this + 8) = v6 | 8;
    }

    else
    {
      *(this + 16) = -10;
    }
  }

  else if (((v7 >> 4) & 8) != 0)
  {
    *(this + 20) = v9 & 0xF0 | (v7 >> 4) & 8 | 1;
    *(this + 16) = -11;
    *(this + 8) = 0;
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | 3;
    *(this + 16) = -11;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 0xF;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 4) & 7;
  *this = &llvm::semFloat8E3M4;
  v9 = *(this + 20);
  v10 = (v7 >> 4) & 8;
  if (v8 == 7 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 4;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 7 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 3;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 0x10;
      }

      else
      {
        *(this + 16) = -2;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -3;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 4;
    *(this + 8) = v6;
  }
}

void llvm::detail::IEEEFloat::initFromFloatTF32APInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 0x3FF;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 10);
  *this = &llvm::semFloatTF32;
  v9 = *(this + 20);
  v10 = (v7 >> 15) & 8;
  if (v8 == 255 && v6 == 0)
  {
    *(this + 20) = v9 & 0xF0 | v10;
    *(this + 16) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v8 != 255 || v6 == 0)
  {
    if (v8 | v6)
    {
      *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 2;
      *(this + 16) = v8 - 127;
      *(this + 8) = v6;
      if (v8)
      {
        *(this + 8) = v6 | 0x400;
      }

      else
      {
        *(this + 16) = -126;
      }
    }

    else
    {
      *(this + 20) = v9 & 0xF0 | v10 | 3;
      *(this + 16) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v10 & 0xF8 | 1;
    *(this + 16) = 128;
    *(this + 8) = v6;
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 3;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 2) & 7;
  *this = &llvm::semFloat6E3M2FN;
  v9 = (v7 >> 2) & 8;
  v10 = *(this + 20) & 0xF0;
  if (v8 | v6)
  {
    *(this + 20) = v9 | v10 | 2;
    *(this + 16) = v8 - 3;
    *(this + 8) = v6;
    if (v8)
    {
      *(this + 8) = v6 | 4;
    }

    else
    {
      *(this + 16) = -2;
    }
  }

  else
  {
    *(this + 20) = v10 | v9 | 3;
    *(this + 16) = -3;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 7;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 3) & 3;
  *this = &llvm::semFloat6E2M3FN;
  v9 = (v7 >> 2) & 8;
  v10 = *(this + 20) & 0xF0;
  if (v8 | v6)
  {
    *(this + 20) = v9 | v10 | 2;
    *(this + 16) = v8 - 1;
    *(this + 8) = v6;
    if (v8)
    {
      *(this + 8) = v6 | 8;
    }

    else
    {
      *(this + 16) = 0;
    }
  }

  else
  {
    *(this + 20) = v10 | v9 | 3;
    *(this + 16) = -1;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(uint64_t this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 >= 0x41)
  {
    v5 = *a2;
  }

  else
  {
    v5 = a2;
  }

  v6 = *v5 & 1;
  v7 = v5[((v4 + 63) >> 6) - 1];
  v8 = (v7 >> 1) & 3;
  *this = &llvm::semFloat4E2M1FN;
  v9 = v7 & 8 | *(this + 20) & 0xF0;
  if (v8 | v6)
  {
    *(this + 20) = v9 | 2;
    *(this + 16) = v8 - 1;
    *(this + 8) = v6;
    if (v8)
    {
      *(this + 8) = v6 | 2;
    }

    else
    {
      *(this + 16) = 0;
    }
  }

  else
  {
    *(this + 20) = v9 | 3;
    *(this + 16) = -1;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromAPInt(llvm::detail::IEEEFloat *a1, void *a2, const llvm::APInt ***a3, unsigned int a4)
{
  if (a2 == &llvm::semIEEEhalf)
  {
    llvm::detail::IEEEFloat::initFromHalfAPInt(a1, a3, a3, a4);
  }

  else if (a2 == &llvm::semBFloat)
  {
    llvm::detail::IEEEFloat::initFromBFloatAPInt(a1, a3, a3, a4);
  }

  else if (a2 == &llvm::semIEEEsingle)
  {
    llvm::detail::IEEEFloat::initFromFloatAPInt(a1, a3, a3, a4);
  }

  else if (a2 == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::initFromDoubleAPInt(a1, a3, a3, a4);
  }

  else
  {
    if (a2 == &llvm::semX87DoubleExtended)
    {
      llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(a1, a3);
    }

    if (a2 == &llvm::semIEEEquad)
    {
      llvm::detail::IEEEFloat::initFromQuadrupleAPInt(a1, a3);
    }

    if (a2 == &llvm::semPPCDoubleDoubleLegacy)
    {
      llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat8E5M2)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat8E5M2FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat8E4M3)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat8E4M3FN)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat8E4M3FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat8E4M3B11FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat8E3M4)
    {
      llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloatTF32)
    {
      llvm::detail::IEEEFloat::initFromFloatTF32APInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat6E3M2FN)
    {
      llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(a1, a3, a3, a4);
    }

    else if (a2 == &llvm::semFloat6E2M3FN)
    {
      llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(a1, a3, a3, a4);
    }

    else
    {
      llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(a1, a3, a3, a4);
    }
  }
}

void *llvm::detail::IEEEFloat::makeLargest(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 2;
  }

  *(this + 20) = v3 | *(this + 20) & 0xF0;
  v4 = *this;
  *(this + 4) = **this;
  v5 = *(v4 + 8);
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v7 = v5 + 64;
  result = memset(v6, 255, 8 * (((v5 + 64) >> 6) - 1));
  v9 = *this;
  if ((v7 & 0xFFFFFFC0) - *(*this + 8) >= 0x40)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0xFFFFFFFFFFFFFFFFLL >> ((v7 & 0xC0) - *(*this + 8));
  }

  v6[(v7 >> 6) - 1] = v10;
  if (*(v9 + 16) == 1 && *(v9 + 20) == 1)
  {
    *v6 &= ~1uLL;
  }

  return result;
}

void llvm::detail::IEEEFloat::makeSmallest(llvm::detail::IEEEFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  *(this + 20) = v4 | *(this + 20) & 0xF0;
  v5 = *(*this + 8);
  *(this + 4) = *(*this + 4);
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  llvm::APInt::tcSet(v6, 1, (v5 + 64) >> 6);
}

uint64_t llvm::detail::IEEEFloat::makeSmallestNormalized(llvm::detail::IEEEFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  *(this + 20) = *(this + 20) & 0xF8 | 2;
  v6 = *(*this + 8);
  v7 = (this + 8);
  v8 = (this + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v7;
  }

  llvm::APInt::tcSet(v8, 0, (v6 + 64) >> 6);
  if (a2)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(this + 20) = *(this + 20) & 0xF7 | v9;
  v10 = *(*this + 8);
  *(this + 4) = *(*this + 4);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  return llvm::APInt::tcSetBit(v7, (v10 - 1));
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, float a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = 32;
  v7 = LODWORD(a2);
  llvm::detail::IEEEFloat::initFromFloatAPInt(this, &v7, a4, a5);
  return this;
}

{
  v8 = 32;
  v7 = LODWORD(a2);
  llvm::detail::IEEEFloat::initFromFloatAPInt(this, &v7, a4, a5);
  return this;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, double a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = 64;
  v7 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v7, a4, a5);
  return this;
}

{
  v8 = 64;
  v7 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v7, a4, a5);
  return this;
}

void llvm::detail::IEEEFloat::toString(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v114[32] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 20) & 7;
  if (v6 == 3)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v11 = a2[1];
      if (v11 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v11) = 45;
      ++a2[1];
    }

    v12 = a2[1];
    if (a4)
    {
      if (v12 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v12) = 48;
      ++a2[1];
    }

    else
    {
      v30 = a2[2];
      if (!a5)
      {
        if (v30 < v12 + 3)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v39 = *a2 + v12;
        *(v39 + 2) = 48;
        *v39 = 11824;
        v7 = a2[1] + 3;
        a2[1] = v7;
        if (a3 >= 2)
        {
          v40 = a3 - 1;
          if (v7 + v40 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          memset((*a2 + v7), 48, v40);
          v7 = a2[1] + v40;
          a2[1] = v7;
        }

        if (a2[2] < (v7 + 4))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v24 = *a2;
        v25 = 808463205;
        goto LABEL_69;
      }

      if (v30 < v12 + 6)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v31 = *a2 + v12;
      *(v31 + 4) = 12331;
      *v31 = 1160785456;
      a2[1] += 6;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if ((*(a1 + 20) & 7) == 0)
      {
        v7 = a2[1];
        v8 = a2[2];
        if ((*(a1 + 20) & 8) == 0)
        {
          if (v8 < v7 + 4)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*a2 + v7) = 1718503723;
          goto LABEL_70;
        }

        if (v8 < v7 + 4)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v24 = *a2;
        v25 = 1718503725;
LABEL_69:
        *(v24 + v7) = v25;
LABEL_70:
        a2[1] += 4;
        return;
      }

      v13 = *(*a1 + 8);
      v16 = a5;
      v17 = *(a1 + 16);
      llvm::APInt::APInt(&v103, v13);
      v22 = *(a1 + 20);
      v23 = v104;
      v102 = v104;
      if (v104 > 0x40)
      {
        llvm::APInt::initSlowCase(&v101, &v103);
      }

      v101 = v103;
      if ((v22 & 8) != 0)
      {
        v26 = a2[1];
        if (v26 + 1 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a2 + v26) = 45;
        ++a2[1];
      }

      if (a3)
      {
        v27 = a3;
      }

      else
      {
        v27 = (59 * v23) / 196 + 2;
      }

      if (v102 > 0x40)
      {
        v29 = llvm::APInt::countTrailingZerosSlowCase(&v101);
        llvm::APInt::lshrSlowCase(&v101, v29);
      }

      else
      {
        v28 = __clz(__rbit64(v101));
        if (v102 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v102;
        }

        if (v102 > v28)
        {
          v101 >>= v29;
        }

        else
        {
          v101 = 0;
        }
      }

      v32 = v17 - v13 + v29;
      v33 = v32 + 1;
      if (v32 != -1)
      {
        if (v33 < 1)
        {
          v36 = (-137 * v33 + 136) / 0x3Bu + v23;
          llvm::APInt::zext(&__dst, &v101, v36);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v37 = -v33;
          v101 = __dst;
          v102 = v113;
          LODWORD(v113) = v36;
          if (v36 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst, 5, 0);
          }

          v38 = ((0xFFFFFFFFFFFFFFFFLL >> -v36) & 5);
          if (!v36)
          {
            v38 = 0;
          }

          for (__dst = v38; ; llvm::APInt::operator*=(&__dst, &__dst))
          {
            if (v37)
            {
              llvm::APInt::operator*=(&v101, &__dst);
            }

            if (v37 < 2)
            {
              break;
            }

            v37 >>= 1;
          }

          if (v113 >= 0x41 && __dst)
          {
            MEMORY[0x259C63150](__dst, 0x1000C8000313F17);
          }
        }

        else
        {
          llvm::APInt::zext(&__dst, &v101, v33 + v23);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v101 = __dst;
          v102 = v113;
          if (v113 > 0x40)
          {
            llvm::APInt::shlSlowCase(&v101, v33);
            v33 = 0;
          }

          else
          {
            v34 = __dst << v33;
            if (v113 == v33)
            {
              v34 = 0;
            }

            if (v113)
            {
              v35 = 0xFFFFFFFFFFFFFFFFLL >> -v113;
            }

            else
            {
              v35 = 0;
            }

            v101 = v35 & v34;
            v33 = 0;
          }
        }
      }

      v41 = v102;
      if (v102 > 0x40)
      {
        v42 = llvm::APInt::countLeadingZerosSlowCase(&v101);
      }

      else
      {
        v42 = v102 + __clz(v101) - 64;
      }

      v43 = (196 * v27 + 58) / 0x3B;
      if (v41 - v42 > v43)
      {
        v44 = 59 * (v41 - v42 - v43);
        if (v44 >= 0xC4)
        {
          v45 = v44 / 0xC4;
          v33 += v44 / 0xC4;
          LODWORD(v113) = v41;
          if (v41 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst, 1, 0);
          }

          __dst = (v41 != 0);
          LODWORD(v106) = v41;
          v46 = ((0xFFFFFFFFFFFFFFFFLL >> -v41) & 0xA);
          if (!v41)
          {
            v46 = 0;
          }

          for (i = v46; ; llvm::APInt::operator*=(&i, &i))
          {
            if (v45)
            {
              llvm::APInt::operator*=(&__dst, &i);
            }

            if (v45 < 2)
            {
              break;
            }

            v45 >>= 1;
          }

          llvm::APInt::udiv(&v110, &v101, &__dst);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v101 = v110;
          v47 = v111;
          v102 = v111;
          if (v111 > 0x40)
          {
            v48 = llvm::APInt::countLeadingZerosSlowCase(&v101);
          }

          else
          {
            v48 = v111 + __clz(v110) - 64;
          }

          llvm::APInt::trunc(&v110, &v101, v47 - v48);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v101 = v110;
          v102 = v111;
          if (v106 >= 0x41 && i)
          {
            MEMORY[0x259C63150](i, 0x1000C8000313F17);
          }

          if (v113 >= 0x41 && __dst)
          {
            MEMORY[0x259C63150](__dst, 0x1000C8000313F17);
          }

          v41 = v102;
        }
      }

      __dst = v114;
      v113 = xmmword_25736B790;
      if (v41 > 3)
      {
        v111 = v41;
        if (v41 > 0x40)
        {
          llvm::APInt::initSlowCase(&v110, 10, 0);
        }
      }

      else
      {
        v41 = 4;
        llvm::APInt::zext(&i, &v101, 4u);
        if (v102 >= 0x41 && v101)
        {
          MEMORY[0x259C63150](v101, 0x1000C8000313F17);
        }

        v101 = i;
        v102 = v106;
        v111 = 4;
      }

      v110 = (0xFFFFFFFFFFFFFFFFLL >> -v41) & 0xA;
      v109 = v41;
      v108 = 0;
      v49 = v102;
      if (v102 < 0x41)
      {
        goto LABEL_123;
      }

LABEL_120:
      if (v49 - llvm::APInt::countLeadingZerosSlowCase(&v101) > 0x40 || *v101)
      {
        while (1)
        {
          llvm::APInt::udivrem(&v101, &v110, &v101, &v108, v19, v20, v21);
          v50 = (v109 >= 0x41 ? v108 : &v108);
          v51 = *v50;
          if (v51)
          {
            break;
          }

          ++v33;
          v49 = v102;
          if (v102 >= 0x41)
          {
            goto LABEL_120;
          }

LABEL_123:
          if (!v101)
          {
            goto LABEL_141;
          }
        }

        if ((v113 + 1) > *(&v113 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(__dst + v113) = v51 + 48;
        *&v113 = v113 + 1;
        v52 = v102;
        if (v102 < 0x41)
        {
          goto LABEL_133;
        }

        while (v52 - llvm::APInt::countLeadingZerosSlowCase(&v101) > 0x40 || *v101)
        {
          while (1)
          {
            llvm::APInt::udivrem(&v101, &v110, &v101, &v108, v19, v20, v21);
            if (v109 >= 0x41)
            {
              v53 = v108;
            }

            else
            {
              v53 = &v108;
            }

            if ((v113 + 1) > *(&v113 + 1))
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(__dst + v113) = *v53 + 48;
            *&v113 = v113 + 1;
            v52 = v102;
            if (v102 >= 0x41)
            {
              break;
            }

LABEL_133:
            if (!v101)
            {
              goto LABEL_141;
            }
          }
        }
      }

LABEL_141:
      v54 = v113;
      v55 = v113 - v27;
      if (v113 <= v27)
      {
        v57 = a4;
        if (!a4)
        {
          goto LABEL_176;
        }
      }

      else
      {
        v56 = __dst;
        v57 = a4;
        if (*(__dst + (v55 - 1)) < 53)
        {
          if (v55 < v113)
          {
            v58 = v27;
            while (*(__dst + v55) == 48)
            {
              ++v55;
              if (!--v58)
              {
                LODWORD(v55) = v113;
                break;
              }
            }
          }

          v59 = v55;
          v60 = v113 - v55;
          if (v113 == v55)
          {
LABEL_149:
            v54 = v60;
            v33 += v55;
            *&v113 = v60;
            if (!v57)
            {
              goto LABEL_176;
            }

            goto LABEL_165;
          }

LABEL_164:
          v64 = v57;
          memmove(v56, &v56[v59], v60);
          v57 = v64;
          v54 = v56 + v60 - __dst;
          v33 += v55;
          *&v113 = &v56[v60] - __dst;
          if (!v57)
          {
            goto LABEL_176;
          }

          goto LABEL_165;
        }

        if (v27)
        {
          v61 = v27;
          while (1)
          {
            v62 = *(__dst + v55);
            if (v62 != 57)
            {
              break;
            }

            LODWORD(v55) = v55 + 1;
            if (!--v61)
            {
              goto LABEL_160;
            }
          }

          *(__dst + v55) = v62 + 1;
        }

        if (v55 != v54)
        {
          v59 = v55;
          v56 = __dst;
          v60 = v113 - v55;
          if (v113 == v55)
          {
            goto LABEL_149;
          }

          goto LABEL_164;
        }

LABEL_160:
        *&v113 = 0;
        if (!*(&v113 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *__dst = 49;
        v63 = v54;
        v54 = v113 + 1;
        v33 += v63;
        *&v113 = v113 + 1;
        if (!a4)
        {
          goto LABEL_176;
        }
      }

LABEL_165:
      if (v33 < 0)
      {
        v68 = v33 + v54;
        if (((v68 - 1) & 0x80000000) == 0 || 1 - v68 <= v57)
        {
          if (v68 < 1)
          {
            v96 = a2[1];
            if (v96 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v96) = 48;
            v97 = a2[1];
            v98 = a2[2];
            a2[1] = v97 + 1;
            if (v97 + 2 > v98)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v97 + 1) = 46;
            v95 = a2[1] + 1;
            a2[1] = v95;
            if (v68)
            {
              do
              {
                if (v95 + 1 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod();
                }

                *(*a2 + v95) = 48;
                v95 = a2[1] + 1;
                a2[1] = v95;
                v99 = __CFADD__(v68, 1);
                LODWORD(v68) = v68 + 1;
              }

              while (!v99);
              LODWORD(v68) = 0;
            }
          }

          else
          {
            v91 = a2[1];
            v92 = v54 - 1;
            v93 = v68;
            do
            {
              if (v91 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              *(*a2 + v91) = *(__dst + v92);
              v94 = a2[1];
              v91 = v94 + 1;
              a2[1] = v94 + 1;
              --v92;
              --v93;
            }

            while (v93);
            if (v94 + 2 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v91) = 46;
            v95 = a2[1] + 1;
            a2[1] = v95;
          }

          if (v68 != v54)
          {
            v100 = ~v68 + v54;
            do
            {
              if (v95 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              *(*a2 + v95) = *(__dst + v100);
              v95 = a2[1] + 1;
              a2[1] = v95;
              --v100;
            }

            while (v100 != -1);
          }

          goto LABEL_216;
        }
      }

      else if (v33 <= v57 && v33 + v54 <= v27)
      {
        if (v54)
        {
          v65 = v54;
          v66 = a2[1];
          v67 = v54 - 1;
          do
          {
            if (v66 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v66) = *(__dst + v67);
            v66 = a2[1] + 1;
            a2[1] = v66;
            --v67;
            --v65;
          }

          while (v65);
        }

        if (v33)
        {
          v89 = a2[1];
          do
          {
            if (v89 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v89) = 48;
            v89 = a2[1] + 1;
            a2[1] = v89;
            --v33;
          }

          while (v33);
        }

        goto LABEL_216;
      }

LABEL_176:
      v69 = v54 - 1;
      v70 = a2[1];
      if (v70 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v70) = *(__dst + v54 - 1);
      v71 = a2[1];
      v72 = a2[2];
      a2[1] = v71 + 1;
      if (v71 + 2 > v72)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v71 + 1) = 46;
      v73 = a2[1];
      v74 = v73 + 1;
      a2[1] = v73 + 1;
      if (v54 == 1 && (v16 & 1) != 0)
      {
        if (v73 + 2 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a2 + v74) = 48;
        v74 = a2[1] + 1;
        a2[1] = v74;
      }

      else if (v54 != 1)
      {
        v90 = v54 - 2;
        do
        {
          if (v74 + 1 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*a2 + v74) = *(__dst + v90);
          v74 = a2[1] + 1;
          a2[1] = v74;
          --v90;
        }

        while (v90 != -1);
      }

      if (v16)
      {
        v75 = 69;
      }

      else
      {
        if (v27 > v69)
        {
          v76 = v27 - v54 + 1;
          if (v74 + v76 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v27 - v54 != -1)
          {
            memset((*a2 + v74), 48, v27 - v54 + 1);
            v74 = a2[1];
          }

          v74 += v76;
          a2[1] = v74;
        }

        v75 = 101;
      }

      v77 = v69 + v33;
      if (v74 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v74) = v75;
      v78 = a2[1];
      v79 = a2[2];
      v80 = v78 + 1;
      a2[1] = v78 + 1;
      if (v77 < 0)
      {
        v81 = 45;
      }

      else
      {
        v81 = 43;
      }

      if (v78 + 2 > v79)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v82 = 0;
      *(*a2 + v80) = v81;
      ++a2[1];
      if (v77 >= 0)
      {
        v83 = v77;
      }

      else
      {
        v83 = -v77;
      }

      i = &v107;
      v106 = xmmword_25739D330;
      do
      {
        if (v82 + 1 > *(&v106 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(i + v82) = (v83 % 0xA) | 0x30;
        v84 = v106;
        v82 = v106 + 1;
        *&v106 = v106 + 1;
        v85 = v83 > 9;
        v83 /= 0xAu;
      }

      while (v85);
      if ((v16 & 1) == 0 && v82 <= 1)
      {
        if ((v84 + 2) > *(&v106 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(i + v82) = 48;
        LODWORD(v82) = v106 + 1;
        *&v106 = v106 + 1;
      }

      v86 = v82;
      if (v82)
      {
        v87 = a2[1];
        v88 = v82 - 1;
        do
        {
          if (v87 + 1 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*a2 + v87) = *(i + v88);
          v87 = a2[1] + 1;
          a2[1] = v87;
          --v88;
          --v86;
        }

        while (v86);
      }

      if (i != &v107)
      {
        free(i);
      }

LABEL_216:
      if (v109 >= 0x41 && v108)
      {
        MEMORY[0x259C63150](v108, 0x1000C8000313F17);
      }

      if (v111 >= 0x41 && v110)
      {
        MEMORY[0x259C63150](v110, 0x1000C8000313F17);
      }

      if (__dst != v114)
      {
        free(__dst);
      }

      if (v102 >= 0x41 && v101)
      {
        MEMORY[0x259C63150](v101, 0x1000C8000313F17);
      }

      if (v104 >= 0x41 && v103)
      {
        MEMORY[0x259C63150](v103, 0x1000C8000313F17);
      }

      return;
    }

    v9 = a2[1];
    if (a2[2] < (v9 + 3))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v10 = *a2 + v9;
    *(v10 + 2) = 78;
    *v10 = 24910;
    a2[1] += 3;
  }
}

uint64_t llvm::detail::IEEEFloat::getExactInverse(llvm::detail::IEEEFloat *this, llvm::APFloat *a2, unsigned int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3)
  {
    return 0;
  }

  v7 = *this;
  v6 = (this + 8);
  v8 = *(v7 + 8);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v9 = llvm::APInt::tcLSB(v6, ((v8 + 64) >> 6));
  v10 = *this;
  v11 = *(*this + 8);
  if (v9 != v11 - 1)
  {
    return 0;
  }

  v34 = *this;
  if ((v11 + 64) >= 0x80)
  {
    operator new[]();
  }

  v37 = 2;
  if ((v11 - 64) >= 0xFFFFFF80)
  {
    v9 = &v35;
  }

  llvm::APInt::tcSet(v9, 0, (v11 + 64) >> 6);
  v36 = *(v10 + 8) - 1;
  if ((v34[2] - 64) >= 0xFFFFFF80)
  {
    v13 = &v35;
  }

  else
  {
    v13 = v35;
  }

  *v13 = 1;
  llvm::detail::IEEEFloat::normalize(&v34, 1, 0);
  v37 ^= *(this + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(&v34, this, v14, v15);
  if ((v37 & 7) == 3)
  {
    if (v34[5] == 2)
    {
      v37 &= 0xF3u;
    }
  }

  else if ((v37 & 6) != 0)
  {
    v17 = llvm::detail::IEEEFloat::divideSignificand(&v34, this, v16);
    result = llvm::detail::IEEEFloat::normalize(&v34, 1, v17);
    if (v17)
    {
      goto LABEL_23;
    }
  }

  if (!result)
  {
    if ((v37 & 6) == 0 || (v37 & 7) == 3 || v36 != v34[1] || ((v18 = v34[2], (v18 - 64) >= 0xFFFFFF80) ? (v19 = &v35) : (v19 = v35), result = llvm::APInt::tcExtractBit(v19, (v18 - 1)), result))
    {
      if (a2)
      {
        v20 = v34;
        v30 = v34;
        if ((v34[2] + 64) >= 0x80)
        {
          operator new[]();
        }

        v21 = v37 & 7;
        v22 = v37 & 0xF;
        v33 = v37 & 0xF;
        v23 = v36;
        v32 = v36;
        v25 = (v37 & 6) != 0 && v21 != 3;
        if (v21 == 1 || v25)
        {
          v26 = v34[2];
          if ((v26 - 64) >= 0xFFFFFF80)
          {
            result = &v31;
          }

          if ((v34[2] - 64) >= 0xFFFFFF80)
          {
            v27 = &v35;
          }

          else
          {
            v27 = v35;
          }

          llvm::APInt::tcAssign(result, v27, ((v26 + 64) >> 6));
          v20 = v30;
          result = v31;
          v23 = v32;
          v22 = v33 & 0xF;
        }

        v28 = *this;
        v38 = v20;
        v39 = result;
        v40 = v23;
        v41 = v22;
        llvm::APFloat::Storage::Storage(&v42, &v38, v28);
        if ((*(v38 + 8) - 64) <= 0xFFFFFF7F && v39)
        {
          MEMORY[0x259C63150](v39, 0x1000C8000313F17);
        }

        llvm::APFloat::Storage::operator=((a2 + 8), &v42);
        if (v42.n128_u64[0] == &llvm::semPPCDoubleDouble)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v42);
        }

        else if ((*(v42.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v42.n128_u64[1])
        {
          MEMORY[0x259C63150](v42.n128_u64[1], 0x1000C8000313F17);
        }
      }

      result = 1;
    }

    goto LABEL_57;
  }

LABEL_23:
  result = 0;
LABEL_57:
  if ((v34[2] - 64) <= 0xFFFFFF7F)
  {
    if (v35)
    {
      v29 = result;
      MEMORY[0x259C63150](v35, 0x1000C8000313F17);
      return v29;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::getExactLog2Abs(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3)
  {
    return 0x80000000;
  }

  v3 = (this + 8);
  v4 = *this;
  v5 = *(*this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
    v6 = v5 + 63;
    goto LABEL_11;
  }

  v6 = v5 + 63;
  if ((v5 + 63) >= 0x40)
  {
LABEL_11:
    v7 = v6 >> 6;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = vcnt_s8(v3[v8]);
      v10.i16[0] = vaddlv_u8(v10);
      v9 += v10.i32[0];
      if (v9 > 1)
      {
        return 0x80000000;
      }
    }

    while (v7 != ++v8);
  }

  result = *(this + 4);
  if (result == *(v4 + 4))
  {
    v11 = *v3;
    if (*v3)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = v3 + 1;
      do
      {
        v11 = v14[v13++];
        v12 += 64;
      }

      while (!v11);
    }

    return result - v5 + v12 + __clz(__rbit64(v11)) + 1;
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::next(int **this, int a2, unsigned int a3, unsigned int a4)
{
  if ((a2 & 1) == 0)
  {
    v6 = *(this + 20);
    result = 0;
    v9 = v6 & 7;
    if (v9 <= 1)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_87;
      }

      *(this + 20) = v6 & 0xF0 | 2;
      v12 = (*this)[2];
      *(this + 4) = (*this)[1];
      v13 = (this + 1);
      if ((v12 - 64) <= 0xFFFFFF7F)
      {
        v13 = *v13;
      }

      llvm::APInt::tcSet(v13, 1, (v12 + 64) >> 6);
LABEL_86:
      result = 0;
LABEL_87:
      if (!a2)
      {
        return result;
      }

      goto LABEL_88;
    }

    if ((v6 & 6) != 0 && *(this + 4) == (*this)[1])
    {
      v20 = (*this)[2];
      v21 = (this + 1);
      v22 = (this + 1);
      if ((v20 - 64) <= 0xFFFFFF7F)
      {
        v22 = *v21;
      }

      v23 = llvm::APInt::tcMSB(v22, ((v20 + 64) >> 6));
      v6 = *(this + 20);
      if (!v23 && (v6 & 8) != 0)
      {
        v49 = (*this)[2];
        if ((v49 - 64) <= 0xFFFFFF7F)
        {
          v21 = *v21;
        }

        llvm::APInt::tcSet(v21, 0, (v49 + 64) >> 6);
        v50 = *(this + 20) & 0xF8 | 3;
        *(this + 20) = v50;
        *(this + 4) = 0;
        if ((*this)[5] == 2)
        {
          result = 0;
          *(this + 20) = v50 & 0xF3;
          if (!a2)
          {
            return result;
          }

          goto LABEL_88;
        }

        goto LABEL_86;
      }
    }

    if (llvm::detail::IEEEFloat::isLargest(this))
    {
      if ((v6 & 8) == 0)
      {
        v25 = (*this)[4];
        if (v25 == 2)
        {
          goto LABEL_86;
        }

        if (v25 == 1)
        {
          llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
          goto LABEL_86;
        }

        v54 = (*this)[2];
        v55 = (this + 1);
        if ((v54 - 64) <= 0xFFFFFF7F)
        {
          v55 = *v55;
        }

        llvm::APInt::tcSet(v55, 0, (v54 + 64) >> 6);
        result = 0;
        *(this + 20) &= 0xF8u;
        v56 = **this;
LABEL_100:
        *(this + 4) = v56 + 1;
        if (!a2)
        {
          return result;
        }

        goto LABEL_88;
      }

LABEL_60:
      v39 = (*this)[2];
      v40 = v39 - 64;
      if (*(this + 4) != (*this)[1])
      {
        v43 = this + 1;
        if (v40 <= 0xFFFFFF7F)
        {
          v43 = *v43;
        }

        v44 = v39 + 63;
        v45 = ((v39 + 63) >> 6) - 1;
        if ((v39 + 63) >> 6 == 1)
        {
          v45 = 0;
LABEL_79:
          v41 = v43[v45] << ((v44 & 0xC0) - v39 + 1) == 0;
          v42 = (this + 1);
          if (v40 > 0xFFFFFF7F)
          {
LABEL_63:
            llvm::APInt::tcSubtractPart(v42, 1uLL, (v39 + 64) >> 6);
            if (v41)
            {
              llvm::APInt::tcSetBit(v42, ((*this)[2] - 1));
              result = 0;
              --*(this + 4);
              if (!a2)
              {
                return result;
              }

              goto LABEL_88;
            }

            goto LABEL_86;
          }

LABEL_62:
          v42 = *v42;
          goto LABEL_63;
        }

        v46 = v43;
        v47 = (v44 >> 6) - 1;
        while (!*v46++)
        {
          if (!--v47)
          {
            goto LABEL_79;
          }
        }
      }

      v41 = 0;
      v42 = (this + 1);
      if (v40 > 0xFFFFFF7F)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if ((v6 & 8) != 0)
    {
      goto LABEL_60;
    }

    v26 = *this;
    if ((v6 & 6) == 0 || (v6 & 7) == 3 || *(this + 4) != v26[1])
    {
      goto LABEL_53;
    }

    v27 = v26[2];
    v28 = (this + 1);
    if ((v27 - 64) <= 0xFFFFFF7F)
    {
      v28 = *v28;
    }

    Bit = llvm::APInt::tcExtractBit(v28, (v27 - 1));
    v26 = *this;
    if (!Bit)
    {
      v30 = v26[2];
      v51 = (this + 1);
      if ((v30 - 64) > 0xFFFFFF7F)
      {
        goto LABEL_85;
      }
    }

    else
    {
LABEL_53:
      v30 = v26[2];
      v31 = v30 - 64;
      v32 = (this + 1);
      v33 = this + 1;
      if ((v30 - 64) <= 0xFFFFFF7F)
      {
        v33 = *v32;
      }

      v34 = v30 + 63;
      v35 = ((v30 + 63) >> 6) - 1;
      if ((v30 + 63) >> 6 == 1)
      {
        v35 = 0;
LABEL_82:
        if ((v33[v35] | (-1 << v34)) == 0xFFFFFFFFFFFFFFFFLL)
        {
          if (v31 <= 0xFFFFFF7F)
          {
            v32 = *v32;
          }

          llvm::APInt::tcSet(v32, 0, (v30 + 64) >> 6);
          llvm::APInt::tcSetBit(v32, ((*this)[2] - 1));
          result = 0;
          v56 = *(this + 4);
          goto LABEL_100;
        }
      }

      else
      {
        v36 = v33;
        v37 = (v34 >> 6) - 1;
        while (1)
        {
          v38 = *v36++;
          if (v38 != -1)
          {
            break;
          }

          if (!--v37)
          {
            goto LABEL_82;
          }
        }
      }

      v51 = (this + 1);
      if (v31 > 0xFFFFFF7F)
      {
LABEL_85:
        llvm::APInt::tcAddPart(v51, 1, (v30 + 64) >> 6);
        goto LABEL_86;
      }
    }

    v51 = *v51;
    goto LABEL_85;
  }

  v6 = *(this + 20);
  if ((*this)[5] != 2 || (v6 & 5 | 2) != 3)
  {
    v6 ^= 8u;
    *(this + 20) = v6;
  }

  result = 0;
  v9 = v6 & 7;
  if (v9 > 1)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (!v9)
  {
    if ((v6 & 8) != 0)
    {
      *(this + 20) = v6 & 0xF0 | 0xA;
      v14 = *this;
      *(this + 4) = **this;
      v15 = v14[2];
      v16 = this + 1;
      if ((v15 - 64) <= 0xFFFFFF7F)
      {
        v16 = *v16;
      }

      v17 = v15 + 64;
      memset(v16, 255, 8 * (((v15 + 64) >> 6) - 1));
      v18 = *this;
      v19 = (v17 & 0xFFFFFFC0) - (*this)[2] >= 0x40 ? 0 : 0xFFFFFFFFFFFFFFFFLL >> ((v17 & 0xC0) - *(*this + 8));
      v16[(v17 >> 6) - 1] = v19;
      if (v18[4] == 1 && v18[5] == 1)
      {
        result = 0;
        *v16 = (*v16 & 0xFFFFFFFFFFFFFFFELL);
        if (!a2)
        {
          return result;
        }

        goto LABEL_88;
      }
    }

    goto LABEL_86;
  }

  if (v9 != 1)
  {
    goto LABEL_87;
  }

  if (((*this)[4] - 1) < 2)
  {
    goto LABEL_86;
  }

  v10 = (*this)[2];
  v11 = (this + 1);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  if (llvm::APInt::tcExtractBit(v11, (v10 - 2)))
  {
    goto LABEL_86;
  }

  llvm::detail::IEEEFloat::makeNaN(this, 0, (*(this + 20) >> 3) & 1, 0);
  result = 1;
  if (!a2)
  {
    return result;
  }

LABEL_88:
  v52 = *(this + 20);
  if ((*this)[5] != 2 || (v52 & 5 | 2) != 3)
  {
    *(this + 20) = v52 ^ 8;
  }

  return result;
}

llvm::detail::IEEEFloat *llvm::detail::frexp@<X0>(uint64_t a1@<X0>, const llvm::detail::IEEEFloat *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = llvm::detail::ilogb(a1, a2, a3);
  *a2 = v8;
  if (v8 == 0x7FFFFFFF)
  {

    return llvm::detail::IEEEFloat::IEEEFloat(a4, a1, v9, v10);
  }

  else
  {
    if (v8 == -2147483647)
    {
      v17 = 0;
    }

    else
    {
      if (v8 == 0x80000000)
      {
        result = llvm::detail::IEEEFloat::IEEEFloat(a4, a1, v9, v10);
        if (*(*a4 + 16) != 1)
        {
          v12 = *(*a4 + 8);
          v15 = *(a4 + 8);
          v14 = a4 + 8;
          v13 = v15;
          if ((v12 - 64) >= 0xFFFFFF80)
          {
            v16 = v14;
          }

          else
          {
            v16 = v13;
          }

          return llvm::APInt::tcSetBit(v16, (v12 - 2));
        }

        return result;
      }

      v17 = v8 + 1;
    }

    *a2 = v17;
    v18 = *a1;
    v41 = v18;
    if ((v18[2] + 64) >= 0x80)
    {
      operator new[]();
    }

    v19 = *(a1 + 20);
    v20 = v19 & 7;
    v44 = v19 & 0xF;
    v21 = *(a1 + 16);
    v43 = v21;
    v23 = (v19 & 6) != 0 && v20 != 3;
    if (v20 == 1 || v23)
    {
      v25 = v18[2];
      if ((v25 - 64) >= 0xFFFFFF80)
      {
        v8 = &v42;
      }

      v26 = *(*a1 + 8) - 64;
      v29 = *(a1 + 8);
      v28 = (a1 + 8);
      v27 = v29;
      if (v26 >= 0xFFFFFF80)
      {
        v30 = v28;
      }

      else
      {
        v30 = v27;
      }

      llvm::APInt::tcAssign(v8, v30, ((v25 + 64) >> 6));
      v18 = v41;
      v21 = v43;
    }

    v31 = -*a2;
    v32 = *v18 + v18[2] + ~v18[1];
    v33 = -2 - v32;
    if (v32 + 1 < v31)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = -*a2;
    }

    if (v33 <= v31)
    {
      v35 = v34;
    }

    else
    {
      v35 = v33;
    }

    v43 = v35 + v21;
    result = llvm::detail::IEEEFloat::normalize(&v41, a3, 0);
    v36 = v44;
    v37 = v41;
    if ((v44 & 7) == 1 && v41[4] != 1)
    {
      v38 = v41[2];
      if ((v38 - 64) >= 0xFFFFFF80)
      {
        v39 = &v42;
      }

      else
      {
        v39 = v42;
      }

      result = llvm::APInt::tcSetBit(v39, (v38 - 2));
      v37 = v41;
      v36 = v44;
    }

    v40 = v42;
    *a4 = v37;
    *(a4 + 8) = v40;
    *(a4 + 16) = v43;
    *(a4 + 20) = *(a4 + 20) & 0xF0 | v36 & 0xF;
  }

  return result;
}

void llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2)
{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

void llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

void llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *this, const llvm::detail::DoubleAPFloat *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    operator new[]();
  }

  this[1] = 0;
  return this;
}

{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    operator new[]();
  }

  this[1] = 0;
  return this;
}

__n128 llvm::detail::DoubleAPFloat::DoubleAPFloat(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a2->n128_u64[0] = &llvm::semBogus;
  return result;
}

{
  result = *a2;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a2->n128_u64[0] = &llvm::semBogus;
  return result;
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  if (*a1 != *a2 || (v9 = *(a2 + 1)) == 0)
  {
    v6 = 0;
    v7 = a1;
    if (a1 != a2)
    {
LABEL_3:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v7);
      v8 = *(v4 + 1);
      *v7 = *v4;
      if (v8)
      {
        operator new[]();
      }

      *(v7 + 1) = 0;
    }

    goto LABEL_10;
  }

  v10 = *(a1 + 1);
  v11 = (v10 + 8);
  v12 = *(v10 + 8);
  v13 = (v9 + 8);
  v14 = *(v9 + 8);
  if (v12 != &llvm::semPPCDoubleDouble)
  {
    if (v14 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v11, v13, a3, a4);
      goto LABEL_22;
    }

    if (v10 == v9)
    {
      goto LABEL_22;
    }

    if ((*(v12 + 8) - 64) <= 0xFFFFFF7F)
    {
      v17 = *(v10 + 16);
      if (v17)
      {
        v18 = v11;
        v19 = (v9 + 8);
        MEMORY[0x259C63150](v17, 0x1000C8000313F17, a3, a4);
        v13 = v19;
        v11 = v18;
      }
    }

LABEL_20:
    llvm::APFloat::Storage::Storage(v11, v13, a3, a4);
    goto LABEL_22;
  }

  if (v14 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::operator=(v11, v13, a3, a4);
    goto LABEL_22;
  }

  if (v10 != v9)
  {
    v16 = (v9 + 8);
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v11);
    v13 = v16;
    goto LABEL_20;
  }

LABEL_22:
  v20 = *(v4 + 1);
  v21 = *(a1 + 1);
  v22 = (v21 + 40);
  v23 = *(v21 + 40);
  v4 = (v20 + 40);
  v24 = *(v20 + 40);
  v25 = v24 == &llvm::semPPCDoubleDouble;
  v6 = v23 == &llvm::semPPCDoubleDouble;
  if (v23 != &llvm::semPPCDoubleDouble)
  {
    v7 = a1;
    if (v24 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_53;
    }

LABEL_24:
    if (v21 == v20)
    {
      goto LABEL_10;
    }

    if ((v23[2] - 64) <= 0xFFFFFF7F)
    {
      v26 = *(v21 + 48);
      if (v26)
      {
        v27 = v22;
        MEMORY[0x259C63150](v26, 0x1000C8000313F17);
        v22 = v27;
      }
    }

LABEL_32:
    llvm::APFloat::Storage::Storage(v22, v4, a3, a4);
    goto LABEL_10;
  }

  if (v24 != &llvm::semPPCDoubleDouble)
  {
    v7 = a1;
LABEL_30:
    if (v21 == v20)
    {
      v6 = v25;
      goto LABEL_10;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v22);
    v6 = v25;
    goto LABEL_32;
  }

  while (1)
  {
    v7 = v22;
    v28 = *(v4 + 1);
    if (!v28)
    {
      v6 = 1;
      if (v22 != v4)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    v29 = *(v22 + 1);
    v30 = (v29 + 8);
    v31 = *(v29 + 8);
    v32 = (v28 + 8);
    v33 = *(v28 + 8);
    if (v31 == &llvm::semPPCDoubleDouble)
    {
      if (v33 != &llvm::semPPCDoubleDouble)
      {
        if (v29 == v28)
        {
          goto LABEL_46;
        }

        v34 = (v28 + 8);
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v30);
        v32 = v34;
        goto LABEL_44;
      }

      llvm::detail::DoubleAPFloat::operator=(v30, v32, a3, a4);
    }

    else
    {
      if (v33 != &llvm::semPPCDoubleDouble)
      {
        llvm::detail::IEEEFloat::operator=(v30, v32, a3, a4);
        goto LABEL_46;
      }

      if (v29 != v28)
      {
        if ((*(v31 + 8) - 64) <= 0xFFFFFF7F)
        {
          v35 = *(v29 + 16);
          if (v35)
          {
            v36 = v30;
            v37 = (v28 + 8);
            MEMORY[0x259C63150](v35, 0x1000C8000313F17);
            v32 = v37;
            v30 = v36;
          }
        }

LABEL_44:
        llvm::APFloat::Storage::Storage(v30, v32, a3, a4);
      }
    }

LABEL_46:
    v20 = *(v4 + 1);
    v21 = *(v7 + 1);
    v22 = (v21 + 40);
    v23 = *(v21 + 40);
    v4 = (v20 + 40);
    v38 = *(v20 + 40);
    if (v23 != &llvm::semPPCDoubleDouble)
    {
      break;
    }

    if (v38 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_30;
    }
  }

  if (v38 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_24;
  }

LABEL_53:
  llvm::detail::IEEEFloat::operator=(v22, v4, a3, a4);
LABEL_10:
  if (v6)
  {
    return a1;
  }

  else
  {
    return v7;
  }
}

uint64_t llvm::APFloat::operator=(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v7 != &llvm::semPPCDoubleDouble)
  {
    if (v10 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v6, v9, a3, a4);
      return a1;
    }

    if (a1 == a2)
    {
      return a1;
    }

    if ((*(v7 + 8) - 64) <= 0xFFFFFF7F && *(a1 + 16))
    {
      v14 = v6;
      v15 = v9;
      MEMORY[0x259C63150](*(a1 + 16), 0x1000C8000313F17, a3, a4);
      llvm::APFloat::Storage::Storage(v14, v15, v16, v17);
      return a1;
    }

LABEL_8:
    llvm::APFloat::Storage::Storage(v6, v9, a3, a4);
    return a1;
  }

  if (v10 != &llvm::semPPCDoubleDouble)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v13 = v9;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v6);
    v9 = v13;
    goto LABEL_8;
  }

  llvm::detail::DoubleAPFloat::operator=(v6, v9, a3, a4);
  return a1;
}

uint64_t llvm::detail::DoubleAPFloat::addImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v257 = *MEMORY[0x277D85DE8];
  v10 = llvm::APFloat::Storage::Storage(&v255, (a2 + 8), a3, a4);
  if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    v15 = llvm::detail::DoubleAPFloat::addWithSpecial(v10, &v255, a4 + 8, &v255, a6);
    goto LABEL_11;
  }

  v15 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v255, (a4 + 8), 0, v11);
  if (v15 == 2)
  {
    v16 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v255, (a4 + 8), 0, v13, v14);
    v15 = llvm::detail::IEEEFloat::normalize(&v255, a6, v16);
  }

  v17 = v256;
  if ((v256 & 7) != 3)
  {
LABEL_11:
    if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v18 = *(a4 + 28);
  if ((v18 & 7) == 3 && ((v18 ^ v256) & 8) == 0)
  {
    v19 = v255.n128_u64[0];
    if (*(v255.n128_u64[0] + 20) == 2)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (v19 == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v17 = v256 & 0xF3 | (8 * (a6 == 3));
  v256 = v17;
  v19 = v255.n128_u64[0];
  if (*(v255.n128_u64[0] + 20) != 2)
  {
    goto LABEL_17;
  }

LABEL_8:
  v256 = v17 & 0xF7;
  if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
LABEL_12:
    v20 = *(v255.n128_u64[1] + 28);
    if ((v20 & 6) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v244 = v15;
    llvm::APFloat::Storage::Storage(&v251, (a2 + 8), v12, v13);
    if (v251 == &llvm::semPPCDoubleDouble)
    {
      v31 = a5;
      v32 = llvm::detail::DoubleAPFloat::changeSign(&v251);
      v243 = llvm::detail::DoubleAPFloat::addWithSpecial(v32, &v251, &v255, &v251, a6);
      llvm::detail::DoubleAPFloat::changeSign(&v251);
    }

    else
    {
      v25 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v251, &v255, 1u, v24);
      if (v25 == 2)
      {
        v29 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v251, &v255, 1u, v27, v28);
        v25 = llvm::detail::IEEEFloat::normalize(&v251, a6, v29);
      }

      v30 = v253;
      v243 = v25;
      if ((v253 & 7) == 3)
      {
        if ((v256 & 7) != 3 || ((v256 ^ v253) & 8) == 0)
        {
          v30 = v253 & 0xF3 | (8 * (a6 == 3));
          v253 = v30;
        }

        v31 = a5;
        if (*(v251 + 5) == 2)
        {
          v253 = v30 & 0xF7;
        }
      }

      else
      {
        v31 = a5;
      }
    }

    v33 = llvm::APFloat::Storage::Storage(&v248, &v251, v26, v27);
    if (v248 == &llvm::semPPCDoubleDouble)
    {
      v35 = llvm::detail::DoubleAPFloat::addWithSpecial(v33, &v248, a4 + 8, &v248, a6);
      v38 = v35;
      if (v251 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v35 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v248, (a4 + 8), 0, v34);
      v38 = v35;
      if (v35 == 2)
      {
        v39 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v248, (a4 + 8), 0, v36, v37);
        v35 = llvm::detail::IEEEFloat::normalize(&v248, a6, v39);
        v38 = v35;
      }

      v40 = v250;
      if ((v250 & 7) == 3)
      {
        v41 = *(a4 + 28);
        if ((v41 & 7) != 3 || ((v41 ^ v250) & 8) != 0)
        {
          v40 = v250 & 0xF3 | (8 * (a6 == 3));
          v250 = v40;
        }

        if (*(v248 + 5) == 2)
        {
          v250 = v40 & 0xF7;
        }
      }

      if (v251 != &llvm::semPPCDoubleDouble)
      {
LABEL_40:
        v44 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v251, &v255, 0, v36);
        if (v44 == 2)
        {
          v45 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v251, &v255, 0, v42, v43);
          v44 = llvm::detail::IEEEFloat::normalize(&v251, a6, v45);
        }

        v46 = v253;
        if ((v253 & 7) == 3)
        {
          if ((v256 & 7) != 3 || ((v256 ^ v253) & 8) != 0)
          {
            v46 = v253 & 0xF3 | (8 * (a6 == 3));
            v253 = v46;
            v47 = v251;
            if (*(v251 + 5) == 2)
            {
LABEL_46:
              v253 = v46 & 0xF7;
              if (v251 == &llvm::semPPCDoubleDouble)
              {
                goto LABEL_51;
              }

LABEL_54:
              v50 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v251, (a2 + 8), 1u, v42);
              v49 = v50;
              if (v50 == 2)
              {
                v53 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v251, (a2 + 8), 1u, v51, v52);
                v50 = llvm::detail::IEEEFloat::normalize(&v251, a6, v53);
                v49 = v50;
              }

              v54 = v253;
              if ((v253 & 7) != 3)
              {
LABEL_73:
                v56 = v251;
                if (v251 == &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_74;
                }

                goto LABEL_61;
              }

              v55 = *(a2 + 28);
              if ((v55 & 7) == 3 && ((v55 ^ v253) & 8) != 0)
              {
                v56 = v251;
                if (*(v251 + 5) != 2)
                {
LABEL_60:
                  if (v56 == &llvm::semPPCDoubleDouble)
                  {
                    goto LABEL_74;
                  }

                  goto LABEL_61;
                }
              }

              else
              {
                v54 = v253 & 0xF3 | (8 * (a6 == 3));
                v253 = v54;
                v56 = v251;
                if (*(v251 + 5) != 2)
                {
                  goto LABEL_60;
                }
              }

              v253 = v54 & 0xF7;
              v56 = v251;
              if (v251 == &llvm::semPPCDoubleDouble)
              {
LABEL_74:
                v50 = llvm::detail::DoubleAPFloat::changeSign(&v251);
                if (v248 == &llvm::semPPCDoubleDouble)
                {
LABEL_75:
                  v57 = llvm::detail::DoubleAPFloat::addWithSpecial(v50, &v248, &v251, &v248, a6);
                  v60 = v57;
                  goto LABEL_76;
                }

LABEL_65:
                v57 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v248, &v251, 0, v51);
                v60 = v57;
                if (v57 == 2)
                {
                  v61 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v248, &v251, 0, v58, v59);
                  v57 = llvm::detail::IEEEFloat::normalize(&v248, a6, v61);
                  v60 = v57;
                }

                v62 = v250;
                if ((v250 & 7) != 3)
                {
LABEL_76:
                  if (v248 == &llvm::semPPCDoubleDouble)
                  {
LABEL_77:
                    v64 = a6;
                    v65 = llvm::detail::DoubleAPFloat::addWithSpecial(v57, &v248, a3 + 8, &v248, a6);
                    v67 = v65;
                    goto LABEL_91;
                  }

LABEL_83:
                  v64 = a6;
                  v65 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v248, (a3 + 8), 0, v58);
                  v67 = v65;
                  if (v65 == 2)
                  {
                    v69 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v248, (a3 + 8), 0, v66, v68);
                    v65 = llvm::detail::IEEEFloat::normalize(&v248, v64, v69);
                    v67 = v65;
                  }

                  v70 = v250;
                  if ((v250 & 7) != 3)
                  {
LABEL_91:
                    if (v248 == &llvm::semPPCDoubleDouble)
                    {
LABEL_92:
                      v73 = llvm::detail::DoubleAPFloat::addWithSpecial(v65, &v248, (v31 + 8), &v248, v64);
                      goto LABEL_103;
                    }

LABEL_95:
                    v73 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v248, (v31 + 8), 0, v66);
                    if (v73 == 2)
                    {
                      v77 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v248, (v31 + 8), 0, v75, v76);
                      v73 = llvm::detail::IEEEFloat::normalize(&v248, v64, v77);
                    }

                    v78 = v250;
                    if ((v250 & 7) == 3)
                    {
                      v79 = v31[28];
                      if ((v79 & 7) != 3 || ((v79 ^ v250) & 8) != 0)
                      {
                        v78 = v250 & 0xF3 | (8 * (v64 == 3));
                        v250 = v78;
                      }

                      v80 = v248;
                      if (*(v248 + 5) != 2)
                      {
LABEL_104:
                        v81 = v243 | v38 | v44 | v49 | v60 | v67 | v73 | v244;
                        if (v80 == &llvm::semPPCDoubleDouble)
                        {
                          v82 = *(v249 + 28);
                          v83 = a1;
                          if ((v82 & 7) != 3)
                          {
                            goto LABEL_112;
                          }
                        }

                        else
                        {
                          v82 = v250;
                          v83 = a1;
                          if ((v250 & 7) != 3)
                          {
                            goto LABEL_112;
                          }
                        }

                        if ((v82 & 8) == 0)
                        {
                          llvm::APFloat::Storage::operator=((*(v83 + 8) + 8), &v255);
                          llvm::APFloat::makeZero((*(v83 + 8) + 32), 0, v84, v85);
                          v86 = 0;
                          v15 = 0;
                          v87 = v248;
                          if (v248 == &llvm::semPPCDoubleDouble)
                          {
                            goto LABEL_110;
                          }

                          goto LABEL_170;
                        }

LABEL_112:
                        v89 = *(v83 + 8);
                        v90 = (v89 + 8);
                        v91 = *(v89 + 8);
                        if (v91 == &llvm::semPPCDoubleDouble)
                        {
                          if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
                          {
                            LODWORD(v90) = llvm::detail::DoubleAPFloat::operator=(v90, &v255, v74, v75);
                            v92 = *(v83 + 8);
                            v93 = (v92 + 8);
                            if (*(v92 + 8) != &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_149;
                            }

LABEL_115:
                            v81 = llvm::detail::DoubleAPFloat::addWithSpecial(v90, v93, &v248, v93, v64) | v81;
                            v96 = *(v83 + 8);
                            if (*(v96 + 8) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_116;
                            }

                            goto LABEL_158;
                          }

                          if (v89 == &v254)
                          {
LABEL_148:
                            v92 = *(v83 + 8);
                            v93 = (v92 + 8);
                            if (*(v92 + 8) != &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_149;
                            }

                            goto LABEL_115;
                          }

                          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v90);
                        }

                        else
                        {
                          if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
                          {
                            LODWORD(v90) = llvm::detail::IEEEFloat::operator=(v90, &v255, v74, v75);
                            v92 = *(v83 + 8);
                            v93 = (v92 + 8);
                            if (*(v92 + 8) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_115;
                            }

LABEL_149:
                            v124 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v93, &v248, 0, v75);
                            if (v124 == 2)
                            {
                              v126 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v93, &v248, 0, v95, v125);
                              v124 = llvm::detail::IEEEFloat::normalize(v93, v64, v126);
                            }

                            v127 = *(v92 + 28);
                            if ((v127 & 7) == 3)
                            {
                              if ((v250 & 7) != 3 || ((v250 ^ v127) & 8) != 0)
                              {
                                LOBYTE(v127) = v127 & 0xF3 | (8 * (v64 == 3));
                                *(v92 + 28) = v127;
                              }

                              if (*(*v93 + 20) == 2)
                              {
                                *(v92 + 28) = v127 & 0xF7;
                              }
                            }

                            v81 = v124 | v81;
                            v96 = *(v83 + 8);
                            if (*(v96 + 8) == &llvm::semPPCDoubleDouble)
                            {
LABEL_116:
                              v97 = *(*(v96 + 16) + 28) & 7;
                              if (v97 == 1)
                              {
                                goto LABEL_169;
                              }

LABEL_159:
                              if (v97)
                              {
                                llvm::APFloat::Storage::operator=((v96 + 40), &v255);
                                v129 = *(v83 + 8);
                                v130 = (v129 + 40);
                                if (*(v129 + 5) == &llvm::semPPCDoubleDouble)
                                {
                                  v138 = llvm::detail::DoubleAPFloat::changeSign(v130);
                                  v15 = llvm::detail::DoubleAPFloat::addWithSpecial(v138, v130, (v129 + 8), v130, v64);
                                  LODWORD(v131) = llvm::detail::DoubleAPFloat::changeSign(v130);
                                }

                                else
                                {
                                  v131 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v130, (v129 + 8), 1u, v128);
                                  v15 = v131;
                                  if (v131 == 2)
                                  {
                                    v134 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v130, (v129 + 8), 1u, v132, v133);
                                    v131 = llvm::detail::IEEEFloat::normalize(v130, v64, v134);
                                    v15 = v131;
                                  }

                                  v135 = v129[60];
                                  if ((v135 & 7) == 3)
                                  {
                                    v136 = v129[28];
                                    if ((v136 & 7) != 3 || ((v136 ^ v135) & 8) == 0)
                                    {
                                      LOBYTE(v135) = v135 & 0xF3 | (8 * (v64 == 3));
                                      v129[60] = v135;
                                    }

                                    if (*(*v130 + 20) == 2)
                                    {
                                      v129[60] = v135 & 0xF7;
                                    }
                                  }
                                }

                                v139 = *(v83 + 8);
                                v140 = (v139 + 40);
                                if (*(v139 + 40) == &llvm::semPPCDoubleDouble)
                                {
                                  v81 = v15 | llvm::detail::DoubleAPFloat::addWithSpecial(v131, v140, &v248, v140, v64) | v81;
                                  v86 = 1;
                                  v87 = v248;
                                  if (v248 == &llvm::semPPCDoubleDouble)
                                  {
                                    goto LABEL_110;
                                  }
                                }

                                else
                                {
                                  v141 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v140, &v248, 0, v132);
                                  if (v141 == 2)
                                  {
                                    v144 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v140, &v248, 0, v142, v143);
                                    v141 = llvm::detail::IEEEFloat::normalize(v140, v64, v144);
                                  }

                                  v145 = *(v139 + 60);
                                  if ((v145 & 7) == 3)
                                  {
                                    if ((v250 & 7) != 3 || ((v250 ^ v145) & 8) != 0)
                                    {
                                      LOBYTE(v145) = v145 & 0xF3 | (8 * (v64 == 3));
                                      *(v139 + 60) = v145;
                                    }

                                    if (*(*v140 + 20) == 2)
                                    {
                                      *(v139 + 60) = v145 & 0xF7;
                                    }
                                  }

                                  v81 = v15 | v141 | v81;
                                  v86 = 1;
                                  v87 = v248;
                                  if (v248 == &llvm::semPPCDoubleDouble)
                                  {
LABEL_110:
                                    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v248);
                                    v88 = v251;
                                    if (v251 == &llvm::semPPCDoubleDouble)
                                    {
LABEL_111:
                                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v251);
                                      goto LABEL_177;
                                    }

LABEL_174:
                                    if ((*(v88 + 2) - 64) <= 0xFFFFFF7F && v252)
                                    {
                                      MEMORY[0x259C63150](v252, 0x1000C8000313F17);
                                    }

LABEL_177:
                                    if (!v86)
                                    {
                                      goto LABEL_179;
                                    }

                                    goto LABEL_178;
                                  }
                                }

LABEL_170:
                                if ((*(v87 + 2) - 64) <= 0xFFFFFF7F && v249)
                                {
                                  MEMORY[0x259C63150](v249, 0x1000C8000313F17);
                                }

                                v88 = v251;
                                if (v251 == &llvm::semPPCDoubleDouble)
                                {
                                  goto LABEL_111;
                                }

                                goto LABEL_174;
                              }

LABEL_169:
                              llvm::APFloat::makeZero((v96 + 32), 0, v94, v95);
                              v86 = 0;
                              v15 = v81;
                              v87 = v248;
                              if (v248 == &llvm::semPPCDoubleDouble)
                              {
                                goto LABEL_110;
                              }

                              goto LABEL_170;
                            }

LABEL_158:
                            v97 = *(v96 + 28) & 7;
                            if (v97 == 1)
                            {
                              goto LABEL_169;
                            }

                            goto LABEL_159;
                          }

                          if (v89 == &v254)
                          {
                            goto LABEL_148;
                          }

                          if ((*(v91 + 8) - 64) <= 0xFFFFFF7F)
                          {
                            v122 = *(v89 + 16);
                            if (v122)
                            {
                              v123 = v90;
                              MEMORY[0x259C63150](v122, 0x1000C8000313F17);
                              v90 = v123;
                            }
                          }
                        }

                        LODWORD(v90) = llvm::APFloat::Storage::Storage(v90, &v255, v74, v75);
                        goto LABEL_148;
                      }

                      v250 = v78 & 0xF7;
                    }

LABEL_103:
                    v80 = v248;
                    goto LABEL_104;
                  }

                  v71 = *(a3 + 28);
                  if ((v71 & 7) != 3 || ((v71 ^ v250) & 8) != 0)
                  {
                    v70 = v250 & 0xF3 | (8 * (v64 == 3));
                    v250 = v70;
                    v72 = v248;
                    if (*(v248 + 5) == 2)
                    {
LABEL_89:
                      v250 = v70 & 0xF7;
                      if (v248 == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_92;
                      }

                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    v72 = v248;
                    if (*(v248 + 5) == 2)
                    {
                      goto LABEL_89;
                    }
                  }

                  if (v72 == &llvm::semPPCDoubleDouble)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_95;
                }

                if ((v253 & 7) != 3 || ((v253 ^ v250) & 8) != 0)
                {
                  v62 = v250 & 0xF3 | (8 * (a6 == 3));
                  v250 = v62;
                  v63 = v248;
                  if (*(v248 + 5) == 2)
                  {
LABEL_71:
                    v250 = v62 & 0xF7;
                    if (v248 == &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_83;
                  }
                }

                else
                {
                  v63 = v248;
                  if (*(v248 + 5) == 2)
                  {
                    goto LABEL_71;
                  }
                }

                if (v63 == &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_77;
                }

                goto LABEL_83;
              }

LABEL_61:
              if (*(v56 + 5) != 2 || (v253 & 5 | 2) != 3)
              {
                v253 ^= 8u;
              }

              if (v248 == &llvm::semPPCDoubleDouble)
              {
                goto LABEL_75;
              }

              goto LABEL_65;
            }
          }

          else
          {
            v47 = v251;
            if (*(v251 + 5) == 2)
            {
              goto LABEL_46;
            }
          }

          if (v47 != &llvm::semPPCDoubleDouble)
          {
            goto LABEL_54;
          }

LABEL_51:
          v48 = llvm::detail::DoubleAPFloat::changeSign(&v251);
          v49 = llvm::detail::DoubleAPFloat::addWithSpecial(v48, &v251, a2 + 8, &v251, a6);
          v50 = llvm::detail::DoubleAPFloat::changeSign(&v251);
          goto LABEL_73;
        }

LABEL_50:
        if (v251 != &llvm::semPPCDoubleDouble)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }
    }

    v44 = llvm::detail::DoubleAPFloat::addWithSpecial(v35, &v251, &v255, &v251, a6);
    goto LABEL_50;
  }

LABEL_18:
  v20 = v256;
  if ((v256 & 6) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v20 & 7) == 0)
  {
    v98 = *(a2 + 8);
    if (v98 == &llvm::semPPCDoubleDouble)
    {
      v101 = llvm::detail::DoubleAPFloat::compareAbsoluteValue((a2 + 8), (a4 + 8), v12, v13);
      v105 = v101 == 2;
      v107 = a5 + 8;
      v106 = *(a5 + 1);
      v108 = v255.n128_u64[0];
      if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
LABEL_131:
        if (v106 != &llvm::semPPCDoubleDouble)
        {
          v101 = llvm::detail::IEEEFloat::operator=(&v255, v107, v12, v13);
          if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
          {
            goto LABEL_133;
          }

LABEL_210:
          v109 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v255, (a3 + 8), 0, v13);
          v111 = v109;
          if (v109 == 2)
          {
            v147 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v255, (a3 + 8), 0, v110, v146);
            v109 = llvm::detail::IEEEFloat::normalize(&v255, a6, v147);
            v111 = v109;
          }

          v148 = v256;
          if ((v256 & 7) == 3)
          {
            v149 = *(a3 + 28);
            if ((v149 & 7) != 3 || ((v149 ^ v256) & 8) != 0)
            {
              v148 = v256 & 0xF3 | (8 * (a6 == 3));
              v256 = v148;
            }

            if (*(v255.n128_u64[0] + 20) == 2)
            {
              v256 = v148 & 0xF7;
            }
          }

          v112 = v255.n128_u64[0] == &llvm::semPPCDoubleDouble;
          if (!v105)
          {
LABEL_134:
            if (v112)
            {
              v113 = a6;
              v114 = llvm::detail::DoubleAPFloat::addWithSpecial(v109, &v255, a2 + 8, &v255, a6);
              v117 = v114;
            }

            else
            {
              v113 = a6;
              v114 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v255, (a2 + 8), 0, v110);
              v117 = v114;
              if (v114 == 2)
              {
                v118 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v255, (a2 + 8), 0, v115, v116);
                v114 = llvm::detail::IEEEFloat::normalize(&v255, v113, v118);
                v117 = v114;
              }

              v119 = v256;
              if ((v256 & 7) == 3)
              {
                v120 = *(a2 + 28);
                if ((v120 & 7) != 3 || ((v120 ^ v256) & 8) != 0)
                {
                  v119 = v256 & 0xF3 | (8 * (v113 == 3));
                  v256 = v119;
                  v121 = v255.n128_u64[0];
                  if (*(v255.n128_u64[0] + 20) == 2)
                  {
LABEL_141:
                    v256 = v119 & 0xF7;
                    if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_230;
                    }

LABEL_239:
                    v157 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v255, (a4 + 8), 0, v115);
                    if (v157 == 2)
                    {
                      v161 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v255, (a4 + 8), 0, v159, v160);
                      v157 = llvm::detail::IEEEFloat::normalize(&v255, v113, v161);
                    }

                    v162 = v256;
                    if ((v256 & 7) == 3)
                    {
                      v163 = *(a4 + 28);
                      if ((v163 & 7) == 3)
                      {
LABEL_250:
                        if (((v163 ^ v162) & 8) == 0)
                        {
                          goto LABEL_252;
                        }
                      }

LABEL_251:
                      LOBYTE(v162) = v162 & 0xF3 | (8 * (v113 == 3));
                      v256 = v162;
LABEL_252:
                      if (*(v255.n128_u64[0] + 20) == 2)
                      {
                        v256 = v162 & 0xF7;
                      }

                      goto LABEL_254;
                    }

                    goto LABEL_254;
                  }
                }

                else
                {
                  v121 = v255.n128_u64[0];
                  if (*(v255.n128_u64[0] + 20) == 2)
                  {
                    goto LABEL_141;
                  }
                }

                if (v121 != &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_239;
                }

LABEL_230:
                v156 = a4 + 8;
LABEL_234:
                v157 = llvm::detail::DoubleAPFloat::addWithSpecial(v114, &v255, v156, &v255, v113);
                goto LABEL_254;
              }
            }

            if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
            {
              goto LABEL_239;
            }

            goto LABEL_230;
          }

LABEL_219:
          if (v112)
          {
            v113 = a6;
            v114 = llvm::detail::DoubleAPFloat::addWithSpecial(v109, &v255, a4 + 8, &v255, a6);
            v117 = v114;
          }

          else
          {
            v113 = a6;
            v114 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v255, (a4 + 8), 0, v110);
            v117 = v114;
            if (v114 == 2)
            {
              v152 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v255, (a4 + 8), 0, v150, v151);
              v114 = llvm::detail::IEEEFloat::normalize(&v255, v113, v152);
              v117 = v114;
            }

            v153 = v256;
            if ((v256 & 7) == 3)
            {
              v154 = *(a4 + 28);
              if ((v154 & 7) != 3 || ((v154 ^ v256) & 8) != 0)
              {
                v153 = v256 & 0xF3 | (8 * (v113 == 3));
                v256 = v153;
                v155 = v255.n128_u64[0];
                if (*(v255.n128_u64[0] + 20) == 2)
                {
LABEL_226:
                  v256 = v153 & 0xF7;
                  if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
                  {
                    goto LABEL_233;
                  }

LABEL_246:
                  v157 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v255, (a2 + 8), 0, v150);
                  if (v157 == 2)
                  {
                    v165 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v255, (a2 + 8), 0, v159, v164);
                    v157 = llvm::detail::IEEEFloat::normalize(&v255, v113, v165);
                  }

                  v162 = v256;
                  if ((v256 & 7) == 3)
                  {
                    v163 = *(a2 + 28);
                    if ((v163 & 7) == 3)
                    {
                      goto LABEL_250;
                    }

                    goto LABEL_251;
                  }

LABEL_254:
                  v245 = v157 | v117 | v111;
                  v166 = v113;
                  if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
                  {
                    v167 = *(v255.n128_u64[1] + 28) & 7;
                    if (v167 == 1)
                    {
                      goto LABEL_262;
                    }
                  }

                  else
                  {
                    v167 = v256 & 7;
                    if (v167 == 1)
                    {
LABEL_262:
                      llvm::APFloat::Storage::operator=((*(a1 + 8) + 8), &v255);
                      llvm::APFloat::makeZero((*(a1 + 8) + 32), 0, v171, v172);
                      v15 = v245;
                      v23 = v255.n128_u64[0];
                      if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_15;
                      }

                      goto LABEL_180;
                    }
                  }

                  if (!v167)
                  {
                    goto LABEL_262;
                  }

                  v168 = *(a1 + 8);
                  v169 = (v168 + 8);
                  v170 = *(v168 + 8);
                  if (v170 == &llvm::semPPCDoubleDouble)
                  {
                    if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
                    {
                      if (v168 == &v254)
                      {
                        goto LABEL_273;
                      }

                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v169);
                      goto LABEL_271;
                    }

                    llvm::detail::DoubleAPFloat::operator=(v169, &v255, v158, v159);
                  }

                  else
                  {
                    if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
                    {
                      llvm::detail::IEEEFloat::operator=(v169, &v255, v158, v159);
                      goto LABEL_273;
                    }

                    if (v168 != &v254)
                    {
                      if ((*(v170 + 8) - 64) <= 0xFFFFFF7F && *(v168 + 16))
                      {
                        v173 = (v168 + 8);
                        MEMORY[0x259C63150](*(v168 + 16), 0x1000C8000313F17);
                        v169 = v173;
                      }

LABEL_271:
                      llvm::APFloat::Storage::Storage(v169, &v255, v158, v159);
                    }
                  }

LABEL_273:
                  v174 = llvm::APFloat::Storage::Storage(&v251, (a3 + 8), v158, v159);
                  if (v251 == &llvm::semPPCDoubleDouble)
                  {
                    v179 = llvm::detail::DoubleAPFloat::addWithSpecial(v174, &v251, v107, &v251, v166);
                  }

                  else
                  {
                    v179 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v251, v107, 0, v175);
                    if (v179 == 2)
                    {
                      v180 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v251, v107, 0, v177, v178);
                      v179 = llvm::detail::IEEEFloat::normalize(&v251, v166, v180);
                    }

                    v181 = v253;
                    if ((v253 & 7) == 3)
                    {
                      v182 = a5[28];
                      if ((v182 & 7) != 3 || ((v182 ^ v253) & 8) != 0)
                      {
                        v181 = v253 & 0xF3 | (8 * (v166 == 3));
                        v253 = v181;
                      }

                      if (*(v251 + 5) == 2)
                      {
                        v253 = v181 & 0xF7;
                      }
                    }
                  }

                  v183 = *(a1 + 8);
                  v184 = v183 + 32;
                  v185 = (v183 + 40);
                  v186 = *(v183 + 40);
                  if (v105)
                  {
                    v187 = *(a2 + 8);
                    if (v186 == &llvm::semPPCDoubleDouble)
                    {
                      if (v187 != &llvm::semPPCDoubleDouble)
                      {
                        if (v184 == a2)
                        {
                          goto LABEL_307;
                        }

                        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v185);
                        goto LABEL_300;
                      }

                      llvm::detail::DoubleAPFloat::operator=(v185, (a2 + 8), v176, v177);
                    }

                    else
                    {
                      if (v187 != &llvm::semPPCDoubleDouble)
                      {
                        llvm::detail::IEEEFloat::operator=(v185, (a2 + 8), v176, v177);
                        goto LABEL_307;
                      }

                      if (v184 != a2)
                      {
                        if ((*(v186 + 8) - 64) <= 0xFFFFFF7F)
                        {
                          v189 = *(v183 + 48);
                          if (v189)
                          {
                            v190 = v185;
                            MEMORY[0x259C63150](v189, 0x1000C8000313F17);
                            v185 = v190;
                          }
                        }

LABEL_300:
                        llvm::APFloat::Storage::Storage(v185, (a2 + 8), v176, v177);
                      }
                    }

LABEL_307:
                    v193 = *(a1 + 8);
                    v194 = (v193 + 40);
                    if (*(v193 + 40) == &llvm::semPPCDoubleDouble)
                    {
                      v201 = llvm::detail::DoubleAPFloat::changeSign(v194);
                      v198 = llvm::detail::DoubleAPFloat::addWithSpecial(v201, v194, &v255, v194, v166);
                      v195 = llvm::detail::DoubleAPFloat::changeSign(v194);
                    }

                    else
                    {
                      v195 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v194, &v255, 1u, v177);
                      v198 = v195;
                      if (v195 == 2)
                      {
                        v199 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v194, &v255, 1u, v196, v197);
                        v195 = llvm::detail::IEEEFloat::normalize(v194, v166, v199);
                        v198 = v195;
                      }

                      v200 = *(v193 + 60);
                      if ((v200 & 7) == 3)
                      {
                        if ((v256 & 7) != 3 || ((v256 ^ v200) & 8) == 0)
                        {
                          LOBYTE(v200) = v200 & 0xF3 | (8 * (v166 == 3));
                          *(v193 + 60) = v200;
                        }

                        if (*(*v194 + 20) == 2)
                        {
                          *(v193 + 60) = v200 & 0xF7;
                        }
                      }
                    }

                    v202 = *(a1 + 8);
                    v203 = (v202 + 40);
                    if (*(v202 + 40) == &llvm::semPPCDoubleDouble)
                    {
                      v204 = llvm::detail::DoubleAPFloat::addWithSpecial(v195, v203, a4 + 8, v203, v166);
                    }

                    else
                    {
                      v204 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v203, (a4 + 8), 0, v196);
                      if (v204 == 2)
                      {
                        v207 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v203, (a4 + 8), 0, v205, v206);
                        v204 = llvm::detail::IEEEFloat::normalize(v203, v166, v207);
                      }

                      v208 = *(v202 + 60);
                      if ((v208 & 7) == 3)
                      {
                        v209 = *(a4 + 28);
                        if ((v209 & 7) != 3 || ((v209 ^ v208) & 8) != 0)
                        {
                          LOBYTE(v208) = v208 & 0xF3 | (8 * (v166 == 3));
                          *(v202 + 60) = v208;
                          v210 = a1;
                          if (*(*v203 + 20) == 2)
                          {
LABEL_324:
                            *(v202 + 60) = v208 & 0xF7;
                            v211 = v204 | v198;
                            v212 = *(v210 + 8);
                            v213 = (v212 + 40);
                            if (*(v212 + 40) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_328;
                            }

                            goto LABEL_331;
                          }
                        }

                        else
                        {
                          v210 = a1;
                          if (*(*v203 + 20) == 2)
                          {
                            goto LABEL_324;
                          }
                        }

                        v211 = v204 | v198;
                        v212 = *(v210 + 8);
                        v213 = (v212 + 40);
                        if (*(v212 + 40) != &llvm::semPPCDoubleDouble)
                        {
LABEL_331:
                          v214 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v213, &v251, 0, v205);
                          if (v214 == 2)
                          {
                            v217 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v213, &v251, 0, v215, v216);
                            v214 = llvm::detail::IEEEFloat::normalize(v213, v166, v217);
                          }

                          v218 = *(v212 + 60);
                          if ((v218 & 7) != 3)
                          {
                            goto LABEL_339;
                          }

                          if ((v253 & 7) != 3 || ((v253 ^ v218) & 8) != 0)
                          {
                            LOBYTE(v218) = v218 & 0xF3 | (8 * (v166 == 3));
                            *(v212 + 60) = v218;
                          }

                          v219 = v245;
                          if (*(*v213 + 20) != 2)
                          {
                            goto LABEL_372;
                          }

                          goto LABEL_370;
                        }

LABEL_328:
                        v214 = llvm::detail::DoubleAPFloat::addWithSpecial(v204, v213, &v251, v213, v166);
LABEL_339:
                        v219 = v245;
                        goto LABEL_372;
                      }
                    }

                    v211 = v204 | v198;
                    v212 = *(a1 + 8);
                    v213 = (v212 + 40);
                    if (*(v212 + 40) != &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_331;
                    }

                    goto LABEL_328;
                  }

                  v188 = *(a4 + 8);
                  if (v186 == &llvm::semPPCDoubleDouble)
                  {
                    if (v188 == &llvm::semPPCDoubleDouble)
                    {
                      llvm::detail::DoubleAPFloat::operator=(v185, (a4 + 8), v176, v177);
                      goto LABEL_341;
                    }

                    if (v184 == a4)
                    {
LABEL_341:
                      v220 = *(a1 + 8);
                      v221 = (v220 + 40);
                      if (*(v220 + 40) == &llvm::semPPCDoubleDouble)
                      {
                        v230 = llvm::detail::DoubleAPFloat::changeSign(v221);
                        v222 = v166;
                        v226 = llvm::detail::DoubleAPFloat::addWithSpecial(v230, v221, &v255, v221, v166);
                        v223 = llvm::detail::DoubleAPFloat::changeSign(v221);
                        v229 = a1;
                        v219 = v245;
                      }

                      else
                      {
                        v222 = v166;
                        v223 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v221, &v255, 1u, v177);
                        v226 = v223;
                        if (v223 == 2)
                        {
                          v227 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v221, &v255, 1u, v224, v225);
                          v223 = llvm::detail::IEEEFloat::normalize(v221, v166, v227);
                          v226 = v223;
                        }

                        v228 = *(v220 + 60);
                        v219 = v245;
                        if ((v228 & 7) == 3)
                        {
                          if ((v256 & 7) != 3 || ((v256 ^ v228) & 8) == 0)
                          {
                            LOBYTE(v228) = v228 & 0xF3 | (8 * (v222 == 3));
                            *(v220 + 60) = v228;
                          }

                          if (*(*v221 + 20) == 2)
                          {
                            *(v220 + 60) = v228 & 0xF7;
                          }
                        }

                        v229 = a1;
                      }

                      v231 = *(v229 + 8);
                      v232 = (v231 + 40);
                      if (*(v231 + 40) == &llvm::semPPCDoubleDouble)
                      {
                        v233 = llvm::detail::DoubleAPFloat::addWithSpecial(v223, v232, a2 + 8, v232, v222);
                      }

                      else
                      {
                        v233 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v232, (a2 + 8), 0, v224);
                        if (v233 == 2)
                        {
                          v236 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v232, (a2 + 8), 0, v234, v235);
                          v233 = llvm::detail::IEEEFloat::normalize(v232, v222, v236);
                        }

                        v237 = *(v231 + 60);
                        if ((v237 & 7) == 3)
                        {
                          v238 = *(a2 + 28);
                          if ((v238 & 7) != 3 || ((v238 ^ v237) & 8) != 0)
                          {
                            LOBYTE(v237) = v237 & 0xF3 | (8 * (v222 == 3));
                            *(v231 + 60) = v237;
                          }

                          if (*(*v232 + 20) == 2)
                          {
                            *(v231 + 60) = v237 & 0xF7;
                          }
                        }
                      }

                      v211 = v233 | v226;
                      v212 = *(a1 + 8);
                      v239 = (v212 + 40);
                      if (*(v212 + 40) == &llvm::semPPCDoubleDouble)
                      {
                        v214 = llvm::detail::DoubleAPFloat::addWithSpecial(v233, v239, &v251, v239, v222);
LABEL_372:
                        v81 = v179 | v219 | v211 | v214;
                        if (v251 == &llvm::semPPCDoubleDouble)
                        {
                          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v251);
                        }

                        else if ((*(v251 + 2) - 64) <= 0xFFFFFF7F && v252)
                        {
                          MEMORY[0x259C63150](v252, 0x1000C8000313F17);
                        }

LABEL_178:
                        v15 = v81;
LABEL_179:
                        v23 = v255.n128_u64[0];
                        if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
                        {
                          goto LABEL_15;
                        }

                        goto LABEL_180;
                      }

                      v214 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v239, &v251, 0, v234);
                      if (v214 == 2)
                      {
                        v242 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v239, &v251, 0, v240, v241);
                        v214 = llvm::detail::IEEEFloat::normalize(v239, v222, v242);
                      }

                      v218 = *(v212 + 60);
                      if ((v218 & 7) != 3)
                      {
                        goto LABEL_372;
                      }

                      if ((v253 & 7) != 3 || ((v253 ^ v218) & 8) != 0)
                      {
                        LOBYTE(v218) = v218 & 0xF3 | (8 * (v222 == 3));
                        *(v212 + 60) = v218;
                      }

                      if (*(*v239 + 20) != 2)
                      {
                        goto LABEL_372;
                      }

LABEL_370:
                      *(v212 + 60) = v218 & 0xF7;
                      goto LABEL_372;
                    }

                    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v185);
                  }

                  else
                  {
                    if (v188 != &llvm::semPPCDoubleDouble)
                    {
                      llvm::detail::IEEEFloat::operator=(v185, (a4 + 8), v176, v177);
                      goto LABEL_341;
                    }

                    if (v184 == a4)
                    {
                      goto LABEL_341;
                    }

                    if ((*(v186 + 8) - 64) <= 0xFFFFFF7F)
                    {
                      v191 = *(v183 + 48);
                      if (v191)
                      {
                        v192 = v185;
                        MEMORY[0x259C63150](v191, 0x1000C8000313F17);
                        v185 = v192;
                      }
                    }
                  }

                  llvm::APFloat::Storage::Storage(v185, (a4 + 8), v176, v177);
                  goto LABEL_341;
                }
              }

              else
              {
                v155 = v255.n128_u64[0];
                if (*(v255.n128_u64[0] + 20) == 2)
                {
                  goto LABEL_226;
                }
              }

              if (v155 != &llvm::semPPCDoubleDouble)
              {
                goto LABEL_246;
              }

LABEL_233:
              v156 = a2 + 8;
              goto LABEL_234;
            }
          }

          if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
          {
            goto LABEL_246;
          }

          goto LABEL_233;
        }

        if (&v254 == a5)
        {
          goto LABEL_209;
        }

        if ((*(v108 + 8) - 64) <= 0xFFFFFF7F && v255.n128_u64[1])
        {
          MEMORY[0x259C63150](v255.n128_u64[1], 0x1000C8000313F17);
        }

        goto LABEL_208;
      }
    }

    else
    {
      v99 = *(a2 + 24);
      v100 = *(a4 + 24);
      v101 = v99 - v100;
      if (v99 == v100)
      {
        v102 = *(v98 + 8);
        if ((v102 - 64) >= 0xFFFFFF80)
        {
          v103 = (a2 + 16);
        }

        else
        {
          v103 = *(a2 + 16);
        }

        if ((*(*(a4 + 8) + 8) - 64) >= 0xFFFFFF80)
        {
          v104 = (a4 + 16);
        }

        else
        {
          v104 = *(a4 + 16);
        }

        v101 = llvm::APInt::tcCompare(v103, v104, ((v102 + 64) >> 6));
      }

      v105 = v101 > 0;
      v107 = a5 + 8;
      v106 = *(a5 + 1);
      v108 = v255.n128_u64[0];
      if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_131;
      }
    }

    if (v106 == &llvm::semPPCDoubleDouble)
    {
      v101 = llvm::detail::DoubleAPFloat::operator=(&v255, v107, v12, v13);
      if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_210;
      }

LABEL_133:
      v109 = llvm::detail::DoubleAPFloat::addWithSpecial(v101, &v255, a3 + 8, &v255, a6);
      v111 = v109;
      v112 = v255.n128_u64[0] == &llvm::semPPCDoubleDouble;
      if (!v105)
      {
        goto LABEL_134;
      }

      goto LABEL_219;
    }

    if (&v254 == a5)
    {
LABEL_209:
      if (v255.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_210;
      }

      goto LABEL_133;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v255);
LABEL_208:
    v101 = llvm::APFloat::Storage::Storage(&v255, v107, v12, v13);
    goto LABEL_209;
  }

  llvm::APFloat::Storage::operator=((*(a1 + 8) + 8), &v255);
  llvm::APFloat::makeZero((*(a1 + 8) + 32), 0, v21, v22);
  v23 = v255.n128_u64[0];
  if (v255.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
LABEL_15:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v255);
    return v15;
  }

LABEL_180:
  if ((*(v23 + 8) - 64) <= 0xFFFFFF7F && v255.n128_u64[1])
  {
    MEMORY[0x259C63150](v255.n128_u64[1], 0x1000C8000313F17);
  }

  return v15;
}

uint64_t llvm::APFloat::add(llvm::detail::IEEEFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {

    return llvm::detail::DoubleAPFloat::addWithSpecial(this, (this + 8), (a2 + 8), (this + 8), a3);
  }

  else
  {
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials((this + 8), (a2 + 8), 0, a4);
    if (result == 2)
    {
      v11 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v6, (a2 + 8), 0, v9, v10);
      result = llvm::detail::IEEEFloat::normalize(v6, a3, v11);
    }

    v12 = *(this + 28);
    if ((v12 & 7) == 3)
    {
      v13 = *(a2 + 28);
      if ((v13 & 7) != 3 || ((v13 ^ v12) & 8) != 0)
      {
        LOBYTE(v12) = v12 & 0xF3 | (8 * (a3 == 3));
        *(this + 28) = v12;
      }

      if (*(*v6 + 5) == 2)
      {
        *(this + 28) = v12 & 0xF7;
      }
    }
  }

  return result;
}

void llvm::APFloat::makeZero(llvm::APFloat *this, _BOOL4 a2, uint64_t a3, unsigned int a4)
{
  i = *(this + 1);
  if (i == &llvm::semPPCDoubleDouble)
  {
    v7 = this;
    llvm::APFloat::makeZero(*(this + 2), a2, a3, a4);
    v10 = *(v7 + 2);
    for (i = *(v10 + 40); i == &llvm::semPPCDoubleDouble; i = *(v10 + 40))
    {
      llvm::APFloat::makeZero(*(v10 + 48), 0, v8, v9);
      v10 = *(v10 + 48);
    }

    v6 = 0;
    this = (v10 + 32);
    v5 = (v10 + 60);
  }

  else
  {
    v5 = this + 28;
    if (a2)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }
  }

  v11 = *v5 & 0xF0;
  *v5 = v11 | v6 | 3;
  if (*(i + 20) == 2)
  {
    *v5 = v11 | 3;
  }

  v13 = *(i + 4);
  v12 = *(i + 8);
  *(this + 6) = v13 - 1;
  v14 = (this + 16);
  if ((v12 - 64) <= 0xFFFFFF7F)
  {
    v14 = *v14;
  }

  llvm::APInt::tcSet(v14, 0, (v12 + 64) >> 6);
}

uint64_t llvm::APFloat::subtract(llvm::detail::IEEEFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {
    v14 = llvm::detail::DoubleAPFloat::changeSign((this + 8));
    v15 = llvm::detail::DoubleAPFloat::addWithSpecial(v14, v6, (a2 + 8), v6, a3);
    llvm::detail::DoubleAPFloat::changeSign(v6);
    return v15;
  }

  else
  {
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials((this + 8), (a2 + 8), 1u, a4);
    if (result == 2)
    {
      v11 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v6, (a2 + 8), 1u, v9, v10);
      result = llvm::detail::IEEEFloat::normalize(v6, a3, v11);
    }

    v12 = *(this + 28);
    if ((v12 & 7) == 3)
    {
      v13 = *(a2 + 28);
      if ((v13 & 7) != 3 || ((v13 ^ v12) & 8) == 0)
      {
        LOBYTE(v12) = v12 & 0xF3 | (8 * (a3 == 3));
        *(this + 28) = v12;
      }

      if (*(*v6 + 20) == 2)
      {
        *(this + 28) = v12 & 0xF7;
      }
    }
  }

  return result;
}

llvm::detail::DoubleAPFloat *llvm::APFloat::changeSign(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (v1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::changeSign((this + 8));
  }

  v2 = *(this + 28);
  if (*(v1 + 20) != 2 || (v2 & 5 | 2) != 3)
  {
    *(this + 28) = v2 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::DoubleAPFloat::addWithSpecial(int a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, llvm::detail::DoubleAPFloat *this, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 1);
  v6 = (v5 + 8);
  v7 = *(v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v5 + 16) + 28) & 7) == 1)
    {
      goto LABEL_41;
    }
  }

  else if ((*(*(a2 + 1) + 28) & 7) == 1)
  {
    goto LABEL_41;
  }

  v8 = *(a3 + 1);
  v9 = *(v8 + 8);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v8 + 16) + 28) & 7) == 1)
    {
      goto LABEL_42;
    }
  }

  else if ((*(*(a3 + 1) + 28) & 7) == 1)
  {
    goto LABEL_42;
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v5 + 16) + 28) & 7) == 3)
    {
      goto LABEL_42;
    }
  }

  else if ((*(v5 + 28) & 7) == 3)
  {
    goto LABEL_42;
  }

  if (v9 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v8 + 16) + 28) & 7) != 3)
    {
      goto LABEL_17;
    }

LABEL_41:
    v27 = this;
LABEL_43:
    llvm::detail::DoubleAPFloat::operator=(v27, a2, a3, this);
    return 0;
  }

  if ((*(v8 + 28) & 7) == 3)
  {
    goto LABEL_41;
  }

LABEL_17:
  v10 = *(a2 + 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(v5 + 16);
  }

  if ((*(v10 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  v11 = *(a3 + 1);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    v11 = *(v8 + 16);
  }

  if ((*(v11 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  if (v7 != &llvm::semPPCDoubleDouble)
  {
    v12 = *(v5 + 28);
    v13 = *(a3 + 1);
    if (v9 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (((v12 >> 3) & 1) != (*(*(v8 + 16) + 28) & 8) >> 3)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v12 = *(*(v5 + 16) + 28);
  v13 = *(a3 + 1);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (((v12 >> 3) & 1) != (*(v13 + 28) & 8) >> 3)
  {
LABEL_26:
    v14 = *(this + 1);
    if (*(v14 + 8) == &llvm::semPPCDoubleDouble)
    {
      v14 = *(v14 + 16);
    }

    llvm::detail::DoubleAPFloat::makeNaN(this, 0, (*(v14 + 28) & 8) != 0, 0);
    return 1;
  }

LABEL_31:
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = *(v5 + 16);
  }

  if ((*(v5 + 28) & 7) == 0)
  {
    goto LABEL_41;
  }

  if (v9 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v8 + 16);
  }

  if ((*(v8 + 28) & 7) == 0)
  {
LABEL_42:
    v27 = this;
    a2 = a3;
    goto LABEL_43;
  }

  v17 = a2;
  llvm::APFloat::Storage::Storage(&v38, v6, a3, this);
  llvm::APFloat::Storage::Storage(&v35, (*(v17 + 1) + 40), v20, v21);
  llvm::APFloat::Storage::Storage(&v32, (*(a3 + 1) + 8), v22, v23);
  llvm::APFloat::Storage::Storage(&v29, (*(a3 + 1) + 40), v24, v25);
  v26 = llvm::detail::DoubleAPFloat::addImpl(this, v37, v34, v31, v28, a5);
  if (v29 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v29);
  }

  else if ((*(v29 + 8) - 64) <= 0xFFFFFF7F && v30)
  {
    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
  }

  if (v32 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v32);
  }

  else if ((*(v32 + 8) - 64) <= 0xFFFFFF7F && v33)
  {
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
  }

  if (v35 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v35);
  }

  else if ((*(v35 + 8) - 64) <= 0xFFFFFF7F && v36)
  {
    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
  }

  if (v38 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v38);
  }

  else if ((*(v38 + 8) - 64) <= 0xFFFFFF7F && v39)
  {
    MEMORY[0x259C63150](v39, 0x1000C8000313F17);
  }

  return v26;
}

uint64_t llvm::detail::DoubleAPFloat::getCategory(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    return *(*(v1 + 16) + 28) & 7;
  }

  else
  {
    return *(v1 + 28) & 7;
  }
}

uint64_t llvm::detail::DoubleAPFloat::isNegative(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    return (*(*(v1 + 16) + 28) >> 3) & 1;
  }

  else
  {
    return (*(v1 + 28) >> 3) & 1;
  }
}

void llvm::detail::DoubleAPFloat::makeNaN(llvm::detail::DoubleAPFloat *this, char a2, char a3, const llvm::APInt *a4)
{
  v5 = *(this + 1);
  v7 = *(v5 + 8);
  v6 = (v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeNaN(v6, a2, a3, a4);
  }

  else
  {
    llvm::detail::IEEEFloat::makeNaN(v6, a2, a3, a4);
  }

  v10 = (*(this + 1) + 32);

  llvm::APFloat::makeZero(v10, 0, v8, v9);
}

uint64_t llvm::detail::DoubleAPFloat::subtract(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  v6 = llvm::detail::DoubleAPFloat::changeSign(a1);
  v7 = llvm::detail::DoubleAPFloat::addWithSpecial(v6, a1, a2, a1, a3);
  llvm::detail::DoubleAPFloat::changeSign(a1);
  return v7;
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::changeSign(llvm::detail::DoubleAPFloat *this)
{
  do
  {
    v5 = *(this + 1);
    result = (v5 + 8);
    v6 = *(v5 + 8);
    if (v6 == &llvm::semPPCDoubleDouble)
    {
      result = llvm::detail::DoubleAPFloat::changeSign(result);
    }

    else
    {
      v7 = *(v6 + 20);
      v8 = *(v5 + 28);
      if (v7 != 2 || (v8 & 5 | 2) != 3)
      {
        *(v5 + 28) = v8 ^ 8;
      }
    }

    v3 = *(this + 1);
    this = (v3 + 40);
    v4 = *(v3 + 40);
  }

  while (v4 == &llvm::semPPCDoubleDouble);
  v10 = *(v4 + 20);
  v11 = *(v3 + 60);
  if (v10 != 2 || (v11 & 5 | 2) != 3)
  {
    *(v3 + 60) = v11 ^ 8;
  }

  return result;
}

uint64_t llvm::detail::DoubleAPFloat::multiply(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3, uint64_t a4)
{
  v78[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = (v4 + 8);
  v6 = *(v4 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v4 + 16) + 28) & 7) == 1)
    {
      goto LABEL_35;
    }
  }

  else if ((*(*(a1 + 1) + 28) & 7) == 1)
  {
    goto LABEL_35;
  }

  v7 = *(a2 + 1);
  v8 = *(v7 + 8);
  if (v8 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v7 + 16) + 28) & 7) == 1)
    {
LABEL_36:
      llvm::detail::DoubleAPFloat::operator=(a1, a2, a3, a4);
      return 0;
    }
  }

  else if ((*(*(a2 + 1) + 28) & 7) == 1)
  {
    goto LABEL_36;
  }

  if (v6 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v4 + 16) + 28) & 7) != 3)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 7) != 3)
  {
    goto LABEL_16;
  }

  v9 = *(a2 + 1);
  if (v8 == &llvm::semPPCDoubleDouble)
  {
    v9 = *(v7 + 16);
  }

  if ((*(v9 + 28) & 7) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v4 + 16) + 28) & 7) != 0)
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 28) & 7) != 0)
  {
    goto LABEL_24;
  }

  v10 = *(a2 + 1);
  if (v8 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(v7 + 16);
  }

  if ((*(v10 + 28) & 7) == 3)
  {
LABEL_23:
    llvm::detail::DoubleAPFloat::makeNaN(a1, 0, 0, 0);
    return 0;
  }

LABEL_24:
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    v11 = *(*(v4 + 16) + 28) & 7;
    if (v11 != 3)
    {
      goto LABEL_28;
    }

LABEL_35:
    a2 = a1;
    goto LABEL_36;
  }

  v11 = *(v4 + 28) & 7;
  if (v11 == 3)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!v11)
  {
    goto LABEL_35;
  }

  if (v8 == &llvm::semPPCDoubleDouble)
  {
    v7 = *(v7 + 16);
  }

  v12 = *(v7 + 28) & 7;
  if (v12 == 3 || !v12)
  {
    goto LABEL_36;
  }

  v14 = a2;
  llvm::APFloat::Storage::Storage(v78, v5, a3, a4);
  v16 = a1;
  llvm::APFloat::Storage::Storage(v76, (*(a1 + 1) + 40), v17, v18);
  llvm::APFloat::Storage::Storage(&v74, (*(v14 + 1) + 8), v19, v20);
  llvm::APFloat::Storage::Storage(&v72, (*(v14 + 1) + 40), v21, v22);
  llvm::APFloat::Storage::Storage(v69, v78, v23, v24);
  v60 = a3;
  v28 = llvm::APFloat::multiply(v68, v73, a3, v25);
  if (v69[0] == &llvm::semPPCDoubleDouble)
  {
    v29 = *(v69[1] + 28);
  }

  else
  {
    v29 = v70;
  }

  if ((v29 & 6) != 0 && (v29 & 7) != 3)
  {
    llvm::APFloat::Storage::Storage(&v67, v78, v26, v27);
    llvm::APFloat::changeSign(v68);
    v35 = llvm::APFloat::fusedMultiplyAdd(v66, v73, v68, a3, v33, v34);
    llvm::APFloat::changeSign(v68);
    llvm::APFloat::Storage::Storage(v64, v78, v36, v37);
    v39 = llvm::APFloat::multiply(v63, v71, v60, v38);
    llvm::APFloat::Storage::Storage(&v62, v76, v40, v41);
    v43 = llvm::APFloat::multiply(v61, v73, v60, v42);
    v45 = llvm::APFloat::add(v63, v61, v60, v44);
    v47 = llvm::APFloat::add(v66, v63, v60, v46);
    llvm::APFloat::~APFloat(v61);
    llvm::APFloat::~APFloat(v63);
    llvm::APFloat::Storage::Storage(v64, v69, v48, v49);
    v28 = v35 | v39 | v43 | v45 | v47 | llvm::APFloat::add(v63, v66, v60, v50) | v28;
    llvm::APFloat::operator=(*(a1 + 1), v63, v51, v52);
    if (v64[0] == &llvm::semPPCDoubleDouble)
    {
      v55 = *(v64[1] + 28);
    }

    else
    {
      v55 = v65;
    }

    if ((v55 & 7u) < 2)
    {
      llvm::APFloat::makeZero((*(a1 + 1) + 32), 0, v53, v54);
    }

    else
    {
      v56 = llvm::APFloat::subtract(v68, v63, v60, v54);
      v28 = v56 | llvm::APFloat::add(v68, v66, v60, v57) | v28;
      llvm::APFloat::operator=(*(v16 + 1) + 32, v68, v58, v59);
    }

    llvm::APFloat::~APFloat(v63);
    llvm::APFloat::~APFloat(v66);
  }

  else
  {
    llvm::APFloat::operator=(*(a1 + 1), v68, v26, v27);
    llvm::APFloat::makeZero((*(a1 + 1) + 32), 0, v31, v32);
  }

  llvm::APFloat::~APFloat(v68);
  llvm::APFloat::~APFloat(v71);
  llvm::APFloat::~APFloat(v73);
  llvm::APFloat::~APFloat(v75);
  llvm::APFloat::~APFloat(v77);
  return v28;
}