uint64_t sub_23C500DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = 8 * v12;
    v14 = *a4;
    while (*v14 != a3)
    {
      ++v14;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = *a4;
  }

  if (v14 != (*a4 + 8 * v12))
  {
    return 0;
  }

LABEL_9:
  sub_23C49B500(a4, a3);
  v16 = *(a3 + 8);
  if (!v16)
  {
LABEL_41:
    result = 0;
    goto LABEL_42;
  }

  v17 = 0;
  do
  {
    v18 = *(v16 + 24);
    v19 = v18[16];
    if (v18 && v19 == 61)
    {
      v20 = *(v18 - 8);
      if (*(*v20 + 8) != 15 && (a5 & 1) == 0 && v20[16] != 75)
      {
        LOBYTE(v19) = 61;
LABEL_29:
        v22 = (((v19 - 75) >> 1) | ((v19 - 75) << 7));
        v23 = v22 > 5;
        v24 = (1 << v22) & 0x33;
        if (v23 || v24 == 0)
        {
          *a6 |= a5 ^ 1;
        }

        else
        {
          v17 = sub_23C500DF8(a1, a2, v18, a4, a5, a6);
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (!v18 || v19 != 60)
      {
        goto LABEL_29;
      }

      if (*(*v18 + 8) != 15 && a5 == 0)
      {
        LOBYTE(v19) = 60;
        goto LABEL_29;
      }

      if ((sub_23C500DF8(a1, a2, *(v16 + 24), a4, a5, a6) & 1) == 0)
      {
        LOBYTE(v19) = v18[16];
        goto LABEL_29;
      }
    }

    if ((a5 & 1) == 0)
    {
      *sub_23C501008(a1 + 2208, v18) = a2;
    }

    v17 = 1;
LABEL_34:
    v16 = *(v16 + 8);
  }

  while (v16);
  if ((v17 & 1) == 0)
  {
    goto LABEL_41;
  }

  if (*(a3 + 16) == 62)
  {
    *sub_23C501008(a1 + 2208, a3) = a2;
  }

  result = 1;
LABEL_42:
  --*(a4 + 8);
  return result;
}

void *sub_23C501008(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F1B7B0;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C4FB49C(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C4FB534(a1, &v7, v11);
    sub_23C4DDEAC((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

void sub_23C5010D0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v6);
  }

  else
  {
    sub_23C4F3D38();
    sub_23C501120(v2, v3, v4, v5);
  }
}

void sub_23C501120(uint64_t *a1, int **a2, uint64_t a3, BOOL a4)
{
  v37[8] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = **a2;
  if ((v6 - 3) >= 0xFFFFFFFE)
  {
    sub_23C49B500(a1[1], 0);
    v8 = v5[4];
    if (v8)
    {
      for (i = 0; i < v8; ++i)
      {
        if (*(*(v5 + 1) + 8 * i))
        {
          *(*a1[1] + 8 * *(a1[1] + 8) - 8) = llvm::ConstantInt::get();
          sub_23C5010D0(*(a1[3] + 24), *(*(v5 + 1) + 8 * i));
          v8 = v5[4];
        }
      }
    }

LABEL_22:
    --*(a1[1] + 8);
    return;
  }

  if (v6 <= 3)
  {
    if (v6)
    {
      if (v6 != 3)
      {
        return;
      }

      sub_23C49B500(a1[1], 0);
      if (v5[4])
      {
        v7 = 0;
        do
        {
          *(*a1[1] + 8 * *(a1[1] + 8) - 8) = llvm::ConstantInt::get();
          sub_23C5010D0(*(a1[3] + 24), *(v5 + 1));
          ++v7;
        }

        while (v7 < v5[4]);
      }
    }

    else
    {
      v13 = a1[1];
      v14 = llvm::ConstantInt::get();
      sub_23C49B500(v13, v14);
      sub_23C5010D0(*(a1[3] + 24), *(v5 + 1));
    }

    goto LABEL_22;
  }

  if (v6 != 4)
  {
    if (v6 == 5 && *(v5 + 244) == 1)
    {
      v10 = v5[60];
      IndexedOffsetInType = llvm::DataLayout::getIndexedOffsetInType();
      v12 = a1[5];

      sub_23C49786C(v12, v10 | (IndexedOffsetInType << 32), 8);
    }

    return;
  }

  v15 = llvm::DataLayout::getIndexedOffsetInType() << 32;
  if (*(v5 + 268) == 1)
  {
    v15 |= v5[66];
    sub_23C49786C(a1[5], v15, 8);
  }

  v16 = *(v5 + 30);
  if (!v16)
  {
    v26 = 0;
    v27 = 0u;
    *__p = 0u;
    v29 = 1065353216;
    goto LABEL_63;
  }

  v35 = v37;
  v36 = 0x800000000;
  v30 = v34;
  v31 = v34;
  v32 = 8;
  v33 = 0;
  v27 = 0u;
  *__p = 0u;
  v29 = 1065353216;
LABEL_28:
  sub_23C49B500(&v35, v16);
  while (v36)
  {
    v17 = *(v35 + v36 - 1);
    LODWORD(v36) = v36 - 1;
    v18 = *v17;
    if (*v17 == 2)
    {
      sub_23C4F493C(&v30, v17);
      if (v19)
      {
        v18 = *v17;
        goto LABEL_33;
      }
    }

    else
    {
LABEL_33:
      if ((v18 - 3) >= 0xFFFFFFFE)
      {
        v20 = v17[4];
        if (v20)
        {
          v21 = *(v17 + 1);
          v22 = 8 * v20;
          do
          {
            if (*v21)
            {
              sub_23C49B500(&v35, *v21);
            }

            ++v21;
            v22 -= 8;
          }

          while (v22);
        }
      }

      else if (v18 > 3)
      {
        if (v18 == 4)
        {
          if (*(v17 + 268) == 1)
          {
            sub_23C5015B8(&v27, v17[66], v17 + 66);
          }

          v16 = *(v17 + 30);
          if (v16)
          {
            goto LABEL_28;
          }
        }

        else if (v18 == 5 && *(v17 + 244) == 1)
        {
          sub_23C5015B8(&v27, v17[60], v17 + 60);
        }
      }

      else if (!v18 || v18 == 3)
      {
        v16 = *(v17 + 1);
        goto LABEL_28;
      }
    }
  }

  if (v31 != v30)
  {
    free(v31);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  v23 = __p[0];
  if (__p[0])
  {
    do
    {
      v15 = v15 & 0xFFFFFFFF00000000 | *(v23 + 4);
      sub_23C49786C(a1[5], v15, 0x100000008);
      v23 = *v23;
    }

    while (v23);
    v24 = __p[0];
    if (__p[0])
    {
      do
      {
        v25 = *v24;
        operator delete(v24);
        v24 = v25;
      }

      while (v25);
    }
  }

  v26 = v27;
LABEL_63:
  *&v27 = 0;
  if (v26)
  {
    operator delete(v26);
  }
}

void sub_23C5015B8(float *a1, unsigned int a2, _DWORD *a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

__n128 sub_23C5019A8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1B898;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_23C501A64(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (*(result + 3) < a2)
  {
    *(result + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *(result + 2);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(result + 2);
  }

  if (v4)
  {
    v5 = 0;
    v6 = *result;
    v7 = vdupq_n_s64(v4 - 1);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_23C5324B0)));
      if (v8.i8[0])
      {
        *(v6 + 8 * v5) = a3;
      }

      if (v8.i8[4])
      {
        *(v6 + 8 * v5 + 8) = a3;
      }

      v5 += 2;
    }

    while (((v4 + 1) & 0x1FFFFFFFELL) != v5);
  }

  v9 = a2 - v3;
  if (a2 > v3)
  {
    v10 = 0;
    v11 = *result + 8 * v3;
    v12 = vdupq_n_s64(v9 - 1);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_23C5324B0)));
      if (v13.i8[0])
      {
        *(v11 + 8 * v10) = a3;
      }

      if (v13.i8[4])
      {
        *(v11 + 8 * v10 + 8) = a3;
      }

      v10 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
  }

  *(result + 2) = a2;
  return result;
}

void *sub_23C501BE0(void *result, llvm::Instruction *this)
{
  v3 = result;
  v4 = **(*this + 16);
  if (*(v4 + 8) == 15 || (result = llvm::Type::isIntegerTy(**(*this + 16)), result))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      return llvm::Instruction::eraseFromParent(this);
    }

    v6 = 0;
    v7 = *(this - 4);
    v8 = v3 + 1;
    do
    {
      v9 = *(v5 + 24);
      v5 = *(v5 + 8);
      if (v9 && *(v9 + 16) == 60)
      {
        if (!v6)
        {
          v10 = *(*v3 - 24);
          v16 = 257;
          v11 = sub_23C497C88((v8 + v10), **(*v7 + 16), v7, 0, v15);
          v12 = *(*v3 - 24);
          if (*(v4 + 8) == 15)
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 49;
          }

          else
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 47;
          }

          v6 = sub_23C49ACF8(v13, v14, v11, v4, v15);
        }

        llvm::Value::replaceAllUsesWith();
        result = llvm::Instruction::eraseFromParent(v9);
      }
    }

    while (v5);
    if (!*(this + 1))
    {
      return llvm::Instruction::eraseFromParent(this);
    }
  }

  return result;
}

void sub_23C501D3C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_23C5023F4(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v5;
    a1[1] = (v5 + 1);
    sub_23C5022F0(a1, &v14);
    v5 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

uint64_t sub_23C5021EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_23C50226C(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3 != a2)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 8;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 3);
  return result;
}

void sub_23C5022F0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_23C5023F4(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_23C5023F4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_23C496CE8();
}

uint64_t sub_23C5024E8(void *a1, llvm::Value *a2, uint64_t a3, unsigned int a4, char a5, float *a6)
{
  v7 = a3;
  v8 = a2;
  v99[32] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (a5)
  {
    if (*(v10 + 8) != 15)
    {
      return 0;
    }

    v72 = **(v10 + 16);
    v11 = **(v72 + 2);
    v87 = v11;
    if (*(v11 + 8) == 16)
    {
      v87 = **(v11 + 16);
    }

    v79 = **(v72 + 2);
    __src = a2;
    v97 = v99;
    v98 = 0x2000000000;
    sub_23C49BA18(&v97, &__src, &v95);
    v73 = v8;
    while (1)
    {
      v8 = *(v8 + 1);
      if (!v8)
      {
        break;
      }

      v12 = *(v8 + 3);
      if (*(v12 + 16) == 77)
      {
        sub_23C49B500(&v97, v12);
      }
    }

    v19 = v7;
    __src = v96;
    v95 = 0x2000000000;
    if (v98)
    {
      v20 = v97;
      v21 = (v97 + 8 * v98);
      v22 = a4;
      v83 = a1 + 1;
      v84 = a6;
      v77 = v7 | ((v7 + a4 - 1) << 32);
      v74 = v21;
      v75 = v7;
      v78 = v7;
      while (1)
      {
        v23 = *(**v20 + 16);
        v24 = *v23;
        v25 = *(*v23 + 8);
        if (*v23)
        {
          v26 = v25 == 16;
        }

        else
        {
          v26 = 0;
        }

        if (v26)
        {
          if (*(v24 + 12) != 1)
          {
            goto LABEL_87;
          }

          v28 = *(**(v24 + 16) + 8);
          v26 = v28 == 15;
          v27 = v28 != 15;
          if (!v26)
          {
            v24 = **(v24 + 16);
          }

          v25 = *(v24 + 8);
        }

        else
        {
          v27 = 0;
        }

        if (v25 == 17)
        {
          v29 = v24;
        }

        else
        {
          v29 = 0;
        }

        if (v29)
        {
          if (*(v29 + 32) > v22)
          {
            goto LABEL_87;
          }

          v24 = **(v29 + 16);
          ++v27;
          v25 = *(v24 + 8);
        }

        if (v25 == 16)
        {
          v30 = v24;
        }

        else
        {
          v30 = 0;
        }

        if (!v30)
        {
          v31 = v27 + 1;
LABEL_41:
          if (v29 | v30)
          {
            v32 = v24 == v87;
          }

          else
          {
            v32 = 0;
          }

          if (v32)
          {
            v85 = v30;
            v80 = *v20;
            v33 = *(*v20 + 8);
            if (v33)
            {
              v81 = 32 * (v27 + 1);
              v82 = v27;
              v86 = v31;
              do
              {
                v34 = *(v33 + 24);
                if (v34 && *(v34 + 16) == 62)
                {
                  v35 = *(v34 + 20) & 0x7FFFFFF;
                  v36 = (v35 - 1);
                  v37 = **(*v34 + 16);
                  if ((v37 != v87 || v36 == v31) && (v37 != v85 || v35 == v31))
                  {
                    if (v35 == 1)
                    {
LABEL_69:
                      sub_23C4C30FC(v83 + *(*a1 - 24), v34);
                      v46 = *(v34 - 32 * (*(v34 + 20) & 0x7FFFFFF) + v81);
                      v47 = a1 + *(*a1 - 24);
                      v48 = *(v47 + 24);
                      v91 = 257;
                      v50 = sub_23C49B1E4((v47 + 8), v46, v48, 0, __p, v49);
                      if (v50)
                      {
                        v51 = v50[16] == 16;
                      }

                      else
                      {
                        v51 = 0;
                      }

                      v52 = v77;
                      if (v51)
                      {
                        v53 = v50 + 24;
                        if (*(v50 + 8) >= 0x41u)
                        {
                          v53 = *v53;
                        }

                        v52 = ((*v53 + v78) | ((*v53 + v78) << 32));
                      }

                      Name = v52;
                      v54 = sub_23C502C58(a1, v84, v79, v50, &Name, v78);
                      if (v37 == v85)
                      {
                        v55 = *(*a1 - 24);
                        v56 = llvm::UndefValue::get();
                        v88[0] = 0;
                        v91 = 257;
                        sub_23C49A744((v83 + v55), v56, v54, v88, 1, __p);
                      }

                      for (i = *(v34 + 8); i; i = *(i + 8))
                      {
                        v58 = *(i + 24);
                        if (*(v58 + 16) == 60)
                        {
                          llvm::Value::replaceAllUsesWith();
                          sub_23C49B500(&__src, v58);
                        }
                      }

                      sub_23C49B500(&__src, v34);
                      v31 = v86;
                    }

                    else
                    {
                      v40 = v34 - 32 * v35 + 32;
                      v41 = v82;
                      while (1)
                      {
                        if (v41)
                        {
                          v42 = *v40;
                          if (*(*v40 + 16) != 16)
                          {
                            break;
                          }

                          v43 = (v42 + 24);
                          v44 = *(v42 + 32);
                          if (v44 >= 0x41)
                          {
                            v45 = llvm::APInt::countLeadingZerosSlowCase((v42 + 24));
                            v31 = v86;
                            if (v44 - v45 > 0x40)
                            {
                              break;
                            }

                            v43 = *v43;
                          }

                          if (*v43)
                          {
                            break;
                          }
                        }

                        v40 += 32;
                        --v41;
                        if (!--v36)
                        {
                          goto LABEL_69;
                        }
                      }
                    }
                  }
                }

                v33 = *(v33 + 8);
              }

              while (v33);
            }

            a6 = v84;
            v21 = v74;
            v19 = v75;
            v22 = a4;
            if (*(v80 + 16) > 0x1Bu)
            {
              sub_23C49B500(&__src, v80);
            }
          }

          goto LABEL_87;
        }

        if (*(v30 + 12) == 1)
        {
          v24 = **(v30 + 16);
          v31 = v27 + 2;
          goto LABEL_41;
        }

LABEL_87:
        if (++v20 == v21)
        {
          if (v95)
          {
            v59 = __src;
            v60 = 8 * v95;
            do
            {
              if (!*(*v59 + 1))
              {
                llvm::Instruction::eraseFromParent(*v59);
              }

              ++v59;
              v60 -= 8;
            }

            while (v60);
          }

          break;
        }
      }
    }

    if (*(v73 + 1))
    {
      Name = llvm::Value::getName(v73);
      v93 = v61;
      v62 = sub_23C4AE5DC(__p, &Name);
      if (v90 >= 0)
      {
        v63 = __p;
      }

      else
      {
        v63 = __p[0];
      }

      sub_23C4AA240(v62, "!!!! Perf: Argument %s: failed to patten match the array of texture/sampler, spilling!!", v63);
      if (v90 < 0)
      {
        operator delete(__p[0]);
      }

      v64 = sub_23C506824(a1 + *(*a1 - 24), v72);
      v65 = a1 + 1;
      v66 = v64 + 3;
      if (!v64)
      {
        v66 = 0;
      }

      sub_23C497720(v65 + *(*a1 - 24), v64[5], v66[1]);
      if (a4)
      {
        v67 = 0;
        do
        {
          v88[0] = v19 + v67;
          v88[1] = v19 + v67;
          v68 = a1 + *(*a1 - 24);
          Name = llvm::ConstantInt::get();
          v93 = llvm::ConstantInt::get();
          v91 = 257;
          v69 = sub_23C4ED3A0(v68, v64, &Name, 2, __p);
          v70 = llvm::ConstantInt::get();
          v71 = sub_23C502C58(a1, a6, v79, v70, v88, v19);
          sub_23C4BA8C0((v65 + *(*a1 - 24)), v71, v69, 0);
          ++v67;
        }

        while (a4 != v67);
      }

      llvm::Value::replaceAllUsesWith();
    }

    if (__src != v96)
    {
      free(__src);
    }

    if (v97 != v99)
    {
      free(v97);
    }
  }

  else
  {
    v13 = *(a1[20] + 80);
    if (v13)
    {
      v14 = v13 - 24;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = v15 - 24;
    }

    else
    {
      v16 = 0;
    }

    sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v16);
    LODWORD(v97) = v7;
    HIDWORD(v97) = v7;
    v17 = llvm::ConstantInt::get();
    sub_23C502C58(a1, a6, v10, v17, &v97, v7);
    llvm::Value::replaceAllUsesWith();
  }

  return 1;
}

llvm::Instruction *sub_23C502C58(void *a1, float *a2, unint64_t a3, uint64_t a4, unsigned int *a5, unsigned int a6)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v9 = (a1 + *(*a1 - 24));
  v10 = v9[30];
  v16[0] = v9[24];
  v16[1] = v10;
  v16[2] = v16[0];
  v11 = sub_23C4FA2D8(a2, v9[40], a3, v16, 3);
  v12 = (a1 + *(*a1 - 24));
  v15[0] = a4;
  v15[1] = sub_23C4A6D9C(a5, v12 + 1);
  v15[2] = llvm::ConstantInt::get();
  v14[16] = 257;
  return sub_23C497A7C(v12 + 1, *(v11 + 24), v11, v15, 3, v14);
}

void sub_23C502D88(void *a1, llvm::Type *a2, unsigned int a3, unsigned int a4)
{
  v147[16] = *MEMORY[0x277D85DE8];
  v145 = v147;
  v146 = 0x1000000000;
  v4 = *(a2 + 1);
  if (v4)
  {
    v6 = 0;
    do
    {
      if (v6 >= HIDWORD(v146))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *&v145[8 * v6] = *(v4 + 24);
      v6 = v146 + 1;
      LODWORD(v146) = v146 + 1;
      v4 = *(v4 + 8);
    }

    while (v4);
    v7 = v145;
    if (v6)
    {
      v8 = &v145[8 * v6];
      v130 = a1 + 1;
      v128 = a3;
      v9 = 32 * a3;
      v10 = a4;
      v125 = v8;
      v127 = v9;
      while (1)
      {
        v11 = *v7;
        v12 = *v7 - 32 * (*(*v7 + 20) & 0x7FFFFFF);
        if (v10)
        {
          v13 = *(v12 + 32 * a4);
        }

        else
        {
          v13 = 0;
        }

        v14 = *(v12 + v9);
        if (*(v14 + 16) != 83)
        {
          goto LABEL_64;
        }

        v15 = *(v11 + 40);
        v16 = *(v15 + 1);
        if (v16)
        {
          break;
        }

LABEL_62:
        llvm::UndefValue::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v11);
LABEL_63:
        v9 = v127;
LABEL_64:
        v7 += 8;
        if (v7 == v8)
        {
          v7 = v145;
          goto LABEL_229;
        }
      }

      v17 = *(v15 + 1);
      while (1)
      {
        v18 = *(v17 + 24);
        v19 = *(v18 + 16);
        v20 = v18 && v19 >= 0x1C;
        if (v20 && v19 - 29 <= 0xA)
        {
          break;
        }

        v17 = *(v17 + 8);
        if (!v17)
        {
LABEL_54:
          while (1)
          {
            v35 = *(v16 + 24);
            v36 = *(v35 + 16);
            v37 = v35 && v36 >= 0x1C;
            if (v37 && v36 - 40 > 0xFFFFFFF4)
            {
              break;
            }

            v16 = *(v16 + 8);
            if (!v16)
            {
              goto LABEL_62;
            }
          }

          if ((*(v14 + 20) & 0x7FFFFFF) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23C496000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All predecessors of the indirect sampler call have an unconditional branch, may need more code changes to handle this", buf, 2u);
            }

            abort();
          }

          v9 = v127;
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v14);
          if (v13)
          {
            if (*(v13 + 16) == 83)
            {
              v39 = v13;
            }

            else
            {
              v39 = 0;
            }

            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v39);
          }

          goto LABEL_64;
        }
      }

      v22 = 0;
LABEL_25:
      v23 = *(v18 + 40);
      v24 = *(v23 + 40);
      v25 = v24 - 24;
      if (v24)
      {
        v26 = v24 - 24;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v26 + 16) - 40;
      if (v27 < 0xFFFFFFF5)
      {
        v25 = 0;
      }

      v28 = *(v25 + 16) == 30 && v27 >= 0xFFFFFFF5;
      if (!v28 || (*(v24 - 4) & 0x7FFFFFF) != 1)
      {
        v22 = v23;
      }

      while (1)
      {
        v17 = *(v17 + 8);
        if (!v17)
        {
          break;
        }

        v18 = *(v17 + 24);
        v29 = *(v18 + 16);
        if (v18)
        {
          v30 = v29 >= 0x1C;
        }

        else
        {
          v30 = 0;
        }

        if (v30 && v29 - 29 < 0xB)
        {
          goto LABEL_25;
        }
      }

      if (!v22)
      {
        goto LABEL_54;
      }

      v32 = *(v22 + 40);
      if (v32 == (v22 + 40))
      {
        v33 = 0;
      }

      else
      {
        v33 = v32 - 3;
        if (v32)
        {
          v34 = v32 - 3;
        }

        else
        {
          v34 = 0;
        }

        if (*(v34 + 16) - 29 >= 0xB)
        {
          v33 = 0;
        }
      }

      v40 = *(v33 + 5);
      if ((v40 & 0x7FFFFFF) != 0)
      {
        v41 = (v40 & 0x40000000) != 0 ? *(v33 - 1) : &v33[-4 * (v40 & 0x7FFFFFF)];
        v42 = *v41;
        if (*(*v41 + 16) == 60)
        {
          v43 = *(v42 - 4);
          v44 = *(*v43 + 8);
          if ((v44 & 0xFE) == 0x12)
          {
            v44 = *(**(*v43 + 16) + 8);
          }

          if (v44 <= 0xFF && v43[16] == 59)
          {
            while (1)
            {
              v45 = (v32 - 3);
              if (!v32)
              {
                v45 = 0;
              }

              if (v45 == v42)
              {
                break;
              }

              v32 = *v32;
            }

            while (v32 != (v22 + 40))
            {
              if (v32 && *(v32 - 8) == 61)
              {
                v46 = *(v32 - 7);
                if (v46 == v43)
                {
                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v42);
                  llvm::ConstantFoldTerminator();
                  v16 = *(v15 + 1);
                  break;
                }

                v47 = *(*v46 + 8);
                if ((v47 & 0xFE) == 0x12)
                {
                  v47 = *(**(*v46 + 16) + 8);
                }

                if (v47 <= 0xFF && v46[16] != 59)
                {
                  break;
                }
              }

              v32 = *v32;
            }
          }
        }
      }

      if (v16)
      {
        while (1)
        {
          v48 = *(v16 + 24);
          v49 = *(v48 + 16);
          v50 = v48 && v49 >= 0x1C;
          if (v50 && v49 - 29 <= 0xA)
          {
            break;
          }

          v16 = *(v16 + 8);
          if (!v16)
          {
            goto LABEL_133;
          }
        }

        do
        {
          v52 = v16;
          do
          {
            v16 = *(v16 + 8);
            if (!v16)
            {
              break;
            }

            v53 = *(v16 + 24);
            v54 = *(v53 + 16);
            v55 = v53 && v54 >= 0x1C;
          }

          while (!v55 || v54 - 29 >= 0xB);
          v57 = *(*(v52 + 24) + 40);
          v58 = *(v57 + 1);
          if (v58)
          {
            while (1)
            {
              v59 = *(v58 + 24);
              v60 = *(v59 + 16);
              v61 = v59 && v60 >= 0x1C;
              if (v61 && v60 - 40 > 0xFFFFFFF4)
              {
                break;
              }

              v58 = *(v58 + 8);
              if (!v58)
              {
                goto LABEL_126;
              }
            }
          }

          else
          {
LABEL_126:
            v63 = *(*(v57 + 7) + 80);
            if (v63)
            {
              v64 = (v63 - 24);
            }

            else
            {
              v64 = 0;
            }

            if (v57 != v64)
            {
              llvm::BasicBlock::removePredecessor(v15, v57);
              if (!*(v57 + 1))
              {
                llvm::BasicBlock::eraseFromParent(v57);
              }
            }
          }
        }

        while (v16);
      }

