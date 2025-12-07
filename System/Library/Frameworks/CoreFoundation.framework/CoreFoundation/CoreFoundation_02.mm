_BYTE *__NSDictionaryI_new(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v6 = a4;
  v10 = 0;
  v28 = *MEMORY[0x1E69E9840];
  v27 = a3;
  while (__NSDictionaryCapacities[v10] < a4)
  {
    if (++v10 == 64)
    {
      __break(1u);
      break;
    }
  }

  v11 = __NSDictionarySizes[v10];
  v12 = objc_opt_self();
  v13 = __CFAllocateObject(v12, 16 * v11);
  v14 = v13;
  v13[15] = v13[15] & 3 | (4 * v10);
  *(v13 + 1) = *(v13 + 1) & 0xFE00000000000000 | v6 & 0x1FFFFFFFFFFFFFFLL;
  v13[15] = v13[15] & 0xFD | a5 & 2;
  if (v6)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v21 = ____NSDictionaryI_new_block_invoke;
    v22 = &unk_1E6D7D860;
    v25 = v11;
    v26 = a5;
    v23 = v13;
    v24 = v13 + 16;
    if (a3)
    {
      v15 = *a1;
      v16 = v27++;
      ____NSDictionaryI_new_block_invoke(v20, *v16, v15);
      while (--v6)
      {
        v17 = v27++;
        v18 = *v17;
        v27 = v17 + 2;
        v21(v20, v17[1], v18);
      }
    }

    else
    {
      do
      {
        v21(v20, *a1++, *a2++);
        --v6;
      }

      while (v6);
    }
  }

  return v14;
}

void sub_1830FC348(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    if (v2)
    {
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _NSIsNSDictionary(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 1;
  }

  v1 = a1;
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
    return a1 & 1;
  }

  return MethodImplementation(v1, sel_isNSDictionary__);
}

uint64_t __CFMachPortPerform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    os_unfair_lock_lock((a4 + 96));
    if (*(a4 + 16))
    {
      os_unfair_lock_unlock((a4 + 96));
    }

    else
    {
      v7 = *(a4 + 104);
      v8 = *(a4 + 64);
      if (v7)
      {
        v8 = v7(*(a4 + 64));
        v9 = *(a4 + 112);
      }

      else
      {
        v9 = 0;
      }

      os_unfair_lock_unlock((a4 + 96));
      (*(a4 + 48))(a4, a1, a2, v8);
      if (v9)
      {
        v9(v8);
      }

      if ((__CF_FORK_STATE & 2) == 0)
      {
        __CF_USED();
      }

      if (__CF_FORK_STATE)
      {
        __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
      }
    }
  }

  return 0;
}

CFStringEncoding CFStringConvertNSStringEncodingToEncoding(unint64_t encoding)
{
  if (encoding == 4)
  {
    return 134217984;
  }

  if (encoding - 1 <= 0xE)
  {
    return word_183377E24[encoding - 1];
  }

  v2 = encoding & 0x7FFFFFFF;
  if ((encoding & 0x80000000) == 0)
  {
    v2 = -1;
  }

  if (encoding == 21)
  {
    v2 = 2080;
  }

  if (encoding == 30)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

_DWORD *_NSDictionaryI_mutableCopyWithZone(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a1[1] & 0x1FFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x1EEE9AC00](2 * v4, a2, a3);
  v7 = &v11 - v6;
  v11 = 0;
  if (v4 >= 0x81)
  {
    v7 = _CFCreateArrayStorage(v5, 0, &v11);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [a1 getObjects:&v7[8 * v4] andKeys:v7 count:{v4, v11, v12}];
  v9 = __NSDictionaryM_new(v7, &v7[8 * v4], v4, 2uLL);
  free(v8);
  return v9;
}

CFAllocatorRef CFGetAllocator(CFTypeRef cf)
{
  if (!cf || (cf & 0x8000000000000000) != 0 || (v2 = atomic_load(cf + 1), CF_IS_OBJC((v2 >> 8) & 0x3FF, cf)))
  {
    v3 = &kCFAllocatorSystemDefault;
    return *v3;
  }

  __CFCheckCFInfoPACSignature_Bridged(cf);
  v5 = atomic_load(cf + 1);
  if ((v5 & 0x3FF00) != 0x200)
  {
    v6 = atomic_load(cf + 1);
    if (v6 < 0)
    {
      v3 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v3 = (cf - 16);
    }

    return *v3;
  }

  return __CFAllocatorGetAllocator(cf);
}

CFTypeID CFGetTypeID(CFTypeRef cf)
{
  if ((cf & 0x8000000000000000) == 0)
  {
    v8 = atomic_load(cf + 1);
    if (!CF_IS_OBJC((v8 >> 8) & 0x3FF, cf))
    {
      v10 = atomic_load(cf + 1);
      return (v10 >> 8) & 0x3FF;
    }

    goto LABEL_15;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~cf & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ cf;
  do
  {
    if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  v5 = v2 | v4;
  v6 = v2 & 7;
  v7 = (v5 >> 55) + 8;
  if (v6 == 7)
  {
    LODWORD(v6) = v7;
  }

  if (v6 > 4)
  {
    if (v6 > 19)
    {
      if (v6 != 20)
      {
        if (v6 != 22)
        {
          goto LABEL_15;
        }

        return 7;
      }
    }

    else if (v6 != 5)
    {
      if (v6 == 6)
      {
        return 42;
      }

      goto LABEL_15;
    }

    return 1;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      return 22;
    }

    return 1;
  }

  if (!v6)
  {
    if (dyld_program_sdk_at_least())
    {
      return 7;
    }

    else
    {
      return 1;
    }
  }

  if (v6 == 2)
  {
    return 7;
  }

LABEL_15:

  return [cf _cfTypeID];
}

void __CFBasicHashAddValue(uint64_t cf, uint64_t a2, unint64_t a3, uint64_t a4)
{
  ++*(cf + 16);
  v7 = *(cf + 24);
  if (__CFBasicHashTableCapacities[BYTE2(v7)] >= (*(cf + 20) + 1))
  {
    v10 = a2;
    if (*(*(cf + 40) + 8 * a2) == -1)
    {
      *(cf + 24) = v7 & 0xFFFFFFFFFFFF0000 | (v7 - 1);
    }

    goto LABEL_20;
  }

  __CFBasicHashRehash(cf, 1);
  if (!*(cf + 26))
  {
    v10 = -1;
    goto LABEL_20;
  }

  v8 = *(cf + 18) & 3;
  if ((*(cf + 18) & 0x8000) != 0)
  {
    if ((*(cf + 18) & 3u) > 1)
    {
      if (v8 == 2)
      {
        Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Double_Indirect_NoCollision(cf, a3);
      }

      else
      {
        Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Exponential_Indirect_NoCollision(cf, a3);
      }

      goto LABEL_19;
    }

    if (v8 == 1)
    {
      Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Linear_Indirect_NoCollision(cf, a3);
      goto LABEL_19;
    }

LABEL_76:
    __break(1u);
    return;
  }

  if ((*(cf + 18) & 3u) > 1)
  {
    if (v8 == 2)
    {
      Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Double_NoCollision(cf, a3);
    }

    else
    {
      Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Exponential_NoCollision(cf, a3);
    }

    goto LABEL_19;
  }

  if (v8 != 1)
  {
    goto LABEL_76;
  }

  Bucket_Double_Indirect_NoCollision = ___CFBasicHashFindBucket_Linear_NoCollision(cf, a3);
LABEL_19:
  v10 = Bucket_Double_Indirect_NoCollision;
LABEL_20:
  v11 = *(CFBasicHashCallBackPtrs[(*(cf + 24) >> 39) & 0x1FLL] + 8 * ((*(cf + 24) >> 34) & 0x1FLL));
  if (v11 && (*(cf + 32) & 2) == 0)
  {
    if (cf < 0)
    {
      v12 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v13 = atomic_load((cf + 8));
      if (v13 < 0)
      {
        v12 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v12 = (cf - 16);
      }
    }

    a4 = v11(*v12, a4);
  }

  if ((*(cf + 18) & 4) != 0)
  {
    v14 = *(CFBasicHashCallBackPtrs[(*(cf + 24) >> 29) & 0x1FLL] + 8 * ((*(cf + 24) >> 24) & 0x1FLL));
    if (v14)
    {
      if ((*(cf + 32) & 2) == 0)
      {
        if (cf < 0 || (v15 = atomic_load((cf + 8)), v15 < 0))
        {
          v16 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v16 = (cf - 16);
        }

        a3 = v14(*v16, a3);
      }
    }
  }

  v17 = *(cf + 40);
  v18 = *(v17 + 8 * v10);
  if (a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = 2814029233;
  }

  if (v19 == -1)
  {
    v19 = 2780474809;
  }

  *(v17 + 8 * v10) = v19;
  if ((v18 + 1) >= 2)
  {
    if (v18 == 2814029233)
    {
      v18 = 0;
    }

    if (v18 == 2780474809)
    {
      v20 = -1;
    }

    else
    {
      v20 = v18;
    }

    v21 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(cf + 24)) & 0xF8)) + 8 * ((*(cf + 24) >> 54) & 0x1FLL));
    if (v21 && (*(cf + 32) & 2) == 0)
    {
      if (cf < 0 || (v22 = atomic_load((cf + 8)), v22 < 0))
      {
        v23 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v23 = (cf - 16);
      }

      v21(*v23, v20);
    }
  }

  if ((*(cf + 18) & 4) != 0)
  {
    v24 = *(cf + 48);
    v25 = *(v24 + 8 * v10);
    if (a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = 2814029233;
    }

    if (v26 == -1)
    {
      v26 = 2780474809;
    }

    *(v24 + 8 * v10) = v26;
    if ((v25 + 1) >= 2)
    {
      if (v25 == 2814029233)
      {
        v25 = 0;
      }

      if (v25 == 2780474809)
      {
        v27 = -1;
      }

      else
      {
        v27 = v25;
      }

      v28 = *(CFBasicHashCallBackPtrs[(*(cf + 24) >> 49) & 0x1FLL] + 8 * ((*(cf + 24) >> 44) & 0x1FLL));
      if (v28 && (*(cf + 32) & 2) == 0)
      {
        if (cf < 0 || (v29 = atomic_load((cf + 8)), v29 < 0))
        {
          v30 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v30 = (cf - 16);
        }

        v28(*v30, v27);
      }
    }
  }

  if ((*(cf + 18) & 0x18) != 0)
  {
    __CFBasicHashIncSlotCount(cf, v10);
  }

  ++*(cf + 20);
}

unint64_t *CFBasicHashCreate(__objc2_class **a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 40;
  if ((a2 & 1) == 0)
  {
    v10 = 32;
  }

  v11 = a2 & 2;
  v12 = a2 & 4;
  result = _CFRuntimeCreateInstance(a1, 3uLL, 2 * v12 + 4 * v11 + v10, 0, a5, a6, a7, a8);
  v14 = result;
  if (!result)
  {
    return v14;
  }

  v15 = *(result + 9) & 0xFFFC | (a2 >> 13) & 3;
  *(result + 9) = *(result + 9) & 0xFFFC | (a2 >> 13) & 3;
  if ((a2 & 0x8000) != 0)
  {
    result[4] |= 4uLL;
  }

  v16 = (a2 << 7) & 0x6000 | (((a2 >> 8) & 0xF) << 9) & 0x7FFF | (a2 >> 12 << 15) | v15;
  if ((a2 & 0x1FC0) != 0)
  {
    *(result + 9) = v16;
  }

  *(result + 8) = 1;
  if ((~v16 & 0xA00) != 0 && (~v16 & 0x2200) != 0 && (~v16 & 0x1400) != 0 && (~v16 & 0x4400) != 0 && (~v16 & 0x2800) != 0 && (~v16 & 0x5000) != 0 && (~v16 & 0x8400) != 0 && (~v16 & 0x9000) != 0 && v16 < 0xC000u)
  {
    if (a2)
    {
      LOWORD(v16) = v16 | 4;
      *(result + 9) = v16;
      v17 = 2;
      if (!v11)
      {
LABEL_22:
        if (v12)
        {
          *(result + 9) = v16 & 0xFE7F | ((v17 & 3) << 7);
        }

        result[3] = result[3] & 0xFFFFFFFC00FFFFFFLL | ((CFBasicHashGetPtrIndex(a3[1]) & 0x3FF) << 24);
        v14[3] = v14[3] & 0xFFFFF003FFFFFFFFLL | ((CFBasicHashGetPtrIndex(*a3) & 0x3FF) << 34);
        v14[3] = v14[3] & 0xFFC00FFFFFFFFFFFLL | ((CFBasicHashGetPtrIndex(a3[3]) & 0x3FF) << 44);
        v14[3] = v14[3] & 0x3FFFFFFFFFFFFFLL | (CFBasicHashGetPtrIndex(a3[2]) << 54);
        v14[4] = v14[4] & 0xFFFFFFFFFFFFC00FLL | (16 * (CFBasicHashGetPtrIndex(a3[9]) & 0x3FF));
        v14[4] = v14[4] & 0xFFFFFFFFFF003FFFLL | ((CFBasicHashGetPtrIndex(a3[8]) & 0x3FF) << 14);
        v14[4] = v14[4] & 0xFFFFFFFC00FFFFFFLL | ((CFBasicHashGetPtrIndex(a3[5]) & 0x3FF) << 24);
        v14[4] = v14[4] & 0xFFFFF003FFFFFFFFLL | ((CFBasicHashGetPtrIndex(a3[4]) & 0x3FF) << 34);
        v14[4] = v14[4] & 0xFFC00FFFFFFFFFFFLL | ((CFBasicHashGetPtrIndex(a3[6]) & 0x3FF) << 44);
        v14[4] = v14[4] & 0x3FFFFFFFFFFFFFLL | (CFBasicHashGetPtrIndex(a3[7]) << 54);
        return v14;
      }
    }

    else
    {
      v17 = 1;
      if (!v11)
      {
        goto LABEL_22;
      }
    }

    LOWORD(v16) = v16 & 0xFFE7 | (8 * (v17++ & 3));
    *(result + 9) = v16;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t CFBasicHashGetPtrIndex(uint64_t a1)
{
  if (CFBasicHashGetPtrIndex_once != -1)
  {
    CFBasicHashGetPtrIndex_cold_1();
  }

  result = os_unfair_lock_lock_with_options();
  v3 = atomic_load(&CFBasicHashCallBackPtrsCount);
  if (v3 >= 1)
  {
    add = 0;
    while (*(CFBasicHashCallBackPtrs[add >> 5] + 8 * (add & 0x1F)) != a1)
    {
      add = (add + 1);
      v5 = atomic_load(&CFBasicHashCallBackPtrsCount);
      if (add >= v5)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_11;
  }

LABEL_7:
  v6 = atomic_load(&CFBasicHashCallBackPtrsCount);
  if (v6 < 1024)
  {
    v7 = atomic_load(&CFBasicHashCallBackPtrsCount);
    v8 = atomic_load(CFBasicHashCallBackPtrsCapacity);
    if (v7 == v8)
    {
      v9 = malloc_type_malloc(0x100uLL, 0x80040B8603338uLL);
      v10 = atomic_load(&CFBasicHashCallBackPtrsCount);
      v11 = v10;
      v7 = v10 + (v10 < 0 ? 0x1F : 0);
      CFBasicHashCallBackPtrs[v11 / 32] = v9;
      atomic_fetch_add(CFBasicHashCallBackPtrsCapacity, 0x20u);
    }

    add = atomic_fetch_add(&CFBasicHashCallBackPtrsCount, 1u);
    *(CFBasicHashCallBackPtrs[add / 32] + 8 * (add - (v7 & 0xFFFFFFE0))) = a1;
LABEL_11:
    os_unfair_lock_unlock(&CFBasicHashCallBackPtrsLock);
    return add;
  }

  __break(1u);
  return result;
}

uint64_t CFBasicHashAddValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 8));
  if ((v3 & 0x40) != 0 || a2 == 2780474809 || a2 == 2814029233 || a3 == 2780474809 || a3 == 2814029233)
  {
    goto LABEL_28;
  }

  v10 = 0u;
  v11 = 0u;
  if (!*(a1 + 26))
  {
    v10 = xmmword_183447130;
    v11 = unk_183447140;
    goto LABEL_21;
  }

  v7 = *(a1 + 18) & 3;
  if ((*(a1 + 18) & 0x8000) == 0)
  {
    if ((*(a1 + 18) & 3u) > 1)
    {
      if (v7 == 2)
      {
        ___CFBasicHashFindBucket_Double(a1, a2, &v10);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential(a1, a2, &v10);
      }

      goto LABEL_21;
    }

    if (v7 == 1)
    {
      ___CFBasicHashFindBucket_Linear(a1, a2, &v10);
      goto LABEL_21;
    }

LABEL_28:
    __break(1u);
  }

  if ((*(a1 + 18) & 3u) <= 1)
  {
    if (v7 == 1)
    {
      ___CFBasicHashFindBucket_Linear_Indirect(a1, a2, &v10);
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v7 == 2)
  {
    ___CFBasicHashFindBucket_Double_Indirect(a1, a2, &v10);
  }

  else
  {
    ___CFBasicHashFindBucket_Exponential_Indirect(a1, a2, &v10);
  }

LABEL_21:
  v8 = *(&v11 + 1);
  if (!*(&v11 + 1))
  {
    __CFBasicHashAddValue(a1, v10, a2, a3);
    return 1;
  }

  result = 0;
  ++*(a1 + 16);
  if (v8 <= 0x7FFFFFFFFFFFFFFELL && (*(a1 + 18) & 0x18) != 0)
  {
    __CFBasicHashIncSlotCount(a1, v10);
    return 1;
  }

  return result;
}

void __CFBasicHashRehash(uint64_t cf, uint64_t a2)
{
  v3 = *(cf + 26);
  v4 = v3;
  if (!a2)
  {
    goto LABEL_9;
  }

  v5 = 0;
  v6 = __CFBasicHashTableCapacities;
  do
  {
    v7 = *v6++;
    if (v7 >= (a2 & ~(a2 >> 63)) + *(cf + 20))
    {
      goto LABEL_6;
    }

    --v5;
  }

  while (v5 != -64);
  do
  {
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            while (1)
            {
LABEL_5:
              __break(1u);
LABEL_6:
              if (a2 == 1)
              {
                v4 = ((*(cf + 32) >> 2) & 1) - v5;
              }

              else
              {
                v4 = -v5;
              }

LABEL_9:
              v8 = __CFBasicHashTableSizes[v4];
              v9 = __CFBasicHashTableSizes[v3];
              if (v8 < 1)
              {
                Typed = 0;
                v13 = 0;
LABEL_32:
                v22 = 0;
                goto LABEL_37;
              }

              if (v8 >> 60)
              {
                __CFBasicHashRehash_cold_1();
              }

              v10 = CFGetAllocator(cf);
              v11 = v10;
              if (!__CFAllocatorRespectsHintZeroWhenAllocating(v10))
              {
                break;
              }

              Typed = CFAllocatorAllocateTyped(v11, 8 * v8, 0x5E33CA92uLL);
              if (Typed)
              {
                goto LABEL_17;
              }
            }

            v14 = CFAllocatorAllocateTyped(v11, 8 * v8, 0xFB0BB3CDuLL);
          }

          while (!v14);
          Typed = v14;
          bzero(v14, 8 * v8);
LABEL_17:
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if ((*(cf + 18) & 4) == 0)
          {
            v13 = 0;
            goto LABEL_28;
          }

          v15 = CFGetAllocator(cf);
          v16 = v15;
          if (!__CFAllocatorRespectsHintZeroWhenAllocating(v15))
          {
            break;
          }

          v13 = CFAllocatorAllocateTyped(v16, 8 * v8, 0x5E33CA92uLL);
          if (v13)
          {
            goto LABEL_26;
          }
        }

        v17 = CFAllocatorAllocateTyped(v16, 8 * v8, 0xFB0BB3CDuLL);
      }

      while (!v17);
      v13 = v17;
      bzero(v17, 8 * v8);
LABEL_26:
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

LABEL_28:
      v18 = *(cf + 18);
      if ((v18 & 0x18) == 0)
      {
        goto LABEL_32;
      }

      v19 = v8 << ((v18 >> 5) & 3);
      v20 = CFGetAllocator(cf);
      v21 = v20;
      if (!__CFAllocatorRespectsHintZeroWhenAllocating(v20))
      {
        break;
      }

      v22 = CFAllocatorAllocateTyped(v21, v19, 0x5E33CA92uLL);
      if (v22)
      {
        goto LABEL_35;
      }
    }

    v23 = CFAllocatorAllocateTyped(v21, v19, 0xFB0BB3CDuLL);
  }

  while (!v23);
  v22 = v23;
  bzero(v23, v19);
LABEL_35:
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

LABEL_37:
  v24 = *(cf + 40);
  *(cf + 24) = *(cf + 24) & 0xFFFFFFFFFF000000 | (v4 << 16);
  *(cf + 40) = Typed;
  v55 = (cf + 40);
  v25 = *(cf + 18);
  if ((v25 & 4) != 0)
  {
    v26 = *(cf + 48);
    *(cf + 48) = v13;
  }

  else
  {
    v26 = 0;
  }

  v52 = v22;
  if ((v25 & 0x18) != 0)
  {
    v27 = v25 & 0x18;
    ptr = *(v55 + v27);
    *(v55 + v27) = v22;
  }

  else
  {
    ptr = 0;
  }

  if (v9 >= 1)
  {
    v28 = 0;
    if (v52)
    {
      v29 = ptr == 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = !v29;
    v54 = v30;
    do
    {
      v31 = v24[v28];
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v31 == 2814029233)
        {
          v31 = 0;
        }

        if (v31 == 2780474809)
        {
          v32 = -1;
        }

        else
        {
          v32 = v31;
        }

        v33 = v32;
        if (v26)
        {
          v34 = v26[v28];
          if (v34 == 2814029233)
          {
            v34 = 0;
          }

          if (v34 == 2780474809)
          {
            v33 = -1;
          }

          else
          {
            v33 = v34;
          }
        }

        if (*(cf + 18) < 0)
        {
          v35 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(cf + 32)) & 0xF8)) + 8 * ((*(cf + 32) >> 54) & 0x1FLL));
          if (v35)
          {
            v33 = v35(v32);
          }

          else
          {
            v33 = v32;
          }
        }

        if (*(cf + 26))
        {
          v5 = *(cf + 18);
          v3 = v5 & 3;
          if ((v5 & 0x8000) != 0)
          {
            if ((v5 & 3u) <= 1)
            {
              if (v3 != 1)
              {
                goto LABEL_5;
              }

              Bucket_Linear_Indirect_NoCollision = ___CFBasicHashFindBucket_Linear_Indirect_NoCollision(cf, v33);
            }

            else if (v3 == 2)
            {
              Bucket_Linear_Indirect_NoCollision = ___CFBasicHashFindBucket_Double_Indirect_NoCollision(cf, v33);
            }

            else
            {
              Bucket_Linear_Indirect_NoCollision = ___CFBasicHashFindBucket_Exponential_Indirect_NoCollision(cf, v33);
            }
          }

          else if ((v5 & 3u) <= 1)
          {
            if (v3 != 1)
            {
              goto LABEL_5;
            }

            Bucket_Linear_Indirect_NoCollision = ___CFBasicHashFindBucket_Linear_NoCollision(cf, v33);
          }

          else if (v3 == 2)
          {
            Bucket_Linear_Indirect_NoCollision = ___CFBasicHashFindBucket_Double_NoCollision(cf, v33);
          }

          else
          {
            Bucket_Linear_Indirect_NoCollision = ___CFBasicHashFindBucket_Exponential_NoCollision(cf, v33);
          }

          v37 = Bucket_Linear_Indirect_NoCollision;
        }

        else
        {
          v37 = -1;
        }

        v38 = *(*v55 + 8 * v37);
        if (v32)
        {
          v39 = v32;
        }

        else
        {
          v39 = 2814029233;
        }

        if (v39 == -1)
        {
          v39 = 2780474809;
        }

        *(*v55 + 8 * v37) = v39;
        v5 = v38 + 1;
        if ((v38 + 1) >= 2)
        {
          if (v38 == 2814029233)
          {
            v38 = 0;
          }

          if (v38 == 2780474809)
          {
            a2 = -1;
          }

          else
          {
            a2 = v38;
          }

          v40 = *(cf + 24);
          v5 = *(CFBasicHashCallBackPtrs + (HIBYTE(v40) & 0xF8));
          v41 = *(v5 + 8 * ((v40 >> 54) & 0x1F));
          if (v41)
          {
            v5 = *(cf + 32);
            if ((v5 & 2) == 0)
            {
              v42 = &kCFAllocatorSystemDefault;
              if ((cf & 0x8000000000000000) == 0)
              {
                v43 = atomic_load((cf + 8));
                v29 = (v43 & 0x80) == 0;
                v42 = (cf - 16);
                if (!v29)
                {
                  v42 = &kCFAllocatorSystemDefault;
                }
              }

              v41(*v42, a2);
            }
          }
        }

        if (v26)
        {
          v3 = *(cf + 18);
          if ((v3 & 4) == 0)
          {
            goto LABEL_5;
          }

          v44 = *(cf + 48);
          v45 = *(v44 + 8 * v37);
          if (v33)
          {
            v46 = v33;
          }

          else
          {
            v46 = 2814029233;
          }

          if (v46 == -1)
          {
            v46 = 2780474809;
          }

          *(v44 + 8 * v37) = v46;
          if ((v45 + 1) >= 2)
          {
            if (v45 == 2814029233)
            {
              v45 = 0;
            }

            if (v45 == 2780474809)
            {
              a2 = -1;
            }

            else
            {
              a2 = v45;
            }

            v47 = *(CFBasicHashCallBackPtrs[(*(cf + 24) >> 49) & 0x1FLL] + 8 * ((*(cf + 24) >> 44) & 0x1FLL));
            if (v47 && (*(cf + 32) & 2) == 0)
            {
              v48 = &kCFAllocatorSystemDefault;
              if ((cf & 0x8000000000000000) == 0)
              {
                v49 = atomic_load((cf + 8));
                v29 = (v49 & 0x80) == 0;
                v48 = (cf - 16);
                if (!v29)
                {
                  v48 = &kCFAllocatorSystemDefault;
                }
              }

              v47(*v48, a2);
            }
          }
        }

        if (v54)
        {
          v50 = (*(cf + 18) >> 5) & 3;
          if (v50 > 1)
          {
            if (v50 == 2)
            {
              *(v52 + 4 * v37) = ptr[v28];
            }

            else
            {
              *(v52 + 8 * v37) = *&ptr[2 * v28];
            }
          }

          else if (v50)
          {
            *(v52 + 2 * v37) = *(ptr + v28);
          }

          else
          {
            *(v52 + v37) = *(ptr + v28);
          }
        }
      }

      ++v28;
    }

    while (v9 != v28);
  }

  v51 = CFGetAllocator(cf);
  CFAllocatorDeallocate(v51, v24);
  CFAllocatorDeallocate(v51, v26);
  CFAllocatorDeallocate(v51, ptr);

  CFAllocatorDeallocate(v51, 0);
}

