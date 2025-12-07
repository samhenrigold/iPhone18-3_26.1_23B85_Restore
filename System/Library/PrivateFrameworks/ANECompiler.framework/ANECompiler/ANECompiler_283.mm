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
  v40 = *MEMORY[0x1E69E9840];
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
    MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
  }

  if (v32 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v32);
  }

  else if ((*(v32 + 8) - 64) <= 0xFFFFFF7F && v33)
  {
    MEMORY[0x1AC55A040](v33, 0x1000C8000313F17);
  }

  if (v35 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v35);
  }

  else if ((*(v35 + 8) - 64) <= 0xFFFFFF7F && v36)
  {
    MEMORY[0x1AC55A040](v36, 0x1000C8000313F17);
  }

  if (v38 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v38);
  }

  else if ((*(v38 + 8) - 64) <= 0xFFFFFF7F && v39)
  {
    MEMORY[0x1AC55A040](v39, 0x1000C8000313F17);
  }

  return v26;
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
  v78[3] = *MEMORY[0x1E69E9840];
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
  v25 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v19, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v23, &v19, v6, v7);
  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
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
    MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
  }

  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
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
  v20 = *MEMORY[0x1E69E9840];
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
    MEMORY[0x1AC55A040]();
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
    MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
  }

  return llvm::APInt::APInt(a1, 128, 2u, &v18);
}

void llvm::detail::DoubleAPFloat::mod(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  v20[3] = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v17, this, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v20, &v17, v5, v6);
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
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
        MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
      }

LABEL_11:
      if (v16 >= 0x41 && v15)
      {
        MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
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
  v28[3] = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v25, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v28, &v25, v7, v8);
  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x1AC55A040](v25, 0x1000C8000313F17);
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
        MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
      }

LABEL_11:
      if (v20 >= 0x41 && v19)
      {
        MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
      }

      if (v26 == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
      }

      else if ((*(v26 + 8) - 64) <= 0xFFFFFF7F && v27)
      {
        MEMORY[0x1AC55A040](v27, 0x1000C8000313F17);
      }

      if (v22 >= 0x41 && v21)
      {
        MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
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

void llvm::detail::DoubleAPFloat::makeLargest(llvm::detail::DoubleAPFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
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
    MEMORY[0x1AC55A040](v10.n128_u64[1], 0x1000C8000313F17);
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
    MEMORY[0x1AC55A040](v10.n128_u64[1], 0x1000C8000313F17);
  }

  if (a2)
  {
    llvm::detail::DoubleAPFloat::changeSign(this);
  }
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
  v6 = *MEMORY[0x1E69E9840];
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

uint64_t llvm::detail::DoubleAPFloat::convertToInteger(llvm::detail::DoubleAPFloat *a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22 = *MEMORY[0x1E69E9840];
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
    MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
  }

LABEL_8:
  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
  }

  return v15;
}

void llvm::detail::DoubleAPFloat::convertFromAPInt(llvm::detail::DoubleAPFloat *a1, unsigned int *a2, int a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

void llvm::detail::DoubleAPFloat::toString(llvm::detail::DoubleAPFloat *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
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
    MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
  }

LABEL_8:
  if (v13 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x1AC55A040](v12, 0x1000C8000313F17);
    }
  }
}

