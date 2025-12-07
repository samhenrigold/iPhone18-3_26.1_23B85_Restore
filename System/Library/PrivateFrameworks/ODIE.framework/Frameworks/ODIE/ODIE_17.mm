BOOL llvm::detail::IEEEFloat::bitwiseIsEqual(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *a2;
  if (*this != *a2)
  {
    return 0;
  }

  v3 = *(this + 20);
  v4 = *(a2 + 20);
  if ((v3 & 7) != (v4 & 7) || ((v4 ^ v3) & 8) != 0)
  {
    return 0;
  }

  v5 = 1;
  if ((v3 & 7) == 0 || (v3 & 7) == 3)
  {
    return v5;
  }

  if ((v3 & 6) != 0 && *(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  v6 = *(*this + 8);
  v7 = (this + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  v8 = (v6 + 64) >> 6;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if ((*(v2 + 8) - 64) < 0xFFFFFF80)
  {
    v9 = v10;
  }

  return memcmp(v7, v9, 8 * v8) == 0;
}

uint64_t *llvm::detail::IEEEFloat::IEEEFloat(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v6 = *(a2 + 8);
  v7 = a1 + 1;
  if ((v6 - 64) >= 0xFFFFFF80)
  {
    *v7 = 0;
  }

  else
  {
    v8 = *v7;
    *v8 = 0;
    bzero(v8 + 1, 8 * (((v6 + 64) >> 6) - 1));
    v7 = *v7;
  }

  *(a1 + 4) = *(a2 + 8) - 1;
  *v7 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

uint64_t llvm::detail::IEEEFloat::normalize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 20) & 6) == 0 || (*(a1 + 20) & 7) == 3)
  {
    return 0;
  }

  v5 = a3;
  v6 = a2;
  v8 = llvm::detail::IEEEFloat::significandMSB(a1);
  v11 = *a1;
  v12 = v8 + 1;
  if (v8 == -1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v23 = *(a1 + 4);
  v24 = v23 + v12 - *(v11 + 8);
  if (v24 > *v11)
  {
    goto LABEL_34;
  }

  v25 = *(v11 + 4);
  v26 = v25 - v23;
  if (v24 >= v25)
  {
    v27 = v12 - *(v11 + 8);
  }

  else
  {
    v27 = v26;
  }

  if ((v27 & 0x80000000) != 0)
  {
    llvm::detail::IEEEFloat::shiftSignificandLeft(a1, -v27, v9, v10);
    return 0;
  }

  if (v27)
  {
    v28 = llvm::detail::IEEEFloat::shiftSignificandRight(a1, v27, v9, v10);
    if (v28 == 2)
    {
      v29 = 3;
    }

    else
    {
      v29 = v28;
    }

    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1;
    }

    if (v5)
    {
      v5 = v30;
    }

    else
    {
      v5 = v28;
    }

    if (v12 >= v27)
    {
      v12 -= v27;
    }

    else
    {
      v12 = 0;
    }

    v11 = *a1;
  }

LABEL_9:
  v13 = *(v11 + 16);
  if (v13 == 1 && *(v11 + 20) == 1 && *(a1 + 4) == *v11 && llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
  {
    goto LABEL_34;
  }

  if (!v5)
  {
    if (!v12)
    {
      v31 = *(a1 + 20) & 0xF8 | 3;
      *(a1 + 20) = v31;
      if (*(v11 + 20) == 2)
      {
        *(a1 + 20) = v31 & 0xF3;
      }

      if ((*(v11 + 24) & 1) == 0)
      {
        llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
      }
    }

    return 0;
  }

  if (!llvm::detail::IEEEFloat::roundAwayFromZero(a1, v6, v5, 0))
  {
    v14 = *(v11 + 8);
    goto LABEL_62;
  }

  if (!v12)
  {
    *(a1 + 4) = *(v11 + 4);
  }

  v14 = *(v11 + 8);
  v15 = a1 + 1;
  if ((v14 - 64) <= 0xFFFFFF7F)
  {
    v15 = *v15;
  }

  LODWORD(v16) = (v14 + 64) >> 6;
  if (v16 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v16;
  }

  v17 = __CFADD__((*v15)++, 1);
  if (v17)
  {
    v18 = v15 + 1;
    v19 = v16 - 1;
    do
    {
      if (!v19)
      {
        break;
      }

      --v19;
      v17 = __CFADD__((*v18++)++, 1);
    }

    while (v17);
  }

  v20 = llvm::detail::IEEEFloat::significandMSB(a1);
  if (v20 == v14)
  {
    if (*(a1 + 4) == *v11)
    {
      if ((*(a1 + 20) & 8) != 0)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v22 = a1;
      goto LABEL_35;
    }

    llvm::detail::IEEEFloat::shiftSignificandRight(a1, 1u, v9, v10);
    return 16;
  }

  v12 = v20 + 1;
  if (v13 == 1 && *(v11 + 20) == 1 && *(a1 + 4) == *v11 && llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
  {
LABEL_34:
    v22 = a1;
    v21 = v6;
LABEL_35:

    return llvm::detail::IEEEFloat::handleOverflow(v22, v21, v9, v10);
  }

LABEL_62:
  if (v12 == v14)
  {
    return 16;
  }

  if (!v12)
  {
    v32 = *(a1 + 20) & 0xF8 | 3;
    *(a1 + 20) = v32;
    if (*(v11 + 20) == 2)
    {
      *(a1 + 20) = v32 & 0xF3;
    }

    if ((*(v11 + 24) & 1) == 0)
    {
      llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
    }
  }

  return 24;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, uint64_t a2)
{
  *this = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  if (*(a2 + 24) == 1)
  {
    llvm::detail::IEEEFloat::makeZero(this, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::makeSmallestNormalized(this, 0);
  }

  return this;
}

void llvm::detail::IEEEFloat::makeZero(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *this;
  v3 = *(this + 20) & 0xF0;
  if (a2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  *(this + 20) = v3 | v4 | 3;
  if (v2[5] == 2)
  {
    *(this + 20) = v3 | 3;
  }

  v6 = v2[1];
  v5 = v2[2];
  *(this + 4) = v6 - 1;
  if ((v5 - 64) >= 0xFFFFFF80)
  {
    *(this + 1) = 0;
  }

  else
  {
    v7 = *(this + 1);
    *v7 = 0;
    bzero(v7 + 1, 8 * (((v5 + 64) >> 6) - 1));
  }
}

void llvm::detail::IEEEFloat::makeSmallestNormalized(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 20) & 0xF8 | 2;
  *(this + 20) = v4;
  v5 = *this;
  v6 = *(*this + 8);
  v7 = (this + 8);
  if ((v6 - 64) >= 0xFFFFFF80)
  {
    *v7 = 0;
  }

  else
  {
    v8 = *(this + 1);
    *v8 = 0;
    bzero(v8 + 1, 8 * (((v6 + 64) >> 6) - 1));
    v4 = *(this + 20);
  }

  *(this + 20) = v4 & 0xF7 | v3;
  v9 = *(v5 + 8);
  *(this + 4) = *(v5 + 4);
  if ((v9 - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  v7[(v9 - 1) >> 6] |= 1 << (v9 - 1);
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *a2;
  *this = *a2;
  if ((*(v3 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  llvm::detail::IEEEFloat::assign(this, a2);
  return this;
}

void *llvm::detail::IEEEFloat::addSignificand(llvm::detail::IEEEFloat *this, uint64_t **a2)
{
  v3 = *this;
  result = (this + 8);
  v4 = *(v3 + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v5 = 0;
  v6 = *(*a2 + 2) - 64;
  v9 = a2[1];
  v7 = a2 + 1;
  v8 = v9;
  if (v6 >= 0xFFFFFF80)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  LODWORD(v11) = (v4 + 64) >> 6;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  do
  {
    v12 = *v10++;
    v13 = v12 + *result;
    v14 = __CFADD__(v12, *result);
    v15 = (v13 + 1) <= *result;
    if (v5)
    {
      ++v13;
      v5 = v15;
    }

    else
    {
      v5 = v14;
    }

    *result++ = v13;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t **llvm::detail::IEEEFloat::subtractSignificand(llvm::detail::IEEEFloat *this, unint64_t **a2, uint64_t a3)
{
  v4 = *this;
  result = (this + 8);
  v5 = *(v4 + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v6 = *(*a2 + 2) - 64;
  v9 = a2[1];
  v7 = a2 + 1;
  v8 = v9;
  if (v6 >= 0xFFFFFF80)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  LODWORD(v11) = (v5 + 64) >> 6;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  do
  {
    v12 = *v10++;
    v13 = *result - v12;
    v14 = *result < v12;
    v15 = *result + ~v12;
    if (a3)
    {
      a3 = v15 >= *result;
    }

    else
    {
      v15 = v13;
      a3 = v14;
    }

    *result++ = v15;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(uint64_t a1, uint64_t a2, const llvm::detail::IEEEFloat *a3, char a4, uint64_t a5, unsigned int a6)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 8);
  v10 = 2 * v9 + 64;
  LODWORD(v11) = v10 >> 6;
  if (v10 >> 6 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 >> 6;
  }

  v46 = 2 * v9 + 64;
  v40 = v12;
  if (v10 >= 0x140)
  {
    operator new[]();
  }

  v13 = (a1 + 8);
  if (v9 - 64 <= 0xFFFFFF7F)
  {
    v13 = *(a1 + 8);
  }

  v14 = (v9 + 64) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v16 = (a2 + 8);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v45 = v15;
  llvm::APInt::tcFullMultiply(v51, v13, v16, v15, v15);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  v17 = 64 - (v11 << 6);
  v18 = v11 - 1;
  v41 = (a1 + 8);
  while (1)
  {
    v19 = v51[v18];
    if (v19)
    {
      break;
    }

    v17 += 64;
    if (--v18 == -1)
    {
      v20 = 0;
      goto LABEL_22;
    }
  }

  v20 = ((__clz(v19) - v17) ^ 0x3F) + 1;
LABEL_22:
  v21 = *(a2 + 16) + *(a1 + 16) + 2;
  *(a1 + 16) = v21;
  if ((a4 & 1) != 0 || (*(a3 + 20) & 7) == 3)
  {
    v22 = 0;
  }

  else
  {
    v44 = *v41;
    v23 = 2 * v9 - v20;
    if (v23)
    {
      llvm::APInt::tcShiftLeft(v51, v40, v23);
      *(a1 + 16) = v21 - v23;
    }

    v24 = *v8;
    *&v49[10] = *(v8 + 10);
    *v49 = v24;
    *&v49[8] = (2 * v9) | 1;
    v25 = v51;
    if (v46 <= 0x7F)
    {
      v25 = v51[0];
    }

    *a1 = v49;
    *(a1 + 8) = v25;
    llvm::detail::IEEEFloat::IEEEFloat(&v47, a3);
    llvm::detail::IEEEFloat::convert(&v47, v49, 0, &v50);
    llvm::detail::IEEEFloat::shiftSignificandRight(&v47, 1u, v26, v27);
    v22 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v47, 0, v28);
    if (v46 <= 0x7F)
    {
      v51[0] = *v41;
    }

    *a1 = v8;
    *(a1 + 8) = v44;
    v29 = 64 - (v11 << 6);
    v30 = 8 * v11;
    while (1)
    {
      v31 = *&v49[v30 + 24];
      if (v31)
      {
        break;
      }

      v29 += 64;
      v30 -= 8;
      if (!v30)
      {
        v20 = 0;
        goto LABEL_36;
      }
    }

    v20 = ((__clz(v31) - v29) ^ 0x3F) + 1;
LABEL_36:
    if ((*(v47 + 8) - 64) <= 0xFFFFFF7F && v48)
    {
      MEMORY[0x25F891010](v48, 0x1000C8000313F17);
    }

    v21 = *(a1 + 16);
  }

  v32 = v21 + ~v9;
  *(a1 + 16) = v32;
  if (v20 > v9)
  {
    v33 = (v20 + 63) >> 6;
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    v35 = llvm::lostFractionThroughTruncation(v51, v34, v20 - v9);
    llvm::APInt::tcShiftRight(v51, v34, v20 - v9);
    if (v35 == 2)
    {
      v36 = 3;
    }

    else
    {
      v36 = v35;
    }

    if (v35)
    {
      v37 = v36;
    }

    else
    {
      v37 = 1;
    }

    if (v22)
    {
      v22 = v37;
    }

    else
    {
      v22 = v35;
    }

    *(a1 + 16) = v20 - v9 + v32;
  }

  for (i = 0; i != v45; ++i)
  {
    v13[i] = v51[i];
  }

  if (v46 >= 0x140)
  {
    MEMORY[0x25F891010](v51, 0x1000C8000313F17);
  }

  return v22;
}

uint64_t llvm::detail::IEEEFloat::convert(llvm::detail::IEEEFloat *a1, uint64_t a2, unsigned int a3, BOOL *a4)
{
  v7 = *a1;
  isSignaling = llvm::detail::IEEEFloat::isSignaling(a1);
  v8 = *(a2 + 8);
  v9 = v8 + 64;
  v10 = (v8 + 64) >> 6;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (v8 + 64) >> 6;
  }

  v51 = 0;
  v52 = v11;
  v12 = *(v7 + 8);
  v13 = v12 + 64;
  v14 = (v12 + 64) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = v8 - v12;
  if (a2 == &llvm::semX87DoubleExtended || v7 != &llvm::semX87DoubleExtended)
  {
LABEL_16:
    if (v16 < 0)
    {
      goto LABEL_19;
    }

LABEL_36:
    v28 = 0;
    goto LABEL_37;
  }

  if ((*(a1 + 20) & 7) != 1)
  {
    goto LABEL_18;
  }

  if ((v12 - 64) > 0xFFFFFF7F)
  {
    v17 = *(a1 + 1);
    if (v17 < 0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v51 = 1;
    goto LABEL_16;
  }

  v17 = **(a1 + 1);
  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  if ((v17 & 0x4000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v51 = 0;
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_19:
  v18 = *(a1 + 20) & 7;
  if ((*(a1 + 20) & 6) == 0 || v18 == 3)
  {
    if (v18 != 1 || *(v7 + 16) == 1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = llvm::detail::IEEEFloat::significandMSB(a1);
    v20 = v19 + 1 - v12;
    v21 = *(a1 + 4);
    v22 = *(a2 + 4);
    if ((v20 + v21) < v22)
    {
      v20 = v22 - v21;
    }

    if ((v20 & 0x80000000) != 0)
    {
      if (v20 <= v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = v20;
      }

      v16 -= v23;
    }

    else
    {
      if (v19 + 1 > -v16)
      {
        goto LABEL_28;
      }

      v23 = v19 + v16;
      v16 = -v19;
    }

    *(a1 + 4) = v23 + v21;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

LABEL_28:
  v24 = v12 - 64;
  v25 = (a1 + 8);
  if (v24 <= 0xFFFFFF7F)
  {
    v25 = *v25;
  }

  v26 = llvm::lostFractionThroughTruncation(v25, v15, -v16);
  v27 = v25;
  v28 = v26;
  llvm::APInt::tcShiftRight(v27, v15, -v16);
LABEL_37:
  if (v10 > v15)
  {
    operator new[]();
  }

  if (v9 <= 0x7F && v13 >= 0x80)
  {
    v29 = *(a1 + 20) & 7;
    v31 = (*(a1 + 20) & 6) != 0 && v29 != 3;
    v32 = *(*a1 + 8) - 64;
    if (v29 == 1 || v31)
    {
      v34 = (a1 + 8);
      if (v32 <= 0xFFFFFF7F)
      {
        v34 = *v34;
      }

      v33 = *v34;
    }

    else
    {
      v33 = 0;
    }

    if (v32 <= 0xFFFFFF7F)
    {
      v35 = *(a1 + 1);
      if (v35)
      {
        MEMORY[0x25F891010](v35, 0x1000C8000313F17);
      }
    }

    *(a1 + 1) = v33;
  }

  *a1 = a2;
  if (v16 >= 1)
  {
    v36 = *(a1 + 20) & 7;
    v37 = (*(a1 + 20) & 6) == 0 || v36 == 3;
    v38 = !v37;
    if (v36 == 1 || v38)
    {
      v40 = (a1 + 8);
      if ((*(a2 + 8) - 64) <= 0xFFFFFF7F)
      {
        v40 = *v40;
      }

      llvm::APInt::tcShiftLeft(v40, v52, v16);
    }
  }

  v41 = *(a1 + 20);
  v42 = v41 & 7;
  if ((v41 & 6) != 0 && v42 != 3)
  {
    v43 = llvm::detail::IEEEFloat::normalize(a1, a3, v28);
    *a4 = v43 != 0;
    goto LABEL_87;
  }

  if ((v41 & 7) == 0)
  {
    if (*(*a1 + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v41 >> 3) & 1, 0);
      *a4 = 1;
      v43 = 16;
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v42 == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      v44 = (*(v7 + 20) != 2) & (v41 >> 3);
      *a4 = v44;
      if (v44)
      {
        v43 = 16;
      }

      else
      {
        v43 = 0;
      }

      *(a1 + 20) &= ~8u;
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v42 != 1)
  {
LABEL_86:
    v43 = 0;
    *a4 = 0;
    goto LABEL_87;
  }

  if (*(*a1 + 16) == 1)
  {
    *a4 = *(v7 + 16) != 1;
    llvm::detail::IEEEFloat::makeNaN(a1, 0, (*(a1 + 20) >> 3) & 1, 0);
    return isSignaling;
  }

  if (*(v7 + 20) == 2 && *(*a1 + 20) != 2)
  {
    llvm::detail::IEEEFloat::makeNaN(a1, 0, 0, 0);
  }

  if (v28)
  {
    v46 = 1;
  }

  else
  {
    v46 = v51;
  }

  *a4 = v46;
  if ((v51 & 1) == 0 && *a1 == &llvm::semX87DoubleExtended)
  {
    **(a1 + 1) |= 0x8000000000000000;
  }

  if (isSignaling)
  {
    if (*(*a1 + 16) == 1)
    {
      v43 = 1;
    }

    else
    {
      v47 = *(*a1 + 8);
      v48 = (a1 + 8);
      if ((v47 - 64) <= 0xFFFFFF7F)
      {
        v48 = *v48;
      }

      v43 = 1;
      v48[(v47 - 2) >> 6] |= 1 << (v47 - 2);
    }
  }

  else
  {
    v43 = 0;
  }

LABEL_87:
  if ((*(a1 + 20) & 7) == 3 && (*(*a1 + 24) & 1) == 0)
  {
    llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
  }

  return v43;
}

uint64_t llvm::detail::IEEEFloat::shiftSignificandRight(llvm::detail::IEEEFloat *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  *(this + 4) += a2;
  v5 = *(*this + 8);
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v7 = (v5 + 64) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = llvm::lostFractionThroughTruncation(v6, v8, a2);
  llvm::APInt::tcShiftRight(v6, v8, a2);
  return v9;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v6 = *(this + 4);
  v7 = *(a2 + 4);
  v8 = v6 - v7;
  if (((((*(a2 + 20) ^ *(this + 20)) & 8) == 0) ^ a3))
  {
    if (v8 < 1)
    {
      v17 = llvm::detail::IEEEFloat::shiftSignificandRight(this, v7 - v6, a3, a4);
      llvm::detail::IEEEFloat::addSignificand(this, a2);
      return v17;
    }

    llvm::detail::IEEEFloat::IEEEFloat(&v26, a2);
    v11 = llvm::detail::IEEEFloat::shiftSignificandRight(&v26, v6 - v7, v9, v10);
    llvm::detail::IEEEFloat::addSignificand(this, &v26);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v26, a2);
    if (v6 == v7)
    {
      v14 = 0;
    }

    else if (v8 < 1)
    {
      v14 = llvm::detail::IEEEFloat::shiftSignificandRight(this, ~v8, v12, v13);
      v19 = *(v26 + 2);
      v20 = (v19 + 64) >> 6;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      if ((v19 - 64) >= 0xFFFFFF80)
      {
        v22 = &v27;
      }

      else
      {
        v22 = v27;
      }

      llvm::APInt::tcShiftLeft(v22, v21, 1u);
      --v28;
    }

    else
    {
      v14 = llvm::detail::IEEEFloat::shiftSignificandRight(&v26, v8 - 1, v12, v13);
      llvm::detail::IEEEFloat::shiftSignificandLeft(this, 1u, v15, v16);
    }

    v23 = llvm::detail::IEEEFloat::compareAbsoluteValue(this, &v26);
    v24 = v14 != 0;
    if (v23)
    {
      llvm::detail::IEEEFloat::subtractSignificand(this, &v26, v24);
    }

    else
    {
      llvm::detail::IEEEFloat::subtractSignificand(&v26, this, v24);
      llvm::detail::IEEEFloat::copySignificand(this, &v26);
      *(this + 20) ^= 8u;
    }

    if (v14 == 3)
    {
      v25 = 1;
    }

    else
    {
      v25 = v14;
    }

    if (v14 == 1)
    {
      v11 = 3;
    }

    else
    {
      v11 = v25;
    }
  }

  if ((*(v26 + 2) - 64) <= 0xFFFFFF7F)
  {
    if (v27)
    {
      MEMORY[0x25F891010](v27, 0x1000C8000313F17);
    }
  }

  return v11;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  llvm::detail::IEEEFloat::IEEEFloat(&v8, *this);
  v6 = llvm::detail::IEEEFloat::multiplySignificand(this, a2, &v8, (*(*this + 24) & 1) == 0, v4, v5);
  if ((*(v8 + 8) - 64) <= 0xFFFFFF7F && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  return v6;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v5 = (this + 8);
  v6 = *(*this + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v7 = a2 + 8;
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v6 + 64;
  v9 = (v6 + 64) >> 6;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v8 >= 0xC0)
  {
    operator new[]();
  }

  v11 = 0;
  v12 = &v52[v10];
  do
  {
    v52[v11] = v5[v11];
    *(v12 + v11 * 8) = *&v7[v11 * 8];
    v5[v11++] = 0;
  }

  while (v10 != v11);
  v13 = *(this + 4) - *(a2 + 4);
  *(this + 4) = v13;
  v14 = *(*this + 8);
  v15 = 64 - (v10 << 6);
  v16 = 16 * v10 - 8;
  v17 = v16;
  v18 = v10;
  while (1)
  {
    v19 = *(v52 + v17);
    if (v19)
    {
      break;
    }

    v15 += 64;
    v17 -= 8;
    if (!--v18)
    {
      v20 = 0;
      goto LABEL_18;
    }
  }

  v20 = (__clz(v19) - v15) ^ 0xFFFFFFC0;
LABEL_18:
  v21 = v20 + v14;
  if (v20 + v14)
  {
    v13 += v21;
    *(this + 4) = v13;
    llvm::APInt::tcShiftLeft(v12, v10, v21);
  }

  v22 = 64 - (v10 << 6);
  v23 = v10 - 1;
  while (1)
  {
    v24 = v52[v23];
    if (v24)
    {
      break;
    }

    v22 += 64;
    if (--v23 == -1)
    {
      v25 = 0;
      goto LABEL_25;
    }
  }

  v25 = (__clz(v24) - v22) ^ 0xFFFFFFC0;
LABEL_25:
  v26 = v25 + v14;
  if (v25 + v14)
  {
    v13 -= v26;
    *(this + 4) = v13;
    llvm::APInt::tcShiftLeft(v52, v10, v26);
  }

  v27 = v10;
  v28 = v10;
  v29 = 16 * v10 - 8;
  while (v28 * 8)
  {
    v30 = v52[v28 - 1];
    v31 = *(v52 + v29);
    v29 -= 8;
    --v28;
    if (v30 != v31)
    {
      if (v30 <= v31)
      {
        *(this + 4) = v13 - 1;
        llvm::APInt::tcShiftLeft(v52, v10, 1u);
      }

      break;
    }
  }

  if (!v14)
  {
    goto LABEL_50;
  }

  do
  {
    v32 = v10;
    v33 = 16 * v10 - 8;
    while (v32 * 8)
    {
      v34 = v52[v32 - 1];
      v35 = *(v52 + v33);
      v33 -= 8;
      --v32;
      if (v34 != v35)
      {
        if (v34 <= v35)
        {
          --v14;
          goto LABEL_47;
        }

        break;
      }
    }

    v36 = 0;
    v37 = v52;
    v38 = v10;
    do
    {
      v39 = v37[v10];
      v40 = *v37 - v39;
      v41 = *v37 < v39;
      v42 = *v37 + ~v39;
      v43 = v42 >= *v37;
      v44 = !v36;
      if (v36)
      {
        v45 = v42;
      }

      else
      {
        v45 = v40;
      }

      *v37++ = v45;
      if (v44)
      {
        v36 = v41;
      }

      else
      {
        v36 = v43;
      }

      --v38;
    }

    while (v38);
    --v14;
    v5[v14 >> 6] |= 1 << v14;
LABEL_47:
    llvm::APInt::tcShiftLeft(v52, v10, 1u);
  }

  while (v14);
  do
  {
LABEL_50:
    if (!(v27 * 8))
    {
      return 2;
    }

    v46 = v52[v27 - 1];
    v47 = *(v52 + v16);
    v16 -= 8;
    --v27;
  }

  while (v46 == v47);
  if (v46 > v47)
  {
    return 3;
  }

  v49 = v52[0];
  if (v52[0])
  {
    return 1;
  }

  while (v10 - 1 != v49)
  {
    if (v52[++v49])
    {
      return v49 < v10;
    }
  }

  v49 = v10;
  return v49 < v10;
}

void llvm::detail::IEEEFloat::shiftSignificandLeft(llvm::detail::IEEEFloat *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v7 = *this;
  v6 = (this + 8);
  v8 = *(v7 + 8);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v9 = (v8 + 64) >> 6;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  llvm::APInt::tcShiftLeft(v6, v10, a2);
  *(this + 4) -= a2;
}

uint64_t llvm::detail::IEEEFloat::compareAbsoluteValue(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 4) - *(a2 + 4);
  if (v2)
  {
    if (v2 < 1)
    {
      return v2 >= 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v4 = *this;
    v3 = (this + 8);
    v5 = *(v4 + 8);
    if ((v5 - 64) <= 0xFFFFFF7F)
    {
      v3 = *v3;
    }

    v6 = *(*a2 + 8) - 64;
    v9 = *(a2 + 1);
    v7 = a2 + 8;
    v8 = v9;
    if (v6 >= 0xFFFFFF80)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    v11 = (v5 + 64) >> 6;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v10 - 8;
    for (i = 8 * v12; ; i -= 8)
    {
      v15 = i;
      if (!i)
      {
        break;
      }

      v16 = v3[i / 8 - 1];
      v17 = *&v13[i];
      if (v16 != v17)
      {
        if (v16 > v17)
        {
          return 2;
        }

        return v15 == 0;
      }
    }

    return v15 == 0;
  }
}

uint64_t llvm::detail::IEEEFloat::handleOverflow(llvm::detail::IEEEFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  v5 = *this;
  v6 = *(*this + 16);
  if (v6 == 2)
  {
    goto LABEL_2;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if ((*(this + 20) & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (a2 == 4)
    {
      goto LABEL_22;
    }
  }

  else if (a2 == 1 || a2 == 2 && (*(this + 20) & 8) == 0)
  {
LABEL_22:
    v14 = *(this + 20);
    if (v6 == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(this, 0, (v14 >> 3) & 1, 0);
    }

    else
    {
      *(this + 20) = v14 & 0xF8;
    }

    return 20;
  }

LABEL_2:
  *(this + 20) = *(this + 20) & 0xF8 | 2;
  *(this + 4) = *v5;
  v7 = v5[2];
  v8 = (this + 8);
  v9 = (this + 8);
  if (v7 - 64 <= 0xFFFFFF7F)
  {
    v9 = *v8;
  }

  v10 = (v7 + 64) >> 6;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  llvm::detail::tcSetLeastSignificantBits(v9, v11, v7);
  v12 = *this;
  if (*(*this + 16) == 1 && *(v12 + 20) == 1)
  {
    if ((*(v12 + 8) - 64) <= 0xFFFFFF7F)
    {
      v8 = *v8;
    }

    *v8 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  return 16;
}

void llvm::detail::tcSetLeastSignificantBits(llvm::detail *this, unint64_t *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a3 - 65;
  if (a3 < 0x41)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  memset(this, 255, 8 * (v6 >> 6) + 8);
  v7 = (v6 >> 6) + 1;
  v8 = v3 - (v6 & 0xFFFFFFC0);
  LOBYTE(v3) = v8 - 64;
  if (v8 != 64)
  {
LABEL_5:
    *(this + v7++) = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  }

LABEL_6:
  if (v7 < v4)
  {

    bzero(this + 8 * v7, 8 * (~v7 + v4) + 8);
  }
}

BOOL llvm::detail::IEEEFloat::roundAwayFromZero(uint64_t *a1, int a2, int a3, unsigned int a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0;
    }

    if (a3 == 3)
    {
      return 1;
    }

    if (a3 != 2 || (*(a1 + 20) & 7) == 3)
    {
      return 0;
    }

    v7 = *a1;
    v6 = a1 + 1;
    if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    return (v6[a4 >> 6] >> a4) & 1;
  }

  else if (a2 == 2)
  {
    return (*(a1 + 20) & 8) == 0;
  }

  else
  {
    if (a2 == 3)
    {
      return (*(a1 + 20) >> 3) & 1;
    }

    return (a3 & 0xFFFFFFFE) == 2;
  }
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  result = 0;
  v7 = *(this + 20);
  v8 = *(a2 + 20);
  v9 = 4 * (v7 & 7) + (v8 & 7);
  if (v9 > 7)
  {
    if (v9 > 11)
    {
      if (v9 > 13)
      {
        if (v9 != 14)
        {
          return result;
        }

        llvm::detail::IEEEFloat::assign(this, a2);
        result = 0;
        if (a3 != (*(a2 + 20) & 8) >> 3)
        {
          v14 = 8;
        }

        else
        {
          v14 = 0;
        }

        v13 = v14 | *(this + 20) & 0xF7;
        goto LABEL_31;
      }

      if (v9 != 12)
      {
LABEL_10:
        llvm::detail::IEEEFloat::assign(this, a2);
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 > 9)
      {
        if (v9 == 10)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      if (v9 != 8)
      {
        goto LABEL_10;
      }
    }

    result = 0;
    *(this + 20) = v7 & 0xF8;
    if (a3 != (*(a2 + 20) & 8) >> 3)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v7 & 0xF0;
LABEL_31:
    *(this + 20) = v13;
    return result;
  }

  if (v9 <= 3)
  {
    if ((v9 - 2) < 2)
    {
      return result;
    }

    if (!v9)
    {
      if (((((v8 ^ v7) & 8) == 0) ^ a3))
      {
        return 0;
      }

      llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
      return 1;
    }

    goto LABEL_10;
  }

LABEL_11:
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v10 = *(*this + 8);
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  result = 1;
  v11[(v10 - 2) >> 6] |= 1 << (v10 - 2);
  return result;
}

BOOL llvm::detail::IEEEFloat::isSignaling(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 7) != 1 || (*(*this + 16) - 1) < 2)
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return ((v3[(v2 - 2) >> 6] >> (v2 - 2)) & 1) == 0;
}

BOOL llvm::detail::IEEEFloat::multiplySpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = *(this + 20);
  v5 = *(a2 + 20);
  v6 = 4 * (v4 & 7) + (v5 & 7);
  if (v6 <= 7)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        v7 = v6 == 1;
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    if ((v6 - 4) < 4)
    {
      goto LABEL_19;
    }

LABEL_17:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v6 <= 11)
  {
    if (v6 <= 9)
    {
      if (v6 == 8)
      {
LABEL_12:
        result = 0;
        v9 = v4 & 0xF8;
LABEL_26:
        *(this + 20) = v9;
        return result;
      }

      goto LABEL_18;
    }

    if (v6 == 10)
    {
      return 0;
    }

LABEL_25:
    result = 0;
    v9 = v4 & 0xF8 | 3;
    goto LABEL_26;
  }

  if ((v6 - 14) < 2)
  {
    goto LABEL_25;
  }

  if (v6 == 12)
  {
    goto LABEL_17;
  }

LABEL_18:
  llvm::detail::IEEEFloat::assign(this, a2);
  v4 = *(this + 20) & 0xF7;
  *(this + 20) = v4;
  v5 = *(a2 + 20);
LABEL_19:
  *(this + 20) = v5 & 8 ^ v4;
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v10 = *(*this + 8);
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  result = 1;
  v11[(v10 - 2) >> 6] |= 1 << (v10 - 2);
  return result;
}

uint64_t llvm::detail::IEEEFloat::divideSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  result = 0;
  v5 = *(this + 20);
  v6 = *(a2 + 20);
  v7 = 4 * (v5 & 7) + (v6 & 7);
  if (v7 > 7)
  {
    if (v7 > 11)
    {
      if (v7 > 13)
      {
        if (v7 == 14)
        {
          return result;
        }

        goto LABEL_23;
      }

      if (v7 == 12)
      {
        return result;
      }
    }

    else
    {
      if (v7 > 9)
      {
        if (v7 != 10)
        {
          if (*(*this + 16) == 1)
          {
            llvm::detail::IEEEFloat::makeNaN(this, 0, (v5 >> 3) & 1, 0);
          }

          else
          {
            *(this + 20) = v5 & 0xF8;
          }

          return 2;
        }

        return result;
      }

      if (v7 == 8)
      {
        result = 0;
        *(this + 20) = v5 & 0xF8 | 3;
        return result;
      }
    }

    goto LABEL_12;
  }

  if (v7 <= 3)
  {
    if ((v7 - 2) < 2)
    {
      return result;
    }

    if (!v7)
    {
LABEL_23:
      llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
      return 1;
    }

LABEL_12:
    llvm::detail::IEEEFloat::assign(this, a2);
    LOBYTE(v5) = *(this + 20) & 0xF7;
    *(this + 20) = v5;
    v6 = *(a2 + 20);
  }

  *(this + 20) = v6 & 8 ^ v5;
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v8 = *(*this + 8);
  v9 = (this + 8);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v9;
  }

  result = 1;
  v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  return result;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtract(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3, uint64_t a4)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, a4);
  if (result == 2)
  {
    v10 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, a4, v9);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v10);
  }

  v11 = *(a1 + 20);
  if ((v11 & 7) == 3)
  {
    v12 = *(a2 + 20);
    if ((v12 & 7) != 3 || a4 != ((v12 ^ v11) & 8) >> 3)
    {
      v11 = v11 & 0xF3 | (8 * (a3 == 3));
      *(a1 + 20) = v11;
    }

    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v11 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::multiplySpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2);
    v9 = v8;
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v9)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(a1, a2);
  v9 = *(a1 + 20);
  if ((v9 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v9 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v10 = llvm::detail::IEEEFloat::divideSignificand(a1, a2, v7, v8);
    v11 = v10;
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v10);
    if (v11)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::mod(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = 4 * (*(this + 20) & 7) + (*(a2 + 20) & 7);
  if (v4 > 7)
  {
    isSignaling = 0;
    v7 = 1 << v4;
    if ((v7 & 0x5500) != 0)
    {
      goto LABEL_19;
    }

    if ((v7 & 0x2200) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
LABEL_14:
    isSignaling = 1;
    goto LABEL_19;
  }

  if (v4 > 3)
  {
    goto LABEL_12;
  }

  if ((v4 - 2) < 2 || v4 == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  llvm::detail::IEEEFloat::assign(this, a2);
LABEL_12:
  if (llvm::detail::IEEEFloat::isSignaling(this))
  {
    if (*(*this + 16) == 1)
    {
      goto LABEL_14;
    }

    v8 = *(*this + 8);
    v9 = (this + 8);
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    isSignaling = 1;
    v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  }

  else
  {
    isSignaling = llvm::detail::IEEEFloat::isSignaling(a2);
  }

LABEL_19:
  v10 = *(this + 20);
  v11 = (v10 & 6) == 0 || (v10 & 7) == 3;
  if (v11 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
  {
    v12 = *(this + 20);
  }

  else
  {
    v12 = *(this + 20);
    if (llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2))
    {
      do
      {
        v16 = llvm::detail::ilogb(this, v15);
        v18 = v16 - llvm::detail::ilogb(a2, v17);
        llvm::detail::IEEEFloat::IEEEFloat(&v25, a2);
        llvm::detail::scalbn(&v27, &v25, v18);
        if ((*(v25 + 8) - 64) <= 0xFFFFFF7F && v26)
        {
          MEMORY[0x25F891010](v26, 0x1000C8000313F17);
        }

        v19 = v29;
        if ((v29 & 7) == 1 || !llvm::detail::IEEEFloat::compareAbsoluteValue(this, &v27))
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v21, a2);
          llvm::detail::scalbn(&v23, &v21, v18 - 1);
          llvm::detail::IEEEFloat::operator=(&v27, &v23);
          if ((*(v23 + 8) - 64) <= 0xFFFFFF7F && v24)
          {
            MEMORY[0x25F891010](v24, 0x1000C8000313F17);
          }

          if ((*(v21 + 8) - 64) <= 0xFFFFFF7F && v22)
          {
            MEMORY[0x25F891010](v22, 0x1000C8000313F17);
          }

          v19 = v29;
        }

        v29 = v19 & 0xF7 | *(this + 20) & 8;
        isSignaling = llvm::detail::IEEEFloat::addOrSubtract(this, &v27, 1, 1);
        v20 = (*(*this + 24) & 1) != 0 || (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3 || *(this + 4) != *(*this + 4) || llvm::detail::IEEEFloat::significandMSB(this);
        if ((*(v27 + 8) - 64) <= 0xFFFFFF7F && v28)
        {
          MEMORY[0x25F891010](v28, 0x1000C8000313F17);
        }

        v12 = *(this + 20);
      }

      while (v20 && (*(this + 20) & 6) != 0 && (v12 & 7) != 3 && (*(a2 + 20) & 6) != 0 && (*(a2 + 20) & 7) != 3 && llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2));
    }
  }

  if ((v12 & 7) == 3)
  {
    v13 = v12 & 0xF3 | v10 & 8;
    *(this + 20) = v13;
    if (*(*this + 20) == 2)
    {
      v13 = v12 & 0xF3;
    }

    *(this + 20) = v13;
  }

  return isSignaling;
}

uint64_t llvm::detail::ilogb(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20) & 7;
  if ((*(this + 20) & 7) == 0)
  {
    return 0x7FFFFFFFLL;
  }

  if (v2 == 1)
  {
    return 0x80000000;
  }

  if (v2 == 3)
  {
    return 2147483649;
  }

  if (!llvm::detail::IEEEFloat::isDenormal(this))
  {
    return *(this + 4);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v7, this);
  v5 = *(*this + 8) - 1;
  v9 += v5;
  llvm::detail::IEEEFloat::normalize(&v7, 1, 0);
  v3 = (v9 - v5);
  if ((*(v7 + 8) - 64) <= 0xFFFFFF7F && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t llvm::detail::scalbn(void *a1, uint64_t *a2, int a3)
{
  v5 = **a2 + *(*a2 + 8) + ~*(*a2 + 4);
  v6 = -2 - v5;
  if (v5 + 1 < a3)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = a3;
  }

  if (v6 > a3)
  {
    v7 = v6;
  }

  *(a2 + 4) += v7;
  llvm::detail::IEEEFloat::normalize(a2, 1, 0);
  if ((*(a2 + 20) & 7) == 1 && *(*a2 + 16) != 1)
  {
    v8 = *(*a2 + 8);
    v9 = a2 + 1;
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  }

  *a1 = &llvm::semBogus;

  return llvm::detail::IEEEFloat::operator=(a1, a2);
}

llvm::APInt **llvm::APInt::operator<<=(llvm::APInt **this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v5 = *(this + 2);
  if (v5 > 0x40)
  {
    llvm::APInt::tcShiftLeft(*this, ((v5 + 63) >> 6), a2);
    llvm::APInt::clearUnusedBits(this);
    return this;
  }

  else
  {
    if (v5 == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = (*this << a2);
    }

    *this = v6;

    return llvm::APInt::clearUnusedBits(this);
  }
}

uint64_t llvm::detail::IEEEFloat::convertFromAPInt(llvm::APInt *this, char **a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v18 = *(a2 + 2);
  v8 = v18;
  if (v18 > 0x40)
  {
    operator new[]();
  }

  v9 = *a2;
  v17 = *a2;
  v10 = *(this + 20);
  *(this + 20) = v10 & 0xF7;
  if (a3 && ((v17 >> (v8 - 1)) & 1) != 0)
  {
    *(this + 20) = v10 | 8;
    v16 = v8;
    v15 = v9;
    llvm::APInt::flipAllBits(&v15);
    llvm::APInt::operator++(&v15);
    v11 = v16;
    v16 = 0;
    v17 = v15;
    v18 = v11;
    v9 = v15;
  }

  else
  {
    v11 = v8;
  }

  if (v11 >= 0x41)
  {
    v12 = v9;
  }

  else
  {
    v12 = &v17;
  }

  v13 = llvm::detail::IEEEFloat::convertFromUnsignedParts(this, v12, ((v8 + 63) >> 6), a4, a5, a6);
  if (v11 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  return v13;
}

uint64_t llvm::detail::IEEEFloat::convertToSignExtendedInteger(uint64_t a1, llvm::APInt *this, unsigned int a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  *a7 = 0;
  v7 = *(a1 + 20) & 7;
  if (v7 < 2)
  {
    return 1;
  }

  v13 = a4 + 63;
  v14 = (a4 + 63) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v7 == 3)
  {
    *this = 0;
    if (v13 >= 0x80)
    {
      bzero(this + 8, 8 * (v15 - 1));
    }

    LOBYTE(v16) = ((*(a1 + 20) >> 3) & 1) == 0;
    goto LABEL_10;
  }

  v18 = (a1 + 8);
  v19 = *(*a1 + 8);
  if ((v19 - 64) <= 0xFFFFFF7F)
  {
    v18 = *v18;
  }

  v20 = *(a1 + 16);
  if ((v20 & 0x80000000) != 0)
  {
    *this = 0;
    if (v13 >= 0x80)
    {
      v47 = a5;
      bzero(this + 8, 8 * (v15 - 1));
      a5 = v47;
    }

    v48 = v15;
    v22 = v19 + ~v20;
    if (!v22)
    {
      goto LABEL_17;
    }

LABEL_21:
    v25 = a5;
    v26 = (*(*a1 + 8) + 64) >> 6;
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    v28 = llvm::lostFractionThroughTruncation(v18, v27, v22);
    if (v28)
    {
      if (llvm::detail::IEEEFloat::roundAwayFromZero(a1, a6, v28, v22))
      {
        v39 = __CFADD__((*this)++, 1);
        v24 = v48;
        if (v39)
        {
          v29 = 0;
          v30 = this + 8;
          while ((v48 - 1) != v29)
          {
            v31 = *&v30[8 * v29];
            *&v30[8 * v29] = v31 + 1;
            v29 = (v29 + 1);
            if (v31 != -1)
            {
              if (v29 >= v48)
              {
                return 1;
              }

              goto LABEL_32;
            }
          }

          return 1;
        }

LABEL_32:
        v23 = 0;
        goto LABEL_37;
      }

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = v48;
LABEL_37:
    a5 = v25;
    goto LABEL_38;
  }

  if (v20 >= a4)
  {
    return 1;
  }

  v46 = a5;
  v48 = v15;
  v21 = (v20 + 1);
  v22 = v19 - v21;
  if (v19 <= v21)
  {
    v24 = v48;
    llvm::APInt::tcExtract(this, v48, v18, v19, 0);
    llvm::APInt::tcShiftLeft(this, v48, v21 - *(*a1 + 8));
    v23 = 1;
    a5 = v46;
    goto LABEL_38;
  }

  llvm::APInt::tcExtract(this, v48, v18, v21, v19 - v21);
  a5 = v46;
  if (v22)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = 1;
  v24 = v48;
LABEL_38:
  if (v14 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v14;
  }

  v33 = 64 - (v32 << 6);
  v34 = v32 - 1;
  while (1)
  {
    v35 = *(this + v34);
    if (v35)
    {
      break;
    }

    v33 += 64;
    if (--v34 == -1)
    {
      v36 = -1;
      goto LABEL_46;
    }
  }

  v36 = (__clz(v35) - v33) ^ 0x3F;
LABEL_46:
  v37 = v36 + 1;
  if ((*(a1 + 20) & 8) == 0)
  {
    v38 = (a5 ^ 1) + a4;
    v39 = v37 >= v38;
    if (v37 < v38)
    {
      v16 = v23;
    }

    else
    {
      v16 = 0;
    }

    if (v39)
    {
      result = 1;
    }

    else
    {
      result = 16;
    }

    if (v16 == 1)
    {
      goto LABEL_10;
    }

    return result;
  }

  if (a5)
  {
    if (v37 == a4)
    {
      v40 = 0;
      v41 = this;
      v42 = v24;
      while (1)
      {
        v44 = *v41;
        v41 = (v41 + 8);
        v43 = v44;
        if (v44)
        {
          break;
        }

        v40 -= 64;
        v42 = (v42 - 1);
        if (!v42)
        {
          v45 = -1;
          goto LABEL_69;
        }
      }

      v45 = __clz(__rbit64(v43)) - v40;
LABEL_69:
      if (v45 == v36)
      {
        goto LABEL_65;
      }

      return 1;
    }

    if (v37 > a4)
    {
      return 1;
    }
  }

  else if (v36 != -1)
  {
    return 1;
  }

LABEL_65:
  llvm::APInt::tcNegate(this, v24);
  if (v23)
  {
    LOBYTE(v16) = 1;
LABEL_10:
    result = 0;
    *a7 = v16;
    return result;
  }

  return 16;
}

uint64_t llvm::lostFractionThroughTruncation(llvm *this, const unint64_t *a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  v5 = this;
  while (1)
  {
    v7 = *v5;
    v5 = (v5 + 8);
    v6 = v7;
    if (v7)
    {
      break;
    }

    v3 -= 64;
    if (!--v4)
    {
      return 0;
    }
  }

  v8 = __clz(__rbit64(v6));
  if (v8 - v3 >= a3)
  {
    return 0;
  }

  if (v8 - a3 + 1 == v3)
  {
    return 2;
  }

  if (a3 <= a2 << 6 && ((*(this + ((a3 - 1) >> 6)) >> (a3 - 1)) & 1) != 0)
  {
    return 3;
  }

  return 1;
}

uint64_t llvm::detail::IEEEFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, unsigned int a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  v11 = llvm::detail::IEEEFloat::convertToSignExtendedInteger(a1, a2, a3, a4, a5, a6, a7);
  if (v11 == 1)
  {
    v12 = (a4 + 63) >> 6;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if ((*(a1 + 20) & 8) != 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = a4 - a5;
    }

    if ((*(a1 + 20) & 7) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    llvm::detail::tcSetLeastSignificantBits(a2, v13, v15);
    if ((*(a1 + 20) & 8) != 0 && a5)
    {
      llvm::APInt::tcShiftLeft(a2, v13, a4 - 1);
    }
  }

  return v11;
}

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(llvm::APInt *this, llvm *a2, unint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  *(this + 20) = *(this + 20) & 0xF8 | 2;
  v9 = 64 - (a3 << 6);
  v10 = a3 - 1;
  while (1)
  {
    v11 = *(a2 + v10);
    if (v11)
    {
      break;
    }

    v9 += 64;
    if (--v10 == -1)
    {
      v12 = -1;
      goto LABEL_6;
    }
  }

  v12 = (__clz(v11) - v9) ^ 0x3F;
LABEL_6:
  v13 = (v12 + 1);
  v14 = (this + 8);
  v15 = *(*this + 8);
  if ((v15 - 64) <= 0xFFFFFF7F)
  {
    v14 = *v14;
  }

  v16 = (v15 + 64) >> 6;
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 - v15;
  if (v13 >= v15)
  {
    *(this + 4) = v12;
    v19 = llvm::lostFractionThroughTruncation(a2, a3, v13 - v15);
    llvm::APInt::tcExtract(v14, v17, a2, v15, v18);
  }

  else
  {
    *(this + 4) = v15 - 1;
    llvm::APInt::tcExtract(v14, v17, a2, v13, 0);
    v19 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(this, a4, v19);
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a2 + 20) = *(a2 + 20) & 0xF8 | 2;
  v10 = *(*a2 + 8);
  if ((v10 - 64) >= 0xFFFFFF80)
  {
    v14 = a2 + 1;
    *(a2 + 4) = 0;
    v13 = a2 + 2;
    a2[1] = 0;
    v12 = (v10 + 64) >> 6;
  }

  else
  {
    v11 = a2[1];
    *v11 = 0;
    v12 = (v10 + 64) >> 6;
    bzero(v11 + 1, 8 * (v12 - 1));
    *(a2 + 4) = 0;
    v13 = a2 + 2;
    v14 = a2[1];
  }

  if (v12 <= 1)
  {
    v12 = 1;
  }

  v15 = &a3[a4];
  v39 = 0;
  result = llvm::skipLeadingZeroesAndAnyDot(&v42, a3, v15, &v39);
  v17 = v42;
  if (v43)
  {
    *(a1 + 8) |= 1u;
    *a1 = v17;
    return result;
  }

  if (v42 != v15)
  {
    v18 = 0;
    v19 = 0;
    v20 = v39;
    v21 = v42;
    v22 = v12 << 6;
    while (1)
    {
      v23 = *v21;
      if (v23 == 46)
      {
        if (v20 != v15)
        {
          v31 = "String contains multiple dots";
          goto LABEL_60;
        }

        v39 = v21;
        v20 = v21++;
      }

      else
      {
        v24 = llvm::hexDigitValue(char)::LUT[v23];
        if (v24 == -1)
        {
          goto LABEL_36;
        }

        ++v21;
        if (v22)
        {
          v22 -= 4;
          v14[v22 >> 6] |= v24 << v22;
        }

        else
        {
          if ((v19 & 1) == 0)
          {
            if ((v23 - 57) > 0xFFFFFFFFFFFFFFF6)
            {
              if ((llvm::hexDigitValue(char)::LUT[v23] & 7) != 0)
              {
                v18 = v18 & 0xFFFFFFFF00000000 | 1;
              }

              else
              {
                v25 = v21;
                if (v21 == v15)
                {
LABEL_59:
                  v31 = "Invalid trailing hexadecimal fraction!";
LABEL_60:
                  v40 = v31;
                  v41 = 259;
                  getErrorErrorCat();
                  operator new();
                }

                while (1)
                {
                  v26 = *v25;
                  if (v26 != 48 && v26 != 46)
                  {
                    break;
                  }

                  if (++v25 == v15)
                  {
                    goto LABEL_59;
                  }
                }

                v27 = v18 & 0xFFFFFFFF00000000;
                if (llvm::hexDigitValue(char)::LUT[v26] == -1)
                {
                  v18 = v27 | (2 * (v23 != 48));
                }

                else
                {
                  if (v23 == 48)
                  {
                    v28 = 1;
                  }

                  else
                  {
                    v28 = 3;
                  }

                  v18 = v28 | v27;
                }
              }
            }

            else
            {
              v18 = v18 & 0xFFFFFFFF00000000 | 3;
            }
          }

          v22 = 0;
          v19 = 1;
        }
      }

      if (v21 == v15)
      {
        goto LABEL_36;
      }
    }
  }

  v18 = 0;
  v21 = v42;
LABEL_36:
  if (v21 == v15)
  {
    v30 = "Hex strings require an exponent";
    goto LABEL_44;
  }

  if ((*v21 | 0x20) != 0x70)
  {
    v30 = "Invalid character in significand";
    goto LABEL_44;
  }

  if (v21 == a3 || (v29 = v39, v39 != v15) && v21 - a3 == 1)
  {
    v30 = "Significand has no digits";
    goto LABEL_44;
  }

  if (v21 != v17)
  {
    if (v39 == v15)
    {
      v39 = v21;
      v29 = v21;
    }

    v32 = v21 + 1;
    if (v21 + 1 == v15 || ((v33 = *v32, v33 == 45) || v33 == 43) && (v32 = v21 + 2, v21 + 2 == v15))
    {
      v30 = "Exponent has no digits";
      goto LABEL_44;
    }

    if (v32 != v15)
    {
      v34 = 0;
      while (1)
      {
        v35 = *v32 - 48;
        if (v35 >= 0xA)
        {
          break;
        }

        v34 = v35 + 10 * v34;
        if (v34 >= 0x8000)
        {
          goto LABEL_68;
        }

        if (++v32 == v15)
        {
          goto LABEL_63;
        }
      }

      v30 = "Invalid character in exponent";
LABEL_44:
      v40 = v30;
      v41 = 259;
      getErrorErrorCat();
      operator new();
    }

    v34 = 0;
LABEL_63:
    v36 = *(*a2 + 8) + ~(v12 << 6) + 4 * (v29 - v17 + ((v29 - v17) >> 31));
    if (v36 != v36 || (v33 != 45 ? (v37 = v34) : (v37 = -v34), v38 = v37 + v36, v38 != v38))
    {
LABEL_68:
      if (v33 == 45)
      {
        v38 = -32768;
      }

      else
      {
        v38 = 0x7FFF;
      }
    }

    *v13 = v38;
  }

  result = llvm::detail::IEEEFloat::normalize(a2, a5, v18);
  *(a1 + 8) &= ~1u;
  *a1 = result;
  return result;
}

uint64_t llvm::skipLeadingZeroesAndAnyDot(uint64_t this, const char *a2, const char *a3, const char **a4)
{
  *a4 = a3;
  if (a2 != a3)
  {
    v4 = a3 - a2;
    while (1)
    {
      v5 = *a2;
      if (v5 != 48)
      {
        break;
      }

      if (++a2 == a3)
      {
        goto LABEL_5;
      }
    }

    if (v5 == 46)
    {
      *a4 = a2;
      if (v4 == 1)
      {
        v8 = "Significand has no digits";
        v9 = 259;
        getErrorErrorCat();
        operator new();
      }

      v6 = a2 + 1;
      while (v6 != a3)
      {
        v7 = *v6++;
        if (v7 != 48)
        {
          a2 = v6 - 1;
          goto LABEL_13;
        }
      }

LABEL_5:
      a2 = a3;
    }
  }

LABEL_13:
  *(this + 8) &= ~1u;
  *this = a2;
  return this;
}

uint64_t llvm::detail::IEEEFloat::roundSignificandWithExponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  off_286E74108(a1, a2, a3, a4, a5, a6, a7, a8, v86);
  v11 = v9;
  v75[0] = v12;
  v74 = v13;
  v14 = v8;
  v85 = *MEMORY[0x277D85DE8];
  *&v75[1] = 0xFFFF800100007FFFLL;
  v76 = 0;
  v77 = 0;
  v78 = 257;
  v16 = v10 == 1 || v10 == 4;
  v72 = v10;
  v73 = v16;
  if ((*(*v8 + 8) + 74) >> 6 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = (*(*v8 + 8) + 74) >> 6;
  }

  if (v9 >= 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = -v9;
  }

  v82 = 390625;
  v79[0] = llvm::powerOf5(unsigned long long *,unsigned int)::firstEightPowers[v18 & 7];
  if (v18 >= 8)
  {
    v20 = 0;
    v21 = v18 >> 3;
    v22 = v79;
    v23 = &v80;
    v24 = &v82;
    v19 = 1;
    v25 = 1;
    do
    {
      if (v20)
      {
        llvm::APInt::tcFullMultiply(v24, v24 - v25, v24 - v25, v25, v25);
        v26 = 2 * v25 - 1;
        if (*(v24 + v26))
        {
          v25 = (2 * v25);
        }

        else
        {
          v25 = v26;
        }
      }

      if (v21)
      {
        llvm::APInt::tcFullMultiply(v23, v22, v24, v19, v25);
        v28 = v25 + v19 - 1;
        if (*(v23 + v28))
        {
          v19 = (v25 + v19);
        }

        else
        {
          v19 = v28;
        }

        v27 = v23;
        v23 = v22;
        v22 = v27;
      }

      else
      {
        v27 = v22;
      }

      v24 = (v24 + 8 * v25);
      --v20;
      v29 = v21 >= 2;
      v21 >>= 1;
    }

    while (v29);
    if (v27 != v79 && v19)
    {
      v30 = v19;
      v31 = v79;
      do
      {
        v32 = *v27++;
        *v31++ = v32;
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    v19 = 1;
  }

  do
  {
    LODWORD(v76) = (v17 << 6) - 1;
    v33 = v76 - *(*v14 + 8);
    llvm::detail::IEEEFloat::IEEEFloat(&v82, &v75[1]);
    llvm::detail::IEEEFloat::makeZero(&v82, (v14[20] >> 3) & 1);
    llvm::detail::IEEEFloat::IEEEFloat(&v80, &v75[1]);
    v36 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v82, v74, v75[0], 1, v34, v35);
    v41 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v80, v79, v19, 1, v37, v38);
    v84 += v11;
    if (v11 < 0)
    {
      v42 = llvm::detail::IEEEFloat::divideSignificand(&v82, &v80, v39, v40);
      v45 = *(*v14 + 4);
      v44 = v33;
      v46 = v45 - v84;
      if (v45 > v84)
      {
        v44 = v46 + v33;
        if (v46 + v33 >= v76)
        {
          v33 = v76;
        }

        else
        {
          v33 += v46;
        }
      }

      v43 = 2 * ((v41 | v42) != 0);
    }

    else
    {
      v42 = llvm::detail::IEEEFloat::multiplySignificand(&v82, &v80);
      v43 = v41 != 0;
      v44 = v33;
    }

    v47 = v42 != 0;
    if (v36)
    {
      ++v43;
    }

    v48 = 2 * v47;
    v49 = v47 | (2 * v43);
    if (v43)
    {
      v50 = v49;
    }

    else
    {
      v50 = v48;
    }

    if ((*(v82 + 8) - 64) >= 0xFFFFFF80)
    {
      v51 = &v83;
    }

    else
    {
      v51 = v83;
    }

    v52 = (v33 - 1) >> 6;
    v53 = v51[v52] & (0xFFFFFFFFFFFFFFFFLL >> ((v33 - 1) & 0x3F ^ 0x3F));
    v54 = 1 << (v33 - 1);
    if (!v73)
    {
      v54 = 0;
    }

    if (v33 - 1 > 0x3F)
    {
      if (v53 == v54)
      {
        v56 = v52 - 1;
        while (v56)
        {
          if (v51[v56--])
          {
            goto LABEL_61;
          }
        }

        v55 = *v51;
      }

      else if (v53 == v54 - 1)
      {
        v58 = v52 - 1;
        while (v58)
        {
          v59 = v51[v58--];
          if (v59 != -1)
          {
            goto LABEL_61;
          }
        }

        v55 = -*v51;
      }

      else
      {
LABEL_61:
        v55 = -1;
      }
    }

    else
    {
      v55 = v53 - v54;
      if ((v53 - v54) < 0)
      {
        v55 = v54 - v53;
      }
    }

    v60 = 2 * v55;
    if (2 * v55 >= v50)
    {
      v61 = *(*v14 + 8);
      v62 = (v14 + 8);
      if ((v61 - 64) <= 0xFFFFFF7F)
      {
        v62 = *(v14 + 1);
      }

      v63 = (v61 + 64) >> 6;
      if (v63 <= 1)
      {
        v64 = 1;
      }

      else
      {
        v64 = v63;
      }

      llvm::APInt::tcExtract(v62, v64, v51, (v76 - v33), v33);
      *(v14 + 4) = v84 + v33 + *(*v14 + 8) - v76;
      v65 = *(v82 + 8);
      if ((v65 - 64) >= 0xFFFFFF80)
      {
        v66 = &v83;
      }

      else
      {
        v66 = v83;
      }

      v67 = (v65 + 64) >> 6;
      if (v67 <= 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = v67;
      }

      v69 = llvm::lostFractionThroughTruncation(v66, v68, v44);
      v71 = llvm::detail::IEEEFloat::normalize(v14, v72, v69);
    }

    if ((*(v80 + 8) - 64) <= 0xFFFFFF7F && v81)
    {
      MEMORY[0x25F891010](v81, 0x1000C8000313F17);
    }

    if ((*(v82 + 8) - 64) <= 0xFFFFFF7F && v83)
    {
      MEMORY[0x25F891010](v83, 0x1000C8000313F17);
    }

    v17 *= 2;
  }

  while (v60 < v50);
  return v71;
}

void llvm::detail::IEEEFloat::makeInf(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *this;
  if (*(*this + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(this, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *(this + 20) = *(this + 20) & 0xF0 | v3;
    *(this + 4) = *v2 + 1;
    v4 = v2[2];
    if ((v4 - 64) >= 0xFFFFFF80)
    {
      *(this + 1) = 0;
    }

    else
    {
      v5 = *(this + 1);
      *v5 = 0;
      bzero(v5 + 1, 8 * (((v4 + 64) >> 6) - 1));
    }
  }
}

void llvm::detail::IEEEFloat::convertFromString(llvm::detail::IEEEFloat *this@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, llvm *a5@<X8>)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v13 = "Invalid string length";
    goto LABEL_34;
  }

  v7 = a3;
  v8 = a2;
  v9 = this;
  if (a3 < 3)
  {
    goto LABEL_3;
  }

  if (a3 == 8)
  {
    if (*a2 != 0x5954494E49464E49)
    {
LABEL_36:
      v15 = *a2;
      if (v15 != 45)
      {
        v16 = 0;
        v18 = a2;
        v17 = a3;
        goto LABEL_52;
      }

      v18 = a2 + 1;
      v17 = a3 - 1;
      if (a3 == 9)
      {
        v27 = "INFINITY";
      }

      else
      {
        if (a3 != 4)
        {
LABEL_51:
          v15 = *v18;
          v16 = 1;
          goto LABEL_52;
        }

        if (!memcmp(a2 + 1, "inf", v17))
        {
LABEL_76:
          this = v9;
          v28 = 1;
          goto LABEL_44;
        }

        v27 = "Inf";
      }

      if (memcmp(v8 + 1, v27, v7 - 1))
      {
        goto LABEL_51;
      }

      goto LABEL_76;
    }

LABEL_43:
    v28 = 0;
LABEL_44:
    llvm::detail::IEEEFloat::makeInf(this, v28);
    goto LABEL_67;
  }

  if (a3 == 4)
  {
    if (*a2 != 1718503723)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (a3 != 3)
  {
    goto LABEL_36;
  }

  if (*a2 == 28265 && a2[2] == 102)
  {
    goto LABEL_43;
  }

  v15 = *a2;
  if (v15 == 45)
  {
    v10 = this + 20;
    v11 = *(this + 20) | 8;
    goto LABEL_4;
  }

  v16 = 0;
  v17 = 3;
  v18 = a2;
LABEL_52:
  if ((v15 | 0x20) == 0x73)
  {
    if (--v17 < 3)
    {
      goto LABEL_3;
    }

    ++v18;
    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  if ((*v18 != 24942 || v18[2] != 110) && (*v18 != 24910 || v18[2] != 78))
  {
    goto LABEL_3;
  }

  v32 = v17 - 3;
  if (v17 <= 3)
  {
    llvm::detail::IEEEFloat::makeNaN(v9, v29, v16, 0);
    goto LABEL_67;
  }

  v34 = v18 + 3;
  v33 = v18[3];
  if (v33 != 40)
  {
    goto LABEL_72;
  }

  if (v32 >= 3 && v18[v17 - 1] == 41)
  {
    v33 = v18[4];
    v32 = v17 - 5;
    v34 = v18 + 4;
LABEL_72:
    v35 = v29;
    if (v33 == 48)
    {
      if (v32 < 2)
      {
        v36 = 8;
        v32 = 1;
      }

      else if (__tolower(v34[1]) == 120)
      {
        v34 += 2;
        v36 = 16;
        v32 -= 2;
      }

      else
      {
        v36 = 8;
      }
    }

    else
    {
      v36 = 10;
    }

    v66 = 1;
    v65 = 0;
    v62 = v34;
    v63 = v32;
    if ((llvm::StringRef::consumeInteger(&v62, v36, &v65) & 1) != 0 || v63)
    {
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      goto LABEL_3;
    }

    llvm::detail::IEEEFloat::makeNaN(v9, v35, v16, &v65);
    if (v66 >= 0x41 && v65)
    {
      MEMORY[0x25F891010](v65, 0x1000C8000313F17);
    }

LABEL_67:
    *(a5 + 8) &= ~1u;
    *a5 = 0;
    return;
  }

LABEL_3:
  v10 = v9 + 20;
  v11 = *(v9 + 20) & 0xF7 | (8 * (*v8 == 45));
LABEL_4:
  *v10 = v11;
  v12 = *v8;
  if (v12 != 45 && v12 != 43)
  {
    goto LABEL_8;
  }

  if (!--v7)
  {
    v13 = "String has no digits";
LABEL_34:
    v62 = v13;
    v64 = 259;
    getErrorErrorCat();
    operator new();
  }

  ++v8;
LABEL_8:
  if (v7 >= 2 && *v8 == 48 && (v8[1] | 0x20) == 0x78)
  {
    if (v7 == 2)
    {
      v62 = "Invalid string";
      v64 = 259;
      llvm::createError(a5, &v62);
    }

    llvm::detail::IEEEFloat::convertFromHexadecimalString(a5, v9, v8 + 2, v7 - 2, a4);
    return;
  }

  v19 = &v8[v7];
  v61 = &v8[v7];
  llvm::skipLeadingZeroesAndAnyDot(&v65, v8, &v8[v7], &v61);
  v22 = v65;
  if (v66)
  {
    *(a5 + 8) |= 1u;
    *a5 = v22;
    return;
  }

  v23 = v61;
  v24 = v65;
  if (v65 == v19)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v25 = *v24;
    if (v25 != 46)
    {
      v26 = v24;
      goto LABEL_30;
    }

    if (v23 != v19)
    {
      v37 = "String contains multiple dots";
      goto LABEL_95;
    }

    v26 = v24 + 1;
    v61 = v24;
    if (v24 + 1 == v19)
    {
      break;
    }

    LOBYTE(v25) = *v26;
    v23 = v24;
LABEL_30:
    if ((v25 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_79;
    }

    v24 = v26 + 1;
    if (v26 + 1 == v19)
    {
      goto LABEL_80;
    }
  }

  v23 = v24;
LABEL_79:
  v24 = v26;
LABEL_80:
  if (v24 == v19)
  {
    v38 = 0;
  }

  else
  {
    if ((*v24 | 0x20) != 0x65)
    {
      v37 = "Invalid character in significand";
      goto LABEL_95;
    }

    if (v24 == v8 || v23 != v19 && v24 - v8 == 1)
    {
      v37 = "Significand has no digits";
      goto LABEL_95;
    }

    v44 = v24 + 1;
    if (v24 + 1 == v19 || ((v45 = *v44, v45 == 45) || v45 == 43) && v24 + 2 == v19)
    {
      v38 = 0;
    }

    else
    {
      if (v45 == 45 || (v46 = *v44, v45 == 43))
      {
        v44 = v24 + 2;
        if (v24 + 2 != v19)
        {
          v46 = *v44;
          goto LABEL_106;
        }

        v37 = "Exponent has no digits";
LABEL_95:
        v62 = v37;
        v64 = 259;
        getErrorErrorCat();
        operator new();
      }

LABEL_106:
      v47 = v46 - 48;
      if (v47 > 9)
      {
LABEL_107:
        v37 = "Invalid character in exponent";
        goto LABEL_95;
      }

      v59 = v44 + 1;
      while (v59 != v19)
      {
        v60 = *v59 - 48;
        if (v60 >= 0xA)
        {
          goto LABEL_107;
        }

        v47 = v60 + 10 * v47;
        ++v59;
        if (v47 >> 6 >= 0x177)
        {
          v47 = 24000;
          break;
        }
      }

      if (v45 == 45)
      {
        v38 = -v47;
      }

      else
      {
        v38 = v47;
      }
    }

    if (v23 == v19)
    {
      v61 = v24;
      v23 = v24;
    }
  }

  if (v24 == v65)
  {
    v43 = 0;
  }

  else
  {
    v39 = v8;
    if (v24 != v8)
    {
      while (2)
      {
        v40 = v24 - 1;
        do
        {
          if (v40 == v8)
          {
            v39 = v8;
            goto LABEL_110;
          }

          v42 = *v40--;
          v41 = v42;
        }

        while (v42 == 48);
        if (v41 == 46)
        {
          v24 = v40 + 1;
          continue;
        }

        break;
      }

      v39 = v40 + 1;
    }

LABEL_110:
    v48 = v23 - v39;
    v49 = v23 > v65;
    v50 = v23 >= v39;
    v51 = v23 > v39;
    if (v50)
    {
      v49 = 0;
    }

    v43 = v38 + v48 - v51 + v39 - v65 - v49;
  }

  if (v65 != v19 && (*v65 - 58) > 0xFFFFFFF5)
  {
    if (v43 < 51085)
    {
      v56 = *v9;
      if (v43 < -51082 || 28738 * v43 + 28738 <= 8651 * (v56[1] - v56[2]))
      {
        *(v9 + 20) = *(v9 + 20) & 0xF8 | 2;
        v57 = v56[2];
        if ((v57 - 64) >= 0xFFFFFF80)
        {
          *(v9 + 1) = 0;
        }

        else
        {
          v58 = *(v9 + 1);
          *v58 = 0;
          bzero(v58 + 1, 8 * (((v57 + 64) >> 6) - 1));
        }

        v55 = llvm::detail::IEEEFloat::normalize(v9, a4, 1);
        goto LABEL_135;
      }

      if (42039 * v43 - 42039 < 12655 * *v56)
      {
        operator new[]();
      }
    }

    v55 = llvm::detail::IEEEFloat::handleOverflow(v9, a4, v20, v21);
LABEL_135:
    v54 = v55;
    goto LABEL_136;
  }

  v52 = *(v9 + 20) & 0xF8 | 3;
  *(v9 + 20) = v52;
  v53 = *v9;
  if (*(*v9 + 20) == 2)
  {
    *v10 = v52 & 0xF3;
  }

  if ((v53[6] & 1) == 0)
  {
    llvm::detail::IEEEFloat::makeSmallestNormalized(v9, 0);
  }

  v54 = 0;
LABEL_136:
  *(a5 + 8) &= ~1u;
  *a5 = v54;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unint64_t *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(this + 20);
  v5 = v4 & 6;
  v6 = v4 & 7;
  v7 = (v4 >> 3) & 1;
  if (v5)
  {
    v8 = v6 == 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6 == 1)
    {
      LOBYTE(v7) = 0;
    }

    LOBYTE(v15) = v7;
    v9 = *this;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v24 = 0;
    v25 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v17) = v6;
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int>(&v17, 0, &v17 + 1, &v21, &v15, (v9 + 8));
  }

  else
  {
    v16 = v7;
    v11 = (this + 8);
    v12 = (*this + 8);
    if ((*v12 - 64) >= 0xFFFFFF80)
    {
      v13 = (this + 8);
    }

    else
    {
      v13 = *(this + 1);
    }

    v14 = (*v12 + 64) >> 6;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(v13, v13 + 8 * v14, a3, a4);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v24 = 0;
    v25 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v17) = v6;
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int,int,llvm::hash_code>(&v17, 0, &v17 + 1, &v21, &v16, v12, v11 + 2, &v15);
  }
}

uint64_t llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt@<X0>(llvm::APInt *a1@<X8>, uint64_t *a2@<X0>)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      if ((v4 & 7) != 0)
      {
        v13 = *a2;
        v12 = (a2 + 1);
        if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
        {
          v12 = *v12;
        }

        v7 = *v12;
      }

      else
      {
        v7 = 0x8000000000000000;
      }

      v11 = 0x7FFFLL;
    }
  }

  else
  {
    LODWORD(v8) = *(a2 + 4) + 0x3FFF;
    v10 = *a2;
    v9 = (a2 + 1);
    if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    v7 = *v9;
    if (v8 == 1)
    {
      v8 = v7 >> 63;
    }

    v11 = v8 & 0x7FFF;
  }

  v15[0] = v7;
  v15[1] = v11 & 0xFFFFFFFFFFFF7FFFLL | (((v4 >> 3) & 1) << 15);
  *(a1 + 2) = 80;
  return llvm::APInt::initFromArray(a1, v15, 2u);
}

uint64_t llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = *(*this + 12);
  *v14 = **this;
  *&v14[12] = v3;
  *&v14[4] = -1022;
  llvm::detail::IEEEFloat::IEEEFloat(&v12, this);
  llvm::detail::IEEEFloat::convert(&v12, v14, 1u, &v15);
  llvm::detail::IEEEFloat::IEEEFloat(&v9, &v12);
  llvm::detail::IEEEFloat::convert(&v9, &llvm::semIEEEdouble, 1u, &v15);
  llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(&v7, &v9);
  if (v8 > 0x40)
  {
    v16 = *v7;
    MEMORY[0x25F891010]();
  }

  else
  {
    v16 = v7;
  }

  if ((v11 & 6) != 0 && (v11 & 7) != 3 && v15)
  {
    llvm::detail::IEEEFloat::convert(&v9, v14, 1u, &v15);
    llvm::detail::IEEEFloat::IEEEFloat(&v7, &v12);
    llvm::detail::IEEEFloat::addOrSubtract(&v7, &v9, 1, 1);
    llvm::detail::IEEEFloat::convert(&v7, &llvm::semIEEEdouble, 1u, &v15);
    llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(&v5, &v7);
    if (v6 > 0x40)
    {
      v17 = *v5;
      MEMORY[0x25F891010]();
    }

    else
    {
      v17 = v5;
    }

    if ((*(v7 + 8) - 64) <= 0xFFFFFF7F && v8)
    {
      MEMORY[0x25F891010](v8, 0x1000C8000313F17);
    }
  }

  else
  {
    v17 = 0;
  }

  *(a2 + 2) = 128;
  result = llvm::APInt::initFromArray(a2, &v16, 2u);
  if ((*(v9 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v10;
    if (v10)
    {
      result = MEMORY[0x25F891010](v10, 0x1000C8000313F17);
    }
  }

  if ((*(v12 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt@<X0>(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 1022;
  }

  else
  {
    LODWORD(v3) = 1023;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        v7 = 0;
        LOWORD(v3) = v3 - 1023;
      }

      else
      {
        LOWORD(v3) = v3 | 0x400;
        v8 = v2[2] - 64;
        v9 = this + 1;
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      v7 = 0;
      LOWORD(v3) = v3 | 0x400;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 4) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = this[1];
    }

    else
    {
      v7 = *this[1];
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 52) & 1;
    }
  }

  *(a1 + 2) = 64;
  *a1 = (v4 << 60) & 0x8000000000000000 | v7 & 0xFFFFFFFFFFFFFLL | ((v3 & 0x7FF) << 52);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt@<X0>(llvm::APInt *a1@<X8>, uint64_t a2@<X0>)
{
  v6 = *a2;
  if (*a2 == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v7) = 16382;
  }

  else
  {
    LODWORD(v7) = 0x3FFF;
  }

  v8 = *(a2 + 20);
  v9 = v8 & 7;
  if ((v8 & 6) == 0 || v9 == 3)
  {
    if ((v8 & 7) != 0)
    {
      if (v9 == 3)
      {
        v11 = 0;
        v12 = 0;
        LOWORD(v7) = v7 - 0x3FFF;
      }

      else
      {
        LOWORD(v7) = v7 | 0x4000;
        v14 = (a2 + 8);
        if ((v6[2] - 64) <= 0xFFFFFF7F)
        {
          v14 = *v14;
        }

        v11 = *v14;
        v12 = v14[1];
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      LOWORD(v7) = v7 | 0x4000;
    }
  }

  else
  {
    LODWORD(v7) = *(a2 + 16) + v7;
    if ((v6[2] - 64) > 0xFFFFFF7F)
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
    }

    else
    {
      v13 = *(a2 + 8);
      v11 = *v13;
      v12 = v13[1];
    }

    if (v7 == 1)
    {
      v7 = HIWORD(v12) & 1;
    }
  }

  v16[2] = v2;
  v16[3] = v3;
  v16[0] = v11;
  v16[1] = (v8 << 60) & 0x8000000000000000 | v12 & 0xFFFFFFFFFFFFLL | ((v7 & 0x7FFF) << 48);
  *(a1 + 2) = 128;
  return llvm::APInt::initFromArray(a1, v16, 2u);
}

uint64_t llvm::detail::IEEEFloat::convertFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 126;
  }

  else
  {
    LODWORD(v3) = 127;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LODWORD(v7) = 0;
        LOBYTE(v3) = v3 - 127;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x80;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LODWORD(v7) = 0;
      LOBYTE(v3) = v3 | 0x80;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 23) & 1;
    }
  }

  *(a2 + 8) = 32;
  *a2 = v7 & 0x7FFFFF | (((v4 >> 3) & 1) << 31) | (v3 << 23);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertBFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 126;
  }

  else
  {
    LODWORD(v3) = 127;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 127;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x80;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 0x80;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 7) & 1;
    }
  }

  *(a2 + 8) = 16;
  *a2 = v7 & 0x7F | (((v4 >> 3) & 1) << 15) | (v3 << 7);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertHalfAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 14;
  }

  else
  {
    LODWORD(v3) = 15;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOWORD(v7) = 0;
        LOBYTE(v3) = v3 - 15;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x10;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOWORD(v7) = 0;
      LOBYTE(v3) = v3 | 0x10;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 10) & 1;
    }
  }

  *(a2 + 8) = 16;
  *a2 = v7 & 0x3FF | (((v4 >> 3) & 1) << 15) | ((v3 & 0x1F) << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 14;
  }

  else
  {
    LODWORD(v3) = 15;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 15;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x10;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 0x10;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 2) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 3 | (4 * (v3 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 15;
  }

  else
  {
    LODWORD(v3) = 16;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 16;
    }

    else
    {
      LOBYTE(v3) = v3 - 16;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 2) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 3 | (4 * (v3 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 6;
  }

  else
  {
    LODWORD(v3) = 7;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 7;
      }

      else
      {
        LOBYTE(v3) = v3 | 8;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 8;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 6;
  }

  else
  {
    LODWORD(v3) = 7;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 7;
    }

    else
    {
      LOBYTE(v3) = v3 | 8;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 7;
  }

  else
  {
    LODWORD(v3) = 8;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 8;
    }

    else
    {
      LOBYTE(v3) = v3 - 8;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 10;
  }

  else
  {
    LODWORD(v3) = 11;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 11;
    }

    else
    {
      LOBYTE(v3) = v3 - 11;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 2;
  }

  else
  {
    LODWORD(v3) = 3;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 3;
      }

      else
      {
        LOBYTE(v3) = v3 | 4;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 4;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 4) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 0xF | (16 * (v3 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 126;
  }

  else
  {
    LODWORD(v3) = 127;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOWORD(v7) = 0;
        LOBYTE(v3) = v3 - 127;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x80;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOWORD(v7) = 0;
      LOBYTE(v3) = v3 | 0x80;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 10) & 1;
    }
  }

  *(a2 + 8) = 19;
  *a2 = v7 & 0x3FF | (((v4 >> 3) & 1) << 18) | (v3 << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = vdup_n_s32(v2);
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v4) = 127;
  }

  else
  {
    LODWORD(v4) = 128;
  }

  v5 = vmvn_s8(vceq_s32(vand_s8(v3, 0x700000006), 0x300000000));
  if (v5.i32[0] & v5.i32[1])
  {
    LODWORD(v4) = *(this + 16) + v4;
    v6 = (this + 8);
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      if (v4 == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v4 == 1)
    {
      v6 = *v6;
LABEL_10:
      v4 = *v6 & 1;
    }
  }

  else
  {
    LOBYTE(v4) = v4 + 0x80;
  }

  *(a2 + 8) = 8;
  *a2 = v4 | (16 * v2) & 0x80;
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v2) = 2;
  }

  else
  {
    LODWORD(v2) = 3;
  }

  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    LOBYTE(v2) = v2 - 3;
  }

  else
  {
    LODWORD(v2) = *(this + 16) + v2;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v5 = *(this + 8);
    }

    else
    {
      v5 = **(this + 8);
    }

    if (v2 == 1)
    {
      v2 = (v5 >> 2) & 1;
    }
  }

  *(a2 + 8) = 6;
  *a2 = (4 * v3) & 0x20 | v5 & 3 | (4 * (v2 & 7));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    if (v2 == &llvm::semFloat8E8M0FNU)
    {
      LOBYTE(v6) = -1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 4);
    if (v2 != &llvm::semFloat8E8M0FNU)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) > 0xFFFFFF7F)
    {
      v5 = this[1];
    }

    else
    {
      v5 = *this[1];
    }

    if (v6 == 1)
    {
      v6 = (v5 >> 3) & 1;
    }
  }

  *(a2 + 8) = 6;
  *a2 = (4 * v3) & 0x20 | v5 & 7 | (8 * (v6 & 3));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    if (v2 == &llvm::semFloat8E8M0FNU)
    {
      LOBYTE(v6) = -1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 4);
    if (v2 != &llvm::semFloat8E8M0FNU)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) > 0xFFFFFF7F)
    {
      v5 = this[1];
    }

    else
    {
      v5 = *this[1];
    }

    if (v6 == 1)
    {
      v6 = (v5 >> 1) & 1;
    }
  }

  *(a2 + 8) = 4;
  *a2 = v3 & 8 | v5 & 1 | (2 * (v6 & 3));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::bitcastToAPInt@<X0>(uint64_t *this@<X0>, llvm::APInt *a1@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semIEEEhalf)
  {
    return llvm::detail::IEEEFloat::convertHalfAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semBFloat)
  {
    return llvm::detail::IEEEFloat::convertBFloatAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semIEEEsingle)
  {
    return llvm::detail::IEEEFloat::convertFloatAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semIEEEdouble)
  {
    return llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(a1, this);
  }

  if (v2 == &llvm::semIEEEquad)
  {
    return llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(a1, this);
  }

  if (v2 == &llvm::semPPCDoubleDoubleLegacy)
  {
    return llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E5M2)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2APFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E5M2FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E4M3)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E4M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E4M3FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E4M3B11FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E3M4)
  {
    return llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloatTF32)
  {
    return llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E8M0FNU)
  {
    return llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat6E3M2FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat6E2M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat4E2M1FN)
  {
    return llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a1);
  }

  return llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(a1, this);
}

