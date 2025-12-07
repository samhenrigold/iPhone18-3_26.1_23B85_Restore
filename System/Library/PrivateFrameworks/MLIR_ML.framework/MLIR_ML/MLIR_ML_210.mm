uint64_t llvm::APFloat::multiply(llvm::detail::IEEEFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {
    v12 = (a2 + 8);
    v13 = (this + 8);

    return llvm::detail::DoubleAPFloat::multiply(v13, v12, a3, a4);
  }

  else
  {
    *(this + 28) ^= *(a2 + 28) & 8;
    result = llvm::detail::IEEEFloat::multiplySpecials((this + 8), (a2 + 8), a3, a4);
    v11 = *(this + 28);
    if ((v11 & 7) == 3)
    {
      if (*(*v5 + 5) == 2)
      {
        *(this + 28) = v11 & 0xF3;
      }
    }

    else if ((*(this + 28) & 6) != 0)
    {
      v14 = llvm::detail::IEEEFloat::multiplySignificand(v5, (a2 + 8), v9, v10);
      LODWORD(result) = llvm::detail::IEEEFloat::normalize(v5, a3, v14);
      if (v14)
      {
        return result | 0x10;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t llvm::APFloat::fusedMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v9 = (a3 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::fusedMultiplyAdd(v6, v8, v9, a4);
  }

  return llvm::detail::IEEEFloat::fusedMultiplyAdd(v6, v8, v9, a4, a5, a6);
}

void llvm::detail::DoubleAPFloat::divide(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v19, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v23, &v19, v6, v7);
  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v17, a2, v8);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v20, &v17, v9, v10);
  if (v23 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::divide(&v23, &v20, a3);
  }

  else
  {
    v24 ^= v22 & 8;
    llvm::detail::IEEEFloat::divideSpecials(&v23, &v20, v11, v12);
    if ((v24 & 7) == 3)
    {
      if (*(v23 + 20) == 2)
      {
        v24 &= 0xF3u;
      }
    }

    else if ((v24 & 6) != 0)
    {
      v15 = llvm::detail::IEEEFloat::divideSignificand(&v23, &v20, v13);
      llvm::detail::IEEEFloat::normalize(&v23, a3, v15);
    }
  }

  if (v20 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
  }

  else if ((*(v20 + 8) - 64) <= 0xFFFFFF7F && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v23 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v16, &v23, v14);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v16, &v23);
  }

  v16[2] = &llvm::semPPCDoubleDouble;
  operator new[]();
}

uint64_t *llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(llvm::APInt *__return_ptr a1@<X8>, llvm::detail::DoubleAPFloat *this@<X0>, unsigned int a3@<W3>)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v7 = *(v5 + 8);
  v6 = (v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v16, v6, a3);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v16, v6);
  }

  v9 = &v16;
  if (v17 >= 0x41)
  {
    v9 = v16;
  }

  v18 = *v9;
  v10 = *(this + 1);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  if (v12 != &llvm::semPPCDoubleDouble)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v14, v11);
    if (v15 <= 0x40)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19 = *v14;
    MEMORY[0x259C63150]();
    if (v17 < 0x41)
    {
      return llvm::APInt::APInt(a1, 128, 2u, &v18);
    }

    goto LABEL_12;
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v14, v11, v8);
  if (v15 > 0x40)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = v14;
  if (v17 < 0x41)
  {
    return llvm::APInt::APInt(a1, 128, 2u, &v18);
  }

LABEL_12:
  if (v16)
  {
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

  return llvm::APInt::APInt(a1, 128, 2u, &v18);
}

void llvm::detail::DoubleAPFloat::remainder(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  v20[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v17, this, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v20, &v17, v5, v6);
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v15, a2, v7);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v18, &v15, v8, v9);
  if (v20[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::remainder(v20, &v18, v10, v11);
    v13 = v18;
    if (v18 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::remainder(v20, &v18, v10, v11);
    v13 = v18;
    if (v18 != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      if ((v13[2] - 64) <= 0xFFFFFF7F && v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }

LABEL_11:
      if (v16 >= 0x41 && v15)
      {
        MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }

      if (v20[0] == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v14, v20, v12);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v14, v20);
      }

      v14[2] = &llvm::semPPCDoubleDouble;
      operator new[]();
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
  goto LABEL_11;
}

void llvm::detail::DoubleAPFloat::mod(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  v20[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v17, this, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v20, &v17, v5, v6);
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v15, a2, v7);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v18, &v15, v8, v9);
  if (v20[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::mod(v20, &v18, v10, v11);
    v13 = v18;
    if (v18 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::mod(v20, &v18, v10, v11);
    v13 = v18;
    if (v18 != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      if ((v13[2] - 64) <= 0xFFFFFF7F && v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }

LABEL_11:
      if (v16 >= 0x41 && v15)
      {
        MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }

      if (v20[0] == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v14, v20, v12);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v14, v20);
      }

      v14[2] = &llvm::semPPCDoubleDouble;
      operator new[]();
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
  goto LABEL_11;
}

void llvm::detail::DoubleAPFloat::fusedMultiplyAdd(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, uint64_t a4)
{
  v28[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v25, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v28, &v25, v7, v8);
  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v21, a2, v9);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v26, &v21, v10, v11);
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v19, a3, v12);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v23, &v19, v13, v14);
  if (v28[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::fusedMultiplyAdd(v28, &v26, &v23, a4);
    v18 = v23;
    if (v23 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::fusedMultiplyAdd(v28, &v26, &v23, a4, v15, v16);
    v18 = v23;
    if (v23 != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      if ((v18[2] - 64) <= 0xFFFFFF7F && v24)
      {
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }

LABEL_11:
      if (v20 >= 0x41 && v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }

      if (v26 == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
      }

      else if ((*(v26 + 8) - 64) <= 0xFFFFFF7F && v27)
      {
        MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      }

      if (v22 >= 0x41 && v21)
      {
        MEMORY[0x259C63150](v21, 0x1000C8000313F17);
      }

      if (v28[0] == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(&v19, v28, v17);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(&v19, v28);
      }

      v21 = &llvm::semPPCDoubleDouble;
      operator new[]();
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
  goto LABEL_11;
}

void llvm::detail::DoubleAPFloat::roundToIntegral(llvm::detail::DoubleAPFloat *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v11, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v13, &v11, v5, v6);
  if (v12 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v13[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::roundToIntegral(v13, a2, v7, v8);
    if (v13[0] != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::roundToIntegral(v13, a2, v7, v8);
    if (v13[0] != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      llvm::detail::IEEEFloat::bitcastToAPInt(v10, v13);
      goto LABEL_9;
    }
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(v10, v13, v9);
LABEL_9:
  v10[2] = &llvm::semPPCDoubleDouble;
  operator new[]();
}

uint64_t llvm::detail::DoubleAPFloat::compareAbsoluteValue(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  v6 = *(this + 1);
  v7 = *(a2 + 1);
  v8 = *(v6 + 1);
  if (v8 == &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::DoubleAPFloat::compareAbsoluteValue((v6 + 2), (v7 + 8), a3, a4);
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    v9 = v6[6];
    v10 = *(v7 + 24);
    v11 = v9 - v10;
    if (v9 == v10)
    {
      v13 = *(v8 + 8);
      v14 = (v6 + 4);
      if ((v13 - 64) <= 0xFFFFFF7F)
      {
        v14 = *v14;
      }

      v17 = *(v7 + 16);
      v15 = (v7 + 16);
      v16 = v17;
      if ((*(*(v15 - 1) + 8) - 64) >= 0xFFFFFF80)
      {
        v18 = v15;
      }

      else
      {
        v18 = v16;
      }

      v11 = llvm::APInt::tcCompare(v14, v18, ((v13 + 64) >> 6));
      if (v11 > 0)
      {
        return 2;
      }
    }

    else if (v11 > 0)
    {
      return 2;
    }

    result = v11 >= 0;
    if (result != 1)
    {
      return result;
    }
  }

  v19 = *(this + 1);
  v20 = *(a2 + 1);
  v21 = *(v19 + 5);
  if (v21 == &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::DoubleAPFloat::compareAbsoluteValue((v19 + 10), (v20 + 40), a3, a4);
    if ((result & 0xFFFFFFFD) != 0)
    {
      return result;
    }

LABEL_29:
    v31 = *(this + 1);
    v32 = v31;
    if (*(v31 + 8) == &llvm::semPPCDoubleDouble)
    {
      v32 = *(v31 + 16);
    }

    v33 = *(v32 + 28);
    if (*(v31 + 40) == &llvm::semPPCDoubleDouble)
    {
      v34 = *(v31 + 48);
    }

    else
    {
      v34 = v31 + 32;
    }

    v35 = v33 ^ *(v34 + 28);
    v36 = *(a2 + 1);
    v37 = v36;
    if (*(v36 + 8) == &llvm::semPPCDoubleDouble)
    {
      v37 = *(v36 + 16);
    }

    v38 = (v35 >> 3) & 1;
    v39 = *(v37 + 28);
    if (*(v36 + 40) == &llvm::semPPCDoubleDouble)
    {
      v40 = ((v39 ^ *(*(v36 + 48) + 28)) >> 3) & 1;
      v41 = v38 ^ 1;
      if ((v38 ^ 1))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v40 = ((v39 ^ *(v36 + 60)) >> 3) & 1;
      v41 = v38 ^ 1;
      if ((v38 ^ 1))
      {
LABEL_42:
        if (v41 & v40)
        {
          return 2;
        }

        if ((v38 | v40) & 1) != 0 && (v38 & v40)
        {
          return (2 - result);
        }

        return result;
      }
    }

    if (!v40)
    {
      return 0;
    }

    goto LABEL_42;
  }

  v22 = v19[14];
  v23 = *(v20 + 56);
  v24 = v22 - v23;
  if (v22 == v23)
  {
    v25 = *(v21 + 8);
    v26 = (v19 + 12);
    if ((v25 - 64) <= 0xFFFFFF7F)
    {
      v26 = *v26;
    }

    v29 = *(v20 + 48);
    v27 = (v20 + 48);
    v28 = v29;
    if ((*(*(v27 - 1) + 8) - 64) >= 0xFFFFFF80)
    {
      v30 = v27;
    }

    else
    {
      v30 = v28;
    }

    v24 = llvm::APInt::tcCompare(v26, v30, ((v25 + 64) >> 6));
  }

  if (v24 <= 0)
  {
    result = v24 >= 0;
  }

  else
  {
    result = 2;
  }

  if ((result & 0xFFFFFFFD) == 0)
  {
    goto LABEL_29;
  }

  return result;
}

void llvm::detail::DoubleAPFloat::makeInf(llvm::detail::DoubleAPFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = *(this + 1);
  v6 = (v5 + 8);
  v7 = *(v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeInf(v6, a2, a2, a4);
  }

  else if (*(v7 + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(v6, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    *(v5 + 28) = *(v5 + 28) & 0xF0 | v10;
    *(v5 + 24) = *v7 + 1;
    v11 = *(v7 + 8);
    v12 = (v5 + 16);
    if ((v11 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    llvm::APInt::tcSet(v12, 0, (v11 + 64) >> 6);
  }

  v13 = (*(this + 1) + 32);

  llvm::APFloat::makeZero(v13, 0, v8, v9);
}

void llvm::detail::DoubleAPFloat::makeZero(llvm::APFloat **this, _BOOL4 a2, uint64_t a3, unsigned int a4)
{
  llvm::APFloat::makeZero(this[1], a2, a3, a4);
  v7 = (this[1] + 32);

  llvm::APFloat::makeZero(v7, 0, v5, v6);
}

void llvm::detail::DoubleAPFloat::makeLargest(llvm::detail::DoubleAPFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 64;
  v8 = 0x7FEFFFFFFFFFFFFFLL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v10, &v8, a3, a4);
  llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v10);
  if (v10.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
  }

  else if ((*(v10.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v10.n128_u64[1])
  {
    MEMORY[0x259C63150](v10.n128_u64[1], 0x1000C8000313F17);
  }

  v9 = 64;
  v8 = 0x7C8FFFFFFFFFFFFELL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v10, &v8, v6, v7);
  llvm::APFloat::Storage::operator=((*(this + 1) + 40), &v10);
  if (v10.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
  }

  else if ((*(v10.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v10.n128_u64[1])
  {
    MEMORY[0x259C63150](v10.n128_u64[1], 0x1000C8000313F17);
  }

  if (a2)
  {
    llvm::detail::DoubleAPFloat::changeSign(this);
  }
}

void llvm::detail::DoubleAPFloat::makeSmallest(llvm::detail::DoubleAPFloat *this, _BOOL4 a2, uint64_t a3, unsigned int a4)
{
  v5 = *(this + 1);
  v6 = *(v5 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeSmallest((v5 + 8), a2, a3, a4);
  }

  else
  {
    if (a2)
    {
      v7 = 10;
    }

    else
    {
      v7 = 2;
    }

    *(v5 + 28) = *(v5 + 28) & 0xF0 | v7;
    v9 = *(v6 + 4);
    v8 = *(v6 + 8);
    *(v5 + 24) = v9;
    v10 = (v5 + 16);
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    llvm::APInt::tcSet(v10, 1, (v8 + 64) >> 6);
  }

  v13 = (*(this + 1) + 32);

  llvm::APFloat::makeZero(v13, 0, v11, v12);
}

void llvm::detail::DoubleAPFloat::makeSmallestNormalized(llvm::detail::DoubleAPFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 64;
  v13 = 0x360000000000000;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v15, &v13, a3, a4);
  llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v15);
  if (v15.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v15);
  }

  else if ((*(v15.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v15.n128_u64[1])
  {
    MEMORY[0x259C63150](v15.n128_u64[1], 0x1000C8000313F17);
  }

  if (a2)
  {
    v8 = *(this + 1);
    v9 = *(v8 + 8);
    if (v9 == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::changeSign((v8 + 8));
    }

    else
    {
      v10 = *(v9 + 20);
      v11 = *(v8 + 28);
      if (v10 != 2 || (v11 & 5 | 2) != 3)
      {
        *(v8 + 28) = v11 ^ 8;
      }
    }
  }

  llvm::APFloat::makeZero((*(this + 1) + 32), 0, v6, v7);
}

uint64_t llvm::detail::DoubleAPFloat::compare(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  do
  {
    v6 = *(this + 1);
    v8 = *(v6 + 8);
    v7 = (v6 + 8);
    v9 = (*(a2 + 1) + 8);
    if (v8 == &llvm::semPPCDoubleDouble)
    {
      result = llvm::detail::DoubleAPFloat::compare(v7, v9, a3, a4);
      if (result != 1)
      {
        return result;
      }
    }

    else
    {
      result = llvm::detail::IEEEFloat::compare(v7, v9, a3, a4);
      if (result != 1)
      {
        return result;
      }
    }

    v11 = *(this + 1);
    v12 = *(a2 + 1);
    v13 = *(v11 + 40);
    this = (v11 + 40);
    a2 = (v12 + 40);
  }

  while (v13 == &llvm::semPPCDoubleDouble);

  return llvm::detail::IEEEFloat::compare(this, (v12 + 40), a3, a4);
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  result = llvm::APFloat::bitwiseIsEqual(*(this + 1), *(a2 + 1));
  if (result)
  {
    v5 = *(this + 1) + 32;
    v6 = *(a2 + 1) + 32;

    return llvm::APFloat::bitwiseIsEqual(v5, v6);
  }

  return result;
}

uint64_t llvm::APFloat::bitwiseIsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    return 0;
  }

  v5 = a2;
  v6 = a1;
  if (v2 == &llvm::semPPCDoubleDouble)
  {
    while (1)
    {
      result = llvm::APFloat::bitwiseIsEqual(*(v6 + 16), *(v5 + 16));
      if (!result)
      {
        break;
      }

      v7 = *(v6 + 16);
      v8 = *(v5 + 16);
      v2 = *(v7 + 40);
      v3 = *(v8 + 40);
      if (v2 != v3)
      {
        return 0;
      }

      v6 = v7 + 32;
      v5 = v8 + 32;
      if (v2 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v6 == v5)
    {
      return 1;
    }

    v9 = *(v6 + 28);
    v10 = *(v5 + 28);
    if ((v9 & 7) != (v10 & 7) || ((v10 ^ v9) & 8) != 0)
    {
      return 0;
    }

    result = 1;
    if ((v9 & 7) == 0 || (v9 & 7) == 3)
    {
      return result;
    }

    if ((v9 & 6) != 0 && *(v6 + 24) != *(v5 + 24))
    {
      return 0;
    }

    v11 = *(v2 + 8);
    v12 = (v6 + 16);
    if ((v11 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    v13 = v11 + 64;
    v16 = *(v5 + 16);
    v15 = (v5 + 16);
    v14 = v16;
    if ((*(v3 + 8) - 64) >= 0xFFFFFF80)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    return memcmp(v12, v17, (v13 >> 3) & 0x1FFFFFF8) == 0;
  }

  return result;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::DoubleAPFloat *a2)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v12 = HIDWORD(*this) ^ 0xFF51AFD7ED558CCDLL;
    v13 = 0x9DDFEA08EB382D69 * ((8 * *this + 8) ^ v12);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  }

  v5 = *(v3 + 8);
  v4 = (v3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    v7 = llvm::detail::hash_value(v4, a2);
    v15 = *(this + 1);
    v16 = *(v15 + 40);
    v9 = (v15 + 40);
    if (v16 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = llvm::detail::hash_value(v9, v6);
    goto LABEL_8;
  }

  v7 = llvm::detail::hash_value(v4, a2);
  v8 = *(this + 1);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = llvm::detail::hash_value(v9, v6);
LABEL_8:
  v17 = __ROR8__(v11 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)))) >> 47))) ^ v11;
}

unint64_t llvm::hash_value(llvm *this, const llvm::APFloat *a2)
{
  v3 = *(this + 1);
  v2 = (this + 8);
  if (v3 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::hash_value(v2, a2);
  }

  else
  {
    return llvm::detail::hash_value(v2, a2);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

void llvm::APFloat::convertFromString(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString();
  }

  llvm::detail::IEEEFloat::convertFromString(v5, a2, a3, a4, a5);
}

void llvm::detail::DoubleAPFloat::next(llvm::detail::DoubleAPFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  v13[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v11, this, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v13, &v11, v5, v6);
  if (v12 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v13[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::next(v13, a2, v7, v8);
    if (v13[0] != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::next(v13, a2, v7, v8);
    if (v13[0] != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      llvm::detail::IEEEFloat::bitcastToAPInt(v10, v13);
      goto LABEL_9;
    }
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(v10, v13, v9);
LABEL_9:
  v10[2] = &llvm::semPPCDoubleDouble;
  operator new[]();
}

uint64_t llvm::detail::DoubleAPFloat::convertToInteger(llvm::detail::DoubleAPFloat *a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v18, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v20, &v18, v13, v14);
  if (v20 == &llvm::semPPCDoubleDouble)
  {
    v15 = llvm::detail::DoubleAPFloat::convertToInteger(&v20, a2, a3, a4, a5, a6, a7);
    v16 = v20;
    if (v20 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
    goto LABEL_8;
  }

  v15 = llvm::detail::IEEEFloat::convertToInteger(&v20, a2, a3, a4, a5, a6, a7);
  v16 = v20;
  if (v20 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v16[2] - 64) <= 0xFFFFFF7F && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

LABEL_8:
  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
  }

  return v15;
}

void llvm::detail::DoubleAPFloat::convertFromAPInt(llvm::detail::DoubleAPFloat *a1, unsigned int *a2, int a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

void llvm::detail::DoubleAPFloat::convertFromSignExtendedInteger(llvm::detail::DoubleAPFloat *a1, llvm::APInt *a2, unint64_t *a3, int a4, uint64_t a5)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

void llvm::detail::DoubleAPFloat::convertFromZeroExtendedInteger(llvm::detail::DoubleAPFloat *a1, llvm::APInt *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

uint64_t llvm::detail::DoubleAPFloat::convertToHexString(llvm::detail::DoubleAPFloat *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v25, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v27, &v25, v9, v10);
  if (v27 == &llvm::semPPCDoubleDouble)
  {
    v15 = llvm::detail::DoubleAPFloat::convertToHexString(&v27, a2, a3, a4, a5);
    v16 = v27;
    if (v27 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v11 = v29;
  v12 = a2;
  if ((v29 & 8) != 0)
  {
    *a2 = 45;
    v12 = a2 + 1;
  }

  v13 = v11 & 7;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v12 = llvm::detail::IEEEFloat::convertNormalToHexString(&v27, v12, a3, a4, a5);
    }

    else if (v13 == 3)
    {
      *v12 = 48;
      if (a4)
      {
        v17 = 88;
      }

      else
      {
        v17 = 120;
      }

      v12[1] = v17;
      v12[2] = 48;
      if (a3 < 2)
      {
        v20 = v12 + 3;
      }

      else
      {
        v18 = v12 + 4;
        v12[3] = 46;
        v19 = (a3 - 1);
        memset(v12 + 4, 48, v19);
        v20 = &v18[v19];
      }

      if (a4)
      {
        v24 = 80;
      }

      else
      {
        v24 = 112;
      }

      *v20 = v24;
      *(v20 + 1) = 48;
      v15 = (v20 + 2 - a2);
      v16 = v27;
      if (v27 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_25;
      }

LABEL_11:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v27);
      goto LABEL_28;
    }

    *v12 = 0;
    v15 = (v12 - a2);
    v16 = v27;
    if (v27 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (v13)
  {
    v14 = "nan";
    if (a4)
    {
      v14 = "NAN";
    }

    *v12 = *v14;
    v12[2] = v14[2];
    v12[3] = 0;
    v15 = (v12 + 3 - a2);
    v16 = v27;
    if (v27 == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0x7974696E69666E69;
    if (a4)
    {
      v21 = 0x5954494E49464E49;
    }

    *v12 = v21;
    v22 = v12 + 8;
    *v22 = 0;
    v15 = (v22 - a2);
    v16 = v27;
    if (v27 == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_11;
    }
  }

LABEL_25:
  if ((v16[2] - 64) <= 0xFFFFFF7F && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

LABEL_28:
  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  return v15;
}

BOOL llvm::detail::DoubleAPFloat::isDenormal(llvm::detail::DoubleAPFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v6 = *(v5 + 8);
  if (v6 != &llvm::semPPCDoubleDouble)
  {
    if ((*(v5 + 28) & 7) == 2)
    {
      if (*(v5 + 24) == *(v6 + 4))
      {
        v7 = *(v6 + 8);
        v8 = (v5 + 16);
        if ((v7 - 64) <= 0xFFFFFF7F)
        {
          v8 = *v8;
        }

        if (!llvm::APInt::tcExtractBit(v8, (v7 - 1)))
        {
          return 1;
        }
      }

      goto LABEL_10;
    }

    return 0;
  }

  if ((*(*(v5 + 16) + 28) & 7) != 2)
  {
    return 0;
  }

  if (llvm::detail::DoubleAPFloat::isDenormal((v5 + 8), a2, a3))
  {
    return 1;
  }

LABEL_10:
  v9 = *(this + 1);
  v10 = *(v9 + 40);
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    if (!llvm::detail::DoubleAPFloat::isDenormal((v9 + 40), a2, a3))
    {
      goto LABEL_19;
    }

    return 1;
  }

  v11 = (*(v9 + 60) & 6) == 0 || (*(v9 + 60) & 7) == 3;
  if (!v11 && *(v9 + 56) == *(v10 + 4))
  {
    v12 = *(v10 + 8);
    v13 = (v9 + 48);
    if ((v12 - 64) <= 0xFFFFFF7F)
    {
      v13 = *v13;
    }

    if (!llvm::APInt::tcExtractBit(v13, (v12 - 1)))
    {
      return 1;
    }
  }

LABEL_19:
  v14 = *(this + 1);
  llvm::APFloat::Storage::Storage(&v24, (v14 + 8), a3, a4);
  llvm::APFloat::add(v23, v14 + 32, 1, v15);
  v18 = (v14 + 8);
  if (*(v14 + 8) != &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::IEEEFloat::compare(v18, &v24, v16, v17) != 1;
    v20 = v24;
    if (v24 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_21;
    }

LABEL_29:
    v22 = result;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v24);
    return v22;
  }

  result = llvm::detail::DoubleAPFloat::compare(v18, &v24, v16, v17) != 1;
  v20 = v24;
  if (v24 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_29;
  }

LABEL_21:
  if ((v20[2] - 64) <= 0xFFFFFF7F)
  {
    if (v25)
    {
      v21 = result;
      MEMORY[0x259C63150](v25, 0x1000C8000313F17);
      return v21;
    }
  }

  return result;
}

uint64_t llvm::detail::DoubleAPFloat::isSmallest(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v1 + 16) + 28) & 7) == 2)
    {
LABEL_3:
      v3 = *this;
      operator new[]();
    }
  }

  else if ((*(v1 + 28) & 7) == 2)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t llvm::detail::DoubleAPFloat::isSmallestNormalized(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v1 + 16) + 28) & 7) == 2)
    {
LABEL_3:
      v3 = *this;
      operator new[]();
    }
  }

  else if ((*(v1 + 28) & 7) == 2)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t llvm::detail::DoubleAPFloat::isLargest(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v1 + 16) + 28) & 7) == 2)
    {
LABEL_3:
      v3 = *this;
      operator new[]();
    }
  }

  else if ((*(v1 + 28) & 7) == 2)
  {
    goto LABEL_3;
  }

  return 0;
}

