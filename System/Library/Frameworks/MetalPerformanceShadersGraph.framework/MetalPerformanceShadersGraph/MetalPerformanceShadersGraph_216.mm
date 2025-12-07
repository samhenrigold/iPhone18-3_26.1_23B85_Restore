void llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt(llvm::detail::IEEEFloat *this@<X0>, uint64_t a3@<X8>)
{
  v3 = this;
  v66 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = *(*this + 16);
  v61 = **this;
  v62 = v6;
  DWORD1(v61) = -1022;
  v57 = v5;
  v7 = *(v5 + 8);
  v8 = v7 + 64;
  if ((v7 + 64) >= 0x80)
  {
    this = operator new[]((v8 >> 3) & 0x1FFFFFF8);
    v58 = this;
  }

  v9 = *(v3 + 20);
  v10 = v9 & 7;
  v60 = v9 & 0xF;
  v59 = *(v3 + 4);
  v12 = (v9 & 6) != 0 && v10 != 3;
  if (v10 == 1 || v12)
  {
    if ((v7 - 64) >= 0xFFFFFF80)
    {
      this = &v58;
    }

    v15 = *(v3 + 1);
    v14 = (v3 + 8);
    v13 = v15;
    if ((v7 - 64) >= 0xFFFFFF80)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    llvm::APInt::tcAssign(this, v16, (v8 >> 6));
  }

  v63 = 0;
  llvm::detail::IEEEFloat::convert(&v57, &v61, 1, &v63);
  v17 = v57;
  v53 = v57;
  v18 = *(v57 + 8) + 64;
  if (v18 >= 0x80)
  {
    __p = operator new[]((v18 >> 3) & 0x1FFFFFF8);
  }

  v19 = v60 & 7;
  v56 = v56 & 0xF0 | v60 & 0xF;
  v55 = v59;
  v21 = (v60 & 6) != 0 && v19 != 3;
  if (v19 == 1 || v21)
  {
    v22 = *(v17 + 8);
    if ((v22 - 64) >= 0xFFFFFF80)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v22 - 64) >= 0xFFFFFF80)
    {
      v24 = &v58;
    }

    else
    {
      v24 = v58;
    }

    llvm::APInt::tcAssign(p_p, v24, ((v22 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v53, &llvm::semIEEEdouble, 1, &v63);
  v25 = v56 & 7;
  v26 = (v56 & 6) == 0 || v25 == 3;
  v27 = !v26;
  if (v26)
  {
    if (v25 != 3)
    {
      if ((v56 & 7) != 0)
      {
        if ((*(v53 + 8) - 64) >= 0xFFFFFF80)
        {
          v31 = &__p;
        }

        else
        {
          v31 = __p;
        }

        v30 = *v31;
      }

      else
      {
        v30 = 0;
      }

      v64 = (v56 << 60) & 0x8000000000000000 | v30 & 0xFFFFFFFFFFFFFLL | 0x7FF0000000000000;
      if (!v27)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }

    v29 = 0;
    v28 = 0;
    goto LABEL_51;
  }

  v28 = v55 + 1023;
  if ((*(v53 + 8) - 64) > 0xFFFFFF7F)
  {
    v29 = __p;
    if (v55 != -1022)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v29 = *__p;
    if (v55 != -1022)
    {
LABEL_51:
      v64 = (v56 << 60) & 0x8000000000000000 | v29 & 0xFFFFFFFFFFFFFLL | ((v28 & 0x7FF) << 52);
      if (!v27)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }
  }

  v64 = (v56 << 60) & 0x8000000000000000 | v29 & 0xFFFFFFFFFFFFFLL | (((v29 >> 52) & 1) << 52);
  if (!v27)
  {
    goto LABEL_72;
  }

LABEL_58:
  if (!v63)
  {
LABEL_72:
    v65 = 0;
    goto LABEL_73;
  }

  v32 = llvm::detail::IEEEFloat::convert(&v53, &v61, 1, &v63);
  v49 = v57;
  v34 = *(v57 + 8);
  v35 = v34 + 64;
  if ((v34 + 64) >= 0x80)
  {
    v32 = operator new[]((v35 >> 3) & 0x1FFFFFF8);
    v50 = v32;
  }

  v36 = v60 & 7;
  v52 = v60 & 0xF;
  v51 = v59;
  v38 = (v60 & 6) != 0 && v36 != 3;
  if (v36 != 1 && !v38)
  {
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v49, &v53, 1u, v33) != 2)
    {
      goto LABEL_70;
    }

LABEL_84:
    v44 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v49, &v53, 1u, v39, v40);
    llvm::detail::IEEEFloat::normalize(&v49, 1, v44);
    v41 = v52;
    if ((v52 & 7) != 3)
    {
      goto LABEL_90;
    }

    goto LABEL_85;
  }

  if ((v34 - 64) < 0xFFFFFF80)
  {
    v42 = v58;
  }

  else
  {
    v32 = &v50;
    v42 = &v58;
  }

  llvm::APInt::tcAssign(v32, v42, (v35 >> 6));
  if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v49, &v53, 1u, v43) == 2)
  {
    goto LABEL_84;
  }

LABEL_70:
  v41 = v52;
  if ((v52 & 7) != 3)
  {
    goto LABEL_90;
  }

LABEL_85:
  if ((v56 & 7) != 3 || ((v56 ^ v41) & 8) == 0)
  {
    LOBYTE(v41) = v41 & 0xF3;
    v52 = v41;
  }

  if (*(v49 + 20) == 2)
  {
    v52 = v41 & 0xF3;
  }

LABEL_90:
  llvm::detail::IEEEFloat::convert(&v49, &llvm::semIEEEdouble, 1, &v63);
  v45 = v52 & 7;
  if ((v52 & 6) == 0 || v45 == 3)
  {
    if (v45 == 3)
    {
      v47 = 0;
      LOWORD(v46) = 0;
    }

    else
    {
      if ((v52 & 7) != 0)
      {
        if ((*(v49 + 8) - 64) >= 0xFFFFFF80)
        {
          v48 = &v50;
        }

        else
        {
          v48 = v50;
        }

        v47 = *v48;
      }

      else
      {
        v47 = 0;
      }

      LOWORD(v46) = 2047;
    }
  }

  else
  {
    LOWORD(v46) = v51 + 1023;
    if ((*(v49 + 8) - 64) <= 0xFFFFFF7F)
    {
      v47 = *v50;
      if (v51 != -1022)
      {
        goto LABEL_106;
      }

      goto LABEL_99;
    }

    v47 = v50;
    if (v51 == -1022)
    {
LABEL_99:
      v46 = (v47 >> 52) & 1;
    }
  }

LABEL_106:
  v65 = (v52 << 60) & 0x8000000000000000 | v47 & 0xFFFFFFFFFFFFFLL | ((v46 & 0x7FF) << 52);
  if ((*(v49 + 8) - 64) <= 0xFFFFFF7F && v50)
  {
    operator delete[](v50);
  }

LABEL_73:
  llvm::APInt::APInt(a3, 0x80u, &v64, 2u);
  if ((*(v53 + 8) - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

  if ((*(v57 + 8) - 64) <= 0xFFFFFF7F)
  {
    if (v58)
    {
      operator delete[](v58);
    }
  }
}

uint64_t llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *(this + 20);
  v7 = v6 & 7;
  if ((v6 & 6) == 0 || v7 == 3)
  {
    if (v7 == 3)
    {
      v9 = 0;
      v10 = 0;
      LOWORD(v11) = 0;
    }

    else
    {
      if ((v6 & 7) != 0)
      {
        v14 = *this;
        v13 = (this + 8);
        if ((*(v14 + 8) - 64) <= 0xFFFFFF7F)
        {
          v13 = *v13;
        }

        v9 = *v13;
        v10 = v13[1];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      LOWORD(v11) = 0x7FFF;
    }
  }

  else
  {
    LODWORD(v11) = *(this + 4) + 0x3FFF;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v12 = *(this + 1);
      v9 = *v12;
      v10 = v12[1];
      if (v11 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    if (v11 == 1)
    {
LABEL_13:
      v11 = HIWORD(v10) & 1;
    }
  }

LABEL_19:
  v16[2] = v2;
  v16[3] = v3;
  v16[0] = v9;
  v16[1] = (v6 << 60) & 0x8000000000000000 | v10 & 0xFFFFFFFFFFFFLL | ((v11 & 0x7FFF) << 48);
  return llvm::APInt::APInt(a2, 0x80u, v16, 2u);
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

void llvm::detail::IEEEFloat::bitcastToAPInt(uint64_t a2@<X8>, llvm::detail::IEEEFloat *this@<X0>)
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
    llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semPPCDoubleDoubleLegacy)
  {
    llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt(this, a2);
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
    llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3FN)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3FNUZ)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E4M3B11FNUZ)
  {
    llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat8E3M4)
  {
    llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloatTF32)
  {
    llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat6E3M2FN)
  {
    llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat6E2M3FN)
  {
    llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &llvm::semFloat4E2M1FN)
  {
    llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a2);
  }

  else
  {
    llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(this, a2);
  }
}

void llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
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
  v6 = v5 & 0x7FFF;
  *this = &llvm::semX87DoubleExtended;
  v7 = operator new[](0x10uLL);
  *(this + 1) = v7;
  v8 = *(this + 20);
  v9 = (v5 >> 12) & 8;
  if (v6 | v4)
  {
    if (v6 != 0x7FFF || v4 != 0x8000000000000000)
    {
      v11 = v8 & 0xF7 | v9;
      v12 = v6 != 0x7FFF || v4 == 0x8000000000000000;
      if (v12 && ((v4 & 0x8000000000000000) != 0 || ((v5 & 0x7FFF) != 0 ? (v13 = v6 == 0x7FFF) : (v13 = 1), v13)))
      {
        *(this + 20) = v11 & 0xF8 | 2;
        *(this + 4) = v6 - 0x3FFF;
        *v7 = v4;
        *(v7 + 1) = 0;
        if ((v5 & 0x7FFF) == 0)
        {
          *(this + 4) = -16382;
        }
      }

      else
      {
        *(this + 20) = v11 & 0xF8 | 1;
        *(this + 4) = 0x4000;
        *v7 = v4;
        *(v7 + 1) = 0;
      }

      return;
    }

    *(this + 20) = v8 & 0xF0 | v9;
    v14 = 0x4000;
  }

  else
  {
    *(this + 20) = v9 | v8 & 0xF0 | 3;
    v14 = -16383;
  }

  *(this + 4) = v14;

  llvm::APInt::tcSet(v7, 0, 2u);
}

void llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
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
  LODWORD(__p) = 64;
  v18 = v6;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v18, a3, a4);
  llvm::detail::IEEEFloat::convert(this, &llvm::semPPCDoubleDoubleLegacy, 1, &v21);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v17 = 64;
    v16 = v7;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v18, &v16, v8, v9);
    llvm::detail::IEEEFloat::convert(&v18, &llvm::semPPCDoubleDoubleLegacy, 1, &v21);
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v18, 0, v11) == 2)
    {
      v14 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v18, 0, v12, v13);
      llvm::detail::IEEEFloat::normalize(this, 1, v14);
    }

    v15 = *(this + 20);
    if ((v15 & 7) == 3)
    {
      if ((v20 & 7) != 3 || ((v20 ^ v15) & 8) != 0)
      {
        LOBYTE(v15) = v15 & 0xF3;
        *(this + 20) = v15;
      }

      if (*(*this + 20) == 2)
      {
        *(this + 20) = v15 & 0xF3;
      }
    }

    if ((*(v18 + 2) - 64) <= 0xFFFFFF7F)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
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

void llvm::detail::IEEEFloat::initFromQuadrupleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2)
{
  v3 = *(a2 + 2);
  v4 = *a2;
  if (v3 < 0x41)
  {
    v4 = a2;
  }

  v5 = *v4;
  v6 = v4[1] & 0xFFFFFFFFFFFFLL;
  v7 = v4[((v3 + 63) >> 6) - 1];
  *this = &llvm::semIEEEquad;
  v8 = operator new[](0x10uLL);
  *(this + 1) = v8;
  v9 = *(this + 20);
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = (v5 | v6) == 0;
  v12 = (v7 >> 60) & 8;
  v13 = HIWORD(v7) & 0x7FFF;
  if (v13 != 0x7FFF || (v5 | v6) != 0)
  {
    if (v13 != 0x7FFF)
    {
      v11 = 1;
    }

    if (!v11)
    {
      *(this + 20) = v9 & 0xF0 | (v7 >> 60) & 8 | 1;
      *(this + 4) = 0x4000;
      *v8 = v5;
      *(v8 + 1) = v6;
      return;
    }

    if (v10 | v13)
    {
      *(this + 20) = v9 & 0xF0 | (v7 >> 60) & 8 | 2;
      *(this + 4) = v13 - 0x3FFF;
      *v8 = v5;
      *(v8 + 1) = v6;
      if (v13)
      {
        *(v8 + 1) |= 0x1000000000000uLL;
      }

      else
      {
        *(this + 4) = -16382;
      }

      return;
    }

    *(this + 20) = v12 | v9 & 0xF0 | 3;
    v15 = -16383;
  }

  else
  {
    *(this + 20) = v9 & 0xF0 | v12;
    v15 = 0x4000;
  }

  *(this + 4) = v15;

  llvm::APInt::tcSet(v8, 0, 2u);
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

  else if (a2 == &llvm::semX87DoubleExtended)
  {
    llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEquad)
  {
    llvm::detail::IEEEFloat::initFromQuadrupleAPInt(a1, a3);
  }

  else if (a2 == &llvm::semPPCDoubleDoubleLegacy)
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

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, float a2, uint64_t a3, uint64_t a4, unsigned int a5)
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

