void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::AMDGPU::HSAMD::Kernel::Metadata>,llvm::AMDGPU::HSAMD::Kernel::Metadata*>(uint64_t a1, llvm::AMDGPU::HSAMD::Kernel::Metadata *a2, llvm::AMDGPU::HSAMD::Kernel::Metadata *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = *(v6 + 3);
      *(a4 + 64) = *(v6 + 8);
      *(a4 + 48) = v9;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 6) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 11);
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      *(v6 + 11) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = *(v6 + 14);
      *(v6 + 12) = 0;
      *(v6 + 13) = 0;
      *(v6 + 14) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 17);
      *(v6 + 15) = 0;
      *(v6 + 16) = 0;
      *(v6 + 17) = 0;
      v10 = *(v6 + 9);
      *(a4 + 160) = *(v6 + 20);
      *(a4 + 144) = v10;
      *(v6 + 19) = 0;
      *(v6 + 20) = 0;
      *(v6 + 18) = 0;
      v11 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 23);
      *(a4 + 168) = v11;
      *(v6 + 22) = 0;
      *(v6 + 23) = 0;
      *(v6 + 21) = 0;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 192) = *(v6 + 12);
      *(a4 + 208) = *(v6 + 26);
      *(v6 + 24) = 0;
      *(v6 + 25) = 0;
      *(v6 + 26) = 0;
      v12 = *(v6 + 216);
      v13 = *(v6 + 31);
      *(a4 + 232) = *(v6 + 232);
      *(a4 + 216) = v12;
      *(a4 + 248) = v13;
      *(a4 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 272) = 0;
      *(a4 + 256) = *(v6 + 16);
      *(a4 + 272) = *(v6 + 34);
      *(v6 + 32) = 0;
      *(v6 + 33) = 0;
      *(v6 + 34) = 0;
      *(a4 + 280) = *(v6 + 35);
      v6 = (v6 + 288);
      a4 += 288;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      llvm::AMDGPU::HSAMD::Kernel::Metadata::~Metadata(v5);
      v5 = (v14 + 288);
    }
  }
}

void llvm::AMDGPU::HSAMD::Kernel::Metadata::~Metadata(llvm::AMDGPU::HSAMD::Kernel::Metadata *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    v4 = *(this + 25);
    v5 = *(this + 24);
    if (v4 == v3)
    {
LABEL_13:
      *(this + 25) = v3;
      operator delete(v5);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 7));
        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
LABEL_11:
          operator delete(*v6);
        }
      }

      else
      {
        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          goto LABEL_11;
        }
      }

      v4 = v6;
      if (v6 == v3)
      {
        v5 = *(this + 24);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
    if ((*(this + 167) & 0x80000000) == 0)
    {
LABEL_16:
      v7 = *(this + 15);
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*(this + 167) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*(this + 18));
  v7 = *(this + 15);
  if (v7)
  {
LABEL_17:
    *(this + 16) = v7;
    operator delete(v7);
  }

LABEL_18:
  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_24:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_31:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_31;
  }
}

llvm::raw_ostream *llvm::FixedPointSemantics::print(llvm::FixedPointSemantics *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 5)
  {
    *(v4 + 4) = 15720;
    *v4 = 1952737655;
    *(a2 + 4) += 6;
    v6 = llvm::raw_ostream::operator<<(a2, *this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
LABEL_3:
      *v7 = 8236;
      *(v6 + 4) += 2;
      v8 = *this;
      v9 = (8 * *this) >> 19;
      if (v9 > 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(a2, "width=", 6uLL);
    v6 = llvm::raw_ostream::operator<<(v5, *this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
      goto LABEL_3;
    }
  }

  llvm::raw_ostream::write(v6, ", ", 2uLL);
  v8 = *this;
  v9 = (8 * *this) >> 19;
  if (v9 > 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v8 >= -v9)
  {
    v10 = *(v2 + 4);
    if ((*(v2 + 3) - v10) > 5)
    {
      *(v10 + 4) = 15717;
      *v10 = 1818321779;
      *(v2 + 4) += 6;
      v11 = v2;
    }

    else
    {
      v11 = llvm::raw_ostream::write(v2, "scale=", 6uLL);
    }

    v12 = llvm::raw_ostream::operator<<(v11, -((8 * *this) >> 19));
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 1uLL)
    {
      *v13 = 8236;
      *(v12 + 4) += 2;
      v14 = *(v2 + 4);
      if (*(v2 + 3) - v14 <= 3uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

LABEL_13:
  v14 = *(v2 + 4);
  if (*(v2 + 3) - v14 <= 3uLL)
  {
LABEL_14:
    v15 = llvm::raw_ostream::write(v2, "msb=", 4uLL);
    goto LABEL_17;
  }

LABEL_16:
  *v14 = 1029862253;
  *(v2 + 4) += 4;
  v15 = v2;
LABEL_17:
  v16 = llvm::raw_ostream::operator<<(v15, ((8 * *this) >> 19) + *this - 1);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
    v18 = *(v2 + 4);
    if (*(v2 + 3) - v18 > 3uLL)
    {
      goto LABEL_19;
    }
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
    v18 = *(v2 + 4);
    if (*(v2 + 3) - v18 > 3uLL)
    {
LABEL_19:
      *v18 = 1029862252;
      *(v2 + 4) += 4;
      v19 = v2;
      goto LABEL_22;
    }
  }

  v19 = llvm::raw_ostream::write(v2, "lsb=", 4uLL);
LABEL_22:
  v20 = llvm::raw_ostream::operator<<(v19, (8 * *this) >> 19);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 1uLL)
  {
    *v21 = 8236;
    *(v20 + 4) += 2;
    v22 = *(v2 + 4);
    if ((*(v2 + 3) - v22) > 8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    llvm::raw_ostream::write(v20, ", ", 2uLL);
    v22 = *(v2 + 4);
    if ((*(v2 + 3) - v22) > 8)
    {
LABEL_24:
      *(v22 + 8) = 61;
      *v22 = *"IsSigned=";
      *(v2 + 4) += 9;
      v23 = v2;
      goto LABEL_27;
    }
  }

  v23 = llvm::raw_ostream::write(v2, "IsSigned=", 9uLL);
LABEL_27:
  v24 = llvm::raw_ostream::operator<<(v23, (*this >> 29) & 1);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 1uLL)
  {
    *v25 = 8236;
    *(v24 + 4) += 2;
    v26 = *(v2 + 4);
    if ((*(v2 + 3) - v26) > 0x12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
    v26 = *(v2 + 4);
    if ((*(v2 + 3) - v26) > 0x12)
    {
LABEL_29:
      *(v26 + 15) = 1030188649;
      *v26 = *"HasUnsignedPadding=";
      *(v2 + 4) += 19;
      v27 = v2;
      goto LABEL_32;
    }
  }

  v27 = llvm::raw_ostream::write(v2, "HasUnsignedPadding=", 0x13uLL);
LABEL_32:
  v28 = llvm::raw_ostream::operator<<(v27, *this >> 31);
  v29 = *(v28 + 4);
  if (*(v28 + 3) - v29 > 1uLL)
  {
    *v29 = 8236;
    *(v28 + 4) += 2;
    v30 = *(v2 + 4);
    if ((*(v2 + 3) - v30) > 0xB)
    {
      goto LABEL_34;
    }
  }

  else
  {
    llvm::raw_ostream::write(v28, ", ", 2uLL);
    v30 = *(v2 + 4);
    if ((*(v2 + 3) - v30) > 0xB)
    {
LABEL_34:
      *(v30 + 8) = 1029989748;
      *v30 = *"IsSaturated=";
      *(v2 + 4) += 12;
      goto LABEL_37;
    }
  }

  v2 = llvm::raw_ostream::write(v2, "IsSaturated=", 0xCuLL);
LABEL_37:
  v31 = (*this >> 30) & 1;

  return llvm::raw_ostream::operator<<(v2, v31);
}

void llvm::APFixedPoint::convert(llvm::APInt *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = *(a1 + 2);
  if (v42 > 0x40)
  {
    llvm::APInt::initSlowCase(&v41, a1);
  }

  v41 = *a1;
  v7 = *(a1 + 12);
  v43 = *(a1 + 12);
  v8 = ((8 * *(a1 + 4)) >> 19) - ((8 * *a2) >> 19);
  if (a3)
  {
    *a3 = 0;
  }

  if (v8 < 1)
  {
    v12 = -v8;
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_11:
    llvm::APInt::relativeAShr(&v44, &v41, v12);
    v13 = 0;
    v14 = v45;
    v15 = v44;
    if (v42 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v7)
  {
    llvm::APInt::zext(&v46, &v41, v42 + v8);
    v9 = v47;
    v10 = v43;
    v11 = v46;
    if (v42 < 0x41)
    {
      goto LABEL_16;
    }
  }

  else
  {
    llvm::APInt::sext(&v46, &v41, v42 + v8);
    v9 = v47;
    v10 = v43;
    v11 = v46;
    if (v42 < 0x41)
    {
      goto LABEL_16;
    }
  }

  if (v41)
  {
    MEMORY[0x259C63150](v41, 0x1000C8000313F17);
  }

LABEL_16:
  v41 = v11;
  v42 = v9;
  v12 = -v8;
  v43 = v10;
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  llvm::APInt::relativeLShr(&v46, &v41, v12);
  v13 = 1;
  v14 = v47;
  v15 = v46;
  if (v42 < 0x41)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v41)
  {
    MEMORY[0x259C63150](v41, 0x1000C8000313F17);
  }

LABEL_20:
  v41 = v15;
  v42 = v14;
  v43 = v13;
  if (v14 >= ((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) & ~((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) >> 31)) - ((8 * *a2) >> 19))
  {
    v16 = ((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) & ~((((8 * *a2) >> 19) + *a2 - ((*a2 & 0xA0000000) != 0)) >> 31)) - ((8 * *a2) >> 19);
  }

  else
  {
    v16 = v14;
  }

  v40 = v14;
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v39, 0, 0);
  }

  v39 = 0;
  if (v14 != v16)
  {
    if (v16 > 0x3F)
    {
      llvm::APInt::setBitsSlowCase(&v39, v16, v14);
      v17 = v42;
      v36 = v42;
      if (v42 < 0x41)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v39 |= 0xFFFFFFFFFFFFFFFFLL >> ((v16 | 0x40) - v14) << v16;
      v17 = v42;
      v36 = v42;
      if (v42 < 0x41)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    llvm::APInt::initSlowCase(&v35, &v41);
  }

  v17 = v42;
  v36 = v42;
  if (v42 >= 0x41)
  {
    goto LABEL_32;
  }

LABEL_26:
  v18 = (v41 & v39);
  v35 = v41 & v39;
  v38 = v17;
  v37 = v41 & v39;
  v36 = 0;
  if (v18 == v39 || !v18)
  {
    goto LABEL_54;
  }

  if ((*(a2 + 3) & 0x40) == 0)
  {
    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_54;
  }

  if (v43 == 1)
  {
    v19 = v40;
  }

  else
  {
    v19 = v40;
    if ((v41 >> (v42 - 1)))
    {
      v34 = v40;
      if (v40 > 0x40)
      {
        llvm::APInt::initSlowCase(&v33, &v39);
      }

      v20 = 0;
      v33 = v39;
      goto LABEL_48;
    }
  }

  v32 = v19;
  if (v19 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v31, &v39);
  }

  v21 = 0xFFFFFFFFFFFFFFFFLL >> -v19;
  if (!v19)
  {
    v21 = 0;
  }

  v31 = v21 & ~v39;
  v34 = v19;
  v33 = v31;
  v20 = 1;
  v32 = 0;
LABEL_48:
  v41 = v33;
  v42 = v34;
  v34 = 0;
  if (v32 > 0x40)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

LABEL_54:
  v23 = v43;
  if ((*a2 & 0x20000000) == 0 && (v43 & 1) == 0)
  {
    v24 = v42;
    v25 = (v41 + 8 * ((v42 - 1) >> 6));
    if (v42 < 0x41)
    {
      v25 = &v41;
    }

    if (((*v25 >> (v42 - 1)) & 1) == 0)
    {
      goto LABEL_62;
    }

    if ((*a2 & 0x40000000) == 0)
    {
      if (a3)
      {
        *a3 = 1;
LABEL_65:
        v26 = *a2;
        goto LABEL_70;
      }

LABEL_62:
      v26 = *a2;
      goto LABEL_70;
    }

    if (v42 <= 0x40)
    {
      v41 = 0;
      goto LABEL_65;
    }

    *v41 = 0;
    bzero((v41 + 8), (((v24 + 63) >> 3) - 8) & 0xFFFFFFF8);
    v23 = v43;
  }

  v26 = *a2;
  if (v23)
  {
    llvm::APInt::zextOrTrunc(&v46, &v41, v26);
    v27 = v47;
    v28 = v46;
    if (v42 < 0x41)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

LABEL_70:
  llvm::APInt::sextOrTrunc(&v44, &v41, v26);
  v27 = v45;
  v28 = v44;
  if (v42 < 0x41)
  {
    goto LABEL_73;
  }

LABEL_71:
  if (v41)
  {
    MEMORY[0x259C63150](v41, 0x1000C8000313F17);
  }

LABEL_73:
  v41 = v28;
  v42 = v27;
  v29 = *a2;
  v30 = *a2 & 0x20000000;
  v43 = v30 == 0;
  v47 = v27;
  if (v27 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v46, &v41);
  }

  *(a4 + 8) = v27;
  *a4 = v28;
  *(a4 + 12) = v30 == 0;
  *(a4 + 16) = v29;
  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  if (v40 >= 0x41 && v39)
  {
    MEMORY[0x259C63150](v39, 0x1000C8000313F17);
  }

  if (v42 >= 0x41)
  {
    if (v41)
    {
      MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }
}

uint64_t llvm::APFixedPoint::compare(llvm::APInt *a1, llvm::APInt *a2)
{
  v4 = *(a1 + 2);
  v49 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, a1);
  }

  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = (v6 & 0x20000000) == 0;
  v46 = v4;
  v45 = v5;
  v47 = v7;
  v8 = *(a2 + 2);
  v49 = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, a2);
  }

  v9 = *a2;
  v10 = *(a2 + 4);
  v37 = v10 & 0x20000000;
  v43 = v8;
  v42 = v9;
  v44 = (v10 & 0x20000000) == 0;
  v11 = *(a1 + 12);
  v12 = (8 * v6) >> 19;
  v13 = (8 * v10) >> 19;
  if (v13 >= v12)
  {
    v14 = (8 * v6) >> 19;
  }

  else
  {
    v14 = (8 * v10) >> 19;
  }

  v15 = v12 + v6 - 1;
  if (v15 <= v13 + v10 - 1)
  {
    v15 = v13 + v10 - 1;
  }

  v16 = v15 - v14;
  if (v7)
  {
    llvm::APInt::zextOrTrunc(&v48, &v45, v16 + 1);
  }

  else
  {
    llvm::APInt::sextOrTrunc(&v48, &v45, v16 + 1);
  }

  v17 = v49;
  v18 = v47;
  v19 = v48;
  if (v46 >= 0x41 && v45)
  {
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

  v45 = v19;
  v46 = v17;
  v47 = v18;
  if (v44)
  {
    llvm::APInt::zextOrTrunc(&v48, &v42, v16 + 1);
    v20 = v49;
    v21 = v44;
    v22 = v48;
    if (v43 < 0x41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::APInt::sextOrTrunc(&v48, &v42, v16 + 1);
    v20 = v49;
    v21 = v44;
    v22 = v48;
    if (v43 < 0x41)
    {
      goto LABEL_23;
    }
  }

  if (v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
  }

LABEL_23:
  v42 = v22;
  v43 = v20;
  v44 = v21;
  v23 = ((8 * *(a1 + 4)) >> 19) - v14;
  v41 = v46;
  if (v46 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v40, &v45);
  }

  v24 = v45 << v23;
  if (v46 == v23)
  {
    v24 = 0;
  }

  if (v46)
  {
    v25 = 0xFFFFFFFFFFFFFFFFLL >> -v46;
  }

  else
  {
    v25 = 0;
  }

  v40 = v25 & v24;
  v45 = v25 & v24;
  v46 = v41;
  v41 = 0;
  v26 = ((8 * *(a2 + 4)) >> 19) - v14;
  v39 = v43;
  if (v43 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v38, &v42);
  }

  v27 = v42 << v26;
  if (v43 == v26)
  {
    v27 = 0;
  }

  if (v43)
  {
    v28 = 0xFFFFFFFFFFFFFFFFLL >> -v43;
  }

  else
  {
    v28 = 0;
  }

  v38 = (v28 & v27);
  v29 = v10 & 0x20000000;
  v42 = v38;
  v30 = v39;
  v43 = v39;
  v39 = 0;
  if ((v11 & 1) != 0 || !v29)
  {
    if (!v11 || v29)
    {
      if ((v11 | (v37 >> 29)))
      {
        v33 = &v38[8 * ((v30 - 1) >> 6)];
        if (v30 < 0x41)
        {
          v33 = &v42;
        }

        if ((*v33 >> (v30 - 1)))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v34 = v46 - 1;
        v35 = &v45;
        if (v46 >= 0x41)
        {
          v35 = (v45 + 8 * (v34 >> 6));
        }

        if ((*v35 >> v34))
        {
          goto LABEL_56;
        }
      }
    }

    v31 = llvm::APInt::compare(&v45, &v42);
    if (v31 <= 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v31 = llvm::APInt::compareSigned(&v45, &v42);
    if (v31 <= 0)
    {
LABEL_44:
      if ((v31 & 0x80000000) == 0)
      {
        v32 = 0;
        if (v30 < 0x41)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

LABEL_56:
      v32 = 0xFFFFFFFFLL;
      if (v30 < 0x41)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }
  }

LABEL_51:
  v32 = 1;
  if (v30 < 0x41)
  {
    goto LABEL_59;
  }

LABEL_57:
  if (v38)
  {
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

LABEL_59:
  if (v46 >= 0x41 && v45)
  {
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
  }

  return v32;
}

int *llvm::APFixedPoint::getMax@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *result;
  v14 = v4;
  if ((v3 & 0x20000000) != 0)
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v13, -1, 1);
    }

    v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v4)
    {
      v6 = 0;
    }

    v13 = (v6 & ~(1 << (v4 - 1)));
    v4 = v14;
    v11 = v14;
    v5 = v13;
    v10 = v13;
    v12 = 0;
  }

  else
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v13, -1, 1);
    }

    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v4)
    {
      v5 = 0;
    }

    v11 = v4;
    v10 = v5;
    v12 = 1;
    if (v3 < 0)
    {
      if (v4 == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = (v5 >> 1);
      }

      v5 = v9;
      v10 = v9;
      v11 = v4;
      v14 = v4;
      goto LABEL_15;
    }
  }

  v14 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v13, &v10);
  }

LABEL_15:
  v7 = *result;
  v8 = (*result & 0x20000000) == 0;
  *(a2 + 8) = v4;
  *a2 = v5;
  *(a2 + 12) = v8;
  *(a2 + 16) = v7;
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

int *llvm::APFixedPoint::getMin@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *result;
  v12 = v4;
  if ((v3 & 0x20000000) != 0)
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v11, 0, 0);
    }

    v11 = (1 << (v4 - 1));
    v4 = v12;
    v5 = v11;
    v9 = v12;
    v8 = v11;
    v10 = (v3 & 0x20000000) == 0;
    if (v12 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v11, &v8);
    }
  }

  else
  {
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(&v11, 0, 0);
    }

    v5 = 0;
    v9 = v4;
    v8 = 0;
    v10 = 1;
  }

  v6 = *result;
  v7 = (*result & 0x20000000) == 0;
  *(a2 + 8) = v4;
  *a2 = v5;
  *(a2 + 12) = v7;
  *(a2 + 16) = v6;
  return result;
}

int *llvm::APFixedPoint::getEpsilon@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v6 = *result;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, 0, 0);
  }

  v7 = (v2 & 0x20000000) == 0;
  v5 = 1;
  v8 = v6;
  v3 = *result;
  v4 = (*result & 0x20000000) == 0;
  *(a2 + 8) = v6;
  *a2 = 1;
  *(a2 + 12) = v4;
  *(a2 + 16) = v3;
  return result;
}

BOOL llvm::FixedPointSemantics::fitsInFloatSemantics(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  Max = llvm::APFixedPoint::getMax(a1, &v24);
  v14 = v25;
  if (v25 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v13, &v24);
  }

  v5 = v26;
  v20 = v25;
  v19 = v24;
  v21 = (v26 & 0x20000000) == 0;
  v8 = llvm::APFloatBase::PPCDoubleDouble(Max);
  if (v8 == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v25, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v25, a2, v6, v7);
  v9 = (v5 >> 29) & 1;
  if (v8 == v25)
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt(&v25, &v19, v9);
  }

  if ((llvm::detail::IEEEFloat::convertFromAPInt(&v25, &v19, v9, 4) & 4) != 0)
  {
    v10 = 0;
  }

  else if ((*(a1 + 3) & 0x20) != 0)
  {
    llvm::APFixedPoint::getMin(a1, &v13);
    v23 = v14;
    if (v14 >= 0x41)
    {
      llvm::APInt::initSlowCase(v22, &v13);
    }

    v17 = v14;
    v16 = v13;
    v18 = (v15 & 0x20000000) == 0;
    v12 = (v15 >> 29) & 1;
    if (v8 == v25)
    {
      llvm::detail::DoubleAPFloat::convertFromAPInt(&v25, &v16, v12);
    }

    v10 = (llvm::detail::IEEEFloat::convertFromAPInt(&v25, &v16, v12, 4) & 4) == 0;
    if (v17 >= 0x41 && v16)
    {
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 == v25)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v25);
    if (v20 < 0x41)
    {
      return v10;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v25);
    if (v20 < 0x41)
    {
      return v10;
    }
  }

  if (v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  return v10;
}

