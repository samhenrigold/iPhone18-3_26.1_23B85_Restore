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
    v27 = *a2;
    v107 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v28 = v9 & 7;
    v110 = v9 & 0xF;
    v109 = v10;
    v30 = (v9 & 6) != 0 && v28 != 3;
    if (v28 == 1 || v30)
    {
      v32 = *(v27 + 8);
      if ((v32 - 64) >= 0xFFFFFF80)
      {
        this = &v108;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v33 = (a2 + 8);
      }

      else
      {
        v33 = *(a2 + 1);
      }

      v34 = (v32 + 64) >> 6;
      if (v34 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      llvm::APInt::tcAssign(this, v33, v35);
    }

    if (v7 == v10)
    {
      v36 = 0;
      v37 = *v8 - v109;
      if (*v8 != v109)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v45 = v12 - 1;
      if (v12 < 1)
      {
        v59 = ~v12;
        *(v6 + 4) += ~v12;
        v60 = *(*v6 + 2);
        v61 = (v6 + 1);
        if ((v60 - 64) <= 0xFFFFFF7F)
        {
          v61 = *v61;
        }

        v62 = &v109;
        v63 = (v60 + 64) >> 6;
        if (v63 <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = v63;
        }

        v65 = llvm::APInt::tcLSB(v61, v64);
        if (v65 >= v59)
        {
          v36 = 0;
        }

        else if (-2 - v65 == v12)
        {
          v36 = 2;
        }

        else if (v59 <= v64 << 6 && llvm::APInt::tcExtractBit(v61, (-2 - v12)))
        {
          v36 = 3;
        }

        else
        {
          v36 = 1;
        }

        llvm::APInt::tcShiftRight(v61, v64, ~v12);
        v84 = *(v107 + 8);
        v85 = (v84 + 64) >> 6;
        if (v85 <= 1)
        {
          v86 = 1;
        }

        else
        {
          v86 = v85;
        }

        if ((v84 - 64) >= 0xFFFFFF80)
        {
          v87 = &v108;
        }

        else
        {
          v87 = v108;
        }

        llvm::APInt::tcShiftLeft(v87, v86, 1u);
      }

      else
      {
        v109 += v45;
        v46 = *(v107 + 8);
        if ((v46 - 64) >= 0xFFFFFF80)
        {
          v47 = &v108;
        }

        else
        {
          v47 = v108;
        }

        v48 = (v46 + 64) >> 6;
        if (v48 <= 1)
        {
          v49 = 1;
        }

        else
        {
          v49 = v48;
        }

        v50 = llvm::APInt::tcLSB(v47, v49);
        if (v50 >= v45)
        {
          v36 = 0;
        }

        else
        {
          v51 = (v12 - 2);
          if (v50 == v51)
          {
            v36 = 2;
          }

          else if (v45 <= v49 << 6 && llvm::APInt::tcExtractBit(v47, v51))
          {
            v36 = 3;
          }

          else
          {
            v36 = 1;
          }
        }

        llvm::APInt::tcShiftRight(v47, v49, v12 - 1);
        v80 = (v6 + 1);
        v81 = *(*v6 + 2);
        v82 = (v81 + 64) >> 6;
        if (v82 <= 1)
        {
          v83 = 1;
        }

        else
        {
          v83 = v82;
        }

        if ((v81 - 64) <= 0xFFFFFF7F)
        {
          v80 = *v80;
        }

        llvm::APInt::tcShiftLeft(v80, v83, 1u);
        v62 = v8;
      }

      --*v62;
      v37 = *v8 - v109;
      if (*v8 != v109)
      {
LABEL_54:
        v38 = v36 != 0;
        if ((v37 & 0x80000000) == 0)
        {
LABEL_55:
          v40 = *v6;
          v39 = (v6 + 1);
          v41 = *(v40 + 2);
          if ((v41 - 64) <= 0xFFFFFF7F)
          {
            v39 = *v39;
          }

          if ((*(v107 + 8) - 64) >= 0xFFFFFF80)
          {
            v42 = &v108;
          }

          else
          {
            v42 = v108;
          }

          v43 = (v41 + 64) >> 6;
          if (v43 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = v43;
          }

          llvm::APInt::tcSubtract(v39, v42, v38, v44);
          goto LABEL_170;
        }

LABEL_152:
        v94 = *(v107 + 8);
        if ((v94 - 64) >= 0xFFFFFF80)
        {
          v95 = &v108;
        }

        else
        {
          v95 = v108;
        }

        v96 = v6 + 1;
        if ((*(*v6 + 2) - 64) >= 0xFFFFFF80)
        {
          v97 = (v6 + 1);
        }

        else
        {
          v97 = v6[1];
        }

        v98 = (v94 + 64) >> 6;
        if (v98 <= 1)
        {
          v99 = 1;
        }

        else
        {
          v99 = v98;
        }

        llvm::APInt::tcSubtract(v95, v97, v38, v99);
        v100 = *(*v6 + 2);
        if ((v100 - 64) <= 0xFFFFFF7F)
        {
          v96 = *v96;
        }

        if ((*(v107 + 8) - 64) >= 0xFFFFFF80)
        {
          v101 = &v108;
        }

        else
        {
          v101 = v108;
        }

        v102 = (v100 + 64) >> 6;
        if (v102 <= 1)
        {
          v103 = 1;
        }

        else
        {
          v103 = v102;
        }

        llvm::APInt::tcAssign(v96, v101, v103);
        *(v6 + 20) ^= 8u;
LABEL_170:
        if (v36 == 3)
        {
          v104 = 1;
        }

        else
        {
          v104 = v36;
        }

        if (v36 == 1)
        {
          v26 = 3;
        }

        else
        {
          v26 = v104;
        }

        if ((*(v107 + 8) - 64) > 0xFFFFFF7F)
        {
          return v26;
        }

        goto LABEL_177;
      }
    }

    v88 = (v6 + 1);
    v89 = *(*v6 + 2);
    if ((v89 - 64) <= 0xFFFFFF7F)
    {
      v88 = *v88;
    }

    if ((*(v107 + 8) - 64) >= 0xFFFFFF80)
    {
      v90 = &v108;
    }

    else
    {
      v90 = v108;
    }

    v91 = (v89 + 64) >> 6;
    if (v91 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v91;
    }

    v93 = llvm::APInt::tcCompare(v88, v90, v92);
    v38 = v36 != 0;
    if ((v93 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_152;
  }

  if (v12 >= 1)
  {
    v13 = *a2;
    v106 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v14 = v9 & 7;
    v110 = v9 & 0xF;
    v109 = v11;
    v16 = (v9 & 6) != 0 && v14 != 3;
    if (v14 == 1 || v16)
    {
      v17 = *(v13 + 8);
      if ((v17 - 64) >= 0xFFFFFF80)
      {
        this = &v108;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v18 = (a2 + 8);
      }

      else
      {
        v18 = *(a2 + 1);
      }

      v19 = (v17 + 64) >> 6;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      llvm::APInt::tcAssign(this, v18, v20);
      v11 = v109;
      v13 = v106;
      this = v108;
    }

    v109 = v11 + v12;
    v21 = *(v13 + 8);
    if ((v21 - 64) >= 0xFFFFFF80)
    {
      v22 = &v108;
    }

    else
    {
      v22 = this;
    }

    v23 = (v21 + 64) >> 6;
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = llvm::APInt::tcLSB(v22, v24);
    if (v25 >= v12)
    {
      v26 = 0;
    }

    else if (v25 + 1 == v12)
    {
      v26 = 2;
    }

    else if (v12 <= v24 << 6 && llvm::APInt::tcExtractBit(v22, (v12 - 1)))
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    llvm::APInt::tcShiftRight(v22, v24, v12);
    v67 = *v6;
    v66 = (v6 + 1);
    v68 = *(v67 + 2);
    if ((v68 - 64) <= 0xFFFFFF7F)
    {
      v66 = *v66;
    }

    if ((*(v106 + 8) - 64) >= 0xFFFFFF80)
    {
      v69 = &v108;
    }

    else
    {
      v69 = v108;
    }

    v70 = (v68 + 64) >> 6;
    if (v70 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v70;
    }

    llvm::APInt::tcAdd(v66, v69, 0, v71);
    if ((*(v106 + 8) - 64) > 0xFFFFFF7F)
    {
      return v26;
    }

LABEL_177:
    if (v108)
    {
      operator delete[]();
    }

    return v26;
  }

  v52 = v10 - v7;
  *(this + 4) = v10;
  v53 = *(*this + 2);
  v54 = (this + 1);
  v55 = (this + 1);
  if ((v53 - 64) <= 0xFFFFFF7F)
  {
    v55 = *v54;
  }

  v56 = (v53 + 64) >> 6;
  if (v56 <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  v58 = llvm::APInt::tcLSB(v55, v57);
  if (v58 >= v52)
  {
    v26 = 0;
  }

  else if (v58 + 1 == v52)
  {
    v26 = 2;
  }

  else if (v52 <= v57 << 6 && llvm::APInt::tcExtractBit(v55, ~v12))
  {
    v26 = 3;
  }

  else
  {
    v26 = 1;
  }

  llvm::APInt::tcShiftRight(v55, v57, -v12);
  v72 = *(*v6 + 2);
  if ((v72 - 64) <= 0xFFFFFF7F)
  {
    v54 = *v54;
  }

  v73 = *(*a2 + 8) - 64;
  v76 = *(a2 + 1);
  v75 = (a2 + 8);
  v74 = v76;
  if (v73 >= 0xFFFFFF80)
  {
    v77 = v75;
  }

  else
  {
    v77 = v74;
  }

  v78 = (v72 + 64) >> 6;
  if (v78 <= 1)
  {
    v79 = 1;
  }

  else
  {
    v79 = v78;
  }

  llvm::APInt::tcAdd(v54, v77, 0, v79);
  return v26;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unsigned int a3)
{
  v4 = (this + 8);
  v5 = *(*this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v6 = a2 + 8;
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = v5 + 64;
  v8 = (v5 + 64) >> 6;
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v7 >= 0xC0)
  {
    operator new[]();
  }

  v10 = &v22[v9];
  v11 = v4;
  v12 = v22;
  v13 = v6;
  v14 = v9;
  do
  {
    *v12 = *v11;
    v15 = *v13++;
    v12[v9] = v15;
    *v11++ = 0;
    ++v12;
    --v14;
  }

  while (v14);
  *(this + 4) -= *(a2 + 4);
  LODWORD(v16) = *(*this + 8);
  v17 = v16 + ~llvm::APInt::tcMSB(v10, v9);
  if (v17)
  {
    *(this + 4) += v17;
    llvm::APInt::tcShiftLeft(v10, v9, v17);
  }

  v18 = v16 + ~llvm::APInt::tcMSB(v22, v9);
  if (v18)
  {
    *(this + 4) -= v18;
    llvm::APInt::tcShiftLeft(v22, v9, v18);
  }

  if ((llvm::APInt::tcCompare(v22, v10, v9) & 0x80000000) != 0)
  {
    --*(this + 4);
    llvm::APInt::tcShiftLeft(v22, v9, 1u);
  }

  while (v16)
  {
    while ((llvm::APInt::tcCompare(v22, v10, v9) & 0x80000000) == 0)
    {
      llvm::APInt::tcSubtract(v22, v10, 0, v9);
      v16 = (v16 - 1);
      llvm::APInt::tcSetBit(v4, v16);
      llvm::APInt::tcShiftLeft(v22, v9, 1u);
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v16) = v16 - 1;
    llvm::APInt::tcShiftLeft(v22, v9, 1u);
  }

LABEL_24:
  v19 = llvm::APInt::tcCompare(v22, v10, v9);
  if (v19 > 0)
  {
    return 3;
  }

  if (v19)
  {
    return !llvm::APInt::tcIsZero(v22, v9);
  }

  return 2;
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

    v13 = *(a1 + 20);
    if (v4 == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v13 >> 3) & 1, 0);
    }

    else
    {
      *(a1 + 20) = v13 & 0xF8;
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

  if ((v5 + 64) >> 6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = (v5 + 64) >> 6;
  }

  v10 = v5 - 65;
  if (v5 >= 0x41)
  {
    memset(v8, 255, 8 * (v10 >> 6) + 8);
    v11 = (v10 >> 6) + 1;
    v5 = v6 - (v10 & 0xFFFFFFC0);
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = 0;
  if (v5)
  {
LABEL_16:
    *&v8[8 * v11++] = 0xFFFFFFFFFFFFFFFFLL >> -v5;
  }

LABEL_17:
  if (v11 < v9)
  {
    bzero(&v8[8 * v11], 8 * (v9 + ~v11) + 8);
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

          v34 = (v30 + 64) >> 6;
          if (v34 <= 1)
          {
            v35 = 1;
          }

          else
          {
            v35 = v34;
          }

          v36 = a2;
          llvm::APInt::tcAssign(v29, v33, v35);
          a2 = v36;
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
LABEL_60:
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
          v37 = (this + 8);
          v38 = *(*this + 8);
          v39 = this;
          if ((v38 - 64) <= 0xFFFFFF7F)
          {
            v37 = *v37;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v40 = (a2 + 8);
          }

          else
          {
            v40 = *(a2 + 1);
          }

          v41 = (v38 + 64) >> 6;
          if (v41 <= 1)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41;
          }

          v43 = a2;
          llvm::APInt::tcAssign(v37, v40, v42);
          a2 = v43;
          this = v39;
          if ((*(v39 + 20) & 7) != 1)
          {
            goto LABEL_71;
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

LABEL_71:
          if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
          {
            return 0;
          }

          v44 = *(*a2 + 8);
          v47 = *(a2 + 1);
          v45 = (a2 + 8);
          v46 = v47;
          if ((v44 - 64) >= 0xFFFFFF80)
          {
            v48 = v45;
          }

          else
          {
            v48 = v46;
          }

          return llvm::APInt::tcExtractBit(v48, (v44 - 2)) == 0;
        }

LABEL_18:
        if ((v4 & 7) != 1)
        {
          goto LABEL_71;
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
    goto LABEL_60;
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

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(uint64_t *a1, llvm::APInt *this, unint64_t *a3, uint64_t a4)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v8 = llvm::APInt::tcMSB(this, a3);
  v9 = (v8 + 1);
  v10 = *(*a1 + 8);
  v11 = (a1 + 1);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v12 = (v10 + 64) >> 6;
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 - v10;
  if (v9 >= v10)
  {
    *(a1 + 4) = v8;
    v16 = llvm::APInt::tcLSB(this, a3);
    if (v16 >= v14)
    {
      v15 = 0;
    }

    else if (v16 + 1 == v14)
    {
      v15 = 2;
    }

    else if (v14 <= a3 << 6 && llvm::APInt::tcExtractBit(this, (v14 - 1)))
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    llvm::APInt::tcExtract(v11, v13, this, v10, v14);
  }

  else
  {
    *(a1 + 4) = v10 - 1;
    llvm::APInt::tcExtract(v11, v13, this, v9, 0);
    v15 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(a1, a4, v15);
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v10 = *(*a1 + 8);
  v11 = (a1 + 1);
  v12 = (a1 + 1);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v12 = *v11;
  }

  v13 = (v10 + 64) >> 6;
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  llvm::APInt::tcSet(v12, 0, v14);
  *(a1 + 4) = 0;
  v16 = *(*a1 + 8);
  if ((v16 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v17 = (v16 + 64) >> 6;
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = &a2[a3];
  if (a3)
  {
    v20 = a3 - 1;
    v21 = a2;
    while (1)
    {
      v22 = *v21;
      if (v22 != 48)
      {
        break;
      }

      ++v21;
      if (--v20 == -1)
      {
        v23 = &a2[a3];
        goto LABEL_24;
      }
    }

    if (v22 == 46)
    {
      if (a3 == 1)
      {
        goto LABEL_58;
      }

      v23 = v21;
      do
      {
        if (!v20)
        {
          goto LABEL_58;
        }

        v24 = *++v23;
        --v20;
      }

      while (v24 == 48);
      goto LABEL_25;
    }

    v23 = v21;
  }

  else
  {
    v23 = a2;
  }

LABEL_24:
  v21 = &a2[a3];
LABEL_25:
  if (v23 == v19)
  {
    goto LABEL_58;
  }

  v25 = 0;
  v26 = 0;
  v27 = v18 << 6;
  v28 = v23;
  v29 = v27;
  do
  {
    v31 = *v28;
    if (v31 == 46)
    {
      if (v21 != v19)
      {
        goto LABEL_57;
      }

      v21 = v28++;
      continue;
    }

    v15 = word_1002B0918[v31];
    if (v15 == -1)
    {
      break;
    }

    ++v28;
    if (v29)
    {
      v29 -= 4;
      v30 = v15 << v29;
      v15 = v29 >> 6;
      v11[v15] = (v11[v15] | v30);
    }

    else
    {
      if ((v26 & 1) == 0)
      {
        if ((v31 - 57) > 0xFFFFFFFFFFFFFFF6)
        {
          if ((word_1002B0918[v31] & 7) != 0)
          {
            v25 = v25 & 0xFFFFFFFF00000000 | 1;
          }

          else
          {
            v32 = v28;
            if (v28 == v19)
            {
LABEL_57:
              llvm::inconvertibleErrorCode(v15);
              operator new();
            }

            while (1)
            {
              v33 = *v32;
              if (v33 != 48 && v33 != 46)
              {
                break;
              }

              if (++v32 == v19)
              {
                goto LABEL_57;
              }
            }

            v34 = v25 & 0xFFFFFFFF00000000;
            if (word_1002B0918[v33] == -1)
            {
              v25 = v34 | (2 * (v31 != 48));
            }

            else
            {
              if (v31 == 48)
              {
                v35 = 1;
              }

              else
              {
                v35 = 3;
              }

              v25 = v35 | v34;
            }
          }
        }

        else
        {
          v25 = v25 & 0xFFFFFFFF00000000 | 3;
        }
      }

      v29 = 0;
      v26 = 1;
    }
  }

  while (v28 != v19);
  if (v28 == v19 || (*v28 | 0x20) != 0x70 || v28 == a2 || v21 != v19 && v28 - a2 == 1)
  {
    goto LABEL_58;
  }

  if (v28 != v23)
  {
    if (v21 == v19)
    {
      v36 = v28;
    }

    else
    {
      v36 = v21;
    }

    v37 = v28 + 1;
    if (v28 + 1 == v19)
    {
      goto LABEL_58;
    }

    v38 = *v37;
    if (v38 == 45 || v38 == 43)
    {
      v37 = v28 + 2;
      if (v28 + 2 == v19)
      {
        goto LABEL_58;
      }
    }

    if (v37 != v19)
    {
      v39 = 0;
      while (1)
      {
        v40 = *v37 - 48;
        if (v40 >= 0xA)
        {
          break;
        }

        v39 = v40 + 10 * v39;
        if (v39 >= 0x8000)
        {
          goto LABEL_80;
        }

        if (++v37 == v19)
        {
          goto LABEL_75;
        }
      }

LABEL_58:
      llvm::inconvertibleErrorCode(v15);
      operator new();
    }

    v39 = 0;
LABEL_75:
    v41 = ~v27 + 4 * (v36 - v23 + ((v36 - v23) >> 31)) + *(*a1 + 8);
    if (v41 != v41 || (v38 != 45 ? (v42 = v39) : (v42 = -v39), v43 = v42 + v41, v43 != v43))
    {
LABEL_80:
      if (v38 == 45)
      {
        v43 = -32768;
      }

      else
      {
        v43 = 0x7FFF;
      }
    }

    *(a1 + 4) = v43;
  }

  result = llvm::detail::IEEEFloat::normalize(a1, a4, v25);
  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::detail::IEEEFloat::roundSignificandWithExponent()
{
  v0 = __chkstk_darwin();
  v4 = v2;
  v71[0] = v1;
  v70 = v5;
  v6 = v0;
  v73 = 0xFFFF800100007FFFLL;
  v74 = 0;
  v75 = 0;
  v76 = 257;
  v67 = v3;
  v8 = v3 == 1 || v3 == 4;
  v69 = v8;
  if ((*(*v0 + 8) + 74) >> 6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*(*v0 + 8) + 74) >> 6;
  }

  if (v2 >= 0)
  {
    v10 = v2;
  }

  else
  {
    v10 = -v2;
  }

  v82 = 390625;
  v77[0] = qword_1002B0150[v10 & 7];
  v11 = 1;
  if (v10 >= 8)
  {
    if ((v10 & 8) != 0)
    {
      v13 = &v78;
      v12 = v77;
      llvm::APInt::tcFullMultiply(&v78, v77, &v82, 1, 1);
      if (v79)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (v10 >= 0x10)
      {
LABEL_16:
        v14 = v10 >> 4;
        v15 = &v83;
        v16 = 1;
        do
        {
          while (1)
          {
            llvm::APInt::tcFullMultiply(v15, v15 - v16, v15 - v16, v16, v16);
            v20 = 2 * v16 - 1;
            v16 = *(v15 + v20) ? (2 * v16) : v20;
            if (v14)
            {
              break;
            }

            v18 = v13;
            v15 = (v15 + 8 * v16);
            v19 = v14 >= 2;
            v14 >>= 1;
            if (!v19)
            {
              goto LABEL_33;
            }
          }

          llvm::APInt::tcFullMultiply(v12, v13, v15, v11, v16);
          v17 = v16 + v11 - 1;
          if (v12[v17])
          {
            v11 = (v16 + v11);
          }

          else
          {
            v11 = v17;
          }

          v18 = v12;
          v12 = v13;
          v13 = v18;
          v15 = (v15 + 8 * v16);
          v19 = v14 >= 2;
          v14 >>= 1;
        }

        while (v19);
        goto LABEL_33;
      }
    }

    else
    {
      v12 = &v78;
      v13 = v77;
      if (v10 >= 0x10)
      {
        goto LABEL_16;
      }
    }

    v18 = v13;
LABEL_33:
    if (v18 != v77)
    {
      llvm::APInt::tcAssign(v77, v18, v11);
    }
  }

  v68 = v11;
  do
  {
    LODWORD(v74) = (v9 << 6) - 1;
    v21 = *(*v6 + 8);
    llvm::detail::IEEEFloat::IEEEFloat(&v78, &v73, v1, v2);
    v22 = v81 & 0xF0;
    v81 = v81 & 0xF0 | *(v6 + 20) & 8 | 3;
    if (*(v78 + 5) == 2)
    {
      v81 = v22 | 3;
    }

    v23 = (v9 << 6) - 1 - v21;
    v80 = *(v78 + 1) - 1;
    v24 = *(v78 + 2);
    if ((v24 - 64) >= 0xFFFFFF80)
    {
      v25 = &v79;
    }

    else
    {
      v25 = v79;
    }

    v26 = (v24 + 64) >> 6;
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    llvm::APInt::tcSet(v25, 0, v27);
    llvm::detail::IEEEFloat::IEEEFloat(&v71[1], &v73, v28, v29);
    v30 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v78, v70, v71[0], 1);
    v33 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v71[1], v77, v11, 1);
    v80 += v4;
    if (v4 < 0)
    {
      v39 = llvm::detail::IEEEFloat::divideSignificand(&v78, &v71[1], v31);
      v36 = v39;
      v40 = *(*v6 + 4);
      v38 = (v9 << 6) - 1 - v21;
      v41 = v40 - v80;
      if (v40 > v80)
      {
        v38 = v41 + v23;
        if (v41 + v23 >= v74)
        {
          v23 = v74;
        }

        else
        {
          v23 += v41;
        }
      }

      v37 = 2 * ((v33 | v39) != 0);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v82, v78, v31, v32);
      v36 = llvm::detail::IEEEFloat::multiplySignificand(&v78, &v71[1], &v82, (v78[3] & 1) == 0, v34, v35);
      if ((*(v82 + 8) - 64) <= 0xFFFFFF7F && v83)
      {
        operator delete[]();
      }

      v37 = v33 != 0;
      v38 = (v9 << 6) - 1 - v21;
    }

    v42 = v36 != 0;
    if (v30)
    {
      ++v37;
    }

    v43 = 2 * v42;
    v44 = v42 | (2 * v37);
    if (v37)
    {
      v45 = v44;
    }

    else
    {
      v45 = v43;
    }

    if ((*(v78 + 2) - 64) >= 0xFFFFFF80)
    {
      v1 = &v79;
    }

    else
    {
      v1 = v79;
    }

    v46 = (v23 - 1) >> 6;
    v47 = v1[v46] & (0xFFFFFFFFFFFFFFFFLL >> ((v23 - 1) & 0x3F ^ 0x3F));
    v48 = 1 << (v23 - 1);
    if (!v69)
    {
      v48 = 0;
    }

    if (v23 - 1 > 0x3F)
    {
      if (v47 == v48)
      {
        v51 = v46 - 1;
        while (v51)
        {
          if (v1[v51--])
          {
            goto LABEL_79;
          }
        }

        v50 = 2 * *v1;
        if (v50 >= v45)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v47 != v48 - 1)
        {
LABEL_79:
          v50 = -2;
LABEL_83:
          v55 = *(*v6 + 8);
          v56 = (v6 + 1);
          if ((v55 - 64) <= 0xFFFFFF7F)
          {
            v56 = v6[1];
          }

          v57 = (v55 + 64) >> 6;
          if (v57 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = v57;
          }

          llvm::APInt::tcExtract(v56, v58, v1, (v74 - v23), v23);
          *(v6 + 4) = v80 + v23 + *(*v6 + 8) - v74;
          v59 = *(v78 + 2);
          if ((v59 - 64) >= 0xFFFFFF80)
          {
            v60 = &v79;
          }

          else
          {
            v60 = v79;
          }

          v61 = (v59 + 64) >> 6;
          if (v61 <= 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = v61;
          }

          v63 = llvm::APInt::tcLSB(v60, v62);
          if (v63 >= v38)
          {
            v64 = 0;
          }

          else if (v63 + 1 == v38)
          {
            v64 = 2;
          }

          else if (v38 <= v62 << 6 && llvm::APInt::tcExtractBit(v60, (v38 - 1)))
          {
            v64 = 3;
          }

          else
          {
            v64 = 1;
          }

          v66 = llvm::detail::IEEEFloat::normalize(v6, v67, v64);
          goto LABEL_103;
        }

        v53 = v46 - 1;
        while (v53)
        {
          v54 = v1[v53--];
          if (v54 != -1)
          {
            goto LABEL_79;
          }
        }

        v50 = -2 * *v1;
        if (v50 >= v45)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      v49 = v47 - v48;
      if ((v47 - v48) < 0)
      {
        v49 = v48 - v47;
      }

      v50 = 2 * v49;
      if (2 * v49 >= v45)
      {
        goto LABEL_83;
      }
    }

LABEL_103:
    if ((*(*&v71[1] + 8) - 64) <= 0xFFFFFF7F && v72)
    {
      operator delete[]();
    }

    if ((*(v78 + 2) - 64) <= 0xFFFFFF7F && v79)
    {
      operator delete[]();
    }

    v9 *= 2;
    v19 = v50 >= v45;
    v11 = v68;
  }

  while (!v19);
  return v66;
}

uint64_t llvm::detail::IEEEFloat::convertFromDecimalString@<X0>(llvm *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
        goto LABEL_100;
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
      goto LABEL_100;
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
LABEL_100:
    llvm::inconvertibleErrorCode(a1);
    operator new();
  }

  v44 = v13 + 1;
  if (v13 + 1 == v6 || ((v45 = *v44, v45 == 45) || v45 == 43) && v13 + 2 == v6)
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
      v37 = *a1;
      if (v24 < -51082 || 28738 * v24 + 28738 <= 8651 * (v37[1] - v37[2]))
      {
        *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
        v38 = v37[2];
        v39 = (a1 + 8);
        if ((v38 - 64) <= 0xFFFFFF7F)
        {
          v39 = *v39;
        }

        v42 = (v38 + 64) >> 6;
        if (v42 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42;
        }

        llvm::APInt::tcSet(v39, 0, v43);
        result = llvm::detail::IEEEFloat::normalize(a1, a4, 1u);
        goto LABEL_72;
      }

      if (42039 * v24 - 42039 < 12655 * *v37)
      {
        operator new[]();
      }
    }

    result = llvm::detail::IEEEFloat::handleOverflow(a1, a4, a3);
    goto LABEL_72;
  }

  if (v45 == 45 || (v46 = *v44, v45 == 43))
  {
    v44 = v13 + 2;
    if (v13 + 2 == v6)
    {
      goto LABEL_100;
    }

    v46 = *v44;
  }

  v47 = v46 - 48;
  if (v47 > 9)
  {
    goto LABEL_100;
  }

  v48 = v44 + 1;
  while (v48 != v6)
  {
    v49 = *v48 - 48;
    if (v49 >= 0xA)
    {
      goto LABEL_100;
    }

    v47 = v49 + 10 * v47;
    ++v48;
    if (v47 >> 6 >= 0x177)
    {
      v47 = 24000;
      break;
    }
  }

  if (v45 == 45)
  {
    v12 = -v47;
  }

  else
  {
    v12 = v47;
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
  v25 = *(a1 + 20);
  v26 = v25 & 0xF8;
  *(a1 + 20) = v25 & 0xF8 | 3;
  v27 = *a1;
  if (*(*a1 + 20) == 2)
  {
    *(a1 + 20) = v25 & 0xF0 | 3;
    v26 = v25 & 0xF0;
  }

  if (v27[6])
  {
    result = 0;
  }

  else
  {
    *(a1 + 20) = v26 | 2;
    v29 = v27[2];
    v31 = (a1 + 8);
    v32 = (a1 + 8);
    if ((v29 - 64) <= 0xFFFFFF7F)
    {
      v32 = *v31;
    }

    v33 = (v29 + 64) >> 6;
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    llvm::APInt::tcSet(v32, 0, v34);
    *(a1 + 20) &= ~8u;
    v35 = *a1;
    *(a1 + 4) = *(*a1 + 4);
    v36 = *(v35 + 8);
    if ((v36 - 64) <= 0xFFFFFF7F)
    {
      v31 = *v31;
    }

    llvm::APInt::tcSetBit(v31, (v36 - 1));
    result = 0;
  }

LABEL_72:
  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromStringSpecials(llvm::detail::IEEEFloat *a1, unsigned __int8 *a2, size_t a3, unsigned int a4)
{
  if (a3 < 3)
  {
    return 0;
  }

  v47 = v4;
  v48 = v5;
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

        v29 = (v27 + 64) >> 6;
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        llvm::APInt::tcSet(v28, 0, v30);
        return 1;
      }

      v25 = 0;
      v26 = 0;
      goto LABEL_48;
    }

