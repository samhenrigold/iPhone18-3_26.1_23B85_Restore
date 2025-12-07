double sub_2717A16BC(uint64_t a1, uint64_t *lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123568, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 7);
    v8 = *(v22 + 16);
    v7 = *(v22 + 32);
    v20[0] = *v22;
    v20[1] = v8;
    v20[2] = v7;
    *&v22 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 2;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        v21[0] = v20;
        v21[1] = &v22;
        *&result = sub_2712A0BBC(v21);
        return result;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A1748(a1 + 8, (v5 + 8));
  return result;
}

void sub_2717A19AC(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 7)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A1CAC(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 7)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A1FAC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A1FE8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A2040(uint64_t a1, uint64_t a2, __int32 *a3, double a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288111F98;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v21[4] = v7;
  *v21 = 2;
  v8 = *v21;
  v9 = HIDWORD(v7);
  *v21 = 1;
  *&v21[4] = v6;
  v10 = *v21;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v10;
  *&v21[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v20 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v19, v21, 1, a3, 1, v17, a4);
  return a1;
}

float sub_2717A2250(uint64_t a1, uint64_t *lpsrc)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123550, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v21, lpsrc, 8);
    v8 = *(v21 + 16);
    v7 = *(v21 + 32);
    v20[0] = *v21;
    v20[1] = v8;
    v20[2] = v7;
    *&v21 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v21) = 2;
    *(&v21 + 4) = v11;
    v13 = v11;
    v14 = v21;
    v15 = HIDWORD(v11);
    LODWORD(v21) = 1;
    *(&v21 + 4) = v12;
    v16 = v21;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v21 = v9;
        *(&v21 + 1) = v14;
        v22 = v15;
        v23 = v16;
        v24 = HIDWORD(v12);
        v25 = v13;
        v26 = v12;
        return sub_2712A2500(v20, &v21);
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A28EC(a1 + 8, (v5 + 8));
  return result;
}