BOOL llvm::detail::DoubleAPFloat::isInteger(llvm::detail::DoubleAPFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  do
  {
    v7 = *(this + 1);
    v9 = *(v7 + 8);
    v8 = (v7 + 8);
    if (v9 == &llvm::semPPCDoubleDouble)
    {
      if (!llvm::detail::DoubleAPFloat::isInteger(v8, a2, a3, a4))
      {
        return 0;
      }
    }

    else if (!llvm::detail::IEEEFloat::isInteger(v8, a2, a3, a4))
    {
      return 0;
    }

    v5 = *(this + 1);
    v6 = *(v5 + 40);
    this = (v5 + 40);
  }

  while (v6 == &llvm::semPPCDoubleDouble);

  return llvm::detail::IEEEFloat::isInteger(this, a2, a3, a4);
}

void llvm::detail::DoubleAPFloat::toString(llvm::detail::DoubleAPFloat *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v12, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v14, &v12, v9, v10);
  if (v14 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::toString(&v14, a2, a3, a4, a5);
    v11 = v14;
    if (v14 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v14);
    goto LABEL_8;
  }

  llvm::detail::IEEEFloat::toString(&v14, a2, a3, a4, a5);
  v11 = v14;
  if (v14 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v11[2] - 64) <= 0xFFFFFF7F && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

LABEL_8:
  if (v13 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }
}

uint64_t llvm::detail::DoubleAPFloat::getExactInverse(llvm::detail::DoubleAPFloat *this, llvm::APFloat *a2, uint64_t a3, unsigned int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v12, this, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v14, &v12, v5, v6);
  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x259C63150](v12, 0x1000C8000313F17);
  }

  if (a2)
  {
    v13 = &llvm::semPPCDoubleDoubleLegacy;
    operator new[]();
  }

  if (v14 == &llvm::semPPCDoubleDouble)
  {
    ExactInverse = llvm::detail::DoubleAPFloat::getExactInverse(&v14, 0, v7, v8);
    v10 = v14;
    if (v14 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_8;
    }

LABEL_12:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v14);
    return ExactInverse;
  }

  ExactInverse = llvm::detail::IEEEFloat::getExactInverse(&v14, 0, v7);
  v10 = v14;
  if (v14 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v10[2] - 64) <= 0xFFFFFF7F && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  return ExactInverse;
}

void llvm::detail::scalbn(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, unsigned int a5@<W3>)
{
  v16[4] = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(&v15, (*(a1 + 8) + 8), a3, a5);
  llvm::scalbn(v14, a2, a3, v16);
  llvm::APFloat::Storage::Storage(&v12, (*(a1 + 8) + 40), v9, v10);
  llvm::scalbn(v11, a2, a3, &v13);
  *a4 = &llvm::semPPCDoubleDouble;
  operator new[]();
}

void llvm::scalbn(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = a2;
  v8 = (a1 + 8);
  v9 = *(a1 + 8);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::scalbn(a1 + 8, a2, a3, &v31);
    v30 = v31;
    *&v31 = &llvm::semBogus;
    *(&v31 + 1) = 0;
    *(a5 + 8) = v30;
    v36 = &llvm::semBogus;
    v37 = 0;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v36);
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v31);
  }

  else
  {
    v32 = *(a1 + 8);
    v10 = v9[2];
    if ((v10 + 64) >= 0x80)
    {
      operator new[]();
    }

    v11 = *(a1 + 28);
    v12 = v11 & 7;
    v35 = v11 & 0xF;
    v13 = *(a1 + 24);
    v34 = v13;
    v15 = (v11 & 6) != 0 && v12 != 3;
    if (v12 == 1 || v15)
    {
      v17 = v9[2];
      if ((v17 - 64) >= 0xFFFFFF80)
      {
        v10 = &v33;
      }

      v20 = *(a1 + 16);
      v18 = (a1 + 16);
      v19 = v20;
      if ((*(*(v18 - 1) + 8) - 64) >= 0xFFFFFF80)
      {
        v21 = v18;
      }

      else
      {
        v21 = v19;
      }

      llvm::APInt::tcAssign(v10, v21, ((v17 + 64) >> 6));
      v9 = v32;
      v13 = v34;
    }

    v22 = *v9 + v9[2] + ~v9[1];
    v23 = -2 - v22;
    if (v22 + 1 < v6)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v6;
    }

    if (v23 > v6)
    {
      v24 = v23;
    }

    v34 = v24 + v13;
    llvm::detail::IEEEFloat::normalize(&v32, a3, 0);
    v25 = v35;
    v26 = v32;
    if ((v35 & 7) == 1 && v32[4] != 1)
    {
      v27 = v32[2];
      if ((v27 - 64) >= 0xFFFFFF80)
      {
        v28 = &v33;
      }

      else
      {
        v28 = v33;
      }

      llvm::APInt::tcSetBit(v28, (v27 - 2));
      v26 = v32;
      v25 = v35;
    }

    v32 = &llvm::semBogus;
    v29 = *v8;
    v36 = v26;
    v37 = v33;
    v38 = v34;
    v39 = v25 & 0xF;
    llvm::APFloat::Storage::Storage(a5 + 8, &v36, v29);
    if ((v36[2] - 64) <= 0xFFFFFF7F && v37)
    {
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }

    if ((v32[2] - 64) <= 0xFFFFFF7F)
    {
      if (v33)
      {
        MEMORY[0x259C63150](v33, 0x1000C8000313F17);
      }
    }
  }
}

void llvm::detail::frexp(uint64_t a1@<X0>, const llvm::detail::IEEEFloat *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20[4] = *MEMORY[0x277D85DE8];
  llvm::frexp(*(a1 + 8), a2, a3, v20);
  llvm::APFloat::Storage::Storage(&v19, (*(a1 + 8) + 40), v8, v9);
  v12 = *(a1 + 8);
  if (*(v12 + 8) == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v12 + 16) + 28) & 7) != 2)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v12 + 28) & 7) != 2)
  {
    goto LABEL_15;
  }

  llvm::APFloat::Storage::Storage(&v15, &v19, v10, v11);
  llvm::scalbn(v14, -*a2, a3, v17);
  llvm::APFloat::Storage::operator=(&v19, &v18);
  if (v18.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
    v13 = v15;
    if (v15 != &llvm::semPPCDoubleDouble)
    {
LABEL_10:
      if ((v13[2] - 64) <= 0xFFFFFF7F)
      {
        if (v16)
        {
          MEMORY[0x259C63150](v16, 0x1000C8000313F17);
        }
      }

LABEL_15:
      *a4 = &llvm::semPPCDoubleDouble;
      operator new[]();
    }
  }

  else
  {
    if ((*(v18.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v18.n128_u64[1])
    {
      MEMORY[0x259C63150](v18.n128_u64[1], 0x1000C8000313F17);
    }

    v13 = v15;
    if (v15 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_10;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v15);
  goto LABEL_15;
}

void llvm::frexp(uint64_t a1@<X0>, const llvm::detail::IEEEFloat *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::frexp(v5, a2, a3, &v10);
    v9 = v10;
    *&v10 = &llvm::semBogus;
    *(&v10 + 1) = 0;
    *(a4 + 8) = v9;
    v15 = &llvm::semBogus;
    v16 = 0;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v15);
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
  }

  else
  {
    v7 = v5;
    llvm::detail::frexp(v5, a2, a3, &v11);
    v8 = *v7;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14 & 0xF;
    v11 = &llvm::semBogus;
    llvm::APFloat::Storage::Storage(a4 + 8, &v15, v8);
    if ((v15[2] - 64) <= 0xFFFFFF7F && v16)
    {
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }

    if ((v11[2] - 64) <= 0xFFFFFF7F)
    {
      if (v12)
      {
        MEMORY[0x259C63150](v12, 0x1000C8000313F17);
      }
    }
  }
}

uint64_t llvm::APFloat::Storage::Storage(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v15[3] = *MEMORY[0x277D85DE8];
  if (a3 == &llvm::semPPCDoubleDouble)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = *(a2 + 4);
    v8 = *(a2 + 20);
    *a2 = &llvm::semBogus;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8 & 0xF;
    llvm::APFloat::Storage::Storage(v15, &v9, v5);
    if ((v9[2] - 64) <= 0xFFFFFF7F && v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }

    v10 = &llvm::semIEEEdouble;
    v14 = 3;
    v13 = -1023;
    llvm::APInt::tcSet(&v11, 0, 1u);
    *v3 = &llvm::semPPCDoubleDouble;
    operator new[]();
  }

  *a1 = &llvm::semBogus;
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = *(a2 + 4);
  v4 = *(a1 + 20) & 0xF8 | *(a2 + 20) & 7;
  *(a1 + 20) = v4;
  *(a1 + 20) = v4 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return a1;
}

uint64_t llvm::APFloat::APFloat(uint64_t a1, uint64_t a2, unsigned __int8 *a3, size_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage<>((a1 + 8), a2, a3, a4);
  if (*(a1 + 8) == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString();
  }

  llvm::detail::IEEEFloat::convertFromString((a1 + 8), a3, a4, 1, &v12);
  v7 = v13;
  if (v13)
  {
    v8 = v12;
    v12 = 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v10, &v11);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if ((v7 & 1) != 0 && v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2, unsigned __int8 *a3, size_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = llvm::APFloat::APFloat(a1, a2);
  v9 = *(v7 + 1);
  v8 = (v7 + 8);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString();
  }

  llvm::detail::IEEEFloat::convertFromString(v8, a3, a4, 1, &v15);
  v10 = v16;
  if (v16)
  {
    v11 = v15;
    v15 = 0;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v13, &v14);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if ((v10 & 1) != 0 && v15)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

uint64_t llvm::APFloat::classify(llvm::APFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = this;
  v6 = this + 8;
  v5 = *(this + 1);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    v7 = *(*(this + 2) + 28);
    if ((v7 & 7) != 3)
    {
      if (llvm::detail::DoubleAPFloat::isDenormal((this + 8), a2, a3, a4))
      {
        goto LABEL_23;
      }

LABEL_14:
      if (*v6 == &llvm::semPPCDoubleDouble)
      {
        v11 = *(v4 + 2);
        if ((*(v11 + 28) & 6) == 0 || (*(v11 + 28) & 7) == 3)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((*(v4 + 28) & 6) == 0 || (*(v4 + 28) & 7) == 3)
        {
          goto LABEL_23;
        }

        v11 = v4;
      }

      if ((*(v11 + 28) & 8) != 0)
      {
        return 8;
      }

      else
      {
        return 256;
      }
    }

LABEL_10:
    if ((v7 & 8) != 0)
    {
      return 32;
    }

    else
    {
      return 64;
    }
  }

  v7 = *(this + 28);
  if ((v7 & 7) == 3)
  {
    goto LABEL_10;
  }

  if ((*(this + 28) & 6) == 0 || *(this + 6) != *(v5 + 4))
  {
    goto LABEL_14;
  }

  v8 = *(v5 + 8);
  v9 = (this + 16);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v9;
  }

  if (llvm::APInt::tcExtractBit(v9, (v8 - 1)))
  {
    goto LABEL_14;
  }

LABEL_23:
  v13 = *v6;
  if (*v6 == &llvm::semPPCDoubleDouble)
  {
    if (!llvm::detail::DoubleAPFloat::isDenormal(v6, a2, a3, a4))
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((*(v4 + 28) & 6) == 0 || (*(v4 + 28) & 7) == 3 || *(v4 + 6) != v13[1])
    {
      goto LABEL_30;
    }

    v14 = v13[2];
    v15 = (v4 + 16);
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v15 = *v15;
    }

    if (llvm::APInt::tcExtractBit(v15, (v14 - 1)))
    {
LABEL_30:
      if (*v6 == &llvm::semPPCDoubleDouble)
      {
        v17 = *(v4 + 2);
        v16 = *(v17 + 28);
        if ((v16 & 7) != 0)
        {
          v6 = (v17 + 8);
          if ((*(v17 + 28) & 7) == 1)
          {
LABEL_33:
            if ((*(*v6 + 16) - 1) < 2)
            {
              return 2;
            }

            v18 = *(*v6 + 8);
            v19 = (v6 + 8);
            if ((v18 - 64) <= 0xFFFFFF7F)
            {
              v19 = *v19;
            }

            if (llvm::APInt::tcExtractBit(v19, (v18 - 2)))
            {
              return 2;
            }

            else
            {
              return 1;
            }
          }

          return 2;
        }
      }

      else
      {
        v16 = *(v4 + 28);
        if ((v16 & 7) != 0)
        {
          if ((v6[20] & 7) == 1)
          {
            goto LABEL_33;
          }

          return 2;
        }
      }

      if ((v16 & 8) != 0)
      {
        return 4;
      }

      else
      {
        return 512;
      }
    }
  }

  if (*v6 == &llvm::semPPCDoubleDouble)
  {
    v4 = *(v4 + 2);
  }

  if ((*(v4 + 28) & 8) != 0)
  {
    return 16;
  }

  else
  {
    return 128;
  }
}

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, unsigned int a3, BOOL *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4 == a2)
  {
    result = 0;
    *a4 = 0;
  }

  else if (v4 == &llvm::semPPCDoubleDouble)
  {
    v10 = llvm::detail::IEEEFloat::convert((*(a1 + 16) + 8), a2, a3, a4);
    v11 = *(a1 + 8);
    v12 = v5;
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v13 = *(a1 + 16);
      v14 = *(v13 + 8);
      v12 = (v13 + 8);
      v11 = v14;
    }

    v15 = *(v12 + 1);
    v16 = *(v12 + 4);
    v17 = *(v12 + 20) & 0xF;
    *v12 = &llvm::semBogus;
    v19 = v11;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    llvm::APFloat::Storage::Storage(&v23, &v19, a2);
    if ((v19[2] - 64) <= 0xFFFFFF7F && v20)
    {
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }

    llvm::APFloat::Storage::operator=(v5, &v23);
    if (v23.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
    }

    else if ((*(v23.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v23.n128_u64[1])
    {
      MEMORY[0x259C63150](v23.n128_u64[1], 0x1000C8000313F17);
    }

    return v10;
  }

  else
  {
    if (a2 == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::convert((a1 + 8), &llvm::semPPCDoubleDoubleLegacy, a3, a4);
      llvm::detail::IEEEFloat::bitcastToAPInt(&v18, v5);
      v23.n128_u64[0] = &llvm::semPPCDoubleDouble;
      operator new[]();
    }

    v6 = (a1 + 8);

    return llvm::detail::IEEEFloat::convert(v6, a2, a3, a4);
  }

  return result;
}

void llvm::APFloat::getAllOnesValue(uint64_t a1@<X0>, unsigned int a2@<W3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 12);
  v7 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v6, -1, 1);
  }

  if (v4)
  {
    v5 = (0xFFFFFFFFFFFFFFFFLL >> -v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (a1 == &llvm::semPPCDoubleDouble)
  {
    *(a3 + 8) = &llvm::semPPCDoubleDouble;
    operator new[]();
  }

  llvm::detail::IEEEFloat::initFromAPInt((a3 + 8), a1, &v6, a2);
  if (v7 >= 0x41)
  {
    if (v6)
    {
      MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }
}

void llvm::APFloat::print(llvm::APFloat *this, llvm::raw_ostream *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = xmmword_25738E870;
  v4 = *(this + 1);
  v3 = (this + 8);
  if (v4 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::toString(v3, &v6, 0, 3, 1);
    llvm::raw_ostream::write(a2, v6, v7);
    v5 = v6;
    if (v6 == v8)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v3, &v6, 0, 3u, 1);
    llvm::raw_ostream::write(a2, v6, v7);
    v5 = v6;
    if (v6 == v8)
    {
      return;
    }
  }

  free(v5);
}

uint64_t *llvm::APFloat::Profile(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v8, v5, a4);
    result = llvm::APInt::Profile(&v8, a2);
    if (v9 < 0x41)
    {
      return result;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v8, v5);
    result = llvm::APInt::Profile(&v8, a2);
    if (v9 < 0x41)
    {
      return result;
    }
  }

  result = v8;
  if (v8)
  {
    return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }

  return result;
}

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  v18 = v20;
  v19 = 0x400000000;
  if (v7)
  {
    v8 = (v7 + 63) >> 6;
    if (v7 >= 0x101)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v9 = a1;
      bzero(v20, 8 * ((v7 + 63) >> 6));
      a1 = v9;
    }

    LODWORD(v19) = (v7 + 63) >> 6;
  }

  else
  {
    v8 = 0;
  }

  v11 = *(a1 + 8);
  v10 = (a1 + 8);
  v12 = (*(a2 + 12) ^ 1) & 1;
  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v13 = llvm::detail::DoubleAPFloat::convertToInteger(v10, v20, v8, v7, v12, a3, a4);
  }

  else
  {
    v13 = llvm::detail::IEEEFloat::convertToInteger(v10, v20, v8, v7, v12, a3, a4);
  }

  v14 = v13;
  llvm::APInt::APInt(&v16, v7);
  if (*(a2 + 8) >= 0x41u && *a2)
  {
    MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  v17 = 0;
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

double llvm::APFloat::convertToDouble(void **this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[1] == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v11, (this + 1));
    if (v12 <= 0x40)
    {
      return *&v11;
    }

    v5 = *v11;
LABEL_15:
    MEMORY[0x259C63150]();
    return v5;
  }

  llvm::APFloat::Storage::Storage(&v12, (this + 1), a3, a4);
  llvm::APFloat::convert(&v11, &llvm::semIEEEdouble, 1u, &v8);
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    v4 = (v13 + 8);
  }

  else
  {
    v4 = &v12;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(&v9, v4);
  if (v10 > 0x40)
  {
    v5 = *v9;
    MEMORY[0x259C63150]();
    v6 = v12;
    if (v12 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_7;
    }

LABEL_13:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
    return v5;
  }

  v5 = *&v9;
  v6 = v12;
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v6[2] - 64) <= 0xFFFFFF7F && v13)
  {
    goto LABEL_15;
  }

  return v5;
}