LABEL_15:
    v9 = *a2;
    if (v9 != 45)
    {
      v8 = 0;
      v16 = a3;
      goto LABEL_33;
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
LABEL_32:
        v9 = *a2;
        v8 = 1;
        goto LABEL_33;
      }

      v17 = a1;
      v18 = a2;
      v21 = memcmp(a2, "inf", 3uLL);
      a1 = v17;
      if (!v21)
      {
LABEL_57:
        llvm::detail::IEEEFloat::makeInf(a1, 1, v19, v20);
        return 1;
      }

      v22 = "Inf";
      v23 = v18;
    }

    v31 = memcmp(v23, v22, v16);
    a2 = v18;
    v32 = v31;
    a1 = v17;
    if (v32)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
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
LABEL_33:
  if ((v9 | 0x20) == 0x73)
  {
    if (--v16 < 3)
    {
      return 0;
    }

    ++a2;
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  if ((*a2 != 24942 || a2[2] != 110) && (*a2 != 24910 || a2[2] != 78))
  {
    return 0;
  }

  v36 = a2 + 3;
  v37 = v16 - 3;
  v45 = a2 + 3;
  v46 = v16 - 3;
  if (v16 > 3)
  {
    v38 = *v36;
    if (v38 == 40)
    {
      if (v37 < 3 || a2[v16 - 1] != 41)
      {
        return 0;
      }

      v36 = a2 + 4;
      v37 = v16 - 5;
      v45 = a2 + 4;
      v46 = v16 - 5;
      v38 = a2[4];
    }

    v39 = v8;
    v40 = a1;
    if (v38 == 48)
    {
      v41 = v37 - 2;
      if (v37 >= 2 && __tolower(v36[1]) == 120)
      {
        v45 = v36 + 2;
        v46 = v41;
        v42 = 16;
      }

      else
      {
        v42 = 8;
      }
    }

    else
    {
      v42 = 10;
    }

    v44 = 1;
    v43 = 0;
    if ((llvm::StringRef::getAsInteger(&v45, v42, &v43) & 1) == 0)
    {
      llvm::detail::IEEEFloat::makeNaN(v40, v33, v39, &v43);
      if (v44 >= 0x41 && v43)
      {
        operator delete[]();
      }

      return 1;
    }

    if (v44 >= 0x41)
    {
      if (v43)
      {
        operator delete[]();
      }
    }

    return 0;
  }

  v26 = v8;
  v25 = v33;
LABEL_48:
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

    v8 = (v6 + 64) >> 6;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    llvm::APInt::tcSet(v7, 0, v9);
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
      sub_100025A88(&v12, &v13);
    }

    return llvm::detail::IEEEFloat::convertFromHexadecimalString(v9, v8 + 2, v7 - 2, a4, a5);
  }

  else
  {

    return llvm::detail::IEEEFloat::convertFromDecimalString(v9, v8, v7, a4, a5);
  }
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    v5 = (v2 >> 3) & 1;
    v6 = *this;
    v27 = 0u;
    v28 = 0u;
    if (v3 == 1)
    {
      LOBYTE(v5) = 0;
    }

    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __src = 0uLL;
    v29 = 0;
    v30 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(__src) = v3;
    BYTE1(__src) = v5;
    v21 = 0;
    v7 = sub_10002D050(&__src, &v21, (&__src + 2), &v26, *(v6 + 8));
    v8 = v21;
  }

  else
  {
    v9 = (v2 >> 3) & 1;
    v10 = *this;
    v11 = *(*this + 8);
    if ((v11 - 64) >= 0xFFFFFF80)
    {
      v12 = (this + 8);
    }

    else
    {
      v12 = *(this + 1);
    }

    v13 = (v11 + 64) >> 6;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v15 = sub_10002D970(v12, &v12[v13]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    __src = 0u;
    v29 = 0;
    v30 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(__src) = v3;
    BYTE1(__src) = v9;
    v19 = 0;
    v16 = sub_10002D050(&__src, &v19, (&__src + 2), &v26, *(v10 + 8));
    v20 = v19;
    v17 = sub_10002D050(&__src, &v20, v16, &v26, *(this + 4));
    v21 = v20;
    v7 = sub_10002DCBC(&__src, &v21, v17, &v26, v15);
    v8 = v21;
  }

  return sub_10002D330(&__src, v8, v7, &v26);
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat **this@<X0>, uint64_t a3@<X8>)
{
  v3 = this;
  v5 = *this;
  v6 = *(*this + 12);
  *v65 = **this;
  *&v65[12] = v6;
  *&v65[4] = -1022;
  v61 = v5;
  if ((*(v5 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v7 = *(this + 20);
  v8 = v7 & 7;
  v64 = v7 & 0xF;
  v63 = *(this + 4);
  v10 = (v7 & 6) != 0 && v8 != 3;
  if (v8 == 1 || v10)
  {
    v11 = *(v5 + 8);
    if ((v11 - 64) >= 0xFFFFFF80)
    {
      this = &v62;
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

    v17 = (v11 + 64) >> 6;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    llvm::APInt::tcAssign(this, v16, v18);
  }

  v66 = 0;
  llvm::detail::IEEEFloat::convert(&v61, v65, 1, &v66);
  v57 = v61;
  if ((*(v61 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v19 = v64 & 7;
  v60 = v60 & 0xF0 | v64 & 0xF;
  v59 = v63;
  v21 = (v64 & 6) != 0 && v19 != 3;
  if (v19 == 1 || v21)
  {
    v22 = *(v57 + 8);
    if ((v22 - 64) >= 0xFFFFFF80)
    {
      v23 = &v58;
    }

    else
    {
      v23 = v58;
    }

    if ((*(v61 + 8) - 64) >= 0xFFFFFF80)
    {
      v24 = &v62;
    }

    else
    {
      v24 = v62;
    }

    v25 = (v22 + 64) >> 6;
    if (v25 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    llvm::APInt::tcAssign(v23, v24, v26);
  }

  llvm::detail::IEEEFloat::convert(&v57, &unk_1002AFF54, 1, &v66);
  if (v57 == &unk_1002B00A4)
  {
    v27 = 1022;
  }

  else
  {
    v27 = 1023;
  }

  v28 = v60 & 7;
  v29 = (v60 & 6) == 0 || v28 == 3;
  v30 = !v29;
  if (!v29)
  {
    v27 += v59;
    if ((*(v57 + 8) - 64) > 0xFFFFFF7F)
    {
      v31 = v58;
      if (v27 != 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v31 = *v58;
      if (v27 != 1)
      {
        goto LABEL_61;
      }
    }

    v67 = (v60 << 60) & 0x8000000000000000 | v31 & 0xFFFFFFFFFFFFFLL | (((v31 >> 52) & 1) << 52);
    if (!v30)
    {
      goto LABEL_80;
    }

    goto LABEL_62;
  }

  if ((v60 & 7) != 0)
  {
    if (v28 == 3)
    {
      v67 = (v60 << 60) & 0x8000000000000000 | (((v27 - 1023) & 0x7FFLL) << 52);
      if (!v30)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v40 = v27 | 0x400;
      if ((*(v57 + 8) - 64) >= 0xFFFFFF80)
      {
        v41 = &v58;
      }

      else
      {
        v41 = v58;
      }

      v67 = (v60 << 60) & 0x8000000000000000 | *v41 & 0xFFFFFFFFFFFFFLL | ((v40 & 0x7FF) << 52);
      if (!v30)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_62;
  }

  v31 = 0;
  LOWORD(v27) = v27 | 0x400;
LABEL_61:
  v67 = (v60 << 60) & 0x8000000000000000 | v31 & 0xFFFFFFFFFFFFFLL | ((v27 & 0x7FF) << 52);
  if (!v30)
  {
LABEL_80:
    v68 = 0;
    goto LABEL_81;
  }

LABEL_62:
  if (!v66)
  {
    goto LABEL_80;
  }

  v32 = llvm::detail::IEEEFloat::convert(&v57, v65, 1, &v66);
  v53 = v61;
  if ((*(v61 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v34 = v64 & 7;
  v56 = v64 & 0xF;
  v55 = v63;
  v36 = (v64 & 6) != 0 && v34 != 3;
  if (v34 == 1 || v36)
  {
    v43 = *(v61 + 8);
    if ((v43 - 64) >= 0xFFFFFF80)
    {
      v32 = &v54;
    }

    if ((*(v61 + 8) - 64) >= 0xFFFFFF80)
    {
      v44 = &v62;
    }

    else
    {
      v44 = v62;
    }

    v45 = (v43 + 64) >> 6;
    if (v45 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v45;
    }

    llvm::APInt::tcAssign(v32, v44, v46);
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v53, &v57, 1u, v47) != 2)
    {
LABEL_74:
      v39 = v56;
      if ((v56 & 7) != 3)
      {
        goto LABEL_103;
      }

      goto LABEL_98;
    }
  }

  else if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v53, &v57, 1u, v33) != 2)
  {
    goto LABEL_74;
  }

  v48 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v53, &v57, 1u, v37, v38);
  llvm::detail::IEEEFloat::normalize(&v53, 1, v48);
  v39 = v56;
  if ((v56 & 7) != 3)
  {
    goto LABEL_103;
  }

LABEL_98:
  if ((v60 & 7) != 3 || ((v60 ^ v39) & 8) == 0)
  {
    LOBYTE(v39) = v39 & 0xF3;
    v56 = v39;
  }

  if (*(v53 + 5) == 2)
  {
    v56 = v39 & 0xF3;
  }

LABEL_103:
  llvm::detail::IEEEFloat::convert(&v53, &unk_1002AFF54, 1, &v66);
  if (v53 == &unk_1002B00A4)
  {
    LODWORD(v49) = 1022;
  }

  else
  {
    LODWORD(v49) = 1023;
  }

  v50 = v56 & 7;
  if ((v56 & 6) == 0 || v50 == 3)
  {
    if ((v56 & 7) != 0)
    {
      if (v50 == 3)
      {
        v51 = 0;
        LOWORD(v49) = v49 - 1023;
      }

      else
      {
        LOWORD(v49) = v49 | 0x400;
        if ((*(v53 + 2) - 64) >= 0xFFFFFF80)
        {
          v52 = &v54;
        }

        else
        {
          v52 = v54;
        }

        v51 = *v52;
      }
    }

    else
    {
      v51 = 0;
      LOWORD(v49) = v49 | 0x400;
    }
  }

  else
  {
    LODWORD(v49) = v55 + v49;
    if ((*(v53 + 2) - 64) <= 0xFFFFFF7F)
    {
      v51 = *v54;
      if (v49 != 1)
      {
        goto LABEL_121;
      }

      goto LABEL_115;
    }

    v51 = v54;
    if (v49 == 1)
    {
LABEL_115:
      v49 = (v51 >> 52) & 1;
    }
  }

LABEL_121:
  v68 = (v56 << 60) & 0x8000000000000000 | v51 & 0xFFFFFFFFFFFFFLL | ((v49 & 0x7FF) << 52);
  if ((*(v53 + 2) - 64) <= 0xFFFFFF7F && v54)
  {
    operator delete[]();
  }

LABEL_81:
  result = llvm::APInt::APInt(a3, 128);
  if ((*(v57 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v58;
    if (v58)
    {
      operator delete[]();
    }
  }

  if ((*(v61 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v62;
    if (v62)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_1002B00A4)
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
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 2) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 3 | (4 * (v3 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_1002B00A4)
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
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_16:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_21:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_1002B00A4)
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
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_1002B00A4)
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
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_1002B00A4)
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
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_1002B00A4)
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
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_16:
      v3 = (v7 >> 4) & 1;
    }
  }

LABEL_21:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 0xF | (16 * (v3 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_1002B00A4)
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
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_16:
      v3 = (v7 >> 10) & 1;
    }
  }

LABEL_21:
  *(a2 + 8) = 19;
  *a2 = v7 & 0x3FF | (((v4 >> 3) & 1) << 18) | (v3 << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = vdup_n_s32(v2);
  if (*this == &unk_1002B00A4)
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
  if (*this == &unk_1002B00A4)
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
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (v2 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v5 = *(this + 8);
    if (v2 == 1)
    {
LABEL_14:
      v2 = (v5 >> 2) & 1;
    }
  }

LABEL_15:
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
    if (v2 == &unk_1002B00A4)
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
    if (v2 != &unk_1002B00A4)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = *this[1];
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = this[1];
    if (v6 == 1)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
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
    if (v2 == &unk_1002B00A4)
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
    if (v2 != &unk_1002B00A4)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = *this[1];
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = this[1];
    if (v6 == 1)
    {
LABEL_15:
      v6 = (v5 >> 1) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 4;
  *a2 = v3 & 8 | v5 & 1 | (2 * (v6 & 3));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::bitcastToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  if (*this == &unk_1002AFF00)
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
          v7 = this[1];
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
      v7 = this[1];
      if (*(this + 4) == -14)
      {
        v12 = (v7 >> 10) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = v7 & 0x3FF | (((v4 >> 3) & 1) << 15) | ((v12 & 0x1F) << 10);
  }

  else if (v3 == &unk_1002AFF1C)
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
          v11 = this[1];
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
      v11 = this[1];
      if (*(this + 4) == -126)
      {
        v17 = (v11 >> 7) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = v11 & 0x7F | (((v8 >> 3) & 1) << 15) | (v17 << 7);
  }

  else if (v3 == &unk_1002AFF38)
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
          v16 = this[1];
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
      v16 = this[1];
      if (*(this + 4) == -126)
      {
        v15 = (v16 >> 23) & 1;
      }
    }

    *(a2 + 8) = 32;
    *a2 = v16 & 0x7FFFFF | (((v13 >> 3) & 1) << 31) | (v15 << 23);
  }

  else if (v3 == &unk_1002AFF54)
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
          v21 = this[1];
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
      v21 = this[1];
      if (*(this + 4) == -1022)
      {
        v20 = (v21 >> 52) & 1;
      }
    }

    *(a2 + 8) = 64;
    *a2 = (v18 << 60) & 0x8000000000000000 | v21 & 0xFFFFFFFFFFFFFLL | ((v20 & 0x7FF) << 52);
  }

  else if (v3 == &unk_1002AFF70)
  {
    return llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(a2);
  }

  else if (v3 == &unk_1002AFFA8)
  {
    return llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002AFFC4)
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
          v25 = this[1];
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
      v25 = this[1];
      if (*(this + 4) == -14)
      {
        v24 = (v25 >> 2) & 1;
      }
    }

    *(a2 + 8) = 8;
    *a2 = (16 * v22) & 0x80 | v25 & 3 | (4 * (v24 & 0x1F));
  }

  else if (v3 == &unk_1002AFFE0)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002AFFFC)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B0018)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B0034)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B0050)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B006C)
  {
    return llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B0088)
  {
    return llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B00A4)
  {
    return llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B00C0)
  {
    return llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B00DC)
  {
    return llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a2);
  }

  else if (v3 == &unk_1002B00F8)
  {
    return llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a2);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(a2);
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt ***a2, uint64_t a3, unsigned int a4)
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
  result = llvm::detail::IEEEFloat::convert(this, &unk_1002AFFA8, 1, &v22);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v18 = 64;
    v17 = v7;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v19, &v17, v9, v10);
    llvm::detail::IEEEFloat::convert(&v19, &unk_1002AFFA8, 1, &v22);
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
        operator delete[]();
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
  *this = &unk_1002AFF54;
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
  *this = &unk_1002AFF38;
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
  *this = &unk_1002AFF1C;
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
  *this = &unk_1002AFF00;
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
  *this = &unk_1002AFFC4;
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
  *this = &unk_1002AFFE0;
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
  *this = &unk_1002AFFFC;
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
  *this = &unk_1002B0018;
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
  *this = &unk_1002B0034;
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
  *this = &unk_1002B0050;
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
  *this = &unk_1002B006C;
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
  *this = &unk_1002B0088;
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
  *this = &unk_1002B00C0;
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
  *this = &unk_1002B00DC;
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
  *this = &unk_1002B00F8;
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