uint64_t _NSIsNSNumber(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      LOBYTE(v3) = 0;
    }

    v4 = (v3 ^ a1) & 7;
    do
    {
      if (v4 == *(MEMORY[0x1E69E5900] + v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != 7);
    LOBYTE(Class) = (v2 & 7) == 3;
    return Class & 1;
  }

  if (_NSNumberClass)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  Class = objc_getClass("NSNumber");
  _NSNumberClass = Class;
  if (!Class)
  {
    return Class & 1;
  }

  if (!a1)
  {
LABEL_16:
    LOBYTE(Class) = 0;
    return Class & 1;
  }

LABEL_10:
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    LOBYTE(Class) = objc_opt_isKindOfClass();
    return Class & 1;
  }

  return MethodImplementation(a1, sel_isNSNumber__);
}

void mdict_rehashd(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x28)
  {
    __break(1u);
  }

  else
  {
    v17 = a2;
    v3 = LODWORD(__NSDictionarySizes_0[a2]);
    v4 = malloc_type_calloc(1uLL, 16 * v3, 0x80040B8603338uLL);
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v5 >> 58)
    {
      v7 = 0;
      v8 = LODWORD(__NSDictionarySizes_0[v5 >> 58]);
      if (v3 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v3;
      }

      do
      {
        v10 = v6[v7];
        if (v10)
        {
          v11 = v10 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = [v6[v7] hash] % v3;
          v13 = v9;
          while (v4[v12])
          {
            v14 = v12 + 1;
            if (v14 >= v3)
            {
              v15 = v3;
            }

            else
            {
              v15 = 0;
            }

            v12 = v14 - v15;
            if (!--v13)
            {
              goto LABEL_21;
            }
          }

          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_21:
            __NSMUTABLEDICTIONARY_CONCURRENT_MODIFICATION_DETECTED__(a1);
          }

          v4[v12] = v10;
          v4[v3 + v12] = v6[v8 + v7];
        }

        ++v7;
      }

      while (v7 != v8);
    }

    free(v6);
    v16 = *(a1 + 16) & 0x3FFFFFFFFFFFFFFLL | (v17 << 58);
    *(a1 + 8) = v4;
    *(a1 + 16) = v16;
  }
}

Boolean CFBooleanGetValue(CFBooleanRef BOOLean)
{
  if (CF_IS_OBJC(0x15uLL, BOOLean))
  {
    return [(__CFBoolean *)BOOLean BOOLValue];
  }

  else
  {
    return &__kCFBooleanTrue == BOOLean;
  }
}

void CFSortIndexes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  block[7] = *MEMORY[0x1E69E9840];
  v4 = a2 - 1;
  if (a2 >= 1)
  {
    if (a2 >> 60)
    {
      CFSortIndexes_cold_1();
    }

    v7 = a3;
    v8 = a1;
    if (a3)
    {
      a1 = __CFActiveProcessorCount();
      if (a2 < 0xA0 || a1 < 2)
      {
        v7 = 0;
      }

      else if (a2 > 0x27F || a1 <= 2)
      {
        if (a2 > 0xC7F || a1 <= 4)
        {
          if (a1 >= 8)
          {
            v20 = 8;
          }

          else
          {
            v20 = a1;
          }

          if (a2 >> 7 >= 0x7D)
          {
            a1 = a1;
          }

          else
          {
            a1 = v20;
          }
        }

        else
        {
          a1 = 4;
        }
      }

      else
      {
        a1 = 2;
      }

      if (a1 >= 16)
      {
        v9 = 16;
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    if (a2 > 0x10000)
    {
      v18 = dispatch_queue_create("com.apple.NSSortIndexes", MEMORY[0x1E69E96A8]);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __CFSortIndexes_block_invoke;
      block[3] = &__block_descriptor_tmp_9;
      block[4] = ((a2 + 15) >> 3) & 0x3FFFFFFFFFFFFFELL;
      block[5] = a2;
      block[6] = v8;
      dispatch_apply(8uLL, 0, block);
      dispatch_release(v18);
      if ((v7 & 1) == 0)
      {
LABEL_22:
        MEMORY[0x1EEE9AC00](a1, a2, a3);
        v17 = block - v16;
        if (a2 > 4096)
        {
          v19 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
          __CFSimpleMergeSort(v8, a2, v19, a4);
          if (v17 != v19)
          {
            free(v19);
          }
        }

        else
        {
          __CFSimpleMergeSort(v8, a2, block - v16, a4);
        }

        return;
      }
    }

    else
    {
      v10 = 0;
      v11 = vdupq_n_s64(v4);
      v12 = xmmword_183306C30;
      v13 = v8 + 8;
      v14 = vdupq_n_s64(2uLL);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v11, v12));
        if (v15.i8[0])
        {
          *(v13 - 1) = v10;
        }

        if (v15.i8[4])
        {
          *v13 = v10 + 1;
        }

        v10 += 2;
        v12 = vaddq_s64(v12, v14);
        v13 += 2;
      }

      while (((a2 + 1) & 0x3FFFE) != v10);
      if ((v7 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    __CFSortIndexesN(v8, a2, v9, a4);
  }
}

uint64_t __CFSimpleMergeSort(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
    v5 = a2;
    v6 = result;
    if (a2 == 3)
    {
      v9 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = (a4 + 16);
      v13 = (*(a4 + 16))(a4, *result, v10);
      if (v13 <= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v9;
      }

      if (v13 > 0)
      {
        v9 = v10;
      }

      result = (*v12)(a4, v14, v11);
      if (result < 1)
      {
        v15 = v14;
        v14 = v11;
      }

      else
      {
        result = (*(a4 + 16))(a4, v9, v11);
        if (result <= 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v9;
        }

        if (result > 0)
        {
          v9 = v11;
        }
      }

      *v6 = v9;
      v6[1] = v15;
      v6[2] = v14;
    }

    else if (a2 == 2)
    {
      v7 = *result;
      v8 = *(result + 8);
      result = (*(a4 + 16))(a4, *result, v8);
      if (result >= 1)
      {
        *v6 = v8;
        v6[1] = v7;
      }
    }

    else
    {
      v17 = a2 >> 1;
      __CFSimpleMergeSort(result, a2 >> 1, a3, a4);
      v25 = v5 >> 1;
      result = __CFSimpleMergeSort(&v6[v17], v5 - (v5 >> 1), a3, a4);
      if ((v5 - (v5 >> 1)) >= 1)
      {
        if (v5 < 0x11 || (result = (*(a4 + 16))(a4, v6[v17 - 1], v6[v17]), result >= 1))
        {
          v18 = 0;
          v19 = 0;
          v20 = v5 >> 1;
          while (v20 < v5)
          {
            v21 = v6[v19];
            v22 = v6[v20];
            result = (*(a4 + 16))(a4, v21, v22);
            if (result <= 0)
            {
              v23 = v21;
            }

            else
            {
              v23 = v22;
            }

            if (result > 0)
            {
              ++v20;
            }

            if (result < 1)
            {
              ++v19;
            }

            *(a3 + 8 * v18++) = v23;
            if (v19 >= v25)
            {
              do
              {
                v6[v18 - 1] = *(a3 - 8 + 8 * v18);
                --v18;
              }

              while (v18);
              return result;
            }
          }

          if (v18 < v5)
          {
            v24 = v25;
            do
            {
              v6[--v5] = v6[--v24];
            }

            while (v18 < v5);
          }

          for (; v18; --v18)
          {
            v6[v18 - 1] = *(a3 - 8 + 8 * v18);
          }
        }
      }
    }
  }

  return result;
}

BOOL __CFNumberGetValueCompat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65[1] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v3 = 0;
  v4 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v4 = 0;
  }

  v5 = v4 ^ a1;
  while ((v5 & 7) != *(MEMORY[0x1E69E5900] + v3))
  {
    if (++v3 == 7)
    {
      goto LABEL_10;
    }
  }

  if (v3 == 3)
  {
    v6 = v5 >> 3;
  }

  else
  {
LABEL_10:
    LOBYTE(v6) = atomic_load((a1 + 8));
  }

  v7 = __CFNumberTypeTable[a2] & 0x1F;
  v8 = __CFNumberCanonicalTypes[v6 & 7];
  v9 = (a1 + 16);
  v65[0] = 0;
  if (a1 < 0)
  {
    v10 = 0;
    v11 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v11 = 0;
    }

    v12 = v11 ^ a1;
    v13 = v12 & 7;
    while (v13 != *(MEMORY[0x1E69E5900] + v10))
    {
      if (++v10 == 7)
      {
        goto LABEL_26;
      }
    }

    if (v10 == 3)
    {
      v14 = v12 << 9 >> 12;
      if (v13 != 7)
      {
        v14 = (2 * v12) >> 4;
      }

      v15 = 6;
      if ((v12 & 0x40) == 0)
      {
        v15 = 4;
      }

      v65[0] = v14 >> v15;
      if ((v8 - 5) < 2)
      {
        v8 = 4;
      }

      v9 = v65;
    }
  }

LABEL_26:
  result = 0;
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        v31 = __CFNumberTypeTable[v8];
        if ((v31 & 0x20) == 0)
        {
          v18 = *v9;
          if ((v31 & 0x40) == 0)
          {
            *a3 = *&v18;
            v19 = *&v18;
            return *&v18 == v19;
          }

          v44 = v9[1];
          v45 = -*&v18;
          if (v44)
          {
            v45 = ~*&v18;
          }

          if (v18 < 0.0)
          {
            v46 = -v44;
          }

          else
          {
            v45 = *&v18;
            v46 = v44;
          }

          v47 = -(v46 + v45 * 1.84467441e19);
          if (v18 >= 0.0)
          {
            v47 = v46 + v45 * 1.84467441e19;
          }

          *a3 = v47;
          if (v47 < -1.70141183e38)
          {
            goto LABEL_100;
          }

          if (v47 < 1.70141183e38)
          {
LABEL_117:
            v54 = vcvtmd_s64_f64(v47 * 5.42101086e-20);
            v53 = (v47 + floor(v47 * 5.42101086e-20) * -1.84467441e19);
LABEL_118:
            if (v54 < *&v18)
            {
              return 0;
            }

            return v54 <= *&v18 && v53 == v44;
          }

LABEL_120:
          v54 = 0x7FFFFFFFFFFFFFFFLL;
          v53 = -1;
          return v54 <= *&v18 && v53 == v44;
        }

        if ((v31 & 0x40) == 0)
        {
          *a3 = *v9;
          return 1;
        }

        goto LABEL_67;
      }

      if (v7 != 17)
      {
        return result;
      }

      v22 = __CFNumberTypeTable[v8];
      if ((v22 & 0x20) == 0)
      {
        if ((v22 & 0x40) != 0)
        {
          *a3 = *v9;
        }

        else
        {
          v23 = *v9;
          *a3 = v23 >> 63;
          *(a3 + 8) = v23;
        }

        return 1;
      }

      if ((v22 & 0x40) != 0)
      {
        v56 = *v9;
        if (*v9 >= -1.70141183e38)
        {
          if (v56 >= 1.70141183e38)
          {
            v57 = -1;
            v58 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = vcvtmd_s64_f64(v56 * 5.42101086e-20);
            v57 = (v56 + floor(v56 * 5.42101086e-20) * -1.84467441e19);
          }
        }

        else
        {
          v57 = 0;
          v58 = 0x8000000000000000;
        }

        *a3 = v58;
        *(a3 + 8) = v57;
        v63 = -v58;
        if (v57)
        {
          v63 = ~v58;
        }

        if (v58 < 0)
        {
          v57 = -v57;
        }

        else
        {
          v63 = v58;
        }

        v64 = -(v57 + v63 * 1.84467441e19);
        if (v58 >= 0)
        {
          v64 = v57 + v63 * 1.84467441e19;
        }

        return v64 == v56;
      }

      v35 = *v9;
      if (*v9 >= -1.7014e38)
      {
        if (v35 >= 1.7014e38)
        {
          v39 = -1;
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v35 * 5.42101086e-20;
          v40 = vcvtmd_s64_f64(v60);
          v39 = (v35 + floor(v60) * -1.84467441e19);
        }
      }

      else
      {
        v39 = 0;
        v40 = 0x8000000000000000;
      }

      *a3 = v40;
      *(a3 + 8) = v39;
      v61 = -v40;
      if (v39)
      {
        v61 = ~v40;
      }

      if (v40 < 0)
      {
        v39 = -v39;
      }

      else
      {
        v61 = v40;
      }

      v62 = -(v39 + v61 * 1.84467441e19);
      if (v40 >= 0)
      {
        v62 = v39 + v61 * 1.84467441e19;
      }

      v38 = v62;
      return v35 == v38;
    }

    if (v7 != 4)
    {
      v17 = __CFNumberTypeTable[v8];
      if ((v17 & 0x20) == 0)
      {
        v18 = *v9;
        if ((v17 & 0x40) == 0)
        {
          *a3 = *&v18;
          v19 = *&v18;
          return *&v18 == v19;
        }

        v44 = v9[1];
        v49 = -*&v18;
        if (v44)
        {
          v49 = ~*&v18;
        }

        if (v18 < 0.0)
        {
          v50 = -v44;
        }

        else
        {
          v49 = *&v18;
          v50 = v44;
        }

        v51 = -(v50 + v49 * 1.84467441e19);
        if (v18 >= 0.0)
        {
          v51 = v50 + v49 * 1.84467441e19;
        }

        v52 = v51;
        *a3 = v52;
        if (v52 < -1.7014e38)
        {
LABEL_100:
          v53 = 0;
          v54 = 0x8000000000000000;
          goto LABEL_118;
        }

        if (v52 < 1.7014e38)
        {
          v47 = v52;
          goto LABEL_117;
        }

        goto LABEL_120;
      }

      if ((v17 & 0x40) == 0)
      {
        *a3 = *v9;
        return 1;
      }

      v42 = *v9;
      v55 = *v9;
      *a3 = v55;
      v48 = v55;
      return v42 == v48;
    }

    v29 = __CFNumberTypeTable[v8];
    if ((v29 & 0x20) == 0)
    {
      if ((v29 & 0x40) != 0)
      {
        v30 = v9[1];
LABEL_68:
        *a3 = v30;
        return 1;
      }

LABEL_67:
      v30 = *v9;
      goto LABEL_68;
    }

    if ((v29 & 0x40) == 0)
    {
      v35 = *v9;
      v37 = *v9;
      *a3 = v37;
      v38 = v37;
      return v35 == v38;
    }

    v42 = *v9;
    *a3 = *v9;
    v48 = v42;
    return v42 == v48;
  }

  if (v7 == 1)
  {
    v24 = __CFNumberTypeTable[v8];
    if ((v24 & 0x20) == 0)
    {
      if ((v24 & 0x40) != 0)
      {
        v41 = v9[1];
        *a3 = v41;
        return v41 == v41;
      }

      v25 = *v9;
      *a3 = *v9;
      v26 = _CFExecutableLinkedOnOrAfter(6uLL);
      v27 = v25 == v25;
      v28 = v25 >= 0x100;
      goto LABEL_56;
    }

    if ((v24 & 0x40) == 0)
    {
      v35 = *v9;
      v36 = *v9;
      *a3 = v36;
LABEL_78:
      v38 = v36;
      return v35 == v38;
    }

    v42 = *v9;
    v43 = *v9;
    *a3 = v43;
LABEL_111:
    v48 = v43;
    return v42 == v48;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      return result;
    }

    v20 = __CFNumberTypeTable[v8];
    if ((v20 & 0x20) == 0)
    {
      if ((v20 & 0x40) != 0)
      {
        v21 = v9[1];
      }

      else
      {
        v21 = *v9;
      }

      *a3 = v21;
      return v21 == v21;
    }

    if ((v20 & 0x40) == 0)
    {
      v35 = *v9;
      *a3 = *v9;
      v38 = v35;
      return v35 == v38;
    }

    v42 = *v9;
    v43 = *v9;
    *a3 = v43;
    goto LABEL_111;
  }

  v33 = __CFNumberTypeTable[v8];
  if ((v33 & 0x20) != 0)
  {
    if ((v33 & 0x40) == 0)
    {
      v35 = *v9;
      v36 = *v9;
      *a3 = v36;
      goto LABEL_78;
    }

    v42 = *v9;
    v43 = *v9;
    *a3 = v43;
    goto LABEL_111;
  }

  if ((v33 & 0x40) != 0)
  {
    v59 = v9[1];
    *a3 = v59;
    return v59 == v59;
  }

  v34 = *v9;
  *a3 = *v9;
  v26 = _CFExecutableLinkedOnOrAfter(6uLL);
  v27 = v34 == v34;
  v28 = v34 >= 0x10000;
LABEL_56:
  if (!v28)
  {
    v27 = 1;
  }

  return !v26 || v27;
}

unint64_t _NSTaggedPointerStringGetLength(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v1 = 7;
  }

  return ((v1 ^ a1) >> 3) & 0xF;
}

unint64_t _NSTaggedPointerStringGetBytes(uint64_t a1, unint64_t *a2)
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  v4 = (~(v2 ^ a1) & 7) == 0;
  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v5 = 0xFFFFFFFFFFFFFLL;
  }

  result = (v3 >> 3) & 0xF;
  v7 = (v5 & (v3 >> 3)) >> 4;
  if (result < 8)
  {
    *a2 = v7;
  }

  else
  {
    v8 = a2 - 1;
    v9 = result;
    if (result >= 0xA)
    {
      do
      {
        v8[v9] = sixBitToCharLookup[v7 & 0x1F];
        v7 >>= 5;
        --v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v8[v9] = sixBitToCharLookup[v7 & 0x3F];
        v7 >>= 6;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

unint64_t CFStringConvertEncodingToNSStringEncoding(CFStringEncoding encoding)
{
  if (encoding == 134217984)
  {
    return 4;
  }

  if (encoding == 1536)
  {
    return 1;
  }

  v2 = encoding & 0xFFF;
  if (v2 <= 0x500)
  {
    if ((encoding & 0xFFF) <= 0x200)
    {
      if ((encoding & 0xFFF) != 0)
      {
        if (v2 != 33)
        {
          if (v2 == 256 && encoding == 256)
          {
            return 10;
          }

          return encoding | 0x80000000;
        }

        return 6;
      }

      else
      {
        return 30;
      }
    }

    else if ((encoding & 0xFFF) > 0x41F)
    {
      if (v2 != 1056)
      {
        if (v2 == 1280)
        {
          return 12;
        }

        return encoding | 0x80000000;
      }

      return 8;
    }

    else
    {
      if (v2 != 513)
      {
        if (v2 == 514)
        {
          return 9;
        }

        return encoding | 0x80000000;
      }

      return 5;
    }
  }

  else if ((encoding & 0xFFF) > 0x81F)
  {
    if ((encoding & 0xFFF) > 0xB00)
    {
      if (v2 != 2817)
      {
        if (v2 == 3071)
        {
          return 7;
        }

        return encoding | 0x80000000;
      }

      return 2;
    }

    else
    {
      if (v2 != 2080)
      {
        if (v2 == 2336)
        {
          return 3;
        }

        return encoding | 0x80000000;
      }

      return 21;
    }
  }

  else if ((encoding & 0xFFF) > 0x502)
  {
    if (v2 != 1283)
    {
      if (v2 == 1284)
      {
        return 14;
      }

      return encoding | 0x80000000;
    }

    return 13;
  }

  else
  {
    if (v2 != 1281)
    {
      if (v2 == 1282)
      {
        return 11;
      }

      return encoding | 0x80000000;
    }

    return 15;
  }
}

CFStringEncoding CFStringGetSystemEncoding(void)
{
  if ((__CFDefaultSystemEncoding & 1) == 0)
  {
    if (__CFIsReadyToInitializeSystemEncoding)
    {
      if ((__CFStringIsBeingInitialized & 1) == 0)
      {
        __CFStringIsBeingInitialized = 1;
        Converter = CFStringEncodingGetConverter(0);
        __CFDefaultSystemEncoding = 1;
        if (!Converter)
        {
          Converter = CFStringEncodingGetConverter(0);
        }

        if (*(Converter + 20) == 1)
        {
          v1 = Converter[1];
        }

        else
        {
          v1 = 0;
        }

        __CFSetCharToUniCharFunc(v1);
        __CFStringIsBeingInitialized = 0;
      }
    }

    else if (!__CFCharToUniCharFunc)
    {
      v2 = CFStringEncodingGetConverter(0);
      __CFSetCharToUniCharFunc(v2[1]);
    }
  }

  return 0;
}

uint64_t _NSIsNSData(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 1;
  }

  v1 = a1;
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
    return a1 & 1;
  }

  return MethodImplementation(v1, sel_isNSData__);
}

CFStringEncoding CFStringGetFastestEncoding(CFStringRef theString)
{
  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)theString _fastestEncodingInCFStringEncoding];
  }

  else
  {
    v3 = atomic_load(&theString->info);
    if ((v3 & 0x10) != 0)
    {
      return 256;
    }

    else
    {
      result = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {

        return __CFStringComputeEightBitStringEncoding();
      }
    }
  }

  return result;
}

