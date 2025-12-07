uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v8) = 0;
    }

    else
    {
      v10 = *this;
      v9 = (this + 8);
      if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
      LOBYTE(v8) = 15;
    }
  }

  else
  {
    LODWORD(v8) = *(this + 4) + 7;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = **(this + 1);
    }

    if (v8 == 1)
    {
      v8 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 2) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v8 & 0xF));
  return llvm::APInt::clearUnusedBits(a2);
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v8) = 0;
    }

    else
    {
      v10 = *this;
      v9 = (this + 8);
      if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      LOBYTE(v8) = 0;
      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v8) = *(this + 4) + 8;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = **(this + 1);
    }

    if (v8 == 1)
    {
      v8 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 2) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v8 & 0xF));
  return llvm::APInt::clearUnusedBits(a2);
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v8) = 0;
    }

    else
    {
      v10 = *this;
      v9 = (this + 8);
      if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      LOBYTE(v8) = 0;
      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v8) = *(this + 4) + 11;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 1);
    }

    else
    {
      v7 = **(this + 1);
    }

    if (v8 == 1)
    {
      v8 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 2) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v8 & 0xF));
  return llvm::APInt::clearUnusedBits(a2);
}

uint64_t llvm::detail::IEEEFloat::bitcastToAPInt@<X0>(uint64_t *this@<X0>, llvm::APInt *a1@<X8>)
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
    return llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semIEEEquad)
  {
    return llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(a1, this);
  }

  if (v2 == &llvm::semPPCDoubleDoubleLegacy)
  {
    return llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E5M2)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2APFloatToAPInt(this, a1);
  }

  if (v2 == &llvm::semFloat8E5M2FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a1);
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

  return llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(a1, this);
}

double llvm::detail::IEEEFloat::convertToDouble(llvm::detail::IEEEFloat *this)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(this, &v3);
  if (v4 <= 0x40)
  {
    return *&v3;
  }

  v1 = *v3;
  MEMORY[0x277C69E10]();
  return v1;
}

uint64_t llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
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
  result = llvm::detail::IEEEFloat::convert(this, &llvm::semPPCDoubleDoubleLegacy, 1, &v12);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v9 = 64;
    v8 = v5;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v10, &v8);
    llvm::detail::IEEEFloat::convert(&v10, &llvm::semPPCDoubleDoubleLegacy, 1, &v12);
    result = llvm::detail::IEEEFloat::addOrSubtract(this, &v10, 1, 0);
    if ((*(v10 + 2) - 64) <= 0xFFFFFF7F)
    {
      result = v11;
      if (v11)
      {
        return MEMORY[0x277C69E10](v11, 0x1000C8000313F17);
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

void llvm::detail::IEEEFloat::initFromQuadrupleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v2 = *a2;
  if (*(a2 + 2) < 0x41uLL)
  {
    v2 = a2;
  }

  *(&v3 + 1) = v2[1] & 0xFFFFFFFFFFFFLL;
  *this = &llvm::semIEEEquad;
  operator new[]();
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

void llvm::detail::IEEEFloat::initFromBFloatAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
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

  v4 = *v3 & 0x7F;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 7);
  *this = &llvm::semBFloat;
  v7 = (v5 >> 12) & 8;
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
    v4 |= 0x80uLL;
    goto LABEL_18;
  }

  *(this + 4) = -126;
}

void llvm::detail::IEEEFloat::initFromHalfAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
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
  v6 = (v5 >> 10) & 0x1F;
  *this = &llvm::semIEEEhalf;
  v7 = (v5 >> 12) & 8;
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
    v4 |= 0x400uLL;
    goto LABEL_18;
  }

  *(this + 4) = -14;
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

void llvm::detail::IEEEFloat::initFromAPInt(llvm::detail::IEEEFloat *a1, void *a2, const llvm::APInt ***a3)
{
  if (a2 == &llvm::semIEEEhalf)
  {
    llvm::detail::IEEEFloat::initFromHalfAPInt(a1, a3);
  }

  else if (a2 == &llvm::semBFloat)
  {
    llvm::detail::IEEEFloat::initFromBFloatAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEsingle)
  {
    llvm::detail::IEEEFloat::initFromFloatAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::initFromDoubleAPInt(a1, a3);
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
      llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E5M2)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E5M2FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E4M3FN)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E4M3FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(a1, a3);
    }

    else
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(a1, a3);
    }
  }
}

void llvm::detail::IEEEFloat::toString(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, int a5)
{
  v78[32] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 20) & 7;
  if (v9 == 3)
  {
    if ((*(a1 + 20) & 8) != 0)
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
      goto LABEL_65;
    }

    v10 = "0.0E+0";
    v11 = "";
LABEL_66:

    llvm::SmallVectorImpl<char>::append<char const*,void>(a2, v10, v11);
    return;
  }

  if (v9 == 1)
  {
    v10 = "NaN";
    v11 = "";
    goto LABEL_66;
  }

  if ((*(a1 + 20) & 7) == 0)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v10 = "-Inf";
    }

    else
    {
      v10 = "+Inf";
    }

LABEL_65:
    v11 = v10 + 4;
    goto LABEL_66;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
  }

  v13 = *(*a1 + 8);
  v14 = (a1 + 8);
  if ((v13 - 64) <= 0xFFFFFF7F)
  {
    v14 = *v14;
  }

  v15 = *(a1 + 16);
  v73 = *(*a1 + 8);
  llvm::APInt::initFromArray(&v72, v14, (v13 + 63) >> 6);
  if (!a3)
  {
    a3 = 59 * *(*a1 + 8) / 0xC4u + 2;
  }

  v16 = v73;
  if (v73 > 0x40)
  {
    v18 = llvm::APInt::countTrailingZerosSlowCase(&v72);
    llvm::APInt::tcShiftRight(v72, ((v16 + 63) >> 6), v18);
  }

  else
  {
    v17 = __clz(__rbit64(v72));
    if (v73 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v73;
    }

    if (v73 > v17)
    {
      v72 = (v72 >> v18);
    }

    else
    {
      v72 = 0;
    }
  }

  v19 = v15 - v13 + v18;
  v20 = v19 + 1;
  if (v19 != -1)
  {
    if (v20 < 1)
    {
      v23 = -v20;
      v24 = *(*a1 + 8);
      v25 = (-137 * v20 + 136) / 0x3Bu;
      llvm::APInt::zext(&__dst, &v72, v24 + v25);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x277C69E10](v72, 0x1000C8000313F17);
      }

      v72 = __dst;
      v73 = v77;
      llvm::APInt::APInt(&__dst, v24 + v25, 5, 0);
      if (v23)
      {
LABEL_40:
        llvm::APInt::operator*=(&v72, &__dst);
      }

      while (v23 >= 2)
      {
        v23 >>= 1;
        llvm::APInt::operator*=(&__dst, &__dst);
        if (v23)
        {
          goto LABEL_40;
        }
      }

      if (v77 >= 0x41 && __dst)
      {
        MEMORY[0x277C69E10](__dst, 0x1000C8000313F17);
      }
    }

    else
    {
      llvm::APInt::zext(&__dst, &v72, *(*a1 + 8) + v20);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x277C69E10](v72, 0x1000C8000313F17);
      }

      v72 = __dst;
      v73 = v77;
      llvm::APInt::operator<<=(&v72, v20, v21, v22);
      v20 = 0;
    }
  }

  v26 = v73;
  if (v73 > 0x40)
  {
    v27 = llvm::APInt::countLeadingZerosSlowCase(&v72);
  }

  else
  {
    v27 = v73 + __clz(v72) - 64;
  }

  v28 = (196 * a3 + 58) / 0x3B;
  if (v26 - v27 > v28)
  {
    v29 = 59 * (v26 - v27 - v28);
    if (v29 >= 0xC4)
    {
      v30 = 59 * (v26 - v27 - v28);
      v31 = v29 / 0xC4;
      llvm::APInt::APInt(&__dst, v26, 1, 0);
      llvm::APInt::APInt(&v67, v73, 10, 0);
      v32 = v30 / 0xC4;
      if ((v31 & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_53:
      llvm::APInt::operator*=(&__dst, &v67);
LABEL_54:
      while (v32 >= 2)
      {
        v32 >>= 1;
        llvm::APInt::operator*=(&v67, &v67);
        if (v32)
        {
          goto LABEL_53;
        }
      }

      llvm::APInt::udiv(&v74, &v72, &__dst);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x277C69E10](v72, 0x1000C8000313F17);
      }

      v72 = v74;
      v33 = v75;
      v73 = v75;
      if (v75 > 0x40)
      {
        v34 = llvm::APInt::countLeadingZerosSlowCase(&v72);
      }

      else
      {
        v34 = v75 + __clz(v74) - 64;
      }

      llvm::APInt::trunc(&v74, &v72, v33 - v34);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x277C69E10](v72, 0x1000C8000313F17);
      }

      v72 = v74;
      v73 = v75;
      if (v68 >= 0x41 && v67)
      {
        MEMORY[0x277C69E10](v67, 0x1000C8000313F17);
      }

      v20 += v31;
      if (v77 >= 0x41 && __dst)
      {
        MEMORY[0x277C69E10](__dst, 0x1000C8000313F17);
      }

      v26 = v73;
    }
  }

  __dst = v78;
  v77 = xmmword_2750C12F0;
  if (v26 <= 3)
  {
    v72 = (v72 & 0xF);
    v26 = 4;
    v73 = 4;
  }

  llvm::APInt::APInt(&v74, v26, 10, 0);
  llvm::APInt::APInt(&v70, v26, 0, 0);
  LOBYTE(v26) = 1;
  while (1)
  {
    v36 = v73;
    if (v73 >= 0x41)
    {
      if (v36 - llvm::APInt::countLeadingZerosSlowCase(&v72) > 0x40)
      {
        goto LABEL_88;
      }

      v37 = v72;
    }

    else
    {
      v37 = &v72;
    }

    if (!*v37)
    {
      break;
    }

LABEL_88:
    llvm::APInt::udivrem(&v72, &v74, &v72, &v70, v35);
    if (v71 >= 0x41)
    {
      v38 = v70;
    }

    else
    {
      v38 = &v70;
    }

    v39 = *v38;
    v26 = v26 & (v39 == 0);
    if (v26 == 1)
    {
      ++v20;
    }

    else
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&__dst, v39 + 48);
    }
  }

  LODWORD(v40) = v77;
  v41 = v77 - a3;
  if (v77 <= a3)
  {
LABEL_110:
    if (a4)
    {
      goto LABEL_115;
    }

    goto LABEL_126;
  }

  v42 = __dst;
  if (*(__dst + (v41 - 1)) >= 53)
  {
    v46 = a3;
    while (1)
    {
      v47 = v41;
      v48 = *(__dst + v41);
      if (v48 != 57)
      {
        break;
      }

      LODWORD(v41) = v47 + 1;
      if (!--v46)
      {
        goto LABEL_109;
      }
    }

    *(__dst + v47) = v48 + 1;
    if (!v46)
    {
LABEL_109:
      v20 += v40;
      *&v77 = 0;
      llvm::SmallVectorTemplateBase<char,true>::push_back(&__dst, 49);
      LODWORD(v40) = v77;
      goto LABEL_110;
    }

    v20 += v47;
    v42 = __dst;
    v44 = v77 - v47;
    if (v77 == v47)
    {
      goto LABEL_108;
    }

    v45 = __dst + v47;
LABEL_113:
    memmove(v42, v45, v44);
    v49 = __dst;
  }

  else
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

    v20 += v41;
    v44 = v77 - v41;
    if (v44)
    {
      v45 = __dst + v41;
      goto LABEL_113;
    }

LABEL_108:
    v49 = v42;
  }

  v40 = v42 + v44 - v49;
  *&v77 = v40;
  if (!a4)
  {
    goto LABEL_126;
  }

LABEL_115:
  if (v20 < 0)
  {
    v52 = v20 + v40;
    if (v20 + v40 - 1 < 0 && 1 - v52 > a4)
    {
      goto LABEL_126;
    }

    if (v52 < 1)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
      if (v52)
      {
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
        }

        while (!__CFADD__(v52++, 1));
        v52 = 0;
      }
    }

    else
    {
      v63 = v40 - 1;
      v64 = (v20 + v40);
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v63--));
        --v64;
      }

      while (v64);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
    }

    if (v52 != v40)
    {
      v66 = ~v52 + v40;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v66--));
      }

      while (v66 != -1);
    }
  }

  else
  {
    if (v20 <= a4 && v20 + v40 <= a3)
    {
      if (v40)
      {
        v50 = v40;
        v51 = v40 - 1;
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v51--));
          --v50;
        }

        while (v50);
      }

      for (; v20; --v20)
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      }

      goto LABEL_153;
    }

LABEL_126:
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + (v40 - 1)));
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
    v53 = v40 - 1;
    if (v40 == 1 && (a5 & 1) != 0)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
    }

    else if (v40 != 1)
    {
      v54 = v40 - 2;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v54--));
      }

      while (v54 != -1);
    }

    v55 = v53 + v20;
    if (a5)
    {
      v56 = 69;
    }

    else
    {
      if (a3 > v53)
      {
        llvm::SmallVectorImpl<char>::append(a2, a3 - v40 + 1, 48);
      }

      v56 = 101;
    }

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v56);
    if (v55 < 0)
    {
      v57 = 45;
    }

    else
    {
      v57 = 43;
    }

    if (v55 >= 0)
    {
      v58 = v55;
    }

    else
    {
      v58 = -v55;
    }

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v57);
    v67 = &v69;
    v68 = xmmword_2750C1320;
    do
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v67, (v58 % 0xA) | 0x30);
      v59 = v58 > 9;
      v58 /= 0xAu;
    }

    while (v59);
    v60 = v68;
    if ((a5 & 1) == 0 && v68 <= 1)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v67, 48);
      v60 = v68;
    }

    v61 = v60;
    if (v60)
    {
      v62 = v60 - 1;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(v67 + v62--));
        --v61;
      }

      while (v61);
    }

    if (v67 != &v69)
    {
      free(v67);
    }
  }

LABEL_153:
  if (v71 >= 0x41 && v70)
  {
    MEMORY[0x277C69E10](v70, 0x1000C8000313F17);
  }

  if (v75 >= 0x41 && v74)
  {
    MEMORY[0x277C69E10](v74, 0x1000C8000313F17);
  }

  if (__dst != v78)
  {
    free(__dst);
  }

  if (v73 >= 0x41 && v72)
  {
    MEMORY[0x277C69E10](v72, 0x1000C8000313F17);
  }
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

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::DoubleAPFloat *this, llvm::detail::DoubleAPFloat *a2)
{
  if (*this == *a2 && (v6 = *(a2 + 1)) != 0)
  {
    llvm::APFloat::Storage::operator=((*(this + 1) + 8), (v6 + 8));
    llvm::APFloat::Storage::operator=((*(this + 1) + 40), (*(a2 + 1) + 40));
  }

  else if (this != a2)
  {
    v4 = this + 8;
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5)
    {
      std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(v4, v5);
    }

    llvm::detail::DoubleAPFloat::DoubleAPFloat(this, a2);
  }

  return this;
}

uint64_t llvm::APFloat::add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::addWithSpecial(v3, v3, (a2 + 8), v3, a3);
  }

  else
  {
    return llvm::detail::IEEEFloat::addOrSubtract(v3, (a2 + 8), a3, 0);
  }
}

void llvm::APFloat::makeZero(llvm::APFloat *this, int a2)
{
  v2 = this;
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {
    do
    {
      llvm::APFloat::makeZero(*(v2 + 2), a2 & 1);
      v3 = 0;
      LOBYTE(a2) = 0;
      v4 = *(v2 + 2);
      v2 = (v4 + 32);
    }

    while (*(v4 + 40) == &llvm::semPPCDoubleDouble);
  }

  else
  {
    v3 = a2;
  }

  llvm::detail::IEEEFloat::makeZero((v2 + 8), v3);
}