void llvm::detail::IEEEFloat::initFromAPInt(llvm::APInt *result, void *a2, const llvm::APInt ***a3, unsigned int a4)
{
  if (a2 == &unk_1002AFF00)
  {
    llvm::detail::IEEEFloat::initFromHalfAPInt(result, a3, a3, a4);
  }

  else if (a2 == &unk_1002AFF1C)
  {
    llvm::detail::IEEEFloat::initFromBFloatAPInt(result, a3, a3, a4);
  }

  else if (a2 == &unk_1002AFF38)
  {
    llvm::detail::IEEEFloat::initFromFloatAPInt(result, a3, a3, a4);
  }

  else if (a2 == &unk_1002AFF54)
  {
    llvm::detail::IEEEFloat::initFromDoubleAPInt(result, a3, a3, a4);
  }

  else
  {
    if (a2 == &unk_1002B0114)
    {
      llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(result, a3);
    }

    if (a2 == &unk_1002AFF70)
    {
      llvm::detail::IEEEFloat::initFromQuadrupleAPInt(result, a3);
    }

    if (a2 == &unk_1002AFFA8)
    {
      llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002AFFC4)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002AFFE0)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002AFFFC)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002B0018)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002B0034)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002B0050)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002B006C)
    {
      llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002B0088)
    {
      llvm::detail::IEEEFloat::initFromFloatTF32APInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002B00A4)
    {
      if (*(a3 + 2) >= 0x41u)
      {
        v4 = *a3;
      }

      else
      {
        v4 = a3;
      }

      v5 = *v4;
      v6 = *(result + 20);
      *result = &unk_1002B00A4;
      *(result + 1) = 1;
      v7 = v6 & 0xF0;
      v8 = v5 - 127;
      if (v5 == 255)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      *(result + 20) = v7 | v9;
      *(result + 4) = v8;
    }

    else if (a2 == &unk_1002B00C0)
    {
      llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(result, a3, a3, a4);
    }

    else if (a2 == &unk_1002B00DC)
    {
      llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(result, a3, a3, a4);
    }

    else
    {
      llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(result, a3, a3, a4);
    }
  }
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
  v6 = *(a1 + 20) & 7;
  if (v6 == 3)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v12 = a2[1];
      if (v12 + 1 > a2[2])
      {
        v115 = a3;
        v116 = a4;
        v117 = a5;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v12 + 1, 1);
        a3 = v115;
        a4 = v116;
        a5 = v117;
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
      v32 = a2[2];
      if (!a5)
      {
        if (v32 < v13 + 3)
        {
          v40 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 3, 1);
          a3 = v40;
          v13 = a2[1];
        }

        v41 = *a2 + v13;
        *(v41 + 2) = 48;
        *v41 = 11824;
        v7 = a2[1] + 3;
        a2[1] = v7;
        if (a3 >= 2)
        {
          v42 = a3 - 1;
          if (v7 + v42 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + v42, 1);
            v7 = a2[1];
          }

          memset((*a2 + v7), 48, v42);
          v7 = a2[1] + v42;
          a2[1] = v7;
        }

        if (a2[2] < (v7 + 4))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + 4, 1);
          v7 = a2[1];
        }

        v26 = *a2;
        v27 = 808463205;
        goto LABEL_71;
      }

      if (v32 < v13 + 6)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 6, 1);
        v13 = a2[1];
      }

      v33 = *a2 + v13;
      *(v33 + 4) = 12331;
      *v33 = 1160785456;
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
          goto LABEL_72;
        }

        if (v8 < v7 + 4)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
          v7 = a2[1];
        }

        v26 = *a2;
        v27 = 1718503725;