uint64_t llvm::APFloat::Storage::Storage(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v15[3] = *MEMORY[0x1E69E9840];
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
      MEMORY[0x1AC55A040](v10, 0x1000C8000313F17);
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

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2, unsigned __int8 *a3, size_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
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

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, unsigned int a3, BOOL *a4)
{
  v24 = *MEMORY[0x1E69E9840];
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
      MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
    }

    llvm::APFloat::Storage::operator=(v5, &v23);
    if (v23.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
    }

    else if ((*(v23.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v23.n128_u64[1])
    {
      MEMORY[0x1AC55A040](v23.n128_u64[1], 0x1000C8000313F17);
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

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  v23 = v25;
  v24 = 0x400000000;
  if (!v7)
  {
    v8 = 0;
    v11 = v25;
    goto LABEL_9;
  }

  v8 = (v7 + 63) >> 6;
  if (v7 >= 0x101)
  {
    v9 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, (v7 + 63) >> 6, 8);
    a1 = v9;
    v10 = v24;
    v11 = v23;
    v12 = v8 - v24;
    if (v8 == v24)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = v25;
  v12 = (v7 + 63) >> 6;
  if (v8)
  {
LABEL_7:
    v13 = a1;
    v14 = v11;
    bzero(v11 + 8 * v10, 8 * v12);
    v11 = v14;
    a1 = v13;
  }

LABEL_8:
  LODWORD(v24) = (v7 + 63) >> 6;
LABEL_9:
  v16 = *(a1 + 8);
  v15 = (a1 + 8);
  v17 = (*(a2 + 12) ^ 1) & 1;
  if (v16 == &llvm::semPPCDoubleDouble)
  {
    v18 = llvm::detail::DoubleAPFloat::convertToInteger(v15, v11, v8, v7, v17, a3, a4);
  }

  else
  {
    v18 = llvm::detail::IEEEFloat::convertToInteger(v15, v11, v8, v7, v17, a3, a4);
  }

  v19 = v18;
  llvm::APInt::APInt(&v21, v7);
  if (*(a2 + 8) >= 0x41u && *a2)
  {
    MEMORY[0x1AC55A040](*a2, 0x1000C8000313F17);
  }

  *a2 = v21;
  *(a2 + 8) = v22;
  v22 = 0;
  if (v23 != v25)
  {
    free(v23);
  }

  return v19;
}

double llvm::APFloat::convertToDouble(void **this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (this[1] == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v11, (this + 1));
    if (v12 <= 0x40)
    {
      return *&v11;
    }

    v5 = *v11;
LABEL_15:
    MEMORY[0x1AC55A040]();
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
    MEMORY[0x1AC55A040]();
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
  v14 = *MEMORY[0x1E69E9840];
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
    MEMORY[0x1AC55A040]();
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
    MEMORY[0x1AC55A040]();
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
    std::vector<std::unique_ptr<mlir::Diagnostic>>::push_back[abi:nn200100](v8 + 8, &v17);
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
    std::vector<std::unique_ptr<mlir::Diagnostic>>::push_back[abi:nn200100](v8 + 8, v11++);
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
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
      MEMORY[0x1AC55A040](*this, 0x1000C8000313F17);
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
    MEMORY[0x1AC55A040](*a1, 0x1000C8000313F17);
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

unint64_t llvm::hash_value(llvm::hashing::detail **this, const llvm::APInt *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = llvm::hashing::detail::hash_combine_range_impl<char const>(*this, *this + (((v2 + 63) >> 3) & 0x3FFFFFF8));
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

void llvm::APInt::divide(llvm::APInt *this, const unint64_t *a2, int32x4_t *a3, const unint64_t *a4, int8x16_t *a5, int8x16_t *a6, unint64_t *a7)
{
  v166 = a5;
  v164 = a3;
  v170[62] = *MEMORY[0x1E69E9840];
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
          MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
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
      MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
    }

    if (v31 >= 0x41 && v30)
    {
      MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
    }

    if (v14 >= 0x41 && v15)
    {
      MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
    }

    if (v35 < 0x41 || !v34)
    {
      return;
    }

LABEL_48:
    MEMORY[0x1AC55A040]();
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
    MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    goto LABEL_48;
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

void llvm::APInt::srem(unint64_t *__return_ptr a1@<X8>, const void **this@<X0>, const llvm::APInt *a3@<X1>)
{
  v6 = *(this + 2);
  v7 = v6 - 1;
  v8 = this;
  if (v6 >= 0x41)
  {
    v8 = (*this + 8 * (v7 >> 6));
  }

  v9 = *v8;
  v10 = *(a3 + 2);
  v11 = v10 - 1;
  if (((v9 >> v7) & 1) == 0)
  {
    if (v10 > 0x40)
    {
      if ((*(*a3 + 8 * (v11 >> 6)) >> v11))
      {
        v23 = *(a3 + 2);
        operator new[]();
      }
    }

    else
    {
      v13 = *a3;
      if ((*a3 >> v11))
      {
        v23 = *(a3 + 2);
        v22 = v13;
        llvm::APInt::negate(&v22);
        v18 = v23;
        v35 = v23;
        v19 = v22;
        v34 = v22;
        v23 = 0;
        llvm::APInt::urem(a1, this, &v34);
        if (v18 >= 0x41 && v19)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
        }

        if (v23 >= 0x41 && v22)
        {
          goto LABEL_48;
        }

        return;
      }
    }

    llvm::APInt::urem(a1, this, a3);
    return;
  }

  if (v10 >= 0x41)
  {
    v12 = (*a3 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = a3;
  }

  if ((*v12 >> v11))
  {
    v33 = *(this + 2);
    if (v6 > 0x40)
    {
      operator new[]();
    }

    v32 = *this;
    llvm::APInt::negate(&v32);
    v14 = v33;
    v35 = v33;
    v15 = v32;
    v34 = v32;
    v33 = 0;
    v29 = *(a3 + 2);
    if (v29 > 0x40)
    {
      operator new[]();
    }

    v28 = *a3;
    llvm::APInt::negate(&v28);
    v16 = v29;
    v31 = v29;
    v17 = v28;
    v30 = v28;
    v29 = 0;
    llvm::APInt::urem(&v36, &v34, &v30);
    llvm::APInt::negate(&v36);
    *(a1 + 2) = v37;
    *a1 = v36;
    v37 = 0;
    if (v16 >= 0x41 && v17)
    {
      MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
    }

    if (v29 >= 0x41 && v28)
    {
      MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
    }

    if (v14 >= 0x41 && v15)
    {
      MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
    }

    if (v33 < 0x41 || !v32)
    {
      return;
    }

LABEL_48:
    MEMORY[0x1AC55A040]();
    return;
  }

  v25 = *(this + 2);
  if (v6 > 0x40)
  {
    operator new[]();
  }

  v24 = *this;
  llvm::APInt::negate(&v24);
  v20 = v25;
  v35 = v25;
  v21 = v24;
  v34 = v24;
  v25 = 0;
  llvm::APInt::urem(&v26, &v34, a3);
  llvm::APInt::negate(&v26);
  *(a1 + 2) = v27;
  *a1 = v26;
  v27 = 0;
  if (v20 >= 0x41 && v21)
  {
    MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
  }

  if (v25 >= 0x41 && v24)
  {
    goto LABEL_48;
  }
}

void llvm::APInt::udivrem(llvm::APInt *this, const llvm::APInt *a2, const llvm::APInt *a3, llvm::APInt *a4, llvm::APInt *a5, uint64_t a6, unint64_t *a7)
{
  v9 = *(this + 2);
  if (v9 <= 0x40)
  {
    v10 = *this % *a2;
    if (v9)
    {
      v11 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = (*this / *a2) & v11;
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x1AC55A040](*a3, 0x1000C8000313F17);
    }

    *a3 = v12;
    *(a3 + 2) = v9;
    if (*(a4 + 2) >= 0x41u)
    {
      if (*a4)
      {
        MEMORY[0x1AC55A040]();
      }
    }

    *a4 = v10 & v11;
    *(a4 + 2) = v9;
    return;
  }

  v13 = 0;
  v14 = (v9 + 63) >> 6;
  v15 = v14 + 1;
  while (1)
  {
    v16 = *(*this + 8 * (v15 - 2));
    if (v16)
    {
      break;
    }

    v13 += 64;
    if (--v15 <= 1)
    {
      goto LABEL_16;
    }
  }

  v13 += __clz(v16);
LABEL_16:
  v17 = v9 | 0xFFFFFFC0;
  if ((v9 & 0x3F) == 0)
  {
    v17 = 0;
  }

  v18 = v13 + v17;
  v19 = *(a2 + 2);
  if (v19 <= 0x40)
  {
    v20 = v19 + __clz(*a2) - 64;
    if (v9 != v18)
    {
      goto LABEL_20;
    }

LABEL_32:
    operator new[]();
  }

  v26 = 0;
  v27 = ((v19 + 63) >> 6) + 1;
  while (1)
  {
    v28 = *(*a2 + 8 * (v27 - 2));
    if (v28)
    {
      break;
    }

    v26 += 64;
    if (--v27 <= 1)
    {
      goto LABEL_29;
    }
  }

  v26 += __clz(v28);
LABEL_29:
  v29 = v19 | 0xFFFFFFC0;
  if ((v19 & 0x3F) == 0)
  {
    v29 = 0;
  }

  v20 = v26 + v29;
  if (v9 == v18)
  {
    goto LABEL_32;
  }

LABEL_20:
  v21 = ((v9 - v18) + 63) >> 6;
  v22 = (v19 - v20);
  v23 = (v22 + 63) >> 6;
  v24 = *(this + 2);
  v44 = this;
  if (v22 == 1)
  {
    if (a3 != this)
    {
      v25 = *(a3 + 2);
      if (v14 != (v25 + 63) >> 6)
      {
        if (v25 >= 0x41 && *a3)
        {
          MEMORY[0x1AC55A040](*a3, 0x1000C8000313F17);
        }

        *(a3 + 2) = v9;
        operator new[]();
      }

      *(a3 + 2) = v9;
      memcpy(*a3, *this, ((v9 + 63) >> 3) & 0x3FFFFFF8);
    }

    operator new[]();
  }

  if (v21 < v23)
  {
    goto LABEL_40;
  }

  if (v24 > 0x40)
  {
    v31 = *a2;
    v32 = (v24 + 63) >> 3;
    v33 = v32 & 0x3FFFFFF8;
    do
    {
      if (!v33)
      {
        goto LABEL_55;
      }

      v34 = *(*this + v33 - 8);
      v35 = *&v31[v33 - 8];
      v33 -= 8;
    }

    while (v34 == v35);
    if (v34 <= v35)
    {
LABEL_40:
      v30 = *(a4 + 2);
      if (v30 <= 0x40 && v24 <= 0x40)
      {
        *a4 = *this;
        *(a4 + 2) = *(this + 2);
        goto LABEL_79;
      }

      if (a4 != this)
      {
        if ((v24 + 63) >> 6 == (v30 + 63) >> 6)
        {
          *(a4 + 2) = v24;
          if (v24 > 0x40)
          {
            memcpy(*a4, *this, ((v24 + 63) >> 3) & 0x3FFFFFF8);
            goto LABEL_79;
          }
        }

        else
        {
          if (v30 >= 0x41 && *a4)
          {
            MEMORY[0x1AC55A040](*a4, 0x1000C8000313F17);
            this = v44;
          }

          *(a4 + 2) = v24;
          if (v24 >= 0x41)
          {
            operator new[]();
          }
        }

        *a4 = *this;
      }

LABEL_79:
      operator new[]();
    }

LABEL_55:
    if (!memcmp(*this, v31, v32 & 0x3FFFFFF8))
    {
LABEL_46:
      operator new[]();
    }
  }

  else
  {
    if (*this < *a2)
    {
      goto LABEL_40;
    }

    if (*this == *a2)
    {
      goto LABEL_46;
    }
  }

  v36 = *(a3 + 2);
  if (v14 != (v36 + 63) >> 6)
  {
    if (v36 >= 0x41 && *a3)
    {
      MEMORY[0x1AC55A040](*a3, 0x1000C8000313F17);
    }

    *(a3 + 2) = v9;
    operator new[]();
  }

  *(a3 + 2) = v9;
  v37 = *(a4 + 2);
  if (v14 != (v37 + 63) >> 6)
  {
    if (v37 >= 0x41 && *a4)
    {
      MEMORY[0x1AC55A040](*a4, 0x1000C8000313F17);
    }

    *(a4 + 2) = v9;
    operator new[]();
  }

  *(a4 + 2) = v9;
  v39 = *v44;
  if (v21 == 1)
  {
    v40 = *v39;
    v41 = **a2;
    v42 = *v39 / v41;
    llvm::APInt::operator=(a3, v42);

    llvm::APInt::operator=(a4, v40 - v42 * v41);
  }

  else
  {
    llvm::APInt::divide(v39, v21, *a2, v23, *a3, *a4, a7);
    bzero((*a3 + 8 * v21), (8 * (v14 - v21)));
    v38 = (*a4 + 8 * v23);

    bzero(v38, (8 * (v14 - v23)));
  }
}

unsigned int *llvm::APInt::operator=(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 > 0x40)
  {
    **result = a2;
    v4 = result;
    bzero((*result + 8), (((v2 + 63) >> 3) - 8) & 0xFFFFFFF8);
    return v4;
  }

  else
  {
    if (v2)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v3 = 0;
    }

    *result = v3 & a2;
  }

  return result;
}

void llvm::APInt::udivrem(const void **this, unint64_t a2, const void **a3, int8x16_t *a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v37.i64[0] = a2;
  v9 = *(this + 2);
  if (v9 > 0x40)
  {
    v13 = 0;
    v14 = (v9 + 63) >> 6;
    v15 = *this;
    v16 = v14 + 1;
    while (1)
    {
      v17 = v15[(v16 - 2)];
      if (v17)
      {
        break;
      }

      v13 += 64;
      if (--v16 <= 1)
      {
        v18 = v9 | 0xFFFFFFC0;
        if ((v9 & 0x3F) == 0)
        {
          v18 = 0;
        }

        v19 = v13 + v18;
        v20 = (v9 - v19);
        if (v9 == v19)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    v21 = __clz(v17) + v13;
    v18 = v9 | 0xFFFFFFC0;
    if ((v9 & 0x3F) == 0)
    {
      v18 = 0;
    }

    v22 = v21 + v18;
    v20 = (v9 - v22);
    if (v9 == v22)
    {
LABEL_14:
      operator new[]();
    }

LABEL_18:
    if (a2 == 1)
    {
      if (a3 != this)
      {
        v23 = *(a3 + 2);
        if (v14 != (v23 + 63) >> 6)
        {
          if (v23 >= 0x41 && *a3)
          {
            MEMORY[0x1AC55A040]();
          }

          *(a3 + 2) = v9;
          operator new[]();
        }

        *(a3 + 2) = v9;
        memcpy(*a3, *this, ((v9 + 63) >> 3) & 0x3FFFFFF8);
      }

      a4->i64[0] = 0;
    }

    else
    {
      v24 = 0;
      v25 = (v20 + 63) >> 6;
      v26 = v14 + 1;
      while (1)
      {
        v27 = v15[(v26 - 2)];
        if (v27)
        {
          break;
        }

        v24 += 64;
        if (--v26 <= 1)
        {
          if ((v9 - v18 - v24) > 0x40)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }
      }

      if (v9 - v18 - (__clz(v27) + v24) > 0x40)
      {
        goto LABEL_31;
      }

LABEL_29:
      if (*v15 < a2)
      {
        a4->i64[0] = *v15;
        operator new[]();
      }

LABEL_31:
      v28 = 0;
      v29 = v14 + 1;
      while (1)
      {
        v30 = v15[(v29 - 2)];
        if (v30)
        {
          break;
        }

        v28 += 64;
        if (--v29 <= 1)
        {
          if ((v9 - v18 - v28) > 0x40)
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }
      }

      if (v9 - v18 - (__clz(v30) + v28) > 0x40)
      {
        goto LABEL_39;
      }

LABEL_37:
      if (*v15 == a2)
      {
        operator new[]();
      }

LABEL_39:
      v31 = *(a3 + 2);
      if (v14 != (v31 + 63) >> 6)
      {
        if (v31 >= 0x41 && *a3)
        {
          MEMORY[0x1AC55A040]();
        }

        *(a3 + 2) = v9;
        operator new[]();
      }

      *(a3 + 2) = v9;
      v32 = *this;
      if (v25 == 1)
      {
        v34 = *v32;
        v35 = *v32 / a2;
        llvm::APInt::operator=(a3, v35);
        a4->i64[0] = v34 - v35 * a2;
      }

      else
      {
        llvm::APInt::divide(v32, v25, &v37, 1, *a3, a4, a7);
        v33 = *a3 + 8 * v25;

        bzero(v33, (8 * (v14 - v25)));
      }
    }
  }

  else
  {
    v10 = *this / a2;
    a4->i64[0] = *this % a2;
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
    if (!v9)
    {
      v11 = 0;
    }

    v12 = (v10 & v11);
    if (*(a3 + 2) >= 0x41u)
    {
      if (*a3)
      {
        MEMORY[0x1AC55A040]();
      }
    }

    *a3 = v12;
    *(a3 + 2) = v9;
  }
}

uint64_t *llvm::APInt::sadd_ov@<X0>(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const llvm::APInt *a3@<X1>, BOOL *a4@<X2>)
{
  v5 = *(this + 2);
  if (v5 >= 0x41)
  {
    operator new[]();
  }

  v6 = *this;
  v7 = *a3;
  v8 = *a3 + *this;
  if (v5)
  {
    v9 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 2) = v5;
  *a1 = v9 & v8;
  v10 = *(a3 + 2);
  v11 = (v7 + 8 * ((v10 - 1) >> 6));
  if (v10 < 0x41)
  {
    v11 = a3;
  }

  if (((v6 & (1 << (v5 - 1))) == 0) != (((*v11 >> (v10 - 1)) & 1) == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = ((*a1 & (1 << (v5 - 1))) == 0) ^ ((v6 & (1 << (v5 - 1))) == 0);
  }

  *a4 = v12;
  return this;
}

const void **llvm::APInt::uadd_ov@<X0>(unint64_t *__return_ptr a1@<X8>, const void **this@<X0>, uint64_t **a3@<X1>, BOOL *a4@<X2>)
{
  v5 = *(this + 2);
  if (v5 >= 0x41)
  {
    operator new[]();
  }

  v6 = *a3;
  v7 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  if (!v5)
  {
    v7 = 0;
  }

  v8 = (*this + *a3) & v7;
  *(a1 + 2) = v5;
  *a1 = v8;
  *a4 = v8 < v6;
  return this;
}

uint64_t *llvm::APInt::ssub_ov@<X0>(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const llvm::APInt *a3@<X1>, BOOL *a4@<X2>)
{
  v5 = *(this + 2);
  if (v5 >= 0x41)
  {
    operator new[]();
  }

  v6 = *this;
  v7 = *a3;
  v8 = *this - *a3;
  if (v5)
  {
    v9 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 2) = v5;
  *a1 = v9 & v8;
  v10 = *(a3 + 2);
  v11 = (v7 + 8 * ((v10 - 1) >> 6));
  if (v10 < 0x41)
  {
    v11 = a3;
  }

  if (((v6 & (1 << (v5 - 1))) == 0) == (((*v11 >> (v10 - 1)) & 1) == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = ((*a1 & (1 << (v5 - 1))) == 0) ^ ((v6 & (1 << (v5 - 1))) == 0);
  }

  *a4 = v12;
  return this;
}

const void **llvm::APInt::usub_ov@<X0>(unint64_t *__return_ptr a1@<X8>, const void **this@<X0>, unint64_t **a3@<X1>, BOOL *a4@<X2>)
{
  v5 = *(this + 2);
  if (v5 >= 0x41)
  {
    operator new[]();
  }

  v6 = *this;
  v7 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  if (!v5)
  {
    v7 = 0;
  }

  v8 = (*this - *a3) & v7;
  *(a1 + 2) = v5;
  *a1 = v8;
  *a4 = v8 > v6;
  return this;
}

void llvm::APInt::sdiv_ov(uint64_t a3@<X8>, const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a4@<X2>)
{
  v4 = *(this + 2);
  if (v4 > 0x40)
  {
    v5 = v4 - 1;
    v6 = *this;
    if ((*(*this + ((v4 - 1) >> 6)) >> (v4 - 1)))
    {
      v7 = 0;
      v8 = (v4 + 63) >> 6;
      v9 = v8 << 6;
      while (!*v6)
      {
        ++v6;
        v7 -= 64;
        if (!--v8)
        {
          if (v4 >= v9)
          {
            LODWORD(v4) = v9;
          }

          if (v4 != v5)
          {
            goto LABEL_18;
          }

          goto LABEL_11;
        }
      }

      v11 = __clz(__rbit64(*v6)) - v7;
      if (v4 >= v11)
      {
        LODWORD(v4) = v11;
      }

      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

  if (*this != (1 << (v4 - 1)))
  {
LABEL_18:
    *a4 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v10 = *(a2 + 2);
  if (v10)
  {
    if (v10 > 0x40)
    {
      v12 = 0;
      v13 = (v10 + 63) >> 6;
      v14 = *a2;
      v15 = v13 << 6;
      while (*v14 == -1)
      {
        ++v14;
        v12 -= 64;
        if (!--v13)
        {
          *a4 = v15 == v10;
          goto LABEL_14;
        }
      }

      *a4 = __clz(__rbit64(~*v14)) - v12 == v10;
    }

    else
    {
      *a4 = *a2 == 0xFFFFFFFFFFFFFFFFLL >> -v10;
    }
  }

  else
  {
    *a4 = 1;
  }

LABEL_14:
  llvm::APInt::sdiv(this, a2, a3);
}

void llvm::APInt::smul_ov(const void **__return_ptr a1@<X8>, void **this@<X0>, const llvm::APInt *a3@<X1>, BOOL *a4@<X2>)
{
  llvm::APInt::operator*(this, a3, a1);
  v8 = *(a3 + 2);
  v9 = a3;
  if (v8 < 0x41)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v9 = *a3;
  v11 = ((v8 + 63) >> 6) + 1;
  while (1)
  {
    v12 = *(v9 + (v11 - 2));
    if (v12)
    {
      break;
    }

    v10 += 64;
    if (--v11 <= 1)
    {
      goto LABEL_7;
    }
  }

  v10 += __clz(v12);
LABEL_7:
  v13 = v8 | 0xFFFFFFC0;
  if ((v8 & 0x3F) == 0)
  {
    v13 = 0;
  }

  if ((v8 - v13 - v10) <= 0x40)
  {
LABEL_10:
    if (!*v9)
    {
      *a4 = 0;
      return;
    }
  }

  llvm::APInt::sdiv(a1, a3, &__s1);
  v14 = v31;
  if (v31 > 0x40)
  {
    v15 = __s1;
    v16 = *this;
    if (memcmp(__s1, *this, ((v31 + 63) >> 3) & 0x3FFFFFF8))
    {
      *a4 = 1;
      goto LABEL_47;
    }
  }

  else
  {
    v15 = __s1;
    v16 = *this;
    if (__s1 != *this)
    {
      *a4 = 1;
      return;
    }
  }

  v17 = *(this + 2);
  v18 = v17 - 1;
  if (v17 > 0x40)
  {
    if ((v16[v18 >> 6] >> v18))
    {
      v19 = 0;
      v20 = (v17 + 63) >> 6;
      v21 = v20 << 6;
      while (!*v16)
      {
        ++v16;
        v19 -= 64;
        if (!--v20)
        {
          if (v17 >= v21)
          {
            LODWORD(v17) = v21;
          }

          if (v17 != v18)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }
      }

      v24 = __clz(__rbit64(*v16)) - v19;
      if (v17 >= v24)
      {
        LODWORD(v17) = v24;
      }

      if (v17 == v18)
      {
        goto LABEL_27;
      }
    }

LABEL_33:
    *a4 = 0;
    if (v14 < 0x41)
    {
      return;
    }

    goto LABEL_47;
  }

  if (v16 != (1 << v18))
  {
    goto LABEL_33;
  }

LABEL_27:
  v22 = *(a3 + 2);
  if (!v22)
  {
    *a4 = 1;
    if (v14 < 0x41)
    {
      return;
    }

    goto LABEL_47;
  }

  if (v22 > 0x40)
  {
    v25 = 0;
    v26 = (v22 + 63) >> 6;
    v27 = *a3;
    v28 = v26 << 6;
    while (*v27 == -1)
    {
      ++v27;
      v25 -= 64;
      if (!--v26)
      {
        goto LABEL_42;
      }
    }

    v28 = __clz(__rbit64(~*v27)) - v25;
LABEL_42:
    v23 = v28 == v22;
  }

  else
  {
    v23 = *a3 == 0xFFFFFFFFFFFFFFFFLL >> -v22;
  }

  v29 = v23;
  *a4 = v29;
  if (v14 >= 0x41)
  {
LABEL_47:
    if (v15)
    {
      MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
    }
  }
}

uint64_t *llvm::APInt::umul_ov@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, const llvm::APInt *a3@<X1>, BOOL *a4@<X2>)
{
  v6 = this;
  v8 = *(this + 2);
  if (v8 > 0x40)
  {
    v15 = 0;
    v9 = *this;
    v16 = ((v8 + 63) >> 6) + 1;
    while (1)
    {
      v17 = *(v9 + 8 * (v16 - 2));
      if (v17)
      {
        break;
      }

      v15 += 64;
      if (--v16 <= 1)
      {
        goto LABEL_20;
      }
    }

    v15 += __clz(v17);
LABEL_20:
    v20 = v8 | 0xFFFFFFC0;
    if ((v8 & 0x3F) == 0)
    {
      v20 = 0;
    }

    v10 = v15 + v20;
    v11 = *(a3 + 2);
    if (v11 > 0x40)
    {
LABEL_3:
      v12 = 0;
      v13 = ((v11 + 63) >> 6) + 1;
      while (1)
      {
        v14 = *(*a3 + 8 * (v13 - 2));
        if (v14)
        {
          break;
        }

        v12 += 64;
        if (--v13 <= 1)
        {
          goto LABEL_12;
        }
      }

      v12 += __clz(v14);
LABEL_12:
      if ((v11 & 0x3F) != 0)
      {
        v18 = v11 | 0xFFFFFFC0;
      }

      else
      {
        v18 = 0;
      }

      if (v10 + v12 + v18 + 2 <= v8)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = *this;
    v10 = v8 + __clz(*this) - 64;
    v11 = *(a3 + 2);
    if (v11 > 0x40)
    {
      goto LABEL_3;
    }
  }

  if (v10 + v11 + __clz(*a3) - 64 + 2 <= v8)
  {
LABEL_16:
    *a4 = 1;

    return llvm::APInt::operator*(this, a3, a1);
  }

LABEL_24:
  v53 = *(this + 2);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v21 = v9 >> 1;
  if (v8 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v52 = v22;
  result = llvm::APInt::operator*(&v52, a3, a1);
  v23 = *(a1 + 2);
  v24 = *a1;
  v25 = (*a1 + 8 * ((v23 - 1) >> 6));
  if (v23 < 0x41)
  {
    v25 = a1;
  }

  *a4 = (*v25 >> (v23 - 1)) & 1;
  if (v23 > 0x40)
  {
    v28 = (v23 + 63) >> 6;
    v29 = v24 + 8 * v28;
    v31 = *(v29 - 8);
    v30 = (v29 - 8);
    v32 = 2 * v31;
    *v30 = 2 * v31;
    v33 = v28 - 2;
    do
    {
      *v30 = v32 | (*(v24 + 8 * v33) >> 63);
      v30 = (v24 + 8 * v33);
      v32 = 2 * *v30;
      *v30 = v32;
    }

    while (v33--);
    *(v24 + 8 * (v28 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v23;
    if (*(v6 + 2) < 0x41u)
    {
      goto LABEL_43;
    }

LABEL_42:
    v6 = *v6;
    goto LABEL_43;
  }

  v26 = 2 * v24;
  if (v23 == 1)
  {
    v26 = 0;
  }

  v27 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
  if (!v23)
  {
    v27 = 0;
  }

  v24 = v26 & v27;
  *a1 = v24;
  if (*(v6 + 2) >= 0x41u)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (*v6)
  {
    if (v23 >= 0x41)
    {
      v39 = 0;
      v40 = *a3;
      v41 = (v23 + 63) >> 6;
      v42 = v24;
      v43 = v41;
      do
      {
        v44 = *v40++;
        v45 = v44 + *v42;
        v46 = __CFADD__(v44, *v42);
        result = (v45 + 1);
        v47 = (v45 + 1) <= *v42;
        if (v39)
        {
          ++v45;
          v39 = v47;
        }

        else
        {
          v39 = v46;
        }

        *v42++ = v45;
        --v43;
      }

      while (v43);
      *(v24 + 8 * (v41 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v23;
      v48 = 8 * v41;
      v49 = v24 - 8;
      while (v48)
      {
        v50 = *(v49 + v48);
        v51 = *(*a3 - 8 + v48);
        v48 -= 8;
        if (v50 != v51)
        {
          if (v50 > v51)
          {
            return result;
          }

          goto LABEL_62;
        }
      }
    }

    else
    {
      v35 = *a3;
      v36 = v24 + *a3;
      if (v23)
      {
        v37 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
      }

      else
      {
        v37 = 0;
      }

      v38 = v36 & v37;
      *a1 = v38;
      if (v38 < v35)
      {
LABEL_62:
        *a4 = 1;
      }
    }
  }

  return result;
}

void llvm::APInt::sshl_ov(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, llvm::APInt *a4@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 < 0x41)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a2 = *a2;
  v8 = ((v6 + 63) >> 6) + 1;
  while (1)
  {
    v9 = *(a2 + (v8 - 2));
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_7;
    }
  }

  v7 += __clz(v9);
LABEL_7:
  v10 = v6 | 0xFFFFFFC0;
  if ((v6 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v6 - v10 - v7) <= 0x40)
  {
LABEL_10:
    v11 = *a2;
    if (v11 <= v5)
    {
      LODWORD(v5) = v11;
    }
  }

  llvm::APInt::sshl_ov(this, a3, v5, a4);
}

void llvm::APInt::sshl_ov(llvm::APInt *this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, llvm::APInt *a4@<X8>)
{
  v4 = *(this + 2);
  *a2 = v4 <= a3;
  if (v4 <= a3)
  {
    *(a4 + 2) = v4;
    if (v4 > 0x40)
    {
      operator new[]();
    }

    *a4 = 0;
    return;
  }

  v5 = v4 - 1;
  if (v4 > 0x40)
  {
    v8 = *this;
    if ((*(*this + 8 * (v5 >> 6)) >> v5))
    {
      v12 = 64 - (v4 & 0x3F);
      v13 = v4 & 0x3F;
      if ((v4 & 0x3F) == 0)
      {
        v13 = 64;
        v12 = 0;
      }

      v14 = __clz(~(*(v8 + (((v4 + 63) >> 3) & 0x3FFFFFF8) - 8) << v12));
      if (v13 != v14)
      {
        *a2 = v14 <= a3;
        *(a4 + 2) = v4;
        goto LABEL_28;
      }

      v15 = ((v4 + 63) >> 6) - 1;
      while (1)
      {
        v16 = *(v8 + 8 * --v15);
        if (v16 != -1)
        {
          break;
        }

        v13 += 64;
        if (v15 <= 0)
        {
          goto LABEL_27;
        }
      }

      v13 += __clz(~v16);
    }

    else
    {
      v9 = 0;
      v10 = ((v4 + 63) >> 6) + 1;
      while (1)
      {
        v11 = *(v8 + 8 * (v10 - 2));
        if (v11)
        {
          break;
        }

        v9 += 64;
        if (--v10 <= 1)
        {
          goto LABEL_22;
        }
      }

      v9 += __clz(v11);
LABEL_22:
      v17 = v4 | 0xFFFFFFC0;
      if ((v4 & 0x3F) == 0)
      {
        v17 = 0;
      }

      v13 = v9 + v17;
    }

LABEL_27:
    *a2 = v13 <= a3;
    *(a4 + 2) = v4;
LABEL_28:
    operator new[]();
  }

  v6 = v4 + __clz(*this) - 64;
  v7 = __clz(~(*this << -v4));
  if (((*this >> v5) & 1) == 0)
  {
    v7 = v6;
  }

  *a2 = v7 <= a3;
  *(a4 + 2) = v4;
  *a4 = (*this << a3) & (0xFFFFFFFFFFFFFFFFLL >> -v4);
}

void llvm::APInt::ushl_ov(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, llvm::APInt *a4@<X8>)
{
  v5 = *(this + 2);
  v6 = *(a2 + 2);
  if (v6 < 0x41)
  {
    goto LABEL_10;
  }

  v7 = 0;
  a2 = *a2;
  v8 = ((v6 + 63) >> 6) + 1;
  while (1)
  {
    v9 = *(a2 + (v8 - 2));
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 <= 1)
    {
      goto LABEL_7;
    }
  }

  v7 += __clz(v9);
LABEL_7:
  v10 = v6 | 0xFFFFFFC0;
  if ((v6 & 0x3F) == 0)
  {
    v10 = 0;
  }

  if ((v6 - v10 - v7) <= 0x40)
  {
LABEL_10:
    v11 = *a2;
    if (v11 <= v5)
    {
      LODWORD(v5) = v11;
    }
  }

  llvm::APInt::ushl_ov(this, a3, v5, a4);
}

void llvm::APInt::ushl_ov(const void **this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, llvm::APInt *a4@<X8>)
{
  v4 = *(this + 2);
  *a2 = v4 <= a3;
  if (v4 > a3)
  {
    if (v4 > 0x40)
    {
      v5 = 0;
      v6 = ((v4 + 63) >> 6) + 1;
      while (1)
      {
        v7 = *(*this + (v6 - 2));
        if (v7)
        {
          break;
        }

        v5 += 64;
        if (--v6 <= 1)
        {
          goto LABEL_12;
        }
      }

      v5 += __clz(v7);
LABEL_12:
      v8 = v4 | 0xFFFFFFC0;
      if ((v4 & 0x3F) == 0)
      {
        v8 = 0;
      }

      *a2 = v5 + v8 < a3;
      *(a4 + 2) = v4;
      operator new[]();
    }

    *a2 = v4 + __clz(*this) - 64 < a3;
    *(a4 + 2) = v4;
    *a4 = (*this << a3) & (0xFFFFFFFFFFFFFFFFLL >> -v4);
  }

  else
  {
    *(a4 + 2) = v4;
    if (v4 > 0x40)
    {
      operator new[]();
    }

    *a4 = 0;
  }
}

void llvm::APInt::sfloordiv_ov(uint64_t *__return_ptr a1@<X8>, const void **this@<X0>, const llvm::APInt *a3@<X1>, BOOL *a4@<X2>)
{
  llvm::APInt::sdiv_ov(&__src, this, a3, a4);
  if (v18 > 0x40)
  {
    operator new[]();
  }

  v7 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
  if (!v18)
  {
    v7 = 0;
  }

  v8 = *this;
  if (((*a3 * __src) & v7) == *this)
  {
    goto LABEL_16;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v8 = *(v8 + 8 * (v10 >> 6));
  }

  v11 = v8 >> v10;
  v12 = *(a3 + 2);
  v13 = v12 - 1;
  v14 = v12 >= 0x41 ? (*a3 + 8 * (v13 >> 6)) : a3;
  if (((v11 ^ (*v14 >> v13)) & 1) == 0)
  {
LABEL_16:
    *(a1 + 2) = v18;
    v16 = __src;
  }

  else
  {
    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
    if (!v18)
    {
      v15 = 0;
    }

    v16 = v15 & (__src - 1);
    *(a1 + 2) = v18;
  }

  *a1 = v16;
}

void llvm::APInt::sadd_sat(uint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v11 = 0;
  llvm::APInt::sadd_ov(&v9, this, a3, &v11);
  if (!v11)
  {
    *(a1 + 2) = v10;
    *a1 = v9;
    v10 = 0;
    return;
  }

  v5 = *(this + 2);
  v6 = v5 - 1;
  if (v5 > 0x40)
  {
    *(a1 + 2) = v5;
    operator new[]();
  }

  v7 = 1 << v6;
  if ((*this & (1 << v6)) != 0)
  {
    *(a1 + 2) = v5;
    *a1 = 0;
    *a1 |= v7;
    if (v10 < 0x41)
    {
      return;
    }
  }

  else
  {
    *(a1 + 2) = v5;
    if (v5)
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
    }

    else
    {
      v8 = 0;
    }

    *a1 = v8;
    *a1 &= ~v7;
    if (v10 < 0x41)
    {
      return;
    }
  }

  if (v9)
  {

    JUMPOUT(0x1AC55A040);
  }
}

const void **llvm::APInt::uadd_sat@<X0>(uint64_t *__return_ptr a1@<X8>, const void **this@<X0>, uint64_t **a3@<X1>)
{
  v10 = 0;
  result = llvm::APInt::uadd_ov(&v8, this, a3, &v10);
  if (v10)
  {
    v6 = *(this + 2);
    *(a1 + 2) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v7 = 0;
    }

    *a1 = v7;
    if (v9 >= 0x41)
    {
      result = v8;
      if (v8)
      {

        JUMPOUT(0x1AC55A040);
      }
    }
  }

  else
  {
    *(a1 + 2) = v9;
    *a1 = v8;
  }

  return result;
}

void llvm::APInt::ssub_sat(uint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v11 = 0;
  llvm::APInt::ssub_ov(&v9, this, a3, &v11);
  if (!v11)
  {
    *(a1 + 2) = v10;
    *a1 = v9;
    v10 = 0;
    return;
  }

  v5 = *(this + 2);
  v6 = v5 - 1;
  if (v5 > 0x40)
  {
    *(a1 + 2) = v5;
    operator new[]();
  }

  v7 = 1 << v6;
  if ((*this & (1 << v6)) != 0)
  {
    *(a1 + 2) = v5;
    *a1 = 0;
    *a1 |= v7;
    if (v10 < 0x41)
    {
      return;
    }
  }

  else
  {
    *(a1 + 2) = v5;
    if (v5)
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
    }

    else
    {
      v8 = 0;
    }

    *a1 = v8;
    *a1 &= ~v7;
    if (v10 < 0x41)
    {
      return;
    }
  }

  if (v9)
  {

    JUMPOUT(0x1AC55A040);
  }
}

void llvm::APInt::usub_sat(uint64_t *__return_ptr a1@<X8>, const void **this@<X0>, unint64_t **a3@<X1>)
{
  v8 = 0;
  llvm::APInt::usub_ov(&v6, this, a3, &v8);
  if (v8)
  {
    v5 = *(this + 2);
    *(a1 + 2) = v5;
    if (v5 > 0x40)
    {
      operator new[]();
    }

    *a1 = 0;
    if (v7 >= 0x41 && v6)
    {

      JUMPOUT(0x1AC55A040);
    }
  }

  else
  {
    *(a1 + 2) = v7;
    *a1 = v6;
    v7 = 0;
  }
}

void llvm::APInt::smul_sat(uint64_t *__return_ptr a1@<X8>, void **this@<X0>, const llvm::APInt *a3@<X1>)
{
  v4 = this;
  v15 = 0;
  llvm::APInt::smul_ov(&v13, this, a3, &v15);
  if (!v15)
  {
    *(a1 + 2) = v14;
    *a1 = v13;
    v14 = 0;
    return;
  }

  v6 = *(v4 + 2);
  v7 = v6 - 1;
  if (v6 >= 0x41)
  {
    v4 = (*v4 + 8 * (v7 >> 6));
  }

  v8 = 1 << v7;
  v9 = *(a3 + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*a3 + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = a3;
  }

  if (((*v4 & (1 << v7)) != 0) != ((*v11 >> v10) & 1))
  {
    *(a1 + 2) = v6;
    if (v6 >= 0x41)
    {
      operator new[]();
    }

    *a1 = 0;
    *a1 |= v8;
    if (v14 < 0x41)
    {
      return;
    }

LABEL_20:
    if (v13)
    {

      JUMPOUT(0x1AC55A040);
    }

    return;
  }

  *(a1 + 2) = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  if (v6)
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12;
  *a1 &= ~v8;
  if (v14 >= 0x41)
  {
    goto LABEL_20;
  }
}

uint64_t *llvm::APInt::umul_sat@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v10 = 0;
  result = llvm::APInt::umul_ov(&v8, this, a3, &v10);
  if (v10)
  {
    v6 = *(this + 2);
    *(a1 + 2) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v7 = 0;
    }

    *a1 = v7;
    if (v9 >= 0x41)
    {
      result = v8;
      if (v8)
      {

        JUMPOUT(0x1AC55A040);
      }
    }
  }

  else
  {
    *(a1 + 2) = v9;
    *a1 = v8;
  }

  return result;
}

void llvm::APInt::sshl_sat(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
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
    if (v10 <= v4)
    {
      LODWORD(v4) = v10;
    }
  }

  llvm::APInt::sshl_sat(this, v4, a3);
}

void llvm::APInt::sshl_sat(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = 0;
  llvm::APInt::sshl_ov(this, &v11, a2, &v9);
  if (!v11)
  {
    *(a3 + 8) = v10;
    *a3 = v9;
    v10 = 0;
    return;
  }

  v5 = *(this + 2);
  v6 = v5 - 1;
  if (v5 > 0x40)
  {
    *(a3 + 8) = v5;
    operator new[]();
  }

  v7 = 1 << v6;
  if ((*this & (1 << v6)) != 0)
  {
    *(a3 + 8) = v5;
    *a3 = 0;
    *a3 |= v7;
    if (v10 < 0x41)
    {
      return;
    }
  }

  else
  {
    *(a3 + 8) = v5;
    if (v5)
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
    *a3 &= ~v7;
    if (v10 < 0x41)
    {
      return;
    }
  }

  if (v9)
  {

    JUMPOUT(0x1AC55A040);
  }
}

void llvm::APInt::ushl_sat(const void **this@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
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
    if (v10 <= v4)
    {
      LODWORD(v4) = v10;
    }
  }

  llvm::APInt::ushl_sat(this, v4, a3);
}

void llvm::APInt::ushl_sat(const void **this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = 0;
  llvm::APInt::ushl_ov(this, &v9, a2, &v7);
  if (v9)
  {
    v5 = *(this + 2);
    *(a3 + 8) = v5;
    if (v5 > 0x40)
    {
      operator new[]();
    }

    if (v5)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v5;
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    if (v8 >= 0x41 && v7)
    {

      JUMPOUT(0x1AC55A040);
    }
  }

  else
  {
    *(a3 + 8) = v8;
    *a3 = v7;
  }
}

void llvm::APInt::toString(uint64_t a1, void *a2, uint64_t a3, char a4, int a5, int a6, int a7)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    HIDWORD(v9) = a3 - 2;
    LODWORD(v9) = a3 - 2;
    v10 = off_1E77C50F8[(v9 >> 1)];
  }

  else
  {
    v10 = "";
  }

  if (a3 == 10 || a3 == 8)
  {
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(a1 + 8);
  if (v13 > 0x40)
  {
    v22 = 0;
    v23 = ((v13 + 63) >> 6) + 1;
    while (1)
    {
      v24 = *(*a1 + 8 * (v23 - 2));
      if (v24)
      {
        break;
      }

      v22 += 64;
      if (--v23 <= 1)
      {
        v25 = v13 | 0xFFFFFFC0;
        if ((v13 & 0x3F) == 0)
        {
          v25 = 0;
        }

        if (v22 + v25 == v13)
        {
          goto LABEL_35;
        }

LABEL_47:
        v39 = *(a1 + 8);
        operator new[]();
      }
    }

    v32 = __clz(v24) + v22;
    v33 = v13 | 0xFFFFFFC0;
    if ((v13 & 0x3F) == 0)
    {
      v33 = 0;
    }

    if (v32 + v33 != v13)
    {
      goto LABEL_47;
    }

LABEL_35:
    v26 = *v10;
    if (*v10)
    {
      v27 = a2[1];
      v28 = (v10 + 1);
      do
      {
        if ((v27 + 1) > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v27 + 1, 1);
          v27 = a2[1];
        }

        *(*a2 + v27) = v26;
        v27 = a2[1] + 1;
        a2[1] = v27;
        v29 = *v28++;
        v26 = v29;
      }

      while (v29);
    }

    else
    {
      v27 = a2[1];
    }

    if ((v27 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v27 + 1, 1);
      v27 = a2[1];
    }

    *(*a2 + v27) = 48;
    ++a2[1];
  }

  else
  {
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_35;
    }

    if (a6)
    {
      v15 = 36;
    }

    else
    {
      v15 = 0;
    }

    if (a4)
    {
      v14 = v13 ? (v14 << -v13) >> -v13 : 0;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v16 = a2[1];
        if ((v16 + 1) > a2[2])
        {
          v37 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v16 + 1, 1);
          a3 = v37;
          v16 = a2[1];
        }

        *(*a2 + v16) = 45;
        ++a2[1];
        v14 = -v14;
      }
    }

    v17 = *v10;
    if (*v10)
    {
      v18 = a2[1];
      v19 = (v10 + 1);
      do
      {
        if ((v18 + 1) > a2[2])
        {
          v21 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v18 + 1, 1);
          a3 = v21;
          v18 = a2[1];
        }

        *(*a2 + v18) = v17;
        v18 = a2[1] + 1;
        a2[1] = v18;
        v20 = *v19++;
        v17 = v20;
      }

      while (v20);
    }

    if (v14)
    {
      v30 = &llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v15];
      v40 = llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL,BOOL,BOOL)const::BothDigits[v15 + v14 % a3];
      if (v14 >= a3)
      {
        v36 = 1;
        v31 = 64;
        do
        {
          if (a7 && !(v36 % v12))
          {
            --v31;
            *(&v38 + v31) = 39;
          }

          v14 /= a3;
          --v31;
          *(&v38 + v31) = v30[v14 % a3];
          ++v36;
        }

        while (v14 >= a3);
      }

      else
      {
        v31 = 64;
      }
    }

    else
    {
      v31 = 65;
    }

    v34 = a2[1];
    v35 = v34 + 65 - v31;
    if (a2[2] < v35)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v35, 1);
      v34 = a2[1];
    }

    if (v31 != 65)
    {
      memcpy((*a2 + v34), &v38 + v31, 65 - v31);
      v34 = a2[1];
    }

    a2[1] = v34 + 65 - v31;
  }
}

