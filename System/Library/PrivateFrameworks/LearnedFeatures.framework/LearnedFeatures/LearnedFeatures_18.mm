void sub_255BCB8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255BCA8D8(va);
  _Unwind_Resume(a1);
}

void sub_255BCB8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255BCA8D8(va);
  _Unwind_Resume(a1);
}

void sub_255BCB910(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_255BCBB78(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_255BCBDE0(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    free(*(result + 48));
    result = v1;
  }

  *(result + 48) = 0;
  return result;
}

void sub_255BCBE1C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 48) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BCBF20(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD98, 0);
  if (!v5)
  {
    (*(v4 + 72))(v40, lpsrc, 4);
    v18 = *(v40[0] + 2);
    *v41 = *v40[0];
    *&v41[16] = v18;
    v40[0] = 0;
    MEMORY[0x259C49320]();
    v19 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v20 = *(a1 + 8) == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(a1 + 16);
    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(a1 + 8);
    }

    if (HIDWORD(v22) * HIDWORD(v21) != -1)
    {
      goto LABEL_29;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v23 = qword_27F7DD608, v24 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_28:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_29:
        v40[0] = v19;
        v40[1] = v22;
        v40[2] = v21;
        sub_255AF74DC(v41, v40);
        return;
      }
    }

    else
    {
      v23 = qword_27F7DD608;
      v24 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_55;
      }
    }

    do
    {
      v26 = *v23;
      v25 = *(v23 + 8);
      v23 += 16;
      v26(v25, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v23 != v24);
    if (byte_27F7DD630)
    {
      goto LABEL_28;
    }

LABEL_55:
    abort();
  }

  v6 = *(a1 + 48);
  if (!v6 || (v7 = *(v5 + 2), v7 != *(a1 + 8)) || (v8 = *(v5 + 3), v8 != *(a1 + 12)) || (v9 = *(v5 + 4), v9 != *(a1 + 16)) || (v10 = *(v5 + 5), v10 != *(a1 + 20)))
  {
    v15 = *(v5 + 8);
    *&v41[12] = *(v5 + 20);
    *v41 = v15;
    sub_255BE9178(v42, (v5 + 40));
    *(a1 + 8) = *v41;
    *(a1 + 20) = *&v41[12];
    *(a1 + 64) = v43;
    *(a1 + 40) = v42[0];
    v16 = *(a1 + 48);
    if (v16)
    {
      free(v16);
    }

    v17 = v42[2];
    *(a1 + 48) = v42[1];
    *(a1 + 56) = v17;
    return;
  }

  if (v9 != 1)
  {
    if (!v7 || !v8)
    {
      return;
    }

    v27 = v7 - 1;
    v28 = *(v5 + 6);
    v29 = 4 * v9;
    v30 = v8 - 1;
    if (v30)
    {
      if (!v27)
      {
        v39 = 4 * v10;
        do
        {
          *v6 = *v28;
          v28 = (v28 + v39);
          v6 = (v6 + v39);
          --v30;
        }

        while (v30);
        goto LABEL_54;
      }

      v31 = 0;
      v32 = 4 * v10;
      do
      {
        v33 = 0;
        v34 = v27;
        do
        {
          *(v6 + v33) = *(v28 + v33);
          v33 += v29;
          --v34;
        }

        while (v34);
        *(v6 + v33) = *(v28 + v33);
        v28 = (v28 + v32);
        v6 = (v6 + v32);
        ++v31;
      }

      while (v31 != v30);
    }

    else if (!v27)
    {
LABEL_54:
      *v6 = *v28;
      return;
    }

    do
    {
      *v6 = *v28;
      v28 = (v28 + v29);
      v6 = (v6 + v29);
      --v27;
    }

    while (v27);
    goto LABEL_54;
  }

  if (v10 == v7)
  {
    v11 = v8 * v7;
    if (!v11)
    {
      return;
    }

    v12 = 4 * v11;
    v13 = *(v5 + 6);
    v14 = *(a1 + 48);
  }

  else
  {
    if (!v7 || !v8)
    {
      return;
    }

    v35 = *(v5 + 6);
    v36 = 4 * v7;
    v37 = v8 - 1;
    if (v8 != 1)
    {
      v38 = 4 * v10;
      do
      {
        memmove(v6, v35, v36);
        v35 += v38;
        v6 = (v6 + v38);
        --v37;
      }

      while (v37);
    }

    v14 = v6;
    v13 = v35;
    v12 = v36;
  }

  memmove(v14, v13, v12);
}

