uint64_t sub_195272188(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  if (v2 > a2)
  {
    return 1;
  }

  v5 = (a2 & 0xFFFFFE00) + 512;
  v6 = v2 >> 4;
  v7 = v5 >> 4;
  if (v7 > *(a1 + 8))
  {
    result = malloc_type_malloc(0x44000uLL, 0x100004052888210uLL);
    if (!result)
    {
      return result;
    }

    v8 = result;
    memcpy(result, *a1, 4 * v6);
    free(*a1);
    *a1 = v8;
    *(a1 + 8) = 69632;
  }

  v9 = v6;
  do
  {
    *(a1 + v9 + 64) = 0;
    *(*a1 + 4 * v9++) = *(a1 + 40);
  }

  while (v9 < v7);
  *(a1 + 48) = v5;
  return 1;
}

float32x4_t sub_195272264(void *a1, int a2)
{
  v4 = a1 + 8;
  v5 = a2;
  if (*(a1 + a2 + 64) != 1)
  {
    if (a2 > 4095)
    {
      v14 = sub_195272360(a1, 16);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = (*a1 + 4 * v5);
        result = vld1q_dup_f32(v15);
        v16 = (a1[2] + 4 * v14);
        *v16 = result;
        v16[1] = result;
        v16[2] = result;
        v16[3] = result;
        *(v4 + v5) = 1;
        *(*a1 + 4 * v5) = v14;
      }
    }

    else
    {
      v6 = sub_195272360(a1, 64);
      if ((v6 & 0x80000000) == 0)
      {
        v8 = (a2 & 0xFFFFFFFC);
        v9 = *a1;
        v10 = 4 * v6;
        do
        {
          v11 = (v9 + 4 * v8);
          result = vld1q_dup_f32(v11);
          v12 = (a1[2] + v10);
          *v12 = result;
          v12[1] = result;
          v12[2] = result;
          v12[3] = result;
          *(v4 + v8) = 1;
          v9 = *a1;
          *(*a1 + 4 * v8) = v6;
          v10 += 64;
          v6 += 16;
        }

        while (v8++ < (a2 | 3));
      }
    }
  }

  return result;
}

uint64_t sub_195272360(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = v4 + a2;
  if (v4 + a2 <= v3)
  {
    goto LABEL_8;
  }

  if (v3 >= 0x20000)
  {
    if (HIWORD(v3) > 0x10u)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 1114112;
  }

  else
  {
    v6 = 0x20000;
  }

  v7 = malloc_type_malloc((4 * v6), 0x100004052888210uLL);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  memcpy(v7, *(a1 + 16), 4 * *(a1 + 28));
  free(*(a1 + 16));
  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
LABEL_8:
  *(a1 + 28) = v5;
  return v4;
}

uint64_t sub_195272410(uint64_t a1, int a2, int a3)
{
  v5 = a2 - a3;
  if (a2 - a3 > 4094)
  {
    if (v5 > 0x7FFE)
    {
      if (v5 > 0x1FFFE)
      {
        *(a1 + 16) = 0x1FFFFF00000015;
        v6 = 1500007;
      }

      else
      {
        *(a1 + 16) = 0x1FFFF00000011;
        v6 = 200003;
      }
    }

    else
    {
      *(a1 + 16) = 0x7FFF0000000FLL;
      v6 = 50021;
    }
  }

  else
  {
    *(a1 + 16) = 0xFFF0000000CLL;
    v6 = 6007;
  }

  v7 = *(a1 + 8);
  result = *a1;
  if (v6 <= v7)
  {
    v9 = (4 * v6);
  }

  else
  {
    free(result);
    v9 = (4 * v6);
    result = malloc_type_malloc(v9, 0x100004052888210uLL);
    *a1 = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 8) = v6;
  }

  *(a1 + 12) = v6;
  bzero(result, v9);
  *(a1 + 24) = a3;
  return 1;
}

uint64_t sub_19527250C(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 24);
  if (a3 >= v4)
  {
    v5 = a3 - v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = a4 - v4;
  if (v5 <= a4 - v4)
  {
    v8 = result;
    do
    {
      v9 = v5;
      v10 = *(v8 + 24) + v5++;
      v11 = *(a2 + 4 * v9);
      v12 = v5;
      do
      {
        v11 = *(a2 + 4 * v12++) + 37 * v11;
      }

      while (v12 < v10);
      result = sub_1952725D0(v8, a2, a2, v9, v11);
      if ((result & 0x80000000) != 0)
      {
        *(*v8 + 4 * ~result) = (v11 << *(v8 + 16)) | v5;
      }
    }

    while (v5 <= v6);
  }

  return result;
}

uint64_t sub_1952725D0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 12);
  v6 = a5 % (v5 - 1) + 1;
  v7 = *(*a1 + 4 * v6);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = (a3 + 4 * a4);
    v10 = a5 % (v5 - 1) + 1;
    do
    {
      if ((v7 & ~v8) == a5 << *(a1 + 16))
      {
        v11 = *(a1 + 24);
        if (v11 < 1)
        {
          if (!v11)
          {
            return v10;
          }
        }

        else
        {
          v12 = (a2 + 4 * ((v8 & v7) - 1));
          v13 = v11 + 1;
          for (i = v9; *v12 == *i; ++i)
          {
            ++v12;
            if (--v13 <= 1)
            {
              return v10;
            }
          }
        }
      }

      v10 = ((v10 + v6) % v5);
      v7 = *(*a1 + 4 * v10);
    }

    while (v7);
  }

  else
  {
    LODWORD(v10) = a5 % (v5 - 1) + 1;
  }

  return ~v10;
}

uint64_t sub_195272684(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(result + 24);
  if (a4 - v5 >= a3)
  {
    v6 = a4 - v5 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = a5 - v5;
  if (v6 <= a5 - v5)
  {
    v9 = result;
    do
    {
      v10 = v6;
      v11 = *(v9 + 24) + v6++;
      v12 = *(a2 + 2 * v10);
      v13 = v6;
      do
      {
        v12 = *(a2 + 2 * v13++) + 37 * v12;
      }

      while (v13 < v11);
      result = sub_1952728C4(v9, a2, a2, v10, v12);
      if ((result & 0x80000000) != 0)
      {
        *(*v9 + 4 * ~result) = (v12 << *(v9 + 16)) | v6;
      }
    }

    while (v6 <= v7);
  }

  return result;
}

uint64_t sub_19527274C(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 6);
  v5 = (a3 + 4 * a4);
  v6 = *v5;
  v7 = a4 + 1;
  do
  {
    v6 = *(a3 + 4 * v7++) + 37 * v6;
  }

  while (v7 < v4 + a4);
  v8 = *(a1 + 3);
  v9 = v6 % (v8 - 1) + 1;
  v10 = *a1;
  v11 = *(*a1 + 4 * v9);
  if (v11)
  {
    v12 = *(a1 + 5);
    v13 = v6 << *(a1 + 4);
    v14 = v6 % (v8 - 1) + 1;
    do
    {
      if ((v11 & ~v12) == v13)
      {
        if (v4 < 1)
        {
          if (!v4)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v15 = (a2 + 2 * ((v11 & v12) - 1));
          v16 = v4 + 1;
          v17 = v5;
          while (*v17 == *v15)
          {
            ++v15;
            ++v17;
            if (--v16 <= 1)
            {
              goto LABEL_16;
            }
          }
        }
      }

      v14 = (v14 + v9) % v8;
      v11 = *(v10 + 4 * v14);
    }

    while (v11);
  }

  else
  {
    v14 = v6 % (v8 - 1) + 1;
  }

  v14 = ~v14;
LABEL_16:
  if (v14 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ((*(a1 + 5) & *(v10 + 4 * v14)) - 1);
  }
}

uint64_t sub_19527284C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a3 + 2 * a4);
  v6 = a4 + 1;
  do
  {
    v5 = *(a3 + 2 * v6++) + 37 * v5;
  }

  while (v6 < *(a1 + 24) + a4);
  v7 = sub_1952728C4(a1, a2, a3, a4, v5);
  if ((v7 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ((*(a1 + 20) & *(*a1 + 4 * v7)) - 1);
  }
}

uint64_t sub_1952728C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v5 = *(a1 + 12);
  v6 = a5 % (v5 - 1) + 1;
  v7 = *(*a1 + 4 * v6);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = (a3 + 2 * a4);
    v10 = a5 % (v5 - 1) + 1;
    do
    {
      if ((v7 & ~v8) == a5 << *(a1 + 16))
      {
        v11 = *(a1 + 24);
        if (v11 < 1)
        {
          if (!v11)
          {
            return v10;
          }
        }

        else
        {
          v12 = (a2 + 2 * ((v8 & v7) - 1));
          v13 = v11 + 1;
          for (i = v9; *v12 == *i; ++i)
          {
            ++v12;
            if (--v13 <= 1)
            {
              return v10;
            }
          }
        }
      }

      v10 = ((v10 + v6) % v5);
      v7 = *(*a1 + 4 * v10);
    }

    while (v7);
  }

  else
  {
    LODWORD(v10) = a5 % (v5 - 1) + 1;
  }

  return ~v10;
}

unint64_t icu::UMutex::getMutex(icu::UMutex *this)
{
  explicit = atomic_load_explicit(this + 8, memory_order_acquire);
  if (!explicit)
  {
    if (atomic_load_explicit(&qword_1ED4429C0, memory_order_acquire) != -1)
    {
      v6 = &v7;
      v7 = sub_195272A5C;
      std::__call_once(&qword_1ED4429C0, &v6, sub_195272D44);
    }

    v3 = qword_1ED4429B0;
    std::mutex::lock(qword_1ED4429B0);
    v4 = (this + 64);
    explicit = atomic_load_explicit(this + 8, memory_order_acquire);
    if (!explicit)
    {
      *this = 850045863;
      *(this + 8) = 0u;
      *(this + 24) = 0u;
      *(this + 40) = 0u;
      *(this + 7) = 0;
      atomic_store(this, v4);
      explicit = atomic_load(v4);
      *(this + 9) = icu::UMutex::gListHead;
      icu::UMutex::gListHead = this;
    }

    std::mutex::unlock(v3);
  }

  return explicit;
}

void sub_195272A5C()
{
  qword_1ED4429C8 = 850045863;
  *algn_1ED4429D0 = 0u;
  *&algn_1ED4429D0[16] = 0u;
  *&algn_1ED4429D0[32] = 0u;
  qword_1ED4429B0 = &qword_1ED4429C8;
  qword_1ED442A00 = 0;
  qword_1ED442A08 = 1018212795;
  unk_1ED442A10 = 0u;
  unk_1ED442A20 = 0u;
  qword_1ED442A30 = 0;
  qword_1ED4429B8 = &qword_1ED442A08;
  sub_1952376A4(29, sub_195272D08);
}

void icu::UMutex::cleanup(icu::UMutex *this)
{
  v1 = icu::UMutex::gListHead;
  if (icu::UMutex::gListHead)
  {
    do
    {
      v2 = atomic_load((v1 + 64));
      std::mutex::~mutex(v2);
      atomic_store(0, (v1 + 64));
      v3 = *(v1 + 72);
      *(v1 + 72) = 0;
      v1 = v3;
    }

    while (v3);
  }

  icu::UMutex::gListHead = 0;
}

void umtx_lock(atomic_ullong *a1)
{
  if (!a1)
  {
    a1 = &unk_1ED442A38;
  }

  sub_195272B34(a1);
}

void sub_195272B34(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 8, memory_order_acquire);
  if (explicit)
  {
  }

  else
  {
    explicit = icu::UMutex::getMutex(this);
  }

  std::mutex::lock(explicit);
}

void umtx_unlock(std::mutex **a1)
{
  v1 = &unk_1ED442A38;
  if (a1)
  {
    v1 = a1;
  }

  std::mutex::unlock(v1[8]);
}

uint64_t icu::umtx_initImplPreInit(atomic_uint *a1)
{
  if (atomic_load_explicit(&qword_1ED4429C0, memory_order_acquire) != -1)
  {
    __lk.__m_ = sub_195272A5C;
    p_lk = &__lk;
    std::__call_once(&qword_1ED4429C0, &p_lk, sub_195272D44);
  }

  __lk.__m_ = qword_1ED4429B0;
  v2 = 1;
  *&__lk.__owns_ = 1;
  std::mutex::lock(qword_1ED4429B0);
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    while (atomic_load_explicit(a1, memory_order_acquire) == 1)
    {
      std::condition_variable::wait(qword_1ED4429B8, &__lk);
    }

    v2 = 0;
  }

  else
  {
    atomic_store(1u, a1);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v2;
}

void icu::umtx_initImplPostInit(unsigned int *a1)
{
  v2 = qword_1ED4429B0;
  std::mutex::lock(qword_1ED4429B0);
  atomic_store(2u, a1);
  std::mutex::unlock(v2);
  v3 = qword_1ED4429B8;

  std::condition_variable::notify_all(v3);
}

void u_setMutexFunctions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 <= 0)
  {
    *a6 = 16;
  }
}

void u_setAtomicIncDecFunctions(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    *a4 = 16;
  }
}

uint64_t sub_195272D08()
{
  std::mutex::~mutex(qword_1ED4429B0);
  std::condition_variable::~condition_variable(qword_1ED4429B8);
  icu::UMutex::cleanup(v0);
  qword_1ED4429C0 = 0;
  return 1;
}

int32_t u_charName(UChar32 code, UCharNameChoice nameChoice, char *buffer, int32_t bufferLength, UErrorCode *pErrorCode)
{
  if (!pErrorCode || *pErrorCode > 0)
  {
    return 0;
  }

  v6 = *&nameChoice;
  if (nameChoice > U_CHAR_NAME_ALIAS || bufferLength < 0 || !buffer && bufferLength)
  {
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  if (HIWORD(code) > 0x10u)
  {
    goto LABEL_16;
  }

  if (atomic_load_explicit(&dword_1EAEC9A64, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9A64))
  {
    sub_195275248(pErrorCode);
    dword_1EAEC9A68 = *pErrorCode;
    icu::umtx_initImplPostInit(&dword_1EAEC9A64);
    goto LABEL_15;
  }

  if (dword_1EAEC9A68 < 1)
  {
LABEL_15:
    if (*pErrorCode >= 1)
    {
      goto LABEL_16;
    }

    v14 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 12));
    v15 = *v14;
    if (*v14)
    {
      v16 = (v14 + 1);
      while (*v16 > code || *(v16 + 4) < code)
      {
        v16 += *(v16 + 10);
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      v17 = sub_195272F20(v16, code, v6, buffer, bufferLength);
    }

    else
    {
LABEL_25:
      if (v6 == 2)
      {
        v13 = sub_1952730AC(qword_1EAEC9A38, code, 2, buffer, bufferLength);
        if (v13)
        {
LABEL_31:
          v11 = buffer;
          v12 = bufferLength;
          goto LABEL_17;
        }

        v17 = sub_1952731FC(code, buffer, bufferLength);
      }

      else
      {
        v17 = sub_1952730AC(qword_1EAEC9A38, code, v6, buffer, bufferLength);
      }
    }

    v13 = v17;
    goto LABEL_31;
  }

  *pErrorCode = dword_1EAEC9A68;
LABEL_16:
  v11 = buffer;
  v12 = bufferLength;
  v13 = 0;
LABEL_17:

  return u_terminateChars(v11, v12, v13, pErrorCode);
}

uint64_t sub_195272F20(uint64_t a1, unsigned int a2, int a3, _BYTE *a4, int a5)
{
  v5 = a4;
  v22[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFD) != 0)
  {
LABEL_2:
    v6 = 0;
    if (a5)
    {
      *a4 = 0;
    }

    return v6;
  }

  if (*(a1 + 8) == 1)
  {
    v22[0] = 0;
    v22[1] = 0;
    v11 = *(a1 + 9);
    v12 = (a1 + 12 + 2 * v11);
    v15 = *v12;
    v13 = v12 + 1;
    v14 = v15;
    if (v15)
    {
      v16 = 0;
      do
      {
        if (a5)
        {
          *v5++ = v14;
          LOWORD(a5) = a5 - 1;
        }

        else
        {
          LOWORD(a5) = 0;
        }

        ++v16;
        v17 = *v13++;
        v14 = v17;
      }

      while (v17);
    }

    else
    {
      v16 = 0;
    }

    return (sub_1952753A0(a1 + 12, v11, v13, a2 - *a1, v22, 0, 0, v5, a5) + v16);
  }

  else
  {
    if (*(a1 + 8))
    {
      goto LABEL_2;
    }

    v7 = *(a1 + 12);
    if (v7)
    {
      v8 = 0;
      v9 = (a1 + 13);
      do
      {
        if (a5)
        {
          *v5++ = v7;
          LOWORD(a5) = a5 - 1;
        }

        else
        {
          LOWORD(a5) = 0;
        }

        ++v8;
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
    }

    else
    {
      v8 = 0;
    }

    v18 = *(a1 + 9);
    if (v18 < a5)
    {
      v5[v18] = 0;
    }

    if (v18)
    {
      v19 = v18 - 1;
      do
      {
        if (v19 < a5)
        {
          if ((a2 & 0xF) >= 0xA)
          {
            v20 = (a2 & 0xF) + 55;
          }

          else
          {
            v20 = a2 & 0xF | 0x30;
          }

          v5[v19] = v20;
        }

        a2 >>= 4;
        --v19;
      }

      while (v19 != -1);
    }

    return (v8 + v18);
  }
}

uint64_t sub_1952730AC(unsigned int *a1, unsigned int a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v10 = sub_195275494(a1, a2);
  if (*v10 == (a2 >> 5))
  {
    v11 = a2 & 0x1F;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v12 = sub_19527519C(a1 + a1[2] + ((v10[1] << 16) | v10[2]), v18, v16);
    v13 = *(v16 + v11);
    v14 = &v12[*(v18 + v11)];

    return sub_195275500(a1, v14, v13, v7, a4, v5);
  }

  else
  {
    if (v5)
    {
      *a4 = 0;
    }

    return 0;
  }
}