uint64_t llvm::FixedPointSemantics::getCommonSemantics(int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = ((*a1 | *a2) >> 29) & 1;
  v5 = (*a2 & 0x80000000) != 0 && ((*a1 | *a2) & 0x40000000) == 0;
  if (v4)
  {
    v5 = 0;
  }

  if (v2 >= 0)
  {
    v5 = 0;
  }

  v6 = (8 * v2) >> 19;
  v7 = ~((v2 & 0xA0000000) != 0) + v6 + v2;
  v8 = (8 * v3) >> 19;
  v9 = ~((v3 & 0xA0000000) != 0) + v8 + v3;
  if (v7 <= v9)
  {
    LOWORD(v7) = v9;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = v7 - v10;
  if (v4 | v5)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v11 + v12;
  if (v4)
  {
    v14 = 0x20000000;
  }

  else
  {
    v14 = 0;
  }

  if (((*a1 | *a2) & 0x40000000) != 0)
  {
    v15 = 0x40000000;
  }

  else
  {
    v15 = 0;
  }

  if (v5)
  {
    v16 = 0x80000000;
  }

  else
  {
    v16 = 0;
  }

  return (v15 | v14) & 0xE0000000 | ((v10 & 0x1FFF) << 16) | v16 & 0xFFFF0000 | v13;
}

void llvm::APFixedPoint::add(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  v8 = *(a2 + 4);
  v9 = *(this + 4);
  v10 = ((v9 | v8) >> 29) & 1;
  v11 = ((v9 | v8) & 0x40000000) == 0;
  if (v9 < 0 && (((v9 | v8) >> 29) & 1) == 0)
  {
    v7 = v8 < 0 && v11;
  }

  v12 = (8 * v9) >> 19;
  v13 = ~((v9 & 0xA0000000) != 0) + v12 + v9;
  v14 = (8 * v8) >> 19;
  v15 = ~((v8 & 0xA0000000) != 0) + v14 + v8;
  if (v13 > v15)
  {
    LOWORD(v15) = v13;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v15 - v16;
  if (v10 | v7)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v17 + v18;
  if (v10)
  {
    v20 = 0x20000000;
  }

  else
  {
    v20 = 0;
  }

  if (v11)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x40000000;
  }

  if (v7)
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 0xFFFF0000 | v19 | v21 & 0xE000FFFF | ((v16 & 0x1FFF) << 16) | v20;
  v46 = v23;
  llvm::APFixedPoint::convert(this, &v46, 0, &v43);
  llvm::APFixedPoint::convert(a2, &v46, 0, &v40);
  v48 = v44;
  if (v44 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, &v43);
  }

  v38 = v44;
  v37 = v43;
  v39 = (v45 & 0x20000000) == 0;
  v48 = v41;
  if (v41 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, &v40);
  }

  v35 = v41;
  v34 = v40;
  v36 = (v42 & 0x20000000) == 0;
  v33 = 0;
  v32 = 0;
  if (v11)
  {
    if (v39)
    {
      llvm::APInt::uadd_ov(&v26, &v37, &v34, &v33);
      v24 = v26;
      v30 = v26;
      v25 = v27;
      v31 = v27;
      v27 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    llvm::APInt::sadd_ov(&v26, &v37, &v34, &v33);
    v24 = v26;
    v30 = v26;
    v25 = v27;
    v31 = v27;
    v27 = 0;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (!v10)
    {
      llvm::APInt::uadd_sat(&v28, &v37, &v34);
      v24 = v28;
      v30 = v28;
      v25 = v29;
      v31 = v29;
      v29 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    llvm::APInt::sadd_sat(&v28, &v37, &v34);
    v24 = v28;
    v30 = v28;
    v25 = v29;
    v31 = v29;
    v29 = 0;
    if (a3)
    {
LABEL_35:
      *a3 = v33;
    }
  }

LABEL_36:
  v48 = v25;
  if (v25 > 0x40)
  {
    llvm::APInt::initSlowCase(&v47, &v30);
  }

  *(a4 + 8) = v25;
  *a4 = v24;
  *(a4 + 12) = v10 ^ 1;
  *(a4 + 16) = v23;
  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x259C63150](v40, 0x1000C8000313F17);
  }

  if (v44 >= 0x41)
  {
    if (v43)
    {
      MEMORY[0x259C63150](v43, 0x1000C8000313F17);
    }
  }
}

void llvm::APFixedPoint::sub(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  v8 = *(a2 + 4);
  v9 = *(this + 4);
  v10 = ((v9 | v8) >> 29) & 1;
  v11 = ((v9 | v8) & 0x40000000) == 0;
  if (v9 < 0 && (((v9 | v8) >> 29) & 1) == 0)
  {
    v7 = v8 < 0 && v11;
  }

  v12 = (8 * v9) >> 19;
  v13 = ~((v9 & 0xA0000000) != 0) + v12 + v9;
  v14 = (8 * v8) >> 19;
  v15 = ~((v8 & 0xA0000000) != 0) + v14 + v8;
  if (v13 > v15)
  {
    LOWORD(v15) = v13;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v15 - v16;
  if (v10 | v7)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v17 + v18;
  if (v10)
  {
    v20 = 0x20000000;
  }

  else
  {
    v20 = 0;
  }

  if (v11)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x40000000;
  }

  if (v7)
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 0xFFFF0000 | v19 | v21 & 0xE000FFFF | ((v16 & 0x1FFF) << 16) | v20;
  v46 = v23;
  llvm::APFixedPoint::convert(this, &v46, 0, &v43);
  llvm::APFixedPoint::convert(a2, &v46, 0, &v40);
  v48 = v44;
  if (v44 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, &v43);
  }

  v38 = v44;
  v37 = v43;
  v39 = (v45 & 0x20000000) == 0;
  v48 = v41;
  if (v41 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, &v40);
  }

  v35 = v41;
  v34 = v40;
  v36 = (v42 & 0x20000000) == 0;
  v33 = 0;
  v32 = 0;
  if (v11)
  {
    if (v39)
    {
      llvm::APInt::usub_ov(&v26, &v37, &v34, &v33);
      v24 = v26;
      v30 = v26;
      v25 = v27;
      v31 = v27;
      v27 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    llvm::APInt::ssub_ov(&v26, &v37, &v34, &v33);
    v24 = v26;
    v30 = v26;
    v25 = v27;
    v31 = v27;
    v27 = 0;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (!v10)
    {
      llvm::APInt::usub_sat(&v28, &v37, &v34);
      v24 = v28;
      v30 = v28;
      v25 = v29;
      v31 = v29;
      v29 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    llvm::APInt::ssub_sat(&v28, &v37, &v34);
    v24 = v28;
    v30 = v28;
    v25 = v29;
    v31 = v29;
    v29 = 0;
    if (a3)
    {
LABEL_35:
      *a3 = v33;
    }
  }

LABEL_36:
  v48 = v25;
  if (v25 > 0x40)
  {
    llvm::APInt::initSlowCase(&v47, &v30);
  }

  *(a4 + 8) = v25;
  *a4 = v24;
  *(a4 + 12) = v10 ^ 1;
  *(a4 + 16) = v23;
  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x259C63150](v40, 0x1000C8000313F17);
  }

  if (v44 >= 0x41)
  {
    if (v43)
    {
      MEMORY[0x259C63150](v43, 0x1000C8000313F17);
    }
  }
}

uint64_t *llvm::APFixedPoint::mul@<X0>(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 4);
  v8 = *(this + 4);
  v9 = ((v8 | v7) >> 29) & 1;
  v10 = ((v8 | v7) & 0x40000000) == 0;
  v11 = v7 < 0 && v10;
  if (v9)
  {
    v11 = 0;
  }

  if (v8 >= 0)
  {
    v11 = 0;
  }

  v12 = (8 * v8) >> 19;
  v13 = ~((v8 & 0xA0000000) != 0) + v12 + v8;
  v14 = (8 * v7) >> 19;
  v15 = ~((v7 & 0xA0000000) != 0) + v14 + v7;
  if (v13 > v15)
  {
    LOWORD(v15) = v13;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v15 - v16;
  if (v9 | v11)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v17 + v18;
  if (v9)
  {
    v20 = 0x20000000;
  }

  else
  {
    v20 = 0;
  }

  if (v10)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x40000000;
  }

  if (v11)
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 0xE0000000 | ((v16 & 0x1FFF) << 16) | v20 & 0xFFFF0000 | v21 & 0xFFFF0000 | v19;
  v71 = v23;
  llvm::APFixedPoint::convert(this, &v71, 0, &v68);
  llvm::APFixedPoint::convert(a2, &v71, 0, &v65);
  v35 = v69;
  if (v69 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v34, &v68);
  }

  v63 = v69;
  v62 = v68;
  v64 = (v70 & 0x20000000) == 0;
  v35 = v66;
  if (v66 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v34, &v65);
  }

  v60 = v66;
  v59 = v65;
  v61 = (v67 & 0x20000000) == 0;
  v58 = 0;
  if (v9)
  {
    llvm::APInt::sext(&v56, &v62, 2 * v19);
    if (v63 >= 0x41 && v62)
    {
      MEMORY[0x259C63150](v62, 0x1000C8000313F17);
    }

    v62 = v56;
    v63 = v57;
    v57 = 0;
    llvm::APInt::sext(&v54, &v59, 2 * v19);
    if (v60 >= 0x41 && v59)
    {
      MEMORY[0x259C63150](v59, 0x1000C8000313F17);
    }

    v59 = v54;
    v60 = v55;
    v55 = 0;
    v48 = 1;
    v47 = 0;
    v49 = 0;
    llvm::APInt::smul_ov(&v34, &v62, &v59, &v58);
    llvm::APInt::relativeAShr(&v45, &v34, -v16);
    if (v48 >= 0x41 && v47)
    {
      MEMORY[0x259C63150](v47, 0x1000C8000313F17);
    }

    v47 = v45;
    v48 = v46;
    v46 = 0;
    if (v35 < 0x41)
    {
      goto LABEL_50;
    }

LABEL_48:
    if (v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }

    goto LABEL_50;
  }

  llvm::APInt::zext(&v52, &v62, 2 * v19);
  if (v63 >= 0x41 && v62)
  {
    MEMORY[0x259C63150](v62, 0x1000C8000313F17);
  }

  v62 = v52;
  v63 = v53;
  v53 = 0;
  llvm::APInt::zext(&v50, &v59, 2 * v19);
  if (v60 >= 0x41 && v59)
  {
    MEMORY[0x259C63150](v59, 0x1000C8000313F17);
  }

  v59 = v50;
  v60 = v51;
  v51 = 0;
  v48 = 1;
  v47 = 0;
  v49 = 0;
  llvm::APInt::umul_ov(&v34, &v62, &v59, &v58);
  llvm::APInt::relativeLShr(&v43, &v34, -v16);
  if (v48 >= 0x41 && v47)
  {
    MEMORY[0x259C63150](v47, 0x1000C8000313F17);
  }

  v47 = v43;
  v48 = v44;
  v44 = 0;
  if (v35 >= 0x41)
  {
    goto LABEL_48;
  }

LABEL_50:
  v24 = v9 ^ 1;
  v49 = v24;
  llvm::APFixedPoint::getMax(&v71, &v34);
  v73 = v35;
  if (v35 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v72, &v34);
  }

  v38 = v35;
  v37 = v34;
  v39 = (v36 & 0x20000000) == 0;
  v25 = 2 * v19;
  if ((v36 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v72, &v37, v25);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v72, &v37, v25);
  }

  v41 = v73;
  v40 = v72;
  v42 = v39;
  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  llvm::APFixedPoint::getMin(&v71, &v34);
  v73 = v35;
  if (v35 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v72, &v34);
  }

  v32 = v35;
  v31 = v34;
  v33 = (v36 & 0x20000000) == 0;
  v26 = 2 * v19;
  if ((v36 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v72, &v31, v26);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v72, &v31, v26);
  }

  v38 = v73;
  v37 = v72;
  v39 = v33;
  if (v32 >= 0x41 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  if (v10)
  {
    if (v49)
    {
      if ((llvm::APInt::compare(&v47, &v37) & 0x80000000) == 0)
      {
        v27 = llvm::APInt::compare(&v47, &v40);
LABEL_82:
        v28 = v27 > 0;
        goto LABEL_89;
      }
    }

    else if ((llvm::APInt::compareSigned(&v47, &v37) & 0x80000000) == 0)
    {
      v27 = llvm::APInt::compareSigned(&v47, &v40);
      goto LABEL_82;
    }

    v28 = 1;
LABEL_89:
    v58 = v28;
    if (!a3)
    {
      goto LABEL_98;
    }

LABEL_97:
    *a3 = v58;
    goto LABEL_98;
  }

  if (v49)
  {
    if ((llvm::APInt::compare(&v47, &v37) & 0x80000000) == 0)
    {
      if (llvm::APInt::compare(&v47, &v40) < 1)
      {
        goto LABEL_96;
      }

      goto LABEL_85;
    }
  }

  else if ((llvm::APInt::compareSigned(&v47, &v37) & 0x80000000) == 0)
  {
    if (llvm::APInt::compareSigned(&v47, &v40) < 1)
    {
      goto LABEL_96;
    }

LABEL_85:
    if (v48 > 0x40 || v41 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v47, &v40);
    }

    else
    {
      v47 = v40;
      v48 = v41;
    }

    v49 = v42;
LABEL_96:
    if (!a3)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v48 > 0x40 || v38 > 0x40)
  {
    llvm::APInt::assignSlowCase(&v47, &v37);
  }

  else
  {
    v47 = v37;
    v48 = v38;
  }

  v49 = v39;
  if (a3)
  {
    goto LABEL_97;
  }

LABEL_98:
  result = llvm::APInt::sextOrTrunc(&v72, &v47, v19);
  v35 = v73;
  if (v73 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, &v72);
  }

  v30 = v72;
  *(a4 + 8) = v73;
  *a4 = v30;
  *(a4 + 12) = v24;
  *(a4 + 16) = v23;
  if (v38 >= 0x41)
  {
    result = v37;
    if (v37)
    {
      result = MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }
  }

  if (v41 >= 0x41)
  {
    result = v40;
    if (v40)
    {
      result = MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }
  }

  if (v48 >= 0x41)
  {
    result = v47;
    if (v47)
    {
      result = MEMORY[0x259C63150](v47, 0x1000C8000313F17);
    }
  }

  if (v60 >= 0x41)
  {
    result = v59;
    if (v59)
    {
      result = MEMORY[0x259C63150](v59, 0x1000C8000313F17);
    }
  }

  if (v63 >= 0x41)
  {
    result = v62;
    if (v62)
    {
      result = MEMORY[0x259C63150](v62, 0x1000C8000313F17);
    }
  }

  if (v66 >= 0x41)
  {
    result = v65;
    if (v65)
    {
      result = MEMORY[0x259C63150](v65, 0x1000C8000313F17);
    }
  }

  if (v69 >= 0x41)
  {
    result = v68;
    if (v68)
    {
      return MEMORY[0x259C63150](v68, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::APFixedPoint::div@<X0>(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 4);
  v7 = *(this + 4);
  v8 = ((v7 | v6) >> 29) & 1;
  v9 = ((v7 | v6) & 0x40000000) == 0;
  v10 = v6 < 0 && v9;
  if (v8)
  {
    v10 = 0;
  }

  if (v7 >= 0)
  {
    v10 = 0;
  }

  v11 = (8 * v7) >> 19;
  v12 = ~((v7 & 0xA0000000) != 0) + v11 + v7;
  v13 = (8 * v6) >> 19;
  v14 = ~((v6 & 0xA0000000) != 0) + v13 + v6;
  if (v12 > v14)
  {
    LOWORD(v14) = v12;
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 - v15;
  if (v8 | v10)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = v16 + v17;
  if (v8)
  {
    v19 = 0x20000000;
  }

  else
  {
    v19 = 0;
  }

  if (v9)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x40000000;
  }

  if (v10)
  {
    v21 = 0x80000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 & 0xE0000000 | ((v15 & 0x1FFF) << 16) | v19 & 0xFFFF0000 | v20 & 0xFFFF0000 | v18;
  v91 = v22;
  llvm::APFixedPoint::convert(this, &v91, 0, &v88);
  llvm::APFixedPoint::convert(a2, &v91, 0, &v85);
  v54 = v89;
  if (v89 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v53, &v88);
  }

  v83 = v89;
  v82 = v88;
  v84 = (v90 & 0x20000000) == 0;
  v54 = v86;
  if (v86 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v53, &v85);
  }

  v80 = v86;
  v79 = v85;
  v81 = (v87 & 0x20000000) == 0;
  v23 = ((1 - (v15 + v18)) & ~((1 - (v15 + v18)) >> 31)) + 2 * v18;
  if (v8)
  {
    llvm::APInt::sext(&v77, &v82, v23);
    if (v83 >= 0x41 && v82)
    {
      MEMORY[0x259C63150](v82, 0x1000C8000313F17);
    }

    v82 = v77;
    v83 = v78;
    v78 = 0;
    v24 = v76;
    llvm::APInt::sext(v76, &v79, v23);
    if (v80 < 0x41)
    {
      goto LABEL_38;
    }

LABEL_36:
    if (v79)
    {
      MEMORY[0x259C63150](v79, 0x1000C8000313F17);
    }

    goto LABEL_38;
  }

  llvm::APInt::zext(&v74, &v82, v23);
  if (v83 >= 0x41 && v82)
  {
    MEMORY[0x259C63150](v82, 0x1000C8000313F17);
  }

  v82 = v74;
  v83 = v75;
  v75 = 0;
  v24 = v73;
  llvm::APInt::zext(v73, &v79, v23);
  if (v80 >= 0x41)
  {
    goto LABEL_36;
  }

LABEL_38:
  v28 = *v24;
  v79 = *v24;
  v29 = *(v24 + 2);
  v80 = v29;
  *(v24 + 2) = 0;
  if (v15 < 0)
  {
    v34 = -v15;
    v72 = v83;
    if (v83 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v71, &v82);
    }

    v35 = v82 << v34;
    if (v83 == v34)
    {
      v35 = 0;
    }

    if (v83)
    {
      v36 = 0xFFFFFFFFFFFFFFFFLL >> -v83;
    }

    else
    {
      v36 = 0;
    }

    v71 = v36 & v35;
    v32 = &v83;
    v33 = &v72;
    v82 = v36 & v35;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_61;
    }

    v70 = v29;
    if (v29 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v69, &v79);
    }

    v30 = v28 << v15;
    if (v29 == v15)
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
    }

    else
    {
      v31 = 0;
    }

    v69 = (v31 & v30);
    v32 = &v80;
    v33 = &v70;
    if (v80 >= 0x41 && v79)
    {
      MEMORY[0x259C63150](v79, 0x1000C8000313F17);
    }

    v79 = v69;
  }

  *v32 = *v33;
  *v33 = 0;
LABEL_61:
  v67 = 1;
  v66 = 0;
  v68 = 0;
  if (((v8 ^ 1) & 1) == 0)
  {
    v54 = 1;
    v53 = 0;
    llvm::APInt::sdivrem(&v82, &v79, &v66, &v53, v25, v26, v27);
    if (v84)
    {
      if (v81)
      {
        goto LABEL_91;
      }

      v37 = 0;
    }

    else
    {
      if (v83 >= 0x41)
      {
        v38 = (v82 + 8 * ((v83 - 1) >> 6));
      }

      else
      {
        v38 = &v82;
      }

      v39 = (1 << (v83 - 1)) & *v38;
      v37 = v39 != 0;
      if (v81)
      {
        if (!v39)
        {
          goto LABEL_91;
        }

LABEL_78:
        v41 = v54;
        if (v54 > 0x40)
        {
          if (llvm::APInt::countLeadingZerosSlowCase(&v53) == v41)
          {
LABEL_92:
            if (v53)
            {
              MEMORY[0x259C63150](v53, 0x1000C8000313F17);
            }

            goto LABEL_94;
          }
        }

        else if (!v53)
        {
          goto LABEL_94;
        }

        v65 = v67;
        if (v67 > 0x40)
        {
          llvm::APInt::initSlowCase(&v64, &v66);
        }

        v64 = v66;
        llvm::APInt::operator-=(&v64, 1uLL);
        v42 = v65;
        v43 = v64;
        v65 = 0;
        if (v67 > 0x40 && v66)
        {
          MEMORY[0x259C63150](v66, 0x1000C8000313F17);
          v66 = v43;
          v67 = v42;
          if (v65 >= 0x41 && v64)
          {
            MEMORY[0x259C63150](v64, 0x1000C8000313F17);
          }
        }

        else
        {
          v66 = v64;
          v67 = v42;
        }

LABEL_91:
        if (v54 < 0x41)
        {
          goto LABEL_94;
        }

        goto LABEL_92;
      }
    }

    v40 = &v79;
    if (v80 >= 0x41)
    {
      v40 = &v79[(v80 - 1) >> 6];
    }

    if (v37 == ((*v40 >> (v80 - 1)) & 1))
    {
      goto LABEL_91;
    }

    goto LABEL_78;
  }

  llvm::APInt::udiv(&v62, &v82, &v79);
  if (v67 >= 0x41 && v66)
  {
    MEMORY[0x259C63150](v66, 0x1000C8000313F17);
  }

  v66 = v62;
  v67 = v63;
  v63 = 0;
LABEL_94:
  v68 = v8 ^ 1;
  llvm::APFixedPoint::getMax(&v91, &v53);
  v93 = v54;
  if (v54 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v92, &v53);
  }

  v57 = v54;
  v56 = v53;
  v58 = (v55 & 0x20000000) == 0;
  if ((v55 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v92, &v56, v23);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v92, &v56, v23);
  }

  v60 = v93;
  v59 = v92;
  v61 = v58;
  if (v57 >= 0x41 && v56)
  {
    MEMORY[0x259C63150](v56, 0x1000C8000313F17);
  }

  if (v54 >= 0x41 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  llvm::APFixedPoint::getMin(&v91, &v53);
  v93 = v54;
  if (v54 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v92, &v53);
  }

  v51 = v54;
  v50 = v53;
  v52 = (v55 & 0x20000000) == 0;
  if ((v55 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v92, &v50, v23);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v92, &v50, v23);
  }

  v57 = v93;
  v56 = v92;
  v58 = v52;
  if (v51 >= 0x41 && v50)
  {
    MEMORY[0x259C63150](v50, 0x1000C8000313F17);
  }

  if (v54 >= 0x41 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  if (v9)
  {
    if (v68)
    {
      if ((llvm::APInt::compare(&v66, &v56) & 0x80000000) == 0)
      {
        v44 = llvm::APInt::compare(&v66, &v59);
LABEL_126:
        v45 = v44 > 0;
        goto LABEL_134;
      }
    }

    else if ((llvm::APInt::compareSigned(&v66, &v56) & 0x80000000) == 0)
    {
      v44 = llvm::APInt::compareSigned(&v66, &v59);
      goto LABEL_126;
    }

    v45 = 1;
LABEL_134:
    v46 = a3;
    if (!a3)
    {
      goto LABEL_144;
    }

LABEL_143:
    *v46 = v45;
    goto LABEL_144;
  }

  if (v68)
  {
    if ((llvm::APInt::compare(&v66, &v56) & 0x80000000) == 0)
    {
      if (llvm::APInt::compare(&v66, &v59) < 1)
      {
LABEL_123:
        v45 = 0;
        goto LABEL_134;
      }

      goto LABEL_129;
    }

LABEL_136:
    if (v67 > 0x40 || v57 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v66, &v56);
    }

    else
    {
      v66 = v56;
      v67 = v57;
    }

    v46 = a3;
    v45 = 0;
    v68 = v58;
    if (a3)
    {
      goto LABEL_143;
    }

    goto LABEL_144;
  }

  if ((llvm::APInt::compareSigned(&v66, &v56) & 0x80000000) != 0)
  {
    goto LABEL_136;
  }

  if (llvm::APInt::compareSigned(&v66, &v59) < 1)
  {
    goto LABEL_123;
  }