void sub_255BCC310(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_255BCC578(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v8 = *(a1 + 8) == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    if (HIDWORD(v9) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_24:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_255BCC7E0(uint64_t result)
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

void sub_255BCC81C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BCC930(uint64_t a1, uint64_t *lpsrc)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD80, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v81, lpsrc, 5);
    v16 = *(v81 + 16);
    v15 = *(v81 + 32);
    v74 = *v81;
    v75 = v16;
    v76 = v15;
    *&v81 = 0;
    MEMORY[0x259C49320]();
    v17 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v18 = *(a1 + 32) == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    if (v18)
    {
      v19 = 0;
    }

    LODWORD(v81) = 2;
    *(&v81 + 4) = v19;
    v21 = v19;
    v22 = v81;
    v23 = HIDWORD(v19);
    LODWORD(v81) = 1;
    *(&v81 + 4) = v20;
    v24 = v81;
    if (HIDWORD(v20) * HIDWORD(v19) != -1)
    {
      goto LABEL_22;
    }

    v72 = v17;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v26 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_21:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v72;
LABEL_22:
        *&v81 = v17;
        *(&v81 + 1) = v22;
        v82 = v23;
        v83 = v24;
        v84 = HIDWORD(v20);
        v85 = v21;
        v86 = v20;
        sub_255AF26F0(&v74, &v81);
        return;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_79;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v26 += 16;
    }

    while (v26 != v25);
    if (byte_27F7DD630)
    {
      goto LABEL_21;
    }

LABEL_79:
    abort();
  }

  v6 = *(a1 + 72);
  if (!v6 || *(v5 + 12) != *(a1 + 12) || *(v5 + 3) != *(a1 + 24))
  {
    v7 = *(v5 + 8);
    v8 = *(v5 + 24);
    v9 = *(v5 + 40);
    v77 = *(v5 + 7);
    v75 = v8;
    v76 = v9;
    v74 = v7;
    sub_255BE9608(v78, (v5 + 64));
    v10 = v75;
    *(a1 + 8) = v74;
    *(a1 + 24) = v10;
    *(a1 + 40) = v76;
    *(a1 + 104) = v80;
    v11 = v77;
    *(a1 + 88) = v79;
    v12 = v78[0];
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;
    v13 = *(a1 + 72);
    if (v13)
    {
      free(v13);
    }

    v14 = v78[2];
    *(a1 + 72) = v78[1];
    *(a1 + 80) = v14;
    return;
  }

  if (*(v5 + 5) != 1 || *(a1 + 20) != 1)
  {
    if (!*(v5 + 2))
    {
      return;
    }

    v28 = *(v5 + 3);
    if (!v28)
    {
      return;
    }

    v29 = *(v5 + 4);
    if (!v29)
    {
      return;
    }

    v30 = v28 - 1;
    v31 = *(v5 + 6);
    v32 = *(a1 + 24);
    v33 = *(v5 + 9);
    v34 = v29 - 1;
    if (v34)
    {
      v35 = *(a1 + 28);
      v36 = *(v5 + 7);
      if (v30)
      {
        v37 = 0;
        v38 = v33 + 1;
        v39 = v6 + 1;
        do
        {
          v40 = v39;
          v41 = v38;
          v42 = v30;
          do
          {
            *(v40 - 1) = *(v41 - 1);
            *v40 = *v41;
            v41 += v31;
            v40 += v32;
            --v42;
          }

          while (v42);
          *(v40 - 1) = *(v41 - 1);
          *v40 = *v41;
          v33 += v36;
          v6 += v35;
          ++v37;
          v38 += v36;
          v39 += v35;
        }

        while (v37 != v34);
        goto LABEL_40;
      }

      do
      {
        *v6 = *v33;
        v6[1] = v33[1];
        v33 += v36;
        v6 += v35;
        --v34;
      }

      while (v34);
    }

    if (!v30)
    {
LABEL_41:
      *v6 = *v33;
      v6[1] = v33[1];
      return;
    }

    do
    {
LABEL_40:
      *v6 = *v33;
      v6[1] = v33[1];
      v33 += v31;
      v6 += v32;
      --v30;
    }

    while (v30);
    goto LABEL_41;
  }

  v43 = *(v5 + 6);
  v44 = *(a1 + 24);
  v45 = *(v5 + 2);
  if (v43 != v44 || v43 != v45)
  {
    v48 = *(v5 + 3);
    v47 = *(v5 + 4);
    if (v45)
    {
      v49 = v48 == 0;
    }

    else
    {
      v49 = 1;
    }

    if (v49 || v47 == 0)
    {
      return;
    }

    v51 = v48 - 1;
    v52 = *(v5 + 9);
    v53 = v47 - 1;
    if (v47 != 1)
    {
      v54 = *(a1 + 28);
      v55 = *(v5 + 7);
      if (v48 == 1)
      {
        do
        {
          memmove(v6, v52, v45);
          v52 += v55;
          v6 += v54;
          --v53;
        }

        while (v53);
      }

      else
      {
        v56 = 0;
        v73 = v47 - 1;
        v70 = *(v5 + 7);
        v71 = v54;
        do
        {
          v57 = v51;
          v58 = v52;
          v59 = v6;
          do
          {
            memmove(v59, v58, v45);
            v58 += v43;
            v59 += v44;
            --v57;
          }

          while (v57);
          memmove(v59, v58, v45);
          v52 += v70;
          v6 += v71;
          ++v56;
        }

        while (v56 != v73);
      }
    }

    for (; v51; --v51)
    {
      memmove(v6, v52, v45);
      v52 += v43;
      v6 += v44;
    }

    v60 = v6;
    v61 = v52;
    v62 = v45;
    goto LABEL_76;
  }

  v63 = *(v5 + 7);
  v64 = *(a1 + 28);
  v65 = *(v5 + 3);
  v66 = (v65 * v43);
  if (v63 == v64 && v63 == v66)
  {
    v62 = (*(v5 + 4) * v63);
    if (!v62)
    {
      return;
    }

    v61 = *(v5 + 9);
    v60 = v6;
    goto LABEL_76;
  }

  if (v43)
  {
    if (v65)
    {
      v67 = *(v5 + 4);
      if (v67)
      {
        v68 = *(v5 + 9);
        v69 = v67 - 1;
        if (v67 != 1)
        {
          if (!v66)
          {
            return;
          }

          do
          {
            memmove(v6, v68, v66);
            v68 += v63;
            v6 += v64;
            --v69;
          }

          while (v69);
        }

        if (v66)
        {
          v60 = v6;
          v61 = v68;
          v62 = v66;
LABEL_76:

          memmove(v60, v61, v62);
        }
      }
    }
  }
}

