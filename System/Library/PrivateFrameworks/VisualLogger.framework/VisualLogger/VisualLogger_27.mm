BOOL sub_27134D960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *a1 = 0;
    *(a1 + 8) = xmmword_271856B50;
    *(a1 + 24) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *a1 = 0;
    *(a1 + 8) = xmmword_271856B50;
    *(a1 + 24) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *a1 = a2;
  *(a1 + 8) = (a3 << 32) | 3;
  *(a1 + 16) = (v4 << 32) | 1;
  *(a1 + 24) = a3;
  *(a1 + 28) = v3;
  return 1;
}

BOOL sub_27134DB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = xmmword_271856B50;
    *(a1 + 56) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = xmmword_271856B50;
    *(a1 + 56) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 32) = a2;
  *(a1 + 40) = (a3 << 32) | 3;
  *(a1 + 48) = (v4 << 32) | 1;
  *(a1 + 56) = a3;
  *(a1 + 60) = v3;
  return 1;
}

BOOL sub_27134DCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xmmword_271856B50;
    *(a1 + 88) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xmmword_271856B50;
    *(a1 + 88) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 64) = a2;
  *(a1 + 72) = (a3 << 32) | 3;
  *(a1 + 80) = (v4 << 32) | 1;
  *(a1 + 88) = a3;
  *(a1 + 92) = v3;
  return 1;
}

BOOL sub_27134DEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = xmmword_271856B50;
    *(a1 + 120) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = xmmword_271856B50;
    *(a1 + 120) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 96) = a2;
  *(a1 + 104) = (a3 << 32) | 3;
  *(a1 + 112) = (v4 << 32) | 1;
  *(a1 + 120) = a3;
  *(a1 + 124) = v3;
  return 1;
}

BOOL sub_27134E060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = xmmword_271856B50;
    *(a1 + 152) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = xmmword_271856B50;
    *(a1 + 152) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 128) = a2;
  *(a1 + 136) = (a3 << 32) | 3;
  *(a1 + 144) = (v4 << 32) | 1;
  *(a1 + 152) = a3;
  *(a1 + 156) = v3;
  return 1;
}

BOOL sub_27134E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = xmmword_271856B50;
    *(a1 + 184) = 0;
    return a3 == 0;
  }

  if (!a3)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = xmmword_271856B50;
    *(a1 + 184) = 0;
    return 0;
  }

  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (v3 * a3 == -1)
  {
    v12 = a2;
    v5 = a3;
    v6 = a1;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a1 = v6;
        a3 = v5;
        a2 = v12;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v7);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 160) = a2;
  *(a1 + 168) = (a3 << 32) | 3;
  *(a1 + 176) = (v4 << 32) | 1;
  *(a1 + 184) = a3;
  *(a1 + 188) = v3;
  return 1;
}

uint64_t sub_27134E3E0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5 >= 0xD || ((0x19EFu >> a5) & 1) == 0)
      {
        sub_27183428C(a5);
      }

      v6 = qword_27188BFD0[a5] * a3;
      v7 = a1[25];
      if (!v7)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = *(v7 + 16);
          if (v9 <= a4)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            goto LABEL_11;
          }
        }

        if (v9 >= a4)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      *(v8 + 40) = a5;
      result = 1;
      v8[6] = a2;
      v8[7] = v6;
    }

    else
    {
      v20 = a1 + 25;
      result = a1[25];
      if (result)
      {
        v21 = a1 + 25;
        v22 = a1[25];
        do
        {
          v23 = *(v22 + 32);
          v16 = v23 >= a4;
          v24 = v23 < a4;
          if (v16)
          {
            v21 = v22;
          }

          v22 = *(v22 + 8 * v24);
        }

        while (v22);
        if (v21 != v20 && *(v21 + 16) <= a4)
        {
          v25 = v21[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            v30 = v21;
            do
            {
              v26 = v30[2];
              v28 = *v26 == v30;
              v30 = v26;
            }

            while (!v28);
          }

          if (a1[24] == v21)
          {
            a1[24] = v26;
          }

          --a1[26];
          sub_271128F64(result, v21);
          operator delete(v21);
        }

        return 0;
      }
    }
  }

  else
  {
    v12 = a1 + 25;
    v11 = a1[25];
    if (v11)
    {
      v13 = a1 + 25;
      v14 = a1[25];
      do
      {
        v15 = *(v14 + 32);
        v16 = v15 >= a4;
        v17 = v15 < a4;
        if (v16)
        {
          v13 = v14;
        }

        v14 = *(v14 + 8 * v17);
      }

      while (v14);
      if (v13 != v12 && *(v13 + 16) <= a4)
      {
        v18 = v13[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          v27 = v13;
          do
          {
            v19 = v27[2];
            v28 = *v19 == v27;
            v27 = v19;
          }

          while (!v28);
        }

        v29 = a3;
        if (a1[24] == v13)
        {
          a1[24] = v19;
        }

        --a1[26];
        sub_271128F64(v11, v13);
        operator delete(v13);
        a3 = v29;
      }
    }

    return a3 == 0;
  }

  return result;
}

uint64_t sub_27134E688(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5 >= 0xD || ((0x19EFu >> a5) & 1) == 0)
      {
        sub_27183428C(a5);
      }

      v6 = qword_27188BFD0[a5] * a3;
      v7 = a1[28];
      if (!v7)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = *(v7 + 16);
          if (v9 <= a4)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            goto LABEL_11;
          }
        }

        if (v9 >= a4)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      *(v8 + 40) = a5;
      result = 1;
      v8[6] = a2;
      v8[7] = v6;
    }

    else
    {
      v20 = a1 + 28;
      result = a1[28];
      if (result)
      {
        v21 = a1 + 28;
        v22 = a1[28];
        do
        {
          v23 = *(v22 + 32);
          v16 = v23 >= a4;
          v24 = v23 < a4;
          if (v16)
          {
            v21 = v22;
          }

          v22 = *(v22 + 8 * v24);
        }

        while (v22);
        if (v21 != v20 && *(v21 + 16) <= a4)
        {
          v25 = v21[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            v30 = v21;
            do
            {
              v26 = v30[2];
              v28 = *v26 == v30;
              v30 = v26;
            }

            while (!v28);
          }

          if (a1[27] == v21)
          {
            a1[27] = v26;
          }

          --a1[29];
          sub_271128F64(result, v21);
          operator delete(v21);
        }

        return 0;
      }
    }
  }

  else
  {
    v12 = a1 + 28;
    v11 = a1[28];
    if (v11)
    {
      v13 = a1 + 28;
      v14 = a1[28];
      do
      {
        v15 = *(v14 + 32);
        v16 = v15 >= a4;
        v17 = v15 < a4;
        if (v16)
        {
          v13 = v14;
        }

        v14 = *(v14 + 8 * v17);
      }

      while (v14);
      if (v13 != v12 && *(v13 + 16) <= a4)
      {
        v18 = v13[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          v27 = v13;
          do
          {
            v19 = v27[2];
            v28 = *v19 == v27;
            v27 = v19;
          }

          while (!v28);
        }

        v29 = a3;
        if (a1[27] == v13)
        {
          a1[27] = v19;
        }

        --a1[29];
        sub_271128F64(v11, v13);
        operator delete(v13);
        a3 = v29;
      }
    }

    return a3 == 0;
  }

  return result;
}