void llvm::detail::IEEEFloat::toString(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v138[32] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 20) & 7;
  if (v6 == 3)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v12 = a2[1];
      if (v12 + 1 > a2[2])
      {
        v121 = a3;
        v122 = a4;
        v123 = a5;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v12 + 1, 1);
        a3 = v121;
        a4 = v122;
        a5 = v123;
        v12 = a2[1];
      }

      *(*a2 + v12) = 45;
      ++a2[1];
    }

    v13 = a2[1];
    if (a4)
    {
      if (v13 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 1, 1);
        v13 = a2[1];
      }

      *(*a2 + v13) = 48;
      ++a2[1];
    }

    else
    {
      v37 = a2[2];
      if (!a5)
      {
        if (v37 < v13 + 3)
        {
          v45 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 3, 1);
          a3 = v45;
          v13 = a2[1];
        }

        v46 = *a2 + v13;
        *(v46 + 2) = 48;
        *v46 = 11824;
        v7 = a2[1] + 3;
        a2[1] = v7;
        if (a3 >= 2)
        {
          v47 = a3 - 1;
          if (v7 + v47 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + v47, 1);
            v7 = a2[1];
          }

          memset((*a2 + v7), 48, v47);
          v7 = a2[1] + v47;
          a2[1] = v7;
        }

        if (a2[2] < (v7 + 4))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + 4, 1);
          v7 = a2[1];
        }

        v27 = *a2;
        v28 = 808463205;
        goto LABEL_76;
      }

      if (v37 < v13 + 6)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 6, 1);
        v13 = a2[1];
      }

      v38 = *a2 + v13;
      *(v38 + 4) = 12331;
      *v38 = 1160785456;
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
        v9 = v7 + 4;
        if ((*(a1 + 20) & 8) == 0)
        {
          if (v8 < v7 + 4)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
            v7 = a2[1];
          }

          *(*a2 + v7) = 1718503723;
          goto LABEL_77;
        }

        if (v8 < v7 + 4)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
          v7 = a2[1];
        }

        v27 = *a2;
        v28 = 1718503725;
LABEL_76:
        *(v27 + v7) = v28;
LABEL_77:
        a2[1] += 4;
        return;
      }

      v14 = *(*a1 + 8);
      v15 = (a1 + 8);
      v16 = a3;
      v17 = a4;
      v18 = a5;
      if (v14 - 64 <= 0xFFFFFF7F)
      {
        v15 = *v15;
      }

      v19 = *(a1 + 16);
      llvm::APInt::APInt(&v127, v14, v15, (v14 + 63) >> 6);
      v24 = *(a1 + 20);
      v25 = v128;
      v126 = v128;
      if (v128 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, &v127);
        v25 = v126;
        v26 = v16;
        if ((v24 & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        __p = v127;
        v26 = v16;
        if ((v24 & 8) == 0)
        {
          goto LABEL_31;
        }
      }

      v29 = a2[1];
      if (v29 + 1 > a2[2])
      {
        v124 = v26;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v29 + 1, 1);
        v26 = v124;
        v29 = a2[1];
      }

      *(*a2 + v29) = 45;
      ++a2[1];
LABEL_31:
      if (v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = (59 * v25) / 196 + 2;
      }

      if (v126 > 0x40)
      {
        v35 = llvm::APInt::countTrailingZerosSlowCase(&__p);
        llvm::APInt::lshrSlowCase(&__p, v35);
        v36 = v19 - v14 + v35;
        v34 = v36 + 1;
        if (v36 == -1)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v31 = __clz(__rbit64(__p));
        if (v126 >= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v126;
        }

        if (v126 <= v31)
        {
          __p = 0;
          v39 = v19 - v14 + v32;
          v34 = v39 + 1;
          if (v39 == -1)
          {
            goto LABEL_86;
          }
        }

        else
        {
          __p = (__p >> v32);
          v33 = v19 - v14 + v32;
          v34 = v33 + 1;
          if (v33 == -1)
          {
            goto LABEL_86;
          }
        }
      }

      if (v34 < 1)
      {
        v42 = (-137 * v34 + 136) / 0x3Bu + v25;
        llvm::APInt::zext(&__dst, &__p, v42);
        if (v126 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        v43 = -v34;
        __p = __dst;
        v126 = v137;
        LODWORD(v137) = v42;
        if (v42 > 0x40)
        {
          llvm::APInt::initSlowCase(&__dst, 5, 0);
        }

        else
        {
          v44 = ((0xFFFFFFFFFFFFFFFFLL >> -v42) & 5);
          if (!v42)
          {
            v44 = 0;
          }

          __dst = v44;
        }

        while (1)
        {
          if (v43)
          {
            llvm::APInt::operator*=(&__p, &__dst);
          }

          if (v43 < 2)
          {
            break;
          }

          v43 >>= 1;
          llvm::APInt::operator*=(&__dst, &__dst);
        }

        if (v137 >= 0x41 && __dst)
        {
          operator delete[](__dst);
        }
      }

      else
      {
        llvm::APInt::zext(&__dst, &__p, v34 + v25);
        if (v126 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        __p = __dst;
        v126 = v137;
        if (v137 > 0x40)
        {
          llvm::APInt::shlSlowCase(&__p, v34);
          v34 = 0;
        }

        else
        {
          v40 = __dst << v34;
          if (v137 == v34)
          {
            v40 = 0;
          }

          if (v137)
          {
            v41 = 0xFFFFFFFFFFFFFFFFLL >> -v137;
          }

          else
          {
            v41 = 0;
          }

          __p = (v41 & v40);
          v34 = 0;
        }
      }

LABEL_86:
      v48 = v126;
      if (v126 > 0x40)
      {
        v49 = llvm::APInt::countLeadingZerosSlowCase(&__p);
      }

      else
      {
        v49 = v126 + __clz(__p) - 64;
      }

      v50 = (196 * v30 + 58) / 0x3B;
      if (v48 - v49 <= v50)
      {
        goto LABEL_118;
      }

      v51 = 59 * (v48 - v49 - v50);
      if (v51 < 0xC4)
      {
        goto LABEL_118;
      }

      v52 = v51 / 0xC4;
      v34 += v51 / 0xC4;
      LODWORD(v137) = v48;
      if (v48 > 0x40)
      {
        llvm::APInt::initSlowCase(&__dst, 1, 0);
        v48 = v126;
        LODWORD(v130) = v126;
        if (v126 > 0x40)
        {
          llvm::APInt::initSlowCase(&v129, 10, 0);
          while (1)
          {
LABEL_99:
            if (v52)
            {
              llvm::APInt::operator*=(&__dst, &v129);
            }

            if (v52 < 2)
            {
              break;
            }

            v52 >>= 1;
            llvm::APInt::operator*=(&v129, &v129);
          }

          llvm::APInt::udiv(&v134, &__p, &__dst);
          if (v126 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          __p = v134;
          v54 = v135;
          v126 = v135;
          if (v135 > 0x40)
          {
            v55 = llvm::APInt::countLeadingZerosSlowCase(&__p);
          }

          else
          {
            v55 = v135 + __clz(v134) - 64;
          }

          llvm::APInt::trunc(&v134, &__p, v54 - v55);
          if (v126 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          __p = v134;
          v126 = v135;
          if (v130 >= 0x41 && v129)
          {
            operator delete[](v129);
          }

          if (v137 >= 0x41 && __dst)
          {
            operator delete[](__dst);
          }

          v48 = v126;
LABEL_118:
          __dst = v138;
          v137 = xmmword_1E0971960;
          if (v48 > 3)
          {
            v135 = v48;
            if (v48 > 0x40)
            {
              llvm::APInt::initSlowCase(&v134, 10, 0);
              v133 = v48;
              llvm::APInt::initSlowCase(&v132, 0, 0);
              v56 = v126;
              if (v126 < 0x41)
              {
                goto LABEL_132;
              }

LABEL_129:
              if (v56 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40 || *__p)
              {
                while (1)
                {
                  llvm::APInt::udivrem(&__p, &v134, &__p, &v132, v21, v22, v23);
                  v57 = (v133 >= 0x41 ? v132 : &v132);
                  v58 = *v57;
                  if (v58)
                  {
                    break;
                  }

                  ++v34;
                  v56 = v126;
                  if (v126 >= 0x41)
                  {
                    goto LABEL_129;
                  }

LABEL_132:
                  if (!__p)
                  {
                    goto LABEL_151;
                  }
                }

                v59 = v58 + 48;
                v60 = v137;
                if ((v137 + 1) > *(&v137 + 1))
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v138, v137 + 1, 1);
                  v60 = v137;
                }

                *(__dst + v60) = v59;
                *&v137 = v137 + 1;
                v61 = v126;
                if (v126 < 0x41)
                {
                  goto LABEL_143;
                }

                while (v61 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40 || *__p)
                {
                  while (1)
                  {
                    llvm::APInt::udivrem(&__p, &v134, &__p, &v132, v21, v22, v23);
                    if (v133 >= 0x41)
                    {
                      v62 = v132;
                    }

                    else
                    {
                      v62 = &v132;
                    }

                    v63 = *v62;
                    v64 = v137;
                    if ((v137 + 1) > *(&v137 + 1))
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v138, v137 + 1, 1);
                      v64 = v137;
                    }

                    *(__dst + v64) = v63 + 48;
                    *&v137 = v137 + 1;
                    v61 = v126;
                    if (v126 >= 0x41)
                    {
                      break;
                    }

LABEL_143:
                    if (!__p)
                    {
                      goto LABEL_151;
                    }
                  }
                }
              }

LABEL_151:
              v65 = v137;
              v66 = v137 - v30;
              if (v137 <= v30)
              {
                v68 = v17;
                if (!v17)
                {
                  goto LABEL_187;
                }

                goto LABEL_176;
              }

              v67 = __dst;
              v68 = v17;
              if (*(__dst + (v66 - 1)) >= 53)
              {
                if (v30)
                {
                  v72 = v30;
                  while (1)
                  {
                    v73 = *(__dst + v66);
                    if (v73 != 57)
                    {
                      break;
                    }

                    LODWORD(v66) = v66 + 1;
                    if (!--v72)
                    {
                      goto LABEL_170;
                    }
                  }

                  *(__dst + v66) = v73 + 1;
                }

                if (v66 == v65)
                {
LABEL_170:
                  v74 = 0;
                  *&v137 = 0;
                  if (!*(&v137 + 1))
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v138, 1uLL, 1);
                    v68 = v17;
                    v74 = v137;
                  }

                  *(__dst + v74) = 49;
                  v75 = v65;
                  v65 = v137 + 1;
                  v34 += v75;
                  *&v137 = v137 + 1;
                  if (!v68)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_176;
                }

                v70 = v66;
                v67 = __dst;
                v71 = v137 - v66;
                if (v137 == v66)
                {
                  goto LABEL_159;
                }
              }

              else
              {
                if (v66 < v137)
                {
                  v69 = v30;
                  while (*(__dst + v66) == 48)
                  {
                    ++v66;
                    if (!--v69)
                    {
                      LODWORD(v66) = v137;
                      break;
                    }
                  }
                }

                v70 = v66;
                v71 = v137 - v66;
                if (v137 == v66)
                {
LABEL_159:
                  v65 = v71;
                  v34 += v66;
                  *&v137 = v71;
                  if (!v68)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_176;
                }
              }

              v76 = v68;
              memmove(v67, &v67[v70], v71);
              v68 = v76;
              v65 = v67 + v71 - __dst;
              v34 += v66;
              *&v137 = &v67[v71] - __dst;
              if (!v68)
              {
                goto LABEL_187;
              }

LABEL_176:
              if (v34 < 0)
              {
                v81 = v34 + v65;
                if (((v81 - 1) & 0x80000000) == 0 || 1 - v81 <= v68)
                {
                  if (v81 < 1)
                  {
                    v114 = a2[1];
                    if (v114 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v114 + 1, 1);
                      v114 = a2[1];
                    }

                    *(*a2 + v114) = 48;
                    v115 = a2[1];
                    v116 = a2[2];
                    v117 = v115 + 1;
                    a2[1] = v115 + 1;
                    if (v115 + 2 > v116)
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v115 + 2, 1);
                      v117 = a2[1];
                    }

                    *(*a2 + v117) = 46;
                    v113 = a2[1] + 1;
                    a2[1] = v113;
                    if (v81)
                    {
                      do
                      {
                        if (v113 + 1 > a2[2])
                        {
                          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v113 + 1, 1);
                          v113 = a2[1];
                        }

                        *(*a2 + v113) = 48;
                        v113 = a2[1] + 1;
                        a2[1] = v113;
                        v118 = __CFADD__(v81, 1);
                        LODWORD(v81) = v81 + 1;
                      }

                      while (!v118);
                      LODWORD(v81) = 0;
                    }
                  }

                  else
                  {
                    v108 = a2[1];
                    v109 = v65 - 1;
                    v110 = v81;
                    do
                    {
                      v111 = *(__dst + v109);
                      if (v108 + 1 > a2[2])
                      {
                        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v108 + 1, 1);
                        v108 = a2[1];
                      }

                      *(*a2 + v108) = v111;
                      v112 = a2[1];
                      v108 = v112 + 1;
                      a2[1] = v112 + 1;
                      --v109;
                      --v110;
                    }

                    while (v110);
                    if (v112 + 2 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v112 + 2, 1);
                      v108 = a2[1];
                    }

                    *(*a2 + v108) = 46;
                    v113 = a2[1] + 1;
                    a2[1] = v113;
                  }

                  if (v81 != v65)
                  {
                    v119 = ~v81 + v65;
                    do
                    {
                      v120 = *(__dst + v119);
                      if (v113 + 1 > a2[2])
                      {
                        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v113 + 1, 1);
                        v113 = a2[1];
                      }

                      *(*a2 + v113) = v120;
                      v113 = a2[1] + 1;
                      a2[1] = v113;
                      --v119;
                    }

                    while (v119 != -1);
                  }

                  goto LABEL_231;
                }
              }

              else if (v34 <= v68 && v34 + v65 <= v30)
              {
                if (v65)
                {
                  v77 = v65;
                  v78 = a2[1];
                  v79 = v65 - 1;
                  do
                  {
                    v80 = *(__dst + v79);
                    if (v78 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v78 + 1, 1);
                      v78 = a2[1];
                    }

                    *(*a2 + v78) = v80;
                    v78 = a2[1] + 1;
                    a2[1] = v78;
                    --v79;
                    --v77;
                  }

                  while (v77);
                }

                if (v34)
                {
                  v105 = a2[1];
                  do
                  {
                    if (v105 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v105 + 1, 1);
                      v105 = a2[1];
                    }

                    *(*a2 + v105) = 48;
                    v105 = a2[1] + 1;
                    a2[1] = v105;
                    --v34;
                  }

                  while (v34);
                }

                goto LABEL_231;
              }