Boolean CFCharacterSetIsCharacterMember(CFCharacterSetRef theSet, UniChar theChar)
{
  v2 = theChar;
  v4 = CF_IS_OBJC(0x19uLL, theSet);
  if (v4)
  {
    LOBYTE(v4) = [(__CFCharacterSet *)theSet longCharacterIsMember:v2];
    return v4;
  }

  v5 = atomic_load(theSet + 1);
  v6 = (v5 >> 3) & 1;
  v7 = atomic_load(theSet + 1);
  v8 = (v7 >> 4) & 7;
  if (v8 <= 1)
  {
    if (v8)
    {
      v11 = *(theSet + 4);
      v4 = (v5 >> 3) & 1;
      if (v11)
      {
        v12 = *(theSet + 6);
        v13 = v6 ^ (v11 + v12 > v2);
        if (v12 <= v2)
        {
          LOBYTE(v4) = v13;
        }

        else
        {
          LOBYTE(v4) = v6;
        }
      }
    }

    else
    {
      LOBYTE(v4) = ((v5 & 8) != 0) ^ CFUniCharIsMemberOf(v2, *(theSet + 6));
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v14 = *(theSet + 4);
        if (v14)
        {
          v15 = *(theSet + 3);
          if (*v15 <= v2)
          {
            v16 = &v15[v14];
            v18 = *(v16 - 1);
            v17 = v16 - 1;
            if (v18 >= v2 && v15 <= v17)
            {
              do
              {
                v20 = &v15[(v17 - v15) >> 2];
                v21 = *v20;
                if (v21 <= v2)
                {
                  if (v21 >= v2)
                  {
                    LOBYTE(v4) = v6 ^ 1;
                    return v4;
                  }

                  v15 = v20 + 1;
                }

                else
                {
                  v17 = v20 - 1;
                }
              }

              while (v15 <= v17);
            }
          }
        }

        LOBYTE(v4) = v6;
        break;
      case 3:
        v22 = *(theSet + 3);
        v4 = (v5 >> 3) & 1;
        if (!v22)
        {
          return v4;
        }

        v23 = *(v22 + (v2 >> 3));
        return (v23 >> (v2 & 7)) & 1;
      case 4:
        v9 = *(theSet + 3);
        v4 = (v5 >> 3) & 1;
        if (v9)
        {
          v10 = *(v9 + (v2 >> 8));
          if (!*(v9 + (v2 >> 8)))
          {
            LOBYTE(v4) = 0;
            return v4;
          }

          if (v10 == 255)
          {
            LOBYTE(v4) = 1;
            return v4;
          }

          v23 = *(v9 + 32 * v10 + ((v2 & 0xF8) >> 3) + 224);
          return (v23 >> (v2 & 7)) & 1;
        }

        break;
    }
  }

  return v4;
}

void CFStringGetCharacters(CFStringRef theString, CFRange range, UniChar *buffer)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(7uLL, theString))
  {

    [(__CFString *)theString getCharacters:buffer range:location, length];
  }

  else
  {
    v7 = atomic_load(&theString->info);
    p_data = &theString->data;
    if ((v7 & 0x60) != 0)
    {
      v9 = *p_data;
    }

    else
    {
      v10 = atomic_load(&theString->info);
      v9 = &p_data[(v10 & 5) != 4];
    }

    v11 = atomic_load(&theString->info);
    if ((v11 & 0x10) != 0)
    {

      memmove(buffer, &v9[2 * location], 2 * length);
    }

    else
    {
      v12 = atomic_load(&theString->info);

      __CFStrConvertBytesToUnicode(&v9[location + ((v12 >> 2) & 1)], buffer, length);
    }
  }
}

CFStringRef CFStringCreateWithSubstring(CFAllocatorRef alloc, CFStringRef str, CFRange range)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(7uLL, str))
  {

    return [(__CFString *)str _createSubstringWithRange:location, length];
  }

  else if (location || ((v14 = atomic_load(&str->info), v15 = v14 & 5, v16 = atomic_load(&str->info), v17 = v16 & 0x60, v15 != 4) ? ((v16 & 0x60) == 0 ? (data = str->data) : (data = str->length)) : ((v18 = &str->data, !v17) ? (v21 = atomic_load(&str->info), v19 = &v18[(v21 & 5) != 4]) : (v19 = *v18), data = *v19), length != data))
  {
    v22 = atomic_load(&str->info);
    v23 = atomic_load(&str->info);
    v24 = v23 & 0x60;
    p_data = &str->data;
    if ((v22 & 0x10) != 0)
    {
      if (v24)
      {
        v27 = *p_data;
      }

      else
      {
        v37 = atomic_load(&str->info);
        v27 = &p_data[(v37 & 5) != 4];
      }

      v33 = &v27[2 * location];
      v35 = 2 * length;
      v34 = alloc;
      v32 = 256;
      v36 = 2;
    }

    else
    {
      if (v24)
      {
        v26 = *p_data;
      }

      else
      {
        v28 = atomic_load(&str->info);
        v26 = &p_data[(v28 & 5) != 4];
      }

      v29 = &v26[location];
      v30 = atomic_load(&str->info);
      v31 = (v30 >> 2) & 1;
      v32 = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {
        v32 = __CFStringComputeEightBitStringEncoding();
      }

      v33 = &v29[v31];
      v34 = alloc;
      v35 = length;
      v36 = 0;
    }

    return __CFStringCreateImmutableFunnel3(v34, v33, v35, v32, v36, 0xFFFFFFFFFFFFFFFFLL, 0, v12);
  }

  else
  {

    return _CFNonObjCStringCreateCopy(alloc, str, v7, v8, v9, v10, v11, v12);
  }
}

Boolean CFStringGetCString(CFStringRef theString, char *buffer, CFIndex bufferSize, CFStringEncoding encoding)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = bufferSize - 1;
  if (bufferSize < 1)
  {
    return 0;
  }

  v5 = *&encoding;
  if (CF_IS_OBJC(7uLL, theString))
  {
    return [(__CFString *)theString _getCString:buffer maxLength:v4 encoding:v5];
  }

  v10 = atomic_load(&theString->info);
  p_data = &theString->data;
  if ((v10 & 0x60) != 0)
  {
    v12 = *p_data;
  }

  else
  {
    v13 = atomic_load(&theString->info);
    v12 = &p_data[(v13 & 5) != 4];
  }

  v14 = atomic_load(&theString->info);
  if ((v14 & 5) == 4)
  {
    length = *v12;
  }

  else
  {
    v16 = atomic_load(&theString->info);
    if ((v16 & 0x60) != 0)
    {
      length = theString->length;
    }

    else
    {
      length = *p_data;
    }
  }

  v17 = atomic_load(&theString->info);
  if ((v17 & 0x10) != 0)
  {
    goto LABEL_50;
  }

  v18 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v18 = __CFStringComputeEightBitStringEncoding();
  }

  if (v18 == v5)
  {
    goto LABEL_17;
  }

  v20 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v20 = __CFStringComputeEightBitStringEncoding();
  }

  if (v20 != 1536)
  {
    goto LABEL_50;
  }

  if (BYTE1(v5) > 7u)
  {
    if (BYTE1(v5) > 0xAu)
    {
      if (BYTE1(v5) == 11)
      {
        if ((v5 - 3059) > 0xC)
        {
          goto LABEL_17;
        }

        v21 = 1 << (v5 + 13);
        v22 = 4099;
LABEL_49:
        if ((v21 & v22) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_50;
      }

      if (BYTE1(v5) == 12)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (BYTE1(v5) == 8)
      {
        goto LABEL_50;
      }

      if (BYTE1(v5) == 10)
      {
        if ((v5 - 2561) > 0xF)
        {
          goto LABEL_17;
        }

        v21 = 1 << (v5 - 1);
        v22 = 32785;
        goto LABEL_49;
      }
    }

LABEL_39:
    if ((v5 & 0xFF00u) > 0xC00)
    {
      goto LABEL_50;
    }

    goto LABEL_17;
  }

  if (BYTE1(v5) > 1u)
  {
    if (BYTE1(v5) == 2)
    {
      if (v5 == 518)
      {
        goto LABEL_50;
      }

      goto LABEL_17;
    }

    if (BYTE1(v5) == 6)
    {
      if (v5 != 1536)
      {
        goto LABEL_50;
      }

      goto LABEL_17;
    }

    goto LABEL_39;
  }

  if (BYTE1(v5))
  {
    if (v5 != 134217984)
    {
      goto LABEL_50;
    }

LABEL_17:
    if (length >= bufferSize)
    {
      result = 0;
      *buffer = 0;
    }

    else
    {
      v19 = atomic_load(&theString->info);
      memmove(buffer, &v12[(v19 >> 2) & 1], length);
      buffer[length] = 0;
      return 1;
    }

    return result;
  }

  if ((v5 > 0x22 || ((1 << v5) & 0x600000032) == 0) && v5 != 152)
  {
    goto LABEL_17;
  }

LABEL_50:
  v24[0] = 0;
  v25.location = 0;
  v25.length = length;
  result = __CFStringEncodeByteStream(theString, v25, 0, v5, 0, buffer, v4, v24) == length;
  v23 = v24[0];
  if (!result)
  {
    v23 = 0;
  }

  buffer[v23] = 0;
  return result;
}

uint64_t __createOrderedSet(void *a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a2;
  return [a1 initWithObjects:v3 count:1];
}

uint64_t __CFStringIsCF(unint64_t *a1, _BYTE *a2, unint64_t *a3, BOOL *a4, _BYTE *a5)
{
  if (CF_IS_OBJC_CHECKING_CONSTANT_STRING(7uLL, a1, a5))
  {
    return 0;
  }

  v10 = atomic_load(a1 + 1);
  *a2 = v10 & 1;
  v11 = atomic_load(a1 + 1);
  v12 = v11 & 5;
  v13 = atomic_load(a1 + 1);
  v14 = v13 & 0x60;
  if (v12 == 4)
  {
    v15 = a1 + 2;
    if (v14)
    {
      v16 = *v15;
    }

    else
    {
      v18 = atomic_load(a1 + 1);
      v16 = &v15[(v18 & 5) != 4];
    }

    v17 = *v16;
  }

  else if ((v13 & 0x60) != 0)
  {
    v17 = a1[3];
  }

  else
  {
    v17 = a1[2];
  }

  *a3 = v17;
  v19 = atomic_load(a1 + 1);
  result = 1;
  *a4 = ((v19 >> 4) & 1) == 0;
  return result;
}

unint64_t CF_IS_OBJC_CHECKING_CONSTANT_STRING(unint64_t result, unint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v3 = *a2 & ~MEMORY[0x1E69E58F0];
  if ((*a2 & MEMORY[0x1E69E58F0]) != 0)
  {
    v3 |= *a2 & MEMORY[0x1E69E58F0];
  }

  if (!v3)
  {
    if (result)
    {
      CF_IS_OBJC_CHECKING_CONSTANT_STRING_cold_1();
    }

    return result;
  }

  if (result == 7 && v3 == __CFConstantStringClassReferencePtr)
  {
    result = 0;
    *a3 = 1;
    return result;
  }

  if (result <= 0x47)
  {
    v4 = &__CFRuntimeBuiltinObjCClassTable[result];
LABEL_16:
    v7 = *v4;
    goto LABEL_18;
  }

  v5 = result - 72;
  if (result - 72 < dword_1ED40C410[0])
  {
    v6 = __CFRuntimeClassTables[(v5 >> 6) + 16];
    if (v6)
    {
      v4 = (v6 + 8 * (v5 & 0x3F));
      goto LABEL_16;
    }
  }

  v7 = 0;
LABEL_18:
  if (v3 == v7)
  {
    return 0;
  }

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  return (*MEMORY[0x1E69E58F8] & v3) != v7;
}

uint64_t __createSet(void *a1, uint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a2;
  return [a1 initWithObjects:v3 count:1];
}

uint64_t _NSIsNSSet(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 1;
  }

  v1 = a1;
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
    return a1 & 1;
  }

  return MethodImplementation(v1, sel_isNSSet__);
}

uint64_t _NSIsNSString(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ a1;
    do
    {
      if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != 7);
    v5 = v2 | v4;
    v6 = v2 & 7;
    v7 = (v5 >> 55) + 8;
    if (v6 == 7)
    {
      LODWORD(v6) = v7;
    }

    v8 = v6 >= 0x17;
    v9 = 0x400005u >> v6;
    if (v8)
    {
      LOBYTE(Class) = 0;
    }

    else
    {
      LOBYTE(Class) = v9;
    }

    return Class & 1;
  }

  if (_NSStringClass)
  {
    if (a1)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  Class = objc_getClass("NSString");
  _NSStringClass = Class;
  if (!Class)
  {
    return Class & 1;
  }

  if (!a1)
  {
LABEL_20:
    LOBYTE(Class) = 0;
    return Class & 1;
  }

LABEL_14:
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    LOBYTE(Class) = objc_opt_isKindOfClass();
    return Class & 1;
  }

  return MethodImplementation(a1, sel_isNSString__);
}

uint64_t _CFStringCheckAndGetCharacters(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *__dst)
{
  v4 = atomic_load((a1 + 8));
  v5 = (a1 + 16);
  if ((v4 & 0x60) != 0)
  {
    v6 = *v5;
  }

  else
  {
    v7 = atomic_load((a1 + 8));
    v6 = &v5[(v7 & 5) != 4];
  }

  v8 = atomic_load((a1 + 8));
  if ((v8 & 5) == 4)
  {
    v9 = *v6;
  }

  else
  {
    v10 = atomic_load((a1 + 8));
    if ((v10 & 0x60) != 0)
    {
      v9 = *(a1 + 24);
    }

    else
    {
      v9 = *v5;
    }
  }

  if (a2 + a3 > v9)
  {
    return 3;
  }

  v12 = atomic_load((a1 + 8));
  if ((v12 & 0x10) != 0)
  {
    memmove(__dst, v6 + 2 * a2, 2 * a3);
  }

  else
  {
    v13 = atomic_load((a1 + 8));
    __CFStrConvertBytesToUnicode(v6 + a2 + ((v13 >> 2) & 1), __dst, a3);
  }

  return 0;
}

unsigned __int8 *__CFStrConvertBytesToUnicode(unsigned __int8 *result, _WORD *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = __CFCharToUniCharTable;
    do
    {
      v4 = *result++;
      *a2++ = *(v3 + 2 * v4);
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t CFUniCharIsMemberOf(int a1, unsigned int a2)
{
  if (a2 - 16 >= 0x54)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2 + 85;
  }

  if (a2 == 1)
  {
    v3 = 108;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 15)
  {
    v5 = (a1 - 8232) < 2 || a1 == 133;
    return (a1 - 10) < 4 || v5;
  }

  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v4 = 1;
      if (a1 > 159)
      {
        if (a1 == 160 || a1 == 5760)
        {
          return v4;
        }
      }

      else if (a1 == 9 || a1 == 32)
      {
        return v4;
      }

      if ((a1 - 0x2000) < 0xC)
      {
        return 1;
      }

      v4 = 1;
      if (a1 != 8239 && a1 != 8287)
      {
        goto LABEL_56;
      }

      return v4;
    }

    v6 = v3 - 85;
    if (v3 <= 0x63)
    {
      v6 = v3;
    }

    v7 = v6 - 4;
    if (v7 > 0x15)
    {
      return 0;
    }

    v8 = &__CFUniCharBitmapDataArray[4 * v7];
    if (v3 == 108)
    {
      if (BYTE2(a1) == 14)
      {
        v9 = a1 != 1 && a1 - 32 >= 0x60;
        return !v9;
      }
    }

    else if (v3 == 12)
    {
      if (BYTE2(a1) != 14)
      {
        if (BYTE2(a1) - 15 >= 2)
        {
          if (BYTE2(a1) < *v8)
          {
            v11 = *(*(v8 + 1) + 8 * BYTE2(a1));
            if (v11)
            {
              return ((*(v11 + (a1 >> 3)) >> (a1 & 7)) & 1) == 0;
            }
          }

          return 1;
        }

        return 0;
      }

      v9 = a1 == 1 || a1 - 128 >= 0xFFFFFFA0;
      return !v9;
    }

    if (BYTE2(a1) >= *v8)
    {
      return 0;
    }

    v4 = *(*(v8 + 1) + 8 * BYTE2(a1));
    if (v4)
    {
      return (*(v4 + (a1 >> 3)) >> (a1 & 7)) & 1;
    }

    return v4;
  }

  v4 = 1;
  if (a1 > 159)
  {
    if (a1 == 160 || a1 == 5760)
    {
      return v4;
    }
  }

  else if (a1 == 9 || a1 == 32)
  {
    return v4;
  }

  if ((a1 - 0x2000) < 0xC)
  {
    return 1;
  }

  v4 = 1;
  if (a1 > 8231)
  {
    if ((a1 - 8232) > 0x37 || ((1 << (a1 - 40)) & 0x80000000000083) == 0)
    {
LABEL_56:
      if (a1 == 12288)
      {
        return v4;
      }

      return 0;
    }
  }

  else if ((a1 - 10) >= 4 && a1 != 133)
  {
    return 0;
  }

  return v4;
}

Boolean CFStringFindCharacterFromSet(CFStringRef theString, CFCharacterSetRef theSet, CFRange rangeToSearch, CFStringCompareFlags searchOptions, CFRange *result)
{
  v6 = searchOptions;
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v54 = *MEMORY[0x1E69E9840];
  v11 = CFStringGetLength(theString);
  LOBYTE(v12) = 0;
  if (!length || location + length > v11)
  {
    return v12;
  }

  if ((v6 & 4) != 0)
  {
    v13 = location;
  }

  else
  {
    v13 = location + length - 1;
  }

  if ((v6 & 4) != 0)
  {
    v14 = location + length - 1;
  }

  else
  {
    v14 = location;
  }

  if ((v6 & 8) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v14 > v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  theStringa = theString;
  v50 = location;
  v51 = length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  if (CharactersPtr)
  {
    CStringPtrInternal = 0;
  }

  else
  {
    CStringPtrInternal = _CFStringGetCStringPtrInternal(theString, 0x600u, 0, 1);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  v40 = 0u;
  *theSeta = 0u;
  v38 = 0u;
  v52 = 0;
  v53 = 0;
  v49 = CStringPtrInternal;
  CFCharacterSetInitInlineBuffer(theSet, theSeta);
  for (i = v14; ; i += v16)
  {
    v19 = i - location;
    if (i - location < 0 || (v20 = v51, v51 <= v19))
    {
      v21 = 0;
      goto LABEL_24;
    }

    if (CharactersPtr)
    {
      v21 = CharactersPtr[v50 + v19];
    }

    else if (v49)
    {
      v21 = v49[v50 + v19];
    }

    else
    {
      if (v53 <= v19 || (v25 = v52, v52 > v19))
      {
        v26 = v19 - 4;
        if (v19 < 4)
        {
          v26 = 0;
        }

        if (v26 + 64 < v51)
        {
          v20 = v26 + 64;
        }

        v52 = v26;
        v53 = v20;
        v55.length = v20 - v26;
        v55.location = v50 + v26;
        CFStringGetCharacters(theStringa, v55, buffer);
        v25 = v52;
      }

      v21 = buffer[v19 - v25];
    }

    if (v21 >> 11 == 27)
    {
      break;
    }

LABEL_24:
    LOBYTE(v22) = (theSeta[1] & 4) == 0;
    if (HIDWORD(theSeta[1]) > v21 || v38 <= v21)
    {
      v22 = (theSeta[1] & 4) >> 2;
LABEL_29:
      if (v22)
      {
        goto LABEL_94;
      }

      goto LABEL_81;
    }

    if ((theSeta[1] & 2) != 0)
    {
      if (CFCharacterSetIsLongCharacterMember(theSeta[0], v21))
      {
        goto LABEL_94;
      }
    }

    else if (*(&v38 + 1))
    {
      if (theSeta[1])
      {
        v24 = *(*(&v38 + 1) + (v21 >> 8));
        if (!*(*(&v38 + 1) + (v21 >> 8)))
        {
          if ((theSeta[1] & 4) != 0)
          {
LABEL_94:
            v12 = 1;
            if (!result)
            {
              return v12;
            }

            goto LABEL_95;
          }

          goto LABEL_81;
        }

        if (v24 == 255)
        {
          goto LABEL_29;
        }

        if ((((*(*(&v38 + 1) + 32 * v24 + (v21 >> 3) + 224) >> (v21 & 7)) & 1) == 0) != ((theSeta[1] & 4) == 0))
        {
          goto LABEL_94;
        }
      }

      else if ((((*(*(&v38 + 1) + (v21 >> 3)) >> (v21 & 7)) & 1) == 0) != ((theSeta[1] & 4) == 0))
      {
        goto LABEL_94;
      }
    }

    else if ((((theSeta[1] & 1) == 0) ^ ((theSeta[1] & 4) >> 2)))
    {
      goto LABEL_94;
    }

LABEL_81:
    if (i == v15)
    {
LABEL_93:
      LOBYTE(v12) = 0;
      return v12;
    }

LABEL_82:
    ;
  }

  v27 = i + v16;
  if (v14 <= v15)
  {
    if (v27 > v15)
    {
      goto LABEL_93;
    }
  }

  else if (v27 < v15)
  {
    goto LABEL_93;
  }

  v28 = v27 - location;
  if (v27 - location < 0 || (v29 = v51, v51 <= v28))
  {
    v30 = 0;
  }

  else if (CharactersPtr)
  {
    v30 = CharactersPtr[v50 + v28];
  }

  else if (v49)
  {
    v30 = v49[v50 + v28];
  }

  else
  {
    if (v53 <= v28 || (v34 = v52, v52 > v28))
    {
      v35 = v28 - 4;
      if (v28 < 4)
      {
        v35 = 0;
      }

      if (v35 + 64 < v51)
      {
        v29 = v35 + 64;
      }

      v52 = v35;
      v53 = v29;
      v56.length = v29 - v35;
      v56.location = v50 + v35;
      CFStringGetCharacters(theStringa, v56, buffer);
      v34 = v52;
    }

    v30 = buffer[v28 - v34];
  }

  if (i >= v27)
  {
    v31 = v30;
  }

  else
  {
    v31 = v21;
  }

  if (i >= v27)
  {
    v30 = v21;
  }

  if (v31 >> 10 != 54 || (v30 & 0xFC00) != 0xDC00)
  {
    goto LABEL_78;
  }

  v32 = (v31 << 10) + v30 - 56613888;
  if (HIDWORD(theSeta[1]) > v32 || v38 <= v32)
  {
    if ((theSeta[1] & 4) != 0)
    {
      goto LABEL_98;
    }

LABEL_78:
    i = i + v16;
    if (v27 == v15)
    {
      goto LABEL_93;
    }

    goto LABEL_82;
  }

  if (!CFCharacterSetIsLongCharacterMember(theSeta[0], v32))
  {
    goto LABEL_78;
  }

LABEL_98:
  if (result)
  {
    if (i >= v27)
    {
      i = i + v16;
    }

    v12 = 2;
LABEL_95:
    result->location = i;
    result->length = v12;
  }

  LOBYTE(v12) = 1;
  return v12;
}

unint64_t *CFCharacterSetInitInlineBuffer(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = a1;
  *(a2 + 16) = 0x10000;
  result = CF_IS_OBJC(0x19uLL, a1);
  if (result)
  {
    result = [v3 _expandedCFCharacterSet];
    v3 = result;
    if (!result)
    {
      *(a2 + 8) = 2;
LABEL_27:
      *(a2 + 16) = 1114112;
      return result;
    }
  }

  v5 = atomic_load(v3 + 1);
  v6 = (v5 >> 4) & 7;
  if (v6 > 2)
  {
    if ((v6 - 3) >= 2)
    {
      return result;
    }

    v10 = v3[3];
    *(a2 + 24) = v10;
    if (v10)
    {
      v11 = atomic_load(v3 + 1);
      if ((v11 & 0x70) != 0x40)
      {
        goto LABEL_25;
      }

      v12 = 1;
    }

    else
    {
      *(a2 + 8) = 1;
      v15 = atomic_load(v3 + 1);
      if ((v15 & 8) == 0)
      {
        goto LABEL_25;
      }

      v12 = *(a2 + 8) | 4;
    }

LABEL_24:
    *(a2 + 8) = v12;
    goto LABEL_25;
  }

  if (!v6)
  {
    result = CFUniCharGetBitmapPtrForPlane(*(v3 + 6), 0);
    *(a2 + 24) = result;
    *(a2 + 16) = 1114112;
    if (result)
    {
      v13 = atomic_load(v3 + 1);
      if ((v13 & 8) == 0)
      {
        goto LABEL_25;
      }

      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_24;
  }

  if (v6 == 1)
  {
    v14 = *(v3 + 6);
    *(a2 + 12) = v14;
    *(a2 + 16) = v14 + *(v3 + 8);
    LOBYTE(v14) = atomic_load(v3 + 1);
    if ((v14 & 8) != 0)
    {
      *(a2 + 8) = 4;
    }

    return result;
  }

  *(a2 + 8) = 2;
  if (v3[4] >= 1)
  {
    *(a2 + 12) = *v3[3];
    *(a2 + 16) = *(v3[3] + 2 * v3[4] - 2) + 1;
    v7 = atomic_load(v3 + 1);
    if ((v7 & 8) != 0)
    {
      v8 = *(a2 + 12);
      v9 = *(a2 + 16);
      if (v8)
      {
        if (v9 == 0x10000)
        {
          *(a2 + 12) = 0;
          *(a2 + 16) = v8;
        }

        else
        {
          *(a2 + 12) = 0x1000000000000;
        }
      }

      else
      {
        *(a2 + 12) = v9;
        *(a2 + 16) = 0x10000;
      }
    }
  }

LABEL_25:
  v16 = v3[5];
  if (!v16)
  {
    return result;
  }

  if (*(v16 + 13))
  {
    goto LABEL_27;
  }

  v17 = *(v16 + 8);
  if (v17)
  {
    v18 = 1114112;
    v19 = 15;
    while (1)
    {
      v20 = (v19 + 1);
      if (v20 <= 0x10 && ((v17 >> (v19 + 1)) & 1) != 0 && *(v16 + 12) >= v20 && *(*v16 + 8 * v19))
      {
        break;
      }

      v21 = v19-- + 1;
      v18 -= 0x10000;
      if (v21 <= 1)
      {
        return result;
      }
    }

    *(a2 + 16) = v18;
  }

  return result;
}

uint64_t CFUniCharGetBitmapPtrForPlane(unsigned int a1, unsigned int a2)
{
  if (a1 - 16 >= 0x54)
  {
    v2 = a1;
  }

  else
  {
    v2 = a1 + 85;
  }

  if (a1 == 1)
  {
    v2 = 108;
  }

  if (v2 <= 0xF && ((1 << v2) & 0x900F) != 0)
  {
    return 0;
  }

  if (v2 > 0x63)
  {
    v2 -= 85;
  }

  v5 = v2 - 4;
  if (v5 <= 0x15 && (v6 = &__CFUniCharBitmapDataArray[4 * v5], *v6 > a2))
  {
    return *(*(v6 + 1) + 8 * a2);
  }

  else
  {
    return 0;
  }
}

Boolean CFCharacterSetIsLongCharacterMember(CFCharacterSetRef theSet, UTF32Char theChar)
{
  v2 = *&theChar;
  v3 = theSet;
  if (CF_IS_OBJC(0x19uLL, theSet))
  {
    LOBYTE(v4) = [(__CFCharacterSet *)v3 longCharacterIsMember:v2];
    return v4;
  }

  if (BYTE2(v2))
  {
    v5 = atomic_load(v3 + 1);
    if ((v5 & 0x70) == 0)
    {
      v15 = atomic_load(v3 + 1);
      LOBYTE(v4) = ((v15 & 8) != 0) ^ CFUniCharIsMemberOf(v2, *(v3 + 6));
      return v4;
    }

    v6 = *(v3 + 5);
    if (!v6)
    {
      LOBYTE(v4) = 0;
LABEL_29:
      v19 = atomic_load(v3 + 1);
      if ((v19 & 0x70) == 0x10)
      {
        v20 = atomic_load(v3 + 1);
        v4 = (v20 >> 3) & 1;
        v21 = *(v3 + 4);
        if (v21)
        {
          v22 = *(v3 + 6);
          v23 = v4 ^ (v21 + v22 > v2);
          if (v22 <= v2)
          {
            LOBYTE(v4) = v23;
          }
        }
      }

      return v4;
    }

    LOBYTE(v4) = *(v6 + 13) != 0;
    if (BYTE2(v2) >= 0x11u)
    {
      v7 = *(v6 + 8);
      goto LABEL_28;
    }

    v7 = *(v6 + 8);
    if (((v7 >> SBYTE2(v2)) & 1) == 0 || *(v6 + 12) < BYTE2(v2) || (v18 = *(*v6 + 8 * (WORD1(v2) & 0x1F) - 8)) == 0)
    {
LABEL_28:
      if (v7)
      {
        return v4;
      }

      goto LABEL_29;
    }

    LODWORD(v2) = v2;
    v3 = v18;
    v8 = *(v6 + 13) != 0;
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v4) = 0;
  v9 = atomic_load(v3 + 1);
  v10 = (v9 >> 3) & 1;
  v11 = atomic_load(v3 + 1);
  v12 = (v11 >> 4) & 7;
  if (v12 <= 1)
  {
    if (v12)
    {
      v16 = *(v3 + 4);
      if (v16)
      {
        v17 = *(v3 + 6);
        if (v17 <= v2)
        {
          LOBYTE(v10) = v10 ^ (v16 + v17 > v2);
        }
      }
    }

    else
    {
      v10 ^= CFUniCharIsMemberOf(v2, *(v3 + 6));
    }
  }

  else
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v32 = *(v3 + 3);
        if (!v32)
        {
          goto LABEL_49;
        }

        v33 = *(v32 + (v2 >> 3));
      }

      else
      {
        if (v12 != 4)
        {
          return v4;
        }

        v13 = *(v3 + 3);
        if (!v13)
        {
          goto LABEL_49;
        }

        v14 = *(v13 + BYTE1(v2));
        if (!*(v13 + BYTE1(v2)))
        {
          LOBYTE(v10) = 0;
          goto LABEL_49;
        }

        if (v14 == 255)
        {
          LOBYTE(v10) = 1;
          goto LABEL_49;
        }

        v33 = *(v13 + 32 * v14 + (v2 >> 3) + 224);
      }

      v10 = (v33 >> (v2 & 7)) & 1;
      goto LABEL_49;
    }

    v24 = *(v3 + 4);
    if (v24)
    {
      v25 = *(v3 + 3);
      if (*v25 <= v2)
      {
        v26 = &v25[v24];
        v29 = *(v26 - 1);
        v27 = v26 - 1;
        v28 = v29;
        if (v25 <= v27 && v28 >= v2)
        {
          do
          {
            v30 = &v25[(v27 - v25) >> 2];
            v31 = *v30;
            if (v31 <= v2)
            {
              if (v31 >= v2)
              {
                LOBYTE(v10) = v10 ^ 1;
                break;
              }

              v25 = v30 + 1;
            }

            else
            {
              v27 = v30 - 1;
            }
          }

          while (v25 <= v27);
        }
      }
    }
  }

LABEL_49:
  LOBYTE(v4) = v8 ^ v10;
  return v4;
}