float llvm::APFloat::convertToFloat(void **this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[1] == &llvm::semIEEEsingle)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v11, (this + 1));
    if (v12 <= 0x40)
    {
      LODWORD(v5) = v11;
      return *&v5;
    }

    v5 = *v11;
LABEL_15:
    MEMORY[0x259C63150]();
    return *&v5;
  }

  llvm::APFloat::Storage::Storage(&v12, (this + 1), a3, a4);
  llvm::APFloat::convert(&v11, &llvm::semIEEEsingle, 1u, &v8);
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    v4 = (v13 + 8);
  }

  else
  {
    v4 = &v12;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(&v9, v4);
  if (v10 > 0x40)
  {
    v5 = *v9;
    MEMORY[0x259C63150]();
    v6 = v12;
    if (v12 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_7;
    }

LABEL_13:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
    return *&v5;
  }

  LODWORD(v5) = v9;
  v6 = v12;
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v6[2] - 64) <= 0xFFFFFF7F && v13)
  {
    goto LABEL_15;
  }

  return *&v5;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage(llvm::detail::IEEEFloat *result, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v4 = result;
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    *result = &llvm::semPPCDoubleDouble;
    if (*(a2 + 1))
    {
      operator new[]();
    }

    *(result + 1) = 0;
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(result, a2, a3, a4);
    return v4;
  }

  return result;
}

uint64_t *llvm::APFloat::Storage::Storage<>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    *a1 = &llvm::semPPCDoubleDouble;
    operator new[]();
  }

  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 3;
  v5 = *(a2 + 8);
  *(a1 + 4) = *(a2 + 4) - 1;
  v6 = (a1 + 1);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  llvm::APInt::tcSet(v6, 0, (v5 + 64) >> 6);
  return a1;
}

void **llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          llvm::ErrorList::join(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 8);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void llvm::ErrorList::join(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (!v6)
  {
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  if (!v7)
  {
    *a3 = v6;
    *a1 = 0;
    return;
  }

  if (!(*(*v6 + 48))(v6, &llvm::ErrorList::ID))
  {
    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v17 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v17);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
    goto LABEL_16;
  }

  v8 = *a1;
  if (!*a2)
  {
    v10 = 0;
LABEL_19:
    v17 = v10;
    *a2 = 0;
    std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](v8 + 8, &v17);
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    goto LABEL_21;
  }

  v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
  v10 = *a2;
  if (!v9)
  {
    goto LABEL_19;
  }

  *a2 = 0;
  v11 = v10[1];
  v12 = v10[2];
  if (v11 == v12)
  {
    goto LABEL_9;
  }

  do
  {
    std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100](v8 + 8, v11++);
  }

  while (v11 != v12);
  if (v10)
  {
LABEL_9:
    (*(*v10 + 8))(v10);
  }

LABEL_21:
  *a3 = *a1;
  *a1 = 0;
}

char *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, char *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (a2 == v6)
    {
      v15 = *a3;
      *a3 = 0;
      *v6 = v15;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = a2 + 8;
    v9 = v6 - 8;
    if (v6 < 8)
    {
      a1[1] = v6;
      if (v6 == v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *v9;
      *v9 = 0;
      *v6 = v10;
      a1[1] = v6 + 8;
      if (v6 == v8)
      {
LABEL_24:
        v27 = *a3;
        *a3 = 0;
        v28 = *v4;
        *v4 = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        return v4;
      }
    }

    v23 = (a2 - v6 + 8);
    v24 = v6 - 16;
    do
    {
      v25 = *v24;
      *v24 = 0;
      v26 = *v9;
      *v9 = v25;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      v9 -= 8;
      v24 -= 8;
      v23 += 8;
    }

    while (v23);
    goto LABEL_24;
  }

  v11 = *a1;
  v12 = (&v6[-*a1] >> 3) + 1;
  if (v12 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = v7 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  v33 = a1;
  if (v14)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v30 = 0;
  v31 = 8 * (&a2[-v11] >> 3);
  v32 = v31;
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v30, a3);
  v16 = v31;
  memcpy(v32, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v31;
  *&v32 = v32 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v32;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  v30 = v21;
  v31 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      v11 = (v4 - *a1) >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = &v5[-(((v6 >> 3) + 1) / 2)];
    if (v5 != v4)
    {
      do
      {
        v9 = *v5;
        *v5 = 0;
        v10 = *v8;
        *v8 = v9;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        ++v5;
        ++v8;
      }

      while (v5 != v4);
      v5 = a1[1];
    }

    a1[1] = &v5[v7];
    a1[2] = v8;
  }

  v12 = a1[2];
  v13 = *a2;
  *a2 = 0;
  *v12 = v13;
  a1[2] = (v12 + 1);
}

char *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(char *a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return (__dst + 1);
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 4 - v8;
    v32 = &a1[4 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 4 - v8;
  v32 = &a1[4 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t llvm::APInt::APInt(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unsigned int a5)
{
  *(a1 + 8) = a2;
  llvm::APInt::fromString(a1, a2, a3, a4, a5);
  return a1;
}

void llvm::APInt::fromString(const void **a1, uint64_t a2, char *a3, uint64_t a4, unsigned int a5)
{
  v7 = *a3;
  v33 = v7;
  v8 = v7 == 45 || v7 == 43;
  v9 = v8;
  if (v8)
  {
    v10 = a3 + 1;
  }

  else
  {
    v10 = a3;
  }

  if (*(a1 + 2) >= 0x41u)
  {
    operator new[]();
  }

  *a1 = 0;
  if (a5 == 16)
  {
    v11 = 4;
  }

  else
  {
    v11 = a5 == 2;
  }

  if (a5 == 8)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  if (a4 != v9)
  {
    v13 = a4 - v9;
    v14 = &a3[a4];
    v15 = a5 - 11;
    do
    {
      while (1)
      {
        v17 = *v10;
        if (a5 == 16 || a5 == 36)
        {
          break;
        }

        v18 = v17 - 48;
        if (v17 - 48 >= a5)
        {
          v18 = -1;
        }

        if (v13 >= 2)
        {
          goto LABEL_49;
        }

LABEL_30:
        v19 = v18;
        v20 = *(a1 + 2);
        if (v20 >= 0x41)
        {
          goto LABEL_60;
        }

LABEL_31:
        v21 = *a1 + v19;
        *a1 = v21;
        if (v20)
        {
          v22 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
        }

        else
        {
          v22 = 0;
        }

        *a1 = (v22 & v21);
        if (++v10 == v14)
        {
          goto LABEL_20;
        }
      }

      v18 = v17 - 48;
      if ((v17 - 48) >= 0xA)
      {
        if (v17 - 65 <= v15)
        {
          v18 = v17 - 55;
          if (v13 >= 2)
          {
            goto LABEL_49;
          }
        }

        else if (v17 - 97 <= v15)
        {
          v18 = v17 - 87;
          if (v13 >= 2)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v18 >= 0xA)
          {
            v18 = -1;
          }

          if (v13 >= 2)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_30;
      }

      if (v13 < 2)
      {
        goto LABEL_30;
      }

LABEL_49:
      if (v12)
      {
        v23 = *(a1 + 2);
        if (v23 > 0x40)
        {
          llvm::APInt::shlSlowCase(a1, v12);
          v19 = v18;
          v20 = *(a1 + 2);
          if (v20 < 0x41)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v23 == v12)
          {
            v24 = 0;
          }

          else
          {
            v24 = *a1 << v12;
          }

          if (v23)
          {
            v25 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
          }

          else
          {
            v25 = 0;
          }

          *a1 = (v24 & v25);
          v19 = v18;
          v20 = *(a1 + 2);
          if (v20 < 0x41)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        llvm::APInt::operator*=(a1, a5);
        v19 = v18;
        v20 = *(a1 + 2);
        if (v20 < 0x41)
        {
          goto LABEL_31;
        }
      }

LABEL_60:
      v26 = *a1;
      v27 = (v20 + 63) >> 6;
      v28 = **a1;
      **a1 = v28 + v19;
      if (__CFADD__(v28, v19))
      {
        v29 = v27 - 2;
        v30 = (v26 + 8);
        do
        {
          v31 = *v30 + 1;
          *v30++ = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == 0;
          }

          --v29;
        }

        while (!v32);
      }

      v16 = *a1 + 8 * (v27 - 1);
      *v16 &= 0xFFFFFFFFFFFFFFFFLL >> -v20;
      ++v10;
    }

    while (v10 != v14);
  }

LABEL_20:
  if (v33 == 45)
  {

    llvm::APInt::negate(a1);
  }
}

const void **llvm::APInt::APInt(const void **a1, uint64_t a2, char *a3, uint64_t a4, unsigned int a5)
{
  *(a1 + 2) = a2;
  llvm::APInt::fromString(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t llvm::APInt::reallocate(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 8);
  if ((a2 + 63) >> 6 == (v3 + 63) >> 6)
  {
    *(this + 8) = a2;
  }

  else
  {
    if (v3 >= 0x41)
    {
      this = *this;
      if (*v2)
      {
        v4 = a2;
        this = MEMORY[0x259C63150]();
        a2 = v4;
      }
    }

    *(v2 + 8) = a2;
    if (a2 >= 0x41)
    {
      operator new[]();
    }
  }

  return this;
}

unsigned int *llvm::APInt::assignSlowCase(unsigned int *this, const llvm::APInt *a2)
{
  if (this == a2)
  {
    return this;
  }

  v2 = *(a2 + 2);
  v3 = this[2];
  if ((v2 + 63) >> 6 != (v3 + 63) >> 6)
  {
    if (v3 >= 0x41 && *this)
    {
      v4 = this;
      v5 = a2;
      MEMORY[0x259C63150](*this, 0x1000C8000313F17);
      this = v4;
      a2 = v5;
    }

    this[2] = v2;
    if (v2 >= 0x41)
    {
      operator new[]();
    }

    goto LABEL_10;
  }

  this[2] = v2;
  if (v2 <= 0x40)
  {
LABEL_10:
    *this = *a2;
    return this;
  }

  v6 = *this;
  v7 = *a2;

  return memcpy(v6, v7, ((v2 + 63) >> 3) & 0x3FFFFFF8);
}

uint64_t *llvm::APInt::Profile(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a2 + 4 * v2) = *(result + 2);
  v3 = *(a2 + 8) + 1;
  *(a2 + 8) = v3;
  v4 = *(result + 2);
  if (v4 > 0x40)
  {
    v8 = 0;
    v9 = ((v4 + 63) >> 3) & 0x3FFFFFF8;
    do
    {
      v10 = *(*result + v8);
      if (v3 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 4 * v3) = v10;
      v11 = *(a2 + 12);
      v12 = *(a2 + 8) + 1;
      *(a2 + 8) = v12;
      if (v12 >= v11)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 += 8;
      *(*a2 + 4 * v12) = HIDWORD(v10);
      v3 = *(a2 + 8) + 1;
      *(a2 + 8) = v3;
    }

    while (v9 != v8);
  }

  else
  {
    v5 = *result;
    if (v3 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a2 + 4 * v3) = v5;
    v6 = *(a2 + 12);
    v7 = *(a2 + 8) + 1;
    *(a2 + 8) = v7;
    if (v7 >= v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a2 + 4 * v7) = HIDWORD(v5);
    ++*(a2 + 8);
  }

  return result;
}

BOOL llvm::APInt::isAligned(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (v2 > 0x40)
  {
    v5 = 0;
    v6 = (v2 + 63) >> 6;
    v7 = *a1;
    v8 = v6 + 1;
    while (1)
    {
      v9 = *(v7 + 8 * (v8 - 2));
      if (v9)
      {
        break;
      }

      v5 += 64;
      if (--v8 <= 1)
      {
        v10 = v2 | 0xFFFFFFC0;
        if ((v2 & 0x3F) == 0)
        {
          v10 = 0;
        }

        if (v5 + v10 == v2)
        {
          return 1;
        }

        goto LABEL_16;
      }
    }

    v11 = __clz(v9) + v5;
    v12 = v2 | 0xFFFFFFC0;
    if ((v2 & 0x3F) == 0)
    {
      v12 = 0;
    }

    if (v11 + v12 == v2)
    {
      return 1;
    }

LABEL_16:
    v13 = 0;
    v14 = 0;
    while (!*(v7 + 8 * v14))
    {
      ++v14;
      v13 -= 64;
      if (v6 == v14)
      {
        if (v2 >= ((v2 + 63) & 0xFFFFFFC0))
        {
          LODWORD(v2) = (v2 + 63) & 0xFFFFFFC0;
        }

        return v2 >= a2;
      }
    }

    v15 = __clz(__rbit64(*(v7 + 8 * v14))) - v13;
    if (v2 >= v15)
    {
      LODWORD(v2) = v15;
    }

    return v2 >= a2;
  }

  else if (*a1)
  {
    v3 = __clz(__rbit64(*a1));
    if (v2 >= v3)
    {
      LODWORD(v2) = v3;
    }

    return v2 >= a2;
  }

  else
  {
    return 1;
  }
}

uint64_t **llvm::APInt::operator++(uint64_t **result)
{
  v1 = *(result + 2);
  if (v1 >= 0x41)
  {
    v4 = *result;
    v5 = (v1 + 63) >> 6;
    v6 = **result;
    **result = v6 + 1;
    if (v6 == -1)
    {
      v7 = v4[1];
      v4[1] = v7 + 1;
      if (v7 == -1)
      {
        v8 = v4 + 2;
        v9 = v5 - 2;
        do
        {
          if (!v9)
          {
            break;
          }

          --v9;
        }

        while (__CFADD__((*v8++)++, 1));
      }
    }

    v11 = &(*result)[(v5 - 1)];
    *v11 &= 0xFFFFFFFFFFFFFFFFLL >> -v1;
  }

  else
  {
    v2 = (*result + 1);
    *result = v2;
    if (v1)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    }

    else
    {
      v3 = 0;
    }

    *result = (v2 & v3);
  }

  return result;
}

uint64_t **llvm::APInt::operator--(uint64_t **result)
{
  v1 = *(result + 2);
  if (v1 >= 0x41)
  {
    v4 = *result;
    v5 = (v1 + 63) >> 6;
    v6 = **result;
    **result = v6 - 1;
    if (!v6)
    {
      v7 = v4[1];
      v4[1] = v7 - 1;
      if (!v7)
      {
        v8 = v4 + 2;
        v9 = v5 - 2;
        do
        {
          if (!v9)
          {
            break;
          }

          v10 = (*v8++)--;
          --v9;
        }

        while (!v10);
      }
    }

    v11 = &(*result)[(v5 - 1)];
    *v11 &= 0xFFFFFFFFFFFFFFFFLL >> -v1;
  }

  else
  {
    v2 = (*result - 1);
    *result = v2;
    if (v1)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    }

    else
    {
      v3 = 0;
    }

    *result = (v2 & v3);
  }

  return result;
}

uint64_t llvm::APInt::operator+=(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 8);
  if (v2 >= 0x41)
  {
    v5 = 0;
    v6 = *result;
    v7 = *a2;
    v8 = (v2 + 63) >> 6;
    v9 = v8;
    do
    {
      v10 = *v7++;
      v11 = v10 + *v6;
      v12 = __CFADD__(v10, *v6);
      v13 = (v11 + 1) <= *v6;
      if (v5)
      {
        ++v11;
        v5 = v13;
      }

      else
      {
        v5 = v12;
      }

      *v6++ = v11;
      --v9;
    }

    while (v9);
    v14 = (*result + 8 * (v8 - 1));
    *v14 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = *a2 + *result;
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = v3 & v4;
  }

  return result;
}

BOOL llvm::APInt::tcAdd(llvm::APInt *this, unint64_t *a2, _BOOL8 a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *this;
      v7 = *a2++;
      v6 = v7;
      v8 = v7 + *this;
      v9 = __CFADD__(v7, *this);
      v10 = v5 + v6;
      v11 = v10 + 1 <= v5;
      if (a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v8;
      }

      if (a3)
      {
        a3 = v11;
      }

      else
      {
        a3 = v9;
      }

      *this = v12;
      this = (this + 8);
      --v4;
    }

    while (v4);
  }

  return a3;
}

uint64_t **llvm::APInt::operator+=(uint64_t **result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2 >= 0x41)
  {
    v5 = *result;
    v6 = (v2 + 63) >> 6;
    v7 = **result;
    **result = v7 + a2;
    if (__CFADD__(v7, a2))
    {
      v8 = v6 - 2;
      v9 = v5 + 1;
      do
      {
        v10 = *v9 + 1;
        *v9++ = v10;
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8 == 0;
        }

        --v8;
      }

      while (!v11);
    }

    v12 = &(*result)[(v6 - 1)];
    *v12 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = (*result + a2);
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = (v3 & v4);
  }

  return result;
}

uint64_t llvm::APInt::tcAddPart(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = __CFADD__(*this, a2);
    *this += a2;
    if (!v3)
    {
      return 0;
    }

    v4 = a3 == 1;
    if (a3 != 1)
    {
      v5 = *(this + 1);
      *(this + 1) = v5 + 1;
      if (v5 != -1)
      {
        return 0;
      }

      v6 = 2;
      do
      {
        v7 = v6;
        if (a3 == v6)
        {
          break;
        }

        v8 = *(this + v6++);
        *(this + v7) = v8 + 1;
      }

      while (v8 == -1);
      return v7 >= a3;
    }

    return v4;
  }

  return 1;
}

uint64_t llvm::APInt::operator-=(uint64_t result, unint64_t **a2)
{
  v2 = *(result + 8);
  if (v2 >= 0x41)
  {
    v5 = 0;
    v6 = *result;
    v7 = *a2;
    v8 = (v2 + 63) >> 6;
    v9 = v8;
    do
    {
      v10 = *v7++;
      v11 = *v6 - v10;
      v12 = *v6 < v10;
      v13 = *v6 + ~v10;
      if (v5)
      {
        v5 = v13 >= *v6;
      }

      else
      {
        v13 = v11;
        v5 = v12;
      }

      *v6++ = v13;
      --v9;
    }

    while (v9);
    v14 = (*result + 8 * (v8 - 1));
    *v14 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = *result - *a2;
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = v3 & v4;
  }

  return result;
}

unint64_t llvm::APInt::tcSubtract(llvm::APInt *this, unint64_t *a2, unint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      v6 = *this - v5;
      v7 = *this < v5;
      v8 = *this + ~v5;
      if (a3)
      {
        a3 = v8 >= *this;
      }

      else
      {
        v8 = v6;
        a3 = v7;
      }

      *this = v8;
      this = (this + 8);
      --v4;
    }

    while (v4);
  }

  return a3;
}

unint64_t **llvm::APInt::operator-=(unint64_t **result, unint64_t a2)
{
  v2 = *(result + 2);
  if (v2 >= 0x41)
  {
    v5 = *result;
    v6 = (v2 + 63) >> 6;
    v7 = **result;
    **result = v7 - a2;
    if (v7 < a2)
    {
      v8 = v6 - 2;
      v9 = v5 + 1;
      do
      {
        v10 = v8;
        if ((*v9++)-- != 0)
        {
          break;
        }

        --v8;
      }

      while (v10);
    }

    v12 = &(*result)[(v6 - 1)];
    *v12 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = (*result - a2);
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = (v3 & v4);
  }

  return result;
}

uint64_t llvm::APInt::tcSubtractPart(llvm::APInt *this, unint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *this >= a2;
  *this -= a2;
  if (v3)
  {
    return 0;
  }

  v4 = a3 == 1;
  if (a3 != 1)
  {
    v5 = *(this + 1);
    *(this + 1) = v5 - 1;
    if (v5)
    {
      return 0;
    }

    v7 = 2;
    do
    {
      v8 = v7;
      if (a3 == v7)
      {
        break;
      }

      v9 = *(this + v7);
      *(this + v7++) = v9 - 1;
    }

    while (!v9);
    return v8 >= a3;
  }

  return v4;
}

uint64_t llvm::APInt::operator*@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v5 = *a2 * *result;
  *(a3 + 8) = v4;
  if (v4)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v5 & v6;
  return result;
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