float llvm::detail::IEEEFloat::convertToFloat(llvm::detail::IEEEFloat *this)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(this, &v3);
  if (v4 > 0x40)
  {
    v1 = *v3;
    MEMORY[0x25F891010]();
  }

  else
  {
    LODWORD(v1) = v3;
  }

  return *&v1;
}

double llvm::detail::IEEEFloat::convertToDouble(llvm::detail::IEEEFloat *this)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(this, &v3);
  if (v4 <= 0x40)
  {
    return *&v3;
  }

  v1 = *v3;
  MEMORY[0x25F891010]();
  return v1;
}

uint64_t llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  if (*(a2 + 2) >= 0x41u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3;
  v5 = v3[1];
  LODWORD(v11) = 64;
  v10 = v4;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v10);
  result = llvm::detail::IEEEFloat::convert(this, &llvm::semPPCDoubleDoubleLegacy, 1u, &v12);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v9 = 64;
    v8 = v5;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v10, &v8);
    llvm::detail::IEEEFloat::convert(&v10, &llvm::semPPCDoubleDoubleLegacy, 1u, &v12);
    result = llvm::detail::IEEEFloat::addOrSubtract(this, &v10, 1, 0);
    if ((*(v10 + 2) - 64) <= 0xFFFFFF7F)
    {
      result = v11;
      if (v11)
      {
        return MEMORY[0x25F891010](v11, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void llvm::detail::IEEEFloat::initFromDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xFFFFFFFFFFFFFLL;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 52) & 0x7FF;
  *this = &llvm::semIEEEdouble;
  v7 = (v5 >> 60) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 2047 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 2047 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 1024;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 1023;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_18;
  }

  *(this + 4) = -1022;
}