void *CFAllocatorReallocateImpl(malloc_zone_t *a1, malloc_zone_t *zone, uint64_t a3, malloc_type_id_t type_id, uint64_t a5)
{
  if (a1)
  {
    if (zone)
    {
LABEL_16:
      if (zone && !a3)
      {
        v15 = a1->reserved1 & ~MEMORY[0x1E69E58F0];
        if ((a1->reserved1 & MEMORY[0x1E69E58F0]) != 0)
        {
          v15 |= a1->reserved1 & MEMORY[0x1E69E58F0];
        }

        if (v15 == qword_1ED40C0D0)
        {
          valloc = a1[1].valloc;
          if (valloc)
          {
            (valloc)(zone, a1->try_free_default);
          }
        }

        else
        {
          malloc_zone_free(a1, zone);
        }

        return 0;
      }

      if (!zone && !a3)
      {
        return 0;
      }

      v17 = a1->reserved1 & ~MEMORY[0x1E69E58F0];
      if ((a1->reserved1 & MEMORY[0x1E69E58F0]) != 0)
      {
        v17 |= a1->reserved1 & MEMORY[0x1E69E58F0];
      }

      if (v17 == qword_1ED40C0D0)
      {
        destroy = a1[1].destroy;
        if (destroy)
        {
          try_free_default = a1->try_free_default;

          return (destroy)(zone, a3, type_id, a5, try_free_default);
        }

        calloc = a1[1].calloc;
        if (calloc)
        {
          v11 = a1->try_free_default;
          v12 = zone;
          v13 = a3;
          goto LABEL_13;
        }

        return 0;
      }

      return malloc_type_zone_realloc(a1, zone, a3, type_id);
    }
  }

  else
  {
    a1 = _CFGetTSD(1);
    if (!a1)
    {
      a1 = &__kCFAllocatorSystemDefault;
    }

    if (zone)
    {
      goto LABEL_16;
    }
  }

  if (a3 < 1)
  {
    goto LABEL_16;
  }

  v9 = a1->reserved1 & ~MEMORY[0x1E69E58F0];
  if ((a1->reserved1 & MEMORY[0x1E69E58F0]) != 0)
  {
    v9 |= a1->reserved1 & MEMORY[0x1E69E58F0];
  }

  if (v9 == qword_1ED40C0D0)
  {
    calloc = a1[1].realloc;
    if (calloc)
    {
      v11 = a1->try_free_default;
      v12 = a3;
      v13 = type_id;
LABEL_13:

      return calloc(v12, v13, a5, v11);
    }

    malloc = a1[1].malloc;
    if (!malloc)
    {
      return 0;
    }

    v21 = a1->try_free_default;

    return (malloc)(a3, a5, v21);
  }

  else
  {

    return malloc_type_zone_malloc(a1, a3, type_id);
  }
}

void *__CFSafelyReallocateWithAllocatorImpl(malloc_zone_t *a1, malloc_zone_t *a2, uint64_t a3, uint64_t a4, malloc_type_id_t type_id, uint64_t a6)
{
  result = CFAllocatorReallocateImpl(a1, a2, a3, type_id, a4);
  if (!result && (a2 || a3))
  {
    __CFReallocationFailed(a2, a3, a6);
    return 0;
  }

  return result;
}

void *__CFAllocatorSystemReallocateTyped(void *ptr, size_t size, malloc_type_id_t type_id, int a4, malloc_zone_t *zone)
{
  if (zone == &__MallocDefaultZoneInfoPlaceholder)
  {
    zone = malloc_default_zone();
  }

  return malloc_type_zone_realloc(zone, ptr, size, type_id);
}

CFStringRef CFStringCreateWithCStringNoCopy(CFAllocatorRef alloc, const char *cStr, CFStringEncoding encoding, CFAllocatorRef contentsDeallocator)
{
  v5 = *&encoding;
  v8 = strlen(cStr);

  return __CFStringCreateImmutableFunnel3(alloc, cStr, v8, v5, 24, contentsDeallocator, 0, v9);
}

void CFRunLoopPerformBlock(CFRunLoopRef rl, CFTypeRef mode, void *block)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopPerformBlock_cold_1(rl);
  }

  if (CFGetTypeID(mode) == 7)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, mode);
    pthread_mutex_lock((rl + 16));
    v14 = __CFRunLoopCopyMode(rl, Copy, 1, v9, v10, v11, v12, v13);
    if (v14)
    {
      CFRelease(v14);
    }

    pthread_mutex_unlock((rl + 16));
  }

  else
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(mode))
    {
      Count = CFArrayGetCount(mode);
      v17 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v39.location = 0;
      v39.length = Count;
      CFArrayGetValues(mode, v39, v17);
      Copy = CFSetCreate(&__kCFAllocatorSystemDefault, v17, Count, &kCFTypeSetCallBacks);
      pthread_mutex_lock((rl + 16));
      if (Count >= 1)
      {
        v23 = v17;
        do
        {
          v24 = __CFRunLoopCopyMode(rl, *v23, 1, v18, v19, v20, v21, v22);
          if (v24)
          {
            CFRelease(v24);
          }

          ++v23;
          --Count;
        }

        while (Count);
      }
    }

    else
    {
      v25 = CFSetGetTypeID();
      if (v25 != CFGetTypeID(mode))
      {
        Copy = 0;
        goto LABEL_27;
      }

      v26 = CFSetGetCount(mode);
      v17 = malloc_type_malloc(8 * v26, 0xC0040B8AA526DuLL);
      CFSetGetValues(mode, v17);
      Copy = CFSetCreate(&__kCFAllocatorSystemDefault, v17, v26, &kCFTypeSetCallBacks);
      pthread_mutex_lock((rl + 16));
      if (v26 >= 1)
      {
        v32 = v17;
        do
        {
          v33 = __CFRunLoopCopyMode(rl, *v32, 1, v27, v28, v29, v30, v31);
          if (v33)
          {
            CFRelease(v33);
          }

          ++v32;
          --v26;
        }

        while (v26);
      }
    }

    pthread_mutex_unlock((rl + 16));
    free(v17);
  }

LABEL_27:
  v34 = _Block_copy(block);
  v35 = v34;
  if (Copy && v34)
  {
    pthread_mutex_lock((rl + 16));
    v36 = malloc_type_malloc(0x18uLL, 0xE00400670D255uLL);
    *v36 = 0;
    v36[1] = Copy;
    v36[2] = v35;
    v37 = *(rl + 335);
    if (!v37)
    {
      v37 = (rl + 2672);
    }

    *v37 = v36;
    *(rl + 335) = v36;

    pthread_mutex_unlock((rl + 16));
  }

  else
  {
    if (Copy)
    {
      CFRelease(Copy);
    }

    if (v35)
    {

      _Block_release(v35);
    }
  }
}

objc_class *__NSCheckReentrancy(objc_class *a1, const char *a2)
{
  result = _CFGetTSD(3);
  if (result == a1)
  {
    v5 = __CFExceptionProem(a1, a2);
    v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid re-entrancy into cache %p", v5, a1);
    v7 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6), 0];
    objc_exception_throw(v7);
  }

  return result;
}

CFTypeRef __NSCacheKeyRetain(const void *a1, void *a2)
{
  result = CFRetain(a1);
  *a2 = result;
  return result;
}

void *__CFRunLoopDoBlocks(void *result, uint64_t a2, unsigned int a3)
{
  v16 = result;
  v3 = result[334];
  if (!v3)
  {
    return result;
  }

  v4 = *(a2 + 80);
  if (!v4)
  {
    return result;
  }

  v5 = result[335];
  result[334] = 0;
  result[335] = 0;
  theSet = result[330];
  pthread_mutex_unlock((a2 + 16));
  pthread_mutex_unlock((v16 + 2));
  v6 = 0;
  v7 = 0;
  v8 = v3;
  do
  {
    while (1)
    {
      v9 = v8;
      v8 = *v8;
      v10 = CFGetTypeID(v9[1]);
      v11 = v9[1];
      if (v10 == 7)
      {
        if (CFEqual(v11, v4))
        {
          goto LABEL_11;
        }

        if (!CFEqual(v9[1], @"kCFRunLoopCommonModes"))
        {
          goto LABEL_22;
        }

        break;
      }

      if (CFSetContainsValue(v11, v4))
      {
        goto LABEL_11;
      }

      if (CFSetContainsValue(v9[1], @"kCFRunLoopCommonModes"))
      {
        break;
      }

LABEL_22:
      v7 = v9;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    if (!CFSetContainsValue(theSet, v4))
    {
      goto LABEL_22;
    }

LABEL_11:
    if (v7)
    {
      *v7 = v8;
    }

    if (v9 == v3)
    {
      v3 = v8;
    }

    if (v9 == v5)
    {
      v5 = v7;
    }

    v12 = v9[2];
    CFRelease(v9[1]);
    free(v9);
    if (*(v16 + 2713))
    {
      v13 = _CFAutoreleasePoolPush();
    }

    else
    {
      v13 = 0;
    }

    kdebug_trace();
    __CFRUNLOOP_IS_CALLING_OUT_TO_A_BLOCK__(v12);
    __CFRunLoopPerCalloutARPEnd(v13);
    _Block_release(v12);
    kdebug_trace();
    ++v6;
  }

  while (v8);
LABEL_23:
  pthread_mutex_lock((v16 + 2));
  result = pthread_mutex_lock((a2 + 16));
  if (v3 && v5)
  {
    *v5 = v16[334];
    v16[334] = v3;
    if (!v16[335])
    {
      v16[335] = v5;
    }
  }

  return result;
}

void CFRunLoopWakeUp(CFRunLoopRef rl)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  __CFCheckCFInfoPACSignature(rl);
  v2 = _CFGetNonObjCTypeID(rl);
  if (v2 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v2);
  }

  v3 = atomic_load(__CFMainThreadHasExited);
  if (v3)
  {
    CFRunLoopWakeUp_cold_1(rl);
  }

  pthread_mutex_lock((rl + 16));
  if (*(rl + *(rl + 84) + 339))
  {

    pthread_mutex_unlock((rl + 16));
  }

  else
  {
    kdebug_trace();
    v4 = *(rl + 20);
    *&v6.msgh_bits = 0x1800000013;
    v6.msgh_remote_port = v4;
    v6.msgh_local_port = 0;
    *&v6.msgh_voucher_port = 0;
    v5 = mach_msg(&v6, 17, 0x18u, 0, 0, 0, 0);
    __CFMachMessageCheckForAndDestroyUnsentMessage(v5, &v6);
    if (v5 && v5 != 268435460)
    {
      CFRunLoopWakeUp_cold_2();
    }

    kdebug_trace();
    pthread_mutex_unlock((rl + 16));
  }
}

void __CFMachMessageCheckForAndDestroyUnsentMessage(int a1, mach_msg_header_t *a2)
{
  if (a1 != 268435463)
  {
    if (a1 == 268435459)
    {
LABEL_10:

      mach_msg_destroy(a2);
      return;
    }

    if (a1 != 16)
    {
      return;
    }
  }

  msgh_local_port = a2->msgh_local_port;
  if (msgh_local_port - 1 <= 0xFFFFFFFD)
  {
    msgh_bits = a2->msgh_bits;
    if (((a2->msgh_bits >> 8) & 0x1F) - 17 <= 1)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msgh_local_port);
      msgh_bits = a2->msgh_bits;
    }

    a2->msgh_bits = msgh_bits & 0xFFFFE0FF;
  }

  if (a1 == 268435459 || a1 == 16)
  {
    goto LABEL_10;
  }
}

uint64_t __CFRUNLOOP_IS_CALLING_OUT_TO_A_BLOCK__(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

unint64_t __NSArrayGetIndexPassingTest(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (![a1 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = [a4 firstIndex];
    v8 = [a4 lastIndex];
  }

  else
  {
    v7 = 0;
    v8 = [a1 count] - 1;
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v10 = __CFActiveProcessorCount();
      if (v10 < 2)
      {
        a3 &= ~1uLL;
      }
    }

    else
    {
      v10 = 1;
    }

    if ((a3 & 3) != 0)
    {
      v11 = (v8 - v7 + 1) / v10 / v10;
      if (v11 >= 0x10)
      {
        if (v11 <= 0x1000)
        {
          v12 = (v11 + 15) & 0x3FF0;
        }

        else
        {
          v12 = 4096;
        }
      }

      else
      {
        v12 = 16;
      }

      v20 = v12 + v8 - v7;
      if (a3)
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        v39[0] = 0;
        v39[1] = v39;
        v39[2] = 0x2020000000;
        v40 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ____NSArrayGetIndexPassingTest_block_invoke;
        block[3] = &unk_1E6D82388;
        block[10] = v12;
        block[11] = v8;
        block[12] = a3;
        block[4] = a1;
        block[5] = a4;
        block[7] = v39;
        block[8] = &v41;
        block[6] = a2;
        block[9] = v7;
        dispatch_apply(v20 / v12, 0, block);
        v9 = atomic_load(v42 + 3);
        _Block_object_dispose(v39, 8);
        _Block_object_dispose(&v41, 8);
      }

      else
      {
        v32 = v8;
        contexta = a1;
        v36 = a4;
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        if (v12 <= v20)
        {
          v21 = v7;
          v22 = 0;
          v23 = v12 - 1;
          v24 = 1;
          v25 = v21;
          v26 = v32;
          v27 = v20 / v12;
          do
          {
            if ((a3 & 2) != 0)
            {
              if (v23 >= v26 - v21)
              {
                v29 = v21;
              }

              else
              {
                v29 = 1 - v12 + v26;
              }

              v28 = v26;
            }

            else
            {
              if (v23 >= v26 - v21)
              {
                v28 = v32;
              }

              else
              {
                v28 = v23 + v22 * v12 + v21;
              }

              v29 = v25;
            }

            v30 = __NSArrayChunkIterate(contexta, a3, v29, v28, v36, a2, &v41, 0, 0);
            if (v24 >= v27)
            {
              break;
            }

            ++v22;
            v26 -= v12;
            v25 += v12;
            ++v24;
          }

          while (!v30);
        }

        return atomic_load(&v41);
      }
    }

    else
    {
      v13 = _CFAutoreleasePoolPush();
      LOBYTE(v41) = 0;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v14 = [a1 countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v14)
      {
        v15 = v14;
        context = v13;
        v35 = a4;
        v16 = v7;
        v17 = 0;
        v9 = 0;
        v18 = *v47;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(a1);
            }

            if ((a3 & 0x1000000000000000) == 0 || v16 <= v9 && v9 <= v8 && [v35 containsIndex:v9])
            {
              if (__NSARRAY_IS_CALLING_OUT_TO_A_BOOL_BLOCK__(a2))
              {
                goto LABEL_32;
              }

              if (v17 >= 0x3FF)
              {
                _CFAutoreleasePoolPop(context);
                context = _CFAutoreleasePoolPush();
                v17 = 0;
              }

              else
              {
                ++v17;
              }
            }

            ++v9;
          }

          v15 = [a1 countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v15);
        v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:
        v13 = context;
      }

      _CFAutoreleasePoolPop(v13);
    }
  }

  return v9;
}