LABEL_71:
        *(v26 + v7) = v27;
LABEL_72:
        a2[1] += 4;
        return;
      }

      v14 = *(*a1 + 8);
      v15 = a3;
      v16 = a4;
      v17 = a5;
      v18 = *(a1 + 16);
      llvm::APInt::APInt(&v120, v14);
      v23 = *(a1 + 20);
      v24 = v121;
      v119 = v121;
      if (v121 > 0x40)
      {
        llvm::APInt::initSlowCase(&v118, &v120);
      }

      v118 = v120;
      v25 = v15;
      if ((v23 & 8) != 0)
      {
        v28 = a2[1];
        if (v28 + 1 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v28 + 1, 1);
          v25 = v15;
          v28 = a2[1];
        }

        *(*a2 + v28) = 45;
        ++a2[1];
      }

      if (v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = (59 * v24) / 196 + 2;
      }

      if (v119 > 0x40)
      {
        v31 = llvm::APInt::countTrailingZerosSlowCase(&v118);
        llvm::APInt::lshrSlowCase(&v118, v31);
      }

      else
      {
        v30 = __clz(__rbit64(v118));
        if (v119 >= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v119;
        }

        if (v119 > v30)
        {
          v118 >>= v31;
        }

        else
        {
          v118 = 0;
        }
      }

      v34 = v18 - v14 + v31;
      v35 = v34 + 1;
      if (v34 != -1)
      {
        if (v35 < 1)
        {
          v38 = (-137 * v35 + 136) / 0x3Bu + v24;
          llvm::APInt::zext(&__dst, &v118, v38);
          if (v119 >= 0x41 && v118)
          {
            operator delete[]();
          }

          v39 = -v35;
          v118 = __dst;
          v119 = v130;
          LODWORD(v130) = v38;
          if (v38 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst, 5, 0);
          }

          for (__dst = 5; ; llvm::APInt::operator*=(&__dst, &__dst))
          {
            if (v39)
            {
              llvm::APInt::operator*=(&v118, &__dst);
            }

            if (v39 < 2)
            {
              break;
            }

            v39 >>= 1;
          }

          if (v130 >= 0x41 && __dst)
          {
            operator delete[]();
          }
        }

        else
        {
          llvm::APInt::zext(&__dst, &v118, v35 + v24);
          if (v119 >= 0x41 && v118)
          {
            operator delete[]();
          }

          v118 = __dst;
          v119 = v130;
          if (v130 > 0x40)
          {
            llvm::APInt::shlSlowCase(&v118, v35);
            v35 = 0;
          }

          else
          {
            v36 = __dst << v35;
            if (v130 == v35)
            {
              v36 = 0;
            }

            if (v130)
            {
              v37 = 0xFFFFFFFFFFFFFFFFLL >> -v130;
            }

            else
            {
              v37 = 0;
            }

            v118 = v37 & v36;
            v35 = 0;
          }
        }
      }

      v43 = v119;
      if (v119 > 0x40)
      {
        v44 = llvm::APInt::countLeadingZerosSlowCase(&v118);
      }

      else
      {
        v44 = v119 + __clz(v118) - 64;
      }

      v45 = (196 * v29 + 58) / 0x3B;
      if (v43 - v44 > v45)
      {
        v46 = 59 * (v43 - v44 - v45);
        if (v46 >= 0xC4)
        {
          v47 = v46 / 0xC4;
          v35 += v46 / 0xC4;
          LODWORD(v130) = v43;
          if (v43 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst, 1, 0);
          }

          __dst = 1;
          LODWORD(v123) = v43;
          for (i = 10; ; llvm::APInt::operator*=(&i, &i))
          {
            if (v47)
            {
              llvm::APInt::operator*=(&__dst, &i);
            }

            if (v47 < 2)
            {
              break;
            }

            v47 >>= 1;
          }

          llvm::APInt::udiv(&v127, &v118, &__dst);
          if (v119 >= 0x41 && v118)
          {
            operator delete[]();
          }

          v118 = v127;
          v48 = v128;
          v119 = v128;
          if (v128 > 0x40)
          {
            v49 = llvm::APInt::countLeadingZerosSlowCase(&v118);
          }

          else
          {
            v49 = v128 + __clz(v127) - 64;
          }

          llvm::APInt::trunc(&v127, &v118, v48 - v49);
          if (v119 >= 0x41 && v118)
          {
            operator delete[]();
          }

          v118 = v127;
          v119 = v128;
          if (v123 >= 0x41 && i)
          {
            operator delete[]();
          }

          if (v130 >= 0x41 && __dst)
          {
            operator delete[]();
          }

          v43 = v119;
        }
      }

      __dst = v131;
      v130 = xmmword_1002AFEC0;
      if (v43 > 3)
      {
        v128 = v43;
        if (v43 > 0x40)
        {
          llvm::APInt::initSlowCase(&v127, 10, 0);
        }
      }

      else
      {
        v43 = 4;
        llvm::APInt::zext(&i, &v118, 4u);
        if (v119 >= 0x41 && v118)
        {
          operator delete[]();
        }

        v118 = i;
        v119 = v123;
        v128 = 4;
      }

      v127 = 10;
      v126 = v43;
      v125 = 0;
      v50 = v119;
      if (v119 < 0x41)
      {
        goto LABEL_122;
      }