LABEL_133:
      v65 = v11 - 32 * (*(v11 + 20) & 0x7FFFFFF);
      v9 = v127;
      v66 = *(v65 + v127);
      if (v10)
      {
        if (*(v66 + 16) != 83 || v66 == 0)
        {
          goto LABEL_64;
        }

        v68 = *(v65 + 32 * a4);
        if (v68)
        {
          if (*(v68 + 16) == 83)
          {
            v69 = *(v65 + 32 * a4);
          }

          else
          {
            v69 = 0;
          }

LABEL_148:
          v71 = 0;
          v139 = 0u;
          v140 = 0u;
          *__p = 0u;
          v133 = v137;
          v134 = v137;
          v135 = 4;
          v72 = v11;
          v136 = 0;
          while (1)
          {
            v73 = sub_23C4B88A0(v11);
            v74 = *(v11 + 20) & 0x7FFFFFF;
            if (v71 >= ((v73 - (v11 + 32 * -v74)) >> 5))
            {
              break;
            }

            v75 = *(v72 - 32 * v74);
            if (*(v75 + 16) <= 0x1Bu)
            {
              v76 = 0;
            }

            else
            {
              v76 = v75;
            }

            v131[0] = v76;
            if (v76)
            {
              v77 = v76 == v66;
            }

            else
            {
              v77 = 1;
            }

            if (!v77 && v76 != v68 && v76[5] == v15)
            {
              sub_23C4FB9F8(buf, &v133, v76);
              if (v143[0] == 1)
              {
                sub_23C501D3C(__p, v131);
              }
            }

            ++v71;
            v72 += 32;
          }

          v79 = *(&v140 + 1);
          if (*(&v140 + 1))
          {
            v80 = v140;
            do
            {
              v81 = *(*(__p[1] + ((v80 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v80 & 0x1FF));
              v82 = *(v81 + 20) & 0x7FFFFFF;
              if (v82)
              {
                v83 = 0;
                v84 = 32 * v82;
                do
                {
                  v85 = *(v81 + 20);
                  if ((v85 & 0x40000000) != 0)
                  {
                    v86 = *(v81 - 8);
                  }

                  else
                  {
                    v86 = v81 - 32 * (v85 & 0x7FFFFFF);
                  }

                  v87 = *(v86 + v83);
                  if (*(v87 + 16) <= 0x1Bu)
                  {
                    v88 = 0;
                  }

                  else
                  {
                    v88 = v87;
                  }

                  v131[0] = v88;
                  if (v88)
                  {
                    if (v88[5] == v15)
                    {
                      sub_23C4FB9F8(buf, &v133, v88);
                      if (v143[0] == 1)
                      {
                        sub_23C501D3C(__p, v131);
                      }
                    }
                  }

                  v83 += 32;
                }

                while (v84 != v83);
                v79 = *(&v140 + 1);
                v80 = v140;
              }

              --v79;
              v89 = v80 + 1;
              *&v140 = v80 + 1;
              *(&v140 + 1) = v79;
              if (v80 + 1 >= 0x400)
              {
                v90 = __p[1] + 8;
                operator delete(*__p[1]);
                v89 = v80 - 511;
                __p[1] = v90;
                *&v140 = v80 - 511;
              }

              v80 = v89;
            }

            while (v79);
          }

          v91 = *(v15 + 6);
          if (v91 != (v15 + 40))
          {
            do
            {
              if (HIDWORD(v135) == v136)
              {
                break;
              }

              v92 = v91[1];
              if (v91)
              {
                v93 = v91 - 3;
              }

              else
              {
                v93 = 0;
              }

              if (sub_23C4F3988(&v133, v93))
              {
                llvm::Instruction::moveBefore();
              }

              v91 = v92;
            }

            while (v92 != (v15 + 40));
          }

          v94 = *(*a1 - 24);
          FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(*(v11 + 40));
          sub_23C4C30FC(v130 + v94, FirstNonPHI);
          v96 = *(*a1 - 24);
          v97 = *v11;
          v98 = *(v66 + 20);
          v144 = 257;
          v99 = sub_23C4BC404((v130 + v96), v97, v98 & 0x7FFFFFF, buf);
          v100 = 0;
          *buf = v143;
          v142 = 0x1000000000;
          for (i = v11; ; i += 32)
          {
            v102 = sub_23C4B88A0(v11);
            v103 = *(v11 + 20) & 0x7FFFFFF;
            if (v100 >= ((v102 - (v11 + 32 * -v103)) >> 5))
            {
              break;
            }

            sub_23C49B500(buf, *(i - 32 * v103));
            ++v100;
          }

          v104 = *(v66 + 20);
          if ((v104 & 0x40000000) != 0)
          {
            v106 = *(v66 - 8);
            v107 = *(v66 + 60);
            v108 = (v106 + 32 * v107);
            v105 = v104 & 0x7FFFFFF;
          }

          else
          {
            v105 = v104 & 0x7FFFFFF;
            v106 = v66 - 32 * v105;
            v107 = *(v66 + 60);
            v108 = (v106 + 32 * v107);
          }

          v109 = v106 + 32 * v107 + 8 * v105;
          while (v108 != v109)
          {
            v110 = *v108;
            v111 = *(*v108 + 40);
            if (v111 == *v108 + 40)
            {
              v114 = 0;
            }

            else
            {
              v112 = v111 - 24;
              if (v111)
              {
                v113 = v111 - 24;
              }

              else
              {
                v113 = 0;
              }

              if (*(v113 + 16) - 29 >= 0xB)
              {
                v114 = 0;
              }

              else
              {
                v114 = v112;
              }
            }

            sub_23C4C30FC(v130 + *(*a1 - 24), v114);
            v115 = sub_23C503808(v66, v110);
            v116 = v115;
            if (v69)
            {
              v117 = sub_23C503808(v69, v110);
              *(*buf + 8 * v128) = v116;
              if (v117)
              {
                *(*buf + 8 * a4) = v117;
              }
            }

            else
            {
              *(*buf + 8 * v128) = v115;
            }

            v118 = *(*a1 - 24);
            v132 = 257;
            v119 = sub_23C497A7C((v130 + v118), *(a2 + 3), a2, *buf, v142, v131);
            sub_23C4BC510(v99, v119, v110);
            ++v108;
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v11);
          if (!*(v66 + 8))
          {
            llvm::Instruction::eraseFromParent(v66);
          }

          if (v69 && !*(v69 + 1))
          {
            llvm::Instruction::eraseFromParent(v69);
          }

          if (*buf != v143)
          {
            free(*buf);
          }

          if (v134 != v133)
          {
            free(v134);
          }

          v120 = __p[1];
          v121 = v139;
          v122 = v139 - __p[1];
          if (v139 - __p[1] >= 0x11)
          {
            do
            {
              v123 = *v120++;
              operator delete(v123);
              v122 -= 8;
            }

            while (v122 > 0x10);
          }

          while (v120 != v121)
          {
            v124 = *v120++;
            operator delete(v124);
          }

          v8 = v125;
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v10 = a4;
          goto LABEL_63;
        }
      }

      else
      {
        if (*(v66 + 16) != 83 || v66 == 0)
        {
          goto LABEL_64;
        }

        v68 = 0;
      }

      v69 = 0;
      goto LABEL_148;
    }

LABEL_229:
    if (v7 != v147)
    {
      free(v7);
    }
  }
}

uint64_t sub_23C503808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = v2 & 0x7FFFFFF;
  if ((v2 & 0x7FFFFFF) != 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1 - 32 * v3;
      if ((v2 & 0x40000000) != 0)
      {
        v5 = *(a1 - 8);
      }

      if (*(v5 + 32 * *(a1 + 60) + 8 * v4) == a2)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = -1;
        break;
      }
    }

    v4 = v4;
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = *(a1 - 8);
    return *(v6 + 32 * v4);
  }

  v4 = 0xFFFFFFFFLL;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = a1 - 32 * v3;
  return *(v6 + 32 * v4);
}

void sub_23C50387C(void *a1)
{
  sub_23C4B8970();
  sub_23C4E8E90();
  v2 = *(a1 + *(*a1 - 24) + 320);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    v8 = v3 == 0;
    v3 = *(v3 + 8);
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    llvm::Value::getName(v6);
    Key = llvm::StringMapImpl::FindKey();
    v8 = Key == -1 || Key == dword_27E1F7458;
    if (v8)
    {
      llvm::Value::getName(v5);
      v9 = llvm::StringMapImpl::FindKey();
      if (v9 == -1 || v9 == dword_27E1F7360)
      {
        continue;
      }

      v13 = a1;
      v14 = v5;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v10 = *(qword_27E1F7450 + 8 * Key);
      v11 = *(v10 + 30);
      v12 = *(v10 + 31);
      v13 = a1;
      v14 = v5;
    }

    sub_23C502D88(v13, v14, v11, v12);
  }
}

void sub_23C5039AC(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {

    sub_23C50387C(a1);
  }

  else
  {
    v2 = a1 + *(*a1 - 24);
    v3 = *(v2 + 400);
    v4 = *(v2 + 320);
    sub_23C4AEA64(v3);
    v5 = *(v3 + 336);

    llvm::legacy::PassManager::run(v5, v4);
  }
}

void sub_23C503A24(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_23C496CE8();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_23C496CE8();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_23C503B2C(uint64_t a1)
{
  v2 = *(a1 + 792);
  v3 = *(a1 + 808);
  v4 = *(a1 + 816);
  v16 = *(a1 + 784);
  if (v16 != v2)
  {
    v17 = **(a1 + 784);
    sub_23C4B2C10(&v17, a1 + 704 + *(*a1 - 24));
    sub_23C4B1830(1uLL);
  }

  if (v3 == v4)
  {
    v10 = 0;
  }

  else
  {
    v5 = a1 + *(*a1 - 24);
    v6 = *(a1 + 808);
    v7 = *(a1 + 816);
    v8 = v7 - v6;
    if (v7 == v6)
    {
      v9 = &unk_27E1F7449;
    }

    else
    {
      v9 = *(a1 + 808);
    }

    *(v5 + 774) = 1;
    sub_23C4B0AD0(v5 + 704, v8, 4uLL);
    sub_23C4B0AD0(v5 + 704, v8, 8uLL);
    sub_23C4B0B08((v5 + 704), v9, v8);
    *(v5 + 774) = 0;
    v10 = sub_23C4B0A6C(v5 + 704, v8 >> 3);
  }

  v11 = sub_23C4B1878(a1 + *(*a1 - 24));
  v12 = v11;
  v14 = v13;
  if (v16 != v2)
  {
    sub_23C4C6A98(v11, 0);
  }

  if (v3 != v4 && v10)
  {
    sub_23C4B08D8(v12, 4uLL);
    sub_23C4B0A04(v12, 12, (*(v12 + 32) - *(v12 + 48) + *(v12 + 40) - v10 + 4));
  }

  sub_23C4B2DFC(v12, 20, *(a1 + 37));
  if (*(a1 + 2385) == 1)
  {
    sub_23C4B0328(v12, 22, *(a1 + 2392));
    sub_23C4B0328(v12, 24, *(a1 + 2400));
    sub_23C4B0328(v12, 26, *(a1 + 2408));
    sub_23C4B0328(v12, 28, *(a1 + 2416));
  }

  sub_23C4B0A04(v12, 30, *(a1 + 2424));

  return sub_23C4B03D4(v12, v14);
}

void sub_23C503E5C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 160);
  if (*(v4 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v6 = *(a1 + 160);
    v5 = *(v4 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v4 = v6;
  }

  else
  {
    v5 = *(v4 + 88);
  }

  v7 = *(v4 + 88) + 40 * *(v4 + 96);
  if (v5 == v7)
  {
    return;
  }

  v58 = *(v4 + 88) + 40 * *(v4 + 96);
  v59 = a1 + 8;
  do
  {
    v8 = *(*(a1 + 72) + 8 * *(v5 + 32));
    if (*(v5 + 8))
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_97;
    }

    v10 = *(*(a1 + 160) + 80);
    v11 = v10 ? v10 - 24 : 0;
    v12 = *(v11 + 40);
    v13 = v12 ? v12 - 24 : 0;
    sub_23C4C30FC(v59 + *(*a1 - 24), v13);
    if (!sub_23C4A57A0(*(v8 - 8 * *(v8 + 8) + 8), "air.buffer") && !sub_23C4A57A0(*(v8 - 8 * *(v8 + 8) + 8), "air.indirect_buffer"))
    {
      goto LABEL_97;
    }

    String = 0;
    v67 = 0;
    LODWORD(v14) = *(v8 + 8);
    if (v14 < 3)
    {
      goto LABEL_27;
    }

    v15 = 2;
    while (1)
    {
      v16 = sub_23C4A57A0(*(v8 - 8 * v14 + 8 * v15), "air.arg_name");
      v14 = *(v8 + 8);
      if (v16)
      {
        break;
      }

LABEL_26:
      if (++v15 >= v14)
      {
        goto LABEL_27;
      }
    }

    v17 = *(v8 - 8 * v14 + 8 * (v15 + 1));
    if (!v17 || *v17)
    {
      v15 += 2;
      goto LABEL_26;
    }

    String = llvm::MDString::getString(v17);
    v67 = v57;
LABEL_27:
    Key = llvm::StringMapImpl::FindKey();
    v19 = *a2;
    if (Key == -1)
    {
      v20 = *(a2 + 2);
    }

    else
    {
      v20 = Key;
    }

    v21 = *(v19 + 8 * v20);
    v22 = *(v21 + 12);
    if (v22 <= 1)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          sub_23C49F8D0(&v60, "agc.");
          sub_23C4AE5DC(__p, &String);
          if ((v63 & 0x80u) == 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          if ((v63 & 0x80u) == 0)
          {
            v24 = v63;
          }

          else
          {
            v24 = __p[1];
          }

          v25 = std::string::append(&v60, v23, v24);
          v26 = v25->__r_.__value_.__r.__words[2];
          *v64 = *&v25->__r_.__value_.__l.__data_;
          v65 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          if (v63 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v60.__r_.__value_.__l.__data_);
          }

          v27 = 1;
          v28 = llvm::User::operator new(0x58);
          v29 = v64;
          if (v65 < 0)
          {
            v29 = v64[0];
          }

          v61 = 257;
          if (*v29)
          {
            v60.__r_.__value_.__r.__words[0] = v29;
            v27 = 3;
          }

          LOBYTE(v61) = v27;
          llvm::GlobalVariable::GlobalVariable();
          *(v28 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          sub_23C506A1C(a1 + *(*a1 - 24), v28, *(*(v19 + 8 * v20) + 20), *(*(v19 + 8 * v20) + 24));
          v30 = *(*a1 - 24);
          v61 = 257;
          sub_23C497C88((v59 + v30), **(*v28 + 16), v28, 0, &v60);
          v31 = *(v5 + 8);
          if (v31)
          {
            do
            {
              v32 = *(v31 + 8);
              v33 = *(v31 + 24);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v33);
              v31 = v32;
            }

            while (v32);
          }

          if (SHIBYTE(v65) < 0)
          {
            operator delete(v64[0]);
          }
        }
      }

      else
      {
        sub_23C4FF724(a1, v5, *(v5 + 32), v8, *(v21 + 16));
      }

      goto LABEL_96;
    }

    if (v22 == 2)
    {
      llvm::ConstantInt::get();
      v54 = *(v5 + 8);
      if (v54)
      {
        do
        {
          v55 = *(v54 + 8);
          v56 = *(v54 + 24);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v56);
          v54 = v55;
        }

        while (v55);
      }

      goto LABEL_96;
    }

    if (v22 != 3)
    {
      goto LABEL_96;
    }

    *&v60.__r_.__value_.__r.__words[1] = 0uLL;
    v60.__r_.__value_.__r.__words[0] = &v60.__r_.__value_.__l.__size_;
    v64[0] = 0;
    v64[1] = 0;
    v65 = 0;
    __p[0] = v5;
    sub_23C4FC844(v64, __p);
LABEL_54:
    v35 = v64[0];
    v34 = v64[1];
    while (v64[0] != v34)
    {
      v36 = *(v34 - 1);
      v34 -= 8;
      v64[1] = v34;
      v37 = *(v36 + 8);
      if (v37)
      {
        do
        {
          __p[0] = *(v37 + 24);
          sub_23C4FC844(v64, __p);
          v38 = *(v37 + 24);
          size = v60.__r_.__value_.__l.__size_;
          if (!v60.__r_.__value_.__l.__size_)
          {
LABEL_63:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v40 = size;
              v41 = *(size + 32);
              if (v38 >= v41)
              {
                break;
              }

              size = *v40;
              if (!*v40)
              {
                goto LABEL_63;
              }
            }

            if (v41 >= v38)
            {
              break;
            }

            size = v40[1];
            if (!size)
            {
              goto LABEL_63;
            }
          }

          v37 = *(v37 + 8);
        }

        while (v37);
        goto LABEL_54;
      }
    }

    v42 = v60.__r_.__value_.__r.__words[0];
    if (v60.__r_.__value_.__l.__data_ == &v60.__r_.__value_.__r.__words[1])
    {
      goto LABEL_83;
    }

    while (2)
    {
      v43 = *(v42 + 32);
      v44 = *(v43 + 20);
      if ((v44 & 0x40000000) != 0)
      {
        v46 = *(v43 - 8);
        v45 = v44 & 0x7FFFFFF;
        if (!v45)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v45 = v44 & 0x7FFFFFF;
        v46 = v43 - 32 * v45;
        if (!v45)
        {
          goto LABEL_76;
        }
      }

      v47 = 32 * v45;
      v48 = (v46 + 16);
      do
      {
        if (*(v48 - 2))
        {
          v49 = *(v48 - 1);
          **v48 = v49;
          if (v49)
          {
            *(v49 + 16) = *v48;
          }
        }

        *(v48 - 2) = 0;
        v48 += 4;
        v47 -= 32;
      }

      while (v47);
LABEL_76:
      v50 = *(v42 + 8);
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = v50->__r_.__value_.__r.__words[0];
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = *(v42 + 16);
          v9 = v51->__r_.__value_.__r.__words[0] == v42;
          v42 = v51;
        }

        while (!v9);
      }

      v42 = v51;
      if (v51 != &v60.__r_.__value_.__r.__words[1])
      {
        continue;
      }

      break;
    }

    v42 = v60.__r_.__value_.__r.__words[0];
LABEL_83:
    if (v42 != &v60.__r_.__value_.__r.__words[1])
    {
      do
      {
        llvm::Instruction::eraseFromParent(*(v42 + 32));
        v52 = *(v42 + 8);
        if (v52)
        {
          do
          {
            v53 = v52;
            v52 = v52->__r_.__value_.__r.__words[0];
          }

          while (v52);
        }

        else
        {
          do
          {
            v53 = *(v42 + 16);
            v9 = v53->__r_.__value_.__r.__words[0] == v42;
            v42 = v53;
          }

          while (!v9);
        }

        v42 = v53;
      }

      while (v53 != &v60.__r_.__value_.__r.__words[1]);
    }

    if (v35)
    {
      v64[1] = v35;
      operator delete(v35);
    }

    sub_23C4B1570(v60.__r_.__value_.__l.__size_);
LABEL_96:
    v7 = v58;
LABEL_97:
    v5 += 40;
  }

  while (v5 != v7);
}

BOOL sub_23C504518(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1, *(*(a1 + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1);
    v5 = sub_23C4B03D4(v3, v4);
    *(a1 + 774) = 1;
    v6 = *(a1 + 744);
    v7 = *(a1 + 736) - *(a1 + 752);
    sub_23C4B5F88((a1 + 704), v5);
    v8 = sub_23C4B03D4(a1 + 704, v7 + v6);
    sub_23C4B1AD8(a1 + 704, v8);
  }

  return v2;
}

void sub_23C5045A0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_23C49F8D0(v26, &unk_23C53F34D);
  sub_23C49F8D0(v23, "token");
  std::to_string(&v36, *(a1 + 992));
  if ((v24 & 0x80u) == 0)
  {
    v4 = v24;
  }

  else
  {
    v4 = v23[1];
  }

  v5 = &v37;
  sub_23C4ADD34(&v37, v4 + 3);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v37.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if ((v24 & 0x80u) == 0)
    {
      v6 = v23;
    }

    else
    {
      v6 = v23[0];
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 2112032;
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v36;
  }

  else
  {
    v7 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v37, v7, size);
  v10 = v9->__r_.__value_.__r.__words[0];
  v11 = v9->__r_.__value_.__l.__size_;
  v25[0] = v9->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_23C49F988(&__dst, v26[0], v26[1]);
  }

  else
  {
    __dst = *v26;
    v35 = v27;
  }

  sub_23C4B7B84(&v36, &__dst, 0);
  sub_23C49F8D0(v29, "{");
  sub_23C4B7B84(&__p, v29, 0);
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v14 = v33;
  }

  else
  {
    v14 = v32;
  }

  v15 = std::string::append(&v36, p_p, v14);
  v16 = v15->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
LABEL_38:
    v36.__r_.__value_.__r.__words[0] = v10;
    v36.__r_.__value_.__l.__size_ = v11;
    LODWORD(v36.__r_.__value_.__r.__words[2]) = v25[0];
    *(&v36.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
    *(&v36.__r_.__value_.__s + 23) = v12;
LABEL_41:
    v17 = 0;
    v28 = v36;
    goto LABEL_42;
  }

  sub_23C49F988(&v36, v10, v11);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  sub_23C49F988(&v28, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  v17 = 1;
LABEL_42:
  sub_23C4B7B84(&__p, &v28, 1);
  if ((v33 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v19 = v33;
  }

  else
  {
    v19 = v32;
  }

  std::string::append(&v37, v18, v19);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if (v17)
  {
LABEL_52:
    operator delete(v36.__r_.__value_.__l.__data_);
  }

LABEL_53:
  sub_23C49F8D0(&__p, "}");
  sub_23C4B7B84(&v36, &__p, 0);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v37;
  }

  else
  {
    v20 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v37.__r_.__value_.__l.__size_;
  }

  v22 = std::string::insert(&v36, 0, v20, v21);
  *a2 = *v22;
  v22->__r_.__value_.__r.__words[0] = 0;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v10);
LABEL_65:
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }
}

uint64_t sub_23C504940(uint64_t a1)
{
  if (*(a1 + 992) == 31)
  {
    GlobalVariable = llvm::Module::getGlobalVariable();
    if (GlobalVariable)
    {
      v3 = GlobalVariable;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1, v3, 5u, 0);
    }

    v4 = llvm::Module::getGlobalVariable();
    if (v4)
    {
      sub_23C506A1C(a1, v4, 0, 0);
    }

    v5 = llvm::Module::getGlobalVariable();
    if (v5)
    {
      sub_23C506A1C(a1, v5, 1u, 0);
    }
  }

  v6 = *(a1 + 320);
  v12 = "agx.compute_driver_bindings";
  v13 = 259;
  if (!llvm::Module::getNamedMetadata(v6, &v12))
  {
    v8 = *(a1 + 320);
    v9 = v8 + 24;
    for (i = *(v8 + 32); i != v9; i = *(i + 8))
    {
      if (i)
      {
        v11 = (i - 56);
      }

      else
      {
        v11 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v11) & 1) == 0)
      {
        sub_23C4B22E0(a1, v11);
        break;
      }
    }
  }

  result = sub_23C4AF8FC(*(a1 + 400), a1, *(a1 + 320), 1, 3, 0);
  if (result)
  {
    result = (*(*a1 + 80))(a1);
    if (result)
    {
      sub_23C4C420C(a1);
      return 1;
    }
  }

  return result;
}

void sub_23C504AF4(uint64_t a1)
{
  sub_23C4B130C(a1);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C504B30(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v12 = 152;
      if ((*(*a2 + 8) & 0xFE) == 0x12)
      {
        v12 = 264;
      }

      v13 = *(a1 + v12);
      v15 = 257;
      return sub_23C49FEB4(a1 + 8, a2, v13, v14);
    }

    if (a3 != 3)
    {
      return v3;
    }

LABEL_8:
    v7 = *(a1 + 296);
    v15 = 257;
    v8 = a1 + 8;
    v9 = 49;
    v6 = v3;
    return sub_23C49ACF8(v8, v9, v6, v7, v14);
  }

  switch(a3)
  {
    case 4:
LABEL_5:
      v5 = *(a1 + 296);
      v15 = 257;
      v6 = sub_23C49ACF8(a1 + 8, 49, a2, v5, v14);
      v7 = *(a1 + 288);
      v15 = 257;
      v8 = a1 + 8;
      v9 = 38;
      return sub_23C49ACF8(v8, v9, v6, v7, v14);
    case 6:
      goto LABEL_8;
    case 7:
      goto LABEL_5;
  }

  return v3;
}

uint64_t sub_23C504C2C(uint64_t a1, llvm::Type *this)
{
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 0x200000000;
  *(a1 + 72) = this;
  *(a1 + 80) = a1 + 128;
  *(a1 + 88) = a1 + 136;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 512;
  *(a1 + 110) = 7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = MEMORY[0x277D821C8] + 16;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = v4;
  *(a1 + 136) = MEMORY[0x277D82210] + 16;
  *a1 = &unk_284F1C7F0;
  *(a1 + 144) = llvm::Type::getVoidTy(this, this);
  *(a1 + 152) = llvm::Type::getHalfTy(*(a1 + 72), v5);
  *(a1 + 160) = llvm::Type::getFloatTy(*(a1 + 72), v6);
  *(a1 + 168) = llvm::Type::getInt1Ty(*(a1 + 72), v7);
  *(a1 + 176) = llvm::Type::getInt8Ty(*(a1 + 72), v8);
  *(a1 + 184) = llvm::Type::getInt16Ty(*(a1 + 72), v9);
  *(a1 + 192) = llvm::Type::getInt32Ty(*(a1 + 72), v10);
  *(a1 + 200) = llvm::Type::getInt64Ty(*(a1 + 72), v11);
  *(a1 + 208) = llvm::FixedVectorType::get();
  *(a1 + 216) = llvm::FixedVectorType::get();
  *(a1 + 224) = llvm::FixedVectorType::get();
  *(a1 + 232) = llvm::FixedVectorType::get();
  *(a1 + 240) = llvm::FixedVectorType::get();
  *(a1 + 248) = llvm::FixedVectorType::get();
  *(a1 + 256) = llvm::FixedVectorType::get();
  *(a1 + 264) = llvm::FixedVectorType::get();
  *(a1 + 272) = llvm::FixedVectorType::get();
  *(a1 + 280) = llvm::FixedVectorType::get();
  *(a1 + 288) = llvm::FixedVectorType::get();
  *(a1 + 296) = llvm::FixedVectorType::get();
  *(a1 + 304) = llvm::FixedVectorType::get();
  *(a1 + 312) = llvm::IntegerType::get();
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = this;
  return a1;
}