void sub_255BCCF78(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BCD278(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BCD578(uint64_t result)
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

void sub_255BCD5B4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BCD6C8(uint64_t a1, uint64_t *lpsrc)
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD68, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v114, lpsrc, 6);
    v15 = *v114;
    v16 = *(v114 + 8);
    v111 = *(v114 + 12);
    v17 = *(v114 + 16);
    v18 = *(v114 + 20);
    v19 = *(v114 + 24);
    v20 = *(v114 + 28);
    *&v114 = 0;
    MEMORY[0x259C49320]();
    v21 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v22 = *(a1 + 32) == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = *(a1 + 32);
    if (v22)
    {
      HIDWORD(v23) = 0;
    }

    LODWORD(v114) = 1;
    *(&v114 + 4) = *(a1 + 40);
    v24 = v114;
    v25 = HIDWORD(*(&v114 + 4));
    if (DWORD2(v114) * HIDWORD(v23) != -1)
    {
      if (v18 != 1)
      {
        goto LABEL_32;
      }

LABEL_25:
      if (v24 == 1)
      {
        if (v19 != HIDWORD(v24) || v19 != v16)
        {
          if (v16 && v111 && v17)
          {
            v39 = v20;
            v40 = 2 * v16;
            v41 = v111 - 1;
            v42 = 2 * v19;
            v43 = 2 * HIDWORD(v24);
            v44 = v17 - 1;
            if (v17 != 1)
            {
              if (v111 == 1)
              {
                v95 = 2 * v39;
                v96 = 2 * v25;
                do
                {
                  memmove(v21, v15, v40);
                  v15 = (v15 + v95);
                  v21 = (v21 + v96);
                  --v44;
                }

                while (v44);
              }

              else
              {
                v45 = 0;
                v106 = 2 * v25;
                v109 = 2 * v39;
                v112 = v44;
                do
                {
                  v46 = v21;
                  v47 = v15;
                  v48 = v41;
                  do
                  {
                    memmove(v46, v47, v40);
                    v47 += v42;
                    v46 += v43;
                    --v48;
                  }

                  while (v48);
                  memmove(v46, v47, v40);
                  v15 = (v15 + v109);
                  v21 = (v21 + v106);
                  ++v45;
                }

                while (v45 != v112);
              }
            }

            for (; v41; --v41)
            {
              memmove(v21, v15, v40);
              v15 = (v15 + v42);
              v21 = (v21 + v43);
            }

            memmove(v21, v15, v40);
          }

          return;
        }

        v28 = (v111 * v16);
        if (v20 == v25 && v20 == v28)
        {
          if (!(v20 * v17))
          {
            return;
          }

          v29 = 2 * (v20 * v17);
        }

        else
        {
          if (!v16 || !v111 || !v17)
          {
            return;
          }

          v65 = v17 - 1;
          if (v65)
          {
            if (!v28)
            {
              return;
            }

            v66 = 2 * v25;
            do
            {
              memmove(v21, v15, 2 * v28);
              v15 += v20;
              v21 = (v21 + v66);
              --v65;
            }

            while (v65);
          }

          if (!v28)
          {
            return;
          }

          v29 = 2 * v28;
        }

        memmove(v21, v15, v29);
        return;
      }

LABEL_32:
      if (!v16 || !v111 || !v17)
      {
        return;
      }

      v30 = v111 - 1;
      v31 = 2 * HIDWORD(v24);
      v32 = v17 - 1;
      if (v17 == 1)
      {
        if (v111 == 1)
        {
LABEL_98:
          *v21 = *v15;
          v21[1] = v15[1];
          return;
        }
      }

      else
      {
        if (v111 == 1)
        {
          do
          {
            *v21 = *v15;
            v21[1] = v15[1];
            v15 += v20;
            v21 += v25;
            --v32;
          }

          while (v32);
          goto LABEL_98;
        }

        v33 = 0;
        v34 = v15 + 1;
        v35 = v21 + 1;
        do
        {
          v36 = v35;
          v37 = v34;
          v38 = v111 - 1;
          do
          {
            *(v36 - 1) = *(v37 - 1);
            *v36 = *v37;
            v37 += v19;
            v36 = (v36 + v31);
            --v38;
          }

          while (v38);
          *(v36 - 1) = *(v37 - 1);
          *v36 = *v37;
          v15 += v20;
          v21 += v25;
          ++v33;
          v34 += v20;
          v35 += v25;
        }

        while (v33 != v32);
      }

      do
      {
        *v21 = *v15;
        v21[1] = v15[1];
        v15 += v19;
        v21 = (v21 + v31);
        --v30;
      }

      while (v30);
      goto LABEL_98;
    }

    v104 = v17;
    v108 = v20;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_24;
      }

      v26 = qword_27F7DD608;
      v27 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v27 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_130;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v26 += 16;
    }

    while (v26 != v27);
    if (byte_27F7DD630)
    {
LABEL_24:
      qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v20 = v108;
      v17 = v104;
      if (v18 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

LABEL_130:
    abort();
  }

  v6 = *(a1 + 72);
  if (!v6 || *(v5 + 12) != *(a1 + 12) || *(v5 + 3) != *(a1 + 24))
  {
    v7 = *(v5 + 8);
    v8 = *(v5 + 24);
    v9 = *(v5 + 40);
    v117 = *(v5 + 7);
    v115 = v8;
    v116 = v9;
    v114 = v7;
    sub_255BE9CD0(v118, (v5 + 64));
    v10 = v115;
    *(a1 + 8) = v114;
    *(a1 + 24) = v10;
    *(a1 + 40) = v116;
    *(a1 + 104) = v120;
    v11 = v117;
    *(a1 + 88) = v119;
    v12 = v118[0];
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;
    v13 = *(a1 + 72);
    if (v13)
    {
      free(v13);
    }

    v14 = v118[2];
    *(a1 + 72) = v118[1];
    *(a1 + 80) = v14;
    return;
  }

  if (*(v5 + 5) != 1 || *(a1 + 20) != 1)
  {
    if (!*(v5 + 2))
    {
      return;
    }

    v50 = *(v5 + 3);
    if (!v50)
    {
      return;
    }

    v51 = *(v5 + 4);
    if (!v51)
    {
      return;
    }

    v52 = v50 - 1;
    v53 = *(v5 + 9);
    v54 = 2 * *(v5 + 6);
    v55 = 2 * *(a1 + 24);
    v56 = v51 - 1;
    if (v56)
    {
      v57 = *(a1 + 28);
      v58 = *(v5 + 7);
      if (!v52)
      {
        do
        {
          *v6 = *v53;
          v6[1] = v53[1];
          v53 += v58;
          v6 += v57;
          --v56;
        }

        while (v56);
        goto LABEL_121;
      }

      v59 = 0;
      v60 = v53 + 1;
      v61 = v6 + 1;
      do
      {
        v62 = v61;
        v63 = v60;
        v64 = v52;
        do
        {
          *(v62 - 1) = *(v63 - 1);
          *v62 = *v63;
          v63 = (v63 + v54);
          v62 = (v62 + v55);
          --v64;
        }

        while (v64);
        *(v62 - 1) = *(v63 - 1);
        *v62 = *v63;
        v53 += v58;
        v6 += v57;
        ++v59;
        v60 += v58;
        v61 += v57;
      }

      while (v59 != v56);
    }

    else if (!v52)
    {
LABEL_121:
      *v6 = *v53;
      v6[1] = v53[1];
      return;
    }

    do
    {
      *v6 = *v53;
      v6[1] = v53[1];
      v53 = (v53 + v54);
      v6 = (v6 + v55);
      --v52;
    }

    while (v52);
    goto LABEL_121;
  }

  v67 = *(v5 + 6);
  v68 = *(a1 + 24);
  v69 = *(v5 + 2);
  if (v67 != v68 || v67 != v69)
  {
    v72 = *(v5 + 3);
    v71 = *(v5 + 4);
    if (v69)
    {
      v73 = v72 == 0;
    }

    else
    {
      v73 = 1;
    }

    if (v73 || v71 == 0)
    {
      return;
    }

    v75 = v72 - 1;
    v76 = *(v5 + 9);
    v77 = 2 * v69;
    v78 = 2 * v68;
    v79 = v71 - 1;
    v105 = *(v5 + 6);
    if (v71 != 1)
    {
      v80 = *(a1 + 28);
      v81 = *(v5 + 7);
      if (v72 == 1)
      {
        v102 = 2 * v81;
        v103 = 2 * v80;
        do
        {
          memmove(v6, v76, v77);
          v76 += v102;
          v6 = (v6 + v103);
          --v79;
        }

        while (v79);
      }

      else
      {
        v82 = 0;
        v83 = 2 * v67;
        v107 = 2 * v80;
        v110 = 2 * v81;
        v113 = v71 - 1;
        do
        {
          v84 = v6;
          v85 = v76;
          v86 = v75;
          do
          {
            memmove(v84, v85, v77);
            v85 += v83;
            v84 += v78;
            --v86;
          }

          while (v86);
          memmove(v84, v85, v77);
          v76 += v110;
          v6 = (v6 + v107);
          ++v82;
        }

        while (v82 != v113);
      }
    }

    for (; v75; --v75)
    {
      memmove(v6, v76, v77);
      v76 += 2 * v105;
      v6 = (v6 + v78);
    }

    v94 = v6;
    v92 = v76;
    v93 = v77;
    goto LABEL_127;
  }

  v87 = *(v5 + 7);
  v88 = *(a1 + 28);
  v89 = *(v5 + 3);
  v90 = (v89 * v67);
  if (v87 == v88 && v87 == v90)
  {
    v91 = *(v5 + 4) * v87;
    if (!v91)
    {
      return;
    }

    v92 = *(v5 + 9);
    v93 = 2 * v91;
    v94 = *(a1 + 72);
    goto LABEL_127;
  }

  if (v67)
  {
    if (v89)
    {
      v97 = *(v5 + 4);
      if (v97)
      {
        v98 = *(v5 + 9);
        v99 = v97 - 1;
        if (v97 != 1)
        {
          if (!v90)
          {
            return;
          }

          v100 = 2 * v87;
          v101 = 2 * v88;
          do
          {
            memmove(v6, v98, 2 * v90);
            v98 += v100;
            v6 = (v6 + v101);
            --v99;
          }

          while (v99);
        }

        if (v90)
        {
          v93 = 2 * v90;
          v94 = v6;
          v92 = v98;
LABEL_127:

          memmove(v94, v92, v93);
        }
      }
    }
  }
}