LABEL_187:
              v82 = v65 - 1;
              v83 = *(__dst + v65 - 1);
              v84 = a2[1];
              if (v84 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v84 + 1, 1);
                v84 = a2[1];
              }

              *(*a2 + v84) = v83;
              v85 = a2[1];
              v86 = a2[2];
              v87 = v85 + 1;
              a2[1] = v85 + 1;
              if (v85 + 2 > v86)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v85 + 2, 1);
                v87 = a2[1];
              }

              *(*a2 + v87) = 46;
              v88 = a2[1];
              v89 = v88 + 1;
              a2[1] = v88 + 1;
              if (v65 == 1 && (v18 & 1) != 0)
              {
                if (v88 + 2 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v88 + 2, 1);
                  v89 = a2[1];
                }

                *(*a2 + v89) = 48;
                v89 = a2[1] + 1;
                a2[1] = v89;
              }

              else if (v65 != 1)
              {
                v106 = v65 - 2;
                do
                {
                  v107 = *(__dst + v106);
                  if (v89 + 1 > a2[2])
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v89 + 1, 1);
                    v89 = a2[1];
                  }

                  *(*a2 + v89) = v107;
                  v89 = a2[1] + 1;
                  a2[1] = v89;
                  --v106;
                }

                while (v106 != -1);
              }

              if (v18)
              {
                v90 = 69;
LABEL_205:
                v92 = v82 + v34;
                if (v89 + 1 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v89 + 1, 1);
                  v89 = a2[1];
                }

                *(*a2 + v89) = v90;
                v93 = a2[1];
                v94 = a2[2];
                v95 = v93 + 1;
                a2[1] = v93 + 1;
                if (v92 < 0)
                {
                  v96 = 45;
                }

                else
                {
                  v96 = 43;
                }

                if (v93 + 2 > v94)
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v93 + 2, 1);
                  v95 = a2[1];
                }

                v97 = 0;
                *(*a2 + v95) = v96;
                ++a2[1];
                if (v92 >= 0)
                {
                  v98 = v92;
                }

                else
                {
                  v98 = -v92;
                }

                v129 = &v131;
                v130 = xmmword_1E099CEF0;
                do
                {
                  if (v97 + 1 > *(&v130 + 1))
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v129, &v131, v97 + 1, 1);
                    v97 = v130;
                  }

                  *(v129 + v97) = (v98 % 0xA) | 0x30;
                  v99 = v130;
                  v97 = v130 + 1;
                  *&v130 = v130 + 1;
                  v100 = v98 > 9;
                  v98 /= 0xAu;
                }

                while (v100);
                if ((v18 & 1) == 0 && v97 <= 1)
                {
                  if ((v99 + 2) > *(&v130 + 1))
                  {
                    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v129, &v131, v99 + 2, 1);
                    v97 = v130;
                  }

                  *(v129 + v97) = 48;
                  LODWORD(v97) = v130 + 1;
                  *&v130 = v130 + 1;
                }

                v101 = v97;
                if (v97)
                {
                  v102 = a2[1];
                  v103 = v97 - 1;
                  do
                  {
                    v104 = *(v129 + v103);
                    if (v102 + 1 > a2[2])
                    {
                      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v102 + 1, 1);
                      v102 = a2[1];
                    }

                    *(*a2 + v102) = v104;
                    v102 = a2[1] + 1;
                    a2[1] = v102;
                    --v103;
                    --v101;
                  }

                  while (v101);
                }

                if (v129 != &v131)
                {
                  free(v129);
                }

LABEL_231:
                if (v133 >= 0x41 && v132)
                {
                  operator delete[](v132);
                }

                if (v135 >= 0x41 && v134)
                {
                  operator delete[](v134);
                }

                if (__dst != v138)
                {
                  free(__dst);
                }

                if (v126 >= 0x41 && __p)
                {
                  operator delete[](__p);
                }

                if (v128 >= 0x41 && v127)
                {
                  operator delete[](v127);
                }

                return;
              }

              if (v30 <= v82)
              {
LABEL_204:
                v90 = 101;
                goto LABEL_205;
              }

              v91 = v30 - v65 + 1;
              if (v89 + v91 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v89 + v91, 1);
                v89 = a2[1];
                if (v30 - v65 == -1)
                {
                  goto LABEL_203;
                }
              }

              else if (v30 - v65 == -1)
              {
LABEL_203:
                v89 += v91;
                a2[1] = v89;
                goto LABEL_204;
              }

              memset((*a2 + v89), 48, v30 - v65 + 1);
              v89 = a2[1];
              goto LABEL_203;
            }
          }

          else
          {
            v48 = 4;
            llvm::APInt::zext(&v129, &__p, 4u);
            if (v126 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            __p = v129;
            v126 = v130;
            v135 = 4;
          }

          v134 = ((0xFFFFFFFFFFFFFFFFLL >> -v48) & 0xA);
          v133 = v48;
          v132 = 0;
          v56 = v126;
          if (v126 < 0x41)
          {
            goto LABEL_132;
          }

          goto LABEL_129;
        }
      }

      else
      {
        __dst = (v48 != 0);
        LODWORD(v130) = v48;
      }

      v53 = ((0xFFFFFFFFFFFFFFFFLL >> -v48) & 0xA);
      if (!v48)
      {
        v53 = 0;
      }

      v129 = v53;
      goto LABEL_99;
    }

    v10 = a2[1];
    if (a2[2] < (v10 + 3))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v10 + 3, 1);
      v10 = a2[1];
    }

    v11 = *a2 + v10;
    *(v11 + 2) = 78;
    *v11 = 24910;
    a2[1] += 3;
  }
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2)
{
  *a1 = a2;
  v3 = operator new[](0x50uLL);
  *v3 = xmmword_1E099CF00;
  v3[3] = &llvm::semIEEEdouble;
  *(v3 + 44) = 3;
  *(v3 + 10) = -1023;
  llvm::APInt::tcSet((v3 + 4), 0, 1u);
  v3[7] = &llvm::semIEEEdouble;
  *(v3 + 76) = *(v3 + 76) & 0xF0 | 3;
  *(v3 + 18) = -1023;
  llvm::APInt::tcSet((v3 + 8), 0, 1u);
  a1[1] = v3 + 2;
  return a1;
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v5 = operator new[](0x50uLL);
  *v5 = xmmword_1E099CF00;
  v5[3] = &llvm::semIEEEdouble;
  *(v5 + 44) = 2;
  v6 = v5 + 4;
  llvm::APInt::tcSet((v5 + 4), 0, 1u);
  *(v5 + 10) = 52;
  if ((*(v5[3] + 8) - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  *v6 = a3;
  llvm::detail::IEEEFloat::normalize((v5 + 3), 1, 0);
  v5[7] = &llvm::semIEEEdouble;
  *(v5 + 76) = *(v5 + 76) & 0xF0 | 3;
  *(v5 + 18) = -1023;
  llvm::APInt::tcSet((v5 + 8), 0, 1u);
  a1[1] = v5 + 2;
  return a1;
}

{
  *a1 = a2;
  v5 = operator new[](0x50uLL);
  *v5 = xmmword_1E099CF00;
  v8 = v5 + 56;
  v9 = v5 + 1;
  if (*(a3 + 8) >= 0x41u)
  {
    v10 = *a3;
  }

  else
  {
    v10 = a3;
  }

  v11 = *v10;
  v20 = 64;
  v19 = v11;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v5 + 24, &v19, v6, v7);
  if (*(a3 + 8) >= 0x41u)
  {
    v14 = *a3;
  }

  else
  {
    v14 = a3;
  }

  v15 = *(v14 + 8);
  v18 = 64;
  v17 = v15;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v8, &v17, v12, v13);
  a1[1] = v9;
  return a1;
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *this, const llvm::detail::DoubleAPFloat *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    v4 = this;
    v5 = operator new[](0x50uLL);
    *v5 = xmmword_1E099CF00;
    v6 = (v5 + 56);
    v7 = v5 + 1;
    llvm::APFloat::Storage::Storage((v5 + 24), (v2 + 8), v8, v9);
    llvm::APFloat::Storage::Storage(v6, (*(a2 + 1) + 40), v10, v11);
    this = v4;
    v4[1] = v7;
  }

  else
  {
    this[1] = 0;
  }

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

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::DoubleAPFloat *a1, llvm::APFloat::Storage *a2, uint64_t a3, unsigned int a4)
{
  v4 = a2;
  if (*a1 != *a2 || (v16 = *(a2 + 1)) == 0)
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
        v9 = operator new[](0x50uLL);
        *v9 = xmmword_1E099CF00;
        v10 = (v9 + 56);
        v11 = v9 + 1;
        llvm::APFloat::Storage::Storage((v9 + 24), (v8 + 8), v12, v13);
        llvm::APFloat::Storage::Storage(v10, (*(v4 + 1) + 40), v14, v15);
      }

      else
      {
        v11 = 0;
      }

      *(v7 + 1) = v11;
    }

    goto LABEL_11;
  }

  v17 = *(a1 + 1);
  v18 = (v17 + 8);
  v19 = *(v17 + 8);
  v20 = (v16 + 8);
  v21 = *(v16 + 8);
  if (v19 != &llvm::semPPCDoubleDouble)
  {
    if (v21 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v18, v20, a3, a4);
      goto LABEL_23;
    }

    if (v17 == v16)
    {
      goto LABEL_23;
    }

    if ((*(v19 + 8) - 64) <= 0xFFFFFF7F)
    {
      v24 = *(v17 + 16);
      if (v24)
      {
        v25 = v18;
        v26 = (v16 + 8);
        operator delete[](v24);
        v20 = v26;
        v18 = v25;
      }
    }

LABEL_21:
    llvm::APFloat::Storage::Storage(v18, v20, a3, a4);
    goto LABEL_23;
  }

  if (v21 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::operator=(v18, v20, a3, a4);
    goto LABEL_23;
  }

  if (v17 != v16)
  {
    v23 = (v16 + 8);
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
    v20 = v23;
    goto LABEL_21;
  }

LABEL_23:
  v27 = *(v4 + 1);
  v28 = *(a1 + 1);
  v29 = (v28 + 40);
  v30 = *(v28 + 40);
  v4 = (v27 + 40);
  v31 = *(v27 + 40);
  v32 = v31 == &llvm::semPPCDoubleDouble;
  v6 = v30 == &llvm::semPPCDoubleDouble;
  if (v30 != &llvm::semPPCDoubleDouble)
  {
    v7 = a1;
    if (v31 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_53;
    }

LABEL_25:
    if (v28 == v27)
    {
      goto LABEL_11;
    }

    if ((v30[2] - 64) <= 0xFFFFFF7F)
    {
      v33 = *(v28 + 48);
      if (v33)
      {
        v34 = v29;
        operator delete[](v33);
        v29 = v34;
      }
    }

LABEL_33:
    llvm::APFloat::Storage::Storage(v29, v4, a3, a4);
    goto LABEL_11;
  }

  if (v31 != &llvm::semPPCDoubleDouble)
  {
    v7 = a1;
LABEL_31:
    if (v28 == v27)
    {
      v6 = v32;
      goto LABEL_11;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
    v6 = v32;
    goto LABEL_33;
  }

  while (1)
  {
    v7 = v29;
    v45 = *(v4 + 1);
    if (!v45)
    {
      v6 = 1;
      if (v29 != v4)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    v35 = *(v29 + 1);
    v36 = (v35 + 8);
    v37 = *(v35 + 8);
    v38 = (v45 + 8);
    v39 = *(v45 + 8);
    if (v37 == &llvm::semPPCDoubleDouble)
    {
      if (v39 != &llvm::semPPCDoubleDouble)
      {
        if (v35 == v45)
        {
          goto LABEL_46;
        }

        v40 = (v45 + 8);
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v36);
        v38 = v40;
        goto LABEL_44;
      }

      llvm::detail::DoubleAPFloat::operator=(v36, v38, a3, a4);
    }

    else
    {
      if (v39 != &llvm::semPPCDoubleDouble)
      {
        llvm::detail::IEEEFloat::operator=(v36, v38, a3, a4);
        goto LABEL_46;
      }

      if (v35 != v45)
      {
        if ((*(v37 + 8) - 64) <= 0xFFFFFF7F)
        {
          v41 = *(v35 + 16);
          if (v41)
          {
            v42 = v36;
            v43 = (v45 + 8);
            operator delete[](v41);
            v38 = v43;
            v36 = v42;
          }
        }

LABEL_44:
        llvm::APFloat::Storage::Storage(v36, v38, a3, a4);
      }
    }

LABEL_46:
    v27 = *(v4 + 1);
    v28 = *(v7 + 1);
    v29 = (v28 + 40);
    v30 = *(v28 + 40);
    v4 = (v27 + 40);
    v44 = *(v27 + 40);
    if (v30 != &llvm::semPPCDoubleDouble)
    {
      break;
    }

    if (v44 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_31;
    }
  }

  if (v44 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_25;
  }

LABEL_53:
  llvm::detail::IEEEFloat::operator=(v29, v4, a3, a4);
LABEL_11:
  if (v6)
  {
    return a1;
  }

  else
  {
    return v7;
  }
}