uint64_t *sub_23C504E2C(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2;
  v5 = *a2;
  v6 = *(a1 + 160);
  if (*a2 != v6)
  {
    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v6 = llvm::FixedVectorType::get();
      v8 = *(v5 + 8);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    if ((v8 & 0xFE) == 0x12)
    {
      v8 = *(**(v5 + 16) + 8);
    }

    if (v8 > 6)
    {
      v12 = 257;
      if (a3)
      {
        return sub_23C49EF30(a1 + 8, v4, v6, v11);
      }

      else
      {
        return sub_23C49EF94(a1 + 8, v4, v6, v11);
      }
    }

    else
    {
      v12 = 257;
      return sub_23C4B284C(a1 + 8, v4, v6, v11);
    }
  }

  return v4;
}

uint64_t sub_23C504F18(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *a3 = 1;
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    *a3 = *(a2 + 32);
    a2 = **(a2 + 16);
  }

  result = 0;
  v6 = vextq_s8(*(a1 + 152), *(a1 + 152), 8uLL);
  v5 = *(a1 + 176);
  v7 = *(a1 + 168);
  v8 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v9 = v5;
  while (a2 != v6.i64[result])
  {
    if (++result == 6)
    {
      return 9;
    }
  }

  return result;
}

llvm::Instruction *sub_23C504FD4(uint64_t a1, llvm::Instruction *a2, uint64_t a3, int a4, int a5)
{
  v7 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v9 = *a2;
  if (*(a1 + 152) == a3)
  {
    v10 = 160;
  }

  else
  {
    if (*(a1 + 184) != a3 && *(a1 + 176) != a3 && *(a1 + 168) != a3)
    {
      return v7;
    }

    v10 = 192;
  }

  v11 = *(a1 + v10);
  if ((*(v9 + 8) & 0xFE) == 0x12)
  {
    v11 = llvm::FixedVectorType::get();
  }

  v12 = *(v11 + 8) & 0xFE;
  if (v12 == 18)
  {
    v13 = *(**(v11 + 16) + 8);
  }

  else
  {
    v13 = *(v11 + 8);
  }

  if (v13 > 6)
  {
    v26 = 257;
    if (a4)
    {
      v15 = 40;
    }

    else
    {
      v15 = 39;
    }

    return sub_23C49ACF8(a1 + 8, v15, v7, v11, &v23);
  }

  if (!a5)
  {
    v26 = 257;
    return sub_23C4B284C(a1 + 8, v7, v11, &v23);
  }

  if (v12 == 18)
  {
    v14 = (*(v11 + 32) - 1);
  }

  else
  {
    v14 = 0;
  }

  v23 = &v25;
  v24 = xmmword_23C532570;
  sub_23C4B01BC(&v23, "llvm.agx2.unopt.convert", "");
  v18 = strlen(off_278BBFE80[v14]);
  sub_23C4B01BC(&v23, off_278BBFE80[v14], &off_278BBFE80[v14][v18]);
  v19 = strlen(off_278BBFE60[v14]);
  sub_23C4B01BC(&v23, off_278BBFE60[v14], &off_278BBFE60[v14][v19]);
  v20 = sub_23C505220(a1, v23, v24, v11, v9);
  v21[16] = 257;
  v7 = sub_23C497A7C((a1 + 8), *(v20 + 24), v20, &v22, 1, v21);
  if (v23 != &v25)
  {
    free(v23);
  }

  return v7;
}

uint64_t sub_23C505220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = 0;
  v9[0] = v10;
  v9[1] = 0x200000000;
  sub_23C49BA18(v9, __src, v9);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v6 = v5;
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  return v6;
}

uint64_t *sub_23C505300(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a1[19];
  if (v5 == a3 || (v5 = a1[23], v5 == a3) || (v5 = a1[22], v5 == a3))
  {
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      v5 = llvm::FixedVectorType::get();
    }

    if ((*(v5 + 8) & 0xFE) == 0x12)
    {
      v6 = *(**(v5 + 16) + 8);
    }

    else
    {
      v6 = *(v5 + 8);
    }

    v10 = 257;
    if (v6 > 6)
    {
      return sub_23C49ACF8((a1 + 1), 38, v3, v5, v9);
    }

    else
    {
      return sub_23C49FEB4((a1 + 1), v3, v5, v9);
    }
  }

  return v3;
}

llvm::Instruction *sub_23C5053E8(uint64_t a1, llvm::Instruction *a2, unsigned int a3, int a4)
{
  v4 = a2;
  v24 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = a3 - 1;
  if (a3 - 1 > 7 || ((0xDBu >> v5) & 1) == 0)
  {
    return v4;
  }

  v8 = *a2;
  v9 = *(a1 + qword_23C532D70[v5]);
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v9 = llvm::FixedVectorType::get();
  }

  v10 = *(v9 + 8) & 0xFE;
  if (v10 == 18)
  {
    v11 = *(**(v9 + 16) + 8);
  }

  else
  {
    v11 = *(v9 + 8);
  }

  if (v11 > 6)
  {
    v23 = 257;
    return sub_23C49ACF8(a1 + 8, 38, v4, v9, &v20);
  }

  if (!a4)
  {
    v23 = 257;
    return sub_23C49FEB4(a1 + 8, v4, v9, &v20);
  }

  if (v10 == 18)
  {
    v12 = (*(v9 + 32) - 1);
  }

  else
  {
    v12 = 0;
  }

  v20 = &v22;
  v21 = xmmword_23C532570;
  sub_23C4B01BC(&v20, "llvm.agx2.unopt.convert", "");
  v15 = strlen(off_278BBFE60[v12]);
  sub_23C4B01BC(&v20, off_278BBFE60[v12], &off_278BBFE60[v12][v15]);
  v16 = strlen(off_278BBFE80[v12]);
  sub_23C4B01BC(&v20, off_278BBFE80[v12], &off_278BBFE80[v12][v16]);
  v17 = sub_23C505220(a1, v20, v21, v9, v8);
  v18[16] = 257;
  v4 = sub_23C497A7C((a1 + 8), *(v17 + 24), v17, &v19, 1, v18);
  if (v20 != &v22)
  {
    free(v20);
  }

  return v4;
}

uint64_t sub_23C505600(uint64_t a1, uint64_t a2, llvm::FixedVectorType *a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    a3 = llvm::FixedVectorType::get();
  }

  v8 = 257;
  return sub_23C49ACF8(a1 + 8, 49, a2, a3, v7);
}

unsigned __int8 *sub_23C505670(uint64_t a1, llvm::UndefValue **a2, unsigned int a3, _BOOL4 a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 == 1 && a4)
  {
    LOWORD(v12) = 257;
    v6 = llvm::ConstantInt::get();
    return sub_23C5057E8(a1 + 8, a2, v6, v11);
  }

  else
  {
    v11[0] = llvm::ConstantInt::get();
    v11[1] = llvm::ConstantInt::get();
    v11[2] = llvm::ConstantInt::get();
    v11[3] = llvm::ConstantInt::get();
    v12 = llvm::ConstantInt::get();
    v13 = llvm::ConstantInt::get();
    v14 = llvm::ConstantInt::get();
    v15 = llvm::ConstantInt::get();
    v8 = llvm::ConstantVector::get();
    v9 = llvm::UndefValue::get();
    v10[16] = 257;
    return sub_23C49A3AC((a1 + 8), a2, v9, v8, v10);
  }
}

unsigned __int8 *sub_23C5057E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 && a2[16] <= 0x14u && a3 && a3[16] <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 320))(*(a1 + 72), a2, a3);
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::User::operator new(0x40);
    llvm::ExtractElementInst::ExtractElementInst();
    (*(**(a1 + 80) + 16))(*(a1 + 80), v6, a4, *(a1 + 48), *(a1 + 56));
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = *a1;
      v10 = &v9[4 * v8];
      do
      {
        llvm::Instruction::setMetadata();
        v9 += 4;
      }

      while (v9 != v10);
    }
  }

  return v6;
}

llvm::UndefValue **sub_23C50593C(uint64_t a1, llvm::UndefValue **a2, llvm::Type *a3, BOOL a4)
{
  v4 = a2;
  v18 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 2) & 0xFE) != 0x12)
  {
    llvm::FixedVectorType::get();
    v9 = llvm::UndefValue::get();
    v13 = 257;
    v10 = llvm::ConstantInt::get();
    return sub_23C505AA8(a1 + 8, v9, v4, v10, v12);
  }

  if (*(*a2 + 8) != a3)
  {
    v14 = llvm::ConstantInt::get();
    v15 = llvm::ConstantInt::get();
    v16 = llvm::ConstantInt::get();
    v17 = llvm::ConstantInt::get();
    v6 = llvm::ConstantVector::get();
    v7 = llvm::UndefValue::get();
    v13 = 257;
    return sub_23C49A3AC((a1 + 8), v4, v7, v6, v12);
  }

  return v4;
}

uint64_t sub_23C505AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u && a4 && *(a4 + 16) <= 0x14u)
  {
    v10 = (*(**(a1 + 72) + 328))(*(a1 + 72), a2, a3, a4);
    if (v10)
    {
      v11 = *(v10 + 16) >= 0x1Cu;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      sub_23C49B15C(a1, v10, a5);
    }
  }

  else
  {
    v17 = 257;
    v10 = llvm::User::operator new(0x40);
    MEMORY[0x23EED4250](v10, a2, a3, a4, v16, 0);
    (*(**(a1 + 80) + 16))(*(a1 + 80), v10, a5, *(a1 + 48), *(a1 + 56));
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *a1;
      v14 = &v13[4 * v12];
      do
      {
        llvm::Instruction::setMetadata();
        v13 += 4;
      }

      while (v13 != v14);
    }
  }

  return v10;
}

llvm::Type *sub_23C505C18(uint64_t a1, llvm::Type *a2, int a3, int a4, char a5)
{
  LODWORD(v5) = a3;
  v6 = a2;
  v8 = *a2;
  v9 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v9 = **(v8 + 16);
  }

  NullValue = llvm::Constant::getNullValue(v9, a2);
  if (*(v9 + 2) > 6u)
  {
    v11 = llvm::ConstantInt::get();
  }

  else
  {
    v11 = llvm::ConstantFP::get();
  }

  v12 = v11;
  v13 = *(v8 + 32);
  v14 = v13 - v5;
  if (v13 > v5)
  {
    v5 = v5;
    do
    {
      if (v5 == 3)
      {
        v15 = v12;
      }

      else
      {
        v15 = NullValue;
      }

      v19 = 257;
      v16 = llvm::ConstantInt::get();
      v6 = sub_23C505AA8(a1 + 8, v6, v15, v16, v18);
      ++v5;
      --v14;
    }

    while (v14);
  }

  return v6;
}

uint64_t sub_23C505D44(uint64_t a1, llvm::Constant *a2, llvm::Constant **a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    sub_23C505E0C(a2, a3, 0);
    v6 = *(*a2 + 32);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        if (!a3[i])
        {
          v11 = 257;
          v8 = llvm::ConstantInt::get();
          a3[i] = sub_23C5057E8(a1 + 8, a2, v8, v10);
        }
      }
    }
  }

  else
  {
    *a3 = a2;
    return 1;
  }

  return v6;
}

void sub_23C505E0C(llvm::Constant *a1, void *a2, unsigned int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  bzero(a2, 0x20uLL);
  if (a1 && a3 <= 5)
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 != 90)
      {
        break;
      }

      v7 = *(a1 - 4);
      if (v7)
      {
        v8 = *(v7 + 16) == 16;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v9 = (v7 + 24);
        if (*(v7 + 32) >= 0x41u)
        {
          v9 = *v9;
        }

        v10 = *v9;
        if (!*(a2 + v10))
        {
          *(a2 + v10) = *(a1 - 8);
        }

        a1 = *(a1 - 12);
        if (a1)
        {
          continue;
        }
      }

      return;
    }

    if (v6 == 91)
    {
      memset(v19, 0, sizeof(v19));
      memset(v18, 0, sizeof(v18));
      sub_23C505E0C(*(a1 - 8), v19, a3 + 1);
      sub_23C505E0C(*(a1 - 4), v18, a3 + 1);
      v11 = *(*a1 + 32);
      if (v11)
      {
        v12 = 0;
        v13 = *(**(a1 - 8) + 32);
        do
        {
          if (!*(a2 + v12))
          {
            v14 = *(*(a1 + 8) + 4 * v12);
            if (v14 == -1)
            {
              v15 = llvm::UndefValue::get();
            }

            else if (v14 >= v13)
            {
              v15 = *(v18 + v14 - v13);
            }

            else
            {
              v15 = *(v19 + v14);
            }

            *(a2 + v12) = v15;
          }

          ++v12;
        }

        while (v11 != v12);
      }
    }

    else if (v6 <= 0x14)
    {
      v16 = *(*a1 + 32);
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          if (!*(a2 + i))
          {
            *(a2 + i) = llvm::Constant::getAggregateElement(a1);
          }
        }
      }
    }
  }
}

void sub_23C505FD4(uint64_t a1, _BYTE *a2, void *a3)
{
  v6 = *(*a2 + 12);
  bzero(a3, 8 * v6);
  if (a2[16] == 93)
  {
    v7 = a2;
    do
    {
      if (*(v7 + 18) != 1)
      {
        break;
      }

      v8 = **(v7 + 8);
      if (!*(a3 + v8))
      {
        *(a3 + v8) = *(v7 - 4);
      }

      v7 = *(v7 - 8);
    }

    while (v7[16] == 93 && v7 != 0);
  }

  v13 = 0;
  if (v6)
  {
    v10 = 0;
    do
    {
      if (!*(a3 + v10))
      {
        v12[16] = 257;
        v11 = sub_23C49B32C(a1 + 8, a2, &v13, 1, v12);
        v10 = v13;
        *(a3 + v13) = v11;
      }

      v13 = ++v10;
    }

    while (v10 < v6);
  }
}

llvm::FixedVectorType **sub_23C5060BC(uint64_t a1, llvm::ConstantDataVector *a2, llvm::FixedVectorType **a3, BOOL a4)
{
  if (a2 != 1)
  {
    llvm::ConstantInt::get();
    Splat = llvm::ConstantDataVector::getSplat();
    llvm::FixedVectorType::get();
    v7 = llvm::UndefValue::get();
    v13 = 257;
    v8 = llvm::ConstantInt::get();
    v9 = sub_23C505AA8(a1 + 8, v7, a3, v8, v12);
    v10 = llvm::UndefValue::get();
    v13 = 257;
    return sub_23C49A3AC((a1 + 8), v9, v10, Splat, v12);
  }

  return a3;
}

llvm::Type **sub_23C506198(uint64_t a1, llvm::Type **a2, int a3)
{
  v4 = a2;
  v6 = *a2;
  if (llvm::Type::getScalarSizeInBits(*a2) != 32)
  {
    v7 = *(a1 + 192);
    if ((*(v6 + 2) & 0xFE) == 0x12)
    {
      v7 = llvm::FixedVectorType::get();
    }

    v11 = 257;
    if (a3)
    {
      v8 = 40;
    }

    else
    {
      v8 = 39;
    }

    return sub_23C49ACF8(a1 + 8, v8, v4, v7, v10);
  }

  return v4;
}

llvm::Instruction *sub_23C506244(uint64_t a1, uint64_t a2, llvm::Constant *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = a3;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    llvm::FixedVectorType::get();
    v6 = llvm::UndefValue::get();
    memset(v16, 0, sizeof(v16));
    sub_23C505D44(a1, a3, v16);
    v7 = *(*a3 + 32);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v12 = *(v16 + i);
        v14 = 257;
        v9 = sub_23C497A7C((a1 + 8), *(a2 + 24), a2, &v12, 1, v13);
        v12 = v9;
        v14 = 257;
        v10 = llvm::ConstantInt::get();
        v6 = sub_23C505AA8(a1 + 8, v6, v9, v10, v13);
      }
    }
  }

  else
  {
    v14 = 257;
    return sub_23C497A7C((a1 + 8), *(a2 + 24), a2, &v15, 1, v13);
  }

  return v6;
}

uint64_t sub_23C5063B8(uint64_t a1, llvm::Constant *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    memset(v15, 0, sizeof(v15));
    sub_23C505D44(a1, a2, v15);
    v6 = *(*a2 + 32);
    if (!v6)
    {
      return 0;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (*(a3 + 16))(a3, *(v15 + v7));
      if (!v8)
      {
        llvm::FixedVectorType::get();
        v8 = llvm::UndefValue::get();
      }

      v14 = 257;
      v10 = llvm::ConstantInt::get();
      v8 = sub_23C505AA8(a1 + 8, v8, v9, v10, v13);
      ++v7;
    }

    while (v6 != v7);
    return v8;
  }

  else
  {
    v11 = *(a3 + 16);

    return v11(a3);
  }
}

uint64_t sub_23C50654C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 257;
  v4 = sub_23C49EA2C(a1 + 8, a2, a3, v12);
  v13 = 257;
  v5 = llvm::ConstantInt::get();
  v6 = sub_23C5057E8(a1 + 8, v4, v5, v12);
  v7 = *(*v4 + 32);
  if (v7 >= 2)
  {
    for (i = 1; i != v7; ++i)
    {
      v13 = 257;
      v9 = llvm::ConstantInt::get();
      v10 = sub_23C5057E8(a1 + 8, v4, v9, v12);
      v13 = 257;
      v6 = sub_23C4A0BD4(a1 + 8, v6, v10, v12);
    }
  }

  return v6;
}

uint64_t sub_23C506630(uint64_t a1, llvm::Type ***a2, llvm::FixedVectorType **a3, uint64_t a4)
{
  v5 = a3;
  if (*a2 != *a3)
  {
    v5 = sub_23C5060BC(a1, *(*a2 + 8), a3, a4);
  }

  v10 = 257;
  sub_23C497D84((a1 + 8), a4, a2, v5, v9);
  v10 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C5066D8(uint64_t a1, llvm::Type ***a2, char a3, _BOOL4 a4)
{
  if (a4)
  {
    v6 = llvm::ConstantInt::get();
    v7 = sub_23C506630(a1, a2, v6, 40);
    v8 = llvm::ConstantInt::get();
    v9 = a1;
    v10 = v7;
    v11 = 38;
  }

  else
  {
    v8 = llvm::ConstantInt::get();
    v9 = a1;
    v10 = a2;
    v11 = 36;
  }

  return sub_23C506630(v9, v10, v8, v11);
}

uint64_t sub_23C5067B4(uint64_t a1, llvm::UndefValue **a2, uint64_t a3, BOOL a4)
{
  v6 = sub_23C50593C(a1, a2, 4, a4);
  v10 = 257;
  v7 = llvm::ConstantInt::get();
  return sub_23C505AA8(a1 + 8, v6, a3, v7, v9);
}

uint64_t sub_23C506824(uint64_t a1, llvm::Type *a2)
{
  v15 = *(a1 + 56);
  v4 = *(*(v15 + 56) + 80);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v5);
  if (FirstInsertionPt)
  {
    v7 = FirstInsertionPt - 24;
  }

  else
  {
    v7 = 0;
  }

  sub_23C4C30FC(a1 + 8, v7);
  v14 = 257;
  v8 = sub_23C506924((a1 + 8), a2, v13);
  v10 = v15;
  v11 = v16;
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v12 = v17;
  sub_23C49769C(&v10, a1 + 8);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C506924(unsigned int **a1, llvm::Type *a2, uint64_t a3)
{
  Module = llvm::BasicBlock::getModule(a1[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  llvm::DataLayout::getPrefTypeAlign(DataLayout, a2);
  v8 = llvm::User::operator new(0x48);
  llvm::AllocaInst::AllocaInst();
  (*(*a1[10] + 16))(a1[10], v8, a3, a1[6], a1[7]);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *a1;
    v11 = v10 + 16 * v9;
    do
    {
      llvm::Instruction::setMetadata();
      v10 += 16;
    }

    while (v10 != v11);
  }

  return v8;
}

uint64_t sub_23C506A1C(uint64_t a1, llvm::ValueAsMetadata *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 328);
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  Impl = llvm::MDTuple::getImpl();

  return sub_23C49B500(v4, Impl);
}

uint64_t sub_23C506AF0(const char *a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  result = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
  if (a1)
  {
    result = sub_23C4A57A0(result, a1);
    if (!result)
    {
      return result;
    }

    v9 = *a3;
    v10 = *a3 + 1;
    *a3 = v10;
    result = *(a2 - 8 * *(a2 + 8) + 8 * v10);
    if (!result || *result - 1 >= 2)
    {
      result = 0;
      *a3 = v9 + 2;
      return result;
    }

    *a3 = v9 + 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (*result - 1 >= 2)
    {
      return 0;
    }
  }

  v11 = *(result + 128);
  if (v11)
  {
    v12 = *(v11 + 16) == 16;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    return 0;
  }

  v13 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  *a4 = *v13;
  return 1;
}

uint64_t sub_23C506BD8(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.location_index");
  if (result)
  {
    v9 = *a2 + 1;
    result = sub_23C506AF0(0, a1, &v9, a3);
    if (result)
    {
      v10 = *a2 + 2;
      result = sub_23C506AF0(0, a1, &v10, a4);
      if (result)
      {
        *a2 += 3;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23C506C8C(uint64_t a1, _DWORD *a2, _DWORD *a3, BOOL *a4)
{
  String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8));
  if (v9 != 11)
  {
    return 0;
  }

  if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
  {
    return 0;
  }

  *a4 = 0;
  *a3 = 1;
  v12 = *(a1 + 8);
  v21 = 2;
  if (v12 >= 3)
  {
    do
    {
      if (sub_23C506BD8(a1, &v21, a2, a3))
      {
        v13 = v21;
      }

      else
      {
        v14 = sub_23C506AF0("air.binding", a1, &v21, a2);
        v15 = v21;
        v13 = v21;
        if ((v14 & 1) == 0)
        {
          v13 = ++v21;
          if (sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8 * v15), "air.arg_type_name"))
          {
            v16 = v15 + 2;
            v21 = v16;
            v17 = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v13));
            v19 = v18 >= 5 && *v17 == 1634890337 && *(v17 + 4) == 121;
            *a4 = v19;
            v13 = v16;
          }
        }
      }
    }

    while (v13 < v12);
  }

  return 1;
}

BOOL sub_23C506E20(uint64_t a1, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, BOOL *a6, _BYTE *a7)
{
  v14 = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8), "air.texture");
  if (v14)
  {
    *a4 = 1;
    v30 = a6;
    v31 = a5;
    *a5 = 0;
    *a6 = 0;
    *a7 = 0;
    v15 = *(a1 + 8);
    v32 = 2;
    if (v15 >= 3)
    {
      do
      {
        if ((sub_23C506BD8(a1, &v32, a2, a3) & 1) == 0)
        {
          if (sub_23C506AF0("air.binding", a1, &v32, a2))
          {
            *a3 = 1;
          }

          else
          {
            v16 = v32;
            v17 = ++v32;
            v18 = *(a1 - 8 * *(a1 + 8) + 8 * v16);
            if (!*v18)
            {
              String = llvm::MDString::getString(v18);
              if (v20 == 9)
              {
                if (*String != 0x746972772E726961 || *(String + 8) != 101)
                {
                  continue;
                }

                *a4 = 0;
                goto LABEL_34;
              }

              if (v20 == 17)
              {
                if (*String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974 && *(String + 16) == 101)
                {
                  v32 = v16 + 2;
                  v24 = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v17));
                  v26 = v25 >= 5 && *v24 == 1634890337 && *(v24 + 4) == 121;
                  *v30 = v26;
                }

                continue;
              }

              if (v20 == 14 && *String == 0x646165722E726961 && *(String + 6) == 0x65746972775F6461)
              {
                *a4 = 1;
LABEL_34:
                *v31 = 1;
              }
            }
          }
        }
      }

      while (v32 < v15);
    }
  }

  return v14;
}

void sub_23C507060(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_23C5023F4(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v5;
    a1[1] = (v5 + 1);
    sub_23C5022F0(a1, &v14);
    v5 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}

BOOL sub_23C507510(uint64_t a1, _DWORD *a2, void *a3)
{
  result = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.struct_type_info");
  if (result)
  {
    v7 = (*a2)++;
    v8 = *(a1 - 8 * *(a1 + 8) + 8 * (v7 + 1));
    if (v8)
    {
      if (((*v8 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v8)) == 0)
      {
        v8 = 0;
      }
    }

    *a3 = v8;
    *a2 = v7 + 2;
    return v8 != 0;
  }

  return result;
}

BOOL sub_23C5075AC(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, _DWORD *a6, uint64_t *a7, _BYTE *a8, char *a9)
{
  if (!sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8), "air.buffer"))
  {
    result = sub_23C4A57A0(*(a1 - 8 * *(a1 + 8) + 8), "air.indirect_buffer");
    if (!result)
    {
      return result;
    }
  }

  *a8 = 0;
  v18 = *(a1 + 8);
  LODWORD(v47) = 2;
  if (v18 >= 3)
  {
    do
    {
      if ((sub_23C506BD8(a1, &v47, a3, a4) & 1) == 0 && (sub_23C506AF0("air.buffer_size", a1, &v47, a5) & 1) == 0 && (sub_23C506AF0("air.arg_type_size", a1, &v47, a6) & 1) == 0 && !sub_23C507510(a1, &v47, a7))
      {
        LODWORD(v47) = v47 + 1;
      }
    }

    while (v47 < v18);
  }

  v19 = *a5;
  if (*a5)
  {
    if (v19 <= 0xFFFFFFFC && a2 == 2)
    {
      v19 = (v19 + 3) & 0xFFFFFFFC;
    }

    *a5 = v19;
  }

  if (!*a7)
  {
    v35 = 0;
    goto LABEL_58;
  }

  v52 = *a7;
  v47 = v51;
  v48 = v51;
  v49 = 4;
  v50 = 0;
  v45 = 0u;
  v46 = 0u;
  *__p = 0u;
  sub_23C507060(__p, &v52);
  v21 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