void llvm::APInt::print(llvm::APInt *this, llvm::raw_ostream *a2, char a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = v6;
  v5 = xmmword_1A75D9A70;
  llvm::APInt::toString(this, &v4, 10, a3, 0, 1, 0);
  llvm::raw_ostream::write(a2, v4, v5);
  if (v4 != v6)
  {
    free(v4);
  }
}

void llvm::APInt::tcSet(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  *this = a2;
  if (a3 >= 2)
  {
    bzero(this + 8, 8 * (a3 - 1));
  }
}

uint64_t llvm::APInt::tcAssign(uint64_t this, unint64_t *a2, const unint64_t *a3)
{
  if (a3)
  {
    v3 = 0;
    if (a3 < 4)
    {
      goto LABEL_7;
    }

    if ((this - a2) <= 0x1F)
    {
      goto LABEL_7;
    }

    v3 = a3 & 0xFFFFFFFC;
    v4 = a2 + 2;
    v5 = (this + 16);
    v6 = v3;
    do
    {
      v7 = *v4;
      *(v5 - 1) = *(v4 - 1);
      *v5 = v7;
      v4 += 4;
      v5 += 2;
      v6 -= 4;
    }

    while (v6);
    if (v3 != a3)
    {
LABEL_7:
      v8 = &a2[v3];
      v9 = (this + 8 * v3);
      v10 = a3 - v3;
      do
      {
        v11 = *v8++;
        *v9++ = v11;
        --v10;
      }

      while (v10);
    }
  }

  return this;
}