void llvm::detail::IEEEFloat::initFromFloatAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x7FFFFF;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 23);
  *this = &llvm::semIEEEsingle;
  v7 = (v5 >> 28) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 255 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 255 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 128;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 127;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x800000uLL;
    goto LABEL_18;
  }

  *(this + 4) = -126;
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 2) & 0x1F;
  *this = &llvm::semFloat8E5M2;
  v7 = (v5 >> 4) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 31 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 31 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 16;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 15;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 4uLL;
    goto LABEL_18;
  }

  *(this + 4) = -14;
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 3;
  v6 = (v4 >> 2) & 0x1F;
  *a1 = &llvm::semFloat8E5M2FNUZ;
  v7 = (v4 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 16;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 4;
    }

    else
    {
      *(a1 + 16) = -15;
    }
  }

  else if (v7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = -16;
    *(a1 + 8) = 0;
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3;
  v7 = (v5 >> 4) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 15 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 15 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 8;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 7;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 8uLL;
    goto LABEL_18;
  }

  *(this + 4) = -6;
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 3) & 0xF;
  *a1 = &llvm::semFloat8E4M3FN;
  v7 = (v5 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = *(a1 + 20) & 0xF7 | (v5 >> 4) & 8;
  if (v6 == 15 && v4 == 7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = 8;
    v10 = 7;
LABEL_13:
    *(a1 + 8) = v10;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
    return;
  }

  *(a1 + 20) = v8 & 0xF8 | 2;
  *(a1 + 16) = v6 - 7;
  *(a1 + 8) = v4;
  if (v6)
  {
    v10 = v4 | 8;
    goto LABEL_13;
  }

  *(a1 + 16) = -6;
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 7;
  v6 = (v4 >> 3) & 0xF;
  *a1 = &llvm::semFloat8E4M3FNUZ;
  v7 = (v4 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 8;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 8;
    }

    else
    {
      *(a1 + 16) = -7;
    }
  }

  else if (v7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = -8;
    *(a1 + 8) = 0;
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 7;
  v6 = (v4 >> 3) & 0xF;
  *a1 = &llvm::semFloat8E4M3B11FNUZ;
  v7 = (v4 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 11;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 8;
    }

    else
    {
      *(a1 + 16) = -10;
    }
  }

  else if (v7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = -11;
    *(a1 + 8) = 0;
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xF;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 4) & 7;
  *this = &llvm::semFloat8E3M4;
  v7 = (v5 >> 4) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 7 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 7 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 4;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 3;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x10uLL;
    goto LABEL_18;
  }

  *(this + 4) = -2;
}