uint64_t llvm::APInt::andAssignSlowCase(uint64_t this, const llvm::APInt *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *this;
    v4 = *a2;
    v5 = (v2 + 63) >> 6;
    if (v2 <= 0x140 || (v3 < v4 + 8 * v5 ? (v6 = v4 >= v3 + 8 * v5) : (v6 = 1), !v6))
    {
      v7 = 0;
LABEL_13:
      v12 = v5 - v7;
      v13 = 8 * v7;
      v14 = (v3 + v13);
      v15 = (v4 + v13);
      do
      {
        v16 = *v15++;
        *v14++ &= v16;
        --v12;
      }

      while (v12);
      return this;
    }

    v7 = ((v2 + 63) >> 6) & 0x7FFFFFC;
    v8 = (v4 + 16);
    v9 = (v3 + 16);
    v10 = v7;
    do
    {
      v11 = vandq_s8(*v9, *v8);
      v9[-1] = vandq_s8(v9[-1], v8[-1]);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v5 != v7)
    {
      goto LABEL_13;
    }
  }

  return this;
}

uint64_t llvm::APInt::orAssignSlowCase(uint64_t this, const llvm::APInt *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *this;
    v4 = *a2;
    v5 = (v2 + 63) >> 6;
    if (v2 <= 0x140 || (v3 < v4 + 8 * v5 ? (v6 = v4 >= v3 + 8 * v5) : (v6 = 1), !v6))
    {
      v7 = 0;
LABEL_13:
      v12 = v5 - v7;
      v13 = 8 * v7;
      v14 = (v3 + v13);
      v15 = (v4 + v13);
      do
      {
        v16 = *v15++;
        *v14++ |= v16;
        --v12;
      }

      while (v12);
      return this;
    }

    v7 = ((v2 + 63) >> 6) & 0x7FFFFFC;
    v8 = (v4 + 16);
    v9 = (v3 + 16);
    v10 = v7;
    do
    {
      v11 = vorrq_s8(*v9, *v8);
      v9[-1] = vorrq_s8(v9[-1], v8[-1]);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v5 != v7)
    {
      goto LABEL_13;
    }
  }

  return this;
}

uint64_t llvm::APInt::xorAssignSlowCase(uint64_t this, const llvm::APInt *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *this;
    v4 = *a2;
    v5 = (v2 + 63) >> 6;
    if (v2 <= 0x140 || (v3 < v4 + 8 * v5 ? (v6 = v4 >= v3 + 8 * v5) : (v6 = 1), !v6))
    {
      v7 = 0;
LABEL_13:
      v12 = v5 - v7;
      v13 = 8 * v7;
      v14 = (v3 + v13);
      v15 = (v4 + v13);
      do
      {
        v16 = *v15++;
        *v14++ ^= v16;
        --v12;
      }

      while (v12);
      return this;
    }

    v7 = ((v2 + 63) >> 6) & 0x7FFFFFC;
    v8 = (v4 + 16);
    v9 = (v3 + 16);
    v10 = v7;
    do
    {
      v11 = veorq_s8(*v9, *v8);
      v9[-1] = veorq_s8(v9[-1], v8[-1]);
      *v9 = v11;
      v8 += 2;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v5 != v7)
    {
      goto LABEL_13;
    }
  }

  return this;
}

uint64_t llvm::APInt::operator*=(uint64_t a1, uint64_t *a2)
{
  llvm::APInt::operator*(a1, a2, &v4);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::APInt::operator*=(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= 0x41)
  {
    v5 = (v2 + 63) >> 6;
    v6 = *result;
    if (a2)
    {
      v7 = 0;
      v8 = a2;
      v9 = HIDWORD(a2);
      v10 = (v2 + 63) >> 6;
      do
      {
        v11 = *v6;
        if (*v6)
        {
          v12 = *v6;
          v13 = v11 * v8;
          v14 = HIDWORD(v11);
          v15 = v12 * v9;
          v16 = HIDWORD(v15) + v14 * v9;
          v17 = v14 * v8;
          v18 = HIDWORD(v17);
          v19 = ((v15 + v17) << 32) + v12 * v8;
          v20 = v19 + v7;
          v11 = (__PAIR128__((__PAIR128__(v16, v13) + __PAIR128__(v18, v15 << 32)) >> 64, v19) + __PAIR128__(v19 < v13 + (v15 << 32), v7)) >> 64;
          v7 = v20;
        }

        *v6++ = v7;
        v7 = v11;
        --v10;
      }

      while (v10);
    }

    else
    {
      *v6 = 0;
      v21 = result;
      bzero(v6 + 1, 8 * v5 - 8);
      result = v21;
    }

    v22 = (*result + 8 * (v5 - 1));
    *v22 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = *result * a2;
    *result = v3;
    v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    if (!v2)
    {
      v4 = 0;
    }

    *result = v3 & v4;
  }

  return result;
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
    if (a3)
    {
      v8 = this;
      v9 = a2;
      if (a7)
      {
        do
        {
          v11 = *v9++;
          v10 = v11;
          if (v11)
          {
            v12 = v10;
            v13 = v10 * a3;
            v14 = HIDWORD(v10);
            v15 = v12 * HIDWORD(a3);
            v16 = HIDWORD(v15) + v14 * HIDWORD(a3);
            v17 = v14 * a3;
            v18 = HIDWORD(v17);
            v19 = ((v15 + v17) << 32) + v12 * a3;
            v20 = v19 + a4;
            v10 = (__PAIR128__((__PAIR128__(v16, v13) + __PAIR128__(v18, v15 << 32)) >> 64, v19) + __PAIR128__(v19 < v13 + (v15 << 32), a4)) >> 64;
            a4 = v20;
          }

          if (__CFADD__(a4, *v8))
          {
            ++v10;
          }

          *v8 += a4;
          v8 = (v8 + 8);
          a4 = v10;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v21 = *v9++;
          v10 = v21;
          if (v21)
          {
            v22 = v10;
            v23 = v10 * a3;
            v24 = HIDWORD(v10);
            v25 = v22 * HIDWORD(a3);
            v26 = HIDWORD(v25) + v24 * HIDWORD(a3);
            v27 = v24 * a3;
            v28 = HIDWORD(v27);
            v29 = ((v25 + v27) << 32) + v22 * a3;
            v30 = v29 + a4;
            v10 = (__PAIR128__((__PAIR128__(v26, v23) + __PAIR128__(v28, v25 << 32)) >> 64, v29) + __PAIR128__(v29 < v23 + (v25 << 32), a4)) >> 64;
            a4 = v30;
          }

          *v8 = a4;
          v8 = (v8 + 8);
          a4 = v10;
          --v7;
        }

        while (v7);
      }

LABEL_24:
      if (a5 < a6)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    if (a7)
    {
      v31 = this;
      do
      {
        v10 = __CFADD__(a4, *v31);
        *v31 += a4;
        v31 = (v31 + 8);
        a4 = v10;
        --v7;
      }

      while (v7);
      goto LABEL_24;
    }

    *this = a4;
    if (v7 != 1)
    {
      if (v7 <= 4)
      {
        v33 = 1;
LABEL_32:
        v37 = (this + 8 * v33);
        v38 = v7 - v33;
        do
        {
          *v37++ = 0;
          --v38;
        }

        while (v38);
        goto LABEL_34;
      }

      v34 = (v7 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v33 = v34 | 1;
      v35 = (this + 24);
      v36 = v34;
      do
      {
        *(v35 - 1) = 0uLL;
        *v35 = 0uLL;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      if (v7 - 1 != v34)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v10 = 0;
    if (a5 < a6)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v10 = a4;
  if (a5 < a6)
  {
LABEL_25:
    *(this + a5) = v10;
    return 0;
  }

LABEL_35:
  if (!v10)
  {
    v39 = 0;
    if (!a3 || a6 >= a5)
    {
      return v39;
    }

    v40 = &a2[a6];
    v41 = a5 - a6;
    while (!*v40++)
    {
      if (!--v41)
      {
        return 0;
      }
    }
  }

  return 1;
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

uint64_t llvm::APInt::tcCompare(llvm::APInt *this, const unint64_t *a2, const unint64_t *a3)
{
  v3 = a3;
  do
  {
    if (!(v3 * 8))
    {
      return 0;
    }

    v4 = *(this + v3 * 8 - 8);
    v5 = a2[--v3];
  }

  while (v4 == v5);
  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
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
  if (!v1)
  {
    v5 = 0;
LABEL_5:
    *this &= v5;
    return this;
  }

  v2 = *this;
  v3 = (v1 + 63) >> 6;
  if (v1 < 0xC1)
  {
    v4 = 0;
LABEL_9:
    v9 = v3 - v4;
    v10 = &v2->i64[v4];
    do
    {
      *v10 = ~*v10;
      ++v10;
      --v9;
    }

    while (v9);
    goto LABEL_11;
  }

  v4 = ((v1 + 63) >> 6) & 0x7FFFFFC;
  v6 = v2 + 1;
  v7 = v4;
  do
  {
    v8 = vmvnq_s8(*v6);
    v6[-1] = vmvnq_s8(v6[-1]);
    *v6 = v8;
    v6 += 2;
    v7 -= 4;
  }

  while (v7);
  if (v3 != v4)
  {
    goto LABEL_9;
  }

LABEL_11:
  v5 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
  if (v1 < 0x41)
  {
    goto LABEL_5;
  }

  this = *this + 8 * (v3 - 1);
  *this &= v5;
  return this;
}

const llvm::APInt *llvm::APInt::concatSlowCase@<X0>(llvm::APInt *this@<X0>, const void **a2@<X1>, llvm::APInt *a3@<X8>)
{
  v4 = *(this + 2);
  v5 = *(a2 + 2);
  v6 = v5 + v4;
  if (v5 + v4 > 0x40)
  {
    if (v4)
    {
      operator new[]();
    }

    *(a3 + 2) = v6;
    operator new[]();
  }

  v7 = *a2;
  *(a3 + 2) = v6;
  v8 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v7 & v8;

  return llvm::APInt::insertBits(a3, this, v5);
}

void llvm::APInt::zext(unint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, unsigned int a3@<W1>)
{
  if (a3 > 0x40)
  {
    if (*(this + 2) == a3)
    {
      *(a1 + 2) = a3;
      operator new[]();
    }

    operator new[]();
  }

  v4 = *this;
  *(a1 + 2) = a3;
  v5 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
  if (!a3)
  {
    v5 = 0;
  }

  *a1 = v4 & v5;
}

const llvm::APInt *llvm::APInt::insertBits(const llvm::APInt *this, const llvm::APInt *a2, unsigned int a3)
{
  v3 = *(a2 + 2);
  if (v3)
  {
    v4 = *(this + 2);
    if (v3 == v4)
    {
      if (v3 > 0x40)
      {
        if (this != a2)
        {
          *(this + 2) = v3;
          v6 = *this;
          v7 = *a2;

          return memcpy(v6, v7, ((v3 + 63) >> 3) & 0x3FFFFFF8);
        }
      }

      else
      {
        *this = *a2;
        *(this + 2) = *(a2 + 2);
      }
    }

    else if (v4 > 0x40)
    {
      v8 = a3 & 0x3F;
      v9 = a3 >> 6;
      v10 = (v3 - 1 + a3) >> 6;
      if (a3 >> 6 == v10)
      {
        *(*this + 8 * v9) &= ~(0xFFFFFFFFFFFFFFFFLL >> -v3 << v8);
        *(*this + 8 * v9) |= *a2 << v8;
      }

      else if ((a3 & 0x3F) != 0)
      {
        v11 = 0;
        do
        {
          while (1)
          {
            v12 = *(a2 + 2) >= 0x41u ? (*a2 + 8 * (v11 >> 6)) : a2;
            v13 = *(this + 2);
            if (((*v12 >> v11) & 1) == 0)
            {
              break;
            }

            v14 = this;
            if (v13 >= 0x41)
            {
              v14 = (*this + 8 * (a3 >> 6));
            }

            *v14 |= 1 << a3;
            ++v11;
            ++a3;
            LODWORD(v3) = v3 - 1;
            if (!v3)
            {
              return this;
            }
          }

          v15 = this;
          if (v13 >= 0x41)
          {
            v15 = (*this + 8 * (a3 >> 6));
          }

          *v15 &= ~(1 << a3);
          ++v11;
          ++a3;
          LODWORD(v3) = v3 - 1;
        }

        while (v3);
      }

      else
      {
        v16 = (*this + 8 * v9);
        v17 = *a2;
        if (v3 < 0x41)
        {
          v17 = a2;
        }

        v18 = this;
        this = memcpy(v16, v17, (v3 >> 3) & 0x1FFFFFF8);
        if ((v3 & 0x3F) != 0)
        {
          *(*v18 + 8 * v10) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v3 & 0x3F));
          if (*(a2 + 2) >= 0x41u)
          {
            v20 = (*a2 + 8 * ((v3 - 1) >> 6));
          }

          else
          {
            v20 = a2;
          }

          *(*v18 + 8 * v10) |= *v20;
        }
      }
    }

    else
    {
      v5 = *this & ~(0xFFFFFFFFFFFFFFFFLL >> -v3 << a3);
      *this = v5;
      *this = (*a2 << a3) | v5;
    }
  }

  return this;
}

uint64_t *llvm::APInt::flipBit(uint64_t *this, unsigned int a2)
{
  if (*(this + 2) > 0x40u)
  {
    this = (*this + 8 * (a2 >> 6));
  }

  v2 = 1 << a2;
  v3 = *this;
  if ((*this & (1 << a2)) != 0)
  {
    *this = v3 & ~v2;
  }

  else
  {
    *this = v3 | v2;
  }

  return this;
}

uint64_t llvm::APInt::insertBits(uint64_t this, uint64_t a2, unsigned int a3, int a4)
{
  if (a4)
  {
    v4 = 0xFFFFFFFFFFFFFFFFLL >> -a4;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & a2;
  if (*(this + 8) > 0x40u)
  {
    v6 = a3 >> 6;
    v7 = (a3 + a4 - 1) >> 6;
    *(*this + 8 * v6) &= ~(v4 << a3);
    *(*this + 8 * v6) |= v5 << a3;
    if (a3 >> 6 != v7)
    {
      v8 = -(a3 & 0x3F);
      *(*this + 8 * v7) &= ~(v4 >> v8);
      *(*this + 8 * v7) |= v5 >> v8;
    }
  }

  else
  {
    *this = *this & ~(v4 << a3) | (v5 << a3);
  }

  return this;
}

void llvm::APInt::extractBits(llvm::APInt *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(this + 2);
  if (v5 <= 0x40)
  {
    v6 = *this >> a3;
    *(a4 + 8) = a2;
    if (a2 <= 0x40)
    {
LABEL_3:
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
      if (!a2)
      {
        v7 = 0;
      }

      *a4 = v6 & v7;
      return;
    }

LABEL_8:
    operator new[]();
  }

  v8 = a3 & 0x3F;
  v9 = a3 >> 6;
  if ((a2 + a3 - 1) >> 6 == v9)
  {
    v6 = *(*this + 8 * v9) >> v8;
    *(a4 + 8) = a2;
    if (a2 <= 0x40)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x3F) != 0)
  {
    if (a2 >= 0x41)
    {
      operator new[]();
    }

    v21 = 0;
    if (a2)
    {
      v10 = &v21;
      v14 = (v5 + 63) >> 6;
      v15 = (*this + 8 * v9 + 8);
      v16 = v9 + 1;
      v17 = (a2 + 63) >> 6;
      do
      {
        if (v16 < v14)
        {
          v18 = *v15;
        }

        else
        {
          v18 = 0;
        }

        *v10++ = (v18 << (64 - v8)) | (*(v15++ - 1) >> v8);
        ++v16;
        --v17;
      }

      while (v17);
      v19 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    }

    else
    {
      v19 = 0;
    }

    v20 = v21 & v19;
    *(a4 + 8) = a2;
    *a4 = v20;
  }

  else
  {
    v11 = (*this + 8 * v9);
    *(a4 + 8) = a2;
    if (a2 > 0x40)
    {
      operator new[]();
    }

    v12 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v12 = 0;
    }

    v13 = *v11;
    *a4 = *v11;
    *a4 = v12 & v13;
  }
}

uint64_t llvm::APInt::APInt(uint64_t this, const void **a2)
{
  v2 = *(a2 + 2);
  *(this + 8) = v2;
  if (v2 > 0x40)
  {
    operator new[]();
  }

  *this = *a2;
  return this;
}

unint64_t llvm::APInt::extractBitsAsZExtValue(llvm::APInt *this, int a2, unsigned int a3)
{
  if (*(this + 2) > 0x40u)
  {
    v4 = (a2 + a3 - 1) >> 6;
    v3 = *(*this + 8 * (a3 >> 6)) >> a3;
    if (a3 >> 6 != v4)
    {
      v3 |= *(*this + 8 * v4) << -(a3 & 0x3F);
    }
  }

  else
  {
    v3 = *this >> a3;
  }

  v5 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
  if (!a2)
  {
    v5 = 0;
  }

  return v3 & v5;
}

unint64_t llvm::APInt::getSufficientBitsNeeded(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v4 = v3 == 45;
  v5 = v3 == 43 || v3 == 45;
  v6 = a2 - v5;
  v7 = (((a3 - 2) >> 1) | ((a3 - 2) << 7));
  if (v7 <= 3)
  {
    if (!(((a3 - 2) >> 1) | ((a3 - 2) << 7)))
    {
      return v6 + v4;
    }

    if (v7 == 3)
    {
      return 3 * v6 + v4;
    }

LABEL_11:
    if (v6 == 1)
    {
      return v4 + 7;
    }

    v6 = 16 * v6 / 3;
    return v6 + v4;
  }

  if (v7 != 4)
  {
    if (v7 == 7)
    {
      return v4 | (4 * v6);
    }

    goto LABEL_11;
  }

  if (v6 == 1)
  {
    return v4 + 4;
  }

  else
  {
    return (v6 << 6) / 0x12 + v4;
  }
}

uint64_t llvm::APInt::getBitsNeeded(unsigned __int8 *a1, uint64_t a2, unsigned int a3)
{
  v3 = *a1;
  v4 = v3 == 45;
  v5 = v3 == 43 || v3 == 45;
  v6 = a2 - v5;
  v7 = (((a3 - 2) >> 1) | ((a3 - 2) << 7));
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      if (v6 == 1)
      {
        v8 = 4;
      }

      else
      {
        v8 = (v6 << 6) / 0x12uLL;
      }

      goto LABEL_18;
    }

    if (v7 != 7)
    {
      goto LABEL_11;
    }

    v9 = v4 | (4 * v6);
  }

  else
  {
    if (((a3 - 2) >> 1) | ((a3 - 2) << 7))
    {
      if (v7 == 3)
      {
        v8 = 3 * v6;
LABEL_18:
        v9 = v8 + v4;
        goto LABEL_19;
      }

LABEL_11:
      if (v6 == 1)
      {
        v8 = 7;
      }

      else
      {
        v8 = 16 * v6 / 3uLL;
      }

      goto LABEL_18;
    }

    v9 = v6 + v4;
  }

LABEL_19:
  if (a3 <= 0x10 && ((1 << a3) & 0x10104) != 0)
  {
    return v9;
  }

  v34 = v9;
  llvm::APInt::fromString(&v33, a2, &a1[v5], v6, a3);
  if (v34 <= 0x40)
  {
    v11 = v33;
    v12 = v34 + ~(v34 + __clz(v33) - 64);
    if (v12 != -1)
    {
      goto LABEL_24;
    }

LABEL_39:
    if (v3 == 45)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (v34 < 0x41)
    {
      return v9;
    }

    goto LABEL_53;
  }

  v14 = 0;
  v11 = v33;
  v15 = ((v34 + 63) >> 6) + 1;
  while (1)
  {
    v16 = v33[(v15 - 2)];
    if (v16)
    {
      break;
    }

    v14 += 64;
    if (--v15 <= 1)
    {
      goto LABEL_36;
    }
  }

  v14 += __clz(v16);
LABEL_36:
  v17 = v34 | 0xFFFFFFC0;
  if ((v34 & 0x3F) == 0)
  {
    v17 = 0;
  }

  v12 = v34 + ~(v14 + v17);
  if (v12 == -1)
  {
    goto LABEL_39;
  }

LABEL_24:
  if (v3 != 45)
  {
    v13 = 1;
LABEL_33:
    v9 = v13 + v12;
    if (v34 < 0x41)
    {
      return v9;
    }

    goto LABEL_53;
  }

  if (v34 > 0x40)
  {
    v18 = (v34 + 63) >> 6;
    if (v34 >= 0x1C1)
    {
      v19 = ((v34 + 63) >> 6) & 0x7FFFFF8;
      v21 = (v11 + 32);
      v22 = 0uLL;
      v23 = v19;
      v24 = 0uLL;
      do
      {
        v25 = v21[-2];
        v26 = v21[-1];
        v27 = *v21;
        v28 = v21[1];
        v21 += 4;
        v22 = vaddq_s32(v22, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v25)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v26))))));
        v24 = vaddq_s32(v24, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v27)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v28))))));
        v23 -= 8;
      }

      while (v23);
      v20 = vaddvq_s32(vaddq_s32(v24, v22));
      if (v18 == v19)
      {
LABEL_51:
        if (v20 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v29 = v18 - v19;
    v30 = (v11 + 8 * v19);
    do
    {
      v31 = *v30++;
      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      v20 += v32.i32[0];
      --v29;
    }

    while (v29);
    goto LABEL_51;
  }

  if ((v11 ^ (v11 - 1)) <= v11 - 1)
  {
LABEL_27:
    v13 = 2;
    goto LABEL_33;
  }

LABEL_52:
  v9 = v12 + (v3 == 45);
  if (v34 < 0x41)
  {
    return v9;
  }

LABEL_53:
  if (!v11)
  {
    return v9;
  }

  MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  return v9;
}