void sub_255BCDFDC(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BCE2DC(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BCE5DC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_255BCE744(uint64_t a1)
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

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

void sub_255BCE8AC(uint64_t a1)
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

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

__int16 sub_255BCEAF0@<H0>(uint64_t a1@<X0>, uint64_t *lpsrc@<X1>)
{
  v240 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD50, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v234, lpsrc, 7);
    v16 = *(v234 + 16);
    v15 = *(v234 + 32);
    v227 = *v234;
    v228 = v16;
    v229 = v15;
    *&v234 = 0;
    MEMORY[0x259C49320]();
    v17 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v18 = *(a1 + 32) == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    if (v18)
    {
      v19 = 0;
    }

    *(&v234 + 4) = v19;
    v21 = v19;
    LODWORD(v234) = 2;
    v22 = v234;
    v23 = HIDWORD(v19);
    LODWORD(v234) = 1;
    *(&v234 + 4) = v20;
    v24 = v234;
    if (HIDWORD(v20) * HIDWORD(v19) != -1)
    {
      goto LABEL_32;
    }

    v224 = v17;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v26 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_31:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v224;
LABEL_32:
        *&v234 = v17;
        *(&v234 + 1) = v22;
        v235 = v23;
        v236 = v24;
        v237 = HIDWORD(v20);
        v238 = v21;
        v239 = v20;
        v226[0] = &v227;
        v226[1] = &v234;
        LOWORD(v6) = sub_255AF5898(v226);
        return v6;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_236;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v26 += 16;
    }

    while (v26 != v25);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_31;
  }

  v7 = *(a1 + 72);
  if (!v7 || *(v5 + 12) != *(a1 + 12) || *(v5 + 3) != *(a1 + 24))
  {
    v8 = *(v5 + 8);
    v9 = *(v5 + 24);
    v10 = *(v5 + 40);
    v230 = *(v5 + 7);
    v228 = v9;
    v229 = v10;
    v227 = v8;
    sub_255BEA5D4(v231, (v5 + 64));
    v11 = v228;
    *(a1 + 8) = v227;
    *(a1 + 24) = v11;
    *(a1 + 40) = v229;
    *(a1 + 56) = v230;
    LOWORD(v6) = v232;
    *(a1 + 88) = v232;
    *(a1 + 104) = v233;
    v12 = *(a1 + 72);
    if (!v12)
    {
      *(a1 + 64) = v231[0];
      goto LABEL_38;
    }

    if (*(a1 + 92))
    {
      v13 = *(a1 + 88) == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 96);
    if (v13)
    {
      v14 = 0;
    }

    if (v14 * (*(a1 + 108) >> 1) != -1)
    {
      *(a1 + 64) = v231[0];
LABEL_37:
      free(v12);
      goto LABEL_38;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_36;
      }

      v27 = qword_27F7DD608;
      v28 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = qword_27F7DD608;
      v28 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_236;
      }
    }

    do
    {
      (*v27)(*(v27 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v27 += 16;
    }

    while (v27 != v28);
    if (byte_27F7DD630)
    {
LABEL_36:
      qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 = *(a1 + 72);
      *(a1 + 64) = v231[0];
      if (v12)
      {
        goto LABEL_37;
      }

LABEL_38:
      v29 = v231[2];
      *(a1 + 72) = v231[1];
      *(a1 + 80) = v29;
      return v6;
    }

LABEL_236:
    abort();
  }

  if (*(v5 + 5) == 1 && *(a1 + 20) == 1)
  {
    v46 = *(v5 + 6);
    v47 = *(a1 + 24);
    v48 = *(v5 + 2);
    if (v46 != v47 || v46 != v48)
    {
      v50 = *(v5 + 3);
      v51 = *(v5 + 4);
      if (v48)
      {
        v52 = v50 == 0;
      }

      else
      {
        v52 = 1;
      }

      if (v52 || v51 == 0)
      {
        return v6;
      }

      v54 = v50 - 1;
      v55 = *(v5 + 9);
      v56 = 2 * v47;
      v57 = v51 - 1;
      v220 = *(a1 + 24);
      v221 = *(v5 + 6);
      v219 = *(v5 + 3);
      if (v51 != 1)
      {
        v58 = *(a1 + 28);
        v59 = *(v5 + 7);
        if (v50 != 1)
        {
          v60 = 0;
          v61 = 2 * v46;
          v225 = &v7[v56 / 2] - v55 + -2 * v46;
          v223 = 2 * (v58 - v59);
          v222 = v56 - 2 * v46;
          v62 = (v48 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v63 = v62 + 1;
          v64 = 2 * v58;
          v65 = 2 * v59;
          v66 = &v7[v48 + v47 * (v50 - 2)];
          v67 = (v62 + 1) & 0xFFFFFFFFFFFFFFF0;
          v68 = v67;
          v69 = (v62 + 1) & 0xC;
          v70 = (v62 + 1) & 0xFFFFFFFFFFFFFFFCLL;
          v71 = v70;
          v72 = v55 + 2 * (v48 + v46 * (v50 - 2));
          while (1)
          {
            v73 = 0;
            v75 = v7 < v72 + v65 * v60 && v55 < v66 + v64 * v60;
            v76 = v7;
            v77 = v55;
            do
            {
              v78 = v73;
              v79 = v76;
              v80 = v77;
              if (v62 < 3 || v75)
              {
                goto LABEL_89;
              }

              if (v62 >= 0xF)
              {
                v82 = 0;
                v83 = (v62 + 1) & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v84 = &v76[v82];
                  v85 = *&v77[v82 + 8];
                  *v84 = *&v77[v82];
                  v84[1] = v85;
                  v82 += 16;
                  v83 -= 16;
                }

                while (v83);
                if (v63 == v67)
                {
                  goto LABEL_76;
                }

                v81 = (v62 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v69)
                {
                  v80 = &v77[v68];
                  v79 = &v76[v68];
                  do
                  {
LABEL_89:
                    v88 = *v80++;
                    *v79++ = v88;
                  }

                  while (v80 != &v77[v48]);
                  goto LABEL_76;
                }
              }

              else
              {
                v81 = 0;
              }

              v79 = &v76[v71];
              v80 = &v77[v71];
              v86 = v81;
              v87 = v81 - v70;
              do
              {
                *&v76[v86] = *&v77[v86];
                v86 += 4;
                v87 += 4;
              }

              while (v87);
              if (v63 != v70)
              {
                goto LABEL_89;
              }

LABEL_76:
              v77 = (v77 + v61);
              v76 = (v76 + v56);
              v73 = v78 + 1;
            }

            while (v78 + 1 != v54);
            if (v62 < 3 || (v225 + v223 * v60 + v222 * v78) < 0x20)
            {
              v89 = v76;
              v90 = v77;
              goto LABEL_94;
            }

            if (v62 >= 0xF)
            {
              v93 = 0;
              v94 = (v62 + 1) & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v95 = &v76[v93];
                v96 = *&v77[v93 + 8];
                *v95 = *&v77[v93];
                v95[1] = v96;
                v93 += 16;
                v94 -= 16;
              }

              while (v94);
              if (v63 != v67)
              {
                v92 = (v62 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (!v69)
                {
                  v90 = &v77[v68];
                  v89 = &v76[v68];
                  goto LABEL_94;
                }

                goto LABEL_102;
              }
            }

            else
            {
              v92 = 0;
LABEL_102:
              v89 = &v76[v71];
              v90 = &v77[v71];
              v97 = v92;
              v98 = v92 - v70;
              do
              {
                *&v76[v97] = *&v77[v97];
                v97 += 4;
                v98 += 4;
              }

              while (v98);
              if (v63 != v70)
              {
                do
                {
LABEL_94:
                  v91 = *v90++;
                  *v89++ = v91;
                }

                while (v90 != &v77[v48]);
              }
            }

            v55 += v65;
            v7 = (v7 + v64);
            if (++v60 == v57)
            {
              goto LABEL_173;
            }
          }
        }

        v137 = 0;
        v138 = v51 - 2;
        v139 = &v7[v48 + v58 * v138];
        v140 = v55 + 2 * (v48 + v59 * v138);
        v141 = (v48 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v142 = v141 + 1;
        v143 = v7 >= v140 || v55 >= v139;
        v144 = v142 & 0xFFFFFFFFFFFFFFF0;
        v145 = v142 & 0xFFFFFFFFFFFFFFFCLL;
        v146 = v142 & 0xFFFFFFFFFFFFFFFCLL;
        v147 = !v143;
        v148 = 2 * v59;
        v149 = 2 * v58;
        do
        {
          v150 = v7;
          v151 = v55;
          if (!((v141 < 3) | v147 & 1))
          {
            if (v141 < 0xF)
            {
              v152 = 0;
LABEL_166:
              v150 = &v7[v146];
              v151 = (v55 + v146 * 2);
              v157 = v152;
              v158 = v152 - v145;
              do
              {
                *&v7[v157] = *(v55 + v157 * 2);
                v157 += 4;
                v158 += 4;
              }

              while (v158);
              if (v142 == v145)
              {
                goto LABEL_158;
              }

              goto LABEL_171;
            }

            v153 = 0;
            v154 = v142 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v155 = &v7[v153];
              v156 = *(v55 + v153 * 2 + 16);
              *v155 = *(v55 + v153 * 2);
              v155[1] = v156;
              v153 += 16;
              v154 -= 16;
            }

            while (v154);
            if (v142 == (v142 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_158;
            }

            v152 = v142 & 0xFFFFFFFFFFFFFFF0;
            if ((v142 & 0xC) != 0)
            {
              goto LABEL_166;
            }

            v151 = (v55 + v144 * 2);
            v150 = &v7[v144];
          }

          do
          {
LABEL_171:
            v159 = *v151++;
            *v150++ = v159;
          }

          while (v151 != (v55 + 2 * v48));
LABEL_158:
          v55 += v148;
          v7 = (v7 + v149);
          ++v137;
        }

        while (v137 != v57);
      }

LABEL_173:
      if (v54)
      {
        v160 = 0;
        v161 = (v48 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v162 = v161 + 1;
        v164 = v7 < v55 + 2 * (v48 + v221 * (v219 - 2)) && v55 < &v7[v48 + v220 * (v219 - 2)];
        v165 = v162 & 0xFFFFFFFFFFFFFFF0;
        v166 = v162 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v167 = v7;
          v168 = v55;
          if (v161 >= 3 && !v164)
          {
            if (v161 < 0xF)
            {
              v169 = 0;
LABEL_189:
              v167 = &v7[v166];
              v168 = (v55 + v166 * 2);
              v174 = v169;
              v175 = v169 - (v162 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                *&v7[v174] = *(v55 + v174 * 2);
                v174 += 4;
                v175 += 4;
              }

              while (v175);
              if (v162 == (v162 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_181;
              }

              goto LABEL_194;
            }

            v170 = 0;
            v171 = v162 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v172 = &v7[v170];
              v173 = *(v55 + v170 * 2 + 16);
              *v172 = *(v55 + v170 * 2);
              v172[1] = v173;
              v170 += 16;
              v171 -= 16;
            }

            while (v171);
            if (v162 == (v162 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_181;
            }

            v169 = v162 & 0xFFFFFFFFFFFFFFF0;
            if ((v162 & 0xC) != 0)
            {
              goto LABEL_189;
            }

            v168 = (v55 + v165 * 2);
            v167 = &v7[v165];
          }

          do
          {
LABEL_194:
            v176 = *v168++;
            *v167++ = v176;
          }

          while (v168 != (v55 + 2 * v48));
LABEL_181:
          v55 += 2 * v221;
          v7 = (v7 + v56);
          ++v160;
        }

        while (v160 != v54);
      }

      v177 = (v48 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v177 < 3 || v7 - v55 < 0x20)
      {
        v180 = v7;
        v181 = v55;
        goto LABEL_228;
      }

      v178 = v177 + 1;
      if (v177 >= 0xF)
      {
        v179 = v178 & 0xFFFFFFFFFFFFFFF0;
        v182 = (v55 + 16);
        v183 = v7 + 8;
        v184 = v178 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v6 = *(v182 - 1);
          v185 = *v182;
          *(v183 - 1) = v6;
          *v183 = v185;
          v182 += 2;
          v183 += 2;
          v184 -= 16;
        }

        while (v184);
        if (v178 == v179)
        {
          return v6;
        }

        if ((v178 & 0xC) == 0)
        {
          v212 = v179;
          v181 = (v55 + v212 * 2);
          v180 = &v7[v212];
          goto LABEL_228;
        }
      }

      else
      {
        v179 = 0;
      }

      v186 = v178 & 0xFFFFFFFFFFFFFFFCLL;
      v180 = &v7[v186];
      v181 = (v55 + v186 * 2);
      v187 = (v55 + 2 * v179);
      v188 = &v7[v179];
      v189 = v179 - (v178 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v190 = *v187++;
        LOWORD(v6) = v190;
        *v188++ = v190;
        v189 += 4;
      }

      while (v189);
      if (v178 == (v178 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v6;
      }

      do
      {
LABEL_228:
        v213 = *v181++;
        LOWORD(v6) = v213;
        *v180++ = v213;
      }

      while (v181 != (v55 + 2 * v48));
      return v6;
    }

    v99 = *(v5 + 7);
    v100 = *(a1 + 28);
    v101 = *(v5 + 3);
    v102 = (v101 * v46);
    if (v99 == v100 && v99 == v102)
    {
      v103 = (*(v5 + 4) * v99);
      if (!v103)
      {
        return v6;
      }

      v104 = *(v5 + 9);
      v105 = (v103 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v105 < 3)
      {
        v106 = *(v5 + 9);
        goto LABEL_231;
      }

      v106 = *(v5 + 9);
      if (v7 - v104 < 0x20)
      {
        goto LABEL_231;
      }

      v107 = v105 + 1;
      if (v105 >= 0xF)
      {
        v108 = v107 & 0xFFFFFFFFFFFFFFF0;
        v191 = (v104 + 16);
        v192 = v7 + 8;
        v193 = v107 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v6 = *(v191 - 1);
          v194 = *v191;
          *(v192 - 1) = v6;
          *v192 = v194;
          v191 += 2;
          v192 += 2;
          v193 -= 16;
        }

        while (v193);
        if (v107 == v108)
        {
          return v6;
        }

        if ((v107 & 0xC) == 0)
        {
          v214 = 2 * v108;
          v106 = (v104 + v214);
          v7 = (v7 + v214);
          goto LABEL_231;
        }
      }

      else
      {
        v108 = 0;
      }

      v195 = v107 & 0xFFFFFFFFFFFFFFFCLL;
      v196 = &v7[v195];
      v106 = (v104 + v195 * 2);
      v197 = (v104 + 2 * v108);
      v198 = &v7[v108];
      v199 = v108 - (v107 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v200 = *v197++;
        LOWORD(v6) = v200;
        *v198++ = v200;
        v199 += 4;
      }

      while (v199);
      v7 = v196;
      if (v107 == (v107 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v6;
      }

      do
      {
LABEL_231:
        v215 = *v106++;
        LOWORD(v6) = v215;
        *v7++ = v215;
      }

      while (v106 != (v104 + 2 * v103));
      return v6;
    }

    if (!v46)
    {
      return v6;
    }

    if (!v101)
    {
      return v6;
    }

    v109 = *(v5 + 4);
    if (!v109)
    {
      return v6;
    }

    v110 = *(v5 + 9);
    if (v109 == 1)
    {
LABEL_118:
      if (!v102)
      {
        return v6;
      }

      v111 = (v102 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v111 < 3 || v7 - v110 < 0x20)
      {
        v201 = v7;
        v202 = v110;
        goto LABEL_234;
      }

      v112 = v111 + 1;
      if (v111 >= 0xF)
      {
        v113 = v112 & 0xFFFFFFFFFFFFFFF0;
        v203 = (v110 + 16);
        v204 = v7 + 8;
        v205 = v112 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v6 = *(v203 - 1);
          v206 = *v203;
          *(v204 - 1) = v6;
          *v204 = v206;
          v203 += 2;
          v204 += 2;
          v205 -= 16;
        }

        while (v205);
        if (v112 == v113)
        {
          return v6;
        }

        if ((v112 & 0xC) == 0)
        {
          v216 = v113;
          v202 = (v110 + v216 * 2);
          v201 = &v7[v216];
          goto LABEL_234;
        }
      }

      else
      {
        v113 = 0;
      }

      v207 = v112 & 0xFFFFFFFFFFFFFFFCLL;
      v201 = &v7[v207];
      v202 = (v110 + v207 * 2);
      v208 = (v110 + 2 * v113);
      v209 = &v7[v113];
      v210 = v113 - (v112 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v211 = *v208++;
        LOWORD(v6) = v211;
        *v209++ = v211;
        v210 += 4;
      }

      while (v210);
      if (v112 == (v112 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v6;
      }

      do
      {
LABEL_234:
        v217 = *v202++;
        LOWORD(v6) = v217;
        *v201++ = v217;
      }

      while (v202 != (v110 + 2 * v102));
      return v6;
    }

    if (!v102)
    {
      return v6;
    }

    v115 = 0;
    v116 = v109 - 2;
    v117 = &v7[v102 + v100 * (v109 - 2)];
    v118 = (v102 - 1) & 0x7FFFFFFFFFFFFFFFLL;
    v119 = v118 + 1;
    v120 = v7 >= v110 + 2 * (v102 + v99 * v116) || v110 >= v117;
    v121 = v119 & 0xFFFFFFFFFFFFFFF0;
    v122 = v119 & 0xFFFFFFFFFFFFFFFCLL;
    v123 = v119 & 0xFFFFFFFFFFFFFFFCLL;
    v124 = !v120;
    v125 = 2 * v99;
    v126 = 2 * v100;
    while (1)
    {
      v127 = v7;
      v128 = v110;
      if (!((v118 < 3) | v124 & 1))
      {
        if (v118 < 0xF)
        {
          v129 = 0;
LABEL_144:
          v127 = &v7[v123];
          v128 = (v110 + v123 * 2);
          v134 = v129;
          v135 = v129 - v122;
          do
          {
            *&v6 = *(v110 + v134 * 2);
            *&v7[v134] = v6;
            v134 += 4;
            v135 += 4;
          }

          while (v135);
          if (v119 == v122)
          {
            goto LABEL_136;
          }

          goto LABEL_149;
        }

        v130 = 0;
        v131 = v119 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v132 = &v7[v130];
          v6 = *(v110 + v130 * 2);
          v133 = *(v110 + v130 * 2 + 16);
          *v132 = v6;
          v132[1] = v133;
          v130 += 16;
          v131 -= 16;
        }

        while (v131);
        if (v119 == (v119 & 0xFFFFFFFFFFFFFFF0))
        {
          goto LABEL_136;
        }

        v129 = v119 & 0xFFFFFFFFFFFFFFF0;
        if ((v119 & 0xC) != 0)
        {
          goto LABEL_144;
        }

        v128 = (v110 + v121 * 2);
        v127 = &v7[v121];
      }

      do
      {
LABEL_149:
        v136 = *v128++;
        LOWORD(v6) = v136;
        *v127++ = v136;
      }

      while (v128 != (v110 + 2 * v102));
LABEL_136:
      v110 += v125;
      v7 = (v7 + v126);
      v13 = v115++ == v116;
      if (v13)
      {
        goto LABEL_118;
      }
    }
  }

  if (*(v5 + 2))
  {
    v31 = *(v5 + 3);
    if (v31)
    {
      v32 = *(v5 + 4);
      if (v32)
      {
        v33 = v31 - 1;
        v34 = *(v5 + 9);
        v35 = 2 * *(v5 + 6);
        v36 = 2 * *(a1 + 24);
        v37 = v32 - 1;
        if (v32 != 1)
        {
          v38 = *(a1 + 28);
          v39 = *(v5 + 7);
          if (v33)
          {
            v40 = 0;
            v41 = v34 + 1;
            v42 = v7 + 1;
            do
            {
              v43 = v42;
              v44 = v41;
              v45 = v33;
              do
              {
                *(v43 - 1) = *(v44 - 1);
                *v43 = *v44;
                v44 = (v44 + v35);
                v43 = (v43 + v36);
                --v45;
              }

              while (v45);
              *(v43 - 1) = *(v44 - 1);
              *v43 = *v44;
              v34 += v39;
              v7 += v38;
              ++v40;
              v41 += v39;
              v42 += v38;
            }

            while (v40 != v37);
            goto LABEL_126;
          }

          v114 = 2 * v38;
          do
          {
            *v7 = *v34;
            v7[1] = v34[1];
            v34 += v39;
            v7 = (v7 + v114);
            --v37;
          }

          while (v37);
        }

        if (!v33)
        {
LABEL_127:
          *v7 = *v34;
          LOWORD(v6) = v34[1];
          v7[1] = v6;
          return v6;
        }

        do
        {
LABEL_126:
          *v7 = *v34;
          v7[1] = v34[1];
          v34 = (v34 + v35);
          v7 = (v7 + v36);
          --v33;
        }

        while (v33);
        goto LABEL_127;
      }
    }
  }

  return v6;
}

void sub_255BCF918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255BCE5DC(va);
  _Unwind_Resume(a1);
}