uint64_t __CFRunLoopModeIsEmpty(uint64_t a1, uint64_t a2)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (pthread_main_np() == 1 && !_CFGetTSD(4) && CFRunLoopGetMain() == a1 && CFSetContainsValue(*(a1 + 2640), *(a2 + 80)))
  {
    return 0;
  }

  v4 = *(a2 + 96);
  if (v4)
  {
    if (CFSetGetCount(v4) > 0)
    {
      return 0;
    }
  }

  v5 = *(a2 + 104);
  if (v5)
  {
    if (CFSetGetCount(v5) > 0)
    {
      return 0;
    }
  }

  v6 = *(a2 + 120);
  if (v6)
  {
    if (CFArrayGetCount(v6) > 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 2672);
  while (v7)
  {
    v8 = v7;
    v7 = *v7;
    v9 = CFGetTypeID(v8[1]);
    v10 = v8[1];
    v11 = *(a2 + 80);
    if (v9 == 7)
    {
      if (CFEqual(v10, v11))
      {
        return 0;
      }

      if (CFEqual(v8[1], @"kCFRunLoopCommonModes"))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (CFSetContainsValue(v10, v11))
      {
        return 0;
      }

      if (CFSetContainsValue(v8[1], @"kCFRunLoopCommonModes"))
      {
LABEL_21:
        if (CFSetContainsValue(*(a1 + 2640), *(a2 + 80)))
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t _CFRunLoopRunSpecificWithOptions(uint64_t a1, __CFString *a2, uint64_t a3, double a4)
{
  block[5] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(a1);
  v8 = _CFGetNonObjCTypeID(a1);
  if (v8 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v8);
  }

  v9 = atomic_load(__CFMainThreadHasExited);
  if (v9)
  {
    _CFRunLoopRunSpecificWithOptions_cold_1(a1);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!a2 || a2 == @"kCFRunLoopCommonModes" || CFEqual(a2, @"kCFRunLoopCommonModes"))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___CFRunLoopRunSpecificWithOptions_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a2;
    if (_CFRunLoopRunSpecificWithOptions_onceToken != -1)
    {
      dispatch_once(&_CFRunLoopRunSpecificWithOptions_onceToken, block);
    }

    return 1;
  }

  v12 = atomic_load((a1 + 8));
  if ((v12 & 4) != 0)
  {
    return 1;
  }

  pthread_mutex_lock((a1 + 16));
  v18 = __CFRunLoopCopyMode(a1, a2, 0, v13, v14, v15, v16, v17);
  if (!v18)
  {
LABEL_19:
    pthread_mutex_unlock((a1 + 16));
    return 1;
  }

  v19 = v18;
  if (__CFRunLoopModeIsEmpty(a1, v18))
  {
    pthread_mutex_unlock((v19 + 16));
    CFRelease(v19);
    goto LABEL_19;
  }

  pthread_mutex_lock((v19 + 16));
  v20 = *(a1 + 84);
  if (v20 >= 0xFE)
  {
    _CFRunLoopRunSpecificWithOptions_cold_2();
  }

  v21 = v20 + 1;
  *(a1 + 84) = v20 + 1;
  v22 = a1 + v20 + 1;
  *(v22 + 85) = 0;
  *(v22 + 339) = 0;
  *(a1 + 8 * v21 + 600) = a3;
  v23 = *(a1 + 2656);
  *(a1 + 2656) = v19;
  v24[0] = a1;
  v24[1] = v19;
  v24[2] = v23;
  if (*(v19 + 144))
  {
    __CFRunLoopDoObservers(a1, v19, 1);
  }

  kdebug_trace();
  v10 = __CFRunLoopRun(a1, v19, a3, a4);
  kdebug_trace();
  if ((*(v19 + 144) & 0x80) != 0)
  {
    __CFRunLoopDoObservers(a1, v19, 128);
  }

  _CFRunLoopRunCleanup(v24);
  return v10;
}

void sub_183102AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _CFRunLoopRunCleanup(va);
  _Unwind_Resume(a1);
}

unint64_t _CFGetNonObjCTypeID(unint64_t *a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v8 = atomic_load(a1 + 1);
    return (v8 >> 8) & 0x3FF;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ a1;
  do
  {
    if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  v5 = v2 | v4;
  v6 = v2 & 7;
  v7 = (v5 >> 55) + 8;
  if (v6 == 7)
  {
    LODWORD(v6) = v7;
  }

  if (v6 > 4)
  {
    if (v6 > 19)
    {
      if (v6 != 20)
      {
        if (v6 != 22)
        {
          goto LABEL_29;
        }

        return 7;
      }
    }

    else if (v6 != 5)
    {
      if (v6 == 6)
      {
        return 42;
      }

      goto LABEL_29;
    }

    return 1;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      return 22;
    }

    return 1;
  }

  if (!v6)
  {
    if (dyld_program_sdk_at_least())
    {
      return 7;
    }

    else
    {
      return 1;
    }
  }

  if (v6 == 2)
  {
    return 7;
  }

LABEL_29:

  return [a1 _cfTypeID];
}

unint64_t *__CFRunLoopCopyMode(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v39 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  memset(value, 0, sizeof(value));
  _CFRuntimeSetInstanceTypeIDAndIsa(value, 0x2CuLL, a3, a4, a5, a6, a7, a8);
  *&v31 = a2;
  v11 = CFSetGetValue(*(a1 + 2664), value);
  Instance = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  else if (v8)
  {
    Instance = _CFRuntimeCreateInstance(&__kCFAllocatorSystemDefault, 0x2CuLL, 184, 0, v12, v13, v14, v15);
    if (Instance)
    {
      v27.__sig = 0;
      *v27.__opaque = 0;
      pthread_mutexattr_init(&v27);
      pthread_mutexattr_settype(&v27, 2);
      pthread_mutex_init((Instance + 2), &v27);
      pthread_mutexattr_destroy(&v27);
      Instance[10] = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a2);
      LODWORD(v27.__sig) = 0;
      v18 = MEMORY[0x1E69E9A60];
      v19 = mach_port_allocate(*MEMORY[0x1E69E9A60], 3u, &v27);
      if (v19)
      {
        __THE_SYSTEM_HAS_NO_PORT_SETS_AVAILABLE__(v19);
      }

      sig = v27.__sig;
      *(Instance + 168) = 0;
      *(Instance + 34) = sig;
      Instance[23] = -1;
      Instance[24] = -1;
      Instance[20] = _dispatch_runloop_root_queue_create_4CF();
      port_4CF = _dispatch_runloop_root_queue_get_port_4CF();
      if (!port_4CF)
      {
        __CFRunLoopCopyMode_cold_5();
      }

      v22 = port_4CF;
      v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, Instance[20]);
      Instance[19] = v23;
      v27.__sig = 0;
      *v27.__opaque = &v27;
      v28 = 0x2020000000;
      v29 = Instance + 21;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ____CFRunLoopCopyMode_block_invoke;
      handler[3] = &unk_1E6D82120;
      handler[4] = &v27;
      dispatch_source_set_event_handler(v23, handler);
      dispatch_source_set_timer(Instance[19], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x141uLL);
      dispatch_resume(Instance[19]);
      if (mach_port_insert_member(*v18, v22, *(Instance + 34)))
      {
        __CFRunLoopCopyMode_cold_1();
      }

      v24 = mk_timer_create();
      *(Instance + 43) = v24;
      if (!v24)
      {
        __CFRunLoopCopyMode_cold_4();
      }

      if (mach_port_insert_member(*v18, v24, *(Instance + 34)))
      {
        __CFRunLoopCopyMode_cold_2();
      }

      v25 = *(a1 + 80);
      if (!v25 || mach_port_insert_member(*v18, v25, *(Instance + 34)))
      {
        __CFRunLoopCopyMode_cold_3();
      }

      CFSetAddValue(*(a1 + 2664), Instance);
      _Block_object_dispose(&v27, 8);
    }
  }

  else
  {
    return 0;
  }

  return Instance;
}

void sub_183102F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __cftrace_runloop_trace_iteration_start(__CFRunLoop *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  result = kdebug_is_enabled();
  if (result)
  {
    v3 = CFRunLoopCopyCurrentMode(a1);
    if (CFEqual(v3, @"kCFRunLoopDefaultMode"))
    {
      v4 = 0;
    }

    else if (CFEqual(v3, @"kCFRunLoopCommonModes"))
    {
      v4 = 0;
    }

    else if (CFEqual(v3, @"NSModalPanelRunLoopMode"))
    {
      v4 = 0;
    }

    else if (CFEqual(v3, @"NSEventTrackingRunLoopMode"))
    {
      v4 = 0;
    }

    else if (CFEqual(v3, @"UITrackingRunLoopMode"))
    {
      v4 = 0;
    }

    else if (CFEqual(v3, @"com.apple.run-loop-mode.view-bridge.blocks"))
    {
      v4 = 0;
    }

    else
    {
      if (CFStringGetCStringPtr(v3, 0x8000100u))
      {
        v5 = kdebug_trace_string();
        v4 = 1;
      }

      else
      {
        Length = CFStringGetLength(v3);
        if (Length < 177)
        {
          v7 = Length;
        }

        else
        {
          v7 = 176;
          v17.location = 0;
          v17.length = 176;
          v8 = CFStringCreateWithSubstring(0, v3, v17);
          CFRelease(v3);
          v3 = v8;
        }

        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v7, 0x8000100u);
        v12 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v10, v11);
        CString = CFStringGetCString(v3, v16 - v13, v12 + 1, 0x8000100u);
        v4 = CString != 0;
        if (CString)
        {
          v5 = kdebug_trace_string();
        }

        else
        {
          v5 = -1;
        }
      }

      if (v5 >= 0xFFFFFFFFFFFFFFF9)
      {
        kdebug_trace_string();
        v4 = 0;
      }
    }

    CFRelease(v3);
    _CFRunLoopCurrentIsMain(v15);
    result = kdebug_trace();
    if (v4)
    {
      return kdebug_trace_string();
    }
  }

  return result;
}

const void *_CFRunLoopGetButDontCreateCurrent()
{
  result = _CFGetTSDCreateIfNeeded(10, 0);
  if (!result)
  {
    v1 = pthread_self();

    return _CFRunLoopCacheLookup(v1, 0);
  }

  return result;
}

BOOL _CFRunLoopFinished(uint64_t a1, const __CFString *a2)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((a1 + 16));
  v9 = __CFRunLoopCopyMode(a1, a2, 0, v4, v5, v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    pthread_mutex_lock((v9 + 2));
    v11 = __CFRunLoopModeIsEmpty(a1, v10) != 0;
    pthread_mutex_unlock((v10 + 16));
    CFRelease(v10);
  }

  else
  {
    v11 = 1;
  }

  pthread_mutex_unlock((a1 + 16));
  return v11;
}

CFRunLoopRef CFRunLoopGetCurrent(void)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  result = _CFGetTSD(10);
  if (!result)
  {
    v1 = pthread_self();

    return _CFRunLoopGet0(v1);
  }

  return result;
}

uint64_t _CFRunLoopRunCleanup(uint64_t *a1)
{
  if (!*(*a1 + 84))
  {
    _CFRunLoopRunCleanup_cold_1();
  }

  --*(*a1 + 84);
  pthread_mutex_unlock((a1[1] + 16));
  CFRelease(a1[1]);
  v2 = *a1;
  *(*a1 + 2656) = a1[2];

  return pthread_mutex_unlock((v2 + 16));
}

uint64_t __CFRunLoopRun(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = mach_absolute_time();
  v9 = *(a1 + 84);
  if (*(a1 + 85 + v9))
  {
    *(a1 + 85 + v9) = 0;
    return 2;
  }

  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
    return 2;
  }

  v12 = v8;
  v52 = a1 + 85;
  if (pthread_main_np() == 1 && !_CFGetTSD(4) && CFRunLoopGetMain() == a1 && CFSetContainsValue(*(a1 + 2640), *(a2 + 80)))
  {
    main_queue_port_4CF = _dispatch_get_main_queue_port_4CF();
  }

  else
  {
    main_queue_port_4CF = 0;
  }

  if (!*(a2 + 160))
  {
    goto LABEL_14;
  }

  port_4CF = _dispatch_runloop_root_queue_get_port_4CF();
  if (!port_4CF)
  {
    qword_1EA849A30 = "Unable to get port for run loop mode queue";
    __break(1u);
LABEL_14:
    port_4CF = 0;
  }

  if (a4 <= 0.0)
  {
    source = 0;
    v15 = 0;
  }

  else if (a4 <= 504911232.0)
  {
    v15 = __CFTimeIntervalToTSR(a4) + v12;
    if (pthread_main_np() == 1)
    {
      v16 = qos_class_main();
    }

    else
    {
      v16 = 17;
    }

    global_queue = dispatch_get_global_queue(v16, 2uLL);
    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
    CFRetain(a1);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ____CFRunLoopRun_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v18, handler);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = ____CFRunLoopRun_block_invoke_2;
    v60[3] = &__block_descriptor_40_e5_v8__0l;
    v60[4] = a1;
    dispatch_source_set_cancel_handler(v18, v60);
    v19 = __CFTSRToTimeInterval(v12);
    v20 = dispatch_time(1uLL, ((v19 + a4) * 1000000000.0));
    dispatch_source_set_timer(v18, v20, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
    source = v18;
    dispatch_resume(v18);
  }

  else
  {
    source = 0;
    v15 = -1;
  }

  v55 = a1 + 339;
  v53 = v15;
  v54 = v15 != 0;
  v21 = 1;
  do
  {
    __cftrace_runloop_trace_iteration_start(a1);
    v58 = 0;
    state = -1;
    v57 = 0;
    v56 = 0;
    v22 = *(a2 + 136);
    *(v55 + *(a1 + 84)) = 0;
    v23 = *(a2 + 144);
    if ((v23 & 2) != 0)
    {
      __CFRunLoopDoObservers(a1, a2, 2);
      v23 = *(a2 + 144);
    }

    if ((v23 & 4) != 0)
    {
      __CFRunLoopDoObservers(a1, a2, 4);
    }

    __CFRunLoopDoBlocks(a1, a2, 0);
    v24 = __CFRunLoopDoSources0(a1, a2, a3 & 1);
    v25 = v54;
    if (v24)
    {
      __CFRunLoopDoBlocks(a1, a2, 1u);
      v25 = 0;
    }

    if (!main_queue_port_4CF || v21 || (v57 = v65, __CFRunLoopServiceMachPort(main_queue_port_4CF, &v57, &v56, 0, &state, 0), !v26))
    {
      if (v25)
      {
        if ((*(a2 + 144) & 0x20) != 0)
        {
          __CFRunLoopDoObservers(a1, a2, 32);
        }

        v27 = atomic_load((a1 + 8));
        v28 = v27;
        do
        {
          atomic_compare_exchange_strong((a1 + 8), &v28, v27 | 2);
          v29 = v28 == v27;
          v27 = v28;
        }

        while (!v29);
        if (main_queue_port_4CF)
        {
          mach_port_insert_member(*MEMORY[0x1E69E9A60], main_queue_port_4CF, v22);
        }

        pthread_mutex_unlock((a2 + 16));
        pthread_mutex_unlock((a1 + 16));
        Current = CFAbsoluteTimeGetCurrent();
      }

      else
      {
        v31 = atomic_load((a1 + 8));
        v32 = v31;
        do
        {
          atomic_compare_exchange_strong((a1 + 8), &v32, v31 | 2);
          v29 = v32 == v31;
          v31 = v32;
        }

        while (!v29);
        if (main_queue_port_4CF)
        {
          mach_port_insert_member(*MEMORY[0x1E69E9A60], main_queue_port_4CF, v22);
        }

        pthread_mutex_unlock((a2 + 16));
        pthread_mutex_unlock((a1 + 16));
        Current = 0.0;
      }

      kdebug_trace();
      kdebug_trace();
      v57 = v65;
      __CFRunLoopServiceMachPort(v22, &v57, &v56, v25 << 31 >> 31, &state, &v58);
      if (port_4CF && v56 == port_4CF)
      {
        while (1)
        {
            ;
          }

          if (*(a2 + 168))
          {
            break;
          }

          if (v57 && v57 != v65)
          {
            free(v57);
          }

          v57 = v65;
          __CFRunLoopServiceMachPort(v22, &v57, &v56, v25 << 31 >> 31, &state, &v58);
          if (v56 != port_4CF)
          {
            goto LABEL_58;
          }
        }

        *(a2 + 168) = 0;
      }

LABEL_58:
      kdebug_trace();
      kdebug_trace();
      pthread_mutex_lock((a1 + 16));
      pthread_mutex_lock((a2 + 16));
      if (v25)
      {
        *(a1 + 2696) = *(a1 + 2696) + CFAbsoluteTimeGetCurrent() - Current;
        if (main_queue_port_4CF)
        {
          mach_port_extract_member(*MEMORY[0x1E69E9A60], main_queue_port_4CF, v22);
        }

        *(v55 + *(a1 + 84)) = 1;
        v33 = atomic_load((a1 + 8));
        v34 = v33;
        do
        {
          atomic_compare_exchange_strong((a1 + 8), &v34, v33 & 0xFFFFFFFFFFFFFFFDLL);
          v29 = v34 == v33;
          v33 = v34;
        }

        while (!v29);
        if ((*(a2 + 144) & 0x40) != 0)
        {
          __CFRunLoopDoObservers(a1, a2, 64);
        }
      }

      else
      {
        *(a1 + 2696) = *(a1 + 2696) + 0.0;
        if (main_queue_port_4CF)
        {
          mach_port_extract_member(*MEMORY[0x1E69E9A60], main_queue_port_4CF, v22);
        }

        *(v55 + *(a1 + 84)) = 1;
        v35 = atomic_load((a1 + 8));
        v36 = v35;
        do
        {
          atomic_compare_exchange_strong((a1 + 8), &v36, v35 & 0xFFFFFFFFFFFFFFFDLL);
          v29 = v36 == v35;
          v35 = v36;
        }

        while (!v29);
      }
    }

    *(v55 + *(a1 + 84)) = 1;
    v37 = v56;
    if (!v56)
    {
      v21 = 0;
      goto LABEL_97;
    }

    if (v56 != *(a1 + 80))
    {
      if (v56 == port_4CF)
      {
        v38 = mach_absolute_time();
        if (!__CFRunLoopDoTimers(a1, a2, v38))
        {
          goto LABEL_81;
        }
      }

      else if (v56 == *(a2 + 172))
      {
        v39 = mach_absolute_time();
        if (!__CFRunLoopDoTimers(a1, a2, v39))
        {
          *(a2 + 184) = -1;
          *(a2 + 192) = -1;
LABEL_81:
          __CFArmNextTimerInMode(a2, a1);
        }
      }

      else
      {
        if (v56 == main_queue_port_4CF)
        {
          pthread_mutex_unlock((a2 + 16));
          pthread_mutex_unlock((a1 + 16));
          _CFSetTSD(4, 6, 0);
          v40 = _CFAutoreleasePoolPush();
          kdebug_trace();
          __CFRUNLOOP_IS_SERVICING_THE_MAIN_DISPATCH_QUEUE__();
          kdebug_trace();
          __CFRunLoopPerCalloutARPEnd(v40);
          _CFSetTSD(4, 0, 0);
          pthread_mutex_lock((a1 + 16));
          pthread_mutex_lock((a2 + 16));
          v24 = 1;
          v21 = 1;
          goto LABEL_97;
        }

        kdebug_trace();
        v42 = _CFSetTSD(13, v58, MEMORY[0x1E69E97D8]);
        if ((__CF_FORK_STATE & 2) == 0)
        {
          __CF_USED();
        }

        if (__CF_FORK_STATE)
        {
          __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
        }

        Value = *(a2 + 128);
        if (Value && (Value = CFDictionaryGetValue(Value, v37)) != 0)
        {
          *msg = 0;
          v44 = __CFRunLoopDoSource1(a1, a2, Value);
          v45 = *msg;
          if (*msg)
          {
            mach_msg(*msg, 1, *(*msg + 4), 0, 0, 0, 0);
            CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v45);
          }

          v24 |= v44;
        }

        else
        {
          v46 = _CFOSLog(Value, v41);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v50 = *(a2 + 80);
            *msg = 138412546;
            *&msg[4] = v50;
            v63 = 1024;
            v64 = v37;
            _os_log_error_impl(&dword_1830E6000, v46, OS_LOG_TYPE_ERROR, "__CFRunLoopModeFindSourceForMachPort returned NULL for mode '%@' livePort: %u", msg, 0x12u);
          }
        }

        _CFSetTSD(13, v42, MEMORY[0x1E69E97D8]);
        kdebug_trace();
      }

      v21 = 0;
      goto LABEL_97;
    }

    v21 = 0;
LABEL_97:
    if (v57 && v57 != v65)
    {
      free(v57);
    }

    __CFRunLoopDoBlocks(a1, a2, 2u);
    if ((a3 & 1) != 0 && v24)
    {
      v47 = 0;
      v10 = 4;
      goto LABEL_110;
    }

    if (v53 < mach_absolute_time())
    {
      v47 = 0;
      v10 = 3;
      goto LABEL_110;
    }

    v48 = *(a1 + 84);
    if (*(v52 + v48))
    {
      v47 = 0;
      *(v52 + v48) = 0;
LABEL_109:
      v10 = 2;
      goto LABEL_110;
    }

    if (*(a2 + 88))
    {
      v47 = 0;
      *(a2 + 88) = 0;
      goto LABEL_109;
    }

    IsEmpty = __CFRunLoopModeIsEmpty(a1, a2);
    v47 = IsEmpty == 0;
    v10 = IsEmpty != 0;
LABEL_110:
    voucher_mach_msg_revert(state);

    kdebug_trace();
  }

  while (v47);
  if (source)
  {
    dispatch_source_cancel(source);
    dispatch_release(source);
  }

  return v10;
}

const void *_CFRunLoopIsCurrent(const void *result)
{
  if (result)
  {
    return (_CFRunLoopGetButDontCreateCurrent() == result);
  }

  return result;
}

CFRunLoopRunResult CFRunLoopRunInMode(CFRunLoopMode mode, CFTimeInterval seconds, Boolean returnAfterSourceHandled)
{
  v3 = returnAfterSourceHandled;
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  Current = CFRunLoopGetCurrent();

  return _CFRunLoopRunSpecificWithOptions(Current, mode, v3 != 0, seconds);
}

objc_class *__NSArrayParameterCheckIterate(objc_class *result, const char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x1000000000000000) != 0)
  {
    v6 = result;
    if (!a5)
    {
      v15 = __CFExceptionProem(result, a2);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index set is nil", v15);
      v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16), 0];
      objc_exception_throw(v17);
    }

    v7 = [a5 lastIndex];
    result = [v6 count];
    if ((v7 & 0x8000000000000000) != 0 || v7 != 0x7FFFFFFFFFFFFFFFLL && result <= v7)
    {
      if (result)
      {
        v18 = result;
        v8 = _os_log_pack_size();
        v11 = &v26 - ((MEMORY[0x1EEE9AC00](v8, v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** [%s %s]: index %lu beyond bounds [0 .. %lu]", v26, v27, v28, v29);
        v22 = PROEM_SEL_0(a2);
        v18 = (v18 - 1);
        __os_log_helper_1_2_4_8_32_8_32_8_0_8_0(v21, "NSArray", v22, v7, v18);
        v25 = PROEM_SEL_0(a2);
        v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** [%s %s]: index %lu beyond bounds [0 .. %lu]", "NSArray", v25, v7, v18);
      }

      else
      {
        v8 = _os_log_pack_size();
        v11 = &v26 - ((MEMORY[0x1EEE9AC00](v8, v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = _os_log_pack_fill(v11, v8, 0, &dword_1830E6000, "*** [%s %s]: index %lu beyond bounds for empty array", v26, v27, v28);
        v13 = PROEM_SEL_0(a2);
        __os_log_helper_1_2_3_8_32_8_32_8_0(v12, "NSArray", v13, v7);
        v24 = PROEM_SEL_0(a2);
        v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** [%s %s]: index %lu beyond bounds for empty array", "NSArray", v24, v7);
      }

      v23 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v11, v8];
      objc_exception_throw(v23);
    }
  }

  return result;
}

CFStringRef _retainedComponentString(uint64_t a1, int a2, int a3, int a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = CFGetAllocator(a1);
  v9 = *(a1 + 16);
  if ((v9 & a2) == 0)
  {
    return 0;
  }

  v10 = v8;
  if (a2)
  {
    v16.location = *(a1 + 56);
    if (v16.location != -1)
    {
      v16.length = *(a1 + 64);
      goto LABEL_10;
    }

    return 0;
  }

  v11 = 0;
  v12 = a2;
  v13 = *(a1 + 16);
  do
  {
    v14 = v12;
    v12 >>= 1;
    v11 += v13 & 1;
    v13 >>= 1;
  }

  while ((v14 & 2) == 0);
  v15 = (a1 + 56 + 16 * v11);
  v16.location = *v15;
  if (*v15 == -1)
  {
    return 0;
  }

  v16.length = v15[1];
  if ((a2 & 1) == 0)
  {
LABEL_7:
    v17 = atomic_load((a1 + 24));
    v18 = CFStringCreateWithSubstring(v8, v17, v16);
    goto LABEL_23;
  }

LABEL_10:
  v19 = v9 >> 29;
  if (v19 <= 2)
  {
    if (v19 == 1)
    {
      v20 = @"http";
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_7;
      }

      v20 = @"https";
    }
  }

  else
  {
    switch(v19)
    {
      case 3:
        v20 = @"file";
        break;
      case 4:
        v20 = @"data";
        break;
      case 5:
        v20 = @"ftp";
        break;
      default:
        goto LABEL_7;
    }
  }

  v18 = CFRetain(v20);
LABEL_23:
  v22 = v18;
  if (a4 | a3 || !v18 || (*(a1 + 18) & 1) != 0)
  {
    goto LABEL_33;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    LODWORD(v23) = *(v23 + 16);
  }

  if ((v23 & a2) == 0)
  {
LABEL_33:
    v21 = v18;
    if (!a4)
    {
      return v21;
    }

    goto LABEL_34;
  }

  v24 = *(a1 + 20);
  v25 = CFGetAllocator(v18);
  Length = CFStringGetLength(v22);
  v38 = &v36;
  theString = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  constructBuffers(v22, v44, &v42, &v41, &v43 + 1, &v43);
  v27 = v42;
  v28 = HIBYTE(v43);
  HIDWORD(v37) = v24;
  v29 = v41;
  scanCharacters(v25, &theString, 0, v42, v41, HIBYTE(v43), 0, Length, &v40, a2, HIDWORD(v37));
  v21 = theString;
  if (theString)
  {
    v30 = Length - v40;
    if (Length > v40)
    {
      if (v28)
      {
        __CFStringAppendBytes(theString, &v27[v40], v30, 513);
      }

      else
      {
        CFStringAppendCharacters(theString, &v29[v40], v30);
      }
    }
  }

  else
  {
    CFRetain(v22);
    v21 = v22;
  }

  if (v43)
  {
    if (v28)
    {
      v35 = v27;
    }

    else
    {
      v35 = v29;
    }

    free(v35);
  }

  CFRelease(v22);
  if (a4)
  {
LABEL_34:
    if (v21)
    {
      v31 = *(a1 + 20);
      if (v31 == 134217984)
      {
        v32 = CFURLCreateStringByReplacingPercentEscapes(v10, v21, &stru_1EF068AA8);
      }

      else
      {
        v32 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(v10, v21, &stru_1EF068AA8, v31);
      }

      v33 = v32;
      CFRelease(v21);
      return v33;
    }
  }

  return v21;
}

CFStringRef CFURLCreateStringWithFileSystemPath(const __CFAllocator *a1, CFStringEncoding *a2, uint64_t a3, int a4)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateStringWithFileSystemPath_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a2))
    {
      a2 = [(CFStringEncoding *)a2 _cfurl];
    }

    v8 = [(CFStringEncoding *)a2 _fileSystemPath:a3 resolveAgainstBase:a4 != 0];

    return v8;
  }

  if (!a4)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v10 = CFURLGetBaseURL(a2);
  if (!v10)
  {
LABEL_14:
    v11 = 0;
    v12 = 1;
    goto LABEL_15;
  }

  v11 = CFURLCreateStringWithFileSystemPath(a1, v10, a3, 0);
  v12 = 0;