void llvm::detail::IEEEFloat::initFromFloatTF32APInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x3FF;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 10);
  *this = &llvm::semFloatTF32;
  v7 = (v5 >> 15) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 255 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 255 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 128;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 127;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x400uLL;
    goto LABEL_18;
  }

  *(this + 4) = -126;
}

void llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 3;
  v6 = (v4 >> 2) & 7;
  *a1 = &llvm::semFloat6E3M2FN;
  v7 = (v4 >> 2) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 3;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 4;
    }

    else
    {
      *(a1 + 16) = -2;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 7;
  v6 = (v4 >> 3) & 3;
  *a1 = &llvm::semFloat6E2M3FN;
  v7 = (v4 >> 2) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 1;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 8;
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 1;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 1) & 3;
  *a1 = &llvm::semFloat4E2M1FN;
  v7 = v5 & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v4)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 1;
    *(a1 + 8) = v4;
    if (v6)
    {
      *(a1 + 8) = v4 | 2;
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
  }
}

void llvm::detail::IEEEFloat::initFromAPInt(llvm::detail::IEEEFloat *this, void *a2, const llvm::APInt ***a3)
{
  if (a2 == &llvm::semIEEEhalf)
  {
    v3 = *(a3 + 2);
    if (v3 >= 0x41)
    {
      v4 = *a3;
    }

    else
    {
      v4 = a3;
    }

    v5 = *v4 & 0x3FF;
    v6 = v4[((v3 + 63) >> 6) - 1];
    v7 = (v6 >> 10) & 0x1F;
    *this = &llvm::semIEEEhalf;
    v8 = (v6 >> 12) & 8;
    v9 = *(this + 20) & 0xF7 | v8;
    *(this + 20) = v9;
    if (v7 != 31 || v5 != 0)
    {
      if (v7 == 31 && v5 != 0)
      {
        *(this + 20) = v9 & 0xF8 | 1;
        v19 = 16;
LABEL_58:
        *(this + 4) = v19;
        goto LABEL_59;
      }

      if (v7 | v5)
      {
        *(this + 20) = v9 & 0xF8 | 2;
        *(this + 4) = v7 - 15;
        *(this + 1) = v5;
        if (v7)
        {
          v5 |= 0x400uLL;
LABEL_59:
          *(this + 1) = v5;
          return;
        }

        v20 = -14;
LABEL_82:
        *(this + 4) = v20;
        return;
      }

      goto LABEL_64;
    }
  }

  else
  {
    if (a2 != &llvm::semBFloat)
    {
      if (a2 == &llvm::semIEEEsingle)
      {

        llvm::detail::IEEEFloat::initFromFloatAPInt(this, a3);
      }

      else if (a2 == &llvm::semIEEEdouble)
      {

        llvm::detail::IEEEFloat::initFromDoubleAPInt(this, a3);
      }

      else
      {
        if (a2 == &llvm::semX87DoubleExtended)
        {
          *this = &llvm::semX87DoubleExtended;
          operator new[]();
        }

        if (a2 == &llvm::semIEEEquad)
        {
          *this = &llvm::semIEEEquad;
          operator new[]();
        }

        if (a2 == &llvm::semPPCDoubleDoubleLegacy)
        {

          llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E5M2)
        {

          llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E5M2FNUZ)
        {

          llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3FN)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3FNUZ)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3B11FNUZ)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E3M4)
        {

          llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(this, a3);
        }

        else if (a2 == &llvm::semFloatTF32)
        {

          llvm::detail::IEEEFloat::initFromFloatTF32APInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E8M0FNU)
        {
          if (*(a3 + 2) >= 0x41u)
          {
            v21 = *a3;
          }

          else
          {
            v21 = a3;
          }

          v22 = *v21;
          v23 = *(this + 20);
          *this = &llvm::semFloat8E8M0FNU;
          *(this + 1) = 1;
          v24 = v23 & 0xF0;
          v25 = v22 - 127;
          if (v22 == 255)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }

          *(this + 20) = v24 | v26;
          *(this + 4) = v25;
        }

        else if (a2 == &llvm::semFloat6E3M2FN)
        {

          llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat6E2M3FN)
        {

          llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(this, a3);
        }

        else
        {

          llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(this, a3);
        }
      }

      return;
    }

    v12 = *(a3 + 2);
    if (v12 >= 0x41)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    v5 = *v13 & 0x7F;
    v14 = v13[((v12 + 63) >> 6) - 1];
    v15 = (v14 >> 7);
    *this = &llvm::semBFloat;
    v8 = (v14 >> 12) & 8;
    v16 = *(this + 20) & 0xF7 | v8;
    *(this + 20) = v16;
    if (v15 != 255 || v5 != 0)
    {
      if (v15 == 255 && v5 != 0)
      {
        *(this + 20) = v16 & 0xF8 | 1;
        v19 = 128;
        goto LABEL_58;
      }

      if (v15 | v5)
      {
        *(this + 20) = v16 & 0xF8 | 2;
        *(this + 4) = v15 - 127;
        *(this + 1) = v5;
        if (v15)
        {
          v5 |= 0x80uLL;
          goto LABEL_59;
        }

        v20 = -126;
        goto LABEL_82;
      }

LABEL_64:

      llvm::detail::IEEEFloat::makeZero(this, v8 != 0);
      return;
    }
  }

  llvm::detail::IEEEFloat::makeInf(this, v8 != 0);
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

  *(this + 20) = *(this + 20) & 0xF0 | v3;
  v4 = *this;
  *(this + 4) = **this;
  v5 = *(v4 + 8);
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v7 = (v5 + 64) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  result = memset(v6, 255, 8 * (v8 - 1));
  v10 = *this;
  v11 = *(*this + 8);
  if ((v8 << 6) - v11 >= 0x40)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> ((v8 << 6) - v11);
  }

  v6[v8 - 1] = v12;
  if (*(v10 + 16) == 1 && *(v10 + 20) == 1 && v11 >= 2)
  {
    *v6 &= ~1uLL;
  }

  return result;
}