LABEL_46:
    v35 = 0;
    goto LABEL_49;
  }

  while (1)
  {
    v22 = __p[1];
    v23 = v46;
    v24 = *(*(__p[1] + ((v46 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v46 & 0x1FF));
    --v21;
    *&v46 = v46 + 1;
    *(&v46 + 1) = v21;
    if (v46 >= 0x400)
    {
      operator delete(*__p[1]);
      __p[1] = v22 + 8;
      *&v46 = v23 - 511;
    }

    sub_23C4F493C(&v47, v24);
    if (v25)
    {
      v43 = 0;
      v26 = v24[2];
      if (v26)
      {
        break;
      }
    }

LABEL_45:
    if (!v21)
    {
      goto LABEL_46;
    }
  }

  while (1)
  {
    v42 = 0;
    if (!sub_23C507510(v24, &v43, &v42))
    {
      break;
    }

    sub_23C507060(__p, &v42);
    v27 = v43;
LABEL_43:
    if (v27 >= v26)
    {
      v21 = *(&v46 + 1);
      goto LABEL_45;
    }
  }

  v28 = v43;
  if (!sub_23C4A57A0(*&v24[2 * v43 + -2 * v24[2]], "air.indirect_argument"))
  {
    v27 = v28 + 1;
    goto LABEL_42;
  }

  v27 = v28 + 1;
  v53[0] = v28 + 1;
  if (sub_23C506AF0(0, v24, v53, &v41))
  {
    goto LABEL_40;
  }

  v29 = *&v24[2 * v27 + -2 * v24[2]];
  if (!v29)
  {
    goto LABEL_42;
  }

  v30 = *v29;
  if (v30 > 0x22 || ((0x7FFFFFFF0uLL >> v30) & 1) == 0)
  {
    goto LABEL_42;
  }

  String = llvm::MDString::getString(*&v29[-8 * *(v29 + 2) + 8]);
  if (v32 == 21)
  {
    v33 = *String == 0x69646E692E726961 && String[1] == 0x6E6F635F74636572;
    if (v33 && *(String + 13) == 0x746E6174736E6F63)
    {
LABEL_40:
      v27 = v28 + 2;
LABEL_42:
      v43 = v27;
      goto LABEL_43;
    }
  }

  v35 = 1;
LABEL_49:
  v36 = __p[1];
  v37 = v45;
  v38 = v45 - __p[1];
  if (v45 - __p[1] >= 0x11)
  {
    do
    {
      v39 = *v36++;
      operator delete(v39);
      v38 -= 8;
    }

    while (v38 > 0x10);
  }

  while (v36 != v37)
  {
    v40 = *v36++;
    operator delete(v40);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v48 != v47)
  {
    free(v48);
  }

LABEL_58:
  *a9 = v35;
  return 1;
}

BOOL sub_23C507938(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1, *(*(a1 + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1);
    sub_23C4B03D4(v3, v4);
    *(a1 + 774) = 1;
    v5 = *(a1 + 744);
    v6 = *(a1 + 736) - *(a1 + 752);
    sub_23C4B0A04((a1 + 704), 4, 0);
    sub_23C4B2DFC((a1 + 704), 6, 7);
    sub_23C4B03D4(a1 + 704, v6 + v5);
    sub_23C4B1830(1uLL);
  }

  return v2;
}

void sub_23C507B50(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v23, &unk_23C53F34D);
  sub_23C49F8D0(v21, "save");
  if (*(a1 + 992))
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  sub_23C507EC8(&v35, v21, v4);
  sub_23C49F8D0(v19, "toggle");
  if (*(a1 + 993))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  sub_23C507EC8(&v36, v19, v5);
  if (SHIBYTE(v24) < 0)
  {
    sub_23C49F988(&__dst, v23[0], v23[1]);
  }

  else
  {
    __dst = *v23;
    v32 = v24;
  }

  sub_23C4B7B84(&v33, &__dst, 0);
  sub_23C49F8D0(v26, "{");
  sub_23C4B7B84(&__p, v26, 0);
  if ((v30 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v7 = v30;
  }

  else
  {
    v7 = v29;
  }

  v8 = std::string::append(&v33, p_p, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst);
  }

  for (i = 0; i != 6; i += 3)
  {
    v11 = (&v35 + i * 8);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      sub_23C49F988(&v33, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = *v11;
    }

    v12 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v25, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v33;
    }

    sub_23C4B7B84(&__p, &v25, 1);
    if ((v30 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v14 = v30;
    }

    else
    {
      v14 = v29;
    }

    std::string::append(&v34, v13, v14);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((v12 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(v33.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&__p, "}");
  sub_23C4B7B84(&v33, &__p, 0);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v34;
  }

  else
  {
    v15 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v33, 0, v15, size);
  *a2 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v36.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v35 + j * 8 + 24));
    }
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_23C507EC8(std::string *a1, const void **a2, char *__s)
{
  sub_23C49F8D0(__p, __s);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = &v13;
  sub_23C4ADD34(&v13, v5 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v13.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v13, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_23C507FCC(uint64_t a1)
{
  Function = llvm::Module::getFunction();
  *(Function + 112) = 0;
  *(Function + 18) = *(Function + 18) & 0xC00F | 0x6A0;
  if (*(a1 + 992) == 1)
  {
    v3 = llvm::Module::getFunction();
    v4 = *(a1 + 344);
    v5 = *(v4 + 1552);
    if (v5)
    {
      v6 = strlen(*(v4 + 1552));
    }

    else
    {
      v6 = 0;
    }

    sub_23C4A0414(a1, v5, v6, *(a1 + 192));
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v3);
    (*(**(a1 + 344) + 272))();
  }

  v7 = llvm::Module::getFunction();
  if (v7)
  {
    v8 = v7;
    v9 = *(a1 + 344);
    if (*(v9 + 1560))
    {
      strlen(*(v9 + 1560));
    }

    llvm::Module::getOrInsertFunction();
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v8);
  }

  llvm::Module::getOrInsertNamedMetadata();
  if (*(a1 + 993) == 1)
  {
    operator new();
  }

  llvm::Value::setName();
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v11 = GlobalVariable;
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1, v11, 5u, 0);
  }

  v12 = llvm::Module::getFunction();
  sub_23C4B22E0(a1, v12);
  result = sub_23C4AF8FC(*(a1 + 400), a1, *(a1 + 320), 1, 3, 0);
  if (result)
  {
    result = (*(*a1 + 80))(a1);
    if (result)
    {
      sub_23C4C420C(a1);
      return 1;
    }
  }

  return result;
}

uint64_t sub_23C50887C(uint64_t a1)
{
  if (*(a1 + 992))
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

const char *sub_23C508890(uint64_t a1)
{
  if (*(a1 + 993))
  {
    v1 = "context_save_toggle";
  }

  else
  {
    v1 = "context_save";
  }

  v2 = "context_restore";
  if (*(a1 + 993))
  {
    v2 = "context_restore_toggle";
  }

  if (*(a1 + 992))
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_23C5088D0(uint64_t a1)
{
  sub_23C4B130C(a1);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C508B8C(uint64_t a1)
{
  v100 = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  v2 = *(*(Function + 1) + 24);
  v3 = sub_23C4B88A0(v2);
  v4 = (v2 - 32 * (*(v2 + 5) & 0x7FFFFFF));
  if (((v3 - v4) & 0x1FFFFFFFE0) != 0)
  {
    v91 = *v4;
    v5 = *v91;
    v6 = *(*(a1 + 56) + 8);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v91 = 0;
  }

  v7 = sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v2);
  MEMORY[0x28223BE20](v7);
  if (v8 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v8;
  }

  v92 = (&v84 - v9);
  bzero(&v84 - v9, v10);
  if (v6)
  {
    if (*(v5 + 8) == 16)
    {
      sub_23C505FD4(a1 + *(*a1 - 24), v91, v92);
    }

    else
    {
      *v92 = v91;
    }

    v11 = 0;
    v12 = 0;
    v89 = a1 + 8;
    v87 = a1 + 3016;
    v86 = a1 + 3272;
    v85 = a1 + 2440;
    v88 = a1 + 192;
    do
    {
      v13 = *(*(a1 + 56) - 8 * *(*(a1 + 56) + 8) + 8 * v11);
      if (!v13)
      {
        goto LABEL_66;
      }

      v14 = *v13;
      if (v14 > 0x22)
      {
        goto LABEL_66;
      }

      if (((0x7FFFFFFF0uLL >> v14) & 1) == 0)
      {
        goto LABEL_66;
      }

      v15 = *&v13[-8 * *(v13 + 2)];
      if (!v15 || *v15)
      {
        goto LABEL_66;
      }

      String = llvm::MDString::getString(v15);
      v18 = String;
      v19 = v17;
      v20 = v92[v11];
      if (v17 > 11)
      {
        if (v17 == 12)
        {
          if (*String == 0x65766F632E726961 && *(String + 8) == 1701273970)
          {
            goto LABEL_66;
          }
        }

        else if (v17 == 17)
        {
          v27 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
          if (v27 && *(String + 16) == 116)
          {
            *v93 = 0;
            LODWORD(v96) = 1;
            if (!sub_23C506AF0(0, v13, &v96, &v93[4]))
            {
              return v12;
            }

            LODWORD(v96) = 2;
            if (!sub_23C506AF0(0, v13, &v96, v93))
            {
              return v12;
            }

            v30 = sub_23C50593C(a1 + *(*a1 - 24), v20, 4, v29);
            if (*v93)
            {
              v31 = v86 + 32 * *&v93[4];
            }

            else
            {
              v31 = v87 + 32 * *&v93[4];
            }

            if (*(v31 + 24))
            {
              v32 = sub_23C4B245C(a1 + *(*a1 - 24), v30, *v31, *(v85 + (*&v93[4] << 6) + 34), *(v85 + (*&v93[4] << 6) + 33));
              v33 = *(*a1 - 24);
              v34 = *(v31 + 24);
              goto LABEL_64;
            }

            goto LABEL_66;
          }
        }
      }

      else if (v17 == 9)
      {
        if (*String == 0x747065642E726961 && *(String + 8) == 104)
        {
          v36 = *(*a1 - 24);
          v34 = *(a1 + 3552);
          goto LABEL_61;
        }
      }

      else if (v17 == 11 && *String == 0x6E6574732E726961 && *(String + 3) == 0x6C69636E6574732ELL)
      {
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*v20);
        v23 = a1 + *(*a1 - 24);
        v24 = *(v23 + 184);
        v99 = 257;
        if (ScalarSizeInBits > 0x10)
        {
          v25 = v23 + 8;
          v26 = 38;
        }

        else
        {
          v25 = v23 + 8;
          v26 = 39;
        }

        v32 = sub_23C49ACF8(v25, v26, v20, v24, &v96);
        v33 = *(*a1 - 24);
        v34 = *(a1 + 3576);
LABEL_64:
        v50 = (v89 + v33);
        goto LABEL_65;
      }

      if (sub_23C509554(String, v17))
      {
        if (sub_23C50965C(*(a1 + 3860), v18, v19))
        {
          v38 = a1 + *(*a1 - 24);
          if (*(*(a1 + 2960) + 32) >> 12 == 1)
          {
            v39 = llvm::ConstantInt::get();
            v99 = 257;
            v40 = sub_23C49A8E0(v38 + 8, v20, v39, &v96);
            v41 = a1 + *(*a1 - 24);
            v42 = llvm::ConstantInt::get();
            v99 = 257;
            sub_23C497D84((v41 + 8), 32, v40, v42, &v96);
            llvm::ConstantInt::get();
            llvm::ConstantInt::get();
            v99 = 257;
            Select = llvm::IRBuilderBase::CreateSelect();
          }

          else
          {
            v44 = llvm::ConstantInt::get();
            v99 = 257;
            v45 = sub_23C49A8E0(v38 + 8, v20, v44, &v96);
            v46 = a1 + *(*a1 - 24);
            v47 = llvm::ConstantInt::get();
            v99 = 257;
            v48 = sub_23C49A668(v46 + 8, v45, v47, &v96);
            v49 = *(*a1 - 24);
            v99 = 257;
            Select = sub_23C49A98C(v89 + v49, v48, v45, &v96);
          }

          v20 = Select;
        }

        v36 = *(*a1 - 24);
        v34 = *(a1 + 3600);
LABEL_61:
        v50 = (v89 + v36);
        v32 = v20;
LABEL_65:
        sub_23C4BA8C0(v50, v32, v34, 0);
      }

LABEL_66:
      v12 = ++v11 >= v6;
    }

    while (v6 != v11);
  }

  if (v91)
  {
    sub_23C4D9264(v91);
  }

  llvm::Instruction::eraseFromParent(v2);
  llvm::Function::eraseFromParent(Function);
  v51 = llvm::Module::getFunction();
  if (v51)
  {
    v52 = v51;
    v96 = v98;
    v97 = 0x400000000;
    v53 = *(v51 + 8);
    while (v53)
    {
      v54 = *(v53 + 24);
      v53 = *(v53 + 8);
      sub_23C4C30FC(a1 + 8 + *(*a1 - 24), v54);
      v55 = *(a1 + *(*a1 - 24) + 56);
      v95[8] = 257;
      v56 = llvm::BasicBlock::splitBasicBlock();
      sub_23C49B500(&v96, v56);
      v57 = *(v55 + 40);
      if (v57 == v55 + 40)
      {
        v60 = 0;
      }

      else
      {
        v58 = v57 - 24;
        if (v57)
        {
          v59 = v57 - 24;
        }

        else
        {
          v59 = 0;
        }

        if (*(v59 + 16) - 29 >= 0xB)
        {
          v60 = 0;
        }

        else
        {
          v60 = v58;
        }
      }

      v61 = *(a1 + 3680);
      v62 = (v60 - 32);
      if (*(v60 - 32))
      {
        v63 = *(v60 - 24);
        **(v60 - 16) = v63;
        if (v63)
        {
          *(v63 + 16) = *(v60 - 16);
        }
      }

      *v62 = v61;
      if (v61)
      {
        v66 = *(v61 + 8);
        v64 = (v61 + 8);
        v65 = v66;
        *(v60 - 24) = v66;
        if (v66)
        {
          *(v65 + 16) = v60 - 24;
        }

        *(v60 - 16) = v64;
        *v64 = v62;
      }

      llvm::Instruction::eraseFromParent(v54);
    }

    llvm::Function::eraseFromParent(v52);
    *&v93[4] = v95;
    v94 = 0x400000000;
    v67 = v97;
    if (v97)
    {
      do
      {
        v68 = v96[v67 - 1];
        LODWORD(v97) = v67 - 1;
        sub_23C49B500(&v93[4], v68);
        v69 = v68 + 5;
        for (i = v68[6]; i != v69; i = i[1])
        {
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
        }

        v71 = *v69;
        if (*v69 != v69)
        {
          v72 = (v71 - 3);
          v73 = v71 ? (v71 - 3) : 0;
          v74 = *(v73 + 16) - 29;
          v75 = v74 >= 0xB ? 0 : v72;
          if (v74 <= 0xA)
          {
            NumSuccessors = llvm::Instruction::getNumSuccessors(v72);
            if (NumSuccessors)
            {
              v77 = NumSuccessors;
              for (j = 0; j != v77; ++j)
              {
                Successor = llvm::Instruction::getSuccessor(v75);
                if (llvm::BasicBlock::getSinglePredecessor(Successor))
                {
                  v80 = llvm::Instruction::getSuccessor(v75);
                  sub_23C49B500(&v96, v80);
                }

                v81 = llvm::Instruction::getSuccessor(v75);
                llvm::BasicBlock::removePredecessor(v81, v68);
              }
            }
          }
        }

        llvm::BasicBlock::dropAllReferences(v68);
        v67 = v97;
      }

      while (v97);
      while (v94)
      {
        v82 = *(*&v93[4] + 8 * v94 - 8);
        LODWORD(v94) = v94 - 1;
        llvm::BasicBlock::eraseFromParent(v82);
      }
    }

    if (*&v93[4] != v95)
    {
      free(*&v93[4]);
    }

    if (v96 != v98)
    {
      free(v96);
    }
  }

  return 1;
}

BOOL sub_23C509554(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 20)
  {
    if (a2 == 21)
    {
      v16 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 13);
      v12 = v16 == 0x6F6C6F632E726961;
      v13 = 0x656C706D61735F72;
    }

    else
    {
      if (a2 != 22)
      {
        return result;
      }

      v9 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 14);
      v12 = v9 == 0x747361722E726961;
      v13 = 0x6C706D61735F7265;
    }

    v15 = v12 && v10 == v13;
  }

  else
  {
    if (a2 != 15)
    {
      if (a2 != 18)
      {
        return result;
      }

      v4 = *a1;
      v5 = a1[1];
      v6 = *(a1 + 8);
      return v4 == 0x706D61732E726961 && v5 == 0x5F6B73616D5F656CLL && v6 == 28265;
    }

    v14 = *a1;
    v11 = *(a1 + 7);
    v15 = v14 == 0x706D61732E726961;
  }

  return v15 && v11 == 0x6B73616D5F656C70;
}

BOOL sub_23C50965C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1 && a3 == 18)
  {
    return *a2 == 0x706D61732E726961 && *(a2 + 8) == 0x5F6B73616D5F656CLL && *(a2 + 16) == 28265;
  }

  else
  {
    if (a3 != 21)
    {
      return 0;
    }

    v5 = 0x6169722E636F6C6FLL;
    v6 = bswap64(*a2);
    if (v6 == 0x6169722E636F6C6FLL && (v5 = 0x725F73616D706C65, v6 = bswap64(*(a2 + 8)), v6 == 0x725F73616D706C65) && (v5 = 0x706C655F6D61736BLL, v6 = bswap64(*(a2 + 13)), v6 == 0x706C655F6D61736BLL))
    {
      v7 = 0;
    }

    else if (v5 < v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    return v7 == 0;
  }
}