BOOL llvm::APInt::tcIsZero(llvm::APInt *this, const unint64_t *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*this)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    if (a2 == v3)
    {
      break;
    }
  }

  while (!*(this + v3++));
  return v4 >= a2;
}

uint64_t llvm::APInt::tcLSB(llvm::APInt *this, const unint64_t *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = a2;
  while (1)
  {
    v5 = *this;
    this = (this + 8);
    v4 = v5;
    if (v5)
    {
      break;
    }

    v2 -= 64;
    if (!--v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return __clz(__rbit64(v4)) - v2;
}

uint64_t llvm::APInt::tcMSB(llvm::APInt *this, const unint64_t *a2)
{
  v2 = 64 - (a2 << 6);
  v3 = a2 - 1;
  while (1)
  {
    v4 = *(this + v3);
    if (v4)
    {
      break;
    }

    v2 += 64;
    if (--v3 == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (__clz(v4) - v2) ^ 0x3F;
}

void llvm::APInt::tcExtract(llvm::APInt *this, unint64_t *a2, uint64_t a3, const unint64_t *a4, unsigned int a5)
{
  v5 = a4 + 63;
  v6 = (a4 + 63) >> 6;
  v7 = a5 >> 6;
  if (a4 == 0 || a4 >= 0xFFFFFFC1)
  {
    v8 = a5 & 0x3F;
    goto LABEL_12;
  }

  if (v5 < 0x200 || (v9 = 8 * v7 + a3, this - v9 < 0x20))
  {
    v10 = 0;
LABEL_6:
    v11 = v6 - v10;
    v12 = 8 * v10;
    v13 = (this + 8 * v10);
    v14 = (a3 + v12 + 8 * v7);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v11;
    }

    while (v11);
    goto LABEL_8;
  }

  v10 = v6 & 0x3FFFFFC;
  v23 = (v9 + 16);
  v24 = (this + 16);
  v25 = v10;
  do
  {
    v26 = *v23;
    *(v24 - 1) = *(v23 - 1);
    *v24 = v26;
    v23 += 2;
    v24 += 2;
    v25 -= 4;
  }

  while (v25);
  if (v10 != v6)
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = a5 & 0x3F;
  if ((a5 & 0x3F) != 0)
  {
    v16 = *this >> v8;
    *this = v16;
    if (v6 != 1)
    {
      v17 = (this + 8);
      for (i = 1; i != v6; ++i)
      {
        *(v17 - 1) = (*(this + i) << (64 - v8)) | v16;
        v16 = *(this + i) >> v8;
        *v17++ = v16;
      }
    }
  }

LABEL_12:
  v19 = (v5 & 0xFFFFFFC0) - v8;
  if (v19 >= a4)
  {
    if (v19 <= a4 || (a4 & 0x3F) == 0)
    {
      goto LABEL_18;
    }

    v21 = v6 - 1;
    v22 = *(this + (v6 - 1)) & (0xFFFFFFFFFFFFFFFFLL >> -(a4 & 0x3F));
  }

  else
  {
    v20 = (*(a3 + 8 * (v7 + v6)) & (0xFFFFFFFFFFFFFFFFLL >> (v19 - a4))) << v19;
    v21 = v6 - 1;
    v22 = v20 | *(this + (v6 - 1));
  }

  *(this + v21) = v22;
LABEL_18:
  if (v6 < a2)
  {
    bzero(this + ((v5 >> 3) & 0x1FFFFFF8), 8 * (~v6 + a2) + 8);
  }
}

int8x16_t *llvm::APInt::tcNegate(int8x16_t *this, unint64_t *a2)
{
  if (!a2)
  {
    return this;
  }

  if (a2 < 4)
  {
    v2 = 0;
LABEL_7:
    v6 = a2 - v2;
    v7 = &this->i64[v2];
    do
    {
      *v7 = ~*v7;
      ++v7;
      --v6;
    }

    while (v6);
    goto LABEL_9;
  }

  v2 = a2 & 0xFFFFFFFC;
  v3 = this + 1;
  v4 = v2;
  do
  {
    v5 = vmvnq_s8(*v3);
    v3[-1] = vmvnq_s8(v3[-1]);
    *v3 = v5;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  if (v2 != a2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = this->i64[0] + 1;
  this->i64[0] = v8;
  if (a2 != 1 && !v8)
  {
    v9 = this->i64[1];
    this->i64[1] = v9 + 1;
    if (v9 == -1)
    {
      v10 = this + 1;
      v11 = a2 - 2;
      do
      {
        if (!v11)
        {
          break;
        }

        --v11;
        v12 = __CFADD__(v10->i64[0]++, 1);
        v10 = (v10 + 8);
      }

      while (v12);
    }
  }

  return this;
}

llvm::APInt *llvm::APInt::tcFullMultiply(llvm::APInt *this, unint64_t *a2, unint64_t *a3, const unint64_t *a4, const unint64_t *a5)
{
  v6 = this;
  do
  {
    v7 = a5;
    a5 = a4;
    v8 = a3;
    a3 = a2;
    a2 = v8;
    a4 = v7;
  }

  while (a5 > v7);
  if (a5)
  {
    v9 = 0;
    v10 = a5;
    do
    {
      this = llvm::APInt::tcMultiplyPart(v6, v8, a3[v9], 0, v7, v7 + 1, v9 != 0);
      ++v9;
      v6 = (v6 + 8);
    }

    while (v10 != v9);
  }

  return this;
}

void *llvm::StoreIntToMemory(llvm ***this, const llvm::APInt *__dst, size_t __n)
{
  if (*(this + 2) >= 0x41u)
  {
    v4 = *this;
  }

  else
  {
    v4 = this;
  }

  return memcpy(__dst, v4, __n);
}

void *llvm::LoadIntFromMemory(llvm *this, llvm::APInt *a2, size_t __n)
{
  if (*(this + 2) >= 0x41u)
  {
    this = *this;
  }

  return memcpy(this, a2, __n);
}

void llvm::APIntOps::mulhs(void *__return_ptr a1@<X8>, llvm::APIntOps *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v6 = 2 * *(this + 2);
  llvm::APInt::sext(&v15, this, v6);
  llvm::APInt::sext(&v13, a3, v6);
  v7 = v16;
  if (v16 > 0x40)
  {
    operator new[]();
  }

  v8 = v15;
  v9 = v13;
  v12 = v16;
  v10 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
  if (!v16)
  {
    v10 = 0;
  }

  v11 = (v13 * v15) & v10;
  llvm::APInt::extractBits(&v11, *(this + 2), *(this + 2), a1);
  if (v14 >= 0x41 && v9)
  {
    MEMORY[0x1AC55A040](v9, 0x1000C8000313F17);
  }

  if (v7 >= 0x41 && v8)
  {

    JUMPOUT(0x1AC55A040);
  }
}

void llvm::APIntOps::mulhu(uint64_t *__return_ptr a1@<X8>, llvm::APIntOps *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v4 = *(this + 2);
  if (2 * v4 >= 0x41)
  {
    if (v4)
    {
      operator new[]();
    }

    operator new[]();
  }

  v5 = *this;
  v6 = 0xFFFFFFFFFFFFFFFFLL >> ((-2 * v4) & 0x3E);
  if (!(2 * v4))
  {
    v6 = 0;
  }

  v7 = *a3 & v6;
  v9 = 2 * v4;
  v8 = (v7 * (v5 & v6)) & v6;
  llvm::APInt::extractBits(&v8, v4, v4, a1);
}

void OUTLINED_FUNCTION_1_42()
{

  operator new[]();
}

void *OUTLINED_FUNCTION_7_18(void *a1, void *a2, uint64_t a3, unsigned int *a4)
{
  *a2 = a1;
  *a1 = a3;
  v5 = a1 + 1;
  v6 = 8 * ((*a4 + 63) >> 6) - 8;

  return memset(v5, 255, v6);
}

void *OUTLINED_FUNCTION_9_16@<X0>(int a1@<W8>)
{

  return memcpy(v1, v2, (8 * a1));
}

void OUTLINED_FUNCTION_13_15(void *a1)
{

  bzero(a1, v1 & 0x3FFFFFF8);
}

void llvm::decodeBase64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *(a3 + 8) = *a3;
  if (!a2)
  {
    goto LABEL_79;
  }

  if ((a2 & 3) != 0)
  {
    std::generic_category();
    operator new();
  }

  v42 = a4;
  v6 = 0;
  v7 = a2 - 2;
  v48 = a1 + 1;
  v49 = a2 - 2;
  v43 = a2 - 5;
  v44 = a2 - 4;
  v45 = a2 - 3;
  v47 = a1;
  do
  {
    while (1)
    {
      __p = v6;
      v50 = *(a1 + v6);
      if (v50 > 0x7Au)
      {
LABEL_80:
        v41 = std::generic_category();
        llvm::createStringError<char,unsigned long long>(92, v41, "Invalid Base64 character %#2.2x at index %llu", &v50, &__p);
      }

      v8 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
      if (v50 != 61 || v8 == 64)
      {
        if (v8 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 < v7 || v7 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      __p = (v6 + 1);
      v50 = *(a1 + v6 + 1);
      if (v50 > 0x7Au)
      {
        goto LABEL_80;
      }

      v9 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
      if (v50 != 61 || v9 == 64)
      {
        if (v9 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 + 1 < v7 || v45 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      __p = (v6 + 2);
      v50 = *(a1 + v6 + 2);
      if (v50 > 0x7Au)
      {
        goto LABEL_80;
      }

      v10 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
      if (v50 != 61 || v10 == 64)
      {
        if (v10 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 + 2 < v7 || v44 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      __p = (v6 + 3);
      v50 = *(a1 + v6 + 3);
      if (v50 > 0x7Au)
      {
        goto LABEL_80;
      }

      v11 = decodeBase64Byte(unsigned char)::DecodeTable[v50];
      if (v50 != 61 || v11 == 64)
      {
        if (v11 == 64)
        {
          goto LABEL_80;
        }
      }

      else if (v6 + 3 < v7 || v43 == v6 && *(v48 + v7) != 61)
      {
        goto LABEL_80;
      }

      v12 = (4 * v8) | (v9 >> 4) & 3;
      v13 = *(a3 + 16);
      if (v4 >= v13)
      {
        break;
      }

      *v4 = v12;
      v14 = v4 + 1;
      *(a3 + 8) = v14;
      v15 = (16 * v9) | (v10 >> 2) & 0xF;
      v16 = *(a3 + 16);
      if (v14 < v16)
      {
        goto LABEL_40;
      }

LABEL_53:
      v27 = *a3;
      v28 = &v14[-*a3];
      v29 = (v28 + 1);
      if ((v28 + 1) < 0)
      {
        goto LABEL_81;
      }

      v30 = v16 - v27;
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      if (v30 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        operator new();
      }

      v32 = &v14[-*a3];
      *v28 = v15;
      v17 = v28 + 1;
      memcpy(0, v27, v32);
      *a3 = 0;
      *(a3 + 8) = v28 + 1;
      *(a3 + 16) = 0;
      if (v27)
      {
        operator delete(v27);
      }

      v18 = a2;
      a1 = v47;
      v7 = v49;
      *(a3 + 8) = v17;
      v19 = v11 & 0x3F | (v10 << 6);
      v20 = *(a3 + 16);
      if (v17 >= v20)
      {
        goto LABEL_64;
      }

LABEL_5:
      *v17 = v19;
      v4 = v17 + 1;
      *(a3 + 8) = v4;
      v6 += 4;
      if (v6 >= v18)
      {
        goto LABEL_75;
      }
    }

    v21 = *a3;
    v22 = &v4[-*a3];
    v23 = (v22 + 1);
    if ((v22 + 1) < 0)
    {
      goto LABEL_81;
    }

    v24 = v13 - v21;
    if (2 * v24 > v23)
    {
      v23 = 2 * v24;
    }

    if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      operator new();
    }

    v26 = &v4[-*a3];
    *v22 = v12;
    v14 = v22 + 1;
    memcpy(0, v21, v26);
    *a3 = 0;
    *(a3 + 8) = v22 + 1;
    *(a3 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    v7 = v49;
    *(a3 + 8) = v14;
    v15 = (16 * v9) | (v10 >> 2) & 0xF;
    v16 = *(a3 + 16);
    if (v14 >= v16)
    {
      goto LABEL_53;
    }

LABEL_40:
    *v14 = v15;
    v17 = v14 + 1;
    v18 = a2;
    a1 = v47;
    *(a3 + 8) = v17;
    v19 = v11 & 0x3F | (v10 << 6);
    v20 = *(a3 + 16);
    if (v17 < v20)
    {
      goto LABEL_5;
    }

LABEL_64:
    v33 = *a3;
    v34 = &v17[-*a3];
    v35 = (v34 + 1);
    if ((v34 + 1) < 0)
    {
LABEL_81:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v36 = v18;
    v37 = a1;
    v38 = v20 - v33;
    if (2 * v38 > v35)
    {
      v35 = 2 * v38;
    }

    if (v38 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v35;
    }

    if (v39)
    {
      operator new();
    }

    v40 = &v17[-*a3];
    *v34 = v19;
    v4 = v34 + 1;
    memcpy(0, v33, v40);
    *a3 = 0;
    *(a3 + 8) = v34 + 1;
    *(a3 + 16) = 0;
    if (v33)
    {
      operator delete(v33);
    }

    a1 = v37;
    v18 = v36;
    v7 = v49;
    *(a3 + 8) = v4;
    v6 += 4;
  }

  while (v6 < v36);
LABEL_75:
  if (*(a1 + v18 - 1) == 61)
  {
    *(a3 + 8) = v4 - 1;
    if (*(a1 + v7) == 61)
    {
      *(a3 + 8) = v4 - 2;
    }
  }

  a4 = v42;
LABEL_79:
  *a4 = 0;
}

void llvm::createStringError<char,unsigned long long>(uint64_t a2, const std::error_category *a3, const char *a1, char *a4, uint64_t *a5, ...)
{
  memset(__p, 0, sizeof(__p));
  v13 = 0;
  v17 = 0;
  v18 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = &unk_1F1A362A8;
  v19 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
  v9[0] = &unk_1F1A35850;
  v9[1] = a1;
  v10 = *a4;
  v11 = *a5;
  llvm::raw_ostream::operator<<(&v12, v9);
  llvm::raw_ostream::~raw_ostream(&v12);
  operator new();
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v16[0] = 0;
  AsUnsignedInteger = llvm::getAsUnsignedInteger(a5, a6, 0, v16);
  if ((AsUnsignedInteger & 1) != 0 || HIDWORD(v16[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16[0] = v14;
    v16[2] = "' value invalid for uint argument!";
    v17 = 770;
    v13 = llvm::errs(AsUnsignedInteger);
    llvm::cl::Option::error(a1, v16, 0, 0, v13);
    return 1;
  }

  else
  {
    LODWORD(v14[0]) = v16[0];
    *(a1 + 128) = v16[0];
    *(a1 + 12) = a2;
    v11 = *(a1 + 184);
    if (v11)
    {
      (*(*v11 + 48))(v11, v14);
      return 0;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::getValueExpectedFlagDefault();
    }
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

uint64_t llvm::cl::basic_parser_impl::getOptionWidth(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 == 1)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3 + 7;
  }

  (*(*a1 + 16))(a1);
  if (v5)
  {
    v6 = 6;
    if ((*(a2 + 10) & 0x400) == 0)
    {
      v6 = 3;
    }

    v7 = *(a2 + 56);
    if (!v7)
    {
      v7 = v5;
    }

    v4 += v6 + v7;
  }

  return v4;
}

void *llvm::cl::basic_parser_impl::printOptionInfo(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, uint64_t a3)
{
  v3 = a3;
  v6 = llvm::outs(this);
  v47 = *(a2 + 1);
  v48 = 2;
  v7 = (*(*this + 16))(this);
  if (!v8)
  {
    goto LABEL_48;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(a2 + 5);
  if ((v11 & 0x400) != 0)
  {
    v16 = llvm::outs(v7);
    v17 = v16[4];
    if (v16[3] - v17 > 1uLL)
    {
      *v17 = 15392;
      v18 = (v16[4] + 2);
      v16[4] = v18;
    }

    else
    {
      v16 = llvm::raw_ostream::write(v16, " <", 2uLL);
      v18 = v16[4];
    }

    v19 = *(a2 + 7);
    if (v19)
    {
      v20 = *(a2 + 6);
    }

    else
    {
      v20 = v9;
    }

    if (v19)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= v16[3] - v18)
    {
      v23 = v16;
      memcpy(v18, v20, v10);
      v21 = v23;
      v22 = (v23[4] + v10);
      v23[4] = v22;
      if (v23[3] - v22 > 3uLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = llvm::raw_ostream::write(v16, v20, v10);
      v22 = v21[4];
      if (v21[3] - v22 > 3uLL)
      {
LABEL_17:
        *v22 = 774778430;
        v21[4] += 4;
        goto LABEL_48;
      }
    }

    llvm::raw_ostream::write(v21, ">...", 4uLL);
    goto LABEL_48;
  }

  v12 = (v11 >> 3) & 3;
  if (!v12)
  {
    v24 = (*(*a2 + 8))(a2);
    v25 = v24;
    v13 = llvm::outs(v24);
    if (v25 == 1)
    {
      goto LABEL_5;
    }

LABEL_21:
    if (*(a2 + 3) == 1)
    {
      v26 = " <";
    }

    else
    {
      v26 = "=<";
    }

    v27 = *(v13 + 4);
    if (*(v13 + 3) - v27 > 1uLL)
    {
      *v27 = *v26;
      v28 = (*(v13 + 4) + 2);
      *(v13 + 4) = v28;
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, v26, 2uLL);
      v28 = *(v13 + 4);
    }

    v33 = *(a2 + 7);
    if (v33)
    {
      v34 = *(a2 + 6);
    }

    else
    {
      v34 = v9;
    }

    if (v33)
    {
      v10 = *(a2 + 7);
    }

    if (v10 <= *(v13 + 3) - v28)
    {
      v38 = v13;
      memcpy(v28, v34, v10);
      v35 = v38;
      v36 = (*(v38 + 4) + v10);
      *(v38 + 4) = v36;
      if (v36 >= *(v38 + 3))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v35 = llvm::raw_ostream::write(v13, v34, v10);
      v36 = *(v35 + 4);
      if (v36 >= *(v35 + 3))
      {
LABEL_43:
        llvm::raw_ostream::write(v35, 62);
        goto LABEL_48;
      }
    }

    *(v35 + 4) = v36 + 1;
    *v36 = 62;
    goto LABEL_48;
  }

  v13 = llvm::outs(v7);
  if (v12 != 1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    *(v14 + 2) = 60;
    *v14 = 15707;
    v15 = (*(v13 + 4) + 3);
    *(v13 + 4) = v15;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, "[=<", 3uLL);
    v15 = *(v13 + 4);
  }

  v29 = *(a2 + 7);
  if (v29)
  {
    v30 = *(a2 + 6);
  }

  else
  {
    v30 = v9;
  }

  if (v29)
  {
    v10 = *(a2 + 7);
  }

  if (v10 <= *(v13 + 3) - v15)
  {
    v37 = v13;
    memcpy(v15, v30, v10);
    v31 = v37;
    v32 = (*(v37 + 4) + v10);
    *(v37 + 4) = v32;
    if (*(v37 + 3) - v32 > 1uLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v31 = llvm::raw_ostream::write(v13, v30, v10);
    v32 = v31[4];
    if (v31[3] - v32 > 1uLL)
    {
LABEL_34:
      *v32 = 23870;
      v31[4] += 2;
      goto LABEL_48;
    }
  }

  llvm::raw_ostream::write(v31, ">]", 2uLL);
LABEL_48:
  v40 = *(a2 + 4);
  v39 = *(a2 + 5);
  v41 = *(a2 + 3);
  if (v41 == 1)
  {
    v42 = 7;
  }

  else
  {
    v42 = v41 + 7;
  }

  (*(*this + 16))(this);
  if (v43)
  {
    v44 = 6;
    if ((*(a2 + 5) & 0x400) == 0)
    {
      v44 = 3;
    }

    v45 = *(a2 + 7);
    if (!v45)
    {
      LODWORD(v45) = v43;
    }

    v42 += v44 + v45;
  }

  return llvm::cl::Option::printHelpStr(v40, v39, v3, v42);
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::printOptionValue(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 144) != *(result + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 128);
    v7 = *(result + 144);
    v8 = *(result + 148);
    v6 = &unk_1F1A0CEB0;
    llvm::cl::parser<unsigned int>::printOptionDiff(result, result, v5, &v6, a2);
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

atomic_ullong llvm::cl::Option::addArgument(llvm::cl::Option *this)
{
  if (atomic_load_explicit(qword_1ED440740, memory_order_acquire))
  {
    result = qword_1ED440740[0];
    v6 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
LABEL_3:
      v5[0] = result;
      v5[1] = &v6;
      goto LABEL_8;
    }
  }

  else
  {
    result = qword_1ED440740[0];
    v6 = this;
    if ((*(this + 5) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    v4 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result + 64, (result + 80), v3 + 1, 8);
    result = v4;
    LODWORD(v3) = *(v4 + 72);
  }

  *(*(result + 64) + 8 * v3) = this;
  ++*(result + 72);
LABEL_8:
  *(this + 5) |= 0x4000u;
  return result;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *__src, size_t __len)
{
  memset(&__p, 0, sizeof(__p));
  if (!__src)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_11;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_16;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
    __dst.__r_.__value_.__s.__data_[__len] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_11:
  __p = __dst;
  std::string::operator=((a1 + 128), &__p);
  *(a1 + 12) = a2;
  v9 = *(a1 + 224);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_16:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  (*(*v9 + 48))(v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 192) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

llvm::raw_ostream *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::printOptionValue(llvm::raw_ostream *result, uint64_t a2, char a3)
{
  v3 = a2;
  if ((a3 & 1) != 0 || *(result + 184) != 1)
  {
    goto LABEL_16;
  }

  v4 = *(result + 183);
  if (v4 >= 0)
  {
    v5 = *(result + 183);
  }

  else
  {
    v5 = *(result + 21);
  }

  v6 = *(result + 151);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(result + 17);
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = result + 160) : (v8 = *(result + 20)), v7 >= 0 ? (v9 = result + 128) : (v9 = *(result + 16)), v10 = result, v11 = memcmp(v8, v9, v5), result = v10, v11))
  {
LABEL_16:
    v12 = *(result + 151);
    if (v12 >= 0)
    {
      v13 = result + 128;
    }

    else
    {
      v13 = *(result + 16);
    }

    if (v12 >= 0)
    {
      v14 = *(result + 151);
    }

    else
    {
      v14 = *(result + 17);
    }

    return llvm::cl::parser<std::string>::printOptionDiff(result, result, v13, v14, result + 152, v3);
  }

  return result;
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (a1 + 128);

    std::string::operator=(v4, (a1 + 160));
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=((a1 + 128), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v18 = 0;
  result = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v18;
    *(a1 + 12) = a2;
    v10 = *(a1 + 184);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v18);
      return v9;
    }

    else
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::parser<BOOL>::parse(v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return result;
}

uint64_t llvm::cl::parser<BOOL>::parse(llvm *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v20 = v7;
      v21 = v8;
      v17 = 1283;
      v16[0] = "'";
      v16[2] = a5;
      v16[3] = a6;
      v18[0] = v16;
      v18[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v19 = 770;
      v15 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v18, 0, 0, v15);
      return 1;
    }

    v9 = *a5;
    if (v9 != 48)
    {
      if (v9 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 0;
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::getOptionWidth(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = 7;
  }

  else
  {
    v3 = v2 + 7;
  }

  (*(*(a1 + 152) + 16))();
  if (v4)
  {
    v5 = 6;
    if ((*(a1 + 10) & 0x400) == 0)
    {
      v5 = 3;
    }

    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = v4;
    }

    v3 += v5 + v6;
  }

  return v3;
}

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 145) != 1 || *(result + 144) != *(result + 128))
  {
    v8 = v3;
    v9 = v4;
    v5 = *(result + 128);
    v7 = *(result + 144);
    v6 = &unk_1F1A01F08;
    llvm::cl::parser<BOOL>::printOptionDiff(result, result, v5, &v6, a2);
  }
}

_BYTE *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setDefault(_BYTE *result)
{
  if (result[145] == 1)
  {
    result[128] = result[144];
  }

  else
  {
    result[128] = 0;
  }

  return result;
}

uint64_t llvm::cl::AddLiteralOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!atomic_load_explicit(qword_1ED440740, memory_order_acquire))
  {
  }

  v8[0] = a2;
  v8[1] = a3;
  v7[0] = qword_1ED440740[0];
  v7[1] = a1;
  v7[2] = v8;
}

uint64_t llvm::cl::Option::setArgStr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  if ((*(result + 10) & 0x4000) == 0)
  {
    *(result + 16) = a2;
    *(result + 24) = a3;
    if (a3 != 1)
    {
      return result;
    }

LABEL_7:
    *(v8 + 10) |= 0x1000u;
    return result;
  }

  if (!atomic_load_explicit(qword_1ED440740, memory_order_acquire))
  {
  }

  v11[0] = a2;
  v11[1] = a3;
  v9[0] = qword_1ED440740[0];
  v9[1] = &v10;
  v9[2] = v11;
  v10 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  return result;
}

void *llvm::cl::getGeneralCategory(llvm::cl *this)
{
  if ((atomic_load_explicit(_MergedGlobals_6, memory_order_acquire) & 1) == 0)
  {
    llvm::cl::getGeneralCategory();
  }

  return &unk_1ED4407A0;
}

void anonymous namespace::CommandLineParser::registerSubCommand(uint64_t result, char *a2)
{
  v4 = *(result + 272);
  if (*(result + 280) != v4)
  {
    goto LABEL_2;
  }

  v13 = *(result + 292);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = *(result + 272);
    while (*v15 != a2)
    {
      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (v13 >= *(result + 288))
    {
LABEL_2:
      llvm::SmallPtrSetImplBase::insert_imp_big((result + 272), a2);
      goto LABEL_3;
    }

    *(result + 292) = v13 + 1;
    *(v4 + 8 * v13) = a2;
  }

LABEL_3:
  if (atomic_load_explicit(qword_1ED440770, memory_order_acquire))
  {
    v5 = *(qword_1ED440770[0] + 128);
    v6 = *(qword_1ED440770[0] + 136);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_23:
    v7 = v5;
    v12 = &v5[v6];
    if (v5 == v12)
    {
      return;
    }

    goto LABEL_24;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(qword_1ED440770, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  v5 = *(qword_1ED440770[0] + 128);
  v6 = *(qword_1ED440770[0] + 136);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_5:
  v7 = v5;
  if (*v5)
  {
    v8 = *v5 == -8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    do
    {
      v10 = v7[1];
      ++v7;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == -8;
      }

      else
      {
        v11 = 1;
      }
    }

    while (v11);
  }

  v12 = &v5[v6];
  if (v7 != v12)
  {
LABEL_24:
    v16 = *v7;
    do
    {
      v17 = *(v16 + 8);
      v18 = *(v17 + 10);
      if ((v18 & 7) == 4 || ((v19 = v18 & 0x180, v20 = v18 & 0x800, v19 != 128) ? (v21 = v20 == 0) : (v21 = 0), !v21 || *(v17 + 24)))
      {
      }

      else
      {
      }

      do
      {
        v22 = v7[1];
        ++v7;
        v16 = v22;
        if (v22)
        {
          v23 = v16 == -8;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
    }

    while (v7 != v12);
  }
}

uint64_t ProvideOption(unsigned __int16 *a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, int a6, uint64_t a7, unsigned int *a8)
{
  v16 = a1[7];
  result = (a1[5] >> 3) & 3;
  if (!result)
  {
    result = (*(*a1 + 8))(a1);
    if (result != 3)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (!v16)
    {
      if (a4)
      {
        v34[0] = "does not allow a value! '";
        v34[2] = a4;
        v34[3] = a5;
        v35 = 1283;
        v36[0] = v34;
        v36[2] = "' specified.";
        v21 = 770;
LABEL_40:
        v37 = v21;
        v32 = llvm::errs(result);
        llvm::cl::Option::error(a1, v36, 0, 0, v32);
        return 1;
      }

      goto LABEL_44;
    }

    v19 = "multi-valued option specified with ValueDisallowed modifier!";
LABEL_39:
    v36[0] = v19;
    v21 = 259;
    goto LABEL_40;
  }

  if (result == 3)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (result != 2 || a4)
  {
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  v20 = *a8 + 1;
  if (v20 >= a6 || (~a1[5] & 0x180) == 0)
  {
    v19 = "requires a value!";
    goto LABEL_39;
  }

  *a8 = v20;
  a4 = *(a7 + 8 * v20);
  if (a4)
  {
    result = strlen(*(a7 + 8 * v20));
    a5 = result;
    if (v16)
    {
LABEL_6:
      if (a4)
      {
        result = CommaSeparateAndAddOccurrence(a1, *a8, a2, a3, a4, a5, 0);
        if (result)
        {
          return 1;
        }

        --v16;
        v18 = 1;
        if (!v16)
        {
          return 0;
        }

        goto LABEL_23;
      }

LABEL_22:
      v18 = 0;
LABEL_23:
      v22 = *a8;
      v23 = v22 + 1;
      if (v22 + 1 < a6)
      {
        *a8 = v23;
        v24 = *(a7 + 8 * v23);
        if (v24)
        {
          v25 = strlen(*(a7 + 8 * v23));
        }

        else
        {
          v25 = 0;
        }

        result = CommaSeparateAndAddOccurrence(a1, v23, a2, a3, v24, v25, v18);
        if (result)
        {
          return 1;
        }

        if (v16 == 1)
        {
          return 0;
        }

        v26 = v16 - 2;
        while (1)
        {
          v27 = v26;
          v28 = *a8;
          v29 = v28 + 1;
          if (v28 + 1 >= a6)
          {
            break;
          }

          *a8 = v29;
          v30 = *(a7 + 8 * v29);
          if (v30)
          {
            v31 = strlen(*(a7 + 8 * v29));
          }

          else
          {
            v31 = 0;
          }

          result = CommaSeparateAndAddOccurrence(a1, v29, a2, a3, v30, v31, 1);
          if ((result & 1) == 0)
          {
            v26 = v27 - 1;
            if (v27)
            {
              continue;
            }
          }

          return result;
        }
      }

      v19 = "not enough values!";
      goto LABEL_39;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_22;
    }

    a5 = 0;
    a4 = 0;
  }

LABEL_44:
  v33 = *a8;

  return CommaSeparateAndAddOccurrence(a1, v33, a2, a3, a4, a5, 0);
}

void *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, const char *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return llvm::raw_ostream::write(a1, a2, v3);
}

uint64_t llvm::cl::Option::error(void *a1, llvm::Twine *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *this)
{
  v5 = this;
  if (a3)
  {
    v7 = a4;
    v8 = a3;
    if (a4)
    {
LABEL_3:
      if (!atomic_load_explicit(qword_1ED440740, memory_order_acquire))
      {
      }

      v9 = *(qword_1ED440740[0] + 23);
      if (v9 >= 0)
      {
        v10 = qword_1ED440740[0];
      }

      else
      {
        v10 = *qword_1ED440740[0];
      }

      if (v9 >= 0)
      {
        v11 = *(qword_1ED440740[0] + 23);
      }

      else
      {
        v11 = *(qword_1ED440740[0] + 8);
      }

      v12 = llvm::raw_ostream::write(v5, v10, v11);
      v13 = *(v12 + 4);
      if ((*(v12 + 3) - v13) > 9)
      {
        *(v13 + 8) = 8293;
        *v13 = *": for the ";
        *(v12 + 4) += 10;
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, ": for the ", 0xAuLL);
      }

      v21[0] = v8;
      v21[1] = v7;
      v21[2] = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = a1[2];
    v7 = a1[3];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v14 = a1[4];
  v15 = a1[5];
  v16 = *(this + 4);
  if (v15 <= *(this + 3) - v16)
  {
    if (v15)
    {
      v20 = v15;
      memcpy(v16, v14, v15);
      *(v5 + 4) += v20;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v14, v15);
  }

LABEL_18:
  v17 = *(v5 + 4);
  if ((*(v5 + 3) - v17) > 8)
  {
    *(v17 + 8) = 32;
    *v17 = *" option: ";
    *(v5 + 4) += 9;
    llvm::Twine::print(a2, v5);
    v18 = *(v5 + 4);
    if (*(v5 + 3) != v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(v5, " option: ", 9uLL);
    llvm::Twine::print(a2, v5);
    v18 = *(v5 + 4);
    if (*(v5 + 3) != v18)
    {
LABEL_20:
      *v18 = 10;
      ++*(v5 + 4);
      return 1;
    }
  }

  llvm::raw_ostream::write(v5, "\n", 1uLL);
  return 1;
}