LABEL_15:
  v13 = CF_IS_OBJC(0x1DuLL, a2);
  if (a3 || v13 || (*(a2 + 17) & 0x80) == 0 || (v14 = _retainedComponentString(a2, 32, 1, 1)) == 0)
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      CFURLCreateStringWithFileSystemPath_cold_2();
    }

    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a2))
    {
      a2 = [(CFStringEncoding *)a2 _cfurl];
    }

    v16 = CFURLCopyPath(a2);
    v17 = a2[5];
    if (v12 && CFURLIsFileReferenceURL(a2))
    {
      v18 = FileReferenceURLPathToFullURLPath(v16, a1);
      CFRelease(v16);
      ResolveFlags = _CFURLGetQueryResolveFlags(a2);
      if (!v18 || (v20 = ResolveFlags, !ResolveFlags))
      {
        v16 = v18;
        if (!v18)
        {
          return v11;
        }

LABEL_34:
        if (a3)
        {
          if (a3 != 2)
          {
            CFRelease(v16);
            return v11;
          }

          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v16, @"/");
          Count = CFArrayGetCount(ArrayBySeparatingStrings);
          MutableCopy = CFArrayCreateMutableCopy(a1, Count, ArrayBySeparatingStrings);
          CFRelease(ArrayBySeparatingStrings);
          ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, Count - 1);
          if (!CFStringGetLength(ValueAtIndex))
          {
            CFArrayRemoveValueAtIndex(MutableCopy, --Count);
          }

          if (Count >= 2)
          {
            v26 = CFArrayGetValueAtIndex(MutableCopy, 0);
            if (!CFStringGetLength(v26))
            {
              v27 = CFArrayGetValueAtIndex(MutableCopy, 1);
              v28 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(a1, v27, @"\"", v17);
              if (v28)
              {
                v29 = v28;
                if (CFStringGetLength(v28) == 2)
                {
                  CharacterAtIndex = CFStringGetCharacterAtIndex(v29, 1);
                  v31 = CharacterAtIndex;
                  if (CharacterAtIndex == 124 || CharacterAtIndex == 58)
                  {
                    CFArrayRemoveValueAtIndex(MutableCopy, 0);
                    if (v31 == 124)
                    {
                      v32 = CFStringGetCharacterAtIndex(v29, 0);
                      v33 = CFStringCreateWithFormat(a1, 0, @"%c:", v32);
                      CFArraySetValueAtIndex(MutableCopy, 0, v33);
                      CFRelease(v33);
                    }
                  }
                }

                CFRelease(v29);
              }
            }
          }

          v34 = CFStringCreateByCombiningStrings(a1, MutableCopy, @"\"");
          CFRelease(MutableCopy);
          v15 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(a1, v34, @"\"", v17);
          CFRelease(v34);
        }

        else
        {
          v35 = _CFURLHasFileURLScheme(a2, 0) != 0;
          v15 = URLPathToPOSIXPath(v16, a1, v17, v35);
        }

        CFRelease(v16);
        if (v15)
        {
          goto LABEL_50;
        }

        return v11;
      }

      if (CFEqual(v18, @"/.nofollow"))
      {
        v21 = @"/.nofollow/";
      }

      else
      {
        v21 = v18;
      }

      v16 = [(__CFString *)v21 _pathByInsertingResolveFlags:v20];
      CFRetain(v16);
      CFRelease(v18);
    }

    if (!v16)
    {
      return v11;
    }

    goto LABEL_34;
  }

  v15 = v14;
LABEL_50:
  if (CFURLHasDirectoryPath(a2))
  {
    if (CFStringGetLength(v15) >= 2)
    {
      Length = CFStringGetLength(v15);
      if (CFStringGetCharacterAtIndex(v15, Length - 1) == 47)
      {
        v56.length = CFStringGetLength(v15) - 1;
        v56.location = 0;
        v37 = CFStringCreateWithSubstring(a1, v15, v56);
        CFRelease(v15);
        v15 = v37;
        if (!v37)
        {
          return v11;
        }
      }
    }
  }

  v38 = CFStringGetLength(v15);
  if (a3 != 2)
  {
    if (v38 >= 1)
    {
      v39 = CFStringGetCharacterAtIndex(v15, 0) != 47;
      goto LABEL_70;
    }

LABEL_69:
    v39 = 1;
    goto LABEL_70;
  }

  if (v38 < 3)
  {
    if (v38 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (CFStringGetCharacterAtIndex(v15, 0) == 92 && CFStringGetCharacterAtIndex(v15, 1) == 92)
  {
LABEL_75:
    if (v11)
    {
      CFRelease(v11);
    }

    return v15;
  }

  v39 = 1;
  if (CFStringGetCharacterAtIndex(v15, 1) == 58)
  {
    goto LABEL_75;
  }

LABEL_70:
  if (!v11 || !v39)
  {
    goto LABEL_75;
  }

  v40 = CFURLHasDirectoryPath(v10);
  v41 = CFStringGetLength(v11);
  v42 = CFStringGetLength(v15);
  v43 = _CFGetSlash();
  Typed = CFAllocatorAllocateTyped(a1, 2 * (v42 + v41) + 4, 0x1000040BDFB0063uLL);
  v54.location = 0;
  v54.length = v41;
  CFStringGetCharacters(v11, v54, Typed);
  if (v40)
  {
    v45 = &Typed[v41];
    if (*(v45 - 1) != v43)
    {
      *v45 = v43;
      ++v41;
    }
  }

  else
  {
    v46 = 2 * v41 - 2;
    do
    {
      v47 = v46;
      v48 = (Typed + v46);
      if (v48 <= Typed)
      {
        break;
      }

      v49 = *v48;
      v46 = v47 - 2;
    }

    while (v49 != v43);
    v41 = (v47 >> 1) + 1;
  }

  v50 = &Typed[v41];
  v55.location = 0;
  v55.length = v42;
  CFStringGetCharacters(v15, v55, v50);
  v51 = &v50[v42];
  *v51 = 0;
  v52 = _resolvedPath(Typed, v51, v43, 0, 1, a1);
  CFRelease(v11);
  CFRelease(v15);
  return v52;
}

CFStringRef CFURLCreateStringByReplacingPercentEscapes(CFAllocatorRef allocator, CFStringRef originalString, CFStringRef charactersToLeaveEscaped)
{
  v3 = MEMORY[0x1EEE9AC00](allocator, originalString, charactersToLeaveEscaped);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v79 = *MEMORY[0x1E69E9840];
  if (v5)
  {
    v9 = CFStringGetLength(v5) == 0;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    if (!v4)
    {
      return 0;
    }
  }

  Length = CFStringGetLength(v7);
  if (v6)
  {
    v11 = Length;
    if (Length)
    {
      v75 = 0uLL;
      v74 = 0;
      if (v9)
      {
        v12 = v8;
        v13 = CFStringGetLength(v7);
        v14 = v13;
        if (v13 <= 1)
        {
          v13 = 1;
        }

        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v13, 0x8000100u);
        v16 = MaximumSizeForEncoding;
        if (MaximumSizeForEncoding < 2097)
        {
          v17 = &v77;
LABEL_89:
          v76 = 0;
          v82.location = 0;
          v82.length = v14;
          if (CFStringGetBytes(v7, v82, 0x8000100u, 0, 0, v17, v16, &v76))
          {
            v58 = v76;
            v59 = &v17[v16];
            if (v76 >= 1)
            {
              v60 = 0;
              v61 = v17;
              v59 = &v17[v16];
              do
              {
                v62 = *v61;
                if (v62 == 37)
                {
                  v60 += 2;
                  if (v60 >= v58)
                  {
                    goto LABEL_103;
                  }

                  v63 = UnescapeAllWithUTF8_hexvalues[v61[1]];
                  v62 = UnescapeAllWithUTF8_hexvalues[v61[2]];
                  if (((v62 | v63) & 0x80) != 0)
                  {
                    goto LABEL_103;
                  }

                  v61 += 3;
                  LOBYTE(v62) = v62 + 16 * v63;
                }

                else
                {
                  ++v61;
                }

                *v59++ = v62;
                ++v60;
                v58 = v76;
              }

              while (v60 < v76);
            }

            v22 = CFStringCreateWithBytes(v12, &v17[v16], v59 - &v17[v16], 0x8000100u, 0);
          }

          else
          {
LABEL_103:
            v22 = 0;
          }

          if (v17 != &v77)
          {
            free(v17);
          }

          return v22;
        }

        v17 = malloc_type_malloc(2 * MaximumSizeForEncoding, 0x100004077774924uLL);
        if (v17)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v83.location = 0;
        v83.length = Length;
        v19 = CFStringFindWithOptions(v7, @"%", v83, 0, &v75);
        v20 = v19 == 0;
        if (v19)
        {
          v72 = v6;
          v21 = 0;
          v70 = 0;
          v22 = 0;
          v65 = v78;
          v66 = &__kCFAllocatorNull;
          v67 = v8;
          while (1)
          {
            LODWORD(v73) = v20;
            v23 = v11;
            if (v11 - v75 < 3)
            {
              break;
            }

            CharacterAtIndex = CFStringGetCharacterAtIndex(v7, v75 + 1);
            v25 = CFStringGetCharacterAtIndex(v7, v75 + 2);
            if ((CharacterAtIndex - 48) >= 0xA)
            {
              if ((CharacterAtIndex - 97) >= 6)
              {
                if ((CharacterAtIndex - 65) > 5)
                {
                  break;
                }

                v26 = -55;
              }

              else
              {
                v26 = -87;
              }
            }

            else
            {
              v26 = -48;
            }

            v27 = 16 * (v26 + CharacterAtIndex);
            if ((v25 - 48) > 9)
            {
              if ((v25 - 97) > 5)
              {
                if ((v25 - 65) > 5)
                {
                  break;
                }

                v28 = v25 + v27 - 55;
              }

              else
              {
                v28 = v25 + v27 - 87;
              }
            }

            else
            {
              v28 = v25 + v27 - 48;
            }

            v77 = v28;
            if ((v28 & 0x80) != 0)
            {
              if ((v28 & 0x10) != 0)
              {
                v31 = 4;
              }

              else
              {
                v31 = 3;
              }

              if ((v28 & 0x20) != 0)
              {
                v32 = v31;
              }

              else
              {
                v32 = 2;
              }

              if (v11 < (v75 + (3 * v32)))
              {
                break;
              }

              v71 = v21;
              v68 = v32;
              v69 = v22;
              v33 = v32;
              v34 = 1;
              if (CFStringGetCharacterAtIndex(v7, v75 + 3) == 37)
              {
                v35 = 2;
                v36 = v65;
                v37 = 6;
                do
                {
                  v38 = CFStringGetCharacterAtIndex(v7, v37 + v75 - 2);
                  v39 = CFStringGetCharacterAtIndex(v7, v37 + v75 - 1);
                  *v36 = 0;
                  if ((v38 - 48) >= 0xA)
                  {
                    if ((v38 - 97) >= 6)
                    {
                      if ((v38 - 65) > 5)
                      {
                        break;
                      }

                      v40 = -55;
                    }

                    else
                    {
                      v40 = -87;
                    }
                  }

                  else
                  {
                    v40 = -48;
                  }

                  v41 = 16 * (v40 + v38);
                  *v36 = v41;
                  if ((v39 - 48) > 9)
                  {
                    if ((v39 - 97) > 5)
                    {
                      if ((v39 - 65) > 5)
                      {
                        break;
                      }

                      v42 = v39 + v41 - 55;
                    }

                    else
                    {
                      v42 = v39 + v41 - 87;
                    }
                  }

                  else
                  {
                    v42 = v39 + v41 - 48;
                  }

                  *v36 = v42;
                  v34 = v35 < v33;
                  if (v33 == v35)
                  {
                    break;
                  }

                  v43 = CFStringGetCharacterAtIndex(v7, v37 + v75);
                  v37 += 3;
                  ++v36;
                  ++v35;
                }

                while (v43 == 37);
              }

              v8 = v67;
              v44 = CFStringCreateWithBytes(v67, &v77, v33, 0x8000100u, 0);
              v30 = v68;
              v22 = v69;
              v21 = v71;
              if (!v44)
              {
                break;
              }

              v29 = v44;
              v45 = CFStringGetLength(v44);
              if ((v28 & 0x30) == 0x20)
              {
                v21 = v71;
                if (!v45 && v77 == 239 && v78[0] == 187 && v78[1] == 191)
                {
                  v74 = -257;
                  if (!v71)
                  {
                    v21 = CFStringCreateMutableWithExternalCharactersNoCopy(v8, &v74, 1, 1, v66);
                  }

                  CFRelease(v29);
                  v29 = CFRetain(v21);
                }

                if (v34)
                {
LABEL_79:
                  if (v29)
                  {
                    CFRelease(v29);
                  }

                  break;
                }
              }

              else
              {
                v21 = v71;
                if (v34)
                {
                  goto LABEL_79;
                }
              }

              v11 = v23;
            }

            else
            {
              v74 = v28;
              if (!v21)
              {
                v21 = CFStringCreateMutableWithExternalCharactersNoCopy(v8, &v74, 1, 1, v66);
              }

              v29 = CFRetain(v21);
              v30 = 1;
            }

            v46 = v75 + (3 * v30);
            location = CFStringFind(v72, v29, 0).location;
            if (location == -1)
            {
              if (!v22)
              {
                location = CFStringCreateMutable(v8, v11);
                v22 = location;
              }

              v49 = v75 - v70;
              if (v75 - v70 >= 1)
              {
                v73 = &v64;
                MEMORY[0x1EEE9AC00](location, v70, v48);
                v51 = v8;
                v52 = v21;
                v53 = (&v64 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
                v81.length = v49;
                CFStringGetCharacters(v7, v81, v53);
                v54 = v53;
                v21 = v52;
                v8 = v51;
                CFStringAppendCharacters(v22, v54, v49);
              }

              CFStringAppend(v22, v29);
              v70 = v46;
            }

            if (v29)
            {
              CFRelease(v29);
            }

            v84.length = v11 - v46;
            v84.location = v46;
            v55 = CFStringFindWithOptions(v7, @"%", v84, 0, &v75);
            v20 = v55 == 0;
            if (!v55)
            {
              goto LABEL_82;
            }
          }

          v11 = v23;
          LOBYTE(v20) = v73;
LABEL_82:
          if (v21)
          {
            CFRelease(v21);
          }
        }

        else
        {
          v22 = 0;
          v70 = 0;
        }

        if (v20)
        {
          if (!v22)
          {
            return CFStringCreateCopy(v8, v7);
          }

          v56.location = v70;
          if (v11 > v70)
          {
            v56.length = v11 - v70;
            v57 = CFStringCreateWithSubstring(v8, v7, v56);
            CFStringAppend(v22, v57);
            CFRelease(v57);
          }

          return v22;
        }

        if (!v22)
        {
          return v22;
        }

        CFRelease(v22);
      }

      return 0;
    }
  }

  return CFStringCreateCopy(v8, v7);
}

Boolean CFURLHasDirectoryPath(CFURLRef anURL)
{
  do
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      CFURLHasDirectoryPath_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      LOBYTE(v3) = [(__CFURL *)anURL hasDirectoryPath];
      return v3;
    }

    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    v2 = *(anURL + 4);
    if (!*(anURL + 4))
    {
      break;
    }

    anURL = *(anURL + 4);
  }

  while ((v2 & 0x3E) == 0);
  return (v2 >> 11) & 1;
}

void CFStringInsert(CFMutableStringRef str, CFIndex idx, CFStringRef insertedStr)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v6 = CF_IS_OBJC(7uLL, str);
  if (v6)
  {

    [(__CFString *)str insertString:insertedStr atIndex:idx];
    return;
  }

  v8 = atomic_load(&str->info);
  if ((v8 & 1) == 0)
  {
    v9 = _CFOSLog(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      CFStringInsert_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return;
  }

  if (insertedStr == str)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, insertedStr);
    insertedStr = Copy;
  }

  else
  {
    Copy = 0;
  }

  Length = CFStringGetLength(insertedStr);
  if (Length < 1)
  {
    v20 = 0;
  }

  else
  {
    if (CF_IS_OBJC(7uLL, insertedStr))
    {
      v19 = [(__CFString *)insertedStr _encodingCantBeStoredInEightBitCFString];
    }

    else
    {
      v21 = atomic_load(&insertedStr->info);
      v19 = (v21 >> 4) & 1;
    }

    v20 = v19 != 0;
  }

  v32[0] = idx;
  v32[1] = 0;
  __CFStringChangeSizeMultiple(str, v32, 1, Length, v20);
  v22 = atomic_load(&str->info);
  v23 = atomic_load(&str->info);
  v24 = v23 & 0x60;
  p_data = &str->data;
  if ((v22 & 0x10) == 0)
  {
    if (v24)
    {
      v26 = *p_data;
    }

    else
    {
      v28 = atomic_load(&str->info);
      v26 = &p_data[(v28 & 5) != 4];
    }

    v29 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v29 = __CFStringComputeEightBitStringEncoding();
    }

    v30 = atomic_load(&str->info);
    v34.location = 0;
    v34.length = Length;
    CFStringGetBytes(insertedStr, v34, v29, 0, 0, &v26[idx + ((v30 >> 2) & 1)], Length, 0);
    goto LABEL_29;
  }

  if (!v24)
  {
    v31 = atomic_load(&str->info);
    v27 = &p_data[(v31 & 5) != 4];
    if (!v27)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v27 = *p_data;
  if (v27)
  {
LABEL_28:
    v35.location = 0;
    v35.length = Length;
    CFStringGetCharacters(insertedStr, v35, &v27[2 * idx]);
  }

LABEL_29:
  if (Copy)
  {

    CFRelease(Copy);
  }
}

Boolean CFURLIsFileReferenceURL(CFURLRef url)
{
  do
  {
    v1 = url;
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      CFURLIsFileReferenceURL_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      goto LABEL_6;
    }

    url = CFURLGetBaseURL(v1);
  }

  while (url);
  if (CF_IS_OBJC(0x1DuLL, v1))
  {
LABEL_6:
    LOBYTE(v2) = [(__CFURL *)v1 isFileReferenceURL];
    return v2;
  }

  return (*(v1 + 4) & 0xE0002000) == 1610620928;
}

CFStringRef POSIXPathToURLPath(const __CFString *a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v5 = a3;
  v6 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (CFStringGetLength(a1))
  {
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
    v9 = MaximumSizeOfFileSystemRepresentation;
    if (MaximumSizeOfFileSystemRepresentation >= 1025)
    {
      v10 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
    }

    else
    {
      v10 = buffer;
    }
  }

  else
  {
    v10 = buffer;
    v9 = 1;
  }

  if (CFStringGetFileSystemRepresentation(a1, v10, v9))
  {
    v11 = strlen(v10);
    v12 = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(0, v10, v11, v6, v5, 0, &v14);
  }

  else
  {
    v12 = 0;
  }

  if (v10 != buffer)
  {
    free(v10);
  }

  if (a4)
  {
    *a4 = v14 == 0;
  }

  return v12;
}

unint64_t *_CFURLCreateWithArbitraryString(__objc2_class **a1, const __CFString *a2, const __CFURL *a3)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCreateWithArbitraryString_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if (a2)
    {
      v6 = [NSURL _cfurlWithString:a2 encoding:134217984 relativeToURL:a3 encodingInvalidCharacters:1 forceBaseURL:0];

      return v6;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  return _CFURLCreateWithURLString(a1, a2, 0, a3);
}