void sub_27134E930(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *(a1 + 208);
  if (v5 > a2)
  {
    v6 = *(a1 + 192);
    if ((a2 & 0x8000000000000000) != 0)
    {
      do
      {
        v12 = *v6;
        if (*v6)
        {
          do
          {
            v7 = v12;
            v12 = v12[1];
          }

          while (v12);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (v10);
        }

        v6 = v7;
      }

      while (!__CFADD__(v3++, 1));
    }

    else if (a2)
    {
      do
      {
        v9 = v6[1];
        if (v9)
        {
          do
          {
            v7 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (!v10);
        }

        v6 = v7;
      }

      while (v3-- > 1);
    }

    else
    {
      v7 = *(a1 + 192);
    }

    *a3 = *(v7 + 16);
    *(a3 + 120) = 1;
    return;
  }

  v39 = 0;
  v42 = v38;
  v43 = "given index is ";
  v44 = v38;
  v45 = "given index is ";
  v46 = "given index is ";
  v40.__r_.__value_.__r.__words[0] = &v42;
  sub_27123B448(&v40);
  std::to_string(&v40, v3);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " but mesh contains only ";
  v44 = v38;
  v45 = " but mesh contains only ";
  v46 = " but mesh contains only ";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130D48 + v39))(&v40, v38);
  std::to_string(&v40, v5);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " vertex label lists";
  v44 = v38;
  v45 = " vertex label lists";
  v46 = " vertex label lists";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130CA0 + v39))(&v40, v38);
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v42 = &v40;
  (off_288130B70[v39])(v16, &v42, v38);
  if (v39 != -1)
  {
    (off_288130B28[v39])(&v42, v38);
  }

  if (SHIBYTE(v17) < 0)
  {
    sub_271127178(v18, v16[0], v16[1]);
  }

  else
  {
    *v18 = *v16;
    v19 = v17;
  }

  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  v26 = 1;
  sub_27112D480(17, v18, &v27);
  *a3 = v27;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v37 == 1)
  {
    *(a3 + 40) = 0;
    v13 = v30;
    if (v30 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v29;
      v29 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
LABEL_37:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v13)
        {
          goto LABEL_44;
        }

LABEL_42:
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_44;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v15 = v33;
    *(v14 + 16) = v32;
    *v14 = v31;
    v31 = 0uLL;
    *(a3 + 72) = v15;
    *(a3 + 80) = v34;
    *(a3 + 96) = v35;
    v32 = 0;
    v34 = 0uLL;
    v35 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v13)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_44:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_27134EDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27134EE30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *(a1 + 232);
  if (v5 > a2)
  {
    v6 = *(a1 + 216);
    if ((a2 & 0x8000000000000000) != 0)
    {
      do
      {
        v12 = *v6;
        if (*v6)
        {
          do
          {
            v7 = v12;
            v12 = v12[1];
          }

          while (v12);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (v10);
        }

        v6 = v7;
      }

      while (!__CFADD__(v3++, 1));
    }

    else if (a2)
    {
      do
      {
        v9 = v6[1];
        if (v9)
        {
          do
          {
            v7 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v10 = *v7 == v6;
            v6 = v7;
          }

          while (!v10);
        }

        v6 = v7;
      }

      while (v3-- > 1);
    }

    else
    {
      v7 = *(a1 + 216);
    }

    *a3 = *(v7 + 16);
    *(a3 + 120) = 1;
    return;
  }

  v39 = 0;
  v42 = v38;
  v43 = "given index is ";
  v44 = v38;
  v45 = "given index is ";
  v46 = "given index is ";
  v40.__r_.__value_.__r.__words[0] = &v42;
  sub_27123B448(&v40);
  std::to_string(&v40, v3);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " but mesh contains only ";
  v44 = v38;
  v45 = " but mesh contains only ";
  v46 = " but mesh contains only ";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130D48 + v39))(&v40, v38);
  std::to_string(&v40, v5);
  v42 = v38;
  v43 = &v40;
  v44 = v38;
  v45 = &v40;
  v46 = &v40;
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v41 = &v42;
  (off_288130B58[v39])(&v41, v38);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v42 = v38;
  v43 = " face label lists";
  v44 = v38;
  v45 = " face label lists";
  v46 = " face label lists";
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v40.__r_.__value_.__r.__words[0] = &v42;
  (*(&off_288130D60 + v39))(&v40, v38);
  if (v39 == -1)
  {
    sub_2711308D4();
  }

  v42 = &v40;
  (off_288130B70[v39])(v16, &v42, v38);
  if (v39 != -1)
  {
    (off_288130B28[v39])(&v42, v38);
  }

  if (SHIBYTE(v17) < 0)
  {
    sub_271127178(v18, v16[0], v16[1]);
  }

  else
  {
    *v18 = *v16;
    v19 = v17;
  }

  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  v26 = 1;
  sub_27112D480(17, v18, &v27);
  *a3 = v27;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v37 == 1)
  {
    *(a3 + 40) = 0;
    v13 = v30;
    if (v30 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v29;
      v29 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
LABEL_37:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v13)
        {
          goto LABEL_44;
        }

LABEL_42:
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_44;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v14 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v15 = v33;
    *(v14 + 16) = v32;
    *v14 = v31;
    v31 = 0uLL;
    *(a3 + 72) = v15;
    *(a3 + 80) = v34;
    *(a3 + 96) = v35;
    v32 = 0;
    v34 = 0uLL;
    v35 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v13)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_44:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_27134F2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27134F330(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 12);
  if (v3 != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    v4 = v2 - 1;
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = *a1;
    v8 = *a2;
    v9 = v3 - 1;
    if (v9)
    {
      v10 = 4 * *(a1 + 20);
      v11 = 4 * *(a2 + 20);
      if (v4)
      {
        v12 = 0;
LABEL_7:
        v13 = v8;
        v14 = v7;
        v15 = v4;
        while (*v14 == *v13)
        {
          v14 += v5;
          v13 += v6;
          if (!--v15)
          {
            if (*v14 != *v13)
            {
              return 0;
            }

            v7 = (v7 + v10);
            v8 = (v8 + v11);
            if (++v12 == v9)
            {
LABEL_19:
              while (*v7 == *v8)
              {
                v7 += v5;
                v8 += v6;
                if (!--v4)
                {
                  goto LABEL_21;
                }
              }

              return 0;
            }

            goto LABEL_7;
          }
        }
      }

      else
      {
        while (*v7 == *v8)
        {
          v7 = (v7 + v10);
          v8 = (v8 + v11);
          if (!--v9)
          {
            goto LABEL_21;
          }
        }
      }

      return 0;
    }

    if (v4)
    {
      goto LABEL_19;
    }

LABEL_21:
    if (*v7 != *v8)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  v16 = *(a1 + 40);
  if (v16 != *(a2 + 40))
  {
    return 0;
  }

  v17 = *(a1 + 44);
  if (v17 != *(a2 + 44))
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    v18 = v16 - 1;
    v19 = *(a1 + 48);
    v20 = *(a2 + 48);
    v21 = *(a1 + 32);
    v22 = *(a2 + 32);
    v23 = v17 - 1;
    if (v23)
    {
      v24 = 4 * *(a1 + 52);
      v25 = 4 * *(a2 + 52);
      if (v18)
      {
        v26 = 0;
LABEL_28:
        v27 = v22;
        v28 = v21;
        v29 = v18;
        while (*v28 == *v27)
        {
          v28 += v19;
          v27 += v20;
          if (!--v29)
          {
            if (*v28 != *v27)
            {
              return 0;
            }

            v21 = (v21 + v24);
            v22 = (v22 + v25);
            if (++v26 == v23)
            {
LABEL_40:
              while (*v21 == *v22)
              {
                v21 += v19;
                v22 += v20;
                if (!--v18)
                {
                  goto LABEL_42;
                }
              }

              return 0;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
        while (*v21 == *v22)
        {
          v21 = (v21 + v24);
          v22 = (v22 + v25);
          if (!--v23)
          {
            goto LABEL_42;
          }
        }
      }

      return 0;
    }

    if (v18)
    {
      goto LABEL_40;
    }

LABEL_42:
    if (*v21 != *v22)
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  v30 = *(a1 + 136);
  if (v30 != *(a2 + 136))
  {
    return 0;
  }

  v31 = *(a1 + 140);
  if (v31 != *(a2 + 140))
  {
    return 0;
  }

  if (*(a1 + 152))
  {
    v32 = v30 - 1;
    v33 = *(a1 + 144);
    v34 = *(a2 + 144);
    v35 = *(a1 + 128);
    v36 = *(a2 + 128);
    v37 = v31 - 1;
    if (v37)
    {
      v38 = 4 * *(a1 + 148);
      v39 = 4 * *(a2 + 148);
      if (v32)
      {
        v40 = 0;
LABEL_49:
        v41 = v36;
        v42 = v35;
        v43 = v32;
        while (*v42 == *v41)
        {
          v42 += v33;
          v41 += v34;
          if (!--v43)
          {
            if (*v42 != *v41)
            {
              return 0;
            }

            v35 = (v35 + v38);
            v36 = (v36 + v39);
            if (++v40 == v37)
            {
LABEL_61:
              while (*v35 == *v36)
              {
                v35 += v33;
                v36 += v34;
                if (!--v32)
                {
                  goto LABEL_63;
                }
              }

              return 0;
            }

            goto LABEL_49;
          }
        }
      }

      else
      {
        while (*v35 == *v36)
        {
          v35 = (v35 + v38);
          v36 = (v36 + v39);
          if (!--v37)
          {
            goto LABEL_63;
          }
        }
      }

      return 0;
    }

    if (v32)
    {
      goto LABEL_61;
    }

LABEL_63:
    if (*v35 != *v36)
    {
      return 0;
    }
  }

  else if (*(a2 + 152))
  {
    return 0;
  }

  v44 = *(a1 + 168);
  if (v44 != *(a2 + 168))
  {
    return 0;
  }

  v45 = *(a1 + 172);
  if (v45 != *(a2 + 172))
  {
    return 0;
  }

  v96 = a2;
  if (*(a1 + 184))
  {
    v46 = v44 - 1;
    v47 = *(a1 + 176);
    v48 = *(a2 + 176);
    v49 = *(a1 + 160);
    v50 = *(a2 + 160);
    v51 = v45 - 1;
    if (v51)
    {
      v52 = 4 * *(a1 + 180);
      v53 = 4 * *(a2 + 180);
      if (v46)
      {
        v54 = 0;
LABEL_70:
        v55 = v50;
        v56 = v49;
        v57 = v46;
        while (*v56 == *v55)
        {
          v56 += v47;
          v55 += v48;
          if (!--v57)
          {
            if (*v56 != *v55)
            {
              return 0;
            }

            v49 = (v49 + v52);
            v50 = (v50 + v53);
            if (++v54 != v51)
            {
              goto LABEL_70;
            }

            goto LABEL_79;
          }
        }
      }

      else
      {
        while (*v49 == *v50)
        {
          v49 = (v49 + v52);
          v50 = (v50 + v53);
          if (!--v51)
          {
            goto LABEL_85;
          }
        }
      }

      return 0;
    }

    if (v46)
    {
LABEL_79:
      a2 = v96;
      while (*v49 == *v50)
      {
        v49 += v47;
        v50 += v48;
        if (!--v46)
        {
          goto LABEL_85;
        }
      }

      return 0;
    }

LABEL_85:
    if (*v49 != *v50)
    {
      return 0;
    }
  }

  else if (*(a2 + 184))
  {
    return 0;
  }

  v58 = *(a1 + 72);
  if (v58 != *(a2 + 72))
  {
    return 0;
  }

  v59 = *(a1 + 76);
  if (v59 != *(a2 + 76))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    v60 = v58 - 1;
    v61 = *(a1 + 80);
    v62 = *(v96 + 80);
    v63 = *(a1 + 64);
    v64 = *(v96 + 64);
    v65 = v59 - 1;
    if (v65)
    {
      v66 = 4 * *(a1 + 84);
      v67 = 4 * *(v96 + 84);
      if (v60)
      {
        v68 = 0;
LABEL_92:
        v69 = v64;
        v70 = v63;
        v71 = v60;
        while (*v70 == *v69)
        {
          v70 += v61;
          v69 += v62;
          if (!--v71)
          {
            if (*v70 != *v69)
            {
              return 0;
            }

            v63 = (v63 + v66);
            v64 = (v64 + v67);
            if (++v68 == v65)
            {
LABEL_104:
              while (*v63 == *v64)
              {
                v63 += v61;
                v64 += v62;
                if (!--v60)
                {
                  goto LABEL_106;
                }
              }

              return 0;
            }

            goto LABEL_92;
          }
        }
      }

      else
      {
        while (*v63 == *v64)
        {
          v63 = (v63 + v66);
          v64 = (v64 + v67);
          if (!--v65)
          {
            goto LABEL_106;
          }
        }
      }

      return 0;
    }

    if (v60)
    {
      goto LABEL_104;
    }

LABEL_106:
    v74 = *v63 == *v64;
    v72 = a1;
    v73 = v96;
    if (!v74)
    {
      return 0;
    }
  }

  else
  {
    v72 = a1;
    v73 = v96;
    if (*(v96 + 88))
    {
      return 0;
    }
  }

  v75 = v72[26];
  if (v75 != *(v73 + 104))
  {
    return 0;
  }

  v76 = v72[27];
  if (v76 != *(v73 + 108))
  {
    return 0;
  }

  if (!v72[30])
  {
    v91 = v96;
    if (!*(v96 + 120))
    {
      goto LABEL_130;
    }

    return 0;
  }

  v77 = v75 - 1;
  v78 = *(a1 + 112);
  v79 = *(v96 + 112);
  v80 = *(a1 + 96);
  v81 = *(v96 + 96);
  v82 = v76 - 1;
  if (v82)
  {
    v83 = *(a1 + 116);
    v84 = *(v96 + 116);
    if (v77)
    {
      v85 = 0;
      v86 = 4 * v83;
      v87 = 4 * v84;
LABEL_114:
      v88 = v81;
      v89 = v80;
      v90 = v77;
      while (*v89 == *v88)
      {
        v89 += v78;
        v88 += v79;
        if (!--v90)
        {
          if (*v89 != *v88)
          {
            return 0;
          }

          v80 = (v80 + v86);
          v81 = (v81 + v87);
          if (++v85 == v82)
          {
LABEL_123:
            while (*v80 == *v81)
            {
              v80 += v78;
              v81 += v79;
              if (!--v77)
              {
                goto LABEL_128;
              }
            }

            return 0;
          }

          goto LABEL_114;
        }
      }
    }

    else
    {
      while (*v80 == *v81)
      {
        v80 += v83;
        v81 += v84;
        if (!--v82)
        {
          goto LABEL_128;
        }
      }
    }

    return 0;
  }

  if (v77)
  {
    goto LABEL_123;
  }

LABEL_128:
  v74 = *v80 == *v81;
  v91 = v96;
  if (!v74)
  {
    return 0;
  }

LABEL_130:
  if (!sub_27134FAB8((a1 + 192), *(v91 + 192), *(v91 + 208)))
  {
    return 0;
  }

  v92 = *(v96 + 216);
  v93 = *(v96 + 232);

  return sub_27134FAB8((a1 + 216), v92, v93);
}

uint64_t sub_27134FAB8(void *a1, void *a2, uint64_t a3)
{
  if (a1[2] == a3)
  {
    v5 = *a1;
    v3 = a1 + 1;
    v4 = v5;
    if (v5 == v3)
    {
      return 1;
    }

    while (*(v4 + 16) == *(a2 + 16))
    {
      if (*(v4 + 40) != *(a2 + 40))
      {
        break;
      }

      v6 = v4[7];
      if (v6 != a2[7])
      {
        break;
      }

      if (v6)
      {
        v7 = v4[6];
        v8 = a2[6];
        if (v7 != v8)
        {
          v9 = v6 - 1;
          do
          {
            v10 = v9;
            if (*v7 != *v8)
            {
              return 0;
            }

            ++v7;
            ++v8;
            --v9;
          }

          while (v10);
        }
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v14 = a2[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = a2[2];
          v13 = *v15 == a2;
          a2 = v15;
        }

        while (!v13);
      }

      a2 = v15;
      v4 = v12;
      if (v12 == v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_27134FBB4(int *a1, uint64_t *a2)
{
  v6[4] = xmmword_279E2F530;
  v6[5] = *&off_279E2F540;
  v6[6] = xmmword_279E2F550;
  v6[7] = *&off_279E2F560;
  v6[0] = xmmword_279E2F4F0;
  v6[1] = *&off_279E2F500;
  v6[2] = xmmword_279E2F510;
  v6[3] = *&off_279E2F520;
  v5 = 0;
  sub_271120E64(a1, "{", 1);
  v4[0] = &v5;
  v4[1] = a1;
  v4[2] = v6;
  sub_271354BC8(v4, a2);
}

void sub_271350224(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_271350260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = *MEMORY[0x277D85DE8];
  v5 = sub_27171CBE8(1uLL);
  sub_27171ABA4(&v90, v5);
  if (*(a1 + 24))
  {
    v6 = *(a1 + 12);
    v7 = v90;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 2);
    if (v6 <= v8)
    {
      if (v6 < v8)
      {
        v91 = &v90[12 * v6];
      }
    }

    else
    {
      sub_271356124(&v90, v6 - v8);
      v7 = v90;
      v6 = *(a1 + 12);
    }

    if (v6)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    *&v122 = v7;
    *(&v122 + 1) = (v6 << 32) | 3;
    *&v123 = (v10 << 32) | 1;
    *(&v123 + 1) = __PAIR64__(v9, v6);
    if (v9 * v6 != -1)
    {
      goto LABEL_21;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_20:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_21:
        sub_271356458(a1, &v122);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v11 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_256;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v11);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_20;
  }

LABEL_22:
  v88 = a2;
  v14 = v90;
  v13 = v91;
  if (!*(a1 + 56))
  {
    goto LABEL_56;
  }

  v15 = *(a1 + 44);
  v16 = __dst;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v97 - __dst) >> 2);
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      v97 = __dst + 12 * v15;
    }
  }

  else
  {
    sub_2713565E0(&__dst, v15 - v17);
    v16 = __dst;
    LODWORD(v15) = *(a1 + 44);
  }

  if (v15)
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  if (v18 * v15 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_38:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_39;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_256;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_38;
    }

LABEL_256:
    abort();
  }

LABEL_39:
  if (*(a1 + 48) == 1)
  {
    v21 = *(a1 + 52);
    v22 = *(a1 + 40);
    if (v21 == v18 && v21 == v22)
    {
      if (*(a1 + 44) * v18)
      {
        memmove(v16, *(a1 + 32), 4 * (*(a1 + 44) * v18));
      }
    }

    else if (v22)
    {
      v27 = *(a1 + 44);
      if (v27)
      {
        v28 = *(a1 + 32);
        v29 = 4 * v22;
        v30 = v27 - 1;
        if (v27 != 1)
        {
          v31 = 4 * v21;
          v32 = 4 * v18;
          do
          {
            memmove(v16, v28, v29);
            v28 += v31;
            v16 = (v16 + v32);
            --v30;
          }

          while (v30);
        }

        memmove(v16, v28, v29);
      }
    }
  }

  else if (*(a1 + 40))
  {
    v23 = *(a1 + 44);
    if (v23)
    {
      v24 = *(a1 + 32);
      v25 = v23 - 1;
      if (v25)
      {
        v26 = 4 * *(a1 + 52);
        do
        {
          *v16 = *v24;
          v16[1] = v24[1];
          v16[2] = v24[2];
          v24 = (v24 + v26);
          v16 += v18;
          --v25;
        }

        while (v25);
      }

      *v16 = *v24;
      v16[1] = v24[1];
      v16[2] = v24[2];
    }
  }

LABEL_56:
  if (v97 != __dst)
  {
    v33 = 0;
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2);
    v35 = (__dst + 8);
    v36 = 1;
    while (1)
    {
      if (v34 <= *(v35 - 2))
      {
        v36 = 0;
        goto LABEL_72;
      }

      if (v34 <= *(v35 - 1))
      {
        goto LABEL_72;
      }

      if (v34 <= *v35)
      {
        break;
      }

      ++v33;
      v35 += 3;
      if (0xAAAAAAAAAAAAAAABLL * ((v97 - __dst) >> 2) == v33)
      {
        goto LABEL_62;
      }
    }

    v36 = 2;
LABEL_72:
    LODWORD(v136) = 0;
    *&v106 = &v134;
    *(&v106 + 1) = "Mesh face ";
    *&v107 = &v134;
    *(&v107 + 1) = "Mesh face ";
    v108 = "Mesh face ";
    v121.__r_.__value_.__r.__words[0] = &v106;
    sub_2712C4188(&v121);
    std::to_string(&v121, v33);
    *&v106 = &v134;
    *(&v106 + 1) = &v121;
    *&v107 = &v134;
    *(&v107 + 1) = &v121;
    v108 = &v121;
    if (v136 == -1)
    {
      sub_2711308D4();
    }

    v117[0] = &v106;
    (off_288130B58[v136])(v117, &v134);
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    *&v106 = &v134;
    *(&v106 + 1) = " coordinate ";
    *&v107 = &v134;
    *(&v107 + 1) = " coordinate ";
    v108 = " coordinate ";
    if (v136 == -1)
    {
      sub_2711308D4();
    }

    v121.__r_.__value_.__r.__words[0] = &v106;
    (*(&off_288130B88 + v136))(&v121, &v134);
    std::to_string(&v121, v36);
    *&v106 = &v134;
    *(&v106 + 1) = &v121;
    *&v107 = &v134;
    *(&v107 + 1) = &v121;
    v108 = &v121;
    if (v136 == -1)
    {
      sub_2711308D4();
    }

    v117[0] = &v106;
    (off_288130B58[v136])(v117, &v134);
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    *&v106 = &v134;
    *(&v106 + 1) = " refers to a vertex which does not exist in the mesh (has only ";
    *&v107 = &v134;
    *(&v107 + 1) = " refers to a vertex which does not exist in the mesh (has only ";
    v108 = " refers to a vertex which does not exist in the mesh (has only ";
    if (v136 == -1)
    {
      sub_2711308D4();
    }

    v121.__r_.__value_.__r.__words[0] = &v106;
    (off_288130C40[v136])(&v121, &v134);
    std::to_string(&v121, 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2));
    *&v106 = &v134;
    *(&v106 + 1) = &v121;
    *&v107 = &v134;
    *(&v107 + 1) = &v121;
    v108 = &v121;
    if (v136 == -1)
    {
      sub_2711308D4();
    }

    v117[0] = &v106;
    (off_288130B58[v136])(v117, &v134);
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    *&v106 = &v134;
    *(&v106 + 1) = " vertices)";
    *&v107 = &v134;
    *(&v107 + 1) = " vertices)";
    v108 = " vertices)";
    if (v136 == -1)
    {
      sub_2711308D4();
    }

    v121.__r_.__value_.__r.__words[0] = &v106;
    (*(&off_288130C28 + v136))(&v121, &v134);
    if (v136 == -1)
    {
      sub_2711308D4();
    }

    *&v106 = &v121;
    (off_288130B70[v136])(&v104, &v106, &v134);
    if (v136 != -1)
    {
      (off_288130B28[v136])(&v106, &v134);
    }

    if (SHIBYTE(v105) < 0)
    {
      sub_271127178(&v106, v104, *(&v104 + 1));
    }

    else
    {
      v106 = v104;
      *&v107 = v105;
    }

    BYTE8(v107) = 1;
    LOBYTE(v108) = 0;
    BYTE8(v113) = 0;
    LOBYTE(v114) = 1;
    sub_27112D480(32, &v106, &v122);
    if (v114 == 1)
    {
      if (BYTE8(v113) == 1)
      {
        if (SBYTE7(v113) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v110) < 0)
        {
          operator delete(v108);
        }
      }

      if (BYTE8(v107) == 1 && SBYTE7(v107) < 0)
      {
        operator delete(v106);
      }
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v104);
    }

    *a3 = v122;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v132 != 1)
    {
      *(a3 + 544) = 0;
      return sub_271359728(&v90);
    }

    *(a3 + 40) = 0;
    v38 = v125;
    if (v125 == 1)
    {
      *(a3 + 16) = v123;
      *(a3 + 32) = v124;
      v124 = 0;
      v123 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v39 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v131 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v39 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v131 & 1) == 0)
      {
LABEL_104:
        *(a3 + 112) = 1;
        *(a3 + 544) = 0;
        if (!v38)
        {
          return sub_271359728(&v90);
        }

        goto LABEL_238;
      }
    }

    v40 = v128;
    *(v39 + 16) = v127;
    *v39 = v126;
    v126 = 0uLL;
    *(a3 + 72) = v40;
    *(a3 + 80) = v129;
    *(a3 + 96) = v130;
    v127 = 0;
    v129 = 0uLL;
    v130 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 544) = 0;
    if (!v38)
    {
      return sub_271359728(&v90);
    }