uint64_t llvm::APFloat::operator=(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
      operator delete[](*(a1 + 16));
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
  v240 = *MEMORY[0x1E69E9840];
  v10 = llvm::APFloat::Storage::Storage(&v238, (a2 + 8), a3, a4);
  if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    v15 = llvm::detail::DoubleAPFloat::addWithSpecial(v10, &v238, a4 + 8, &v238, a6);
    goto LABEL_20;
  }

  v15 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v238, (a4 + 8), 0, v11);
  if (v15 == 2)
  {
    v16 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v238, (a4 + 8), 0, v13, v14);
    v15 = llvm::detail::IEEEFloat::normalize(&v238, a6, v16);
  }

  v17 = v239;
  if ((v239 & 7) != 3)
  {
LABEL_20:
    if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v18 = *(a4 + 28);
  if ((v18 & 7) == 3 && ((v18 ^ v239) & 8) == 0)
  {
    v19 = v238.n128_u64[0];
    if (*(v238.n128_u64[0] + 20) != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

  v17 = v239 & 0xF3 | (8 * (a6 == 3));
  v239 = v17;
  v19 = v238.n128_u64[0];
  if (*(v238.n128_u64[0] + 20) == 2)
  {
LABEL_37:
    v239 = v17 & 0xF7;
    if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_21;
    }

LABEL_9:
    v20 = v239;
    if ((v239 & 6) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_8:
  if (v19 != &llvm::semPPCDoubleDouble)
  {
    goto LABEL_9;
  }

LABEL_21:
  v20 = *(v238.n128_u64[1] + 28);
  if ((v20 & 6) != 0)
  {
LABEL_10:
    llvm::APFloat::Storage::Storage(&v234, (a2 + 8), v12, v13);
    if (v234 == &llvm::semPPCDoubleDouble)
    {
      v39 = llvm::detail::DoubleAPFloat::changeSign(&v234);
      v228 = llvm::detail::DoubleAPFloat::addWithSpecial(v39, &v234, &v238, &v234, a6);
      llvm::detail::DoubleAPFloat::changeSign(&v234);
    }

    else
    {
      v22 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v234, &v238, 1u, v21);
      if (v22 == 2)
      {
        v26 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v234, &v238, 1u, v24, v25);
        v22 = llvm::detail::IEEEFloat::normalize(&v234, a6, v26);
      }

      v27 = v236;
      v228 = v22;
      if ((v236 & 7) == 3)
      {
        if ((v239 & 7) != 3 || ((v239 ^ v236) & 8) == 0)
        {
          v27 = v236 & 0xF3 | (8 * (a6 == 3));
          v236 = v27;
        }

        if (*(v234 + 20) == 2)
        {
          v236 = v27 & 0xF7;
        }
      }
    }

    v40 = llvm::APFloat::Storage::Storage(&v231, &v234, v23, v24);
    if (v231 == &llvm::semPPCDoubleDouble)
    {
      v42 = llvm::detail::DoubleAPFloat::addWithSpecial(v40, &v231, a4 + 8, &v231, a6);
      v45 = v42;
      if (v234 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v42 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v231, (a4 + 8), 0, v41);
      v45 = v42;
      if (v42 == 2)
      {
        v46 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v231, (a4 + 8), 0, v43, v44);
        v42 = llvm::detail::IEEEFloat::normalize(&v231, a6, v46);
        v45 = v42;
      }

      v47 = v233;
      if ((v233 & 7) == 3)
      {
        v48 = *(a4 + 28);
        if ((v48 & 7) != 3 || ((v48 ^ v233) & 8) != 0)
        {
          v47 = v233 & 0xF3 | (8 * (a6 == 3));
          v233 = v47;
        }

        if (v231[5] == 2)
        {
          v233 = v47 & 0xF7;
        }
      }

      if (v234 != &llvm::semPPCDoubleDouble)
      {
LABEL_50:
        v51 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v234, &v238, 0, v43);
        if (v51 == 2)
        {
          v52 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v234, &v238, 0, v49, v50);
          v51 = llvm::detail::IEEEFloat::normalize(&v234, a6, v52);
        }

        v53 = v236;
        if ((v236 & 7) == 3)
        {
          if ((v239 & 7) != 3 || ((v239 ^ v236) & 8) != 0)
          {
            v53 = v236 & 0xF3 | (8 * (a6 == 3));
            v236 = v53;
            v54 = v234;
            if (*(v234 + 20) != 2)
            {
LABEL_56:
              if (v54 != &llvm::semPPCDoubleDouble)
              {
                goto LABEL_57;
              }

LABEL_93:
              v86 = llvm::detail::DoubleAPFloat::changeSign(&v234);
              v58 = llvm::detail::DoubleAPFloat::addWithSpecial(v86, &v234, a2 + 8, &v234, a6);
              v55 = llvm::detail::DoubleAPFloat::changeSign(&v234);
              goto LABEL_94;
            }
          }

          else
          {
            v54 = v234;
            if (*(v234 + 20) != 2)
            {
              goto LABEL_56;
            }
          }

          v236 = v53 & 0xF7;
          if (v234 == &llvm::semPPCDoubleDouble)
          {
            goto LABEL_93;
          }

LABEL_57:
          v55 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v234, (a2 + 8), 1u, v49);
          v58 = v55;
          if (v55 == 2)
          {
            v59 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v234, (a2 + 8), 1u, v56, v57);
            v55 = llvm::detail::IEEEFloat::normalize(&v234, a6, v59);
            v58 = v55;
          }

          v60 = v236;
          if ((v236 & 7) == 3)
          {
            v61 = *(a2 + 28);
            if ((v61 & 7) == 3 && ((v61 ^ v236) & 8) != 0)
            {
              v62 = v234;
              if (*(v234 + 20) != 2)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v60 = v236 & 0xF3 | (8 * (a6 == 3));
              v236 = v60;
              v62 = v234;
              if (*(v234 + 20) != 2)
              {
LABEL_63:
                if (v62 != &llvm::semPPCDoubleDouble)
                {
LABEL_64:
                  if (*(v62 + 20) != 2 || (v236 & 5 | 2) != 3)
                  {
                    v236 ^= 8u;
                  }

                  if (v231 != &llvm::semPPCDoubleDouble)
                  {
LABEL_68:
                    v63 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v231, &v234, 0, v56);
                    v66 = v63;
                    if (v63 == 2)
                    {
                      v67 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v231, &v234, 0, v64, v65);
                      v63 = llvm::detail::IEEEFloat::normalize(&v231, a6, v67);
                      v66 = v63;
                    }

                    v68 = v233;
                    if ((v233 & 7) == 3)
                    {
                      if ((v236 & 7) != 3 || ((v236 ^ v233) & 8) != 0)
                      {
                        v68 = v233 & 0xF3 | (8 * (a6 == 3));
                        v233 = v68;
                        v69 = v231;
                        if (v231[5] != 2)
                        {
LABEL_74:
                          if (v69 != &llvm::semPPCDoubleDouble)
                          {
                            goto LABEL_75;
                          }

LABEL_98:
                          v70 = llvm::detail::DoubleAPFloat::addWithSpecial(v63, &v231, a3 + 8, &v231, a6);
                          v73 = v70;
                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v69 = v231;
                        if (v231[5] != 2)
                        {
                          goto LABEL_74;
                        }
                      }

                      v233 = v68 & 0xF7;
                      if (v231 == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_98;
                      }

LABEL_75:
                      v70 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v231, (a3 + 8), 0, v64);
                      v73 = v70;
                      if (v70 == 2)
                      {
                        v74 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v231, (a3 + 8), 0, v71, v72);
                        v70 = llvm::detail::IEEEFloat::normalize(&v231, a6, v74);
                        v73 = v70;
                      }

                      v75 = v233;
                      if ((v233 & 7) == 3)
                      {
                        v76 = *(a3 + 28);
                        if ((v76 & 7) != 3 || ((v76 ^ v233) & 8) != 0)
                        {
                          v75 = v233 & 0xF3 | (8 * (a6 == 3));
                          v233 = v75;
                          v77 = v231;
                          if (v231[5] != 2)
                          {
LABEL_81:
                            if (v77 != &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_82;
                            }

LABEL_100:
                            v78 = llvm::detail::DoubleAPFloat::addWithSpecial(v70, &v231, (a5 + 8), &v231, a6);
                            goto LABEL_101;
                          }
                        }

                        else
                        {
                          v77 = v231;
                          if (v231[5] != 2)
                          {
                            goto LABEL_81;
                          }
                        }

                        v233 = v75 & 0xF7;
                        if (v231 == &llvm::semPPCDoubleDouble)
                        {
                          goto LABEL_100;
                        }

LABEL_82:
                        v78 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v231, (a5 + 8), 0, v71);
                        if (v78 == 2)
                        {
                          v82 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v231, (a5 + 8), 0, v80, v81);
                          v78 = llvm::detail::IEEEFloat::normalize(&v231, a6, v82);
                        }

                        v83 = v233;
                        if ((v233 & 7) == 3)
                        {
                          v84 = a5[28];
                          if ((v84 & 7) != 3 || ((v84 ^ v233) & 8) != 0)
                          {
                            v83 = v233 & 0xF3 | (8 * (a6 == 3));
                            v233 = v83;
                          }

                          v85 = v231;
                          if (v231[5] != 2)
                          {
LABEL_102:
                            v87 = v228 | v45 | v51 | v58 | v66 | v73 | v78 | v15;
                            if (v85 == &llvm::semPPCDoubleDouble)
                            {
                              v88 = *(__p + 28);
                              v89 = a1;
                              if ((v88 & 7) != 3)
                              {
                                goto LABEL_109;
                              }
                            }

                            else
                            {
                              v88 = v233;
                              v89 = a1;
                              if ((v233 & 7) != 3)
                              {
                                goto LABEL_109;
                              }
                            }

                            if ((v88 & 8) == 0)
                            {
                              llvm::APFloat::Storage::operator=((*(v89 + 8) + 8), &v238);
                              llvm::APFloat::makeZero((*(v89 + 8) + 32), 0, v90, v91);
                              v92 = 0;
                              v15 = 0;
                              v93 = v231;
                              if (v231 == &llvm::semPPCDoubleDouble)
                              {
                                goto LABEL_178;
                              }

                              goto LABEL_159;
                            }

LABEL_109:
                            v94 = *(v89 + 8);
                            v95 = (v94 + 8);
                            v96 = *(v94 + 8);
                            if (v96 == &llvm::semPPCDoubleDouble)
                            {
                              if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
                              {
                                LODWORD(v95) = llvm::detail::DoubleAPFloat::operator=(v95, &v238, v79, v80);
                                v97 = *(v89 + 8);
                                v98 = (v97 + 8);
                                if (*(v97 + 8) == &llvm::semPPCDoubleDouble)
                                {
                                  goto LABEL_146;
                                }

                                goto LABEL_134;
                              }

                              if (v94 != &v237)
                              {
                                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v95);
LABEL_132:
                                LODWORD(v95) = llvm::APFloat::Storage::Storage(v95, &v238, v79, v80);
                              }
                            }

                            else
                            {
                              if (v238.n128_u64[0] != &llvm::semPPCDoubleDouble)
                              {
                                LODWORD(v95) = llvm::detail::IEEEFloat::operator=(v95, &v238, v79, v80);
                                v97 = *(v89 + 8);
                                v98 = (v97 + 8);
                                if (*(v97 + 8) == &llvm::semPPCDoubleDouble)
                                {
LABEL_146:
                                  v87 = llvm::detail::DoubleAPFloat::addWithSpecial(v95, v98, &v231, v98, a6) | v87;
                                  v107 = *(v89 + 8);
                                  if (*(v107 + 8) == &llvm::semPPCDoubleDouble)
                                  {
                                    goto LABEL_147;
                                  }

                                  goto LABEL_143;
                                }

LABEL_134:
                                v101 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v98, &v231, 0, v80);
                                if (v101 == 2)
                                {
                                  v105 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v98, &v231, 0, v103, v104);
                                  v101 = llvm::detail::IEEEFloat::normalize(v98, a6, v105);
                                }

                                v106 = *(v97 + 28);
                                if ((v106 & 7) == 3)
                                {
                                  if ((v233 & 7) != 3 || ((v233 ^ v106) & 8) != 0)
                                  {
                                    LOBYTE(v106) = v106 & 0xF3 | (8 * (a6 == 3));
                                    *(v97 + 28) = v106;
                                  }

                                  if (*(*v98 + 20) == 2)
                                  {
                                    *(v97 + 28) = v106 & 0xF7;
                                  }
                                }

                                v87 = v101 | v87;
                                v107 = *(v89 + 8);
                                if (*(v107 + 8) == &llvm::semPPCDoubleDouble)
                                {
LABEL_147:
                                  v108 = *(*(v107 + 16) + 28) & 7;
                                  if (v108 == 1)
                                  {
                                    goto LABEL_158;
                                  }

LABEL_148:
                                  if (v108)
                                  {
                                    llvm::APFloat::Storage::operator=((v107 + 40), &v238);
                                    v110 = *(v89 + 8);
                                    v111 = (v110 + 40);
                                    if (*(v110 + 5) == &llvm::semPPCDoubleDouble)
                                    {
                                      v119 = llvm::detail::DoubleAPFloat::changeSign(v111);
                                      v15 = llvm::detail::DoubleAPFloat::addWithSpecial(v119, v111, (v110 + 8), v111, a6);
                                      LODWORD(v112) = llvm::detail::DoubleAPFloat::changeSign(v111);
                                    }

                                    else
                                    {
                                      v112 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v111, (v110 + 8), 1u, v109);
                                      v15 = v112;
                                      if (v112 == 2)
                                      {
                                        v115 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v111, (v110 + 8), 1u, v113, v114);
                                        v112 = llvm::detail::IEEEFloat::normalize(v111, a6, v115);
                                        v15 = v112;
                                      }

                                      v116 = v110[60];
                                      if ((v116 & 7) == 3)
                                      {
                                        v117 = v110[28];
                                        if ((v117 & 7) != 3 || ((v117 ^ v116) & 8) == 0)
                                        {
                                          LOBYTE(v116) = v116 & 0xF3 | (8 * (a6 == 3));
                                          v110[60] = v116;
                                        }

                                        if (*(*v111 + 20) == 2)
                                        {
                                          v110[60] = v116 & 0xF7;
                                        }
                                      }
                                    }

                                    v120 = *(v89 + 8);
                                    v121 = (v120 + 40);
                                    if (*(v120 + 40) == &llvm::semPPCDoubleDouble)
                                    {
                                      v122 = llvm::detail::DoubleAPFloat::addWithSpecial(v112, v121, &v231, v121, a6);
                                    }

                                    else
                                    {
                                      v122 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v121, &v231, 0, v113);
                                      if (v122 == 2)
                                      {
                                        v125 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v121, &v231, 0, v123, v124);
                                        v122 = llvm::detail::IEEEFloat::normalize(v121, a6, v125);
                                      }

                                      v126 = *(v120 + 60);
                                      if ((v126 & 7) == 3)
                                      {
                                        if ((v233 & 7) != 3 || ((v233 ^ v126) & 8) != 0)
                                        {
                                          LOBYTE(v126) = v126 & 0xF3 | (8 * (a6 == 3));
                                          *(v120 + 60) = v126;
                                        }

                                        if (*(*v121 + 20) == 2)
                                        {
                                          *(v120 + 60) = v126 & 0xF7;
                                        }
                                      }
                                    }

                                    v87 = v15 | v122 | v87;
                                    v92 = 1;
                                    v93 = v231;
                                    if (v231 == &llvm::semPPCDoubleDouble)
                                    {
LABEL_178:
                                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v231);
                                      v118 = v234;
                                      if (v234 == &llvm::semPPCDoubleDouble)
                                      {
LABEL_179:
                                        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v234);
                                        goto LABEL_180;
                                      }

LABEL_163:
                                      if ((*(v118 + 8) - 64) <= 0xFFFFFF7F && v235)
                                      {
                                        operator delete[](v235);
                                      }

LABEL_180:
                                      if (!v92)
                                      {
                                        goto LABEL_182;
                                      }

                                      goto LABEL_181;
                                    }

LABEL_159:
                                    if ((v93[2] - 64) <= 0xFFFFFF7F && __p)
                                    {
                                      operator delete[](__p);
                                    }

                                    v118 = v234;
                                    if (v234 == &llvm::semPPCDoubleDouble)
                                    {
                                      goto LABEL_179;
                                    }

                                    goto LABEL_163;
                                  }