unint64_t *__CFURLCreateCopyAppendingPathComponent(const __CFAllocator *a1, const __CFURL *a2, const __CFString *a3, int a4, const __CFString *a5)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    __CFURLCreateCopyAppendingPathComponent_cold_1();
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a2))
  {
    a2 = [(__CFURL *)a2 _cfurl];
  }

  if (CFURLIsFileReferenceURL(a2))
  {
    v10 = CFURLCreateFilePathURL(a1, a2, 0);
    v11 = v10 == 0;
    if (v10)
    {
      a2 = v10;
    }
  }

  else
  {
    v11 = 1;
  }

  if ((*(a2 + 16) & 0x20) != 0)
  {
    v12 = atomic_load(a2 + 3);
    MutableCopy = CFStringCreateMutableCopy(a1, 0, v12);
    if (MutableCopy)
    {
      v14 = MutableCopy;
      if (_CFURLHasFileURLScheme(a2, 0))
      {
        v15 = POSIXPathToURLPath(a3, 0, 0, 0);
      }

      else
      {
        v15 = CFURLCreateStringByAddingPercentEscapes(a1, a3, 0, a5, *(a2 + 5));
      }

      v18 = v15;
      if (!v15)
      {
        v16 = 0;
        goto LABEL_33;
      }

      v19 = *(a2 + 4);
      if ((v19 & 0x20) != 0)
      {
        v22 = 0;
        v23 = 32;
        do
        {
          v24 = v23;
          v23 >>= 1;
          v22 += v19 & 1;
          v19 >>= 1;
        }

        while ((v24 & 2) == 0);
        v25 = (a2 + 16 * v22 + 56);
        v21 = *v25;
        v20 = v25[1];
        if (v20)
        {
          v26 = atomic_load(a2 + 3);
          if (CFStringGetCharacterAtIndex(v26, v21 + v20 - 1) == 47)
          {
LABEL_30:
            v27 = v20 + v21;
            CFStringInsert(v14, v27, v18);
            if (a4)
            {
              Length = CFStringGetLength(v18);
              CFStringInsert(v14, Length + v27, @"/");
            }

            CFRelease(v18);
            v16 = _CFURLCreateWithArbitraryString(a1, v14, *(a2 + 4));
LABEL_33:
            CFRelease(v14);
            if (v11)
            {
              return v16;
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
        v20 = 0;
        v21 = -1;
      }

      if (!CFStringGetLength(v18) || CFStringGetCharacterAtIndex(v18, 0) != 47)
      {
        CFStringInsert(v14, v21 + v20++, @"/");
      }

      goto LABEL_30;
    }
  }

  v16 = 0;
  if (!v11)
  {
LABEL_16:
    CFRelease(a2);
  }

  return v16;
}

CFIndex CFStringGetMaximumSizeForEncoding(CFIndex length, CFStringEncoding encoding)
{
  v2 = length;
  HIDWORD(v4) = encoding - 134217984;
  LODWORD(v4) = encoding - 134217984;
  v3 = v4 >> 26;
  if ((v3 - 4) < 2 || v3 == 1)
  {
    v6 = 4 * length;
    v7 = length >> 61;
    goto LABEL_7;
  }

  if (!v3)
  {
    v8 = 3 * length;
    v9 = 0x2AAAAAAAAAAAAAAALL;
    goto LABEL_12;
  }

  v11 = encoding & 0xFFF;
  if (v11 > 0x4FF)
  {
    if ((encoding & 0xFFF) > 0xB00)
    {
      if (v11 == 2817)
      {
        return v2;
      }

      if (v11 == 3071)
      {
        v8 = 6 * length;
        v9 = 0x1555555555555555;
LABEL_12:
        if (length > v9)
        {
          return -1;
        }

        else
        {
          return v8;
        }
      }
    }

    else if (v11 == 1280 || v11 == 1536)
    {
      return v2;
    }

    goto LABEL_28;
  }

  if ((encoding & 0xFFF) == 0)
  {
    return v2;
  }

  if (v11 == 256)
  {
    v6 = 2 * length;
    v7 = length >> 62;
LABEL_7:
    if (v7)
    {
      return -1;
    }

    else
    {
      return v6;
    }
  }

  if (v11 == 513)
  {
    return v2;
  }

LABEL_28:
  Converter = CFStringEncodingGetConverter(encoding);
  if (Converter)
  {
    v13 = Converter[8];
    v14 = 0x7FFFFFFFFFFFFFFFLL / v13;
    v15 = v13 * v2;
    if (v14 < v2)
    {
      return -1;
    }

    else
    {
      return v15;
    }
  }

  return v2;
}

uint64_t cow_copy_storage(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v5 = 0;
LABEL_21:
    result = 1;
    goto LABEL_22;
  }

  v3 = *(a1 + 28);
  result = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
  v5 = result;
  if (result)
  {
    v6 = *(a1 + 36);
    v7 = *(a1 + 24);
    v8 = v3 - v7;
    if (v3 - v7 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = (result + 8 * v7);
      memcpy(v10, &v2[8 * v7], 8 * v9);
      v11 = v9;
      do
      {
        if ((*v10 & 0x8000000000000000) == 0)
        {
          v12 = *v10;
        }

        ++v10;
        --v11;
      }

      while (v11);
    }

    if (v6 > v8)
    {
      memcpy(v5, v2, 8 * (v6 - v9));
      v13 = 0;
      if (v6 - v9 <= 1uLL)
      {
        v14 = 1;
      }

      else
      {
        v14 = v6 - v9;
      }

      v15 = 8 * v14;
      do
      {
        v16 = *&v5[v13];
        if ((v16 & 0x8000000000000000) == 0)
        {
          v17 = v16;
        }

        v13 += 8;
      }

      while (v15 != v13);
    }

    goto LABEL_21;
  }

LABEL_22:
  *(a1 + 16) = v5;
  return result;
}

uint64_t cow_copy_storage_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = [*(a1 + 24) mutableCopyWithZone:0];
  if (result)
  {
    v10 = result;
    result = CFBasicHashCreateCopy(0, v2, v4, v5, v6, v7, v8, v9);
    if (result)
    {
      *(a1 + 16) = result;
      *(a1 + 24) = v10;
      return 1;
    }
  }

  return result;
}

uint64_t cow_copy_storage_1(uint64_t a1)
{
  v2 = *(a1 + 28);
  if ((v2 & 0x3FFFFFF) == 0)
  {
    v5 = 0;
    *(a1 + 28) = 0;
LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v3 = *(__NSSetSizes_0 + ((v2 >> 23) & 0x1F8));
  result = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
  v5 = result;
  if (result)
  {
    if (v2 >> 26)
    {
      v6 = 0;
      v7 = *(a1 + 16);
      if (v3 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v3;
      }

      v9 = 8 * v8;
      do
      {
        v10 = *(v7 + v6);
        if (v10 >= 1 && v10 != &___NSSetM_DeletedMarker)
        {
          v12 = v10;
        }

        *(v5 + v6) = v10;
        v6 += 8;
      }

      while (v9 != v6);
    }

    goto LABEL_16;
  }

LABEL_17:
  *(a1 + 16) = v5;
  return result;
}

uint64_t cow_copy_storage_2(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1FFFFFF00000000) == 0)
  {
    v5 = 0;
    *(a1 + 16) = v2 & 0x2000000FFFFFFFFLL;
LABEL_18:
    result = 1;
    goto LABEL_19;
  }

  v3 = *(__NSDictionarySizes_0 + ((v2 >> 55) & 0x1F8));
  result = malloc_type_calloc(1uLL, 16 * v3, 0x80040B8603338uLL);
  v5 = result;
  if (result)
  {
    if (v2 >> 58)
    {
      v6 = 0;
      v7 = *(a1 + 8);
      do
      {
        v8 = *(v7 + 8 * v6);
        if (v8)
        {
          *(v5 + 8 * v6) = v8;
          if (v8 != &___NSDictionaryM_DeletedMarker && (v8 & 0x8000000000000000) == 0)
          {
            v9 = v8;
          }
        }

        ++v6;
      }

      while (v3 != v6);
      v10 = 8 * v3;
      do
      {
        v11 = *(v7 + v10);
        if (v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v12 = v11;
          }

          *(v5 + v10) = v11;
        }

        v10 += 8;
        --v3;
      }

      while (v3);
    }

    goto LABEL_18;
  }

LABEL_19:
  *(a1 + 8) = v5;
  return result;
}

uint64_t _cow_mutate_slow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(a3 + 8))(a1, a2) & 1) == 0)
  {
    _cow_mutate_slow_cold_1();
  }

  v5 = *(a3 + 16);

  return v5(a1, 0);
}

uint64_t _CFXNotificationRegisterObserver(unint64_t *a1, __CFString *a2, const __CFString *a3, unint64_t a4, __CFString *a5, void *a6, const void *a7)
{
  v10 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v14 = atomic_load(a1 + 1);
  if ((v14 & 1) == 0)
  {
    v15 = atomic_load(a1 + 1);
    v10 = ~(v15 << 11) & 0x1000 | a4;
  }

  if (!a2 || !a3 || a5 == @"kCFNotificationAnyObserver")
  {
    __break(1u);
  }

  v16 = atomic_load(a1 + 1);
  if (v16 & 2) != 0 && (__CFIsDistNoteDaemon)
  {
    return 0;
  }

  if ((v10 & 0x400) != 0)
  {
    Class = object_getClass(a5);
    if (class_isMetaClass(Class))
    {
      v10 &= ~0x400uLL;
    }

    if ((v10 & 0x400) != 0)
    {
      objc_opt_self();
    }
  }

  _CFNotificationCenterInitializeDependentNotificationIfNecessary(a2);
  v17 = CFXNotificationRegistrarAdd(a1[2], a2, a3, a5, v10, a6, a7);
  out_token = 0;
  v19 = _CFAutoreleasePoolPush();
  v20 = atomic_load(a1 + 1);
  if (v20)
  {
    maxBufLen[0] = 0;
    v47.length = CFStringGetLength(a2);
    v47.location = 0;
    CFStringGetBytes(a2, v47, 0x8000100u, 0, 0, 0, 0, maxBufLen);
    v34 = malloc_type_malloc(maxBufLen[0] + 1, 0x100004077774924uLL);
    v48.length = CFStringGetLength(a2);
    v48.location = 0;
    CFStringGetBytes(a2, v48, 0x8000100u, 0, 0, v34, maxBufLen[0], 0);
    v34[maxBufLen[0]] = 0;
    if (__CFXNotificationCenterDarwinQueue_initOnce != -1)
    {
      _CFXNotificationRegisterObserver_cold_1();
    }

    maxBufLen[0] = MEMORY[0x1E69E9820];
    maxBufLen[1] = 3221225472;
    maxBufLen[2] = ____CFXNotificationRegisterObserver_block_invoke;
    maxBufLen[3] = &__block_descriptor_48_e8_v12__0i8l;
    maxBufLen[4] = a1;
    maxBufLen[5] = v17;
    v35 = notify_register_dispatch(v34, &out_token, __CFXNotificationCenterDarwinQueue_queue, maxBufLen);
    CFXNotificationRegisteredObserverSetNotifyToken(a1[2], v17, out_token);
    free(v34);
    if (v35)
    {
      v17 = 0;
    }
  }

  else
  {
    v21 = atomic_load(a1 + 1);
    if ((v21 & 2) != 0)
    {
      maxBufLen[0] = 0;
      v43.length = CFStringGetLength(a2);
      v43.location = 0;
      CFStringGetBytes(a2, v43, 0x8000100u, 0, 0, 0, 0, maxBufLen);
      v22 = malloc_type_malloc(maxBufLen[0] + 1, 0x100004077774924uLL);
      v44.length = CFStringGetLength(a2);
      v44.location = 0;
      CFStringGetBytes(a2, v44, 0x8000100u, 0, 0, v22, maxBufLen[0], 0);
      v22[maxBufLen[0]] = 0;
      maxBufLen[0] = 0;
      v45.length = CFStringGetLength(a3);
      v45.location = 0;
      CFStringGetBytes(a3, v45, 0x8000100u, 0, 0, 0, 0, maxBufLen);
      v23 = malloc_type_malloc(maxBufLen[0] + 1, 0x100004077774924uLL);
      v46.length = CFStringGetLength(a3);
      v46.location = 0;
      CFStringGetBytes(a3, v46, 0x8000100u, 0, 0, v23, maxBufLen[0], 0);
      v23[maxBufLen[0]] = 0;
      v24 = strcmp("kCFNotificationAnyName", v22);
      if (v24 | strcmp("kCFNotificationAnyObject", v23) || (getpid(), !sandbox_check()))
      {
        v33 = 1;
      }

      else
      {
        v31 = __CFGenerateReport();
        v32 = "\n\n";
        if (!v31)
        {
          v32 = "";
        }

        CFLog(4, @"*** attempt to register for all distributed notifications thwarted by sandboxing.%s%s", v25, v26, v27, v28, v29, v30, v32);
        free(v31);
        v33 = 0;
      }

      v36 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v36, "method", "register");
      xpc_dictionary_set_uint64(v36, "version", 1uLL);
      xpc_dictionary_set_string(v36, "name", v22);
      xpc_dictionary_set_string(v36, "object", v23);
      xpc_dictionary_set_uint64(v36, "options", v10 & 0xFFFFFFFFFFFFDBFFLL);
      xpc_dictionary_set_uint64(v36, "token", v17);
      v37 = _CFGetProcessPath();
      xpc_dictionary_set_string(v36, "pn", *v37);
      CFXNotificationRegisteredObserverSetDistributedConnection(a1[2], v17, a1[3]);
      if (v33)
      {
        v38 = a1[3];
        _CFSuddenTerminationDisable();
        xpc_connection_send_message(v38, v36);
        xpc_connection_send_barrier(v38, &__block_literal_global_123);
      }

      xpc_release(v36);
      free(v23);
      free(v22);
    }
  }

  _CFAutoreleasePoolPop(v19);
  return v17;
}

uint64_t _CFXNotificationRegistrarAddObserver(uint64_t a1, unsigned int *a2, void *aBlock, CFTypeRef cf, int a5, void *a6, unsigned int *a7, int a8, uint64_t a9, int a10, int a11, unsigned int *a12)
{
  v66 = *MEMORY[0x1E69E9840];
  if ((*&a8 & 0xE0000) == 0)
  {
    _CFXNotificationRegistrarAddObserver_cold_2();
  }

  v12 = a8;
  v15 = a5;
  v18 = *(a1 + 160);
  if (v18 != -1)
  {
    goto LABEL_3;
  }

  v23 = *(a1 + 156);
  if (v23 == -1)
  {
LABEL_39:
    v19 = *(a1 + 144);
    v18 = -1;
    goto LABEL_40;
  }

  v60 = aBlock;
  v61 = cf;
  v24 = malloc_good_size(56 * v23 + 56);
  v25 = *(a1 + 156);
  v26 = *(a1 + 144);
  v58 = (v24 / 0x38);
  v59 = v24 / 0x38;
  v27 = malloc_type_malloc(56 * v58, 0x82DB78C4uLL);
  v28 = v27;
  memset(v65, 0, sizeof(v65));
  if (!v25)
  {
    *(a1 + 144) = v27;
    v41 = v26;
    v15 = a5;
LABEL_29:
    free(v41);
    goto LABEL_30;
  }

  v53 = a6;
  v54 = v12;
  v55 = a7;
  v56 = a2;
  v29 = 0;
  v30 = 0;
  LODWORD(v31) = 0;
  v32 = 32;
  v33 = a11;
  ptr = v65;
  do
  {
    v34 = *&v26[v29 + 8];
    if ((v26[v29 + 45] & 4) != 0)
    {
      if (v34)
      {
        objc_moveWeak(&v28[v29 + 8], &v26[v29 + 8]);
      }

      else
      {
        v63 = v31;
        LODWORD(v31) = v31 + 1;
        if (v31 <= v32)
        {
          v35 = v32;
          v36 = ptr;
        }

        else
        {
          v35 = (v32 + 1);
          if (ptr == v65)
          {
            v57 = malloc_type_malloc(4 * (v32 + 1), 0x82DB78C4uLL);
            memcpy(v57, ptr, 4 * v32);
            v36 = v57;
          }

          else
          {
            v36 = malloc_type_realloc(ptr, 4 * (v32 + 1), 0xCD87958FuLL);
          }
        }

        ptr = v36;
        *(v36 + v63) = v30;
        *&v28[v29 + 8] = 0;
        v32 = v35;
        v33 = a11;
      }
    }

    else
    {
      *&v28[v29 + 8] = v34;
    }

    v37 = &v28[v29];
    *v37 = *&v26[v29];
    *(v37 + 1) = *&v26[v29 + 16];
    *(v37 + 4) = *&v26[v29 + 32];
    *(v37 + 5) = *&v26[v29 + 40];
    *(v37 + 12) = *&v26[v29 + 48];
    ++v30;
    v29 += 56;
  }

  while (56 * v25 != v29);
  *(a1 + 144) = v28;
  free(v26);
  a7 = v55;
  a6 = v53;
  v15 = a5;
  if (v31)
  {
    v31 = v31;
    v38 = ptr;
    do
    {
      v40 = *v38++;
      v39 = v40;
      if (v40 != v33)
      {
        _CFXNotificationRegistrarInvalidateObserver(a1, v39, a10, v33, a12);
      }

      --v31;
    }

    while (v31);
  }

  v41 = ptr;
  a2 = v56;
  v12 = v54;
  if (ptr != v65)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v25 >= v59)
  {
    v47 = *(a1 + 156);
    aBlock = v60;
    cf = v61;
  }

  else
  {
    v42 = 56 * v25;
    aBlock = v60;
    cf = v61;
    do
    {
      v43 = &v28[v42];
      *(v43 + 3) = 0;
      *(v43 + 8) = 0uLL;
      *(v43 + 44) = 0xFFFFFFFF00008000;
      v44 = *(a1 + 144);
      v45 = *(a1 + 160);
      if (v45 != -1)
      {
        *(v44 + 56 * v45) = v25;
      }

      v46 = (v44 + v42);
      *v46 = -1;
      v46[1] = v45;
      v47 = *(a1 + 156) + 1;
      *(a1 + 156) = v47;
      *(a1 + 160) = v25++;
      v42 += 56;
    }

    while (v58 != v25);
  }

  if (v47 != v59)
  {
    _CFXNotificationRegistrarAddObserver_cold_1();
  }

  v18 = *(a1 + 160);
  if (v18 == -1)
  {
    goto LABEL_39;
  }

LABEL_3:
  v19 = *(a1 + 144);
  v20 = (v19 + 56 * v18);
  v21 = *v20;
  v22 = v20[1];
  *(a1 + 160) = v22;
  if (v21 != -1)
  {
    *(v19 + 56 * v21 + 4) = v22;
  }

  if (v22 != -1)
  {
    *(v19 + 56 * v22) = v21;
  }

LABEL_40:
  ++*(a1 + 152);
  v48 = v19 + 56 * v18;
  *a7 = v18;
  CFXNotificationHandlerCopy((v48 + 16), aBlock, cf, v12);
  *(v48 + 40) = HIDWORD(a9);
  *(v48 + 48) = v15;
  if ((v12 & 0x400) != 0)
  {
    if (!objc_storeWeakOrNil((v48 + 8), a6))
    {
      *(v48 + 8) = a6;
      v12 &= ~0x400u;
    }
  }

  else
  {
    *(v48 + 8) = a6;
  }

  *(v48 + 44) = v12;
  *(v48 + 32) = 0;
  v49 = *a7;
  v50 = *a2;
  if (*a2 != -1)
  {
    *(*(a1 + 144) + 56 * v50) = v49;
  }

  *v48 = -1;
  *(v48 + 4) = v50;
  v51 = a2[1] + 1;
  *a2 = v49;
  a2[1] = v51;
  return v48;
}

void *CFXNotificationHandlerCopy(void *result, void *aBlock, CFTypeRef cf, int a4)
{
  v4 = result;
  *result = 0;
  result[1] = 0;
  if ((a4 & 0x20000) != 0)
  {
    if (aBlock)
    {
      result = _Block_copy(aBlock);
      *v4 = result;
    }

    if (cf)
    {
      result = CFRetain(cf);
      v4[1] = result;
    }
  }

  else if ((a4 & 0x40000) != 0 || (a4 & 0x80000) != 0)
  {
    *result = aBlock;
  }

  return result;
}

CFTypeRef _CFBundleCopyLanguageSearchListInBundle(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 112));
  v2 = *(a1 + 40);
  if (v2)
  {
    goto LABEL_33;
  }

  os_unfair_lock_unlock((a1 + 112));
  v3 = _CFBundleCopyBundleLocalizations(a1, 0);
  v4 = _CFBundleCopyUserLanguages();
  DevelopmentRegion = CFBundleGetDevelopmentRegion(a1);
  v2 = _CFBundleCopyPreferredLanguagesInList(v3, DevelopmentRegion, v4, 1, *(a1 + 16), a1);
  if (!CFArrayGetCount(v2))
  {
    CFRelease(v2);
    v2 = _CFBundleCopyPreferredLanguagesInList(v3, @"en_US", v4, 1, *(a1 + 16), a1);
  }

  if (!CFArrayGetCount(v2) && v3 && CFArrayGetCount(v3) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    CFRelease(v2);
    v2 = _CFBundleCopyPreferredLanguagesInList(v3, ValueAtIndex, v4, 1, *(a1 + 16), a1);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (DevelopmentRegion)
  {
    v13.length = CFArrayGetCount(v2);
    v13.location = 0;
    if (!CFArrayContainsValue(v2, v13, DevelopmentRegion))
    {
      CFArrayAppendValue(v2, DevelopmentRegion);
    }

    if (!v3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v3)
  {
    Count = CFArrayGetCount(v3);
    v14.location = 0;
    v14.length = Count;
    if (CFArrayContainsValue(v3, v14, @"en"))
    {
      v8.length = CFArrayGetCount(v2);
      v9 = @"en";
    }

    else
    {
      v15.location = 0;
      v15.length = Count;
      if (CFArrayContainsValue(v3, v15, @"English"))
      {
        v8.length = CFArrayGetCount(v2);
        v9 = @"English";
      }

      else
      {
        v16.location = 0;
        v16.length = Count;
        if (!CFArrayContainsValue(v3, v16, @"en_US"))
        {
LABEL_24:
          CFRelease(v3);
          goto LABEL_25;
        }

        v8.length = CFArrayGetCount(v2);
        v9 = @"en_US";
      }
    }

    v8.location = 0;
    if (!CFArrayContainsValue(v2, v8, v9))
    {
      CFArrayAppendValue(v2, v9);
    }

    goto LABEL_24;
  }

LABEL_25:
  if (!CFArrayGetCount(v2))
  {
    if (_defaultLocalization)
    {
      v10 = _defaultLocalization;
    }

    else
    {
      v10 = @"en";
    }

    CFArrayAppendValue(v2, v10);
  }

  os_unfair_lock_lock_with_options();
  if (*(a1 + 40))
  {
    CFRelease(v2);
    v2 = *(a1 + 40);
  }

  else
  {
    *(a1 + 40) = v2;
  }

LABEL_33:
  v11 = CFRetain(v2);
  os_unfair_lock_unlock((a1 + 112));
  return v11;
}

uint64_t _CFBundleResourceLogger(uint64_t a1, uint64_t a2)
{
  if (_CFBundleResourceLogger_onceToken != -1)
  {
    _CFBundleResourceLogger_cold_1();
  }

  return _CFBundleResourceLogger__log;
}

_DWORD *__NSCFDictionaryCreateMutable(__objc2_class **a1, unint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{
  if (__FoundationPresent_static_init_0 != -1)
  {
    __NSCFDictionaryCreateMutable_cold_1();
  }

  if (!__FoundationPresent_present_0 || &__kCFAllocatorSystemDefault != a1 && (a1 || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    return 0;
  }

  if (a3 == &kCFTypeDictionaryKeyCallBacks && a4 == &kCFTypeDictionaryValueCallBacks)
  {
    v9 = 0;
    goto LABEL_16;
  }

  if (a3 != &kCFCopyStringDictionaryKeyCallBacks || a4 != &kCFTypeDictionaryValueCallBacks)
  {
    return 0;
  }

  v9 = 3;
LABEL_16:

  return __NSDictionaryM_new(0, 0, a2, v9);
}

ConstStringPtr CFStringGetPascalStringPtr(CFStringRef theString, CFStringEncoding encoding)
{
  if ((theString & 0x8000000000000000) != 0)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E69E5910];
    if ((~theString & 0xC000000000000007) == 0)
    {
      v5 = 0;
    }

    v6 = v5 ^ theString;
    do
    {
      if ((v6 & 7) == *(MEMORY[0x1E69E5900] + v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != 7);
    v7 = v4 | v6;
    v8 = v4 & 7;
    v9 = (v7 >> 55) + 8;
    if (v8 == 7)
    {
      LODWORD(v8) = v9;
    }

    if ((v8 & 0xFFFFFFFD) == 0)
    {
      return 0;
    }
  }

  if (CF_IS_OBJC(7uLL, theString))
  {
    return 0;
  }

  v10 = atomic_load(&theString->info);
  if ((v10 & 4) == 0)
  {
    return 0;
  }

  v11 = atomic_load(&theString->info);
  if ((v11 & 0x10) != 0)
  {
    return 0;
  }

  v12 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v12 = __CFStringComputeEightBitStringEncoding();
  }

  if (v12 == encoding)
  {
    goto LABEL_16;
  }

  v16 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v16 = __CFStringComputeEightBitStringEncoding();
  }

  if (v16 != 1536)
  {
    return 0;
  }

  if (BYTE1(encoding) > 7u)
  {
    result = 0;
    if (BYTE1(encoding) > 0xAu)
    {
      if (BYTE1(encoding) != 11)
      {
        if (BYTE1(encoding) == 12)
        {
          return result;
        }

        goto LABEL_43;
      }

      if (encoding - 3059 > 0xC)
      {
        goto LABEL_16;
      }

      v22 = 1 << (encoding + 13);
      v23 = 4099;
    }

    else
    {
      if (BYTE1(encoding) == 8)
      {
        return result;
      }

      if (BYTE1(encoding) != 10)
      {
        goto LABEL_43;
      }

      if (encoding - 2561 > 0xF)
      {
        goto LABEL_16;
      }

      v22 = 1 << (encoding - 1);
      v23 = 32785;
    }

    if ((v22 & v23) != 0)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (BYTE1(encoding) > 1u)
  {
    if (BYTE1(encoding) == 2)
    {
      if (encoding == 518)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (BYTE1(encoding) == 6)
    {
      if (encoding != 1536)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_43:
    if ((encoding & 0xFF00) > 0xC00)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (BYTE1(encoding))
  {
    if (encoding != 134217984)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if ((encoding > 0x22 || ((1 << encoding) & 0x600000032) == 0) && encoding != 152)
  {
LABEL_16:
    v13 = atomic_load(&theString->info);
    p_data = &theString->data;
    if ((v13 & 0x60) != 0)
    {
      result = *p_data;
    }

    else
    {
      v17 = atomic_load(&theString->info);
      result = &p_data[(v17 & 5) != 4];
    }

    v18 = atomic_load(&theString->info);
    if ((v18 & 5) == 4)
    {
      return result;
    }

    v19 = atomic_load(&theString->info);
    if ((v19 & 5) == 4)
    {
      v20 = *result;
    }

    else
    {
      v21 = atomic_load(&theString->info);
      v20 = (v21 & 0x60) != 0 ? theString->length : *p_data;
    }

    if (v20 == *result)
    {
      return result;
    }

    return 0;
  }

  return result;
}

CFIndex CFArrayGetFirstIndexOfValue(CFArrayRef theArray, CFRange range, const void *value)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_2;
  }

  v12 = atomic_load(theArray + 1);
  v13 = (v12 >> 2) & 3;
  if (v13)
  {
    if (v13 == 1)
    {
LABEL_2:
      v7 = &kCFTypeArrayCallBacks;
      goto LABEL_3;
    }

    v14 = atomic_load(theArray + 1);
    v15 = v14 & 3;
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = (theArray + 48);
    }

    if (v15 == 2)
    {
      v7 = (theArray + 48);
    }

    else
    {
      v7 = v16;
    }
  }

  else
  {
    v7 = &__kCFNullArrayCallBacks;
  }

LABEL_3:
  if (length < 1)
  {
    return -1;
  }

  v8 = 0;
  for (i = location; ; ++i)
  {
    v10 = [(__CFArray *)theArray objectAtIndex:i];
    if (v10 == value)
    {
      break;
    }

    equal = v7->equal;
    if (equal && equal(value, v10))
    {
      return i;
    }

    ++v8;
    if (!--length)
    {
      return -1;
    }
  }

  return v8 + location;
}

void *CFBasicHashApply(void *result, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(result + 5);
  v3 = __CFBasicHashTableSizes[*(result + 26)];
  if (v2)
  {
    v4 = v3 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      v11 = 0u;
      v12 = 0u;
      result = CFBasicHashGetBucket(v6, v7 - 1, &v11);
      if (*(&v12 + 1))
      {
        v8 = *(a2 + 16);
        v10[0] = v11;
        v10[1] = v12;
        result = v8(a2, v10);
        if (!result)
        {
          return result;
        }

        v2 -= result != 0;
      }
    }

    while (v2 >= 1 && v7++ < v3);
  }

  return result;
}

uint64_t CFBasicHashGetBucket@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = 0;
  v4 = a3 + 1;
  a3[2] = 0;
  a3[3] = 0;
  *a3 = a2;
  v5 = a1 + 40;
  result = *(*(a1 + 40) + 8 * a2);
  if ((result - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    *v4 = 0;
    a3[2] = 0;
    a3[3] = 0;
    return result;
  }

  v7 = *(a1 + 18);
  if ((v7 & 0x18) != 0)
  {
    v8 = *(v5 + (v7 & 0x18));
    v9 = (v7 >> 5) & 3;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v10 = *(v8 + 4 * a2);
      }

      else
      {
        v10 = *(v8 + 8 * a2);
      }
    }

    else if (v9)
    {
      v10 = *(v8 + 2 * a2);
    }

    else
    {
      v10 = *(v8 + a2);
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = -1;
  if (result != 2780474809)
  {
    v11 = result;
  }

  if (result == 2814029233)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  a3[2] = v12;
  a3[3] = v10;
  if ((v7 & 4) != 0)
  {
    result = *(*(a1 + 48) + 8 * a2);
    v13 = result == 2814029233;
LABEL_23:
    if (v13)
    {
      result = 0;
    }

    else if (result == 2780474809)
    {
      result = -1;
    }

    goto LABEL_30;
  }

  v13 = result == 2814029233;
  if ((v7 & 0x8000) == 0)
  {
    goto LABEL_23;
  }

  if (result == 2814029233)
  {
    result = 0;
  }

  else if (result == 2780474809)
  {
    result = -1;
  }

  v14 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(a1 + 32)) & 0xF8)) + 8 * ((*(a1 + 32) >> 54) & 0x1FLL));
  if (v14)
  {
    result = v14(result);
  }