LABEL_238:
    if (SHIBYTE(v124) < 0)
    {
      operator delete(v123);
    }

    return sub_271359728(&v90);
  }

LABEL_62:
  if (*(a1 + 152) && *(a1 + 184))
  {
    v121.__r_.__value_.__r.__words[0] = "normals";
    sub_271356ED4(&v134, &v121);
    v37 = a3;
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      v106 = v134;
      *&v107 = v135;
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  if (*(a1 + 88) && *(a1 + 120))
  {
    v121.__r_.__value_.__r.__words[0] = "colors";
    sub_271356ED4(&v134, &v121);
    v37 = a3;
    if ((SHIBYTE(v135) & 0x80000000) == 0)
    {
      v106 = v134;
      *&v107 = v135;
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  sub_271351C4C(&v122, &v90, (a1 + 128), (a1 + 160), &v94, &v95, "normals");
  if (v133 == 1)
  {
    v106 = v122;
    LOBYTE(v107) = 0;
    v116 = 0;
    if (v132 == 1)
    {
LABEL_116:
      sub_27112F6CC(&v107, &v123);
      v116 = 1;
      *a3 = v106;
      *(a3 + 16) = 0;
      *(a3 + 40) = 0;
      v41 = v109;
      if (v109 == 1)
      {
        *(a3 + 16) = v107;
        *(a3 + 32) = v108;
        v108 = 0;
        v107 = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v42 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v115 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v42 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v115 & 1) == 0)
        {
LABEL_118:
          *(a3 + 112) = 1;
          *(a3 + 544) = 0;
          if (!v41)
          {
            goto LABEL_146;
          }

          goto LABEL_144;
        }
      }

      v46 = v112;
      *(v42 + 16) = __p;
      *v42 = v110;
      v110 = 0uLL;
      *(a3 + 72) = v46;
      *(a3 + 80) = v113;
      *(a3 + 96) = v114;
      __p = 0;
      v113 = 0uLL;
      v114 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 544) = 0;
      if (!v41)
      {
        goto LABEL_146;
      }

LABEL_144:
      if (SHIBYTE(v108) < 0)
      {
        operator delete(v107);
      }

LABEL_146:
      if (v133 != 1)
      {
        return sub_271359728(&v90);
      }

      goto LABEL_231;
    }

LABEL_141:
    *a3 = v122;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 544) = 0;
    goto LABEL_146;
  }

  sub_271351C4C(&v122, &v90, (a1 + 64), (a1 + 96), &v92, &v93, "colors");
  if (v133 == 1)
  {
    v106 = v122;
    LOBYTE(v107) = 0;
    v116 = 0;
    if (v132 == 1)
    {
      goto LABEL_116;
    }

    goto LABEL_141;
  }

  sub_2713520E4(&v122, a1, &v90, 0x64u, &v98, &v99);
  if ((v133 & 1) == 0)
  {
    v106 = v122;
    LOBYTE(v107) = 0;
    v116 = 0;
    if (v132 == 1)
    {
      goto LABEL_221;
    }

    goto LABEL_225;
  }

  sub_2713520E4(&v122, a1, &v90, 0x65u, &v100, &v101);
  if ((v133 & 1) == 0)
  {
    v106 = v122;
    LOBYTE(v107) = 0;
    v116 = 0;
    if (v132 == 1)
    {
      goto LABEL_221;
    }

LABEL_225:
    *a3 = v122;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 544) = 0;
    goto LABEL_230;
  }

  v47 = 102;
  v120 = 102;
  v49 = v90;
  v48 = v91;
  v51 = __dst;
  v50 = v97;
  v119 = &v120;
  v118 = &v119;
  v117[0] = &v118;
  v117[1] = &v102;
  v53 = (a1 + 200);
  v52 = *(a1 + 200);
  if (v52)
  {
    v54 = a1 + 200;
    do
    {
      v55 = *(v52 + 32);
      v56 = v55 >= 0x66;
      v57 = v55 < 0x66;
      if (v56)
      {
        v54 = v52;
      }

      v52 = *(v52 + 8 * v57);
    }

    while (v52);
    if (v54 == v53 || *(v54 + 32) > 0x66u)
    {
      v58 = 0;
      v47 = 102;
    }

    else
    {
      v59 = sub_27134B650((v54 + 40));
      if (v60)
      {
        v58 = v59;
      }

      else
      {
        v58 = 0;
      }

      v47 = v120;
    }
  }

  else
  {
    v58 = 0;
  }

  v62 = (a1 + 224);
  v61 = *(a1 + 224);
  if (!v61)
  {
    goto LABEL_176;
  }

  v63 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v51) >> 2);
  v64 = a1 + 224;
  do
  {
    v65 = *(v61 + 32);
    v56 = v65 >= v47;
    v66 = v65 < v47;
    if (v56)
    {
      v64 = v61;
    }

    v61 = *(v61 + 8 * v66);
  }

  while (v61);
  if (v64 != v62 && *(v64 + 32) <= v47)
  {
    v71 = sub_27134B650((v64 + 40));
    if (v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0;
    }

    if (v58 && v73)
    {
      sub_271358848(&v104, v119);
    }

    if (v58)
    {
      goto LABEL_177;
    }

    if (v73)
    {
      if (v73 > v63)
      {
        sub_271358848(&v134, v119);
      }

      v103 = 2;
      v85 = *v62;
      if (!*v62)
      {
        goto LABEL_255;
      }

      v68 = a1 + 224;
      do
      {
        v86 = *(v85 + 32);
        v56 = v86 >= v120;
        v87 = v86 < v120;
        if (v56)
        {
          v68 = v85;
        }

        v85 = *(v85 + 8 * v87);
      }

      while (v85);
      if (v68 == v62 || v120 < *(v68 + 32))
      {
LABEL_255:
        v68 = a1 + 224;
      }

      goto LABEL_188;
    }
  }

  else
  {
LABEL_176:
    if (v58)
    {
LABEL_177:
      if (v58 > 0xAAAAAAAAAAAAAAABLL * ((v48 - v49) >> 2))
      {
        sub_271358848(&v134, v119);
      }

      v103 = 1;
      v67 = *v53;
      if (!*v53)
      {
        goto LABEL_187;
      }

      v68 = a1 + 200;
      do
      {
        v69 = *(v67 + 32);
        v56 = v69 >= v120;
        v70 = v69 < v120;
        if (v56)
        {
          v68 = v67;
        }

        v67 = *(v67 + 8 * v70);
      }

      while (v67);
      if (v68 == v53 || v120 < *(v68 + 32))
      {
LABEL_187:
        v68 = a1 + 200;
      }

LABEL_188:
      sub_271358E8C(&v122, v117, v68 + 40);
      goto LABEL_200;
    }
  }

  LOBYTE(v133) = 1;