LABEL_158:
                                  llvm::APFloat::makeZero((v107 + 32), 0, v102, v103);
                                  v92 = 0;
                                  v15 = v87;
                                  v93 = v231;
                                  if (v231 == &llvm::semPPCDoubleDouble)
                                  {
                                    goto LABEL_178;
                                  }

                                  goto LABEL_159;
                                }

LABEL_143:
                                v108 = *(v107 + 28) & 7;
                                if (v108 == 1)
                                {
                                  goto LABEL_158;
                                }

                                goto LABEL_148;
                              }

                              if (v94 != &v237)
                              {
                                if ((*(v96 + 8) - 64) <= 0xFFFFFF7F)
                                {
                                  v99 = *(v94 + 16);
                                  if (v99)
                                  {
                                    v100 = v95;
                                    operator delete[](v99);
                                    v95 = v100;
                                  }
                                }

                                goto LABEL_132;
                              }
                            }

                            v97 = *(v89 + 8);
                            v98 = (v97 + 8);
                            if (*(v97 + 8) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_146;
                            }

                            goto LABEL_134;
                          }

                          v233 = v83 & 0xF7;
                        }

LABEL_101:
                        v85 = v231;
                        goto LABEL_102;
                      }

LABEL_99:
                      if (v231 == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_100;
                      }

                      goto LABEL_82;
                    }

LABEL_97:
                    if (v231 == &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_98;
                    }

                    goto LABEL_75;
                  }

LABEL_96:
                  v63 = llvm::detail::DoubleAPFloat::addWithSpecial(v55, &v231, &v234, &v231, a6);
                  v66 = v63;
                  goto LABEL_97;
                }

LABEL_95:
                v55 = llvm::detail::DoubleAPFloat::changeSign(&v234);
                if (v231 != &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_68;
                }

                goto LABEL_96;
              }
            }

            v236 = v60 & 0xF7;
            v62 = v234;
            if (v234 != &llvm::semPPCDoubleDouble)
            {
              goto LABEL_64;
            }

            goto LABEL_95;
          }

LABEL_94:
          v62 = v234;
          if (v234 != &llvm::semPPCDoubleDouble)
          {
            goto LABEL_64;
          }

          goto LABEL_95;
        }

LABEL_92:
        if (v234 == &llvm::semPPCDoubleDouble)
        {
          goto LABEL_93;
        }

        goto LABEL_57;
      }
    }

    v51 = llvm::detail::DoubleAPFloat::addWithSpecial(v42, &v234, &v238, &v234, a6);
    goto LABEL_92;
  }

LABEL_22:
  if ((v20 & 7) != 0)
  {
    goto LABEL_251;
  }

  v28 = *(a2 + 8);
  if (v28 == &llvm::semPPCDoubleDouble)
  {
    v31 = llvm::detail::DoubleAPFloat::compareAbsoluteValue((a2 + 8), (a4 + 8), v12, v13);
    v35 = v31 == 2;
    v37 = (a5 + 8);
    v36 = *(a5 + 1);
    v38 = v238.n128_u64[0];
    if (v238.n128_u64[0] != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_33;
    }

LABEL_187:
    if (v36 == &llvm::semPPCDoubleDouble)
    {
      v31 = llvm::detail::DoubleAPFloat::operator=(&v238, v37, v12, v13);
      if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
      {
        goto LABEL_222;
      }

      goto LABEL_196;
    }

    if (&v237 == a5)
    {
LABEL_195:
      if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
      {
        goto LABEL_222;
      }

      goto LABEL_196;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v238);
LABEL_194:
    v31 = llvm::APFloat::Storage::Storage(&v238, v37, v12, v13);
    goto LABEL_195;
  }

  v29 = *(a2 + 24);
  v30 = *(a4 + 24);
  v31 = v29 - v30;
  if (v29 == v30)
  {
    v32 = *(v28 + 8);
    if ((v32 - 64) >= 0xFFFFFF80)
    {
      v33 = (a2 + 16);
    }

    else
    {
      v33 = *(a2 + 16);
    }

    if ((*(*(a4 + 8) + 8) - 64) >= 0xFFFFFF80)
    {
      v34 = (a4 + 16);
    }

    else
    {
      v34 = *(a4 + 16);
    }

    v31 = llvm::APInt::tcCompare(v33, v34, ((v32 + 64) >> 6));
  }

  v35 = v31 > 0;
  v37 = (a5 + 8);
  v36 = *(a5 + 1);
  v38 = v238.n128_u64[0];
  if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_187;
  }

LABEL_33:
  if (v36 == &llvm::semPPCDoubleDouble)
  {
    if (&v237 == a5)
    {
      goto LABEL_195;
    }

    if ((*(v38 + 8) - 64) <= 0xFFFFFF7F && v238.n128_u64[1])
    {
      operator delete[](v238.n128_u64[1]);
    }

    goto LABEL_194;
  }

  v31 = llvm::detail::IEEEFloat::operator=(&v238, v37, v12, v13);
  if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
LABEL_222:
    v128 = llvm::detail::DoubleAPFloat::addWithSpecial(v31, &v238, a3 + 8, &v238, a6);
    v131 = v128;
    v135 = a3;
    v136 = v238.n128_u64[0] == &llvm::semPPCDoubleDouble;
    if (!v35)
    {
      goto LABEL_223;
    }

    goto LABEL_205;
  }

LABEL_196:
  v128 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v238, (a3 + 8), 0, v13);
  v131 = v128;
  if (v128 == 2)
  {
    v132 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v238, (a3 + 8), 0, v129, v130);
    v128 = llvm::detail::IEEEFloat::normalize(&v238, a6, v132);
    v131 = v128;
  }

  v133 = v239;
  if ((v239 & 7) == 3)
  {
    v134 = *(a3 + 28);
    if ((v134 & 7) != 3 || ((v134 ^ v239) & 8) != 0)
    {
      v133 = v239 & 0xF3 | (8 * (a6 == 3));
      v239 = v133;
    }

    if (*(v238.n128_u64[0] + 20) == 2)
    {
      v239 = v133 & 0xF7;
    }
  }

  v135 = a3;
  v136 = v238.n128_u64[0] == &llvm::semPPCDoubleDouble;
  if (!v35)
  {
LABEL_223:
    if (v136)
    {
      v137 = llvm::detail::DoubleAPFloat::addWithSpecial(v128, &v238, a2 + 8, &v238, a6);
      v140 = v137;
    }

    else
    {
      v137 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v238, (a2 + 8), 0, v129);
      v140 = v137;
      if (v137 == 2)
      {
        v155 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v238, (a2 + 8), 0, v153, v154);
        v137 = llvm::detail::IEEEFloat::normalize(&v238, a6, v155);
        v140 = v137;
      }

      v156 = v239;
      if ((v239 & 7) == 3)
      {
        v157 = *(a2 + 28);
        if ((v157 & 7) != 3 || ((v157 ^ v239) & 8) != 0)
        {
          v156 = v239 & 0xF3 | (8 * (a6 == 3));
          v239 = v156;
          v158 = v238.n128_u64[0];
          if (*(v238.n128_u64[0] + 20) != 2)
          {
LABEL_230:
            if (v158 != &llvm::semPPCDoubleDouble)
            {
              goto LABEL_231;
            }

            goto LABEL_241;
          }
        }

        else
        {
          v158 = v238.n128_u64[0];
          if (*(v238.n128_u64[0] + 20) != 2)
          {
            goto LABEL_230;
          }
        }

        v239 = v156 & 0xF7;
        if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
        {
LABEL_241:
          v152 = a4 + 8;
          goto LABEL_242;
        }

LABEL_231:
        v145 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v238, (a4 + 8), 0, v153);
        if (v145 == 2)
        {
          v160 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v238, (a4 + 8), 0, v147, v159);
          v145 = llvm::detail::IEEEFloat::normalize(&v238, a6, v160);
        }

        v150 = v239;
        if ((v239 & 7) == 3)
        {
          v151 = *(a4 + 28);
          if ((v151 & 7) == 3)
          {
LABEL_235:
            if (((v151 ^ v150) & 8) == 0)
            {
              goto LABEL_237;
            }
          }

LABEL_236:
          LOBYTE(v150) = v150 & 0xF3 | (8 * (a6 == 3));
          v239 = v150;
LABEL_237:
          if (*(v238.n128_u64[0] + 20) == 2)
          {
            v239 = v150 & 0xF7;
          }

          goto LABEL_243;
        }

        goto LABEL_243;
      }
    }

    if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_241;
    }

    goto LABEL_231;
  }

LABEL_205:
  if (v136)
  {
    v137 = llvm::detail::DoubleAPFloat::addWithSpecial(v128, &v238, a4 + 8, &v238, a6);
    v140 = v137;
    goto LABEL_219;
  }

  v137 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v238, (a4 + 8), 0, v129);
  v140 = v137;
  if (v137 == 2)
  {
    v141 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v238, (a4 + 8), 0, v138, v139);
    v137 = llvm::detail::IEEEFloat::normalize(&v238, a6, v141);
    v140 = v137;
  }

  v142 = v239;
  if ((v239 & 7) != 3)
  {
LABEL_219:
    if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_220;
    }

    goto LABEL_213;
  }

  v143 = *(a4 + 28);
  if ((v143 & 7) != 3 || ((v143 ^ v239) & 8) != 0)
  {
    v142 = v239 & 0xF3 | (8 * (a6 == 3));
    v239 = v142;
    v144 = v238.n128_u64[0];
    if (*(v238.n128_u64[0] + 20) != 2)
    {
LABEL_212:
      if (v144 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_213;
      }

LABEL_220:
      v152 = a2 + 8;
LABEL_242:
      v145 = llvm::detail::DoubleAPFloat::addWithSpecial(v137, &v238, v152, &v238, a6);
      goto LABEL_243;
    }
  }

  else
  {
    v144 = v238.n128_u64[0];
    if (*(v238.n128_u64[0] + 20) != 2)
    {
      goto LABEL_212;
    }
  }

  v239 = v142 & 0xF7;
  if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_220;
  }

LABEL_213:
  v145 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v238, (a2 + 8), 0, v138);
  if (v145 == 2)
  {
    v149 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v238, (a2 + 8), 0, v147, v148);
    v145 = llvm::detail::IEEEFloat::normalize(&v238, a6, v149);
  }

  v150 = v239;
  if ((v239 & 7) == 3)
  {
    v151 = *(a2 + 28);
    if ((v151 & 7) == 3)
    {
      goto LABEL_235;
    }

    goto LABEL_236;
  }

LABEL_243:
  v15 = v145 | v140 | v131;
  if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    v161 = *(v238.n128_u64[1] + 28) & 7;
    if (v161 == 1)
    {
      goto LABEL_251;
    }
  }

  else
  {
    v161 = v239 & 7;
    if (v161 == 1)
    {
LABEL_251:
      llvm::APFloat::Storage::operator=((*(a1 + 8) + 8), &v238);
      llvm::APFloat::makeZero((*(a1 + 8) + 32), 0, v165, v166);
      v127 = v238.n128_u64[0];
      if (v238.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_183;
      }

LABEL_252:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v238);
      return v15;
    }
  }

  if (!v161)
  {
    goto LABEL_251;
  }

  v162 = *(a1 + 8);
  v163 = (v162 + 8);
  v164 = *(v162 + 8);
  if (v164 == &llvm::semPPCDoubleDouble)
  {
    if (v238.n128_u64[0] != &llvm::semPPCDoubleDouble)
    {
      if (v162 == &v237)
      {
        goto LABEL_269;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v163);
      goto LABEL_267;
    }

    llvm::detail::DoubleAPFloat::operator=(v163, &v238, v146, v147);
  }

  else
  {
    if (v238.n128_u64[0] != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v163, &v238, v146, v147);
      goto LABEL_269;
    }

    if (v162 != &v237)
    {
      if ((*(v164 + 8) - 64) <= 0xFFFFFF7F && *(v162 + 16))
      {
        v168 = (v162 + 8);
        operator delete[](*(v162 + 16));
        v163 = v168;
      }

LABEL_267:
      llvm::APFloat::Storage::Storage(v163, &v238, v146, v147);
    }
  }