unint64_t llvm::hash_value(llvm::hashing::detail **this, const llvm::APInt *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(*this, *this + (((v2 + 63) >> 3) & 0x3FFFFFF8));
    *&v7[4] = 0u;
    v8 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v14 = 0xFF51AFD7ED558CCDLL;
    v6 = *(this + 2);
    *v7 = v4;
  }

  else
  {
    *&v7[4] = 0u;
    v8 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v14 = 0xFF51AFD7ED558CCDLL;
    v6 = v2;
    *v7 = *this;
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(&v6, 0, &v7[8], &v10 + 8);
}

unint64_t llvm::DenseMapInfo<llvm::APInt,void>::getHashValue(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x40)
  {
    v5 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(*a1, *a1 + (((v1 + 63) >> 3) & 0x3FFFFFF8));
    LODWORD(v8) = *(a1 + 8);
    HIDWORD(v8) = v5;
    v6 = __ROR8__(v5 + 12, 12);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v8 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v5;
  }

  else
  {
    LODWORD(v7) = *(a1 + 8);
    *(&v7 + 4) = *a1;
    v2 = __ROR8__(*a1 + 12, 12);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v2 ^ v7 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ *a1;
  }
}

BOOL llvm::APInt::isSplat(llvm::APInt *this, unsigned int a2)
{
  llvm::APInt::rotl(&__s2, this, a2);
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    v8 = *this;
    v5 = __s2;
    v6 = memcmp(v8, __s2, ((v3 + 63) >> 3) & 0x3FFFFFF8) == 0;
    if (v12 >= 0x41 && v5 != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *this;
    v5 = __s2;
    v6 = v4 == __s2;
    if (v12 >= 0x41 && __s2 != 0)
    {
LABEL_12:
      MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    }
  }

  return v6;
}

void llvm::APInt::rotl(int8x16_t **__return_ptr a1@<X8>, llvm::APInt *this@<X0>, unsigned int a3@<W1>)
{
  v3 = *(this + 2);
  if (v3)
  {
    if (a3 % v3)
    {
      if (v3 > 0x40)
      {
        operator new[]();
      }

      v4 = ((*this << (a3 % v3)) & (0xFFFFFFFFFFFFFFFFLL >> -v3) | (*this >> (v3 - (a3 % v3))));
      *(a1 + 2) = *(this + 2);
      *a1 = v4;
    }

    else
    {
      *(a1 + 2) = v3;
      if (v3 > 0x40)
      {
        operator new[]();
      }

      *a1 = *this;
    }
  }

  else
  {

    llvm::APInt::APInt(a1, this);
  }
}

void llvm::APInt::getHiBits(const void **this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 2);
  *(a3 + 8) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  if (a2)
  {
    *a3 = *this >> (v3 - a2);
  }

  else
  {
    *a3 = 0;
  }
}

void llvm::APInt::getLoBits(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(this + 2);
  *(a3 + 8) = v5;
  if (v5 >= 0x41)
  {
    operator new[]();
  }

  *a3 = 0;
  if (a2)
  {
    if (a2 > 0x40)
    {
      v6 = a2 >> 6;
      if ((a2 & 0x3F) != 0)
      {
        *(8 * v6) |= 0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F);
      }

      MEMORY[0] = -1;
      if (a2 >= 0x80)
      {
        memset(8, 255, 8 * v6 - 8);
      }
    }

    else
    {
      *a3 |= 0xFFFFFFFFFFFFFFFFLL >> -a2;
    }
  }

  *a3 &= *this;
}

void llvm::APInt::getSplat(llvm::APInt *this@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (this > 0x40)
  {
    if (*(a2 + 2) == this)
    {
      *(a3 + 8) = this;
      operator new[]();
    }

    operator new[]();
  }

  v4 = *a2;
  *(a3 + 8) = this;
  v5 = 0xFFFFFFFFFFFFFFFFLL >> -this;
  if (!this)
  {
    v5 = 0;
  }

  v6 = v4 & v5;
  *a3 = v4 & v5;
  v7 = *(a2 + 2);
  if (v7 < this)
  {
    do
    {
      v8 = v6 << v7;
      if (v7 == this)
      {
        v8 = 0;
      }

      v6 |= v8 & (0xFFFFFFFFFFFFFFFFLL >> -this);
      v7 *= 2;
    }

    while (v7 < this);
    *a3 = v6;
  }
}

uint64_t llvm::APInt::countLeadingZerosSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

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
  }

  v7 = __clz(v4) + v2;
  if ((v1 & 0x3F) != 0)
  {
    v8 = v1 | 0xFFFFFFC0;
  }

  else
  {
    v8 = 0;
  }

  return (v7 + v8);
}

unint64_t llvm::APInt::countLeadingOnesSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if ((v1 & 0x3F) != 0)
  {
    v2 = *(this + 2) & 0x3F;
  }

  else
  {
    v2 = 64;
  }

  if ((v1 & 0x3F) != 0)
  {
    v3 = 64 - (v1 & 0x3F);
  }

  else
  {
    v3 = 0;
  }

  v4 = *this;
  result = __clz(~(*(*this + (((v1 + 63) >> 3) & 0x3FFFFFF8) - 8) << v3));
  if (v2 == result && v1 >= 0x41)
  {
    v6 = ((v1 + 63) >> 6) - 1;
    LODWORD(result) = v2;
    while (1)
    {
      v7 = *(v4 + 8 * --v6);
      if (v7 != -1)
      {
        break;
      }

      result = (result + 64);
      if (v6 <= 0)
      {
        return result;
      }
    }

    return __clz(~v7) + result;
  }

  return result;
}

uint64_t llvm::APInt::countTrailingZerosSlowCase(unint64_t **this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 63) >> 6;
  v4 = *this;
  v5 = v3 << 6;
  while (!*v4)
  {
    ++v4;
    v2 -= 64;
    if (!--v3)
    {
      if (v1 >= v5)
      {
        return v5;
      }

      else
      {
        return v1;
      }
    }
  }

  v7 = __clz(__rbit64(*v4)) - v2;
  if (v1 >= v7)
  {
    return v7;
  }

  else
  {
    return v1;
  }
}

uint64_t llvm::APInt::countTrailingOnesSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 63) >> 6;
  v4 = *this;
  result = (v3 << 6);
  while (*v4 == -1)
  {
    ++v4;
    v2 -= 64;
    if (!--v3)
    {
      return result;
    }
  }

  return __clz(__rbit64(~*v4)) - v2;
}

uint64_t llvm::APInt::countPopulationSlowCase(int8x16_t **this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 63) >> 6;
  v3 = *this;
  if (v1 <= 0x1C0)
  {
    v4 = 0;
    LODWORD(result) = 0;
LABEL_8:
    v14 = v3 + v4;
    v15 = v2 - v4;
    do
    {
      v16 = *v14++;
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      result = (result + v17.i32[0]);
      --v15;
    }

    while (v15);
    return result;
  }

  v4 = ((v1 + 63) >> 6) & 0x7FFFFF8;
  v6 = v3 + 2;
  v7 = 0uLL;
  v8 = v4;
  v9 = 0uLL;
  do
  {
    v10 = v6[-2];
    v11 = v6[-1];
    v12 = *v6;
    v13 = v6[1];
    v6 += 4;
    v7 = vaddq_s32(v7, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v10)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v11))))));
    v9 = vaddq_s32(v9, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v12)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v13))))));
    v8 -= 8;
  }

  while (v8);
  result = vaddvq_s32(vaddq_s32(v9, v7));
  if (v2 != v4)
  {
    goto LABEL_8;
  }

  return result;
}

BOOL llvm::APInt::intersectsSlowCase(uint64_t **this, uint64_t **a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 63) >> 6;
  v4 = *this;
  v5 = *a2;
  v6 = v3 - 1;
  do
  {
    v8 = *v4++;
    v7 = v8;
    v9 = *v5++;
    v10 = v9 & v7;
    result = v10 != 0;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v6 == 0;
    }

    --v6;
  }

  while (!v12);
  return result;
}

BOOL llvm::APInt::isSubsetOfSlowCase(uint64_t **this, uint64_t **a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 1;
  }

  v3 = (v2 + 63) >> 6;
  v4 = *this;
  v5 = *a2;
  v6 = v3 - 1;
  do
  {
    v8 = *v4++;
    v7 = v8;
    v9 = *v5++;
    v10 = v7 & ~v9;
    result = v10 == 0;
    v13 = v6-- != 0;
  }

  while (!v10 && v13);
  return result;
}