LABEL_200:
  if (v133)
  {
    v74 = *(a1 + 192);
    if (v74 == v53)
    {
LABEL_202:
      v75 = *(a1 + 216);
      v37 = a3;
      if (v75 == v62)
      {
LABEL_203:
        sub_271352860(&v122, &v90, v88);
      }

      while (*(v75 + 16) - 100 < 3)
      {
        v79 = v75[1];
        if (v79)
        {
          do
          {
            v80 = v79;
            v79 = *v79;
          }

          while (v79);
        }

        else
        {
          do
          {
            v80 = v75[2];
            v78 = *v80 == v75;
            v75 = v80;
          }

          while (!v78);
        }

        v75 = v80;
        if (v80 == v62)
        {
          goto LABEL_203;
        }
      }

      LOWORD(v121.__r_.__value_.__l.__data_) = *(v75 + 16);
      sub_271359484(&v134, &v121);
      if ((SHIBYTE(v135) & 0x80000000) == 0)
      {
        v106 = v134;
        *&v107 = v135;
LABEL_121:
        BYTE8(v107) = 1;
        LOBYTE(v108) = 0;
        BYTE8(v113) = 0;
        LOBYTE(v114) = 1;
        sub_27112D480(33, &v106, &v122);
        if (v114 == 1)
        {
          if (BYTE8(v113) == 1)
          {
            if (SBYTE7(v113) < 0)
            {
              operator delete(__p);
            }

            if (SBYTE7(v110) < 0)
            {
              operator delete(v108);
            }
          }

          if (BYTE8(v107) == 1 && SBYTE7(v107) < 0)
          {
            operator delete(v106);
          }
        }

        if (SHIBYTE(v135) < 0)
        {
          operator delete(v134);
        }

        *v37 = v122;
        *(v37 + 16) = 0;
        *(v37 + 112) = 0;
        if (v132 != 1)
        {
          *(v37 + 544) = 0;
          return sub_271359728(&v90);
        }

        *(v37 + 40) = 0;
        v43 = v125;
        if (v125 == 1)
        {
          *(v37 + 16) = v123;
          *(v37 + 32) = v124;
          v124 = 0;
          v123 = 0uLL;
          *(v37 + 40) = 1;
          *(v37 + 48) = 0;
          v44 = v37 + 48;
          *(v37 + 104) = 0;
          if ((v131 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

        else
        {
          *(v37 + 48) = 0;
          v44 = v37 + 48;
          *(v37 + 104) = 0;
          if ((v131 & 1) == 0)
          {
LABEL_135:
            *(v37 + 112) = 1;
            *(v37 + 544) = 0;
            if (!v43)
            {
              return sub_271359728(&v90);
            }

            goto LABEL_238;
          }
        }

        v45 = v128;
        *(v44 + 16) = v127;
        *v44 = v126;
        v126 = 0uLL;
        *(v37 + 72) = v45;
        *(v37 + 80) = v129;
        *(v37 + 96) = v130;
        v127 = 0;
        v129 = 0uLL;
        v130 = 0;
        *(v37 + 104) = 1;
        *(v37 + 112) = 1;
        *(v37 + 544) = 0;
        if (!v43)
        {
          return sub_271359728(&v90);
        }

        goto LABEL_238;
      }
    }

    else
    {
      while (*(v74 + 16) - 100 < 3)
      {
        v76 = v74[1];
        if (v76)
        {
          do
          {
            v77 = v76;
            v76 = *v76;
          }

          while (v76);
        }

        else
        {
          do
          {
            v77 = v74[2];
            v78 = *v77 == v74;
            v74 = v77;
          }

          while (!v78);
        }

        v74 = v77;
        if (v77 == v53)
        {
          goto LABEL_202;
        }
      }

      LOWORD(v121.__r_.__value_.__l.__data_) = *(v74 + 16);
      sub_271359484(&v134, &v121);
      v37 = a3;
      if ((SHIBYTE(v135) & 0x80000000) == 0)
      {
        v106 = v134;
        *&v107 = v135;
        goto LABEL_121;
      }
    }

LABEL_120:
    sub_271127178(&v106, v134, *(&v134 + 1));
    goto LABEL_121;
  }

  v106 = v122;
  LOBYTE(v107) = 0;
  v116 = 0;
  if (v132 != 1)
  {
    goto LABEL_225;
  }

LABEL_221:
  sub_27112F6CC(&v107, &v123);
  v116 = 1;
  *a3 = v106;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  v81 = v109;
  if (v109 == 1)
  {
    *(a3 + 16) = v107;
    *(a3 + 32) = v108;
    v108 = 0;
    v107 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v82 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v115 & 1) == 0)
    {
      goto LABEL_223;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v82 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v115 & 1) == 0)
    {
LABEL_223:
      *(a3 + 112) = 1;
      *(a3 + 544) = 0;
      if (!v81)
      {
        goto LABEL_230;
      }

      goto LABEL_228;
    }
  }

  v83 = v112;
  *(v82 + 16) = __p;
  *v82 = v110;
  v110 = 0uLL;
  *(a3 + 72) = v83;
  *(a3 + 80) = v113;
  *(a3 + 96) = v114;
  __p = 0;
  v113 = 0uLL;
  v114 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 544) = 0;
  if (!v81)
  {
    goto LABEL_230;
  }

LABEL_228:
  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107);
  }

LABEL_230:
  if (v133)
  {
    return sub_271359728(&v90);
  }

LABEL_231:
  if (v132 == 1)
  {
    if (v131 == 1)
    {
      if (SHIBYTE(v130) < 0)
      {
        operator delete(v129);
      }

      if (SHIBYTE(v127) < 0)
      {
        operator delete(v126);
      }
    }

    if (v125 == 1)
    {
      goto LABEL_238;
    }
  }

  return sub_271359728(&v90);
}

void sub_271351AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 - 185) < 0)
  {
    operator delete(*(v7 - 208));
  }

  sub_271359728(va);
  _Unwind_Resume(a1);
}

void sub_271351C4C(_BYTE *a1, void *a2, _DWORD *a3, _DWORD *a4, const void **a5, int *a6, uint64_t a7)
{
  if (!a3[6])
  {
    if (!a4[6])
    {
LABEL_57:
      *a1 = 0;
      a1[120] = 0;
      return;
    }

    v16 = a2[15] - a2[14];
    v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 2);
    v18 = a4[3];
    if (v17 != v18)
    {
      sub_271357AFC(&v38, "faces", a7, a4[3], v17);
      *a1 = v38;
      sub_27184A2B4((a1 + 16), v39);
      goto LABEL_24;
    }

    v19 = *a5;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 2);
    if (v17 <= v20)
    {
      if (v17 < v20)
      {
        a5[1] = &v19[v16];
      }
    }

    else
    {
      v21 = a4;
      sub_271356124(a5, v17 - v20);
      a4 = v21;
      v19 = *a5;
      v17 = v21[3];
      LODWORD(v18) = v21[3];
    }

    if (v18)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    if (v18)
    {
      v29 = 3;
    }

    else
    {
      v29 = 0;
    }

    *&v38 = v19;
    *(&v38 + 1) = (v17 << 32) | 3;
    v39[0] = ((v29 << 32) | 1);
    v39[1] = __PAIR64__(v28, v18);
    if (v28 * v18 != -1)
    {
LABEL_55:
      sub_271356458(a4, &v38);
      v35 = 2;
      goto LABEL_56;
    }

    v30 = a4;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_54:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a4 = v30;
        goto LABEL_55;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
      }
    }

    do
    {
      v37 = *v31;
      v36 = *(v31 + 8);
      v31 += 16;
      v37(v36, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v31 != v32);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v9 = a2[1] - *a2;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
  v11 = a3[3];
  if (v10 == v11)
  {
    v12 = *a5;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 2);
    if (v10 <= v13)
    {
      if (v10 < v13)
      {
        a5[1] = &v12[v9];
      }
    }

    else
    {
      v14 = a3;
      sub_271356124(a5, v10 - v13);
      a3 = v14;
      v12 = *a5;
      v10 = v14[3];
      LODWORD(v11) = v14[3];
    }

    if (v11)
    {
      v23 = 3;
    }

    else
    {
      v23 = 0;
    }

    if (v11)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    *&v38 = v12;
    *(&v38 + 1) = (v10 << 32) | 3;
    v39[0] = ((v24 << 32) | 1);
    v39[1] = __PAIR64__(v23, v11);
    if (v23 * v11 != -1)
    {
      goto LABEL_50;
    }

    v25 = a3;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v26 = qword_28087C408, v27 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_49:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a3 = v25;
LABEL_50:
        sub_271356458(a3, &v38);
        v35 = 1;
LABEL_56:
        *a6 = v35;
        goto LABEL_57;
      }
    }

    else
    {
      v26 = qword_28087C408;
      v27 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_59;
      }
    }

    do
    {
      v34 = *v26;
      v33 = *(v26 + 8);
      v26 += 16;
      v34(v33, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v26 != v27);
    if (byte_28087C430)
    {
      goto LABEL_49;
    }

LABEL_59:
    abort();
  }

  sub_271357AFC(&v38, "vertices", a7, v11, v10);
  *a1 = v38;
  sub_27184A2B4((a1 + 16), v39);
LABEL_24:
  a1[120] = 1;
  if (v47 == 1)
  {
    if (v46 == 1)
    {
      if (v45 < 0)
      {
        operator delete(__p);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39[0]);
    }
  }
}

void sub_2713520BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2713520D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2713520E4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, uint64_t **a5, _DWORD *a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v50 = a4;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[14];
  v9 = a3[15];
  v49 = &v50;
  v47[1] = a5;
  v48 = &v49;
  v47[0] = &v48;
  v12 = (a2 + 200);
  v11 = *(a2 + 200);
  if (!v11)
  {
    goto LABEL_9;
  }

  v13 = a2 + 200;
  do
  {
    v14 = *(v11 + 32);
    v15 = v14 >= a4;
    v16 = v14 < a4;
    if (v15)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * v16);
  }

  while (v11);
  if (v13 != v12 && *(v13 + 32) <= a4)
  {
    v31 = a6;
    v32 = sub_27134B650((v13 + 40));
    a6 = v31;
    v34 = v33;
    v35 = a2;
    if (v34)
    {
      v17 = v32;
    }

    else
    {
      v17 = 0;
    }

    a4 = v50;
    v36 = *(v35 + 224);
    v18 = (v35 + 224);
    v19 = v36;
    if (!v36)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_9:
    v17 = 0;
    v20 = *(a2 + 224);
    v18 = (a2 + 224);
    v19 = v20;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2);
  v22 = v18;
  do
  {
    v23 = *(v19 + 32);
    v15 = v23 >= a4;
    v24 = v23 < a4;
    if (v15)
    {
      v22 = v19;
    }

    v19 = *(v19 + 8 * v24);
  }

  while (v19);
  if (v22 == v18 || *(v22 + 16) > a4)
  {
LABEL_27:
    if (!v17)
    {
LABEL_44:
      *(a1 + 120) = 1;
      return;
    }

LABEL_28:
    if (v17 > 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2))
    {
      sub_271358848(&v45, v49);
    }

    *a6 = 1;
    v37 = *v12;
    if (!*v12)
    {
      goto LABEL_38;
    }

    v38 = v12;
    do
    {
      v39 = *(v37 + 32);
      v15 = v39 >= v50;
      v40 = v39 < v50;
      if (v15)
      {
        v38 = v37;
      }

      v37 = *(v37 + 8 * v40);
    }

    while (v37);
    if (v38 == v12 || v50 < *(v38 + 16))
    {
LABEL_38:
      v38 = v12;
    }

    goto LABEL_54;
  }

  v25 = a6;
  v26 = v18;
  v27 = sub_27134B650(v22 + 40);
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  if (v17 && v29)
  {
    sub_271358848(&v46, v49);
  }

  a6 = v25;
  if (v17)
  {
    goto LABEL_28;
  }

  if (!v29)
  {
    goto LABEL_44;
  }

  if (v29 > v21)
  {
    sub_271358848(&v44, v49);
  }

  *v25 = 2;
  v41 = *v26;
  if (!*v26)
  {
    goto LABEL_53;
  }

  v38 = v26;
  do
  {
    v42 = *(v41 + 32);
    v15 = v42 >= v50;
    v43 = v42 < v50;
    if (v15)
    {
      v38 = v41;
    }

    v41 = *(v41 + 8 * v43);
  }

  while (v41);
  if (v38 == v26 || v50 < *(v38 + 16))
  {
LABEL_53:
    v38 = v26;
  }

LABEL_54:
  sub_271358524(a1, v47, (v38 + 40));
}

void sub_2713527D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271352860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a3 + 400) != 1)
  {
    LOBYTE(v10) = 0;
    v11 = 0;
    LOBYTE(v12) = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v19 = 0;
    LOBYTE(v7[0]) = 0;
    v8 = 0;
    sub_27153F59C(&v9, a2, v7);
  }

  if (*(a3 + 16) == 1)
  {
    v5 = *a3;
    v6 = *(a3 + 8);
    if (*(a3 + 56) != 1)
    {
LABEL_8:
      v20 = v5;
      v21 = v6;
      sub_27113523C(&v22, (a3 + 32));
      LOBYTE(v24[0]) = 0;
      v25 = 0;
      sub_27153F59C(v7, a2, v24);
    }
  }

  else
  {
    v23 = &unk_28810A440;
    v5 = sub_271815924();
    v6 = 2;
    if (*(a3 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a3 + 32), 1000000000);
  goto LABEL_8;
}