uint64_t llvm::APFloat::compareAbsoluteValue(llvm::APFloat *this, const llvm::APFloat *a2)
{
  v4 = *(this + 1);
  v3 = (this + 8);
  if (v4 == &llvm::semPPCDoubleDouble)
  {
    v7 = *(this + 2);
    v8 = *(a2 + 2);
    result = llvm::APFloat::compareAbsoluteValue(v7, v8);
    if (result == 1)
    {
      v9 = v7 + 32;
      v10 = v8 + 32;
      result = llvm::APFloat::compareAbsoluteValue((v7 + 32), (v8 + 32));
      if ((result & 1) == 0)
      {
        v11 = v7;
        if (*(v7 + 8) == &llvm::semPPCDoubleDouble)
        {
          v11 = *(v7 + 16);
        }

        v12 = *(v11 + 28);
        if (*(v7 + 40) == &llvm::semPPCDoubleDouble)
        {
          v9 = *(v7 + 48);
        }

        v13 = v12 ^ *(v9 + 28);
        v14 = v8;
        if (*(v8 + 8) == &llvm::semPPCDoubleDouble)
        {
          v14 = *(v8 + 16);
        }

        v15 = (v13 >> 3) & 1;
        v16 = *(v14 + 28);
        if (*(v8 + 40) == &llvm::semPPCDoubleDouble)
        {
          v10 = *(v8 + 48);
        }

        v17 = ((v16 ^ *(v10 + 28)) >> 3) & 1;
        if (((v15 ^ 1) & 1) != 0 || v17)
        {
          if ((v15 ^ 1) & v17)
          {
            return 2;
          }

          else if ((v15 | v17) & 1) != 0 && (v15 & v17)
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
    v5 = (a2 + 8);

    return llvm::detail::IEEEFloat::compareAbsoluteValue(v3, v5);
  }

  return result;
}

uint64_t llvm::APFloat::subtract(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 8);
  if (*(a1 + 8) == &llvm::semPPCDoubleDouble)
  {
    llvm::APFloat::changeSign(*(a1 + 16));
    v10 = llvm::APFloat::changeSign(*(a1 + 16) + 32);
    v11 = llvm::detail::DoubleAPFloat::addWithSpecial(v10, v5, (a2 + 8), v5, a3);
    llvm::APFloat::changeSign(*(a1 + 16));
    llvm::APFloat::changeSign(*(a1 + 16) + 32);
    return v11;
  }

  else
  {
    v6 = (a2 + 8);
    v7 = (a1 + 8);

    return llvm::detail::IEEEFloat::addOrSubtract(v7, v6, a3, 1);
  }
}

uint64_t llvm::APFloat::changeSign(uint64_t this)
{
  v1 = this;
  for (i = *(this + 8); i == &llvm::semPPCDoubleDouble; i = *(v3 + 40))
  {
    this = llvm::APFloat::changeSign(*(v1 + 16));
    v3 = *(v1 + 16);
    v1 = v3 + 32;
  }

  v4 = *(i + 20);
  v5 = *(v1 + 28);
  if (v4 != 2 || (v5 & 5 | 2) != 3)
  {
    *(v1 + 28) = v5 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::DoubleAPFloat::addWithSpecial(int a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, llvm::detail::DoubleAPFloat *this, uint64_t a5)
{
  v68 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 1);
  v10 = (v9 + 8);
  v11 = *(v9 + 8);
  v12 = v9;
  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v12 = *(v9 + 16);
  }

  if ((*(v12 + 28) & 7) == 1)
  {
    goto LABEL_4;
  }

  v15 = *(a3 + 1);
  v16 = *(v15 + 8);
  v17 = v15;
  if (v16 == &llvm::semPPCDoubleDouble)
  {
    v17 = *(v15 + 16);
  }

  if ((*(v17 + 28) & 7) == 1)
  {
    goto LABEL_11;
  }

  v18 = v9;
  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v18 = *(v9 + 16);
  }

  if ((*(v18 + 28) & 7) == 3)
  {
LABEL_11:
    v13 = this;
    v14 = a3;
    goto LABEL_12;
  }

  v21 = *(a3 + 1);
  if (v16 == &llvm::semPPCDoubleDouble)
  {
    v21 = *(v15 + 16);
  }

  if ((*(v21 + 28) & 7) == 3)
  {
    goto LABEL_4;
  }

  v22 = v9;
  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v22 = *(v9 + 16);
  }

  if ((*(v22 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  v23 = *(a3 + 1);
  if (v16 == &llvm::semPPCDoubleDouble)
  {
    v23 = *(v15 + 16);
  }

  if ((*(v23 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  v24 = v9;
  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v24 = *(v9 + 16);
  }

  v25 = *(v24 + 28);
  v26 = *(a3 + 1);
  if (v16 == &llvm::semPPCDoubleDouble)
  {
    v26 = *(v15 + 16);
  }

  if (((v25 >> 3) & 1) == (*(v26 + 28) & 8) >> 3)
  {
LABEL_31:
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v9 = *(v9 + 16);
    }

    if ((*(v9 + 28) & 7) != 0)
    {
      if (v16 == &llvm::semPPCDoubleDouble)
      {
        v15 = *(v15 + 16);
      }

      if ((*(v15 + 28) & 7) == 0)
      {
        goto LABEL_11;
      }

      llvm::APFloat::Storage::Storage(v58, v10);
      llvm::APFloat::Storage::Storage(v56, (*(a2 + 1) + 40));
      llvm::APFloat::Storage::Storage(v54, (*(a3 + 1) + 8));
      llvm::APFloat::Storage::Storage(v52, (*(a3 + 1) + 40));
      llvm::APFloat::Storage::Storage(&v65, v58);
      v19 = llvm::APFloat::add(v64, v53, a5);
      if (v65 == &llvm::semPPCDoubleDouble)
      {
        v28 = *(v66 + 28);
      }

      else
      {
        v28 = v67;
      }

      if ((v28 & 6) != 0)
      {
        llvm::APFloat::Storage::Storage(v63, v58);
        v29 = llvm::APFloat::subtract(v62, v64, a5);
        llvm::APFloat::Storage::Storage(v60, v63);
        v30 = llvm::APFloat::add(v59, v53, a5);
        v31 = llvm::APFloat::add(v62, v64, a5);
        v32 = llvm::APFloat::subtract(v62, v57, a5);
        llvm::APFloat::changeSign(v62);
        v33 = llvm::APFloat::add(v59, v62, a5);
        v34 = llvm::APFloat::add(v59, v55, a5);
        v35 = v29 | v30 | v31 | v32 | v33 | v34 | llvm::APFloat::add(v59, v51, a5) | v19;
        if (v60[0] == &llvm::semPPCDoubleDouble)
        {
          v36 = *(v60[1] + 28);
        }

        else
        {
          v36 = v61;
        }

        if ((v36 & 7) != 3 || (v36 & 8) != 0)
        {
          llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v65);
          v35 = llvm::APFloat::add(*(this + 1), v59, a5) | v35;
          v38 = *(this + 1);
          if (*(v38 + 8) == &llvm::semPPCDoubleDouble)
          {
            v39 = *(*(v38 + 16) + 28);
          }

          else
          {
            v39 = *(v38 + 28);
          }

          if ((v39 & 7u) < 2)
          {
            llvm::APFloat::makeZero((v38 + 32), 0);
            v37 = 0;
            v19 = v35;
          }

          else
          {
            llvm::APFloat::Storage::operator=((v38 + 40), &v65);
            v40 = llvm::APFloat::subtract(*(this + 1) + 32, *(this + 1), a5);
            v35 = v40 | llvm::APFloat::add(*(this + 1) + 32, v59, a5) | v35;
            v37 = 1;
          }
        }

        else
        {
          llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v65);
          llvm::APFloat::makeZero((*(this + 1) + 32), 0);
          v37 = 0;
          v19 = 0;
        }

        llvm::APFloat::Storage::~Storage(v60);
        llvm::APFloat::Storage::~Storage(v63);
        if (!v37)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if ((v28 & 7) != 0)
        {
          goto LABEL_70;
        }

        v41 = v53;
        v42 = llvm::APFloat::compareAbsoluteValue(v57, v53);
        llvm::APFloat::Storage::operator=(&v65, v52);
        v43 = llvm::APFloat::add(v64, v55, a5);
        if (v42 == 2)
        {
          v44 = v53;
        }

        else
        {
          v44 = v57;
        }

        if (v42 == 2)
        {
          v41 = v57;
        }

        v45 = llvm::APFloat::add(v64, v44, a5);
        v19 = v45 | v43 | llvm::APFloat::add(v64, v41, a5);
        v46 = v65 == &llvm::semPPCDoubleDouble ? *(v66 + 28) : v67;
        if ((v46 & 7u) < 2)
        {
LABEL_70:
          llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v65);
          llvm::APFloat::makeZero((*(this + 1) + 32), 0);
          goto LABEL_71;
        }

        llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v65);
        llvm::APFloat::Storage::Storage(v63, v56);
        v47 = llvm::APFloat::add(v62, v51, a5);
        if (v42 == 2)
        {
          v48 = v58;
        }

        else
        {
          v48 = v54;
        }

        llvm::APFloat::Storage::operator=((*(this + 1) + 40), v48);
        v49 = llvm::APFloat::subtract(*(this + 1) + 32, v64, a5);
        v50 = llvm::APFloat::add(*(this + 1) + 32, v44, a5);
        v35 = v47 | v49 | v50 | llvm::APFloat::add(*(this + 1) + 32, v62, a5) | v19;
        llvm::APFloat::Storage::~Storage(v63);
      }

      v19 = v35;
LABEL_71:
      llvm::APFloat::Storage::~Storage(&v65);
      llvm::APFloat::Storage::~Storage(v52);
      llvm::APFloat::Storage::~Storage(v54);
      llvm::APFloat::Storage::~Storage(v56);
      llvm::APFloat::Storage::~Storage(v58);
      return v19;
    }

LABEL_4:
    v13 = this;
    v14 = a2;
LABEL_12:
    llvm::detail::DoubleAPFloat::operator=(v13, v14);
    return 0;
  }

  v27 = *(this + 1);
  if (*(v27 + 8) == &llvm::semPPCDoubleDouble)
  {
    v27 = *(v27 + 16);
  }

  llvm::detail::DoubleAPFloat::makeNaN(this, 0, (*(v27 + 28) & 8) != 0, 0);
  return 1;
}

void llvm::detail::DoubleAPFloat::makeNaN(llvm::APFloat **this, char a2, char a3, const llvm::APInt *a4)
{
  llvm::APFloat::makeNaN(this[1], a2, a3, a4);
  v5 = (this[1] + 32);

  llvm::APFloat::makeZero(v5, 0);
}

uint64_t llvm::detail::DoubleAPFloat::multiply(llvm::detail::DoubleAPFloat *this, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  v4 = a2;
  v45[3] = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  v7 = *(v6 + 8);
  v8 = v6;
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v6 + 16);
  }

  if ((*(v8 + 28) & 7) == 1)
  {
LABEL_4:
    v9 = this;
    a2 = this;
LABEL_9:
    llvm::detail::DoubleAPFloat::operator=(v9, a2);
    return 0;
  }

  v10 = *(a2 + 1);
  v11 = *(v10 + 8);
  v12 = v10;
  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v12 = *(v10 + 16);
  }

  if ((*(v12 + 28) & 7) == 1)
  {
    goto LABEL_8;
  }

  v15 = v6;
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v15 = *(v6 + 16);
  }

  if ((*(v15 + 28) & 7) == 3)
  {
    v16 = *(a2 + 1);
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v16 = *(v10 + 16);
    }

    if ((*(v16 + 28) & 7) == 0)
    {
      goto LABEL_24;
    }
  }

  v17 = v6;
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v17 = *(v6 + 16);
  }

  if ((*(v17 + 28) & 7) == 0)
  {
    v18 = *(a2 + 1);
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v18 = *(v10 + 16);
    }

    if ((*(v18 + 28) & 7) == 3)
    {
LABEL_24:
      llvm::APFloat::makeNaN(v6, 0, 0, 0);
      llvm::APFloat::makeZero((*(this + 1) + 32), 0);
      return 0;
    }
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v19 = *(*(v6 + 16) + 28);
  }

  else
  {
    v19 = *(v6 + 28);
  }

  v20 = v19 & 7;
  if (v20 == 3 || !v20)
  {
    goto LABEL_4;
  }

  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(v10 + 16);
  }

  v21 = *(v10 + 28) & 7;
  if (v21 == 3 || !v21)
  {
LABEL_8:
    v9 = this;
    goto LABEL_9;
  }

  llvm::APFloat::Storage::Storage(v45, (v6 + 8));
  llvm::APFloat::Storage::Storage(v44, (*(this + 1) + 40));
  llvm::APFloat::Storage::Storage(v43, (*(v4 + 1) + 8));
  llvm::APFloat::Storage::Storage(v41, (*(v4 + 1) + 40));
  llvm::APFloat::Storage::Storage(v38, v45);
  v13 = llvm::APFloat::multiply(v37, v42, a3);
  if (v38[0] == &llvm::semPPCDoubleDouble)
  {
    v22 = *(v38[1] + 28);
  }

  else
  {
    v22 = v39;
  }

  if ((v22 & 6) != 0 && (v22 & 7) != 3)
  {
    llvm::APFloat::Storage::Storage(v36, v45);
    llvm::APFloat::changeSign(v37);
    v29 = llvm::APFloat::fusedMultiplyAdd(v35, v42, v37, a3);
    llvm::APFloat::changeSign(v37);
    llvm::APFloat::Storage::Storage(v33, v45);
    v23 = llvm::APFloat::multiply(v32, v40, a3);
    llvm::APFloat::Storage::Storage(v31, v44);
    v24 = llvm::APFloat::multiply(v30, v42, a3);
    v25 = llvm::APFloat::add(v32, v30, a3);
    v26 = llvm::APFloat::add(v35, v32, a3);
    llvm::APFloat::Storage::~Storage(v31);
    llvm::APFloat::Storage::~Storage(v33);
    llvm::APFloat::Storage::Storage(v33, v38);
    v13 = v29 | v23 | v24 | v25 | v26 | llvm::APFloat::add(v32, v35, a3) | v13;
    llvm::APFloat::Storage::operator=((*(this + 1) + 8), v33);
    if (v33[0] == &llvm::semPPCDoubleDouble)
    {
      v27 = *(v33[1] + 28);
    }

    else
    {
      v27 = v34;
    }

    if ((v27 & 7u) < 2)
    {
      llvm::APFloat::makeZero((*(this + 1) + 32), 0);
    }

    else
    {
      v28 = llvm::APFloat::subtract(v37, v32, a3);
      v13 = v28 | llvm::APFloat::add(v37, v35, a3) | v13;
      llvm::APFloat::Storage::operator=((*(this + 1) + 40), v38);
    }

    llvm::APFloat::Storage::~Storage(v33);
    llvm::APFloat::Storage::~Storage(v36);
  }

  else
  {
    llvm::APFloat::Storage::operator=((*(this + 1) + 8), v38);
    llvm::APFloat::makeZero((*(this + 1) + 32), 0);
  }

  llvm::APFloat::Storage::~Storage(v38);
  llvm::APFloat::Storage::~Storage(v41);
  llvm::APFloat::Storage::~Storage(v43);
  llvm::APFloat::Storage::~Storage(v44);
  llvm::APFloat::Storage::~Storage(v45);
  return v13;
}

uint64_t llvm::APFloat::multiply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  v5 = (a2 + 8);
  if (v4 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::multiply(v3, v5, a3);
  }

  else
  {
    return llvm::detail::IEEEFloat::multiply(v3, v5, a3);
  }
}

uint64_t llvm::APFloat::fusedMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v7 = (a3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::fusedMultiplyAdd(v4, v6, v7, a4);
  }

  return llvm::detail::IEEEFloat::fusedMultiplyAdd(v4, v6, v7, a4);
}

void llvm::detail::DoubleAPFloat::divide(llvm::APFloat **a1, llvm::APFloat **a2, uint64_t a3)
{
  v10[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v7, a1);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v10, &v7);
  if (v8[0] >= 0x41u && v7)
  {
    MEMORY[0x277C69E10](v7, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v5, a2);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v8, &v5);
  llvm::APFloat::divide(v9, &v7, a3);
  llvm::APFloat::Storage::~Storage(v8);
  if (v6 >= 0x41)
  {
    if (v5)
    {
      MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
    }
  }

  llvm::APFloat::bitcastToAPInt(&v5, v9);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v7, &llvm::semPPCDoubleDouble, &v5);
}

uint64_t *llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::APFloat **this@<X0>)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::APFloat::bitcastToAPInt(&v8, this[1]);
  if (v9 >= 0x41)
  {
    v4 = v8;
  }

  else
  {
    v4 = &v8;
  }

  v10 = *v4;
  llvm::APFloat::bitcastToAPInt(&v6, (this[1] + 32));
  if (v7 > 0x40)
  {
    v11 = *v6;
    MEMORY[0x277C69E10]();
  }

  else
  {
    v11 = v6;
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x277C69E10](v8, 0x1000C8000313F17);
  }

  *(a1 + 2) = 128;
  return llvm::APInt::initFromArray(a1, &v10, 2u);
}

uint64_t llvm::APFloat::divide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  v5 = (a2 + 8);
  if (v4 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::divide(v3, v5, a3);
  }

  return llvm::detail::IEEEFloat::divide(v3, v5, a3);
}

uint64_t *llvm::APFloat::bitcastToAPInt@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::APFloat *this@<X0>)
{
  v3 = *(this + 1);
  v2 = (this + 8);
  if (v3 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, v2);
  }

  else
  {
    return llvm::detail::IEEEFloat::bitcastToAPInt(v2, a1);
  }
}

uint64_t llvm::detail::DoubleAPFloat::operator=(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 8;
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v5)
    {
      std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(v4, v5);
    }

    v6 = *a2;
    *(a2 + 1) = 0;
    *a1 = v6;
    *a2 = &llvm::semBogus;
  }

  return a1;
}

void llvm::detail::DoubleAPFloat::mod(llvm::APFloat **this, llvm::APFloat **a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v5, this);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v8, &v5);
  if (v6[0] >= 0x41u && v5)
  {
    MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v3, a2);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v6, &v3);
  llvm::APFloat::mod(v7, &v5);
  llvm::APFloat::Storage::~Storage(v6);
  if (v4 >= 0x41)
  {
    if (v3)
    {
      MEMORY[0x277C69E10](v3, 0x1000C8000313F17);
    }
  }

  llvm::APFloat::bitcastToAPInt(&v3, v7);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v5, &llvm::semPPCDoubleDouble, &v3);
}

uint64_t llvm::APFloat::mod(llvm::APFloat *this, const llvm::APFloat *a2)
{
  v3 = *(this + 1);
  v2 = (this + 8);
  v4 = (a2 + 8);
  if (v3 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::mod(v2, v4);
  }

  return llvm::detail::IEEEFloat::mod(v2, v4);
}

void llvm::detail::DoubleAPFloat::fusedMultiplyAdd(llvm::APFloat **a1, llvm::APFloat **a2, llvm::APFloat **a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v13, a1);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v16, &v13);
  if (v14[0] >= 0x41u && v13)
  {
    MEMORY[0x277C69E10](v13, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v9, a2);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v14, &v9);
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v7, a3);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v12, &v7);
  llvm::APFloat::fusedMultiplyAdd(v15, &v13, &v11, a4);
  llvm::APFloat::Storage::~Storage(v12);
  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x277C69E10](v7, 0x1000C8000313F17);
  }

  llvm::APFloat::Storage::~Storage(v14);
  if (v10 >= 0x41)
  {
    if (v9)
    {
      MEMORY[0x277C69E10](v9, 0x1000C8000313F17);
    }
  }

  llvm::APFloat::bitcastToAPInt(&v11, v15);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v13, &llvm::semPPCDoubleDouble, &v11);
}

void llvm::APFloat::makeInf(llvm::APFloat *this, char a2)
{
  v4 = *(this + 1);
  v3 = (this + 8);
  if (v4 == &llvm::semPPCDoubleDouble)
  {
    llvm::APFloat::makeInf(*(this + 2), a2);
    v5 = (*(this + 2) + 32);

    llvm::APFloat::makeZero(v5, 0);
  }

  else
  {

    llvm::detail::IEEEFloat::makeInf(v3, a2);
  }
}

void llvm::APFloat::makeNaN(llvm::APFloat *this, char a2, char a3, const llvm::APInt *a4)
{
  v6 = *(this + 1);
  v5 = (this + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::APFloat::makeNaN(*(this + 2), a2, a3, a4);
    v7 = (*(this + 2) + 32);

    llvm::APFloat::makeZero(v7, 0);
  }

  else
  {

    llvm::detail::IEEEFloat::makeNaN(v5, a2, a3, a4);
  }
}

uint64_t llvm::detail::DoubleAPFloat::compare(llvm::APFloat **this, const llvm::APFloat **a2)
{
  result = llvm::APFloat::compare(this[1], a2[1]);
  if (result == 1)
  {
    v5 = (this[1] + 32);
    v6 = (a2[1] + 32);

    return llvm::APFloat::compare(v5, v6);
  }

  return result;
}

uint64_t llvm::APFloat::compare(llvm::APFloat *this, const llvm::APFloat *a2)
{
  v3 = *(this + 1);
  v2 = (this + 8);
  v4 = (a2 + 8);
  if (v3 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::compare(v2, v4);
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v2, v4);
  }
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(llvm::APFloat **this, const llvm::APFloat **a2)
{
  result = llvm::APFloat::bitwiseIsEqual(this[1], a2[1]);
  if (result)
  {
    v5 = (this[1] + 32);
    v6 = (a2[1] + 32);

    return llvm::APFloat::bitwiseIsEqual(v5, v6);
  }

  return result;
}

uint64_t llvm::APFloat::bitwiseIsEqual(llvm::APFloat *this, const llvm::APFloat *a2)
{
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  v6 = *(a2 + 1);
  v5 = (a2 + 8);
  if (v3 != v6)
  {
    return 0;
  }

  if (v3 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::bitwiseIsEqual(v2, v5);
  }

  return llvm::detail::IEEEFloat::bitwiseIsEqual(v2, v5);
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::DoubleAPFloat *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (v3)
  {
    v9 = llvm::hash_value(v3, a2);
    v8 = llvm::hash_value((*(this + 1) + 32), v4);
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v10);
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
  }

  else
  {
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v10);
    v6 = v12 ^ HIDWORD(*this);
    v7 = 0x9DDFEA08EB382D69 * (v6 ^ (8 * *this + 8));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  }
}

unint64_t llvm::hash_value(llvm *this, const llvm::APFloat *a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(this + 1);
  v4 = (this + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::hash_value(v4, a2);
  }

  else
  {
    return llvm::detail::hash_value(v4, a2, a3, a4);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString(char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, llvm *x8_0@<X8>)
{
  v12[3] = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v12, &llvm::semPPCDoubleDoubleLegacy);
  llvm::APFloat::convertFromString(v11, a2, a3, a4, x8_0);
  llvm::APFloat::bitcastToAPInt(&v9, v11);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, &llvm::semPPCDoubleDouble, &v9);
}

void llvm::APFloat::convertFromString(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, llvm *a5@<X8>)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString(a2, a3, a4, a5);
  }

  llvm::detail::IEEEFloat::convertFromString(v5, a2, a3, a4, a5);
}

uint64_t llvm::detail::DoubleAPFloat::convertToInteger(llvm::APFloat **a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v18[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v15, a1);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v18, &v15);
  v13 = llvm::APFloat::convertToInteger(v17, a2, a3, a4, a5, a6, a7);
  llvm::APFloat::Storage::~Storage(v18);
  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x277C69E10](v15, 0x1000C8000313F17);
  }

  return v13;
}

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v8 = *(a1 + 8);
  v7 = (a1 + 8);
  if (v8 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::convertToInteger(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertToInteger(v7, a2, a3, a4, a5, a6, a7);
  }
}