LABEL_119:
      if (v50 - llvm::APInt::countLeadingZerosSlowCase(&v118) > 0x40 || *v118)
      {
        while (1)
        {
          llvm::APInt::udivrem(&v118, &v127, &v118, &v125, v20, v21, v22);
          v51 = v126 >= 0x41 ? v125 : &v125;
          v52 = *v51;
          if (v52)
          {
            break;
          }

          ++v35;
          v50 = v119;
          if (v119 >= 0x41)
          {
            goto LABEL_119;
          }

LABEL_122:
          if (!v118)
          {
            goto LABEL_141;
          }
        }

        v53 = v52 + 48;
        v54 = v130;
        if ((v130 + 1) > *(&v130 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v131, v130 + 1, 1);
          v54 = v130;
        }

        *(__dst + v54) = v53;
        *&v130 = v130 + 1;
        v55 = v119;
        if (v119 < 0x41)
        {
          goto LABEL_133;
        }

        while (v55 - llvm::APInt::countLeadingZerosSlowCase(&v118) > 0x40 || *v118)
        {
          while (1)
          {
            llvm::APInt::udivrem(&v118, &v127, &v118, &v125, v20, v21, v22);
            if (v126 >= 0x41)
            {
              v56 = v125;
            }

            else
            {
              v56 = &v125;
            }

            v57 = *v56;
            v58 = v130;
            if ((v130 + 1) > *(&v130 + 1))
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v131, v130 + 1, 1);
              v58 = v130;
            }

            *(__dst + v58) = v57 + 48;
            *&v130 = v130 + 1;
            v55 = v119;
            if (v119 >= 0x41)
            {
              break;
            }

LABEL_133:
            if (!v118)
            {
              goto LABEL_141;
            }
          }
        }
      }

LABEL_141:
      v59 = v130;
      v60 = v130 - v29;
      if (v130 <= v29)
      {
        v62 = v16;
        if (!v16)
        {
          goto LABEL_177;
        }

        goto LABEL_166;
      }

      v61 = __dst;
      v62 = v16;
      if (*(__dst + (v60 - 1)) >= 53)
      {
        if (v29)
        {
          v66 = v29;
          while (1)
          {
            v67 = *(__dst + v60);
            if (v67 != 57)
            {
              break;
            }

            LODWORD(v60) = v60 + 1;
            if (!--v66)
            {
              goto LABEL_160;
            }
          }

          *(__dst + v60) = v67 + 1;
        }

        if (v60 == v59)
        {
LABEL_160:
          v68 = 0;
          *&v130 = 0;
          if (!*(&v130 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v131, 1uLL, 1);
            v62 = v16;
            v68 = v130;
          }

          *(__dst + v68) = 49;
          v69 = v59;
          v59 = v130 + 1;
          v35 += v69;
          *&v130 = v130 + 1;
          if (!v62)
          {
            goto LABEL_177;
          }

          goto LABEL_166;
        }

        v64 = v60;
        v61 = __dst;
        v65 = v130 - v60;
        if (v130 == v60)
        {
          goto LABEL_149;
        }
      }

      else
      {
        if (v60 < v130)
        {
          v63 = v29;
          while (*(__dst + v60) == 48)
          {
            ++v60;
            if (!--v63)
            {
              LODWORD(v60) = v130;
              break;
            }
          }
        }

        v64 = v60;
        v65 = v130 - v60;
        if (v130 == v60)
        {
LABEL_149:
          v59 = v65;
          v35 += v60;
          *&v130 = v65;
          if (!v62)
          {
            goto LABEL_177;
          }

          goto LABEL_166;
        }
      }

      v70 = v62;
      memmove(v61, &v61[v64], v65);
      v62 = v70;
      v59 = v61 + v65 - __dst;
      v35 += v60;
      *&v130 = &v61[v65] - __dst;
      if (!v62)
      {
        goto LABEL_177;
      }

LABEL_166:
      if (v35 < 0)
      {
        v75 = v35 + v59;
        if (((v75 - 1) & 0x80000000) == 0 || 1 - v75 <= v62)
        {
          if (v75 < 1)
          {
            v108 = a2[1];
            if (v108 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v108 + 1, 1);
              v108 = a2[1];
            }

            *(*a2 + v108) = 48;
            v109 = a2[1];
            v110 = a2[2];
            v111 = v109 + 1;
            a2[1] = v109 + 1;
            if (v109 + 2 > v110)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v109 + 2, 1);
              v111 = a2[1];
            }

            *(*a2 + v111) = 46;
            v107 = a2[1] + 1;
            a2[1] = v107;
            if (v75)
            {
              do
              {
                if (v107 + 1 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v107 + 1, 1);
                  v107 = a2[1];
                }

                *(*a2 + v107) = 48;
                v107 = a2[1] + 1;
                a2[1] = v107;
                v112 = __CFADD__(v75, 1);
                LODWORD(v75) = v75 + 1;
              }

              while (!v112);
              LODWORD(v75) = 0;
            }
          }

          else
          {
            v102 = a2[1];
            v103 = v59 - 1;
            v104 = v75;
            do
            {
              v105 = *(__dst + v103);
              if (v102 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v102 + 1, 1);
                v102 = a2[1];
              }

              *(*a2 + v102) = v105;
              v106 = a2[1];
              v102 = v106 + 1;
              a2[1] = v106 + 1;
              --v103;
              --v104;
            }

            while (v104);
            if (v106 + 2 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v106 + 2, 1);
              v102 = a2[1];
            }

            *(*a2 + v102) = 46;
            v107 = a2[1] + 1;
            a2[1] = v107;
          }

          if (v75 != v59)
          {
            v113 = ~v75 + v59;
            do
            {
              v114 = *(__dst + v113);
              if (v107 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v107 + 1, 1);
                v107 = a2[1];
              }

              *(*a2 + v107) = v114;
              v107 = a2[1] + 1;
              a2[1] = v107;
              --v113;
            }

            while (v113 != -1);
          }

          goto LABEL_221;
        }
      }

      else if (v35 <= v62 && v35 + v59 <= v29)
      {
        if (v59)
        {
          v71 = v59;
          v72 = a2[1];
          v73 = v59 - 1;
          do
          {
            v74 = *(__dst + v73);
            if (v72 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v72 + 1, 1);
              v72 = a2[1];
            }

            *(*a2 + v72) = v74;
            v72 = a2[1] + 1;
            a2[1] = v72;
            --v73;
            --v71;
          }

          while (v71);
        }

        if (v35)
        {
          v99 = a2[1];
          do
          {
            if (v99 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v99 + 1, 1);
              v99 = a2[1];
            }

            *(*a2 + v99) = 48;
            v99 = a2[1] + 1;
            a2[1] = v99;
            --v35;
          }

          while (v35);
        }

        goto LABEL_221;
      }

LABEL_177:
      v76 = v59 - 1;
      v77 = *(__dst + v59 - 1);
      v78 = a2[1];
      if (v78 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v78 + 1, 1);
        v78 = a2[1];
      }

      *(*a2 + v78) = v77;
      v79 = a2[1];
      v80 = a2[2];
      v81 = v79 + 1;
      a2[1] = v79 + 1;
      if (v79 + 2 > v80)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v79 + 2, 1);
        v81 = a2[1];
      }

      *(*a2 + v81) = 46;
      v82 = a2[1];
      v83 = v82 + 1;
      a2[1] = v82 + 1;
      if (v59 == 1 && (v17 & 1) != 0)
      {
        if (v82 + 2 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v82 + 2, 1);
          v83 = a2[1];
        }

        *(*a2 + v83) = 48;
        v83 = a2[1] + 1;
        a2[1] = v83;
      }

      else if (v59 != 1)
      {
        v100 = v59 - 2;
        do
        {
          v101 = *(__dst + v100);
          if (v83 + 1 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v83 + 1, 1);
            v83 = a2[1];
          }

          *(*a2 + v83) = v101;
          v83 = a2[1] + 1;
          a2[1] = v83;
          --v100;
        }

        while (v100 != -1);
      }

      if (v17)
      {
        v84 = 69;
LABEL_195:
        v86 = v76 + v35;
        if (v83 + 1 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v83 + 1, 1);
          v83 = a2[1];
        }

        *(*a2 + v83) = v84;
        v87 = a2[1];
        v88 = a2[2];
        v89 = v87 + 1;
        a2[1] = v87 + 1;
        if (v86 < 0)
        {
          v90 = 45;
        }

        else
        {
          v90 = 43;
        }

        if (v87 + 2 > v88)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v87 + 2, 1);
          v89 = a2[1];
        }

        v91 = 0;
        *(*a2 + v89) = v90;
        ++a2[1];
        if (v86 >= 0)
        {
          v92 = v86;
        }

        else
        {
          v92 = -v86;
        }

        i = &v124;
        v123 = xmmword_1002AFED0;
        do
        {
          if (v91 + 1 > *(&v123 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&i, &v124, v91 + 1, 1);
            v91 = v123;
          }

          *(i + v91) = (v92 % 0xA) | 0x30;
          v93 = v123;
          v91 = v123 + 1;
          *&v123 = v123 + 1;
          v94 = v92 > 9;
          v92 /= 0xAu;
        }

        while (v94);
        if ((v17 & 1) == 0 && v91 <= 1)
        {
          if ((v93 + 2) > *(&v123 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&i, &v124, v93 + 2, 1);
            v91 = v123;
          }

          *(i + v91) = 48;
          LODWORD(v91) = v123 + 1;
          *&v123 = v123 + 1;
        }

        v95 = v91;
        if (v91)
        {
          v96 = a2[1];
          v97 = v91 - 1;
          do
          {
            v98 = *(i + v97);
            if (v96 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v96 + 1, 1);
              v96 = a2[1];
            }

            *(*a2 + v96) = v98;
            v96 = a2[1] + 1;
            a2[1] = v96;
            --v97;
            --v95;
          }

          while (v95);
        }

        if (i != &v124)
        {
          free(i);
        }

LABEL_221:
        if (v126 >= 0x41 && v125)
        {
          operator delete[]();
        }

        if (v128 >= 0x41 && v127)
        {
          operator delete[]();
        }

        if (__dst != v131)
        {
          free(__dst);
        }

        if (v119 >= 0x41 && v118)
        {
          operator delete[]();
        }

        if (v121 >= 0x41 && v120)
        {
          operator delete[]();
        }

        return;
      }

      if (v29 <= v76)
      {
LABEL_194:
        v84 = 101;
        goto LABEL_195;
      }

      v85 = v29 - v59 + 1;
      if (v83 + v85 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v83 + v85, 1);
        v83 = a2[1];
        if (v29 - v59 == -1)
        {
          goto LABEL_193;
        }
      }

      else if (v29 - v59 == -1)
      {
LABEL_193:
        v83 += v85;
        a2[1] = v83;
        goto LABEL_194;
      }

      memset((*a2 + v83), 48, v29 - v59 + 1);
      v83 = a2[1];
      goto LABEL_193;
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

void *sub_10002ABB0(void *result)
{
  if (*result == &unk_1002AFF8C)
  {
    return sub_10002B154(result);
  }

  if ((*(*result + 8) - 64) <= 0xFFFFFF7F)
  {
    if (result[1])
    {
      operator delete[]();
    }
  }

  return result;
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  if (v2)
  {
    operator new[]();
  }

  result[1] = 0;
  return result;
}

__n128 llvm::detail::DoubleAPFloat::DoubleAPFloat(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a2->n128_u64[0] = &unk_1002B0130;
  return result;
}