void sub_271353458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_2714FBE4C(&a9);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271353474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  sub_2714FBE4C(va);
  sub_271134CBC(v42 + 16);
  _Unwind_Resume(a1);
}

void sub_271353490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271359E50(&STACK[0x2A0]);
  sub_27112F828(va);
  sub_271134CBC(v9 + 16);
  _Unwind_Resume(a1);
}

void sub_2713534B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, unsigned __int8 a19, int a20, __int16 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_271359E50(&STACK[0x2A0]);
  sub_271134CBC(v47 + 16);
  sub_271134CBC(&a47);
  sub_27112F828(&a21);
  if ((a19 & (a18 < 0)) != 0)
  {
    operator delete(__p);
    sub_271134CBC(&a23);
    _Unwind_Resume(a1);
  }

  sub_271134CBC(&a23);
  _Unwind_Resume(a1);
}

void sub_271353588(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 55);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811DB58, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_25:
      v74 = 0;
      v75 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_9:
  v7 = *(a1 + 55);
  v8 = *(a1 + 56);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v74 = v7;
  v75 = v8;
  if (!v7)
  {
LABEL_26:
    *&v77.__r_.__value_.__l.__data_ = *"cv3d.viz";
    v77.__r_.__value_.__r.__words[2] = 0x800000000000000;
    v78 = 7;
    sub_2711BE814(&v73, &v77, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v70, *a1, *(a1 + 1));
    }

    else
    {
      v70 = *a1;
      v71 = *(a1 + 2);
    }

    v72 = *(a1 + 6);
    operator new();
  }

  v9 = *(v7 + 16);
  *v58 = 0;
  *&v10 = 3;
  *&v58[8] = xmmword_271856B50;
  *&v58[24] = 0;
  *v59 = 0;
  *&v59[8] = xmmword_271856B50;
  *&v59[24] = 0;
  *v60 = 0;
  *&v60[8] = xmmword_271856B50;
  *&v60[24] = 0;
  *v61 = 0;
  *&v61[8] = xmmword_271856B50;
  *&v61[24] = 0;
  *v62 = 0;
  *&v62[8] = xmmword_271856B50;
  *&v62[24] = 0;
  *v63 = 0;
  *&v63[8] = xmmword_271856B50;
  v65 = 0;
  v66 = 0;
  *&v63[24] = 0;
  v64 = &v65;
  v68 = 0;
  v69 = 0;
  v67 = &v68;
  v12 = *v9;
  v11 = v9[1];
  if (*v9 == v11)
  {
    goto LABEL_35;
  }

  v13 = (v11 - v12) >> 2;
  v14 = 0xAAAAAAAAAAAAAAABLL * v13;
  if (-1431655765 * v13)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  if (-1431655765 * v13)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (v15 * v14 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v10 = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_34;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_88;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v18);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_33;
  }

LABEL_34:
  *v58 = v12;
  *&v58[8] = (v14 << 32) | 3;
  *&v58[16] = (v16 << 32) | 1;
  *&v58[24] = v14;
  *&v58[28] = v15;
LABEL_35:
  v20 = v9[14];
  v19 = v9[15];
  if (v20 == v19)
  {
    goto LABEL_52;
  }

  v21 = (v19 - v20) >> 2;
  v22 = 0xAAAAAAAAAAAAAAABLL * v21;
  if (-1431655765 * v21)
  {
    v23 = 3;
  }

  else
  {
    v23 = 0;
  }

  if (-1431655765 * v21)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  if (v23 * v22 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, v10);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v25 = qword_28087C408, v26 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_50:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_51;
      }
    }

    else
    {
      v25 = qword_28087C408;
      v26 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_88;
      }
    }

    do
    {
      (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v25 += 16;
    }

    while (v25 != v26);
    if (byte_28087C430)
    {
      goto LABEL_50;
    }

LABEL_88:
    abort();
  }

LABEL_51:
  *v59 = v20;
  *&v59[8] = (v22 << 32) | 3;
  *&v59[16] = (v24 << 32) | 1;
  *&v59[24] = v22;
  *&v59[28] = v23;
LABEL_52:
  v27 = v9[9];
  v28 = v9[10];
  if (v27 != v28)
  {
    sub_27134D368(v27, v28, *(v9 + 26), v62, v63, "normals");
  }

  v29 = v9[4];
  v30 = v9[5];
  if (v29 != v30)
  {
    sub_27134D368(v29, v30, *(v9 + 16), v60, v61, "colors");
  }

  v31 = v9[30];
  v32 = v9[31];
  if (v31 != v32)
  {
    sub_27134D698(v58, v31, v32, *(v9 + 68), 0x64u);
  }

  v33 = v9[35];
  v34 = v9[36];
  if (v33 != v34)
  {
    sub_27134D698(v58, v33, v34, *(v9 + 78), 0x65u);
  }

  v36 = v9[40];
  v35 = v9[41];
  if (v36 != v35)
  {
    v37 = *(v9 + 88);
    v76 = 102;
    if (v37 == 2)
    {
      v38 = v35 - v36;
      v42 = v68;
      if (!v68)
      {
LABEL_76:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v40 = v42;
          v43 = *(v42 + 16);
          if (v43 < 0x67)
          {
            break;
          }

          v42 = *v40;
          if (!*v40)
          {
            goto LABEL_76;
          }
        }

        if (v43 == 102)
        {
          break;
        }

        v42 = v40[1];
        if (!v42)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v37 != 1)
      {
        __cxa_allocate_exception(0x10uLL);
        sub_271354888(&v70, &v76);
      }

      v38 = v35 - v36;
      v39 = v65;
      if (!v65)
      {
LABEL_69:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v40 = v39;
          v41 = *(v39 + 16);
          if (v41 < 0x67)
          {
            break;
          }

          v39 = *v40;
          if (!*v40)
          {
            goto LABEL_69;
          }
        }

        if (v41 == 102)
        {
          break;
        }

        v39 = v40[1];
        if (!v39)
        {
          goto LABEL_69;
        }
      }
    }

    *(v40 + 40) = 11;
    v40[6] = v36;
    v40[7] = v38;
  }

  v44 = *&v62[16];
  *(a2 + 128) = *v62;
  *(a2 + 144) = v44;
  v45 = *&v63[16];
  *(a2 + 160) = *v63;
  *(a2 + 176) = v45;
  v46 = *&v60[16];
  *(a2 + 64) = *v60;
  *(a2 + 80) = v46;
  v47 = *&v61[16];
  *(a2 + 96) = *v61;
  *(a2 + 112) = v47;
  v48 = *&v58[16];
  *a2 = *v58;
  *(a2 + 16) = v48;
  v49 = *&v59[16];
  *(a2 + 32) = *v59;
  *(a2 + 48) = v49;
  v51 = v64;
  v50 = v65;
  *(a2 + 200) = v65;
  v52 = a2 + 200;
  *(a2 + 192) = v51;
  v53 = v66;
  *(a2 + 208) = v66;
  if (v53)
  {
    v50[2] = v52;
    v64 = &v65;
    v65 = 0;
    v66 = 0;
  }

  else
  {
    *(a2 + 192) = v52;
  }

  v55 = v67;
  v54 = v68;
  *(a2 + 224) = v68;
  v56 = a2 + 224;
  *(a2 + 216) = v55;
  v57 = v69;
  *(a2 + 232) = v69;
  if (v57)
  {
    v54[2] = v56;
    v54 = 0;
    v67 = &v68;
    v68 = 0;
    v69 = 0;
  }

  else
  {
    *(a2 + 216) = v56;
  }

  *(a2 + 240) = 1;
  sub_27118E634(&v67, v54);
  sub_27118E634(&v64, v65);
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271353FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v11 - 121) < 0)
  {
    operator delete(*(v11 - 144));
  }

  if (*(v11 - 201) < 0)
  {
    operator delete(*(v11 - 224));
    if ((v10 & 1) == 0)
    {
LABEL_8:
      sub_27134D924(va);
      sub_27112F828(v11 - 168);
      _Unwind_Resume(a1);
    }
  }

  else if (!v10)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v9);
  goto LABEL_8;
}