void llvm::detail::DoubleAPFloat::convertFromAPInt(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v10[3] = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v10, &llvm::semPPCDoubleDoubleLegacy);
  llvm::APFloat::convertFromAPInt(v9, a2, a3, a4);
  llvm::APFloat::bitcastToAPInt(&v7, v9);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v8, &llvm::semPPCDoubleDouble, &v7);
}

uint64_t llvm::APFloat::convertFromAPInt(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt(v6, a2, a3, a4);
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(v6, a2, a3, a4, a5, a6);
}

void llvm::detail::DoubleAPFloat::toString(llvm::APFloat **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v9, a1);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v12, &v9);
  llvm::APFloat::toString(v11, a2, a3, a4, a5);
  llvm::APFloat::Storage::~Storage(v12);
  if (v10 >= 0x41)
  {
    if (v9)
    {
      MEMORY[0x277C69E10](v9, 0x1000C8000313F17);
    }
  }
}

void llvm::APFloat::toString(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::toString(v5, a2, a3, a4, a5);
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v5, a2, a3, a4, a5);
  }
}

void *llvm::APFloat::Storage::Storage(void *a1, void **a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 == &llvm::semPPCDoubleDouble)
  {
    v4 = *a2;
    v6 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v6, a2);
    llvm::APFloat::APFloat(v9, &v6, v4);
    llvm::detail::IEEEFloat::IEEEFloat(&v8, &llvm::semIEEEdouble);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble, v9, v7);
  }

  *a1 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(a1, a2);
  return a1;
}

uint64_t llvm::APFloat::APFloat(uint64_t a1, void *a2, char *a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage<>((a1 + 8), a2);
  llvm::APFloat::convertFromString(a1, a3, a4, 1, &v11);
  v7 = v12;
  if (v12)
  {
    v8 = v11;
    v11 = 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v10);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if ((v7 & 1) != 0 && v11)
  {
    (*(*v11 + 8))(v11);
  }

  return a1;
}

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4 == a2)
  {
    v9 = 0;
    *a4 = 0;
    return v9;
  }

  if (v4 == &llvm::semPPCDoubleDouble)
  {
    v9 = llvm::detail::IEEEFloat::convert((*(a1 + 16) + 8), a2, a3, a4);
    v11 = v5;
    if (*(a1 + 8) == &llvm::semPPCDoubleDouble)
    {
      v11 = *(a1 + 16) + 8;
    }

    v12 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v12, v11);
    llvm::APFloat::APFloat(v15, &v12, a2);
    llvm::APFloat::Storage::operator=(v5, v16);
    llvm::APFloat::Storage::~Storage(v16);
    if ((v12[2] - 64) <= 0xFFFFFF7F && v13)
    {
      MEMORY[0x277C69E10](v13, 0x1000C8000313F17);
    }

    return v9;
  }

  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::IEEEFloat::convert((a1 + 8), &llvm::semPPCDoubleDoubleLegacy, a3, a4);
    llvm::detail::IEEEFloat::bitcastToAPInt(v5, &v14);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, &llvm::semPPCDoubleDouble, &v14);
  }

  v7 = (a1 + 8);

  return llvm::detail::IEEEFloat::convert(v7, a2, a3, a4);
}

llvm::detail::IEEEFloat *llvm::APFloat::getAllOnesValue@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  llvm::APInt::APInt(&v5, a1[3], -1, 1);
  result = llvm::APFloat::Storage::Storage<llvm::APInt const&>((a2 + 8), a1, &v5);
  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      return MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
    }
  }

  return result;
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
    MEMORY[0x277C69E10](*a2, 0x1000C8000313F17);
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

double llvm::APFloat::convertToDouble(void **this)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (this[1] == &llvm::semIEEEdouble)
  {
    v4 = (this + 1);

    return llvm::detail::IEEEFloat::convertToDouble(v4);
  }

  else
  {
    llvm::APFloat::Storage::Storage(v7, (this + 1));
    llvm::APFloat::convert(v6, &llvm::semIEEEdouble, 1, &v5);
    if (v7[0] == &llvm::semPPCDoubleDouble)
    {
      v1 = (v7[1] + 8);
    }

    else
    {
      v1 = v7;
    }

    v2 = llvm::detail::IEEEFloat::convertToDouble(v1);
    llvm::APFloat::Storage::~Storage(v7);
    return v2;
  }
}

llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, unsigned int a2, uint64_t a3, BOOL a4)
{
  *(this + 2) = a2;
  if (a2 > 0x40)
  {
    llvm::APInt::initSlowCase(this, a3, a4);
  }

  *this = a3;
  llvm::APInt::clearUnusedBits(this);
  return this;
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

uint64_t llvm::APFloat::APFloat(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(&v6, a2);
  llvm::APFloat::Storage::Storage((a1 + 8), &v6, a3);
  if ((v6[2] - 64) <= 0xFFFFFF7F && v7)
  {
    MEMORY[0x277C69E10](v7, 0x1000C8000313F17);
  }

  return a1;
}

llvm::APFloat::Storage *llvm::APFloat::Storage::operator=(llvm::APFloat::Storage *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    if (v4 == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::operator=(a1, a2);
      return a1;
    }
  }

  else if (v4 != &llvm::semPPCDoubleDouble)
  {
LABEL_8:
    llvm::detail::IEEEFloat::operator=(a1, a2);
    return a1;
  }

  if (a1 != a2)
  {
    llvm::APFloat::Storage::~Storage(a1);
    if (*a2 == &llvm::semPPCDoubleDouble)
    {
      v6 = *(a2 + 8);
      *(a2 + 8) = 0;
      *a1 = &llvm::semPPCDoubleDouble;
      *(a1 + 1) = v6;
      *a2 = &llvm::semBogus;
      return a1;
    }

    *a1 = &llvm::semBogus;
    goto LABEL_8;
  }

  return a1;
}

void llvm::APFloat::Storage::~Storage(llvm::APFloat::Storage *this)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v3 = this + 8;
    v4 = *(this + 1);
    *(this + 1) = 0;
    if (v4)
    {
      std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(v3, v4);
    }
  }

  else if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x277C69E10](v2, 0x1000C8000313F17);
    }
  }
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage<llvm::APInt const&>(llvm::detail::IEEEFloat *a1, void *a2, const llvm::APInt ***a3)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble, a3);
  }

  llvm::detail::IEEEFloat::initFromAPInt(a1, a2, a3);
  return a1;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage(llvm::APFloat::Storage *this, const llvm::APFloat::Storage *a2)
{
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::DoubleAPFloat(this, a2);
  }

  else
  {
    return llvm::detail::IEEEFloat::IEEEFloat(this, a2);
  }
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::operator=(llvm::detail::IEEEFloat *result, llvm::detail::DoubleAPFloat *a2)
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

void std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = (a2 + 32 * v2 - 24);
      v4 = -32 * v2;
      do
      {
        llvm::APFloat::Storage::~Storage(v3);
        v3 = (v5 - 32);
        v4 += 32;
      }

      while (v4);
    }

    JUMPOUT(0x277C69E10);
  }
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage<>(llvm::detail::IEEEFloat *a1, void *a2)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
}

uint64_t llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(uint64_t this)
{
  *(this + 112) = 0;
  *(this + 80) = 0u;
  *(this + 96) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0u;
  *(this + 16) = 0u;
  *(this + 32) = 0u;
  *this = 0u;
  v1 = 0x2809A2000uLL;
  {
    v5 = this;
    v1 = 0x2809A2000uLL;
    v3 = v2;
    this = v5;
    if (v3)
    {
      v4 = llvm::hashing::detail::fixed_seed_override;
      if (!llvm::hashing::detail::fixed_seed_override)
      {
        v4 = 0xFF51AFD7ED558CCDLL;
      }

      llvm::hashing::detail::get_execution_seed(void)::seed = v4;
      v1 = 0x2809A2000;
      this = v5;
    }
  }

  *(this + 120) = *(v1 + 1624);
  return this;
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

uint64_t *llvm::hashing::detail::hash_state::create@<X0>(llvm::hashing::detail::hash_state *__return_ptr a1@<X8>, llvm::hashing::detail::hash_state *this@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t *a5@<X3>)
{
  *a1 = 0;
  *(a1 + 1) = a3;
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a3 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (a3 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  *(a1 + 2) = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  *(a1 + 3) = __ROR8__(a3 ^ 0xB492B66FBE98F273, 49);
  v6 = a3 ^ (a3 >> 47);
  *(a1 + 4) = 0xB492B66FBE98F273 * a3;
  *(a1 + 5) = v6;
  *(a1 + 6) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a3 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))) ^ a3) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))))) ^ ((0x9DDFEA08EB382D69 * (a3 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))) ^ a3) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))))) >> 47));
  return llvm::hashing::detail::hash_state::mix(a1, this, a4, a5);
}

void *llvm::hashing::detail::hash_state::mix(llvm::hashing::detail::hash_state *this, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(this + 1);
  v7 = *(this + 3);
  v8 = 0xB492B66FBE98F273 * __ROR8__(v6 + *this + v7 + *(a2 + 1), 37);
  v9 = *(this + 4);
  *this = v8;
  v10 = __ROR8__(v9 + v6 + *(a2 + 6), 42);
  v11 = (this + 48);
  v12 = *(this + 6) ^ v8;
  *this = v12;
  *(this + 1) = 0xB492B66FBE98F273 * v10;
  v13 = 0xB492B66FBE98F273 * v10 + v7 + *(a2 + 5);
  v15 = this + 40;
  v14 = *(this + 5);
  v16 = __ROR8__(v14 + *(this + 2), 33);
  *(this + 1) = v13;
  *(this + 2) = 0xB492B66FBE98F273 * v16;
  *(this + 3) = 0xB492B66FBE98F273 * v9;
  *(this + 4) = v14 + v12;
  llvm::hashing::detail::hash_state::mix_32_bytes(a2, this + 24, this + 4, a4);
  v17 = *(this + 1);
  *v15 = *v11 + *(this + 2);
  *v11 = *(a2 + 2) + v17;
  result = llvm::hashing::detail::hash_state::mix_32_bytes(a2 + 4, v15, v11, v18);
  v20 = *(this + 2);
  *(this + 2) = *this;
  *this = v20;
  return result;
}

void *llvm::hashing::detail::hash_state::mix_32_bytes(void *this, char *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2 + *this;
  *a2 = v4;
  v5 = this[3];
  *a3 = __ROR8__(v5 + *a3 + v4, 21);
  v6 = *a2;
  v7 = this[1] + *a2 + this[2];
  *a2 = v7;
  *a3 += v6 + __ROR8__(v7, 44);
  *a2 += v5;
  return this;
}

_DWORD *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(uint64_t a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
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

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine(llvm::hashing::detail::hash_combine_recursive_helper *this, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(this, a3, a4);
    llvm::hashing::detail::hash_state::mix((this + 64), this, v7, v8);

    return llvm::hashing::detail::hash_state::finalize((this + 64), &a3[a2 - this]);
  }

  else
  {
    v10 = a3 - this;
    v11 = *(this + 15);

    return llvm::hashing::detail::hash_short(this, v10, v11);
  }
}

unint64_t llvm::hashing::detail::hash_short(llvm::hashing::detail *this, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 <= 4)
  {
    v3 = *(this + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *this));
    v5 = v3 ^ (v4 >> 47) ^ v4;
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 - 9 <= 7)
  {
    v7 = *(this + a2 - 8);
    v8 = __ROR8__(v7 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) >> 47))) ^ v7;
  }

  if (a2 - 17 <= 0xF)
  {
    v9 = *(this + 1);
    v10 = 0x9AE16A3B2F90404FLL * *(this + a2 - 8);
    v11 = __ROR8__(0xB492B66FBE98F273 * *this - v9, 43) - 0x3C5A37A36834CED9 * *(this + a2 - 16) + __ROR8__(v10 ^ a3, 30);
    v12 = a3 + a2 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *this - v10;
    v5 = v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 >= 0x21)
  {
    v13 = this + a2;
    v14 = *(this + a2 - 16);
    v15 = *(this + a2 - 8);
    v16 = *this - 0x3C5A37A36834CED9 * (v14 + a2);
    v18 = *(this + 2);
    v17 = *(this + 3);
    v19 = __ROR8__(v16 + v17, 52);
    v20 = v16 + *(this + 1);
    v21 = __ROR8__(v20, 7);
    v22 = v20 + v18;
    v23 = v21 + __ROR8__(*this - 0x3C5A37A36834CED9 * (v14 + a2), 37) + v19;
    v24 = *(this + a2 - 32) + v18;
    v25 = __ROR8__(v24 + v15, 52);
    v26 = v23 + __ROR8__(v22, 31);
    v27 = __ROR8__(v24, 37);
    v28 = *(v13 - 3) + v24;
    v29 = __ROR8__(v28, 7);
    v30 = v28 + v14;
    v31 = __ROR8__(v30, 31);
    v32 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) ^ ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) >> 47))) ^ a3) + v26;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  if (a2)
  {
    v32 = (0x9AE16A3B2F90404FLL * (*this | (*(this + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(this + a2 - 1))) ^ a3;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  return a3 ^ 0x9AE16A3B2F90404FLL;
}

unint64_t llvm::hashing::detail::hash_state::finalize(llvm::hashing::detail::hash_state *this, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * (*(this + 5) ^ ((0x9DDFEA08EB382D69 * (*(this + 5) ^ *(this + 3))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 5) ^ *(this + 3))));
  v3 = 0x9DDFEA08EB382D69 * (*(this + 6) ^ ((0x9DDFEA08EB382D69 * (*(this + 6) ^ *(this + 4))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 6) ^ *(this + 4))));
  v4 = *this - 0x4B6D499041670D8DLL * (a2 ^ (a2 >> 47)) - 0x622015F714C7D297 * (v3 ^ (v3 >> 47));
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (*(this + 2) - 0x4B6D499041670D8DLL * (*(this + 1) ^ (*(this + 1) >> 47)) - 0x622015F714C7D297 * (v2 ^ (v2 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 1 == a2)
    {
      v6 = *__src;
      v7 = a3 - a2;
      memmove(__src, __src + 1, a3 - a2);
      v4 = &__src[v7];
      *v4 = v6;
    }

    else if (a2 + 1 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 1;
      v9 = a3 - 1 - __src;
      if (a3 - 1 != __src)
      {
        memmove(__src + 1, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,char *>(__src, a2, a3);
    }
  }

  return v4;
}

_BYTE *std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,char *>(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2 - a1;
  if (a2 - a1 == a3 - a2)
  {
    if (a1 != a2 && a2 != a3)
    {
      v4 = a2 + 1;
      v5 = a1 + 1;
      do
      {
        v6 = *(v5 - 1);
        *(v5 - 1) = *(v4 - 1);
        *(v4 - 1) = v6;
        if (v5 == a2)
        {
          break;
        }

        ++v5;
      }

      while (v4++ != a3);
    }
  }

  else
  {
    v8 = a3 - a2;
    v9 = a2 - a1;
    do
    {
      v10 = v9;
      v9 = v8;
      v8 = v10 % v8;
    }

    while (v8);
    v11 = &a1[v9];
    do
    {
      v13 = *--v11;
      v12 = v13;
      v14 = &v11[v3];
      v15 = v11;
      do
      {
        v16 = v15;
        v15 = v14;
        *v16 = *v14;
        v17 = (a3 - v14);
        v18 = __OFSUB__(v3, v17);
        v20 = v3 - v17;
        v19 = (v20 < 0) ^ v18;
        v14 = &a1[v20];
        if (v19)
        {
          v14 = &v15[v3];
        }
      }

      while (v14 != v11);
      *v15 = v12;
    }

    while (v11 != a1);
    return &a1[a3 - a2];
  }

  return a2;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(llvm::hashing::detail::hash_state *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  {
    v13 = llvm::hashing::detail::fixed_seed_override;
    if (!llvm::hashing::detail::fixed_seed_override)
    {
      v13 = 0xFF51AFD7ED558CCDLL;
    }

    llvm::hashing::detail::get_execution_seed(void)::seed = v13;
  }

  v6 = llvm::hashing::detail::get_execution_seed(void)::seed;
  v7 = a2 - this;
  if ((a2 - this) > 0x40)
  {
    llvm::hashing::detail::hash_state::create(v14, this, llvm::hashing::detail::get_execution_seed(void)::seed, llvm::hashing::detail::get_execution_seed(void)::seed, a4);
    v11 = (v7 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v7 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (this + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v14, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v7 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v14, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v14, v7);
  }

  else
  {

    return llvm::hashing::detail::hash_short(this, a2 - this, v6);
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
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
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
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
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
        this = MEMORY[0x277C69E10]();
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

llvm::APInt *llvm::APInt::operator*@<X0>(uint64_t a1@<X0>, const unint64_t **a2@<X1>, llvm::APInt *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v5 = *a2 * *a1;

  return llvm::APInt::APInt(a3, v4, v5, 0);
}

uint64_t llvm::APInt::tcMultiply(llvm::APInt *this, unint64_t *a2, const unint64_t **a3, const unint64_t *a4, unsigned int a5, uint64_t a6, uint64_t a7, BOOL a8)
{
  v8 = a4;
  v11 = this;
  *this = 0;
  if (a4 < 2)
  {
    if (!a4)
    {
      return 0;
    }
  }

  else
  {
    bzero(this + 8, 8 * (a4 - 1));
  }

  LODWORD(v12) = 0;
  v13 = v8;
  do
  {
    v14 = *a3++;
    v12 = llvm::APInt::tcMultiplyPart(v11, a2, v14, 0, v8, v13, 1) | v12;
    v11 = (v11 + 8);
    --v13;
  }

  while (v13);
  return v12;
}

uint64_t llvm::APInt::operator*=(uint64_t a1, const unint64_t **a2)
{
  llvm::APInt::operator*(a1, a2, &v4);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    MEMORY[0x277C69E10](*a1, 0x1000C8000313F17);
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
    v9 = *(*this + 8 * ((v2 - 1) >> 6)) & (1 << (v2 - 1));
    v10 = *(a2 + 2);
    v11 = v10 - 1;
    if (v10 >= 0x41)
    {
      v12 = (*a2 + 8 * (v11 >> 6));
    }

    else
    {
      v12 = a2;
    }

    if ((v9 != 0) == ((*v12 >> v11) & 1))
    {
      v13 = ((v2 + 63) >> 3) & 0x3FFFFFF8;
      do
      {
        if (!v13)
        {
          return 0;
        }

        v14 = *(*this - 8 + v13);
        v15 = *(*a2 - 8 + v13);
        v13 -= 8;
      }

      while (v14 == v15);
      if (v14 > v15)
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v9)
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
    v4 = (*this << v3) >> v3;
    v5 = (*a2 << v3) >> v3;
    v6 = v4 < v5;
    v7 = v4 > v5;
    if (v6)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v7;
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
    v3 = *this;

    llvm::APInt::APInt(a1, a3, v3, 0);
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
  v11 = *MEMORY[0x277D85DE8];
  v6 = (this + 1);
  v5 = *(this + 2);
  if (v5 > 0x40)
  {
    v8 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*this, *this + (((v5 + 63) >> 3) & 0x3FFFFFF8), a3, a4);
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v9);
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(v9, 0, v9, v10, v6, &v8);
  }

  else
  {
    llvm::hashing::detail::hash_combine_recursive_helper::hash_combine_recursive_helper(v9);
    return llvm::hashing::detail::hash_combine_recursive_helper::combine<int,llvm::hash_code>(v9, 0, v9, v10, v6, this);
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

void llvm::APInt::getHiBits(llvm::APInt *this@<X0>, int a2@<W1>, llvm::APInt *a3@<X8>)
{
  v3 = *(this + 2) - a2;
  v4 = llvm::APInt::APInt(a3, this);

  llvm::APInt::lshrInPlace(v4, v3, v5, v6);
}

uint64_t llvm::APInt::getLoBits@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, llvm::APInt *a3@<X8>)
{
  llvm::APInt::APInt(a3, *(this + 2), 0, 0);
  llvm::APInt::setBits(a3, 0, a2);

  return llvm::APInt::operator&=(a3, this);
}

uint64_t llvm::APInt::operator&=(uint64_t result, void **a2)
{
  v2 = *(result + 8);
  if (v2 > 0x40)
  {
    v3 = *result;
    v4 = *a2;
    v5 = (v2 + 63) >> 6;
    do
    {
      v6 = *v4++;
      *v3++ &= v6;
      --v5;
    }

    while (v5);
  }

  else
  {
    *result &= *a2;
  }

  return result;
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
  if (v1 >= 0x41 && v2 == result)
  {
    v7 = ((v1 + 63) >> 6) - 1;
    LODWORD(result) = v2;
    while (1)
    {
      v8 = *(v4 + 8 * --v7);
      if (v8 != -1)
      {
        break;
      }

      result = (result + 64);
      if (v7 <= 0)
      {
        return result;
      }
    }

    return __clz(~v8) + result;
  }

  return result;
}

uint64_t llvm::APInt::countTrailingZerosSlowCase(unint64_t **this)
{
  v1 = *(this + 2);
  if (v1)
  {
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
        goto LABEL_8;
      }
    }

    v5 = __clz(__rbit64(*v4)) - v2;
  }

  else
  {
    v5 = 0;
  }

LABEL_8:
  if (v1 >= v5)
  {
    return v5;
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

void llvm::APInt::byteSwap(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 == 32)
  {
    v5 = bswap32(*this);
    v6 = 32;
    goto LABEL_5;
  }

  if (v4 == 16)
  {
    v5 = bswap32(*this) >> 16;
    v6 = 16;
LABEL_5:
    *(a2 + 2) = v6;
    *a2 = v5;

    llvm::APInt::clearUnusedBits(a2);
    return;
  }

  if (v4 > 0x40)
  {
    llvm::APInt::APInt(a2, (v4 + 63) & 0xFFFFFFC0, 0, 0);
    v10 = *(this + 2);
    if (v10)
    {
      v11 = 0;
      v12 = ((v10 + 63) >> 6) - 1;
      do
      {
        *(*a2 + v11) = bswap64(*(*this + 8 * v12--));
        v11 += 8;
      }

      while (v12 != -1);
    }

    v13 = *(a2 + 2);
    if (v13 != v10)
    {
      llvm::APInt::lshrInPlace(a2, v13 - v10, v8, v9);
      *(a2 + 2) = *(this + 2);
    }
  }

  else
  {
    v7 = bswap64(*this) >> -v4;

    llvm::APInt::APInt(a2, v4, v7, 0);
  }
}

void llvm::APInt::lshrInPlace(uint64_t this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v4 = *(this + 8);
  if (v4 > 0x40)
  {
    llvm::APInt::tcShiftRight(*this, ((v4 + 63) >> 6), a2);
  }

  else if (v4 == a2)
  {
    *this = 0;
  }

  else
  {
    *this >>= a2;
  }
}

llvm::APInt *llvm::APInt::trunc@<X0>(llvm::APInt *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, unsigned int a3@<W1>)
{
  v3 = this;
  v5 = *(this + 2);
  if (a3 > 0x40)
  {
    if (v5 != a3)
    {
      operator new[]();
    }

    return llvm::APInt::APInt(a1, this);
  }

  else
  {
    if (v5 >= 0x41)
    {
      v3 = *this;
    }

    v6 = *v3;

    return llvm::APInt::APInt(a1, a3, v6, 0);
  }
}

llvm::APInt *llvm::APInt::sext@<X0>(const void **this@<X0>, unsigned int a2@<W1>, llvm::APInt *a3@<X8>)
{
  if (a2 > 0x40)
  {
    if (*(this + 2) != a2)
    {
      operator new[]();
    }

    return llvm::APInt::APInt(a3, this);
  }

  else
  {
    v3 = (*this << -*(this + 8)) >> -*(this + 8);

    return llvm::APInt::APInt(a3, a2, v3, 0);
  }
}

llvm::APInt *llvm::APInt::sextOrTrunc@<X0>(llvm::APInt *this@<X0>, unsigned int a2@<W1>, llvm::APInt *a3@<X8>)
{
  v3 = *(this + 2);
  if (v3 < a2)
  {
    return llvm::APInt::sext(this, a2, a3);
  }

  if (v3 > a2)
  {
    return llvm::APInt::trunc(a3, this, a2);
  }

  return llvm::APInt::APInt(a3, this);
}

uint64_t llvm::APInt::ashrInPlace(uint64_t this, unsigned int a2)
{
  v2 = *(this + 8);
  if (v2 > 0x40)
  {
    return llvm::APInt::ashrSlowCase(this, a2);
  }

  v3 = (*this << -v2) >> -v2;
  if (v2 == a2)
  {
    v4 = 63;
  }

  else
  {
    v4 = a2;
  }

  *this = v3 >> v4;
  return llvm::APInt::clearUnusedBits(this);
}

uint64_t *llvm::APInt::getLimitedValue(uint64_t ***this, unint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= 0x41)
  {
    if (v4 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      return a2;
    }

    v5 = **this;
  }

  else
  {
    v5 = *this;
  }

  if (v5 <= a2)
  {
    return v5;
  }

  return a2;
}

uint64_t llvm::APInt::ashrSlowCase(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    v2 = this;
    v3 = *(this + 8);
    v4 = v3 - 1;
    v5 = this;
    if (v3 >= 0x41)
    {
      v5 = (*this + 8 * (v4 >> 6));
    }

    v6 = *v5 & (1 << v4);
    v7 = a2 >> 6;
    v8 = (v3 + 63) >> 6;
    v9 = v8 - (a2 >> 6);
    if (v8 != a2 >> 6)
    {
      v10 = v8 - 1;
      *(*this + 8 * v10) = (*(*this + 8 * v10) << -v3) >> -v3;
      v11 = a2 & 0x3F;
      if ((a2 & 0x3F) != 0)
      {
        v12 = v9 - 1;
        if (v9 == 1)
        {
          v12 = 0;
        }

        else
        {
          v13 = 0;
          v14 = a2 >> 6;
          do
          {
            v15 = *(*this + 8 * v14++) >> v11;
            *(*this + v13) = (*(*this + 8 * v14) << (64 - v11)) | v15;
            v13 += 8;
          }

          while (8 * (v9 - 1) != v13);
        }

        *(*this + 8 * v12) = *(*this + 8 * v10) >> v11;
        *(*this + 8 * v12) = (*(*this + 8 * v12) << v11) >> v11;
      }

      else
      {
        memmove(*this, (*this + 8 * v7), 8 * v9);
      }
    }

    if (v6)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    memset((*v2 + 8 * v9), v16, 8 * v7);

    return llvm::APInt::clearUnusedBits(v2);
  }

  return this;
}

void llvm::APInt::tcShiftRight(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a3 >> 6;
    }

    v5 = a2 - v4;
    v6 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v7 = *(this + v4) >> v6;
        *this = v7;
        if (v5 != 1)
        {
          v8 = v4 + 1;
          v9 = (this + 8);
          v10 = 1 - v5;
          do
          {
            *(v9 - 1) = (*(this + v8) << (64 - v6)) | v7;
            v7 = *(this + v8) >> v6;
            *v9++ = v7;
            ++v8;
          }

          while (!__CFADD__(v10++, 1));
        }
      }
    }

    else
    {
      memmove(this, this + 8 * v4, (8 * v5));
    }

    bzero(this + 8 * v5, 8 * v4);
  }
}