void sub_2717A2538(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 8)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A2838(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 8)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A2B38(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A2B74(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A2BCC(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288111F18;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717A2DD4(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123538, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 9);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A2E80(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A32A4(a1 + 8, (v5 + 8));
}

void sub_2717A30BC(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 9)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A33BC(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 9)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A36BC(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A36F8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A3750(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288113298;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717A3960(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881238E0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 10);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A3624(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A3A70(a1 + 8, (v5 + 8));
}

void sub_2717A3C48(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 10)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A3F48(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 10)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A4248(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717A43B0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717A4538(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288113218;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

double sub_2717A4748(uint64_t a1, uint64_t *lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881238C8, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 11);
    v8 = *(v22 + 16);
    v7 = *(v22 + 32);
    v20[0] = *v22;
    v20[1] = v8;
    v20[2] = v7;
    *&v22 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 3;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        v21[0] = v20;
        v21[1] = &v22;
        *&result = sub_2712A3E18(v21);
        return result;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A4A00(a1 + 8, (v5 + 8));
  return result;
}

void sub_2717A4A38(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 11)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A4D38(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 11)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A5038(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A5074(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A50CC(uint64_t a1, uint64_t a2, __int32 *a3, double a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288113198;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v21[4] = v7;
  *v21 = 3;
  v8 = *v21;
  v9 = HIDWORD(v7);
  *v21 = 1;
  *&v21[4] = v6;
  v10 = *v21;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v10;
  *&v21[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v20 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v19, v21, 1, a3, 1, v17, a4);
  return a1;
}

void sub_2717A52DC(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881238B0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 12);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A5814(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A5C60(a1 + 8, (v5 + 8));
}

void sub_2717A55C4(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 12)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A58C4(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 12)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A5BC4(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A5C00(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A5C58(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288113118;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 4;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717A5E60(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123898, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 13);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A6008(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A6454(a1 + 8, (v5 + 8));
}

void sub_2717A6148(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 13)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A6448(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 13)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A6748(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A6784(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A67DC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288113098;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 4;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717A69EC(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123880, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 14);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_271244900(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A6AE0(a1 + 8, (v5 + 8));
}

void sub_2717A6CD4(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 14)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A6FD4(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 14)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A72D4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717A743C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717A75C4(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288113018;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 4;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

double sub_2717A77D4(uint64_t a1, uint64_t *lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123868, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 15);
    v8 = *(v22 + 16);
    v7 = *(v22 + 32);
    v20[0] = *v22;
    v20[1] = v8;
    v20[2] = v7;
    *&v22 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 4;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        v21[0] = v20;
        v21[1] = &v22;
        *&result = sub_2712A6EAC(v21);
        return result;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A7ABC(a1 + 8, (v5 + 8));
  return result;
}

void sub_2717A7AC4(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 15)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A7DC4(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 15)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A80C4(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A8100(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A8158(uint64_t a1, uint64_t a2, __int32 *a3, double a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112F98;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v21[4] = v7;
  *v21 = 4;
  v8 = *v21;
  v9 = HIDWORD(v7);
  *v21 = 1;
  *&v21[4] = v6;
  v10 = *v21;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v10;
  *&v21[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v20 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v19, v21, 1, a3, 1, v17, a4);
  return a1;
}

void sub_2717A8364(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123850, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 16);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_271245B78(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A8BDC(a1 + 8, (v5 + 8));
}

void sub_2717A864C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 16)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A894C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 16)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A8C4C(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A8C88(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A8CE0(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112F18;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717A8EE8(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123838, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 17);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A2E80(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A32A4(a1 + 8, (v5 + 8));
}

void sub_2717A91D0(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 17)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A94D0(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 17)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A97D0(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A980C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A9864(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112E98;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717A9A74(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123820, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 18);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A3624(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A3A70(a1 + 8, (v5 + 8));
}

void sub_2717A9D5C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 18)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717AA05C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 18)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717AA35C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717AA4C4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717AA64C(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112E18;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

double sub_2717AA85C(uint64_t a1, uint64_t *lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123808, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 19);
    v8 = *(v22 + 16);
    v7 = *(v22 + 32);
    v20[0] = *v22;
    v20[1] = v8;
    v20[2] = v7;
    *&v22 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 3;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        v21[0] = v20;
        v21[1] = &v22;
        *&result = sub_2712A3E18(v21);
        return result;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A4A00(a1 + 8, (v5 + 8));
  return result;
}

void sub_2717AAB4C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 19)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717AAE4C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 19)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717AB14C(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717AB188(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717AB1E0(uint64_t a1, uint64_t a2, __int32 *a3, double a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112D18;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v21[4] = v7;
  *v21 = 3;
  v8 = *v21;
  v9 = HIDWORD(v7);
  *v21 = 1;
  *&v21[4] = v6;
  v10 = *v21;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v10;
  *&v21[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v20 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v19, v21, 1, a3, 1, v17, a4);
  return a1;
}

void sub_2717AB3F0(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881237D8, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 20);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A5814(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A5C60(a1 + 8, (v5 + 8));
}

void sub_2717AB6D8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 20)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717AB9D8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 20)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717ABCD8(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717ABD14(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717ABD6C(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112C98;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717ABF74(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881237C0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 21);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A2E80(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A32A4(a1 + 8, (v5 + 8));
}

void sub_2717AC25C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 21)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717AC55C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 21)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717AC85C(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717AC898(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717AC8F0(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112C18;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717ACB00(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881237A8, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 22);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A3624(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A3A70(a1 + 8, (v5 + 8));
}

void sub_2717ACDE8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 22)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717AD0E8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 22)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717AD3E8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717AD550(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717AD6D8(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112B98;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 3;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

double sub_2717AD8E8(uint64_t a1, uint64_t *lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123790, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 23);
    v8 = *(v22 + 16);
    v7 = *(v22 + 32);
    v20[0] = *v22;
    v20[1] = v8;
    v20[2] = v7;
    *&v22 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 3;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        v21[0] = v20;
        v21[1] = &v22;
        *&result = sub_2712A3E18(v21);
        return result;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A4A00(a1 + 8, (v5 + 8));
  return result;
}

void sub_2717ADBD8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 23)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717ADED8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 23)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717AE1D8(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717AE214(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717AE26C(uint64_t a1, uint64_t a2, __int32 *a3, double a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112B18;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v21[4] = v7;
  *v21 = 3;
  v8 = *v21;
  v9 = HIDWORD(v7);
  *v21 = 1;
  *&v21[4] = v6;
  v10 = *v21;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v10;
  *&v21[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v20 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v19, v21, 1, a3, 1, v17, a4);
  return a1;
}

void sub_2717AE47C(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123778, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 24);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 3;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A5814(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A5C60(a1 + 8, (v5 + 8));
}

void sub_2717AE764(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 24)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717AEA64(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 24)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717AED64(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717AEDA0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717AEDF8(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112A98;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 4;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717AF000(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123760, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 25);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_2712A6008(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A6454(a1 + 8, (v5 + 8));
}

void sub_2717AF2E8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 25)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717AF5E8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 25)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717AF8E8(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717AF924(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717AF97C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112A18;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 4;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

void sub_2717AFB8C(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123748, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 26);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_271244900(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A6AE0(a1 + 8, (v5 + 8));
}

void sub_2717AFE74(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 26)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B0174(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 26)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B0474(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717B05DC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717B0764(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112998;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 4;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

double sub_2717B0974(uint64_t a1, uint64_t *lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123730, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 27);
    v8 = *(v22 + 16);
    v7 = *(v22 + 32);
    v20[0] = *v22;
    v20[1] = v8;
    v20[2] = v7;
    *&v22 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v22) = 4;
    *(&v22 + 4) = v11;
    v13 = v11;
    v14 = v22;
    v15 = HIDWORD(v11);
    LODWORD(v22) = 1;
    *(&v22 + 4) = v12;
    v16 = v22;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v22 = v9;
        *(&v22 + 1) = v14;
        v23 = v15;
        v24 = v16;
        v25 = HIDWORD(v12);
        v26 = v13;
        v27 = v12;
        v21[0] = v20;
        v21[1] = &v22;
        *&result = sub_2712A6EAC(v21);
        return result;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A7ABC(a1 + 8, (v5 + 8));
  return result;
}

void sub_2717B0C64(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 27)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717B0F64(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 27)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717B1264(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717B12A0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717B12F8(uint64_t a1, uint64_t a2, __int32 *a3, double a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112918;
  if (*(a2 + 28))
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 0;
  }

  *&v21[4] = v7;
  *v21 = 4;
  v8 = *v21;
  v9 = HIDWORD(v7);
  *v21 = 1;
  *&v21[4] = v6;
  v10 = *v21;
  v11 = HIDWORD(v6);
  *(a1 + 8) = v8;
  *(a1 + 16) = HIDWORD(v7);
  *(a1 + 20) = v10;
  *(a1 + 28) = HIDWORD(v6);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v21 = v10;
  *&v21[8] = HIDWORD(v6);
  if (HIDWORD(v8))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v20 = v16;
  if (((4 * v11) & (4 * v11 - 1)) != 0)
  {
    v17 = 4;
  }

  else
  {
    v17 = 4 * v11;
  }

  sub_2717D6318(a1 + 64, &v19, v21, 1, a3, 1, v17, a4);
  return a1;
}

void sub_2717B1504(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123718, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 28);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x2743BF050]();
    v8 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      v10 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v10;
    v12 = v10;
    v13 = v20;
    v14 = HIDWORD(v10);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v11;
    v15 = v20;
    if (HIDWORD(v11) * HIDWORD(v10) != -1)
    {
      goto LABEL_19;
    }

    v18 = v8;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_271245B78(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v17)(*(v17 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v17 += 16;
    }

    while (v17 != v16);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_2712A8BDC(a1 + 8, (v5 + 8));
}