void ****sub_2713540AC(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_271354130(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = "TriMeshData ";
  v8 = v4;
  v9 = "TriMeshData ";
  v10 = "TriMeshData ";
  v11 = &v6;
  sub_27113F2D4(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288130BB8[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_11:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  v11 = &v6;
  (*(&off_288130BA0 + v5))(&v11, v4);
LABEL_6:
  v6 = v4;
  v7 = " must specify PerVertex or PerFace";
  v8 = v4;
  v9 = " must specify PerVertex or PerFace";
  v10 = " must specify PerVertex or PerFace";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v11 = &v6;
  (*(&off_288130BD0 + v5))(&v11, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_288130B70[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288130B28[v5])(&v6, v4);
  }

  return result;
}

void *sub_27135432C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271354638(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_27135442C(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288130B28[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2713545EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271354638(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2713547D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2713547E8(std::string *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = "TriMeshData label field ";
  v4[1] = 24;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v4[2] = v3;
  v4[3] = v2;
  v4[4] = " must specify PerVertex or PerFace";
  v4[5] = 34;
  sub_271131230(v4, &v5, 0, 0, a1);
}

void sub_271354B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271354BC8(int **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = **a1;
  if (v4)
  {
    sub_271120E64(a1[1], ", ", 2);
    v3 = *a1;
    v4 = **a1;
  }

  v6 = a1[1];
  v5 = a1[2];
  *v3 = v4 + 1;
  v7 = &v5[4 * v4];
  v8 = *(v7 + 1);
  if (v8 < 0x7FFFFFFFFFFFFFF8)
  {
    v9 = *v7;
    if (v8 < 0x17)
    {
      v13 = *(v7 + 1);
      if (v8)
      {
        memmove(__dst, v9, v8);
      }

      *(__dst + v8) = 0;
      if ((v13 & 0x80u) == 0)
      {
        v10 = __dst;
      }

      else
      {
        v10 = __dst[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v11 = v13;
      }

      else
      {
        v11 = __dst[1];
      }

      sub_271120E64(v6, v10, v11);
      if (v13 < 0)
      {
        operator delete(__dst[0]);
      }

      sub_271120E64(v6, " = ", 3);
      sub_271120E64(a1[1], "{", 1);
      operator new();
    }

    operator new();
  }

  sub_271120DA8();
}

void sub_27135516C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  sub_2713540AC((v31 - 160));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2713551C4(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_288130B70[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288130B28[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_288130B70[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288130B28[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_2711CDE78(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v16;
  (off_288130B70[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_288130B28[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_2713553B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713553C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713553D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713553EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271355400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271355414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_271355428(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = (v6 + v7);
    v9 = v7;
    result = v6;
    do
    {
      result = memchr(result, 46, v9);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v8)
        {
          break;
        }

        v10 = &result[-v6];
        v11 = v3;
        if (&result[-v6] != -1)
        {
          v12 = **v3;
          if (v12 <= v10)
          {
            v12 = &result[-v6];
          }

          **v3 = v12;
          v13 = *(a2 + 23);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 8);
          }

          v7 = v13 + ~v10;
          v11 = v4;
        }

        goto LABEL_21;
      }

      ++result;
      v9 = v8 - result;
    }

    while (v8 - result >= 1);
  }

  v11 = v3;
LABEL_21:
  v14 = *v11;
  v15 = *v14;
  if (*v14 <= v7)
  {
    v15 = v7;
  }

  *v14 = v15;
  v16 = *(a2 + 47);
  if (v16 >= 0)
  {
    v17 = (a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
  }

  if (v16 >= 0)
  {
    v18 = *(a2 + 47);
  }

  else
  {
    v18 = *(a2 + 32);
  }

  if (v18 >= 1)
  {
    v19 = &v17[v18];
    v20 = v18;
    result = v17;
    do
    {
      result = memchr(result, 46, v20);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v19)
        {
          break;
        }

        v21 = result - v17;
        v22 = v3;
        if (result - v17 != -1)
        {
          v23 = **v3;
          if (v23 <= v21)
          {
            v23 = (result - v17);
          }

          **v3 = v23;
          v24 = *(a2 + 47);
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(a2 + 32);
          }

          v18 = v24 + ~v21;
          v22 = v4;
        }

        goto LABEL_43;
      }

      ++result;
      v20 = v19 - result;
    }

    while (v19 - result >= 1);
  }

  v22 = v3;
LABEL_43:
  v25 = *v22;
  v26 = *v25;
  if (*v25 <= v18)
  {
    v26 = v18;
  }

  *v25 = v26;
  v27 = *(a2 + 71);
  if (v27 >= 0)
  {
    v28 = (a2 + 48);
  }

  else
  {
    v28 = *(a2 + 48);
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 71);
  }

  else
  {
    v29 = *(a2 + 56);
  }

  if (v29 >= 1)
  {
    v30 = &v28[v29];
    v31 = v29;
    result = v28;
    do
    {
      result = memchr(result, 46, v31);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v30)
        {
          break;
        }

        v32 = result - v28;
        if (result - v28 == -1)
        {
          break;
        }

        v33 = **v3;
        if (v33 <= v32)
        {
          v33 = (result - v28);
        }

        **v3 = v33;
        v34 = *(a2 + 71);
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(a2 + 56);
        }

        v29 = v34 + ~v32;
        goto LABEL_65;
      }

      ++result;
      v31 = v30 - result;
    }

    while (v30 - result >= 1);
  }

  v4 = v3;
LABEL_65:
  v35 = **v4;
  if (v35 <= v29)
  {
    v35 = v29;
  }

  **v4 = v35;
  return result;
}

void sub_2713556A8(uint64_t a1, void *a2, unsigned int *a3, unsigned int a4, unsigned int a5)
{
  if (a4 > a5)
  {
    v7 = a4;
    v8 = *a3;
    v13 = a2;
    v14 = v8;
    ++*(&v14 + v7 * 4);
    sub_271120E64(a2, "[", 1);
    std::to_string(&v15, a4);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    sub_271120E64(v13, v9, size);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    sub_271120E64(v13, "d-slice #", 9);
    std::to_string(&v15, a3[v7]);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v15.__r_.__value_.__l.__size_;
    }

    sub_271120E64(v13, v11, v12);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    sub_271120E64(v13, ": ", 2);
    sub_271355864(&v15, &v13, a3);
  }
}

void sub_271355844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271355AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271355B68(void ***a1, uint64_t *a2)
{
  v4 = *a1;
  sub_2717FA20C(***a1, *a2, *(**a1)[1], *((**a1)[1] + 8));
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = v8[1] + 1;
    *v8 = 0;
    v8[1] = v11;
    if (v11 == v9[1])
    {
      goto LABEL_6;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(*v6[2] + 8 * v12));
  sub_271120E64(v5, *(*v6[2] + 8 * v12), v13);
  sub_2713556A8(v7, v5, *v6, v12, *v6[3]);
LABEL_6:
  v14 = *a1;
  sub_2717FA20C(***a1, *a2 + 24, *(**a1)[1], *((**a1)[1] + 8));
  v16 = v14[1];
  v15 = v14[2];
  v17 = v16[4];
  v18 = *v16;
  v19 = v16[1];
  v20 = **v16 + 1;
  **v16 = v20;
  if (v20 == *v19)
  {
    v21 = v18[1] + 1;
    *v18 = 0;
    v18[1] = v21;
    if (v21 == v19[1])
    {
      goto LABEL_11;
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = strlen(*(*v16[2] + 8 * v22));
  sub_271120E64(v15, *(*v16[2] + 8 * v22), v23);
  sub_2713556A8(v17, v15, *v16, v22, *v16[3]);
LABEL_11:
  v24 = *a1;
  sub_2717FA20C(**v24, *a2 + 48, *(*v24)[1], *((*v24)[1] + 8));
  v26 = v24[1];
  v25 = v24[2];
  v27 = v26[4];
  v28 = *v26;
  v29 = v26[1];
  v30 = **v26 + 1;
  **v26 = v30;
  if (v30 == *v29)
  {
    v31 = v28[1] + 1;
    *v28 = 0;
    v28[1] = v31;
    if (v31 == v29[1])
    {
      return;
    }

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = strlen(*(*v26[2] + 8 * v32));
  sub_271120E64(v25, *(*v26[2] + 8 * v32), v33);
  v34 = *v26;
  v35 = *v26[3];

  sub_2713556A8(v27, v25, v34, v32, v35);
}

void sub_271355DBC(uint64_t **a1, unsigned int __val)
{
  v3 = **a1;
  v4 = *(*a1)[1];
  v15 = 0;
  std::to_string(&v16, __val);
  __p[0] = v16;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = a1[1];
  v5 = a1[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = v8[1] + 1;
    *v8 = 0;
    v8[1] = v11;
    if (v11 == v9[1])
    {
      return;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(*v6[2] + 8 * v12));
  sub_271120E64(v5, *(*v6[2] + 8 * v12), v13);
  sub_2713556A8(v7, v5, *v6, v12, *v6[3]);
}

void sub_271355EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713560C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_271356124(const void **result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    result[1] = &v5[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v6 = *result;
    v7 = v5 - *result;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    v9 = v8 + v2;
    if (v8 + v2 > 0x1555555555555555)
    {
      sub_271135560();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = v2;
      LODWORD(v25) = v11;
      v13 = *(result + 7);
      if (v13 == -1)
      {
        sub_2711308D4();
      }

      v23 = &v25;
      v14 = (off_288130BE8[v13])(&v23, result + 3);
      v11 = v15;
      v6 = *v3;
      v7 = v3[1] - *v3;
      v2 = v12;
    }

    else
    {
      v14 = 0;
    }

    v16 = v14 + 12 * v8;
    v17 = (v14 + 12 * v11);
    v18 = (v16 + 12 * (12 * v2 / 0xC));
    v19 = (v16 - v7);
    result = memcpy((v16 - v7), v6, v7);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v18;
    v21 = v3[2];
    v3[2] = v17;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(v3 + 7);
      if (v22 == -1)
      {
        sub_2711308D4();
      }

      v25 = &v23;
      return (off_288130BF8[v22])(&v25, v3 + 3);
    }
  }

  return result;
}

vm_address_t sub_27135632C(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_2713563DC(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

_DWORD *sub_271356458(_DWORD *result, char **a2)
{
  if (result[4] == 1 && *(a2 + 4) == 1)
  {
    v10 = result[5];
    v11 = *(a2 + 5);
    v12 = result[2];
    if (v10 == v11 && v10 == v12)
    {
      v25 = result[3] * v10;
      if (!v25)
      {
        return result;
      }

      v24 = 4 * v25;
      v26 = *a2;
      v23 = *result;
      v22 = v26;
    }

    else
    {
      v14 = result[3];
      if (v12)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        return result;
      }

      v16 = *result;
      v17 = *a2;
      v18 = 4 * v12;
      v19 = v14 - 1;
      if (v14 != 1)
      {
        v20 = 4 * v10;
        v21 = 4 * v11;
        do
        {
          memmove(v17, v16, v18);
          v16 += v20;
          v17 += v21;
          --v19;
        }

        while (v19);
      }

      v22 = v17;
      v23 = v16;
      v24 = v18;
    }

    return memmove(v22, v23, v24);
  }

  v3 = result[3];
  if (result[2])
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *result;
    v6 = *a2;
    v7 = v3 - 1;
    if (v7)
    {
      v8 = 4 * result[5];
      v9 = 4 * *(a2 + 5);
      do
      {
        *v6 = *v5;
        v6[1] = v5[1];
        v6[2] = v5[2];
        v5 = (v5 + v8);
        v6 = (v6 + v9);
        --v7;
      }

      while (v7);
    }

    *v6 = *v5;
    v6[1] = v5[1];
    v6[2] = v5[2];
  }

  return result;
}

const void **sub_2713565E0(const void **result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    result[1] = &v5[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v6 = *result;
    v7 = v5 - *result;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    v9 = v8 + v2;
    if (v8 + v2 > 0x1555555555555555)
    {
      sub_271135560();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = v2;
      LODWORD(v25) = v11;
      v13 = *(result + 7);
      if (v13 == -1)
      {
        sub_2711308D4();
      }

      v23 = &v25;
      v14 = (off_288130C08[v13])(&v23, result + 3);
      v11 = v15;
      v6 = *v3;
      v7 = v3[1] - *v3;
      v2 = v12;
    }

    else
    {
      v14 = 0;
    }

    v16 = v14 + 12 * v8;
    v17 = (v14 + 12 * v11);
    v18 = (v16 + 12 * (12 * v2 / 0xC));
    v19 = (v16 - v7);
    result = memcpy((v16 - v7), v6, v7);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v18;
    v21 = v3[2];
    v3[2] = v17;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(v3 + 7);
      if (v22 == -1)
      {
        sub_2711308D4();
      }

      v25 = &v23;
      return (off_288130C18[v22])(&v25, v3 + 3);
    }
  }

  return result;
}

vm_address_t sub_2713567E8(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_271356898(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

void *sub_271356924(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271356D24(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_271356A24(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130B28[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_271356B18(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288130B28[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_271356CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271356D24(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271356EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271356ED4(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = v4;
  v7 = "Mesh has both vertex and face ";
  v8 = v4;
  v9 = "Mesh has both vertex and face ";
  v10 = "Mesh has both vertex and face ";
  v11 = &v6;
  sub_2711FE8BC(&v11);
  if (*a2)
  {
    v6 = v4;
    v7 = a2;
    v8 = v4;
    v9 = a2;
    v10 = a2;
    if (v5 != -1)
    {
      v11 = &v6;
      (off_288130BB8[v5])(&v11, v4);
      goto LABEL_6;
    }

LABEL_11:
    sub_2711308D4();
  }

  v6 = v4;
  v7 = "nullptr";
  v8 = v4;
  v9 = "nullptr";
  v10 = "nullptr";
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  v11 = &v6;
  (*(&off_288130BA0 + v5))(&v11, v4);
LABEL_6:
  v6 = v4;
  v7 = " but may only have one of the two";
  v8 = v4;
  v9 = " but may only have one of the two";
  v10 = " but may only have one of the two";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v11 = &v6;
  (off_288130C70[v5])(&v11, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6 = &v11;
  result = (off_288130B70[v5])(&v6, v4);
  if (v5 != -1)
  {
    return (off_288130B28[v5])(&v6, v4);
  }

  return result;
}

void *sub_2713570D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2713573DC(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2713571D0(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288130B28[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_271357390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2713573DC(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271357578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_271357590(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288130B28[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_271357754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713577AC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2713579EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_271357A08(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130B28[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_271357AFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v19 = a3;
  v20 = a2;
  v22 = 0;
  v25 = v21;
  v26 = "Mesh has ";
  v27 = v21;
  v28 = "Mesh has ";
  v29 = "Mesh has ";
  v23.__r_.__value_.__r.__words[0] = &v25;
  sub_2711E8810(&v23);
  std::to_string(&v23, a4);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  if (v19)
  {
    v25 = v21;
    v26 = &v19;
    v27 = v21;
    v28 = &v19;
    v29 = &v19;
    if (v22 != -1)
    {
      v23.__r_.__value_.__r.__words[0] = &v25;
      (off_288130BB8[v22])(&v23, v21);
      goto LABEL_10;
    }

LABEL_42:
    sub_2711308D4();
  }

  v25 = v21;
  v26 = "nullptr";
  v27 = v21;
  v28 = "nullptr";
  v29 = "nullptr";
  if (v22 == -1)
  {
    goto LABEL_42;
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130BA0 + v22))(&v23, v21);
LABEL_10:
  v25 = v21;
  v26 = " which does not match the ";
  v27 = v21;
  v28 = " which does not match the ";
  v29 = " which does not match the ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130C88 + v22))(&v23, v21);
  std::to_string(&v23, a5);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  if (v20)
  {
    v25 = v21;
    v26 = &v20;
    v27 = v21;
    v28 = &v20;
    v29 = &v20;
    if (v22 != -1)
    {
      v23.__r_.__value_.__r.__words[0] = &v25;
      (off_288130BB8[v22])(&v23, v21);
      goto LABEL_20;
    }

LABEL_46:
    sub_2711308D4();
  }

  v25 = v21;
  v26 = "nullptr";
  v27 = v21;
  v28 = "nullptr";
  v29 = "nullptr";
  if (v22 == -1)
  {
    goto LABEL_46;
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130BA0 + v22))(&v23, v21);
LABEL_20:
  v25 = v21;
  v26 = " they correspond to";
  v27 = v21;
  v28 = " they correspond to";
  v29 = " they correspond to";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130CA0 + v22))(&v23, v21);
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v23;
  (off_288130B70[v22])(v8, &v25, v21);
  if (v22 != -1)
  {
    (off_288130B28[v22])(&v25, v21);
  }

  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(__p, v8[0], v8[1]);
  }

  else
  {
    *__p = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(32, __p, a1);
  if (v18 == 1)
  {
    if (v17 != 1)
    {
      goto LABEL_31;
    }

    if (v16 < 0)
    {
      operator delete(v15);
      if ((v14 & 0x80000000) == 0)
      {
LABEL_31:
        if (v12 != 1)
        {
          goto LABEL_34;
        }

LABEL_32:
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_34;
      }
    }

    else if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v13);
    if (v12 != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_34:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271357FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271357FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358034(uint64_t a1, uint64_t a2, std::string *a3, unint64_t a4, unint64_t a5)
{
  v20 = a2;
  v22 = 0;
  v25 = v21;
  v26 = "Mesh has ";
  v27 = v21;
  v28 = "Mesh has ";
  v29 = "Mesh has ";
  v23.__r_.__value_.__r.__words[0] = &v25;
  sub_2711E8810(&v23);
  std::to_string(&v23, a4);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  v25 = v21;
  v26 = a3;
  v27 = v21;
  v28 = a3;
  v29 = a3;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (off_288130CD0[v22])(&v23, v21);
  v25 = v21;
  v26 = " which does not match the ";
  v27 = v21;
  v28 = " which does not match the ";
  v29 = " which does not match the ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130C88 + v22))(&v23, v21);
  std::to_string(&v23, a5);
  v25 = v21;
  v26 = &v23;
  v27 = v21;
  v28 = &v23;
  v29 = &v23;
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v24 = &v25;
  (off_288130B58[v22])(&v24, v21);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v25 = v21;
  v26 = " ";
  v27 = v21;
  v28 = " ";
  v29 = " ";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130B40 + v22))(&v23, v21);
  if (v20)
  {
    v25 = v21;
    v26 = &v20;
    v27 = v21;
    v28 = &v20;
    v29 = &v20;
    if (v22 != -1)
    {
      v23.__r_.__value_.__r.__words[0] = &v25;
      (off_288130BB8[v22])(&v23, v21);
      goto LABEL_16;
    }

LABEL_42:
    sub_2711308D4();
  }

  v25 = v21;
  v26 = "nullptr";
  v27 = v21;
  v28 = "nullptr";
  v29 = "nullptr";
  if (v22 == -1)
  {
    goto LABEL_42;
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130BA0 + v22))(&v23, v21);
LABEL_16:
  v25 = v21;
  v26 = " they correspond to";
  v27 = v21;
  v28 = " they correspond to";
  v29 = " they correspond to";
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v23.__r_.__value_.__r.__words[0] = &v25;
  (*(&off_288130CA0 + v22))(&v23, v21);
  if (v22 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v23;
  (off_288130B70[v22])(v9, &v25, v21);
  if (v22 != -1)
  {
    (off_288130B28[v22])(&v25, v21);
  }

  if (SHIBYTE(v10) < 0)
  {
    sub_271127178(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v12 = v10;
  }

  v13 = 1;
  LOBYTE(v14) = 0;
  v18 = 0;
  v19 = 1;
  sub_27112D480(32, __p, a1);
  if (v19 == 1)
  {
    if (v18 != 1)
    {
      goto LABEL_27;
    }

    if (v17 < 0)
    {
      operator delete(v16);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_27:
        if (v13 != 1)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_30;
      }
    }

    else if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v14);
    if (v13 != 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_271358494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713584C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358524(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  if (*a3)
  {
    v5 = ***a2;
    v12 = *a3;
    sub_271358848(&v11, v5);
  }

  v6 = *(a3 + 8);
  v7 = sub_27134B650(a3);
  v8 = a2[1];
  v9 = *v8;
  v10 = v8[1] - *v8;
  if (v7 > v10)
  {
    sub_271358BDC(a2[1], v7 - v10);
    v9 = *a2[1];
LABEL_8:
    memmove(v9, v6, v7);
    goto LABEL_9;
  }

  if (v7 < v10)
  {
    v8[1] = (v9 + v7);
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 120) = 1;
}

void sub_2713587EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void sub_271358848(uint64_t a1, _WORD *a2)
{
  v3[6] = 0;
  v4[0] = v3;
  v4[1] = "'";
  v4[2] = v3;
  v4[3] = "'";
  v4[4] = "'";
  v5 = v4;
  sub_271136E64(&v5);
  sub_271354944(v3, a2);
}

void sub_2713589B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = v6;
  v9 = "Mesh ";
  v10 = v6;
  v11 = "Mesh ";
  v12 = "Mesh ";
  v13 = &v8;
  sub_2711E7C90(&v13);
  v8 = v6;
  v9 = a2;
  v10 = v6;
  v11 = a2;
  v12 = a2;
  if (v7 != -1)
  {
    v13 = &v8;
    (off_288130CD0[v7])(&v13, v6);
    v8 = v6;
    v9 = " have unsupported value type '";
    v10 = v6;
    v11 = " have unsupported value type '";
    v12 = " have unsupported value type '";
    if (v7 != -1)
    {
      v13 = &v8;
      (*(&off_288130C58 + v7))(&v13, v6);
      sub_2711E6DB4(&v5, v6, a3);
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_271358B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271358BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

char *sub_271358BDC(uint64_t a1, size_t a2)
{
  v5 = a1 + 8;
  result = *(a1 + 8);
  v4 = *(v5 + 8);
  if (v4 - result >= a2)
  {
    if (a2)
    {
      v15 = &result[a2];
      bzero(result, a2);
      result = v15;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v6 = &result[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      sub_271135560();
    }

    v8 = v4 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    v9 = v8 >= 0x3FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v9)
    {
      v10 = v7;
    }

    if (v10)
    {
      LODWORD(v26) = v10;
      v11 = *(a1 + 28);
      if (v11 == -1)
      {
        sub_2711308D4();
      }

      v12 = a2;
      v24 = &v26;
      v13 = (off_288130CE8[v11])(&v24, a1 + 24);
      v10 = v14;
      a2 = v12;
    }

    else
    {
      v13 = 0;
    }

    v16 = &v6[v13];
    v17 = v13 + v10;
    v18 = &v16[a2];
    bzero(v16, a2);
    v19 = *(a1 + 8);
    v20 = &v16[*a1 - v19];
    result = memcpy(v20, *a1, v19 - *a1);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    v22 = *(a1 + 16);
    *(a1 + 16) = v17;
    if (v21)
    {
      v24 = v21;
      v25 = v22 - v21;
      v23 = *(a1 + 28);
      if (v23 == -1)
      {
        sub_2711308D4();
      }

      v26 = &v24;
      return (off_288130CF8[v23])(&v26, a1 + 24);
    }
  }

  return result;
}

vm_address_t sub_271358D88(unsigned int **a1)
{
  v1 = **a1 + 4095;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, v1 & 0x1FFFFF000, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_271358E18(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

void sub_271358E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != 11)
  {
    v10 = ***a2;
    v12 = *a3;
    sub_271358848(&v11, v10);
  }

  v5 = *(a3 + 8);
  v6 = sub_27134B650(a3);
  v7 = *(a2 + 8);
  v8 = *v7;
  v9 = (v7[1] - *v7) >> 2;
  if (v6 > v9)
  {
    sub_2713591A4(*(a2 + 8), v6 - v9);
    v8 = **(a2 + 8);
LABEL_8:
    memmove(v8, v5, 4 * v6);
    goto LABEL_9;
  }

  if (v6 < v9)
  {
    v7[1] = &v8[4 * v6];
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 120) = 1;
}

void sub_271359148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

void sub_2713591A4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v17 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v17;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 2;
    v8 = (v6 >> 2) + a2;
    if (v8 >> 62)
    {
      sub_271135560();
    }

    v9 = v3 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
    v11 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      LODWORD(v28) = v11;
      v12 = *(a1 + 28);
      if (v12 == -1)
      {
        sub_2711308D4();
      }

      v13 = a2;
      v26 = &v28;
      v14 = (off_288130D08[v12])(&v26, a1 + 24);
      v11 = v15;
      v5 = *a1;
      v6 = *(a1 + 8) - *a1;
      v16 = v6 >> 2;
      a2 = v13;
    }

    else
    {
      v14 = 0;
      v16 = v6 >> 2;
    }

    v18 = (v14 + 4 * v7);
    v19 = 4 * a2;
    v20 = v14 + 4 * v11;
    bzero(v18, 4 * a2);
    v21 = &v18[v19];
    v22 = &v18[-4 * v16];
    memcpy(v22, v5, v6);
    v23 = *a1;
    *a1 = v22;
    *(a1 + 8) = v21;
    v24 = *(a1 + 16);
    *(a1 + 16) = v20;
    if (v23)
    {
      v26 = v23;
      v27 = (v24 - v23) >> 2;
      v25 = *(a1 + 28);
      if (v25 == -1)
      {
        sub_2711308D4();
      }

      v28 = &v26;
      (off_288130D18[v25])(&v28, a1 + 24);
    }
  }
}

vm_address_t sub_271359378(unsigned int **a1)
{
  v1 = (**a1 + 1023) & 0x1FFFFFC00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 4 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t sub_27135940C(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 4 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_271359484(uint64_t a1, unsigned __int16 *a2)
{
  v5 = 0;
  v8 = v4;
  v9 = "Mesh has labels of unsupported type '";
  v10 = v4;
  v11 = "Mesh has labels of unsupported type '";
  v12 = "Mesh has labels of unsupported type '";
  v6.__r_.__value_.__r.__words[0] = &v8;
  sub_271359634(&v6);
  std::to_string(&v6, *a2);
  v8 = v4;
  v9 = &v6;
  v10 = v4;
  v11 = &v6;
  v12 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v8;
  (off_288130B58[v5])(&v7, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  v8 = v4;
  v9 = "'";
  v10 = v4;
  v11 = "'";
  v12 = "'";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6.__r_.__value_.__r.__words[0] = &v8;
  (*(&off_288130B40 + v5))(&v6, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v6;
  result = (off_288130B70[v5])(&v8, v4);
  if (v5 != -1)
  {
    return (off_288130B28[v5])(&v8, v4);
  }

  return result;
}

void sub_2713595F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271359610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271359600);
}

size_t sub_271359634(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288130B28[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *sub_271359728(uint64_t *a1)
{
  v2 = a1[40];
  if (v2)
  {
    a1[41] = v2;
    v3 = (a1[42] - v2) >> 2;
    v33 = v2;
    v34 = v3;
    v4 = *(a1 + 87);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130D18[v4])(&v35, a1 + 43);
  }

  v5 = a1[35];
  if (v5)
  {
    a1[36] = v5;
    v6 = *(a1 + 74) - v5;
    v33 = v5;
    v34 = v6;
    v7 = *(a1 + 77);
    if (v7 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130CF8[v7])(&v35, a1 + 38);
  }

  v8 = a1[30];
  if (v8)
  {
    a1[31] = v8;
    v9 = *(a1 + 64) - v8;
    v33 = v8;
    v34 = v9;
    v10 = *(a1 + 67);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130CF8[v10])(&v35, a1 + 33);
  }

  v11 = a1[26];
  if (v11)
  {
    a1[27] = v11;
    v12 = -1431655765 * ((a1[28] - v11) >> 2);
    v33 = v11;
    v34 = v12;
    v13 = *(a1 + 59);
    if (v13 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130C18[v13])(&v35, a1 + 29);
  }

  v14 = a1[22];
  if (v14)
  {
    a1[23] = v14;
    v15 = (a1[24] - v14) >> 3;
    v33 = v14;
    v34 = v15;
    v16 = *(a1 + 51);
    if (v16 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130D28[v16])(&v35, a1 + 25);
  }

  v17 = a1[18];
  if (v17)
  {
    a1[19] = v17;
    v18 = (a1[20] - v17) >> 3;
    v33 = v17;
    v34 = v18;
    v19 = *(a1 + 43);
    if (v19 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130D38[v19])(&v35, a1 + 21);
  }

  v20 = a1[14];
  if (v20)
  {
    a1[15] = v20;
    v21 = -1431655765 * ((a1[16] - v20) >> 2);
    v33 = v20;
    v34 = v21;
    v22 = *(a1 + 35);
    if (v22 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130C18[v22])(&v35, a1 + 17);
  }

  v23 = a1[9];
  if (v23)
  {
    a1[10] = v23;
    v24 = -1431655765 * ((a1[11] - v23) >> 2);
    v33 = v23;
    v34 = v24;
    v25 = *(a1 + 25);
    if (v25 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130BF8[v25])(&v35, a1 + 12);
  }

  v26 = a1[4];
  if (v26)
  {
    a1[5] = v26;
    v27 = -1431655765 * ((a1[6] - v26) >> 2);
    v33 = v26;
    v34 = v27;
    v28 = *(a1 + 15);
    if (v28 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130BF8[v28])(&v35, a1 + 7);
  }

  v29 = *a1;
  if (*a1)
  {
    a1[1] = v29;
    v30 = -1431655765 * ((a1[2] - v29) >> 2);
    v33 = v29;
    v34 = v30;
    v31 = *(a1 + 7);
    if (v31 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288130BF8[v31])(&v35, a1 + 3);
  }

  return a1;
}

uint64_t sub_271359AE4(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_271359B68(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

void *sub_271359E50(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_288130DD0;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271359F10(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_288130DD0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271359FF4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878690, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878690))
    {
      sub_27135B268();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_280878678, "{", __p, ",", v2 + 24, "}");
}

void sub_27135A0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135A110(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 7;
}

void *sub_27135A18C(void *result)
{
  *result = &unk_288130DD0;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_27135A220(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_288130DD0;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27135A2E0(void *a1)
{
  *a1 = &unk_288130D88;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_288130DD0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27135A3B4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878670, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878670))
    {
      sub_27135AFD4();
    }
  }

  sub_27135AA88(qword_280878658, "{", a1 + 8, ",", a1 + 32, "}");
}

void sub_27135A468(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_27135A494(void *a1)
{
  *a1 = &unk_288130DD0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27135A53C(float ***a1, float ***lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_288130DF0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_27153FB34(a1 + 1, (result + 8));
    }
  }

  return result;
}

void sub_27135A5DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878650))
  {
    sub_2718519B4(qword_280878638, "cv3d::kit::viz::TriMesh]", 0x17uLL);
    __cxa_guard_release(&qword_280878650);
  }

  sub_27135A690(qword_280878638, "{", a1 + 8, "}");
}

void sub_27135A690(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12[0] = &v7;
  v12[1] = a2;
  v12[2] = a2;
  sub_271136F58(v12, &v7);
  sub_27135A83C(&v6, &v7, a3);
}

void sub_27135A7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135A828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135AA88(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_27135ACB8(&v8, &v9, a3);
}

void sub_27135AC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135ACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27135AF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878650);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_27135B0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27135B268()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_27135B4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_27135B554(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  if (a1)
  {
    v7[0] = 0;
    v7[1] = 0;
    if (a2 > 5)
    {
      if (a2 <= 7)
      {
        if (a2 == 6)
        {
          if ((a1 & 1) == 0)
          {
            operator new();
          }
        }

        else if ((a1 & 3) == 0)
        {
          operator new();
        }
      }

      else
      {
        switch(a2)
        {
          case 8:
            if ((a1 & 7) == 0)
            {
              operator new();
            }

            break;
          case 0xB:
            if ((a1 & 3) == 0)
            {
              operator new();
            }

            break;
          case 0xC:
            if ((a1 & 7) == 0)
            {
              operator new();
            }

            break;
          default:
            goto LABEL_59;
        }
      }
    }

    else if (a2 <= 1)
    {
      if (!a2)
      {
        operator new();
      }

      if (a2 != 1)
      {
LABEL_59:
        sub_27183428C(a2);
      }

      if ((a1 & 1) == 0)
      {
        operator new();
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          if ((a1 & 3) == 0)
          {
            operator new();
          }

          break;
        case 3:
          if ((a1 & 7) == 0)
          {
            operator new();
          }

          break;
        case 5:
          operator new();
        default:
          goto LABEL_59;
      }
    }

    v32 = 0;
    v33 = v31;
    v34 = "data pointer is not aligned with given value type ";
    v35 = v31;
    v36 = "data pointer is not aligned with given value type ";
    v37 = "data pointer is not aligned with given value type ";
    v38 = &v33;
    sub_2711F7FCC(&v38);
    sub_2711E6DB4(&v33, v31, &v30);
  }

  v32 = 0;
  v33 = v31;
  v34 = "data pointer is null";
  v35 = v31;
  v36 = "data pointer is null";
  v37 = "data pointer is null";
  v7[0] = &v33;
  sub_2711E7110(v7);
  if (v32 == -1)
  {
    sub_2711308D4();
  }

  v33 = v7;
  (off_288130E88[v32])(v8, &v33, v31);
  if (v32 != -1)
  {
    (off_288130E70[v32])(&v33, v31);
  }

  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(&v10, v8[0], v8[1]);
  }

  else
  {
    v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(10, &v10, &v19);
  *a3 = v19;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v29 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_37;
  }

  *(a3 + 40) = 0;
  v4 = v22;
  if (v22 == 1)
  {
    *(a3 + 16) = v20;
    *(a3 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_23:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (!v4)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v6 = v25;
  *(v5 + 16) = v24;
  *v5 = v23;
  v23 = 0uLL;
  *(a3 + 72) = v6;
  *(a3 + 80) = v26;
  *(a3 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v4)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_37:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_27135BF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  operator delete(v30);
  sub_27112F828(&a22);
  _Unwind_Resume(a1);
}

void sub_27135C06C(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        *&v26 = v5;
        BYTE8(v26) = v6;
        sub_27113523C(&v27, (a2 + 32));
        sub_27135D80C(&v43, v3, &v26);
        v43 = &unk_28812E6D0;
        operator new();
      }
    }

    else
    {
      v43 = &unk_28810A440;
      v5 = sub_271815924();
      v6 = 2;
      if (*(a2 + 56) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_2711DAE40((a2 + 32), 1000000000);
    goto LABEL_14;
  }

  LOBYTE(v14) = 0;
  LOBYTE(v15) = 0;
  LOBYTE(v16) = 0;
  v17 = 0;
  v18 = v14;
  v19 = v15;
  LOBYTE(v20) = 0;
  v21 = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  sub_27113523C(&v44, &v16);
  *&v26 = sub_271815924();
  BYTE8(v26) = 2;
  LOBYTE(v27) = 0;
  v29 = 0;
  if (v46 == 1)
  {
    v27 = v44;
    v28 = v45;
    v45 = 0;
    v44 = 0uLL;
    v29 = 1;
  }

  v30 = v47;
  v31 = v48;
  LOBYTE(v32) = 0;
  v34 = 0;
  if (v51 == 1)
  {
    v32 = v49;
    v33 = v50;
    v50 = 0;
    v49 = 0uLL;
    v34 = 1;
    LOBYTE(v35) = 0;
    v39 = 0;
    if (v54 != 1)
    {
LABEL_9:
      LOBYTE(v40) = 0;
      v42 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v35) = 0;
    v39 = 0;
    if (v54 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v36 = v53;
  v35 = v52;
  v53 = 0;
  v52 = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v37 = _X0;
  v38 = 0;
  v39 = 1;
  LOBYTE(v40) = 0;
  v42 = 0;
  if ((v57 & 1) == 0)
  {
LABEL_10:
    if (v54 != 1)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

LABEL_20:
    if (v51 == 1 && SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (v46 == 1 && SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    sub_27135D80C(&v43, v3, &v26);
    v43 = &unk_28812E6D0;
    operator new();
  }

LABEL_17:
  v40 = v55;
  v41 = v56;
  v56 = 0;
  v55 = 0uLL;
  v42 = 1;
  if (v54 != 1)
  {
    goto LABEL_20;
  }

  goto LABEL_18;
}

void sub_27135CE1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_27135CFB0(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28812E720, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        v12 = v7;
        v13 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
          goto LABEL_19;
        }
      }

      else
      {
        v12 = *(a1 + 440);
        v13 = 0;
        if (v7)
        {
LABEL_19:
          operator new();
        }
      }

LABEL_14:
      v14 = *"cv3d.viz";
      v15 = 0x800000000000000;
      v16 = 8;
      sub_2711BE814(&v11, &v14, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v8, *a1, *(a1 + 8));
      }

      else
      {
        *v8 = *a1;
        v9 = *(a1 + 16);
      }

      v10 = *(a1 + 24);
      operator new();
    }

LABEL_13:
    v12 = 0;
    v13 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_27135D4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void **a25)
{
  sub_2711BEA2C(&a25);
  if (*(v25 - 89) < 0)
  {
    operator delete(*(v25 - 112));
  }

  sub_27112F828(v25 - 128);
  _Unwind_Resume(a1);
}

void sub_27135D570(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288130E30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27135D5C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void sub_27135D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27135D80C(uint64_t a1, char *a2, _OWORD *a3)
{
  *a1 = &unk_28812E748;
  *(a1 + 8) = &unk_28812E790;
  v4 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  *(a1 + 48) = *a3;
  sub_27113523C(a1 + 64, a3 + 1);
  return a1;
}

void sub_27135D900(_Unwind_Exception *exception_object)
{
  *v4 = v2;
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135D928(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = a2;
          sub_2711EB7CC(&v31, __p);
        }

        v31 = a1;
        v32 = a2;
        sub_2711EB698(&v31, __p);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = a2;
          sub_2711EB900(&v31, __p);
        case 0xB:
          v31 = a1;
          v32 = a2;
          sub_2711EBA34(&v31, __p);
        case 0xC:
          v31 = a1;
          v32 = a2;
          sub_2711EBB68(&v31, __p);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = a2;
        sub_2711E8CC0(&v31, __p);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = a2;
        sub_2711EB1C4(&v31, __p);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = a2;
          sub_2711EB310(&v31, __p);
        case 3:
          v31 = a1;
          v32 = a2;
          sub_2711EB444(&v31, __p);
        case 5:
          v31 = a1;
          v32 = a2;
          sub_2711EB578(&v31, __p);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_2711BD50C("data pointer is null but num_values is ", &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(10, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_27135DF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27135DF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135DFB8()
{
  v4[4] = *MEMORY[0x277D85DE8];
  memset(v4, 0, 24);
  sub_271758DF0(&v3, 7, v4);
}

void sub_27135EC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135ECE4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27135ECDCLL);
}

void sub_27135ED00(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28811DC18, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_9:
      v7 = *(a1 + 440);
      v6 = *(a1 + 448);
      if (v6)
      {
        v8 = v6 + 1;
        atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
        v17 = v7;
        v18 = v6;
        if (v7)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v12 = 0uLL;
          v19[0] = v7;
          v19[1] = v6;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(a1 + 440);
        v18 = 0;
        if (v7)
        {
          v12 = 0uLL;
          v19[0] = v7;
          v19[1] = 0;
LABEL_20:
          v9 = v7 + 2;
          v10 = v7[2];
          v20 = &v12;
          v11 = *v10;
          if (v11 > 5)
          {
            if (v11 <= 7)
            {
              if (v11 != 6)
              {
                sub_271759D80(v9, 7);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
              }

              sub_271759D80(v9, 6);
              v23 = v7;
              *&__p = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v22 = sub_27135FE34;
              operator new();
            }

            switch(v11)
            {
              case 8:
                sub_271759D80(v9, 8);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
              case 11:
                sub_271759D80(v9, 11);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
              case 12:
                sub_271759D80(v9, 12);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
            }
          }

          else
          {
            if (v11 <= 1)
            {
              if (v11)
              {
                sub_271759D80(v9, 1);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
              }

              sub_271759D80(v9, 0);
              v23 = v7;
              *&__p = v6;
              if (v6)
              {
                atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
              }

              v22 = sub_27135FE34;
              operator new();
            }

            switch(v11)
            {
              case 2:
                sub_271759D80(v9, 2);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
              case 3:
                sub_271759D80(v9, 3);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
              case 5:
                sub_271759D80(v9, 5);
                v23 = v7;
                *&__p = v6;
                if (v6)
                {
                  atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
                }

                v22 = sub_27135FE34;
                operator new();
            }
          }

          sub_27183428C(v11);
        }
      }

LABEL_14:
      *v19 = *"cv3d.viz";
      v20 = 0x800000000000000;
      v21 = 2;
      sub_2711BE814(&v16, v19, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v13, *a1, *(a1 + 8));
      }

      else
      {
        *v13 = *a1;
        v14 = *(a1 + 16);
      }

      v15 = *(a1 + 24);
      operator new();
    }

LABEL_13:
    v17 = 0;
    v18 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_27135FC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27135FD60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27135FDB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_27135FE34(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27135FE34;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27135FE34;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B7B8;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con7NumbersENS3_7PackageELj2EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C13C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_27135FFD8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_27135FFD8;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_27135FFD8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B818;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con7NumbersEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188C170)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_27136034C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713603A8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  if (a1)
  {
    if (a3 > 5)
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB7CC(&v31, __p);
        }

        v31 = a1;
        v32 = 2 * a2;
        sub_2711EB698(&v31, __p);
      }

      switch(a3)
      {
        case 8:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB900(&v31, __p);
        case 0xB:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EBA34(&v31, __p);
        case 0xC:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EBB68(&v31, __p);
      }
    }

    else if (a3 <= 1)
    {
      if (!a3)
      {
        v31 = a1;
        v32 = 2 * a2;
        sub_2711E8CC0(&v31, __p);
      }

      if (a3 == 1)
      {
        v31 = a1;
        v32 = 2 * a2;
        sub_2711EB1C4(&v31, __p);
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB310(&v31, __p);
        case 3:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB444(&v31, __p);
        case 5:
          v31 = a1;
          v32 = 2 * a2;
          sub_2711EB578(&v31, __p);
      }
    }

    sub_27183428C(a3);
  }

  if (!a2)
  {
    operator new();
  }

  sub_2711BD50C("data pointer is null but num_points is ", &v30);
  if (SHIBYTE(v9) < 0)
  {
    sub_271127178(v10, v8[0], v8[1]);
  }

  else
  {
    *v10 = *v8;
    v11 = v9;
  }

  v12 = 1;
  LOBYTE(v13) = 0;
  v17 = 0;
  v18 = 1;
  sub_27112D480(10, v10, __p);
  *a4 = *__p;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v29 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_34;
  }

  *(a4 + 40) = 0;
  v5 = v22;
  if (v22 == 1)
  {
    *(a4 + 16) = v20;
    *(a4 + 32) = v21;
    v21 = 0;
    v20 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
LABEL_27:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v6 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v7 = v25;
  *(v6 + 16) = v24;
  *v6 = v23;
  v23 = 0uLL;
  *(a4 + 72) = v7;
  *(a4 + 80) = v26;
  *(a4 + 96) = v27;
  v24 = 0;
  v26 = 0uLL;
  v27 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

LABEL_34:
  if (v18 == 1)
  {
    if (v17 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }
    }

    if (v12 == 1 && SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_271360DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112F828(v9 - 48);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271360E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271360E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}