void llvm::APInt::byteSwap(llvm::APInt *this@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(this + 2);
  if (v2 == 32)
  {
    v3 = bswap32(*this);
    v4 = 32;
    goto LABEL_5;
  }

  if (v2 == 16)
  {
    v3 = bswap32(*this) >> 16;
    v4 = 16;
LABEL_5:
    *(a2 + 2) = v4;
    *a2 = v3;
    return;
  }

  if (v2 <= 0x40)
  {
    v5 = bswap64(*this) >> -v2;
    *(a2 + 2) = v2;
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    if (!v2)
    {
      v6 = 0;
    }

    *a2 = v5 & v6;
    return;
  }

  v7 = (v2 + 63) & 0xFFFFFFC0;
  *(a2 + 2) = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a2 = 0;
  v8 = (v2 + 63) >> 6;
  v9 = *this;
  if (v2 <= 0x440 || ((v10 = ((8 * v8 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8, v10 + v9) ? (v11 = v9 + v10 - 8 * v8 >= 8 * v8) : (v11 = 1), !v11))
  {
    v12 = 0;
LABEL_25:
    v18 = ~v12 + v8;
    v19 = (8 * v12);
    do
    {
      *v19++ = bswap64(*(v9 + 8 * v18--));
    }

    while (v18 != -1);
    goto LABEL_27;
  }

  v12 = ((v2 + 63) >> 6) & 0x7FFFFFC;
  v13 = v8 - 1;
  v14 = 16;
  v15 = v12;
  do
  {
    v16 = v9 + 8 * v13;
    v17 = vrev64q_s8(vextq_s8(*(v16 - 24), *(v16 - 24), 8uLL));
    *(v14 - 16) = vrev64q_s8(vextq_s8(*(v16 - 8), *(v16 - 8), 8uLL));
    *v14 = v17;
    v13 -= 4;
    v14 += 32;
    v15 -= 4;
  }

  while (v15);
  if (v8 != v12)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v7 != v2)
  {
    *a2 = 0;
    *(a2 + 2) = v2;
  }
}

void llvm::APInt::reverseBits(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  v3 = *(this + 2);
  HIDWORD(v5) = v3;
  LODWORD(v5) = v3;
  v4 = v5 >> 3;
  if (v4 > 1)
  {
    switch(v4)
    {
      case 2:
        v8 = __rbit32(*this) >> 16;
        *(a2 + 2) = v3;
        if (v3 > 0x40)
        {
          goto LABEL_18;
        }

        break;
      case 4:
        v8 = __rbit32(*this);
        *(a2 + 2) = v3;
        if (v3 > 0x40)
        {
          goto LABEL_18;
        }

        break;
      case 8:
        v6 = __rbit64(*this);
        *(a2 + 2) = v3;
        if (v3 <= 0x40)
        {
          v7 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
          if (!v3)
          {
            v7 = 0;
          }

          *a2 = v6 & v7;
          return;
        }

LABEL_18:
        operator new[]();
      default:
        goto LABEL_21;
    }

LABEL_14:
    v9 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v9 = 0;
    }

    *a2 = v9 & v8;
    return;
  }

  if (v4)
  {
    if (v4 != 1)
    {
LABEL_21:
      if (v3 > 0x40)
      {
        operator new[]();
      }

      v10 = *this;
      v16 = *this;
      *(a2 + 2) = v3;
      v11 = 0;
      v12 = v3;
      *a2 = 0;
      if (v3)
      {
        v13 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
      }

      else
      {
        v13 = 0;
      }

      while (v16)
      {
        v14 = 2 * v11;
        if (v3 == 1)
        {
          v14 = 0;
        }

        *a2 = v14 & v13;
        v11 = (*a2 | v16 & 1) & v13;
        *a2 = v11;
        --v12;
        if (v3 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 >>= 1;
        }

        v16 = v10;
      }

      v15 = v11 << v12;
      if (v3 == v12)
      {
        v15 = 0;
      }

      *a2 = v15 & v13;
      return;
    }

    v8 = __rbit32(*this) >> 24;
    *(a2 + 2) = v3;
    if (v3 > 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  *(a2 + 2) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  *a2 = *this;
}

void llvm::APIntOps::GreatestCommonDivisor(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7 > 0x40)
  {
    v8 = *a1;
    v9 = *a2;
    if (!memcmp(*a1, *a2, ((v7 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_25;
    }

    v11 = 0;
    v12 = ((v7 + 63) >> 6) + 1;
    while (1)
    {
      v13 = *(v8 + 8 * (v12 - 2));
      if (v13)
      {
        break;
      }

      v11 += 64;
      if (--v12 <= 1)
      {
        v14 = v7 | 0xFFFFFFC0;
        if ((v7 & 0x3F) == 0)
        {
          v14 = 0;
        }

        if (v11 + v14 != v7)
        {
          goto LABEL_4;
        }

        goto LABEL_14;
      }
    }

    v15 = __clz(v13) + v11;
    v16 = v7 | 0xFFFFFFC0;
    if ((v7 & 0x3F) == 0)
    {
      v16 = 0;
    }

    if (v15 + v16 != v7)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v8 = *a1;
  v9 = *a2;
  if (*a1 == *a2)
  {
    goto LABEL_25;
  }

  if (!v8)
  {
LABEL_14:
    *(a3 + 8) = *(a2 + 8);
    v8 = v9;
    v6 = (a2 + 8);
    goto LABEL_178;
  }

LABEL_4:
  v10 = *(a2 + 8);
  if (v10 <= 0x40)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v17 = 0;
  v18 = ((v10 + 63) >> 6) + 1;
  while (1)
  {
    v19 = *(v9 + 8 * (v18 - 2));
    if (v19)
    {
      break;
    }

    v17 += 64;
    if (--v18 <= 1)
    {
      v20 = v10 | 0xFFFFFFC0;
      if ((v10 & 0x3F) == 0)
      {
        v20 = 0;
      }

      if (v17 + v20 == v10)
      {
        goto LABEL_25;
      }

LABEL_29:
      if (v7 <= 0x40)
      {
        v23 = __clz(__rbit64(v8));
        if (v7 >= v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = v7;
        }

        if (v10 > 0x40)
        {
          goto LABEL_34;
        }

LABEL_51:
        v35 = __clz(__rbit64(v9));
        if (v10 >= v35)
        {
          v29 = v35;
        }

        else
        {
          v29 = *(a2 + 8);
        }

        v30 = v24 - v29;
        if (v24 <= v29)
        {
          goto LABEL_55;
        }

LABEL_41:
        v24 = v29;
        if (v7 <= 0x40)
        {
          if (v7 == v30)
          {
            *a1 = 0;
          }

          else
          {
            *a1 = v8 >> v30;
          }

          goto LABEL_98;
        }

        v39 = (v7 + 63) >> 6;
        if (v30 >> 6 >= v39)
        {
          v40 = (v7 + 63) >> 6;
        }

        else
        {
          v40 = v30 >> 6;
        }

        v41 = v39 - v40;
        v42 = v30 & 0x3F;
        if ((v30 & 0x3F) != 0)
        {
          if (v30 >> 6 < v39)
          {
            v43 = *(v8 + 8 * v40) >> v42;
            *v8 = v43;
            if (v41 != 1)
            {
              v44 = 1 - v41;
              v45 = (v8 + 8);
              v46 = v40 + 1;
              do
              {
                *(v45 - 1) = (*(v8 + 8 * v46) << (64 - v42)) | v43;
                v43 = *(v8 + 8 * v46) >> v42;
                *v45++ = v43;
                ++v46;
                v47 = __CFADD__(v44++, 1);
              }

              while (!v47);
            }
          }
        }

        else
        {
          memmove(v8, (v8 + 8 * v40), 8 * v41);
        }

        v56 = 8 * v40;
        v57 = (v8 + 8 * v41);
LABEL_95:
        bzero(v57, v56);
        goto LABEL_98;
      }

      v31 = 0;
      v32 = (v7 + 63) >> 6;
      v33 = v32 << 6;
      v34 = v8;
      do
      {
        if (*v34)
        {
          v38 = __clz(__rbit64(*v34)) - v31;
          if (v7 >= v38)
          {
            v24 = v38;
          }

          else
          {
            v24 = v7;
          }

          if (v10 <= 0x40)
          {
            goto LABEL_51;
          }

          goto LABEL_34;
        }

        ++v34;
        v31 -= 64;
        --v32;
      }

      while (v32);
      if (v7 >= v33)
      {
        v24 = v33;
      }

      else
      {
        v24 = v7;
      }

      if (v10 <= 0x40)
      {
        goto LABEL_51;
      }

LABEL_34:
      v25 = 0;
      v26 = (v10 + 63) >> 6;
      v27 = v26 << 6;
      v28 = v9;
      do
      {
        if (*v28)
        {
          v37 = __clz(__rbit64(*v28)) - v25;
          if (v10 >= v37)
          {
            v29 = v37;
          }

          else
          {
            v29 = *(a2 + 8);
          }

          v30 = v24 - v29;
          if (v24 <= v29)
          {
            goto LABEL_55;
          }

          goto LABEL_41;
        }

        ++v28;
        v25 -= 64;
        --v26;
      }

      while (v26);
      if (v10 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = *(a2 + 8);
      }

      v30 = v24 - v29;
      if (v24 > v29)
      {
        goto LABEL_41;
      }

LABEL_55:
      v36 = v29 - v24;
      if (v29 <= v24)
      {
        goto LABEL_98;
      }

      if (v10 > 0x40)
      {
        v48 = (v10 + 63) >> 6;
        if (v36 >> 6 >= v48)
        {
          v49 = (v10 + 63) >> 6;
        }

        else
        {
          v49 = v36 >> 6;
        }

        v50 = v48 - v49;
        v51 = v36 & 0x3F;
        if ((v36 & 0x3F) != 0)
        {
          if (v36 >> 6 < v48)
          {
            v52 = *(v9 + 8 * v49) >> v51;
            *v9 = v52;
            if (v50 != 1)
            {
              v53 = 1 - v50;
              v54 = (v9 + 8);
              v55 = v49 + 1;
              do
              {
                *(v54 - 1) = (*(v9 + 8 * v55) << (64 - v51)) | v52;
                v52 = *(v9 + 8 * v55) >> v51;
                *v54++ = v52;
                ++v55;
                v47 = __CFADD__(v53++, 1);
              }

              while (!v47);
            }
          }
        }

        else
        {
          memmove(v9, (v9 + 8 * v49), 8 * v50);
        }

        v56 = 8 * v49;
        v57 = (v9 + 8 * v50);
        goto LABEL_95;
      }

      if (v10 == v36)
      {
        *a2 = 0;
      }

      else
      {
        *a2 = v9 >> v36;
      }

      while (1)
      {
LABEL_98:
        v58 = *v6;
        if (v58 > 0x40)
        {
          v8 = *a1;
          v65 = v58 + 63;
          v59 = *a2;
          if (!memcmp(*a1, *a2, ((v58 + 63) >> 3) & 0x3FFFFFF8))
          {
LABEL_177:
            *(a3 + 8) = v58;
            goto LABEL_178;
          }

          v66 = v65 >> 6;
          while (v66 * 8)
          {
            v67 = *(v8 + v66 * 8 - 8);
            v68 = v59[--v66];
            if (v67 != v68)
            {
              if (v67 <= v68)
              {
                break;
              }

              v69 = 0;
              v70 = v65 >> 6;
              do
              {
                v71 = *v59++;
                v72 = *v8 - v71;
                v73 = *v8 < v71;
                v74 = *v8 + ~v71;
                if (v69)
                {
                  v69 = v74 >= *v8;
                }

                else
                {
                  v74 = v72;
                  v69 = v73;
                }

                *v8 = v74;
                v8 += 8;
                --v70;
              }

              while (v70);
              v75 = (*a1 + 8 * ((v65 >> 6) - 1));
              *v75 &= 0xFFFFFFFFFFFFFFFFLL >> -v58;
              v62 = *(a1 + 8);
              if (v62 <= 0x40)
              {
                goto LABEL_104;
              }

              goto LABEL_119;
            }
          }
        }

        else
        {
          v8 = *a1;
          v59 = *a2;
          v60 = *a1 - *a2;
          if (*a1 == *a2)
          {
            goto LABEL_177;
          }

          if (*a1 > *a2)
          {
            *a1 = v60;
            v61 = 0xFFFFFFFFFFFFFFFFLL >> -v58;
            if (!v58)
            {
              v61 = 0;
            }

            *a1 = v61 & v60;
            v62 = *(a1 + 8);
            if (v62 > 0x40)
            {
LABEL_119:
              v76 = 0;
              v77 = 0;
              v78 = (v62 + 63) >> 6;
              v79 = *a1;
              while (!v79[v77])
              {
                ++v77;
                v76 -= 64;
                if (v78 == v77)
                {
                  if (v62 >= v78 << 6)
                  {
                    LODWORD(v62) = v78 << 6;
                  }

                  v80 = v62 - v24;
                  if (!v80)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_164;
                }
              }

              v107 = __clz(__rbit64(v79[v77])) - v76;
              if (v62 >= v107)
              {
                LODWORD(v62) = v107;
              }

              v80 = v62 - v24;
              if (!v80)
              {
                continue;
              }

LABEL_164:
              v108 = v80 >> 6;
              if (v80 >> 6 >= v78)
              {
                v100 = v78;
              }

              else
              {
                v100 = v80 >> 6;
              }

              v101 = (v78 - v100);
              v109 = v80 & 0x3F;
              if (!v109)
              {
                goto LABEL_174;
              }

              if (v108 < v78)
              {
                v110 = v79[v100] >> v109;
                *v79 = v110;
                if (v101 != 1)
                {
                  v111 = 1 - v101;
                  v112 = v79 + 1;
                  v113 = v100 + 1;
                  do
                  {
                    *(v112 - 1) = (v79[v113] << (64 - v109)) | v110;
                    v110 = v79[v113] >> v109;
                    *v112++ = v110;
                    ++v113;
                    v47 = __CFADD__(v111++, 1);
                  }

                  while (!v47);
                }
              }

LABEL_175:
              bzero(&v79[v101], (8 * v100));
              continue;
            }

LABEL_104:
            v63 = __clz(__rbit64(*a1));
            if (v62 < v63)
            {
              v63 = v62;
            }

            v64 = v63 - v24;
            if (v62 == v64)
            {
              *a1 = 0;
            }

            else
            {
              *a1 >>= v64;
            }

            continue;
          }
        }

        v81 = *(a2 + 8);
        if (v81 >= 0x41)
        {
          v88 = 0;
          v89 = (v81 + 63) >> 6;
          v90 = v89;
          do
          {
            v91 = *v8;
            v8 += 8;
            v92 = *v59 - v91;
            v93 = *v59 < v91;
            v94 = *v59 + ~v91;
            if (v88)
            {
              v88 = v94 >= *v59;
            }

            else
            {
              v94 = v92;
              v88 = v93;
            }

            *v59++ = v94;
            --v90;
          }

          while (v90);
          v95 = (*a2 + 8 * (v89 - 1));
          *v95 &= 0xFFFFFFFFFFFFFFFFLL >> -v81;
          v83 = *(a2 + 8);
          if (v83 > 0x40)
          {
LABEL_131:
            v84 = 0;
            v85 = 0;
            v86 = (v83 + 63) >> 6;
            v79 = *a2;
            while (!v79[v85])
            {
              ++v85;
              v84 -= 64;
              if (v86 == v85)
              {
                if (v83 >= v86 << 6)
                {
                  LODWORD(v83) = v86 << 6;
                }

                v87 = v83 - v24;
                if (!v87)
                {
                  goto LABEL_98;
                }

                goto LABEL_151;
              }
            }

            v98 = __clz(__rbit64(v79[v85])) - v84;
            if (v83 >= v98)
            {
              LODWORD(v83) = v98;
            }

            v87 = v83 - v24;
            if (!v87)
            {
              continue;
            }

LABEL_151:
            v99 = v87 >> 6;
            if (v87 >> 6 >= v86)
            {
              v100 = v86;
            }

            else
            {
              v100 = v87 >> 6;
            }

            v101 = (v86 - v100);
            v102 = v87 & 0x3F;
            if (v102)
            {
              if (v99 < v86)
              {
                v103 = v79[v100] >> v102;
                *v79 = v103;
                if (v101 != 1)
                {
                  v104 = 1 - v101;
                  v105 = v79 + 1;
                  v106 = v100 + 1;
                  do
                  {
                    *(v105 - 1) = (v79[v106] << (64 - v102)) | v103;
                    v103 = v79[v106] >> v102;
                    *v105++ = v103;
                    ++v106;
                    v47 = __CFADD__(v104++, 1);
                  }

                  while (!v47);
                }
              }
            }

            else
            {
LABEL_174:
              memmove(v79, &v79[v100], (8 * v101));
            }

            goto LABEL_175;
          }
        }

        else
        {
          *a2 = v59 - v8;
          if (v81)
          {
            v82 = 0xFFFFFFFFFFFFFFFFLL >> -v81;
          }

          else
          {
            v82 = 0;
          }

          *a2 = v82 & (v59 - v8);
          v83 = *(a2 + 8);
          if (v83 > 0x40)
          {
            goto LABEL_131;
          }
        }

        v96 = __clz(__rbit64(*a2));
        if (v83 < v96)
        {
          v96 = v83;
        }

        v97 = v96 - v24;
        if (v83 == v97)
        {
          *a2 = 0;
        }

        else
        {
          *a2 >>= v97;
        }
      }
    }
  }

  v21 = __clz(v19) + v17;
  v22 = v10 | 0xFFFFFFC0;
  if ((v10 & 0x3F) == 0)
  {
    v22 = 0;
  }

  if (v21 + v22 != v10)
  {
    goto LABEL_29;
  }

LABEL_25:
  *(a3 + 8) = v7;
LABEL_178:
  *a3 = v8;
  *v6 = 0;
}

void llvm::APIntOps::RoundDoubleToAPInt(llvm::APIntOps *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  if (v4 <= 0x3FE)
  {
    *(a3 + 8) = this;
    if (this <= 0x40)
    {
LABEL_3:
      *a3 = 0;
      return;
    }

LABEL_10:
    operator new[]();
  }

  v5 = *&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  if (v4 > 0x432)
  {
    if (v4 - 1075 >= this)
    {
      *(a3 + 8) = this;
      if (this <= 0x40)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    if (this > 0x40)
    {
      operator new[]();
    }

    v8 = 0xFFFFFFFFFFFFFFFFLL >> -this;
    if (!this)
    {
      v8 = 0;
    }

    v9 = (v8 & v5) << ((*&a2 >> 52) - 51);
    if (v4 - 1075 == this)
    {
      v9 = 0;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
      v12 = this;
      v11 = v9 & v8;
      llvm::APInt::negate(&v11);
      *(a3 + 8) = v12;
      *a3 = v11;
    }

    else
    {
      *(a3 + 8) = this;
      *a3 = v9 & v8;
    }
  }

  else
  {
    v6 = v5 >> (51 - (*&a2 >> 52));
    if ((*&a2 & 0x8000000000000000) != 0)
    {
      v14 = this;
      if (this > 0x40)
      {
        operator new[]();
      }

      v10 = 0xFFFFFFFFFFFFFFFFLL >> -this;
      if (!this)
      {
        v10 = 0;
      }

      v13 = v10 & v6;
      llvm::APInt::negate(&v13);
      *(a3 + 8) = v14;
      *a3 = v13;
    }

    else
    {
      *(a3 + 8) = this;
      if (this > 0x40)
      {
        operator new[]();
      }

      v7 = 0xFFFFFFFFFFFFFFFFLL >> -this;
      if (!this)
      {
        v7 = 0;
      }

      *a3 = v7 & v6;
    }
  }
}

const void **llvm::APInt::roundToDouble(const void **this, int a2)
{
  v2 = *(this + 2);
  if (v2 >= 0x41)
  {
    v3 = 0;
    v4 = *this;
    v5 = ((v2 + 63) >> 6) + 1;
    while (1)
    {
      v6 = *(v4 + 8 * (v5 - 2));
      if (v6)
      {
        break;
      }

      v3 += 64;
      if (--v5 <= 1)
      {
        goto LABEL_7;
      }
    }

    v3 += __clz(v6);
LABEL_7:
    v7 = v2 | 0xFFFFFFC0;
    if ((v2 & 0x3F) == 0)
    {
      v7 = 0;
    }

    if ((v2 - v7 - v3) > 0x40)
    {
      if (a2)
      {
        if ((*(v4 + 8 * ((v2 - 1) >> 6)) >> (v2 - 1)))
        {
          operator new[]();
        }
      }

      operator new[]();
    }
  }

  return this;
}

uint64_t *llvm::APInt::trunc@<X0>(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unsigned int a3@<W1>)
{
  v3 = this;
  v5 = *(this + 2);
  if (a3 > 0x40)
  {
    if (v5 == a3)
    {
      *(a1 + 2) = a3;
      operator new[]();
    }

    operator new[]();
  }

  if (v5 >= 0x41)
  {
    v3 = *this;
  }

  v6 = *v3;
  *(a1 + 2) = a3;
  v7 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
  if (!a3)
  {
    v7 = 0;
  }

  *a1 = v6 & v7;
  return this;
}

uint64_t *llvm::APInt::truncUSat@<X0>(uint64_t *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    v4 = 0;
    v5 = ((v3 + 63) >> 6) + 1;
    while (1)
    {
      v6 = *(*this + 8 * (v5 - 2));
      if (v6)
      {
        break;
      }

      v4 += 64;
      if (--v5 <= 1)
      {
        goto LABEL_11;
      }
    }

    v4 += __clz(v6);
LABEL_11:
    v7 = v3 | 0xFFFFFFC0;
    if ((v3 & 0x3F) == 0)
    {
      v7 = 0;
    }

    if (v3 - (v4 + v7) <= a2)
    {
      goto LABEL_3;
    }
  }

  else if (64 - __clz(*this) <= a2)
  {
LABEL_3:

    return llvm::APInt::trunc(a3, this, a2);
  }

  *(a3 + 8) = a2;
  if (a2 > 0x40)
  {
    operator new[]();
  }

  if (a2)
  {
    v8 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return this;
}

void llvm::APInt::truncSSat(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  v6 = *(this + 2);
  if (v6 - llvm::APInt::getNumSignBits(this) + 1 <= a2)
  {

    llvm::APInt::trunc(a3, v4, a2);
  }

  else
  {
    v7 = *(v4 + 2);
    v8 = v7 - 1;
    if (v7 >= 0x41)
    {
      v4 = (*v4 + 8 * (v8 >> 6));
    }

    if ((*v4 >> v8))
    {
      *(a3 + 8) = a2;
      if (a2 > 0x40)
      {
        operator new[]();
      }

      *a3 = 0;
      *a3 |= 1 << (a2 - 1);
    }

    else
    {
      *(a3 + 8) = a2;
      if (a2 > 0x40)
      {
        operator new[]();
      }

      if (a2)
      {
        v9 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
      }

      else
      {
        v9 = 0;
      }

      *a3 = v9;
      *a3 &= ~(1 << (a2 - 1));
    }
  }
}

uint64_t *llvm::APInt::sext@<X0>(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unsigned int a3@<W1>)
{
  if (a3 > 0x40)
  {
    if (*(this + 2) == a3)
    {
      *(a1 + 2) = a3;
      operator new[]();
    }

    operator new[]();
  }

  v4 = *(this + 2);
  v5 = *this << -v4 >> -v4;
  if (!v4)
  {
    v5 = 0;
  }

  *(a1 + 2) = a3;
  v6 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
  if (!a3)
  {
    v6 = 0;
  }

  *a1 = v5 & v6;
  return this;
}

void llvm::APInt::zextOrTrunc(unint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, unsigned int a3@<W1>)
{
  v3 = *(this + 2);
  if (v3 >= a3)
  {
    if (v3 <= a3)
    {
      *(a1 + 2) = v3;
      if (v3 > 0x40)
      {
        operator new[]();
      }

      *a1 = *this;
    }

    else
    {

      llvm::APInt::trunc(a1, this, a3);
    }
  }

  else
  {
    if (a3 > 0x40)
    {
      operator new[]();
    }

    v4 = *this;
    *(a1 + 2) = a3;
    *a1 = v4 & (0xFFFFFFFFFFFFFFFFLL >> -a3);
  }
}

uint64_t *llvm::APInt::sextOrTrunc@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unsigned int a3@<W1>)
{
  v4 = *(this + 2);
  if (v4 >= a3)
  {
    if (v4 <= a3)
    {
      *(a1 + 2) = v4;
      if (v4 > 0x40)
      {
        operator new[]();
      }

      *a1 = *this;
    }

    else
    {

      return llvm::APInt::trunc(a1, this, a3);
    }
  }

  else
  {

    return llvm::APInt::sext(a1, this, a3);
  }

  return this;
}

unsigned int *llvm::APInt::ashrInPlace(unsigned int *this, const llvm::APInt *a2)
{
  v3 = this[2];
  v4 = this[2];
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = *(a2 + (v7 - 2));
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v3)
    {
      v4 = v10;
    }
  }

  if (v3 > 0x40)
  {
    return llvm::APInt::ashrSlowCase(this, v4);
  }

  v11 = (*this << -v3) >> -v3;
  if (v3 == v4)
  {
    v12 = 63;
  }

  else
  {
    v12 = v4;
  }

  v13 = v3 == 0;
  if (!v3)
  {
    v11 = 0;
  }

  v14 = v11 >> v12;
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (v13)
  {
    v15 = 0;
  }

  *this = v14 & v15;
  return this;
}

void *llvm::APInt::ashrSlowCase(void *this, unsigned int a2)
{
  if (a2)
  {
    return llvm::APInt::ashrSlowCase(this, a2);
  }

  return this;
}

void llvm::APInt::lshrInPlace(llvm::APInt *this, unint64_t **a2)
{
  v2 = *(this + 2);
  v3 = *(this + 2);
  v4 = *(a2 + 2);
  if (v4 < 0x41)
  {
    v5 = *a2;
    if (*a2 > v2)
    {
      goto LABEL_14;
    }

LABEL_13:
    v3 = v5;
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *a2;
  v8 = ((v4 + 63) >> 6) + 1;
  while (1)
  {
    v9 = v7[(v8 - 2)];
    if (v9)
    {
      break;
    }

    v6 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_9;
    }
  }

  v6 += __clz(v9);
LABEL_9:
  v10 = v4 | 0xFFFFFFC0;
  if ((v4 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v4 - v10 - v6) <= 0x40)
  {
    v5 = *v7;
    if (*v7 <= v2)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (v2 > 0x40)
  {
    if (v3)
    {
      v11 = *this;
      v12 = (v2 + 63) >> 6;
      v13 = v3 >> 6;
      if (v3 >> 6 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v3 >> 6;
      }

      v15 = (v12 - v14);
      v16 = v3 & 0x3F;
      if (v16)
      {
        if (v13 < v12)
        {
          v17 = v11[v14] >> v16;
          *v11 = v17;
          if (v15 != 1)
          {
            v18 = 1 - v15;
            v19 = v11 + 1;
            v20 = v14 + 1;
            do
            {
              *(v19 - 1) = (v11[v20] << (64 - v16)) | v17;
              v17 = v11[v20] >> v16;
              *v19++ = v17;
              ++v20;
            }

            while (!__CFADD__(v18++, 1));
          }
        }
      }

      else
      {
        memmove(*this, &v11[v14], (8 * v15));
      }

      bzero(&v11[v15], (8 * v14));
    }
  }

  else if (v2 == v3)
  {
    *this = 0;
  }

  else
  {
    *this >>= v3;
  }
}

void llvm::APInt::lshrSlowCase(void **this, unsigned int a2)
{
  if (a2)
  {
    v2 = *this;
    v3 = (*(this + 2) + 63) >> 6;
    if (a2 >> 6 >= v3)
    {
      v4 = (*(this + 2) + 63) >> 6;
    }

    else
    {
      v4 = a2 >> 6;
    }

    v5 = (v3 - v4);
    v6 = a2 & 0x3F;
    if ((a2 & 0x3F) != 0)
    {
      if (a2 >> 6 < v3)
      {
        v7 = v2[v4] >> v6;
        *v2 = v7;
        if (v5 != 1)
        {
          v8 = v4 + 1;
          v9 = v2 + 1;
          v10 = 1 - v5;
          do
          {
            *(v9 - 1) = (v2[v8] << (64 - v6)) | v7;
            v7 = v2[v8] >> v6;
            *v9++ = v7;
            ++v8;
          }

          while (!__CFADD__(v10++, 1));
        }
      }
    }

    else
    {
      memmove(*this, &v2[v4], (8 * v5));
    }

    bzero(&v2[v5], (8 * v4));
  }
}

void llvm::APInt::tcShiftRight(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a3 >> 6;
    }

    v4 = a2 - v3;
    v5 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v6 = *(this + v3) >> v5;
        *this = v6;
        if (v4 != 1)
        {
          v7 = 1 - v4;
          v8 = v3 + 1;
          v9 = (this + 8);
          do
          {
            *(v9 - 1) = (*(this + v8) << (64 - v5)) | v6;
            v6 = *(this + v8) >> v5;
            *v9++ = v6;
            ++v8;
          }

          while (!__CFADD__(v7++, 1));
        }
      }
    }

    else
    {
      v11 = this;
      memmove(this, this + 8 * v3, (8 * v4));
      this = v11;
    }

    v12 = this + 8 * v4;

    bzero(v12, 8 * v3);
  }
}

const void **llvm::APInt::operator<<=(const void **result, uint64_t **a2)
{
  v3 = *(result + 2);
  v4 = *(result + 2);
  v5 = *(a2 + 2);
  if (v5 < 0x41)
  {
    goto LABEL_10;
  }

  v6 = 0;
  a2 = *a2;
  v7 = ((v5 + 63) >> 6) + 1;
  while (1)
  {
    v8 = a2[(v7 - 2)];
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (--v7 <= 1)
    {
      goto LABEL_7;
    }
  }

  v6 += __clz(v8);
LABEL_7:
  v9 = v5 | 0xFFFFFFC0;
  if ((v5 & 0x3F) == 0)
  {
    v9 = 0;
  }

  if ((v5 - v9 - v6) <= 0x40)
  {
LABEL_10:
    v10 = *a2;
    if (v10 <= v3)
    {
      v4 = v10;
    }
  }

  if (v3 > 0x40)
  {
    v13 = result;
    llvm::APInt::shlSlowCase(result, v4);
    return v13;
  }

  else
  {
    if (v3 == v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = *result << v4;
    }

    if (v3)
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    }

    else
    {
      v12 = 0;
    }

    *result = (v11 & v12);
  }

  return result;
}

void llvm::APInt::tcShiftLeft(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a3 >> 6;
    }

    v4 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v5 = a2 - 1;
        v6 = *(this + v5 - v3) << v4;
        v7 = (this + 8 * v5);
        *v7 = v6;
        if (v5 > v3)
        {
          v8 = a2 - 2 - v3;
          v9 = (this + 8 * (a2 - 2));
          do
          {
            *v7 = (*(this + v8) >> (64 - v4)) | v6;
            --v5;
            v6 = *(this + v8) << v4;
            v7 = (this + 8 * v5);
            *v9-- = v6;
            --v8;
          }

          while (v3 < v5);
        }
      }

      v10 = 8 * v3;
    }

    else
    {
      v11 = this;
      memmove(this + 8 * v3, this, 8 * (a2 - v3));
      this = v11;
      v10 = 8 * v3;
    }

    bzero(this, v10);
  }
}

void llvm::APInt::rotl(llvm::APInt *this@<X0>, const void **a2@<X1>, int8x16_t **a3@<X8>)
{
  v5 = rotateModulo(*(this + 2), a2);

  llvm::APInt::rotl(a3, this, v5);
}

void llvm::APInt::rotr(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 2);
  if (!v3)
  {
    *(a3 + 8) = 0;
LABEL_7:
    *a3 = *this;
    return;
  }

  v4 = a2 % v3;
  if (!(a2 % v3))
  {
    *(a3 + 8) = v3;
    if (v3 > 0x40)
    {
      operator new[]();
    }

    goto LABEL_7;
  }

  if (v3 > 0x40)
  {
    operator new[]();
  }

  v5 = *this;
  v6 = *this >> v4;
  v7 = *(this + 2);
  v8 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
  if (!v7)
  {
    v8 = 0;
  }

  *(a3 + 8) = v7;
  *a3 = (v5 << (v3 - v4)) & v8 | v6;
}