void llvm::detail::IEEEFloat::toString(_BYTE *a1, void *a2, unsigned int a3, unsigned int a4, int a5)
{
  v78[32] = *MEMORY[0x277D85DE8];
  v9 = a1[20] & 7;
  if (v9 == 3)
  {
    if ((a1[20] & 8) != 0)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
    }

    if (a4)
    {

      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      return;
    }

    if (!a5)
    {
      llvm::SmallVectorImpl<char>::append<char const*,void>(a2, "0.0", "");
      if (a3 >= 2)
      {
        llvm::SmallVectorImpl<char>::append(a2, a3 - 1, 48);
      }

      v10 = "e+00";
      goto LABEL_50;
    }

    v10 = "0.0E+0";
    v11 = "";
LABEL_51:

    llvm::SmallVectorImpl<char>::append<char const*,void>(a2, v10, v11);
    return;
  }

  if (v9 == 1)
  {
    v10 = "NaN";
    v11 = "";
    goto LABEL_51;
  }

  if ((a1[20] & 7) == 0)
  {
    if ((a1[20] & 8) != 0)
    {
      v10 = "-Inf";
    }

    else
    {
      v10 = "+Inf";
    }

LABEL_50:
    v11 = v10 + 4;
    goto LABEL_51;
  }

  v13 = *(*a1 + 8);
  v14 = a1 + 8;
  if ((v13 - 64) <= 0xFFFFFF7F)
  {
    v14 = *v14;
  }

  v15 = *(a1 + 4);
  if ((v13 + 63) >> 6 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = (v13 + 63) >> 6;
  }

  v68 = *(*a1 + 8);
  llvm::APInt::initFromArray(&__src, v14, v16);
  v18 = a1[20];
  v19 = v68;
  v66 = v68;
  if (v68 > 0x40)
  {
    operator new[]();
  }

  v65 = __src;
  if ((v18 & 8) != 0)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
  }

  if (!a3)
  {
    a3 = (59 * v19) / 196 + 2;
  }

  v20 = v66;
  if (v66 > 0x40)
  {
    v22 = llvm::APInt::countTrailingZerosSlowCase(&v65);
    llvm::APInt::tcShiftRight(v65, ((v20 + 63) >> 6), v22);
  }

  else
  {
    v21 = __clz(__rbit64(v65));
    if (v66 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v66;
    }

    if (v66 > v21)
    {
      v65 = (v65 >> v22);
    }

    else
    {
      v65 = 0;
    }
  }

  v23 = v15 - v13 + v22;
  v24 = v23 + 1;
  if (v23 != -1)
  {
    if (v24 < 1)
    {
      llvm::APInt::zext(&__dst, &v65, (-137 * v24 + 136) / 0x3Bu + v19);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      v27 = -v24;
      v65 = __dst;
      v66 = v77;
      LODWORD(v77) = (-137 * v24 + 136) / 0x3Bu + v19;
      if (v77 >= 0x41)
      {
        operator new[]();
      }

      __dst = 5;
      if (v27)
      {
LABEL_56:
        llvm::APInt::operator*=(&v65, &__dst);
      }

      while (v27 >= 2)
      {
        v27 >>= 1;
        llvm::APInt::operator*=(&__dst, &__dst);
        if (v27)
        {
          goto LABEL_56;
        }
      }

      if (v77 >= 0x41 && __dst)
      {
        MEMORY[0x25F891010](__dst, 0x1000C8000313F17);
      }
    }

    else
    {
      llvm::APInt::zext(&__dst, &v65, v24 + v19);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      v65 = __dst;
      v66 = v77;
      llvm::APInt::operator<<=(&v65, v24, v25, v26);
      v24 = 0;
    }
  }

  v28 = v66;
  if (v66 > 0x40)
  {
    v29 = llvm::APInt::countLeadingZerosSlowCase(&v65);
  }

  else
  {
    v29 = v66 + __clz(v65) - 64;
  }

  v30 = (196 * a3 + 58) / 0x3B;
  if (v28 - v29 > v30)
  {
    v31 = 59 * (v28 - v29 - v30);
    if (v31 >= 0xC4)
    {
      v32 = v31 / 0xC4;
      v24 += v31 / 0xC4;
      LODWORD(v77) = v28;
      if (v28 > 0x40)
      {
        operator new[]();
      }

      __dst = 1;
      LODWORD(v70) = v28;
      for (i = 10; ; llvm::APInt::operator*=(&i, &i))
      {
        if (v32)
        {
          llvm::APInt::operator*=(&__dst, &i);
        }

        if (v32 < 2)
        {
          break;
        }

        v32 >>= 1;
      }

      llvm::APInt::udiv(&v74, &v65, &__dst);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      v65 = v74;
      v33 = v75;
      v66 = v75;
      if (v75 > 0x40)
      {
        v34 = llvm::APInt::countLeadingZerosSlowCase(&v65);
      }

      else
      {
        v34 = v75 + __clz(v74) - 64;
      }

      llvm::APInt::trunc(&v74, &v65, v33 - v34);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      v65 = v74;
      v66 = v75;
      if (v70 >= 0x41 && i)
      {
        MEMORY[0x25F891010](i, 0x1000C8000313F17);
      }

      if (v77 >= 0x41 && __dst)
      {
        MEMORY[0x25F891010](__dst, 0x1000C8000313F17);
      }

      v28 = v66;
    }
  }

  __dst = v78;
  v77 = xmmword_25D0A0670;
  if (v28 > 3)
  {
    v75 = v28;
    if (v28 > 0x40)
    {
      operator new[]();
    }
  }

  else
  {
    v28 = 4;
    v66 = 4;
    v75 = 4;
  }

  v74 = 10;
  v73 = v28;
  v72 = 0;
  LOBYTE(v35) = 1;
  while (1)
  {
    v36 = v66;
    if (v66 >= 0x41)
    {
      if (v36 - llvm::APInt::countLeadingZerosSlowCase(&v65) > 0x40)
      {
        goto LABEL_101;
      }

      v37 = v65;
    }

    else
    {
      v37 = &v65;
    }

    if (!*v37)
    {
      break;
    }

LABEL_101:
    llvm::APInt::udivrem(&v65, &v74, &v65, &v72, v17);
    if (v73 >= 0x41)
    {
      v38 = v72;
    }

    else
    {
      v38 = &v72;
    }

    v39 = *v38;
    v35 = v35 & (v39 == 0);
    if (v35 == 1)
    {
      ++v24;
    }

    else
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&__dst, v39 + 48);
    }
  }

  LODWORD(v40) = v77;
  v41 = v77 - a3;
  if (v77 > a3)
  {
    v42 = __dst;
    if (*(__dst + (v41 - 1)) >= 53)
    {
      if (a3)
      {
        v46 = a3;
        while (1)
        {
          v47 = *(__dst + v41);
          if (v47 != 57)
          {
            break;
          }

          LODWORD(v41) = v41 + 1;
          if (!--v46)
          {
            goto LABEL_123;
          }
        }

        *(__dst + v41) = v47 + 1;
      }

      if (v41 != v40)
      {
        v24 += v41;
        v42 = __dst;
        v44 = v77 - v41;
        if (v77 == v41)
        {
          goto LABEL_115;
        }

        goto LABEL_125;
      }

LABEL_123:
      v24 += v40;
      *&v77 = 0;
      llvm::SmallVectorTemplateBase<char,true>::push_back(&__dst, 49);
      LODWORD(v40) = v77;
    }

    else
    {
      if (v41 < v77)
      {
        v43 = a3;
        while (*(__dst + v41) == 48)
        {
          ++v41;
          if (!--v43)
          {
            LODWORD(v41) = v77;
            break;
          }
        }
      }

      v24 += v41;
      v44 = v77 - v41;
      if (!v44)
      {
LABEL_115:
        v45 = v42;
        goto LABEL_126;
      }

LABEL_125:
      memmove(v42, &v42[v41], v44);
      v45 = __dst;
LABEL_126:
      v40 = &v42[v44] - v45;
      *&v77 = v40;
    }
  }

  if (!a4)
  {
    goto LABEL_139;
  }

  if (v24 < 0)
  {
    v50 = v24 + v40;
    if (v24 + v40 - 1 < 0 && 1 - v50 > a4)
    {
      goto LABEL_139;
    }

    if (v50 < 1)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
      if (v50)
      {
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
        }

        while (!__CFADD__(v50++, 1));
        v50 = 0;
      }
    }

    else
    {
      v61 = v40 - 1;
      v62 = (v24 + v40);
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v61--));
        --v62;
      }

      while (v62);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
    }

    if (v50 != v40)
    {
      v64 = ~v50 + v40;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v64--));
      }

      while (v64 != -1);
    }
  }

  else
  {
    if (v24 <= a4 && v24 + v40 <= a3)
    {
      if (v40)
      {
        v48 = v40;
        v49 = v40 - 1;
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v49--));
          --v48;
        }

        while (v48);
      }

      for (; v24; --v24)
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      }

      goto LABEL_166;
    }