llvm::detail::IEEEFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::IEEEFloat *a1, llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  v4 = a2;
  if (*a1 != *a2 || (v9 = *(a2 + 1)) == 0)
  {
    v6 = 0;
    v7 = a1;
    if (a1 != v4)
    {
LABEL_3:
      sub_10002B154(v7);
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
  v11 = *v9;
  if (*v10 != &unk_1002AFF8C)
  {
    if (v11 != &unk_1002AFF8C)
    {
      llvm::detail::IEEEFloat::operator=(v10, v9, a3, a4);
      goto LABEL_22;
    }

    if (v10 == v9)
    {
      goto LABEL_22;
    }

    if ((*(*v10 + 8) - 64) <= 0xFFFFFF7F && *(v10 + 1))
    {
      operator delete[]();
    }

LABEL_20:
    sub_10002C474(v10, v9, a3, a4);
    goto LABEL_22;
  }

  if (v11 == &unk_1002AFF8C)
  {
    llvm::detail::DoubleAPFloat::operator=(v10, v9, a3, a4);
    goto LABEL_22;
  }

  if (v10 != v9)
  {
    v13 = *(v4 + 1);
    v10 = sub_10002B154(v10);
    v9 = v13;
    goto LABEL_20;
  }

LABEL_22:
  v14 = *(v4 + 1);
  v4 = (v14 + 24);
  v15 = *(v14 + 24);
  v16 = *(a1 + 1);
  v17 = (v16 + 24);
  v18 = *(v16 + 24);
  v19 = v15 == &unk_1002AFF8C;
  v6 = v18 == &unk_1002AFF8C;
  if (v18 != &unk_1002AFF8C)
  {
    v7 = a1;
    if (v15 != &unk_1002AFF8C)
    {
      goto LABEL_53;
    }

LABEL_24:
    if (v16 == v14)
    {
      goto LABEL_10;
    }

    if ((v18[2] - 64) <= 0xFFFFFF7F && *(v16 + 32))
    {
      operator delete[]();
    }

LABEL_32:
    sub_10002C474(v17, v4, a3, a4);
    goto LABEL_10;
  }

  if (v15 != &unk_1002AFF8C)
  {
    v7 = a1;
LABEL_30:
    if (v16 == v14)
    {
      v6 = v19;
      goto LABEL_10;
    }

    v17 = sub_10002B154(v17);
    v6 = v19;
    goto LABEL_32;
  }

  while (1)
  {
    v7 = v17;
    v20 = *(v4 + 1);
    if (!v20)
    {
      v6 = 1;
      if (v17 != v4)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    v21 = *(v17 + 1);
    v22 = *v20;
    if (*v21 == &unk_1002AFF8C)
    {
      if (v22 != &unk_1002AFF8C)
      {
        if (v21 == v20)
        {
          goto LABEL_46;
        }

        v23 = *(v4 + 1);
        v21 = sub_10002B154(v21);
        v20 = v23;
        goto LABEL_44;
      }

      llvm::detail::DoubleAPFloat::operator=(v21, v20, a3, a4);
    }

    else
    {
      if (v22 != &unk_1002AFF8C)
      {
        llvm::detail::IEEEFloat::operator=(v21, v20, a3, a4);
        goto LABEL_46;
      }

      if (v21 != v20)
      {
        if ((*(*v21 + 8) - 64) <= 0xFFFFFF7F && *(v21 + 1))
        {
          operator delete[]();
        }

LABEL_44:
        sub_10002C474(v21, v20, a3, a4);
      }
    }

LABEL_46:
    v14 = *(v4 + 1);
    v4 = (v14 + 24);
    v24 = *(v14 + 24);
    v16 = *(v7 + 1);
    v17 = (v16 + 24);
    v18 = *(v16 + 24);
    if (v18 != &unk_1002AFF8C)
    {
      break;
    }

    if (v24 != &unk_1002AFF8C)
    {
      goto LABEL_30;
    }
  }

  if (v24 == &unk_1002AFF8C)
  {
    goto LABEL_24;
  }

LABEL_53:
  llvm::detail::IEEEFloat::operator=(v17, v4, a3, a4);
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

uint64_t sub_10002B154(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = (v1 + 24 * v2 - 24);
      v4 = -24 * v2;
      do
      {
        if (*v3 == &unk_1002AFF8C)
        {
          sub_10002B154(v3);
        }

        else if ((*(*v3 + 8) - 64) <= 0xFFFFFF7F)
        {
          if (v3[1])
          {
            operator delete[]();
          }
        }

        v3 -= 3;
        v4 += 24;
      }

      while (v4);
    }

    operator delete[]();
  }

  return result;
}

uint64_t llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(llvm::detail::DoubleAPFloat *this@<X0>, unsigned int a2@<W3>, llvm::APInt *a3@<X8>)
{
  v5 = *(this + 1);
  if (*v5 == &unk_1002AFF8C)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v5, a2, &v14);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v5, &v14);
  }

  v7 = &v14;
  if (v15 >= 0x41)
  {
    v7 = v14;
  }

  v16 = *v7;
  v8 = *(this + 1);
  v10 = *(v8 + 24);
  v9 = (v8 + 24);
  if (v10 == &unk_1002AFF8C)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v9, v6, &v12);
    if (v13 <= 0x40)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17 = *v12;
    operator delete[]();
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v9, &v12);
  if (v13 > 0x40)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = v12;
  if (v15 >= 0x41 && v14)
  {
    operator delete[]();
  }

  return llvm::APInt::APInt(a3, 128, 2u, &v16);
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(uint64_t a1, uint64_t a2)
{
  result = sub_10002B3E4(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = (*(a1 + 8) + 24);
    v6 = (*(a2 + 8) + 24);

    return sub_10002B3E4(v5, v6);
  }

  return result;
}

uint64_t sub_10002B3E4(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a2;
  v6 = a1;
  while (v2 == &unk_1002AFF8C)
  {
    result = sub_10002B3E4(v6[1], v5[1]);
    if (!result)
    {
      return result;
    }

    v7 = v6[1];
    v8 = *(v7 + 24);
    v6 = (v7 + 24);
    v2 = v8;
    v9 = v5[1];
    v10 = *(v9 + 24);
    v5 = (v9 + 24);
    v3 = v10;
    if (v2 != v10)
    {
      return 0;
    }
  }

  if (v6 == v5)
  {
    return 1;
  }

  v11 = *(v6 + 20);
  v12 = *(v5 + 20);
  if ((v11 & 7) != (v12 & 7) || ((v12 ^ v11) & 8) != 0)
  {
    return 0;
  }

  result = 1;
  if ((v11 & 7) == 0 || (v11 & 7) == 3)
  {
    return result;
  }

  if ((v11 & 6) != 0 && *(v6 + 4) != *(v5 + 4))
  {
    return 0;
  }

  v13 = *(v2 + 8);
  v14 = v6 + 1;
  if ((v13 - 64) <= 0xFFFFFF7F)
  {
    v14 = *v14;
  }

  v15 = (v13 + 64) >> 6;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v18 = v5[1];
  v17 = v5 + 1;
  v16 = v18;
  if ((*(v3 + 8) - 64) >= 0xFFFFFF80)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  return memcmp(v14, v19, 8 * v15) == 0;
}

unint64_t llvm::detail::hash_value(void *a1, const llvm::detail::DoubleAPFloat *a2)
{
  v3 = a1[1];
  if (!v3)
  {
    v10 = HIDWORD(*a1) ^ 0xFF51AFD7ED558CCDLL;
    v11 = 0x9DDFEA08EB382D69 * ((8 * *a1 + 8) ^ v10);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  }

  if (*v3 == &unk_1002AFF8C)
  {
    v5 = llvm::detail::hash_value(v3, a2);
    v13 = a1[1];
    v14 = *(v13 + 24);
    v7 = (v13 + 24);
    if (v14 != &unk_1002AFF8C)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = llvm::detail::hash_value(v7, v4);
    goto LABEL_8;
  }

  v5 = llvm::detail::hash_value(v3, a2);
  v6 = a1[1];
  v8 = *(v6 + 24);
  v7 = (v6 + 24);
  if (v8 == &unk_1002AFF8C)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = llvm::detail::hash_value(v7, v4);
LABEL_8:
  v15 = __ROR8__(v9 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)))) >> 47))) ^ v9;
}

unint64_t llvm::hash_value(llvm::detail *a1, const llvm::detail::IEEEFloat *a2)
{
  if (*a1 == &unk_1002AFF8C)
  {
    return llvm::detail::hash_value(a1, a2);
  }

  else
  {
    return llvm::detail::hash_value(a1, a2);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString(unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  llvm::detail::IEEEFloat::IEEEFloat(&v11, &unk_1002AFFA8, a3, a4);
  if (v11 == &unk_1002AFF8C)
  {
    llvm::detail::DoubleAPFloat::convertFromString(&v11, a2, a3, a4, a5);
    if (v11 != &unk_1002AFF8C)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::convertFromString(&v11, a2, a3, a4, a5);
    if (v11 != &unk_1002AFF8C)
    {
LABEL_3:
      llvm::detail::IEEEFloat::bitcastToAPInt(&v11, v10);
      goto LABEL_6;
    }
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v11, v9, v10);
LABEL_6:
  v10[2] = &unk_1002AFF8C;
  operator new[]();
}

llvm *llvm::APFloat::convertFromString@<X0>(llvm *result@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*result == &unk_1002AFF8C)
  {
    llvm::detail::DoubleAPFloat::convertFromString(a2, a3, a4, a5);
  }

  return llvm::detail::IEEEFloat::convertFromString(result, a2, a3, a4, a5);
}

void llvm::detail::DoubleAPFloat::toString(llvm::detail::DoubleAPFloat *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, a4, &v12);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v14, &v12, v9, v10);
  if (v14[0] == &unk_1002AFF8C)
  {
    llvm::detail::DoubleAPFloat::toString(v14, a2, a3, a4, a5);
    v11 = v14[0];
    if (v14[0] != &unk_1002AFF8C)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10002B154(v14);
    goto LABEL_8;
  }

  llvm::detail::IEEEFloat::toString(v14, a2, a3, a4, a5);
  v11 = v14[0];
  if (v14[0] == &unk_1002AFF8C)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((*(v11 + 8) - 64) <= 0xFFFFFF7F && v14[1])
  {
    operator delete[]();
  }

LABEL_8:
  if (v13 >= 0x41)
  {
    if (v12)
    {
      operator delete[]();
    }
  }
}

uint64_t llvm::APFloat::Storage::Storage(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if (a3 == &unk_1002AFF8C)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 20);
    *a2 = &unk_1002B0130;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8 & 0xF;
    llvm::APFloat::Storage::Storage(&v11, &v12, v5);
    if ((v12[2] - 64) <= 0xFFFFFF7F && v13)
    {
      operator delete[]();
    }

    llvm::detail::IEEEFloat::IEEEFloat(&v12, &unk_1002AFF54, v9, v10);
    *v3 = &unk_1002AFF8C;
    operator new[]();
  }

  *a1 = &unk_1002B0130;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 20) & 0xF8 | *(a2 + 20) & 7;
  *(a1 + 20) = v4;
  *(a1 + 20) = v4 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &unk_1002B0130;
  return a1;
}

uint64_t *llvm::APFloat::APFloat(uint64_t *a1, void *a2, unsigned __int8 *a3, size_t a4)
{
  if (a2 == &unk_1002AFF8C)
  {
    *a1 = &unk_1002AFF8C;
    operator new[]();
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1, a2, a3, a4);
  if (*a1 == &unk_1002AFF8C)
  {
    llvm::detail::DoubleAPFloat::convertFromString(a3, a4, 1, &v12);
  }

  llvm::detail::IEEEFloat::convertFromString(a1, a3, a4, 1, &v12);
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
  sub_10002C548(&v10, &v11);
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

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  if (*a1 == a2)
  {
    result = 0;
    *a4 = 0;
  }

  else if (*a1 == &unk_1002AFF8C)
  {
    v7 = llvm::detail::IEEEFloat::convert(*(a1 + 8), a2, a3, a4);
    v8 = *a1;
    v9 = a1;
    if (*a1 == &unk_1002AFF8C)
    {
      v9 = *(a1 + 8);
      v8 = *v9;
    }

    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 20) & 0xF;
    *v9 = &unk_1002B0130;
    v16 = v8;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    llvm::APFloat::Storage::Storage(&v15, &v16, a2);
    if ((v16[2] - 64) <= 0xFFFFFF7F && v17)
    {
      operator delete[]();
    }

    sub_10002C304(a1, &v15);
    if (v15 == &unk_1002AFF8C)
    {
      sub_10002B154(&v15);
    }

    else if ((*(v15 + 8) - 64) <= 0xFFFFFF7F && *(&v15 + 1))
    {
      operator delete[]();
    }

    return v7;
  }

  else
  {
    if (a2 == &unk_1002AFF8C)
    {
      llvm::detail::IEEEFloat::convert(a1, &unk_1002AFFA8, a3, a4);
      llvm::detail::IEEEFloat::bitcastToAPInt(a1, &v14);
      v16 = &unk_1002AFF8C;
      operator new[]();
    }

    return llvm::detail::IEEEFloat::convert(a1, a2, a3, a4);
  }

  return result;
}

double llvm::APFloat::convertToDouble(llvm::APFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*this == &unk_1002AFF54)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(this, &v10);
    if (v11 <= 0x40)
    {
      return v10;
    }

LABEL_14:
    operator delete[]();
  }

  sub_10002C474(&v10, this, a3, a4);
  llvm::APFloat::convert(&v10, &unk_1002AFF54, 1, &v7);
  if (*&v10 == &unk_1002AFF8C)
  {
    v4 = v11;
  }

  else
  {
    v4 = &v10;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v4, &v8);
  if (v9 > 0x40)
  {
    operator delete[]();
  }

  v5 = v8;
  if (*&v10 == &unk_1002AFF8C)
  {
    sub_10002B154(&v10);
    return v5;
  }

  if ((*(*&v10 + 8) - 64) <= 0xFFFFFF7F && v11)
  {
    goto LABEL_14;
  }

  return v5;
}