uint64_t sub_23C509738(_BYTE *a1)
{
  v224 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 20) + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = v4 - 24;
  }

  else
  {
    v5 = 0;
  }

  sub_23C4C30FC(&a1[*(*a1 - 24) + 8], v5);
  if ((a1[3839] & 1) != 0 || (a1[3528] & 4) != 0)
  {
    v6 = sub_23C50B2E8(a1, 6u, 0, 1);
    if (a1[3839] == 1)
    {
      v7 = &a1[*(*a1 - 24)];
      v8 = *(v7 + 43);
      v220 = *(v7 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v221, (v7 + 8));
      v222 = *(v7 + 26);
      v9 = (*(*v8 + 240))(v8, &v220, 1, 0, v6, 0);
      sub_23C4D56F8((a1 + 3688), v9);
      if (v221)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if ((a1[3528] & 4) != 0)
    {
      v10 = &a1[*(*a1 - 24)];
      v11 = *(v10 + 43);
      v217 = *(v10 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v218, (v10 + 8));
      v219 = *(v10 + 26);
      v12 = (*(*v11 + 240))(v11, &v217, 1, *(a1 + 962), v6, 0);
      sub_23C4D56F8((a1 + 3712), v12);
      if (v218)
      {
        llvm::MetadataTracking::untrack();
      }

      if (*(a1 + 962) == 1 && *(a1 + 738) <= 1)
      {
        *(a1 + 738) = 2;
      }
    }
  }

  if (a1[3839] == 1)
  {
    v13 = &a1[*(*a1 - 24)];
    v14 = *(v13 + 43);
    v15 = *(v14 + 1456);
    if (v15)
    {
      v16 = strlen(*(v14 + 1456));
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_23C4A0414(v13, v15, v16, *(v13 + 20));
    v18 = &a1[*(*a1 - 24)];
    v19 = *(v18 + 43);
    v20 = *(v19 + 1464);
    if (v20)
    {
      v21 = strlen(*(v19 + 1464));
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_23C4A0414(v18, v20, v21, *(v18 + 20));
    v23 = &a1[*(*a1 - 24)];
    v24 = llvm::UndefValue::get();
    v25 = &a1[*(*a1 - 24)];
    v216 = 257;
    v26 = sub_23C497A7C(v25 + 1, **(*v17 + 16), v17, 0, 0, &v214);
    v213 = 257;
    v27 = llvm::ConstantInt::get();
    v28 = sub_23C505AA8((v23 + 8), v24, v26, v27, v212);
    v29 = &a1[*(*a1 - 24)];
    v216 = 257;
    v30 = sub_23C497A7C(v29 + 1, **(*v22 + 16), v22, 0, 0, &v214);
    v31 = (*(*a1 + 376))(a1, v30);
    v32 = &a1[*(*a1 - 24)];
    v216 = 257;
    v33 = llvm::ConstantInt::get();
    v34 = sub_23C505AA8((v32 + 8), v28, v31, v33, &v214);
    v35 = sub_23C50B2E8(a1, 0, 0, 1);
    sub_23C4D56F8((a1 + 3736), v35);
    v36 = &a1[*(*a1 - 24)];
    v37 = *(v36 + 43);
    v209 = *(v36 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v210, (v36 + 8));
    v211 = *(v36 + 26);
    v38 = (*(*v37 + 240))(v37, &v209, 1, 0, *(a1 + 469), 0);
    if (v210)
    {
      llvm::MetadataTracking::untrack();
    }

    v39 = &a1[*(*a1 - 24)];
    v40 = *(a1 + 463);
    v216 = 257;
    v41 = llvm::ConstantInt::get();
    v42 = sub_23C505AA8((v39 + 8), v34, v40, v41, &v214);
    v43 = &a1[*(*a1 - 24)];
    v216 = 257;
    v44 = llvm::ConstantInt::get();
    v199 = sub_23C505AA8((v43 + 8), v42, v38, v44, &v214);
  }

  else
  {
    v199 = 0;
  }

  if (a1[3840] == 1)
  {
    v45 = llvm::User::operator new(0x58);
    *&v214 = "agc.front_direction";
    v216 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C(&a1[*(*a1 - 24)], v45, 0x18u, 0);
    v46 = &a1[*(*a1 - 24)];
    v47 = *(v46 + 43);
    v206 = *(v46 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v207, (v46 + 8));
    v208 = *(v46 + 26);
    v198 = (*(*v47 + 368))(v47, &v206, v45);
    if (v207)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v198 = 0;
  }

  v48 = llvm::PointerType::get();
  if ((a1[3841] & 1) != 0 || a1[3842] == 1 && (*(*(a1 + 370) + 33) & 0xE) == 0)
  {
    v49 = sub_23C50B2E8(a1, 5u, 0, 2);
    v50 = &a1[*(*a1 - 24)];
    v51 = *(v50 + 43);
    v203 = *(v50 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v204, (v50 + 8));
    v205 = *(v50 + 26);
    v52 = &a1[*(*a1 - 24)];
    v216 = 257;
    v53 = sub_23C49ACF8((v52 + 8), 49, v49, v48, &v214);
    v54 = (*(*v51 + 240))(v51, &v203, 2, 0, v53, 0);
    sub_23C4D56F8((a1 + 3760), v54);
    if (v204)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if (a1[3842] == 1 && (*(*(a1 + 370) + 33) & 0xE) != 0)
  {
    v55 = sub_23C50B2E8(a1, 5u, 0, 2);
    v56 = &a1[*(*a1 - 24)];
    v57 = *(v56 + 43);
    v200 = *(v56 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v201, (v56 + 8));
    v202 = *(v56 + 26);
    v58 = &a1[*(*a1 - 24)];
    v216 = 257;
    v59 = sub_23C49ACF8((v58 + 8), 49, v55, v48, &v214);
    v60 = (*(*v57 + 240))(v57, &v200, 2, 1, v59, 0);
    sub_23C4D56F8((a1 + 3784), v60);
    if (v201)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(a1 + 738) <= 1)
    {
      *(a1 + 738) = 2;
    }
  }

  v61 = *(a1 + 20);
  if (*(v61 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 20));
    v63 = *(a1 + 20);
    v62 = *(v61 + 88);
    if (*(v63 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 20));
    }

    v61 = v63;
  }

  else
  {
    v62 = *(v61 + 88);
  }

  v64 = *(v61 + 88) + 40 * *(v61 + 96);
  v65 = a1 + 8;
  if (v62 == v64)
  {
LABEL_190:
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v164 = Function;
      llvm::ConstantInt::get();
      llvm::ConstantInt::get();
      v165 = *(v164 + 8);
      while (v165)
      {
        v166 = *(v165 + 24);
        v165 = *(v165 + 8);
        sub_23C4B88A0(v166);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v166);
      }
    }

    v167 = llvm::Module::getFunction();
    if (!v167)
    {
      return 1;
    }

    v168 = v167;
    llvm::ArrayType::get(*&a1[*(*a1 - 24) + 160], ((*(*(a1 + 370) + 32) >> 7) & 0x1E));
    v169 = 1;
    v170 = llvm::User::operator new(0x58);
    *&v214 = "agc.sample_positions";
    v216 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C(&a1[*(*a1 - 24)], v170, 0x4Bu, 0);
    v171 = *(v168 + 8);
    if (v171)
    {
      do
      {
        v172 = *(v171 + 8);
        v173 = *(v171 + 24);
        sub_23C4C30FC(&a1[*(*a1 - 24) + 8], v173);
        v174 = llvm::UndefValue::get();
        v175 = &a1[*(*a1 - 24)];
        v176 = *(v173 - 4 * (*(v173 + 5) & 0x7FFFFFF));
        v177 = llvm::ConstantInt::get();
        v216 = 257;
        v178 = sub_23C49ADDC((v175 + 8), v176, v177, &v214);
        v179 = &a1[*(*a1 - 24)];
        *&v223[0] = llvm::ConstantInt::get();
        *(&v223[0] + 1) = v178;
        v216 = 257;
        v180 = sub_23C4ED3A0(v179, v170, v223, 2, &v214);
        v213 = 257;
        v181 = sub_23C497C88(v179 + 1, **(*v180 + 16), v180, 0, v212);
        v182 = &a1[*(*a1 - 24)];
        v216 = 257;
        v183 = llvm::ConstantInt::get();
        v184 = sub_23C505AA8((v182 + 8), v174, v181, v183, &v214);
        v185 = &a1[*(*a1 - 24)];
        v169 = 1;
        v186 = llvm::ConstantInt::get();
        v216 = 257;
        v187 = sub_23C49A474((v185 + 8), v178, v186, &v214);
        v188 = &a1[*(*a1 - 24)];
        *&v223[0] = llvm::ConstantInt::get();
        *(&v223[0] + 1) = v187;
        v216 = 257;
        v189 = sub_23C4ED3A0(v188, v170, v223, 2, &v214);
        v213 = 257;
        v190 = sub_23C497C88(v188 + 1, **(*v189 + 16), v189, 0, v212);
        v191 = &a1[*(*a1 - 24)];
        v216 = 257;
        v192 = llvm::ConstantInt::get();
        sub_23C505AA8((v191 + 8), v184, v190, v192, &v214);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v173);
        v171 = v172;
      }

      while (v172);
    }

    return v169;
  }

  v197 = a1 + 344;
  v66 = v3;
  while (1)
  {
    if (*(v62 + 1))
    {
      v67 = *(*(a1 + 9) + 8 * v62[8]);
      v68 = *(v3 + 40);
      v69 = v68 ? v68 - 24 : 0;
      sub_23C4DB1C0(&a1[*(*a1 - 24)], v69, *(a1 + 5));
      if ((sub_23C52EDE4(a1, v62, v62[8], v67) & 1) == 0)
      {
        break;
      }
    }

LABEL_184:
    v62 += 10;
    if (v62 == v64)
    {
      goto LABEL_190;
    }
  }

  String = llvm::MDString::getString(*(v67 - 8 * *(v67 + 8) + 8));
  v72 = String;
  v73 = v71;
  if (v71 <= 16)
  {
    if (v71 <= 14)
    {
      if (v71 != 12)
      {
        if (v71 == 13)
        {
          v74 = *String == 0x706D61732E726961 && *(String + 5) == 0x64695F656C706D61;
          if (v74)
          {
            v75 = &a1[*(*a1 - 24)];
            v76 = *(v75 + 43);
            v77 = *(v76 + 1472);
            if (v77)
            {
              v78 = strlen(*(v76 + 1472));
            }

            else
            {
              v78 = 0;
            }

            v139 = sub_23C4A0414(v75, v77, v78, *(v75 + 24));
            v140 = *(*a1 - 24);
            v216 = 257;
            v141 = sub_23C497A7C(&v65[v140], **(*v139 + 16), v139, 0, 0, &v214);
            v142 = *v62;
            v213 = 257;
            v103 = sub_23C49ACF8(&v65[v140], 38, v141, v142, v212);
            if (*(a1 + 738) <= 1)
            {
              *(a1 + 738) = 2;
            }

            goto LABEL_180;
          }
        }

        goto LABEL_136;
      }

      if (*String != 0x69736F702E726961 || *(String + 8) != 1852795252)
      {
        goto LABEL_136;
      }

      if ((*(*v62 + 8) & 0xFE) == 0x12)
      {
        v95 = *(**(*v62 + 16) + 8);
      }

      else
      {
        v95 = *(*v62 + 8);
      }

      v129 = *(*a1 - 24);
      v74 = v95 == 0;
      v130 = 272;
      if (v74)
      {
        v130 = 264;
      }

      v131 = *&a1[v130 + v129];
      v216 = 257;
      v132 = &v65[v129];
      v133 = v199;
LABEL_176:
      v105 = sub_23C49FEB4(v132, v133, v131, &v214);
      goto LABEL_179;
    }

    if (v71 == 15)
    {
      if (*String != 0x6E696F702E726961 || *(String + 7) != 0x64726F6F635F746ELL)
      {
        goto LABEL_136;
      }

      if ((*(*v62 + 8) & 0xFE) == 0x12)
      {
        v107 = *(**(*v62 + 16) + 8);
      }

      else
      {
        v107 = *(*v62 + 8);
      }

      v134 = *(*a1 - 24);
      v74 = v107 == 0;
      v135 = a1 + 208;
      if (!v74)
      {
        v135 = a1 + 216;
      }

      v131 = *&v135[v134];
      v133 = *(a1 + 472);
      v216 = 257;
      v132 = &v65[v134];
      goto LABEL_176;
    }

    if (*String != 0x6E6F72662E726961 || *(String + 8) != 0x676E696361665F74)
    {
      goto LABEL_136;
    }

    v84 = *(*a1 - 24);
    v85 = *v62;
    v216 = 257;
    v86 = &v65[v84];
    v87 = 39;
    v88 = v198;
LABEL_178:
    v105 = sub_23C49ACF8(v86, v87, v88, v85, &v214);
    goto LABEL_179;
  }

  if (v71 > 23)
  {
    if (v71 != 24)
    {
      if (v71 != 29)
      {
        goto LABEL_136;
      }

      v89 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
      v90 = v89 && *(String + 16) == 0x5F79617272615F74;
      if (!v90 || *(String + 21) != 0x7865646E695F7961)
      {
        goto LABEL_136;
      }

      a1[3857] = 1;
      v92 = *a1;
      v93 = &a1[*(*a1 - 24)];
      if (*(*(v93 + 43) + 1670))
      {
        v214 = 0u;
        v215 = 0u;
        (*(v92 + 336))(&v214, a1, *v62, v67, "air.render_target_array_index", 29);
LABEL_161:
        v105 = sub_23C50B828(a1, &v214, v81);
LABEL_179:
        v103 = v105;
LABEL_180:
        if ((*(*v62 + 8) & 0xFE) == 0x12 && *(*v62 + 32) == 1)
        {
          v136 = &a1[*(*a1 - 24)];
          v137 = llvm::UndefValue::get();
          v216 = 257;
          v138 = llvm::ConstantInt::get();
          sub_23C505AA8((v136 + 8), v137, v103, v138, &v214);
        }

        llvm::Value::replaceAllUsesWith();
        goto LABEL_184;
      }

      v88 = llvm::ConstantInt::get();
      v85 = *v62;
      v216 = 257;
      v86 = (v93 + 8);
      v87 = 38;
      goto LABEL_178;
    }

    if (*String == 0x776569762E726961 && *(String + 8) == 0x7272615F74726F70 && *(String + 16) == 0x7865646E695F7961)
    {
      a1[3856] = 1;
      v214 = 0u;
      v215 = 0u;
      (*(*a1 + 336))(&v214, a1, *v62, v67, "air.viewport_array_index", 24);
      goto LABEL_161;
    }
  }

  else if (v71 == 17)
  {
    if (*String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265 && *(String + 16) == 116)
    {
      v212[0] = 0;
      LODWORD(v214) = 2;
      if (!sub_23C506AF0(0, v67, &v214, v212))
      {
        return 0;
      }

      v98 = v212[0];
      v99 = sub_23C50B55C((a1 + 2432), v212[0], 0, 0);
      v100 = *v62;
      v101 = llvm::FixedVectorType::get();
      v102 = sub_23C4B245C(&a1[*(*a1 - 24)], v99, v101, a1[64 * v98 + 2474], a1[64 * v98 + 2473]);
      v103 = v102;
      if ((*(v100 + 8) & 0xFE) == 0x12)
      {
        v104 = *(v100 + 32);
        if (v104 == *(*v102 + 32))
        {
          goto LABEL_180;
        }

        v105 = sub_23C505670(&a1[*(*a1 - 24)], v102, v104, 1);
        goto LABEL_179;
      }

LABEL_167:
      v127 = &a1[*(*a1 - 24)];
      v216 = 257;
      v128 = llvm::ConstantInt::get();
      v105 = sub_23C5057E8((v127 + 8), v103, v128, &v214);
      goto LABEL_179;
    }
  }

  else if (v71 == 18)
  {
    v79 = *String == 0x676172662E726961 && *(String + 8) == 0x706E695F746E656DLL;
    if (v79 && *(String + 16) == 29813)
    {
      a1[3836] = 1;
      v214 = 0u;
      v215 = 0u;
      (*(*a1 + 328))(&v214, a1, *v62, v67);
      if (!DWORD1(v214) && !*(a1 + 469))
      {
        v82 = sub_23C50B2E8(a1, 0, 0, 1);
        sub_23C4D56F8((a1 + 3736), v82);
      }

      goto LABEL_161;
    }
  }

LABEL_136:
  if (sub_23C509554(String, v71))
  {
    v110 = &a1[*(*a1 - 24)];
    v111 = *(v110 + 43);
    v112 = *(v111 + 1504);
    if (v112)
    {
      v113 = strlen(*(v111 + 1504));
    }

    else
    {
      v113 = 0;
    }

    v116 = sub_23C4A0414(v110, v112, v113, *(v110 + 24));
    v117 = *(*a1 - 24);
    v216 = 257;
    v118 = sub_23C497A7C(&v65[v117], **(*v116 + 16), v116, 0, 0, &v214);
    v119 = *v62;
    v213 = 257;
    v103 = sub_23C49ACF8(&v65[v117], 38, v118, v119, v212);
    if (sub_23C50965C(*(a1 + 965), v72, v73))
    {
      v120 = &a1[*(*a1 - 24)];
      v121 = llvm::ConstantInt::get();
      v216 = 257;
      v103 = sub_23C49A8E0((v120 + 8), v103, v121, &v214);
    }

    v3 = v66;
    a1[3838] = 1;
    goto LABEL_180;
  }

  if (v73 == 21)
  {
    if (*v72 != 0x797261622E726961 || v72[1] != 0x5F636972746E6563 || *(v72 + 13) != 0x64726F6F635F6369)
    {
      goto LABEL_159;
    }

    v124 = *&v197[*(*a1 - 24)];
    if (((*(*v124 + 536))(v124) & 1) == 0)
    {
      v194 = &a1[*(*a1 - 24)];
      v195 = "barycentric_coords not supported for this device";
      goto LABEL_201;
    }

    memset(v223, 0, sizeof(v223));
    (*(*a1 + 352))(v223, a1, *v62, v67);
    v103 = sub_23C50B828(a1, v223, v125);
    if ((*(*v62 + 8) & 0xFE) == 0x12)
    {
      v126 = *(*v62 + 32);
      if (v126 == 3)
      {
        v143 = &a1[*(*a1 - 24)];
        v216 = 257;
        v144 = llvm::ConstantInt::get();
        v145 = sub_23C5057E8((v143 + 8), v103, v144, &v214);
        v146 = &a1[*(*a1 - 24)];
        v216 = 257;
        v147 = llvm::ConstantInt::get();
        v148 = sub_23C5057E8((v146 + 8), v103, v147, &v214);
        v149 = &a1[*(*a1 - 24)];
        v150 = llvm::ConstantFP::get();
        v151 = *(*a1 - 24);
        v216 = 257;
        v152 = sub_23C4A0BD4(&v65[v151], v145, v148, &v214);
        v213 = 257;
        v196 = sub_23C4A0EC4((v149 + 8), v150, v152, v212);
        v153 = &a1[*(*a1 - 24)];
        v154 = llvm::UndefValue::get();
        v216 = 257;
        v155 = llvm::ConstantInt::get();
        v156 = v154;
        v3 = v66;
        v157 = sub_23C505AA8((v153 + 8), v156, v145, v155, &v214);
        v158 = &a1[*(*a1 - 24)];
        v216 = 257;
        v159 = llvm::ConstantInt::get();
        v160 = sub_23C505AA8((v158 + 8), v157, v148, v159, &v214);
        v161 = &a1[*(*a1 - 24)];
        v216 = 257;
        v162 = llvm::ConstantInt::get();
        v105 = sub_23C505AA8((v161 + 8), v160, v196, v162, &v214);
        goto LABEL_179;
      }

      if (v126 == 2)
      {
        goto LABEL_180;
      }

      if (v126 != 1)
      {
LABEL_159:
        v103 = 0;
        goto LABEL_180;
      }
    }

    goto LABEL_167;
  }

  if (v73 != 16)
  {
    goto LABEL_159;
  }

  if (*v72 != 0x6D6972702E726961 || v72[1] != 0x64695F6576697469)
  {
    goto LABEL_159;
  }

  v115 = *&v197[*(*a1 - 24)];
  if ((*(*v115 + 528))(v115))
  {
    v214 = 0u;
    v215 = 0u;
    (*(*a1 + 344))(&v214, a1, *v62);
    goto LABEL_161;
  }

  v194 = &a1[*(*a1 - 24)];
  v195 = "primitive_id not supported for this device";
LABEL_201:
  std::string::append(v194 + 17, v195);
  return 0;
}

llvm::ValueAsMetadata *sub_23C50B2E8(void *a1, unsigned int a2, unint64_t a3, llvm::Type *a4)
{
  if (a4 >= 2)
  {
    llvm::ArrayType::get(*(a1 + *(*a1 - 24) + 272), a4);
  }

  v4 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  *(v4 + 80) |= 1u;
  llvm::GlobalObject::setAlignment();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  return v4;
}

llvm::ConstantFP **sub_23C50B55C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = a2;
  v7 = a2;
  v8 = *(a1 + 528) + 4 * a2;
  if ((a4 & 1) == 0)
  {
    *(a1 + 544) |= 15 << (4 * a2);
  }

  if (*(a1 + 520) <= 0)
  {
    *(a1 + 520) = 1;
  }

  v9 = a1 + *(*a1 - 24);
  v10 = *(v9 + 344);
  v29 = *(v9 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (v9 + 8));
  v31 = *(v9 + 104);
  v11 = a1 + (v7 << 6);
  v13 = *(v11 + 8);
  v12 = v11 + 8;
  v14 = (*(*v10 + 200))(v10, &v29, *(*(a1 + 528) + 32) >> 12, BYTE2(*(*(a1 + 528) + 32)), v8, v13);
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = sub_23C4B28B0(a1 + *(*a1 - 24), v14, *(v12 + 16), *(v12 + 28));
  v16 = sub_23C50BD14(a1, v15, 0, v5, 0);
  if ((a3 & 1) == 0)
  {
    if (*(v12 + 52) == 1 && *(v12 + 32) == 1)
    {
      v17 = a1 + *(*a1 - 24);
      v18 = *(v17 + 344);
      if (*(v18 + 1642) == 1 && (*(v12 + 56) & 1) == 0)
      {
        v26 = *(v17 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v27, (v17 + 8));
        v28 = *(v17 + 104);
        v16 = sub_23C4A28C8(v18, &v26, v16, v12 + 36, 1);
        if (v27)
        {
          llvm::MetadataTracking::untrack();
        }
      }
    }

    v19 = sub_23C505C18(a1 + *(*a1 - 24), v16, *(*(a1 + 528) + 4 * v7) >> 5, *(v12 + 33), *(v12 + 34));
    v20 = a1 + *(*a1 - 24);
    v21 = *(v20 + 344);
    v23 = *(v20 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v24, (v20 + 8));
    v25 = *(v20 + 104);
    v16 = (*(*v21 + 400))(v21, &v23, v19, v8);
    if (v24)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return v16;
}

llvm::Instruction *sub_23C50B828(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v5 = a2[3];
  v6 = *a2;
  if (a2[1] == 1)
  {
    *(a1 + 3837) = 1;
    v7 = 3;
  }

  else
  {
    v7 = a2[2];
    if (v7 == 1)
    {
      if (*(a1 + 738) <= 1)
      {
        *(a1 + 738) = 2;
      }

      v7 = 1;
    }
  }

  v8 = llvm::PointerType::get();
  v9 = a1 + *(*a1 - 24);
  v10 = *(a2 + 3);
  v43 = 257;
  v11 = sub_23C49ACF8((v9 + 8), 49, v10, v8, v42);
  if (v7 != 3)
  {
    v27 = a2[1];
    v28 = a1 + *(*a1 - 24);
    v29 = *(v28 + 43);
    if (v27)
    {
      v34 = *(v28 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (v28 + 8));
      v36 = *(v28 + 26);
      v13 = (*(*v29 + 240))(v29, &v34, v6, v7, v11, 0);
      if (!v35)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v37 = *(v28 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (v28 + 8));
      v39 = *(v28 + 26);
      v13 = (*(*v29 + 240))(v29, &v37, v6, v7, v11, a1[469]);
      if (!v38)
      {
        goto LABEL_21;
      }
    }

    llvm::MetadataTracking::untrack();
    goto LABEL_21;
  }

  llvm::FixedVectorType::get();
  v13 = llvm::UndefValue::get();
  if (!v6)
  {
    if (v5 >= 2)
    {
      goto LABEL_25;
    }

    return sub_23C5053E8(a1 + *(*a1 - 24), v13, v5, *(*(a1 + *(*a1 - 24) + 344) + 1640));
  }

  for (i = 0; i != v6; ++i)
  {
    v15 = *v11;
    if ((*(*v11 + 8) & 0xFE) == 0x12)
    {
      v15 = **(v15 + 16);
    }

    v16 = a1 + *(*a1 - 24);
    v17 = **(v15 + 16);
    v41 = 257;
    llvm::Type::getInt32Ty(*(v16 + 9), v12);
    v44[0] = llvm::ConstantInt::get();
    v18 = (*(**(v16 + 10) + 48))(*(v16 + 10), v17, v11, v44, 1, 1);
    if (!v18)
    {
      v43 = 257;
      v18 = sub_23C49AFDC(v17, v11, v44, 1, v42, 0);
      llvm::GetElementPtrInst::setIsInBounds(v18);
      sub_23C49B15C(v16 + 1, v18, v40);
    }

    v43 = 257;
    v19 = sub_23C497C88(v16 + 1, **(*v18 + 16), v18, 0, v42);
    v20 = a1 + *(*a1 - 24);
    v43 = 257;
    v21 = llvm::ConstantInt::get();
    v22 = sub_23C5057E8((v20 + 8), v19, v21, v42);
    v23 = a1 + *(*a1 - 24);
    v43 = 257;
    v24 = llvm::ConstantInt::get();
    v13 = sub_23C505AA8((v23 + 8), v13, v22, v24, v42);
  }

  if (v6 == 1)
  {
    v25 = a1 + *(*a1 - 24);
    v43 = 257;
    v26 = llvm::ConstantInt::get();
    v13 = sub_23C5057E8((v25 + 8), v13, v26, v42);
    if (v5 < 2)
    {
      return sub_23C5053E8(a1 + *(*a1 - 24), v13, v5, *(*(a1 + *(*a1 - 24) + 344) + 1640));
    }

    goto LABEL_23;
  }

LABEL_21:
  if (v5 >= 2)
  {
    if (v6 == 1)
    {
LABEL_23:
      v30 = *a1;
      v31 = *(a1 + *(*a1 - 24) + 192);
LABEL_26:
      v32 = a1 + *(v30 - 24);
      v43 = 257;
      v13 = sub_23C49ACF8((v32 + 8), 49, v13, v31, v42);
      return sub_23C5053E8(a1 + *(*a1 - 24), v13, v5, *(*(a1 + *(*a1 - 24) + 344) + 1640));
    }

LABEL_25:
    v31 = llvm::FixedVectorType::get();
    v30 = *a1;
    goto LABEL_26;
  }

  return sub_23C5053E8(a1 + *(*a1 - 24), v13, v5, *(*(a1 + *(*a1 - 24) + 344) + 1640));
}

uint64_t sub_23C50BD14(void *a1, uint64_t a2, uint64_t a3, _BOOL4 a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(a1[66] + 4 * a4) >> 12) & 7)
  {
    v12 = llvm::ConstantInt::get();
    v13 = llvm::ConstantInt::get();
    v14 = llvm::ConstantInt::get();
    v15 = llvm::ConstantInt::get();
    v8 = (a1 + *(*a1 - 24));
    v9 = llvm::ConstantVector::get();
    v11[16] = 257;
    return sub_23C49A3AC(v8 + 1, a2, a2, v9, v11);
  }

  return a2;
}

uint64_t sub_23C50BFF0(uint64_t a1)
{
  if ((*(*(a1 + 2960) + 33) & 0xE) != 0 && *(a1 + 2952) > 0)
  {
    return 103;
  }

  else
  {
    return 101;
  }
}