LABEL_129:
  if (v67 <= 0x40 && v60 <= 0x40)
  {
    v66 = v59;
    v67 = v60;
    v46 = a3;
    v45 = 0;
    v68 = v61;
    if (!a3)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  llvm::APInt::assignSlowCase(&v66, &v59);
  v46 = a3;
  v45 = 0;
  v68 = v61;
  if (a3)
  {
    goto LABEL_143;
  }

LABEL_144:
  result = llvm::APInt::sextOrTrunc(&v92, &v66, v18);
  v54 = v93;
  if (v93 > 0x40)
  {
    llvm::APInt::initSlowCase(&v53, &v92);
  }

  v48 = v92;
  *(a4 + 8) = v93;
  *a4 = v48;
  *(a4 + 12) = v8 ^ 1;
  *(a4 + 16) = v22;
  if (v57 >= 0x41)
  {
    result = v56;
    if (v56)
    {
      result = MEMORY[0x259C63150](v56, 0x1000C8000313F17);
    }
  }

  if (v60 >= 0x41)
  {
    result = v59;
    if (v59)
    {
      result = MEMORY[0x259C63150](v59, 0x1000C8000313F17);
    }
  }

  if (v67 >= 0x41)
  {
    result = v66;
    if (v66)
    {
      result = MEMORY[0x259C63150](v66, 0x1000C8000313F17);
    }
  }

  if (v80 >= 0x41)
  {
    result = v79;
    if (v79)
    {
      result = MEMORY[0x259C63150](v79, 0x1000C8000313F17);
    }
  }

  if (v83 >= 0x41)
  {
    result = v82;
    if (v82)
    {
      result = MEMORY[0x259C63150](v82, 0x1000C8000313F17);
    }
  }

  if (v86 >= 0x41)
  {
    result = v85;
    if (v85)
    {
      result = MEMORY[0x259C63150](v85, 0x1000C8000313F17);
    }
  }

  if (v89 >= 0x41)
  {
    result = v88;
    if (v88)
    {
      return MEMORY[0x259C63150](v88, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::APFixedPoint::shl@<X0>(llvm::APFixedPoint *this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v40 = *(this + 2);
  if (v40 > 0x40)
  {
    llvm::APInt::initSlowCase(&v39, this);
  }

  v39 = *this;
  v8 = *(this + 4);
  v7 = (this + 16);
  v41 = *(this + 12);
  v9 = 2 * v8;
  if ((v8 & 0x20000000) != 0)
  {
    v10 = v38;
    llvm::APInt::sext(v38, &v39, v9);
    if (v40 >= 0x41 && v39 != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = v37;
    llvm::APInt::zext(v37, &v39, v9);
    if (v40 >= 0x41 && v39 != 0)
    {
LABEL_15:
      MEMORY[0x259C63150]();
    }
  }

  v13 = *v10;
  v39 = *v10;
  v40 = *(v10 + 2);
  v14 = v40;
  *(v10 + 2) = 0;
  if (v14 < a3)
  {
    a3 = v14;
  }

  v26 = v14;
  if (v14 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v25, &v39);
  }

  v15 = v13 << a3;
  if (v14 == a3)
  {
    v15 = 0;
  }

  v16 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
  if (!v14)
  {
    v16 = 0;
  }

  v35 = v14;
  v34 = (v16 & v15);
  v36 = (*v7 & 0x20000000) == 0;
  llvm::APFixedPoint::getMax(v7, &v25);
  v43 = v26;
  if (v26 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v42, &v25);
  }

  v29 = v26;
  v28 = v25;
  v30 = (v27 & 0x20000000) == 0;
  if ((v27 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v42, &v28, v9);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v42, &v28, v9);
  }

  v32 = v43;
  v31 = v42;
  v33 = v30;
  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  llvm::APFixedPoint::getMin(v7, &v25);
  v43 = v26;
  if (v26 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v42, &v25);
  }

  v23 = v26;
  v22 = v25;
  v24 = (v27 & 0x20000000) == 0;
  if ((v27 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v42, &v22, v9);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v42, &v22, v9);
  }

  v29 = v43;
  v28 = v42;
  v30 = v24;
  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x259C63150](v22, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  if ((*(v7 + 3) & 0x40) != 0)
  {
    if (v36)
    {
      if ((llvm::APInt::compare(&v34, &v28) & 0x80000000) == 0)
      {
        if (llvm::APInt::compare(&v34, &v31) < 1)
        {
          goto LABEL_54;
        }

        goto LABEL_61;
      }
    }

    else if ((llvm::APInt::compareSigned(&v34, &v28) & 0x80000000) == 0)
    {
      if (llvm::APInt::compareSigned(&v34, &v31) < 1)
      {
LABEL_54:
        v17 = 0;
        if (a2)
        {
          goto LABEL_71;
        }

        goto LABEL_72;
      }

LABEL_61:
      if (v35 > 0x40 || v32 > 0x40)
      {
        llvm::APInt::assignSlowCase(&v34, &v31);
      }

      else
      {
        v34 = v31;
        v35 = v32;
      }

      v17 = 0;
      v36 = v33;
      if (a2)
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (v35 > 0x40 || v29 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v34, &v28);
    }

    else
    {
      v34 = v28;
      v35 = v29;
    }

    v17 = 0;
    v36 = v30;
    if (a2)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (v36)
  {
    if ((llvm::APInt::compare(&v34, &v28) & 0x80000000) == 0)
    {
      v17 = llvm::APInt::compare(&v34, &v31) > 0;
      if (!a2)
      {
        goto LABEL_72;
      }

LABEL_71:
      *a2 = v17;
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if ((llvm::APInt::compareSigned(&v34, &v28) & 0x80000000) != 0)
  {
LABEL_64:
    v17 = 1;
    if (a2)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v17 = llvm::APInt::compareSigned(&v34, &v31) > 0;
  if (a2)
  {
    goto LABEL_71;
  }

LABEL_72:
  result = llvm::APInt::sextOrTrunc(&v42, &v34, *v7);
  v26 = v43;
  if (v43 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v25, &v42);
  }

  v19 = v42;
  v20 = *v7;
  v21 = (*v7 & 0x20000000) == 0;
  *(a4 + 8) = v43;
  *a4 = v19;
  *(a4 + 12) = v21;
  *(a4 + 16) = v20;
  if (v29 >= 0x41)
  {
    result = v28;
    if (v28)
    {
      result = MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }
  }

  if (v32 >= 0x41)
  {
    result = v31;
    if (v31)
    {
      result = MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }
  }

  if (v35 >= 0x41)
  {
    result = v34;
    if (v34)
    {
      result = MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }
  }

  if (v40 >= 0x41)
  {
    result = v39;
    if (v39)
    {
      return MEMORY[0x259C63150](v39, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::APFixedPoint::toString(llvm::APInt *a1, void *a2)
{
  v4 = *(a1 + 2);
  v45 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v44, a1);
  }

  v5 = *a1;
  v6 = *(a1 + 4);
  v42 = v4;
  v41 = v5;
  v43 = (v6 & 0x20000000) == 0;
  v7 = (8 * v6) >> 19;
  if ((v7 & 0x80000000) == 0)
  {
    v39 = v4;
    v38 = v5;
    v40 = (v6 & 0x20000000) == 0;
    v8 = v4 + v7;
    if ((v6 & 0x20000000) != 0)
    {
      llvm::APInt::sext(&v44, &v38, v8);
      v9 = v45;
      v10 = v40;
      v11 = v44;
      if (v39 < 0x41)
      {
        goto LABEL_16;
      }
    }

    else
    {
      llvm::APInt::zext(&v44, &v38, v8);
      v9 = v45;
      v10 = v40;
      v11 = v44;
      if (v39 < 0x41)
      {
        goto LABEL_16;
      }
    }

    if (v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

LABEL_16:
    v38 = v11;
    v39 = v9;
    v40 = v10;
    if (v9 > 0x40)
    {
      llvm::APInt::shlSlowCase(&v38, v7);
      v10 = v40;
    }

    else
    {
      v15 = v11 << v7;
      if (v9 == v7)
      {
        v15 = 0;
      }

      v16 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
      if (!v9)
      {
        v16 = 0;
      }

      v38 = (v15 & v16);
    }

    llvm::APInt::toString(&v38, a2, 10, !v10, 0, 1, 0);
    v17 = a2[1];
    if ((v17 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v17) = 46;
    v18 = a2[1];
    v19 = a2[2];
    a2[1] = v18 + 1;
    if (v18 + 2 > v19)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v18 + 1) = 48;
    ++a2[1];
    if (v39 >= 0x41)
    {
      v20 = v38;
      if (v38)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_89;
  }

  v12 = 8 * v6;
  v13 = v6;
  if (v6 & 0x20000000) != 0 && ((v41 >> (v4 - 1)))
  {
    v45 = v4;
    if (v4)
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    }

    else
    {
      v14 = 0;
    }

    v44 = (v14 & ~v5);
    llvm::APInt::operator++(&v44);
    v41 = v44;
    v42 = v45;
    v43 = 1;
    v21 = a2[1];
    if ((v21 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v21) = 45;
    ++a2[1];
    v12 = 8 * *(a1 + 4);
    v7 = v12 >> 19;
  }

  v22 = -v7;
  if (v13 <= -v7)
  {
    v45 = 64;
    v44 = 0;
    v46 = 0;
  }

  else
  {
    llvm::APSInt::operator>>(&v44, &v41, -v7);
  }

  if (v13 <= v22)
  {
    v23 = -v7;
  }

  else
  {
    v23 = v13;
  }

  llvm::APInt::zextOrTrunc(&v36, &v41, -v7);
  llvm::APInt::zext(&v38, &v36, v23 + 4);
  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
  }

  v35 = -v7;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, -1, 1);
  }

  v24 = 0xFFFFFFFFFFFFFFFFLL >> ~(63 - v7);
  if (v12 < 0x80000)
  {
    v24 = 0;
  }

  v34 = v24;
  llvm::APInt::zext(&v36, &v34, v23 + 4);
  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  v35 = v23 + 4;
  if (v23 > 0x3C)
  {
    llvm::APInt::initSlowCase(&v34, 10, 0);
  }

  v34 = (0xFFFFFFFFFFFFFFFFLL >> ((v23 + 3) ^ 0x3F)) & 0xA;
  llvm::APInt::toString(&v44, a2, 10, (v46 & 1) == 0, 0, 1, 0);
  v25 = a2[1];
  if ((v25 + 1) > a2[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*a2 + v25) = 46;
  ++a2[1];
  do
  {
    while (1)
    {
      llvm::APInt::operator*(&v38, &v34, &v30);
      v33 = v31;
      if (v31 > 0x40)
      {
        llvm::APInt::initSlowCase(&v32, &v30);
      }

      v32 = v30;
      if (v31 == v22)
      {
        v32 = 0;
      }

      else
      {
        v32 >>= v22;
      }

      llvm::APInt::toString(&v32, a2, 10, !v43, 0, 1, 0);
      if (v33 >= 0x41 && v32)
      {
        MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }

      if (v31 >= 0x41 && v30)
      {
        MEMORY[0x259C63150](v30, 0x1000C8000313F17);
      }

      llvm::APInt::operator*(&v38, &v34, &v28);
      v26 = v29;
      if (v29 > 0x40)
      {
        llvm::APInt::andAssignSlowCase(&v28, &v36);
        v26 = v29;
        v27 = v28;
        v29 = 0;
        if (v39 <= 0x40)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v27 = (v28 & v36);
        v28 &= v36;
        v29 = 0;
        if (v39 <= 0x40)
        {
          goto LABEL_73;
        }
      }

      if (!v38)
      {
LABEL_73:
        v38 = v27;
        v39 = v26;
        goto LABEL_74;
      }

      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
      v38 = v27;
      v39 = v26;
      if (v29 >= 0x41 && v28)
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
        v26 = v39;
      }

LABEL_74:
      if (v26 >= 0x41)
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_77;
      }
    }
  }

  while (v26 - llvm::APInt::countLeadingZerosSlowCase(&v38) > 0x40 || *v38);
LABEL_77:
  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
  }

  if (v39 >= 0x41 && v38)
  {
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

  if (v45 >= 0x41)
  {
    v20 = v44;
    if (v44)
    {
LABEL_88:
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

LABEL_89:
  if (v42 >= 0x41)
  {
    if (v41)
    {
      MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }
}

uint64_t *llvm::APSInt::operator>>@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *result@<X0>, unsigned int a3@<W1>)
{
  v3 = a3;
  if (*(result + 12) == 1)
  {
    v5 = *(result + 2);
    v16 = v5;
    if (v5 > 0x40)
    {
      llvm::APInt::initSlowCase(&v15, result);
    }

    v15 = *result;
    if (v5 == a3)
    {
      v12 = 0;
      v7 = 1;
    }

    else
    {
      v12 = v15 >> a3;
      v7 = 1;
      v3 = v5;
    }
  }

  else
  {
    v6 = *(result + 2);
    v14 = v6;
    if (v6 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v13, result);
    }

    v7 = 0;
    v8 = *result << -v6 >> -v6;
    if (v6 == a3)
    {
      v9 = 63;
    }

    else
    {
      v9 = a3;
    }

    if (!v6)
    {
      v8 = 0;
    }

    v10 = v8 >> v9;
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v11 = 0;
    }

    v12 = v10 & v11;
    v3 = v6;
  }

  *(a1 + 2) = v3;
  *a1 = v12;
  *(a1 + 12) = v7;
  return result;
}

llvm::raw_ostream *llvm::APFixedPoint::print(llvm::APFixedPoint *this, llvm::raw_ostream *a2)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0xCuLL)
  {
    qmemcpy(v4, "APFixedPoint(", 13);
    *(a2 + 4) += 13;
    v5 = a2;
  }

  else
  {
    v5 = llvm::raw_ostream::write(a2, "APFixedPoint(", 0xDuLL);
  }

  __src = v18;
  *__len = xmmword_2573695B0;
  llvm::APFixedPoint::toString(this, &__src);
  v6 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len[0] >= 0x17)
  {
    operator new();
  }

  v15 = __len[0];
  if (!__len[0])
  {
    LOBYTE(__p[0]) = 0;
    v7 = __src;
    if (__src == v18)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  memmove(__p, __src, __len[0]);
  *(__p + v6) = 0;
  v7 = __src;
  if (__src != v18)
  {
LABEL_8:
    free(v7);
  }

LABEL_9:
  if ((v15 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = llvm::raw_ostream::write(v5, v8, v9);
  v11 = v10[4];
  if ((v10[3] - v11) > 2)
  {
    *(v11 + 2) = 123;
    *v11 = 8236;
    v10[4] += 3;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ", {", 3uLL);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  operator delete(__p[0]);
LABEL_23:
  result = llvm::FixedPointSemantics::print((this + 16), a2);
  v13 = *(a2 + 4);
  if (*(a2 + 3) - v13 <= 1uLL)
  {
    return llvm::raw_ostream::write(a2, "})", 2uLL);
  }

  *v13 = 10621;
  *(a2 + 4) += 2;
  return result;
}

llvm::raw_ostream *llvm::APFixedPoint::dump(llvm::APFixedPoint *this)
{
  v2 = llvm::errs(this);

  return llvm::APFixedPoint::print(this, v2);
}

int *llvm::APFixedPoint::negate@<X0>(llvm::APFixedPoint *this@<X0>, BOOL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (this + 16);
  v5 = *(this + 4);
  if ((v5 & 0x40000000) == 0)
  {
    if (!a2)
    {
LABEL_37:
      v20 = *(this + 2);
      v30 = v20;
      if (v20 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v29, this);
      }

      if (v20)
      {
        v21 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
      }

      else
      {
        v21 = 0;
      }

      v29 = (v21 & ~*this);
LABEL_43:
      result = llvm::APInt::operator++(&v29);
      v22 = v29;
      v23 = *(this + 12);
      v27 = v30;
      v26 = v29;
      v28 = v23;
      if (v30 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v29, &v26);
      }

      v24 = *v6;
      v25 = (*v6 & 0x20000000) == 0;
      *(a3 + 8) = v30;
      *a3 = v22;
      *(a3 + 12) = v25;
      *(a3 + 16) = v24;
      return result;
    }

    if ((v5 & 0x20000000) != 0)
    {
      goto LABEL_28;
    }

    v7 = a2;
    v30 = 64;
    v29 = 0;
    v31 = 0;
    v8 = llvm::APSInt::compareValues(this, &v29);
    if (v30 >= 0x41 && v29)
    {
      v9 = v8;
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
      v8 = v9;
    }

    a2 = v7;
    if (v8)
    {
      v10 = 1;
LABEL_36:
      *a2 = v10;
      goto LABEL_37;
    }

    if ((*(v6 + 3) & 0x20) != 0)
    {
LABEL_28:
      v15 = *(this + 2);
      if (v15 <= 0x40)
      {
        v16 = *this == 1 << (v15 - 1);
        goto LABEL_32;
      }

      v17 = v15 - 1;
      if ((*(*this + 8 * ((v15 - 1) >> 6)) >> (v15 - 1)))
      {
        v18 = a2;
        v19 = llvm::APInt::countTrailingZerosSlowCase(this);
        a2 = v18;
        v16 = v19 == v17;
LABEL_32:
        v10 = v16;
        goto LABEL_36;
      }
    }

    v10 = 0;
    goto LABEL_36;
  }

  if (a2)
  {
    *a2 = 0;
    v5 = *v6;
  }

  if ((v5 & 0x20000000) != 0)
  {
    v12 = *(this + 2);
    if (v12 > 0x40)
    {
      if (((*(*this + 8 * ((v12 - 1) >> 6)) >> (v12 - 1)) & 1) == 0 || llvm::APInt::countTrailingZerosSlowCase(this) != v12 - 1)
      {
        v30 = v12;
        llvm::APInt::initSlowCase(&v29, this);
      }
    }

    else
    {
      v13 = *this;
      if (*this != 1 << (v12 - 1))
      {
        v30 = *(this + 2);
        v14 = 0xFFFFFFFFFFFFFFFFLL >> -v12;
        if (!v12)
        {
          v14 = 0;
        }

        v29 = (v14 & ~v13);
        goto LABEL_43;
      }
    }

    return llvm::APFixedPoint::getMax(v6, a3);
  }

  else
  {

    return llvm::APFixedPoint::APFixedPoint(a3, 0, v6);
  }
}

void llvm::APFixedPoint::convertToInt(llvm::APFixedPoint *this@<X0>, BOOL *a2@<X3>, unsigned int a3@<W1>, int a4@<W2>, uint64_t a5@<X8>)
{
  llvm::APFixedPoint::getIntPart(&v34, this);
  v10 = *(this + 8);
  v38 = a3;
  if (a4)
  {
    if (a3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v37, 0, 0);
    }

    v37 = 1 << (a3 - 1);
  }

  else
  {
    if (a3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v37, 0, 0);
    }

    v37 = 0;
  }

  v32 = v38;
  v31 = v37;
  v33 = a4 ^ 1;
  v38 = a3;
  if (a4)
  {
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
    if (!a3)
    {
      v11 = 0;
    }

    v37 = v11 & ~(1 << (a3 - 1));
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
    if (!a3)
    {
      v12 = 0;
    }

    v37 = v12;
  }

  v29 = v38;
  v28 = v37;
  v30 = a4 ^ 1;
  if (v10 < a3)
  {
    if (v36 == 1)
    {
      llvm::APInt::zext(&v37, &v34, a3);
      v13 = v38;
      v14 = v36;
      v15 = v37;
      if (v35 < 0x41)
      {
        goto LABEL_26;
      }
    }

    else
    {
      llvm::APInt::sext(&v37, &v34, a3);
      v13 = v38;
      v14 = v36;
      v15 = v37;
      if (v35 < 0x41)
      {
LABEL_26:
        v34 = v15;
        v35 = v13;
        v36 = v14;
LABEL_27:
        if (!a2)
        {
          goto LABEL_41;
        }

LABEL_28:
        if ((v36 & 1) == 0 && (a4 & 1) == 0)
        {
          v19 = v35 - 1;
          v20 = &v34;
          if (v35 >= 0x41)
          {
            v20 = (v34 + 8 * (v19 >> 6));
          }

          if ((*v20 >> v19))
          {
            goto LABEL_33;
          }

          goto LABEL_38;
        }

        if (!v36 || !a4)
        {
          if (v36)
          {
            if ((llvm::APInt::compare(&v34, &v31) & 0x80000000) == 0)
            {
              goto LABEL_38;
            }
          }

          else if ((llvm::APInt::compareSigned(&v34, &v31) & 0x80000000) == 0)
          {
            v22 = llvm::APInt::compareSigned(&v34, &v28);
            goto LABEL_39;
          }

LABEL_33:
          v21 = 1;
LABEL_40:
          *a2 = v21;
          goto LABEL_41;
        }

LABEL_38:
        v22 = llvm::APInt::compare(&v34, &v28);
LABEL_39:
        v21 = v22 > 0;
        goto LABEL_40;
      }
    }

    if (v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }

    goto LABEL_26;
  }

  if (v10 <= a3)
  {
    goto LABEL_27;
  }

  if (v33 == 1)
  {
    llvm::APInt::zext(&v37, &v31, v10);
    v16 = v38;
    v17 = v33;
    v18 = v37;
    if (v32 < 0x41)
    {
      goto LABEL_57;
    }
  }

  else
  {
    llvm::APInt::sext(&v37, &v31, v10);
    v16 = v38;
    v17 = v33;
    v18 = v37;
    if (v32 < 0x41)
    {
      goto LABEL_57;
    }
  }

  if (v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

LABEL_57:
  v31 = v18;
  v32 = v16;
  v33 = v17;
  if (v30 == 1)
  {
    llvm::APInt::zext(&v37, &v28, v10);
    v25 = v38;
    v26 = v30;
    v27 = v37;
    if (v29 < 0x41)
    {
      goto LABEL_63;
    }
  }

  else
  {
    llvm::APInt::sext(&v37, &v28, v10);
    v25 = v38;
    v26 = v30;
    v27 = v37;
    if (v29 < 0x41)
    {
      goto LABEL_63;
    }
  }

  if (v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

LABEL_63:
  v28 = v27;
  v29 = v25;
  v30 = v26;
  if (a2)
  {
    goto LABEL_28;
  }

LABEL_41:
  v36 = a4 ^ 1;
  if (a4)
  {
    llvm::APInt::sextOrTrunc(&v37, &v34, a3);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v37, &v34, a3);
  }

  v23 = v36;
  v24 = v37;
  *(a5 + 8) = v38;
  *a5 = v24;
  *(a5 + 12) = v23;
  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v32 >= 0x41 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

  if (v35 >= 0x41)
  {
    if (v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }
  }
}