float llvm::APFloat::convertToFloat(llvm::APFloat *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*this == &unk_1002AFF38)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(this, &v10);
    if (v11 <= 0x40)
    {
      return *&v10;
    }

LABEL_14:
    operator delete[]();
  }

  sub_10002C474(&v10, this, a3, a4);
  llvm::APFloat::convert(&v10, &unk_1002AFF38, 1, &v7);
  if (v10 == &unk_1002AFF8C)
  {
    v4 = v11;
  }

  else
  {
    v4 = &v10;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v4, &v8);
  if (v9 > 0x40)
  {
    operator delete[]();
  }

  v5 = *&v8;
  if (v10 == &unk_1002AFF8C)
  {
    sub_10002B154(&v10);
    return v5;
  }

  if ((*(v10 + 8) - 64) <= 0xFFFFFF7F && v11)
  {
    goto LABEL_14;
  }

  return v5;
}

__int128 *sub_10002C304(__int128 *result, __int128 *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != &unk_1002AFF8C)
  {
    if (v4 != &unk_1002AFF8C)
    {
      if ((*(v3 + 8) - 64) <= 0xFFFFFF7F)
      {
        if (*(result + 1))
        {
          operator delete[]();
        }
      }

      *result = v4;
LABEL_16:
      *(result + 1) = *(a2 + 1);
      *(result + 4) = *(a2 + 4);
      v5 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
      *(result + 20) = v5;
      *(result + 20) = v5 & 0xF7 | *(a2 + 20) & 8;
LABEL_17:
      *a2 = &unk_1002B0130;
      return result;
    }

    if (result == a2)
    {
      return result;
    }

    if ((*(v3 + 8) - 64) <= 0xFFFFFF7F && *(result + 1))
    {
      operator delete[]();
    }

LABEL_14:
    if (*a2 == &unk_1002AFF8C)
    {
      v7 = *(a2 + 1);
      *(a2 + 1) = 0;
      *result = &unk_1002AFF8C;
      *(result + 1) = v7;
      goto LABEL_17;
    }

    *result = &unk_1002B0130;
    *result = *a2;
    goto LABEL_16;
  }

  if (v4 != &unk_1002AFF8C)
  {
    if (result == a2)
    {
      return result;
    }

    result = sub_10002B154(result);
    goto LABEL_14;
  }

  if (result != a2)
  {
    result = sub_10002B154(result);
    v6 = *a2;
    *(a2 + 1) = 0;
    *result = v6;
    goto LABEL_17;
  }

  return result;
}

llvm::detail::IEEEFloat *sub_10002C474(llvm::detail::IEEEFloat *result, const llvm::detail::IEEEFloat *a2, uint64_t a3, unsigned int a4)
{
  if (*a2 != &unk_1002AFF8C)
  {
    return llvm::detail::IEEEFloat::IEEEFloat(result, a2, a3, a4);
  }

  *result = &unk_1002AFF8C;
  if (*(a2 + 1))
  {
    operator new[]();
  }

  *(result + 1) = 0;
  return result;
}

void **sub_10002C548@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
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
          sub_10002C7B4(&v10, &v9, &v11);
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

void sub_10002C7B4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
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
    sub_10002CBE8(v13, v14, &v17);
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
    sub_10002CAC8(v8 + 8, &v17);
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
    sub_10002CAC8(v8 + 8, v11++);
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

void sub_10002CAC8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_100003FC0();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_100003FC0();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

char *sub_10002CBE8(void *a1, char *a2, uint64_t *a3)
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
    sub_100003FC0();
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

    sub_100003FC0();
  }

  v30 = 0;
  v31 = 8 * (&a2[-v11] >> 3);
  v32 = v31;
  sub_10002CE1C(&v30, a3);
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

void sub_10002CE1C(unint64_t *a1, uint64_t *a2)
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

      sub_100003FC0();
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

char *sub_10002D050(char *a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
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

unint64_t sub_10002D330(unint64_t __src, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    if (__src == a3 || a3 == a4)
    {
      goto LABEL_43;
    }

    if ((__src + 1) == a3)
    {
      v15 = *__src;
      v16 = (a4 - a3);
      v17 = __src;
      v18 = a2;
      v19 = a3;
      memmove(__src, (__src + 1), a4 - a3);
      a2 = v18;
      a3 = v19;
      __src = v17;
      v16[v17] = v15;
LABEL_43:
      v50 = *(__src + 72);
      v51 = *(__src + 88);
      v52 = *(__src + 8);
      v53 = *(__src + 96);
      v54 = *(__src + 104);
      v56 = *(__src + 48);
      v55 = *(__src + 56);
      v57 = *(__src + 112);
      v58 = v57 ^ (0xB492B66FBE98F273 * __ROR8__(v50 + *(__src + 64) + v51 + v52, 37));
      v59 = v51 - 0x4B6D499041670D8DLL * __ROR8__(v53 + v50 + v56, 42);
      v60 = v54 + *(__src + 80);
      v61 = *__src - 0x4B6D499041670D8DLL * v53;
      v62 = v61 + v54;
      v64 = *(__src + 16);
      v63 = *(__src + 24);
      v65 = v61 + v52 + v64;
      v66 = *(__src + 40);
      v67 = v59 + v66;
      v68 = __ROR8__(v60, 33);
      v69 = __ROR8__(v62 + v63 + v58, 21) + v61 + __ROR8__(v65, 44);
      v70 = v65 + v63;
      v71 = v64 + v67;
      v72 = *(__src + 32) + v57 - 0x4B6D499041670D8DLL * v68;
      v73 = v66 + v56 + v72;
      v74 = __ROR8__(v72 + v55 + v71, 21) + v72 + __ROR8__(v73, 44);
      *(__src + 88) = v70;
      *(__src + 96) = v69;
      *(__src + 104) = v73 + v55;
      *(__src + 112) = v74;
      *(__src + 72) = v67;
      *(__src + 80) = v58;
      *(__src + 64) = 0xB492B66FBE98F273 * v68;
      v75 = 0x9DDFEA08EB382D69 * (v74 ^ ((0x9DDFEA08EB382D69 * (v74 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v74 ^ v69)));
      v76 = 0xB492B66FBE98F273 * (v68 + (&a3[a2 - __src] ^ (&a3[a2 - __src] >> 47))) - 0x622015F714C7D297 * (v75 ^ (v75 >> 47));
      v77 = 0x9DDFEA08EB382D69 * (v76 ^ (v58 - 0x4B6D499041670D8DLL * (v67 ^ (v67 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)))) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)))) >> 47))));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v76 ^ (v77 >> 47) ^ v77)) ^ ((0x9DDFEA08EB382D69 * (v76 ^ (v77 >> 47) ^ v77)) >> 47));
    }

    if (a3 + 1 == a4)
    {
      v20 = *(a4 - 1);
      if (a4 - 1 != __src)
      {
        v21 = __src;
        v22 = a2;
        v23 = a3;
        memmove((__src + 1), __src, &a4[-__src - 1]);
        a2 = v22;
        a3 = v23;
        __src = v21;
      }

      *__src = v20;
      goto LABEL_43;
    }

    v5 = &a3[-__src];
    v6 = a4 - a3;
    if (&a3[-__src] != (a4 - a3))
    {
      v24 = &a3[-__src];
      do
      {
        v25 = v24;
        v24 = v6;
        v6 = v25 % v6;
      }

      while (v6);
      v26 = &v24[__src];
      do
      {
        v28 = *--v26;
        v27 = v28;
        v29 = &v5[v26];
        v30 = v26;
        do
        {
          v31 = v30;
          v30 = v29;
          *v31 = *v29;
          v32 = (a4 - v29);
          v33 = __OFSUB__(v5, v32);
          v35 = v5 - v32;
          v34 = (v35 < 0) ^ v33;
          v29 = (__src + v35);
          if (v34)
          {
            v29 = &v5[v30];
          }
        }

        while (v29 != v26);
        *v30 = v27;
      }

      while (v26 != __src);
      goto LABEL_43;
    }

    v7 = &a4[~a3];
    if (v7 >= &a3[~__src])
    {
      v7 = &a3[~__src];
    }

    v8 = (v7 + 1);
    v9 = a3;
    v10 = __src;
    if (v8 >= 8)
    {
      if (&a3[v8] <= __src || (v9 = a3, v10 = __src, __src + v8 <= a3))
      {
        if (v8 >= 0x20)
        {
          v11 = v8 & 0xFFFFFFFFFFFFFFE0;
          v36 = (__src + 16);
          v37 = (a3 + 16);
          v38 = v8 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v39 = *(v36 - 1);
            v40 = *v36;
            v41 = *v37;
            *(v36 - 1) = *(v37 - 1);
            *v36 = v41;
            *(v37 - 1) = v39;
            *v37 = v40;
            v36 += 2;
            v37 += 2;
            v38 -= 32;
          }

          while (v38);
          if (v8 == v11)
          {
            goto LABEL_43;
          }

          if ((v8 & 0x18) == 0)
          {
            v10 = __src + v11;
            v9 = &a3[v11];
            goto LABEL_39;
          }
        }

        else
        {
          v11 = 0;
        }

        v9 = &a3[v8 & 0xFFFFFFFFFFFFFFF8];
        v10 = __src + (v8 & 0xFFFFFFFFFFFFFFF8);
        v42 = (__src + v11);
        v43 = &a3[v11];
        v44 = v11 - (v8 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v45 = *v42;
          *v42++ = *v43;
          *v43 = v45;
          v43 += 8;
          v44 += 8;
        }

        while (v44);
        if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }
    }

LABEL_39:
    v46 = v9 + 1;
    v47 = (v10 + 1);
    do
    {
      v48 = *(v47 - 1);
      *(v47 - 1) = *(v46 - 1);
      *(v46 - 1) = v48;
      if (v47 == a3)
      {
        break;
      }

      ++v47;
    }

    while (v46++ != a4);
    goto LABEL_43;
  }

  v12 = &a3[-__src];
  v13 = *(__src + 120);

  return sub_10002D6F8(__src, v12, v13);
}

unint64_t sub_10002D6F8(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 > 4)
  {
    if (a2 - 9 > 7)
    {
      if (a2 - 17 > 0xF)
      {
        if (a2 < 0x21)
        {
          if (a2)
          {
            v32 = (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(a1 + a2 - 1))) ^ a3;
            return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
          }

          else
          {
            return a3 ^ 0x9AE16A3B2F90404FLL;
          }
        }

        else
        {
          v12 = a1 + a2;
          v13 = *(a1 + a2 - 16);
          v14 = *(a1 + a2 - 8);
          v15 = *a1 - 0x3C5A37A36834CED9 * (v13 + a2);
          v17 = a1[2];
          v16 = a1[3];
          v18 = __ROR8__(v15 + v16, 52);
          v19 = v15 + a1[1];
          v20 = __ROR8__(v19, 7);
          v21 = v19 + v17;
          v22 = v20 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v13 + a2), 37) + v18;
          v23 = *(a1 + a2 - 32) + v17;
          v24 = __ROR8__(v23 + v14, 52);
          v25 = v22 + __ROR8__(v21, 31);
          v26 = __ROR8__(v23, 37);
          v27 = *(v12 - 3) + v23;
          v28 = __ROR8__(v27, 7);
          v29 = v27 + v13;
          v30 = __ROR8__(v29, 31);
          v31 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v29 + v14 + v25) - 0x651E95C4D06FBFB1 * (v21 + v16 + v26 + v24 + v28 + v30)) ^ ((0xC3A5C85C97CB3127 * (v29 + v14 + v25) - 0x651E95C4D06FBFB1 * (v21 + v16 + v26 + v24 + v28 + v30)) >> 47))) ^ a3) + v25;
          return 0x9AE16A3B2F90404FLL * (v31 ^ (v31 >> 47));
        }
      }

      else
      {
        v8 = a1[1];
        v9 = 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
        v10 = __ROR8__(0xB492B66FBE98F273 * *a1 - v8, 43) - 0x3C5A37A36834CED9 * *(a1 + a2 - 16) + __ROR8__(v9 ^ a3, 30);
        v11 = a3 + a2 + __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *a1 - v9;
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 8);
      v7 = __ROR8__(v6 + a2, a2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)))) >> 47))) ^ v6;
    }
  }

  else
  {
    v3 = *(a1 + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *a1));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  }
}