void llvm::APInt::tcShiftLeft(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a3 >> 6;
    }

    v5 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v6 = a2 - 1;
        v7 = *(this + v6 - v4) << v5;
        v8 = this + 8 * v6;
        *v8 = v7;
        if (v6 > v4)
        {
          v9 = (this + 8 * a2 + -8 * v4 - 16);
          v10 = a2 - 2 - v4;
          v11 = (this + 8 * (a2 - 2));
          do
          {
            v12 = *v9--;
            *v8 = (v12 >> (64 - v5)) | v7;
            --v6;
            v7 = *(this + v10) << v5;
            v8 = this + 8 * v6;
            *v11-- = v7;
            --v10;
          }

          while (v4 < v6);
        }
      }
    }

    else
    {
      memmove(this + 8 * v4, this, 8 * (a2 - v4));
    }

    bzero(this, 8 * v4);
  }
}

void llvm::APInt::udiv(llvm::APInt *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, const llvm::APInt *a3@<X1>)
{
  v6 = *(this + 2);
  if (v6 <= 0x40)
  {
    v7 = *this / *a3;
    v8 = a1;
    v9 = v6;
LABEL_8:

    llvm::APInt::APInt(v8, v9, v7, 0);
    return;
  }

  v10 = llvm::APInt::countLeadingZerosSlowCase(this);
  v11 = *(a3 + 2);
  if (v11 > 0x40)
  {
    v12 = llvm::APInt::countLeadingZerosSlowCase(a3);
  }

  else
  {
    v12 = v11 + __clz(*a3) - 64;
  }

  if (v6 == v10)
  {
LABEL_7:
    v8 = a1;
    v9 = v6;
    v7 = 0;
    goto LABEL_8;
  }

  v13 = v11 - v12;
  if (v13 == 1)
  {

    llvm::APInt::APInt(a1, this);
  }

  else
  {
    v14 = (((v6 - v10) + 63) >> 6);
    v15 = ((v13 + 63) >> 6);
    if (v14 < v15 || (llvm::APInt::compare(this, a3) & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

    if (llvm::APInt::operator==(this, a3))
    {
      v9 = *(this + 2);
      v8 = a1;
      v7 = 1;
      goto LABEL_8;
    }

    v9 = *(this + 2);
    if (v14 == 1)
    {
      v7 = **this / **a3;
      v8 = a1;
      goto LABEL_8;
    }

    llvm::APInt::APInt(a1, v9, 0, 0);
    v17 = *this;
    v18 = *a3;
    v19 = *a1;

    llvm::APInt::divide(v17, v14, v18, v15, v19, 0, v16);
  }
}

void llvm::APInt::udivrem(llvm::APInt *this, const llvm::APInt *a2, const llvm::APInt *a3, llvm::APInt *a4, llvm::APInt *a5)
{
  v9 = *(this + 2);
  if (v9 <= 0x40)
  {
    v10 = *this % *a2;
    llvm::APInt::APInt(&v28, v9, *this / *a2, 0);
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x277C69E10](*a3, 0x1000C8000313F17);
    }

    *a3 = v28;
    *(a3 + 2) = v29;
    v11 = v9;
    v12 = v10;
LABEL_15:
    llvm::APInt::APInt(&v28, v11, v12, 0);
    if (*(a4 + 2) >= 0x41u)
    {
      if (*a4)
      {
        MEMORY[0x277C69E10](*a4, 0x1000C8000313F17);
      }
    }

    *a4 = v28;
    *(a4 + 2) = v29;
    return;
  }

  v13 = llvm::APInt::countLeadingZerosSlowCase(this);
  v14 = *(a2 + 2);
  if (v14 > 0x40)
  {
    v15 = llvm::APInt::countLeadingZerosSlowCase(a2);
  }

  else
  {
    v15 = v14 + __clz(*a2) - 64;
  }

  if (v9 == v13)
  {
    v16 = v9;
    v17 = 0;
LABEL_11:
    llvm::APInt::APInt(&v28, v16, v17, 0);
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      MEMORY[0x277C69E10](*a3, 0x1000C8000313F17);
    }

    *a3 = v28;
    *(a3 + 2) = v29;
    v11 = v9;
    v12 = 0;
    goto LABEL_15;
  }

  v18 = ((v9 - v13) + 63) >> 6;
  v19 = v14 - v15;
  v20 = (v19 + 63) >> 6;
  if (v19 == 1)
  {
    llvm::APInt::operator=(a3, this);
    llvm::APInt::APInt(&v28, v9, 0, 0);
    if (*(a4 + 2) >= 0x41u && *a4)
    {
      MEMORY[0x277C69E10](*a4, 0x1000C8000313F17);
    }

    *a4 = v28;
    *(a4 + 2) = v29;
  }

  if (v18 >= v20 && (llvm::APInt::compare(this, a2) & 0x80000000) == 0)
  {
    if (!llvm::APInt::operator==(this, a2))
    {
      llvm::APInt::reallocate(a3, v9);
      llvm::APInt::reallocate(a4, v9);
      v22 = *this;
      if (v18 == 1)
      {
        v23 = *v22;
        v24 = **a2;
        v25 = *v22 / v24;
        llvm::APInt::operator=(a3, v25);
        llvm::APInt::operator=(a4, v23 - v25 * v24);
      }

      else
      {
        llvm::APInt::divide(v22, v18, *a2, v20, *a3, *a4, v21);
        v26 = (*a3 + 8 * v18);
        v27 = (v9 + 63) >> 6;
        bzero(v26, (8 * (v27 - v18)));
        bzero((*a4 + 8 * v20), (8 * (v27 - v20)));
      }

      return;
    }

    v16 = v9;
    v17 = 1;
    goto LABEL_11;
  }

  llvm::APInt::operator=(a4, this);
  llvm::APInt::APInt(&v28, v9, 0, 0);
  if (*(a3 + 2) >= 0x41u && *a3)
  {
    MEMORY[0x277C69E10](*a3, 0x1000C8000313F17);
  }

  *a3 = v28;
  *(a3 + 2) = v29;
}

void llvm::APInt::divide(llvm::APInt *this, const unint64_t *a2, uint64_t *a3, const unint64_t *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  v7 = a6;
  v82 = *MEMORY[0x277D85DE8];
  v11 = (2 * a4);
  v12 = (2 * a2);
  v79 = a2;
  v80 = a4;
  if (a6)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v78 = v12 - 2 * a4;
  v14 = (v13 * v11 + 2 * v78) | 1;
  v15 = (2 * a2) | 1u;
  v16 = 4 * v15;
  if (v14 > 0x80)
  {
    operator new[]();
  }

  v17 = &v81[v15];
  v18 = v11 + v15;
  v19 = &v81[v18];
  v20 = &v81[(v18 + v12)];
  if (a6)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  bzero(v81, v16);
  if (v79)
  {
    v22 = 0;
    do
    {
      v23 = *this;
      this = (this + 8);
      v81[v22] = v23;
      v81[(v22 + 1)] = HIDWORD(v23);
      v22 += 2;
    }

    while (2 * v79 != v22);
  }

  v81[v12] = 0;
  bzero(v17, 4 * v11);
  if (v80)
  {
    v24 = 0;
    v25 = 2 * v80;
    do
    {
      v26 = *a3++;
      v17[v24] = v26;
      v17[(v24 + 1)] = HIDWORD(v26);
      v24 += 2;
    }

    while (v25 != v24);
  }

  bzero(v19, 4 * v12);
  if (v7)
  {
    bzero(v21, 4 * v11);
  }

  if (v11)
  {
    while (!v17[v11 - 1])
    {
      if (!--v11)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v12) = v12 - v11;
  }

  else
  {
    LODWORD(v12) = v78;
  }

LABEL_23:
  if (v11 + v12)
  {
    v27 = (v11 + v12);
    while (!v81[v27 - 1])
    {
      LODWORD(v12) = v12 - 1;
      if (!(--v27 * 4))
      {
        LODWORD(v12) = -v11;
        break;
      }
    }
  }

  v28 = (v11 - 1);
  if (v11 != 1)
  {
    v36 = __clz(v17[v28]);
    v37 = v12 + v11;
    if (!v36)
    {
      v41 = 0;
      goto LABEL_53;
    }

    if (v37)
    {
      v38 = 0;
      v39 = v81;
      v40 = (v12 + v11);
      do
      {
        v41 = *v39 >> (32 - v36);
        *v39 = (*v39 << v36) | v38;
        ++v39;
        v38 = v41;
        --v40;
      }

      while (v40);
      if (!v11)
      {
LABEL_53:
        v81[v37] = v41;
        v46 = v11 - 2;
        v47 = v12;
        do
        {
          v48 = (v11 + v47);
          v49 = v81[(v48 - 1)] | (v81[v48] << 32);
          v50 = v17[v28];
          v51 = v49 / v50;
          v52 = v49 % v50;
          if (v49 / v50 == 0x100000000 || (v53 = v49 / v50, v51 * v17[v46] > (v81[(v48 - 2)] | (v52 << 32))))
          {
            v53 = v51 - 1;
            v54 = v52 + v50;
            if (!HIDWORD(v54) && (v51 == 0x100000001 || v53 * v17[v46] > (v81[(v48 - 2)] | (v54 << 32))))
            {
              v53 = v51 - 2;
            }
          }

          if (v11)
          {
            v55 = 0;
            v56 = v17;
            v57 = v47;
            v58 = v11;
            do
            {
              v59 = *v56++;
              v60 = v53 * v59;
              v61 = v81[v57] - (v55 + v60);
              v81[v57] = v61;
              v62 = HIDWORD(v60) - HIDWORD(v61);
              v55 = v62;
              ++v57;
              --v58;
            }

            while (v58);
            v63 = v81[v48];
            v81[v48] = v63 - v62;
            v19[v47] = v53;
            if (v62 > v63)
            {
              LOBYTE(v64) = 0;
              v19[v47] = v53 - 1;
              v65 = v47;
              v66 = v17;
              v67 = v11;
              do
              {
                v69 = *v66++;
                v68 = v69;
                v70 = v81[v65];
                if (v69 >= v70)
                {
                  v71 = v81[v65];
                }

                else
                {
                  v71 = v68;
                }

                v72 = v68 + (v64 & 1) + v70;
                v81[v65] = v72;
                if (v72 >= v71)
                {
                  v64 = v64 & (v72 == v71);
                }

                else
                {
                  v64 = 1;
                }

                ++v65;
                --v67;
              }

              while (v67);
              v81[v48] += v64;
            }
          }

          else
          {
            v19[v47] = v53;
          }

          v34 = v47-- <= 0;
        }

        while (!v34);
        if (v21)
        {
          if (v36)
          {
            if ((v28 & 0x80000000) == 0)
            {
              v73 = 0;
              do
              {
                v74 = v81[v28];
                v21[v28] = (v74 >> v36) | v73;
                v73 = v74 << (32 - v36);
                v34 = v28-- <= 0;
              }

              while (!v34);
            }
          }

          else if ((v28 & 0x80000000) == 0)
          {
            do
            {
              v21[v28] = v81[v28];
              v34 = v28-- <= 0;
            }

            while (!v34);
          }
        }

        goto LABEL_86;
      }
    }

    else
    {
      v41 = 0;
      if (!v11)
      {
        goto LABEL_53;
      }
    }

    v42 = 0;
    v43 = v11;
    v44 = v17;
    do
    {
      v45 = *v44 >> (32 - v36);
      *v44 = (*v44 << v36) | v42;
      ++v44;
      v42 = v45;
      --v43;
    }

    while (v43);
    goto LABEL_53;
  }

  v29 = 0;
  if ((v12 & 0x80000000) == 0)
  {
    v30 = *v17;
    v31 = v12;
    do
    {
      v32 = v29;
      v29 = v81[v31];
      v33 = v29 | (v32 << 32);
      if (v33)
      {
        if (v33 >= v30)
        {
          if (v33 == v30)
          {
            v29 = 0;
            v19[v31] = 1;
          }

          else
          {
            v35 = v33 / v30;
            v19[v31] = v35;
            v29 = (v29 - v30 * v35);
          }

          goto LABEL_38;
        }
      }

      else
      {
        v29 = 0;
      }

      v19[v31] = 0;
LABEL_38:
      v34 = v31-- <= 0;
    }

    while (!v34);
  }

  if (v21)
  {
    *v21 = v29;
  }

LABEL_86:
  if (v79 && a5)
  {
    v75 = 0;
    do
    {
      *a5++ = v19[v75] | (v19[(v75 + 1)] << 32);
      v75 += 2;
    }

    while (2 * v79 != v75);
  }

  if (v80 && v7)
  {
    v76 = 0;
    v77 = 2 * v80;
    do
    {
      *v7++ = v21[v76] | (v21[(v76 + 1)] << 32);
      v76 += 2;
    }

    while (v77 != v76);
  }
}