void sub_255BCF92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255BCE5DC(va);
  _Unwind_Resume(a1);
}

void sub_255BCF94C(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BCFC4C(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BCFF4C(uint64_t result)
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

void sub_255BCFF88(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD009C(uint64_t a1, uint64_t *lpsrc)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD38, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v90, lpsrc, 8);
    v16 = *(v90 + 16);
    v15 = *(v90 + 32);
    v83 = *v90;
    v84 = v16;
    v85 = v15;
    *&v90 = 0;
    MEMORY[0x259C49320]();
    v17 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v18 = *(a1 + 32) == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    if (v18)
    {
      v19 = 0;
    }

    LODWORD(v90) = 2;
    *(&v90 + 4) = v19;
    v21 = v19;
    v22 = v90;
    v23 = HIDWORD(v19);
    LODWORD(v90) = 1;
    *(&v90 + 4) = v20;
    v24 = v90;
    if (HIDWORD(v20) * HIDWORD(v19) != -1)
    {
      goto LABEL_22;
    }

    v81 = v17;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v26 = qword_27F7DD608, v25 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_21:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v81;
LABEL_22:
        *&v90 = v17;
        *(&v90 + 1) = v22;
        v91 = v23;
        v92 = v24;
        v93 = HIDWORD(v20);
        v94 = v21;
        v95 = v20;
        sub_255AF7C3C(&v83, &v90);
        return;
      }
    }

    else
    {
      v26 = qword_27F7DD608;
      v25 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v26)(*(v26 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v26 += 16;
    }

    while (v26 != v25);
    if (byte_27F7DD630)
    {
      goto LABEL_21;
    }

LABEL_82:
    abort();
  }

  v6 = *(a1 + 72);
  if (!v6 || *(v5 + 12) != *(a1 + 12) || *(v5 + 3) != *(a1 + 24))
  {
    v7 = *(v5 + 8);
    v8 = *(v5 + 24);
    v9 = *(v5 + 40);
    v86 = *(v5 + 7);
    v84 = v8;
    v85 = v9;
    v83 = v7;
    sub_255BEAB68(v87, (v5 + 64));
    v10 = v84;
    *(a1 + 8) = v83;
    *(a1 + 24) = v10;
    *(a1 + 40) = v85;
    *(a1 + 104) = v89;
    v11 = v86;
    *(a1 + 88) = v88;
    v12 = v87[0];
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;
    v13 = *(a1 + 72);
    if (v13)
    {
      free(v13);
    }

    v14 = v87[2];
    *(a1 + 72) = v87[1];
    *(a1 + 80) = v14;
    return;
  }

  if (*(v5 + 5) != 1 || *(a1 + 20) != 1)
  {
    if (!*(v5 + 2))
    {
      return;
    }

    v28 = *(v5 + 3);
    if (!v28)
    {
      return;
    }

    v29 = *(v5 + 4);
    if (!v29)
    {
      return;
    }

    v30 = v28 - 1;
    v31 = *(v5 + 9);
    v32 = 4 * *(v5 + 6);
    v33 = 4 * *(a1 + 24);
    v34 = v29 - 1;
    if (v34)
    {
      v35 = *(a1 + 28);
      v36 = *(v5 + 7);
      if (!v30)
      {
        do
        {
          *v6 = *v31;
          v6[1] = v31[1];
          v31 += v36;
          v6 += v35;
          --v34;
        }

        while (v34);
        goto LABEL_73;
      }

      v37 = 0;
      v38 = v31 + 1;
      v39 = v6 + 1;
      do
      {
        v40 = v39;
        v41 = v38;
        v42 = v30;
        do
        {
          *(v40 - 1) = *(v41 - 1);
          *v40 = *v41;
          v41 = (v41 + v32);
          v40 = (v40 + v33);
          --v42;
        }

        while (v42);
        *(v40 - 1) = *(v41 - 1);
        *v40 = *v41;
        v31 += v36;
        v6 += v35;
        ++v37;
        v38 += v36;
        v39 += v35;
      }

      while (v37 != v34);
    }

    else if (!v30)
    {
LABEL_73:
      *v6 = *v31;
      v6[1] = v31[1];
      return;
    }

    do
    {
      *v6 = *v31;
      v6[1] = v31[1];
      v31 = (v31 + v32);
      v6 = (v6 + v33);
      --v30;
    }

    while (v30);
    goto LABEL_73;
  }

  v43 = *(v5 + 6);
  v44 = *(a1 + 24);
  v45 = *(v5 + 2);
  if (v43 != v44 || v43 != v45)
  {
    v48 = *(v5 + 3);
    v47 = *(v5 + 4);
    if (v45)
    {
      v49 = v48 == 0;
    }

    else
    {
      v49 = 1;
    }

    if (v49 || v47 == 0)
    {
      return;
    }

    v51 = v48 - 1;
    v52 = *(v5 + 9);
    v53 = 4 * v45;
    v54 = 4 * v44;
    v55 = v47 - 1;
    v78 = *(v5 + 6);
    if (v47 != 1)
    {
      v56 = *(a1 + 28);
      v57 = *(v5 + 7);
      if (v48 == 1)
      {
        v76 = 4 * v57;
        v77 = 4 * v56;
        do
        {
          memmove(v6, v52, v53);
          v52 += v76;
          v6 = (v6 + v77);
          --v55;
        }

        while (v55);
      }

      else
      {
        v58 = 0;
        v59 = 4 * v43;
        v79 = 4 * v56;
        v80 = 4 * v57;
        v82 = v47 - 1;
        do
        {
          v60 = v6;
          v61 = v52;
          v62 = v51;
          do
          {
            memmove(v60, v61, v53);
            v61 += v59;
            v60 += v54;
            --v62;
          }

          while (v62);
          memmove(v60, v61, v53);
          v52 += v80;
          v6 = (v6 + v79);
          ++v58;
        }

        while (v58 != v82);
      }
    }

    for (; v51; --v51)
    {
      memmove(v6, v52, v53);
      v52 += 4 * v78;
      v6 = (v6 + v54);
    }

    v70 = v6;
    v68 = v52;
    v69 = v53;
    goto LABEL_79;
  }

  v63 = *(v5 + 7);
  v64 = *(a1 + 28);
  v65 = *(v5 + 3);
  v66 = (v65 * v43);
  if (v63 == v64 && v63 == v66)
  {
    v67 = *(v5 + 4) * v63;
    if (!v67)
    {
      return;
    }

    v68 = *(v5 + 9);
    v69 = 4 * v67;
    v70 = *(a1 + 72);
    goto LABEL_79;
  }

  if (v43)
  {
    if (v65)
    {
      v71 = *(v5 + 4);
      if (v71)
      {
        v72 = *(v5 + 9);
        v73 = v71 - 1;
        if (v71 != 1)
        {
          if (!v66)
          {
            return;
          }

          v74 = 4 * v63;
          v75 = 4 * v64;
          do
          {
            memmove(v6, v72, 4 * v66);
            v72 += v74;
            v6 = (v6 + v75);
            --v73;
          }

          while (v73);
        }

        if (v66)
        {
          v69 = 4 * v66;
          v70 = v6;
          v68 = v72;
LABEL_79:

          memmove(v70, v68, v69);
        }
      }
    }
  }
}