LABEL_139:
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + (v40 - 1)));
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
    v51 = v40 - 1;
    if (v40 == 1 && (a5 & 1) != 0)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
    }

    else if (v40 != 1)
    {
      v52 = v40 - 2;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v52--));
      }

      while (v52 != -1);
    }

    v53 = v51 + v24;
    if (a5)
    {
      v54 = 69;
    }

    else
    {
      if (a3 > v51)
      {
        llvm::SmallVectorImpl<char>::append(a2, a3 - v40 + 1, 48);
      }

      v54 = 101;
    }

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v54);
    if (v53 < 0)
    {
      v55 = 45;
    }

    else
    {
      v55 = 43;
    }

    if (v53 >= 0)
    {
      v56 = v53;
    }

    else
    {
      v56 = -v53;
    }

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v55);
    i = &v71;
    v70 = xmmword_25D0A0680;
    do
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&i, (v56 % 0xA) | 0x30);
      v57 = v56 > 9;
      v56 /= 0xAu;
    }

    while (v57);
    v58 = v70;
    if ((a5 & 1) == 0 && v70 <= 1)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&i, 48);
      v58 = v70;
    }

    v59 = v58;
    if (v58)
    {
      v60 = v58 - 1;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(i + v60--));
        --v59;
      }

      while (v59);
    }

    if (i != &v71)
    {
      free(i);
    }
  }

LABEL_166:
  if (v73 >= 0x41 && v72)
  {
    MEMORY[0x25F891010](v72, 0x1000C8000313F17);
  }

  if (v75 >= 0x41 && v74)
  {
    MEMORY[0x25F891010](v74, 0x1000C8000313F17);
  }

  if (__dst != v78)
  {
    free(__dst);
  }

  if (v66 >= 0x41 && v65)
  {
    MEMORY[0x25F891010](v65, 0x1000C8000313F17);
  }

  if (v68 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }
}

void llvm::SmallVectorImpl<char>::append(void *result, size_t __len, int __c)
{
  v6 = result[1];
  if (v6 + __len > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v6 + __len, 1);
    v6 = result[1];
    if (!__len)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__len)
  {
LABEL_3:
    memset((*result + v6), __c, __len);
    v6 = result[1];
  }

LABEL_4:
  result[1] = v6 + __len;
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

void llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::DoubleAPFloat(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    operator new[]();
  }

  *(this + 1) = 0;
  return this;
}

llvm::detail::IEEEFloat **llvm::detail::DoubleAPFloat::operator=(llvm::detail::IEEEFloat **this, llvm::detail::IEEEFloat **a2)
{
  if (*this == *a2 && (v6 = a2[1]) != 0)
  {
    llvm::APFloat::Storage::operator=(this[1], v6);
    llvm::APFloat::Storage::operator=((this[1] + 24), (a2[1] + 24));
  }

  else if (this != a2)
  {
    v4 = (this + 1);
    v5 = this[1];
    this[1] = 0;
    if (v5)
    {
      std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(v4, v5);
    }

    llvm::detail::DoubleAPFloat::DoubleAPFloat(this, a2);
  }

  return this;
}

uint64_t llvm::APFloat::add(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::addWithSpecial(a1, a1, a2, a1, a3);
  }

  else
  {
    return llvm::detail::IEEEFloat::addOrSubtract(a1, a2, a3, 0);
  }
}

void llvm::APFloat::makeZero(void ***this, int a2)
{
  v2 = this;
  if (*this == &llvm::semPPCDoubleDouble)
  {
    do
    {
      llvm::APFloat::makeZero(v2[1], a2 & 1);
      v3 = 0;
      LOBYTE(a2) = 0;
      v4 = v2[1];
      v5 = v4[3];
      v2 = (v4 + 3);
    }

    while (v5 == &llvm::semPPCDoubleDouble);
  }

  else
  {
    v3 = a2;
  }

  llvm::detail::IEEEFloat::makeZero(v2, v3);
}

uint64_t llvm::APFloat::compareAbsoluteValue(llvm::APFloat *this, const llvm::APFloat *a2)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v3 = *(this + 1);
    v4 = *(a2 + 1);
    result = llvm::APFloat::compareAbsoluteValue(v3, v4);
    if (result == 1)
    {
      v5 = v3 + 3;
      v6 = v4 + 3;
      result = llvm::APFloat::compareAbsoluteValue((v3 + 3), (v4 + 3));
      if ((result & 1) == 0)
      {
        v7 = v3;
        if (*v3 == &llvm::semPPCDoubleDouble)
        {
          v7 = v3[1];
        }

        v8 = *(v7 + 20);
        if (v3[3] == &llvm::semPPCDoubleDouble)
        {
          v5 = v3[4];
        }

        v9 = v8 ^ *(v5 + 20);
        v10 = v4;
        if (*v4 == &llvm::semPPCDoubleDouble)
        {
          v10 = v4[1];
        }

        v11 = (v9 >> 3) & 1;
        v12 = *(v10 + 20);
        if (v4[3] == &llvm::semPPCDoubleDouble)
        {
          v6 = v4[4];
        }

        v13 = ((v12 ^ *(v6 + 20)) >> 3) & 1;
        if (((v11 ^ 1) & 1) != 0 || v13)
        {
          if ((v11 ^ 1) & v13)
          {
            return 2;
          }

          else if ((v11 | v13) & 1) != 0 && (v11 & v13)
          {
            return (2 - result);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {

    return llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2);
  }

  return result;
}

uint64_t llvm::APFloat::subtract(llvm::APFloat **a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    llvm::APFloat::changeSign(a1[1]);
    v7 = llvm::APFloat::changeSign(a1[1] + 3);
    v8 = llvm::detail::DoubleAPFloat::addWithSpecial(v7, a1, a2, a1, a3);
    llvm::APFloat::changeSign(a1[1]);
    llvm::APFloat::changeSign(a1[1] + 3);
    return v8;
  }

  else
  {

    return llvm::detail::IEEEFloat::addOrSubtract(a1, a2, a3, 1);
  }
}

void *llvm::APFloat::changeSign(void *this)
{
  v1 = this;
  for (i = *this; i == &llvm::semPPCDoubleDouble; i = v4)
  {
    this = llvm::APFloat::changeSign(v1[1]);
    v3 = v1[1];
    v4 = *(v3 + 24);
    v1 = (v3 + 24);
  }

  v5 = *(i + 20);
  v6 = *(v1 + 20);
  if (v5 != 2 || (v6 & 5 | 2) != 3)
  {
    *(v1 + 20) = v6 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::DoubleAPFloat::addWithSpecial(int a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, llvm::detail::DoubleAPFloat **this, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 1);
  v10 = *v9;
  v11 = v9;
  if (*v9 == &llvm::semPPCDoubleDouble)
  {
    v11 = *(v9 + 1);
  }

  if ((*(v11 + 20) & 7) == 1)
  {
    goto LABEL_4;
  }

  v14 = *(a3 + 1);
  v15 = *v14;
  v16 = v14;
  if (*v14 == &llvm::semPPCDoubleDouble)
  {
    v16 = *(v14 + 8);
  }

  if ((*(v16 + 20) & 7) == 1)
  {
    goto LABEL_11;
  }

  v17 = v9;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v17 = *(v9 + 1);
  }

  if ((*(v17 + 20) & 7) == 3)
  {
LABEL_11:
    v12 = this;
    v13 = a3;
    goto LABEL_12;
  }

  v20 = *(a3 + 1);
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v20 = *(v14 + 8);
  }

  if ((*(v20 + 20) & 7) == 3)
  {
    goto LABEL_4;
  }

  v21 = v9;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v21 = *(v9 + 1);
  }

  if ((*(v21 + 20) & 7) != 0)
  {
    goto LABEL_31;
  }

  v22 = *(a3 + 1);
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v22 = *(v14 + 8);
  }

  if ((*(v22 + 20) & 7) != 0)
  {
    goto LABEL_31;
  }

  v23 = v9;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v23 = *(v9 + 1);
  }

  v24 = *(v23 + 20);
  v25 = *(a3 + 1);
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v25 = *(v14 + 8);
  }

  if (((v24 >> 3) & 1) == (*(v25 + 20) & 8) >> 3)
  {
LABEL_31:
    v27 = v9;
    if (v10 == &llvm::semPPCDoubleDouble)
    {
      v27 = *(v9 + 1);
    }

    if ((*(v27 + 20) & 7) != 0)
    {
      if (v15 == &llvm::semPPCDoubleDouble)
      {
        v14 = *(v14 + 8);
      }

      if ((*(v14 + 20) & 7) == 0)
      {
        goto LABEL_11;
      }

      llvm::APFloat::Storage::Storage(v53, v9);
      llvm::APFloat::Storage::Storage(v52, (*(a2 + 1) + 24));
      llvm::APFloat::Storage::Storage(v51, *(a3 + 1));
      llvm::APFloat::Storage::Storage(v50, (*(a3 + 1) + 24));
      v28 = llvm::APFloat::Storage::Storage(&v57, v53);
      v18 = llvm::APFloat::add(v28, v51, a5);
      if (v57 == &llvm::semPPCDoubleDouble)
      {
        v29 = *(v58 + 20);
      }

      else
      {
        v29 = v59;
      }

      if ((v29 & 6) != 0)
      {
        llvm::APFloat::Storage::Storage(v56, v53);
        v30 = llvm::APFloat::subtract(v56, &v57, a5);
        llvm::APFloat::Storage::Storage(v54, v56);
        v31 = llvm::APFloat::add(v54, v51, a5);
        v32 = llvm::APFloat::add(v56, &v57, a5);
        v33 = llvm::APFloat::subtract(v56, v53, a5);
        llvm::APFloat::changeSign(v56);
        v34 = llvm::APFloat::add(v54, v56, a5);
        v35 = llvm::APFloat::add(v54, v52, a5);
        v36 = v30 | v31 | v32 | v33 | v34 | v35 | llvm::APFloat::add(v54, v50, a5) | v18;
        if (v54[0] == &llvm::semPPCDoubleDouble)
        {
          v37 = *(v54[1] + 20);
        }

        else
        {
          v37 = v55;
        }

        if ((v37 & 7) != 3 || (v37 & 8) != 0)
        {
          llvm::APFloat::Storage::operator=(this[1], &v57);
          v36 = llvm::APFloat::add(this[1], v54, a5) | v36;
          v45 = this[1];
          if (*v45 == &llvm::semPPCDoubleDouble)
          {
            v46 = *(*(v45 + 1) + 20);
          }

          else
          {
            v46 = *(v45 + 20);
          }

          if ((v46 & 7u) < 2)
          {
            llvm::APFloat::makeZero(v45 + 3, 0);
            v44 = 0;
            v18 = v36;
          }

          else
          {
            llvm::APFloat::Storage::operator=(v45 + 3, &v57);
            v18 = llvm::APFloat::subtract(this[1] + 3, this[1], a5);
            v36 = v18 | llvm::APFloat::add((this[1] + 24), v54, a5) | v36;
            v44 = 1;
          }
        }

        else
        {
          llvm::APFloat::Storage::operator=(this[1], &v57);
          llvm::APFloat::makeZero(this[1] + 3, 0);
          v44 = 0;
          v18 = 0;
        }

        llvm::APFloat::Storage::~Storage(v54);
        llvm::APFloat::Storage::~Storage(v56);
        if (!v44)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if ((v29 & 7) != 0)
        {
          goto LABEL_66;
        }

        v38 = v53;
        v39 = llvm::APFloat::compareAbsoluteValue(v53, v51);
        llvm::APFloat::Storage::operator=(&v57, v50);
        v40 = llvm::APFloat::add(&v57, v52, a5);
        if (v39 == 2)
        {
          v41 = v51;
        }

        else
        {
          v41 = v53;
        }

        if (v39 != 2)
        {
          v38 = v51;
        }

        v42 = llvm::APFloat::add(&v57, v41, a5);
        v18 = v42 | v40 | llvm::APFloat::add(&v57, v38, a5);
        v43 = v57 == &llvm::semPPCDoubleDouble ? *(v58 + 20) : v59;
        if ((v43 & 7u) < 2)
        {
LABEL_66:
          llvm::APFloat::Storage::operator=(this[1], &v57);
          llvm::APFloat::makeZero(this[1] + 3, 0);
          goto LABEL_67;
        }

        llvm::APFloat::Storage::operator=(this[1], &v57);
        llvm::APFloat::Storage::Storage(v56, v52);
        v47 = llvm::APFloat::add(v56, v50, a5);
        llvm::APFloat::Storage::operator=((this[1] + 24), v38);
        v48 = llvm::APFloat::subtract(this[1] + 3, &v57, a5);
        v49 = llvm::APFloat::add((this[1] + 24), v41, a5);
        v36 = v47 | v48 | v49 | llvm::APFloat::add((this[1] + 24), v56, a5) | v18;
        llvm::APFloat::Storage::~Storage(v56);
      }

      v18 = v36;
LABEL_67:
      llvm::APFloat::Storage::~Storage(&v57);
      llvm::APFloat::Storage::~Storage(v50);
      llvm::APFloat::Storage::~Storage(v51);
      llvm::APFloat::Storage::~Storage(v52);
      llvm::APFloat::Storage::~Storage(v53);
      return v18;
    }

LABEL_4:
    v12 = this;
    v13 = a2;
LABEL_12:
    llvm::detail::DoubleAPFloat::operator=(v12, v13);
    return 0;
  }

  v26 = this[1];
  if (*v26 == &llvm::semPPCDoubleDouble)
  {
    v26 = *(v26 + 1);
  }

  llvm::detail::DoubleAPFloat::makeNaN(this, 0, (*(v26 + 20) & 8) != 0, 0);
  return 1;
}