uint64_t sub_23C50C040(uint64_t *a1)
{
  v220 = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  if (Function && *(Function + 8))
  {
    *&v215[0] = "feedback_output";
    LOWORD(v216) = 259;
    operator new();
  }

  v3 = 0;
  v4 = *a1[476];
  if (v4)
  {
    v5 = a1[377];
    v6 = a1 + *(*a1 - 24);
    if (v5 == *(v6 + 34) || v5 == *(v6 + 33))
    {
      v7 = *(v6 + 43);
      v210 = *(v6 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v211, (v6 + 8));
      v212 = *(v6 + 26);
      v8 = (a1 + *(*a1 - 24));
      v9 = a1[380];
      v219 = 257;
      v10 = sub_23C497C88(v8 + 1, **(*v9 + 16), v9, 0, v218);
      LOWORD(v216) = 257;
      v11 = llvm::ConstantInt::get();
      v12 = sub_23C5057E8((v8 + 1), v10, v11, v215);
      v13 = (*(*v7 + 32))(v7, &v210, v12, (*(a1[370] + 32) >> 8) & 0xF);
      if (v211)
      {
        llvm::MetadataTracking::untrack();
      }

      v14 = (a1 + *(*a1 - 24));
      v15 = a1[450];
      LOWORD(v216) = 257;
      v16 = sub_23C497C88(v14 + 1, **(*v15 + 16), v15, 0, v215);
      v17 = a1 + *(*a1 - 24);
      LOWORD(v216) = 257;
      v18 = sub_23C49A8E0((v17 + 8), v16, v13, v215);
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v18, a1[450], 0);
      v4 = *a1[476];
    }
  }

  if ((v4 & 2) != 0)
  {
    v19 = a1[377];
    v20 = (a1 + *(*a1 - 24));
    if (v19 == v20[34] || v19 == v20[33])
    {
      v21 = a1[380];
      LOWORD(v216) = 257;
      v22 = sub_23C497C88(v20 + 1, **(*v21 + 16), v21, 0, v215);
      v23 = llvm::ConstantFP::get();
      v24 = a1 + *(*a1 - 24);
      LOWORD(v216) = 257;
      v25 = llvm::ConstantInt::get();
      v26 = sub_23C505AA8((v24 + 8), v22, v23, v25, v215);
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v26, a1[380], 0);
      v4 = *a1[476];
    }
  }

  if ((v4 & 4) != 0)
  {
    v27 = a1 + *(*a1 - 24);
    v28 = *(v27 + 20);
    v29 = *(v27 + 24);
    *&v215[0] = v28;
    *(&v215[0] + 1) = v29;
    llvm::StructType::get();
    v30 = llvm::User::operator new(0x58);
    *&v215[0] = "agc.coverage";
    LOWORD(v216) = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1 + *(*a1 - 24), v30, 0x1Cu, 0);
    v31 = sub_23C49ABAC(a1 + *(*a1 - 24), v30, 0);
    v32 = sub_23C49ABAC(a1 + *(*a1 - 24), v30, 1u);
    v33 = (a1 + *(*a1 - 24));
    LOWORD(v216) = 257;
    v34 = sub_23C497C88(v33 + 1, **(*v31 + 16), v31, 0, v215);
    v35 = (a1 + *(*a1 - 24));
    LOWORD(v216) = 257;
    v36 = sub_23C497C88(v35 + 1, **(*v32 + 16), v32, 0, v215);
    v37 = a1 + *(*a1 - 24);
    v38 = *(v37 + 43);
    v207 = *(v37 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v208, (v37 + 8));
    v209 = *(v37 + 26);
    v40 = (*(*v38 + 32))(v38, &v207, v34, (*(a1[370] + 32) >> 8) & 0xF);
    if (v208)
    {
      llvm::MetadataTracking::untrack();
    }

    if (*(a1 + 10) == 1 && (*a1[476] & 8) != 0)
    {
      v41 = a1 + *(*a1 - 24);
      LOWORD(v216) = 257;
      v40 = sub_23C4BFF4C((v41 + 8), v40, v215, v39);
    }

    v42 = a1 + *(*a1 - 24);
    LOWORD(v216) = 257;
    v43 = sub_23C49A8E0((v42 + 8), v40, v36, v215);
    v44 = (a1 + *(*a1 - 24));
    v45 = a1[450];
    LOWORD(v216) = 257;
    v46 = sub_23C497C88(v44 + 1, **(*v45 + 16), v45, 0, v215);
    v47 = a1 + *(*a1 - 24);
    LOWORD(v216) = 257;
    v48 = sub_23C49A8E0((v47 + 8), v46, v43, v215);
    sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v48, a1[450], 0);
  }

  if (*(a1 + 3842) == 1)
  {
    v49 = 473;
    if ((*(a1[370] + 32) & 0xE00) == 0)
    {
      v49 = 470;
    }

    v50 = a1[v49 + 2];
    v51 = a1 + *(*a1 - 24);
    llvm::ConstantFP::get();
    Splat = llvm::ConstantDataVector::getSplat();
    LOWORD(v216) = 257;
    v53 = sub_23C4A0EC4((v51 + 8), v50, Splat, v215);
    v54 = sub_23C50654C(a1 + *(*a1 - 24), v53, v53);
    v55 = llvm::ConstantFP::get();
    v56 = a1 + *(*a1 - 24);
    LOWORD(v216) = 257;
    v57 = sub_23C4A0EC4((v56 + 8), v55, v54, v215);
    if (*(a1 + 3528))
    {
      if (a1[441])
      {
        llvm::ConstantFP::get();
        LOWORD(v216) = 257;
        FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
      }

      else
      {
        if ((a1[441] & 2) != 0)
        {
          v58 = (a1 + *(*a1 - 24));
          v59 = a1[450];
          LOWORD(v216) = 257;
          v60 = sub_23C497C88(v58 + 1, **(*v59 + 16), v59, 0, v215);
          llvm::ConstantFP::get();
          LOWORD(v216) = 257;
          llvm::IRBuilderBase::CreateFCmpHelper();
          llvm::ConstantInt::get();
          llvm::ConstantInt::get();
          LOWORD(v216) = 257;
          Select = llvm::IRBuilderBase::CreateSelect();
          v62 = a1 + *(*a1 - 24);
          LOWORD(v216) = 257;
          v63 = sub_23C49A8E0((v62 + 8), v60, Select, v215);
          sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v63, a1[450], 0);
        }

        FCmpHelper = 0;
      }
    }

    else
    {
      v65 = a1 + *(*a1 - 24);
      v66 = *(v65 + 43);
      v204 = *(v65 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v205, (v65 + 8));
      v206 = *(v65 + 26);
      v67 = llvm::ConstantFP::get();
      (*(*v66 + 24))(v66, &v204, v67, v57, 2, *(a1 + 958));
      if (v205)
      {
        llvm::MetadataTracking::untrack();
      }

      FCmpHelper = 0;
      *(a1 + 3532) = 1;
    }

    if ((*(a1[370] + 33) & 0xE) == 0)
    {
      v68 = a1 + *(*a1 - 24);
      v69 = *(v68 + 43);
      v70 = *(v69 + 1416);
      if (v70)
      {
        v71 = strlen(*(v69 + 1416));
      }

      else
      {
        v71 = 0;
      }

      v72 = sub_23C49EB10(v68, v70, v71, *(v68 + 20), *(v68 + 20));
      v73 = (a1 + *(*a1 - 24));
      v74 = a1[472];
      LOWORD(v216) = 257;
      v75 = llvm::ConstantInt::get();
      v213[0] = sub_23C5057E8((v73 + 1), v74, v75, v215);
      v219 = 257;
      v76 = sub_23C497A7C(v73 + 1, *(v72 + 24), v72, v213, 1, v218);
      v77 = a1 + *(*a1 - 24);
      v78 = llvm::ConstantFP::get();
      LOWORD(v216) = 257;
      v79 = sub_23C4A0EC4((v77 + 8), v78, v76, v215);
      v80 = a1 + *(*a1 - 24);
      LOWORD(v216) = 257;
      v81 = sub_23C49EA2C((v80 + 8), v76, v79, v215);
      v219 = 257;
      v82 = sub_23C4BBCA0((v80 + 8), v57, v81, v218);
      v83 = a1 + *(*a1 - 24);
      v84 = *(v83 + 43);
      v201 = *(v83 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v202, (v83 + 8));
      v203 = *(v83 + 26);
      FPCast = (*(*v84 + 40))(v84, &v201, v82, 0);
      if (v202)
      {
        llvm::MetadataTracking::untrack();
      }

      v86 = (a1 + *(*a1 - 24));
      v87 = a1[380];
      LOWORD(v216) = 257;
      v88 = sub_23C497C88(v86 + 1, **(*v87 + 16), v87, 0, v215);
      v89 = *v88;
      v90 = a1 + *(*a1 - 24);
      v219 = 257;
      v91 = llvm::ConstantInt::get();
      v92 = sub_23C5057E8((v90 + 8), v88, v91, v218);
      v93 = *(*a1 - 24);
      v94 = **(v89 + 16);
      v214 = 257;
      if (*FPCast != v94)
      {
        v95 = (a1 + v93);
        if (*(FPCast + 16) > 0x14u)
        {
          LOWORD(v216) = 257;
          FPCast = llvm::CastInst::CreateFPCast();
          sub_23C49B15C(v95 + 1, FPCast, v213);
        }

        else
        {
          v96 = (*(*v95[10] + 256))(v95[10], FPCast, v94);
          FPCast = v96;
          if (v96 && *(v96 + 16) >= 0x1Cu)
          {
            sub_23C49B15C(v95 + 1, v96, v213);
          }
        }
      }

      LOWORD(v216) = 257;
      v97 = sub_23C49EA2C((v90 + 8), v92, FPCast, v215);
      v98 = a1 + *(*a1 - 24);
      LOWORD(v216) = 257;
      v99 = llvm::ConstantInt::get();
      v100 = sub_23C505AA8((v98 + 8), v88, v97, v99, v215);
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v100, a1[380], 0);
    }
  }

  else
  {
    FCmpHelper = 0;
  }

  v101 = *(a1 + 3528);
  if (v101)
  {
    v106 = (a1 + *(*a1 - 24));
    if ((*(a1[476] + 1) & 8) != 0)
    {
      v109 = a1[380];
      v219 = 257;
      v110 = sub_23C497C88(v106 + 1, **(*v109 + 16), v109, 0, v218);
      LOWORD(v216) = 257;
      v111 = llvm::ConstantInt::get();
      v112 = sub_23C5057E8((v106 + 1), v110, v111, v215);
      v113 = sub_23C504E2C(v106, v112, 1);
      v108 = sub_23C50DD20(a1, v113);
    }

    else
    {
      v107 = a1[453];
      LOWORD(v216) = 257;
      v108 = sub_23C497C88(v106 + 1, **(*v107 + 16), v107, 0, v215);
    }

    v114 = v108;
    v115 = a1 + *(*a1 - 24);
    if (*(a1 + 3842) == 1)
    {
      LOWORD(v216) = 257;
      v133 = llvm::IRBuilderBase::CreateFCmpHelper();
      v134 = a1 + *(*a1 - 24);
      LOWORD(v216) = 257;
      sub_23C49A8E0((v134 + 8), v133, FCmpHelper, v215);
      llvm::ConstantFP::get();
      llvm::ConstantFP::get();
      LOWORD(v216) = 257;
      v135 = llvm::IRBuilderBase::CreateSelect();
      v136 = a1 + *(*a1 - 24);
      v137 = *(v136 + 43);
      v198 = *(v136 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v199, (v136 + 8));
      v200 = *(v136 + 26);
      v138 = llvm::ConstantFP::get();
      (*(*v137 + 24))(v137, &v198, v135, v138, 4, *(a1 + 958));
      if (!v199)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v116 = *(v115 + 43);
      v195 = *(v115 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v196, (v115 + 8));
      v197 = *(v115 + 26);
      (*(*v116 + 24))(v116, &v195, v114, a1[456], *(a1 + 914), *(a1 + 958));
      if (!v196)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_80;
  }

  if ((a1[441] & 0xC) != 0)
  {
    if ((a1[441] & 4) != 0)
    {
      v124 = (a1 + *(*a1 - 24));
      v125 = a1[444];
      LOWORD(v216) = 257;
      v102 = sub_23C497C88(v124 + 1, **(*v125 + 16), v125, 0, v215);
      v101 = *(a1 + 3528);
      if ((v101 & 8) != 0)
      {
LABEL_51:
        v103 = (a1 + *(*a1 - 24));
        v104 = a1[447];
        LOWORD(v216) = 257;
        v105 = sub_23C497C88(v103 + 1, **(*v104 + 16), v104, 0, v215);
        if ((a1[441] & 2) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_68;
      }
    }

    else
    {
      v102 = 0;
      if ((a1[441] & 8) != 0)
      {
        goto LABEL_51;
      }
    }

    v105 = 0;
    if ((v101 & 2) == 0)
    {
      goto LABEL_79;
    }

LABEL_68:
    v126 = (a1 + *(*a1 - 24));
    v127 = a1[450];
    LOWORD(v216) = 257;
    v128 = sub_23C497C88(v126 + 1, **(*v127 + 16), v127, 0, v215);
    if (*(a1 + 3852) == 1)
    {
      v129 = a1 + *(*a1 - 24);
      v130 = *(v129 + 43);
      v131 = *(v130 + 1472);
      if (v131)
      {
        v132 = strlen(*(v130 + 1472));
      }

      else
      {
        v132 = 0;
      }

      v141 = sub_23C4A0414(v129, v131, v132, *(v129 + 24));
      v142 = (a1 + *(*a1 - 24));
      LOWORD(v216) = 257;
      v143 = sub_23C497A7C(v142 + 1, **(*v141 + 16), v141, 0, 0, v215);
      v144 = a1 + *(*a1 - 24);
      v145 = llvm::ConstantInt::get();
      LOWORD(v216) = 257;
      v146 = sub_23C49A668((v144 + 8), v145, v143, v215);
      v147 = a1 + *(*a1 - 24);
      LOWORD(v216) = 257;
      v128 = sub_23C49A8E0((v147 + 8), v128, v146, v215);
    }

    v148 = (a1 + *(*a1 - 24));
    v149 = llvm::ConstantInt::get();
    LOWORD(v216) = 257;
    sub_23C497D84(v148 + 1, 33, v128, v149, v215);
    llvm::ConstantFP::get();
    LOWORD(v216) = 257;
    v102 = llvm::IRBuilderBase::CreateSelect();
    if (*(a1 + 738) <= 1)
    {
      *(a1 + 738) = 2;
    }

LABEL_79:
    v150 = a1 + *(*a1 - 24);
    v151 = *(v150 + 43);
    v192 = *(v150 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v193, (v150 + 8));
    v194 = *(v150 + 26);
    (*(*v151 + 416))(v151, &v192, v102, v105);
    if (!v193)
    {
LABEL_81:
      *(a1 + 3532) = 1;
      goto LABEL_82;
    }

LABEL_80:
    llvm::MetadataTracking::untrack();
    goto LABEL_81;
  }

  if ((a1[441] & 2) == 0)
  {
    goto LABEL_82;
  }

  v117 = (a1 + *(*a1 - 24));
  v118 = a1[450];
  LOWORD(v216) = 257;
  v119 = sub_23C497C88(v117 + 1, **(*v118 + 16), v118, 0, v215);
  if ((*(a1 + 3532) & 1) == 0)
  {
    v139 = a1 + *(*a1 - 24);
    v140 = *(v139 + 43);
    v189 = *(v139 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v190, (v139 + 8));
    v191 = *(v139 + 26);
    (*(*v140 + 424))(v140, &v189, v119);
    if (!v190)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (*(a1 + 3852) == 1 && (*(a1[370] + 33) & 0xE) != 0)
  {
    v120 = a1 + *(*a1 - 24);
    v121 = *(v120 + 43);
    v122 = *(v121 + 1472);
    if (v122)
    {
      v123 = strlen(*(v121 + 1472));
    }

    else
    {
      v123 = 0;
    }

    v178 = sub_23C4A0414(v120, v122, v123, *(v120 + 24));
    v179 = (a1 + *(*a1 - 24));
    LOWORD(v216) = 257;
    v180 = sub_23C497A7C(v179 + 1, **(*v178 + 16), v178, 0, 0, v215);
    v181 = a1 + *(*a1 - 24);
    v182 = llvm::ConstantInt::get();
    LOWORD(v216) = 257;
    v183 = sub_23C49A668((v181 + 8), v182, v180, v215);
    v184 = a1 + *(*a1 - 24);
    LOWORD(v216) = 257;
    v119 = sub_23C49A8E0((v184 + 8), v119, v183, v215);
  }

  v185 = (a1 + *(*a1 - 24));
  v186 = llvm::ConstantInt::get();
  LOWORD(v216) = 257;
  v187 = sub_23C497D84(v185 + 1, 32, v119, v186, v215);
  v3 = sub_23C5060BC(v185, 4, v187, v188);
LABEL_82:
  v152 = *(a1[370] + 32);
  result = sub_23C50DE78(a1);
  v154 = result;
  if (*(*(a1 + *(*a1 - 24) + 344) + 1632))
  {
    v216 = 0u;
    v217 = 0u;
    memset(v215, 0, sizeof(v215));
    memset(v218, 0, sizeof(v218));
    if (v152)
    {
      do
      {
        v155 = __clz(v152);
        v156 = v155 ^ 0x1F;
        v157 = 0x80000000 >> v155;
        v158 = *(a1 + 3008);
        v159 = *(a1[476] + 8);
        if (((0x80000000 >> v155) & v154) != 0)
        {
          v160 = sub_23C50E0EC(a1, v156);
        }

        else
        {
          v160 = 15;
        }

        v161 = vand_s8(vshl_u32(vshl_u32(vand_s8(vshl_u32(vdup_n_s32(v159), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), vneg_s32(vdup_n_s32(v156))), 0x200000001), 0x400000002);
        if ((v157 & v158) != 0)
        {
          v162 = 15;
        }

        else
        {
          v162 = 0;
        }

        *(v218 + v156) = v162 & v160 & ((v159 >> v156) & 1 | (8 * ((HIBYTE(v159) >> v156) & 1)) | v161.i32[0] | v161.i32[1]);
        if ((v157 & v158) != 0)
        {
          result = sub_23C50E1A4(a1, v156);
        }

        else
        {
          result = llvm::UndefValue::get();
        }

        *(v215 + v156) = result;
        v163 = v157 == v152;
        v152 ^= v157;
      }

      while (!v163);
    }

    v164 = a1[370];
    v165 = *(v164 + 32);
    if (*(v164 + 32))
    {
      do
      {
        v166 = __clz(v165);
        v167 = 0x80000000 >> v166;
        result = sub_23C50EAC0(a1 + 304, *(v215 + (v166 ^ 0x1F)), v166 ^ 0x1F, *(v218 + (v166 ^ 0x1F)), v3);
        v163 = v167 == v165;
        v165 ^= v167;
      }

      while (!v163);
    }
  }

  else if (v152)
  {
    do
    {
      v168 = __clz(v152);
      v169 = v168 ^ 0x1F;
      v170 = 0x80000000 >> v168;
      v171 = *(a1 + 3008);
      v172 = *(a1[476] + 8);
      if (((0x80000000 >> v168) & v154) != 0)
      {
        v173 = sub_23C50E0EC(a1, v169);
      }

      else
      {
        v173 = 15;
      }

      v174 = v170 & v171;
      if ((v170 & v171) != 0)
      {
        v175 = 15;
      }

      else
      {
        v175 = 0;
      }

      if (v174)
      {
        v176 = sub_23C50E1A4(a1, v169);
      }

      else
      {
        v176 = llvm::UndefValue::get();
      }

      v177 = vand_s8(vshl_u32(vshl_u32(vand_s8(vshl_u32(vdup_n_s32(v172), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL), vneg_s32(vdup_n_s32(v169))), 0x200000001), 0x400000002);
      result = sub_23C50EAC0(a1 + 304, v176, v169, v175 & v173 & ((v172 >> v169) & 1 | (8 * ((HIBYTE(v172) >> v169) & 1)) | v177.i32[0] | v177.i32[1]), v3);
      v163 = v170 == v152;
      v152 ^= v170;
    }

    while (!v163);
  }

  return result;
}

uint64_t sub_23C50DD20(void *a1, uint64_t a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 43);
  v14 = *(v4 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v4 + 8));
  v16 = *(v4 + 26);
  v6 = (*(*v5 + 80))(v5, &v14, a2, 8, 0, 1);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 43);
  v11 = *(v7 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v7 + 8));
  v13 = *(v7 + 26);
  v9 = (*(*v8 + 88))(v8, &v11, v6, 8, 0, 32);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t sub_23C50DE78(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = **(*(a1[20] + 24) + 16);
  if (v1 == *(a1 + *(*a1 - 24) + 144))
  {
    return 0;
  }

  v3 = *(a1[7] + 8);
  v4 = *(*(llvm::Module::getFunction() + 8) + 24);
  v5 = sub_23C4B88A0(v4);
  if (((v5 - (v4 - 32 * (*(v4 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    v7 = &v16[-((v6 + 15) & 0xFFFFFFFF0)];
    if (v6 >= 0x200)
    {
      v8 = 512;
    }

    else
    {
      v8 = v6;
    }

    bzero(&v16[-((v6 + 15) & 0xFFFFFFFF0)], v8);
    if (v3)
    {
      if (*(v1 + 8) == 16)
      {
        sub_23C505FD4(a1 + *(*a1 - 24), *(v4 - 4 * (*(v4 + 5) & 0x7FFFFFF)), v7);
      }

      else
      {
        *v7 = *(v4 - 4 * (*(v4 + 5) & 0x7FFFFFF));
      }

      v10 = 0;
      v9 = 0;
      do
      {
        v11 = *(a1[7] - 8 * *(a1[7] + 8) + 8 * v10);
        if (sub_23C4A57A0(*(v11 - 8 * *(v11 + 8)), "air.render_target"))
        {
          v12 = v7[v10];
          if (v12)
          {
            if (*(v12 + 16) == 21)
            {
              v13 = *(a1[9] + 8 * *(v12 + 32));
              if (v13)
              {
                if (sub_23C4A57A0(*(v13 - 8 * *(v13 + 8) + 8), "air.render_target"))
                {
                  v17 = 0;
                  v18 = 2;
                  sub_23C506AF0(0, v13, &v18, &v17 + 1);
                  v18 = 1;
                  sub_23C506AF0(0, v11, &v18, &v17);
                  if (HIDWORD(v17) == v17)
                  {
                    v14 = 1 << SBYTE4(v17);
                  }

                  else
                  {
                    LOBYTE(v14) = 0;
                  }

                  v9 |= v14;
                }
              }
            }
          }
        }

        ++v10;
      }

      while (v3 != v10);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_23C50E0EC(uint64_t a1, unsigned int a2)
{
  v2 = **(a1 + 3808);
  if ((v2 & 0x20) != 0)
  {
    v5 = (v2 >> 6) & 0x1F;
    v6 = v5 > 0x10;
    v7 = (1 << v5) & 0x10014;
    if (v6 || v7 == 0)
    {
      return 15;
    }

    return 0;
  }

  v3 = *(a1 + 3824);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v4 = *(*(a1 + 3816) + 4 * a2 + 24);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (sub_23C50FEEC((v4 >> 21) & 7, (v4 >> 1) & 0x1F, (v4 >> 6) & 0x1F))
  {
    v10 = 0;
  }

  else
  {
    v10 = 7;
  }

  if (sub_23C50FEEC(HIBYTE(v4) & 7, v4 >> 11, HIWORD(v4) & 0x1F))
  {
    return v10;
  }

  else
  {
    return v10 | 8;
  }
}

llvm::ConstantFP **sub_23C50E1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = a2;
  v6 = a1 + 32 * a2;
  v7 = *(v6 + 3040);
  v89 = 257;
  v8 = sub_23C497C88((v4 + 8), **(*v7 + 16), v7, 0, v88);
  v9 = *(v6 + 3296);
  if (v9)
  {
    v10 = a1 + *(*a1 - 24);
    v89 = 257;
    v11 = sub_23C497C88((v10 + 8), **(*v9 + 16), v9, 0, v88);
  }

  else
  {
    v11 = 0;
  }

  v12 = **(a1 + 3808);
  v13 = *(a1 + 3824);
  if (v13)
  {
    v14 = (v13 + 16);
  }

  else
  {
    v14 = (*(a1 + 3816) + 4 * v5 + 24);
  }

  v15 = *v14;
  if (!(**(a1 + 3808) & 0x20 | *v14 & 1))
  {
    goto LABEL_50;
  }

  v16 = a1 + 2440 + (v5 << 6);
  if (*(v16 + 52) == 1)
  {
    v17 = a1 + 2440 + (v5 << 6);
    v76 = v5;
    if (*(a1 + 10))
    {
      v18 = 1;
    }

    else
    {
      v18 = *(a1 + 24) ^ 1;
    }

    v19 = a1 + *(*a1 - 24);
    v20 = *(v19 + 344);
    v83 = *(v19 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v84, (v19 + 8));
    v85 = *(v19 + 104);
    v16 = v17;
    v74 = sub_23C4A28C8(v20, &v83, v8, v17 + 36, v18 & 1);
    if (v84)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v11)
    {
      v21 = a1 + *(*a1 - 24);
      v22 = *(v21 + 344);
      v80 = *(v21 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v81, (v21 + 8));
      v23 = *(v21 + 104);
      v16 = v17;
      v82 = v23;
      v11 = sub_23C4A28C8(v22, &v80, v11, v17 + 36, v18 & 1);
      if (v81)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v8 = v74;
    v5 = v76;
  }

  if ((v12 & 0x20) != 0)
  {
    v24 = sub_23C50B55C(a1 + 2432, a2, 0, 0);
    v8 = sub_23C4B245C(a1 + *(*a1 - 24), v8, *(a1 + *(*a1 - 24) + 280), 0, 1);
    v25 = sub_23C4B245C(a1 + *(*a1 - 24), v24, *(a1 + *(*a1 - 24) + 280), 0, 1);
    v28 = v25;
    v29 = 0;
    switch((**(a1 + 3808) >> 6) & 0x1F)
    {
      case 1:
        AllOnesValue = llvm::ConstantInt::get();
        goto LABEL_49;
      case 2:
        v50 = a1 + *(*a1 - 24);
        v89 = 257;
        v43 = v50 + 8;
        v44 = v88;
        v42 = v8;
        goto LABEL_35;
      case 3:
        v52 = a1 + *(*a1 - 24);
        v89 = 257;
        v51 = sub_23C4BFF4C(v52 + 8, v25, v88, v27);
        v87 = 257;
        v43 = v52 + 8;
        v44 = v86;
        v42 = v8;
        goto LABEL_38;
      case 4:
        goto LABEL_51;
      case 5:
        v41 = a1 + *(*a1 - 24);
        v89 = 257;
        v42 = sub_23C4BFF4C(v41 + 8, v8, v88, v27);
        v87 = 257;
        v43 = v41 + 8;
        v44 = v86;
LABEL_35:
        v51 = v28;
LABEL_38:
        AllOnesValue = sub_23C49A8E0(v43, v42, v51, v44);
        goto LABEL_49;
      case 6:
        v55 = a1 + *(*a1 - 24);
        v89 = 257;
        AllOnesValue = sub_23C4D5948((v55 + 8), v8, v25, v88);
        goto LABEL_49;
      case 7:
        v56 = a1 + *(*a1 - 24);
        v89 = 257;
        v47 = v56 + 8;
        v48 = v88;
        v46 = v8;
        goto LABEL_43;
      case 8:
        v53 = a1 + *(*a1 - 24);
        v89 = 257;
        v54 = sub_23C49A98C(v53 + 8, v8, v25, v88);
        goto LABEL_47;
      case 9:
        v53 = a1 + *(*a1 - 24);
        v89 = 257;
        v54 = sub_23C4D5948((v53 + 8), v8, v25, v88);
        goto LABEL_47;
      case 0xA:
        v49 = a1 + *(*a1 - 24);
        v89 = 257;
        v38 = v49 + 8;
        v39 = v88;
        v40 = v28;
        goto LABEL_48;
      case 0xB:
        v58 = a1 + *(*a1 - 24);
        v89 = 257;
        v57 = sub_23C4BFF4C(v58 + 8, v25, v88, v27);
        v87 = 257;
        v47 = v58 + 8;
        v48 = v86;
        v46 = v8;
        goto LABEL_45;
      case 0xC:
        v37 = a1 + *(*a1 - 24);
        v89 = 257;
        v38 = v37 + 8;
        v39 = v88;
        v40 = v8;
        goto LABEL_48;
      case 0xD:
        v45 = a1 + *(*a1 - 24);
        v89 = 257;
        v46 = sub_23C4BFF4C(v45 + 8, v8, v88, v27);
        v87 = 257;
        v47 = v45 + 8;
        v48 = v86;
LABEL_43:
        v57 = v28;
LABEL_45:
        AllOnesValue = sub_23C49A98C(v47, v46, v57, v48);
        goto LABEL_49;
      case 0xE:
        v53 = a1 + *(*a1 - 24);
        v89 = 257;
        v54 = sub_23C49A8E0(v53 + 8, v8, v25, v88);
LABEL_47:
        v40 = v54;
        v87 = 257;
        v38 = v53 + 8;
        v39 = v86;
LABEL_48:
        AllOnesValue = sub_23C4BFF4C(v38, v40, v39, v27);
        goto LABEL_49;
      case 0xF:
        AllOnesValue = llvm::Constant::getAllOnesValue(*(a1 + *(*a1 - 24) + 280), v26);
LABEL_49:
        v8 = AllOnesValue;
        goto LABEL_50;
      case 0x10:
        v29 = 0;
        v8 = v25;
        goto LABEL_51;
      default:
        v29 = 0;
        v8 = 0;
        goto LABEL_51;
    }
  }

  if ((v15 & 1) != 0 && ((v31 = *(*(a1 + 2960) + 4 * v5) & 0x1F, v32 = v31 > 0x13, v33 = (1 << v31) & 0x81B30, !v32) ? (v34 = v33 == 0) : (v34 = 1), v34))
  {
    v35 = *(a1 + 3824);
    if (v35)
    {
      v36 = (v35 + 16);
    }

    else
    {
      v36 = (*(a1 + 3816) + 4 * v5 + 24);
    }

    v63 = (*v36 >> 21) & 7;
    v64 = (*v36 >> 1) & 0x1F;
    v65 = (*v36 >> 6) & 0x1F;
    v73 = *v36 >> 11;
    v75 = HIBYTE(*v36) & 7;
    v72 = HIWORD(*v36) & 0x1F;
    v66 = sub_23C4B245C(a1 + *(*a1 - 24), v8, *(v16 + 8), 0, 1);
    if (v11)
    {
      v11 = sub_23C4B245C(a1 + *(*a1 - 24), v11, *(v16 + 8), 0, 1);
    }

    v67 = sub_23C50B55C(a1 + 2432, a2, 0, 0);
    v68 = sub_23C4B245C(a1 + *(*a1 - 24), v67, *(v16 + 8), *(v16 + 34), *(v16 + 33));
    v29 = *(v16 + 52) == 1 && ((*v36 >> 21) & 7u) - 1 <= 1 && (HIBYTE(*v36) & 7u) - 1 < 2;
    v69 = sub_23C50F180(a1, v66, v11, v68, v63, v64, v65, v16 + 36, *(v16 + 34), 1u);
    v70 = sub_23C50F180(a1, v66, v11, v68, v75, v73, v72, v16 + 36, *(v16 + 34), 0);
    v8 = sub_23C5067B4(a1 + *(*a1 - 24), v69, v70, v71);
  }

  else
  {
LABEL_50:
    v29 = 0;
  }

LABEL_51:
  v59 = (a1 + 2440 + (v5 << 6));
  if (v59[52] == 1 && v59[32] == 1)
  {
    if (*(*(a1 + 2432 + *(*(a1 + 2432) - 24) + 344) + 1642) == 1)
    {
      if (v29 || (v59[56] & 1) == 0)
      {
        return v8;
      }
    }

    else if (v29)
    {
      return v8;
    }

    v60 = a1 + *(*a1 - 24);
    v61 = *(v60 + 344);
    v77 = *(v60 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v78, (v60 + 8));
    v79 = *(v60 + 104);
    v8 = sub_23C4A28C8(v61, &v77, v8, (v59 + 36), 0);
    if (v78)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  return v8;
}

uint64_t sub_23C50EAC0(uint64_t *a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = (a1[66] + 4 * a3);
  v9 = *v8 >> 5;
  v10 = *v8 & 0x1F;
  v11 = *a1;
  v12 = *(*(a1 + *(*a1 - 24) + 344) + 828);
  if (v10 <= 0x16)
  {
    if (((1 << v10) & 0x3E3C0) != 0)
    {
      v12 = ((v12 + 2 * v9 - 1) & -v12) >> 1;
      goto LABEL_10;
    }

    if (((1 << v10) & 0x41C00) != 0)
    {
      v12 = (((4 * v9) + v12 - 1) & -v12) >> 2;
      goto LABEL_10;
    }

    if (((1 << v10) & 0x780000) != 0)
    {
      LOBYTE(v12) = 4;
      goto LABEL_10;
    }
  }

  LODWORD(v12) = (v12 + v9 - 1) & -v12;
  if (v10 - 2 >= 4)
  {
    LOBYTE(v12) = 0;
  }

LABEL_10:
  v13 = -1 << v12;
  v14 = (-1 << v9) & 0xF;
  if (((1 << (v9 - 1)) & a4) == 0)
  {
    v14 = 0;
  }

  v15 = (v14 | a4) & ~v13;
  a1[69] |= (v15 << (4 * a3));
  v16 = (*(**(a1 + *(v11 - 24) + 344) + 384))();
  v17 = a1 + *(*a1 - 24);
  v18 = *(v17 + 43);
  v48 = *(v17 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v49, (v17 + 8));
  v50 = *(v17 + 26);
  v19 = &a1[8 * v7];
  v20 = *v18;
  v21 = v18;
  v22 = v8;
  v23 = (*(v20 + 408))(v21, &v48, a2, v8, v19 + 44);
  if (v49)
  {
    llvm::MetadataTracking::untrack();
  }

  v24 = sub_23C4B245C(a1 + *(*a1 - 24), v23, v19[3], *(v19 + 42), *(v19 + 41));
  Select = sub_23C505C18(a1 + *(*a1 - 24), v24, *(a1[66] + 4 * v7) >> 5, *(v19 + 41), *(v19 + 42));
  if ((v16 | v13) == 0xFFFFFFFF)
  {
    v26 = a3;
  }

  else
  {
    *&v51 = llvm::ConstantInt::get();
    *(&v51 + 1) = llvm::ConstantInt::get();
    *&v52 = llvm::ConstantInt::get();
    *(&v52 + 1) = llvm::ConstantInt::get();
    llvm::ConstantVector::get();
    v26 = a3;
    sub_23C50B55C(a1, a3, 1, 1);
    v47 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v15 = 15;
  }

  if (a5)
  {
    if (v9 <= 3)
    {
      v51 = 0u;
      v52 = 0u;
      v27 = v9;
      if (v9)
      {
        v28 = 0;
        do
        {
          *(&v51 + v28++) = llvm::ConstantInt::get();
        }

        while (v9 != v28);
      }

      do
      {
        *(&v51 + v27++) = llvm::ConstantInt::get();
      }

      while (v27 != 4);
      v29 = (a1 + *(*a1 - 24));
      v30 = llvm::ConstantInt::get();
      v32 = sub_23C5060BC(v29, 4, v30, v31);
      v33 = llvm::ConstantVector::get();
      v47 = 257;
      sub_23C49A3AC(v29 + 1, a5, v32, v33, v46);
      v22 = v8;
      v26 = a3;
    }

    sub_23C50B55C(a1, v26, 1, 0);
    sub_23C4B245C(a1 + *(*a1 - 24), Select, v19[3], *(v19 + 42), *(v19 + 41));
    v47 = 257;
    LODWORD(v26) = a3;
    Select = llvm::IRBuilderBase::CreateSelect();
  }

  v34 = sub_23C50BD14(a1, Select, v15, v26, 1);
  v36 = v35;
  v37 = sub_23C4B28B0(a1 + *(*a1 - 24), v34, v19[1], *(v19 + 8));
  v38 = a1 + *(*a1 - 24);
  v39 = *(v38 + 43);
  v43 = *(v38 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v38 + 8));
  v45 = *(v38 + 26);
  result = (*(*v39 + 192))(v39, &v43, *(a1[66] + 32) >> 12, BYTE2(*(a1[66] + 32)), v22, v19[1], v37, v36);
  if (v44)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t sub_23C50F180(uint64_t *a1, llvm::UndefValue **a2, llvm::ConstantFP **a3, llvm::UndefValue **a4, int a5, int a6, int a7, uint64_t a8, BOOL a9, unsigned __int8 a10)
{
  v15 = *(*a1 - 24);
  v16 = a1 + v15;
  if (a10)
  {
    v17 = sub_23C505670(a1 + v15, a2, 3u, 1);
    v18 = sub_23C505670(a1 + *(*a1 - 24), a4, 3u, 1);
  }

  else
  {
    v51 = 257;
    v19 = llvm::ConstantInt::get();
    v17 = sub_23C5057E8((v16 + 8), a2, v19, v50);
    v20 = a1 + *(*a1 - 24);
    v51 = 257;
    v21 = llvm::ConstantInt::get();
    v18 = sub_23C5057E8((v20 + 8), a4, v21, v50);
  }

  v22 = v18;
  if (a5 == 6)
  {
    v17 = llvm::ConstantFP::get();
    if (a10)
    {
      v17 = sub_23C5060BC(a1 + *(*a1 - 24), 3, v17, v23);
    }
  }

  else if ((a5 - 1) < 2)
  {
    goto LABEL_9;
  }

  v24 = a1 + *(*a1 - 24);
  v25 = sub_23C50F5E0(a1, a2, a3, a4, a6, a8, a9, a10);
  v51 = 257;
  v17 = sub_23C49EA2C((v24 + 8), v17, v25, v50);
  v26 = a1 + *(*a1 - 24);
  v27 = sub_23C50F5E0(a1, a2, a3, a4, a7, a8, a9, a10);
  v51 = 257;
  v22 = sub_23C49EA2C((v26 + 8), v22, v27, v50);
LABEL_9:
  v28 = 0;
  if (a5 > 3)
  {
    switch(a5)
    {
      case 4:
        v33 = a1 + *(*a1 - 24);
        v51 = 257;
        v34 = (v33 + 8);
        v35 = v17;
        v36 = v22;
        break;
      case 5:
        v39 = a1 + *(*a1 - 24);
        v51 = 257;
        v34 = (v39 + 8);
        v35 = v22;
        v36 = v17;
        break;
      case 6:
LABEL_17:
        v29 = a1 + *(*a1 - 24);
        v51 = 257;
        return sub_23C4A0BD4((v29 + 8), v17, v22, v50);
      default:
        return v28;
    }

    return sub_23C4A0EC4(v34, v35, v36, v50);
  }

  if (a5 == 1)
  {
    v31 = a1 + *(*a1 - 24);
    v32 = *(v31 + 43);
    v47 = *(v31 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v48, (v31 + 8));
    v49 = *(v31 + 26);
    v28 = (*(*v32 + 48))(v32, &v47, v17, v22, 0);
    if (!v48)
    {
      return v28;
    }

LABEL_22:
    llvm::MetadataTracking::untrack();
    return v28;
  }

  if (a5 != 2)
  {
    if (a5 != 3)
    {
      return v28;
    }

    goto LABEL_17;
  }

  v37 = a1 + *(*a1 - 24);
  v38 = *(v37 + 43);
  v44 = *(v37 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v45, (v37 + 8));
  v46 = *(v37 + 26);
  v28 = (*(*v38 + 56))(v38, &v44, v17, v22, 0);
  if (v45)
  {
    goto LABEL_22;
  }

  return v28;
}

llvm::FixedVectorType **sub_23C50F5E0(uint64_t *a1, llvm::UndefValue **a2, llvm::ConstantFP **a3, llvm::Type *a4, int a5, uint64_t a6, _BOOL8 a7, int a8)
{
  v8 = a8;
  v10 = a4;
  v11 = a3;
  if ((a5 & 0xFFFFFFFC) == 0xC)
  {
    GlobalVariable = llvm::Module::getGlobalVariable();
    if (!GlobalVariable)
    {
      GlobalVariable = llvm::User::operator new(0x58);
      v76[0] = "agc.blend_color";
      v77 = 259;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), GlobalVariable, 0x1Bu, 0);
    }

    v18 = (a1 + *(*a1 - 24));
    v77 = 257;
    v19 = sub_23C497C88(v18 + 1, **(*GlobalVariable + 16), GlobalVariable, 0, v76);
    v20 = a1 + *(*a1 - 24);
    v21 = *(v20 + 43);
    v73 = *(v20 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v74, (v20 + 8));
    v75 = *(v20 + 26);
    v22 = sub_23C4A28C8(v21, &v73, v19, a6, 0);
    if (v74)
    {
      llvm::MetadataTracking::untrack();
    }

    v23 = sub_23C4B245C(a1 + *(*a1 - 24), v22, *a2, a7, 1);
    v8 = a8;
    v11 = a3;
    v10 = a4;
  }

  else
  {
    v23 = 0;
  }

  switch(a5)
  {
    case 1:
    case 2:
      v41 = llvm::ConstantFP::get();
      goto LABEL_38;
    case 3:
      goto LABEL_22;
    case 4:
      v38 = a1 + *(*a1 - 24);
      v25 = llvm::ConstantFP::get();
      v77 = 257;
      v26 = (v38 + 8);
      v27 = a2;
      goto LABEL_20;
    case 5:
      v33 = a1 + *(*a1 - 24);
      v77 = 257;
      v34 = llvm::ConstantInt::get();
      v35 = (v33 + 8);
      v36 = a2;
      goto LABEL_37;
    case 6:
      v28 = a1 + *(*a1 - 24);
      v77 = 257;
      v29 = llvm::ConstantInt::get();
      v30 = (v28 + 8);
      v31 = a2;
      goto LABEL_32;
    case 7:
      v32 = 1;
      a2 = v10;
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_40;
    case 8:
      v39 = a1 + *(*a1 - 24);
      v25 = llvm::ConstantFP::get();
      v77 = 257;
      v26 = (v39 + 8);
      v27 = v10;
      goto LABEL_20;
    case 9:
      v65 = a1 + *(*a1 - 24);
      v77 = 257;
      v34 = llvm::ConstantInt::get();
      v35 = (v65 + 8);
      v36 = v10;
      goto LABEL_37;
    case 10:
      v28 = a1 + *(*a1 - 24);
      v77 = 257;
      v29 = llvm::ConstantInt::get();
      v30 = (v28 + 8);
      v31 = v10;
      goto LABEL_32;
    case 11:
      v49 = a1 + *(*a1 - 24);
      v77 = 257;
      v50 = llvm::ConstantInt::get();
      v51 = sub_23C5057E8((v49 + 8), a2, v50, v76);
      v52 = a1 + *(*a1 - 24);
      v77 = 257;
      v53 = llvm::ConstantInt::get();
      v54 = sub_23C5057E8((v52 + 8), v10, v53, v76);
      v55 = llvm::ConstantFP::get();
      v77 = 257;
      v56 = sub_23C4A0EC4((v52 + 8), v55, v54, v76);
      v57 = a1 + *(*a1 - 24);
      v58 = *(v57 + 43);
      v70 = *(v57 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (v57 + 8));
      v72 = *(v57 + 26);
      v60 = (*(*v58 + 48))(v58, &v70, v51, v56, 0);
      if (v71)
      {
        llvm::MetadataTracking::untrack();
      }

      v61 = sub_23C5060BC(a1 + *(*a1 - 24), 4, v60, v59);
      v62 = a1 + *(*a1 - 24);
      v63 = llvm::ConstantFP::get();
      v77 = 257;
      v64 = llvm::ConstantInt::get();
      v40 = sub_23C505AA8((v62 + 8), v61, v63, v64, v76);
      goto LABEL_21;
    case 12:
      v32 = 1;
      a2 = v23;
      if (v8)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    case 13:
      v37 = a1 + *(*a1 - 24);
      v25 = llvm::ConstantFP::get();
      v77 = 257;
      v26 = (v37 + 8);
      v27 = v23;
      goto LABEL_20;
    case 14:
      v43 = a1 + *(*a1 - 24);
      v77 = 257;
      v34 = llvm::ConstantInt::get();
      v35 = (v43 + 8);
      v36 = v23;
      goto LABEL_37;
    case 15:
      v28 = a1 + *(*a1 - 24);
      v77 = 257;
      v29 = llvm::ConstantInt::get();
      v30 = (v28 + 8);
      v31 = v23;
      goto LABEL_32;
    case 16:
      v32 = 1;
      a2 = v11;
      if (v8)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    case 17:
      v24 = a1 + *(*a1 - 24);
      v25 = llvm::ConstantFP::get();
      v77 = 257;
      v26 = (v24 + 8);
      v27 = v11;
LABEL_20:
      v40 = sub_23C4A0EC4(v26, v25, v27, v76);
LABEL_21:
      a2 = v40;
LABEL_22:
      v32 = 1;
      if (v8)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    case 18:
      v42 = a1 + *(*a1 - 24);
      v77 = 257;
      v34 = llvm::ConstantInt::get();
      v35 = (v42 + 8);
      v36 = v11;
LABEL_37:
      v41 = sub_23C5057E8(v35, v36, v34, v76);
      goto LABEL_38;
    case 19:
      v28 = a1 + *(*a1 - 24);
      v77 = 257;
      v29 = llvm::ConstantInt::get();
      v30 = (v28 + 8);
      v31 = v11;
LABEL_32:
      v47 = sub_23C5057E8(v30, v31, v29, v76);
      v48 = llvm::ConstantFP::get();
      v77 = 257;
      v41 = sub_23C4A0EC4((v28 + 8), v48, v47, v76);
LABEL_38:
      a2 = v41;
      break;
    default:
      a2 = 0;
      break;
  }

  v32 = 0;
  if (v8)
  {
LABEL_40:
    v66 = a1 + *(*a1 - 24);
    if (v32)
    {
      return sub_23C505670(v66, a2, 3u, 1);
    }

    else
    {
      return sub_23C5060BC(v66, 3, a2, a4);
    }
  }

LABEL_29:
  if (v32)
  {
    v44 = a1 + *(*a1 - 24);
    v77 = 257;
    v45 = llvm::ConstantInt::get();
    return sub_23C5057E8((v44 + 8), a2, v45, v76);
  }

  return a2;
}

BOOL sub_23C50FEEC(int a1, int a2, int a3)
{
  if (a1 <= 3)
  {
    if ((a1 - 1) < 2)
    {
      return 1;
    }

    if (a1 == 3)
    {
      if (a2 == 2 && a3 == 1)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 3)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 7)
      {
        return 1;
      }

      v5 = a3 == 3 || a3 == 7;
      v6 = v5;
      if (a2 == 8 && v6)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 5)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 9)
      {
        return 1;
      }

      v7 = a3 == 5 || a3 == 9;
      v8 = v7;
      if (a2 == 10 && v8)
      {
        return 1;
      }

      if (a2 == 1 && a3 == 2)
      {
        return 1;
      }

      if (a2 == 3 && a3 == 4)
      {
        return 1;
      }

      if (a2 == 7 && a3 == 4)
      {
        return 1;
      }

      v9 = a2 == 3 || a2 == 7;
      v10 = v9;
      if (a3 == 8 && v10 || a2 == 5 && a3 == 6 || a2 == 9 && a3 == 6)
      {
        return 1;
      }

      return (a2 == 5 || a2 == 9) && a3 == 10;
    }

    return 0;
  }

  if (a1 == 4)
  {
    return a2 == 2 && a3 == 1;
  }

  else
  {
    if (a1 != 5 && a1 != 6)
    {
      return 0;
    }

    return a2 == 1 && a3 == 2;
  }
}

uint64_t sub_23C510044(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  v5 = a1 + 8;
  do
  {
    v6 = a1 + v4;
    v7 = *(a1 + v4 + 3016);
    if (v7)
    {
      v8 = *(*a1 - 24);
      v47 = 257;
      v9 = sub_23C506924((v5 + v8), v7, v46);
      sub_23C4D56F8((v6 + 3024), v9);
    }

    v10 = *(v6 + 3272);
    if (v10)
    {
      v11 = *(*a1 - 24);
      v47 = 257;
      v12 = sub_23C506924((v5 + v11), v10, v46);
      sub_23C4D56F8((a1 + v4 + 3280), v12);
    }

    v4 += 32;
  }

  while (v4 != 256);
  v13 = *(a1 + 3528);
  if ((v13 & 4) != 0)
  {
    v14 = a1 + *(*a1 - 24);
    v43 = *(v14 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v14 + 8));
    v45 = *(v14 + 104);
    sub_23C497720(a1 + *(*a1 - 24) + 8, *(*(a1 + 3728) + 40), *(*(a1 + 3728) + 32));
    v15 = a1 + *(*a1 - 24);
    v16 = *(v15 + 160);
    v47 = 257;
    v17 = sub_23C506924((v15 + 8), v16, v46);
    sub_23C4D56F8((a1 + 3536), v17);
    sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), *(a1 + 3728), *(a1 + 3552), 0);
    v18 = a1 + *(*a1 - 24);
    v40 = v43;
    v41 = v44;
    if (v44)
    {
      llvm::MetadataTracking::track();
    }

    v42 = v45;
    sub_23C49769C(&v40, v18 + 8);
    if (v41)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v44)
    {
      llvm::MetadataTracking::untrack();
    }

    v13 = *(a1 + 3528);
    if ((v13 & 8) == 0)
    {
LABEL_9:
      if ((v13 & 2) == 0)
      {
        goto LABEL_10;
      }

LABEL_20:
      v24 = a1 + *(*a1 - 24);
      v25 = *(v24 + 192);
      v47 = 257;
      v26 = sub_23C506924((v24 + 8), v25, v46);
      sub_23C4D56F8((a1 + 3584), v26);
      v27 = a1 + *(*a1 - 24);
      v28 = llvm::ConstantInt::get();
      sub_23C4BA8C0((v27 + 8), v28, *(a1 + 3600), 0);
      if ((*(a1 + 3528) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 3528) & 8) == 0)
  {
    goto LABEL_9;
  }

  v19 = a1 + *(*a1 - 24);
  v20 = *(v19 + 184);
  v47 = 257;
  v21 = sub_23C506924((v19 + 8), v20, v46);
  sub_23C4D56F8((a1 + 3560), v21);
  v22 = a1 + *(*a1 - 24);
  v23 = llvm::ConstantInt::get();
  sub_23C4BA8C0((v22 + 8), v23, *(a1 + 3576), 0);
  v13 = *(a1 + 3528);
  if ((v13 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v13 & 1) == 0)
  {
    return 1;
  }

LABEL_21:
  if ((*(*(a1 + 3808) + 1) & 8) != 0)
  {
    v35 = llvm::User::operator new(0x58);
    v46[0] = "agc.alpha_test_ref";
    v47 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C(a1 + *(*a1 - 24), v35, 0x19u, 0);
    v36 = a1 + *(*a1 - 24);
    v47 = 257;
    v37 = sub_23C497C88((v36 + 8), **(*v35 + 16), v35, 0, v46);
    v38 = sub_23C50DD20(a1, v37);
    sub_23C4D56F8((a1 + 3632), v38);
  }

  else
  {
    v29 = llvm::ConstantFP::get();
    sub_23C4D56F8((a1 + 3632), v29);
    *(a1 + 3656) = 6;
    v30 = a1 + *(*a1 - 24);
    v31 = *(v30 + 160);
    v47 = 257;
    v32 = sub_23C506924((v30 + 8), v31, v46);
    sub_23C4D56F8((a1 + 3608), v32);
    v33 = a1 + *(*a1 - 24);
    v34 = llvm::ConstantFP::get();
    sub_23C4BA8C0((v33 + 8), v34, *(a1 + 3624), 0);
  }

  return 1;
}