void llvm::APInt::sdiv(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
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
  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = a2;
  }

  v13 = (1 << v11) & *v12;
  if ((v9 >> v7))
  {
    if (v13)
    {
      v14 = llvm::APInt::APInt(&v27, this);
      llvm::APInt::flipAllBits(v14);
      llvm::APInt::operator++(&v27);
      v30 = v28;
      v29 = v27;
      v28 = 0;
      llvm::APInt::APInt(&v23, a2);
      llvm::APInt::flipAllBits(&v23);
      llvm::APInt::operator++(&v23);
      v26 = v24;
      v25 = v23;
      v24 = 0;
      llvm::APInt::udiv(a3, &v29, &v25);
      if (v26 >= 0x41 && v25)
      {
        MEMORY[0x277C69E10](v25, 0x1000C8000313F17);
      }

      if (v24 >= 0x41 && v23)
      {
        MEMORY[0x277C69E10](v23, 0x1000C8000313F17);
      }

      if (v30 >= 0x41 && v29)
      {
        MEMORY[0x277C69E10](v29, 0x1000C8000313F17);
      }

      if (v28 >= 0x41 && v27)
      {
LABEL_32:
        MEMORY[0x277C69E10]();
      }
    }

    else
    {
      llvm::APInt::APInt(&v19, this);
      llvm::APInt::flipAllBits(&v19);
      llvm::APInt::operator++(&v19);
      v30 = v20;
      v29 = v19;
      v20 = 0;
      llvm::APInt::udiv(&v21, &v29, a2);
      llvm::APInt::flipAllBits(&v21);
      llvm::APInt::operator++(&v21);
      *(a3 + 2) = v22;
      *a3 = v21;
      v22 = 0;
      if (v30 >= 0x41 && v29)
      {
        MEMORY[0x277C69E10](v29, 0x1000C8000313F17);
      }

      if (v20 >= 0x41 && v19)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v13)
  {
    llvm::APInt::APInt(&v15, a2);
    llvm::APInt::flipAllBits(&v15);
    llvm::APInt::operator++(&v15);
    v30 = v16;
    v29 = v15;
    v16 = 0;
    llvm::APInt::udiv(&v17, this, &v29);
    llvm::APInt::flipAllBits(&v17);
    llvm::APInt::operator++(&v17);
    *(a3 + 2) = v18;
    *a3 = v17;
    v18 = 0;
    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x277C69E10](v29, 0x1000C8000313F17);
    }

    if (v16 >= 0x41 && v15)
    {
      goto LABEL_32;
    }
  }

  else
  {

    llvm::APInt::udiv(a3, this, a2);
  }
}

void llvm::APInt::urem(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v6 = *(this + 2);
  if (v6 <= 0x40)
  {
    v7 = *this % *a2;
    v8 = a3;
    v9 = v6;
LABEL_10:

    llvm::APInt::APInt(v8, v9, v7, 0);
    return;
  }

  v10 = llvm::APInt::countLeadingZerosSlowCase(this);
  v11 = *(a2 + 2);
  if (v11 > 0x40)
  {
    v12 = llvm::APInt::countLeadingZerosSlowCase(a2);
  }

  else
  {
    v12 = v11 + __clz(*a2) - 64;
  }

  if (v6 == v10 || (v13 = v11 - v12, v13 == 1))
  {
    v8 = a3;
    v9 = v6;
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v14 = (((v6 - v10) + 63) >> 6);
  v15 = ((v13 + 63) >> 6);
  if (v14 < v15 || (llvm::APInt::compare(this, a2) & 0x80000000) != 0)
  {

    llvm::APInt::APInt(a3, this);
  }

  else
  {
    if (llvm::APInt::operator==(this, a2))
    {
      v9 = *(this + 2);
      v8 = a3;
      goto LABEL_9;
    }

    v9 = *(this + 2);
    if (v14 == 1)
    {
      v7 = **this % **a2;
      v8 = a3;
      goto LABEL_10;
    }

    llvm::APInt::APInt(a3, v9, 0, 0);
    v17 = *this;
    v18 = *a2;
    v19 = *a3;

    llvm::APInt::divide(v17, v14, v18, v15, 0, v19, v16);
  }
}

void llvm::APInt::srem(llvm::APInt *this@<X0>, const llvm::APInt *a2@<X1>, llvm::APInt *a3@<X8>)
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
  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = a2;
  }

  v13 = (1 << v11) & *v12;
  if ((v9 >> v7))
  {
    if (v13)
    {
      llvm::APInt::APInt(&v24, this);
      llvm::APInt::flipAllBits(&v24);
      llvm::APInt::operator++(&v24);
      v27 = v25;
      v26 = v24;
      v25 = 0;
      llvm::APInt::APInt(&v20, a2);
      llvm::APInt::flipAllBits(&v20);
      llvm::APInt::operator++(&v20);
      v23 = v21;
      v22 = v20;
      v21 = 0;
      llvm::APInt::urem(&v26, &v22, &v28);
      llvm::APInt::flipAllBits(&v28);
      llvm::APInt::operator++(&v28);
      *(a3 + 2) = v29;
      *a3 = v28;
      v29 = 0;
      if (v23 >= 0x41 && v22)
      {
        MEMORY[0x277C69E10](v22, 0x1000C8000313F17);
      }

      if (v21 >= 0x41 && v20)
      {
        MEMORY[0x277C69E10](v20, 0x1000C8000313F17);
      }

      if (v27 >= 0x41 && v26)
      {
        MEMORY[0x277C69E10](v26, 0x1000C8000313F17);
      }

      if (v25 >= 0x41 && v24)
      {
LABEL_32:
        MEMORY[0x277C69E10]();
      }
    }

    else
    {
      llvm::APInt::APInt(&v16, this);
      llvm::APInt::flipAllBits(&v16);
      llvm::APInt::operator++(&v16);
      v27 = v17;
      v26 = v16;
      v17 = 0;
      llvm::APInt::urem(&v26, a2, &v18);
      llvm::APInt::flipAllBits(&v18);
      llvm::APInt::operator++(&v18);
      *(a3 + 2) = v19;
      *a3 = v18;
      v19 = 0;
      if (v27 >= 0x41 && v26)
      {
        MEMORY[0x277C69E10](v26, 0x1000C8000313F17);
      }

      if (v17 >= 0x41 && v16)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v13)
  {
    llvm::APInt::APInt(&v14, a2);
    llvm::APInt::flipAllBits(&v14);
    llvm::APInt::operator++(&v14);
    v27 = v15;
    v26 = v14;
    v15 = 0;
    llvm::APInt::urem(this, &v26, a3);
    if (v27 >= 0x41 && v26)
    {
      MEMORY[0x277C69E10](v26, 0x1000C8000313F17);
    }

    if (v15 >= 0x41 && v14)
    {
      goto LABEL_32;
    }
  }

  else
  {

    llvm::APInt::urem(this, a2, a3);
  }
}

llvm::APInt *llvm::APInt::operator=(llvm::APInt *this, uint64_t a2)
{
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    **this = a2;
    bzero((*this + 8), (((v3 + 63) >> 3) - 8) & 0xFFFFFFF8);
    return this;
  }

  else
  {
    *this = a2;

    return llvm::APInt::clearUnusedBits(this);
  }
}

uint64_t llvm::APInt::sadd_ov@<X0>(const void **this@<X0>, const llvm::APInt *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = this;
  llvm::APInt::APInt(&v23, this);
  result = llvm::APInt::operator+=(&v23, a2);
  v9 = v24;
  *(a4 + 8) = v24;
  v10 = v23;
  *a4 = v23;
  v24 = 0;
  v11 = *(v6 + 2);
  v12 = v11 - 1;
  v13 = v6;
  if (v11 >= 0x41)
  {
    v13 = *v6 + 8 * (v12 >> 6);
  }

  v14 = (*v13 & (1 << v12)) == 0;
  v15 = *(a2 + 2);
  v16 = v15 - 1;
  if (v15 >= 0x41)
  {
    v17 = (*a2 + 8 * ((v15 - 1) >> 6));
  }

  else
  {
    v17 = a2;
  }

  if ((v14 ^ (((*v17 >> v16) & 1) == 0)))
  {
    v18 = 0;
  }

  else
  {
    v19 = v9 - 1;
    v20 = (v10 + 8 * ((v9 - 1) >> 6));
    if (v9 >= 0x41)
    {
      v21 = v20;
    }

    else
    {
      v21 = a4;
    }

    v22 = *v21 & (1 << v19);
    if (v11 >= 0x41)
    {
      v6 = (*v6 + 8 * (v12 >> 6));
    }

    v18 = (v22 == 0) ^ ((*v6 & (1 << v12)) == 0);
  }

  *a3 = v18;
  return result;
}

BOOL llvm::APInt::isMinSignedValue(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1 <= 0x40)
  {
    return *this == 1 << (v1 - 1);
  }

  if ((*(*this + 8 * ((v1 - 1) >> 6)) >> (v1 - 1)))
  {
    return llvm::APInt::countTrailingZerosSlowCase(this) == v1 - 1;
  }

  return 0;
}

BOOL llvm::APInt::isAllOnes(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 1;
  }

  if (v1 > 0x40)
  {
    return llvm::APInt::countTrailingOnesSlowCase(this) == v1;
  }

  else
  {
    return *this == 0xFFFFFFFFFFFFFFFFLL >> -v1;
  }
}

uint64_t llvm::APInt::smul_ov@<X0>(llvm::APInt *this@<X0>, const unint64_t **a2@<X1>, BOOL *a3@<X2>, llvm::APInt *a4@<X8>)
{
  result = llvm::APInt::operator*(this, a2, a4);
  v9 = *(a2 + 2);
  v10 = a2;
  if (v9 >= 0x41)
  {
    result = llvm::APInt::countLeadingZerosSlowCase(a2);
    if (v9 - result > 0x40)
    {
      goto LABEL_5;
    }

    v10 = *a2;
  }

  if (!*v10)
  {
    *a3 = 0;
    return result;
  }

LABEL_5:
  llvm::APInt::sdiv(a4, a2, &__s1);
  if (v12 > 0x40)
  {
    if (!memcmp(__s1, *this, ((v12 + 63) >> 3) & 0x3FFFFFF8))
    {
LABEL_7:
      result = llvm::APInt::isMinSignedValue(this);
      if (result)
      {
        result = llvm::APInt::isAllOnes(a2);
      }

      goto LABEL_11;
    }
  }

  else if (__s1 == *this)
  {
    goto LABEL_7;
  }

  result = 1;
LABEL_11:
  *a3 = result;
  if (v12 >= 0x41)
  {
    result = __s1;
    if (__s1)
    {
      return MEMORY[0x277C69E10](__s1, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t llvm::APInt::countl_one(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1 > 0x40)
  {
    return llvm::APInt::countLeadingOnesSlowCase(this);
  }

  if (v1)
  {
    return __clz(~(*this << -v1));
  }

  return 0;
}

void llvm::APInt::toString(llvm::APInt *this, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v8 = this;
  v54 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    HIDWORD(v9) = a3 - 2;
    LODWORD(v9) = a3 - 2;
    v10 = off_279EF9CB0[(v9 >> 1)];
  }

  else
  {
    v10 = "";
  }

  v11 = *(this + 2);
  if (v11 <= 0x40)
  {
    v12 = *this;
    if (*this)
    {
      if (a4)
      {
        v12 = (v12 << -v11) >> -v11;
        if ((v12 & 0x8000000000000000) != 0)
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
          v12 = -v12;
        }
      }

      v13 = *v10;
      if (*v10)
      {
        v14 = (v10 + 1);
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v13);
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }

      v16 = v53;
      if (v12)
      {
        v16 = v53;
        do
        {
          *--v16 = llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL)const::Digits[v12 % a3];
          v17 = v12 >= a3;
          v12 /= a3;
        }

        while (v17);
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(a2, v16, v53);
      return;
    }

    goto LABEL_17;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(this) == v11)
  {
LABEL_17:
    v18 = *v10;
    if (*v10)
    {
      v19 = (v10 + 1);
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v18);
        v20 = *v19++;
        v18 = v20;
      }

      while (v20);
    }

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
    return;
  }

  llvm::APInt::APInt(&v48, v8);
  if (a4)
  {
    v21 = *(v8 + 2);
    v22 = v21 - 1;
    if (v21 >= 0x41)
    {
      v8 = (*v8 + 8 * (v22 >> 6));
    }

    if ((*v8 >> v22))
    {
      llvm::APInt::flipAllBits(&v48);
      llvm::APInt::operator++(&v48);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
    }
  }

  v23 = *v10;
  if (*v10)
  {
    v24 = (v10 + 1);
    do
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v23);
      v25 = *v24++;
      v23 = v25;
    }

    while (v25);
  }

  v26 = *(a2 + 8);
  if (a3 == 2 || a3 == 8)
  {
    if (a3 == 8)
    {
      v27 = 3;
    }

    else
    {
      v27 = 1;
    }

    goto LABEL_38;
  }

  if (a3 == 16)
  {
    v27 = 4;
LABEL_38:
    v28 = a3 - 1;
    v29 = v27;
    while (1)
    {
      LODWORD(v30) = v49;
      if (v49 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase(&v48) == v30)
        {
          goto LABEL_75;
        }

        v31 = *v48;
      }

      else
      {
        LODWORD(v31) = v48;
        if (!v48)
        {
          goto LABEL_75;
        }
      }

      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL)const::Digits[v31 & v28]);
      if (v49 > 0x40)
      {
        llvm::APInt::tcShiftRight(v48, ((v49 + 63) >> 6), v29);
      }

      else if (v49 == v29)
      {
        v48 = 0;
      }

      else
      {
        v48 = (v48 >> v29);
      }
    }
  }

  while (1)
  {
    v30 = v49;
    if (v49 <= 0x40)
    {
      if (!v48)
      {
        break;
      }

      v50 = a3;
      v32 = v48 / a3;
      v47 = v48 % a3;
      v33 = v49;
LABEL_52:
      llvm::APInt::APInt(&v51, v33, v32, 0);
      if (v49 >= 0x41 && v48)
      {
        MEMORY[0x277C69E10](v48, 0x1000C8000313F17);
      }

      v48 = v51;
LABEL_63:
      v49 = v52;
      goto LABEL_64;
    }

    if (llvm::APInt::countLeadingZerosSlowCase(&v48) == v30)
    {
      break;
    }

    v47 = 0;
    v50 = a3;
    v34 = llvm::APInt::countLeadingZerosSlowCase(&v48);
    v35 = (v30 - v34);
    if (v30 == v34)
    {
      v36 = v30;
      v37 = 0;
LABEL_59:
      llvm::APInt::APInt(&v51, v36, v37, 0);
      if (v49 >= 0x41 && v48)
      {
        MEMORY[0x277C69E10](v48, 0x1000C8000313F17);
      }

      v47 = 0;
      v48 = v51;
      goto LABEL_63;
    }

    if (a3 == 1)
    {
      llvm::APInt::operator=(&v48, &v48);
      v47 = 0;
    }

    else
    {
      if (v35 <= 0x40)
      {
        if (*v48 < a3)
        {
          v47 = *v48;
          v33 = v30;
          v32 = 0;
          goto LABEL_52;
        }

        if (*v48 == a3)
        {
          v36 = v30;
          v37 = 1;
          goto LABEL_59;
        }
      }

      v38 = (v35 + 63) >> 6;
      llvm::APInt::reallocate(&v48, v30);
      if (v38 == 1)
      {
        v40 = *v48;
        v41 = *v48 / a3;
        llvm::APInt::operator=(&v48, v41);
        v47 = v40 - v41 * a3;
      }

      else
      {
        llvm::APInt::divide(v48, v38, &v50, 1, v48, &v47, v39);
        bzero(v48 + 8 * v38, 8 * (((v30 + 63) >> 6) - v38));
      }
    }

LABEL_64:
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, llvm::APInt::toString(llvm::SmallVectorImpl<char> &,unsigned int,BOOL,BOOL)const::Digits[v47]);
  }

LABEL_75:
  v42 = *(a2 + 8);
  v43 = (*a2 + v42 - 1);
  if (v26 != v42 && v43 > *a2 + v26)
  {
    v45 = v26 + *a2 + 1;
    do
    {
      v46 = *(v45 - 1);
      *(v45 - 1) = *v43;
      *v43-- = v46;
      v17 = v45++ >= v43;
    }

    while (!v17);
    LODWORD(v30) = v49;
  }

  if (v30 >= 0x41 && v48)
  {
    MEMORY[0x277C69E10](v48, 0x1000C8000313F17);
  }
}

void llvm::APInt::print(llvm::APInt *this, llvm::raw_ostream *a2, int a3)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v4 = v6;
  v5 = xmmword_2750C16D0;
  llvm::APInt::toString(this, &v4, 0xAu, a3, 0);
  llvm::raw_ostream::write(a2, v4, v5);
  if (v4 != v6)
  {
    free(v4);
  }
}

void llvm::APInt::tcExtract(llvm::APInt *this, unint64_t *a2, uint64_t a3, const unint64_t *a4, unsigned int a5)
{
  v5 = a4;
  v7 = a2;
  v9 = a4 + 63;
  v10 = (a4 + 63) >> 6;
  v11 = a5 >> 6;
  if ((a4 + 63) >= 0x40)
  {
    v12 = (a3 + 8 * v11);
    v13 = this;
    v14 = v9 >> 6;
    do
    {
      v15 = *v12++;
      *v13 = v15;
      v13 = (v13 + 8);
      --v14;
    }

    while (v14);
  }

  v16 = a5 & 0x3F;
  llvm::APInt::tcShiftRight(this, (v9 >> 6), v16);
  v17 = (v9 & 0xFFFFFFC0) - v16;
  if (v17 < v5)
  {
    v18 = v10 - 1;
    v19 = ((*(a3 + 8 * (v11 + v10)) & (0xFFFFFFFFFFFFFFFFLL >> (v17 - v5))) << v17) | *(this + v10 - 1);
LABEL_9:
    *(this + v18) = v19;
    goto LABEL_10;
  }

  if (v17 > v5 && (v5 & 0x3F) != 0)
  {
    v18 = v10 - 1;
    v19 = *(this + v10 - 1) & (0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
    goto LABEL_9;
  }

LABEL_10:
  if (v10 < v7)
  {

    bzero(this + ((v9 >> 3) & 0x1FFFFFF8), 8 * (~v10 + v7) + 8);
  }
}

void *llvm::APInt::tcNegate(void *this, unint64_t *a2)
{
  if (a2)
  {
    v2 = 0;
    do
    {
      this[v2] = ~this[v2];
      ++v2;
    }

    while (a2 != v2);
    v3 = __CFADD__((*this)++, 1);
    if (v3)
    {
      v4 = this + 1;
      v5 = a2 - 1;
      do
      {
        if (!v5)
        {
          break;
        }

        --v5;
        v3 = __CFADD__((*v4++)++, 1);
      }

      while (v3);
    }
  }

  return this;
}

void llvm::APInt::tcFullMultiply(llvm::APInt *this, const unint64_t **a2, const unint64_t **a3, const unint64_t *a4, unint64_t a5)
{
  v7 = this;
  do
  {
    v8 = a5;
    a5 = a4;
    v9 = a3;
    a3 = a2;
    a2 = v9;
    a4 = v8;
  }

  while (a5 > v8);
  *this = 0;
  if (v8 >= 2)
  {
    bzero(this + 8, 8 * (v8 - 1));
  }

  if (a5)
  {
    a5 = a5;
    do
    {
      v10 = *a3++;
      llvm::APInt::tcMultiplyPart(v7, v9, v10, 0, v8, v8 + 1, 1);
      v7 = (v7 + 8);
      --a5;
    }

    while (a5);
  }
}

void *llvm::APInt::setBits(void *this, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    if (a2 > 0x3F || a3 > 0x40)
    {
      return llvm::APInt::setBitsSlowCase(this, a2, a3);
    }

    else
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> ((a2 | 0x40) - a3) << a2;
      if (*(this + 2) > 0x40u)
      {
        **this |= v3;
      }

      else
      {
        *this |= v3;
      }
    }
  }

  return this;
}