LABEL_30:
  *v4 = result;
  return result;
}

CFDictionaryRef CFDictionaryCreateCopy(CFAllocatorRef allocator, CFDictionaryRef theDict)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    return [(__CFDictionary *)theDict copyWithZone:0];
  }

  else
  {
    Copy = CFBasicHashCreateCopy(allocator, theDict, v4, v5, v6, v7, v8, v9);
    v18 = Copy;
    if (Copy)
    {
      v19 = atomic_load(Copy + 1);
      v20 = v19;
      do
      {
        atomic_compare_exchange_strong(Copy + 1, &v20, v19 | 0x40);
        v21 = v20 == v19;
        v19 = v20;
      }

      while (!v21);
      _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 0x12uLL, v12, v13, v14, v15, v16, v17);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }
    }

    return v18;
  }
}

uint64_t __CFBinaryPlistParseASCIIString(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a3 == -1)
  {
    return 0;
  }

  v5 = *a3;
  v4 = a3 + 1;
  v6 = v5 & 0xF;
  if (v6 != 15)
  {
    goto LABEL_22;
  }

  if (a1 + a2 < v4)
  {
    return 0;
  }

  v7 = v4 + 1;
  if ((*v4 & 0xF0) != 0x10)
  {
    return 0;
  }

  v8 = *v4 & 0xF;
  v9 = 1 << v8;
  if (__CFADD__(1 << v8, v7) || &v4[v9] > a1 + a2)
  {
    return 0;
  }

  v10 = (1 << v8);
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v6 = bswap32(*(v4 + 1));
      goto LABEL_21;
    }

    if (v10 == 8)
    {
      v6 = bswap64(*(v4 + 1));
      goto LABEL_20;
    }

LABEL_14:
    if (v8 > 7)
    {
      v6 = 0;
      goto LABEL_21;
    }

    v6 = 0;
    v11 = v9;
    v12 = v4 + 1;
    do
    {
      v13 = *v12++;
      v6 = v13 | (v6 << 8);
      --v11;
    }

    while (v11);
LABEL_20:
    if ((v6 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v10 == 1)
  {
    v6 = *v7;
    goto LABEL_21;
  }

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v6 = __rev16(*(v4 + 1));
LABEL_21:
  v4 = &v7[v9];
LABEL_22:
  if (!__CFADD__(v6, v4) && a1 + a2 >= &v4[v6 - 1])
  {
    return (*(a4 + 16))(a4, v4, v6);
  }

  return 0;
}

void __rehashs(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = __NSSetSizes_0[2 * a2];
  v5 = malloc_type_calloc(1uLL, 8 * v4, 0x80040B8603338uLL);
  v6 = *(a1 + 28);
  v7 = *(a1 + 16);
  if (v6 >> 26)
  {
    v8 = 0;
    v9 = *(__NSSetSizes_0 + ((v6 >> 23) & 0x1F8));
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      v11 = v7[v8];
      if (v11)
      {
        v12 = v11 == &___NSSetM_DeletedMarker;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = [v7[v8] hash] % v4;
        do
        {
          v14 = v13;
          v15 = v5[v13];
          v16 = v13 + 1;
          if (v16 >= v4)
          {
            v17 = v4;
          }

          else
          {
            v17 = 0;
          }

          v13 = v16 - v17;
        }

        while (v15);
        v5[v14] = v11;
      }

      ++v8;
    }

    while (v8 != v10);
  }

  free(v7);
  *(a1 + 16) = v5;
  *(a1 + 28) = *(a1 + 28) & 0x3FFFFFF | (v2 << 26);
}

void __CFURLDeallocate(unint64_t *cf)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    __CFURLDeallocate_cold_1();
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) == 0)
  {
    v2 = CFGetAllocator(cf);
    v3 = cf + 3;
    if (atomic_load(cf + 3))
    {
      v5 = atomic_load(v3);
      CFRelease(v5);
    }

    atomic_store(0xDEADBEEFuLL, v3);
    v6 = cf[4];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = cf[5];
    if (v7)
    {
      v8 = v7[1];
      if (!v8 || (CFRelease(v8), (v7 = cf[5]) != 0))
      {
        CFAllocatorDeallocate(v2, v7);
      }
    }

    v9 = cf + 6;
    v10 = atomic_load(v9);
    if (v10)
    {
      CFRelease(v10);
    }

    atomic_store(0xDEADBEEFuLL, v9);
  }
}

CFURLRef CFURLGetBaseURL(CFURLRef anURL)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetBaseURL_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1 && !CF_IS_OBJC(0x1DuLL, anURL))
  {
    return *(anURL + 4);
  }

  return [(__CFURL *)anURL baseURL];
}

unint64_t *_CFURLCreateWithFileSystemRepresentation(CFAllocatorRef alloc, UInt8 *__s1, CFIndex numBytes, uint64_t a4, CFTypeRef cf)
{
  v6 = a4;
  v35 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCreateWithFileSystemRepresentation_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v10 = CFStringCreateWithBytes(alloc, __s1, numBytes, 0x8000100u, 0);
    if (v10)
    {
      v11 = v10;
      v12 = [NSURL _fileURLWithPath:v10 isDirectory:v6 != 0 relativeToURL:cf];
      CFRelease(v11);
      return v12;
    }

    return 0;
  }

  if (numBytes >= 1)
  {
    v14 = *__s1;
    v34 = 0;
    if (v14 == 47)
    {
      v15 = numBytes < 0xA || strncmp(__s1, "/.file/id=", 0xAuLL) != 0;
      v25 = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(alloc, __s1, numBytes, v6, 1, 0, &v34);
      cf = 0;
      if (!v25)
      {
        return 0;
      }

      v23 = v25;
      v17 = 0;
      v24 = 72;
    }

    else
    {
      v17 = cf == 0;
      if (!cf)
      {
        cf = _CFURLCreateCurrentDirectoryURL(alloc);
      }

      v18 = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(alloc, __s1, numBytes, v6, v14 == 47, 0, &v34);
      if (!v18)
      {
        v16 = 0;
LABEL_45:
        if (v17)
        {
          if (cf)
          {
            CFRelease(cf);
          }
        }

        return v16;
      }

      v23 = v18;
      v15 = 1;
      v24 = 56;
    }

    Instance = _CFRuntimeCreateInstance(alloc, 0x1DuLL, v24, 0, v19, v20, v21, v22);
    v16 = Instance;
    if (Instance)
    {
      *(Instance + 5) = 134217984;
      atomic_store(CFStringCreateCopy(alloc, v23), Instance + 3);
      if (cf)
      {
        v27 = CFURLCopyAbsoluteURL(cf);
      }

      else
      {
        v27 = 0;
      }

      v16[4] = v27;
      if (v14 == 47)
      {
        if (v34)
        {
          v28 = 4096;
        }

        else
        {
          v28 = 36864;
        }

        if (!v15)
        {
          v28 = 0x2000;
        }

        if (v6)
        {
          v29 = 1610696737;
        }

        else
        {
          v29 = 1610694689;
        }

        *(v16 + 4) = v29 | v28;
        *(v16 + 7) = xmmword_183377E70;
        Length = CFStringGetLength(v23) - 7;
        v16[9] = 7;
        v31 = 10;
      }

      else
      {
        if (v6)
        {
          v32 = 84000;
        }

        else
        {
          v32 = 81952;
        }

        *(v16 + 4) = v32 | ((v34 == 0) << 15);
        v33 = atomic_load(v16 + 3);
        Length = CFStringGetLength(v33);
        v16[7] = 0;
        v31 = 8;
      }

      v16[v31] = Length;
    }

    CFRelease(v23);
    goto LABEL_45;
  }

  if (!cf)
  {
    return 0;
  }

  return CFRetain(cf);
}

unint64_t _CFURLHasFileURLScheme(CFURLRef anURL, BOOL *a2)
{
  do
  {
    v3 = anURL;
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      _CFURLHasFileURLScheme_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      if (a2)
      {
        *a2 = [(__CFURL *)v3 scheme]!= 0;
      }

      return [(__CFURL *)v3 isFileURL];
    }

    anURL = CFURLGetBaseURL(v3);
  }

  while (anURL);
  v5 = CF_IS_OBJC(0x1DuLL, v3);
  if (!v5 && (v6 = *(v3 + 4), v6 >> 29))
  {
    if (a2)
    {
      *a2 = v6 & 1;
      v6 = *(v3 + 4);
    }

    return v6 >> 29 == 3;
  }

  else
  {
    v7 = CFURLCopyScheme(v3);
    if (v7)
    {
      v8 = v7;
      if (v7 == @"file")
      {
        v4 = 1;
        if (a2)
        {
LABEL_14:
          *a2 = 1;
        }
      }

      else
      {
        v4 = CFStringCompare(v7, @"file", 1uLL) == kCFCompareEqualTo;
        if (a2)
        {
          goto LABEL_14;
        }
      }

      CFRelease(v8);
      return v4;
    }

    v4 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return v4;
}

CFStringRef CFStringCreateWithBytes(CFAllocatorRef alloc, const UInt8 *bytes, CFIndex numBytes, CFStringEncoding encoding, Boolean isExternalRepresentation)
{
  if (isExternalRepresentation)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  return __CFStringCreateImmutableFunnel3(alloc, bytes, numBytes, *&encoding, v6, 0xFFFFFFFFFFFFFFFFLL, 0, v5);
}

CFStringRef CreateStringFromFileSystemRepresentationByAddingPercentEscapes(const __CFAllocator *a1, _BYTE *a2, uint64_t a3, int a4, int a5, int a6, char *a7)
{
  v11 = a3;
  v36[1] = *MEMORY[0x1E69E9840];
  v14 = (a4 != 0) | (8 * (a5 != 0)) | 0xC00;
  MEMORY[0x1EEE9AC00](a1, a2, a3);
  v18 = v36 - v17;
  if (v19 >= 1025)
  {
    v14 = 3 * v11 + 8 * v15 + v16;
    v21 = malloc_type_malloc(v14, 0x100004077774924uLL);
    if (!v21)
    {
      v33 = 0;
      v23 = 0;
      goto LABEL_67;
    }

    v20 = v21;
  }

  else
  {
    v20 = v36 - v17;
  }

  v22 = v20;
  if (a5)
  {
    strlcpy(v20, "file://", v14);
    v22 = v20 + 7;
  }

  if (a6)
  {
    if (v11 >= 1)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = a2[v24];
        if (!a2[v24])
        {
          break;
        }

        if (v25 == 47 || (sURLValidBytes[a2[v24]] & 1) == 0)
        {
          *v22 = 37;
          v22[1] = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[a2[v24] >> 4];
          v22[2] = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[a2[v24] & 0xF];
          v22 += 3;
          v23 = 1;
        }

        else
        {
          *v22++ = v25;
        }

        if (v11 == ++v24)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v28 = &a2[v24];
      goto LABEL_29;
    }
  }

  else if (v11 >= 1)
  {
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v27 = a2[v24];
      if (!a2[v24])
      {
        goto LABEL_28;
      }

      if (sURLValidBytes[v27])
      {
        *v22++ = v27;
      }

      else
      {
        *v22 = 37;
        v22[1] = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[a2[v24] >> 4];
        v22[2] = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[a2[v24] & 0xF];
        v22 += 3;
        v23 = 1;
      }

      if (v11 == ++v24)
      {
        goto LABEL_34;
      }
    }
  }

  v24 = 0;
  v23 = 0;
  v28 = a2;
LABEL_29:
  if (v24 < v11)
  {
    while (!*v28)
    {
      ++v24;
      ++v28;
      if (v11 == v24)
      {
        goto LABEL_34;
      }
    }
  }

  if (v24 == v11)
  {
LABEL_34:
    if (a4)
    {
      if (a6)
      {
        if (v22 - v20 >= 4 && (*(v22 - 3) != 37 || *(v22 - 2) != 50 || *(v22 - 1) != 70))
        {
          *v22 = 12837;
          v22[2] = 70;
          v22 += 3;
        }
      }

      else if (v11 >= 1 && a2[v11 - 1] != 47)
      {
        *v22++ = 47;
      }
    }

    else if (a6)
    {
      if (v11 >= 2 && v22 - v20 >= 4)
      {
        v29 = v22 - v20 - 3;
        v30 = v22;
        do
        {
          v31 = *(v30 - 3);
          v30 -= 3;
          if (v31 != 37 || *(v22 - 2) != 50 || *(v22 - 1) != 70)
          {
            break;
          }

          if (v11 < 3)
          {
            v22 = v30;
            break;
          }

          --v11;
          v22 = v30;
          v32 = v29 < 4;
          v29 -= 3;
        }

        while (!v32);
      }
    }

    else if (v11 >= 2)
    {
      v34 = &v22[-v11 + 1];
      while (a2[v11 - 1] == 47)
      {
        --v22;
        v32 = v11-- <= 2;
        if (v32)
        {
          v22 = v34;
          break;
        }
      }
    }

    v33 = CFStringCreateWithBytes(a1, v20, v22 - v20, 0x8000100u, 0);
  }

  else
  {
    v33 = 0;
  }

  if (v20 != v18)
  {
    free(v20);
  }

LABEL_67:
  if (a7)
  {
    *a7 = v23;
  }

  return v33;
}

double decodeTaggedTimeInterval(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  if (a1 == -1)
  {
    return -0.0;
  }

  if (a1 >> 60)
  {
    decodeTaggedTimeInterval_cold_1();
  }

  *&v2 = ((16 * a1) & 0x8000000000000000 | a1 & 0xFFFFFFFFFFFFFLL) + ((32 * a1) >> 57 << 52) + 0x3EF0000000000000;
  return v2;
}

unint64_t ___CFBasicHashFindBucket_Exponential_Indirect_NoCollision(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 26);
  v4 = __CFBasicHashTableSizes[v3];
  v5 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  if (v5)
  {
    a2 = v5(a2);
  }

  v6 = a2 / v4 % v4;
  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (!v6)
  {
    v6 = v4 - 1;
  }

  v8 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  result = a2 % v4;
  v11 = __CFBasicHashPrimitiveRoots[v3];
  while (*(v9 + 8 * result))
  {
    result = a2 % v4 + v11 * v6;
    if (v4 <= result)
    {
      result %= v4;
    }

    v11 *= __CFBasicHashPrimitiveRoots[v3];
    if (v4 <= v11)
    {
      v11 %= v4;
    }

    if (!--v7)
    {
      return -1;
    }
  }

  return result;
}

unint64_t *__NSOrderedSetM_new(id *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[1] = *MEMORY[0x1E69E9840];
  result = CFBasicHashCreate(&__kCFAllocatorSystemDefault, 0x7000u, __NSOrderedSetMCB, a4, a5, a6, a7, a8);
  if (result)
  {
    v12 = result;
    v21[0] = 0;
    v13 = _CFCreateArrayStorage(a2, 0, v21);
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      if (a1 && a2)
      {
        v15 = 0;
        do
        {
          if (CFBasicHashAddValue(v12, *a1, *a1))
          {
            if ((a3 & 1) == 0)
            {
              v16 = *a1;
            }

            v14[v15++] = *a1;
          }

          ++a1;
          --a2;
        }

        while (a2);
      }

      v17 = [NSMutableArray alloc];
      v18 = [(NSArray *)v17 _initByAdoptingBuffer:v14 count:v15 size:v21[0]];
      if (v18)
      {
        v19 = v18;
        v20 = objc_opt_self();
        result = __CFAllocateObject(v20, 0);
        if (result)
        {
          result[2] = v12;
          result[3] = v19;
          atomic_store(0, result + 1);
          return result;
        }

        CFRelease(v12);

        return 0;
      }

      if ((a3 & 1) == 0 && ((v15 - 1) & 0x8000000000000000) == 0)
      {
        do
        {
        }

        while (v15);
      }

      free(v14);
    }

    CFRelease(v12);
    return 0;
  }

  return result;
}

void *__NSArrayM_transferNew(void *a1, int a2, int a3)
{
  v6 = objc_opt_self();
  v7 = __CFAllocateObject(v6, 0);
  v8 = v7;
  if (v7)
  {
    v7[2] = a1;
    *(v7 + 6) = 0;
    *(v7 + 7) = a3;
    *(v7 + 8) = 1;
    *(v7 + 9) = a2;
  }

  else
  {
    free(a1);
  }

  return v8;
}

void CFDataGetBytes(CFDataRef theData, CFRange range, UInt8 *buffer)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    [(__CFData *)theData getBytes:buffer range:location, length];
  }

  else
  {
    if (location < 0)
    {
      v10 = dyld_program_sdk_at_least();
      if (v10)
      {
        CFDataGetBytes_cold_2();
      }

      CFDataGetBytes_cold_1(v10, v11);
    }

    else
    {
      v7 = *(theData + 2);
      if (location > v7)
      {
        v12 = dyld_program_sdk_at_least();
        if (v12)
        {
          CFDataGetBytes_cold_8();
        }

        CFDataGetBytes_cold_7(v12, v13);
      }

      else if ((length & 0x8000000000000000) != 0)
      {
        v14 = dyld_program_sdk_at_least();
        if (v14)
        {
          CFDataGetBytes_cold_4();
        }

        CFDataGetBytes_cold_3(v14, v15);
      }

      else if (location + length > v7)
      {
        v16 = dyld_program_sdk_at_least();
        if (v16)
        {
          CFDataGetBytes_cold_6();
        }

        CFDataGetBytes_cold_5(v16, v17);
      }
    }

    v8 = atomic_load(theData + 1);
    if ((v8 & 4) != 0)
    {
      v9 = (theData + 63) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v9 = *(theData + 5);
    }

    memmove(buffer, (v9 + location), length);
  }
}

unint64_t *__CFBagCreateGeneric(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 24);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0uLL;
  }

  v14 = v10;
  v16 = v11;
  v17 = v11;
  v13[0] = v8;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v9;
  v13[4] = v10;
  v15 = 0;
  return CFBasicHashCreate(a1, 0x2002u, v13, a4, a5, a6, a7, a8);
}

void CFArraySetValueAtIndex(CFMutableArrayRef theArray, CFIndex idx, const void *value)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v26[0] = value;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray setObject:value atIndex:idx];
    return;
  }

  if (*(theArray + 2) == idx)
  {
    _CFArrayReplaceValues(theArray, idx, 0, v26, 1);
    return;
  }

  v6 = atomic_load(theArray + 1);
  v7 = (v6 >> 2) & 3;
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = &kCFTypeArrayCallBacks;
      if ((theArray & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = atomic_load(theArray + 1);
      v10 = v9 & 3;
      if (v10 == 2)
      {
        v8 = (theArray + 48);
        if ((theArray & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v10)
        {
          v8 = 0;
        }

        else
        {
          v8 = (theArray + 48);
        }

        if ((theArray & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v8 = &__kCFNullArrayCallBacks;
    if ((theArray & 0x8000000000000000) == 0)
    {
LABEL_20:
      v12 = atomic_load(theArray + 1);
      if (v12 < 0)
      {
        v11 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v11 = (theArray - 16);
      }

      goto LABEL_23;
    }
  }

  v11 = &kCFAllocatorSystemDefault;
LABEL_23:
  v13 = *v11;
  v14 = atomic_load(theArray + 1);
  if ((v14 & 1 | 2) == 2)
  {
    v15 = atomic_load(theArray + 1);
    v16 = v15 & 3;
    if (v16 == 2)
    {
      v20 = (*(theArray + 5) + 8 * **(theArray + 5) + 16);
    }

    else if (v16)
    {
      v20 = 0;
    }

    else
    {
      v17 = atomic_load(theArray + 1);
      v18 = (~v17 & 0xC) == 0;
      v19 = 48;
      if (v18)
      {
        v19 = 88;
      }

      v20 = theArray + v19;
    }

    v21 = &v20[8 * idx];
  }

  else
  {
    v21 = 0;
  }

  retain = v8->retain;
  v23 = v26[0];
  if (retain)
  {
    v23 = retain(v13, v26[0]);
  }

  v24 = *v21;
  *v21 = v23;
  release = v8->release;
  if (release)
  {
    release(v13, v24);
  }

  ++*(theArray + 3);
}