unint64_t sub_10002D970(void *a1, uint64_t a2)
{
  v4 = a2 - a1;
  if (v4 > 0x40)
  {
    v6 = a1[1];
    v7 = a1[6];
    v8 = a1[7];
    v9 = (0xB492B66FBE98F273 * __ROR8__(v6 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v10 = a1[5];
    v11 = v10 - 0x4B6D499041670D8DLL * __ROR8__(v7 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v12 = *a1 + 0x298DF016A9F64655;
    v13 = a1[2];
    v14 = a1[3];
    v15 = v12 + v6 + v13;
    v16 = 0x544962662A7EE1A4;
    v17 = __ROR8__(v15, 44) + v12 + __ROR8__(v9 + v12 + v14 - 0xAE502812AB8D92, 21);
    v18 = v15 + v14;
    v19 = a1[4] + 0x4BF62CB950C3753ALL;
    v20 = v10 + v7 + v19;
    v21 = __ROR8__(v20, 44) + v19 + __ROR8__(v11 + v13 + v19 + v8, 21);
    v22 = v20 + v8;
    v23 = (v4 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v4 & 0xFFFFFFFFFFFFFFC0) == 0x40)
    {
      v24 = v9;
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v25 = a1 + 15;
      do
      {
        v26 = *(v25 - 6);
        v27 = v11 + v18 + v16 + v26;
        v28 = *(v25 - 1);
        v29 = *(v25 - 2);
        v11 = v29 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v28, 42);
        v30 = v9 + v22;
        v31 = *(v25 - 7) - 0x4B6D499041670D8DLL * v17;
        v32 = *(v25 - 5);
        v33 = *(v25 - 4);
        v34 = v31 + v26 + v32;
        v24 = (0xB492B66FBE98F273 * __ROR8__(v27, 37)) ^ v21;
        v17 = __ROR8__(v34, 44) + v31 + __ROR8__(v24 + v22 + v31 + v33, 21);
        v16 = 0xB492B66FBE98F273 * __ROR8__(v30, 33);
        v18 = v34 + v33;
        v35 = v16 + v21 + *(v25 - 3);
        v36 = v29 + v28 + v35;
        v21 = __ROR8__(v11 + v32 + v35 + *v25, 21) + v35 + __ROR8__(v36, 44);
        v22 = v36 + *v25;
        v25 += 8;
        v9 = v24;
        v23 -= 64;
      }

      while (v23);
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    v37 = *(a2 - 56);
    v39 = *(a2 - 16);
    v38 = *(a2 - 8);
    v40 = v24 + v22;
    v41 = (0xB492B66FBE98F273 * __ROR8__(v11 + v18 + v16 + v37, 37)) ^ v21;
    v43 = *(a2 - 32);
    v42 = *(a2 - 24);
    v11 = v42 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v39, 42);
    v44 = v41 + v22;
    v45 = *(a2 - 64) - 0x4B6D499041670D8DLL * v17;
    v48 = a2 - 48;
    v46 = *(a2 - 48);
    v47 = *(v48 + 8);
    v49 = v45 + v37 + v46;
    v16 = 0xB492B66FBE98F273 * __ROR8__(v40, 33);
    v17 = __ROR8__(v49, 44) + v45 + __ROR8__(v44 + v45 + v47, 21);
    v18 = v49 + v47;
    v50 = v16 + v21 + v43;
    v51 = v42 + v39 + v50;
    v21 = __ROR8__(v11 + v46 + v50 + v38, 21) + v50 + __ROR8__(v51, 44);
    v22 = v51 + v38;
    v24 = v41;
LABEL_12:
    v52 = 0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v21)));
    v53 = v16 - 0x4B6D499041670D8DLL * (v4 ^ (v4 >> 47)) - 0x622015F714C7D297 * (v52 ^ (v52 >> 47));
    v54 = 0x9DDFEA08EB382D69 * ((v24 - 0x4B6D499041670D8DLL * (v11 ^ (v11 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) >> 47))) ^ v53);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
  }

  return sub_10002D6F8(a1, v4, 0xFF51AFD7ED558CCDLL);
}

char *sub_10002DCBC(char *a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
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
    v31 = 8 - v8;
    v32 = &a1[8 - v8];
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
  v31 = 8 - v8;
  v32 = &a1[8 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
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

uint64_t llvm::APInt::operator*=(uint64_t a1, uint64_t *a2)
{
  llvm::APInt::operator*(a1, a2, &v4);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    operator delete[]();
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

void llvm::APInt::zext(uint64_t *__return_ptr a1@<X8>, llvm::APInt *this@<X0>, unsigned int a3@<W1>)
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
  *a1 = v4;
}

unint64_t llvm::hash_value(llvm *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = sub_10002D970(*this, *this + (((v2 + 63) >> 3) & 0x3FFFFFF8));
    *&v7[4] = 0u;
    v8 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v14 = 0xFF51AFD7ED558CCDLL;
    __src = *(this + 2);
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
    __src = v2;
    *v7 = *this;
  }

  return sub_10002D330(&__src, 0, &v7[8], &v10 + 8);
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

void *llvm::APInt::sext@<X0>(void *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 0x40)
  {
    if (*(this + 2) == a2)
    {
      *(a3 + 8) = a2;
      operator new[]();
    }

    operator new[]();
  }

  v4 = *(this + 2);
  v5 = (*this << -v4) >> -v4;
  if (!v4)
  {
    v5 = 0;
  }

  *(a3 + 8) = a2;
  v6 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
  if (!a2)
  {
    v6 = 0;
  }

  *a3 = v5 & v6;
  return this;
}

uint64_t *llvm::APInt::sextOrTrunc@<X0>(uint64_t *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      *(a3 + 8) = v4;
      if (v4 > 0x40)
      {
        operator new[]();
      }

      *a3 = *this;
    }

    else
    {

      return llvm::APInt::trunc(a3, this, a2);
    }
  }

  else
  {

    return llvm::APInt::sext(this, a2, a3);
  }

  return this;
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

void llvm::APInt::udiv(unint64_t *__return_ptr a1@<X8>, const void **this@<X0>, unint64_t **a3@<X1>)
{
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    v5 = 0;
    v6 = (v3 + 63) >> 6;
    v7 = *this;
    v8 = v6 + 1;
    while (1)
    {
      v9 = v7[(v8 - 2)];
      if (v9)
      {
        break;
      }

      v5 += 64;
      if (--v8 <= 1)
      {
        goto LABEL_8;
      }
    }

    v5 += __clz(v9);
LABEL_8:
    v10 = v3 | 0xFFFFFFC0;
    if ((v3 & 0x3F) == 0)
    {
      v10 = 0;
    }

    v11 = v5 + v10;
    v12 = *(a3 + 2);
    if (v12 > 0x40)
    {
      v15 = 0;
      v13 = *a3;
      v16 = ((v12 + 63) >> 6) + 1;
      while (1)
      {
        v17 = v13[(v16 - 2)];
        if (v17)
        {
          break;
        }

        v15 += 64;
        if (--v16 <= 1)
        {
          goto LABEL_18;
        }
      }

      v15 += __clz(v17);
LABEL_18:
      v18 = v12 | 0xFFFFFFC0;
      if ((v12 & 0x3F) == 0)
      {
        v18 = 0;
      }

      v14 = v15 + v18;
      if (v3 == v11)
      {
LABEL_24:
        *(a1 + 2) = v3;
        operator new[]();
      }
    }

    else
    {
      v13 = *a3;
      v14 = v12 + __clz(*a3) - 64;
      if (v3 == v11)
      {
        goto LABEL_24;
      }
    }

    v19 = (v12 - v14);
    if (v19 == 1)
    {
      *(a1 + 2) = v3;
      operator new[]();
    }

    v20 = ((v3 - v11) + 63) >> 6;
    if (v20 >= (v19 + 63) >> 6)
    {
      v21 = v6;
      do
      {
        if (!(v21 * 8))
        {
          goto LABEL_29;
        }

        v22 = v7[v21 - 1];
        v23 = v13[--v21];
      }

      while (v22 == v23);
      if (v22 > v23)
      {
LABEL_29:
        if (memcmp(*this, v13, ((v3 + 63) >> 3) & 0x3FFFFFF8))
        {
          if (v20 == 1)
          {
            *(a1 + 2) = v3;
            operator new[]();
          }

          *(a1 + 2) = v3;
          operator new[]();
        }

        *(a1 + 2) = v3;
        operator new[]();
      }
    }

    goto LABEL_24;
  }

  v4 = *this / *a3;
  *(a1 + 2) = v3;
  *a1 = v4;
}

void llvm::APInt::divide(llvm::APInt *this, const unint64_t *a2, int32x4_t *a3, const unint64_t *a4, int8x16_t *a5, int8x16_t *a6, unint64_t *a7)
{
  v166 = a5;
  v164 = a3;
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
          v56 = &v170[v54 + 16];
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
              if ((v98 / v99) == &_mh_execute_header || (v102 = v98 / v99, v100 * v15->u32[v94] > (v168[(v97 - 2)] | (v101 << 32))))
              {
                v102 = v100 - 1;
                v103 = v101 + v99;
                if (!HIDWORD(v103) && (v102 == &_mh_execute_header || v102 * v15->u32[v94] > (v168[(v97 - 2)] | (v103 << 32))))
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

void llvm::APInt::udivrem(llvm::APInt *this, const llvm::APInt *a2, const llvm::APInt *a3, llvm::APInt *a4, llvm::APInt *a5, uint64_t a6, unint64_t *a7)
{
  v9 = *(this + 2);
  if (v9 <= 0x40)
  {
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      operator delete[]();
    }

    v10 = *this % *a2;
    *a3 = *this / *a2;
    *(a3 + 2) = v9;
    if (*(a4 + 2) >= 0x41u)
    {
      if (*a4)
      {
        operator delete[]();
      }
    }

    *a4 = v10;
    *(a4 + 2) = v9;
    return;
  }

  v11 = 0;
  v12 = (v9 + 63) >> 6;
  v13 = v12 + 1;
  while (1)
  {
    v14 = *(*this + 8 * (v13 - 2));
    if (v14)
    {
      break;
    }

    v11 += 64;
    if (--v13 <= 1)
    {
      goto LABEL_14;
    }
  }

  v11 += __clz(v14);
LABEL_14:
  v15 = v9 | 0xFFFFFFC0;
  if ((v9 & 0x3F) == 0)
  {
    v15 = 0;
  }

  v16 = v11 + v15;
  v17 = *(a2 + 2);
  if (v17 <= 0x40)
  {
    v18 = v17 + __clz(*a2) - 64;
    if (v9 != v16)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator new[]();
  }

  v24 = 0;
  v25 = ((v17 + 63) >> 6) + 1;
  while (1)
  {
    v26 = *(*a2 + 8 * (v25 - 2));
    if (v26)
    {
      break;
    }

    v24 += 64;
    if (--v25 <= 1)
    {
      goto LABEL_27;
    }
  }

  v24 += __clz(v26);
LABEL_27:
  v27 = v17 | 0xFFFFFFC0;
  if ((v17 & 0x3F) == 0)
  {
    v27 = 0;
  }

  v18 = v24 + v27;
  if (v9 == v16)
  {
    goto LABEL_30;
  }

LABEL_18:
  v19 = ((v9 - v16) + 63) >> 6;
  v20 = (v17 - v18);
  v21 = (v20 + 63) >> 6;
  v22 = *(this + 2);
  if (v20 == 1)
  {
    if (a3 != this)
    {
      v23 = *(a3 + 2);
      if (v12 != (v23 + 63) >> 6)
      {
        if (v23 >= 0x41 && *a3)
        {
          operator delete[]();
        }

        *(a3 + 2) = v9;
        operator new[]();
      }

      *(a3 + 2) = v9;
      memcpy(*a3, *this, ((v9 + 63) >> 3) & 0x3FFFFFF8);
    }

    operator new[]();
  }

  if (v19 < v21)
  {
    goto LABEL_37;
  }

  if (v22 > 0x40)
  {
    v29 = *a2;
    v30 = (v22 + 63) >> 3;
    v31 = v30 & 0x3FFFFFF8;
    do
    {
      if (!v31)
      {
        goto LABEL_52;
      }

      v32 = *(*this + v31 - 8);
      v33 = *&v29[v31 - 8];
      v31 -= 8;
    }

    while (v32 == v33);
    if (v32 <= v33)
    {
LABEL_37:
      v28 = *(a4 + 2);
      if (v28 <= 0x40 && v22 <= 0x40)
      {
        *a4 = *this;
        *(a4 + 2) = *(this + 2);
        goto LABEL_76;
      }

      if (a4 != this)
      {
        if ((v22 + 63) >> 6 == (v28 + 63) >> 6)
        {
          *(a4 + 2) = v22;
          if (v22 > 0x40)
          {
            memcpy(*a4, *this, ((v22 + 63) >> 3) & 0x3FFFFFF8);
            goto LABEL_76;
          }
        }

        else
        {
          if (v28 >= 0x41 && *a4)
          {
            operator delete[]();
          }

          *(a4 + 2) = v22;
          if (v22 >= 0x41)
          {
            operator new[]();
          }
        }

        *a4 = *this;
      }

LABEL_76:
      operator new[]();
    }

LABEL_52:
    if (!memcmp(*this, v29, v30 & 0x3FFFFFF8))
    {
LABEL_43:
      operator new[]();
    }
  }

  else
  {
    if (*this < *a2)
    {
      goto LABEL_37;
    }

    if (*this == *a2)
    {
      goto LABEL_43;
    }
  }

  v34 = *(a3 + 2);
  if (v12 != (v34 + 63) >> 6)
  {
    if (v34 >= 0x41 && *a3)
    {
      operator delete[]();
    }

    *(a3 + 2) = v9;
    operator new[]();
  }

  *(a3 + 2) = v9;
  v35 = *(a4 + 2);
  if (v12 != (v35 + 63) >> 6)
  {
    if (v35 >= 0x41 && *a4)
    {
      operator delete[]();
    }

    *(a4 + 2) = v9;
    operator new[]();
  }

  *(a4 + 2) = v9;
  v37 = *this;
  if (v19 == 1)
  {
    v38 = *v37;
    v39 = **a2;
    v40 = *v37 / v39;
    sub_10003050C(a3, v40);

    sub_10003050C(a4, v38 - v40 * v39);
  }

  else
  {
    llvm::APInt::divide(v37, v19, *a2, v21, *a3, *a4, a7);
    bzero((*a3 + 8 * v19), (8 * (v12 - v19)));
    v36 = (*a4 + 8 * v21);

    bzero(v36, (8 * (v12 - v21)));
  }
}