uint64_t sub_23C510528(uint64_t *a1)
{
  sub_23C4FE97C(a1);
  v2 = sub_23C510D18(a1 + 304);
  v3 = **(*(a1[20] + 24) + 16);
  v4 = *a1;
  if (v3 == *(a1 + *(*a1 - 24) + 144))
  {
    goto LABEL_39;
  }

  v5 = *(a1[7] + 8);
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = 0;
  v7 = 8 * v5;
  do
  {
    v8 = *(v3 + 8);
    v9 = v3;
    if (v8 == 16)
    {
      v9 = *(*(v3 + 16) + v6);
      v8 = *(v9 + 8);
    }

    if ((v8 & 0xFE) == 0x12)
    {
      v9 = **(v9 + 16);
    }

    v10 = *(a1[7] - 8 * *(a1[7] + 8) + v6);
    if (sub_23C4A57A0(*(v10 - 8 * *(v10 + 8)), "air.render_target"))
    {
      v42 = 0;
      LODWORD(v41) = 1;
      if (!sub_23C506AF0(0, v10, &v41, &v42 + 1))
      {
        return 0;
      }

      LODWORD(v41) = 2;
      if (!sub_23C506AF0(0, v10, &v41, &v42))
      {
        return 0;
      }

      v12 = v42;
      v11 = BYTE4(v42);
      if (v42 != 1 || ((v13 = a1[478]) == 0 ? (v14 = (a1[477] + 4 * HIDWORD(v42) + 24)) : (v14 = (v13 + 16)), (v15 = *v14, (v15 & 1) != 0) && (v2 = vceqq_s32(vandq_s8(vdupq_n_s32(v15), xmmword_23C532580), xmmword_23C532590), v2.n128_u64[0] = vmovn_s32(v2), v2.n128_u16[0] = vmaxv_u16(v2.n128_u64[0]), (v2.n128_u8[0] & 1) != 0)))
      {
        v16 = &a1[4 * HIDWORD(v42) + 409];
        if (!v42)
        {
          v16 = &a1[4 * HIDWORD(v42) + 377];
        }

        v17 = *a1;
        if (BYTE1(a1[8 * HIDWORD(v42) + 309]) == 1)
        {
          v18 = a1 + *(v17 - 24);
          if (v9 != *(v18 + 160) && v9 != *(v18 + 152))
          {
            v9 = *(v18 + 160);
          }
        }

        v19 = (a1 + *(v17 - 24));
        if (v9 != v19[20])
        {
          if (v9 == v19[19])
          {
            if (*v16 != v19[34])
            {
              v20 = 33;
              goto LABEL_33;
            }
          }

          else
          {
            if (v9 == v19[24])
            {
              v20 = 37;
              goto LABEL_33;
            }

            if (v9 == v19[23] && *v16 != v19[37])
            {
              v20 = 36;
LABEL_33:
              *v16 = v19[v20];
            }
          }

          if (!v12 && ((1 << v11) & *(a1[370] + 32)) != 0)
          {
            *(a1 + 3008) |= 1 << v11;
          }

          goto LABEL_37;
        }

        v20 = 34;
        goto LABEL_33;
      }
    }

LABEL_37:
    v6 += 8;
  }

  while (v7 != v6);
  v4 = *a1;
LABEL_39:
  v21 = v4;
  v22 = *(*(a1 + *(v4 - 24) + 344) + 1360);
  v23 = *a1[476];
  if ((v23 & 4) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 & 1;
  }

  if (*(a1 + 3852))
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  *(a1 + 3852) = v25;
  result = (*(v21 + 360))(a1, v2);
  if (!result)
  {
    return result;
  }

  if ((v23 & 0x800) != 0)
  {
    v29 = *(a1 + 3528);
    goto LABEL_53;
  }

  v27 = *(a1 + 3843);
  if ((v27 & 1) == 0 && *(a1 + 3855) != 1)
  {
    if (*(a1 + 3852) == 1)
    {
      v29 = *(a1 + 3528);
LABEL_57:
      v30 = v29 | 2;
      goto LABEL_54;
    }

    if (*(a1 + 3853) != 1 || (*a1[476] & 0x10) != 0)
    {
      goto LABEL_63;
    }

    v29 = *(a1 + 3528);
    if (!v22)
    {
      goto LABEL_57;
    }

LABEL_53:
    v30 = v29 | 1;
LABEL_54:
    *(a1 + 3528) = v30;
    goto LABEL_63;
  }

  if (*(a1 + 3853) & 1) != 0 || (*(a1 + 3852))
  {
    v28 = *(a1 + 3528) | 2;
  }

  else
  {
    v28 = *(a1 + 3528);
  }

  v31 = *(a1 + 3855);
  *(a1 + 3528) = v28 & 0xF3 | (4 * v27) | (8 * v31);
  if ((v27 & 1) == 0 && v31 && (v28 & 2) != 0)
  {
    *(a1 + 3528) = v28 & 0xF3 | (4 * v27) | (8 * v31) | 4;
    *(a1 + 3843) = 1;
    *(a1 + 3844) = 0x100000000;
  }

LABEL_63:
  if ((*(a1[370] + 33) & 0xEE) != 0)
  {
    llvm::Module::getOrInsertNamedMetadata();
    llvm::ConstantInt::get();
    v41 = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    v32 = a1[370];
    *(a1 + 958) = ~(-1 << (BYTE1(*(v32 + 32)) & 0xF));
    if ((((*(v32 + 32) >> 8) ^ (*(v32 + 32) >> 12)) & 0xF) != 0)
    {
      llvm::Module::getOrInsertNamedMetadata();
      llvm::ConstantInt::get();
      v41 = llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      llvm::Module::getOrInsertNamedMetadata();
      v33 = *(a1 + 965) > 1u ? 0 : llvm::MDString::get();
      v41 = v33;
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
      if (*(a1 + 965) == 1)
      {
        llvm::Module::getOrInsertNamedMetadata();
        llvm::ConstantInt::get();
        v41 = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
      }
    }
  }

  else
  {
    *(a1 + 958) = 1;
  }

  a1[375] = llvm::Module::getOrInsertNamedMetadata();
  v34 = (a1 + *(*a1 - 24));
  size = v34[13].__r_.__value_.__l.__size_;
  v36 = size + 8;
  for (i = *(size + 16); ; i = *(i + 8))
  {
    if (i == v36)
    {
      return 1;
    }

    v38 = (i - 56);
    if (!i)
    {
      v38 = 0;
    }

    v39 = *v38;
    if (*v38)
    {
      v40 = *(v39 + 8);
      if ((v40 & 0xFE) == 0x12)
      {
        v40 = *(**(v39 + 16) + 8);
      }

      if ((v40 & 0xFFFFFF00) == 0x300 && v38[1])
      {
        break;
      }
    }
  }

  std::string::append(v34 + 17, "Fragment shaders do not support shader declared threadgroup variables");
  return 0;
}