uint64_t sub_1952731FC(unsigned int a1, char *a2, int a3)
{
  v5 = a1;
  v6 = sub_195273954(a1);
  if (v6 <= 0x20)
  {
    v7 = off_1E740B708[v6];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = "unknown";
    if (a3)
    {
LABEL_3:
      *a2++ = 60;
      v8 = a3 - 1;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v11 = *v7;
  v9 = v7 - 1;
  v10 = v11;
  if (v11)
  {
    v12 = 1;
    do
    {
      v13 = v12;
      if (v8)
      {
        *a2++ = v10;
        --v8;
      }

      else
      {
        v8 = 0;
      }

      ++v12;
      v10 = v9[(v13 + 1)];
    }

    while (v10);
    v14 = v13 + 3;
  }

  else
  {
    v14 = 3;
  }

  if (v8)
  {
    *a2++ = 45;
    v15 = v8 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  if (v5)
  {
    v17 = v5;
    do
    {
      ++v16;
      v18 = v17 > 0xF;
      v17 >>= 4;
    }

    while (v18);
  }

  if (v16 <= 4)
  {
    v16 = 4;
  }

  if ((v16 > 0 || v5 != 0) && v15 != 0)
  {
    v21 = v16;
    do
    {
      if ((v5 & 0xFu) >= 0xA)
      {
        v22 = (v5 & 0xF) + 55;
      }

      else
      {
        v22 = v5 & 0xF | 0x30;
      }

      a2[v21 - 1] = v22;
      --v15;
      if (v21 < 2 && v5 < 0x10)
      {
        break;
      }

      --v21;
      v5 >>= 4;
    }

    while (v15);
  }

  if (v15)
  {
    a2[v16] = 62;
  }

  return (v14 + v16);
}

int32_t u_getISOComment(UChar32 c, char *dest, int32_t destCapacity, UErrorCode *pErrorCode)
{
  if (!pErrorCode || *pErrorCode > 0)
  {
    return 0;
  }

  if (destCapacity < 0 || !dest && destCapacity)
  {
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  return u_terminateChars(dest, destCapacity, 0, pErrorCode);
}

UChar32 u_charFromName(UCharNameChoice nameChoice, const char *name, UErrorCode *pErrorCode)
{
  v70 = *MEMORY[0x1E69E9840];
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  if (!pErrorCode || *pErrorCode > 0)
  {
    return 0xFFFF;
  }

  v4 = *&nameChoice;
  v5 = U_ILLEGAL_ARGUMENT_ERROR;
  if (nameChoice > U_CHAR_NAME_ALIAS || !name || !*name)
  {
    goto LABEL_81;
  }

  v57 = 0;
  v58 = 0;
  if (atomic_load_explicit(&dword_1EAEC9A64, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9A64))
  {
    v5 = dword_1EAEC9A68;
    if (dword_1EAEC9A68 > 0)
    {
LABEL_81:
      *pErrorCode = v5;
      return 0xFFFF;
    }
  }

  else
  {
    sub_195275248(pErrorCode);
    dword_1EAEC9A68 = *pErrorCode;
    icu::umtx_initImplPostInit(&dword_1EAEC9A64);
  }

  if (*pErrorCode > 0)
  {
    return 0xFFFF;
  }

  v7 = 0;
  while (1)
  {
    v8 = name[v7];
    if (!v8)
    {
      break;
    }

    *(v61 + v7) = uprv_toupper(name[v7]);
    *(v59 + v7++) = uprv_asciitolower(v8);
    if (v7 == 120)
    {
      goto LABEL_80;
    }
  }

  *(v59 + v7) = 0;
  *(v61 + v7) = 0;
  if (LOBYTE(v59[0]) == 60)
  {
    if (v4 == 2)
    {
      v9 = v7 - 1;
      if (*(v59 + (v7 - 1)) == 62)
      {
        if (v9 < 3)
        {
          if (v7 != 3)
          {
            goto LABEL_80;
          }

          v11 = 2;
        }

        else
        {
          v10 = v9 - 1;
          v11 = v7 - 1;
          do
          {
            --v11;
            v12 = *(v59 + v10) != 45 && v10 > 2;
            --v10;
          }

          while (v12);
        }

        if (*(v59 + v11) == 45 && v7 - v11 - 3 <= 7)
        {
          v29 = 0;
          *(v59 + v11) = 0;
          v48 = v11 + 1;
          v49 = v9 <= v11 + 1 ? v11 + 1 : v7 - 1;
          while (v48 < v9)
          {
            v50 = *(v59 + v48);
            if ((v50 - 48) >= 0xA)
            {
              if ((v50 - 97) > 5)
              {
                goto LABEL_80;
              }

              v51 = -87;
            }

            else
            {
              v51 = -48;
            }

            v29 = v51 + 16 * v29 + v50;
            ++v48;
            v5 = U_ILLEGAL_CHAR_FOUND;
            if (v29 >= 1114112)
            {
              goto LABEL_81;
            }
          }

          v52 = sub_195273954(v29);
          v53 = 0;
          *(v59 + v49) = 0;
          while (strcmp(v59 + 1, off_1E740B708[v53]))
          {
            ++v53;
            v5 = U_ILLEGAL_CHAR_FOUND;
            if (v53 == 33)
            {
              goto LABEL_81;
            }
          }

          if (v53 == v52)
          {
            return v29;
          }
        }
      }
    }

LABEL_80:
    v5 = U_ILLEGAL_CHAR_FOUND;
    goto LABEL_81;
  }

  v13 = qword_1EAEC9A38;
  v14 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 12));
  v15 = *v14;
  if (!*v14)
  {
    goto LABEL_79;
  }

  v16 = v14 + 1;
  v17 = v4 & 0xFFFFFFFD;
  v18 = 0uLL;
  do
  {
    if (v17)
    {
      goto LABEL_28;
    }

    if (*(v16 + 8) == 1)
    {
      v68 = v18;
      v69 = v18;
      *__s2 = v18;
      v67 = v18;
      v65[0] = 0;
      v65[1] = 0;
      v64[2] = v18;
      v64[3] = v18;
      v64[0] = v18;
      v64[1] = v18;
      v63[2] = v18;
      v63[3] = v18;
      v63[0] = v18;
      v63[1] = v18;
      v23 = v16 + 3;
      v24 = *(v16 + 9);
      v25 = v16 + 2 * v24 + 13;
      v26 = v61;
      while (1)
      {
        v27 = *(v25 - 1);
        if (!*(v25 - 1))
        {
          break;
        }

        ++v25;
        v28 = *v26++;
        if (v27 != v28)
        {
          v29 = 0xFFFF;
          goto LABEL_77;
        }
      }

      v29 = *v16;
      v55 = v16[1];
      v56 = v15;
      sub_1952753A0((v16 + 3), v24, v25, 0, v65, v64, v63, __s2, 64);
      if (!strcmp(v26, __s2))
      {
        v15 = v56;
        v17 = v54;
        v18 = 0uLL;
      }

      else
      {
        ++v29;
        v18 = 0uLL;
        if (v29 >= v55 + 1)
        {
LABEL_69:
          v15 = v56;
          v17 = v54;
          goto LABEL_28;
        }

        v34 = (v24 - 1);
        while (1)
        {
          v35 = *(v65 + v34) + 1;
          v36 = (v24 - 1);
          v37 = v24 - 1;
          if (*(v23 + v34) <= v35)
          {
            do
            {
              *(v65 + v36) = 0;
              *(v63 + v36) = *(v64 + v36);
              v36 = --v37;
              v35 = *(v65 + v37) + 1;
            }

            while (*(v23 + v37) <= v35);
          }

          *(v65 + v36) = v35;
          v38 = *(v63 + v36);
            ;
          }

          *(v63 + v36) = v38;
          v40 = v26;
          if (!v24)
          {
            goto LABEL_108;
          }

          v41 = 0;
          v40 = v26;
          do
          {
            v42 = *(v63 + v41);
            while (1)
            {
              v43 = *v42;
              if (!*v42)
              {
                break;
              }

              v44 = *v40++;
              v45 = v43 == v44;
              if (v43 == v44)
              {
                ++v42;
              }

              else
              {
                v42 = "";
              }

              if (!v45)
              {
                v41 = 99;
              }
            }

            ++v41;
          }

          while (v24 > v41);
          if (v41 <= 0x62u)
          {
LABEL_108:
            if (!*v40)
            {
              break;
            }
          }

          v45 = v29++ == v55;
          if (v45)
          {
            goto LABEL_69;
          }
        }

        v15 = v56;
        v17 = v54;
      }
    }

    else
    {
      if (*(v16 + 8))
      {
        goto LABEL_28;
      }

      v19 = v16 + 3;
      v20 = v61;
      while (1)
      {
        v21 = *v19;
        if (!*v19)
        {
          break;
        }

        ++v19;
        v22 = *v20++;
        if (v21 != v22)
        {
          goto LABEL_28;
        }
      }

      if (*(v16 + 9))
      {
        v29 = 0;
        v30 = (*(v16 + 9) - 1) + 1;
        do
        {
          v32 = *v20++;
          v31 = v32;
          if ((v32 - 48) >= 0xA)
          {
            if ((v31 - 65) > 5)
            {
              goto LABEL_28;
            }

            v33 = -55;
          }

          else
          {
            v33 = -48;
          }

          v29 = (v33 + v31) | (16 * v29);
          --v30;
        }

        while (v30);
      }

      else
      {
        v29 = 0;
      }

      if (*v20 || *v16 > v29 || v29 > v16[1])
      {
        goto LABEL_28;
      }
    }

LABEL_77:
    if (v29 != 0xFFFF)
    {
      return v29;
    }

LABEL_28:
    v16 = (v16 + *(v16 + 5));
    --v15;
  }

  while (v15);
  v13 = qword_1EAEC9A38;
LABEL_79:
  v57 = v61;
  LODWORD(v58) = 0xFFFF;
  sub_1952739D4(v13, 0, 1114112, 0, &v57, v4);
  v29 = v58;
  if (v58 == 0xFFFF)
  {
    goto LABEL_80;
  }

  return v29;
}

uint64_t sub_195273954(unsigned int c)
{
  if (c >= 64976 && (c >> 4 < 0xFDF || HIWORD(c) <= 0x10u && (c & 0xFFFE) == 0xFFFE))
  {
    return 30;
  }

  else
  {
    v3 = u_charType(c);
    if (c >> 10 == 54)
    {
      v2 = 31;
    }

    else
    {
      v2 = 32;
    }

    if (v3 != 18)
    {
      return v3;
    }
  }

  return v2;
}

uint64_t sub_1952739D4(unsigned int *a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = sub_195275494(a1, a2);
  v13 = v12;
  v14 = (a2 >> 5);
  v15 = a2;
  if (a6 == 2)
  {
    v16 = *v12;
    v15 = a2;
    if (v14 < v16)
    {
      v17 = 32 * v16;
      v15 = v17 >= a3 ? a3 : v17;
      result = sub_19527567C(a2, v15 - 1, a4, a5);
      if (!result)
      {
        return result;
      }
    }
  }

  v19 = a3 - 1;
  v20 = (a3 - 1) >> 5;
  if (v14 == v20)
  {
    if (*v13 == (a2 >> 5))
    {
      v21 = a1;
      v22 = v13;
      v23 = v15;
LABEL_37:

      return sub_195275760(v21, v22, v23, a3 - 1, a4, a5, a6);
    }

    if (a6 != 2)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v24 = a1 + 6 * *(a1 + a1[1]) + a1[1] + 2;
  v25 = *v13;
  if (v14 == v25)
  {
    if ((v15 & 0x1F) != 0)
    {
      result = sub_195275760(a1, v13, v15, (32 * v14) | 0x1F, a4, a5, a6);
      if (!result)
      {
        return result;
      }

      v13 += 3;
      v20 = (a3 - 1) >> 5;
    }
  }

  else if (v14 > v25)
  {
    v13 += 3;
    if (v13 < v24 && a6 == 2)
    {
      v26 = *v13;
      if (v14 < v26)
      {
        v27 = 32 * v26;
        if (v27 >= a3)
        {
          v27 = a3;
        }

        result = sub_19527567C(v15, v27 - 1, a4, a5);
        v20 = v19 >> 5;
        if (!result)
        {
          return result;
        }
      }
    }
  }

  if (v13 >= v24)
  {
LABEL_40:
    result = 1;
    if (a6 != 2 || v13 != v24)
    {
      return result;
    }

    v34 = 32 * *(v13 - 3) + 32;
    if (v34 <= v15)
    {
      v15 = v15;
    }

    else
    {
      v15 = v34;
    }

LABEL_45:
    if (a3 >= 1114112)
    {
      v35 = 1114112;
    }

    else
    {
      v35 = a3;
    }

    return sub_19527567C(v15, v35 - 1, a4, a5);
  }

  v28 = (v19 >> 5);
  v29 = *v13;
  if (v28 <= v29)
  {
LABEL_35:
    if (v29 == v20)
    {
      v23 = v19 & 0xFFFFFFE0;
      v21 = a1;
      v22 = v13;
      goto LABEL_37;
    }

    goto LABEL_40;
  }

  v36 = v20;
  v13 += 3;
  while (1)
  {
    LODWORD(v15) = 32 * v29;
    result = sub_195275760(a1, (v13 - 3), 32 * v29, (32 * (v29 & 0x3FFFFFF)) | 0x1F, a4, a5, a6);
    if (!result)
    {
      return result;
    }

    if (v13 >= v24)
    {
      goto LABEL_40;
    }

    if (a6 == 2)
    {
      v30 = *v13;
      v31 = *(v13 - 3);
      if (v31 + 1 < v30)
      {
        v32 = 32 * v30;
        if (v32 >= a3)
        {
          v32 = a3;
        }

        result = sub_19527567C((32 * v31 + 32), v32 - 1, a4, a5);
        if (!result)
        {
          return result;
        }
      }
    }

    v33 = *v13;
    v13 += 3;
    v29 = v33;
    if (v28 <= v33)
    {
      v13 -= 3;
      LOWORD(v20) = v36;
      goto LABEL_35;
    }
  }
}

void u_enumCharNames(UChar32 start, UChar32 limit, UEnumCharNamesFn *fn, void *context, UCharNameChoice nameChoice, UErrorCode *pErrorCode)
{
  if (!pErrorCode || *pErrorCode > 0)
  {
    return;
  }

  if (!fn || (v8 = *&nameChoice, nameChoice >= U_CHAR_NAME_CHOICE_COUNT))
  {
    v12 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_13;
  }

  v9 = *&start;
  if (limit >= 0x110000)
  {
    v10 = 1114112;
  }

  else
  {
    v10 = limit;
  }

  if (v10 <= start)
  {
    return;
  }

  if (atomic_load_explicit(&dword_1EAEC9A64, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9A64))
  {
    v12 = dword_1EAEC9A68;
    if (dword_1EAEC9A68 < 1)
    {
      goto LABEL_16;
    }

LABEL_13:
    *pErrorCode = v12;
    return;
  }

  sub_195275248(pErrorCode);
  dword_1EAEC9A68 = *pErrorCode;
  icu::umtx_initImplPostInit(&dword_1EAEC9A64);
LABEL_16:
  if (*pErrorCode > 0)
  {
    return;
  }

  v13 = qword_1EAEC9A38;
  v14 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 12));
  v15 = *v14;
  if (!*v14)
  {
LABEL_29:

    sub_1952739D4(v13, v9, v10, fn, context, v8);
    return;
  }

  v16 = v14 + 1;
  while (1)
  {
    v17 = *v16;
    if (v9 < *v16)
    {
      v13 = qword_1EAEC9A38;
      if (v10 <= v17)
      {
        goto LABEL_29;
      }

      if (!sub_1952739D4(qword_1EAEC9A38, v9, v17, fn, context, v8))
      {
        return;
      }

      v9 = *v16;
    }

    v18 = v16[1];
    if (v9 > v18)
    {
      goto LABEL_27;
    }

    if (v10 <= v18 + 1)
    {
      break;
    }

    if (!sub_195273EE0(v16, v9, v18 + 1, fn, context, v8))
    {
      return;
    }

    v9 = v16[1] + 1;
LABEL_27:
    v16 = (v16 + *(v16 + 5));
    if (!--v15)
    {
      v13 = qword_1EAEC9A38;
      goto LABEL_29;
    }
  }

  sub_195273EE0(v16, v9, v10, fn, context, v8);
}