uint64_t *llvm::APFixedPoint::getIntPart@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this;
  v4 = (8 * *(this + 4)) >> 19;
  v5 = *(this + 4);
  v6 = v4 + v5;
  if (!(((v4 + v5) < 0) ^ __OFADD__(v4, v5) | (v4 + v5 == 0)))
  {
    if (v4 < 1)
    {
      v33 = *(this + 2);
      if (v33 > 0x40)
      {
        llvm::APInt::initSlowCase(&v32, this);
      }

      v32 = *this;
      v34 = *(this + 12);
    }

    else
    {
      if (*(this + 12) == 1)
      {
        llvm::APInt::zext(&v37, this, v6);
      }

      else
      {
        llvm::APInt::sext(&v37, this, v6);
      }

      v7 = *(v2 + 12);
      v33 = v38;
      v32 = v37;
      v34 = v7;
    }

    v38 = 64;
    v37 = 0;
    v39 = 0;
    v9 = llvm::APSInt::compareValues(v2, &v37);
    if (v38 >= 0x41 && v37)
    {
      v10 = v9;
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
      v9 = v10;
    }

    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v11 = *(v2 + 2);
    v38 = v11;
    if (v11 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v37, v2);
    }

    if (v11)
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
    }

    else
    {
      v12 = 0;
    }

    v37 = v12 & ~*v2;
    llvm::APInt::operator++(&v37);
    v13 = v38;
    v14 = v37;
    v15 = *(v2 + 12);
    v30 = v38;
    v29 = v37;
    v31 = v15;
    if (*(v2 + 2) > 0x40u)
    {
      v16 = llvm::APInt::equalSlowCase(v2, &v29);
      if (v13 < 0x41)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = *v2 == v37;
      if (v38 < 0x41)
      {
        goto LABEL_29;
      }
    }

    if (v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }

LABEL_29:
    if (!v16)
    {
      v38 = v33;
      if (v33 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v37, &v32);
      }

      if (v33)
      {
        v20 = 0xFFFFFFFFFFFFFFFFLL >> -v33;
      }

      else
      {
        v20 = 0;
      }

      v37 = v20 & ~v32;
      llvm::APInt::operator++(&v37);
      v27 = v38;
      v26 = v37;
      v28 = v34;
      v21 = -((8 * *(v2 + 4)) >> 19);
      if (v34)
      {
        llvm::APInt::relativeLShr(&v37, &v26, v21);
        v22 = 1;
      }

      else
      {
        llvm::APInt::relativeAShr(&v37, &v26, v21);
        v22 = 0;
      }

      v30 = v38;
      v29 = v37;
      v31 = v22;
      if (v38 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v37, &v29);
      }

      if (v38)
      {
        v23 = 0xFFFFFFFFFFFFFFFFLL >> -v38;
      }

      else
      {
        v23 = 0;
      }

      v37 = v23 & ~v37;
      this = llvm::APInt::operator++(&v37);
      v24 = v37;
      v25 = v31;
      *(a1 + 2) = v38;
      *a1 = v24;
      *(a1 + 12) = v25;
      if (v30 >= 0x41)
      {
        this = v29;
        if (v29)
        {
          this = MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }
      }

      if (v27 >= 0x41)
      {
        this = v26;
        if (v26)
        {
          this = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
        }
      }

      goto LABEL_34;
    }

LABEL_30:
    v17 = -((8 * *(v2 + 4)) >> 19);
    if (v34)
    {
      this = llvm::APInt::relativeLShr(&v37, &v32, v17);
      v18 = 1;
    }

    else
    {
      this = llvm::APInt::relativeAShr(&v37, &v32, v17);
      v18 = 0;
    }

    v19 = v37;
    *(a1 + 2) = v38;
    *a1 = v19;
    *(a1 + 12) = v18;
LABEL_34:
    if (v33 >= 0x41)
    {
      this = v32;
      if (v32)
      {
        return MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }
    }

    return this;
  }

  v36 = *(this + 4);
  if (v5 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v35, 0, 0);
  }

  v8 = *(this + 12);
  *(a1 + 2) = v5;
  *a1 = 0;
  *(a1 + 12) = v8;
  return this;
}

llvm::APFloatBase *llvm::APFixedPoint::promoteFloatSemantics(llvm::APFloatBase *a1)
{
  v2 = llvm::APFloatBase::BFloat(a1);
  if (v2 != a1)
  {
    v3 = llvm::APFloatBase::IEEEhalf(v2);
    v4 = llvm::APFloatBase::IEEEsingle(v3);
    v5 = v4;
    if (v3 != a1)
    {
      v6 = llvm::APFloatBase::IEEEdouble(v4);
      if (v5 != a1)
      {

        return llvm::APFloatBase::IEEEquad(v6);
      }

      return v6;
    }

    return v5;
  }

  return llvm::APFloatBase::IEEEdouble(v2);
}

void llvm::APFixedPoint::convertToFloat(unsigned int *a1@<X0>, llvm::APFloatBase *a2@<X1>, uint64_t a3@<X8>)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), a2);
  v7 = a2;
  if ((v6 & 1) == 0)
  {
    v6 = llvm::APFloatBase::BFloat(v6);
    v11 = v6;
    v7 = a2;
    while (1)
    {
      while (v11 == v7)
      {
        v12 = llvm::APFloatBase::IEEEdouble(v6);
LABEL_6:
        v7 = v12;
        v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), v12);
        if (v6)
        {
          goto LABEL_2;
        }
      }

      v13 = llvm::APFloatBase::IEEEhalf(v6);
      v14 = llvm::APFloatBase::IEEEsingle(v13);
      v15 = v14;
      if (v13 == v7)
      {
        v7 = v14;
        v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), v14);
        if (v6)
        {
          break;
        }
      }

      else
      {
        v12 = llvm::APFloatBase::IEEEdouble(v14);
        if (v15 == v7)
        {
          goto LABEL_6;
        }

        v7 = llvm::APFloatBase::IEEEquad(v12);
        v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), v7);
        if (v6)
        {
          break;
        }
      }
    }
  }

LABEL_2:
  v10 = llvm::APFloatBase::PPCDoubleDouble(v6);
  if (v10 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v7);
  }

  llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), v7, v8, v9);
  v16 = (a1[4] >> 29) & 1;
  v17 = (a3 + 8);
  if (v10 == *(a3 + 8))
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt(v17, a1, v16);
  }

  llvm::detail::IEEEFloat::convertFromAPInt(v17, a1, v16, 1);
  v18 = ldexp(1.0, (8 * a1[4]) >> 19);
  v22 = llvm::detail::IEEEFloat::IEEEFloat(v26, v18, v19, v20, v21);
  v23 = llvm::APFloatBase::IEEEdouble(v22);
  llvm::APFloat::Storage::Storage(v28, v26, v23);
  llvm::detail::IEEEFloat::~IEEEFloat(v26);
  LOBYTE(v26[0]) = 0;
  llvm::APFloat::convert(v27, v7, 0, v26);
  v25 = (a3 + 8);
  if (v10 != *(a3 + 8))
  {
    llvm::detail::IEEEFloat::multiply(v25, v28, 0, v24);
    if (v7 == a2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  llvm::detail::DoubleAPFloat::multiply(v25, v28, 0, v24);
  if (v7 != a2)
  {
LABEL_20:
    llvm::APFloat::convert(a3, a2, 1u, v26);
  }

LABEL_21:
  if (v10 == v28[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v28);
  }
}

void llvm::APFixedPoint::getFromIntValue(llvm::APInt *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 12);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x20000000;
  }

  v7 = v6 & 0xFFFF0000 | *(a1 + 2);
  v14 = *(a1 + 2);
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(v13, a1);
  }

  v8 = *a1;
  v10 = v4;
  v9 = v8;
  v11 = v5;
  v12 = v7;
  llvm::APFixedPoint::convert(&v9, a2, a3, a4);
  if (v10 >= 0x41)
  {
    if (v9)
    {
      MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }
}

void llvm::APFixedPoint::getFromFloatValue(llvm::APFixedPoint *this@<X0>, const llvm::APFloat *a2@<X1>, const llvm::FixedPointSemantics *a3@<X2>, uint64_t a4@<X8>)
{
  v66[3] = *MEMORY[0x277D85DE8];
  v9 = (this + 8);
  v8 = *(this + 1);
  v10 = llvm::APFloatBase::PPCDoubleDouble(this);
  v11 = *(this + 2);
  if (v10 != v8)
  {
    v11 = this;
  }

  if ((*(v11 + 28) & 7) != 1)
  {
    v12 = v10;
    v13 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v8);
    if (v13)
    {
      v14 = v8;
LABEL_11:
      if (v12 == *v9)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v66, v9);
        v56 = 0;
        if (v8 == v14)
        {
LABEL_14:
          v15 = ldexp(1.0, -((8 * *a2) >> 19));
          v19 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v15, v16, v17, v18);
          v20 = llvm::APFloatBase::IEEEdouble(v19);
          llvm::APFloat::Storage::Storage(v64, &v61, v20);
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
          llvm::APFloat::convert(v63, v14, 0, &v56);
          if (v12 == v66[0])
          {
            llvm::detail::DoubleAPFloat::multiply(v66, v64, 0, v21);
            v22 = *a2;
            v54 = *a2;
            if (v54 <= 0x40)
            {
              goto LABEL_16;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::multiply(v66, v64, 0, v21);
            v22 = *a2;
            v54 = *a2;
            if (v54 <= 0x40)
            {
LABEL_16:
              v53 = 0;
              v55 = (v22 & 0x20000000) == 0;
              llvm::APFloat::convertToInteger(v65, &v53, 0, &v56);
              v29 = ldexp(1.0, (8 * *a2) >> 19);
              llvm::detail::IEEEFloat::IEEEFloat(&v59, v29, v30, v31, v32);
              llvm::APFloat::Storage::Storage(&v62, &v59, v20);
              llvm::detail::IEEEFloat::~IEEEFloat(&v59);
              llvm::APFloat::Storage::operator=(v64, &v62);
              if (v12 == v62.n128_u64[0])
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v62);
              }

              else
              {
                llvm::detail::IEEEFloat::~IEEEFloat(&v62);
              }

              llvm::APFloat::convert(v63, v14, 0, &v56);
              if (v12 == v66[0])
              {
                llvm::detail::DoubleAPFloat::roundToIntegral(v66, 0, v33, v34);
              }

              llvm::detail::IEEEFloat::roundToIntegral(v66, 0, v33, v34);
              if (v12 == v66[0])
              {
                llvm::detail::DoubleAPFloat::multiply(v66, v64, 0, v35);
              }

              else
              {
                llvm::detail::IEEEFloat::multiply(v66, v64, 0, v35);
              }

              llvm::APFixedPoint::getMax(a2, &v59);
              llvm::APFixedPoint::convertToFloat(&v59, v14, &v61);
              if (LODWORD(v60[0]) >= 0x41 && v59)
              {
                MEMORY[0x259C63150](v59, 0x1000C8000313F17);
              }

              llvm::APFixedPoint::getMin(a2, &v50);
              llvm::APFixedPoint::convertToFloat(&v50, v14, &v59);
              if (v51 >= 0x41 && v50)
              {
                MEMORY[0x259C63150](v50, 0x1000C8000313F17);
              }

              if ((*(a2 + 3) & 0x40) == 0)
              {
                if (v12 == v66[0])
                {
                  if (llvm::detail::DoubleAPFloat::compare(v66, &v62, v36, v37) == 2)
                  {
                    goto LABEL_48;
                  }
                }

                else if (llvm::detail::IEEEFloat::compare(v66, &v62, v36, v37) == 2)
                {
LABEL_48:
                  v40 = 1;
                  goto LABEL_69;
                }

                if (v12 == v66[0])
                {
                  v46 = llvm::detail::DoubleAPFloat::compare(v66, v60, v38, v39);
                }

                else
                {
                  v46 = llvm::detail::IEEEFloat::compare(v66, v60, v38, v39);
                }

                v40 = v46 == 0;
LABEL_69:
                if (a3)
                {
                  *a3 = v40;
                }

                v51 = v54;
                if (v54 >= 0x41)
                {
                  llvm::APInt::initSlowCase(&v50, &v53);
                }

                v47 = v53;
                v48 = *a2;
                v49 = (*a2 & 0x20000000) == 0;
                *(a4 + 8) = v54;
                *a4 = v47;
                *(a4 + 12) = v49;
                *(a4 + 16) = v48;
                if (v12 == v60[0])
                {
                  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v60);
                  if (v12 != v62.n128_u64[0])
                  {
LABEL_76:
                    llvm::detail::IEEEFloat::~IEEEFloat(&v62);
                    if (v54 < 0x41)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_80;
                  }
                }

                else
                {
                  llvm::detail::IEEEFloat::~IEEEFloat(v60);
                  if (v12 != v62.n128_u64[0])
                  {
                    goto LABEL_76;
                  }
                }

                llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v62);
                if (v54 < 0x41)
                {
                  goto LABEL_82;
                }

LABEL_80:
                if (v53)
                {
                  MEMORY[0x259C63150](v53, 0x1000C8000313F17);
                }

LABEL_82:
                if (v12 == v64[0])
                {
                  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v64);
                  if (v12 != v66[0])
                  {
                    goto LABEL_84;
                  }
                }

                else
                {
                  llvm::detail::IEEEFloat::~IEEEFloat(v64);
                  if (v12 != v66[0])
                  {
LABEL_84:
                    llvm::detail::IEEEFloat::~IEEEFloat(v66);
                    return;
                  }
                }

                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v66);
                return;
              }

              if (v12 == v66[0])
              {
                if (llvm::detail::DoubleAPFloat::compare(v66, &v62, v36, v37) == 2)
                {
LABEL_51:
                  llvm::APFixedPoint::getMax(a2, &v50);
                  v43 = v51;
                  v58 = v51;
                  if (v51 >= 0x41)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_53;
                }
              }

              else if (llvm::detail::IEEEFloat::compare(v66, &v62, v36, v37) == 2)
              {
                goto LABEL_51;
              }

              if (v12 == v66[0])
              {
                if (llvm::detail::DoubleAPFloat::compare(v66, v60, v41, v42))
                {
                  goto LABEL_66;
                }
              }

              else if (llvm::detail::IEEEFloat::compare(v66, v60, v41, v42))
              {
LABEL_66:
                v40 = 0;
                goto LABEL_69;
              }

              llvm::APFixedPoint::getMin(a2, &v50);
              v43 = v51;
              v58 = v51;
              if (v51 >= 0x41)
              {
LABEL_52:
                llvm::APInt::initSlowCase(v57, &v50);
              }

LABEL_53:
              v44 = v50;
              v45 = (v52 & 0x20000000) == 0;
              if (v54 >= 0x41 && v53)
              {
                MEMORY[0x259C63150](v53, 0x1000C8000313F17);
              }

              v53 = v44;
              v54 = v43;
              v55 = v45;
              if (v51 >= 0x41 && v50)
              {
                MEMORY[0x259C63150](v50, 0x1000C8000313F17);
              }

              v40 = 0;
              goto LABEL_69;
            }
          }

          llvm::APInt::initSlowCase(&v53, 0, 0);
        }
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v66, v9);
        v56 = 0;
        if (v8 == v14)
        {
          goto LABEL_14;
        }
      }

      llvm::APFloat::convert(v65, v14, 0, &v56);
      goto LABEL_14;
    }

    v23 = llvm::APFloatBase::BFloat(v13);
    v24 = v23;
    v14 = v8;
    while (1)
    {
      while (v24 == v14)
      {
        v25 = llvm::APFloatBase::IEEEdouble(v23);
LABEL_19:
        v14 = v25;
        v23 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v25);
        if (v23)
        {
          goto LABEL_11;
        }
      }

      v26 = llvm::APFloatBase::IEEEhalf(v23);
      v27 = llvm::APFloatBase::IEEEsingle(v26);
      v28 = v27;
      if (v26 == v14)
      {
        v14 = v27;
        v23 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v27);
        if (v23)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v25 = llvm::APFloatBase::IEEEdouble(v27);
        if (v28 == v14)
        {
          goto LABEL_19;
        }

        v14 = llvm::APFloatBase::IEEEquad(v25);
        v23 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v14);
        if (v23)
        {
          goto LABEL_11;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = 1;
  }

  llvm::APFixedPoint::APFixedPoint(a4, 0, a2);
}

uint64_t *llvm::APInt::relativeAShr@<X0>(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, signed int a3@<W1>)
{
  if (a3 < 1)
  {
    v11 = -a3;
    v12 = *(this + 2);
    *(a1 + 2) = v12;
    if (v12 >= 0x41)
    {
      llvm::APInt::initSlowCase(a1, this);
    }

    v13 = *this << v11;
    if (v12 == v11)
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -v12;
    }

    else
    {
      v14 = 0;
    }

    *a1 = v14 & v13;
  }

  else
  {
    v4 = *(this + 2);
    *(a1 + 2) = v4;
    if (v4 >= 0x41)
    {
      llvm::APInt::initSlowCase(a1, this);
    }

    if (v4 == a3)
    {
      v5 = 63;
    }

    else
    {
      v5 = a3;
    }

    v6 = -v4;
    v7 = v4 == 0;
    if (v4)
    {
      v8 = *this << -v4 >> -v4;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 >> v5;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> v6;
    if (v7)
    {
      v10 = 0;
    }

    *a1 = v9 & v10;
  }

  return this;
}

uint64_t *llvm::APInt::relativeLShr@<X0>(unint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, signed int a3@<W1>)
{
  if (a3 < 1)
  {
    v5 = -a3;
    v6 = *(this + 2);
    *(a1 + 2) = v6;
    if (v6 >= 0x41)
    {
      llvm::APInt::initSlowCase(a1, this);
    }

    v7 = *this << v5;
    if (v6 == v5)
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v8 = 0;
    }

    *a1 = v8 & v7;
  }

  else
  {
    v4 = *(this + 2);
    *(a1 + 2) = v4;
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(a1, this);
    }

    *a1 = *this;
    if (v4 == a3)
    {
      *a1 = 0;
    }

    else
    {
      *a1 >>= a3;
    }
  }

  return this;
}

uint64_t llvm::APSInt::compareValues(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3 && *(a1 + 12) == *(a2 + 12))
  {
    if (!*(a1 + 12))
    {

      return llvm::APInt::compareSigned(a1, a2);
    }

    goto LABEL_31;
  }

  if (v2 <= v3)
  {
    if (v3 <= v2)
    {
      if (*(a1 + 12))
      {
        if ((*(a2 + 12) & 1) == 0)
        {
          v10 = v3 - 1;
          v11 = (v3 >= 0x41 ? *a2 + 8 * ((v3 - 1) >> 6) : a2);
          if ((*v11 >> v10))
          {
            return 1;
          }
        }
      }

      else
      {
        v14 = (*a1 + 8 * ((v2 - 1) >> 6));
        if (v2 < 0x41)
        {
          v14 = a1;
        }

        if ((*v14 >> (v2 - 1)))
        {
          return 0xFFFFFFFFLL;
        }
      }

LABEL_31:

      return llvm::APInt::compare(a1, a2);
    }

    if (*(a1 + 12) == 1)
    {
      llvm::APInt::zext(&v18, a1, *(a2 + 8));
    }

    else
    {
      llvm::APInt::sext(&v18, a1, *(a2 + 8));
    }

    v12 = *(a1 + 12);
    v16 = v19;
    v15 = v18;
    v17 = v12;
    result = llvm::APSInt::compareValues(&v15, a2);
    if (v16 < 0x41)
    {
      return result;
    }
  }

  else
  {
    if (*(a2 + 12) == 1)
    {
      llvm::APInt::zext(&v18, a2, v2);
    }

    else
    {
      llvm::APInt::sext(&v18, a2, v2);
    }

    v9 = *(a2 + 12);
    v16 = v19;
    v15 = v18;
    v17 = v9;
    result = llvm::APSInt::compareValues(a1, &v15);
    if (v16 < 0x41)
    {
      return result;
    }
  }

  if (v15)
  {
    v13 = result;
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    return v13;
  }

  return result;
}

uint64_t llvm::APFixedPoint::APFixedPoint(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *a3;
  v8 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, a2, (v3 >> 29) & 1);
  }

  v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (!v4)
  {
    v5 = 0;
  }

  v7 = v5 & a2;
  v6 = (*a3 & 0x20000000) == 0;
  *(a1 + 8) = v4;
  *a1 = v5 & a2;
  *(a1 + 12) = v6;
  *(a1 + 16) = *a3;
  return a1;
}

uint64_t llvm::APFloatBase::SemanticsToEnum(void *a1)
{
  if (a1 == &llvm::semIEEEhalf)
  {
    return 0;
  }

  if (a1 == &llvm::semBFloat)
  {
    return 1;
  }

  if (a1 == &llvm::semIEEEsingle)
  {
    return 2;
  }

  if (a1 == &llvm::semIEEEdouble)
  {
    return 3;
  }

  if (a1 == &llvm::semIEEEquad)
  {
    return 4;
  }

  if (a1 == &llvm::semPPCDoubleDouble)
  {
    return 5;
  }

  if (a1 == &llvm::semFloat8E5M2)
  {
    return 6;
  }

  if (a1 == &llvm::semFloat8E5M2FNUZ)
  {
    return 7;
  }

  if (a1 == &llvm::semFloat8E4M3)
  {
    return 8;
  }

  if (a1 == &llvm::semFloat8E4M3FN)
  {
    return 9;
  }

  if (a1 == &llvm::semFloat8E4M3FNUZ)
  {
    return 10;
  }

  if (a1 == &llvm::semFloat8E4M3B11FNUZ)
  {
    return 11;
  }

  if (a1 == &llvm::semFloat8E3M4)
  {
    return 12;
  }

  if (a1 == &llvm::semFloatTF32)
  {
    return 13;
  }

  if (a1 == &llvm::semFloat6E3M2FN)
  {
    return 14;
  }

  if (a1 == &llvm::semFloat6E2M3FN)
  {
    return 15;
  }

  if (a1 == &llvm::semFloat4E2M1FN)
  {
    return 16;
  }

  return 17;
}