void sub_255BD0738(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD0A38(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD0D38(uint64_t result)
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

void sub_255BD0D74(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD0E88(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBD20, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 9);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AF2C3C(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF46D4(a1 + 8, v5 + 2);
}

void sub_255BD1170(uint64_t a1, int a2)
{
  if (a2 == 9)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD1470(uint64_t a1, int a2)
{
  if (a2 == 9)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD1770(uint64_t result)
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

void sub_255BD17AC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD18C0(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC0C8, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 10);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AF42D4(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF4A7C(a1 + 8, v5 + 2);
}

void sub_255BD1BA8(uint64_t a1, int a2)
{
  if (a2 == 10)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD1EA8(uint64_t a1, int a2)
{
  if (a2 == 10)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD21A8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_255BD2310(uint64_t a1)
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

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

void sub_255BD2478(uint64_t a1)
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

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

double sub_255BD26BC(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC0B0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 11);
    v7 = *(v20 + 16);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = *(v20 + 32);
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        *&result = sub_255BF5AB4(v19, &v20);
        return result;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF4E80(a1 + 8, v5 + 2);
  return result;
}

void sub_255BD29A4(uint64_t a1, int a2)
{
  if (a2 == 11)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD2CA4(uint64_t a1, int a2)
{
  if (a2 == 11)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD2FA4(uint64_t result)
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

void sub_255BD2FE0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

char **sub_255BD30F4(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC098, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 12);
    v7 = *(v20 + 16);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = *(v20 + 32);
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        return sub_255BF68F4(v19, &v20);
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  return sub_255BF64F0(a1 + 8, v5 + 2);
}

void sub_255BD33DC(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD36DC(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD39DC(uint64_t result)
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

void sub_255BD3A18(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD3B2C(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC080, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 13);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AF328C(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF6C84(a1 + 8, v5 + 2);
}

void sub_255BD3E14(uint64_t a1, int a2)
{
  if (a2 == 13)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD4114(uint64_t a1, int a2)
{
  if (a2 == 13)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD4414(uint64_t result)
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

void sub_255BD4450(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD4564(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC068, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 14);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AC5844(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF7054(a1 + 8, v5 + 2);
}

void sub_255BD484C(uint64_t a1, int a2)
{
  if (a2 == 14)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD4B4C(uint64_t a1, int a2)
{
  if (a2 == 14)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD4E4C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 84))
  {
    v3 = *(a1 + 80) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 88);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 100) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 64);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_255BD4FB4(uint64_t a1)
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

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

void sub_255BD511C(uint64_t a1)
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

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

double sub_255BD5360(uint64_t a1, uint64_t *lpsrc)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC050, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v22, lpsrc, 15);
    v8 = *(v22 + 16);
    v7 = *(v22 + 32);
    v20[0] = *v22;
    v20[1] = v8;
    v20[2] = v7;
    *&v22 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v18 = qword_27F7DD608, v17 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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
        *&result = sub_255AF67EC(v21);
        return result;
      }
    }

    else
    {
      v18 = qword_27F7DD608;
      v17 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF7480(a1 + 8, v5 + 2);
  return result;
}

void sub_255BD5650(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD5950(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD5C50(uint64_t result)
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

void sub_255BD5C8C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD5DA0(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC038, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 16);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255ACE404(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF80DC(a1 + 8, v5 + 2);
}

void sub_255BD6088(uint64_t a1, int a2)
{
  if (a2 == 16)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD6388(uint64_t a1, int a2)
{
  if (a2 == 16)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD6688(uint64_t result)
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

void sub_255BD66C4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD67D8(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC020, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 17);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AF2C3C(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF46D4(a1 + 8, v5 + 2);
}

void sub_255BD6AC0(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD6DC0(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD70C0(uint64_t result)
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

void sub_255BD70FC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD7210(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CC008, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 18);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AF42D4(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF4A7C(a1 + 8, v5 + 2);
}

void sub_255BD74F8(uint64_t a1, int a2)
{
  if (a2 == 18)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD77F8(uint64_t a1, int a2)
{
  if (a2 == 18)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD7AF8(uint64_t a1)
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

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

void sub_255BD7C60(uint64_t a1)
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

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

double sub_255BD7EA4(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBFF0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 19);
    v7 = *(v20 + 16);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = *(v20 + 32);
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        *&result = sub_255BF5AB4(v19, &v20);
        return result;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF4E80(a1 + 8, v5 + 2);
  return result;
}

void sub_255BD818C(uint64_t a1, int a2)
{
  if (a2 == 19)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD848C(uint64_t a1, int a2)
{
  if (a2 == 19)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD878C(uint64_t result)
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

void sub_255BD87C8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

char **sub_255BD88DC(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBFC0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 20);
    v7 = *(v20 + 16);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = *(v20 + 32);
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        return sub_255BF68F4(v19, &v20);
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  return sub_255BF64F0(a1 + 8, v5 + 2);
}

void sub_255BD8BC4(uint64_t a1, int a2)
{
  if (a2 == 20)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD8EC4(uint64_t a1, int a2)
{
  if (a2 == 20)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD91C4(uint64_t result)
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

void sub_255BD9200(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD9314(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBFA8, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 21);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AF2C3C(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF46D4(a1 + 8, v5 + 2);
}

void sub_255BD95FC(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BD98FC(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BD9BFC(uint64_t result)
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

void sub_255BD9C38(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x259C49320);
}

void sub_255BD9D4C(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBF90, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 22);
    v7 = *(v20 + 16);
    v6 = *(v20 + 32);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = v6;
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        sub_255AF42D4(v19, &v20);
        return;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF4A7C(a1 + 8, v5 + 2);
}

void sub_255BDA034(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_255BDA334(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_255BDA634(uint64_t a1)
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

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if ((byte_27F7DD630 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

void sub_255BDA79C(uint64_t a1)
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

    JUMPOUT(0x259C49320);
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_27F7DD608;
    v6 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
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
  if (byte_27F7DD630)
  {
LABEL_15:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
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

double sub_255BDA9E0(uint64_t a1, uint64_t *lpsrc)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2867CC0F0, &unk_2867CBF78, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v20, lpsrc, 23);
    v7 = *(v20 + 16);
    v19[0] = *v20;
    v19[1] = v7;
    v19[2] = *(v20 + 32);
    *&v20 = 0;
    MEMORY[0x259C49320]();
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
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v17 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_18:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v8 = v18;
LABEL_19:
        *&v20 = v8;
        *(&v20 + 1) = v13;
        v21 = v14;
        v22 = v15;
        v23 = HIDWORD(v11);
        v24 = v12;
        v25 = v11;
        *&result = sub_255BF5AB4(v19, &v20);
        return result;
      }
    }

    else
    {
      v17 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
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
    if (byte_27F7DD630)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  sub_255BF4E80(a1 + 8, v5 + 2);
  return result;
}

void sub_255BDACC8(uint64_t a1, int a2)
{
  if (a2 == 23)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v8 = *(a1 + 32) == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(a1 + 32);
    if (v8)
    {
      HIDWORD(v9) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v9) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v10 = qword_27F7DD608, v11 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_23:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v10 = qword_27F7DD608;
      v11 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v13 = *v10;
      v12 = *(v10 + 8);
      v10 += 16;
      v13(v12, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v10 != v11);
    if (byte_27F7DD630)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, &unk_255C2500B, 0, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1 || (v4 = qword_27F7DD608, v5 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
    {
LABEL_9:
      qword_27F7DD620(*algn_27F7DD628, "F == format", 11, &unk_255C2500B, 0);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_27F7DD608;
    v5 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "F == format", 11, &unk_255C2500B, 0);
  }

  while (v4 != v5);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}