void llvm::detail::DoubleAPFloat::makeNaN(llvm::APFloat **this, char a2, char a3, const llvm::APInt *a4)
{
  llvm::APFloat::makeNaN(this[1], a2, a3, a4);
  v5 = (this[1] + 24);

  llvm::APFloat::makeZero(v5, 0);
}

uint64_t llvm::detail::DoubleAPFloat::multiply(llvm::detail::DoubleAPFloat *this, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  v7 = *v6;
  v8 = v6;
  if (*v6 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v6 + 8);
  }

  if ((*(v8 + 20) & 7) == 1)
  {
LABEL_4:
    v9 = this;
LABEL_9:
    llvm::detail::DoubleAPFloat::operator=(this, v9);
    return 0;
  }

  v10 = *(a2 + 1);
  v11 = *v10;
  v12 = v10;
  if (*v10 == &llvm::semPPCDoubleDouble)
  {
    v12 = *(v10 + 8);
  }

  if ((*(v12 + 20) & 7) == 1)
  {
    goto LABEL_8;
  }

  v15 = *(this + 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v15 = *(v6 + 8);
  }

  if ((*(v15 + 20) & 7) == 3)
  {
    v16 = *(a2 + 1);
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v16 = *(v10 + 8);
    }

    if ((*(v16 + 20) & 7) == 0)
    {
      goto LABEL_24;
    }
  }

  v17 = *(this + 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v17 = *(v6 + 8);
  }

  if ((*(v17 + 20) & 7) == 0)
  {
    v18 = *(a2 + 1);
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v18 = *(v10 + 8);
    }

    if ((*(v18 + 20) & 7) == 3)
    {
LABEL_24:
      llvm::APFloat::makeNaN(*(this + 1), 0, 0, 0);
      llvm::APFloat::makeZero((*(this + 1) + 24), 0);
      return 0;
    }
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v19 = *(*(v6 + 8) + 20);
  }

  else
  {
    v19 = *(v6 + 20);
  }

  v20 = v19 & 7;
  if (v20 == 3 || !v20)
  {
    goto LABEL_4;
  }

  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(v10 + 8);
  }

  v21 = *(v10 + 20) & 7;
  if (v21 == 3 || !v21)
  {
LABEL_8:
    v9 = a2;
    goto LABEL_9;
  }

  llvm::APFloat::Storage::Storage(v39, v6);
  llvm::APFloat::Storage::Storage(v38, (*(this + 1) + 24));
  llvm::APFloat::Storage::Storage(v37, *(a2 + 1));
  llvm::APFloat::Storage::Storage(v36, (*(a2 + 1) + 24));
  llvm::APFloat::Storage::Storage(v34, v39);
  v13 = llvm::APFloat::multiply(v34, v37, a3);
  if (v34[0] == &llvm::semPPCDoubleDouble)
  {
    v22 = *(v34[1] + 20);
  }

  else
  {
    v22 = v35;
  }

  if ((v22 & 6) != 0 && (v22 & 7) != 3)
  {
    llvm::APFloat::Storage::Storage(v33, v39);
    llvm::APFloat::changeSign(v34);
    v23 = llvm::APFloat::fusedMultiplyAdd(v33, v37, v34, a3);
    llvm::APFloat::changeSign(v34);
    llvm::APFloat::Storage::Storage(v31, v39);
    v24 = llvm::APFloat::multiply(v31, v36, a3);
    llvm::APFloat::Storage::Storage(v30, v38);
    v25 = llvm::APFloat::multiply(v30, v37, a3);
    v26 = llvm::APFloat::add(v31, v30, a3);
    v27 = llvm::APFloat::add(v33, v31, a3);
    llvm::APFloat::Storage::~Storage(v30);
    llvm::APFloat::Storage::~Storage(v31);
    llvm::APFloat::Storage::Storage(v31, v34);
    v13 = v23 | v24 | v25 | v26 | v27 | llvm::APFloat::add(v31, v33, a3) | v13;
    llvm::APFloat::Storage::operator=(*(this + 1), v31);
    if (v31[0] == &llvm::semPPCDoubleDouble)
    {
      v28 = *(v31[1] + 20);
    }

    else
    {
      v28 = v32;
    }

    if ((v28 & 7u) < 2)
    {
      llvm::APFloat::makeZero((*(this + 1) + 24), 0);
    }

    else
    {
      v29 = llvm::APFloat::subtract(v34, v31, a3);
      v13 = v29 | llvm::APFloat::add(v34, v33, a3) | v13;
      llvm::APFloat::Storage::operator=((*(this + 1) + 24), v34);
    }

    llvm::APFloat::Storage::~Storage(v31);
    llvm::APFloat::Storage::~Storage(v33);
  }

  else
  {
    llvm::APFloat::Storage::operator=(*(this + 1), v34);
    llvm::APFloat::makeZero((*(this + 1) + 24), 0);
  }

  llvm::APFloat::Storage::~Storage(v34);
  llvm::APFloat::Storage::~Storage(v36);
  llvm::APFloat::Storage::~Storage(v37);
  llvm::APFloat::Storage::~Storage(v38);
  llvm::APFloat::Storage::~Storage(v39);
  return v13;
}

uint64_t llvm::APFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::multiply(a1, a2, a3);
  }

  else
  {
    return llvm::detail::IEEEFloat::multiply(a1, a2, a3);
  }
}

uint64_t llvm::APFloat::fusedMultiplyAdd(uint64_t a1, llvm::APFloat **a2, llvm::APFloat **a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v26, a1);
    llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v28, &v26);
    if (v27 >= 0x41 && v26)
    {
      MEMORY[0x25F891010](v26, 0x1000C8000313F17);
    }

    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v23, a2);
    llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v26, &v23);
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v21, a3);
    llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v25, &v21);
    llvm::APFloat::fusedMultiplyAdd(&v28, &v26, &v25, a4);
    llvm::APFloat::Storage::~Storage(&v25);
    if (v22 >= 0x41 && v21)
    {
      MEMORY[0x25F891010](v21, 0x1000C8000313F17);
    }

    llvm::APFloat::Storage::~Storage(&v26);
    if (v24 >= 0x41 && v23)
    {
      MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }

    llvm::APFloat::bitcastToAPInt(&v28, &v25);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v26, &llvm::semPPCDoubleDouble, &v25);
  }

  v8 = *(a1 + 20);
  *(a1 + 20) = *(a2 + 20) & 8 ^ v8;
  v9 = v8 & 6;
  v10 = v8 & 7;
  if (v9)
  {
    v11 = v10 == 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ((*(a2 + 20) & 6) != 0 ? (v12 = (*(a2 + 20) & 7) == 3) : (v12 = 1), v12 || (*(a3 + 20) & 6) == 0))
  {
    if (llvm::detail::IEEEFloat::multiplySpecials(a1, a2))
    {
      return 1;
    }

    else
    {
      return llvm::detail::IEEEFloat::addOrSubtract(a1, a3, a4, 0);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v28, a3);
    v15 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2, &v28, 0, v13, v14);
    if ((*(v28 + 8) - 64) <= 0xFFFFFF7F && v29)
    {
      MEMORY[0x25F891010](v29, 0x1000C8000313F17);
    }

    v16 = llvm::detail::IEEEFloat::normalize(a1, a4, v15);
    if (v15)
    {
      v17 = v16 | 0x10;
    }

    else
    {
      v17 = v16;
    }

    v18 = *(a1 + 20);
    if ((v18 & 7) == 3 && (v17 & 8) == 0 && ((*(a3 + 20) ^ v18) & 8) != 0)
    {
      v19 = v18 & 0xF3;
      *(a1 + 20) = v19 | (8 * (a4 == 3));
      if (*(*a1 + 20) != 2)
      {
        v19 |= 8 * (a4 == 3);
      }

      *(a1 + 20) = v19;
    }
  }

  return v17;
}

void llvm::detail::DoubleAPFloat::divide(llvm::APFloat **a1, llvm::APFloat **a2, uint64_t a3)
{
  v9[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v7, a1);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v9, &v7);
  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v5, a2);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v7, &v5);
  llvm::APFloat::divide(v9, &v7, a3);
  llvm::APFloat::Storage::~Storage(&v7);
  if (v6 >= 0x41)
  {
    if (v5)
    {
      MEMORY[0x25F891010](v5, 0x1000C8000313F17);
    }
  }

  llvm::APFloat::bitcastToAPInt(v9, &v5);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v7, &llvm::semPPCDoubleDouble, &v5);
}

uint64_t *llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::APFloat **this@<X0>)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::APFloat::bitcastToAPInt(this[1], &v8);
  if (v9 >= 0x41)
  {
    v4 = v8;
  }

  else
  {
    v4 = &v8;
  }

  v10 = *v4;
  llvm::APFloat::bitcastToAPInt(this[1] + 3, &v6);
  if (v7 > 0x40)
  {
    v11 = *v6;
    MEMORY[0x25F891010]();
  }

  else
  {
    v11 = v6;
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  *(a1 + 2) = 128;
  return llvm::APInt::initFromArray(a1, &v10, 2u);
}

uint64_t llvm::APFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::divide(a1, a2, a3);
  }

  return llvm::detail::IEEEFloat::divide(a1, a2, a3);
}

void llvm::detail::DoubleAPFloat::mod(llvm::APFloat **this, llvm::APFloat **a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v5, this);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v7, &v5);
  if (v6 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v3, a2);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v5, &v3);
  llvm::APFloat::mod(v7, &v5);
  llvm::APFloat::Storage::~Storage(&v5);
  if (v4 >= 0x41)
  {
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  llvm::APFloat::bitcastToAPInt(v7, &v3);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v5, &llvm::semPPCDoubleDouble, &v3);
}

uint64_t llvm::APFloat::mod(llvm::APFloat **this, llvm::APFloat **a2)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::mod(this, a2);
  }

  return llvm::detail::IEEEFloat::mod(this, a2);
}

void llvm::detail::DoubleAPFloat::makeLargest(void ***this, int a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5 = 64;
  v4 = 0x7FEFFFFFFFFFFFFFLL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v6, &v4);
  llvm::APFloat::Storage::operator=(this[1], v6);
  llvm::APFloat::Storage::~Storage(v6);
  v5 = 64;
  v4 = 0x7C8FFFFFFFFFFFFELL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v6, &v4);
  llvm::APFloat::Storage::operator=(this[1] + 3, v6);
  llvm::APFloat::Storage::~Storage(v6);
  if (a2)
  {
    llvm::APFloat::changeSign(this[1]);
    llvm::APFloat::changeSign(this[1] + 3);
  }
}

void llvm::APFloat::makeNaN(llvm::APFloat **this, char a2, char a3, const llvm::APInt *a4)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::APFloat::makeNaN(this[1], a2, a3, a4);
    v5 = (this[1] + 24);

    llvm::APFloat::makeZero(v5, 0);
  }

  else
  {

    llvm::detail::IEEEFloat::makeNaN(this, a2, a3, a4);
  }
}

uint64_t llvm::detail::DoubleAPFloat::compare(llvm::APFloat **this, const llvm::APFloat **a2)
{
  result = llvm::APFloat::compare(this[1], a2[1]);
  if (result == 1)
  {
    v5 = (this[1] + 24);
    v6 = (a2[1] + 24);

    return llvm::APFloat::compare(v5, v6);
  }

  return result;
}

uint64_t llvm::APFloat::compare(llvm::APFloat **this, const llvm::APFloat **a2)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::compare(this, a2);
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(this, a2);
  }
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(llvm::APFloat **this, const llvm::APFloat **a2)
{
  result = llvm::APFloat::bitwiseIsEqual(this[1], a2[1]);
  if (result)
  {
    v5 = (this[1] + 24);
    v6 = (a2[1] + 24);

    return llvm::APFloat::bitwiseIsEqual(v5, v6);
  }

  return result;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::DoubleAPFloat *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (v3)
  {
    v9 = llvm::hash_value(v3, a2);
    v8 = llvm::hash_value((*(this + 1) + 24), v4);
    memset(v11, 0, sizeof(v11));
    memset(v10, 0, sizeof(v10));
    v12 = 0;
    v13 = 0xFF51AFD7ED558CCDLL;
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
  }

  else
  {
    v6 = HIDWORD(*this) ^ 0xFF51AFD7ED558CCDLL;
    v7 = 0x9DDFEA08EB382D69 * (v6 ^ (8 * *this + 8));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  }
}

unint64_t llvm::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unint64_t *a4)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::hash_value(this, a2);
  }

  else
  {
    return llvm::detail::hash_value(this, a2, a3, a4);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString(char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, llvm *x8_0@<X8>)
{
  v11[3] = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v11, &llvm::semPPCDoubleDoubleLegacy);
  llvm::APFloat::convertFromString(v11, a2, a3, a4, x8_0);
  llvm::APFloat::bitcastToAPInt(v11, &v9);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, &llvm::semPPCDoubleDouble, &v9);
}

void llvm::APFloat::convertFromString(llvm::detail::IEEEFloat *this@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, llvm *a5@<X8>)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString(a2, a3, a4, a5);
  }

  llvm::detail::IEEEFloat::convertFromString(this, a2, a3, a4, a5);
}

uint64_t llvm::detail::DoubleAPFloat::convertToInteger(llvm::APFloat **a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v18 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v15, a1);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v17, &v15);
  v13 = llvm::APFloat::convertToInteger(v17, a2, a3, a4, a5, a6, a7);
  llvm::APFloat::Storage::~Storage(v17);
  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x25F891010](v15, 0x1000C8000313F17);
  }

  return v13;
}

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::convertToInteger(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertToInteger(a1, a2, a3, a4, a5, a6, a7);
  }
}

void llvm::detail::DoubleAPFloat::convertFromAPInt(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v9[3] = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v9, &llvm::semPPCDoubleDoubleLegacy);
  llvm::APFloat::convertFromAPInt(v9, a2, a3, a4);
  llvm::APFloat::bitcastToAPInt(v9, &v7);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v8, &llvm::semPPCDoubleDouble, &v7);
}

uint64_t llvm::APFloat::convertFromAPInt(llvm::APInt *this, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt(this, a2, a3, a4);
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(this, a2, a3, a4, a5, a6);
}

void llvm::detail::DoubleAPFloat::toString(llvm::APFloat **a1, int a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v3, a1);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v5, &v3);
  llvm::APFloat::toString(v5, a2);
  llvm::APFloat::Storage::~Storage(v5);
  if (v4 >= 0x41)
  {
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }
}

void *llvm::APFloat::Storage::Storage(void *a1, void **a2, void *a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a3 == &llvm::semPPCDoubleDouble)
  {
    v4 = *a2;
    v6 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v6, a2);
    llvm::APFloat::APFloat(v8, &v6, v4);
    llvm::detail::IEEEFloat::IEEEFloat(v7, &llvm::semIEEEdouble);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble, v8, v7);
  }

  *a1 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(a1, a2);
  return a1;
}

llvm::detail::IEEEFloat *llvm::APFloat::APFloat(llvm::detail::IEEEFloat *a1, void *a2, char *a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = llvm::APFloat::Storage::Storage<>(a1, a2);
  llvm::APFloat::convertFromString(v7, a3, a4, 1, &v12);
  v8 = v13;
  if (v13)
  {
    v9 = v12;
    v12 = 0;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if ((v8 & 1) != 0 && v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, unsigned int a3, BOOL *a4)
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (*a1 == a2)
  {
    v7 = 0;
    *a4 = 0;
    return v7;
  }

  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v7 = llvm::detail::IEEEFloat::convert(*(a1 + 8), a2, a3, a4);
    v8 = a1;
    if (*a1 == &llvm::semPPCDoubleDouble)
    {
      v8 = *(a1 + 8);
    }

    v9 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v9, v8);
    llvm::APFloat::APFloat(v12, &v9, a2);
    llvm::APFloat::Storage::operator=(a1, v12);
    llvm::APFloat::Storage::~Storage(v12);
    if ((v9[2] - 64) <= 0xFFFFFF7F && v10)
    {
      MEMORY[0x25F891010](v10, 0x1000C8000313F17);
    }

    return v7;
  }

  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::IEEEFloat::convert(a1, &llvm::semPPCDoubleDoubleLegacy, a3, a4);
    llvm::detail::IEEEFloat::bitcastToAPInt(a1, &v11);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, &llvm::semPPCDoubleDouble, &v11);
  }

  return llvm::detail::IEEEFloat::convert(a1, a2, a3, a4);
}

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  v13 = v15;
  v14 = 0x400000000;
  llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(&v13, (v8 + 63) >> 6);
  v9 = llvm::APFloat::convertToInteger(a1, v13, v14, v8, (*(a2 + 12) & 1) == 0, a3, a4);
  v12 = v8;
  llvm::APInt::initFromArray(&v11, v13, v14);
  if (*(a2 + 8) >= 0x41u && *a2)
  {
    MEMORY[0x25F891010](*a2, 0x1000C8000313F17);
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  v12 = 0;
  if (v13 != v15)
  {
    free(v13);
  }

  return v9;
}