LABEL_269:
  v169 = llvm::APFloat::Storage::Storage(&v234, (v135 + 8), v146, v147);
  if (v234 == &llvm::semPPCDoubleDouble)
  {
    v174 = llvm::detail::DoubleAPFloat::addWithSpecial(v169, &v234, v37, &v234, a6);
  }

  else
  {
    v174 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v234, v37, 0, v170);
    if (v174 == 2)
    {
      v175 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v234, v37, 0, v172, v173);
      v174 = llvm::detail::IEEEFloat::normalize(&v234, a6, v175);
    }

    v176 = v236;
    if ((v236 & 7) == 3)
    {
      v177 = a5[28];
      if ((v177 & 7) != 3 || ((v177 ^ v236) & 8) != 0)
      {
        v176 = v236 & 0xF3 | (8 * (a6 == 3));
        v236 = v176;
      }

      if (*(v234 + 20) == 2)
      {
        v236 = v176 & 0xF7;
      }
    }
  }

  v178 = *(a1 + 8);
  v179 = v178 + 32;
  v180 = (v178 + 40);
  v181 = *(v178 + 40);
  if (!v35)
  {
    v183 = *(a4 + 8);
    if (v181 == &llvm::semPPCDoubleDouble)
    {
      if (v183 == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::operator=(v180, (a4 + 8), v171, v172);
        goto LABEL_326;
      }

      if (v179 == a4)
      {
LABEL_326:
        v208 = *(a1 + 8);
        v209 = (v208 + 40);
        if (*(v208 + 40) == &llvm::semPPCDoubleDouble)
        {
          v216 = llvm::detail::DoubleAPFloat::changeSign(v209);
          v213 = llvm::detail::DoubleAPFloat::addWithSpecial(v216, v209, &v238, v209, a6);
          v210 = llvm::detail::DoubleAPFloat::changeSign(v209);
        }

        else
        {
          v210 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v209, &v238, 1u, v172);
          v213 = v210;
          if (v210 == 2)
          {
            v214 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v209, &v238, 1u, v211, v212);
            v210 = llvm::detail::IEEEFloat::normalize(v209, a6, v214);
            v213 = v210;
          }

          v215 = *(v208 + 60);
          if ((v215 & 7) == 3)
          {
            if ((v239 & 7) != 3 || ((v239 ^ v215) & 8) == 0)
            {
              LOBYTE(v215) = v215 & 0xF3 | (8 * (a6 == 3));
              *(v208 + 60) = v215;
            }

            if (*(*v209 + 20) == 2)
            {
              *(v208 + 60) = v215 & 0xF7;
            }
          }
        }

        v217 = *(a1 + 8);
        v218 = (v217 + 40);
        if (*(v217 + 40) == &llvm::semPPCDoubleDouble)
        {
          v199 = llvm::detail::DoubleAPFloat::addWithSpecial(v210, v218, a2 + 8, v218, a6);
        }

        else
        {
          v199 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v218, (a2 + 8), 0, v211);
          if (v199 == 2)
          {
            v220 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v218, (a2 + 8), 0, v200, v219);
            v199 = llvm::detail::IEEEFloat::normalize(v218, a6, v220);
          }

          v221 = *(v217 + 60);
          if ((v221 & 7) == 3)
          {
            v222 = *(a2 + 28);
            if ((v222 & 7) != 3 || ((v222 ^ v221) & 8) != 0)
            {
              LOBYTE(v221) = v221 & 0xF3 | (8 * (a6 == 3));
              *(v217 + 60) = v221;
            }

            if (*(*v218 + 20) == 2)
            {
              *(v217 + 60) = v221 & 0xF7;
            }
          }
        }

        v206 = v199 | v213;
        v207 = *(a1 + 8);
        goto LABEL_347;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v180);
    }

    else
    {
      if (v183 != &llvm::semPPCDoubleDouble)
      {
        llvm::detail::IEEEFloat::operator=(v180, (a4 + 8), v171, v172);
        goto LABEL_326;
      }

      if (v179 == a4)
      {
        goto LABEL_326;
      }

      if ((*(v181 + 8) - 64) <= 0xFFFFFF7F)
      {
        v186 = *(v178 + 48);
        if (v186)
        {
          v187 = v180;
          operator delete[](v186);
          v180 = v187;
        }
      }
    }

    llvm::APFloat::Storage::Storage(v180, (a4 + 8), v171, v172);
    goto LABEL_326;
  }

  v182 = *(a2 + 8);
  if (v181 == &llvm::semPPCDoubleDouble)
  {
    if (v182 != &llvm::semPPCDoubleDouble)
    {
      if (v179 == a2)
      {
        goto LABEL_303;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v180);
      goto LABEL_296;
    }

    llvm::detail::DoubleAPFloat::operator=(v180, (a2 + 8), v171, v172);
  }

  else
  {
    if (v182 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v180, (a2 + 8), v171, v172);
      goto LABEL_303;
    }

    if (v179 != a2)
    {
      if ((*(v181 + 8) - 64) <= 0xFFFFFF7F)
      {
        v184 = *(v178 + 48);
        if (v184)
        {
          v185 = v180;
          operator delete[](v184);
          v180 = v185;
        }
      }

LABEL_296:
      llvm::APFloat::Storage::Storage(v180, (a2 + 8), v171, v172);
    }
  }

LABEL_303:
  v188 = *(a1 + 8);
  v189 = (v188 + 40);
  if (*(v188 + 40) == &llvm::semPPCDoubleDouble)
  {
    v196 = llvm::detail::DoubleAPFloat::changeSign(v189);
    v193 = llvm::detail::DoubleAPFloat::addWithSpecial(v196, v189, &v238, v189, a6);
    v190 = llvm::detail::DoubleAPFloat::changeSign(v189);
  }

  else
  {
    v190 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v189, &v238, 1u, v172);
    v193 = v190;
    if (v190 == 2)
    {
      v194 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v189, &v238, 1u, v191, v192);
      v190 = llvm::detail::IEEEFloat::normalize(v189, a6, v194);
      v193 = v190;
    }

    v195 = *(v188 + 60);
    if ((v195 & 7) == 3)
    {
      if ((v239 & 7) != 3 || ((v239 ^ v195) & 8) == 0)
      {
        LOBYTE(v195) = v195 & 0xF3 | (8 * (a6 == 3));
        *(v188 + 60) = v195;
      }

      if (*(*v189 + 20) == 2)
      {
        *(v188 + 60) = v195 & 0xF7;
      }
    }
  }

  v197 = *(a1 + 8);
  v198 = (v197 + 40);
  if (*(v197 + 40) == &llvm::semPPCDoubleDouble)
  {
    v199 = llvm::detail::DoubleAPFloat::addWithSpecial(v190, v198, a4 + 8, v198, a6);
  }

  else
  {
    v199 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v198, (a4 + 8), 0, v191);
    if (v199 == 2)
    {
      v202 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v198, (a4 + 8), 0, v200, v201);
      v199 = llvm::detail::IEEEFloat::normalize(v198, a6, v202);
    }

    v203 = *(v197 + 60);
    if ((v203 & 7) == 3)
    {
      v204 = *(a4 + 28);
      if ((v204 & 7) != 3 || ((v204 ^ v203) & 8) != 0)
      {
        LOBYTE(v203) = v203 & 0xF3 | (8 * (a6 == 3));
        *(v197 + 60) = v203;
      }

      v205 = a1;
      if (*(*v198 + 20) == 2)
      {
        *(v197 + 60) = v203 & 0xF7;
      }

      goto LABEL_324;
    }
  }

  v205 = a1;
LABEL_324:
  v206 = v199 | v193;
  v207 = *(v205 + 8);
LABEL_347:
  if (*(v207 + 40) == &llvm::semPPCDoubleDouble)
  {
    v223 = llvm::detail::DoubleAPFloat::addWithSpecial(v199, (v207 + 40), &v234, (v207 + 40), a6);
  }

  else
  {
    v223 = llvm::detail::IEEEFloat::addOrSubtractSpecials((v207 + 40), &v234, 0, v200);
    if (v223 == 2)
    {
      v226 = llvm::detail::IEEEFloat::addOrSubtractSignificand((v207 + 40), &v234, 0, v224, v225);
      v223 = llvm::detail::IEEEFloat::normalize(v207 + 40, a6, v226);
    }

    v227 = *(v207 + 60);
    if ((v227 & 7) == 3)
    {
      if ((v236 & 7) != 3 || ((v236 ^ v227) & 8) != 0)
      {
        LOBYTE(v227) = v227 & 0xF3 | (8 * (a6 == 3));
        *(v207 + 60) = v227;
      }

      if (*(*(v207 + 40) + 20) == 2)
      {
        *(v207 + 60) = v227 & 0xF7;
      }
    }
  }

  v87 = v174 | v15 | v206 | v223;
  if (v234 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v234);
  }

  else if ((*(v234 + 8) - 64) <= 0xFFFFFF7F && v235)
  {
    operator delete[](v235);
  }

LABEL_181:
  v15 = v87;
LABEL_182:
  v127 = v238.n128_u64[0];
  if (v238.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_252;
  }

LABEL_183:
  if ((*(v127 + 8) - 64) <= 0xFFFFFF7F && v238.n128_u64[1])
  {
    operator delete[](v238.n128_u64[1]);
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

      if (*(*v6 + 20) == 2)
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

uint64_t llvm::detail::DoubleAPFloat::addWithSpecial(int a1, llvm::APFloat::Storage *a2, llvm::APFloat::Storage *a3, llvm::detail::DoubleAPFloat *this, uint64_t a5)
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

  else if ((*(v29 + 8) - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

  if (v32 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v32);
  }

  else if ((*(v32 + 8) - 64) <= 0xFFFFFF7F && v33)
  {
    operator delete[](v33);
  }

  if (v35 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v35);
  }

  else if ((*(v35 + 8) - 64) <= 0xFFFFFF7F && v36)
  {
    operator delete[](v36);
  }

  if (v38 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v38);
  }

  else if ((*(v38 + 8) - 64) <= 0xFFFFFF7F && v39)
  {
    operator delete[](v39);
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

uint64_t llvm::detail::DoubleAPFloat::subtract(llvm::detail::DoubleAPFloat *a1, llvm::APFloat::Storage *a2, uint64_t a3)
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

uint64_t llvm::detail::DoubleAPFloat::multiply(llvm::detail::DoubleAPFloat *a1, llvm::APFloat::Storage *a2, uint64_t a3, unsigned int a4)
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
    return llvm::detail::DoubleAPFloat::fusedMultiplyAdd(v6, v8, v9, a4);
  }

  else
  {
    return llvm::detail::IEEEFloat::fusedMultiplyAdd(v6, v8, v9, a4, a5, a6);
  }
}

uint64_t llvm::detail::DoubleAPFloat::divide(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v40, &__p, v7, v8);
  if (v37 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v34, a2, v9);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v37, &v34, v10, v11);
  if (v40 == &llvm::semPPCDoubleDouble)
  {
    v16 = llvm::detail::DoubleAPFloat::divide(&v40, &v37, a3);
  }

  else
  {
    v42 ^= v39 & 8;
    v16 = llvm::detail::IEEEFloat::divideSpecials(&v40, &v37, v12, v13);
    if ((v42 & 7) == 3)
    {
      if (*(v40 + 20) == 2)
      {
        v42 &= 0xF3u;
      }
    }

    else if ((v42 & 6) != 0)
    {
      v17 = llvm::detail::IEEEFloat::divideSignificand(&v40, &v37, v14);
      v18 = llvm::detail::IEEEFloat::normalize(&v40, a3, v17);
      if (v17)
      {
        v16 = v18 | 0x10;
      }

      else
      {
        v16 = v18;
      }
    }
  }

  if (v37 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v37);
  }

  else if ((*(v37 + 8) - 64) <= 0xFFFFFF7F && v38)
  {
    operator delete[](v38);
  }

  if (v35 >= 0x41 && v34)
  {
    operator delete[](v34);
  }

  if (v40 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v31, &v40, v15);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v31, &v40);
  }

  *&v33 = &llvm::semPPCDoubleDouble;
  v19 = operator new[](0x50uLL);
  *v19 = xmmword_1E099CF00;
  v22 = v19 + 56;
  v23 = v19 + 1;
  if (v32 >= 0x41)
  {
    v24 = v31;
  }

  else
  {
    v24 = &v31;
  }

  v25 = *v24;
  LODWORD(v37) = 64;
  __p = v25;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v19 + 24, &__p, v20, v21);
  if (v32 >= 0x41)
  {
    v28 = v31;
  }

  else
  {
    v28 = &v31;
  }

  v29 = v28[1];
  v35 = 64;
  v34 = v29;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v22, &v34, v26, v27);
  *(&v33 + 1) = v23;
  if (&v33 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = v33;
    *&v33 = &llvm::semBogus;
    *(&v33 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v33);
  if (v32 >= 0x41 && v31)
  {
    operator delete[](v31);
  }

  if (v40 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v40);
  }

  else if ((*(v40 + 8) - 64) <= 0xFFFFFF7F && v41)
  {
    operator delete[](v41);
  }

  return v16;
}

llvm::APInt *llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(llvm::APInt *__return_ptr a1@<X8>, llvm::detail::DoubleAPFloat *this@<X0>, unsigned int a3@<W3>)
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
    llvm::detail::IEEEFloat::bitcastToAPInt(&__p, v11);
    if (v15 <= 0x40)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19 = *__p;
    operator delete[](__p);
    if (v17 < 0x41)
    {
      return llvm::APInt::APInt(a1, 0x80u, 2u, &v18);
    }

    goto LABEL_12;
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, v11, v8);
  if (v15 > 0x40)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = __p;
  if (v17 < 0x41)
  {
    return llvm::APInt::APInt(a1, 0x80u, 2u, &v18);
  }

LABEL_12:
  if (v16)
  {
    operator delete[](v16);
  }

  return llvm::APInt::APInt(a1, 0x80u, 2u, &v18);
}

uint64_t llvm::detail::DoubleAPFloat::mod(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2, uint64_t a3, unsigned int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, this, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v36, &__p, v6, v7);
  if (v34 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v31, a2, v8);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v34, &v31, v9, v10);
  if (v36 == &llvm::semPPCDoubleDouble)
  {
    v14 = llvm::detail::DoubleAPFloat::mod(&v36, &v34, v11, v12);
    v15 = v34;
    if (v34 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v34);
    goto LABEL_11;
  }

  v14 = llvm::detail::IEEEFloat::mod(&v36, &v34, v11, v12);
  v15 = v34;
  if (v34 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v15[2] - 64) <= 0xFFFFFF7F && v35)
  {
    operator delete[](v35);
  }

LABEL_11:
  if (v32 >= 0x41 && v31)
  {
    operator delete[](v31);
  }

  if (v36 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v28, &v36, v13);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v28, &v36);
  }

  *&v30 = &llvm::semPPCDoubleDouble;
  v16 = operator new[](0x50uLL);
  *v16 = xmmword_1E099CF00;
  v19 = v16 + 56;
  v20 = v16 + 1;
  if (v29 >= 0x41)
  {
    v21 = v28;
  }

  else
  {
    v21 = &v28;
  }

  v22 = *v21;
  LODWORD(v34) = 64;
  __p = v22;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v16 + 24, &__p, v17, v18);
  if (v29 >= 0x41)
  {
    v25 = v28;
  }

  else
  {
    v25 = &v28;
  }

  v26 = v25[1];
  v32 = 64;
  v31 = v26;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v19, &v31, v23, v24);
  *(&v30 + 1) = v20;
  if (&v30 != this)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(this);
    *this = v30;
    *&v30 = &llvm::semBogus;
    *(&v30 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v30);
  if (v29 >= 0x41 && v28)
  {
    operator delete[](v28);
  }

  if (v36 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v36);
  }

  else if ((*(v36 + 8) - 64) <= 0xFFFFFF7F && v37)
  {
    operator delete[](v37);
  }

  return v14;
}

uint64_t llvm::detail::DoubleAPFloat::fusedMultiplyAdd(void **a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, a1, a4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v42, &__p, v8, v9);
  if (v40 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(v35, a2, v10);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v40, v35, v11, v12);
  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v33, a3, v13);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v37, &v33, v14, v15);
  if (v42 == &llvm::semPPCDoubleDouble)
  {
    v19 = llvm::detail::DoubleAPFloat::fusedMultiplyAdd(&v42, &v40, &v37, a4);
    v20 = v37;
    if (v37 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v37);
    goto LABEL_11;
  }

  v19 = llvm::detail::IEEEFloat::fusedMultiplyAdd(&v42, &v40, &v37, a4, v16, v17);
  v20 = v37;
  if (v37 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v20[2] - 64) <= 0xFFFFFF7F && v38)
  {
    operator delete[](v38);
  }