uint64_t sub_195273EE0(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t), uint64_t a5, uint64_t a6)
{
  v57 = *MEMORY[0x1E69E9840];
  if ((a6 & 0xFFFFFFFD) != 0)
  {
    return 1;
  }

  v11 = a2;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  if (*(a1 + 8) == 1)
  {
    v53 = 0;
    v54 = 0;
    memset(v52, 0, sizeof(v52));
    memset(v51, 0, sizeof(v51));
    v25 = a1 + 12;
    v26 = *(a1 + 9);
    v27 = (a1 + 12 + 2 * v26);
    v30 = *v27;
    v28 = v27 + 1;
    v29 = v30;
    if (v30)
    {
      v31 = 0;
      v32 = v55;
      do
      {
        *v32++ = v29;
        ++v31;
        v33 = *v28++;
        v29 = v33;
      }

      while (v33);
    }

    else
    {
      v31 = 0;
      v32 = v55;
    }

    v34 = sub_1952753A0(a1 + 12, v26, v28, a2 - *a1, &v53, v52, v51, v32, 200 - v31);
    if (!a4(a5, v11, a6, v55, (v34 + v31)))
    {
      return 0;
    }

    v35 = (v26 - 1);
    while (1)
    {
      v11 = (v11 + 1);
      if (v11 >= a3)
      {
        break;
      }

      v36 = *(&v53 + v35) + 1;
      v37 = (v26 - 1);
      v38 = v26 - 1;
      if (*(v25 + 2 * v35) <= v36)
      {
        do
        {
          *(&v53 + v37) = 0;
          *(v51 + v37) = *(v52 + v37);
          v37 = --v38;
          v36 = *(&v53 + v38) + 1;
        }

        while (*(v25 + 2 * v38) <= v36);
      }

      *(&v53 + v37) = v36;
      v39 = *(v51 + v37);
        ;
      }

      *(v51 + v37) = v39;
      v41 = v31;
      v42 = v32;
      if (v26)
      {
        v43 = 0;
        v42 = v32;
        v41 = v31;
        do
        {
          v44 = *(v51 + v43);
          v45 = *v44;
          if (*v44)
          {
            v46 = v44 + 1;
            do
            {
              *v42++ = v45;
              ++v41;
              v47 = *v46++;
              v45 = v47;
            }

            while (v47);
          }

          ++v43;
        }

        while (v43 != v26);
      }

      *v42 = 0;
      if (!a4(a5, v11, a6, v55, v41))
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  v12 = sub_195272F20(a1, a2, a6, v55, 200);
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  result = a4(a5, v11, a6, v55, v12);
  if (result)
  {
    v14 = &v54 + 5;
    do
    {
      v15 = v14[3];
      ++v14;
    }

    while (v15);
    while (1)
    {
      v11 = (v11 + 1);
      if (v11 >= a3)
      {
        return 1;
      }

      v16 = v14[1];
      v17 = (v16 - 48) >= 9 && (v16 - 65) >= 5;
      v18 = v14 + 1;
      v19 = v14;
      if (v17)
      {
        do
        {
          if (v16 == 70)
          {
            v19[1] = 48;
          }

          else if (v16 == 57)
          {
            v18 = (v19 + 1);
            v24 = 65;
            goto LABEL_26;
          }

          v20 = *v19--;
          v16 = v20;
          v21 = v20 - 65;
        }

        while ((v20 - 48) >= 9 && v21 >= 5);
        v18 = (v19 + 1);
      }

      v24 = v16 + 1;
LABEL_26:
      *v18 = v24;
      v23 = a4(a5, v11, a6, v55, v13);
      result = 0;
      if (!v23)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t uprv_getMaxCharNameLength()
{
  v1 = 0;
  if (sub_195274258(&v1))
  {
    return dword_1EAEC9A40;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195274258(UErrorCode *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (dword_1EAEC9A40)
  {
    return 1;
  }

  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9A64, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9A64))
  {
    sub_195275248(a1);
    dword_1EAEC9A68 = *a1;
    icu::umtx_initImplPostInit(&dword_1EAEC9A64);
LABEL_10:
    if (*a1 > 0)
    {
      return 0;
    }

    for (i = 0; i != 19; ++i)
    {
      *(dword_1EAEC9A44 + ((a0123456789abcd[i] >> 3) & 0x1C)) |= 1 << a0123456789abcd[i];
    }

    v4 = qword_1EAEC9A38;
    v5 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 12));
    v6 = *v5;
    if (!*v5)
    {
      v7 = 0;
LABEL_51:
      for (j = 0; j != 33; ++j)
      {
        v25 = off_1E740B708[j];
        v26 = *v25;
        if (*v25)
        {
          v27 = (v25 + 1);
          v28 = 9;
          do
          {
            dword_1EAEC9A44[v26 >> 5] |= 1 << v26;
            v29 = *v27++;
            v26 = v29;
            ++v28;
          }

          while (v29);
        }

        else
        {
          v28 = 9;
        }

        if (v28 > v7)
        {
          v7 = v28;
        }
      }

      v30 = *(v4 + 8);
      v31 = *v4;
      v32 = malloc_type_malloc(v30, 0x100004077774924uLL);
      v33 = v32;
      if (v32)
      {
        bzero(v32, v30);
      }

      v44 = qword_1EAEC9A38;
      v34 = (qword_1EAEC9A38 + *(qword_1EAEC9A38 + 4));
      v35 = *v34;
      if (*v34)
      {
        v51 = 0;
        memset(v50, 0, sizeof(v50));
        memset(v48, 0, sizeof(v48));
        v36 = v34 + 1;
        v49 = 0;
        do
        {
          v46 = v35;
          v45 = v36;
          v37 = sub_19527519C((v44 + *(v44 + 8) + ((v36[1] << 16) | v36[2])), v50, v48);
          for (k = 0; k != 64; k += 2)
          {
            v39 = &v37[*(v50 + k)];
            v47 = v39;
            v40 = *(v48 + k);
            if (*(v48 + k))
            {
              v41 = &v39[v40];
              v42 = sub_195275A70(v4 + 18, v30, v4 + v31, v33, &v47, &v39[v40]);
              if (v42 > v7)
              {
                v7 = v42;
              }

              if (v47 != v41)
              {
                v43 = sub_195275A70(v4 + 18, v30, v4 + v31, v33, &v47, v41);
                if (v43 > v7)
                {
                  v7 = v43;
                }
              }
            }
          }

          v36 = v45 + 3;
          v35 = v46 - 1;
        }

        while (v46 > 1);
      }

      if (v33)
      {
        free(v33);
      }

      dword_1EAEC9A40 = v7;
      return 1;
    }

    v7 = 0;
    v8 = v5 + 1;
    while (*(v8 + 8) != 1)
    {
      if (!*(v8 + 8))
      {
        v9 = *(v8 + 12);
        if (*(v8 + 12))
        {
          v10 = 0;
          do
          {
            dword_1EAEC9A44[v9 >> 5] |= 1 << v9;
            v9 = *(v8 + v10++ + 13);
          }

          while (v9);
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v16 = v10 + *(v8 + 9);
        if (v16 > v7)
        {
          v7 = v16;
        }
      }

LABEL_48:
      v8 = (v8 + *(v8 + 5));
      if (!--v6)
      {
        goto LABEL_51;
      }
    }

    v11 = v8 + 3;
    v12 = *(v8 + 9);
    v13 = v8 + 2 * v12 + 12;
    v14 = *v13;
    if (*v13)
    {
      v15 = 0;
      do
      {
        dword_1EAEC9A44[v14 >> 5] |= 1 << v14;
        v14 = *(v8 + 2 * v12 + v15++ + 13);
      }

      while (v14);
      if (!v12)
      {
LABEL_46:
        if (v15 > v7)
        {
          v7 = v15;
        }

        goto LABEL_48;
      }
    }

    else
    {
      LODWORD(v15) = 0;
      if (!*(v8 + 9))
      {
        goto LABEL_46;
      }
    }

    v17 = 0;
    v18 = &v13[v15 + 1];
    do
    {
      v19 = *(v11 + v17);
      if (*(v11 + v17))
      {
        v20 = 0;
        do
        {
          v21 = *v18;
          if (*v18)
          {
            v22 = 0;
            do
            {
              dword_1EAEC9A44[v21 >> 5] |= 1 << v21;
              v21 = v18[++v22];
            }

            while (v21);
          }

          else
          {
            LODWORD(v22) = 0;
          }

          v18 += v22 + 1;
          if (v22 > v20)
          {
            v20 = v22;
          }

          v23 = __OFSUB__(v19--, 1);
        }

        while (!((v19 < 0) ^ v23 | (v19 == 0)));
      }

      else
      {
        v20 = 0;
      }

      LODWORD(v15) = v20 + v15;
      ++v17;
    }

    while (v17 != v12);
    goto LABEL_46;
  }

  if (dword_1EAEC9A68 < 1)
  {
    goto LABEL_10;
  }

  result = 0;
  *a1 = dword_1EAEC9A68;
  return result;
}

void uprv_getCharNameCharacters(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  memset(us, 0, sizeof(us));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v7 = 0;
  if (sub_195274258(&v7))
  {
    LODWORD(v2) = 0;
    for (i = 0; i != 256; ++i)
    {
      if ((dword_1EAEC9A44[i >> 5] >> i))
      {
        v8[v2] = i;
        LODWORD(v2) = v2 + 1;
      }
    }

    u_charsToUChars(v8, us, v2);
    if (v2 >= 1)
    {
      v2 = v2;
      v4 = v8;
      v5 = us;
      do
      {
        v6 = *v5++;
        if (v6 || !*v4)
        {
          (*(a1 + 8))(*a1);
        }

        ++v4;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t uchar_swapNames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4, int *a5)
{
  v90[64] = *MEMORY[0x1E69E9840];
  v10 = udata_swapDataHeader(a1, a2, a3, a4, a5);
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  if (__PAIR64__(v13, v12) != 0x6E00000075)
  {
    goto LABEL_16;
  }

  if (*(a2 + 14) != 97 || *(a2 + 15) != 109 || *(a2 + 16) != 1)
  {
    v13 = 110;
LABEL_16:
    udata_printError(a1, "uchar_swapNames(): data format %02x.%02x.%02x.%02x (format version %02x) is not recognized as unames.icu\n", v12, v13, *(a2 + 14), *(a2 + 15), *(a2 + 16));
    result = 0;
    v19 = 16;
    goto LABEL_17;
  }

  v14 = v10;
  v15 = (a2 + v10);
  if (a4)
  {
    v16 = a4 + v10;
  }

  else
  {
    v16 = 0;
  }

  if ((a3 & 0x80000000) != 0)
  {
    v20 = (*(a1 + 16))(v15[3]);
    v21 = (*(a1 + 16))(*(v15 + v20));
    v22 = v20 + 4;
    if (v21)
    {
      v23 = v21;
      do
      {
        v22 += (*(a1 + 8))(*(v15 + v22 + 10));
        --v23;
      }

      while (v23);
    }

    return v22 + v14;
  }

  v17 = a3 - v10;
  if ((a3 - v10) < 20 || (v18 = (*(a1 + 16))(v15[3]), v17 < v18))
  {
    udata_printError(a1, "uchar_swapNames(): too few bytes (%d after header) for unames.icu\n", a3 - v14);
    result = 0;
    v19 = 8;
LABEL_17:
    *a5 = v19;
    return result;
  }

  v72 = v18;
  bzero(v89, 0x400uLL);
  memset(v88, 0, sizeof(v88));
  memset(v87, 0, sizeof(v87));
  if (v15 != v16)
  {
    memcpy(v16, v15, a3 - v14);
  }

  v77 = a3 - v14;
  v73 = (*(a1 + 16))(*v15);
  v75 = (*(a1 + 16))(v15[1]);
  v71 = (*(a1 + 16))(v15[2]);
  (*(a1 + 56))(a1, v15, 16, v16, a5);
  v78 = v15;
  v25 = *(v15 + 8);
  v24 = v15 + 4;
  v26 = (*(a1 + 8))(v25);
  (*(a1 + 48))(a1, v24, 2, v16 + 16, a5);
  v27 = v24 + 1;
  if (v26 >= 0x201)
  {
    v28 = 512;
  }

  else
  {
    v28 = v26;
  }

  if (!v28)
  {
    goto LABEL_31;
  }

  v79 = v16;
  v29 = v89;
  v30 = v28;
  v31 = v27;
  do
  {
    v32 = *v31++;
    *v29++ = udata_readInt16(a1, v32);
    --v30;
  }

  while (v30);
  v16 = v79;
  if (v28 <= 0x1FF)
  {
LABEL_31:
    bzero(v89 + (2 * v28), (1024 - 2 * v28));
  }

  sub_195274FC4(a1, v89, v26, v88, a5);
  if (v26 >= 0x100)
  {
    v33 = v26 - 256;
  }

  else
  {
    v33 = 0;
  }

  sub_195274FC4(a1, v90, v33, v87, a5);
  if (*a5 > 0)
  {
    return 0;
  }

  v34 = malloc_type_malloc(2 * v26, 0x1000040BDFB0063uLL);
  if (!v34)
  {
    udata_printError(a1, "out of memory swapping %u unames.icu tokens\n", v26);
    v40 = 7;
    goto LABEL_45;
  }

  v35 = v34;
  v80 = v16;
  if (v26 >= 0x100)
  {
    v36 = 256;
  }

  else
  {
    v36 = v26;
  }

  if (v26)
  {
    v37 = v88;
    v38 = v36;
    do
    {
      v39 = *v37++;
      (*(a1 + 48))(a1, v27++, 2, v35 + 2 * v39, a5);
      --v38;
    }

    while (v38);
  }

  else
  {
    LODWORD(v36) = 0;
  }

  v41 = v78;
  if (v36 < v26)
  {
    v42 = v36;
    v43 = v14 + 2 * v36 + a2 + 18;
    do
    {
      (*(a1 + 48))(a1, v43, 2, v35 + 2 * (v42 & 0x7FFFFF00) + 2 * *(v87 + v42), a5);
      ++v42;
      v43 += 2;
    }

    while (v26 != v42);
  }

  v44 = v80;
  memcpy(v80 + 18, v35, 2 * v26);
  free(v35);
  udata_swapInvStringBlock(a1, v78 + v73, v75 - v73, &v80[v73], a5);
  if (*a5 >= 1)
  {
    udata_printError(a1, "uchar_swapNames(token strings) failed\n");
    return 0;
  }

  v45 = (*(a1 + 8))(*(v78 + v75));
  (*(a1 + 48))(a1, v78 + v75, (6 * v45 + 2), &v80[v75], a5);
  if (*(a1 + 1) != *(a1 + 3))
  {
    v86 = 0;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    v83 = 0;
    v82 = 0u;
    memset(v81, 0, sizeof(v81));
    if (v72 - v71 >= 0x21)
    {
      v46 = v72 - v71;
      v47 = &v80[v71];
      v48 = v78 + v71;
      do
      {
        v49 = v48;
        v48 = sub_19527519C(v48, v84, v81);
        v50 = v48 - v49;
        v47 += v48 - v49;
        v51 = HIWORD(v82) + HIWORD(v85);
        if (v51)
        {
          v52 = HIWORD(v82) + HIWORD(v85);
          do
          {
            v53 = *v48;
            *v47 = *(v88 + v53);
            v54 = v89[v53];
            if (v54 == -2)
            {
              v55 = *(v87 + v48[1]);
              v48 += 2;
              v47[1] = v55;
              v47 += 2;
            }

            else
            {
              v54 = -1;
              ++v48;
              ++v47;
            }

            v52 += v54;
          }

          while (v52);
        }

        v46 = v46 - v50 - v51;
      }

      while (v46 >= 0x21);
    }

    v41 = v78;
    v44 = v80;
  }

  v56 = (v41 + v72);
  v57 = (*(a1 + 16))(*v56);
  (*(a1 + 56))(a1, v56, 4, &v44[v72], a5);
  v22 = v72 + 4;
  v76 = v57;
  if (!v57)
  {
    return v22 + v14;
  }

  v58 = 0;
  v74 = v14 + a2 + 11;
  while (1)
  {
    if (v22 > v77)
    {
      udata_printError(a1, "uchar_swapNames(): too few bytes (%d after header) for unames.icu algorithmic range %u\n", v77, v58);
      v40 = 8;
      goto LABEL_45;
    }

    v59 = v41 + v22;
    v60 = &v80[v22];
    v61 = (*(a1 + 8))(*(v59 + 10));
    (*(a1 + 56))(a1, v59, 8, v60, a5);
    (*(a1 + 48))(a1, v59 + 10, 2, v60 + 10, a5);
    if (*(v59 + 8) == 1)
    {
      v63 = *(v59 + 9);
      v64 = v59 + 12;
      v65 = v60 + 12;
      (*(a1 + 48))(a1, v64, (2 * v63), v65, a5);
      v66 = v61 - 2 * v63;
      v67 = (v66 - 12);
      LODWORD(v68) = v66 - 11;
      v69 = (v74 + v22 + 2 * v63 + v67);
      while (v67)
      {
        --v67;
        v70 = *v69--;
        v68 = (v68 - 1);
        if (!v70)
        {
          goto LABEL_75;
        }
      }

      v68 = 0;
LABEL_75:
      (*(a1 + 72))(a1, v64 + 2 * v63, v68, &v65[2 * v63], a5);
      goto LABEL_76;
    }

    if (*(v59 + 8))
    {
      break;
    }

    v62 = strlen((v59 + 12));
    (*(a1 + 72))(a1, v59 + 12, v62, v60 + 12, a5);
    if (*a5 >= 1)
    {
      udata_printError(a1, "uchar_swapNames(prefix string of algorithmic range %u) failed\n");
      return 0;
    }

LABEL_76:
    v22 += v61;
    ++v58;
    v41 = v78;
    if (v58 == v76)
    {
      return v22 + v14;
    }
  }

  udata_printError(a1, "uchar_swapNames(): unknown type %u of algorithmic range %u\n", *(v59 + 8), v58);
  v40 = 16;
LABEL_45:
  *a5 = v40;
  return 0;
}

uint64_t sub_195274FC4(uint64_t result, uint64_t a2, unsigned int a3, _OWORD *a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v6 = result;
    if (*(result + 1) == *(result + 3))
    {
      v7 = 0;
      v8 = xmmword_19547BE60;
      v9.i64[0] = 0x1010101010101010;
      v9.i64[1] = 0x1010101010101010;
      do
      {
        a4[v7++] = v8;
        v8 = vaddq_s8(v8, v9);
      }

      while (v7 != 16);
    }

    else
    {
      a4[14] = 0u;
      a4[15] = 0u;
      a4[12] = 0u;
      a4[13] = 0u;
      a4[10] = 0u;
      a4[11] = 0u;
      a4[8] = 0u;
      a4[9] = 0u;
      a4[6] = 0u;
      a4[7] = 0u;
      a4[4] = 0u;
      a4[5] = 0u;
      a4[2] = 0u;
      a4[3] = 0u;
      *a4 = 0u;
      a4[1] = 0u;
      memset(v21, 0, sizeof(v21));
      if (a3 >= 2)
      {
        if (a3 >= 0x100)
        {
          v12 = 256;
        }

        else
        {
          v12 = a3;
        }

        v19 = 0;
        for (i = 1; i != v12; ++i)
        {
          if (*(a2 + 2 * i) == -1)
          {
            v20 = i;
            result = (*(v6 + 72))(v6, &v20, 1, &v19, a5);
            if (*a5 >= 1)
            {
              return udata_printError(v6, "unames/makeTokenMap() finds variant character 0x%02x used (input charset family %d)\n", i, *(v6 + 1));
            }

            v14 = v19;
            *(a4 + v20) = v19;
            *(v21 + v14) = 1;
          }
        }

        v15 = 1;
        v16 = 1;
        do
        {
          if (!*(a4 + v15))
          {
            do
            {
              v17 = v16;
            }

            while (*(v21 + v16++));
            *(a4 + v15) = v17;
          }

          ++v15;
        }

        while (v15 != v12);
      }
    }
  }

  return result;
}

unsigned __int8 *sub_19527519C(unsigned __int8 *result, _WORD *a2, _WORD *a3)
{
  LOWORD(v3) = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v7 = *result++;
    v6 = v7;
    if (v3 < 0xCu)
    {
      if (v6 > 0xBF)
      {
        LOWORD(v3) = 0;
        v9 = (v6 & 0x3F) + 12;
        *a2++ = v4;
        *a3++ = v9;
        v4 += v9;
        ++v5;
        continue;
      }

      v8 = v6 >> 4;
    }

    else
    {
      v8 = ((v6 >> 4) & 0xFFFFFFCF | (16 * (v3 & 3))) + 12;
    }

    *a2 = v4;
    v3 = v6 & 0xF;
    *a3 = v8;
    v4 += v8;
    if (v3 > 0xB)
    {
      ++v5;
      ++a2;
      ++a3;
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
      a3[1] = v3;
      a3 += 2;
      v4 += v3;
      v5 += 2;
    }
  }

  while (v5 < 0x20);
  return result;
}

void sub_195275248(UErrorCode *a1)
{
  v2 = udata_openChoice(0, "icu", "unames", sub_1952752E4, 0, a1);
  qword_1EAEC9A70 = v2;
  if (*a1 < 1)
  {
    qword_1EAEC9A38 = udata_getMemory(v2);
  }

  else
  {
    qword_1EAEC9A70 = 0;
  }

  sub_1952376A4(19, sub_195275348);
}

uint64_t sub_195275348()
{
  if (qword_1EAEC9A70)
  {
    udata_close(qword_1EAEC9A70);
    qword_1EAEC9A70 = 0;
  }

  if (qword_1EAEC9A38)
  {
    qword_1EAEC9A38 = 0;
  }

  atomic_store(0, &dword_1EAEC9A64);
  dword_1EAEC9A40 = 0;
  return 1;
}

uint64_t sub_1952753A0(uint64_t a1, __int16 a2, unsigned __int8 *a3, unsigned int a4, _WORD *a5, void *a6, void *a7, _BYTE *a8, __int16 a9)
{
  if (a2 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (a2 - 1);
    v11 = v10;
    do
    {
      v12 = a4;
      a4 /= *(a1 + 2 * v11);
      a5[v11] = v12 - a4 * *(a1 + 2 * v11);
      --v11;
    }

    while (v11);
  }

  v13 = 0;
  v14 = 0;
  *a5 = a4;
  if (a6)
  {
LABEL_7:
    *a6++ = a3;
    goto LABEL_8;
  }

  while (1)
  {
LABEL_8:
    v15 = a5[v13];
    if (a5[v13])
    {
      do
      {
          ;
        }

        --v15;
      }

      while (v15);
    }

    if (a7)
    {
      *a7++ = a3;
    }

    while (1)
    {
      v18 = *a3++;
      v17 = v18;
      if (!v18)
      {
        break;
      }

      if (a9)
      {
        *a8++ = v17;
        --a9;
      }

      else
      {
        a9 = 0;
      }

      ++v14;
    }

    if (v13 == v10)
    {
      break;
    }

    for (i = *(a1 + 2 * v13) + ~a5[v13]; i; --i)
    {
        ;
      }
    }

    ++v13;
    if (a6)
    {
      goto LABEL_7;
    }
  }

  if (a9)
  {
    *a8 = 0;
  }

  return v14;
}

unsigned __int16 *sub_195275494(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + *(a1 + 4));
  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  if (v5 < 2)
  {
    v10 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = v4;
    do
    {
      v9 = (v4 + v6) >> 1;
      if ((a2 >> 5) < v3[3 * v9])
      {
        v8 = v9;
      }

      else
      {
        v7 = v9;
      }

      v6 = v7;
      v4 = v8;
    }

    while (v8 - 1 > v7);
    v10 = 3 * v7;
  }

  return &v3[v10];
}

uint64_t sub_195275500(unsigned int *a1, unsigned __int8 *a2, int a3, int a4, char *a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *a1;
  if ((a4 & 0xFFFFFFFD) != 0)
  {
    if (v6 >= 0x3C && *(a1 + 68) != -1)
    {
      goto LABEL_42;
    }

    v8 = a4;
    do
    {
      if (a3)
      {
        do
        {
          --a3;
          v9 = *a2++;
        }

        while (v9 != 59 && a3 != 0);
      }

      else
      {
        a3 = 0;
      }

      v11 = __OFSUB__(v8--, 1);
    }

    while (!((v8 < 0) ^ v11 | (v8 == 0)));
  }

  if (!a3)
  {
LABEL_42:
    LOWORD(v12) = 0;
    goto LABEL_43;
  }

  v12 = 0;
  v13 = a1 + 18;
  v14 = a1 + v7;
  v15 = a1 + v7 + 1;
  do
  {
    v16 = a2;
    v17 = a3;
    while (1)
    {
      a3 = v17 - 1;
      v19 = *a2++;
      v18 = v19;
      if (v6 <= v19)
      {
        if (v18 == 59)
        {
          goto LABEL_43;
        }

LABEL_29:
        if (a6)
        {
          *a5++ = v18;
          --a6;
        }

        else
        {
          a6 = 0;
        }

        ++v12;
        goto LABEL_40;
      }

      v20 = *&v13[2 * v18];
      if (v20 == 65534)
      {
        a2 = v16 + 2;
        v20 = *&v13[(2 * v16[1]) | (v18 << 9)];
        a3 = v17 - 2;
      }

      if (v20 != 0xFFFF)
      {
        break;
      }

      if (v18 != 59)
      {
        goto LABEL_29;
      }

      if (a4 == 2 && !v12)
      {
        v12 = 0;
        if (*(a1 + 68) == -1)
        {
          v16 = a2;
          v17 = a3;
          if (a3)
          {
            continue;
          }
        }
      }

      goto LABEL_43;
    }

    v21 = v14[v20];
    if (v21)
    {
      v22 = &v15[v20];
      do
      {
        if (a6)
        {
          *a5++ = v21;
          --a6;
        }

        else
        {
          a6 = 0;
        }

        ++v12;
        v23 = *v22++;
        v21 = v23;
      }

      while (v23);
    }

LABEL_40:
    ;
  }

  while (a3);
LABEL_43:
  if (a6)
  {
    *a5 = 0;
  }

  return v12;
}

uint64_t sub_19527567C(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t), uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v4 = a1;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (a1 > a2)
  {
    return 1;
  }

  v7 = a2 + 1;
  while (1)
  {
    v8 = sub_1952731FC(v4, v10, 200);
    *(v10 + v8) = 0;
    if (v8)
    {
      result = a3(a4, v4, 2, v10, v8);
      if (!result)
      {
        break;
      }
    }

    v4 = (v4 + 1);
    if (v7 == v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_195275760(unsigned int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, _OWORD *), uint64_t a6, uint64_t a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v13 = sub_19527519C(a1 + a1[2] + ((*(a2 + 2) << 16) | *(a2 + 4)), v42, v40);
  if (!a5)
  {
    if (a3 > a4)
    {
      return 1;
    }

    v18 = a1 + 18;
    v19 = *(a1 + 8);
    while (1)
    {
      v20 = &v13[*(v42 + (a3 & 0x1F))];
      v21 = *(v40 + (a3 & 0x1F));
      if ((a7 & 0xFFFFFFFD) != 0)
      {
        if (v19 >= 0x3C)
        {
          v22 = *a6;
          if (*(a1 + 68) != -1)
          {
            goto LABEL_54;
          }
        }

        v23 = a7;
        do
        {
          if (v21)
          {
            do
            {
              --v21;
              v24 = *v20++;
              v25 = v24 == 59 || v21 == 0;
            }

            while (!v25);
          }

          else
          {
            v21 = 0;
          }

          v26 = __OFSUB__(v23--, 1);
        }

        while (!((v23 < 0) ^ v26 | (v23 == 0)));
      }

      v22 = *a6;
      if (v21)
      {
        v22 = *a6;
        while (2)
        {
          v28 = a7 == 2 && v22 == *a6;
          v29 = v20;
          v30 = v21;
          while (1)
          {
            v21 = v30 - 1;
            v32 = *v20++;
            v31 = v32;
            if (v19 <= v32)
            {
              break;
            }

            v33 = *&v18[2 * v31];
            if (v33 == 65534)
            {
              v20 = v29 + 2;
              v33 = *&v18[(2 * v29[1]) | (v31 << 9)];
              v21 = v30 - 2;
            }

            if (v33 != 0xFFFF)
            {
              v35 = a1 + *a1 + v33;
              while (1)
              {
                v36 = *v35;
                if (!*v35)
                {
                  goto LABEL_47;
                }

                ++v35;
                v37 = *v22++;
                if (v36 != v37)
                {
                  goto LABEL_55;
                }
              }
            }

            if (v31 != 59)
            {
              goto LABEL_46;
            }

            if (!v28)
            {
              goto LABEL_54;
            }

            if (*(a1 + 68) == -1)
            {
              v29 = v20;
              v30 = v21;
              if (v21)
              {
                continue;
              }
            }

            v22 = *a6;
            goto LABEL_54;
          }

          if (v31 == 59)
          {
            break;
          }

LABEL_46:
          v34 = *v22++;
          if (v31 != v34)
          {
            goto LABEL_55;
          }

LABEL_47:
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_54:
      if (!*v22)
      {
        result = 0;
        *(a6 + 8) = a3;
        return result;
      }

LABEL_55:
      v25 = a3 == a4;
      LODWORD(a3) = a3 + 1;
      if (v25)
      {
        return 1;
      }
    }
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  if (a3 > a4)
  {
    return 1;
  }

  v14 = a4 + 1;
  while (1)
  {
    v15 = sub_195275500(a1, &v13[*(v42 + (a3 & 0x1F))], *(v40 + (a3 & 0x1F)), a7, v38, 200);
    v16 = v15;
    if (a7 == 2 && !v15)
    {
      v16 = sub_1952731FC(a3, v38, 200);
      *(v38 + v16) = 0;
    }

    if (v16)
    {
      result = a5(a6, a3, a7, v38);
      if (!result)
      {
        break;
      }
    }

    a3 = (a3 + 1);
    if (v14 == a3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_195275A70(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5, unsigned __int8 *a6)
{
  v6 = *a5;
  if (*a5 != a6)
  {
    result = 0;
    v9 = a3 + 1;
    v10 = *a5;
    while (1)
    {
      v12 = *v6++;
      v11 = v12;
      if (v12 == 59)
      {
        goto LABEL_28;
      }

      if (v11 >= a2)
      {
        *(dword_1EAEC9A44 + ((v11 >> 3) & 0x1C)) |= 1 << v11;
      }

      else
      {
        v13 = *(a1 + 2 * v11);
        if (v13 == 65534)
        {
          v6 = v10 + 2;
          LODWORD(v11) = v10[1] | (v11 << 8);
          v13 = *(a1 + 2 * v11);
        }

        if (v13 != 0xFFFF)
        {
          if (a4)
          {
            LODWORD(v14) = *(a4 + v11);
            if (!*(a4 + v11))
            {
              v15 = *(a3 + v13);
              if (*(a3 + v13))
              {
                v14 = 0;
                v16 = v9 + v13;
                do
                {
                  dword_1EAEC9A44[v15 >> 5] |= 1 << v15;
                  v15 = *(v16 + v14++);
                }

                while (v15);
              }

              else
              {
                LODWORD(v14) = 0;
              }

              *(a4 + v11) = v14;
            }
          }

          else
          {
            v17 = *(a3 + v13);
            if (*(a3 + v13))
            {
              v14 = 0;
              v18 = v9 + v13;
              do
              {
                dword_1EAEC9A44[v17 >> 5] |= 1 << v17;
                v17 = *(v18 + v14++);
              }

              while (v17);
            }

            else
            {
              LODWORD(v14) = 0;
            }
          }

          result = (v14 + result);
          goto LABEL_25;
        }

        dword_1EAEC9A44[v11 >> 5] |= 1 << v11;
      }

      result = (result + 1);
LABEL_25:
      v10 = v6;
      if (v6 == a6)
      {
        goto LABEL_28;
      }
    }
  }

  result = 0;
LABEL_28:
  *a5 = v6;
  return result;
}

uint64_t sub_195275C20(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t icu::UnifiedCache::getInstance(UErrorCode *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    if (atomic_load_explicit(&dword_1ED442AA0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1ED442AA0))
    {
      sub_195275CF0(this);
    }

    if (dword_1ED442AA4 >= 1)
    {
      *this = dword_1ED442AA4;
    }
  }

  if (*this >= 1)
  {
    return 0;
  }

  else
  {
    return qword_1ED442A88;
  }
}

void sub_195275CF0(UErrorCode *a1)
{
  sub_1952376A4(27, sub_195276AC8);
  qword_1ED442AA8 = 850045863;
  unk_1ED442AB0 = 0u;
  unk_1ED442AC0 = 0u;
  unk_1ED442AD0 = 0u;
  qword_1ED442AE0 = 0;
  qword_1ED442A90 = &qword_1ED442AA8;
  qword_1ED442AE8 = 1018212795;
  unk_1ED442AF0 = 0u;
  unk_1ED442B00 = 0u;
  qword_1ED442B10 = 0;
  qword_1ED442A98 = &qword_1ED442AE8;
  operator new();
}

icu::UnifiedCache *icu::UnifiedCache::UnifiedCache(icu::UnifiedCache *this, UErrorCode *a2)
{
  *this = &unk_1F0935918;
  *(this + 1) = 0;
  *(this + 1) = xmmword_19547BE80;
  *(this + 8) = 100;
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (*a2 <= 0)
  {
    operator new();
  }

  return this;
}

void icu::UnifiedCache::setEvictionPolicy(icu::UnifiedCache *this, int a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if ((a3 | a2) < 0)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v7 = qword_1ED442A90;
      std::mutex::lock(qword_1ED442A90);
      *(this + 7) = a2;
      *(this + 8) = a3;

      std::mutex::unlock(v7);
    }
  }
}

uint64_t icu::UnifiedCache::unusedCount(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v3 = uhash_count(*(this + 1)) - *(this + 6);
  std::mutex::unlock(v2);
  return v3;
}

uint64_t icu::UnifiedCache::autoEvictedCount(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v3 = *(this + 5);
  std::mutex::unlock(v2);
  return v3;
}

uint64_t icu::UnifiedCache::keyCount(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v3 = uhash_count(*(this + 1));
  std::mutex::unlock(v2);
  return v3;
}

void icu::UnifiedCache::flush(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
    ;
  }

  std::mutex::unlock(v2);
}

uint64_t icu::UnifiedCache::_flush(icu::UnifiedCache *this, int a2)
{
  v4 = uhash_count(*(this + 1));
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    do
    {
      Element = icu::UnifiedCache::_nextElement(this);
      if (!Element)
      {
        break;
      }

      v8 = Element;
      if (a2 || icu::UnifiedCache::_isEvictable(this, Element))
      {
        v9 = *(v8 + 8);
        uhash_removeElement(*(this + 1), v8);
        icu::UnifiedCache::removeSoftRef(this, v9);
        v6 = 1;
      }

      --v5;
    }

    while (v5);
  }

  return v6;
}

void icu::UnifiedCache::handleUnreferencedObject(icu::UnifiedCache *this)
{
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  --*(this + 6);
  icu::UnifiedCache::_runEvictionSlice(this);

  std::mutex::unlock(v2);
}

uint64_t icu::UnifiedCache::_runEvictionSlice(icu::UnifiedCache *this)
{
  result = uhash_count(*(this + 1));
  v3 = *(this + 6);
  v4 = 1374389535 * *(this + 8) * v3;
  v5 = (v4 >> 63) + (SHIDWORD(v4) >> 5);
  if (v5 <= *(this + 7))
  {
    v5 = *(this + 7);
  }

  v6 = result - v3 - v5;
  if (v6 >= 1)
  {
    v7 = 10;
    do
    {
      result = icu::UnifiedCache::_nextElement(this);
      if (!result)
      {
        break;
      }

      v8 = result;
      result = icu::UnifiedCache::_isEvictable(this, result);
      if (result)
      {
        v9 = *(v8 + 8);
        uhash_removeElement(*(this + 1), v8);
        result = icu::UnifiedCache::removeSoftRef(this, v9);
        ++*(this + 5);
        if (!--v6)
        {
          break;
        }
      }

      --v7;
    }

    while (v7);
  }

  return result;
}

void icu::UnifiedCache::~UnifiedCache(void ***this)
{
  *this = &unk_1F0935918;
  icu::UnifiedCache::flush(this);
  v2 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  icu::UnifiedCache::_flush(this, 1);
  std::mutex::unlock(v2);
  uhash_close(this[1]);
  this[1] = 0;
  v3 = this[6];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  this[6] = 0;

  icu::UnifiedCacheBase::~UnifiedCacheBase(this);
}

{
  icu::UnifiedCache::~UnifiedCache(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UnifiedCache::_nextElement(icu::UnifiedCache *this)
{
  result = uhash_nextElement(*(this + 1), this + 4);
  if (!result)
  {
    *(this + 4) = -1;
    v3 = *(this + 1);

    return uhash_nextElement(v3, this + 4);
  }

  return result;
}

BOOL icu::UnifiedCache::_isEvictable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a1 + 48);
  if (*(v4 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == v3;
  }

  if (v6)
  {
    return 0;
  }

  if (*(v4 + 12))
  {
    if (v3[2] == 1)
    {
      return icu::SharedObject::getRefCount(v3) == 0;
    }

    return 0;
  }

  return 1;
}

uint64_t icu::UnifiedCache::removeSoftRef(uint64_t this, const icu::SharedObject *a2)
{
  v2 = *(a2 + 2) - 1;
  *(a2 + 2) = v2;
  if (!v2)
  {
    --*(this + 20);
    this = icu::SharedObject::getRefCount(a2);
    if (this)
    {
      *(a2 + 2) = 0;
    }

    else
    {
      v4 = *(*a2 + 8);

      return v4(a2);
    }
  }

  return this;
}

uint64_t icu::UnifiedCache::_computeCountOfItemsToEvict(icu::UnifiedCache *this)
{
  v2 = uhash_count(*(this + 1));
  v3 = *(this + 6);
  v4 = 1374389535 * *(this + 8) * v3;
  v5 = (v4 >> 63) + (SHIDWORD(v4) >> 5);
  if (v5 <= *(this + 7))
  {
    v5 = *(this + 7);
  }

  return (v2 - v3 - v5) & ~((v2 - v3 - v5) >> 31);
}

uint64_t icu::UnifiedCache::_putNew(uint64_t this, const icu::CacheKeyBase *a2, const icu::SharedObject *a3, UErrorCode a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v8 = this;
    this = (*(*a2 + 32))(a2);
    if (this)
    {
      *(this + 8) = a4;
      if (!*(a3 + 2))
      {
        *(this + 12) = 1;
        *(a3 + 2) = v8;
        *(v8 + 20) = vadd_s32(*(v8 + 20), 0x100000001);
      }

      this = uhash_put(*(v8 + 8), this, a3, a5);
      if (*a5 <= 0)
      {
        ++*(a3 + 2);
      }
    }

    else
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

int32x2_t icu::UnifiedCache::_registerPrimary(icu::UnifiedCache *this, const icu::CacheKeyBase *a2, const icu::SharedObject *a3)
{
  *(a2 + 12) = 1;
  *(a3 + 2) = this;
  result = vadd_s32(*(this + 20), 0x100000001);
  *(this + 20) = result;
  return result;
}

void icu::UnifiedCache::_putIfAbsentAndGet(icu::UnifiedCache *this, const icu::CacheKeyBase *a2, const icu::SharedObject **a3, UErrorCode *a4)
{
  v8 = qword_1ED442A90;
  std::mutex::lock(qword_1ED442A90);
  v9 = uhash_find(*(this + 1), a2);
  if (v9)
  {
    v10 = v9;
    if (!icu::UnifiedCache::_inProgress(this, v9))
    {
      icu::UnifiedCache::_fetch(this, v10, a3, a4);
      goto LABEL_7;
    }

    icu::UnifiedCache::_put(this, v10, *a3, *a4);
  }

  else
  {
    v11 = U_ZERO_ERROR;
    icu::UnifiedCache::_putNew(this, a2, *a3, *a4, &v11);
  }

  icu::UnifiedCache::_runEvictionSlice(this);
LABEL_7:
  std::mutex::unlock(v8);
}

BOOL icu::UnifiedCache::_inProgress(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a2 + 16) + 8);
  if (v2)
  {
    if (!atomic_fetch_add((v2 + 12), 1u))
    {
      ++*(a1 + 24);
    }

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 48) == v2;
    }

    v5 = v4;
    if (atomic_fetch_add((v2 + 12), 0xFFFFFFFF) == 1)
    {
      --*(a1 + 24);
    }
  }

  else
  {
    return !v3 && *(a1 + 48) == 0;
  }

  return v5;
}

uint64_t icu::UnifiedCache::_fetch(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = *(*(a2 + 16) + 8);
  if (*a3 && atomic_fetch_add((*a3 + 12), 0xFFFFFFFF) == 1)
  {
    --*(result + 24);
  }

  v4 = *(a2 + 8);
  *a3 = v4;
  if (v4)
  {
    if (!atomic_fetch_add((v4 + 12), 1u))
    {
      ++*(result + 24);
    }
  }

  return result;
}

void icu::UnifiedCache::_put(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a2 + 8;
  v5 = *(a2 + 8);
  v6 = *(v7 + 8);
  *(v6 + 8) = a4;
  v8 = *(a3 + 8);
  if (!v8)
  {
    *(v6 + 12) = 1;
    *(a3 + 16) = a1;
    *(a1 + 20) = vadd_s32(*(a1 + 20), 0x100000001);
  }

  *(a3 + 8) = v8 + 1;
  *(a2 + 8) = a3;
  icu::UnifiedCache::removeSoftRef(a1, v5);
  v9 = qword_1ED442A98;

  std::condition_variable::notify_all(v9);
}

uint64_t icu::UnifiedCache::_poll(icu::UnifiedCache *this, const icu::CacheKeyBase *a2, const icu::SharedObject **a3, UErrorCode *a4)
{
  v12.__m_ = qword_1ED442A90;
  *&v12.__owns_ = 1;
  std::mutex::lock(qword_1ED442A90);
  v8 = uhash_find(*(this + 1), a2);
  if (v8)
  {
    v9 = v8;
    while (icu::UnifiedCache::_inProgress(this, v9))
    {
      std::condition_variable::wait(qword_1ED442A98, &v12);
      v9 = uhash_find(*(this + 1), a2);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    icu::UnifiedCache::_fetch(this, v9, a3, a4);
    v10 = 1;
  }

  else
  {
LABEL_5:
    icu::UnifiedCache::_putNew(this, a2, *(this + 6), U_ZERO_ERROR, a4);
    v10 = 0;
  }

  if (v12.__owns_)
  {
    std::mutex::unlock(v12.__m_);
  }

  return v10;
}

const icu::SharedObject *icu::UnifiedCache::_get(icu::SharedObject **this, const icu::CacheKeyBase *a2, const icu::SharedObject **a3, const void *a4, UErrorCode *a5)
{
  result = icu::UnifiedCache::_poll(this, a2, a3, a5);
  if (result)
  {
    result = *a3;
    if (*a3)
    {
      v11 = result == this[6];
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      return result;
    }

LABEL_7:
    result = icu::SharedObject::removeRef(result);
    *a3 = 0;
    return result;
  }

  if (*a5 <= 0)
  {
    v12 = (*(*a2 + 40))(a2, a4, a5);
    *a3 = v12;
    if (!v12)
    {
      sub_1952769E4(this[6], a3);
    }

    icu::UnifiedCache::_putIfAbsentAndGet(this, a2, a3, a5);
    result = *a3;
    if (*a3)
    {
      if (result == this[6])
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

icu::SharedObject *sub_1952769E4(icu::SharedObject *this, icu::SharedObject **a2)
{
  result = *a2;
  if (*a2 != this)
  {
    if (result)
    {
      result = icu::SharedObject::removeRef(result);
    }

    *a2 = this;
    if (this)
    {

      return icu::SharedObject::addRef(this);
    }
  }

  return result;
}

uint64_t icu::UnifiedCache::removeHardRef(icu::UnifiedCache *this, atomic_uint *a2)
{
  if (!a2)
  {
    return 0;
  }

  add = atomic_fetch_add(a2 + 3, 0xFFFFFFFF);
  result = add - 1;
  if (add == 1)
  {
    --*(this + 6);
  }

  return result;
}

uint64_t icu::UnifiedCache::addHardRef(icu::UnifiedCache *this, atomic_uint *a2)
{
  if (!a2)
  {
    return 0;
  }

  add = atomic_fetch_add(a2 + 3, 1u);
  if (add)
  {
    return add + 1;
  }

  ++*(this + 6);
  return 1;
}

uint64_t sub_195276AC8()
{
  atomic_store(0, &dword_1ED442AA0);
  if (qword_1ED442A88)
  {
    (*(*qword_1ED442A88 + 8))(qword_1ED442A88);
  }

  qword_1ED442A88 = 0;
  std::mutex::~mutex(qword_1ED442A90);
  qword_1ED442A90 = 0;
  std::condition_variable::~condition_variable(qword_1ED442A98);
  qword_1ED442A98 = 0;
  return 1;
}

uint64_t icu::UnicodeFilter::toMatcher(icu::UnicodeFilter *this)
{
  if (this)
  {
    return this + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::UnicodeFilter::matches(uint64_t a1, uint64_t a2, int *a3, int a4, int a5)
{
  v10 = *a3;
  if (*a3 < a4)
  {
    v11 = (*(*a2 + 80))(a2);
    v12 = (*(*a1 + 56))(a1, v11);
    v10 = *a3;
    if (v12)
    {
      if (v11 < 0x10000)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = v10 + v13;
      goto LABEL_11;
    }
  }

  if (v10 > a4)
  {
    v15 = (*(*a2 + 80))(a2);
    v16 = (*(*a1 + 56))(a1, v15);
    v10 = *a3;
    if (v16)
    {
      v17 = __OFSUB__(v10, 1);
      v18 = v10 - 1;
      *a3 = v18;
      if (v18 < 0 != v17)
      {
        return 2;
      }

      v14 = *a3 - (((*(*a2 + 80))(a2) & 0xFFFF0000) != 0);
LABEL_11:
      *a3 = v14;
      return 2;
    }
  }

  return a5 && v10 == a4;
}

uint64_t icu::UnicodeSet::stringsSize(icu::UnicodeSet *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

icu::UVector *icu::UnicodeSet::stringsContains(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  result = *(this + 10);
  if (result)
  {
    return (icu::UVector::indexOf(result, a2, 0) >= 0);
  }

  return result;
}

double icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this)
{
  *this = &unk_1F0935B48;
  *(this + 24) = 1114112;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *&result = 0x100000019;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F0935B48;
  *(this + 24) = 1114112;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *&result = 0x100000019;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return result;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, int a2, unsigned int a3)
{
  *this = &unk_1F0935B48;
  *(this + 24) = 1114112;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::add(this, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::add(icu::UnicodeSet *this, int a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = 1114111;
  if (a2 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1114111;
    if (a2 <= 0x10FFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  a2 = v5;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a3 > 0x10FFFF)
  {
LABEL_9:
    a3 = v4;
  }

  if (a2 < a3)
  {
    v6 = a3 + 1;
    v7 = *(this + 7);
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = -2;
      }

      else
      {
        v8 = *(*(this + 2) + 4 * v7 - 8);
        if (v8 > a2)
        {
          goto LABEL_23;
        }
      }

      if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
      {
        v9 = *(this + 2) + 4 * v7;
        if (v8 == a2)
        {
          *(v9 - 8) = v6;
          if (a3 == 1114111)
          {
            --*(this + 7);
          }

          goto LABEL_31;
        }

        *(v9 - 4) = a2;
        v11 = *(this + 7);
        if (a3 >= 0x10FFFF)
        {
          if (!icu::UnicodeSet::ensureCapacity(this, v11 + 1))
          {
            goto LABEL_31;
          }

          v12 = *(this + 2);
        }

        else
        {
          if (!icu::UnicodeSet::ensureCapacity(this, v11 + 2))
          {
            goto LABEL_31;
          }

          v12 = *(this + 2);
          v13 = *(this + 7);
          *(this + 7) = v13 + 1;
          *(v12 + 4 * v13) = v6;
        }

        v14 = *(this + 7);
        *(this + 7) = v14 + 1;
        *(v12 + 4 * v14) = 1114112;
LABEL_31:
        v15 = *(this + 8);
        if (v15)
        {
          free(v15);
          *(this + 8) = 0;
          *(this + 18) = 0;
        }

        return this;
      }
    }

LABEL_23:
    v16[0] = a2;
    v16[1] = a3 + 1;
    v16[2] = 1114112;
    icu::UnicodeSet::add(this, v16, 2, 0);
    return this;
  }

  if (a2 == a3)
  {
    icu::UnicodeSet::add(this, a2);
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeSet *a2)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::copyFrom(this, a2, 0);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  v4 = (this + 80);
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  if (icu::UnicodeSet::ensureCapacity(this, *(a2 + 7)))
  {
    v5 = *(a2 + 7);
    *(this + 7) = v5;
    memcpy(*(this + 2), *(a2 + 2), 4 * v5);
    v6 = *(a2 + 10);
    if (v6 && *(v6 + 8) && ((v9 = U_ZERO_ERROR, !icu::UnicodeSet::allocateStrings(this, &v9)) || (icu::UVector::assign(*v4, *(a2 + 10), sub_19527742C, &v9), v9 > U_ZERO_ERROR)))
    {
      icu::UnicodeSet::clear(this);
      *(this + 32) = 1;
    }

    else
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        icu::UnicodeSet::setPattern(this, v7, *(a2 + 18));
      }
    }
  }

  return this;
}

{
  return icu::UnicodeSet::UnicodeSet(this, a2);
}

uint64_t icu::UnicodeSet::ensureCapacity(icu::UnicodeSet *this, unsigned int a2)
{
  if (a2 > 1114112)
  {
    v2 = 1114113;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= *(this + 6))
  {
    return 1;
  }

  if ((2 * v2) > 0x110000)
  {
    v4 = 1114113;
  }

  else
  {
    v4 = 2 * v2;
  }

  if (a2 <= 0x9C4)
  {
    v4 = 5 * v2;
  }

  v5 = v2 + 25;
  if (a2 <= 24)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  if (v7)
  {
    v8 = v7;
    memcpy(v7, *(this + 2), 4 * *(this + 7));
    v9 = *(this + 2);
    if (v9 != this + 96)
    {
      free(v9);
    }

    *(this + 2) = v8;
    *(this + 6) = v6;
    return 1;
  }

  else
  {
    icu::UnicodeSet::clear(this);
    result = 0;
    *(this + 32) = 1;
  }

  return result;
}

uint64_t icu::UnicodeSet::allocateStrings(icu::UnicodeSet *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

icu::UnicodeSet *icu::UnicodeSet::setToBogus(icu::UnicodeSet *this)
{
  result = icu::UnicodeSet::clear(this);
  *(result + 32) = 1;
  return result;
}

UChar *icu::UnicodeSet::setPattern(uint64_t a1, const UChar *a2, int32_t a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    free(v6);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  result = malloc_type_malloc(2 * a3 + 2, 0x1000040BDFB0063uLL);
  *(a1 + 64) = result;
  if (result)
  {
    *(a1 + 72) = a3;
    result = u_memcpy(result, a2, a3);
    *(*(a1 + 64) + 2 * *(a1 + 72)) = 0;
  }

  return result;
}

void icu::UnicodeSet::~UnicodeSet(icu::UnicodeSet *this)
{
  v2 = *(this + 2);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4 != this + 96)
  {
    free(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    v7 = sub_19527EA78(v6);
    MEMORY[0x19A8B2600](v7, 0x10F0C40C1590A34);
  }

  v8 = *(this + 8);
  if (v8)
  {
    free(v8);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

  icu::UnicodeFilter::~UnicodeFilter(this);
}

{
  icu::UnicodeSet::~UnicodeSet(this);

  JUMPOUT(0x19A8B2600);
}

void icu::UnicodeSet::releasePattern(icu::UnicodeSet *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }
}

void non-virtual thunk toicu::UnicodeSet::~UnicodeSet(icu::UnicodeSet *this)
{
  icu::UnicodeSet::~UnicodeSet((this - 8));
}

{
  icu::UnicodeSet::~UnicodeSet((this - 8));

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeSet *icu::UnicodeSet::copyFrom(icu::UnicodeSet *this, const icu::UnicodeSet *a2, int a3)
{
  if (this == a2 || *(this + 5) || *(this + 11))
  {
    return this;
  }

  if (*(a2 + 32))
  {
    goto LABEL_15;
  }

  if (!icu::UnicodeSet::ensureCapacity(this, *(a2 + 7)))
  {
    return this;
  }

  v6 = *(a2 + 7);
  *(this + 7) = v6;
  memcpy(*(this + 2), *(a2 + 2), 4 * v6);
  if (!a3 && *(a2 + 5))
  {
    operator new();
  }

  v7 = *(a2 + 10);
  if (v7 && *(v7 + 8))
  {
    v13 = U_ZERO_ERROR;
    v8 = *(this + 10);
    if (v8)
    {
      goto LABEL_14;
    }

    if (icu::UnicodeSet::allocateStrings(this, &v13))
    {
      v8 = *(this + 10);
      v7 = *(a2 + 10);
LABEL_14:
      icu::UVector::assign(v8, v7, sub_19527742C, &v13);
      if (v13 > U_ZERO_ERROR)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_15:
    icu::UnicodeSet::clear(this);
    *(this + 32) = 1;
    return this;
  }

  v10 = *(this + 10);
  if (v10 && *(v10 + 8))
  {
    icu::UVector::removeAllElements(v10);
  }

LABEL_20:
  if (!a3 && *(a2 + 11))
  {
    operator new();
  }

  v11 = *(this + 8);
  if (v11)
  {
    free(v11);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    icu::UnicodeSet::setPattern(this, v12, *(a2 + 18));
  }

  return this;
}

BOOL icu::UnicodeSet::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  if (v2 != *(a2 + 28))
  {
    return 0;
  }

  if (v2 >= 1)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      if (v5 != v7)
      {
        return 0;
      }
    }

    while (--v2);
  }

  v8 = *(a1 + 80);
  if (!v8)
  {
    v12 = *(a2 + 80);
    return !v12 || !*(v12 + 8);
  }

  v9 = *(v8 + 8);
  v10 = *(a2 + 80);
  if (v10)
  {
    if ((v9 != 0) == (*(v10 + 8) != 0))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  v10 = 0;
LABEL_17:
  if (!*(v8 + 8))
  {
    return 1;
  }

  result = icu::UVector::operator==(v8, v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t icu::UnicodeSet::hashCode(icu::UnicodeSet *this)
{
  result = *(this + 7);
  if (result >= 1)
  {
    v3 = *(this + 2);
    v4 = result;
    do
    {
      v5 = *v3++;
      result = (v5 + 1000003 * result);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t icu::UnicodeSet::size(icu::UnicodeSet *this)
{
  v1 = *(this + 7);
  if (v1 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = v1 >> 1;
    v4 = (*(this + 2) + 4);
    do
    {
      v2 = *v4 + v2 - *(v4 - 1);
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  v5 = *(this + 10);
  if (v5)
  {
    LODWORD(v5) = *(v5 + 8);
  }

  return (v5 + v2);
}

BOOL icu::UnicodeSet::isEmpty(icu::UnicodeSet *this)
{
  if (*(this + 7) != 1)
  {
    return 0;
  }

  v1 = *(this + 10);
  return !v1 || *(v1 + 8) == 0;
}

uint64_t icu::UnicodeSet::contains(icu::UnicodeSet *this, uint64_t a2)
{
  v2 = *(this + 5);
  if (v2)
  {
LABEL_2:
    v3 = *(*v2 + 16);

    return v3(v2, a2);
  }

  else
  {
    while (1)
    {
      v5 = *(this + 11);
      if (!v5)
      {
        break;
      }

      this = (v5 + 8);
      v2 = *(v5 + 48);
      if (v2)
      {
        goto LABEL_2;
      }
    }

    if (a2 < 1114112)
    {
      return icu::UnicodeSet::findCodePoint(this, a2) & 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t icu::UnicodeSet::findCodePoint(icu::UnicodeSet *this, int a2)
{
  v2 = *(this + 2);
  if (*v2 > a2)
  {
    return 0;
  }

  v4 = *(this + 7);
  result = (v4 - 1);
  if (v4 >= 2 && v2[v4 - 2] > a2 && v4 != 2)
  {
    v6 = 0;
    v7 = result >> 1;
    do
    {
      if (v2[v7] > a2)
      {
        result = v7;
      }

      else
      {
        v6 = v7;
        result = result;
      }

      v7 = (result + v6) >> 1;
    }

    while (v7 != v6);
  }

  return result;
}

icu::UVector *icu::UnicodeSet::contains(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
  if ((SingleCP & 0x80000000) != 0)
  {
    result = *(this + 10);
    if (result)
    {
      return (icu::UVector::indexOf(result, a2, 0) >= 0);
    }
  }

  else
  {

    return icu::UnicodeSet::contains(this, SingleCP);
  }

  return result;
}

unint64_t icu::UnicodeSet::getSingleCP(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v2 = *(this + 4);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(this + 3);
  }

  if (v3 == 2)
  {
    result = icu::UnicodeString::char32At(this, 0);
    if (result >= 0x10000)
    {
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v2 & 2) != 0)
  {
    v4 = (this + 10);
  }

  else
  {
    v4 = *(this + 3);
  }

  return *v4;
}

uint64_t icu::UnicodeSet::containsAll(icu::UnicodeSet *this, const icu::UnicodeSet *a2)
{
  v4 = *(a2 + 7);
  if (v4 < 2)
  {
LABEL_6:
    v8 = *(a2 + 10);
    if (v8 && *(v8 + 2))
    {
      result = *(this + 10);
      if (result)
      {
        return icu::UVector::containsAll(result, v8);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = v4 >> 1;
    v6 = (*(a2 + 2) + 4);
    while (1)
    {
      CodePoint = icu::UnicodeSet::findCodePoint(this, *(v6 - 1));
      if ((CodePoint & 1) == 0 || *(*(this + 2) + 4 * CodePoint) < *v6)
      {
        return 0;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

BOOL icu::UnicodeSet::containsAll(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v3 = *(a2 + 4);
  if ((v3 & 0x11) != 0)
  {
    v4 = 0;
  }

  else if ((v3 & 2) != 0)
  {
    v4 = (a2 + 10);
  }

  else
  {
    v4 = *(a2 + 3);
  }

  v5 = v3;
  v6 = v3 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = icu::UnicodeSet::span(this, v4, v7, 1);
  v9 = *(a2 + 4);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 < 0)
  {
    v11 = *(a2 + 3);
  }

  return v8 == v11;
}

unint64_t icu::UnicodeSet::span(icu::UnicodeSet *this, UChar *s, uint64_t a3, int a4)
{
  v5 = a3;
  v32 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return 0;
    }

    v5 = u_strlen(s);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(this + 5);
    if (v8)
    {
      return (sub_1951CA260(v8, s, &s[a3], a4) - s) >> 1;
    }
  }

  v11 = *(this + 11);
  if (!v11)
  {
    v12 = *(this + 10);
    if (v12 && *(v12 + 8))
    {
      v31 = 0;
      if (a4)
      {
        v13 = 42;
      }

      else
      {
        v13 = 41;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(v21, 0, sizeof(v21));
      sub_19527E900(v21, this, v12, v13);
      if (HIDWORD(v22))
      {
        v9 = sub_19527EA7C(v21, s, v5, a4);
        sub_19527EA78(v21);
        return v9;
      }

      sub_19527EA78(v21);
    }

    v9 = 0;
    v14 = a4 != 0;
    do
    {
      v15 = v9 + 1;
      v16 = s[v9];
      if ((v16 & 0xFC00) == 0xD800 && v15 != v5)
      {
        v18 = s[v15];
        v19 = (v18 & 0xFC00) == 56320;
        v20 = v18 + (v16 << 10) - 56613888;
        if (v19)
        {
          v16 = v20;
        }

        else
        {
          v16 = s[v9];
        }

        if (v19)
        {
          v15 = (v9 + 2);
        }

        else
        {
          v15 = v15;
        }
      }

      if (v14 != icu::UnicodeSet::contains(this, v16))
      {
        break;
      }

      v9 = v15;
    }

    while (v15 < v5);
    return v9;
  }

  return sub_19527EA7C(v11, s, v5, a4);
}

BOOL icu::UnicodeSet::containsNone(icu::UnicodeSet *this, const icu::UnicodeSet *a2)
{
  v4 = *(a2 + 7);
  if (v4 < 2)
  {
LABEL_6:
    v8 = *(this + 10);
    return !v8 || (v9 = *(a2 + 10)) == 0 || !*(v9 + 2) || icu::UVector::containsNone(v8, v9) != 0;
  }

  else
  {
    v5 = v4 >> 1;
    v6 = (*(a2 + 2) + 4);
    while (1)
    {
      CodePoint = icu::UnicodeSet::findCodePoint(this, *(v6 - 1));
      if ((CodePoint & 1) != 0 || *(*(this + 2) + 4 * CodePoint) < *v6)
      {
        return 0;
      }

      v6 += 2;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }
}

BOOL icu::UnicodeSet::containsNone(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v3 = *(a2 + 4);
  if ((v3 & 0x11) != 0)
  {
    v4 = 0;
  }

  else if ((v3 & 2) != 0)
  {
    v4 = (a2 + 10);
  }

  else
  {
    v4 = *(a2 + 3);
  }

  v5 = v3;
  v6 = v3 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = icu::UnicodeSet::span(this, v4, v7, 0);
  v9 = *(a2 + 4);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 < 0)
  {
    v11 = *(a2 + 3);
  }

  return v8 == v11;
}

uint64_t icu::UnicodeSet::matchesIndexValue(icu::UnicodeSet *this, unsigned int a2)
{
  v4 = *(this + 7);
  if (v4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (*(this + 2) + 4);
    do
    {
      v7 = *(v6 - 1);
      v8 = (*v6 - 1);
      if (((*v6 - 1) ^ *(v6 - 1)) > 0xFF)
      {
        if (v7 <= a2 || v8 >= a2)
        {
          return 1;
        }
      }

      else if (v7 <= a2 && v8 >= a2)
      {
        return 1;
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  result = *(this + 10);
  if (result)
  {
    if (*(result + 8) < 1)
    {
      return 0;
    }

    else
    {
      v12 = 0;
      while (1)
      {
        v13 = icu::UVector::elementAt(result, v12);
        if (v13[4] >= 0x20u && a2 == icu::UnicodeString::char32At(v13, 0))
        {
          break;
        }

        ++v12;
        result = *(this + 10);
        if (v12 >= *(result + 8))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t icu::UnicodeSet::matches(int **this, const icu::Replaceable *a2, int *a3, int a4, int a5)
{
  v7 = *a3;
  if (*a3 == a4)
  {
    v8 = icu::UnicodeSet::contains(this, 0xFFFFLL);
    if (a5)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  v14 = this[10];
  if (!v14 || !v14[2] || (v15 = (*(*a2 + 72))(a2, *a3), v16 = this[10], v16[2] < 1))
  {
LABEL_51:

    return icu::UnicodeFilter::matches(this, a2, a3, a4, a5);
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = icu::UVector::elementAt(v16, v17);
    v20 = *(v19 + 8);
    if (v20 < 0x20)
    {
LABEL_44:
      v30 = v18;
      goto LABEL_45;
    }

    v21 = v19;
    if (v7 >= a4)
    {
      if ((v20 & 0x8000) != 0)
      {
        v24 = *(v19 + 12);
      }

      else
      {
        v24 = v20 >> 5;
      }

      v22 = v24 - 1;
      if ((v20 & 0x8000) == 0)
      {
LABEL_15:
        v23 = v20 >> 5;
        goto LABEL_21;
      }
    }

    else
    {
      v22 = 0;
      if ((v20 & 0x8000) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = *(v19 + 12);
LABEL_21:
    if (v23 <= v22)
    {
      v26 = 0xFFFF;
    }

    else
    {
      v25 = (v20 & 2) != 0 ? v19 + 10 : *(v19 + 24);
      v26 = *(v25 + 2 * v22);
    }

    if (v7 < a4 && v26 > v15)
    {
      break;
    }

    if (v26 != v15)
    {
      goto LABEL_44;
    }

    matched = icu::UnicodeSet::matchRest(a2, *a3, a4, v19);
    if (a5)
    {
      v28 = *a3 - a4;
      if (v7 < a4)
      {
        v28 = a4 - *a3;
      }

      if (matched == v28)
      {
        return 1;
      }
    }

    v29 = *(v21 + 8) < 0 ? *(v21 + 12) : *(v21 + 8) >> 5;
    if (matched != v29)
    {
      goto LABEL_44;
    }

    if (matched <= v18)
    {
      v30 = v18;
    }

    else
    {
      v30 = matched;
    }

    if (v7 < a4 && v18 > matched)
    {
LABEL_46:
      if (!v30)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

LABEL_45:
    ++v17;
    v16 = this[10];
    v18 = v30;
    if (v17 >= v16[2])
    {
      goto LABEL_46;
    }
  }

  LODWORD(v30) = v18;
  if (!v18)
  {
    goto LABEL_51;
  }

LABEL_47:
  if (v7 >= a4)
  {
    LODWORD(v30) = -v30;
  }

  *a3 += v30;
  return 2;
}

uint64_t icu::UnicodeSet::matchRest(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(a4 + 12);
  }

  v9 = a2 - a3;
  if (a2 >= a3)
  {
    if (v9 >= v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = v9;
    }

    if (v18 >= 2)
    {
      v19 = v8 - 2;
      v20 = (a2 - 1);
      v21 = v18 - 1;
      while (1)
      {
        v22 = (*(*a1 + 72))(a1, v20);
        v23 = *(a4 + 8);
        v24 = (v23 & 0x8000u) == 0 ? v23 >> 5 : *(a4 + 12);
        if (v24 <= v19)
        {
          v26 = 0xFFFF;
        }

        else
        {
          v25 = (v23 & 2) != 0 ? a4 + 10 : *(a4 + 24);
          v26 = *(v25 + 2 * v19);
        }

        if (v22 != v26)
        {
          break;
        }

        --v19;
        v20 = (v20 - 1);
        if (!--v21)
        {
          return v18;
        }
      }

      return 0;
    }
  }

  else
  {
    if (a3 - a2 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = (a3 - a2);
    }

    if (v10 >= 2)
    {
      v11 = (a2 + 1);
      v12 = 1;
      while (1)
      {
        v13 = (*(*a1 + 72))(a1, v11);
        v14 = *(a4 + 8);
        v15 = (v14 & 0x8000u) == 0 ? v14 >> 5 : *(a4 + 12);
        if (v12 >= v15)
        {
          v17 = 0xFFFF;
        }

        else
        {
          v16 = (v14 & 2) != 0 ? a4 + 10 : *(a4 + 24);
          v17 = *(v16 + 2 * v12);
        }

        if (v13 != v17)
        {
          break;
        }

        ++v12;
        v11 = (v11 + 1);
        if (v10 == v12)
        {
          return v10;
        }
      }

      return 0;
    }

    return v10;
  }

  return v18;
}

icu::UVector **icu::UnicodeSet::addAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  v4 = *(a2 + 7);
  if (v4 >= 1)
  {
    v5 = *(a2 + 2);
    if (v5)
    {
      icu::UnicodeSet::add(this, v5, v4, 0);
    }
  }

  v6 = *(a2 + 10);
  if (v6 && *(v6 + 2) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = icu::UVector::elementAt(v6, v7);
      v9 = this[10];
      if (!v9 || (icu::UVector::indexOf(v9, v8, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::_add(this, v8);
      }

      ++v7;
      v6 = *(a2 + 10);
    }

    while (v7 < *(v6 + 2));
  }

  return this;
}

uint64_t icu::UnicodeSet::indexOf(icu::UnicodeSet *this, signed int a2)
{
  if (HIWORD(a2) <= 0x10u)
  {
    v3 = 0;
    for (i = (*(this + 2) + 4); ; i += 2)
    {
      v5 = *(i - 1);
      if (v5 > a2)
      {
        break;
      }

      v6 = v3;
      v7 = *i;
      v3 = v3 - v5 + v7;
      if (v7 > a2)
      {
        return (v6 + a2 - v5);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t icu::UnicodeSet::charAt(icu::UnicodeSet *this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = 0;
    while (v2 < (*(this + 7) & 0xFFFFFFFFFFFFFFFELL))
    {
      v3 = a2;
      v4 = *(this + 2) + 4 * v2;
      v2 += 2;
      v5 = *v4;
      LODWORD(v4) = *(v4 + 4) - *v4;
      v6 = __OFSUB__(a2, v4);
      a2 -= v4;
      if (a2 < 0 != v6)
      {
        return (v5 + v3);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

icu::UnicodeSet *icu::UnicodeSet::set(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v6 = icu::UnicodeSet::clear(this);

  return icu::UnicodeSet::complement(v6, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::clear(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11))
  {
    **(this + 2) = 1114112;
    *(this + 7) = 1;
    v2 = *(this + 8);
    if (v2)
    {
      free(v2);
      *(this + 8) = 0;
      *(this + 18) = 0;
    }

    v3 = *(this + 10);
    if (v3)
    {
      icu::UVector::removeAllElements(v3);
    }

    *(this + 32) = 0;
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::complement(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 5) || *(this + 11) || (*(this + 32) & 1) != 0)
  {
    return this;
  }

  v4 = 1114111;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v5 = 1114111;
  if (a2 > 0x10FFFF)
  {
LABEL_8:
    a2 = v5;
  }

  if ((a3 & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else if (a3 <= 0x10FFFF)
  {
    goto LABEL_14;
  }

  a3 = v4;
LABEL_14:
  if (a2 <= a3)
  {
    v8[0] = a2;
    v8[1] = a3 + 1;
    v8[2] = 1114112;
    icu::UnicodeSet::exclusiveOr(this, v8, 2, 0);
  }

  v6 = *(this + 8);
  if (v6)
  {
    free(v6);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }

  return this;
}

void icu::UnicodeSet::add(icu::UnicodeSet *this, int *a2, int a3, unsigned __int8 a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(this + 5) || *(this + 11) || !a2 || (*(this + 32) & 1) != 0 || !icu::UnicodeSet::ensureBufferCapacity(this, *(this + 7) + a3))
  {
    return;
  }

  v8 = 0;
  v9 = *(this + 2);
  v10 = *v9;
  v11 = *a2;
  v12 = 1;
  v13 = 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (a4 <= 1u)
        {
          if (a4)
          {
            if (a4 == 1)
            {
              if (v10 >= v11)
              {
                if (v11 >= v10)
                {
                  if (v10 == 1114112)
                  {
                    goto LABEL_59;
                  }

                  v10 = v9[v13++];
                  v11 = a2[v12++];
                  a4 = 2;
                }

                else
                {
                  v11 = a2[v12++];
                  a4 = 3;
                }
              }

              else
              {
                v14 = *(this + 14);
                if ((v8 >= v14 || v13 >= *(this + 6)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v15 = *(this + 6);
                  *buf = 67110912;
                  v28 = v8;
                  v29 = 1024;
                  v30 = v14;
                  v31 = 1024;
                  v32 = v13;
                  v33 = 1024;
                  v34 = v15;
                  v35 = 1024;
                  v36 = v12;
                  v37 = 1024;
                  v38 = a3;
                  v39 = 1024;
                  v40 = v10;
                  v41 = 1024;
                  v42 = v11;
                  _os_log_impl(&dword_1951C9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "# UnicodeSet::add case 1, k %d bufCap %d i %d cap %d j %d otherLen %d a %04X b %04X", buf, 0x32u);
                  v9 = *(this + 2);
                }

                a4 = 0;
                *(*(this + 6) + 4 * v8++) = v10;
                v10 = v9[v13++];
              }
            }
          }

          else if (v10 >= v11)
          {
            if (v11 >= v10)
            {
              if (v10 == 1114112)
              {
                goto LABEL_59;
              }

              v20 = *(this + 6);
              v21 = v8 - 1;
              if (v8 >= 1 && v10 <= *(v20 + 4 * v8 - 4))
              {
                v24 = *(v20 + 4 * v21);
                if (v9[v13] <= v24)
                {
                  v10 = v24;
                }

                else
                {
                  v10 = v9[v13];
                }
              }

              else
              {
                v21 = v8 + 1;
                *(v20 + 4 * v8) = v10;
                v10 = v9[v13];
              }

              ++v13;
              v11 = a2[v12++];
              a4 = 3;
              v8 = v21;
            }

            else
            {
              v18 = *(this + 6);
              v19 = v8 - 1;
              if (v8 >= 1 && v11 <= *(v18 + 4 * v8 - 4))
              {
                v23 = *(v18 + 4 * v19);
                if (a2[v12] <= v23)
                {
                  v11 = v23;
                }

                else
                {
                  v11 = a2[v12];
                }
              }

              else
              {
                v19 = v8 + 1;
                *(v18 + 4 * v8) = v11;
                v11 = a2[v12];
              }

              ++v12;
              a4 = 2;
              v8 = v19;
            }
          }

          else
          {
            v16 = *(this + 6);
            v17 = v8 - 1;
            if (v8 >= 1 && v10 <= *(v16 + 4 * v8 - 4))
            {
              v22 = *(v16 + 4 * v17);
              if (v9[v13] <= v22)
              {
                v10 = v22;
              }

              else
              {
                v10 = v9[v13];
              }
            }

            else
            {
              v17 = v8 + 1;
              *(v16 + 4 * v8) = v10;
              v10 = v9[v13];
            }

            ++v13;
            a4 = 1;
            v8 = v17;
          }
        }

        if (a4 == 2)
        {
          break;
        }

        if (a4 == 3)
        {
          if (v11 <= v10)
          {
            if (v10 == 1114112)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v10 = v11;
            if (v11 == 1114112)
            {
              goto LABEL_59;
            }
          }

          a4 = 0;
          *(*(this + 6) + 4 * v8++) = v10;
          v10 = v9[v13++];
LABEL_32:
          v11 = a2[v12++];
        }
      }

      if (v11 < v10)
      {
        a4 = 0;
        *(*(this + 6) + 4 * v8++) = v11;
        goto LABEL_32;
      }

      if (v10 >= v11)
      {
        break;
      }

      v10 = v9[v13++];
      a4 = 3;
    }

    if (v10 == 1114112)
    {
      break;
    }

    v10 = v9[v13++];
    v11 = a2[v12++];
    a4 = 1;
  }

LABEL_59:
  v25 = *(this + 6);
  *(v25 + 4 * v8) = 1114112;
  *(this + 2) = v25;
  *(this + 6) = v9;
  LODWORD(v25) = *(this + 6);
  *(this + 6) = *(this + 14);
  *(this + 7) = v8 + 1;
  *(this + 14) = v25;
  v26 = *(this + 8);
  if (v26)
  {
    free(v26);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }
}

icu::UnicodeSet *icu::UnicodeSet::add(icu::UnicodeSet *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    if (a2 >= 0x110000)
    {
      v3 = 1114111;
    }
  }

  CodePoint = icu::UnicodeSet::findCodePoint(this, v3);
  if ((CodePoint & 1) == 0 && !*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    v5 = CodePoint;
    v6 = *(this + 2);
    v7 = CodePoint;
    if (v3 == *(v6 + 4 * CodePoint) - 1)
    {
      *(v6 + 4 * CodePoint) = v3;
      if (v3 == 1114111)
      {
        if (!icu::UnicodeSet::ensureCapacity(this, *(this + 7) + 1))
        {
          return this;
        }

        v6 = *(this + 2);
        v8 = *(this + 7);
        *(this + 7) = v8 + 1;
        *(v6 + 4 * v8) = 1114112;
      }

      if (v5 < 1 || v3 != *(v6 + 4 * v5 - 4))
      {
        goto LABEL_26;
      }

      v9 = v6 + 4 * v7;
      v10 = *(this + 7);
      if (v9 + 4 < (v6 + 4 * v10))
      {
        v11 = v6 + 4 * v10;
        if (v9 + 8 > v11)
        {
          v11 = v9 + 8;
        }

        memmove((v9 - 4), (v9 + 4), ((v11 - v9 - 5) & 0xFFFFFFFFFFFFFFFCLL) + 4);
        v10 = *(this + 7);
      }

      v12 = v10 - 2;
    }

    else
    {
      if (CodePoint >= 1)
      {
        v13 = v6 + 4 * CodePoint;
        if (v3 == *(v13 - 4))
        {
          *(v13 - 4) = v3 + 1;
          goto LABEL_26;
        }
      }

      if (!icu::UnicodeSet::ensureCapacity(this, *(this + 7) + 2))
      {
        return this;
      }

      memmove((*(this + 2) + 4 * v7 + 8), (*(this + 2) + 4 * v7), 4 * (*(this + 7) - v5));
      v14 = (*(this + 2) + 4 * v7);
      *v14 = v3;
      v14[1] = v3 + 1;
      v12 = *(this + 7) + 2;
    }

    *(this + 7) = v12;
LABEL_26:
    v15 = *(this + 8);
    if (v15)
    {
      free(v15);
      *(this + 8) = 0;
      *(this + 18) = 0;
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::add(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v6 = *(this + 10);
      if (!v6 || (icu::UVector::indexOf(v6, a2, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::_add(this, a2);
        v7 = *(this + 8);
        if (v7)
        {
          free(v7);
          *(this + 8) = 0;
          *(this + 18) = 0;
        }
      }
    }

    else
    {
      icu::UnicodeSet::add(this, SingleCP);
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::_add(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5))
  {
    v6 = v2;
    v7 = v3;
    v4 = this;
    if (!*(this + 11) && (*(this + 32) & 1) == 0)
    {
      v5 = U_ZERO_ERROR;
      if (*(this + 10) || icu::UnicodeSet::allocateStrings(this, &v5))
      {
        operator new();
      }

      this = icu::UnicodeSet::clear(v4);
      *(v4 + 32) = 1;
    }
  }

  return this;
}

uint64_t sub_195279054(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v3 = *(a1 + 12);
  }

  else
  {
    v3 = v2 >> 5;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    return (v2 & 1) == 0;
  }

  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(a2 + 12);
  }

  if ((v4 & 2) != 0)
  {
    v6 = a2 + 10;
  }

  else
  {
    v6 = *(a2 + 24);
  }

  return icu::UnicodeString::doCompare(a1, 0, v3, v6, v5 & (v5 >> 31), v5 & ~(v5 >> 31));
}

icu::UnicodeSet *icu::UnicodeSet::addAll(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  v3 = *(a2 + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(a2 + 3);
  }

  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = icu::UnicodeString::char32At(a2, v7);
      icu::UnicodeSet::add(this, v8);
      if (v8 < 0x10000)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
      v10 = *(a2 + 4);
      v11 = v10;
      v12 = v10 >> 5;
      if (v11 < 0)
      {
        v12 = *(a2 + 3);
      }
    }

    while (v7 < v12);
  }

  return this;
}

icu::UVector **icu::UnicodeSet::retainAll(icu::UVector **this, const icu::UnicodeString *a2)
{
  v5 = 0uLL;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4[0] = &unk_1F0935B48;
  v4[1] = &unk_1F0935C60;
  v4[2] = v9;
  v4[3] = 0x100000019;
  v6 = 0uLL;
  v8 = 0uLL;
  v7 = 0uLL;
  LODWORD(v9[0]) = 1114112;
  icu::UnicodeSet::addAll(v4, a2);
  icu::UnicodeSet::retainAll(this, v4);
  icu::UnicodeSet::~UnicodeSet(v4);
  return this;
}

icu::UVector **icu::UnicodeSet::retainAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    icu::UnicodeSet::retain(this, *(a2 + 2), *(a2 + 7), 0);
    v4 = this[10];
    if (v4)
    {
      if (*(v4 + 2))
      {
        v5 = *(a2 + 10);
        if (v5 && *(v5 + 2))
        {
          icu::UVector::retainAll(v4, v5);
        }

        else
        {
          icu::UVector::removeAllElements(v4);
        }
      }
    }
  }

  return this;
}

icu::UVector **icu::UnicodeSet::complementAll(icu::UVector **this, const icu::UnicodeString *a2)
{
  v5 = 0uLL;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4[0] = &unk_1F0935B48;
  v4[1] = &unk_1F0935C60;
  v4[2] = v9;
  v4[3] = 0x100000019;
  v6 = 0uLL;
  v8 = 0uLL;
  v7 = 0uLL;
  LODWORD(v9[0]) = 1114112;
  icu::UnicodeSet::addAll(v4, a2);
  icu::UnicodeSet::complementAll(this, v4);
  icu::UnicodeSet::~UnicodeSet(v4);
  return this;
}

icu::UVector **icu::UnicodeSet::complementAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    icu::UnicodeSet::exclusiveOr(this, *(a2 + 2), *(a2 + 7), 0);
    v4 = *(a2 + 10);
    if (v4)
    {
      if (*(v4 + 2) >= 1)
      {
        v5 = 0;
        do
        {
          v6 = icu::UVector::elementAt(v4, v5);
          v7 = this[10];
          if (!v7 || !icu::UVector::removeElement(v7, v6))
          {
            icu::UnicodeSet::_add(this, v6);
          }

          ++v5;
          v4 = *(a2 + 10);
        }

        while (v5 < *(v4 + 2));
      }
    }
  }

  return this;
}

icu::UVector **icu::UnicodeSet::removeAll(icu::UVector **this, const icu::UnicodeString *a2)
{
  v5 = 0uLL;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4[0] = &unk_1F0935B48;
  v4[1] = &unk_1F0935C60;
  v4[2] = v9;
  v4[3] = 0x100000019;
  v6 = 0uLL;
  v8 = 0uLL;
  v7 = 0uLL;
  LODWORD(v9[0]) = 1114112;
  icu::UnicodeSet::addAll(v4, a2);
  icu::UnicodeSet::removeAll(this, v4);
  icu::UnicodeSet::~UnicodeSet(v4);
  return this;
}

icu::UVector **icu::UnicodeSet::removeAll(icu::UVector **this, const icu::UnicodeSet *a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    icu::UnicodeSet::retain(this, *(a2 + 2), *(a2 + 7), 2u);
    v4 = this[10];
    if (v4)
    {
      if (*(v4 + 2))
      {
        v5 = *(a2 + 10);
        if (v5)
        {
          if (*(v5 + 2))
          {
            icu::UVector::removeAll(v4, v5);
          }
        }
      }
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::removeAllStrings(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11))
  {
    v3 = *(this + 10);
    if (v3)
    {
      if (*(v3 + 8))
      {
        icu::UVector::removeAllElements(v3);
        v4 = *(this + 8);
        if (v4)
        {
          free(v4);
          *(this + 8) = 0;
          *(this + 18) = 0;
        }
      }
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::retain(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 1114111;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1114111;
    if (a2 <= 0x10FFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  a2 = v5;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a3 > 0x10FFFF)
  {
LABEL_9:
    a3 = v4;
  }

  if (a2 <= a3)
  {
    v7[0] = a2;
    v7[1] = a3 + 1;
    v7[2] = 1114112;
    icu::UnicodeSet::retain(this, v7, 2, 0);
  }

  else
  {
    icu::UnicodeSet::clear(this);
  }

  return this;
}

void icu::UnicodeSet::retain(icu::UnicodeSet *this, int *a2, int a3, unsigned __int8 a4)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0 && icu::UnicodeSet::ensureBufferCapacity(this, *(this + 7) + a3))
  {
    v7 = 0;
    v8 = *(this + 2);
    v9 = *v8;
    v10 = *a2;
    v11 = 1;
    v12 = 1;
    while (1)
    {
      while (1)
      {
        while (a4 <= 1u)
        {
          if (a4)
          {
            if (a4 == 1)
            {
              if (v9 >= v10)
              {
                if (v10 < v9)
                {
                  *(*(this + 6) + 4 * v7++) = v10;
                  v10 = a2[v12];
                  goto LABEL_26;
                }

                if (v9 == 1114112)
                {
                  goto LABEL_38;
                }

                v9 = v8[v11++];
LABEL_31:
                v10 = a2[v12++];
                a4 = 2;
              }

              else
              {
                a4 = 0;
                v9 = v8[v11++];
              }
            }
          }

          else if (v9 >= v10)
          {
            if (v10 < v9)
            {
              goto LABEL_31;
            }

            if (v9 == 1114112)
            {
              goto LABEL_38;
            }

            *(*(this + 6) + 4 * v7++) = v9;
            v9 = v8[v11];
            v10 = a2[v12];
            ++v11;
LABEL_26:
            ++v12;
            a4 = 3;
          }

          else
          {
            v9 = v8[v11++];
            a4 = 1;
          }
        }

        if (a4 == 2)
        {
          break;
        }

        if (a4 == 3)
        {
          if (v9 >= v10)
          {
            if (v10 < v9)
            {
              *(*(this + 6) + 4 * v7++) = v10;
              goto LABEL_37;
            }

            if (v9 == 1114112)
            {
              goto LABEL_38;
            }

            a4 = 0;
            *(*(this + 6) + 4 * v7++) = v9;
            v9 = v8[v11++];
LABEL_34:
            v10 = a2[v12++];
          }

          else
          {
            *(*(this + 6) + 4 * v7++) = v9;
            v9 = v8[v11++];
            a4 = 2;
          }
        }
      }

      if (v10 < v9)
      {
        a4 = 0;
        goto LABEL_34;
      }

      if (v9 >= v10)
      {
        if (v9 == 1114112)
        {
LABEL_38:
          v13 = *(this + 6);
          *(v13 + 4 * v7) = 1114112;
          *(this + 2) = v13;
          *(this + 6) = v8;
          v14 = *(this + 6);
          *(this + 6) = *(this + 14);
          *(this + 7) = v7 + 1;
          *(this + 14) = v14;
          v15 = *(this + 8);
          if (v15)
          {
            free(v15);
            *(this + 8) = 0;
            *(this + 18) = 0;
          }

          return;
        }

        v9 = v8[v11++];
LABEL_37:
        v10 = a2[v12++];
        a4 = 1;
      }

      else
      {
        *(*(this + 6) + 4 * v7++) = v9;
        v9 = v8[v11++];
        a4 = 3;
      }
    }
  }
}

icu::UnicodeSet *icu::UnicodeSet::retain(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v5 = *(this + 10);
      if (!v5 || (icu::UVector::indexOf(v5, a2, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::clear(this);
      }

      else if ((*(this + 7) + 1) > 2 || icu::UnicodeSet::size(this) != 1)
      {
        v6 = icu::UnicodeSet::clear(this);
        icu::UnicodeSet::_add(v6, a2);
      }
    }

    else
    {
      icu::UnicodeSet::retain(this, SingleCP, SingleCP);
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::remove(icu::UnicodeSet *this, unsigned int a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 1114111;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1114111;
    if (a2 <= 0x10FFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  a2 = v5;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a3 > 0x10FFFF)
  {
LABEL_9:
    a3 = v4;
  }

  if (a2 <= a3)
  {
    v7[0] = a2;
    v7[1] = a3 + 1;
    v7[2] = 1114112;
    icu::UnicodeSet::retain(this, v7, 2, 2u);
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::remove(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v6 = *(this + 10);
      if (v6)
      {
        if (icu::UVector::removeElement(v6, a2))
        {
          v7 = *(this + 8);
          if (v7)
          {
            free(v7);
            *(this + 8) = 0;
            *(this + 18) = 0;
          }
        }
      }
    }

    else
    {
      icu::UnicodeSet::remove(this, SingleCP, SingleCP);
    }
  }

  return this;
}

void icu::UnicodeSet::exclusiveOr(icu::UnicodeSet *this, int *a2, int a3, unsigned __int8 a4)
{
  if (*(this + 5) || *(this + 11) || (*(this + 32) & 1) != 0 || !icu::UnicodeSet::ensureBufferCapacity(this, *(this + 7) + a3))
  {
    return;
  }

  v7 = *(this + 2);
  v8 = *v7;
  v9 = *a2;
  if (a4 - 1 > 1)
  {
    goto LABEL_9;
  }

  if (!v9)
  {
    v9 = a2[1];
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v10 = 0;
  v9 = 0;
LABEL_10:
  v11 = 0;
  v12 = 1;
LABEL_11:
  v13 = 0;
  for (i = &a2[v10]; ; v9 = i[v13++])
  {
    if (v8 < v9)
    {
      *(*(this + 6) + 4 * v11 + 4 * v13) = v8;
      v10 += v13;
      v11 += v13 + 1;
LABEL_18:
      v8 = v7[v12++];
      goto LABEL_11;
    }

    if (v9 >= v8)
    {
      break;
    }

    *(*(this + 6) + 4 * v11 + 4 * v13) = v9;
  }

  if (v8 != 1114112)
  {
    v11 += v13;
    v10 += v13 + 1;
    v9 = i[v13];
    goto LABEL_18;
  }

  v15 = *(this + 6);
  *(v15 + 4 * v11 + 4 * v13) = 1114112;
  *(this + 2) = v15;
  *(this + 6) = v7;
  v16 = *(this + 6);
  *(this + 6) = *(this + 14);
  *(this + 7) = v11 + v13 + 1;
  *(this + 14) = v16;
  v17 = *(this + 8);
  if (v17)
  {
    free(v17);
    *(this + 8) = 0;
    *(this + 18) = 0;
  }
}

icu::UnicodeSet *icu::UnicodeSet::complement(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    v2 = *(this + 2);
    if (*v2)
    {
      if (!icu::UnicodeSet::ensureCapacity(this, *(this + 7) + 1))
      {
        return this;
      }

      memmove((*(this + 2) + 4), *(this + 2), 4 * *(this + 7));
      **(this + 2) = 0;
      v3 = 1;
    }

    else
    {
      memmove(v2, v2 + 1, 4 * *(this + 7) - 4);
      v3 = -1;
    }

    *(this + 7) += v3;
    v4 = *(this + 8);
    if (v4)
    {
      free(v4);
      *(this + 8) = 0;
      *(this + 18) = 0;
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::complement(icu::UnicodeSet *this, const icu::UnicodeString *a2)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    SingleCP = icu::UnicodeSet::getSingleCP(a2, a2);
    if ((SingleCP & 0x80000000) != 0)
    {
      v5 = *(this + 10);
      if (!v5 || (icu::UVector::indexOf(v5, a2, 0) & 0x80000000) != 0)
      {
        icu::UnicodeSet::_add(this, a2);
      }

      else
      {
        icu::UVector::removeElement(*(this + 10), a2);
      }

      v6 = *(this + 8);
      if (v6)
      {
        free(v6);
        *(this + 8) = 0;
        *(this + 18) = 0;
      }
    }

    else
    {
      icu::UnicodeSet::complement(this, SingleCP, SingleCP);
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::compact(icu::UnicodeSet *this)
{
  if (*(this + 5) || *(this + 11) || (*(this + 32) & 1) != 0)
  {
    return this;
  }

  v2 = *(this + 6);
  v3 = this + 96;
  if (v2 != this + 96)
  {
    free(v2);
    *(this + 6) = 0;
    *(this + 14) = 0;
  }

  v4 = *(this + 2);
  if (v4 != v3)
  {
    v5 = *(this + 7);
    if (v5 <= 25)
    {
      memcpy(this + 96, *(this + 2), 4 * v5);
      free(v4);
      *(this + 2) = v3;
      v6 = 25;
LABEL_12:
      *(this + 6) = v6;
      goto LABEL_13;
    }

    if (v5 + 7 < *(this + 6))
    {
      v7 = malloc_type_realloc(*(this + 2), 4 * v5, 0x100004052888210uLL);
      if (v7)
      {
        *(this + 2) = v7;
        v6 = *(this + 7);
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  v8 = *(this + 10);
  if (v8 && !v8[2])
  {
    (*(*v8 + 8))(v8);
    *(this + 10) = 0;
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, unsigned __int16 *a2, int a3, int a4, int *a5)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (*a5 >= 1)
  {
    icu::UnicodeSet::clear(this);
    *(this + 32) = 1;
    return this;
  }

  if (a3 < 1 || !a2 || a4)
  {
    *a5 = 1;
    icu::UnicodeSet::clear(this);
    *(this + 32) = 1;
    return this;
  }

  v7 = *a2;
  if (v7 >= 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  LODWORD(v9) = *a2;
  if (v7 < 0)
  {
    LODWORD(v9) = a2[1];
  }

  v10 = (*a2 & 0x7FFF) - v9;
  v11 = (v9 + v10 / 2);
  if (icu::UnicodeSet::ensureCapacity(this, v11 + 1))
  {
    v12 = *(this + 2);
    if (v9)
    {
      v13 = v9;
      v14 = *(this + 2);
      v15 = &a2[v8];
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v13;
      }

      while (v13);
    }

    if (v10 < 2)
    {
      if (!v9)
      {
        v20 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v9 = v9;
      v17 = &a2[(v8 + v9) + 1];
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v17 += 2;
        *(v12 + 4 * v9++) = v19 | (v18 << 16);
      }

      while (v9 < v11);
    }

    if (*(v12 + 4 * v9 - 4) == 1114112)
    {
LABEL_25:
      *(this + 7) = v9;
      return this;
    }

    v20 = v9;
LABEL_24:
    LODWORD(v9) = v9 + 1;
    *(v12 + 4 * v20) = 1114112;
    goto LABEL_25;
  }

  return this;
}

uint64_t icu::UnicodeSet::serialize(icu::UnicodeSet *this, unsigned __int16 *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 < 0 || !a2 && a3)
  {
    result = 0;
    v5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_7:
    *a4 = v5;
    return result;
  }

  v6 = *(this + 7);
  v7 = (v6 - 1);
  if (v6 == 1)
  {
    if (a3)
    {
      *a2 = 0;
    }

    else
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    return 1;
  }

  else
  {
    v8 = *(this + 2);
    if (v8[v6 - 2] >= 0x10000)
    {
      if (*v8 < 0x10000)
      {
        if (v6 < 2)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          v10 = 0;
          while (v8[v10] < 0x10000)
          {
            if (v7 == ++v10)
            {
              LODWORD(v10) = v6 - 1;
              break;
            }
          }
        }

        v9 = v10 + 2 * (v7 - v10);
        LODWORD(v7) = v10;
      }

      else
      {
        v9 = 2 * v7;
        LODWORD(v7) = 0;
      }
    }

    else
    {
      v9 = v6 - 1;
    }

    if (v9 >= 0x8000)
    {
      result = 0;
      v5 = U_INDEX_OUTOFBOUNDS_ERROR;
      goto LABEL_7;
    }

    if (v9 <= v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    result = (v11 + v9);
    if (result > a3)
    {
      v5 = U_BUFFER_OVERFLOW_ERROR;
      goto LABEL_7;
    }

    *a2 = v9;
    if (v9 > v7)
    {
      *a2 = v9 | 0x8000;
      a2[1] = v7;
      ++a2;
    }

    v12 = a2 + 1;
    if (v7 < 1)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v13 = v7;
      do
      {
        v14 = *v8++;
        *v12++ = v14;
        --v13;
      }

      while (v13);
    }

    while (v7 < v9)
    {
      v15 = *v8++;
      HIDWORD(v16) = v15;
      LODWORD(v16) = v15;
      *v12 = v16 >> 16;
      v12 += 2;
      LODWORD(v7) = v7 + 2;
    }
  }

  return result;
}

uint64_t icu::UnicodeSet::nextCapacity(icu::UnicodeSet *this)
{
  if (this <= 24)
  {
    return (this + 25);
  }

  if (this <= 0x9C4)
  {
    return (5 * this);
  }

  if ((2 * this) > 0x110000)
  {
    return 1114113;
  }

  return (2 * this);
}

uint64_t icu::UnicodeSet::ensureBufferCapacity(icu::UnicodeSet *this, unsigned int a2)
{
  if (a2 > 1114112)
  {
    v2 = 1114113;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= *(this + 14))
  {
    return 1;
  }

  if ((2 * v2) > 0x110000)
  {
    v4 = 1114113;
  }

  else
  {
    v4 = 2 * v2;
  }

  if (a2 <= 0x9C4)
  {
    v4 = 5 * v2;
  }

  v5 = v2 + 25;
  if (a2 <= 24)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  if (v7)
  {
    v8 = v7;
    v9 = *(this + 6);
    if (v9 != this + 96)
    {
      free(v9);
    }

    *(this + 6) = v8;
    *(this + 14) = v6;
    return 1;
  }

  else
  {
    icu::UnicodeSet::clear(this);
    result = 0;
    *(this + 32) = 1;
  }

  return result;
}

uint64_t icu::UnicodeSet::swapBuffers(uint64_t this)
{
  v1 = *(this + 16);
  *(this + 16) = *(this + 48);
  *(this + 48) = v1;
  LODWORD(v1) = *(this + 24);
  *(this + 24) = *(this + 56);
  *(this + 56) = v1;
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::_appendToPat(icu::UnicodeSet *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v3 = *(a2 + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(a2 + 3);
  }

  if (v5 >= 1)
  {
    v6 = a3;
    v8 = this;
    v9 = 0;
    do
    {
      v10 = icu::UnicodeString::char32At(a2, v9);
      v11 = v10;
      this = icu::UnicodeSet::_appendToPat(v8, v10, v6);
      if (v11 < 0x10000)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v9 += v12;
      v13 = *(a2 + 4);
      v14 = v13;
      v15 = v13 >> 5;
      if (v14 < 0)
      {
        v15 = *(a2 + 3);
      }
    }

    while (v9 < v15);
  }

  return this;
}

icu::ICU_Utility *icu::UnicodeSet::_appendToPat(icu::UnicodeSet *this, icu::UnicodeString *a2, int a3)
{
  if (!a3)
  {
    if (icu::ICU_Utility::shouldAlwaysBeEscaped(a2))
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((a2 - 36) <= 0x3A && ((1 << (a2 - 36)) & 0x780000000400205) != 0 || a2 == 125 || a2 == 123)
    {
      v7 = 92;
      v6 = &v7;
    }

    else
    {
      if (!icu::PatternProps::isWhiteSpace(a2))
      {
        return icu::UnicodeString::append(this, a2);
      }

      v8 = 92;
      v6 = &v8;
    }

    icu::UnicodeString::doAppend(this, v6, 0, 1);
    return icu::UnicodeString::append(this, a2);
  }

  if (!icu::ICU_Utility::isUnprintable(a2))
  {
    goto LABEL_7;
  }

LABEL_3:

  return icu::ICU_Utility::escape(this, a2);
}

icu::ICU_Utility *icu::UnicodeSet::_appendToPat(icu::UnicodeSet *this, icu::UnicodeString *a2, icu::UnicodeString *a3, int a4)
{
  v6 = a2;
  result = icu::UnicodeSet::_appendToPat(this, a2, a4);
  if (v6 != a3)
  {
    if (v6 == 56319 || v6 + 1 != a3)
    {
      v9 = 45;
      icu::UnicodeString::doAppend(this, &v9, 0, 1);
    }

    return icu::UnicodeSet::_appendToPat(this, a3, a4);
  }

  return result;
}

icu::UnicodeString *icu::UnicodeSet::_toPattern(icu::UnicodeSet *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v3 = a3;
  if (*(this + 8))
  {
    v6 = *(this + 18);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(this + 8);
        v10 = v8 + 1;
        v11 = *(v9 + 2 * v8);
        if ((v11 & 0xFC00) != 0xD800 || v10 == v6)
        {
          ++v8;
        }

        else
        {
          v13 = *(v9 + 2 * v10);
          v14 = (v13 & 0xFC00) == 56320;
          v15 = v13 + (v11 << 10) - 56613888;
          if (v14)
          {
            v8 += 2;
          }

          else
          {
            ++v8;
          }

          if (v14)
          {
            v11 = v15;
          }

          else
          {
            v11 = v11;
          }
        }

        if (v3)
        {
          if (icu::ICU_Utility::isUnprintable(v11))
          {
            goto LABEL_18;
          }
        }

        else if (icu::ICU_Utility::shouldAlwaysBeEscaped(v11))
        {
LABEL_18:
          if ((v7 & 0x80000001) == 1)
          {
            v16 = *(a2 + 4);
            if (*(a2 + 4) < 0)
            {
              v17 = *(a2 + 3);
            }

            else
            {
              v17 = v16 >> 5;
            }

            v18 = v17 - 1;
            if ((v16 & 1) != 0 && v17 == 1)
            {
              icu::UnicodeString::unBogus(a2);
            }

            else if (v17 > v18)
            {
              if (v18 > 1023)
              {
                *(a2 + 4) = v16 | 0xFFE0;
                *(a2 + 3) = v18;
              }

              else
              {
                *(a2 + 4) = *(a2 + 4) & 0x1F | (32 * v18);
              }
            }
          }

          icu::ICU_Utility::escape(a2, v11);
          v7 = 0;
          goto LABEL_34;
        }

        icu::UnicodeString::append(a2, v11);
        if (v11 == 92)
        {
          ++v7;
        }

        else
        {
          v7 = 0;
        }

LABEL_34:
        v6 = *(this + 18);
      }

      while (v8 < v6);
    }

    return a2;
  }

  else
  {

    return icu::UnicodeSet::_generatePattern(this, a2, a3);
  }
}

uint64_t icu::UnicodeSet::_generatePattern(icu::UnicodeSet *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v31 = 91;
  icu::UnicodeString::doAppend(a2, &v31, 0, 1);
  v6 = *(this + 7);
  v7 = v6 & 0xFFFFFFFE;
  if (v6 >= 4 && (v7 == v6 ? (v8 = **(this + 2) == 0) : (v8 = 0), v8))
  {
    v29 = *(this + 10);
    if (v29 && *(v29 + 8))
    {
      LODWORD(v9) = 0;
      v7 = *(this + 7);
    }

    else
    {
      v32 = 94;
      LODWORD(v9) = 1;
      icu::UnicodeString::doAppend(a2, &v32, 0, 1);
      v7 = v6 - 1;
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < v7)
  {
    v10 = v7;
    v30 = v7;
    do
    {
      v11 = *(this + 2);
      v12 = v9;
      v13 = (v11 + 4 * v9);
      v14 = v13[1];
      if (v14 - 55297 > 0x3FF)
      {
        icu::UnicodeSet::_appendToPat(a2, *v13, (v14 - 1), a3);
        v7 = v30;
        LODWORD(v9) = v9 + 2;
      }

      else
      {
        v15 = v9 + 2;
        v16 = v9 << 32;
        v17 = v9 + 2;
        do
        {
          v18 = v15;
          v19 = v16;
          if (v17 >= v10)
          {
            break;
          }

          v20 = *(v11 + 4 * v17);
          v15 += 2;
          v16 += 0x200000000;
          v17 += 2;
        }

        while (v20 < 56320);
        LODWORD(v9) = v18;
        if (v7 > v18)
        {
          v9 = v18;
          do
          {
            v21 = *(this + 2);
            v22 = *(v21 + 4 * v9);
            if (v22 >= 57344)
            {
              break;
            }

            icu::UnicodeSet::_appendToPat(a2, v22, (*(v21 + 4 * v9 + 4) - 1), a3);
            v9 += 2;
          }

          while (v9 < v10);
          v7 = v30;
        }

        if (v12 < v18)
        {
          v23 = v19 >> 32;
          do
          {
            icu::UnicodeSet::_appendToPat(a2, *(*(this + 2) + 4 * v12), (*(*(this + 2) + 4 * v12 + 4) - 1), a3);
            v24 = v12 < v23;
            v12 += 2;
          }

          while (v24);
          v7 = v30;
        }
      }
    }

    while (v9 < v7);
  }

  v25 = *(this + 10);
  if (v25 && *(v25 + 8) >= 1)
  {
    v26 = 0;
    do
    {
      v33 = 123;
      icu::UnicodeString::doAppend(a2, &v33, 0, 1);
      v27 = icu::UVector::elementAt(*(this + 10), v26);
      icu::UnicodeSet::_appendToPat(a2, v27, a3);
      v34 = 125;
      icu::UnicodeString::doAppend(a2, &v34, 0, 1);
      ++v26;
    }

    while (v26 < *(*(this + 10) + 8));
  }

  v35 = 93;
  return icu::UnicodeString::doAppend(a2, &v35, 0, 1);
}

icu::UnicodeString *icu::UnicodeSet::toPattern(icu::UnicodeSet *this, icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v6 = *(a2 + 4);
  if (v6)
  {
    icu::UnicodeString::unBogus(a2);
  }

  else
  {
    if ((v6 & 0x8000u) == 0)
    {
      v7 = v6 >> 5;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    if (v7)
    {
      *(a2 + 4) &= 0x1Eu;
    }
  }

  return icu::UnicodeSet::_toPattern(this, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::freeze(icu::UnicodeSet *this)
{
  if (!*(this + 5) && !*(this + 11) && (*(this + 32) & 1) == 0)
  {
    icu::UnicodeSet::compact(this);
    v2 = *(this + 10);
    if (v2 && *(v2 + 8))
    {
      operator new();
    }

    if (!*(this + 11))
    {
      operator new();
    }
  }

  return this;
}

unint64_t icu::UnicodeSet::spanBack(icu::UnicodeSet *this, UChar *s, uint64_t a3, int a4)
{
  v5 = a3;
  v30 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return 0;
    }

    v5 = u_strlen(s);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v8 = *(this + 5);
    if (v8)
    {
      return (sub_1951CA4A8(v8, s, &s[a3], a4) - s) >> 1;
    }
  }

  v10 = *(this + 11);
  if (!v10)
  {
    v11 = *(this + 10);
    if (v11 && *(v11 + 8))
    {
      v29 = 0;
      if (a4)
      {
        v12 = 26;
      }

      else
      {
        v12 = 25;
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      memset(v19, 0, sizeof(v19));
      sub_19527E900(v19, this, v11, v12);
      if (HIDWORD(v20))
      {
        v5 = sub_19527F37C(v19, s, v5, a4);
        sub_19527EA78(v19);
        return v5;
      }

      sub_19527EA78(v19);
    }

    v13 = a4 != 0;
    do
    {
      v14 = (v5 - 1);
      v15 = s[v14];
      if (v5 > 1 && (v15 & 0xFC00) == 0xDC00)
      {
        v16 = s[v5 - 2];
        v17 = v16 & 0xFC00;
        v18 = v15 + (v16 << 10) - 56613888;
        if (v17 == 55296)
        {
          v14 = (v5 - 2);
        }

        else
        {
          v14 = v14;
        }

        if (v17 == 55296)
        {
          v15 = v18;
        }

        else
        {
          v15 = v15;
        }
      }

      if (v13 != icu::UnicodeSet::contains(this, v15))
      {
        break;
      }

      v5 = v14;
    }

    while (v14 >= 1);
    return v5;
  }

  return sub_19527F37C(v10, s, v5, a4);
}

size_t icu::UnicodeSet::spanUTF8(icu::UnicodeSet *this, char *__s, size_t a3, int a4)
{
  v5 = a3;
  v34 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return 0;
    }

    v5 = strlen(__s);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(this + 5);
    if (v8)
    {
      return sub_1951CA700(v8, __s, a3, a4) - __s;
    }
  }

  v11 = *(this + 11);
  if (!v11)
  {
    v12 = *(this + 10);
    if (v12 && *(v12 + 8))
    {
      v33 = 0;
      if (a4)
      {
        v13 = 38;
      }

      else
      {
        v13 = 37;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      memset(v24, 0, sizeof(v24));
      sub_19527E900(v24, this, v12, v13);
      if (v25)
      {
        v9 = sub_19527FC18(v24, __s, v5, a4);
        sub_19527EA78(v24);
        return v9;
      }

      sub_19527EA78(v24);
    }

    v9 = 0;
    v14 = a4 != 0;
    while (1)
    {
      v15 = v9 + 1;
      v16 = __s[v9];
      v17 = __s[v9];
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      if (v15 == v5)
      {
        goto LABEL_23;
      }

      if (v17 < 0xE0)
      {
        break;
      }

      if (v17 <= 0xEF)
      {
        v18 = v16 & 0xF;
        if ((a00000000000000[v18] >> (__s[v15] >> 5)))
        {
          v19 = __s[v15] & 0x3F;
          goto LABEL_28;
        }

        goto LABEL_43;
      }

      if (v17 > 0xF4)
      {
        goto LABEL_43;
      }

      v23 = __s[v15];
      if (((byte_19547BF10[v23 >> 4] >> (v17 + 16)) & 1) == 0)
      {
        goto LABEL_43;
      }

      v15 = v9 + 2;
      if (v9 + 2 == v5)
      {
        goto LABEL_23;
      }

      v19 = __s[v15] ^ 0x80;
      if (v19 <= 0x3F)
      {
        LODWORD(v18) = v23 & 0x3F | ((v17 - 240) << 6);
LABEL_28:
        LODWORD(v15) = v15 + 1;
        if (v15 != v5)
        {
          v20 = v19 | (v18 << 6);
LABEL_32:
          v21 = __s[v15] ^ 0x80;
          v22 = v21 | (v20 << 6);
          if (v21 <= 0x3F)
          {
            v17 = v22;
          }

          else
          {
            v17 = 65533;
          }

          if (v21 > 0x3F)
          {
            v15 = v15;
          }

          else
          {
            v15 = (v15 + 1);
          }

          goto LABEL_44;
        }

LABEL_23:
        v17 = 65533;
        v15 = v5;
        goto LABEL_44;
      }

      v17 = 65533;
LABEL_44:
      if (v14 == icu::UnicodeSet::contains(this, v17))
      {
        v9 = v15;
        if (v15 < v5)
        {
          continue;
        }
      }

      return v9;
    }

    if (v17 >= 0xC2)
    {
      v20 = v17 & 0x1F;
      goto LABEL_32;
    }

LABEL_43:
    v17 = 65533;
    goto LABEL_44;
  }

  return sub_19527FC18(v11, __s, v5, a4);
}

uint64_t icu::UnicodeSet::spanBackUTF8(icu::UnicodeSet *this, uint8_t *s, uint64_t a3, int a4)
{
  v5 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    if ((a3 & 0x80000000) == 0)
    {
      return 0;
    }

    v5 = strlen(s);
    if (v5)
    {
      goto LABEL_10;
    }

    return v5;
  }

  v8 = *(this + 5);
  if (v8)
  {

    return sub_1951CAA2C(v8, s, a3, a4);
  }

LABEL_10:
  v10 = *(this + 11);
  if (!v10)
  {
    v11 = *(this + 10);
    if (v11 && *(v11 + 8))
    {
      v25 = 0;
      if (a4)
      {
        v12 = 22;
      }

      else
      {
        v12 = 21;
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      memset(v16, 0, sizeof(v16));
      sub_19527E900(v16, this, v11, v12);
      if (v17)
      {
        v5 = sub_195280370(v16, s, v5, a4);
        sub_19527EA78(v16);
        return v5;
      }

      sub_19527EA78(v16);
    }

    v13 = a4 != 0;
    do
    {
      pi = v5 - 1;
      v14 = s[v5 - 1];
      if ((v14 & 0x80) != 0)
      {
        v14 = utf8_prevCharSafeBody(s, 0, &pi, v14, -3);
      }

      if (v13 != icu::UnicodeSet::contains(this, v14))
      {
        break;
      }

      v5 = pi;
    }

    while (pi > 0);
    return v5;
  }

  return sub_195280370(v10, s, v5, a4);
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeString *a2, uint64_t a3, const icu::SymbolTable *a4, UErrorCode *a5)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5);
}

icu::UnicodeSet *icu::UnicodeSet::applyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, uint64_t a3, const icu::SymbolTable *a4, UErrorCode *a5)
{
  v6 = a3;
  v15 = &unk_1F0932C70;
  v16 = 0xFFFFFFFF00000000;
  icu::UnicodeSet::applyPattern(this, a2, &v15, a3, a4, a5);
  if (*a5 <= 0)
  {
    v9 = v16;
    v14 = v16;
    if (v6)
    {
      icu::ICU_Utility::skipWhitespace(a2, &v14, 1);
      v9 = v14;
    }

    v10 = *(a2 + 4);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 < 0)
    {
      v12 = *(a2 + 3);
    }

    if (v9 != v12)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  icu::ParsePosition::~ParsePosition(&v15);
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, uint64_t a4, const icu::SymbolTable *a5, UErrorCode *a6)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5, a6);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3, a4, a5, a6);
}

icu::UnicodeSet *icu::UnicodeSet::applyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, uint64_t a4, const icu::SymbolTable *a5, UErrorCode *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (*(this + 5) || *(this + 11))
    {
      *a6 = U_NO_WRITE_PERMISSION;
    }

    else
    {
      v10 = a4;
      v16 = 0u;
      v17 = 0u;
      v19 = 0;
      v18 = 0u;
      v14 = 0;
      v15 = &unk_1F0935D00;
      LOWORD(v16) = 2;
      v12 = 0u;
      v13 = 0u;
      sub_19521D664(&v12, a2, a5, a3);
      icu::UnicodeSet::applyPattern(this, &v12, a5, &v15, v10, icu::UnicodeSet::closeOver, 0, 0, a6);
      v11 = *a6;
      if (v11 <= 0)
      {
        if (*(&v13 + 1))
        {
          v11 = 65538;
          *a6 = U_MALFORMED_SET;
        }

        else
        {
          sub_19527B7E0(this, &v15);
        }
      }

      icu::UnicodeString::~UnicodeString(v11, &v15);
    }
  }

  return this;
}

icu::UVector **icu::UnicodeSet::closeOver(icu::UVector **this, char a2)
{
  if (!this[5] && !this[11] && (this[4] & 1) == 0)
  {
    if ((a2 & 6u) > 3)
    {
      if ((a2 & 6) != 4)
      {
        v3 = 1;
        goto LABEL_10;
      }

      icu::UnicodeSet::closeOverAddCaseMappings(this);
    }

    else if ((a2 & 6) != 0)
    {
      v3 = 0;
LABEL_10:
      icu::UnicodeSet::closeOverCaseInsensitive(this, v3);
    }
  }

  return this;
}

UChar *sub_19527B7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x11) != 0)
  {
    v3 = 0;
  }

  else if ((v2 & 2) != 0)
  {
    v3 = (a2 + 10);
  }

  else
  {
    v3 = *(a2 + 24);
  }

  v4 = v2;
  v5 = v2 >> 5;
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a2 + 12);
  }

  return icu::UnicodeSet::setPattern(a1, v3, v6);
}

void icu::UnicodeSet::closeOverCaseInsensitive(icu::UnicodeSet *this, int a2)
{
  v3 = this;
  v67 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *v54 = 0u;
  memset(v53, 0, sizeof(v53));
  icu::UnicodeSet::UnicodeSet(v53, this);
  if ((a2 & 1) == 0 && icu::UnicodeSet::hasStrings(v53))
  {
    icu::UVector::removeAllElements(v54[0]);
  }

  v52[0] = v53;
  v52[1] = icu::UnicodeSet::add;
  v52[2] = icu::UnicodeSet::add;
  v52[4] = 0;
  v52[5] = 0;
  v52[3] = sub_19527C110;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  icu::UnicodeSet::UnicodeSet(v50, 0, 1114111);
  v4 = sub_19527C1A0(v3, v50);
  RangeCount = icu::UnicodeSet::getRangeCount(v4);
  if (RangeCount >= 1)
  {
    v6 = RangeCount;
    for (i = 0; i != v6; ++i)
    {
      RangeStart = icu::UnicodeSet::getRangeStart(v4, i);
      RangeEnd = icu::UnicodeSet::getRangeEnd(v4, i);
      if (a2)
      {
        if (RangeStart <= RangeEnd)
        {
          v10 = RangeEnd + 1;
          do
          {
            sub_19522E504(RangeStart, v52);
            RangeStart = (RangeStart + 1);
          }

          while (v10 != RangeStart);
        }
      }

      else if (RangeStart <= RangeEnd)
      {
        v11 = RangeEnd + 1;
        do
        {
          sub_19522E1E8(RangeStart, v52);
          RangeStart = (RangeStart + 1);
        }

        while (v11 != RangeStart);
      }
    }
  }

  if (icu::UnicodeSet::hasStrings(v3))
  {
    v49 = a2;
    v12 = &v62;
    v63 = 0u;
    v66 = 0;
    v65 = 0u;
    v64 = 0u;
    v62 = &unk_1F0935D00;
    LOWORD(v63) = 2;
    v13 = *(v3 + 10);
    if (v13[2] >= 1)
    {
      v14 = 0;
      v48 = v3;
      do
      {
        v15 = icu::UVector::elementAt(v13, v14);
        v16 = v15;
        if (v49)
        {
          v17 = *(v15 + 8);
          if ((v17 & 0x11) != 0)
          {
            v18 = 0;
          }

          else if ((v17 & 2) != 0)
          {
            v18 = v15 + 10;
          }

          else
          {
            v18 = *(v15 + 24);
          }

          v23 = v17;
          v24 = v17 >> 5;
          if (v23 >= 0)
          {
            v25 = v24;
          }

          else
          {
            v25 = *(v15 + 12);
          }

          if (v25 < 1)
          {
            goto LABEL_75;
          }

          v26 = 0;
          while (1)
          {
            v27 = v26 + 1;
            v28 = *(v18 + 2 * v26);
            if ((v28 & 0xFC00) != 0xD800 || v27 == v25)
            {
              ++v26;
            }

            else
            {
              v30 = *(v18 + 2 * v27);
              v31 = (v30 & 0xFC00) == 56320;
              v32 = (v28 << 10) - 56613888 + v30;
              if (v31)
              {
                v26 += 2;
              }

              else
              {
                ++v26;
              }

              if (v31)
              {
                v28 = v32;
              }
            }

            v33 = u_foldCase(v28, 0);
            if (v33 != v28)
            {
              break;
            }

            if (v26 >= v25)
            {
              goto LABEL_75;
            }
          }

          v34 = v33;
          if (v28 >= 0x10000)
          {
            v35 = -2;
          }

          else
          {
            v35 = -1;
          }

          icu::UnicodeString::unBogus(&v62);
          if ((v63 & 0x8000u) == 0)
          {
            v36 = v63 >> 5;
          }

          else
          {
            v36 = DWORD1(v63);
          }

          icu::UnicodeString::doReplace(&v62, 0, v36, v18, 0, (v35 + v26));
          icu::UnicodeString::append(&v62, v34);
          if (v26 != v25)
          {
            v37 = v26;
            do
            {
              v38 = v37 + 1;
              v39 = *(v18 + 2 * v37);
              if ((v39 & 0xFC00) == 0xD800 && v38 != v25)
              {
                v41 = *(v18 + 2 * v38);
                v42 = (v41 & 0xFC00) == 56320;
                v43 = v37 + 2;
                v44 = (v39 << 10) - 56613888 + v41;
                if (v42)
                {
                  LODWORD(v38) = v43;
                }

                if (v42)
                {
                  v39 = v44;
                }
              }

              v45 = u_foldCase(v39, 0);
              icu::UnicodeString::append(&v62, v45);
              v37 = v38;
            }

            while (v38 != v25);
          }

          v22 = icu::UnicodeSet::remove(v53, v16);
        }

        else
        {
          icu::UnicodeString::operator=(&v62, v15);
          icu::UnicodeString::foldCase(&v62, 0);
          v19 = v64;
          if ((v63 & 2) != 0)
          {
            v19 = &v63 + 1;
          }

          if ((v63 & 0x11) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19;
          }

          if ((v63 & 0x8000u) == 0)
          {
            v21 = v63 >> 5;
          }

          else
          {
            v21 = DWORD1(v63);
          }

          if (sub_19522E7D4(v20, v21, v52))
          {
            goto LABEL_75;
          }

          v22 = v53;
        }

        icu::UnicodeSet::add(v22, &v62);
LABEL_75:
        ++v14;
        v3 = v48;
        v13 = v48[10];
        v12 = v13[2];
      }

      while (v14 < v12);
    }

    icu::UnicodeString::~UnicodeString(v12, &v62);
  }

  icu::UnicodeSet::operator=(v3, v53);
  icu::UnicodeSet::~UnicodeSet(v46, v50);
  icu::UnicodeSet::~UnicodeSet(v47, v53);
}

void icu::UnicodeSet::closeOverAddCaseMappings(icu::UVector **this)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  icu::UnicodeSet::UnicodeSet(v31, this);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  icu::UnicodeSet::UnicodeSet(v29, 0, 1114111);
  v2 = sub_19527C1A0(this, v29);
  RangeCount = icu::UnicodeSet::getRangeCount(v2);
  v28 = 0;
  v35 = 0u;
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v34 = &unk_1F0935D00;
  LOWORD(v35) = 2;
  if (RangeCount >= 1)
  {
    v4 = RangeCount;
    for (i = 0; i != v4; ++i)
    {
      RangeStart = icu::UnicodeSet::getRangeStart(v2, i);
      RangeEnd = icu::UnicodeSet::getRangeEnd(v2, i);
      if (RangeStart <= RangeEnd)
      {
        v8 = RangeEnd + 1;
        do
        {
          v9 = ucase_toFullLower(RangeStart, 0, 0, &v28, 1);
          if ((v9 & 0x80000000) == 0)
          {
            if (v9 < 0x20)
            {
              *&v33[0] = v28;
              icu::UnicodeString::setTo(&v34, 0, v33, v9);
              icu::UnicodeSet::add(v31, &v34);
            }

            else
            {
              icu::UnicodeSet::add(v31, v9);
            }
          }

          v10 = ucase_toFullTitle(RangeStart, 0, 0, &v28, 1);
          if ((v10 & 0x80000000) == 0)
          {
            if (v10 < 0x20)
            {
              *&v33[0] = v28;
              icu::UnicodeString::setTo(&v34, 0, v33, v10);
              icu::UnicodeSet::add(v31, &v34);
            }

            else
            {
              icu::UnicodeSet::add(v31, v10);
            }
          }

          v11 = ucase_toFullUpper(RangeStart, 0, 0, &v28, 1);
          if ((v11 & 0x80000000) == 0)
          {
            if (v11 < 0x20)
            {
              *&v33[0] = v28;
              icu::UnicodeString::setTo(&v34, 0, v33, v11);
              icu::UnicodeSet::add(v31, &v34);
            }

            else
            {
              icu::UnicodeSet::add(v31, v11);
            }
          }

          v12 = ucase_toFullFolding(RangeStart, &v28, 0);
          if ((v12 & 0x80000000) == 0)
          {
            if (v12 < 0x20)
            {
              *&v33[0] = v28;
              icu::UnicodeString::setTo(&v34, 0, v33, v12);
              icu::UnicodeSet::add(v31, &v34);
            }

            else
            {
              icu::UnicodeSet::add(v31, v12);
            }
          }

          RangeStart = (RangeStart + 1);
        }

        while (v8 != RangeStart);
      }
    }
  }

  if (icu::UnicodeSet::hasStrings(this))
  {
    memset(v33, 0, sizeof(v33));
    icu::Locale::Locale(v33, "", 0, 0, 0);
    v27 = 0;
    WordInstance = icu::BreakIterator::createWordInstance(v33, &v27, v13, v14);
    v16 = v27;
    if (v27 <= 0)
    {
      v17 = this[10];
      v16 = v17[2];
      if (v16 >= 1)
      {
        v18 = 0;
        do
        {
          v19 = icu::UVector::elementAt(v17, v18);
          v20 = icu::UnicodeString::operator=(&v34, v19);
          icu::UnicodeString::toLower(v20, v33);
          icu::UnicodeSet::add(v31, &v34);
          v21 = icu::UnicodeString::operator=(&v34, v19);
          icu::UnicodeString::toTitle(v21, WordInstance, v33);
          icu::UnicodeSet::add(v31, &v34);
          v22 = icu::UnicodeString::operator=(&v34, v19);
          icu::UnicodeString::toUpper(v22, v33);
          icu::UnicodeSet::add(v31, &v34);
          v23 = icu::UnicodeString::operator=(&v34, v19);
          icu::UnicodeString::foldCase(v23, 0);
          icu::UnicodeSet::add(v31, &v34);
          ++v18;
          v17 = this[10];
          v16 = v17[2];
        }

        while (v18 < v16);
      }
    }

    if (WordInstance)
    {
      (*(*WordInstance + 8))(WordInstance);
    }

    icu::Locale::~Locale(v16, v33);
  }

  icu::UnicodeSet::operator=(this, v31);
  icu::UnicodeString::~UnicodeString(v24, &v34);
  icu::UnicodeSet::~UnicodeSet(v25, v29);
  icu::UnicodeSet::~UnicodeSet(v26, v31);
}

void *sub_19527C110(icu::UnicodeSet *a1, const UChar *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a2;
  icu::UnicodeString::UnicodeString(v7, a3 >> 31, &v6, a3);
  icu::UnicodeSet::add(a1, v7);
  return icu::UnicodeString::~UnicodeString(v4, v7);
}

icu::UVector **sub_19527C1A0(icu::UnicodeSet *a1, icu::UVector **a2)
{
  v3 = a1;
  if (icu::UnicodeSet::size(a1) >= 30)
  {
    v10 = 0;
    v4 = sub_1951D1334(34, &v10);
    if (v10 <= 0)
    {
      v5 = v4;
      RangeCount = icu::UnicodeSet::getRangeCount(v3);
      v7 = icu::UnicodeSet::getRangeCount(v5);
      if (RangeCount <= v7)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      if (RangeCount <= v7)
      {
        v3 = v5;
      }

      icu::UnicodeSet::retainAll(a2, v8);
      icu::UnicodeSet::retainAll(a2, v3);
      return a2;
    }
  }

  return v3;
}

uint64_t sub_19527C23C(UErrorCode *a1)
{
  if (*a1 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9A88, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9A88))
    {
      sub_19527C2CC(a1);
    }

    if (dword_1EAEC9A8C >= 1)
    {
      *a1 = dword_1EAEC9A8C;
    }
  }

  return qword_1EAEC9A80;
}

icu::UnicodeSet *icu::UnicodeSet::UnicodeSet(icu::UnicodeSet *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3);
}

{
  *this = &unk_1F0935B48;
  *(this + 1) = &unk_1F0935C60;
  *(this + 2) = this + 96;
  *(this + 3) = 0x100000019;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return icu::UnicodeSet::applyPattern(this, a2, a3);
}

icu::UnicodeSet *icu::UnicodeSet::applyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v11 = &unk_1F0932C70;
  v12 = 0xFFFFFFFF00000000;
  icu::UnicodeSet::applyPatternIgnoreSpace(this, a2, &v11, 0, a3);
  if (*a3 <= 0)
  {
    v10 = v12;
    icu::ICU_Utility::skipWhitespace(a2, &v10, 1);
    v6 = *(a2 + 4);
    v7 = v6;
    v8 = v6 >> 5;
    if (v7 < 0)
    {
      v8 = *(a2 + 3);
    }

    if (v10 != v8)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  icu::ParsePosition::~ParsePosition(&v11);
  return this;
}

icu::UnicodeSet *icu::UnicodeSet::applyPatternIgnoreSpace(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, const icu::SymbolTable *a4, UErrorCode *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v6 = this;
    if (*(this + 5) || *(this + 11))
    {
      *a5 = U_NO_WRITE_PERMISSION;
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v16 = 0;
      v15 = 0u;
      v11 = 0;
      v12 = &unk_1F0935D00;
      LOWORD(v13) = 2;
      v9 = 0u;
      v10 = 0u;
      sub_19521D664(&v9, a2, a4, a3);
      icu::UnicodeSet::applyPattern(v6, &v9, a4, &v12, 1u, 0, 0, 0, a5);
      v8 = *a5;
      if (v8 <= 0)
      {
        if (*(&v10 + 1))
        {
          v8 = 65538;
          *a5 = U_MALFORMED_SET;
        }

        else
        {
          sub_19527B7E0(v6, &v12);
        }
      }

      return icu::UnicodeString::~UnicodeString(v8, &v12);
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::applyPattern(icu::UnicodeSet *result, uint64_t *a2, uint64_t a3, icu::UnicodeString *a4, unsigned int a5, void (*a6)(unsigned __int8 *), uint64_t a7, int a8, int *a9)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*a9 > 0)
  {
    return result;
  }

  if (a8 >= 101)
  {
    *a9 = 1;
    return result;
  }

  v10 = result;
  v51 = 0u;
  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  v50 = &unk_1F0935D00;
  if (a5)
  {
    v11 = 7;
  }

  else
  {
    v11 = 3;
  }

  LOWORD(v51) = 2;
  v46 = 0uLL;
  v49 = 0;
  v48 = 0uLL;
  v47 = 0uLL;
  v45 = &unk_1F0935D00;
  LOWORD(v46) = 2;
  v43[0] = 0;
  v43[1] = 0;
  icu::UnicodeSet::clear(result);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v36 = 0;
  for (i = 0; ; i = 45)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (sub_19521D674(a2))
          {
            goto LABEL_132;
          }

          v42 = 0;
          if (icu::UnicodeSet::resemblesPropertyPattern(a2, v11))
          {
            v17 = 0;
            v18 = 2;
            goto LABEL_11;
          }

          sub_19521DA64(a2, v43);
          v20 = sub_19521D6B0(a2, v11, &v42, a9);
          v19 = *a9;
          if (v19 > 0)
          {
            goto LABEL_134;
          }

          v21 = v20;
          if (v20 != 91 || v42)
          {
            break;
          }

          if (v14 == 1)
          {
            sub_19521DA80(a2, v43);
            v17 = 0;
            v18 = 1;
            goto LABEL_11;
          }

          v44 = 91;
          icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
          sub_19521DA64(a2, v43);
          v24 = sub_19521D6B0(a2, v11, &v42, a9);
          v19 = *a9;
          if (v19 > 0)
          {
            goto LABEL_134;
          }

          if (v24 == 94 && !v42)
          {
            v44 = 94;
            v36 = 1;
            icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
            sub_19521DA64(a2, v43);
            v24 = sub_19521D6B0(a2, v11, &v42, a9);
            v19 = *a9;
            if (v19 > 0)
            {
              goto LABEL_134;
            }
          }

          if (v24 == 45)
          {
            v14 = 1;
            v42 = 1;
            v21 = 45;
LABEL_56:
            if (v13 == 2)
            {
              if (i)
              {
                goto LABEL_132;
              }

LABEL_72:
              v13 = 1;
              v15 = v21;
            }

            else
            {
              if (v13 != 1)
              {
                goto LABEL_72;
              }

              if (i != 45)
              {
                icu::UnicodeSet::add(v10, v15, v15);
                icu::UnicodeSet::_appendToPat(&v50, v15, 0);
                goto LABEL_72;
              }

              if (v15 >= v21)
              {
                goto LABEL_132;
              }

              icu::UnicodeSet::add(v10, v15, v21);
              icu::UnicodeSet::_appendToPat(&v50, v15, 0);
              v44 = 45;
              icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
              icu::UnicodeSet::_appendToPat(&v50, v21, 0);
LABEL_63:
              i = 0;
              v13 = 0;
            }
          }

          else
          {
            sub_19521DA80(a2, v43);
            v14 = 1;
          }
        }

        if (!a3)
        {
          break;
        }

        v22 = (*(*a3 + 24))(a3, v20);
        if (!v22)
        {
          break;
        }

        if (!v23)
        {
          goto LABEL_132;
        }

        v17 = v23;
        v18 = 3;
LABEL_11:
        if (v13 == 1)
        {
          if (i)
          {
            goto LABEL_132;
          }

          icu::UnicodeSet::add(v10, v15, v15);
          icu::UnicodeSet::_appendToPat(&v50, v15, 0);
        }

        else if (i == 45 || i == 38)
        {
          v44 = i;
          icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
        }

        if (!v17)
        {
          operator new();
        }

        if (v18 == 3)
        {
          icu::UnicodeSet::_toPattern(v17, &v50, 0);
        }

        else if (v18 == 2)
        {
          sub_19521DA9C(a2, v11);
          icu::UnicodeSet::applyPropertyPattern(v17, a2, &v50, a9);
          v19 = *a9;
          if (v19 >= 1)
          {
            goto LABEL_134;
          }
        }

        else
        {
          icu::UnicodeSet::applyPattern(v17, a2, a3, &v50, a5, a6, a7, a8 + 1, a9);
        }

        if (!v14)
        {
          icu::UnicodeSet::operator=(v10, v17);
          v29 = 0;
          goto LABEL_113;
        }

        if (i)
        {
          if (i == 38)
          {
            icu::UnicodeSet::retainAll(v10, v17);
          }

          else
          {
            icu::UnicodeSet::removeAll(v10, v17);
          }

          i = 0;
        }

        else
        {
          icu::UnicodeSet::addAll(v10, v17);
        }

        v12 = 1;
        v13 = 2;
      }

      if (!v14)
      {
        goto LABEL_132;
      }

      if (v42)
      {
        goto LABEL_56;
      }

      if (v21 > 44)
      {
        break;
      }

      if (v21 == 36)
      {
        sub_19521DA64(a2, v43);
        v26 = sub_19521D6B0(a2, v11, &v42, a9);
        v19 = *a9;
        if (v19 > 0)
        {
          goto LABEL_134;
        }

        if (v42)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26 == 93;
        }

        v28 = v27;
        if (!a3 && !v28)
        {
          sub_19521DA80(a2, v43);
          v21 = 36;
          goto LABEL_56;
        }

        if (i)
        {
          v28 = 0;
        }

        if (v28 == 1)
        {
          if (v13 == 1)
          {
            icu::UnicodeSet::add(v10, v15, v15);
            icu::UnicodeSet::_appendToPat(&v50, v15, 0);
          }

          icu::UnicodeSet::add(v10, 0xFFFFu);
          v44 = 36;
          v12 = 1;
          goto LABEL_110;
        }

LABEL_132:
        v19 = 65538;
        goto LABEL_133;
      }

      if (v21 != 38)
      {
        goto LABEL_56;
      }

      if (v13 != 2 || i)
      {
        goto LABEL_132;
      }

      v13 = 2;
      i = 38;
    }

    if (v21 > 93)
    {
      if (v21 != 123)
      {
        if (v21 == 94)
        {
          goto LABEL_132;
        }

        goto LABEL_56;
      }

      if (!i)
      {
        if (v13 == 1)
        {
          icu::UnicodeSet::add(v10, v15, v15);
          icu::UnicodeSet::_appendToPat(&v50, v15, 0);
        }

        sub_19527D3AC(&v45, 0);
        while (!sub_19521D674(a2))
        {
          v25 = sub_19521D6B0(a2, v11, &v42, a9);
          v19 = *a9;
          if (v19 > 0)
          {
            goto LABEL_134;
          }

          if (v25 == 125 && !v42)
          {
            icu::UnicodeSet::add(v10, &v45);
            v44 = 123;
            icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
            icu::UnicodeSet::_appendToPat(&v50, &v45, 0);
            v44 = 125;
            icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
            goto LABEL_63;
          }

          icu::UnicodeString::append(&v45, v25);
        }
      }

      goto LABEL_132;
    }

    if (v21 != 45)
    {
      if (v21 != 93)
      {
        goto LABEL_56;
      }

      if (v13 == 1)
      {
        icu::UnicodeSet::add(v10, v15, v15);
        icu::UnicodeSet::_appendToPat(&v50, v15, 0);
      }

      if (i != 38)
      {
        if (i != 45)
        {
LABEL_111:
          v44 = 93;
          icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
          goto LABEL_112;
        }

        icu::UnicodeSet::add(v10, 45, 0x2Du);
        v44 = 45;
LABEL_110:
        icu::UnicodeString::doAppend(&v50, &v44, 0, 1);
        goto LABEL_111;
      }

      goto LABEL_132;
    }

    if (i)
    {
      goto LABEL_132;
    }

    if (!v13)
    {
      break;
    }
  }

  icu::UnicodeSet::add(v10, 45, 0x2Du);
  v33 = sub_19521D6B0(a2, v11, &v42, a9);
  v19 = *a9;
  if (v19 > 0)
  {
    goto LABEL_134;
  }

  if (v33 != 93 || v42)
  {
    goto LABEL_132;
  }

  icu::UnicodeString::doAppend(&v50, L"-]", 0, 2);
LABEL_112:
  v29 = v12 == 0;
LABEL_113:
  sub_19521DA9C(a2, v11);
  if ((a5 & 6) != 0)
  {
    v30 = &v10[a7 >> 1];
    if (a7)
    {
      (*(*v30 + a6))(v30);
    }

    else
    {
      a6(v30);
    }
  }

  if (v36)
  {
    v31 = icu::UnicodeSet::complement(v10);
    icu::UnicodeSet::removeAllStrings(v31);
  }

  if (v29)
  {
    icu::UnicodeSet::_generatePattern(v10, a4, 0);
  }

  else
  {
    if ((v51 & 0x8000u) == 0)
    {
      v32 = v51 >> 5;
    }

    else
    {
      v32 = DWORD1(v51);
    }

    icu::UnicodeString::doAppend(a4, &v50, 0, v32);
  }

  v19 = v10[32];
  if (v19)
  {
    v19 = *a9;
    if (v19 <= 0)
    {
      v19 = 7;
LABEL_133:
      *a9 = v19;
    }
  }

LABEL_134:
  icu::UnicodeString::~UnicodeString(v19, &v45);
  return icu::UnicodeString::~UnicodeString(v34, &v50);
}

uint64_t icu::UnicodeSet::resemblesPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, int a3)
{
  v3 = a2 + 1;
  v4 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v5 = *(this + 3);
    if (v3 >= v5)
    {
      return icu::UnicodeSet::resemblesPropertyPattern(this, a2);
    }
  }

  else
  {
    if (v3 >= (v4 >> 5))
    {
      return icu::UnicodeSet::resemblesPropertyPattern(this, a2);
    }

    v5 = v4 >> 5;
  }

  if (v5 > a2)
  {
    v6 = (v4 & 2) != 0 ? (this + 10) : *(this + 3);
    if (*(v6 + a2) == 91)
    {
      return 1;
    }
  }

  return icu::UnicodeSet::resemblesPropertyPattern(this, a2);
}

BOOL icu::UnicodeSet::resemblesPropertyPattern(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(a1 + 12);
  }

  if ((a2 + 5) > v3 || v3 <= a2)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = a1 + 10;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = *(v4 + 2 * a2);
  if (v5 != 92)
  {
    if (v5 == 91)
    {
      v6 = a2 + 1;
      if (v3 > v6 && *(v4 + 2 * v6) == 58)
      {
        return 1;
      }
    }

    return 0;
  }

  v8 = a2 + 1;
  if (v3 <= v8)
  {
    return 0;
  }

  v9 = *(v4 + 2 * v8) & 0xFFDF;
  result = v9 == 80;
  if (v9 != 80 && v3 > v8)
  {
    return *(v4 + 2 * v8) == 78;
  }

  return result;
}

BOOL icu::UnicodeSet::resemblesPropertyPattern(uint64_t a1, char a2)
{
  v11 = 0;
  v10 = 0;
  v9[0] = 0;
  v9[1] = 0;
  sub_19521DA64(a1, v9);
  v4 = sub_19521D6B0(a1, a2 & 0xFD, &v11, &v10);
  if ((v4 - 91) <= 1)
  {
    v5 = v4;
    v6 = sub_19521D6B0(a1, a2 & 0xF9, &v11, &v10);
    v7 = v6;
    if (v5 == 91)
    {
      sub_19521DA80(a1, v9);
      if (v7 != 58)
      {
        return 0;
      }

      return v10 < 1;
    }

    if ((v6 - 78) <= 0x22 && ((1 << (v6 - 78)) & 0x400000005) != 0)
    {
      sub_19521DA80(a1, v9);
      return v10 < 1;
    }
  }

  sub_19521DA80(a1, v9);
  return 0;
}

icu::UnicodeSet *icu::UnicodeSet::applyPropertyPattern(icu::UnicodeSet *result, uint64_t *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v7 = result;
    v12 = 0u;
    v13 = 0u;
    v15 = 0;
    v14 = 0u;
    v11 = &unk_1F0935D00;
    LOWORD(v12) = 2;
    sub_19521D9F0(a2, &v11, 0xFFFFFFFF);
    v9 = &unk_1F0932C70;
    *v10 = 0xFFFFFFFF00000000;
    icu::UnicodeSet::applyPropertyPattern(v7, &v11, &v9, a4);
    if (*a4 <= 0)
    {
      if (v10[0])
      {
        sub_19521DA60(a2, v10[0]);
        icu::UnicodeString::doAppend(a3, &v11, 0, v10[0]);
      }

      else
      {
        *a4 = U_MALFORMED_SET;
      }
    }

    icu::ParsePosition::~ParsePosition(&v9);
    return icu::UnicodeString::~UnicodeString(v8, &v11);
  }

  return result;
}

uint64_t sub_19527D3AC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (a2 || (v2 & 1) == 0)
  {
    if ((v2 & 0x8000) != 0)
    {
      v4 = *(a1 + 12);
    }

    else
    {
      v4 = v2 >> 5;
    }

    if (v4 <= a2)
    {
      return 0;
    }

    else
    {
      if (a2 > 1023)
      {
        *(a1 + 8) = v2 | 0xFFE0;
        *(a1 + 12) = a2;
      }

      else
      {
        *(a1 + 8) = *(a1 + 8) & 0x1F | (32 * a2);
      }

      return 1;
    }
  }

  else
  {
    icu::UnicodeString::unBogus(a1);
    return 0;
  }
}

icu::UnicodeSet *icu::UnicodeSet::applyFilter(icu::UnicodeSet *this, signed __int8 (*a2)(int, void *), void *a3, const icu::UnicodeSet *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v5 = a5;
    v9 = this;
    icu::UnicodeSet::clear(this);
    this = icu::UnicodeSet::getRangeCount(a4);
    if (this >= 1)
    {
      v10 = this;
      v16 = v5;
      v11 = 0;
      v12 = -1;
      do
      {
        RangeStart = icu::UnicodeSet::getRangeStart(a4, v11);
        this = icu::UnicodeSet::getRangeEnd(a4, v11);
        if (RangeStart <= this)
        {
          v14 = this;
          v15 = RangeStart - 1;
          do
          {
            this = (a2)(v15 + 1, a3);
            if (this)
            {
              if (v12 < 0)
              {
                v12 = v15 + 1;
              }
            }

            else if ((v12 & 0x80000000) == 0)
            {
              this = icu::UnicodeSet::add(v9, v12, v15);
              v12 = -1;
            }

            ++v15;
          }

          while (v14 != v15);
        }

        ++v11;
      }

      while (v11 != v10);
      v5 = v16;
      if ((v12 & 0x80000000) == 0)
      {
        this = icu::UnicodeSet::add(v9, v12, 0x10FFFFu);
      }
    }

    if ((*(v9 + 32) & 1) != 0 && *v5 <= 0)
    {
      *v5 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

icu::UnicodeSet *icu::UnicodeSet::applyIntPropertyValue(icu::UnicodeSet *this, uint64_t property, unsigned int a3, UErrorCode *pErrorCode)
{
  v16 = a3;
  if (*pErrorCode > 0 || *(this + 5) || *(this + 11))
  {
    return this;
  }

  v7 = property;
  switch(property)
  {
    case 0x7001:
      v8 = sub_1951D1008(28673, pErrorCode);
      v15[0] = a3;
      v11 = sub_19527D724;
      goto LABEL_10;
    case 0x7000:
      v8 = sub_1951D1008(28672, pErrorCode);
      v15[0] = a3;
      v11 = sub_19527D71C;
LABEL_10:
      v9 = v11;
      v10 = v15;
      goto LABEL_11;
    case 0x2000:
      v8 = sub_1951D1008(0x2000, pErrorCode);
      v9 = sub_19527D6F0;
      v10 = &v16;
LABEL_11:
      icu::UnicodeSet::applyFilter(this, v9, v10, v8, pErrorCode);
      return this;
  }

  if (property > 0x4B)
  {
    if ((property - 4096) > 0x1A)
    {
      *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
      return this;
    }

    v8 = sub_1951D1008(property, pErrorCode);
    v15[0] = v7;
    v15[1] = a3;
    v11 = sub_19527D740;
    goto LABEL_10;
  }

  if (a3 > 1)
  {
    icu::UnicodeSet::clear(this);
  }

  else
  {
    BinaryPropertySet = u_getBinaryPropertySet(property, pErrorCode);
    if (*pErrorCode <= 0)
    {
      icu::UnicodeSet::copyFrom(this, BinaryPropertySet, 1);
      if (!a3)
      {
        v14 = icu::UnicodeSet::complement(this);
        icu::UnicodeSet::removeAllStrings(v14);
      }
    }
  }

  return this;
}