double llvm::APFloat::convertToDouble(llvm::APFloat *this)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (*this == &llvm::semIEEEdouble)
  {

    return llvm::detail::IEEEFloat::convertToDouble(this);
  }

  else
  {
    llvm::APFloat::Storage::Storage(v5, this);
    llvm::APFloat::convert(v5, &llvm::semIEEEdouble, 1u, &v4);
    if (v5[0] == &llvm::semPPCDoubleDouble)
    {
      v1 = v5[1];
    }

    else
    {
      v1 = v5;
    }

    v2 = llvm::detail::IEEEFloat::convertToDouble(v1);
    llvm::APFloat::Storage::~Storage(v5);
    return v2;
  }
}

float llvm::APFloat::convertToFloat(llvm::APFloat *this)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (*this == &llvm::semIEEEsingle)
  {

    return llvm::detail::IEEEFloat::convertToFloat(this);
  }

  else
  {
    llvm::APFloat::Storage::Storage(v5, this);
    llvm::APFloat::convert(v5, &llvm::semIEEEsingle, 1u, &v4);
    if (v5[0] == &llvm::semPPCDoubleDouble)
    {
      v1 = v5[1];
    }

    else
    {
      v1 = v5;
    }

    v2 = llvm::detail::IEEEFloat::convertToFloat(v1);
    llvm::APFloat::Storage::~Storage(v5);
    return v2;
  }
}

uint64_t llvm::APInt::clearUnusedBits(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    if (v1 >= 0x41)
    {
      v3 = (*this + 8 * (((v1 + 63) >> 6) - 1));
      goto LABEL_5;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = this;
LABEL_5:
  *v3 &= v2;
  return this;
}

uint64_t llvm::APInt::flipAllBits(uint64_t this)
{
  if (*(this + 8) > 0x40u)
  {
    return llvm::APInt::flipAllBitsSlowCase(this);
  }

  *this = ~*this;
  return llvm::APInt::clearUnusedBits(this);
}

void *llvm::APFloat::APFloat(void *a1, uint64_t a2, void *a3)
{
  v6 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(&v6, a2);
  llvm::APFloat::Storage::Storage(a1, &v6, a3);
  if ((v6[2] - 64) <= 0xFFFFFF7F && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  return a1;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::operator=(llvm::detail::IEEEFloat *result, llvm::detail::IEEEFloat **a2)
{
  v3 = *a2;
  if (*result == &llvm::semPPCDoubleDouble)
  {
    if (v3 == &llvm::semPPCDoubleDouble)
    {
      return llvm::detail::DoubleAPFloat::operator=(result, a2);
    }
  }

  else if (v3 != &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::IEEEFloat::operator=(result, a2);
  }

  if (result != a2)
  {
    llvm::APFloat::Storage::~Storage(result);
    return llvm::APFloat::Storage::Storage(v4, a2);
  }

  return result;
}

uint64_t llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v2, &v3);
  result = v2;
  if (v2)
  {
    return (*(*v2 + 8))(v2);
  }

  return result;
}

void *llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(void *result@<X0>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, &llvm::ErrorList::ID))
    {
      *a3 = 0;
      v5 = v4[1];
      v6 = v4[2];
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v11 = v7;
          v8 = *v5;
          *v5 = 0;
          if ((*(*v8 + 48))(v8, &llvm::ErrorInfoBase::ID))
          {
            (*(*v8 + 8))(v8);
            v8 = 0;
          }

          v10 = v8;
          llvm::ErrorList::join(&v11, &v10, &v12);
          v7 = v12;
          *a3 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          ++v5;
        }

        while (v5 != v6);
      }

      return (*(*v4 + 8))(v4);
    }

    else
    {
      v9 = v4;
      llvm::handleErrorImpl<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v9, a3);
      result = v9;
      v9 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t *llvm::ErrorList::join@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  v7 = *a2;
  if (!result)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*result + 48))(result, &llvm::ErrorList::ID))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            result = std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            result = (*(*v10 + 8))(v10);
          }

LABEL_21:
          *a3 = *a1;
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      *a2 = 0;
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](v8 + 1, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_21;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v15 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return result;
  }

  *a3 = result;
LABEL_22:
  *a1 = 0;
  return result;
}

uint64_t llvm::handleErrorImpl<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(**a1 + 48))(*a1, &llvm::ErrorInfoBase::ID);
  result = *a1;
  *a1 = 0;
  if (v4)
  {
    *a2 = 0;
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__throw_length_error[abi:nn200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v32 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(a1, v18);
    }

    v29 = 0;
    v30 = 8 * v19;
    v31 = (8 * v19);
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(&v29);
    return v21;
  }

  else if (a2 == v6)
  {
    v20 = *a3;
    *a3 = 0;
    *v6 = v20;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = v6 + 1;
    }

    a1[1] = v9;
    std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:nn200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::ErrorInfoBase>>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

_BYTE *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(uint64_t a1, uint64_t *a2, _BYTE *__dst, unint64_t a4, char a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(v14, a1, *(a1 + 120), v9, v10);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 1 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 1 - v8);
      a1 += 1 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int,int,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _BYTE *a3, char *a4, char *a5, int *a6, int *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, _DWORD *a3, char *a4, int *a5, uint64_t *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

_DWORD *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<int>(uint64_t a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(v14, a1, *(a1 + 120), v9, v10);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 4 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 4 - v8);
      a1 += 4 - v8;
    }
  }

  return a1;
}

void llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 8 * v2), 8 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::APInt::initFromArray(llvm::APInt *this, void *a2, unsigned int a3)
{
  if (*(this + 2) > 0x40u)
  {
    operator new[]();
  }

  *this = *a2;

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::reallocate(uint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 8);
  if ((a2 + 63) >> 6 == (v4 + 63) >> 6)
  {
    *(this + 8) = a2;
  }

  else
  {
    if (v4 >= 0x41)
    {
      this = *this;
      if (*v3)
      {
        this = MEMORY[0x25F891010]();
      }
    }

    *(v3 + 8) = a2;
    if (a2 >= 0x41)
    {
      operator new[]();
    }
  }

  return this;
}

const llvm::APInt *llvm::APInt::assignSlowCase(const llvm::APInt *this, const llvm::APInt *a2)
{
  if (this != a2)
  {
    v3 = this;
    this = llvm::APInt::reallocate(this, *(a2 + 2));
    v4 = *(v3 + 2);
    if (v4 > 0x40)
    {
      v5 = *v3;
      v6 = *a2;

      return memcpy(v5, v6, ((v4 + 63) >> 3) & 0x3FFFFFF8);
    }

    else
    {
      *v3 = *a2;
    }
  }

  return this;
}

uint64_t llvm::APInt::operator++(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 > 0x40)
  {
    v2 = *this;
    v3 = **this;
    **this = v3 + 1;
    if (v3 == -1)
    {
      v4 = (v1 + 63) >> 6;
      v5 = v2 + 1;
      v6 = v4 - 1;
      do
      {
        if (!v6)
        {
          break;
        }

        --v6;
      }

      while (__CFADD__((*v5++)++, 1));
    }
  }

  else
  {
    ++*this;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator+=(uint64_t this, void **a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = 0;
    v4 = *this;
    v5 = *a2;
    v6 = (v2 + 63) >> 6;
    do
    {
      v7 = *v5++;
      v8 = v7 + *v4;
      v9 = __CFADD__(v7, *v4);
      v10 = (v8 + 1) <= *v4;
      if (v3)
      {
        ++v8;
        v3 = v10;
      }

      else
      {
        v3 = v9;
      }

      *v4++ = v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    *this += *a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator+=(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = *this;
    v4 = ((v2 + 63) >> 6) - 1;
    do
    {
      v5 = *v3 + a2;
      *v3++ = v5;
      v6 = v5 >= a2 || v4-- == 0;
      a2 = 1;
    }

    while (!v6);
  }

  else
  {
    *this += a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator-=(uint64_t this, void **a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = 0;
    v4 = *this;
    v5 = *a2;
    v6 = (v2 + 63) >> 6;
    do
    {
      v7 = *v5++;
      v8 = *v4 - v7;
      v9 = *v4 < v7;
      v10 = *v4 + ~v7;
      if (v3)
      {
        v3 = v10 >= *v4;
      }

      else
      {
        v10 = v8;
        v3 = v9;
      }

      *v4++ = v10;
      --v6;
    }

    while (v6);
  }

  else
  {
    *this -= *a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator-=(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    v3 = *this;
    v4 = ((v2 + 63) >> 6) - 1;
    do
    {
      v5 = *v3 >= a2 || v4-- == 0;
      *v3++ -= a2;
      a2 = 1;
    }

    while (!v5);
  }

  else
  {
    *this -= a2;
  }

  return llvm::APInt::clearUnusedBits(this);
}

uint64_t llvm::APInt::operator*@<X0>(uint64_t a1@<X0>, const unint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v5 = *a2 * *a1;
  *(a3 + 8) = v4;
  *a3 = v5;

  return llvm::APInt::clearUnusedBits(a3);
}

uint64_t llvm::APInt::tcMultiply(llvm::APInt *this, unint64_t *a2, const unint64_t **a3, const unint64_t *a4, unsigned int a5, uint64_t a6, uint64_t a7, BOOL a8)
{
  if (!a4)
  {
    return 0;
  }

  v11 = 0;
  LODWORD(v12) = 0;
  v13 = a4;
  do
  {
    v14 = *a3++;
    v15 = v11 - 1;
    v12 = llvm::APInt::tcMultiplyPart(this, a2, v14, 0, v13, v13 + v11, v11 != 0) | v12;
    this = (this + 8);
    v11 = v15;
  }

  while (v13 + v15);
  return v12;
}

uint64_t llvm::APInt::operator*=(uint64_t a1, const unint64_t **a2)
{
  llvm::APInt::operator*(a1, a2, &v4);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x25F891010](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::APInt::tcMultiplyPart(llvm::APInt *this, unint64_t *a2, const unint64_t *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a5 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (v7)
  {
    v8 = a2;
    v9 = this;
    do
    {
      v10 = 0;
      v12 = *v8++;
      v11 = v12;
      if (a3 && v11)
      {
        v13 = v11;
        v14 = v11 * a3;
        v15 = HIDWORD(v11);
        v16 = v13 * HIDWORD(a3);
        v17 = HIDWORD(v16) + v15 * HIDWORD(a3);
        v18 = v15 * a3;
        v19 = ((v16 + v18) << 32) + v13 * a3;
        v20 = v19 + a4;
        v10 = (__PAIR128__((__PAIR128__(v17, v14) + __PAIR128__(HIDWORD(v18), v16 << 32)) >> 64, v19) + __PAIR128__(v19 < v14 + (v16 << 32), a4)) >> 64;
        a4 = v20;
      }

      if (a7)
      {
        if (__CFADD__(a4, *v9))
        {
          ++v10;
        }

        a4 += *v9;
      }

      *v9 = a4;
      v9 = (v9 + 8);
      a4 = v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = a4;
  }

  if (a5 < a6)
  {
    v21 = 0;
    *(this + a5) = v10;
    return v21;
  }

  if (v10)
  {
    return 1;
  }

  v21 = 0;
  if (a3 && a6 < a5)
  {
    v23 = &a2[a6];
    v24 = a5 - a6;
    while (!*v23++)
    {
      if (!--v24)
      {
        return 0;
      }
    }

    return 1;
  }

  return v21;
}

uint64_t llvm::APInt::compare(llvm::APInt *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = ((v2 + 63) >> 3) & 0x3FFFFFF8;
    do
    {
      if (!v4)
      {
        return 0;
      }

      v5 = *(*this - 8 + v4);
      v6 = *(*a2 - 8 + v4);
      v4 -= 8;
    }

    while (v5 == v6);
    if (v5 > v6)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this > *a2;
  }
}

uint64_t llvm::APInt::compareSigned(llvm::APInt *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v10 = *(*this + 8 * ((v2 - 1) >> 6)) & (1 << (v2 - 1));
    v11 = *(a2 + 2);
    v12 = v11 - 1;
    if (v11 >= 0x41)
    {
      v13 = (*a2 + 8 * (v12 >> 6));
    }

    else
    {
      v13 = a2;
    }

    if ((v10 != 0) == ((*v13 >> v12) & 1))
    {
      v14 = ((v2 + 63) >> 3) & 0x3FFFFFF8;
      do
      {
        if (!v14)
        {
          return 0;
        }

        v15 = *(*this - 8 + v14);
        v16 = *(*a2 - 8 + v14);
        v14 -= 8;
      }

      while (v15 == v16);
      if (v15 > v16)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v3 = -v2;
    v4 = v2 == 0;
    if (v2)
    {
      v5 = (*this << -v2) >> -v2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (*a2 << v3) >> v3;
    if (v4)
    {
      v6 = 0;
    }

    v7 = v5 < v6;
    v8 = v5 > v6;
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v8;
    }
  }
}

void *llvm::APInt::setBitsSlowCase(void *this, unsigned int a2, unsigned int a3)
{
  v3 = a2 >> 6;
  v4 = a3 >> 6;
  v5 = -1 << a2;
  if ((a3 & 0x3F) != 0)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -(a3 & 0x3F);
    if (v4 == v3)
    {
      v5 &= v6;
    }

    else
    {
      *(*this + 8 * v4) |= v6;
    }
  }

  *(*this + 8 * v3) |= v5;
  v7 = v3 + 1;
  if (v7 < v4)
  {
    do
    {
      *(*this + 8 * v7++) = -1;
    }

    while (v4 != v7);
  }

  return this;
}

uint64_t llvm::APInt::flipAllBitsSlowCase(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = *this;
    v3 = (v1 + 63) >> 6;
    do
    {
      *v2 = ~*v2;
      ++v2;
      --v3;
    }

    while (v3);
  }

  return llvm::APInt::clearUnusedBits(this);
}

void llvm::APInt::zext(llvm::APInt *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, unsigned int a3@<W1>)
{
  if (a3 > 0x40)
  {
    if (*(this + 2) != a3)
    {
      operator new[]();
    }

    llvm::APInt::APInt(a1, this);
  }

  else
  {
    v4 = *this;
    *(a1 + 2) = a3;
    *a1 = v4;
  }
}

llvm::APInt *llvm::APInt::operator=(llvm::APInt *this, const llvm::APInt *a2)
{
  if (*(this + 2) > 0x40u || *(a2 + 2) > 0x40u)
  {
    llvm::APInt::assignSlowCase(this, a2);
  }

  else
  {
    *this = *a2;
    *(this + 2) = *(a2 + 2);
  }

  return this;
}

void llvm::APInt::extractBits(llvm::APInt *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, llvm::APInt *a4@<X8>)
{
  v6 = *(this + 2);
  if (v6 <= 0x40)
  {
    v7 = *this >> a3;
LABEL_5:
    *(a4 + 2) = a2;
    if (a2 > 0x40)
    {
      operator new[]();
    }

    *a4 = v7;

    llvm::APInt::clearUnusedBits(a4);
    return;
  }

  v8 = a3 & 0x3F;
  v9 = a3 >> 6;
  v10 = (a2 + a3 - 1) >> 6;
  if (v10 == a3 >> 6)
  {
    v7 = *(*this + 8 * v9) >> v8;
    goto LABEL_5;
  }

  if ((a3 & 0x3F) != 0)
  {
    v20 = a2;
    if (a2 >= 0x41)
    {
      operator new[]();
    }

    v19 = 0;
    v11 = &v19;
    if (a2)
    {
      v13 = (v6 + 63) >> 6;
      v14 = (*this + 8 * v9 + 8);
      v15 = v9 + 1;
      v16 = (a2 + 63) >> 6;
      do
      {
        if (v15 >= v13)
        {
          v17 = 0;
        }

        else
        {
          v17 = *v14;
        }

        *v11++ = (v17 << (64 - v8)) | (*(v14++ - 1) >> v8);
        ++v15;
        --v16;
      }

      while (v16);
      v18 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    }

    else
    {
      v18 = 0;
    }

    v19 &= v18;
    llvm::APInt::APInt(a4, &v19);
    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  else
  {
    v12 = (*this + 8 * v9);
    *(a4 + 2) = a2;

    llvm::APInt::initFromArray(a4, v12, v10 - v9 + 1);
  }
}

llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, const void **a2)
{
  v2 = *(a2 + 2);
  *(this + 2) = v2;
  if (v2 > 0x40)
  {
    operator new[]();
  }

  *this = *a2;
  return this;
}

unint64_t llvm::hash_value(llvm::hashing::detail::hash_state **this, const llvm::APInt *a2, uint64_t a3, unint64_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = (this + 1);
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    v7 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long>(*this, *this + (((v4 + 63) >> 3) & 0x3FFFFFF8), a3, a4);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    v15 = 0;
    v16 = 0xFF51AFD7ED558CCDLL;
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,llvm::hash_code>(&v8, 0, &v8, &v12, v5, &v7);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    v15 = 0;
    v16 = 0xFF51AFD7ED558CCDLL;
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,unsigned long long>(&v8, 0, &v8, &v12, v5, this);
  }
}

BOOL llvm::APInt::operator==(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2 > 0x40)
  {
    return memcmp(*a1, *a2, ((v2 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    return *a1 == *a2;
  }
}

void *llvm::APInt::getLowBitsSet@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, llvm::APInt *a3@<X8>)
{
  *(a3 + 2) = this;
  if (this >= 0x41)
  {
    operator new[]();
  }

  *a3 = 0;

  return llvm::APInt::setBits(a3, 0, a2);
}

uint64_t llvm::APInt::countLeadingZerosSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = 0;
    v3 = ((v1 + 63) >> 6) + 1;
    while (1)
    {
      v4 = *(*this + 8 * (v3 - 2));
      if (v4)
      {
        break;
      }

      v2 += 64;
      if (--v3 <= 1)
      {
        goto LABEL_8;
      }
    }

    v2 += __clz(v4);
  }

  else
  {
    v2 = 0;
  }

LABEL_8:
  if ((v1 & 0x3F) != 0)
  {
    v5 = v1 | 0xFFFFFFC0;
  }

  else
  {
    v5 = 0;
  }

  return (v2 + v5);
}