LABEL_11:
  if (v34 >= 0x41 && v33)
  {
    operator delete[](v33);
  }

  if (v40 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v40);
  }

  else if ((*(v40 + 8) - 64) <= 0xFFFFFF7F && v41)
  {
    operator delete[](v41);
  }

  if (LODWORD(v35[1]) >= 0x41 && v35[0])
  {
    operator delete[](v35[0]);
  }

  if (v42 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v33, &v42, v18);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v33, &v42);
  }

  v35[0] = &llvm::semPPCDoubleDouble;
  v21 = operator new[](0x50uLL);
  *v21 = xmmword_1E099CF00;
  v24 = v21 + 56;
  v25 = v21 + 1;
  if (v34 >= 0x41)
  {
    v26 = v33;
  }

  else
  {
    v26 = &v33;
  }

  v27 = *v26;
  LODWORD(v40) = 64;
  __p = v27;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v21 + 24, &__p, v22, v23);
  if (v34 >= 0x41)
  {
    v30 = v33;
  }

  else
  {
    v30 = &v33;
  }

  v31 = *(v30 + 1);
  LODWORD(v37) = 64;
  v36 = v31;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v24, &v36, v28, v29);
  v35[1] = v25;
  if (v35 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = *v35;
    v35[0] = &llvm::semBogus;
    v35[1] = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  if (v34 >= 0x41 && v33)
  {
    operator delete[](v33);
  }

  if (v42 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v42);
  }

  else if ((*(v42 + 8) - 64) <= 0xFFFFFF7F && v43)
  {
    operator delete[](v43);
  }

  return v19;
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
    operator delete[](v10.n128_u64[1]);
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
    operator delete[](v10.n128_u64[1]);
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

void llvm::detail::DoubleAPFloat::convertFromString(llvm::detail::DoubleAPFloat *a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = &llvm::semPPCDoubleDoubleLegacy;
  v30 = operator new[](0x10uLL);
  v32 = 3;
  v31 = -970;
  llvm::APInt::tcSet(v30, 0, 2u);
  llvm::detail::IEEEFloat::convertFromString(&v29, a2, a3, a4, a5);
  if (v29 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, &v29, v10);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&__p, &v29);
  }

  *&v24 = &llvm::semPPCDoubleDouble;
  v11 = operator new[](0x50uLL);
  *v11 = xmmword_1E099CF00;
  v14 = v11 + 56;
  v15 = v11 + 1;
  if (v23 >= 0x41)
  {
    p_p = __p;
  }

  else
  {
    p_p = &__p;
  }

  v17 = *p_p;
  v28 = 64;
  v27 = v17;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v11 + 24, &v27, v12, v13);
  if (v23 >= 0x41)
  {
    v20 = __p;
  }

  else
  {
    v20 = &__p;
  }

  v21 = *(v20 + 1);
  v26 = 64;
  v25 = v21;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v14, &v25, v18, v19);
  *(&v24 + 1) = v15;
  if (&v24 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = v24;
    *&v24 = &llvm::semBogus;
    *(&v24 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v24);
  if (v23 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v29 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v29);
  }

  else if ((v29[2] - 64) <= 0xFFFFFF7F)
  {
    if (v30)
    {
      operator delete[](v30);
    }
  }
}

void llvm::APFloat::convertFromString(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString(v5, a2, a3, a4, a5);
  }

  else
  {
    llvm::detail::IEEEFloat::convertFromString(v5, a2, a3, a4, a5);
  }
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
  if ((v16[2] - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

LABEL_8:
  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  return v15;
}

uint64_t llvm::detail::DoubleAPFloat::convertFromAPInt(llvm::detail::DoubleAPFloat *a1, const void **a2, int a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = &llvm::semPPCDoubleDoubleLegacy;
  v30 = operator new[](0x10uLL);
  v32 = 3;
  v31 = -970;
  llvm::APInt::tcSet(v30, 0, 2u);
  v9 = llvm::detail::IEEEFloat::convertFromAPInt(&v29, a2, a3, a4);
  if (v29 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&__p, &v29, v8);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&__p, &v29);
  }

  *&v24 = &llvm::semPPCDoubleDouble;
  v10 = operator new[](0x50uLL);
  *v10 = xmmword_1E099CF00;
  v13 = v10 + 56;
  v14 = v10 + 1;
  if (v23 >= 0x41)
  {
    p_p = __p;
  }

  else
  {
    p_p = &__p;
  }

  v16 = *p_p;
  v28 = 64;
  v27 = v16;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v10 + 24, &v27, v11, v12);
  if (v23 >= 0x41)
  {
    v19 = __p;
  }

  else
  {
    v19 = &__p;
  }

  v20 = *(v19 + 1);
  v26 = 64;
  v25 = v20;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v13, &v25, v17, v18);
  *(&v24 + 1) = v14;
  if (&v24 != a1)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    *a1 = v24;
    *&v24 = &llvm::semBogus;
    *(&v24 + 1) = 0;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v24);
  if (v23 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v29 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v29);
  }

  else if ((v29[2] - 64) <= 0xFFFFFF7F && v30)
  {
    operator delete[](v30);
  }

  return v9;
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
  if ((v11[2] - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

LABEL_8:
  if (v13 >= 0x41)
  {
    if (v12)
    {
      operator delete[](v12);
    }
  }
}

uint64_t llvm::APFloat::Storage::Storage(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 == &llvm::semPPCDoubleDouble)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = *(a2 + 4);
    v9 = *(a2 + 20);
    *a2 = &llvm::semBogus;
    v16 = v6;
    __p = v7;
    LODWORD(v18) = v8;
    BYTE4(v18) = v9 & 0xF;
    llvm::APFloat::Storage::Storage(&v21, &v16, v6);
    if ((v16[2] - 64) <= 0xFFFFFF7F && __p)
    {
      operator delete[](__p);
    }

    __p = &llvm::semIEEEdouble;
    v20 = 3;
    v19 = -1023;
    llvm::APInt::tcSet(&v18, 0, 1u);
    *a1 = &llvm::semPPCDoubleDouble;
    v10 = operator new[](0x50uLL);
    *v10 = xmmword_1E099CF00;
    v11 = v21;
    if (v21 == &llvm::semPPCDoubleDouble)
    {
      v15 = v22;
      v10[3] = v21;
      v10[4] = v15;
      v13 = __p;
      if (__p != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = v22;
      *(v10 + 10) = v23;
      *(v10 + 44) = v24 & 0xF;
      v10[3] = v11;
      v10[4] = v12;
      v13 = __p;
      if (__p != &llvm::semPPCDoubleDouble)
      {
LABEL_9:
        v14 = v18;
        *(v10 + 18) = v19;
        *(v10 + 76) = v20 & 0xF;
LABEL_12:
        v10[7] = v13;
        v10[8] = v14;
        *(a1 + 8) = v10 + 2;
        return a1;
      }
    }

    v14 = v18;
    goto LABEL_12;
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
    llvm::detail::DoubleAPFloat::convertFromString(v8, a3, a4, 1, &v15);
    v10 = v16;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::convertFromString(v8, a3, a4, 1, &v15);
    v10 = v16;
    if (v16)
    {
LABEL_3:
      v11 = v15;
      v15 = 0;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
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

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4 == a2)
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  if (v4 == &llvm::semPPCDoubleDouble)
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
    v34 = v11;
    __p = v15;
    v36 = v16;
    v37 = v17;
    llvm::APFloat::Storage::Storage(&v38, &v34, a2);
    if ((*(v34 + 2) - 64) <= 0xFFFFFF7F && __p)
    {
      operator delete[](__p);
    }

    llvm::APFloat::Storage::operator=(v5, &v38);
    if (v38.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v38);
      return v10;
    }

    if ((*(v38.n128_u64[0] + 8) - 64) > 0xFFFFFF7F)
    {
      return v10;
    }

    v18 = v38.n128_u64[1];
    if (!v38.n128_u64[1])
    {
      return v10;
    }

LABEL_31:
    operator delete[](v18);
    return v10;
  }

  if (a2 == &llvm::semPPCDoubleDouble)
  {
    v10 = llvm::detail::IEEEFloat::convert((a1 + 8), &llvm::semPPCDoubleDoubleLegacy, a3, a4);
    llvm::detail::IEEEFloat::bitcastToAPInt(&v30, v5);
    v38.n128_u64[0] = &llvm::semPPCDoubleDouble;
    v19 = operator new[](0x50uLL);
    *v19 = xmmword_1E099CF00;
    v22 = v19 + 56;
    v23 = (v19 + 1);
    if (v31 >= 0x41)
    {
      v24 = v30;
    }

    else
    {
      v24 = &v30;
    }

    v25 = *v24;
    LODWORD(__p) = 64;
    v34 = v25;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(v19 + 24, &v34, v20, v21);
    if (v31 >= 0x41)
    {
      v28 = v30;
    }

    else
    {
      v28 = &v30;
    }

    v29 = *(v28 + 1);
    v33 = 64;
    v32 = v29;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(v22, &v32, v26, v27);
    v38.n128_u64[1] = v23;
    llvm::APFloat::Storage::operator=(v5, &v38);
    if (v38.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v38);
    }

    else if ((*(v38.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v38.n128_u64[1])
    {
      operator delete[](v38.n128_u64[1]);
    }

    if (v31 < 0x41)
    {
      return v10;
    }

    v18 = v30;
    if (!v30)
    {
      return v10;
    }

    goto LABEL_31;
  }

  v6 = (a1 + 8);

  return llvm::detail::IEEEFloat::convert(v6, a2, a3, a4);
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
  llvm::APInt::APInt(&v21, v7, v23, v24);
  if (*(a2 + 8) >= 0x41u && *a2)
  {
    operator delete[](*a2);
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
  v15 = *MEMORY[0x1E69E9840];
  if (this[1] == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v12, (this + 1));
    if (v13 <= 0x40)
    {
      v5 = v12;
      return *&v5;
    }

    v7 = v12;
    v5 = *v12;
LABEL_16:
    operator delete[](v7);
    return *&v5;
  }

  llvm::APFloat::Storage::Storage(&v13, (this + 1), a3, a4);
  llvm::APFloat::convert(&v12, &llvm::semIEEEdouble, 1, &v9);
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    v4 = (v14 + 8);
  }

  else
  {
    v4 = &v13;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(&__p, v4);
  if (v11 > 0x40)
  {
    v5 = *__p;
    operator delete[](__p);
    v6 = v13;
    if (v13 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_7;
    }

LABEL_13:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v13);
    return *&v5;
  }

  v5 = __p;
  v6 = v13;
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v6[2] - 64) <= 0xFFFFFF7F)
  {
    v7 = v14;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  return *&v5;
}

float llvm::APFloat::convertToFloat(void **this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (this[1] == &llvm::semIEEEsingle)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v12, (this + 1));
    if (v13 <= 0x40)
    {
      LODWORD(v5) = v12;
      return *&v5;
    }

    v7 = v12;
    v5 = *v12;
LABEL_16:
    operator delete[](v7);
    return *&v5;
  }

  llvm::APFloat::Storage::Storage(&v13, (this + 1), a3, a4);
  llvm::APFloat::convert(&v12, &llvm::semIEEEsingle, 1, &v9);
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    v4 = (v14 + 8);
  }

  else
  {
    v4 = &v13;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(&__p, v4);
  if (v11 > 0x40)
  {
    v5 = *__p;
    operator delete[](__p);
    v6 = v13;
    if (v13 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_7;
    }

LABEL_13:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v13);
    return *&v5;
  }

  LODWORD(v5) = __p;
  v6 = v13;
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v6[2] - 64) <= 0xFFFFFF7F)
  {
    v7 = v14;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  return *&v5;
}

llvm::APFloat::Storage *llvm::APFloat::Storage::Storage(llvm::APFloat::Storage *this, const llvm::APFloat::Storage *a2, uint64_t a3, unsigned int a4)
{
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    *this = &llvm::semPPCDoubleDouble;
    v6 = *(a2 + 1);
    if (v6)
    {
      v8 = operator new[](0x50uLL);
      *v8 = xmmword_1E099CF00;
      v9 = (v8 + 56);
      v10 = v8 + 1;
      llvm::APFloat::Storage::Storage((v8 + 24), (v6 + 8), v11, v12);
      llvm::APFloat::Storage::Storage(v9, (*(a2 + 1) + 40), v13, v14);
    }

    else
    {
      v10 = 0;
    }

    *(this + 1) = v10;
    return this;
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(this, a2, a3, a4);
    return this;
  }
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
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*v6 + 48))(v6, &llvm::ErrorList::ID))
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
            std::vector<std::unique_ptr<mlir::RewritePattern>>::push_back[abi:nn200100]((v8 + 1), v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            (*(*v10 + 8))(v10);
          }

LABEL_34:
          *a3 = *a1;
          goto LABEL_35;
        }
      }

      else
      {
        v10 = 0;
      }

      *a2 = 0;
      v21 = v8[2];
      v20 = v8[3];
      if (v21 >= v20)
      {
        v23 = v8[1];
        v24 = v21 - v23;
        v25 = (v21 - v23) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v27 = v20 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (v28 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v29 = operator new(8 * v28);
        }

        else
        {
          v29 = 0;
        }

        v30 = &v29[8 * v25];
        *v30 = v10;
        v22 = v30 + 8;
        memcpy(v29, v23, v24);
        v8[1] = v29;
        v8[2] = v22;
        v8[3] = &v29[8 * v28];
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v21 = v10;
        v22 = v21 + 8;
      }

      v8[2] = v22;
      goto LABEL_34;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      v16 = operator new(0x20uLL);
      v17 = *a1;
      *a1 = 0;
      v18 = *a2;
      *a2 = 0;
      *v16 = &unk_1F5B3F088;
      v19 = operator new(0x10uLL);
      *v19 = v17;
      v19[1] = v18;
      v16[1] = v19;
      v16[2] = v19 + 2;
      v16[3] = v19 + 2;
      *a3 = v16;
      return;
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v31 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v31);
    v15 = v31;
    v31 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  *a3 = v6;
LABEL_35:
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
      v16 = *a3;
      *a3 = 0;
      *v6 = v16;
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
        goto LABEL_25;
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
LABEL_25:
        v28 = *a3;
        *a3 = 0;
        v29 = *v4;
        *v4 = v28;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }

        return v4;
      }
    }

    v24 = (a2 - v6 + 8);
    v25 = v6 - 16;
    do
    {
      v26 = *v25;
      *v25 = 0;
      v27 = *v9;
      *v9 = v26;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      v9 -= 8;
      v25 -= 8;
      v24 += 8;
    }

    while (v24);
    goto LABEL_25;
  }

  v11 = *a1;
  v12 = (&v6[-*a1] >> 3) + 1;
  if (v12 >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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

  v34 = a1;
  if (v14)
  {
    if (v14 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v15 = operator new(8 * v14);
  }

  else
  {
    v15 = 0;
  }

  v31 = v15;
  v32 = &v15[8 * (&v4[-v11] >> 3)];
  *&v33 = v32;
  *(&v33 + 1) = &v15[8 * v14];
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v31, a3);
  v17 = v32;
  memcpy(v33, v4, a1[1] - v4);
  v18 = *a1;
  v19 = v32;
  *&v33 = v33 + a1[1] - v4;
  a1[1] = v4;
  v20 = v4 - v18;
  v21 = &v19[-(v4 - v18)];
  memcpy(v21, v18, v20);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  *(a1 + 1) = v33;
  *&v33 = v22;
  *(&v33 + 1) = v23;
  v31 = v22;
  v32 = v22;
  if (v22)
  {
    operator delete(v22);
  }

  return v17;
}