uint64_t llvm::APFloatBase::semanticsIntSizeInBits(_DWORD *a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return (*a1 + v2);
}

void *llvm::detail::IEEEFloat::initialize(void *result, uint64_t a2)
{
  *result = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  return result;
}

void *llvm::detail::IEEEFloat::freeSignificand(void *this)
{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    this = this[1];
    if (this)
    {
      JUMPOUT(0x259C63150);
    }
  }

  return this;
}

uint64_t *llvm::detail::IEEEFloat::assign(uint64_t *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v4 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v4;
  v5 = *(a2 + 20);
  v6 = v5 & 7;
  *(this + 20) = v4 & 0xF8 | v5 & 7;
  *(this + 4) = *(a2 + 4);
  v8 = (v5 & 6) != 0 && v6 != 3;
  if (v6 == 1 || v8)
  {
    v11 = *this;
    v10 = this + 1;
    v12 = *(v11 + 8);
    if ((v12 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    v13 = *(*a2 + 8) - 64;
    v16 = *(a2 + 1);
    v14 = (a2 + 8);
    v15 = v16;
    if (v13 < 0xFFFFFF80)
    {
      v14 = v15;
    }

    return llvm::APInt::tcAssign(v10, v14, ((v12 + 64) >> 6));
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::copySignificand(llvm::detail::IEEEFloat *this, unint64_t **a2, uint64_t a3, unsigned int a4)
{
  v5 = *this;
  v4 = (this + 8);
  v6 = *(v5 + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  v7 = *(*a2 + 2) - 64;
  v10 = a2[1];
  v8 = (a2 + 1);
  v9 = v10;
  if (v7 < 0xFFFFFF80)
  {
    v8 = v9;
  }

  return llvm::APInt::tcAssign(v4, v8, ((v6 + 64) >> 6));
}

uint64_t llvm::detail::IEEEFloat::significandParts(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  result = this + 8;
  if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
  {
    return *result;
  }

  return result;
}

{
  v2 = *this;
  result = this + 8;
  if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
  {
    return *result;
  }

  return result;
}

void llvm::detail::IEEEFloat::makeNaN(llvm::detail::IEEEFloat *this, int a2, int a3, const llvm::APInt *a4)
{
  v4 = a4;
  v7 = *this;
  v8 = *(this + 20) & 0xF0;
  if (a3)
  {
    v9 = 9;
  }

  else
  {
    v9 = 1;
  }

  *(this + 20) = v9 | v8;
  v10 = v7[4];
  if (v10 != 1)
  {
    *(this + 4) = *v7 + 1;
    v11 = v7[2];
    v12 = (this + 8);
    if ((v11 - 64) > 0xFFFFFF7F)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7[5] == 2)
  {
    *(this + 4) = v7[1] - 1;
    v11 = v7[2];
    v12 = (this + 8);
    if ((v11 - 64) > 0xFFFFFF7F)
    {
      goto LABEL_10;
    }

LABEL_9:
    v12 = *v12;
    goto LABEL_10;
  }

  *(this + 4) = *v7;
  v11 = v7[2];
  v12 = (this + 8);
  if ((v11 - 64) <= 0xFFFFFF7F)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = ((v11 + 64) >> 6);
  v33 = 1;
  v32 = 0;
  if (v10 == 1)
  {
    v14 = &v33;
    if (v7[5] == 2)
    {
      *(this + 20) = v8 | 9;
      v31 = v7[2] - 1;
      if (v31 <= 0x40)
      {
        v30 = 0;
        goto LABEL_30;
      }

      v20 = 0;
      v21 = 0;
    }

    else
    {
      v31 = v11 - 1;
      if ((v11 - 1) <= 0x40)
      {
        if (v11 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0xFFFFFFFFFFFFFFFFLL >> ~(v11 + 62);
        }

        v30 = v16;
LABEL_30:
        a2 = 0;
        v32 = v30;
        v15 = v31;
        v33 = v31;
        v4 = &v32;
        if (v13 <= ((v31 + 63) >> 6))
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v20 = -1;
      v21 = 1;
    }

    llvm::APInt::initSlowCase(&v30, v20, v21);
  }

  if (a4)
  {
    v14 = (a4 + 8);
    v15 = *(a4 + 2);
    if (v13 <= ((v15 + 63) >> 6))
    {
LABEL_32:
      if (v15 >= 0x41)
      {
        v4 = *v4;
      }

      v22 = (v15 + 63) >> 6;
      if (v13 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v13;
      }

      llvm::APInt::tcAssign(v12, v4, v23);
      v17 = *this;
      v18 = *(*this + 8);
      v24 = (v18 - 1) >> 6;
      *(v12 + v24) &= ~(-1 << (v18 - 1));
      v25 = v24 + 1;
      if (v24 + 1 != v13)
      {
        v26 = v13 + ~v24;
        if (v26 < 0xA)
        {
          v27 = v24 + 1;
        }

        else if (v13 - 1 <= v24)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = v25 + (v26 & 0xFFFFFFFC);
          v28 = v26 & 0xFFFFFFFC;
          do
          {
            v29 = (v12 + 8 * v25);
            *v29 = 0uLL;
            v29[1] = 0uLL;
            v25 += 4;
            v28 -= 4;
          }

          while (v28);
          if (v26 == (v26 & 0xFFFFFFFC))
          {
            goto LABEL_47;
          }
        }

        do
        {
          *(v12 + v27++) = 0;
        }

        while (v13 != v27);
      }

LABEL_47:
      v19 = (v18 - 2);
      if (a2)
      {
        goto LABEL_48;
      }

      goto LABEL_25;
    }

LABEL_31:
    llvm::APInt::tcSet(v12, 0, v13);
    v15 = *v14;
    goto LABEL_32;
  }

  llvm::APInt::tcSet(v12, 0, (v11 + 64) >> 6);
  v17 = *this;
  v18 = *(*this + 8);
  v19 = (v18 - 2);
  if (a2)
  {
LABEL_48:
    llvm::APInt::tcClearBit(v12, v19);
    if (!llvm::APInt::tcIsZero(v12, v13))
    {
      goto LABEL_51;
    }

    v19 = (v18 - 3);
    goto LABEL_50;
  }

LABEL_25:
  if (*(v17 + 20) != 2)
  {
LABEL_50:
    llvm::APInt::tcSetBit(v12, v19);
  }

LABEL_51:
  if (*this == &llvm::semX87DoubleExtended)
  {
    llvm::APInt::tcSetBit(v12, (v18 - 1));
    if (v33 < 0x41)
    {
      return;
    }
  }

  else if (v33 < 0x41)
  {
    return;
  }

  if (v32)
  {
    MEMORY[0x259C63150](v32, 0x1000C8000313F17);
  }
}

uint64_t llvm::detail::IEEEFloat::exponentNaN(llvm::detail::IEEEFloat *this)
{
  v1 = *this;
  if (*(*this + 16) != 1)
  {
    return *v1 + 1;
  }

  if (v1[5] == 2)
  {
    return v1[1] - 1;
  }

  return *v1;
}

void *llvm::detail::IEEEFloat::operator=(void *this, void *a2, uint64_t a3, uint64_t a4)
{
  if (this != a2)
  {
    v4 = *a2;
    if (*this != *a2)
    {
      if ((*(*this + 8) - 64) <= 0xFFFFFF7F && this[1])
      {
        v5 = this;
        v6 = a2;
        MEMORY[0x259C63150](this[1], 0x1000C8000313F17, a3, a4);
        a2 = v6;
        this = v5;
        v4 = *v6;
      }

      *this = v4;
      if ((*(v4 + 8) + 64) >= 0x80)
      {
        operator new[]();
      }
    }

    v7 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
    *(this + 20) = v7;
    v8 = *(a2 + 20);
    v9 = v8 & 7;
    *(this + 20) = v7 & 0xF8 | v8 & 7;
    *(this + 4) = *(a2 + 4);
    v11 = (v8 & 6) != 0 && v9 != 3;
    if (v9 == 1 || v11)
    {
      v13 = this + 1;
      v14 = *(*this + 8);
      v15 = this;
      if ((v14 - 64) <= 0xFFFFFF7F)
      {
        v13 = *v13;
      }

      v16 = *(*a2 + 8) - 64;
      v19 = a2[1];
      v17 = a2 + 1;
      v18 = v19;
      if (v16 < 0xFFFFFF80)
      {
        v17 = v18;
      }

      llvm::APInt::tcAssign(v13, v17, ((v14 + 64) >> 6));
      return v15;
    }
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::operator=(uint64_t result, uint64_t a2)
{
  if ((*(*result + 8) - 64) <= 0xFFFFFF7F)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = result;
      v4 = a2;
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
      a2 = v4;
      result = v3;
    }
  }

  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v5 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v5;
  *(result + 20) = v5 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

BOOL llvm::detail::IEEEFloat::isDenormal(llvm::detail::IEEEFloat *this, uint64_t a2, unsigned int a3)
{
  v3 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v3 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v4 = *(*this + 8);
  v5 = (this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  return llvm::APInt::tcExtractBit(v5, (v4 - 1)) == 0;
}

BOOL llvm::detail::IEEEFloat::isSmallest(llvm::detail::IEEEFloat *this, uint64_t a2, unsigned int a3)
{
  v3 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v3 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v4 = *(*this + 8);
  v5 = (this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  return llvm::APInt::tcMSB(v5, ((v4 + 64) >> 6)) == 0;
}

uint64_t llvm::detail::IEEEFloat::significandMSB(llvm::detail::IEEEFloat *this, uint64_t a2, unsigned int a3)
{
  v4 = *this;
  v3 = (this + 8);
  v5 = *(v4 + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return llvm::APInt::tcMSB(v3, ((v5 + 64) >> 6));
}

BOOL llvm::detail::IEEEFloat::isSmallestNormalized(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 7) != 2 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v1 = *(*this + 8);
  v2 = (this + 8);
  if ((v1 - 64) <= 0xFFFFFF7F)
  {
    v2 = *v2;
  }

  v3 = v1 + 63;
  if (v3 >> 6 != 1)
  {
    v4 = v2;
    v5 = (v3 >> 6) - 1;
    while (!*v4++)
    {
      if (!--v5)
      {
        return v2[(v3 >> 6) - 1] == 1 << v3;
      }
    }

    return 0;
  }

  return *v2 == 1 << v3;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllZerosExceptMSB(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  if (v4 >> 6 == 1)
  {
    return *v1 == 1 << v4;
  }

  v5 = (v4 >> 6) - 1;
  v6 = v1;
  while (!*v6++)
  {
    if (!--v5)
    {
      return v1[(v4 >> 6) - 1] == 1 << v4;
    }
  }

  return 0;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnes(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  v5 = (v4 >> 6) - 1;
  if (v4 >> 6 == 1)
  {
    v5 = 0;
    return (v1[v5] | (-1 << v4)) == -1;
  }

  else
  {
    v6 = (v4 >> 6) - 1;
    v7 = v1;
    while (1)
    {
      v8 = *v7++;
      if (v8 != -1)
      {
        break;
      }

      if (!--v6)
      {
        return (v1[v5] | (-1 << v4)) == -1;
      }
    }

    return 0;
  }
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnesExceptLSB(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  if (*v1)
  {
    return 0;
  }

  v4 = v3 + 63;
  v5 = (v4 >> 6) - 1;
  if (v4 >> 6 != 1)
  {
    v6 = 0;
    while ((LODWORD(v1[v6]) | (v6 == 0)) == 0xFFFFFFFF)
    {
      if ((v4 >> 6) - 1 == ++v6)
      {
        return (~(v1[v5] | (-1 << v4)) & 0x7FFFFFFFFFFFFFFELL) == 0;
      }
    }

    return 0;
  }

  v5 = 0;
  return (~(v1[v5] | (-1 << v4)) & 0x7FFFFFFFFFFFFFFELL) == 0;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllZeros(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  v5 = ((v3 + 63) >> 6) - 1;
  if ((v3 + 63) >> 6 == 1)
  {
    v5 = 0;
    return v1[v5] << ((v4 & 0xC0) - v3 + 1) == 0;
  }

  else
  {
    v6 = (v4 >> 6) - 1;
    v7 = v1;
    while (!*v7++)
    {
      if (!--v6)
      {
        return v1[v5] << ((v4 & 0xC0) - v3 + 1) == 0;
      }
    }

    return 0;
  }
}

BOOL llvm::detail::IEEEFloat::isLargest(llvm::detail::IEEEFloat *this)
{
  v1 = *this;
  if (*(*this + 16) == 1 && v1[5] == 1)
  {
    v2 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
    if (!v2 && *(this + 4) == *v1)
    {
      v3 = v1[2];
      v4 = (this + 8);
      if ((v3 - 64) <= 0xFFFFFF7F)
      {
        v4 = *v4;
      }

      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        v6 = v3 + 63;
        if (v6 >> 6 == 1)
        {
          return (~(v5 | (-1 << v6)) & 0x7FFFFFFFFFFFFFFELL) == 0;
        }

        v7 = 0;
        while ((LODWORD(v4[v7]) | (v7 == 0)) == 0xFFFFFFFF)
        {
          if ((v6 >> 6) - 1 == ++v7)
          {
            v5 = v4[(v6 >> 6) - 1];
            return (~(v5 | (-1 << v6)) & 0x7FFFFFFFFFFFFFFELL) == 0;
          }
        }
      }
    }

    return 0;
  }

  v9 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v9 || *(this + 4) != *v1)
  {
    return 0;
  }

  v10 = v1[2];
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v12 = v10 + 63;
  v13 = (v12 >> 6) - 1;
  if (v12 >> 6 != 1)
  {
    v14 = v11;
    v15 = (v12 >> 6) - 1;
    while (1)
    {
      v16 = *v14++;
      if (v16 != -1)
      {
        break;
      }

      if (!--v15)
      {
        return (v11[v13] | (-1 << v12)) == -1;
      }
    }

    return 0;
  }

  v13 = 0;
  return (v11[v13] | (-1 << v12)) == -1;
}

BOOL llvm::detail::IEEEFloat::isInteger(llvm::detail::IEEEFloat **this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *(this + 20);
  if ((v6 & 6) == 0)
  {
    return 0;
  }

  v21 = v4;
  v22 = v5;
  v7 = this;
  v8 = *this;
  v17 = v8;
  if ((*(v8 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v10 = v6 & 7;
  v20 = v6 & 0xF;
  v19 = *(this + 4);
  if (v10 == 1 || v10 != 3)
  {
    v12 = *(v8 + 8);
    if ((v12 - 64) >= 0xFFFFFF80)
    {
      this = &v18;
    }

    if ((*(*v7 + 8) - 64) >= 0xFFFFFF80)
    {
      v13 = (v7 + 8);
    }

    else
    {
      v13 = *(v7 + 1);
    }

    llvm::APInt::tcAssign(this, v13, ((v12 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::roundToIntegral(&v17, 0, a3, a4);
  result = llvm::detail::IEEEFloat::compare(v7, &v17, v14, v15) == 1;
  if ((*(v17 + 8) - 64) <= 0xFFFFFF7F)
  {
    if (v18)
    {
      v16 = result;
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      return v16;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::roundToIntegral(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = a1[20] & 7;
  if ((a1[20] & 7) == 0 || v6 == 3)
  {
    return 0;
  }

  v46 = v4;
  v47 = v5;
  if (v6 == 1)
  {
    if ((*(*a1 + 16) - 1) >= 2)
    {
      v10 = *(*a1 + 8);
      v11 = a1 + 8;
      v12 = (a1 + 8);
      if ((v10 - 64) <= 0xFFFFFF7F)
      {
        v12 = *v11;
      }

      if (!llvm::APInt::tcExtractBit(v12, (v10 - 2)))
      {
        if (*(*a1 + 16) != 1)
        {
          v13 = *(*a1 + 8);
          if ((v13 - 64) <= 0xFFFFFF7F)
          {
            v11 = *v11;
          }

          llvm::APInt::tcSetBit(v11, (v13 - 2));
        }

        return 1;
      }
    }

    return 0;
  }

  v14 = *a1;
  v15 = *(*a1 + 8);
  if (*(a1 + 4) + 1 >= v15)
  {
    return 0;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = ((v17 >> 16) | v17) + 1;
  v43 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v42, 1, 0);
  }

  v42 = v18 != 0;
  v20 = v15 - 1;
  v21 = v42 << v20;
  if (v18 == v20)
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
  }

  else
  {
    v22 = 0;
  }

  v42 = v21 & v22;
  v38 = v14;
  if ((v15 + 64) > 0x7F)
  {
    operator new[]();
  }

  v23 = v39;
  v41 = v41 & 0xF0 | 3;
  v25 = *(v14 + 4);
  v24 = *(v14 + 8);
  v40 = v25 - 1;
  if ((v24 - 64) >= 0xFFFFFF80)
  {
    v23 = &v39;
  }

  llvm::APInt::tcSet(v23, 0, (v24 + 64) >> 6);
  v45 = v43;
  if (v43 > 0x40)
  {
    llvm::APInt::initSlowCase(&v44, &v42);
  }

  v44 = v42;
  v41 &= ~8u;
  llvm::detail::IEEEFloat::convertFromUnsignedParts(&v38, &v44, ((v43 + 63) >> 6), 1);
  if (v45 >= 0x41 && v44)
  {
    MEMORY[0x259C63150](v44, 0x1000C8000313F17);
  }

  v27 = a1[20] & 8;
  v41 = v41 & 0xF7 | v27;
  v28 = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, &v38, 0, v26);
  if (v28 == 2)
  {
    v31 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v38, 0, v29, v30);
    v28 = llvm::detail::IEEEFloat::normalize(a1, a2, v31);
  }

  v32 = a1[20];
  if ((v32 & 7) == 3)
  {
    if ((v41 & 7) != 3 || ((v41 ^ v32) & 8) != 0)
    {
      LOBYTE(v32) = v32 & 0xF3 | (8 * (a2 == 3));
      a1[20] = v32;
    }

    if (*(*a1 + 20) == 2)
    {
      a1[20] = v32 & 0xF7;
    }
  }

  v33 = v28;
  if (llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, &v38, 1u, v29) == 2)
  {
    v36 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v38, 1u, v34, v35);
    llvm::detail::IEEEFloat::normalize(a1, a2, v36);
  }

  v37 = a1[20];
  if ((v37 & 7) == 3)
  {
    result = v33;
    if ((v41 & 7) == 3 && ((v41 ^ v37) & 8) != 0)
    {
      if (*(*a1 + 20) != 2)
      {
LABEL_52:
        if ((v27 != 0) == (v37 & 8) >> 3)
        {
          goto LABEL_61;
        }

LABEL_58:
        if (*(*a1 + 20) != 2 || (v37 & 5 | 2) != 3)
        {
          a1[20] = v37 ^ 8;
        }

        goto LABEL_61;
      }
    }

    else
    {
      LOBYTE(v37) = v37 & 0xF3 | (8 * (a2 == 3));
      a1[20] = v37;
      if (*(*a1 + 20) != 2)
      {
        goto LABEL_52;
      }
    }

    LOBYTE(v37) = v37 & 0xF7;
    a1[20] = v37;
    if ((v27 != 0) == (v37 & 8) >> 3)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  result = v33;
  if ((v27 != 0) != (v37 & 8) >> 3)
  {
    goto LABEL_58;
  }

LABEL_61:
  if ((*(v38 + 8) - 64) <= 0xFFFFFF7F && v39)
  {
    MEMORY[0x259C63150](v39, 0x1000C8000313F17);
    result = v33;
  }

  if (v43 >= 0x41 && v42)
  {
    MEMORY[0x259C63150](v42, 0x1000C8000313F17);
    return v33;
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::compare(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(this + 20);
  v6 = *(a2 + 20);
  v7 = 4 * (v5 & 7) + (v6 & 7);
  result = 3;
  if (v7 <= 7)
  {
    if (v7 > 3)
    {
      return result;
    }

    if ((v7 - 2) >= 2)
    {
      v9 = (v5 >> 3) & 1;
      v10 = v9 == ((v6 >> 3) & 1);
      v11 = (2 * v9) ^ 2;
      if (v10)
      {
        v11 = 1;
      }

      if (v7)
      {
        return 3;
      }

      else
      {
        return v11;
      }
    }

    return ~(v5 >> 2) & 2;
  }

  if (v7 > 11)
  {
    if (v7 > 13)
    {
      if (v7 != 14)
      {
        return 1;
      }
    }

    else if (v7 != 12)
    {
      return result;
    }

    return (v6 >> 2) & 2;
  }

  if (v7 <= 9)
  {
    if (v7 != 8)
    {
      return result;
    }

    return (v6 >> 2) & 2;
  }

  if (v7 != 10)
  {
    return ~(v5 >> 2) & 2;
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    return (2 * v12) ^ 2u;
  }

  v13 = *(this + 4) - *(a2 + 4);
  if (!v13)
  {
    v14 = (this + 8);
    v15 = *(*this + 8);
    if ((v15 - 64) <= 0xFFFFFF7F)
    {
      v14 = *v14;
    }

    v16 = *(*a2 + 8) - 64;
    v19 = *(a2 + 1);
    v17 = (a2 + 8);
    v18 = v19;
    if (v16 < 0xFFFFFF80)
    {
      v17 = v18;
    }

    v13 = llvm::APInt::tcCompare(v14, v17, ((v15 + 64) >> 6));
    LOBYTE(v5) = *(this + 20);
  }

  if (v13 <= 0)
  {
    result = v13 >= 0;
  }

  else
  {
    result = 2;
  }

  if ((v5 & 8) != 0)
  {
    v20 = v13 <= 0 && v13 >= 0;
    if (result)
    {
      return v20;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void llvm::detail::IEEEFloat::~IEEEFloat(llvm::detail::IEEEFloat *this)
{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v1 = *(this + 1);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8000313F17);
    }
  }
}

{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v1 = *(this + 1);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8000313F17);
    }
  }
}

BOOL llvm::detail::IEEEFloat::bitwiseIsEqual(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *a2;
  if (*this == *a2)
  {
    v3 = *(this + 20);
    v4 = *(a2 + 20);
    if ((v3 & 7) == (v4 & 7) && ((v4 ^ v3) & 8) == 0)
    {
      v5 = 1;
      if ((v3 & 7) == 0 || (v3 & 7) == 3)
      {
        return v5;
      }

      if ((v3 & 6) == 0 || *(this + 4) == *(a2 + 4))
      {
        v6 = *(*this + 8);
        v7 = (this + 8);
        if ((v6 - 64) <= 0xFFFFFF7F)
        {
          v7 = *v7;
        }

        v8 = v6 + 64;
        v11 = *(a2 + 1);
        v9 = a2 + 8;
        v10 = v11;
        if ((*(v2 + 8) - 64) < 0xFFFFFF80)
        {
          v9 = v10;
        }

        return memcmp(v7, v9, (v8 >> 3) & 0x1FFFFFF8) == 0;
      }
    }
  }

  return 0;
}

uint64_t *llvm::detail::IEEEFloat::IEEEFloat(uint64_t *a1, uint64_t a2, llvm::APInt *a3, unsigned int a4)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v7 = *(a2 + 8);
  v8 = (a1 + 1);
  v9 = (a1 + 1);
  if ((v7 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v8;
  }

  llvm::APInt::tcSet(v9, 0, (v7 + 64) >> 6);
  *(a1 + 4) = *(a2 + 8) - 1;
  if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  *v8 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

void llvm::detail::IEEEFloat::zeroSignificand(llvm::detail::IEEEFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = *this;
  v4 = (this + 8);
  v6 = *(v5 + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  llvm::APInt::tcSet(v4, 0, (v6 + 64) >> 6);
}

uint64_t llvm::detail::IEEEFloat::normalize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 20) & 6) == 0 || (*(a1 + 20) & 7) == 3)
  {
    return 0;
  }

  v6 = a2;
  v8 = (a1 + 8);
  v9 = *(*a1 + 8);
  v10 = (a1 + 8);
  if ((v9 - 64) <= 0xFFFFFF7F)
  {
    v10 = *v8;
  }

  v11 = llvm::APInt::tcMSB(v10, ((v9 + 64) >> 6));
  v13 = *a1;
  v14 = v11 + 1;
  if (v11 == -1)
  {
    v14 = 0;
  }

  else
  {
    v22 = v13[2];
    v23 = *(a1 + 16);
    v24 = v23 + v14 - v22;
    if (v24 > *v13)
    {
      goto LABEL_22;
    }

    v27 = v13[1];
    if (v24 >= v27)
    {
      v28 = v14 - v22;
    }

    else
    {
      v28 = v27 - v23;
    }

    if ((v28 & 0x80000000) != 0)
    {
      if ((v22 - 64) <= 0xFFFFFF7F)
      {
        v8 = *v8;
      }

      llvm::APInt::tcShiftLeft(v8, ((v22 + 64) >> 6), -v28);
      result = 0;
      *(a1 + 16) += v28;
      return result;
    }

    if (v28)
    {
      *(a1 + 16) = v28 + v23;
      v29 = v8;
      if ((v22 - 64) <= 0xFFFFFF7F)
      {
        v29 = *v8;
      }

      v30 = v22 + 64;
      v31 = ((v22 + 64) >> 6);
      v32 = llvm::APInt::tcLSB(v29, v31);
      if (v32 >= v28)
      {
        llvm::APInt::tcShiftRight(v29, (v30 >> 6), v28);
        a3 = a3 != 0;
      }

      else
      {
        if (v32 + 1 == v28)
        {
          v33 = 2;
          v34 = 3;
        }

        else if ((v30 & 0xFFFFFFC0) >= v28 && llvm::APInt::tcExtractBit(v29, (v28 - 1)))
        {
          v34 = 3;
          v33 = 3;
        }

        else
        {
          v34 = 1;
          v33 = 1;
        }

        llvm::APInt::tcShiftRight(v29, v31, v28);
        if (a3)
        {
          a3 = v34;
        }

        else
        {
          a3 = v33;
        }
      }

      if (v14 >= v28)
      {
        v14 -= v28;
      }

      else
      {
        v14 = 0;
      }

      v13 = *a1;
    }
  }

  if (v13[4] == 1 && v13[5] == 1 && *(a1 + 16) == *v13)
  {
    v15 = v13[2];
    v16 = v8;
    if ((v15 - 64) <= 0xFFFFFF7F)
    {
      v16 = *v8;
    }

    v17 = v15 + 63;
    v18 = (v17 >> 6) - 1;
    if (v17 >> 6 == 1)
    {
      v18 = 0;
LABEL_41:
      if ((*(v16 + v18) | (-1 << v17)) == 0xFFFFFFFFFFFFFFFFLL)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = v16;
      v20 = (v17 >> 6) - 1;
      while (1)
      {
        v21 = *v19;
        v19 = (v19 + 8);
        if (v21 != -1)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (!a3)
  {
    if (!v14)
    {
      v35 = *(a1 + 20) & 0xF8 | 3;
      *(a1 + 20) = v35;
      if (v13[5] == 2)
      {
        result = 0;
        *(a1 + 20) = v35 & 0xF3;
        return result;
      }
    }

    return 0;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_78;
    }

    if (a3 != 3)
    {
      if (a3 != 2 || (*(a1 + 20) & 7) == 3)
      {
        goto LABEL_78;
      }

      v36 = v8;
      if ((v13[2] - 64) <= 0xFFFFFF7F)
      {
        v36 = *v8;
      }

      Bit = llvm::APInt::tcExtractBit(v36, 0);
      v13 = *a1;
      if (!Bit)
      {
        goto LABEL_78;
      }
    }
  }

  else if (v6 == 2)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      goto LABEL_78;
    }
  }

  else if (v6 == 3)
  {
    if ((*(a1 + 20) & 8) == 0)
    {
      goto LABEL_78;
    }
  }

  else if ((a3 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_78;
  }

  if (!v14)
  {
    *(a1 + 16) = v13[1];
  }

  v38 = v13[2];
  v39 = v8;
  if ((v38 - 64) <= 0xFFFFFF7F)
  {
    v39 = *v8;
  }

  llvm::APInt::tcAddPart(v39, 1, (v38 + 64) >> 6);
  v40 = *(*a1 + 8);
  v41 = v8;
  if ((v40 - 64) <= 0xFFFFFF7F)
  {
    v41 = *v8;
  }

  v42 = llvm::APInt::tcMSB(v41, ((v40 + 64) >> 6));
  v13 = *a1;
  if (v42 != *(*a1 + 8))
  {
    v14 = v42 + 1;
    if (v13[4] != 1 || v13[5] != 1 || *(a1 + 16) != *v13 || !llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
    {
LABEL_78:
      if (v14 == v13[2])
      {
        return 16;
      }

      if (!v14)
      {
        v44 = *(a1 + 20) & 0xF8 | 3;
        *(a1 + 20) = v44;
        if (v13[5] == 2)
        {
          *(a1 + 20) = v44 & 0xF3;
        }
      }

      return 24;
    }

LABEL_22:
    v25 = a1;
    v26 = v6;
LABEL_23:

    return llvm::detail::IEEEFloat::handleOverflow(v25, v26, v12);
  }

  v43 = *(a1 + 16);
  if (v43 == *v13)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v25 = a1;
    goto LABEL_23;
  }

  *(a1 + 16) = v43 + 1;
  if ((v42 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  v45 = ((v42 + 64) >> 6);
  llvm::APInt::tcLSB(v8, v45);
  llvm::APInt::tcShiftRight(v8, v45, 1u);
  return 16;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t a1, uint64_t a2, llvm::APInt *a3, unsigned int a4)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v7 = *(a2 + 8);
  v8 = (a1 + 8);
  v9 = (a1 + 8);
  if ((v7 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v8;
  }

  llvm::APInt::tcSet(v9, 0, (v7 + 64) >> 6);
  *(a1 + 16) = *(a2 + 8) - 1;
  if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  *v8 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

uint64_t *llvm::detail::IEEEFloat::IEEEFloat(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
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

{
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

{
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

{
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

void llvm::detail::IEEEFloat::makeZero(llvm::detail::IEEEFloat *this, int a2, uint64_t a3, unsigned int a4)
{
  v4 = *(this + 20) & 0xF0;
  if (a2)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(this + 20) = v4 | v5 | 3;
  v6 = *this;
  if (*(*this + 20) == 2)
  {
    *(this + 20) = v4 | 3;
  }

  v7 = *(v6 + 8);
  *(this + 4) = *(v6 + 4) - 1;
  v8 = (this + 8);
  if ((v7 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  llvm::APInt::tcSet(v8, 0, (v7 + 64) >> 6);
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v5 = *a2;
  *this = *a2;
  if ((*(v5 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v6 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v6;
  v7 = *(a2 + 20);
  v8 = v7 & 7;
  *(this + 20) = v6 & 0xF8 | v7 & 7;
  *(this + 4) = *(a2 + 4);
  v10 = (v7 & 6) != 0 && v8 != 3;
  if (v8 == 1 || v10)
  {
    v12 = (this + 8);
    v13 = *(*this + 8);
    if ((v13 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v14 = (a2 + 8);
    }

    else
    {
      v14 = *(a2 + 1);
    }

    llvm::APInt::tcAssign(v12, v14, ((v13 + 64) >> 6));
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t result, uint64_t a2)
{
  *result = &llvm::semBogus;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v2 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v2;
  *(result + 20) = v2 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

{
  *result = &llvm::semBogus;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v2 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v2;
  *(result + 20) = v2 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

uint64_t llvm::detail::IEEEFloat::incrementSignificand(llvm::detail::IEEEFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = *this;
  v4 = (this + 8);
  v6 = *(v5 + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  return llvm::APInt::tcAddPart(v4, 1, (v6 + 64) >> 6);
}

BOOL llvm::detail::IEEEFloat::addSignificand(llvm::detail::IEEEFloat *this, unint64_t **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = *this;
  v5 = (this + 8);
  v7 = *(v6 + 8);
  if ((v7 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  v8 = *(*a2 + 2) - 64;
  v11 = a2[1];
  v9 = (a2 + 1);
  v10 = v11;
  if (v8 < 0xFFFFFF80)
  {
    v9 = v10;
  }

  return llvm::APInt::tcAdd(v5, v9, 0, (v7 + 64) >> 6);
}

unint64_t llvm::detail::IEEEFloat::subtractSignificand(llvm::detail::IEEEFloat *this, unint64_t **a2, const unint64_t *a3, uint64_t a4, unsigned int a5)
{
  v6 = *this;
  v5 = (this + 8);
  v7 = *(v6 + 8);
  if ((v7 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  v8 = *(*a2 + 2) - 64;
  v11 = a2[1];
  v9 = (a2 + 1);
  v10 = v11;
  if (v8 < 0xFFFFFF80)
  {
    v9 = v10;
  }

  return llvm::APInt::tcSubtract(v5, v9, a3, (v7 + 64) >> 6);
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v9 = *(*a1 + 2);
  v10 = 2 * v9;
  v11 = ((2 * v9 + 64) >> 6);
  if (2 * v9 + 64 >= 0x140)
  {
    operator new[]();
  }

  v12 = a1 + 1;
  v13 = (a1 + 1);
  if (v9 - 64 <= 0xFFFFFF7F)
  {
    v13 = *v12;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v14 = (a2 + 8);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v46 = v13;
  llvm::APInt::tcFullMultiply(v54, v13, v14, ((v9 + 64) >> 6), ((v9 + 64) >> 6));
  v15 = llvm::APInt::tcMSB(v54, v11);
  v16 = v15 + 1;
  v17 = *(a2 + 16) + *(a1 + 4) + 2;
  *(a1 + 4) = v17;
  if ((*(a3 + 20) & 7) == 3)
  {
    v18 = 0;
    *(a1 + 4) = v17 + ~v9;
    v19 = v16 - v9;
    if (v16 <= v9)
    {
      goto LABEL_52;
    }

    goto LABEL_40;
  }

  v20 = *a1;
  v44 = *a1;
  v45 = a1[1];
  if (v10 != v16)
  {
    llvm::APInt::tcShiftLeft(v54, v11, v10 - v16);
    *(a1 + 4) -= v10 - v16;
    v20 = *a1;
  }

  v21 = *(v20 + 2);
  v51 = *v20;
  v52 = v21;
  DWORD2(v51) = (2 * v9) | 1;
  v22 = v54;
  if (v11 == 1)
  {
    v22 = v54[0];
  }

  *a1 = &v51;
  a1[1] = v22;
  v23 = *a3;
  v47 = v23;
  if ((*(v23 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v24 = *(a3 + 20);
  v25 = v24 & 7;
  v50 = v24 & 0xF;
  v49 = *(a3 + 4);
  v27 = (v24 & 6) != 0 && v25 != 3;
  if (v25 == 1 || v27)
  {
    v28 = *(v23 + 8);
    if ((v28 - 64) >= 0xFFFFFF80)
    {
      v15 = &v48;
    }

    v29 = *(*a3 + 8) - 64;
    v32 = a3[1];
    v31 = a3 + 1;
    v30 = v32;
    if (v29 >= 0xFFFFFF80)
    {
      v33 = v31;
    }

    else
    {
      v33 = v30;
    }

    llvm::APInt::tcAssign(v15, v33, ((v28 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v47, &v51, 0, &v53);
  ++v49;
  v34 = *(v47 + 8);
  if ((v34 - 64) >= 0xFFFFFF80)
  {
    v35 = &v48;
  }

  else
  {
    v35 = v48;
  }

  v36 = ((v34 + 64) >> 6);
  llvm::APInt::tcLSB(v35, v36);
  llvm::APInt::tcShiftRight(v35, v36, 1u);
  v18 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v47, 0, v37, v38);
  if (v11 == 1)
  {
    v54[0] = *v12;
  }

  *a1 = v44;
  a1[1] = v45;
  v16 = llvm::APInt::tcMSB(v54, v11) + 1;
  if ((*(v47 + 8) - 64) <= 0xFFFFFF7F && v48)
  {
    MEMORY[0x259C63150](v48, 0x1000C8000313F17);
  }

  *(a1 + 4) += ~v9;
  v19 = v16 - v9;
  if (v16 > v9)
  {
LABEL_40:
    v39 = v16 + 63;
    v40 = llvm::APInt::tcLSB(v54, ((v16 + 63) >> 6));
    if (v40 >= v19)
    {
      llvm::APInt::tcShiftRight(v54, (v39 >> 6), v19);
      v18 = v18 != 0;
    }

    else
    {
      if (v40 + 1 == v19)
      {
        v41 = 2;
        v42 = 3;
      }

      else if ((v39 & 0xFFFFFFC0) >= v19 && llvm::APInt::tcExtractBit(v54, (v19 - 1)))
      {
        v42 = 3;
        v41 = 3;
      }

      else
      {
        v42 = 1;
        v41 = 1;
      }

      llvm::APInt::tcShiftRight(v54, ((v16 + 63) >> 6), v19);
      if (v18)
      {
        v18 = v42;
      }

      else
      {
        v18 = v41;
      }
    }

    *(a1 + 4) += v19;
  }

LABEL_52:
  llvm::APInt::tcAssign(v46, v54, ((v9 + 64) >> 6));
  if (2 * v9 + 64 >= 0x140)
  {
    MEMORY[0x259C63150](v54, 0x1000C8000313F17);
  }

  return v18;
}

uint64_t llvm::detail::IEEEFloat::convert(uint64_t *a1, uint64_t a2, unsigned int a3, BOOL *a4)
{
  v7 = *a1;
  if ((*(a1 + 20) & 7) == 1 && (*(v7 + 16) - 1) >= 2)
  {
    v9 = *(v7 + 8);
    v10 = (a1 + 1);
    if ((v9 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    v54 = llvm::APInt::tcExtractBit(v10, (v9 - 2)) == 0;
    v8 = *a1;
  }

  else
  {
    v54 = 0;
    v8 = *a1;
  }

  v11 = 0;
  v12 = *(a2 + 8);
  v13 = v12 + 64;
  v14 = *(v8 + 8);
  v15 = v14 + 64;
  v16 = (v14 + 64) >> 6;
  v17 = v12 - *(v7 + 8);
  if (a2 == &llvm::semX87DoubleExtended || v7 != &llvm::semX87DoubleExtended)
  {
LABEL_16:
    v53 = v11;
    v19 = (v13 >> 6);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_19;
  }

  if ((*(a1 + 20) & 7) != 1)
  {
    goto LABEL_18;
  }

  if ((v14 - 64) > 0xFFFFFF7F)
  {
    v18 = a1[1];
    if (v18 < 0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v18 = *a1[1];
  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  if ((v18 & 0x4000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v53 = 0;
  v19 = (v13 >> 6);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  if ((*(a1 + 20) & 6) != 0 && (*(a1 + 20) & 7) != 3)
  {
    v20 = (a1 + 1);
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v20 = *v20;
    }

    v21 = llvm::APInt::tcMSB(v20, (v15 >> 6));
    v22 = v21 + 1 - *(v7 + 8);
    v23 = *(a1 + 4);
    v24 = *(a2 + 4);
    if ((v23 + v22) < v24)
    {
      v22 = v24 - v23;
    }

    if ((v22 & 0x80000000) != 0)
    {
      if (v22 <= v17)
      {
        v26 = v17;
      }

      else
      {
        v26 = v22;
      }

      v17 -= v26;
      *(a1 + 4) = v26 + v23;
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v21 + 1 <= -v17)
    {
      v25 = v21 + v17;
      v17 = -v21;
      *(a1 + 4) = v25 + v23;
      if ((-v21 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  v27 = *(a1 + 20) & 7;
  if ((*(a1 + 20) & 6) != 0 && v27 != 3)
  {
    v28 = *a1;
    goto LABEL_36;
  }

  if (v27 != 1 || (v28 = *a1, *(*a1 + 16) == 1))
  {
LABEL_43:
    v32 = 0;
    if (v19 <= v16)
    {
      goto LABEL_50;
    }

LABEL_44:
    operator new[]();
  }

LABEL_36:
  v29 = (a1 + 1);
  v52 = a4;
  if ((*(v28 + 8) - 64) <= 0xFFFFFF7F)
  {
    v29 = *v29;
  }

  v30 = -v17;
  v31 = llvm::APInt::tcLSB(v29, (v15 >> 6));
  v32 = 0;
  if (v31 < -v17)
  {
    if (v31 + 1 == v30)
    {
      v32 = 2;
    }

    else if ((v15 & 0xFFFFFFC0) >= v30 && llvm::APInt::tcExtractBit(v29, ~v17))
    {
      v32 = 3;
    }

    else
    {
      v32 = 1;
    }
  }

  llvm::APInt::tcShiftRight(v29, (v15 >> 6), -v17);
  a4 = v52;
  if (v19 > v16)
  {
    goto LABEL_44;
  }

LABEL_50:
  if (v19 == 1 && v16 != 1)
  {
    v34 = *(a1 + 20) & 7;
    v36 = (*(a1 + 20) & 6) != 0 && v34 != 3;
    v37 = *(*a1 + 8) - 64;
    if (v34 == 1 || v36)
    {
      v39 = a1 + 1;
      if (v37 <= 0xFFFFFF7F)
      {
        v39 = *v39;
      }

      v38 = *v39;
      if (v37 > 0xFFFFFF7F)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v38 = 0;
      if (v37 > 0xFFFFFF7F)
      {
LABEL_69:
        a1[1] = v38;
        goto LABEL_70;
      }
    }

    v40 = a1[1];
    if (v40)
    {
      MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }

    goto LABEL_69;
  }

LABEL_70:
  *a1 = a2;
  v41 = *(a1 + 20);
  if (v17 >= 1)
  {
    v42 = v41 & 7;
    v43 = (v41 & 6) == 0 || v42 == 3;
    v44 = !v43;
    if (v42 == 1 || v44)
    {
      v45 = (a1 + 1);
      if ((*(a2 + 8) - 64) <= 0xFFFFFF7F)
      {
        v45 = *v45;
      }

      llvm::APInt::tcShiftLeft(v45, v19, v17);
      v41 = *(a1 + 20);
    }
  }

  v46 = v41 & 7;
  if ((v41 & 6) != 0 && v46 != 3)
  {
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v32);
    *a4 = result != 0;
    return result;
  }

  if ((v41 & 7) == 0)
  {
    if (*(*a1 + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v41 >> 3) & 1, 0);
      *a4 = 1;
      return 16;
    }

    goto LABEL_97;
  }

  if (v46 == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      v48 = (*(v7 + 20) != 2) & (v41 >> 3);
      *a4 = v48;
      if (v48)
      {
        result = 16;
      }

      else
      {
        result = 0;
      }

      *(a1 + 20) &= ~8u;
      return result;
    }

LABEL_97:
    result = 0;
    *a4 = 0;
    return result;
  }

  if (v46 != 1)
  {
    goto LABEL_97;
  }

  if (*(*a1 + 16) == 1)
  {
    *a4 = *(v7 + 16) != 1;
    llvm::detail::IEEEFloat::makeNaN(a1, 0, (*(a1 + 20) >> 3) & 1, 0);
    return v54;
  }

  else
  {
    if (*(v7 + 20) == 2 && *(*a1 + 20) != 2)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, 0, 0);
    }

    if (v32)
    {
      v49 = 1;
    }

    else
    {
      v49 = v53;
    }

    *a4 = v49;
    if ((v53 & 1) == 0 && *a1 == &llvm::semX87DoubleExtended)
    {
      llvm::APInt::tcSetBit(a1[1], 0x3F);
    }

    if (v54)
    {
      if (*(*a1 + 16) == 1)
      {
        return 1;
      }

      else
      {
        v50 = *(*a1 + 8);
        v51 = a1 + 1;
        if ((v50 - 64) <= 0xFFFFFF7F)
        {
          v51 = *v51;
        }

        llvm::APInt::tcSetBit(v51, (v50 - 2));
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t llvm::detail::IEEEFloat::shiftSignificandRight(llvm::detail::IEEEFloat *this, unsigned int a2, unsigned int a3)
{
  *(this + 4) += a2;
  v4 = *(*this + 8);
  v5 = (this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  v6 = v4 + 64;
  v7 = ((v4 + 64) >> 6);
  v8 = llvm::APInt::tcLSB(v5, v7);
  if (v8 >= a2)
  {
    v9 = 0;
  }

  else if (v8 + 1 == a2)
  {
    v9 = 2;
  }

  else if ((v6 & 0xFFFFFFC0) >= a2 && llvm::APInt::tcExtractBit(v5, (a2 - 1)))
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  llvm::APInt::tcShiftRight(v5, v7, a2);
  return v9;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSignificand(llvm::detail::IEEEFloat ***this, const llvm::detail::IEEEFloat *a2, unsigned __int8 a3, unsigned int a4, unsigned int a5)
{
  v6 = this;
  v8 = (this + 2);
  v7 = *(this + 4);
  v9 = *(a2 + 20);
  v10 = *(a2 + 4);
  v11 = v10;
  v12 = v7 - v10;
  if ((((((v9 ^ *(this + 20)) & 8) == 0) ^ a3) & 1) == 0)
  {
    v24 = *a2;
    v86 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v25 = v9 & 7;
    v89 = v9 & 0xF;
    v88 = v10;
    v27 = (v9 & 6) != 0 && v25 != 3;
    if (v25 == 1 || v27)
    {
      v29 = *(v24 + 8);
      if ((v29 - 64) >= 0xFFFFFF80)
      {
        this = &v87;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v30 = (a2 + 8);
      }

      else
      {
        v30 = *(a2 + 1);
      }

      llvm::APInt::tcAssign(this, v30, ((v29 + 64) >> 6));
    }

    if (v7 == v10)
    {
      v31 = 0;
      v32 = *v8 - v88;
      if (*v8 != v88)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v38 = v12 - 1;
      if (v12 < 1)
      {
        v52 = ~v12;
        *(v6 + 4) += ~v12;
        v53 = *(*v6 + 2);
        v54 = (v6 + 1);
        if ((v53 - 64) <= 0xFFFFFF7F)
        {
          v54 = *v54;
        }

        v55 = &v88;
        v56 = v53 + 64;
        v57 = ((v53 + 64) >> 6);
        v58 = llvm::APInt::tcLSB(v54, v57);
        if (v58 >= v52)
        {
          v31 = 0;
        }

        else if (-2 - v58 == v12)
        {
          v31 = 2;
        }

        else if ((v56 & 0xFFFFFFC0) >= v52 && llvm::APInt::tcExtractBit(v54, (-2 - v12)))
        {
          v31 = 3;
        }

        else
        {
          v31 = 1;
        }

        llvm::APInt::tcShiftRight(v54, v57, ~v12);
        v71 = *(v86 + 8);
        if ((v71 - 64) >= 0xFFFFFF80)
        {
          v72 = &v87;
        }

        else
        {
          v72 = v87;
        }

        llvm::APInt::tcShiftLeft(v72, ((v71 + 64) >> 6), 1u);
      }

      else
      {
        v88 += v38;
        v39 = *(v86 + 8);
        if ((v39 - 64) >= 0xFFFFFF80)
        {
          v40 = &v87;
        }

        else
        {
          v40 = v87;
        }

        v41 = v39 + 64;
        v42 = ((v39 + 64) >> 6);
        v43 = llvm::APInt::tcLSB(v40, v42);
        if (v43 >= v38)
        {
          v31 = 0;
        }

        else
        {
          v44 = (v12 - 2);
          if (v43 == v44)
          {
            v31 = 2;
          }

          else if ((v41 & 0xFFFFFFC0) >= v38 && llvm::APInt::tcExtractBit(v40, v44))
          {
            v31 = 3;
          }

          else
          {
            v31 = 1;
          }
        }

        llvm::APInt::tcShiftRight(v40, v42, v12 - 1);
        v69 = (v6 + 1);
        v70 = *(*v6 + 2);
        if ((v70 - 64) <= 0xFFFFFF7F)
        {
          v69 = *v69;
        }

        llvm::APInt::tcShiftLeft(v69, ((v70 + 64) >> 6), 1u);
        v55 = v8;
      }

      --*v55;
      v32 = *v8 - v88;
      if (*v8 != v88)
      {
LABEL_45:
        v33 = v31 != 0;
        if ((v32 & 0x80000000) == 0)
        {
LABEL_46:
          v35 = *v6;
          v34 = (v6 + 1);
          v36 = *(v35 + 2);
          if ((v36 - 64) <= 0xFFFFFF7F)
          {
            v34 = *v34;
          }

          if ((*(v86 + 8) - 64) >= 0xFFFFFF80)
          {
            v37 = &v87;
          }

          else
          {
            v37 = v87;
          }

          llvm::APInt::tcSubtract(v34, v37, v33, (v36 + 64) >> 6);
          goto LABEL_128;
        }

LABEL_116:
        v77 = *(v86 + 8);
        if ((v77 - 64) >= 0xFFFFFF80)
        {
          v78 = &v87;
        }

        else
        {
          v78 = v87;
        }

        v79 = v6 + 1;
        if ((*(*v6 + 2) - 64) >= 0xFFFFFF80)
        {
          v80 = (v6 + 1);
        }

        else
        {
          v80 = v6[1];
        }

        llvm::APInt::tcSubtract(v78, v80, v33, (v77 + 64) >> 6);
        v81 = *(*v6 + 2);
        if ((v81 - 64) <= 0xFFFFFF7F)
        {
          v79 = *v79;
        }

        if ((*(v86 + 8) - 64) >= 0xFFFFFF80)
        {
          v82 = &v87;
        }

        else
        {
          v82 = v87;
        }

        llvm::APInt::tcAssign(v79, v82, ((v81 + 64) >> 6));
        *(v6 + 20) ^= 8u;
LABEL_128:
        if (v31 == 3)
        {
          v83 = 1;
        }

        else
        {
          v83 = v31;
        }

        if (v31 == 1)
        {
          v23 = 3;
        }

        else
        {
          v23 = v83;
        }

        if ((*(v86 + 8) - 64) > 0xFFFFFF7F)
        {
          return v23;
        }

        goto LABEL_135;
      }
    }

    v73 = (v6 + 1);
    v74 = *(*v6 + 2);
    if ((v74 - 64) <= 0xFFFFFF7F)
    {
      v73 = *v73;
    }

    if ((*(v86 + 8) - 64) >= 0xFFFFFF80)
    {
      v75 = &v87;
    }

    else
    {
      v75 = v87;
    }

    v76 = llvm::APInt::tcCompare(v73, v75, ((v74 + 64) >> 6));
    v33 = v31 != 0;
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_116;
  }

  if (v12 >= 1)
  {
    v13 = *a2;
    v85 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v14 = v9 & 7;
    v89 = v9 & 0xF;
    v88 = v11;
    v16 = (v9 & 6) != 0 && v14 != 3;
    if (v14 == 1 || v16)
    {
      v17 = *(v13 + 8);
      if ((v17 - 64) >= 0xFFFFFF80)
      {
        this = &v87;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v18 = (a2 + 8);
      }

      else
      {
        v18 = *(a2 + 1);
      }

      llvm::APInt::tcAssign(this, v18, ((v17 + 64) >> 6));
      v11 = v88;
      v13 = v85;
      this = v87;
    }

    v88 = v11 + v12;
    v19 = *(v13 + 8);
    if ((v19 - 64) >= 0xFFFFFF80)
    {
      v20 = &v87;
    }

    else
    {
      v20 = this;
    }

    v21 = v19 + 64;
    v22 = llvm::APInt::tcLSB(v20, ((v19 + 64) >> 6));
    if (v22 >= v12)
    {
      v23 = 0;
    }

    else if (v22 + 1 == v12)
    {
      v23 = 2;
    }

    else if ((v21 & 0xFFFFFFC0) >= v12 && llvm::APInt::tcExtractBit(v20, (v12 - 1)))
    {
      v23 = 3;
    }

    else
    {
      v23 = 1;
    }

    llvm::APInt::tcShiftRight(v20, (v21 >> 6), v12);
    v60 = *v6;
    v59 = (v6 + 1);
    v61 = *(v60 + 2);
    if ((v61 - 64) <= 0xFFFFFF7F)
    {
      v59 = *v59;
    }

    if ((*(v85 + 8) - 64) >= 0xFFFFFF80)
    {
      v62 = &v87;
    }

    else
    {
      v62 = v87;
    }

    llvm::APInt::tcAdd(v59, v62, 0, (v61 + 64) >> 6);
    if ((*(v85 + 8) - 64) > 0xFFFFFF7F)
    {
      return v23;
    }

LABEL_135:
    if (v87)
    {
      MEMORY[0x259C63150](v87, 0x1000C8000313F17);
    }

    return v23;
  }

  v45 = v10 - v7;
  *(this + 4) = v10;
  v46 = *(*this + 2);
  v47 = (this + 1);
  v48 = (this + 1);
  if ((v46 - 64) <= 0xFFFFFF7F)
  {
    v48 = *v47;
  }

  v49 = v46 + 64;
  v50 = ((v46 + 64) >> 6);
  v51 = llvm::APInt::tcLSB(v48, v50);
  if (v51 >= v45)
  {
    v23 = 0;
  }

  else if (v51 + 1 == v45)
  {
    v23 = 2;
  }

  else if ((v49 & 0xFFFFFFC0) >= v45 && llvm::APInt::tcExtractBit(v48, ~v12))
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  llvm::APInt::tcShiftRight(v48, v50, -v12);
  v63 = *(*v6 + 2);
  if ((v63 - 64) <= 0xFFFFFF7F)
  {
    v47 = *v47;
  }

  v64 = *(*a2 + 8) - 64;
  v67 = *(a2 + 1);
  v66 = (a2 + 8);
  v65 = v67;
  if (v64 >= 0xFFFFFF80)
  {
    v68 = v66;
  }

  else
  {
    v68 = v65;
  }

  llvm::APInt::tcAdd(v47, v68, 0, (v63 + 64) >> 6);
  return v23;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t **this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v5 = this;
  v6 = *this;
  v13 = v6;
  v7 = *(v6 + 8);
  if ((v7 + 64) >= 0x80)
  {
    operator new[]();
  }

  v16 = 3;
  v15 = *(v6 + 4) - 1;
  if ((v7 - 64) >= 0xFFFFFF80)
  {
    this = &v14;
  }

  llvm::APInt::tcSet(this, 0, (v7 + 64) >> 6);
  result = llvm::detail::IEEEFloat::multiplySignificand(v5, a2, &v13, v8, v9, v10);
  if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
  {
    if (v14)
    {
      v12 = result;
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
      return v12;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = (this + 8);
  v5 = *(*this + 8);
  if (v5 - 64 <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v6 = (a2 + 8);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = v5 + 64;
  v8 = (v5 + 64) >> 6;
  if (v5 + 64 >= 0xC0)
  {
    operator new[]();
  }

  v9 = &v38[v8];
  if (v5 <= 0xFFFFFFBF)
  {
    if (v8 >= 0x14)
    {
      v10 = 0;
      v11 = &v38[v8];
      v12 = v9 + 8 * v8;
      v13 = (v4 + 8 * v8);
      v14 = v6 + 8 * v8;
      v16 = v38 < v13 && v4 < v11;
      v18 = v38 < v14 && v6 < v11;
      v20 = v9 < v13 && v4 < v12;
      v22 = v9 < v14 && v6 < v12;
      v24 = v4 < v14 && v6 < v13;
      v25 = v9 >= v11 || v38 >= v12;
      if (v25 && !v16 && !v18 && !v20 && !v22 && !v24)
      {
        v26 = 0;
        v10 = v8 & 0x3FFFFFC;
        v27 = (v4 + 16);
        do
        {
          v28 = *v27;
          v29 = &v38[v26 / 8];
          *v29 = *(v27 - 1);
          v29[1] = v28;
          v30 = *(v6 + v26 + 16);
          v31 = (v9 + v26);
          *v31 = *(v6 + v26);
          v31[1] = v30;
          *(v27 - 1) = 0uLL;
          *v27 = 0uLL;
          v27 += 2;
          v26 += 32;
        }

        while (((8 * v8) & 0x1FFFFFE0) != v26);
        goto LABEL_55;
      }
    }

    else
    {
      v10 = 0;
    }

    do
    {
      v38[v10] = *(v4 + v10);
      *(v9 + v10) = *(v6 + v10);
      *(v4 + v10++) = 0;
LABEL_55:
      ;
    }

    while (v8 != v10);
  }

  *(this + 4) -= *(a2 + 4);
  LODWORD(v32) = *(*this + 8);
  v33 = v32 + ~llvm::APInt::tcMSB(v9, (v7 >> 6));
  if (v33)
  {
    *(this + 4) += v33;
    llvm::APInt::tcShiftLeft(v9, (v7 >> 6), v33);
  }

  v34 = v32 + ~llvm::APInt::tcMSB(v38, (v7 >> 6));
  if (v34)
  {
    *(this + 4) -= v34;
    llvm::APInt::tcShiftLeft(v38, (v7 >> 6), v34);
  }

  if ((llvm::APInt::tcCompare(v38, v9, (v7 >> 6)) & 0x80000000) != 0)
  {
    --*(this + 4);
    llvm::APInt::tcShiftLeft(v38, (v7 >> 6), 1u);
  }

  while (v32)
  {
    while ((llvm::APInt::tcCompare(v38, v9, (v7 >> 6)) & 0x80000000) == 0)
    {
      llvm::APInt::tcSubtract(v38, v9, 0, v7 >> 6);
      v32 = (v32 - 1);
      llvm::APInt::tcSetBit(v4, v32);
      llvm::APInt::tcShiftLeft(v38, (v7 >> 6), 1u);
      if (!v32)
      {
        goto LABEL_67;
      }
    }

    LODWORD(v32) = v32 - 1;
    llvm::APInt::tcShiftLeft(v38, (v7 >> 6), 1u);
  }

LABEL_67:
  v35 = llvm::APInt::tcCompare(v38, v9, (v7 >> 6));
  if (v35 > 0)
  {
    v36 = 3;
    if (v7 < 0xC0)
    {
      return v36;
    }

    goto LABEL_72;
  }

  if (!v35)
  {
    v36 = 2;
    if (v7 < 0xC0)
    {
      return v36;
    }

    goto LABEL_72;
  }

  v36 = !llvm::APInt::tcIsZero(v38, (v7 >> 6));
  if (v7 >= 0xC0)
  {
LABEL_72:
    MEMORY[0x259C63150](v38, 0x1000C8000313F17);
  }

  return v36;
}

uint64_t llvm::detail::IEEEFloat::significandLSB(llvm::detail::IEEEFloat *this, uint64_t a2, unsigned int a3)
{
  v4 = *this;
  v3 = (this + 8);
  v5 = *(v4 + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return llvm::APInt::tcLSB(v3, ((v5 + 64) >> 6));
}

void llvm::detail::IEEEFloat::shiftSignificandLeft(void *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v7 = *this;
    v6 = (this + 1);
    v8 = *(v7 + 8);
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    llvm::APInt::tcShiftLeft(v6, ((v8 + 64) >> 6), a2);
    *(this + 4) -= a2;
  }
}

uint64_t llvm::detail::IEEEFloat::compareAbsoluteValue(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v4 = *(this + 4) - *(a2 + 4);
  if (v4)
  {
    if (v4 <= 0)
    {
      return v4 >= 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v7 = *this;
    v6 = (this + 8);
    v8 = *(v7 + 8);
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    v9 = *(*a2 + 8) - 64;
    v12 = *(a2 + 1);
    v10 = (a2 + 8);
    v11 = v12;
    if (v9 < 0xFFFFFF80)
    {
      v10 = v11;
    }

    v13 = llvm::APInt::tcCompare(v6, v10, ((v8 + 64) >> 6));
    if (v13 <= 0)
    {
      return v13 >= 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t llvm::detail::IEEEFloat::handleOverflow(llvm::detail::IEEEFloat *a1, int a2, unsigned int a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 != 2)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if ((*(a1 + 20) & 8) == 0)
        {
          goto LABEL_2;
        }
      }

      else if (a2 != 4)
      {
        goto LABEL_2;
      }
    }

    else if (a2 != 1 && (a2 != 2 || (*(a1 + 20) & 8) != 0))
    {
      goto LABEL_2;
    }

    v14 = *(a1 + 20);
    if (v4 == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v14 >> 3) & 1, 0);
    }

    else
    {
      *(a1 + 20) = v14 & 0xF8;
    }

    return 20;
  }

LABEL_2:
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  *(a1 + 4) = *v3;
  v5 = v3[2];
  v6 = v5 - 64;
  v7 = (a1 + 8);
  v8 = a1 + 8;
  if (v5 - 64 <= 0xFFFFFF7F)
  {
    v8 = *v7;
  }

  v9 = v5 + 64;
  v10 = v5 - 65;
  if (v5 >= 0x41)
  {
    memset(v8, 255, 8 * (v10 >> 6) + 8);
    v11 = (v10 >> 6) + 1;
    v5 = v6 - (v10 & 0xFFFFFFC0);
    v12 = v9 >> 6;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = 0;
  v12 = v9 >> 6;
  if (v5)
  {
LABEL_13:
    *&v8[8 * v11++] = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  }

LABEL_14:
  if (v11 < v12)
  {
    bzero(&v8[8 * v11], 8 * (v12 + ~v11) + 8);
  }

  if (v3[4] == 1 && v3[5] == 1)
  {
    if (v6 <= 0xFFFFFF7F)
    {
      v7 = *v7;
    }

    llvm::APInt::tcClearBit(v7, 0);
  }

  return 16;
}

uint64_t llvm::detail::IEEEFloat::roundAwayFromZero(uint64_t *a1, int a2, int a3, unint64_t *a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a3 == 3)
      {
        return 1;
      }

      else if (a3 == 2 && (*(a1 + 20) & 7) != 3)
      {
        v6 = *a1;
        v5 = (a1 + 1);
        if ((*(v6 + 8) - 64) <= 0xFFFFFF7F)
        {
          v5 = *v5;
        }

        return llvm::APInt::tcExtractBit(v5, a4) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (a2 == 2)
  {
    return (*(a1 + 20) & 8) == 0;
  }

  else if (a2 == 3)
  {
    return (*(a1 + 20) >> 3) & 1;
  }

  else
  {
    return (a3 & 0xFFFFFFFE) == 2;
  }
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 20);
  v5 = *(a2 + 20);
  v6 = 4 * (v4 & 7) + (v5 & 7);
  if (v6 > 7)
  {
    if (v6 > 11)
    {
      if (v6 > 13)
      {
        if (v6 != 14)
        {
          return 0;
        }

        v23 = v5 & 8 | v4 & 0xF7;
        *(this + 20) = v23;
        v24 = *(a2 + 20);
        v25 = v24 & 7;
        v26 = v23 & 0xF8 | v24 & 7;
        *(this + 20) = v26;
        *(this + 4) = *(a2 + 4);
        v28 = (v24 & 6) != 0 && v25 != 3;
        if (v25 == 1 || v28)
        {
          v29 = (this + 8);
          v30 = *(*this + 8);
          v31 = a3;
          v32 = this;
          if ((v30 - 64) <= 0xFFFFFF7F)
          {
            v29 = *v29;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v33 = (a2 + 8);
          }

          else
          {
            v33 = *(a2 + 1);
          }

          v34 = a2;
          llvm::APInt::tcAssign(v29, v33, ((v30 + 64) >> 6));
          a2 = v34;
          this = v32;
          v26 = *(v32 + 20);
          a3 = v31;
        }

        if (a3 != (*(a2 + 20) & 8) >> 3)
        {
          v20 = 8;
        }

        else
        {
          v20 = 0;
        }

        v21 = v26 & 0xF7;
LABEL_57:
        *(this + 20) = v20 | v21;
        return 0;
      }

      if (v6 != 12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v6 > 9)
      {
        if (v6 == 10)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      if (v6 != 8)
      {
LABEL_10:
        v7 = v5 & 8 | v4 & 0xF7;
        *(this + 20) = v7;
        v8 = *(a2 + 20);
        v9 = v8 & 7;
        v4 = v7 & 0xF8 | v8 & 7;
        *(this + 20) = v4;
        *(this + 4) = *(a2 + 4);
        v11 = (v8 & 6) != 0 && v9 != 3;
        if (v9 == 1 || v11)
        {
          v35 = (this + 8);
          v36 = *(*this + 8);
          v37 = this;
          if ((v36 - 64) <= 0xFFFFFF7F)
          {
            v35 = *v35;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v38 = (a2 + 8);
          }

          else
          {
            v38 = *(a2 + 1);
          }

          v39 = a2;
          llvm::APInt::tcAssign(v35, v38, ((v36 + 64) >> 6));
          a2 = v39;
          this = v37;
          if ((*(v37 + 20) & 7) != 1)
          {
            goto LABEL_65;
          }

LABEL_19:
          if ((*(*this + 16) - 1) >= 2)
          {
            v12 = a2;
            v13 = *(*this + 8);
            v14 = this;
            v15 = (this + 8);
            v16 = (this + 8);
            if ((v13 - 64) <= 0xFFFFFF7F)
            {
              v16 = *v15;
            }

            Bit = llvm::APInt::tcExtractBit(v16, (v13 - 2));
            a2 = v12;
            if (!Bit)
            {
              if (*(*v14 + 16) != 1)
              {
                v18 = *(*v14 + 8);
                if ((v18 - 64) <= 0xFFFFFF7F)
                {
                  v15 = *v15;
                }

                llvm::APInt::tcSetBit(v15, (v18 - 2));
              }

              return 1;
            }
          }

LABEL_65:
          if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
          {
            return 0;
          }

          v40 = *(*a2 + 8);
          v43 = *(a2 + 1);
          v41 = (a2 + 8);
          v42 = v43;
          if ((v40 - 64) >= 0xFFFFFF80)
          {
            v44 = v41;
          }

          else
          {
            v44 = v42;
          }

          return llvm::APInt::tcExtractBit(v44, (v40 - 2)) == 0;
        }

LABEL_18:
        if ((v4 & 7) != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_19;
      }
    }

    *(this + 20) = v4 & 0xF8;
    if (a3 != (*(a2 + 20) & 8) >> 3)
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = v4 & 0xF0;
    goto LABEL_57;
  }

  if (v6 > 3)
  {
    goto LABEL_18;
  }

  if ((v6 - 2) < 2)
  {
    return 0;
  }

  if (v6)
  {
    goto LABEL_10;
  }

  if (((((v5 ^ v4) & 8) == 0) ^ a3))
  {
    return 0;
  }

  llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
  return 1;
}

BOOL llvm::detail::IEEEFloat::isSignaling(llvm::detail::IEEEFloat *this, uint64_t a2, unsigned int a3)
{
  if ((*(this + 20) & 7) != 1 || (*(*this + 16) - 1) < 2)
  {
    return 0;
  }

  v4 = *(*this + 8);
  v5 = (this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  return llvm::APInt::tcExtractBit(v5, (v4 - 2)) == 0;
}

void *llvm::detail::IEEEFloat::makeQuiet(void *this, uint64_t a2, unsigned int a3)
{
  if (*(*this + 16) != 1)
  {
    v3 = *(*this + 8);
    v4 = this + 1;
    if ((v3 - 64) <= 0xFFFFFF7F)
    {
      v4 = *v4;
    }

    return llvm::APInt::tcSetBit(v4, (v3 - 2));
  }

  return this;
}

BOOL llvm::detail::IEEEFloat::multiplySpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3, unsigned int a4)
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

      goto LABEL_20;
    }

    if ((v6 - 4) < 4)
    {
      *(this + 20) = v5 & 8 ^ v4;
      if ((v4 & 7) != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

LABEL_18:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v6 > 11)
  {
    if ((v6 - 14) >= 2)
    {
      if (v6 != 12)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_47:
    *(this + 20) = v4 & 0xF8 | 3;
    return 0;
  }

  if (v6 > 9)
  {
    if (v6 == 10)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (v6 == 8)
  {
LABEL_12:
    *(this + 20) = v4 & 0xF8;
    return 0;
  }

LABEL_20:
  v9 = v5 & 8 | v4 & 0xF7;
  *(this + 20) = v9;
  v10 = *(a2 + 20);
  v11 = v10 & 7;
  v12 = v9 & 0xF8 | v10 & 7;
  *(this + 20) = v12;
  *(this + 4) = *(a2 + 4);
  v14 = (v10 & 6) != 0 && v11 != 3;
  if (v11 == 1 || v14)
  {
    v15 = (this + 8);
    v16 = *(*this + 8);
    v17 = this;
    if ((v16 - 64) <= 0xFFFFFF7F)
    {
      v15 = *v15;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v18 = (a2 + 8);
    }

    else
    {
      v18 = *(a2 + 1);
    }

    v19 = a2;
    llvm::APInt::tcAssign(v15, v18, ((v16 + 64) >> 6));
    a2 = v19;
    this = v17;
    v12 = *(v17 + 20);
  }

  *(this + 20) = v12 & 0xF7;
  *(this + 20) = *(a2 + 20) & 8 ^ v12 & 0xF7;
  if ((v12 & 7) != 1)
  {
LABEL_39:
    if ((*(a2 + 20) & 7) == 1 && (*(*a2 + 16) - 1) >= 2)
    {
      v26 = *(*a2 + 8);
      v29 = *(a2 + 1);
      v27 = (a2 + 8);
      v28 = v29;
      if ((v26 - 64) >= 0xFFFFFF80)
      {
        v30 = v27;
      }

      else
      {
        v30 = v28;
      }

      return llvm::APInt::tcExtractBit(v30, (v26 - 2)) == 0;
    }

    return 0;
  }

LABEL_35:
  if ((*(*this + 16) - 1) < 2)
  {
    goto LABEL_39;
  }

  v20 = a2;
  v21 = *(*this + 8);
  v22 = this;
  v23 = (this + 8);
  v24 = (this + 8);
  if ((v21 - 64) <= 0xFFFFFF7F)
  {
    v24 = *v23;
  }

  Bit = llvm::APInt::tcExtractBit(v24, (v21 - 2));
  a2 = v20;
  if (Bit)
  {
    goto LABEL_39;
  }

  if (*(*v22 + 16) == 1)
  {
    return 1;
  }

  v31 = *(*v22 + 8);
  if ((v31 - 64) <= 0xFFFFFF7F)
  {
    v23 = *v23;
  }

  llvm::APInt::tcSetBit(v23, (v31 - 2));
  return 1;
}

uint64_t llvm::detail::IEEEFloat::divideSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 20);
  v5 = *(a2 + 20);
  v6 = 4 * (v4 & 7) + (v5 & 7);
  if (v6 <= 7)
  {
    if (v6 > 3)
    {
      goto LABEL_27;
    }

    if ((v6 - 2) >= 2)
    {
      if (!v6)
      {
        goto LABEL_41;
      }

      goto LABEL_12;
    }

    return 0;
  }

  if (v6 > 11)
  {
    if (v6 > 13)
    {
      if (v6 != 14)
      {
LABEL_41:
        llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
        return 1;
      }

      return 0;
    }

    if (v6 == 12)
    {
      return 0;
    }
  }

  else
  {
    if (v6 > 9)
    {
      if (v6 != 10)
      {
        if (*(*this + 16) == 1)
        {
          llvm::detail::IEEEFloat::makeNaN(this, 0, (v4 >> 3) & 1, 0);
        }

        else
        {
          *(this + 20) = v4 & 0xF8;
        }

        return 2;
      }

      return 0;
    }

    if (v6 == 8)
    {
      *(this + 20) = v4 & 0xF8 | 3;
      return 0;
    }
  }

LABEL_12:
  v8 = v5 & 8 | v4 & 0xF7;
  *(this + 20) = v8;
  v9 = *(a2 + 20);
  v10 = v9 & 7;
  v11 = v8 & 0xF8 | v9 & 7;
  *(this + 20) = v11;
  *(this + 4) = *(a2 + 4);
  v13 = (v9 & 6) != 0 && v10 != 3;
  if (v10 == 1 || v13)
  {
    v14 = (this + 8);
    v15 = *(*this + 8);
    v16 = this;
    if ((v15 - 64) <= 0xFFFFFF7F)
    {
      v14 = *v14;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v17 = (a2 + 8);
    }

    else
    {
      v17 = *(a2 + 1);
    }

    v18 = a2;
    llvm::APInt::tcAssign(v14, v17, ((v15 + 64) >> 6));
    a2 = v18;
    this = v16;
    v11 = *(v16 + 20);
  }

  LOBYTE(v4) = v11 & 0xF7;
  *(this + 20) = v11 & 0xF7;
  v5 = *(a2 + 20);
LABEL_27:
  *(this + 20) = v5 & 8 ^ v4;
  if ((v4 & 7) != 1 || (*(*this + 16) - 1) < 2)
  {
    goto LABEL_33;
  }

  v19 = a2;
  v20 = *(*this + 8);
  v21 = this;
  v22 = (this + 8);
  v23 = (this + 8);
  if ((v20 - 64) <= 0xFFFFFF7F)
  {
    v23 = *v22;
  }

  Bit = llvm::APInt::tcExtractBit(v23, (v20 - 2));
  a2 = v19;
  if (!Bit)
  {
    if (*(*v21 + 16) == 1)
    {
      return 1;
    }

    v30 = *(*v21 + 8);
    if ((v30 - 64) <= 0xFFFFFF7F)
    {
      v22 = *v22;
    }

    llvm::APInt::tcSetBit(v22, (v30 - 2));
    return 1;
  }

  else
  {
LABEL_33:
    if ((*(a2 + 20) & 7) == 1 && (*(*a2 + 16) - 1) >= 2)
    {
      v25 = *(*a2 + 8);
      v28 = *(a2 + 1);
      v26 = (a2 + 8);
      v27 = v28;
      if ((v25 - 64) >= 0xFFFFFF80)
      {
        v29 = v26;
      }

      else
      {
        v29 = v27;
      }

      return llvm::APInt::tcExtractBit(v29, (v25 - 2)) == 0;
    }

    else
    {
      return 0;
    }
  }
}

BOOL llvm::detail::IEEEFloat::modSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 20);
  v5 = *(a2 + 20);
  v6 = 4 * (v4 & 7) + (v5 & 7);
  if (v6 <= 7)
  {
    if (v6 > 3)
    {
      goto LABEL_21;
    }

    if ((v6 - 2) >= 2 && v6 != 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  v9 = 1 << v6;
  if ((v9 & 0x5500) != 0)
  {
    return 0;
  }

  if ((v9 & 0x2200) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v10 = v5 & 8 | v4 & 0xF7;
  *(this + 20) = v10;
  v11 = *(a2 + 20);
  v12 = v11 & 7;
  v4 = v10 & 0xF8 | v11 & 7;
  *(this + 20) = v4;
  *(this + 4) = *(a2 + 4);
  v14 = (v11 & 6) != 0 && v12 != 3;
  if (v12 != 1 && !v14)
  {
LABEL_21:
    if ((v4 & 7) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  v22 = (this + 8);
  v23 = *(*this + 8);
  v24 = this;
  if ((v23 - 64) <= 0xFFFFFF7F)
  {
    v22 = *v22;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v25 = (a2 + 8);
  }

  else
  {
    v25 = *(a2 + 1);
  }

  v26 = a2;
  llvm::APInt::tcAssign(v22, v25, ((v23 + 64) >> 6));
  a2 = v26;
  this = v24;
  if ((*(v24 + 20) & 7) != 1)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((*(*this + 16) - 1) >= 2)
  {
    v15 = a2;
    v16 = *(*this + 8);
    v17 = this;
    v18 = (this + 8);
    v19 = (this + 8);
    if ((v16 - 64) <= 0xFFFFFF7F)
    {
      v19 = *v18;
    }

    Bit = llvm::APInt::tcExtractBit(v19, (v16 - 2));
    a2 = v15;
    if (!Bit)
    {
      if (*(*v17 + 16) != 1)
      {
        v21 = *(*v17 + 8);
        if ((v21 - 64) <= 0xFFFFFF7F)
        {
          v18 = *v18;
        }

        llvm::APInt::tcSetBit(v18, (v21 - 2));
        return 1;
      }

      return 1;
    }
  }

LABEL_36:
  if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
  {
    return 0;
  }

  v27 = *(*a2 + 8);
  v30 = *(a2 + 1);
  v28 = (a2 + 8);
  v29 = v30;
  if ((v27 - 64) >= 0xFFFFFF80)
  {
    v31 = v28;
  }

  else
  {
    v31 = v29;
  }

  return llvm::APInt::tcExtractBit(v31, (v27 - 2)) == 0;
}

uint64_t llvm::detail::IEEEFloat::remainderSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 20);
  v5 = *(a2 + 20);
  v6 = 4 * (v4 & 7) + (v5 & 7);
  if (v6 <= 7)
  {
    if (v6 > 3)
    {
      goto LABEL_22;
    }

    if ((v6 - 2) >= 2 && v6 != 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v6 > 11)
  {
    if (v6 > 13)
    {
      if (v6 != 14)
      {
        goto LABEL_33;
      }

      return 0;
    }

    if (v6 == 12)
    {
      return 0;
    }
  }

  else
  {
    if (v6 > 9)
    {
      if (v6 == 10)
      {
        return 2;
      }

      goto LABEL_33;
    }

    if (v6 == 8)
    {
      return 0;
    }
  }

LABEL_14:
  v8 = v5 & 8 | v4 & 0xF7;
  *(this + 20) = v8;
  v9 = *(a2 + 20);
  v10 = v9 & 7;
  v4 = v8 & 0xF8 | v9 & 7;
  *(this + 20) = v4;
  *(this + 4) = *(a2 + 4);
  v12 = (v9 & 6) != 0 && v10 != 3;
  if (v10 != 1 && !v12)
  {
LABEL_22:
    if ((v4 & 7) != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  v20 = (this + 8);
  v21 = *(*this + 8);
  v22 = this;
  if ((v21 - 64) <= 0xFFFFFF7F)
  {
    v20 = *v20;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v23 = (a2 + 8);
  }

  else
  {
    v23 = *(a2 + 1);
  }

  v24 = a2;
  llvm::APInt::tcAssign(v20, v23, ((v21 + 64) >> 6));
  a2 = v24;
  this = v22;
  if ((*(v22 + 20) & 7) != 1)
  {
    goto LABEL_40;
  }

LABEL_23:
  if ((*(*this + 16) - 1) >= 2)
  {
    v13 = a2;
    v14 = *(*this + 8);
    v15 = this;
    v16 = (this + 8);
    v17 = (this + 8);
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v17 = *v16;
    }

    Bit = llvm::APInt::tcExtractBit(v17, (v14 - 2));
    a2 = v13;
    if (!Bit)
    {
      if (*(*v15 + 16) == 1)
      {
        return 1;
      }

      v30 = *(*v15 + 8);
      if ((v30 - 64) <= 0xFFFFFF7F)
      {
        v16 = *v16;
      }

      llvm::APInt::tcSetBit(v16, (v30 - 2));
      return 1;
    }
  }

LABEL_40:
  if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
  {
    return 0;
  }

  v25 = *(*a2 + 8);
  v28 = *(a2 + 1);
  v26 = (a2 + 8);
  v27 = v28;
  if ((v25 - 64) >= 0xFFFFFF80)
  {
    v29 = v26;
  }

  else
  {
    v29 = v27;
  }

  return llvm::APInt::tcExtractBit(v29, (v25 - 2)) == 0;
}

_BYTE *llvm::detail::IEEEFloat::changeSign(_BYTE *this)
{
  v1 = this[20];
  if (*(*this + 20) != 2 || (v1 & 5 | 2) != 3)
  {
    this[20] = v1 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtract(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, a4, a4);
  if (result == 2)
  {
    v11 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, a4, v9, v10);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v11);
  }

  v12 = *(a1 + 20);
  if ((v12 & 7) == 3)
  {
    v13 = *(a2 + 20);
    if ((v13 & 7) != 3 || a4 != ((v13 ^ v12) & 8) >> 3)
    {
      v12 = v12 & 0xF3 | (8 * (a3 == 3));
      *(a1 + 20) = v12;
    }

    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v12 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::add(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, 0, a4);
  if (result == 2)
  {
    v10 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, 0, v8, v9);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v10);
  }

  v11 = *(a1 + 20);
  if ((v11 & 7) == 3)
  {
    v12 = *(a2 + 20);
    if ((v12 & 7) != 3 || ((v12 ^ v11) & 8) != 0)
    {
      LOBYTE(v11) = v11 & 0xF3 | (8 * (a3 == 3));
      *(a1 + 20) = v11;
    }

    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v11 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::subtract(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, 1u, a4);
  if (result == 2)
  {
    v10 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, 1u, v8, v9);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v10);
  }

  v11 = *(a1 + 20);
  if ((v11 & 7) == 3)
  {
    v12 = *(a2 + 20);
    if ((v12 & 7) != 3 || ((v12 ^ v11) & 8) == 0)
    {
      LOBYTE(v11) = v11 & 0xF3 | (8 * (a3 == 3));
      *(a1 + 20) = v11;
    }

    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v11 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::multiplySpecials(a1, a2, a3, a4);
  v10 = *(a1 + 20);
  if ((v10 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v10 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v11 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2, v8, v9);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v11);
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

uint64_t llvm::detail::IEEEFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(a1, a2, a3, a4);
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
    v10 = llvm::detail::IEEEFloat::divideSignificand(a1, a2, v8);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v10);
    if (v10)
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

uint64_t llvm::detail::IEEEFloat::remainder(__int128 **this, const llvm::detail::IEEEFloat *a2, unsigned int a3, unsigned int a4)
{
  v6 = *(this + 20);
  v7 = llvm::detail::IEEEFloat::remainderSpecials(this, a2, a3, a4);
  v9 = v7;
  if (v7 != 2)
  {
    return v9;
  }

  v96 = *a2;
  if ((*(v96 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v10 = *(a2 + 20);
  v11 = v10 & 7;
  v99 = v10 & 0xF;
  v98 = *(a2 + 4);
  v13 = (v10 & 6) != 0 && v11 != 3;
  if (v11 != 1 && !v13)
  {
    v15 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v96, a2, 0, v8);
    if (v15 == 2)
    {
      goto LABEL_24;
    }

LABEL_16:
    v19 = v99;
    if ((v99 & 7) != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v20 = *(v96 + 2);
  if ((v20 - 64) >= 0xFFFFFF80)
  {
    v7 = &v97;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v21 = (a2 + 8);
  }

  else
  {
    v21 = *(a2 + 1);
  }

  llvm::APInt::tcAssign(v7, v21, ((v20 + 64) >> 6));
  v15 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v96, a2, 0, v22);
  if (v15 != 2)
  {
    goto LABEL_16;
  }

LABEL_24:
  v23 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v96, a2, 0, v17, v18);
  v15 = llvm::detail::IEEEFloat::normalize(&v96, 1, v23);
  v19 = v99;
  if ((v99 & 7) != 3)
  {
    goto LABEL_30;
  }

LABEL_25:
  v24 = *(a2 + 20);
  if ((v24 & 7) != 3 || ((v24 ^ v19) & 8) != 0)
  {
    LOBYTE(v19) = v19 & 0xF3;
    v99 = v19;
  }

  if (*(v96 + 5) == 2)
  {
    v99 = v19 & 0xF3;
  }

LABEL_30:
  if (v15)
  {
    v92 = *a2;
    if ((*(v92 + 8) + 64) >= 0x80)
    {
      goto LABEL_32;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::mod(this, &v96, v16, v17);
    v92 = *a2;
    if ((*(v92 + 8) + 64) >= 0x80)
    {
LABEL_32:
      operator new[]();
    }
  }

  v25 = *(a2 + 20);
  v26 = v25 & 7;
  v27 = v95 & 0xF0 | v25 & 0xF;
  v95 = v27;
  v94 = *(a2 + 4);
  v29 = (v25 & 6) != 0 && v26 != 3;
  if (v26 == 1 || v29)
  {
    v30 = *(v92 + 8);
    if ((v30 - 64) >= 0xFFFFFF80)
    {
      v31 = &v93;
    }

    else
    {
      v31 = v93;
    }

    v32 = *(*a2 + 8) - 64;
    v35 = *(a2 + 1);
    v34 = (a2 + 8);
    v33 = v35;
    if (v32 >= 0xFFFFFF80)
    {
      v36 = v34;
    }

    else
    {
      v36 = v33;
    }

    llvm::APInt::tcAssign(v31, v36, ((v30 + 64) >> 6));
    v27 = v95;
  }

  v95 = v27 & 0xF7;
  v37 = *(this + 20) & 0xF7;
  *(this + 20) = v37;
  v38 = *this;
  v39 = *(*this + 2);
  v89 = **this;
  v90 = v39;
  *&v89 = vadd_s32(*&v89, 0xFFFFFFFF00000001);
  DWORD2(v89) += 2;
  v85 = v38;
  if ((*(v38 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v40 = v37 & 7;
  v88 = v88 & 0xF0 | v37 & 0xF;
  v87 = *(this + 4);
  v42 = (v37 & 6) != 0 && v40 != 3;
  if (v40 == 1 || v42)
  {
    v43 = *(v85 + 2);
    if ((v43 - 64) >= 0xFFFFFF80)
    {
      v44 = &v86;
    }

    else
    {
      v44 = v86;
    }

    if ((*(*this + 2) - 64) >= 0xFFFFFF80)
    {
      v45 = (this + 1);
    }

    else
    {
      v45 = this[1];
    }

    llvm::APInt::tcAssign(v44, v45, ((v43 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v85, &v89, 1u, &v91);
  v81 = v92;
  if ((*(v92 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v46 = v95 & 7;
  v84 = v84 & 0xF0 | v95 & 0xF;
  v83 = v94;
  v48 = (v95 & 6) != 0 && v46 != 3;
  if (v46 == 1 || v48)
  {
    v49 = *(v81 + 8);
    if ((v49 - 64) >= 0xFFFFFF80)
    {
      v50 = &v82;
    }

    else
    {
      v50 = v82;
    }

    if ((*(v92 + 8) - 64) >= 0xFFFFFF80)
    {
      v51 = &v93;
    }

    else
    {
      v51 = v93;
    }

    llvm::APInt::tcAssign(v50, v51, ((v49 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v81, &v89, 1u, &v91);
  v9 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v85, &v85, 0, v52);
  if (v9 == 2)
  {
    v56 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v85, &v85, 0, v54, v55);
    v9 = llvm::detail::IEEEFloat::normalize(&v85, 1, v56);
  }

  if ((v88 & 7) == 3 && *(v85 + 5) == 2)
  {
    v88 &= 0xF3u;
  }

  if (llvm::detail::IEEEFloat::compare(&v85, &v81, v53, v54) == 2)
  {
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v92, 1u, v57) == 2)
    {
      v60 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v92, 1u, v58, v59);
      llvm::detail::IEEEFloat::normalize(this, 1, v60);
    }

    v61 = *(this + 20);
    if ((v61 & 7) == 3)
    {
      if ((v95 & 7) != 3 || ((v95 ^ v61) & 8) == 0)
      {
        LOBYTE(v61) = v61 & 0xF3;
        *(this + 20) = v61;
      }

      if (*(*this + 5) == 2)
      {
        *(this + 20) = v61 & 0xF3;
      }
    }

    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v85, &v81, 1u, v58) == 2)
    {
      v64 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v85, &v81, 1u, v62, v63);
      llvm::detail::IEEEFloat::normalize(&v85, 1, v64);
    }

    v65 = v88;
    if ((v88 & 7) == 3)
    {
      if ((v84 & 7) != 3 || ((v84 ^ v88) & 8) == 0)
      {
        v65 = v88 & 0xF3;
        v88 &= 0xF3u;
      }

      if (*(v85 + 5) == 2)
      {
        v88 = v65 & 0xF3;
      }
    }

    v9 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v85, &v81, 1u, v62);
    if (v9 == 2)
    {
      v69 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v85, &v81, 1u, v67, v68);
      v9 = llvm::detail::IEEEFloat::normalize(&v85, 1, v69);
    }

    v70 = v88;
    if ((v88 & 7) == 3)
    {
      if ((v84 & 7) != 3 || ((v84 ^ v88) & 8) == 0)
      {
        v70 = v88 & 0xF3;
        v88 &= 0xF3u;
      }

      if (*(v85 + 5) == 2)
      {
        v88 = v70 & 0xF3;
      }
    }

    if (llvm::detail::IEEEFloat::compare(&v85, &v81, v66, v67) - 1 <= 1)
    {
      v9 = llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v92, 1u, v71);
      if (v9 == 2)
      {
        v74 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v92, 1u, v72, v73);
        v9 = llvm::detail::IEEEFloat::normalize(this, 1, v74);
      }

      v75 = *(this + 20);
      if ((v75 & 7) == 3)
      {
        if ((v95 & 7) != 3 || ((v95 ^ v75) & 8) == 0)
        {
          LOBYTE(v75) = v75 & 0xF3;
          *(this + 20) = v75;
        }

        if (*(*this + 5) == 2)
        {
          *(this + 20) = v75 & 0xF3;
        }
      }
    }
  }

  v76 = v6 & 8;
  v77 = *(this + 20);
  if ((v77 & 7) == 3)
  {
    v78 = v77 & 0xF3;
    v79 = v78 | v76;
    *(this + 20) = v79;
    if (*(*this + 5) == 2)
    {
      v79 = v78;
    }

    *(this + 20) = v79;
    if ((*(v81 + 8) - 64) > 0xFFFFFF7F)
    {
      goto LABEL_129;
    }

    goto LABEL_127;
  }

  *(this + 20) = v77 ^ v76;
  if ((*(v81 + 8) - 64) <= 0xFFFFFF7F)
  {
LABEL_127:
    if (v82)
    {
      MEMORY[0x259C63150](v82, 0x1000C8000313F17);
    }
  }

LABEL_129:
  if ((*(v85 + 2) - 64) <= 0xFFFFFF7F && v86)
  {
    MEMORY[0x259C63150](v86, 0x1000C8000313F17);
  }

  if ((*(v92 + 8) - 64) <= 0xFFFFFF7F && v93)
  {
    MEMORY[0x259C63150](v93, 0x1000C8000313F17);
  }

  if ((*(v96 + 2) - 64) <= 0xFFFFFF7F && v97)
  {
    MEMORY[0x259C63150](v97, 0x1000C8000313F17);
  }

  return v9;
}