__n128 sub_23C510D18(uint64_t *a1)
{
  v1 = a1[66];
  v2 = *(v1 + 32);
  if (*(v1 + 32))
  {
    v4 = a1 + 43;
    v5 = a1 + 1;
    do
    {
      v6 = __clz(v2);
      v7 = v6 ^ 0x1F;
      v8 = *a1;
      v9 = *(v4 + *(*a1 - 24));
      if (v9[1638] == 1 && *(a1[66] + 34) <= (*(a1[66] + 4 * v7) >> 15))
      {
        *(a1 + 134) = 1;
        v9 = *(v4 + *(v8 - 24));
      }

      v10 = 0x80000000 >> v6;
      (*(*v9 + 376))(v15);
      v11 = &v5[8 * v7];
      v12 = v15[1];
      *v11 = v15[0];
      *(v11 + 1) = v12;
      *(v11 + 2) = v16[0];
      result = *(v16 + 9);
      *(v11 + 41) = *(v16 + 9);
      v14 = v10 == v2;
      v2 ^= v10;
    }

    while (!v14);
  }

  return result;
}

uint64_t sub_23C510E64(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v5 = 0;
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[1];
  *(a1 + 8) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  do
  {
    v7 = a1 + v5;
    *(v7 + 60) = 0;
    *(v7 + 64) = 0;
    v5 += 64;
  }

  while (v5 != 512);
  *(a1 + 520) = 0;
  *(a1 + 528) = a3;
  *(a1 + 536) = *(a3 + 34);
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  if (a4)
  {
    sub_23C510D18(a1);
  }

  return a1;
}

char *sub_23C510F9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1 + *(*a1 - 24);
  v4 = *(v3 + 70);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  v3[774] = 1;
  v8 = (v7 - *v7);
  v9 = *v8;
  if (v9 < 0x15)
  {
    v10 = 0;
    v11 = 0;
    if (v9 < 0x11)
    {
      goto LABEL_14;
    }
  }

  else if (v8[10])
  {
    v10 = *(v7 + v8[10]);
  }

  else
  {
    v10 = 0;
  }

  v12 = v8[8];
  if (v12)
  {
    v11 = *(v7 + v12);
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v13 = *(a1 + *(v2 - 24) + 344);
  v14 = (*(*v13 + 392))(v13, a1[66], v11, v10);
  sub_23C4B0328(v3 + 88, 8, a1[69] & v14);
  if (*(a1 + 560) != 1)
  {
    v20 = (v7 - *v7);
    v21 = *v20;
    if (v21 < 0x13)
    {
      v22 = 0;
      v23 = 0;
      if (v21 < 0xF)
      {
LABEL_30:
        v25 = *(a1 + *(*a1 - 24) + 344);
        v16 = a1[68] & (*(*v25 + 392))(v25, a1[66], v23, v22);
        goto LABEL_31;
      }
    }

    else if (v20[9])
    {
      v22 = *(v7 + v20[9]);
    }

    else
    {
      v22 = 0;
    }

    v24 = v20[7];
    if (v24)
    {
      v23 = *(v7 + v24);
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_30;
  }

  v15 = *(a1[66] + 32);
  if (*(a1[66] + 32))
  {
    v16 = 0;
    do
    {
      v17 = __clz(v15);
      v16 |= 15 << (124 - 4 * v17);
      v18 = 0x80000000 >> v17;
      v19 = v18 == v15;
      v15 ^= v18;
    }

    while (!v19);
  }

  else
  {
    v16 = 0;
  }

LABEL_31:
  sub_23C4B0328(v3 + 88, 6, v16);
  return v3 + 704;
}

uint64_t sub_23C511214(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_23C52DD68(a1, a2 + 1, a3, "air.fragment", *a4, a6);
  sub_23C510E64((v11 + 304), a2 + 5, a5, 0);
  v12 = 0;
  v13 = *a2;
  *a1 = *a2;
  *(a1 + *(v13 - 24)) = a2[7];
  *(a1 + 2432) = a2[8];
  *(a1 + 3008) = 0;
  *(a1 + 3016) = 0u;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3112) = 0u;
  *(a1 + 3128) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3160) = 0u;
  *(a1 + 3176) = 0u;
  *(a1 + 3192) = 0u;
  *(a1 + 3208) = 0u;
  *(a1 + 3224) = 0u;
  *(a1 + 3240) = 0u;
  *(a1 + 3256) = 0u;
  do
  {
    *(a1 + v12 + 3024) = 4;
    *(a1 + v12 + 3032) = 0uLL;
    v12 += 32;
  }

  while (v12 != 256);
  v14 = 0;
  *(a1 + 3496) = 0u;
  *(a1 + 3512) = 0u;
  *(a1 + 3464) = 0u;
  *(a1 + 3480) = 0u;
  *(a1 + 3432) = 0u;
  *(a1 + 3448) = 0u;
  *(a1 + 3400) = 0u;
  *(a1 + 3416) = 0u;
  *(a1 + 3368) = 0u;
  *(a1 + 3384) = 0u;
  *(a1 + 3336) = 0u;
  *(a1 + 3352) = 0u;
  *(a1 + 3304) = 0u;
  *(a1 + 3320) = 0u;
  *(a1 + 3272) = 0u;
  *(a1 + 3288) = 0u;
  do
  {
    *(a1 + v14 + 3280) = 4;
    *(a1 + v14 + 3288) = 0uLL;
    v14 += 32;
  }

  while (v14 != 256);
  *(a1 + 3528) = 0;
  *(a1 + 3532) = 0;
  *(a1 + 3536) = 4;
  *(a1 + 3544) = 0u;
  *(a1 + 3560) = 4;
  *(a1 + 3568) = 0u;
  *(a1 + 3584) = 4;
  *(a1 + 3592) = 0u;
  *(a1 + 3608) = 4;
  *(a1 + 3616) = 0u;
  *(a1 + 3632) = 4;
  *(a1 + 3640) = 0u;
  *(a1 + 3656) = **a4 >> 12;
  *(a1 + 3664) = 4;
  *(a1 + 3672) = 0u;
  *(a1 + 3688) = 4;
  *(a1 + 3696) = 0u;
  *(a1 + 3712) = 4;
  *(a1 + 3720) = 0u;
  *(a1 + 3736) = 4;
  *(a1 + 3744) = 0u;
  *(a1 + 3760) = 4;
  *(a1 + 3768) = 0u;
  *(a1 + 3784) = 4;
  *(a1 + 3792) = 0u;
  v15 = *a4;
  *(a1 + 3824) = a4[2];
  *(a1 + 3808) = v15;
  *(a1 + 3843) = 0;
  *(a1 + 3832) = 0;
  *(a1 + 3840) = 0;
  v77 = "air.fragment";
  *(a1 + 3844) = 0x400000000;
  *(a1 + 3852) = 0;
  *(a1 + 3860) = 0;
  v78 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a3, &v77);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v18 = *(Operand + 8);
  if (v18 >= 4)
  {
    v19 = Operand;
    for (i = 3; i < v18; ++i)
    {
      v21 = *(v19 - 8 * v18 + 8 * i);
      v22 = *v21;
      if (v22 <= 0x22 && ((0x7FFFFFFF0uLL >> v22) & 1) != 0)
      {
        v23 = *(v21 + 2);
        if (v23)
        {
          for (j = 0; j < v23; ++j)
          {
            if (sub_23C4A57A0(*&v21[8 * j + -8 * v23], "air.fragment_rate"))
            {
              String = llvm::MDString::getString(*&v21[8 * j + 8 + -8 * *(v21 + 2)]);
              if (v26 == 5)
              {
                v27 = *String == 1869377379 && *(String + 4) == 114;
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              *(a1 + 3860) = v28;
              if ((((*(*(a1 + 2960) + 32) >> 12) ^ (*(*(a1 + 2960) + 32) >> 8)) & 0xF) == 0)
              {
                *(a1 + 3860) = 0;
              }
            }

            v23 = *(v21 + 2);
          }

          v18 = *(v19 + 8);
        }
      }
    }
  }

  v29 = *(a1 + 80);
  if (v29)
  {
    v30 = 0;
    v31 = 0x69736F702E726961;
    do
    {
      v32 = *(*(a1 + 72) + 8 * v30);
      if (v32)
      {
        v33 = llvm::MDString::getString(*(v32 - 8 * *(v32 + 8) + 8));
        if (v34 > 15)
        {
          if (v34 == 16)
          {
            if (*v33 == 0x6E6F72662E726961 && *(v33 + 8) == 0x676E696361665F74)
            {
              *(a1 + 3840) = 1;
            }
          }

          else if (v34 == 18)
          {
            v36 = *v33 == 0x706D61732E726961 && *(v33 + 8) == 0x5F6B73616D5F656CLL;
            if (v36 && *(v33 + 16) == 28265)
            {
              v38 = v31;
              v39 = *(v32 + 8);
              if (v32 - 8 * v39 + 16 == v32)
              {
                v42 = 0;
              }

              else
              {
                v40 = -8 * v39;
                v41 = v32 + 16;
                do
                {
                  v42 = sub_23C4A57A0(*(v41 + v40), "air.post_depth_coverage");
                  if (v42)
                  {
                    break;
                  }

                  v27 = v40 == -24;
                  v40 += 8;
                }

                while (!v27);
              }

              *(a1 + 3854) = v42;
              v31 = v38;
            }
          }
        }

        else if (v34 == 12)
        {
          if (*v33 == v31 && *(v33 + 8) == 1852795252)
          {
            *(a1 + 3839) = 1;
          }
        }

        else if (v34 == 15 && *v33 == 0x6E696F702E726961 && *(v33 + 7) == 0x64726F6F635F746ELL)
        {
          *(a1 + 3841) = 1;
        }
      }

      ++v30;
    }

    while (v30 != v29);
  }

  v45 = **(a1 + 3808);
  v46 = (v45 & 0x60000) == 0x40000 && ((v45 & 0x10000) != 0 || (*(*(a1 + 2960) + 33) & 0xE) != 0);
  *(a1 + 3842) = v46;
  v47 = *(a1 + 56);
  if (v47)
  {
    v48 = *(v47 + 8);
    if (v48)
    {
      v49 = 0;
      while (1)
      {
        v50 = *(*(a1 + 56) - 8 * *(*(a1 + 56) + 8) + 8 * v49);
        v51 = llvm::MDString::getString(*(v50 - 8 * *(v50 + 8)));
        v53 = v51;
        v54 = v52;
        if (v52 == 12)
        {
          break;
        }

        if (v52 != 9)
        {
          goto LABEL_92;
        }

        if (*v51 != 0x747065642E726961 || *(v51 + 8) != 104)
        {
          goto LABEL_92;
        }

        *(a1 + 3843) = 1;
        *(a1 + 3848) = 0;
        v56 = *(v50 + 8);
        if (v56 >= 2)
        {
          v58 = 1;
          while (1)
          {
            v57 = v50 - 8 * v56;
            v59 = *(v57 + 8 * v58);
            if (!*v59)
            {
              break;
            }

            if (v56 == ++v58)
            {
              goto LABEL_129;
            }
          }

          v62 = llvm::MDString::getString(*(v57 + 8 * v58));
          if (v63 == 19)
          {
            v64 = *v62 == 0x747065642E726961 && v62[1] == 0x66696C6175715F68;
            if (v64 && *(v62 + 11) == 0x72656966696C6175)
            {
              v59 = *(v50 - 8 * *(v50 + 8) + 8 * (v58 + 1));
            }
          }

          v66 = llvm::MDString::getString(v59);
          switch(v67)
          {
            case 11:
              if (*v66 == 0x616572672E726961 && *(v66 + 3) == 0x726574616572672ELL)
              {
                v68 = 1;
                goto LABEL_127;
              }

              break;
            case 8:
              v69 = 2 * (*v66 == 0x7373656C2E726961);
              goto LABEL_128;
            case 7:
              v68 = 0;
              v69 = 0;
              if (*v66 != 779250017 || *(v66 + 3) != 2037276974)
              {
                goto LABEL_128;
              }

LABEL_127:
              v69 = v68;
LABEL_128:
              *(a1 + 3844) = v69;
              goto LABEL_129;
          }

          v69 = 0;
          goto LABEL_128;
        }

LABEL_129:
        if (++v49 == v48)
        {
          goto LABEL_130;
        }
      }

      if (*v51 != 0x65766F632E726961 || *(v51 + 8) != 1701273970)
      {
LABEL_92:
        if (!sub_23C509554(v51, v52))
        {
          if (v54 == 11 && *v53 == 0x6E6574732E726961 && *(v53 + 3) == 0x6C69636E6574732ELL)
          {
            *(a1 + 3855) = 1;
          }

          goto LABEL_129;
        }
      }

      *(a1 + 3852) = 1;
      goto LABEL_129;
    }
  }

LABEL_130:
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v73 = *(Function + 8) != 0;
  }

  else
  {
    v73 = 0;
  }

  *(a1 + 3853) = v73;
  v74 = llvm::Module::getFunction();
  if (v74)
  {
    v75 = *(v74 + 8) != 0;
  }

  else
  {
    v75 = 0;
  }

  *(a1 + 11) = v75;
  return a1;
}

uint64_t sub_23C511A84(uint64_t a1)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 560);
  v4 = (v3 - *v3);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = (v3 + v5 + *(v3 + v5));
  }

  else
  {
    v6 = 0;
  }

  v16 = 0;
  v7 = (v6 - *v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_23C4B15BC(v2, v9, &v16);
  v11 = sub_23C510F9C((a1 + 2432));
  v13 = v12;
  v14 = (*(**(a1 + *(*a1 - 24) + 344) + 432))();
  sub_23C4B2DFC(v11, 4, v14);
  if (v10)
  {
    sub_23C4B02B4(v11, 10, v16);
  }

  sub_23C4B2DFC(v11, 12, *(a1 + 3844));

  return sub_23C4B03D4(v11, v13);
}

llvm::Instruction *sub_23C511C08(uint64_t a1, uint64_t *a2, int a3)
{
  v16 = a2;
  v5 = *a2;
  v6 = a1 + *(*a1 - 24);
  v8 = 1416;
  if (*(v6 + 152) == *a2)
  {
    v8 = 1432;
  }

  v9 = 1424;
  if (*(v6 + 152) == *a2)
  {
    v9 = 1440;
  }

  if (a3)
  {
    v8 = v9;
  }

  v7 = *(v6 + 344);
  v10 = *(v7 + v8);
  if (v10)
  {
    v11 = strlen(*(v7 + v8));
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_23C49EB10(v6, v10, v11, v5, v5);
  v15[16] = 257;
  v13 = sub_23C497A7C((v6 + 8), *(v12 + 24), v12, &v16, 1, v15);
  if (a3 == 1)
  {
    return (*(*a1 + 384))(a1, v13);
  }

  return v13;
}

BOOL sub_23C511D44(void *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C503B2C(a1);
    v4 = sub_23C52A7B4(a1);
    v5 = a1 + *(*a1 - 24);
    v5[774] = 1;
    v6 = *(v5 + 186);
    v7 = *(v5 + 184) - *(v5 + 188);
    sub_23C4B5F88(v5 + 88, v3);
    sub_23C4C521C(v5 + 88, v4);
    v8 = a1 + *(*a1 - 24);
    v9 = sub_23C4B03D4((v5 + 704), v7 + v6);
    sub_23C4B1AD8((v8 + 704), v9);
  }

  return v2;
}

void sub_23C511E58(void *a1@<X0>, std::string *a2@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = a1[514];
  sub_23C49F8D0(v34, "AGCVertexContextStateGL");
  sub_23C49F8D0(v32, "vertexUnpackState");
  sub_23C49F8D0(&v37, &unk_23C53F34D);
  if (*(v2 + 80))
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 4 * v3);
      sub_23C49F8D0(&v47, "AGCVertexElement");
      sub_23C49F8D0(&v46, "code");
      sub_23C4B7004(&v49, &v46.__r_.__value_.__l.__data_, *v4);
      sub_23C49F8D0(v44, "components");
      sub_23C4B7004(&v50, v44, v4[1]);
      sub_23C49F8D0(v42, "type");
      sub_23C4B705C(&v51, v42, off_278BBFEE8[v4[2]]);
      sub_23C49F8D0(v40, "normalized");
      sub_23C4B7004(&v52, v40, HIBYTE(*v4) & 1);
      sub_23C49F8D0(&v39, "bgraSwizzle");
      sub_23C4B7004(&v53, &v39.__r_.__value_.__l.__data_, (*v4 >> 25) & 1);
      sub_23C49F8D0(&__p, "unused");
      sub_23C4B7004(v54, &__p.__r_.__value_.__l.__data_, *v4 >> 26);
      sub_23C4D6FAC(&v36, &v47, 0, &v49, 6);
      for (i = 0; i != 0x1FFFFFFFFFFFFFEELL; i -= 3)
      {
        if (SHIBYTE(v54[0].__r_.__value_.__r.__words[i + 2]) < 0)
        {
          operator delete(v54[i / 3].__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v36;
      }

      else
      {
        v6 = v36.__r_.__value_.__r.__words[0];
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v36.__r_.__value_.__l.__size_;
      }

      std::string::append(&v37, v6, size);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      ++v3;
    }

    while (v3 < *(v2 + 80));
  }

  sub_23C49F8D0(&v47, "AGCVertexUnpackState");
  sub_23C49F8D0(&v46, "currentAttribs");
  sub_23C4C8324(&v49, &v46.__r_.__value_.__l.__data_, *(v2 + 64));
  sub_23C49F8D0(v44, "instancedAttribs");
  sub_23C4C8324(&v50, v44, *(v2 + 72));
  sub_23C49F8D0(v42, "elementCount");
  sub_23C4C8324(&v51, v42, *(v2 + 80));
  sub_23C49F8D0(v40, "vertexIDCode");
  sub_23C4C8324(&v52, v40, *(v2 + 84));
  sub_23C49F8D0(&v39, "instanceIDCode");
  sub_23C4C8324(&v53, &v39.__r_.__value_.__l.__data_, *(v2 + 85));
  sub_23C49F8D0(&__p, "unused");
  sub_23C4C8324(v54, &__p.__r_.__value_.__l.__data_, *(v2 + 86));
  sub_23C49F8D0(&v36, "elements : ");
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(&__dst, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v37;
  }

  sub_23C4D6FAC(&v54[1], &v36, 0, &__dst, 1);
  sub_23C4D6FAC(&v31, &v47, 0, &v49, 7);
  for (j = 0; j != 0x1FFFFFFFFFFFFFEBLL; j -= 3)
  {
    if (SHIBYTE(v54[1].__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(v54[j / 3 + 1].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v49, v32, &v31);
  sub_23C49F8D0(&v47, "clip_distance_enable_mask");
  sub_23C4D7674(&v50, &v47.__r_.__value_.__l.__data_, *(v2 + 88));
  sub_23C49F8D0(&v46, "outputPointSize");
  sub_23C4D7674(&v51, &v46.__r_.__value_.__l.__data_, HIBYTE(*(v2 + 88)) & 1);
  sub_23C49F8D0(v44, "shaderDebugEnable");
  sub_23C4D7674(&v52, v44, (*(v2 + 88) >> 9) & 1);
  sub_23C49F8D0(v42, "unused");
  sub_23C4D7674(&v53, v42, *(v2 + 88) >> 10);
  sub_23C4D6FAC(&v30, v34, 0, &v49, 5);
  for (k = 0; k != -15; k -= 3)
  {
    if (SHIBYTE(v53.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v53.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v10 = a1[515];
  if (v10)
  {
    sub_23C49F8D0(&v36, &unk_23C53F34D);
    for (m = 0; m != 32; ++m)
    {
      sub_23C49F8D0(&v47, "AGCSamplerPCFState");
      sub_23C49F8D0(&v46, "compareFunc");
      sub_23C4B705C(&v49, &v46.__r_.__value_.__l.__data_, off_278BBFF48[*(v10 + 2 * m) & 0xF]);
      sub_23C49F8D0(v44, "clampPCFEnabled");
      sub_23C4D7674(&v50, v44, (*(v10 + 2 * m) >> 4) & 1);
      sub_23C49F8D0(v42, "mipmapMinFilterEnabled");
      sub_23C4D7674(&v51, v42, (*(v10 + 2 * m) >> 5) & 1);
      sub_23C49F8D0(v40, "trilinearMinFilterEnabled");
      sub_23C4D7674(&v52, v40, (*(v10 + 2 * m) >> 6) & 1);
      sub_23C49F8D0(&v39, "linearMinFilterEnabled");
      sub_23C4D7674(&v53, &v39.__r_.__value_.__l.__data_, (*(v10 + 2 * m) >> 7) & 1);
      sub_23C49F8D0(&__p, "linearMagFilterEnabled");
      sub_23C4D7674(v54, &__p.__r_.__value_.__l.__data_, HIBYTE(*(v10 + 2 * m)) & 1);
      sub_23C49F8D0(&v37, "unused");
      sub_23C4D7674(&v54[1], &v37.__r_.__value_.__l.__data_, *(v10 + 2 * m) >> 9);
      sub_23C4D6FAC(&__dst, &v47, 1, &v49, 7);
      for (n = 0; n != 0x1FFFFFFFFFFFFFEBLL; n -= 3)
      {
        if (SHIBYTE(v54[1].__r_.__value_.__r.__words[n + 2]) < 0)
        {
          operator delete(v54[n / 3 + 1].__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(&v36, p_dst, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    sub_23C49F8D0(&v47, "AGCSamplerPCFStates");
    sub_23C49F8D0(&v49, "pcf : ");
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v50, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v50 = v36;
    }

    sub_23C4D6FAC(&__p, &v47, 0, &v49, 2);
    for (ii = 0; ii != -6; ii -= 3)
    {
      if (SHIBYTE(v50.__r_.__value_.__r.__words[ii + 2]) < 0)
      {
        operator delete(*(&v49 + ii * 8 + 24));
      }
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_23C49F8D0(&__p, &unk_23C53F34D);
  }

  v16 = a1[516];
  sub_23C49F8D0(&v47, &unk_23C53F34D);
  for (jj = 1; jj != 33; ++jj)
  {
    std::to_string(&v46, v16[jj]);
    v18 = std::string::append(&v46, " ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v49;
    }

    else
    {
      v20 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v49.__r_.__value_.__l.__size_;
    }

    std::string::append(&v47, v20, v21);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  sub_23C49F8D0(&v46, "AGCSamplerRemapStateGL");
  sub_23C49F8D0(v44, "samplerCount");
  sub_23C4B7004(&v49, v44, *v16);
  sub_23C49F8D0(v42, "samplerToTexUnitMap");
  std::operator+<char>();
  v22 = std::string::append(&v39, "]");
  v23 = v22->__r_.__value_.__r.__words[2];
  *v40 = *&v22->__r_.__value_.__l.__data_;
  v41 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B733C(&v50, v42, v40);
  sub_23C4D6FAC(&v37, &v46, 0, &v49, 2);
  for (kk = 0; kk != -6; kk -= 3)
  {
    if (SHIBYTE(v50.__r_.__value_.__r.__words[kk + 2]) < 0)
    {
      operator delete(*(&v49 + kk * 8 + 24));
    }
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  sub_23C4B7AC8(&v49, &v30.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v37;
  }

  else
  {
    v25 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v37.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v49, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__r.__words[0] = 0;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_23C5129F8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1C880;
  v1[520] = &unk_284F1CA80;
  v2 = v1[517];
  if (v2)
  {
    v1[518] = v2;
    operator delete(v2);
  }

  v3 = v1[510];
  if (v3)
  {
    v1[511] = v3;
    operator delete(v3);
  }

  v4 = v1[487];
  if (v4 != v1 + 489)
  {
    free(v4);
  }

  sub_23C52B334(v1, off_284F1CAE8);
  sub_23C4B130C((v1 + 520));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C512B24(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F1C880;
  v1[520] = &unk_284F1CA80;
  v2 = v1[517];
  if (v2)
  {
    v1[518] = v2;
    operator delete(v2);
  }

  v3 = v1[510];
  if (v3)
  {
    v1[511] = v3;
    operator delete(v3);
  }

  v4 = v1[487];
  if (v4 != v1 + 489)
  {
    free(v4);
  }

  sub_23C52B334(v1, off_284F1CAE8);

  return sub_23C4B130C((v1 + 520));
}