unsigned int *llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(unsigned int *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v4 + 1, 4);
    LODWORD(v4) = v3[2];
  }

  *(*v3 + 4 * v4) = a2;
  ++v3[2];
  return result;
}

uint64_t llvm::APInt::getNumSignBits(llvm::APInt *this)
{
  v1 = *(this + 2);
  v2 = v1 - 1;
  if (v1 <= 0x40)
  {
    if (((*this >> v2) & 1) == 0)
    {
      return v1 + __clz(*this) - 64;
    }

    return llvm::APInt::countl_one(this);
  }

  if ((*(*this + 8 * (v2 >> 6)) >> v2))
  {
    return llvm::APInt::countl_one(this);
  }

  return llvm::APInt::countLeadingZerosSlowCase(this);
}

uint64_t llvm::ARMAttributeParser::stringAttribute@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[15];
  if (v6)
  {
    v7 = 24 * v6;
    v8 = "";
    v9 = a1[14];
    while (*v9 != a2)
    {
      v9 += 24;
      v7 -= 24;
      if (!v7)
      {
        v10 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v9 = a1[14];
  }

  if (v9 == a1[14] + 24 * v6)
  {
    v10 = 0;
    v8 = "";
  }

  else
  {
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = 4;
    if (v12 < 4)
    {
      v13 = v12;
    }

    v8 = (v11 + v13);
    v10 = v12 - v13;
  }

LABEL_12:
  CStrRef = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
  result = a1[13];
  if (result)
  {
    v17 = v14;
    v18 = a1[13];
    (*(*result + 224))(result, "Attribute", 9);
    (*(*a1[13] + 24))(a1[13], "Tag", 3, a2);
    if (v10)
    {
      (*(*a1[13] + 208))(a1[13], "TagName", 7, v8, v10);
    }

    (*(*a1[13] + 208))(a1[13], "Value", 5, CStrRef, v17);
    result = (*(*v18 + 232))(v18);
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::ARMAttributeParser::CPU_arch_profile@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v7 = "Unknown";
  v8 = 7;
  v9 = "Microcontroller";
  v10 = 15;
  v11 = "Real-time";
  v12 = 9;
  v13 = "Classic";
  if (ULEB128 != 83)
  {
    v13 = "Unknown";
  }

  if (ULEB128 != 82)
  {
    v12 = 7;
    v11 = v13;
  }

  if (ULEB128 != 77)
  {
    v10 = v12;
    v9 = v11;
  }

  if (ULEB128 == 65)
  {
    v8 = 11;
    v7 = "Application";
  }

  if (!ULEB128)
  {
    v8 = 4;
    v7 = "None";
  }

  if (ULEB128 <= 76)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  if (ULEB128 <= 76)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  result = llvm::ELFAttributeParser::printAttribute(a1, a2, ULEB128, v15, v14);
  *a3 = 0;
  return result;
}

void llvm::ARMAttributeParser::ABI_align_needed(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23[2] = *MEMORY[0x277D85DE8];
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v7 = ULEB128;
  __p = 0;
  v21 = 0uLL;
  if (ULEB128 <= 3)
  {
    v8 = llvm::ARMAttributeParser::ABI_align_needed(llvm::ARMBuildAttrs::AttrType)::strings[ULEB128];
LABEL_13:
    MEMORY[0x277C69AB0](&__p, v8);
    goto LABEL_14;
  }

  if (ULEB128 > 0xC)
  {
    v8 = "Invalid";
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 1 << ULEB128;
  do
  {
    v22.__r_.__value_.__s.__data_[v9-- + 20] = (v10 % 0xA) | 0x30;
    v11 = v10 > 9;
    v10 /= 0xAuLL;
  }

  while (v11);
  std::string::__init_with_size[abi:nn200100]<char *,char *>(&v19, &v22.__r_.__value_.__s.__data_[v9 + 21], &v22.__r_.__value_.__s.__data_[21], -v9);
  v12 = std::string::insert(&v19, 0, "8-byte alignment, ");
  v13 = v12->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v22, "-byte extended alignment");
  v15 = v14->__r_.__value_.__r.__words[0];
  v23[0] = v14->__r_.__value_.__l.__size_;
  *(v23 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  __p = v15;
  *&v21 = v23[0];
  *(&v21 + 7) = *(v23 + 7);
  HIBYTE(v21) = v16;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if (v21 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v21 >= 0)
  {
    v18 = SHIBYTE(v21);
  }

  else
  {
    v18 = v21;
  }

  llvm::ELFAttributeParser::printAttribute(a1, a2, v7, p_p, v18);
  *a3 = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }
}

void llvm::ARMAttributeParser::ABI_align_preserved(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v7 = ULEB128;
  memset(&__p, 0, sizeof(__p));
  if (ULEB128 > 3)
  {
    if (ULEB128 > 0xC)
    {
      MEMORY[0x277C69AB0](&__p, "Invalid");
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(&v26, "8-byte stack alignment, ");
      v8 = 0;
      v9 = 1 << v7;
      do
      {
        v29.__r_.__value_.__s.__data_[v8-- + 20] = (v9 % 0xA) | 0x30;
        v10 = v9 > 9;
        v9 /= 0xAuLL;
      }

      while (v10);
      std::string::__init_with_size[abi:nn200100]<char *,char *>(__dst, &v29.__r_.__value_.__s.__data_[v8 + 21], &v29.__r_.__value_.__s.__data_[21], -v8);
      if ((v25 & 0x80u) == 0)
      {
        v11 = __dst;
      }

      else
      {
        v11 = __dst[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v12 = v25;
      }

      else
      {
        v12 = __dst[1];
      }

      v13 = std::string::append(&v26, v11, v12);
      v14 = v13->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:nn200100]<0>(v22, "-byte data alignment");
      if ((v23 & 0x80u) == 0)
      {
        v15 = v22;
      }

      else
      {
        v15 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v16 = v23;
      }

      else
      {
        v16 = v22[1];
      }

      v17 = std::string::append(&v29, v15, v16);
      v18 = v17->__r_.__value_.__r.__words[0];
      v28[0] = v17->__r_.__value_.__l.__size_;
      *(v28 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
      v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v18;
      __p.__r_.__value_.__l.__size_ = v28[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v28 + 7);
      *(&__p.__r_.__value_.__s + 23) = v19;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v25 < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v29, llvm::ARMAttributeParser::ABI_align_preserved(llvm::ARMBuildAttrs::AttrType)::strings[ULEB128]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v29;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  llvm::ELFAttributeParser::printAttribute(a1, a2, v7, p_p, size);
  *a3 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t llvm::ARMAttributeParser::compatibility@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  CStrRef = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
  result = a1[13];
  if (result)
  {
    v10 = v7;
    v29 = a1[13];
    (*(*result + 224))(result, "Attribute", 9);
    (*(*a1[13] + 24))(a1[13], "Tag", 3, a2);
    v11 = (*(*a1[13] + 264))();
    v12 = v11;
    v13 = *(v11 + 4);
    if (*(v11 + 3) - v13 > 6uLL)
    {
      *(v13 + 3) = 540697973;
      *v13 = 1970037078;
      *(v11 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v11, "Value: ", 7uLL);
    }

    write_unsigned<unsigned long>(v12, ULEB128, 0, 0, 0);
    v14 = *(v12 + 4);
    if (*(v12 + 3) - v14 > 1uLL)
    {
      *v14 = 8236;
      *(v12 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v12, ", ", 2uLL);
    }

    v15 = llvm::raw_ostream::operator<<(v12, CStrRef, v10);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 10);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 10;
    }

    v17 = a1[15];
    if (v17)
    {
      v18 = 24 * v17;
      v19 = "";
      v20 = a1[14];
      while (*v20 != a2)
      {
        v20 += 24;
        v18 -= 24;
        if (!v18)
        {
          v21 = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v20 = a1[14];
    }

    if (v20 == a1[14] + 24 * v17)
    {
      v21 = 0;
      v19 = "";
    }

    else
    {
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = 4;
      if (v23 < 4)
      {
        v24 = v23;
      }

      v19 = (v22 + v24);
      v21 = v23 - v24;
    }

LABEL_22:
    (*(*a1[13] + 208))(a1[13], "TagName", 7, v19, v21);
    v25 = "AEABI Non-Conformant";
    v26 = 20;
    if (ULEB128 == 1)
    {
      v25 = "AEABI Conformant";
      v26 = 16;
    }

    if (ULEB128)
    {
      v27 = v25;
    }

    else
    {
      v27 = "No Specific Requirements";
    }

    if (ULEB128)
    {
      v28 = v26;
    }

    else
    {
      v28 = 24;
    }

    (*(*a1[13] + 208))(a1[13], "Description", 11, v27, v28);
    result = (*(*v29 + 232))(v29);
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::ARMAttributeParser::nodefaults@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  result = llvm::ELFAttributeParser::printAttribute(a1, a2, ULEB128, "Unspecified Tags UNDEFINED", 26);
  *a3 = 0;
  return result;
}

void llvm::ARMAttributeParser::also_compatible_with(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v102[1] = *MEMORY[0x277D85DE8];
  v100 = v102;
  v101 = xmmword_2750C12B0;
  v87 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 1;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v86 = &unk_2883EB968;
  v94 = &v100;
  llvm::raw_ostream::SetUnbuffered(&v86);
  v6 = a1[19];
  CStrRef = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
  v72 = v8;
  v9 = a1[19];
  a1[19] = v6;
  ULEB128 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v85 = ULEB128;
  v11 = a1[15];
  if (!v11)
  {
LABEL_5:
    v17 = std::generic_category();
    *&v82 = &v85;
    v83 = " is not a valid tag number";
    v84 = 780;
    llvm::Twine::str(&v82, __p);
    if (SHIBYTE(v78) >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v73 = 33;
    v74 = v17;
    v95[0] = v18;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v12 = ULEB128;
  v13 = a1[14];
  v14 = 24 * v11;
  v15 = 24 * v11;
  v16 = v13;
  while (ULEB128 != *v16)
  {
    v16 += 6;
    v15 -= 24;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  if ((ULEB128 - 4) > 0x3F)
  {
    goto LABEL_49;
  }

  if (((1 << (ULEB128 - 4)) & 0x8000000010000003) != 0)
  {
    v19 = llvm::DataExtractor::getCStrRef((a1 + 16), a1 + 19, (a1 + 20));
    v21 = v20;
    v22 = a1[15];
    if (v22)
    {
      v23 = 24 * v22;
      v24 = "";
      v25 = a1[14];
      while (*v25 != v12)
      {
        v25 += 24;
        v23 -= 24;
        if (!v23)
        {
          v26 = 0;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v25 = a1[14];
    }

    if (v25 == a1[14] + 24 * v22)
    {
      v26 = 0;
      v24 = "";
    }

    else
    {
      v24 = *(v25 + 8);
      v26 = *(v25 + 16);
    }

LABEL_26:
    v31 = llvm::raw_ostream::operator<<(&v86, v24, v26);
    v32 = *(v31 + 4);
    if ((*(v31 + 3) - v32) > 2)
    {
      *(v32 + 2) = 32;
      *v32 = 15648;
      *(v31 + 4) += 3;
    }

    else
    {
      v31 = llvm::raw_ostream::write(v31, " = ", 3uLL);
    }

    llvm::raw_ostream::operator<<(v31, v19, v21);
    v33 = v9;
    v34 = CStrRef;
    goto LABEL_30;
  }

  if (ULEB128 != 6)
  {
    if (ULEB128 == 65)
    {
      v27 = std::generic_category();
      v28 = v13 + 8;
      v29 = "";
      while (*(v28 - 8) != 65)
      {
        v28 += 24;
        v14 -= 24;
        if (!v14)
        {
          v30 = 0;
LABEL_77:
          v84 = 773;
          *&v82 = v29;
          *(&v82 + 1) = v30;
          v83 = " cannot be recursively defined";
          llvm::Twine::str(&v82, __p);
          if (SHIBYTE(v78) >= 0)
          {
            v65 = __p;
          }

          else
          {
            v65 = __p[0];
          }

          v73 = 22;
          v74 = v27;
          v95[0] = v65;
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }
      }

      if (v14)
      {
        v29 = *v28;
        v30 = *(v28 + 8);
      }

      else
      {
        v30 = 0;
        v29 = "";
      }

      goto LABEL_77;
    }

LABEL_49:
    v44 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
    v45 = a1[15];
    if (v45)
    {
      v46 = 24 * v45;
      v47 = "";
      v48 = a1[14];
      v33 = v9;
      v34 = CStrRef;
      while (*v48 != v12)
      {
        v48 += 24;
        v46 -= 24;
        if (!v46)
        {
          v49 = 0;
          goto LABEL_71;
        }
      }
    }

    else
    {
      v48 = a1[14];
      v33 = v9;
      v34 = CStrRef;
    }

    if (v48 == a1[14] + 24 * v45)
    {
      v49 = 0;
      v47 = "";
    }

    else
    {
      v47 = *(v48 + 8);
      v49 = *(v48 + 16);
    }

LABEL_71:
    v63 = llvm::raw_ostream::operator<<(&v86, v47, v49);
    v64 = *(v63 + 4);
    if ((*(v63 + 3) - v64) > 2)
    {
      *(v64 + 2) = 32;
      *v64 = 15648;
      *(v63 + 4) += 3;
    }

    else
    {
      v63 = llvm::raw_ostream::write(v63, " = ", 3uLL);
    }

    write_unsigned<unsigned long>(v63, v44, 0, 0, 0);
    goto LABEL_30;
  }

  v50 = llvm::DataExtractor::getULEB128((a1 + 16), a1 + 19, (a1 + 20));
  v81 = v50;
  if (v50 >= 0x17)
  {
    v51 = std::generic_category();
    v73 = &v81;
    v75 = " is not a valid ";
    v76 = 780;
    v52 = a1[15];
    if (v52)
    {
      v53 = 24 * v52;
      v54 = "";
      v55 = a1[14];
      do
      {
        if (*v55 == 6)
        {
          goto LABEL_82;
        }

        v55 += 24;
        v53 -= 24;
      }

      while (v53);
      v56 = 0;
    }

    else
    {
      v55 = a1[14];
LABEL_82:
      if (v55 == a1[14] + 24 * v52)
      {
        v56 = 0;
        v54 = "";
      }

      else
      {
        v54 = *(v55 + 8);
        v56 = *(v55 + 16);
      }
    }

    __p[0] = &v73;
    v78 = v54;
    v79 = v56;
    v80 = 1282;
    *&v82 = __p;
    v83 = " value";
    v84 = 770;
    llvm::Twine::str(&v82, v95);
    if (v96 >= 0)
    {
      v66 = v95;
    }

    else
    {
      v66 = v95[0];
    }

    v98 = 33;
    v99 = v51;
    v97 = v66;
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  v57 = v50;
  v58 = a1[15];
  v33 = v9;
  if (v58)
  {
    v59 = 24 * v58;
    v60 = "";
    v61 = a1[14];
    v34 = CStrRef;
    while (*v61 != 6)
    {
      v61 += 24;
      v59 -= 24;
      if (!v59)
      {
        v62 = 0;
        goto LABEL_93;
      }
    }
  }

  else
  {
    v61 = a1[14];
    v34 = CStrRef;
  }

  if (v61 == a1[14] + 24 * v58)
  {
    v62 = 0;
    v60 = "";
  }

  else
  {
    v60 = *(v61 + 8);
    v62 = *(v61 + 16);
  }

LABEL_93:
  v67 = llvm::raw_ostream::operator<<(&v86, v60, v62);
  v68 = *(v67 + 4);
  if ((*(v67 + 3) - v68) > 2)
  {
    *(v68 + 2) = 32;
    *v68 = 15648;
    *(v67 + 4) += 3;
  }

  else
  {
    v67 = llvm::raw_ostream::write(v67, " = ", 3uLL);
  }

  write_unsigned<unsigned long>(v67, v57, 0, 0, 0);
  if (CPU_arch_strings[v57])
  {
    v69 = llvm::raw_ostream::operator<<(&v86, " (", 2uLL);
    v70 = llvm::raw_ostream::operator<<(v69, CPU_arch_strings[v57]);
    v71 = *(v70 + 4);
    if (v71 >= *(v70 + 3))
    {
      llvm::raw_ostream::write(v70, 41);
    }

    else
    {
      *(v70 + 4) = v71 + 1;
      *v71 = 41;
    }
  }

LABEL_30:
  *&v82 = v34;
  *(&v82 + 1) = v72;
  LODWORD(__p[0]) = a2;
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__emplace_unique_key_args<unsigned int,unsigned int &,llvm::StringRef&>(a1 + 16, __p, __p, &v82);
  v35 = a1[13];
  if (v35)
  {
    *&v82 = &unk_2883EA538;
    *(&v82 + 1) = v35;
    (*(*v35 + 224))(v35, "Attribute", 9);
    (*(*a1[13] + 24))(a1[13], "Tag", 3, a2);
    v36 = a1[15];
    if (v36)
    {
      v37 = 24 * v36;
      v38 = "";
      v39 = a1[14];
      while (*v39 != a2)
      {
        v39 += 24;
        v37 -= 24;
        if (!v37)
        {
          v40 = 0;
          goto LABEL_42;
        }
      }
    }

    else
    {
      v39 = a1[14];
    }

    if (v39 == a1[14] + 24 * v36)
    {
      v40 = 0;
      v38 = "";
    }

    else
    {
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      v43 = 4;
      if (v42 < 4)
      {
        v43 = v42;
      }

      v38 = (v41 + v43);
      v40 = v42 - v43;
    }

LABEL_42:
    (*(*a1[13] + 208))(a1[13], "TagName", 7, v38, v40);
    (*(*a1[13] + 344))();
    if (v101)
    {
      (*(*a1[13] + 208))(a1[13], "Description", 11, v100);
    }

    *&v82 = &unk_2883EA538;
    if (*(&v82 + 1))
    {
      (*(**(&v82 + 1) + 232))(*(&v82 + 1));
    }
  }

  a1[19] = v33;
  *a3 = 0;
  llvm::raw_ostream::~raw_ostream(&v86);
  if (v100 != v102)
  {
    free(v100);
  }
}

void llvm::DictScope::~DictScope(llvm::DictScope *this)
{
  *this = &unk_2883EA538;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 232))(v1);
  }
}

{
  *this = &unk_2883EA538;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 232))(v1);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::ARMAttributeParser::handler@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a2 = 0;
  v6 = &unk_2883EA0C8;
  v7 = 1056;
  while (*(v6 - 4) != a3)
  {
    v6 += 3;
    v7 -= 24;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v6 - 1);
  v8 = *v6;
  v10 = (this + (v8 >> 1));
  if (v8)
  {
    v9 = *(*v10 + v9);
  }

  this = v9(v10);
  if (!*a4)
  {
    *a2 = 1;
LABEL_9:
    *a4 = 0;
  }

  return this;
}

void llvm::ARMAttributeParser::~ARMAttributeParser(llvm::ARMAttributeParser *this)
{
  llvm::ELFAttributeParser::~ELFAttributeParser(this);

  JUMPOUT(0x277C69E40);
}

void *std::string::__init_with_size[abi:nn200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__emplace_unique_key_args<unsigned int,unsigned int &,llvm::StringRef&>(float *a1, unsigned int *a2, _DWORD *a3, _OWORD *a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void llvm::ELFAttributeParser::~ELFAttributeParser(llvm::ELFAttributeParser *this)
{
  *this = &unk_2883EA510;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(this + 20);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::~__hash_table(this + 64);
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::~__hash_table(this + 24);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,llvm::StringRef>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::StringRef>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::StringRef>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t llvm::BinaryStreamError::BinaryStreamError(uint64_t a1, unsigned int a2, const std::string::value_type *a3, std::string::size_type a4)
{
  *a1 = &unk_2883EA560;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  MEMORY[0x277C69AB0](a1 + 8, "Stream Error: ");
  if (a2 <= 4)
  {
    std::string::append(v8, off_279EFA210[a2]);
  }

  if (a4)
  {
    std::string::append(v8, "  ");
    std::string::append(v8, a3, a4);
  }

  return a1;
}

llvm::raw_ostream *llvm::BinaryStreamError::log(llvm::BinaryStreamError *this, llvm::raw_ostream *a2)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  v6 = v3[23];
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = v3[23];
  }

  else
  {
    v8 = *(v3 + 1);
  }

  return llvm::raw_ostream::write(a2, v7, v8);
}

void llvm::BinaryStreamError::~BinaryStreamError(void **this)
{
  *this = &unk_2883EA560;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883EA560;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::ErrorInfoBase::message(llvm::ErrorInfoBase *this@<X0>, std::string *a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2883EB8F0;
  v13 = v14;
  llvm::raw_ostream::SetUnbuffered(&v5);
  (*(*this + 16))(this, &v5);
  if (*(v13 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v13, v13[1]);
  }

  else
  {
    v4 = *v13;
    a2->__r_.__value_.__r.__words[2] = v13[2];
    *&a2->__r_.__value_.__l.__data_ = v4;
  }

  llvm::raw_ostream::~raw_ostream(&v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void llvm::BinaryStreamReader::readULEB128(llvm::BinaryStreamReader *this@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_2750C16E0;
  do
  {
    llvm::BinaryStreamRef::readBytes(this + 8, a3, *(this + 7), 1);
    if (*a3)
    {
      v9 = v12;
      goto LABEL_14;
    }

    ++*(this + 7);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v12, MEMORY[0]);
  }

  while (MEMORY[0] < 0);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v12;
  while (v13 != v6)
  {
    v10 = *(v12 + v6);
    v11 = v10 & 0x7F;
    if (v8 >= 0x40 && (v10 & 0x7F) != 0)
    {
      break;
    }

    if ((v11 << v8) >> v8 != v11)
    {
      break;
    }

    v7 += v11 << v8;
    v8 += 7;
    ++v6;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_13;
    }
  }

  v7 = 0;
LABEL_13:
  *a2 = v7;
  *a3 = 0;
LABEL_14:
  if (v9 != v14)
  {
    free(v9);
  }
}

void llvm::BinaryStreamReader::readSLEB128(llvm::BinaryStreamReader *this@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_2750C16E0;
  do
  {
    llvm::BinaryStreamRef::readBytes(this + 8, a3, *(this + 7), 1);
    if (*a3)
    {
      v9 = v16;
      goto LABEL_26;
    }

    ++*(this + 7);
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v16, MEMORY[0]);
  }

  while (MEMORY[0] < 0);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v16;
  do
  {
    if (v17 == v6)
    {
LABEL_24:
      v15 = 0;
      goto LABEL_25;
    }

    v10 = *(v16 + v6);
    v11 = v10 & 0x7F;
    if (v8 < 0x40)
    {
      if (v8 == 63 && v10 - 127 >= 2 && v10 != 255 && v10 != 0)
      {
        goto LABEL_24;
      }
    }

    else if (((v7 >> 63) & 0x7F) != v11)
    {
      goto LABEL_24;
    }

    v7 |= v11 << v8;
    v8 += 7;
    ++v6;
  }

  while ((v10 & 0x80) != 0);
  v13 = v10 < 0x40 || v8 > 0x3F;
  v14 = -1 << v8;
  if (v13)
  {
    v14 = 0;
  }

  v15 = v7 | v14;
LABEL_25:
  *a2 = v15;
  *a3 = 0;
LABEL_26:
  if (v9 != v18)
  {
    free(v9);
  }
}

uint64_t llvm::BinaryStreamReader::bytesRemaining(llvm::BinaryStreamReader *this)
{
  if (*(this + 48) == 1)
  {
    v2 = *(this + 5);
  }

  else
  {
    v3 = *(this + 3);
    if (v3)
    {
      v2 = (*(*v3 + 40))(v3) - *(this + 4);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 - *(this + 7);
}

std::string *llvm::BinaryStreamReader::skip@<X0>(llvm::BinaryStreamReader *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = llvm::BinaryStreamReader::bytesRemaining(this);
  if (result < a2)
  {
    operator new();
  }

  *(this + 7) += a2;
  *a3 = 0;
  return result;
}

void llvm::BinaryStreamReader::~BinaryStreamReader(llvm::BinaryStreamReader *this)
{
  *this = &unk_2883EA5B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

{
  *this = &unk_2883EA5B0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::BinaryStreamRef::readBytes@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, unint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = llvm::BinaryStreamRefBase<llvm::BinaryStreamRef,llvm::BinaryStream>::checkOffsetForRead(a1, a3, a4, a2);
  if (!*a2)
  {
    v7 = *(**(a1 + 16) + 24);

    return v7();
  }

  return result;
}

uint64_t llvm::BinaryStreamRefBase<llvm::BinaryStreamRef,llvm::BinaryStream>::checkOffsetForRead@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      v8 = (*(*v9 + 40))(v9) - *(a1 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  if (v8 < a2 || (*(a1 + 40) != 1 ? ((v11 = *(a1 + 16)) == 0 ? (v10 = 0) : (v10 = (*(*v11 + 40))(v11) - *(a1 + 24))) : (v10 = *(a1 + 32)), v10 < a3 + a2))
  {
    operator new();
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t llvm::WritableBinaryStreamRef::writeBytes@<X0>(llvm::WritableBinaryStreamRef *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = llvm::WritableBinaryStreamRef::checkOffsetForWrite(a1, a2, a3, a4);
  if (!*a4)
  {
    v7 = *(**(a1 + 2) + 56);

    return v7();
  }

  return result;
}

uint64_t llvm::WritableBinaryStreamRef::checkOffsetForWrite@<X0>(llvm::WritableBinaryStreamRef *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(**(this + 2) + 48))(*(this + 2));
  if ((result & 2) != 0)
  {
    if (*(this + 40) == 1)
    {
      v9 = *(this + 4);
    }

    else
    {
      result = *(this + 2);
      if (result)
      {
        result = (*(*result + 40))(result);
        v9 = result - *(this + 3);
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9 < a2)
    {
      operator new();
    }

    *a4 = 0;
  }

  else
  {

    return llvm::BinaryStreamRefBase<llvm::BinaryStreamRef,llvm::BinaryStream>::checkOffsetForRead(this, a2, a3, a4);
  }

  return result;
}

void std::__shared_ptr_emplace<anonymous namespace::ArrayRefImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EA5D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::ArrayRefImpl::readBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead((a1 + 8), a2, a3, a5);
  if (!*a5)
  {
    *a4 = *(a1 + 24) + a2;
    a4[1] = a3;
  }

  return result;
}

uint64_t anonymous namespace::ArrayRefImpl::readLongestContiguousChunk@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead((a1 + 1), a2, 1, a4);
  if (!*a4)
  {
    v9 = a1[4] - a2;
    *a3 = a1[3] + a2;
    a3[1] = v9;
  }

  return result;
}

uint64_t llvm::BinaryByteStream::readBytes@<X0>(llvm::BinaryStream *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead(a1, a2, a3, a5);
  if (!*a5)
  {
    *a4 = *(a1 + 2) + a2;
    a4[1] = a3;
  }

  return result;
}

uint64_t llvm::BinaryByteStream::readLongestContiguousChunk@<X0>(llvm::BinaryStream *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead(a1, a2, 1, a4);
  if (!*a4)
  {
    v9 = *(a1 + 3) - a2;
    *a3 = *(a1 + 2) + a2;
    a3[1] = v9;
  }

  return result;
}

uint64_t llvm::BinaryStream::checkOffsetForRead@<X0>(llvm::BinaryStream *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((*(*this + 40))(this) < a2 || (*(*this + 40))(this) < a3 + a2)
  {
    operator new();
  }

  result = 0;
  *a4 = 0;
  return result;
}

void std::__shared_ptr_emplace<anonymous namespace::MutableArrayRefImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883EA698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69E40);
}

uint64_t anonymous namespace::MutableArrayRefImpl::readBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead((a1 + 32), a2, a3, a5);
  if (!*a5)
  {
    *a4 = *(a1 + 48) + a2;
    a4[1] = a3;
  }

  return result;
}

uint64_t anonymous namespace::MutableArrayRefImpl::readLongestContiguousChunk@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead((a1 + 4), a2, 1, a4);
  if (!*a4)
  {
    v9 = a1[7] - a2;
    *a3 = a1[6] + a2;
    a3[1] = v9;
  }

  return result;
}

char *anonymous namespace::MutableArrayRefImpl::writeBytes@<X0>(char *result@<X0>, unint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, llvm::WritableBinaryStream *a5@<X8>)
{
  if (a4)
  {
    v9 = result;
    result = llvm::WritableBinaryStream::checkOffsetForWrite(a5, (result + 8), a2, a4);
    if (*a5)
    {
      return result;
    }

    result = memcpy((*(v9 + 2) + a2), a3, a4);
  }

  *a5 = 0;
  return result;
}

uint64_t llvm::MutableBinaryByteStream::readBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead((a1 + 24), a2, a3, a5);
  if (!*a5)
  {
    *a4 = *(a1 + 40) + a2;
    a4[1] = a3;
  }

  return result;
}

uint64_t llvm::MutableBinaryByteStream::readLongestContiguousChunk@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = llvm::BinaryStream::checkOffsetForRead((a1 + 3), a2, 1, a4);
  if (!*a4)
  {
    v9 = a1[6] - a2;
    *a3 = a1[5] + a2;
    a3[1] = v9;
  }

  return result;
}

llvm::BinaryStream *llvm::MutableBinaryByteStream::writeBytes@<X0>(llvm::BinaryStream *result@<X0>, unint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, llvm::WritableBinaryStream *a5@<X8>)
{
  if (a4)
  {
    v9 = result;
    result = llvm::WritableBinaryStream::checkOffsetForWrite(a5, result, a2, a4);
    if (*a5)
    {
      return result;
    }

    result = memcpy((*(v9 + 1) + a2), a3, a4);
  }

  *a5 = 0;
  return result;
}

std::string *llvm::WritableBinaryStream::checkOffsetForWrite(llvm::WritableBinaryStream *this, llvm::BinaryStream *a2, unint64_t a3, uint64_t a4)
{
  if (((*(*a2 + 48))(a2) & 2) != 0)
  {
    result = (*(*a2 + 40))(a2);
    if (result < a3)
    {
      operator new();
    }

    *this = 0;
  }

  else
  {

    return llvm::BinaryStream::checkOffsetForRead(a2, a3, a4, this);
  }

  return result;
}

void llvm::BinaryStreamWriter::~BinaryStreamWriter(llvm::BinaryStreamWriter *this)
{
  *this = &unk_2883EA780;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

{
  *this = &unk_2883EA780;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t a6)
{
  v18 = 0;
  v8 = llvm::cl::parser<unsigned int>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if (v8)
  {
    return v8;
  }

  *(a1 + 128) = v18;
  *(a1 + 12) = a2;
  v9 = *(a1 + 184);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v18);
    return v8;
  }

  v11 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::parser<unsigned int>::parse(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t llvm::cl::parser<unsigned int>::parse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t a6, _DWORD *a7)
{
  v14[0] = 0;
  v16 = a5;
  v17 = a6;
  v11 = llvm::consumeUnsignedInteger(&v16, 0, v14, a4);
  if ((v11 & 1) != 0 || v17 || HIDWORD(v14[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16 = v14;
    v18 = "' value invalid for uint argument!";
    v19 = 770;
    v13 = llvm::errs(v11);
    llvm::cl::Option::error(a2, &v16, 0, 0, v13);
    return 1;
  }

  else
  {
    result = 0;
    *a7 = v14[0];
  }

  return result;
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

llvm::raw_ostream *llvm::cl::basic_parser_impl::printOptionInfo(llvm::cl::basic_parser_impl *this, const llvm::cl::Option *a2, size_t a3)
{
  v6 = llvm::outs(this);
  v40 = *(a2 + 1);
  v41 = 2;
  v7 = (*(*this + 16))(this);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = *(a2 + 5);
    if ((v11 & 0x400) != 0)
    {
      v15 = llvm::outs(v7);
      v16 = *(v15 + 4);
      if (*(v15 + 3) - v16 > 1uLL)
      {
        *v16 = 15392;
        *(v15 + 4) += 2;
      }

      else
      {
        v15 = llvm::raw_ostream::write(v15, " <", 2uLL);
      }

      v24 = *(a2 + 7);
      if (v24)
      {
        v25 = *(a2 + 6);
      }

      else
      {
        v25 = v9;
      }

      if (v24)
      {
        v26 = *(a2 + 7);
      }

      else
      {
        v26 = v10;
      }

      v27 = llvm::raw_ostream::operator<<(v15, v25, v26);
      v28 = *(v27 + 4);
      if (*(v27 + 3) - v28 <= 3uLL)
      {
        v29 = ">...";
        v30 = 4;
LABEL_40:
        llvm::raw_ostream::write(v27, v29, v30);
        goto LABEL_44;
      }

      *v28 = 774778430;
      v31 = *(v27 + 4) + 4;
    }

    else
    {
      v12 = (v11 >> 3) & 3;
      if (!v12)
      {
        v7 = (*(*a2 + 8))(a2);
        v12 = v7;
      }

      v13 = llvm::outs(v7);
      if (v12 != 1)
      {
        if (*(a2 + 3) == 1)
        {
          v17 = " <";
        }

        else
        {
          v17 = "=<";
        }

        v18 = llvm::raw_ostream::operator<<(v13, v17, 2uLL);
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
          v21 = *(a2 + 7);
        }

        else
        {
          v21 = v10;
        }

        v22 = llvm::raw_ostream::operator<<(v18, v20, v21);
        v23 = *(v22 + 4);
        if (v23 >= *(v22 + 3))
        {
          llvm::raw_ostream::write(v22, 62);
        }

        else
        {
          *(v22 + 4) = v23 + 1;
          *v23 = 62;
        }

        goto LABEL_44;
      }

      v14 = *(v13 + 4);
      if ((*(v13 + 3) - v14) > 2)
      {
        *(v14 + 2) = 60;
        *v14 = 15707;
        *(v13 + 4) += 3;
      }

      else
      {
        v13 = llvm::raw_ostream::write(v13, "[=<", 3uLL);
      }

      v32 = *(a2 + 7);
      if (v32)
      {
        v33 = *(a2 + 6);
      }

      else
      {
        v33 = v9;
      }

      if (v32)
      {
        v34 = *(a2 + 7);
      }

      else
      {
        v34 = v10;
      }

      v27 = llvm::raw_ostream::operator<<(v13, v33, v34);
      v35 = *(v27 + 4);
      if (*(v27 + 3) - v35 <= 1uLL)
      {
        v29 = ">]";
        v30 = 2;
        goto LABEL_40;
      }

      *v35 = 23870;
      v31 = *(v27 + 4) + 2;
    }

    *(v27 + 4) = v31;
  }

LABEL_44:
  v36 = *(a2 + 4);
  v37 = *(a2 + 5);
  OptionWidth = llvm::cl::basic_parser_impl::getOptionWidth(this, a2);

  return llvm::cl::Option::printHelpStr(v36, v37, a3, OptionWidth);
}

void llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::printOptionValue(uint64_t result, unint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(result + 128);
LABEL_3:
    v5 = *(result + 144);
    v6 = *(result + 148);
    v4 = &unk_2883EABF0;
    llvm::cl::parser<unsigned int>::printOptionDiff(result, result, v3, &v4, a2);
    return;
  }

  if (*(result + 148) == 1)
  {
    v3 = *(result + 128);
    if (*(result + 144) != v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

void llvm::cl::Option::addArgument(uint64_t this, __n128 a2)
{
  if (!atomic_load_explicit(qword_2815A56A0, memory_order_acquire))
  {
  }

  v3 = qword_2815A56A0[0];
  if ((*(this + 10) & 0x2000) != 0)
  {
    llvm::SmallVectorTemplateBase<void *,true>::push_back((qword_2815A56A0[0] + 64), this);
  }

  else if (*(this + 108) == *(this + 112))
  {
    if (!atomic_load_explicit(_MergedGlobals_10, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_10, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    }
  }

  else
  {
    v4 = *(this + 96);
    v5 = 16;
    if (v4 == *(this + 88))
    {
      v5 = 20;
    }

    v6 = *(this + 88 + v5);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = *(this + 96);
      while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v8 = *(this + 96);
    }

    v9 = (v4 + 8 * v6);
    if (v8 != v9)
    {
      v10 = *v8;
LABEL_20:
      while (++v8 != v9)
      {
        v10 = *v8;
        if (*v8 < 0xFFFFFFFFFFFFFFFELL)
        {
          if (v8 != v9)
          {
            goto LABEL_20;
          }

          break;
        }
      }
    }
  }

LABEL_9:
  *(this + 10) |= 0x4000u;
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t a6)
{
  v14[0] = 0;
  v16 = a5;
  v17 = a6;
  v10 = llvm::consumeSignedInteger(&v16, 0, v14, a4);
  if ((v10 & 1) != 0 || v17 || v14[0] != SLODWORD(v14[0]))
  {
    v15 = 1283;
    v14[0] = "'";
    v14[2] = a5;
    v14[3] = a6;
    v16 = v14;
    v18 = "' value invalid for integer argument!";
    v19 = 770;
    v13 = llvm::errs(v10);
    llvm::cl::Option::error(a1, &v16, 0, 0, v13);
    return 1;
  }

  else
  {
    LODWORD(v16) = v14[0];
    *(a1 + 128) = v14[0];
    *(a1 + 12) = a2;
    v11 = *(a1 + 184);
    if (v11)
    {
      (*(*v11 + 48))(v11, &v16);
      return 0;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<int,false,llvm::cl::parser<int>>::getValueExpectedFlagDefault();
    }
  }
}

void llvm::cl::opt<int,false,llvm::cl::parser<int>>::printOptionValue(uint64_t a1, unint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 128);
  }

  else
  {
    if (*(a1 + 148) != 1)
    {
      return;
    }

    v3 = *(a1 + 128);
    if (*(a1 + 144) == v3)
    {
      return;
    }
  }

  v19 = *(a1 + 144);
  v20 = *(a1 + 148);
  llvm::cl::basic_parser_impl::printOptionName(a1, a1, a2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v22 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v21 = &unk_2883EB8F0;
  v29 = &v30;
  llvm::raw_ostream::SetUnbuffered(&v21);
  llvm::write_integer(&v21, v3, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v21);
  v5 = llvm::outs(v4);
  v6 = *(v5 + 4);
  if (*(v5 + 3) - v6 > 1uLL)
  {
    *v6 = 8253;
    *(v5 + 4) += 2;
  }

  else
  {
    v5 = llvm::raw_ostream::write(v5, "= ", 2uLL);
  }

  if (v32 >= 0)
  {
    v7 = &v30;
  }

  else
  {
    v7 = v30;
  }

  if (v32 >= 0)
  {
    v8 = HIBYTE(v32);
  }

  else
  {
    v8 = v31;
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = SHIBYTE(v32);
  if ((SHIBYTE(v32) & 0x8000000000000000) != 0)
  {
    v10 = v31;
    if (v31 < 8)
    {
      goto LABEL_17;
    }

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  if (SHIBYTE(v32) > 7)
  {
    goto LABEL_19;
  }

LABEL_17:
  v11 = (8 - v10);
LABEL_20:
  v12 = llvm::outs(v9);
  v13 = llvm::raw_ostream::indent(v12, v11);
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 0xA)
  {
    *(v14 + 7) = 540701804;
    *v14 = *" (default: ";
    *(v13 + 4) += 11;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v13, " (default: ", 0xBuLL);
  }

  v15 = llvm::outs(v13);
  if (v20 == 1)
  {
    v15 = llvm::write_integer(v15, v19, 0, 0);
  }

  else
  {
    v16 = *(v15 + 4);
    if ((*(v15 + 3) - v16) > 0xB)
    {
      *(v16 + 8) = 712273013;
      *v16 = *"*no default*";
      *(v15 + 4) += 12;
    }

    else
    {
      v15 = llvm::raw_ostream::write(v15, "*no default*", 0xCuLL);
    }
  }

  v17 = llvm::outs(v15);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 1uLL)
  {
    *v18 = 2601;
    *(v17 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, ")\n", 2uLL);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }
}

uint64_t llvm::cl::opt<int,false,llvm::cl::parser<int>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

void *std::function<void ()(int const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(int const&)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(int const&)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(int const&)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, __int16 a2, int a3, int a4, void *a5, size_t a6)
{
  memset(&__str, 0, sizeof(__str));
  v8 = llvm::cl::parser<std::string>::parse(a1 + 192, a1, a3, a4, a5, a6, &__str);
  if ((v8 & 1) == 0)
  {
    std::string::operator=((a1 + 128), &__str);
    *(a1 + 12) = a2;
    v9 = *(a1 + 224);
    if (!v9)
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::parser<std::string>::parse(v11, v12, v13, v14, v15, v16, v17);
    }

    (*(*v9 + 48))(v9, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v8;
}

uint64_t llvm::cl::parser<std::string>::parse(int a1, int a2, int a3, int a4, void *__src, size_t __len, uint64_t a7)
{
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
  }

  else
  {
    __dst = 0uLL;
    v11 = 0;
  }

  if (*(a7 + 23) < 0)
  {
    operator delete(*a7);
  }

  *a7 = __dst;
  *(a7 + 16) = v11;
  return 0;
}

llvm::raw_ostream *llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::printOptionValue(llvm::raw_ostream *result, unint64_t a2, char a3)
{
  v3 = a2;
  v4 = result;
  if ((a3 & 1) != 0 || (result = llvm::cl::OptionValueCopy<std::string>::compare(result + 152, result + 16), result))
  {
    v5 = *(v4 + 151);
    if (v5 >= 0)
    {
      v6 = v4 + 128;
    }

    else
    {
      v6 = *(v4 + 16);
    }

    if (v5 >= 0)
    {
      v7 = *(v4 + 151);
    }

    else
    {
      v7 = *(v4 + 17);
    }

    return llvm::cl::parser<std::string>::printOptionDiff(result, v4, v6, v7, v4 + 152, v3);
  }

  return result;
}

BOOL llvm::cl::OptionValueCopy<std::string>::compare(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) != 0;
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
  v8 = llvm::cl::parser<BOOL>::parse(a1, a1, a3, a4, a5, a6, &v18);
  if (v8)
  {
    return v8;
  }

  *(a1 + 128) = v18;
  *(a1 + 12) = a2;
  v9 = *(a1 + 184);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v18);
    return v8;
  }

  v11 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::parser<BOOL>::parse(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t llvm::cl::parser<BOOL>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _BYTE *a7)
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
      v15 = 1283;
      v14[0] = "'";
      v14[2] = a5;
      v14[3] = a6;
      v16[0] = v14;
      v16[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v17 = 770;
      v13 = llvm::errs(a1);
      llvm::cl::Option::error(a2, v16, 0, 0, v13);
      return 1;
    }

    v8 = *a5;
    if (v8 != 48)
    {
      if (v8 != 49)
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

void llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::printOptionValue(uint64_t result, unint64_t a2, int a3)
{
  if (a3)
  {
    LOBYTE(v3) = *(result + 128);
LABEL_3:
    v5 = *(result + 144);
    v4 = &unk_2883EAB68;
    llvm::cl::parser<BOOL>::printOptionDiff(result, result, v3 & 1, &v4, a2);
    return;
  }

  if (*(result + 145) == 1)
  {
    v3 = *(result + 128);
    if (*(result + 144) != v3)
    {
      goto LABEL_3;
    }
  }
}

_BYTE *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::setDefault(_BYTE *result)
{
  if (result[145] == 1)
  {
    v1 = result[144];
  }

  else
  {
    v1 = 0;
  }

  result[128] = v1;
  return result;
}

void *std::function<void ()(BOOL const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void llvm::cl::AddLiteralOption(uint64_t result, uint64_t *a2, size_t a3)
{
  if (!atomic_load_explicit(qword_2815A56A0, memory_order_acquire))
  {
  }

  v6 = qword_2815A56A0[0];
  if (*(result + 108) == *(result + 112))
  {
    if (!atomic_load_explicit(_MergedGlobals_10, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_10, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    }

    v7 = _MergedGlobals_10[0];
  }

  else
  {
    v8 = *(result + 96);
    v9 = 16;
    if (v8 == *(result + 88))
    {
      v9 = 20;
    }

    v10 = *(result + 88 + v9);
    if (v10)
    {
      v11 = 8 * v10;
      for (i = *(result + 96); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v11 -= 8;
        if (!v11)
        {
          return;
        }
      }
    }

    else
    {
      i = *(result + 96);
    }

    v13 = (v8 + 8 * v10);
    if (i != v13)
    {
      v14 = *i;
LABEL_19:
      while (++i != v13)
      {
        v14 = *i;
        if (*i < 0xFFFFFFFFFFFFFFFELL)
        {
          if (i != v13)
          {
            goto LABEL_19;
          }

          return;
        }
      }
    }
  }
}

uint64_t llvm::cl::Option::setArgStr(uint64_t result, uint64_t *a2, size_t a3)
{
  v5 = result;
  if ((*(result + 10) & 0x4000) != 0)
  {
    if (!atomic_load_explicit(qword_2815A56A0, memory_order_acquire))
    {
    }

    v6 = qword_2815A56A0[0];
    if (*(v5 + 108) == *(v5 + 112))
    {
      if (!atomic_load_explicit(_MergedGlobals_10, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_10, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      }
    }

    else
    {
      if (!atomic_load_explicit(&qword_2815A5688, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(&qword_2815A5688, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
      }

      result = llvm::SmallPtrSetImplBase::find_imp((v5 + 88), qword_2815A5688);
      v7 = *(v5 + 96);
      v8 = 16;
      if (v7 == *(v5 + 88))
      {
        v8 = 20;
      }

      v9 = *(v5 + 88 + v8);
      if (result == &v7[v9])
      {
        v15 = result;
        if (v9)
        {
          while (*v7 >= 0xFFFFFFFFFFFFFFFELL)
          {
            if (++v7 == result)
            {
              goto LABEL_8;
            }
          }
        }

        if (v7 != result)
        {
          v16 = *v7;
LABEL_29:
          while (++v7 != v15)
          {
            v16 = *v7;
            if (*v7 < 0xFFFFFFFFFFFFFFFELL)
            {
              if (v7 != v15)
              {
                goto LABEL_29;
              }

              break;
            }
          }
        }
      }

      else
      {
        v10 = *(v6 + 280);
        v11 = 16;
        if (v10 == *(v6 + 272))
        {
          v11 = 20;
        }

        v12 = *(v6 + 272 + v11);
        if (v12)
        {
          v13 = 8 * v12;
          v14 = *(v6 + 280);
          while (*v14 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v14;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          v14 = *(v6 + 280);
        }

        v17 = (v10 + 8 * v12);
        if (v14 != v17)
        {
          v18 = *v14;
LABEL_37:
          while (++v14 != v17)
          {
            v18 = *v14;
            if (*v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              if (v14 != v17)
              {
                goto LABEL_37;
              }

              break;
            }
          }
        }
      }
    }
  }

LABEL_8:
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  if (a3 == 1)
  {
    *(v5 + 10) |= 0x1000u;
  }

  return result;
}

llvm::cl *llvm::cl::Option::addCategory(llvm::cl::OptionCategory ***this, llvm::cl::OptionCategory *a2)
{
  result = llvm::cl::getGeneralCategory(this);
  if (a2 != &llvm::cl::getGeneralCategory(void)::GeneralCategory && (v5 = *this[8], result = llvm::cl::getGeneralCategory(result), v5 == &llvm::cl::getGeneralCategory(void)::GeneralCategory))
  {
    *this[8] = a2;
  }

  else
  {
    v8 = this[8];
    v7 = (this + 8);
    v6 = v8;
    v9 = v7[2];
    if (v9)
    {
      v10 = 8 * v9;
      v11 = v6;
      while (*v11 != a2)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v11 = v6;
    }

    if (v11 == &v6[v9])
    {
LABEL_10:

      return llvm::SmallVectorTemplateBase<void *,true>::push_back(v7, a2);
    }
  }

  return result;
}

uint64_t *llvm::cl::getGeneralCategory(llvm::cl *this)
{
  {
    llvm::cl::getGeneralCategory(void)::GeneralCategory = "General options";
    unk_2815AB7B0 = 15;
    qword_2815AB7B8 = &str_6_1;
    unk_2815AB7C0 = 0;
    llvm::cl::OptionCategory::registerCategory(&llvm::cl::getGeneralCategory(void)::GeneralCategory);
  }

  return &llvm::cl::getGeneralCategory(void)::GeneralCategory;
}

char **llvm::cl::OptionCategory::registerCategory(llvm::cl::OptionCategory *this)
{
  if (!atomic_load_explicit(qword_2815A56A0, memory_order_acquire))
  {
  }

  v2 = (qword_2815A56A0[0] + 112);

  return llvm::SmallPtrSetImplBase::insert_imp(v2, this);
}

void anonymous namespace::CommandLineParser::registerSubCommand(uint64_t a1, char *a2)
{
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert(v17, (a1 + 272), a2);
  if (!atomic_load_explicit(&qword_2815A5688, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_2815A5688, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
  }

  if (qword_2815A5688 != a2)
  {
    if (!atomic_load_explicit(&qword_2815A5688, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(&qword_2815A5688, llvm::object_creator<llvm::cl::SubCommand>::call, llvm::object_deleter<llvm::cl::SubCommand>::call);
    }

    v5 = *(qword_2815A5688 + 136);
    if (v5)
    {
        ;
      }
    }

    else
    {
      i = *(qword_2815A5688 + 128);
    }

    v8 = *(qword_2815A5688 + 128) + 8 * v5;
    if (i != v8)
    {
      v9 = *i;
      do
      {
        v10 = v9[1];
        v11 = *(v10 + 10);
        if ((v11 & 7) == 4 || ((v12 = v11 & 0x180, v13 = v11 & 0x800, v12 != 128) ? (v14 = v13 == 0) : (v14 = 0), !v14 || *(v10 + 24)))
        {
        }

        else
        {
        }

        do
        {
          v15 = i[1];
          ++i;
          v9 = v15;
          if (v15)
          {
            v16 = v9 + 1 == 0;
          }

          else
          {
            v16 = 1;
          }
        }

        while (v16);
      }

      while (i != v8);
    }
  }
}

void llvm::cl::TokenizeWindowsCommandLineNoCopy(uint64_t a1, unint64_t a2, unsigned int **a3, unsigned int *a4)
{
  v36[16] = *MEMORY[0x277D85DE8];
  v34 = v36;
  v35 = xmmword_2750C1290;
  if (!a2)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v33 = a2 - 1;
  do
  {
    if (v8 == 2)
    {
      v15 = *(a1 + v9);
      if (v15 == 92)
      {
        v9 = parseBackslash(a1, a2, v9, &v34);
      }

      else
      {
        if (v15 == 34)
        {
          if (v9 >= v33)
          {
            goto LABEL_33;
          }

          v16 = v9 + 1;
          if (*(a1 + v9 + 1) != 34)
          {
            goto LABEL_33;
          }

          llvm::SmallVectorTemplateBase<char,true>::push_back(&v34, 34);
          goto LABEL_15;
        }

        llvm::SmallVectorTemplateBase<char,true>::push_back(&v34, v15);
      }

LABEL_28:
      v17 = 0;
      v8 = 2;
      goto LABEL_54;
    }

    if (v8 == 1)
    {
      v10 = *(a1 + v9);
      if (v10 <= 0x22)
      {
        if (((1 << v10) & 0x100002601) != 0)
        {
          v12 = v34;
          v11 = v35;
          v13 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a3, v35 + 1, 0);
          v14 = v13;
          if (v11)
          {
            memcpy(v13, v12, v11);
          }

          *(v14 + v11) = 0;
          llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a4, v14, v11);
          v8 = 0;
          *&v35 = 0;
          goto LABEL_24;
        }

        if (v10 == 34)
        {
          goto LABEL_28;
        }
      }

      if (v10 != 92)
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v34, v10);
        goto LABEL_33;
      }

      v22 = a1;
      v23 = a2;
      v24 = v9;
LABEL_31:
      v9 = parseBackslash(v22, v23, v24, &v34);
LABEL_33:
      v17 = 0;
      v8 = 1;
      goto LABEL_54;
    }

    if (v9 >= a2)
    {
      v8 = 0;
LABEL_24:
      v17 = 1;
      goto LABEL_54;
    }

    while (1)
    {
      v18 = *(a1 + v9);
      v19 = v18 > 0x20;
      v20 = (1 << v18) & 0x100002601;
      if (v19 || v20 == 0)
      {
        break;
      }

      if (a2 == ++v9)
      {
        v8 = 0;
        v17 = 1;
        v9 = a2;
        goto LABEL_54;
      }
    }

    v16 = v9;
    if (v9 < a2)
    {
      v16 = v9;
      while (1)
      {
        v25 = *(a1 + v16);
        v26 = v25 > 0x22 || ((1 << v25) & 0x500002601) == 0;
        if (!v26 || v25 == 92)
        {
          break;
        }

        if (++v16 >= a2)
        {
          v16 = a2;
          break;
        }
      }
    }

    if (v9 <= v16)
    {
      v27 = v16;
    }

    else
    {
      v27 = v9;
    }

    if (v27 >= a2)
    {
      v27 = a2;
    }

    if (v16 >= a2)
    {
      goto LABEL_52;
    }

    v28 = *(a1 + v16);
    if (v28 > 0x22)
    {
      goto LABEL_58;
    }

    if (((1 << v28) & 0x100002601) != 0)
    {
LABEL_52:
      llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a4, a1 + v9, v27 - v9);
      v8 = 0;
      v17 = 1;
      goto LABEL_53;
    }

    if (v28 != 34)
    {
LABEL_58:
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v34, (a1 + v9), (a1 + v27));
      v22 = a1;
      v23 = a2;
      v24 = v16;
      goto LABEL_31;
    }

    llvm::SmallVectorImpl<char>::append<char const*,void>(&v34, (a1 + v9), (a1 + v27));
LABEL_15:
    v17 = 0;
    v8 = 2;
LABEL_53:
    v9 = v16;
LABEL_54:
    ++v9;
  }

  while (v9 < a2);
  v29 = v34;
  if ((v17 & 1) == 0)
  {
    v30 = v35;
    v31 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(*a3, v35 + 1, 0);
    v32 = v31;
    if (v30)
    {
      memcpy(v31, v29, v30);
    }

    *(v32 + v30) = 0;
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(a4, v32, v30);
    v29 = v34;
  }

  if (v29 != v36)
  {
    free(v29);
  }
}

uint64_t *llvm::operator+@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (!*(result + 32) || (v4 = *(a2 + 32), !*(a2 + 32)))
  {
    *(a3 + 32) = 256;
    return result;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 1);
    *a3 = *a2;
    *(a3 + 16) = v5;
    v6 = a2[4];
LABEL_8:
    *(a3 + 32) = v6;
    return result;
  }

  if (v4 == 1)
  {
    v7 = *(result + 1);
    *a3 = *result;
    *(a3 + 16) = v7;
    v6 = result[4];
    goto LABEL_8;
  }

  v8 = *result;
  v9 = result[1];
  if (*(result + 33) != 1)
  {
    LOBYTE(v3) = 2;
    v8 = result;
  }

  v10 = a2[1];
  if (*(a2 + 33) == 1)
  {
    v11 = *a2;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a2;
  }

  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 32) = v3;
  *(a3 + 33) = v4;
  return result;
}

unsigned int *llvm::SmallVectorImpl<char const*>::append<char const* const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v5 = result;
  v6 = a3 - __src;
  v7 = result[2];
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > result[3])
  {
    result = llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 8);
    LODWORD(v7) = v5[2];
  }

  if (__src != a3)
  {
    result = memcpy((*v5 + 8 * v7), __src, v6);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + (v6 >> 3);
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, const char *a2)
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

uint64_t llvm::toString@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v22 = 0x200000000;
  v20 = *a1;
  v21 = v23;
  *a1 = 0;
  v19 = &v21;
  llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v20, &v19);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v3 = v21;
  v4 = v22;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (v4)
  {
    v5 = 24 * v4;
    v6 = v4 - 1;
    v7 = v3 + 23;
    v8 = 24 * v4;
    do
    {
      v9 = *v7;
      if (v9 < 0)
      {
        v9 = *(v7 - 15);
      }

      v6 += v9;
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
    std::string::reserve(a2, v6);
    v10 = *(v3 + 23);
    if (v10 >= 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = *v3;
    }

    if (v10 >= 0)
    {
      v12 = *(v3 + 23);
    }

    else
    {
      v12 = v3[1];
    }

    std::string::append(a2, v11, v12);
    if (v4 != 1)
    {
      v13 = (v3 + 3);
      v14 = v5 - 24;
      do
      {
        std::string::append(a2, "\n", 1uLL);
        v15 = v13[23];
        if (v15 >= 0)
        {
          v16 = v13;
        }

        else
        {
          v16 = *v13;
        }

        if (v15 >= 0)
        {
          v17 = *(v13 + 23);
        }

        else
        {
          v17 = *(v13 + 1);
        }

        std::string::append(a2, v16, v17);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }

  return llvm::SmallVector<std::string,2u>::~SmallVector(&v21);
}

uint64_t llvm::cl::Option::error(uint64_t a1, llvm::Twine *a2, uint64_t a3, uint64_t a4, llvm::raw_ostream *a5)
{
  if (!a3)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::raw_ostream::operator<<(a5, *(a1 + 32), *(a1 + 40));
    goto LABEL_17;
  }

  v7 = a4;
  v8 = a3;
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!atomic_load_explicit(qword_2815A56A0, memory_order_acquire))
  {
  }

  v9 = *(qword_2815A56A0[0] + 23);
  if (v9 >= 0)
  {
    v10 = qword_2815A56A0[0];
  }

  else
  {
    v10 = *qword_2815A56A0[0];
  }

  if (v9 >= 0)
  {
    v11 = *(qword_2815A56A0[0] + 23);
  }

  else
  {
    v11 = *(qword_2815A56A0[0] + 8);
  }

  llvm::raw_ostream::write(a5, v10, v11);
  v12 = *(a5 + 4);
  if ((*(a5 + 3) - v12) > 9)
  {
    *(v12 + 8) = 8293;
    *v12 = *": for the ";
    *(a5 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(a5, ": for the ", 0xAuLL);
  }

  v16[0] = v8;
  v16[1] = v7;
  v16[2] = 0;
LABEL_17:
  v13 = *(a5 + 4);
  if ((*(a5 + 3) - v13) > 8)
  {
    *(v13 + 8) = 32;
    *v13 = *" option: ";
    *(a5 + 4) += 9;
  }

  else
  {
    llvm::raw_ostream::write(a5, " option: ", 9uLL);
  }

  llvm::Twine::print(a2, a5);
  v14 = *(a5 + 4);
  if (*(a5 + 3) == v14)
  {
    llvm::raw_ostream::write(a5, "\n", 1uLL);
  }

  else
  {
    *v14 = 10;
    ++*(a5 + 4);
  }

  return 1;
}

llvm::raw_ostream *anonymous namespace::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v10 = v12;
  for (i = xmmword_2750C12B0; v5; --v5)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(&v10, 32);
  }

  if (v4 <= 1)
  {
    v6 = "-";
  }

  else
  {
    v6 = "--";
  }

  v7 = 1;
  if (v4 > 1)
  {
    v7 = 2;
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v10, v6, &v6[v7]);
  v8 = llvm::raw_ostream::write(a1, v10, i);
  llvm::raw_ostream::operator<<(v8, *a2, *(a2 + 8));
  if (v10 != v12)
  {
    free(v10);
  }

  return a1;
}

uint64_t llvm::cl::Option::addOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    ++*(a1 + 8);
  }

  return (**a1)(a1, a2, a3, a4, a5, a6);
}