void std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(char **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        v10 = *v8;
        *v8 = v9;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v6 += 8;
        v8 += 8;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[8 * (v7 / -2)];
    a1[2] = v8;
    goto LABEL_19;
  }

  v11 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v11 = 1;
  }

  if (v11 >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v12 = v11 >> 2;
  v13 = 8 * v11;
  v14 = operator new(8 * v11);
  v15 = &v14[8 * v12];
  v16 = &v14[v13];
  v17 = v4 - v6;
  if (v4 != v6)
  {
    v18 = &v15[v17];
    v19 = v17 - 8;
    if ((v17 - 8) > 0x77)
    {
      v24 = v6 >= &v15[(v19 & 0xFFFFFFFFFFFFFFF8) + 8] || v15 >= &v6[(v19 & 0xFFFFFFFFFFFFFFF8) + 8];
      v20 = &v14[8 * v12];
      v21 = v6;
      if (v24)
      {
        v25 = (v19 >> 3) + 1;
        v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
        v20 = &v15[v26];
        v21 = &v6[v26];
        v27 = (v6 + 16);
        v28 = v15 + 16;
        v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30 = *(v27 - 1);
          v31 = *v27;
          *(v27 - 1) = 0uLL;
          *v27 = 0uLL;
          *(v28 - 1) = v30;
          *v28 = v31;
          v27 += 2;
          v28 += 2;
          v29 -= 4;
        }

        while (v29);
        if (v25 == (v25 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_29:
          *a1 = v14;
          a1[1] = v15;
          a1[2] = v18;
          a1[3] = v16;
          do
          {
            v34 = *(v4 - 1);
            v4 -= 8;
            v33 = v34;
            *v4 = 0;
            if (v34)
            {
              (*(*v33 + 8))(v33);
            }
          }

          while (v4 != v6);
          goto LABEL_17;
        }
      }
    }

    else
    {
      v20 = &v14[8 * v12];
      v21 = v6;
    }

    do
    {
      v32 = *v21;
      *v21 = 0;
      v21 += 8;
      *v20 = v32;
      v20 += 8;
    }

    while (v20 != v18);
    goto LABEL_29;
  }

  *a1 = v14;
  a1[1] = v15;
  a1[2] = v15;
  a1[3] = v16;
LABEL_17:
  if (v5)
  {
    operator delete(v5);
  }

LABEL_19:
  v22 = a1[2];
  v23 = *a2;
  *a2 = 0;
  *v22 = v23;
  a1[2] = v22 + 8;
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

void llvm::APInt::initSlowCase(llvm::APInt *this, uint64_t a2, int a3)
{
  v5 = *(this + 2);
  v6 = v5 + 63;
  if (a2 < 0 && a3)
  {
    llvm::APInt::initSlowCase(v6, this, a2, v5);
  }

  else
  {
    v7 = v6 >> 3;
    v8 = operator new[]((v6 >> 3) & 0x3FFFFFF8);
    bzero(v8, v7 & 0x3FFFFFF8);
    *this = v8;
    *v8 = a2;
  }
}

void *llvm::APInt::initSlowCase(uint64_t a1, const void **a2)
{
  v4 = (*(a1 + 8) + 63) >> 3;
  v5 = operator new[](v4 & 0x3FFFFFF8);
  *a1 = v5;
  v6 = *a2;

  return memcpy(v5, v6, v4 & 0x3FFFFFF8);
}

uint64_t llvm::APInt::APInt(uint64_t a1, unsigned int a2, void *a3, unsigned int a4)
{
  *(a1 + 8) = a2;
  if (a2 > 0x40)
  {
    v10 = (a2 + 63) >> 6;
    v11 = a2;
    v12 = operator new[](8 * v10);
    bzero(v12, 8 * v10);
    *a1 = v12;
    if (v10 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = v10;
    }

    memcpy(v12, a3, 8 * v13);
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
    v8 = &v12[8 * (v10 - 1)];
    v6 = *v8;
  }

  else
  {
    v6 = *a3;
    *a1 = *a3;
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v7 = 0;
    }

    v8 = a1;
  }

  *v8 = v7 & v6;
  return a1;
}

llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, unsigned int a2, unsigned int a3, const unint64_t *a4)
{
  *(this + 2) = a2;
  if (a2 > 0x40)
  {
    v10 = (a2 + 63) >> 6;
    v11 = a2;
    v12 = operator new[](8 * v10);
    bzero(v12, 8 * v10);
    *this = v12;
    if (v10 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v10;
    }

    memcpy(v12, a4, 8 * v13);
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
    v8 = &v12[8 * (v10 - 1)];
    v6 = *v8;
  }

  else
  {
    v6 = *a4;
    *this = *a4;
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v7 = 0;
    }

    v8 = this;
  }

  *v8 = v7 & v6;
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
  v4 = v2 + 63;
  v5 = (v2 + 63) >> 6;
  if (v5 == (v3 + 63) >> 6)
  {
    this[2] = v2;
    if (v2 > 0x40)
    {
      goto LABEL_12;
    }

LABEL_9:
    *this = *a2;
    return this;
  }

  if (v3 >= 0x41 && *this)
  {
    v6 = this;
    v7 = a2;
    operator delete[](*this);
    this = v6;
    a2 = v7;
  }

  this[2] = v2;
  if (v2 < 0x41)
  {
    goto LABEL_9;
  }

  v8 = this;
  v9 = 8 * v5;
  v10 = a2;
  v11 = operator new[](v9);
  a2 = v10;
  v12 = v11;
  this = v8;
  *v8 = v12;
LABEL_12:
  v13 = *this;
  v14 = *a2;

  return memcpy(v13, v14, (v4 >> 3) & 0x3FFFFFF8);
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
  v4 = result;
  v6 = *(result + 8);
  if (v6 > 0x40)
  {
    v9 = (v6 + 63) >> 6;
    v10 = operator new[](8 * v9);
    v11 = 0;
    *(a3 + 8) = v6;
    *a3 = v10;
    v12 = *v4;
    v13 = *a2;
    v14 = v10;
    v15 = v9;
    do
    {
      result = llvm::APInt::tcMultiplyPart(v14, v12, *(v13 + 8 * v11), 0, (v6 + 63) >> 6, v15, v11 != 0);
      ++v11;
      v14 = (v14 + 8);
      --v15;
    }

    while (v15);
    *(v10 + (v9 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v6;
  }

  else
  {
    v7 = *a2 * *result;
    *(a3 + 8) = v6;
    v8 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v8 = 0;
    }

    *a3 = v7 & v8;
  }

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
  v4 = *(a1 + 8);
  if (v4 > 0x40)
  {
    v7 = (v4 + 63) >> 6;
    v6 = operator new[](8 * v7);
    v8 = 0;
    v9 = *a1;
    v10 = *a2;
    v11 = v6;
    v12 = v7;
    do
    {
      llvm::APInt::tcMultiplyPart(v11, v9, *(v10 + 8 * v8), 0, (v4 + 63) >> 6, v12, v8 != 0);
      ++v8;
      v11 = (v11 + 8);
      --v12;
    }

    while (v12);
    *(v6 + 8 * (v7 - 1)) &= 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if (v9)
    {
      operator delete[](v9);
    }
  }

  else
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = (*a2 * *a1) & v5;
  }

  *a1 = v6;
  *(a1 + 8) = v4;
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

void llvm::APInt::zext(unint64_t *__return_ptr a1@<X8>, const void **this@<X0>, unsigned int a3@<W1>)
{
  v3 = this;
  if (a3 > 0x40)
  {
    v7 = *(this + 2);
    if (v7 == a3)
    {
      *(a1 + 2) = a3;
      v8 = (a3 + 63) >> 3;
      v9 = operator new[](v8 & 0x3FFFFFF8);
      *a1 = v9;
      v10 = *v3;

      memcpy(v9, v10, v8 & 0x3FFFFFF8);
    }

    else
    {
      v11 = (a3 + 63) >> 6;
      v13 = operator new[](8 * v11);
      v14 = v13;
      *(a1 + 2) = a3;
      *a1 = v13;
      if (v7 >= 0x41)
      {
        v3 = *v3;
      }

      v15 = (v7 + 63) >> 6;
      memcpy(v13, v3, 8 * v15);

      bzero(&v14[8 * v15], (8 * (v11 - v15)));
    }
  }

  else
  {
    v5 = *this;
    *(a1 + 2) = a3;
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
    if (!a3)
    {
      v6 = 0;
    }

    *a1 = v5 & v6;
  }
}

void llvm::APInt::extractBits(unint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, unsigned int a3@<W1>, unsigned int a4@<W2>)
{
  v5 = *(this + 2);
  if (v5 <= 0x40)
  {
    v6 = *this >> a4;
    *(a1 + 2) = a3;
    if (a3 <= 0x40)
    {
LABEL_3:
      v7 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
      if (!a3)
      {
        v7 = 0;
      }

      *a1 = v6 & v7;
      return;
    }

LABEL_8:
    v12 = (a3 + 63) >> 3;
    v13 = operator new[](v12 & 0x3FFFFFF8);
    bzero(v13, v12 & 0x3FFFFFF8);
    *a1 = v13;
    *v13 = v6;
    return;
  }

  v8 = a4 & 0x3F;
  v9 = a4 >> 6;
  v10 = (a3 + a4 - 1) >> 6;
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v6 = *(*this + 8 * v9) >> v8;
    *(a1 + 2) = a3;
    if (a3 <= 0x40)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  if ((a4 & 0x3F) != 0)
  {
    if (a3 >= 0x41)
    {
      v14 = a3 + 63;
      v21 = this;
      v22 = a3;
      v15 = operator new[]((v14 >> 3) & 0x3FFFFFF8);
      bzero(v15, (v14 >> 3) & 0x3FFFFFF8);
      this = v21;
      a3 = v22;
      *v15 = 0;
      v34 = v15;
    }

    else
    {
      v34 = 0;
      if (!a3)
      {
        v27 = 0;
LABEL_32:
        v33 = v34 & v27;
        *(a1 + 2) = a3;
        *a1 = v33;
        return;
      }

      v14 = a3 + 63;
      v15 = &v34;
    }

    v23 = (*this + 8 * v9 + 8);
    v24 = v9 + 1;
    v25 = v14 >> 6;
    do
    {
      if (v24 < (v5 + 63) >> 6)
      {
        v26 = *v23;
      }

      else
      {
        v26 = 0;
      }

      *v15++ = (v26 << (64 - v8)) | (*(v23++ - 1) >> v8);
      ++v24;
      --v25;
    }

    while (v25);
    v27 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
    if (a3 > 0x40)
    {
      v28 = v34;
      *(v34 + 8 * ((v14 >> 6) - 1)) &= v27;
      *(a1 + 2) = a3;
      v29 = operator new[]((v14 >> 3) & 0x3FFFFFF8);
      *a1 = v29;
      memcpy(v29, v28, (v14 >> 3) & 0x3FFFFFF8);
      operator delete[](v28);
      return;
    }

    goto LABEL_32;
  }

  v16 = (*this + 8 * v9);
  *(a1 + 2) = a3;
  if (a3 > 0x40)
  {
    v30 = (a3 + 63) >> 6;
    v31 = a3;
    v17 = operator new[](8 * v30);
    bzero(v17, 8 * v30);
    if (v30 >= v11 + 1)
    {
      v32 = v11 + 1;
    }

    else
    {
      v32 = v30;
    }

    memcpy(v17, v16, (8 * v32));
    v18 = 0xFFFFFFFFFFFFFFFFLL >> -v31;
    v20 = &v17[8 * (v30 - 1)];
    v19 = *v20;
  }

  else
  {
    v17 = *v16;
    v18 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
    if (!a3)
    {
      v18 = 0;
    }

    v19 = *v16;
    v20 = a1;
  }

  *a1 = v17;
  *v20 = v18 & v19;
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

unint64_t llvm::DenseMapInfo<llvm::APInt,void>::getHashValue(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x40)
  {
    v5 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a1, *a1 + (((v1 + 63) >> 3) & 0x3FFFFFF8));
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

void llvm::APInt::getLoBits(llvm::APInt *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 2);
  *(a3 + 8) = v6;
  if (v6 >= 0x41)
  {
    v8 = operator new[](((v6 + 63) >> 3) & 0x3FFFFFF8);
    bzero(v8, ((v6 + 63) >> 3) & 0x3FFFFFF8);
    *v8 = 0;
    v7 = v8;
    *a3 = v8;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    v8 = a3;
    *a3 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (a2 > 0x40)
  {
    v9 = a2 >> 6;
    if ((a2 & 0x3F) != 0)
    {
      v7[v9] |= 0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F);
    }

    *v7 = -1;
    if (a2 >= 0x80)
    {
      memset(v7 + 1, 255, 8 * v9 - 8);
    }
  }

  else
  {
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -a2;
  }

LABEL_11:
  if (v6 <= 0x40)
  {
    *a3 &= *this;
    return;
  }

  v10 = *a3;
  v11 = *this;
  v12 = (v6 + 63) >> 6;
  if (v6 < 0x141 || (v10 < v11 + 8 * v12 ? (v13 = v11 >= v10 + 8 * v12) : (v13 = 1), !v13))
  {
    v14 = 0;
LABEL_24:
    v19 = v12 - v14;
    v20 = 8 * v14;
    v21 = (v10 + v20);
    v22 = (v11 + v20);
    do
    {
      v23 = *v22++;
      *v21++ &= v23;
      --v19;
    }

    while (v19);
    return;
  }

  v14 = ((v6 + 63) >> 6) & 0x7FFFFFC;
  v15 = (v11 + 16);
  v16 = (v10 + 16);
  v17 = v14;
  do
  {
    v18 = vandq_s8(*v16, *v15);
    v16[-1] = vandq_s8(v16[-1], v15[-1]);
    *v16 = v18;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v12 != v14)
  {
    goto LABEL_24;
  }
}