unint64_t llvm::APInt::nearestLogBase2(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1 == 1)
  {
    return (*this - 1);
  }

  if (v1 > 0x40)
  {
    v5 = 0;
    v6 = (v1 + 63) >> 6;
    v7 = *this;
    v8 = v6 + 1;
    while (1)
    {
      v9 = *(v7 + 8 * (v8 - 2));
      if (v9)
      {
        break;
      }

      v5 += 64;
      if (--v8 <= 1)
      {
        v10 = v1 | 0xFFFFFFC0;
        if ((v1 & 0x3F) == 0)
        {
          v10 = 0;
        }

        if (v5 + v10 == v1)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_16;
      }
    }

    v11 = __clz(v9) + v5;
    v10 = v1 | 0xFFFFFFC0;
    if ((v1 & 0x3F) == 0)
    {
      v10 = 0;
    }

    if (v11 + v10 == v1)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_16:
    v12 = 0;
    v13 = v6 + 1;
    while (1)
    {
      v14 = *(v7 + 8 * (v13 - 2));
      if (v14)
      {
        break;
      }

      v12 += 64;
      if (--v13 <= 1)
      {
        return v1 + ~(v12 + v10) + ((*(v7 + 8 * ((v1 + ~(v12 + v10) - 1) >> 6)) >> (v1 + ~(v12 + v10) - 1)) & 1);
      }
    }

    v12 += __clz(v14);
    return v1 + ~(v12 + v10) + ((*(v7 + 8 * ((v1 + ~(v12 + v10) - 1) >> 6)) >> (v1 + ~(v12 + v10) - 1)) & 1);
  }

  else
  {
    v3 = *this;
    if (*this)
    {
      v4 = __clz(v3);
      return (v4 ^ 0x3F) + ((v3 >> (62 - v4)) & 1);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

void llvm::APInt::sqrt(llvm::APInt *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 >= 0x41)
  {
    v7 = 0;
    v8 = *this;
    v9 = ((v3 + 63) >> 6) + 1;
    while (1)
    {
      v10 = v8[(v9 - 2)];
      if (v10)
      {
        break;
      }

      v7 += 64;
      if (--v9 <= 1)
      {
        goto LABEL_11;
      }
    }

    v7 += __clz(v10);
LABEL_11:
    v11 = v3 | 0xFFFFFFC0;
    if ((v3 & 0x3F) == 0)
    {
      v11 = 0;
    }

    v12 = v3 - v11 - v7;
    if (v12 < 6)
    {
      *(a2 + 8) = v3;
      goto LABEL_41;
    }

    if (v12 >= 0x34)
    {
      operator new[]();
    }

    v4 = *v8;
  }

  else
  {
    v4 = *this;
    if (*this <= 0x1FuLL)
    {
      v5 = llvm::APInt::sqrt(void)const::results[v4];
      *(a2 + 8) = v3;
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
      if (!v3)
      {
        v6 = 0;
      }

      *a2 = v6 & v5;
      return;
    }

    if (v4 >> 51)
    {
      v54 = a2;
      if (v3)
      {
        v13 = (0xFFFFFFFFFFFFFFFFLL >> -v3) & 0x10;
      }

      else
      {
        v13 = 0;
      }

      v65 = *(this + 2);
      v64 = v3 != 0;
      v63 = v3;
      if (v3)
      {
        v16 = (0xFFFFFFFFFFFFFFFFLL >> -v3) & 2;
      }

      else
      {
        v16 = 0;
      }

      v62 = v16;
      if (v3 < 5)
      {
        v17 = 4;
      }

      else
      {
        v17 = 4;
        while (1)
        {
          v18 = *(this + 2);
          if (v18 > 0x40)
          {
            break;
          }

          if (*this <= v13)
          {
            goto LABEL_43;
          }

LABEL_32:
          v13 = (0xFFFFFFFFFFFFFFFFLL >> -v3) & (4 * v13);
          v17 += 2;
          if (v17 >= v3)
          {
            goto LABEL_43;
          }
        }

        v19 = ((v18 + 63) >> 3) & 0x3FFFFFF8;
        while (v19)
        {
          v20 = *(*this - 8 + v19);
          v21 = *(v13 - 8 + v19);
          v19 -= 8;
          if (v20 != v21)
          {
            if (v20 <= v21)
            {
              break;
            }

            goto LABEL_32;
          }
        }
      }

LABEL_43:
      v22 = v3;
      if (v3 == v17 >> 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = (v3 != 0) << (v17 >> 1);
      }

      v24 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
      if (!v3)
      {
        v24 = 0;
      }

      v25 = v23 & v24;
      v64 = v23 & v24;
      v65 = v3;
      while (1)
      {
        llvm::APInt::udiv(&v56, this, &v64);
        v27 = v57;
        if (v57 >= 0x41)
        {
          v31 = 0;
          v32 = v56;
          v33 = (v57 + 63) >> 6;
          v34 = v25;
          v35 = v33;
          do
          {
            v36 = *v34++;
            v37 = v36 + *v32;
            v38 = __CFADD__(v36, *v32);
            v39 = (v37 + 1) <= *v32;
            if (v31)
            {
              ++v37;
              v31 = v39;
            }

            else
            {
              v31 = v38;
            }

            *v32++ = v37;
            --v35;
          }

          while (v35);
          v29 = 0xFFFFFFFFFFFFFFFFLL >> -v27;
          v30 = &v56[8 * (v33 - 1)];
          v28 = *v30;
        }

        else
        {
          v28 = &v56[v25];
          v56 += v25;
          if (v57)
          {
            v29 = 0xFFFFFFFFFFFFFFFFLL >> -v57;
          }

          else
          {
            v29 = 0;
          }

          v30 = &v56;
        }

        *v30 = (v29 & v28);
        v40 = v57;
        v59 = v57;
        v41 = v56;
        v58 = v56;
        v57 = 0;
        llvm::APInt::udiv(&__src, &v58, &v62);
        v42 = __src;
        v43 = v61;
        v61 = 0;
        if (v40 >= 0x41 && v41)
        {
          MEMORY[0x259C63150](v41, 0x1000C8000313F17);
        }

        if (v57 >= 0x41 && v56)
        {
          MEMORY[0x259C63150](v56, 0x1000C8000313F17);
        }

        if (v25 <= v42)
        {
          break;
        }

        if (v43 > 0x40)
        {
          v65 = v43;
          operator new[]();
        }

        v64 = v42;
        v65 = v43;
        v25 = v42;
        v22 = v43;
      }

      v44 = 0xFFFFFFFFFFFFFFFFLL >> -v22;
      if (!v22)
      {
        v44 = 0;
      }

      v55 = (v25 * v25) & v44;
      v45 = (((v25 + 1) & v44) * ((v25 + 1) & v44)) & v44;
      v46 = *(this + 2);
      if (v46 <= 0x40)
      {
        if (*this < v55)
        {
LABEL_83:
          *(v54 + 8) = v22;
          *v54 = v25;
          v65 = 0;
LABEL_98:
          if (v63 >= 0x41 && v62)
          {
            MEMORY[0x259C63150](v62, 0x1000C8000313F17);
          }

          if (v43 >= 0x41 && v42)
          {
            MEMORY[0x259C63150](v42, 0x1000C8000313F17);
          }

          if (v65 >= 0x41 && v25)
          {
            MEMORY[0x259C63150](v25, 0x1000C8000313F17);
          }

          return;
        }
      }

      else
      {
        v47 = ((v46 + 63) >> 3) & 0x3FFFFFF8;
        while (v47)
        {
          v48 = *(*this - 8 + v47);
          v49 = *(v55 - 8 + v47);
          v47 -= 8;
          if (v48 != v49)
          {
            if (v48 <= v49)
            {
              goto LABEL_83;
            }

            break;
          }
        }
      }

      v50 = 0xFFFFFFFFFFFFFFFFLL >> -v22;
      if (!v22)
      {
        v50 = 0;
      }

      v59 = v22;
      v58 = v50 & (v45 - v55);
      llvm::APInt::udiv(&__src, &v58, &v62);
      v51 = *(this + 2);
      if (v51 >= 0x41)
      {
        operator new[]();
      }

      v52 = 0xFFFFFFFFFFFFFFFFLL >> -v51;
      if (!v51)
      {
        v52 = 0;
      }

      if (((*this - v55) & v52) >= __src)
      {
        v53 = 0xFFFFFFFFFFFFFFFFLL >> -v22;
        if (!v22)
        {
          v53 = 0;
        }

        *(v54 + 8) = v22;
        *v54 = v53 & (v25 + 1);
      }

      else
      {
        *(v54 + 8) = v22;
        *v54 = v25;
        v65 = 0;
      }

      if (v61 >= 0x41 && __src)
      {
        MEMORY[0x259C63150](__src, 0x1000C8000313F17);
      }

      goto LABEL_98;
    }
  }

  v14 = vcvtad_u64_f64(sqrt(v4));
  *(a2 + 8) = v3;
  if (v3 > 0x40)
  {
LABEL_41:
    operator new[]();
  }

  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (!v3)
  {
    v15 = 0;
  }

  *a2 = v15 & v14;
}

void llvm::APInt::udiv(unint64_t *__return_ptr a1@<X8>, const void **this@<X0>, const llvm::APInt *a3@<X1>)
{
  v3 = *(this + 2);
  if (v3 <= 0x40)
  {
    v4 = *this / *a3;
    *(a1 + 2) = v3;
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v5 = 0;
    }

    *a1 = v4 & v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 63) >> 6;
  v8 = *this;
  v9 = v7 + 1;
  while (1)
  {
    v10 = v8[(v9 - 2)];
    if (v10)
    {
      break;
    }

    v6 += 64;
    if (--v9 <= 1)
    {
      goto LABEL_10;
    }
  }

  v6 += __clz(v10);
LABEL_10:
  v11 = v3 | 0xFFFFFFC0;
  if ((v3 & 0x3F) == 0)
  {
    v11 = 0;
  }

  v12 = v6 + v11;
  v13 = *(a3 + 2);
  if (v13 > 0x40)
  {
    v16 = 0;
    v14 = *a3;
    v17 = ((v13 + 63) >> 6) + 1;
    while (1)
    {
      v18 = v14[(v17 - 2)];
      if (v18)
      {
        break;
      }

      v16 += 64;
      if (--v17 <= 1)
      {
        goto LABEL_20;
      }
    }

    v16 += __clz(v18);
LABEL_20:
    v19 = v13 | 0xFFFFFFC0;
    if ((v13 & 0x3F) == 0)
    {
      v19 = 0;
    }

    v15 = v16 + v19;
    if (v3 == v12)
    {
LABEL_26:
      *(a1 + 2) = v3;
      operator new[]();
    }
  }

  else
  {
    v14 = *a3;
    v15 = v13 + __clz(*a3) - 64;
    if (v3 == v12)
    {
      goto LABEL_26;
    }
  }

  v20 = (v13 - v15);
  if (v20 == 1)
  {
    *(a1 + 2) = v3;
    operator new[]();
  }

  v21 = (((v3 - v12) + 63) >> 6);
  v22 = ((v20 + 63) >> 6);
  if (v21 < v22)
  {
    goto LABEL_26;
  }

  v23 = v7;
  do
  {
    if (!(v23 * 8))
    {
      goto LABEL_31;
    }

    v24 = v8[v23 - 1];
    v25 = v14[--v23];
  }

  while (v24 == v25);
  if (v24 <= v25)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (!memcmp(*this, v14, ((v3 + 63) >> 3) & 0x3FFFFFF8))
  {
    v30 = a1;
    v31 = v3;
    v29 = 1;
    goto LABEL_35;
  }

  if (v21 == 1)
  {
    v29 = *v8 / *v14;
    v30 = a1;
    v31 = v3;
LABEL_35:

    llvm::APInt::APInt(v30, v31, v29, 0, 1);
    return;
  }

  llvm::APInt::APInt(a1, v3, 0, 0, 1);
  v33 = *this;
  v34 = *a3;
  v35 = *a1;

  llvm::APInt::divide(v33, v21, v34, v22, v35, 0, v32);
}

uint64_t llvm::APInt::multiplicativeInverse@<X0>(const void **this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 2);
  *(a2 + 8) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v5 = *this;
  *a2 = *this;
  while (1)
  {
    llvm::APInt::operator*(this, a2, &v27);
    result = v27;
    if (v28 > 0x40)
    {
      break;
    }

    if (v27 == 1)
    {
      return result;
    }

LABEL_15:
    v24 = v28;
    v23 = v27;
    llvm::APInt::negate(&v23);
    v11 = v24;
    if (v24 >= 0x41)
    {
      v15 = v23;
      v16 = (v24 + 63) >> 6;
      v17 = *v23;
      *v23 += 2;
      if (v17 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v18 = v16 - 2;
        v19 = (v15 + 1);
        do
        {
          v20 = *v19 + 1;
          *v19++ = v20;
          if (v20)
          {
            v21 = 1;
          }

          else
          {
            v21 = v18 == 0;
          }

          --v18;
        }

        while (!v21);
      }

      v13 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
      v14 = &v23[(v16 - 1)];
      v12 = *v14;
    }

    else
    {
      v12 = v23 + 2;
      v23 = (v23 + 2);
      if (v24)
      {
        v13 = 0xFFFFFFFFFFFFFFFFLL >> -v24;
      }

      else
      {
        v13 = 0;
      }

      v14 = &v23;
    }

    *v14 = v13 & v12;
    v22 = v24;
    v26 = v24;
    v25 = v23;
    v24 = 0;
    llvm::APInt::operator*(a2, &v25, &v27);
    if (v4 >= 0x41 && v5)
    {
      MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    }

    v5 = v27;
    *a2 = v27;
    v4 = v28;
    *(a2 + 8) = v28;
    if (v22 >= 0x41 && v25)
    {
      MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }

    if (v24 >= 0x41)
    {
      if (v23)
      {
        MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      }
    }
  }

  v7 = 0;
  v8 = ((v28 + 63) >> 6) + 1;
  while (1)
  {
    v9 = *(v27 + 8 * (v8 - 2));
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_12;
    }
  }

  v7 += __clz(v9);
LABEL_12:
  v10 = v28 | 0xFFFFFFC0;
  if ((v28 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if (v7 + v10 != v28 - 1)
  {
    goto LABEL_15;
  }

  if (v27)
  {
    return MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  return result;
}

void llvm::APInt::divide(llvm::APInt *this, const unint64_t *a2, int32x4_t *a3, const unint64_t *a4, int8x16_t *a5, int8x16_t *a6, unint64_t *a7)
{
  v166 = a5;
  v164 = a3;
  v170[62] = *MEMORY[0x277D85DE8];
  v167 = a4;
  v9 = (2 * a4);
  v10 = (2 * a2);
  if (a6)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = (v11 * v9 + 2 * (v10 - v9)) | 1;
  v165 = a2;
  v13 = (2 * a2) | 1u;
  v14 = 4 * v13;
  if (v12 > 0x80)
  {
    operator new[]();
  }

  v15 = &v168[v13];
  v16 = v9 + v13;
  v17 = &v168[v16];
  v18 = &v168[(v16 + v10)];
  if (a6)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v167;
  bzero(v168, v14);
  v21 = v165;
  if (v165)
  {
    if (v165 > 0xF)
    {
      v22 = 0;
      v47 = 8 * v165 - 8;
      if (&v169[v47] >= v169 && (v168 + v47) >= v168)
      {
        v48 = 0;
        v22 = v165 & 0xFFFFFFF8;
        v49 = (this + 32);
        do
        {
          v51 = v49[-2];
          v50 = v49[-1];
          v53 = *v49;
          v52 = v49[1];
          v49 += 4;
          v177.val[0] = vuzp1q_s32(v51, v50);
          v177.val[1] = vuzp2q_s32(v51, v50);
          v171.val[0] = vuzp1q_s32(v53, v52);
          v54 = (4 * v48) & 0x3FFFFFFC0;
          v55 = (v168 + v54);
          vst2q_f32(v55, v177);
          v171.val[1] = vuzp2q_s32(v53, v52);
          v56 = (&v170[2] + v54);
          vst2q_f32(v56, v171);
          v48 += 16;
        }

        while (((2 * v165) & 0x1FFFFFFF0) != v48);
        if (v22 == v165)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = 2 * v22;
    v24 = v165 - v22;
    v25 = (this + 8 * v22);
    do
    {
      v26 = *v25++;
      v168[v23] = v26;
      v168[v23 + 1] = HIDWORD(v26);
      v23 += 2;
      --v24;
    }

    while (v24);
  }

LABEL_15:
  v168[v10] = 0;
  bzero(v15, 4 * v9);
  if (!v20)
  {
    goto LABEL_20;
  }

  if (v20 <= 0xF)
  {
    v27 = 0;
LABEL_18:
    v28 = 2 * v27;
    v29 = v20 - v27;
    v30 = &v164->i64[v27];
    do
    {
      v31 = *v30++;
      v15->i32[v28] = v31;
      v15->i32[v28 + 1] = HIDWORD(v31);
      v28 += 2;
      --v29;
    }

    while (v29);
    goto LABEL_20;
  }

  v27 = 0;
  v57 = 8 * v20 - 8;
  if (v15->i64 + v57 + 4 < v15->i64 + 4)
  {
    goto LABEL_18;
  }

  if (&v15->i8[v57] < v15)
  {
    goto LABEL_18;
  }

  v58 = 0;
  v27 = v20 & 0xFFFFFFF8;
  v59 = v164 + 2;
  do
  {
    v61 = v59[-2];
    v60 = v59[-1];
    v63 = *v59;
    v62 = v59[1];
    v59 += 4;
    v178.val[0] = vuzp1q_s32(v61, v60);
    v178.val[1] = vuzp2q_s32(v61, v60);
    v172.val[0] = vuzp1q_s32(v63, v62);
    v64 = (4 * v58) & 0x3FFFFFFC0;
    v65 = (v15->i32 + v64);
    vst2q_f32(v65, v178);
    v172.val[1] = vuzp2q_s32(v63, v62);
    v66 = (v15[2].i32 + v64);
    vst2q_f32(v66, v172);
    v58 += 16;
  }

  while (((2 * v20) & 0x1FFFFFFF0) != v58);
  if (v27 != v20)
  {
    goto LABEL_18;
  }

LABEL_20:
  bzero(v17, 4 * v10);
  if (a6)
  {
    bzero(v19, 4 * v9);
  }

  if (v9)
  {
    while (!v15[-1].i32[v9 + 3])
    {
      if (!--v9)
      {
        v32 = v10;
        if (v10)
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      }
    }

    LODWORD(v10) = v10 - v9;
    v32 = v9 + v10;
    if (!(v9 + v10))
    {
      goto LABEL_34;
    }
  }

  else
  {
    v32 = v10 - v9;
    if (v10 == v9)
    {
      goto LABEL_34;
    }
  }

LABEL_30:
  v33 = v32;
  while (!v168[v33 - 1])
  {
    LODWORD(v10) = v10 - 1;
    if (!(--v33 * 4))
    {
      LODWORD(v10) = -v9;
      break;
    }
  }

LABEL_34:
  v34 = (v9 - 1);
  if (v9 != 1)
  {
    v42 = __clz(v15->u32[v34]);
    v43 = (v10 + v9);
    if (!v42)
    {
      v67 = 0;
      goto LABEL_80;
    }

    if (!v43)
    {
      v67 = 0;
      goto LABEL_71;
    }

    v44 = 32 - v42;
    if (v43 > 7)
    {
      v45 = v43 & 0xFFFFFFF8;
      v68 = vdupq_n_s32(v42);
      v69 = v170;
      v70 = 0uLL;
      v71 = vnegq_s32(vdupq_n_s32(v44));
      v72 = v45;
      do
      {
        v73 = v69[-1];
        v74 = vshlq_u32(v73, v71);
        v75 = vextq_s8(v70, v74, 0xCuLL);
        v70 = vshlq_u32(*v69, v71);
        v76 = vorrq_s8(vshlq_u32(*v69, v68), vextq_s8(v74, v70, 0xCuLL));
        v69[-1] = vorrq_s8(vshlq_u32(v73, v68), v75);
        *v69 = v76;
        v69 += 2;
        v72 -= 8;
      }

      while (v72);
      v46 = v70.i32[3];
      v67 = v70.i32[3];
      if (v45 == v43)
      {
LABEL_71:
        if (!v9)
        {
          goto LABEL_80;
        }

        v79 = 32 - v42;
        if (v9 > 7)
        {
          v80 = v9 & 0xFFFFFFF8;
          v82 = vdupq_n_s32(v42);
          v83 = v15 + 1;
          v84 = 0uLL;
          v85 = vnegq_s32(vdupq_n_s32(v79));
          v86 = v80;
          do
          {
            v87 = v83[-1];
            v88 = vshlq_u32(v87, v85);
            v89 = vextq_s8(v84, v88, 0xCuLL);
            v84 = vshlq_u32(*v83, v85);
            v90 = vorrq_s8(vshlq_u32(*v83, v82), vextq_s8(v88, v84, 0xCuLL));
            v83[-1] = vorrq_s8(vshlq_u32(v87, v82), v89);
            *v83 = v90;
            v83 += 2;
            v86 -= 8;
          }

          while (v86);
          if (v80 == v9)
          {
LABEL_80:
            v168[v43] = v67;
            v94 = v9 - 2;
            v95 = v10;
            do
            {
              v97 = (v9 + v95);
              v98 = v168[(v97 - 1)] | (v168[v97] << 32);
              v99 = v15->u32[v34];
              v100 = v98 / v99;
              v101 = v98 % v99;
              if (v98 / v99 == 0x100000000 || (v102 = v98 / v99, v100 * v15->u32[v94] > (v168[(v97 - 2)] | (v101 << 32))))
              {
                v102 = v100 - 1;
                v103 = v101 + v99;
                if (!HIDWORD(v103) && (v100 == 0x100000001 || v102 * v15->u32[v94] > (v168[(v97 - 2)] | (v103 << 32))))
                {
                  v102 = v100 - 2;
                }
              }

              if (v9)
              {
                v104 = 0;
                v105 = v15;
                v106 = v95;
                v107 = v9;
                do
                {
                  v108 = v105->i32[0];
                  v105 = (v105 + 4);
                  v109 = v102 * v108;
                  v110 = v168[v106] - (v104 + v109);
                  v168[v106] = v110;
                  v111 = HIDWORD(v109) - HIDWORD(v110);
                  v104 = v111;
                  ++v106;
                  --v107;
                }

                while (v107);
                v112 = v168[v97];
                v168[v97] = v112 - v111;
                v17[v95] = v102;
                if (v111 > v112)
                {
                  LOBYTE(v113) = 0;
                  v17[v95] = v102 - 1;
                  v114 = v95;
                  v115 = v15;
                  v116 = v9;
                  do
                  {
                    while (1)
                    {
                      v118 = v115->i32[0];
                      v115 = (v115 + 4);
                      v117 = v118;
                      v119 = v168[v114];
                      v120 = v118 >= v119 ? v168[v114] : v117;
                      v121 = v117 + (v113 & 1) + v119;
                      v168[v114] = v121;
                      if (v121 < v120)
                      {
                        break;
                      }

                      v113 = v113 & (v121 == v120);
                      ++v114;
                      if (!--v116)
                      {
                        goto LABEL_100;
                      }
                    }

                    v113 = 1;
                    ++v114;
                    --v116;
                  }

                  while (v116);
LABEL_100:
                  v168[v97] += v113;
                }
              }

              else
              {
                v17[v95] = v102;
              }

              v96 = v95-- <= 0;
            }

            while (!v96);
            v38 = v166;
            if (v19)
            {
              if (v42)
              {
                if ((v34 & 0x80000000) == 0)
                {
                  v122 = 0;
                  do
                  {
                    v123 = v168[v34];
                    *(v19 + 4 * v34) = (v123 >> v42) | v122;
                    v122 = v123 << (32 - v42);
                    v96 = v34-- <= 0;
                  }

                  while (!v96);
                }
              }

              else if ((v34 & 0x80000000) == 0)
              {
                if (v34 <= 0x1A)
                {
                  goto LABEL_111;
                }

                v156 = 4 * v34;
                if (v19 > v19 + 4 * v34)
                {
                  goto LABEL_111;
                }

                if (v168 > &v168[v156 / 4])
                {
                  goto LABEL_111;
                }

                if (v168 - v19 < 0x20)
                {
                  goto LABEL_111;
                }

                v157 = v34 + 1;
                v158 = (v34 + 1) & 0xFFFFFFF8;
                v34 -= v158;
                v159 = v156 - 12;
                v160 = (v19 + v156 - 12);
                v161 = (v168 + v159);
                v162 = v158;
                do
                {
                  v163 = *v161;
                  *(v160 - 1) = *(v161 - 1);
                  *v160 = v163;
                  v160 -= 2;
                  v161 -= 2;
                  v162 -= 8;
                }

                while (v162);
                if (v157 != v158)
                {
LABEL_111:
                  do
                  {
                    *(v19 + 4 * v34) = v168[v34];
                    v96 = v34-- <= 0;
                  }

                  while (!v96);
                }
              }
            }

            goto LABEL_112;
          }

          v81 = v84.i32[3];
        }

        else
        {
          v80 = 0;
          v81 = 0;
        }

        v91 = v9 - v80;
        v92 = &v15->i32[v80];
        do
        {
          v93 = *v92 >> v79;
          *v92 = (*v92 << v42) | v81;
          ++v92;
          v81 = v93;
          --v91;
        }

        while (v91);
        goto LABEL_80;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v77 = v43 - v45;
    v78 = &v168[v45];
    do
    {
      v67 = *v78 >> v44;
      *v78 = (*v78 << v42) | v46;
      ++v78;
      v46 = v67;
      --v77;
    }

    while (v77);
    goto LABEL_71;
  }

  v35 = 0;
  if ((v10 & 0x80000000) == 0)
  {
    v36 = v15->u32[0];
    v37 = v10;
    v38 = v166;
    while (1)
    {
      v39 = v35;
      v35 = v168[v37];
      v40 = v35 | (v39 << 32);
      if (v40)
      {
        if (v40 >= v36)
        {
          if (v40 == v36)
          {
            v35 = 0;
            v17[v37] = 1;
          }

          else
          {
            v41 = v40 / v36;
            v17[v37] = v41;
            v35 = (v35 - v36 * v41);
          }

          goto LABEL_39;
        }
      }

      else
      {
        v35 = 0;
      }

      v17[v37] = 0;
LABEL_39:
      if (--v37 == -1)
      {
        goto LABEL_62;
      }
    }
  }

  v38 = v166;
LABEL_62:
  if (v19)
  {
    *v19 = v35;
  }

LABEL_112:
  if (v38 && v21)
  {
    if (v21 < 8)
    {
      v124 = 0;
LABEL_119:
      v139 = 2 * v124;
      v140 = v21 - v124;
      v141 = v38 + v124;
      do
      {
        *v141++ = v17[v139] | (v17[v139 + 1] << 32);
        v139 += 2;
        --v140;
      }

      while (v140);
      goto LABEL_121;
    }

    v125 = 0;
    v124 = v21 & 0xFFFFFFF8;
    v126 = v38 + 2;
    do
    {
      v127 = (4 * v125) & 0x3FFFFFFC0;
      v128 = (v17 + v127);
      v173 = vld2q_f32(v128);
      v129 = (v17 + v127 + 32);
      v175 = vld2q_f32(v129);
      __asm { SHLL2           V4.2D, V1.4S, #0x20 ; ' ' }

      v135 = vshll_n_s32(*v173.val[1].f32, 0x20uLL);
      __asm { SHLL2           V6.2D, V3.4S, #0x20 ; ' ' }

      v137.i64[0] = v173.val[0].u32[2];
      v137.i64[1] = v173.val[0].u32[3];
      v138 = v137;
      v137.i64[0] = v173.val[0].u32[0];
      v137.i64[1] = v173.val[0].u32[1];
      v173.val[0] = v137;
      v137.i64[0] = v175.val[0].u32[2];
      v137.i64[1] = v175.val[0].u32[3];
      v173.val[1] = v137;
      v137.i64[0] = v175.val[0].u32[0];
      v137.i64[1] = v175.val[0].u32[1];
      v126[-2] = vorrq_s8(v135, v173.val[0]);
      v126[-1] = vorrq_s8(_Q4, v138);
      *v126 = vorrq_s8(vshll_n_s32(*v175.val[1].f32, 0x20uLL), v137);
      v126[1] = vorrq_s8(_Q6, v173.val[1]);
      v126 += 4;
      v125 += 16;
    }

    while (((2 * v21) & 0x1FFFFFFF0) != v125);
    if (v124 != v21)
    {
      goto LABEL_119;
    }
  }

LABEL_121:
  if (a6 && v20)
  {
    if (v20 < 8)
    {
      v142 = 0;
LABEL_128:
      v153 = 2 * v142;
      v154 = v20 - v142;
      v155 = a6 + v142;
      do
      {
        *v155++ = *(v19 + 4 * v153) | (*(v19 + 4 * (v153 + 1)) << 32);
        v153 += 2;
        --v154;
      }

      while (v154);
      return;
    }

    v143 = 0;
    v142 = v20 & 0xFFFFFFF8;
    v144 = a6 + 2;
    do
    {
      v145 = (4 * v143) & 0x3FFFFFFC0;
      v146 = (v19 + v145);
      v174 = vld2q_f32(v146);
      v147 = (v19 + 32 + v145);
      v176 = vld2q_f32(v147);
      __asm { SHLL2           V4.2D, V1.4S, #0x20 ; ' ' }

      v149 = vshll_n_s32(*v174.val[1].f32, 0x20uLL);
      __asm { SHLL2           V6.2D, V3.4S, #0x20 ; ' ' }

      v151.i64[0] = v174.val[0].u32[2];
      v151.i64[1] = v174.val[0].u32[3];
      v152 = v151;
      v151.i64[0] = v174.val[0].u32[0];
      v151.i64[1] = v174.val[0].u32[1];
      v174.val[0] = v151;
      v151.i64[0] = v176.val[0].u32[2];
      v151.i64[1] = v176.val[0].u32[3];
      v174.val[1] = v151;
      v151.i64[0] = v176.val[0].u32[0];
      v151.i64[1] = v176.val[0].u32[1];
      v144[-2] = vorrq_s8(v149, v174.val[0]);
      v144[-1] = vorrq_s8(_Q4, v152);
      *v144 = vorrq_s8(vshll_n_s32(*v176.val[1].f32, 0x20uLL), v151);
      v144[1] = vorrq_s8(_Q6, v174.val[1]);
      v144 += 4;
      v143 += 16;
    }

    while (((2 * v20) & 0x1FFFFFFF0) != v143);
    if (v142 != v20)
    {
      goto LABEL_128;
    }
  }
}

void llvm::APInt::udiv(llvm::APInt **this@<X0>, unint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v28.i64[0] = a2;
  v4 = *(this + 2);
  if (v4 <= 0x40)
  {
    v5 = *this / a2;
    *(a3 + 2) = v4;
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if (!v4)
    {
      v6 = 0;
    }

    *a3 = v5 & v6;
    return;
  }

  v7 = 0;
  v8 = (v4 + 63) >> 6;
  v9 = *this;
  v10 = v8 + 1;
  do
  {
    v11 = v9[(v10 - 2)];
    if (v11)
    {
      v15 = __clz(v11) + v7;
      v12 = v4 | 0xFFFFFFC0;
      if ((v4 & 0x3F) == 0)
      {
        v12 = 0;
      }

      v16 = v15 + v12;
      v14 = (v4 - v16);
      if (v4 != v16)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v7 += 64;
    --v10;
  }

  while (v10 > 1);
  v12 = v4 | 0xFFFFFFC0;
  if ((v4 & 0x3F) == 0)
  {
    v12 = 0;
  }

  v13 = v7 + v12;
  v14 = (v4 - v13);
  if (v4 == v13)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a2 == 1)
  {
    *(a3 + 2) = v4;
    operator new[]();
  }

  v17 = 0;
  v18 = ((v14 + 63) >> 6);
  v19 = v8 + 1;
  do
  {
    v20 = v9[(v19 - 2)];
    if (v20)
    {
      if (v4 - v12 - (__clz(v20) + v17) <= 0x40)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v17 += 64;
    --v19;
  }

  while (v19 > 1);
  if ((v4 - v12 - v17) > 0x40)
  {
    goto LABEL_25;
  }

LABEL_24:
  if (*v9 < a2)
  {
LABEL_15:
    *(a3 + 2) = v4;
    operator new[]();
  }

LABEL_25:
  v21 = 0;
  v22 = v8 + 1;
  while (1)
  {
    v23 = v9[(v22 - 2)];
    if (v23)
    {
      break;
    }

    v21 += 64;
    if (--v22 <= 1)
    {
      if ((v4 - v12 - v21) > 0x40)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  if (v4 - v12 - (__clz(v23) + v21) > 0x40)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (*v9 == a2)
  {
    *(a3 + 2) = v4;
    operator new[]();
  }

LABEL_33:
  if (v18 == 1)
  {
    v24 = *v9 / a2;

    llvm::APInt::APInt(a3, v4, v24, 0, 1);
  }

  else
  {
    llvm::APInt::APInt(a3, v4, 0, 0, 1);
    llvm::APInt::divide(*this, v18, &v28, 1, *a3, 0, v27);
  }
}

void llvm::APInt::sdiv(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  v7 = v6 - 1;
  v8 = this;
  if (v6 >= 0x41)
  {
    v8 = (*this + 8 * (v7 >> 6));
  }

  v9 = *v8;
  v10 = *(a2 + 2);
  v11 = v10 - 1;
  if (((v9 >> v7) & 1) == 0)
  {
    if (v10 > 0x40)
    {
      if ((*(*a2 + 8 * (v11 >> 6)) >> v11))
      {
        v23 = *(a2 + 2);
        operator new[]();
      }
    }

    else
    {
      v13 = *a2;
      if ((*a2 >> v11))
      {
        v23 = *(a2 + 2);
        v22 = v13;
        llvm::APInt::negate(&v22);
        v18 = v23;
        v37 = v23;
        v19 = v22;
        v36 = v22;
        v23 = 0;
        llvm::APInt::udiv(&v24, this, &v36);
        llvm::APInt::negate(&v24);
        *(a3 + 8) = v25;
        *a3 = v24;
        v25 = 0;
        if (v18 >= 0x41 && v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
        }

        if (v23 >= 0x41 && v22)
        {
          goto LABEL_48;
        }

        return;
      }
    }

    llvm::APInt::udiv(a3, this, a2);
    return;
  }

  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = a2;
  }

  if ((*v12 >> v11))
  {
    v35 = *(this + 2);
    if (v6 > 0x40)
    {
      operator new[]();
    }

    v34 = *this;
    llvm::APInt::negate(&v34);
    v14 = v35;
    v37 = v35;
    v15 = v34;
    v36 = v34;
    v35 = 0;
    v31 = *(a2 + 2);
    if (v31 > 0x40)
    {
      operator new[]();
    }

    v30 = *a2;
    llvm::APInt::negate(&v30);
    v16 = v31;
    v33 = v31;
    v17 = v30;
    v32 = v30;
    v31 = 0;
    llvm::APInt::udiv(a3, &v36, &v32);
    if (v16 >= 0x41 && v17)
    {
      MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }

    if (v31 >= 0x41 && v30)
    {
      MEMORY[0x259C63150](v30, 0x1000C8000313F17);
    }

    if (v14 >= 0x41 && v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }

    if (v35 < 0x41 || !v34)
    {
      return;
    }

LABEL_48:
    MEMORY[0x259C63150]();
    return;
  }

  v27 = *(this + 2);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v26 = *this;
  llvm::APInt::negate(&v26);
  v20 = v27;
  v37 = v27;
  v21 = v26;
  v36 = v26;
  v27 = 0;
  llvm::APInt::udiv(&v28, &v36, a2);
  llvm::APInt::negate(&v28);
  *(a3 + 8) = v29;
  *a3 = v28;
  v29 = 0;
  if (v20 >= 0x41 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    goto LABEL_48;
  }
}

void llvm::APInt::sdiv(llvm::APInt *this@<X0>, int64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v5 = *(this + 2);
  v6 = v5 - 1;
  v7 = this;
  if (v5 >= 0x41)
  {
    v7 = (*this + 8 * (v6 >> 6));
  }

  if ((*v7 >> v6))
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v16 = *(this + 2);
      if (v5 > 0x40)
      {
        operator new[]();
      }

      v15 = *this;
      llvm::APInt::negate(&v15);
      v8 = v16;
      v22 = v16;
      v9 = v15;
      v21 = v15;
      v16 = 0;
      llvm::APInt::udiv(&v21, a2, &v17);
      llvm::APInt::negate(&v17);
      *(a3 + 2) = v18;
      *a3 = v17;
      v18 = 0;
      if (v8 >= 0x41 && v9)
      {
        MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      }

      if (v16 < 0x41)
      {
        return;
      }

      v10 = v15;
      if (!v15)
      {
        return;
      }

LABEL_27:
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      return;
    }

    v20 = *(this + 2);
    if (v5 > 0x40)
    {
      operator new[]();
    }

    v19 = *this;
    llvm::APInt::negate(&v19);
    v11 = v20;
    v22 = v20;
    v12 = v19;
    v21 = v19;
    v20 = 0;
    llvm::APInt::udiv(&v21, -a2, a3);
    if (v11 >= 0x41 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }

    if (v20 >= 0x41)
    {
      v10 = v19;
      if (v19)
      {
        goto LABEL_27;
      }
    }
  }

  else if (a2 < 0)
  {
    llvm::APInt::udiv(this, -a2, &v13);
    llvm::APInt::negate(&v13);
    *(a3 + 2) = v14;
    *a3 = v13;
  }

  else
  {

    llvm::APInt::udiv(this, a2, a3);
  }
}

void llvm::APInt::urem(unint64_t *__return_ptr a1@<X8>, const void **this@<X0>, const llvm::APInt *a3@<X1>)
{
  v3 = *(this + 2);
  if (v3 <= 0x40)
  {
    v4 = *this % *a3;
    *(a1 + 2) = v3;
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v5 = 0;
    }

    *a1 = v4 & v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 63) >> 6;
  v8 = *this;
  v9 = v7 + 1;
  while (1)
  {
    v10 = v8[(v9 - 2)];
    if (v10)
    {
      break;
    }

    v6 += 64;
    if (--v9 <= 1)
    {
      goto LABEL_10;
    }
  }

  v6 += __clz(v10);
LABEL_10:
  v11 = v3 | 0xFFFFFFC0;
  if ((v3 & 0x3F) == 0)
  {
    v11 = 0;
  }

  v12 = v6 + v11;
  v13 = *(a3 + 2);
  if (v13 > 0x40)
  {
    v16 = 0;
    v14 = *a3;
    v17 = ((v13 + 63) >> 6) + 1;
    while (1)
    {
      v18 = v14[(v17 - 2)];
      if (v18)
      {
        break;
      }

      v16 += 64;
      if (--v17 <= 1)
      {
        goto LABEL_20;
      }
    }

    v16 += __clz(v18);
LABEL_20:
    v19 = v13 | 0xFFFFFFC0;
    if ((v13 & 0x3F) == 0)
    {
      v19 = 0;
    }

    v15 = v16 + v19;
    if (v3 == v12)
    {
LABEL_24:
      *(a1 + 2) = v3;
      operator new[]();
    }
  }

  else
  {
    v14 = *a3;
    v15 = v13 + __clz(*a3) - 64;
    if (v3 == v12)
    {
      goto LABEL_24;
    }
  }

  v20 = (v13 - v15);
  if (v20 == 1)
  {
    goto LABEL_24;
  }

  v21 = (((v3 - v12) + 63) >> 6);
  v22 = ((v20 + 63) >> 6);
  if (v21 < v22)
  {
    goto LABEL_26;
  }

  v23 = v7;
  do
  {
    if (!(v23 * 8))
    {
      goto LABEL_31;
    }

    v24 = v8[v23 - 1];
    v25 = v14[--v23];
  }

  while (v24 == v25);
  if (v24 <= v25)
  {
LABEL_26:
    *(a1 + 2) = v3;
    operator new[]();
  }

LABEL_31:
  if (!memcmp(*this, v14, ((v3 + 63) >> 3) & 0x3FFFFFF8))
  {
    v30 = a1;
    v31 = v3;
    v29 = 0;
    goto LABEL_35;
  }

  if (v21 == 1)
  {
    v29 = *v8 % *v14;
    v30 = a1;
    v31 = v3;
LABEL_35:

    llvm::APInt::APInt(v30, v31, v29, 0, 1);
    return;
  }

  llvm::APInt::APInt(a1, v3, 0, 0, 1);
  v33 = *this;
  v34 = *a3;
  v35 = *a1;

  llvm::APInt::divide(v33, v21, v34, v22, 0, v35, v32);
}

unint64_t llvm::APInt::urem(llvm::APInt *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v23.i64[1] = a2;
  v7 = *(this + 2);
  if (v7 > 0x40)
  {
    v10 = 0;
    v11 = (v7 + 63) >> 6;
    this = *this;
    v12 = v11 + 1;
    while (1)
    {
      v13 = *(this + (v12 - 2));
      if (v13)
      {
        break;
      }

      v10 += 64;
      if (--v12 <= 1)
      {
        v8 = 0;
        v14 = v7 | 0xFFFFFFC0;
        if ((v7 & 0x3F) == 0)
        {
          v14 = 0;
        }

        if (a2 == 1)
        {
          return v8;
        }

        goto LABEL_14;
      }
    }

    v10 += __clz(v13);
    v8 = 0;
    v14 = v7 | 0xFFFFFFC0;
    if ((v7 & 0x3F) == 0)
    {
      v14 = 0;
    }

    if (a2 == 1)
    {
      return v8;
    }

LABEL_14:
    v15 = v10 + v14;
    if (v7 == v15)
    {
      return v8;
    }

    v16 = 0;
    v17 = (((v7 - v15) + 63) >> 6);
    v18 = v11 + 1;
    while (1)
    {
      v19 = *(this + (v18 - 2));
      if (v19)
      {
        break;
      }

      v16 += 64;
      if (--v18 <= 1)
      {
        if ((v7 - v14 - v16) > 0x40)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    if (v7 - v14 - (__clz(v19) + v16) > 0x40)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *this;
    if (*this < a2)
    {
      return v8;
    }

LABEL_22:
    v20 = 0;
    v21 = v11 + 1;
    while (1)
    {
      v22 = *(this + (v21 - 2));
      if (v22)
      {
        break;
      }

      v20 += 64;
      if (--v21 <= 1)
      {
        if ((v7 - v14 - v20) > 0x40)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if (v7 - v14 - (__clz(v22) + v20) > 0x40)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (*this == a2)
    {
      return 0;
    }

LABEL_30:
    if (v17 != 1)
    {
      v23.i64[0] = 0;
      llvm::APInt::divide(this, v17, &v23.u64[1], 1, 0, &v23, a7);
      return v23.i64[0];
    }
  }

  return *this % a2;
}