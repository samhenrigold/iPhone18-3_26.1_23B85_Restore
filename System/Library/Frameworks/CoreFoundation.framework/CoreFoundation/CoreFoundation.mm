Boolean CFNumberGetValue(CFNumberRef number, CFNumberType theType, void *valuePtr)
{
  v3 = valuePtr;
  v18 = *MEMORY[0x1E69E9840];
  if ((number & 0x8000000000000000) != 0)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E69E5910];
    if ((~number & 0xC000000000000007) == 0)
    {
      v7 = 0;
    }

    v8 = v7 ^ number;
    v9 = v8 & 7;
    while (v9 != *(MEMORY[0x1E69E5900] + v6))
    {
      if (++v6 == 7)
      {
        goto LABEL_21;
      }
    }

    if (v6 == 3)
    {
      if (!valuePtr)
      {
        valuePtr = v17;
      }

      if (v9 == 7)
      {
        v10 = (v8 << 9) >> 12;
      }

      else
      {
        v10 = (2 * v8) >> 4;
      }

      v11 = (v8 & 0x40) == 0;
      v12 = 6;
      if (v11)
      {
        v12 = 4;
      }

      v13 = v10 >> v12;
      v14 = __CFNumberTypeTable[theType] & 0x1F;
      if (v14 > 3)
      {
        switch(v14)
        {
          case 4u:
            *valuePtr = v13;
            return 1;
          case 5u:
            *valuePtr = v13;
            return 1;
          case 6u:
            *valuePtr = v13;
            return 1;
        }
      }

      else
      {
        switch(v14)
        {
          case 1u:
            *valuePtr = v13;
            return 1;
          case 2u:
            *valuePtr = v13;
            return 1;
          case 3u:
            *valuePtr = v13;
            return 1;
        }
      }

      return __CFNumberGetValueCompat(number, theType, valuePtr);
    }
  }

LABEL_21:
  if (!CF_IS_OBJC(0x16uLL, number))
  {
    if (v3)
    {
      valuePtr = v3;
    }

    else
    {
      valuePtr = v17;
    }

    return __CFNumberGetValueCompat(number, theType, valuePtr);
  }

  v15 = __CFNumberTypeTable[theType] & 0x1FLL;

  return [(__CFNumber *)number _getValue:v3 forType:v15];
}

void *__NSSingleObjectArrayI_new(uint64_t a1, char a2)
{
  v4 = objc_opt_self();
  v5 = __CFAllocateObject(v4, 0);
  v6 = v5;
  if (v5)
  {
    v5[1] = a1;
    if (a1 >= 1 && (a2 & 1) == 0)
    {
      v7 = a1;
    }
  }

  return v6;
}

id __CFAllocateObject(objc_class *a1, size_t a2)
{
  Instance = class_createInstance(a1, a2);
  if (!Instance)
  {
    objc_exception_throw([NSException exceptionWithName:@"NSMallocException" reason:@"*** NSAllocateObject(): attempt to allocate object failed" userInfo:0]);
  }

  v3 = Instance;
  if (__CFOASafe == 1)
  {
    __CFAllocateObject_cold_1(Instance);
  }

  return v3;
}

id __NSArrayM_new(const void *a1, unint64_t a2, char a3)
{
  v6 = objc_opt_self();
  v7 = __CFAllocateObject(v6, 0);
  if (v7)
  {
    if (a2)
    {
      if (a2 >> 61)
      {
LABEL_4:

        return 0;
      }

      v10 = malloc_good_size(8 * a2);
      if (HIDWORD(v10))
      {
        __NSArrayM_new_cold_1();
      }

      v11 = v10;
      if (a1)
      {
        v12 = malloc_type_malloc(v10, 0x80040B8603338uLL);
        if (!v12)
        {
          goto LABEL_4;
        }

        v8 = v12;
        memmove(v12, a1, 8 * a2);
        if ((a3 & 1) == 0)
        {
          v13 = a2;
          v14 = v8;
          do
          {
            if ((*v14 & 0x8000000000000000) == 0)
            {
              v15 = *v14;
            }

            ++v14;
            --v13;
          }

          while (v13);
        }

        bzero(&v8[a2], v11 - 8 * a2);
      }

      else
      {
        v16 = malloc_type_calloc(1uLL, v10, 0x80040B8603338uLL);
        if (!v16)
        {
          goto LABEL_4;
        }

        v8 = v16;
        LODWORD(a2) = 0;
      }

      v9 = v11 >> 3;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v7 + 2) = v8;
    *(v7 + 6) = 0;
    *(v7 + 7) = v9;
    *(v7 + 8) = 1;
    *(v7 + 9) = a2;
  }

  return v7;
}

uint64_t _NSIsNSArray(uint64_t a1)
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

  return MethodImplementation(v1, sel_isNSArray__);
}

void *__NSArrayI_transferNew(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = __CFAllocateObject(v4, 0);
  v6 = v5;
  if (v5)
  {
    v5[1] = a2;
    v5[2] = a1;
  }

  else
  {
    free(a1);
  }

  return v6;
}

void *__NSSingleObjectSetI_new(uint64_t a1, char a2)
{
  v4 = objc_opt_self();
  v5 = __CFAllocateObject(v4, 0);
  v6 = v5;
  if (v5)
  {
    v5[1] = a1;
    if (a1 >= 1 && (a2 & 1) == 0)
    {
      v7 = a1;
    }
  }

  return v6;
}

void *_CFCreateArrayStorage(unint64_t a1, int a2, size_t *a3)
{
  if (a1 >> 61)
  {
    goto LABEL_7;
  }

  v5 = malloc_good_size(8 * a1);
  if (HIDWORD(v5))
  {
    _CFCreateArrayStorage_cold_1();
  }

  v6 = v5;
  result = a2 ? malloc_type_calloc(1uLL, v5, 0x80040B8603338uLL) : malloc_type_malloc(v5, 0x80040B8603338uLL);
  *a3 = v6 >> 3;
  if (!result)
  {
LABEL_7:
    _CFCreateArrayStorage_cold_2();
  }

  return result;
}

unint64_t *__NSSetM_new(uint64_t a1, unint64_t a2, char a3)
{
  v4 = 0;
  v5 = 0;
  while (__NSSetCapacities_0[v4 / 2] < a2)
  {
    v5 -= 0x4000000;
    v4 += 2;
    if (v4 == 128)
    {
      __break(1u);
      break;
    }
  }

  v6 = __NSSetSizes_0[v4];
  v7 = objc_opt_self();
  v8 = __CFAllocateObject(v7, 0);
  atomic_store(0, v8 + 1);
  v8[2] = 0;
  *(v8 + 6) = 1;
  v22 = v8;
  *(v8 + 7) = (*(v8 + 7) & 0x3FFFFFF) - v5;
  if (a2)
  {
    v9 = malloc_type_calloc(1uLL, 8 * v6, 0x80040B8603338uLL);
    v22[2] = v9;
    if (a1)
    {
      v10 = v9;
      v11 = 0;
      v23 = v22 + 12;
      if (v6 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v6;
      }

      do
      {
        v13 = *(a1 + 8 * v11);
        v14 = [v13 hash] % v6;
        v15 = v12;
        v16 = v6;
        while (1)
        {
          v17 = v10[v14];
          if (!v17)
          {
            break;
          }

          if (v17 == &___NSSetM_DeletedMarker)
          {
            if (v16 == v6)
            {
              v16 = v14;
            }
          }

          else if (v17 == v13 || ([v17 isEqual:v13] & 1) != 0)
          {
            v16 = v14;
            goto LABEL_26;
          }

          if (v14 + 1 >= v6)
          {
            v18 = v6;
          }

          else
          {
            v18 = 0;
          }

          v14 = v14 + 1 - v18;
          if (!--v15)
          {
            goto LABEL_26;
          }
        }

        if (v16 == v6)
        {
          v16 = v14;
        }

LABEL_26:
        if (!v10[v16])
        {
          v19 = *(a1 + 8 * v11);
          v10[v16] = v19;
          if ((a3 & 1) == 0 && v19 >= 1)
          {
            v20 = v19;
          }

          *(v23 + 4) = *(v23 + 4) & 0xFC000000 | (*(v23 + 4) + 1) & 0x3FFFFFF;
        }

        ++v11;
      }

      while (v11 != a2);
    }
  }

  return v22;
}

void __NSSetEnumerate(void *a1, char a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    if (a2)
    {
      v6 = __CFActiveProcessorCount();
      if (v6 < 2)
      {
        a2 = 0;
      }
    }

    else
    {
      v6 = 1;
    }

    if (a2)
    {
      v8 = [a1 count];
      v9 = 32;
      v10 = 16;
      v11 = 4;
      if (v8 < 4 * v6)
      {
        v11 = 1;
      }

      if (v8 < 16 * v6)
      {
        v10 = v11;
      }

      if (v8 < 32 * v6)
      {
        v9 = v10;
      }

      if (48 * v6 > v8)
      {
        v12 = v9;
      }

      else
      {
        v12 = 48;
      }

      if (v8 < v6 << 6)
      {
        v13 = v12;
      }

      else
      {
        v13 = 64;
      }

      v14 = (v8 + v13 - 1) / v13;
      v15 = _CFAutoreleasePoolPush();
      v16 = [a1 objectEnumerator];
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v33 = 0;
      v29 = 850045857;
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x2020000000;
      v23 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ____NSSetEnumerate_block_invoke;
      block[3] = &unk_1E6D7D970;
      block[6] = v22;
      block[7] = v13;
      block[8] = &v29;
      block[4] = v16;
      block[5] = a3;
      dispatch_apply(v14, 0, block);
      _CFAutoreleasePoolPop(v15);
      _Block_object_dispose(v22, 8);
    }

    else
    {
      v7 = _CFAutoreleasePoolPush();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = 0;
        *&v30 = &v29;
        *(&v30 + 1) = 0x2020000000;
        LOBYTE(v31) = 0;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ____NSSetEnumerate_block_invoke_2;
        v20[3] = &unk_1E6D7D998;
        v20[4] = a3;
        v20[5] = &v29;
        CFBasicHashApply(a1, v20);
        _Block_object_dispose(&v29, 8);
      }

      else
      {
        LOBYTE(v29) = 0;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = [a1 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v17)
        {
          v18 = *v26;
LABEL_24:
          v19 = 0;
          while (1)
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(a1);
            }

            __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(a3);
            if (v29)
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [a1 countByEnumeratingWithState:&v25 objects:v24 count:16];
              if (v17)
              {
                goto LABEL_24;
              }

              break;
            }
          }
        }
      }

      _CFAutoreleasePoolPop(v7);
    }
  }
}

void _CFRelease(uint64_t cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  name[32] = *MEMORY[0x1E69E9840];
  v6 = atomic_load((cf + 8));
  v7 = (v6 >> 8) & 0x3FF;
  if (v7 > 0x47)
  {
    v9 = v7 - 72;
    if (v7 - 72 >= dword_1ED40C410[0] || (v10 = __CFRuntimeClassTables[v9 >> 6]) == 0)
    {
      v11 = 0;
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_7;
      }

LABEL_40:
      _CFRelease_cold_1(name, v11);
    }

    v8 = (v10 + 8 * (v9 & 0x3F));
  }

  else
  {
    v8 = (&__CFRuntimeBuiltinClassTable + v7);
  }

  v11 = *v8;
  if ((v6 & 0x200000) != 0)
  {
    goto LABEL_40;
  }

LABEL_7:
  if (__CFOASafe != 1)
  {
    v12 = -1;
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_92;
  }

  v12 = CFGetRetainCount(cf) - 1;
  if ((v6 & 0x800000) != 0)
  {
LABEL_92:
    __CFCheckCFInfoPACSignature(cf);
    v49 = *(v11 + 80);
    if (!v49 || (*v11 & 8) == 0)
    {
      _CFRelease_cold_3();
    }

    if (v6 <= 0xFFFFEFFFFFFFFFFFLL)
    {
      _CFRelease_cold_2();
    }

    v49(-1, cf);
LABEL_96:
    if (__CFOASafe == 1)
    {
      _CFRelease_cold_5(cf, v12, a3, a4, a5);
    }

    return;
  }

  while (1)
  {
LABEL_9:
    while (v6 >> 44 != 1)
    {
      if (!(v6 >> 44))
      {
        return;
      }

      v13 = v6;
      atomic_compare_exchange_strong((cf + 8), &v13, v6 - 0x100000000000);
      v20 = v13 == v6;
      v6 = v13;
      if (v20)
      {
        goto LABEL_96;
      }
    }

    __CFCheckCFInfoPACSignature(cf);
    if ((*v11 & 4) != 0)
    {
      v15 = *(v11 + 72);
      if (v15)
      {
        v15(cf);
      }
    }

    v16 = v6;
    atomic_compare_exchange_strong((cf + 8), &v16, v6 | 0x400000);
    v20 = v16 == v6;
    v6 = v16;
    if (v20)
    {
      v17 = *(v11 + 32);
      if (v17)
      {
        v17(cf);
      }

      v18 = (cf + 8);
      v19 = atomic_load((cf + 8));
      v20 = v7 == 2 || v19 >> 44 == 1;
      v21 = v20;
      if (v20)
      {
        do
        {
          v6 = v19;
          atomic_compare_exchange_strong((cf + 8), &v19, (v19 | 0x200000) - 0x100000000000);
        }

        while (v19 != v6);
      }

      else
      {
        do
        {
          v6 = atomic_load(v18);
          v22 = v6;
          atomic_compare_exchange_strong(v18, &v22, v6 & 0xFFFFFFFFFFBFFFFFLL);
        }

        while (v22 != v6);
      }

      if (v21)
      {
        break;
      }
    }
  }

  if (__CFOASafe == 1)
  {
    _CFRelease_cold_4(cf, v14, a3, a4, a5);
  }

  if (v7 == 2)
  {

    __CFAllocatorDeallocate(cf);
    return;
  }

  v23 = atomic_load((cf + 8));
  if (v23 < 0)
  {
    v27 = 0;
    v26 = 1;
    v25 = &__kCFAllocatorSystemDefault;
  }

  else
  {
    v24 = CFGetAllocator(cf);
    v25 = v24;
    if (&__kCFAllocatorSystemDefault == v24)
    {
      v26 = 1;
    }

    else if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = &__kCFAllocatorSystemDefault == CFAllocatorGetDefault();
    }

    if (cf < 0 || (v28 = atomic_load((cf + 8)), CF_IS_OBJC((v28 >> 8) & 0x3FF, cf)) || (v29 = atomic_load((cf + 8)), (v29 & 0x3FF00) == 0x200))
    {
      v27 = 0;
    }

    else
    {
      v47 = atomic_load((cf + 8));
      if (v47 < 0)
      {
        v48 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v48 = (cf - 16);
      }

      v27 = *v48;
    }
  }

  v30 = __CFZombieEnabled;
  Class = object_getClass(cf);
  v32 = Class;
  if (!v30)
  {
    if (object_getClass(Class))
    {
      objc_destructInstance(cf);
    }

    goto LABEL_83;
  }

  os_unfair_lock_lock_with_options();
  v33 = 0;
  v34 = &__CFRuntimeBuiltinClassTable;
  v35 = __CFRuntimeBuiltinObjCClassTable;
  while (v33 < dword_1ED40C410[0] + 72)
  {
    v36 = v33 - 72;
    if (v33 >= 0x48)
    {
      if (v36 >= dword_1ED40C410[0])
      {
        v38 = 0;
      }

      else
      {
        v38 = __CFRuntimeClassTables[(v36 >> 6) + 16];
        if (v38)
        {
          v38 = *(v38 + (v36 & 0x3F));
        }
      }

      if (v38 != v32 || v36 >= dword_1ED40C410[0] || (v39 = __CFRuntimeClassTables[v36 >> 6]) == 0)
      {
LABEL_68:
        v41 = 0;
        goto LABEL_69;
      }

      v37 = (v39 + 8 * (v36 & 0x3F));
    }

    else
    {
      v37 = v34;
      if (__CFRuntimeBuiltinObjCClassTable[v33] != v32)
      {
        goto LABEL_68;
      }
    }

    v40 = *v37;
    if (!v40)
    {
      goto LABEL_68;
    }

    v41 = *(v40 + 8);
LABEL_69:
    ++v33;
    ++v35;
    ++v34;
    if (v41)
    {
      os_unfair_lock_unlock(&__CFBigRuntimeFunnel);
      goto LABEL_76;
    }
  }

  os_unfair_lock_unlock(&__CFBigRuntimeFunnel);
  if (object_getClass(v32))
  {
    v41 = class_getName(v32);
  }

  else
  {
    v41 = 0;
  }

LABEL_76:
  v42 = "$class-unknown$";
  if (v41)
  {
    v42 = v41;
  }

  name[0] = 0;
  asprintf(name, "_NSZombie_%s", v42);
  v43 = objc_lookUpClass(name[0]);
  if (!v43)
  {
    v44 = objc_lookUpClass("_NSZombie_");
    v43 = objc_duplicateClass(v44, name[0], 0);
  }

  free(name[0]);
  if (object_getClass(v32))
  {
    objc_destructInstance(cf);
  }

  v45 = __CFDeallocateZombies;
  object_setClass(cf, v43);
  if (v45)
  {
LABEL_83:
    v46 = -16;
    if (v26)
    {
      v46 = 0;
    }

    CFAllocatorDeallocate(v25, (cf + v46));
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

uint64_t __NSSetM_copy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    a1 = __cf_tsanReadFunction(a1, v3, __CFTSANTagMutableSet);
  }

  v5 = *(v4 + 28) & 0x3FFFFFF;
  if (atomic_load((v4 + 8)))
  {
    if (v5 >= 2)
    {
      goto LABEL_5;
    }

LABEL_10:
    MEMORY[0x1EEE9AC00](a1, a2, a3);
    v14 = v16 - v13;
    [v4 getObjects:v16 - v13 count:v5];
    return [objc_allocWithZone(NSSet) initWithObjects:v14 count:v5];
  }

  if (v5 <= 3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!atomic_load((v4 + 8)))
  {
    v8 = _cow_create(v4, 1);
    v9 = 0;
    atomic_compare_exchange_strong((v4 + 8), &v9, v8);
    if (v9)
    {
      free(v8);
    }
  }

  v10 = objc_opt_self();
  v11 = __CFAllocateObject(v10, 0);
  v12 = atomic_load((v4 + 8));
  _cow_copy(v4, 1, v12, __NSSet_cowCallbacks, v11, 0);
  return v11;
}

uint64_t CFStringHashISOLatin1CString(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 97)
  {
    v5 = 0;
    v4 = a2;
    do
    {
      v4 = a1[v5 + 3] + 67503105 * v4 + 257 * (257 * ((a1[v5] | (a1[v5] << 8)) + a1[v5 + 1]) + a1[v5 + 2]);
      v6 = v5 >= 0x1C;
      v5 += 4;
    }

    while (!v6);
    v7 = 0;
    do
    {
      v8 = &a1[(a2 >> 1) - 16];
      v4 = v8[v7 + 3] + 67503105 * v4 + 257 * (257 * ((v8[v7] | (v8[v7] << 8)) + v8[v7 + 1]) + v8[v7 + 2]);
      v9 = v7 - 16;
      v7 += 4;
    }

    while (v9 < 12);
    v10 = &a1[a2 - 32];
    do
    {
      v4 = v10[3] + 67503105 * v4 + 257 * (257 * ((*v10 | (*v10 << 8)) + v10[1]) + v10[2]);
      v10 += 4;
    }

    while (v10 < &a1[a2]);
  }

  else
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) < 1)
    {
      v2 = a1;
      v4 = a2;
      v3 = a1;
    }

    else
    {
      v2 = a1;
      v3 = a1;
      v4 = a2;
      do
      {
        v4 = v3[3] + 67503105 * v4 + 257 * (257 * ((*v3 | (*v3 << 8)) + v3[1]) + v3[2]);
        v3 += 4;
        v2 += 4;
      }

      while (v3 < &a1[a2 & 0xFFFFFFFFFFFFFFFCLL]);
    }

    if (v3 < &a1[a2])
    {
      v11 = (&a1[a2] - v2);
      do
      {
        v12 = *v3++;
        v4 = 257 * v4 + v12;
        --v11;
      }

      while (v11);
    }
  }

  return (v4 << (a2 & 0x1F)) + v4;
}

unint64_t *_CFRuntimeCreateInstance(__objc2_class **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0x47)
  {
    v12 = *(&__CFRuntimeBuiltinClassTable + a2);
    if (!v12)
    {
      return 0;
    }

LABEL_10:
    v16 = *v12;
    if ((*v12 & 0x10) != 0)
    {
      v17 = &__kCFAllocatorSystemDefault;
    }

    else
    {
      v17 = a1;
    }

    if ((v16 & 8) != 0 && !v12[10])
    {
      CFLog(4, @"*** _CFRuntimeCreateInstance() found inconsistent class '%s'.", a3, a4, a5, a6, a7, a8, v12[1]);
      return 0;
    }

    v18 = v17;
    if (!v17)
    {
      v19 = _CFGetTSD(1);
      if (v19)
      {
        v18 = v19;
      }

      else
      {
        v18 = &__kCFAllocatorSystemDefault;
      }
    }

    if (&__kCFAllocatorNull == v18)
    {
      return 0;
    }

    if (&__kCFAllocatorSystemDefault == v18)
    {
      v21 = 0;
    }

    else if (v18)
    {
      v21 = 1;
    }

    else
    {
      v21 = &__kCFAllocatorSystemDefault != CFAllocatorGetDefault();
    }

    if ((*v12 & 0x10) != 0)
    {
      v22 = v12[11];
    }

    else
    {
      v22 = 16;
    }

    v23 = 16;
    if (!v21)
    {
      v23 = 0;
    }

    v24 = a3 + v23 + 31;
    v25 = (403 * (a2 ^ 0xC9DC5)) & 0xFFFFFLL | 0xCF000000;
    if ((*v12 & 0x10) != 0)
    {
      v27 = malloc_default_zone();
      v26 = malloc_type_zone_memalign(v27, v22, v24 & 0xFFFFFFFFFFFFFFF0, v25);
    }

    else
    {
      if (!__CFAllocatorRespectsHintZeroWhenAllocating(v17))
      {
        Typed = CFAllocatorAllocateTyped(v17, v24 & 0xFFFFFFFFFFFFFFF0, v25);
        v20 = Typed;
        if (!Typed)
        {
          return v20;
        }

        bzero(Typed, v24 & 0xFFFFFFFFFFFFFFF0);
        goto LABEL_38;
      }

      v26 = CFAllocatorAllocateTyped(v17, v24 & 0xFFFFFFFFFFFFFFF0, v25);
    }

    v20 = v26;
    if (!v26)
    {
      return v20;
    }

LABEL_38:
    if (a4 && __CFOASafe)
    {
      v28 = __CFObjectAllocSetLastAllocEventNameFunction;
      if (!__CFObjectAllocSetLastAllocEventNameFunction)
      {
        goto LABEL_46;
      }

      v29 = v20;
      v30 = a4;
    }

    else
    {
      if (!__CFOASafe)
      {
        goto LABEL_46;
      }

      v28 = __CFObjectAllocSetLastAllocEventNameFunction;
      if (!__CFObjectAllocSetLastAllocEventNameFunction)
      {
        goto LABEL_46;
      }

      v30 = v12[1];
      v29 = v20;
    }

    (v28)(v29, v30);
LABEL_46:
    if (v21)
    {
      v31 = CFRetain(v18);
      v32 = 0;
      *v20 = v31;
      v20 += 2;
    }

    else
    {
      v32 = 128;
    }

    v33 = v32 & 0xFFFFFFFF000000FFLL | ((a2 & 0xFFFFFF) << 8);
    v34 = v20 + 1;
    v35 = -8388608;
    if ((v16 & 8) == 0)
    {
      v35 = 0x100000000000;
    }

    atomic_store(v33 | v35, v34);
    atomic_fetch_and(v34, 0xFFFFF00000FFFFFFLL);
    v36 = atomic_load(v34);
    atomic_fetch_or(v34, ((v36 & 0x83FF00) >> 20) & 0xFFFFF000000);
    *v20 = 0;
    if (a2 > 0x47)
    {
      v38 = a2 - 72;
      if (a2 - 72 >= dword_1ED40C410[0] || (v39 = __CFRuntimeClassTables[(v38 >> 6) + 16]) == 0)
      {
        v40 = 0;
LABEL_58:
        object_setClass(v20, v40);
        v41 = v12[2];
        if (v41)
        {
          v41(v20);
        }

        return v20;
      }

      v37 = (v39 + 8 * (v38 & 0x3F));
    }

    else
    {
      v37 = &__CFRuntimeBuiltinObjCClassTable[a2];
    }

    v40 = *v37;
    goto LABEL_58;
  }

  result = os_unfair_lock_lock_with_options();
  if (dword_1ED40C410[0] + 72 > a2)
  {
    v14 = a2 - 72;
    if (a2 - 72 < dword_1ED40C410[0] && (v15 = __CFRuntimeClassTables[v14 >> 6]) != 0)
    {
      v12 = *(v15 + 8 * (v14 & 0x3F));
    }

    else
    {
      v12 = 0;
    }

    os_unfair_lock_unlock(&__CFBigRuntimeFunnel);
    if (!v12)
    {
      return 0;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *__CFAllocatorSystemAllocateTyped(size_t size, malloc_type_id_t type_id, uint64_t a3, malloc_zone_t *zone)
{
  if (zone == &__MallocDefaultZoneInfoPlaceholder)
  {
    zone = malloc_default_zone();
  }

  if (a3 == 1)
  {

    return malloc_type_zone_calloc(zone, 1uLL, size, type_id);
  }

  else
  {

    return malloc_type_zone_malloc(zone, size, type_id);
  }
}

uint64_t _CFGetTSDCreateIfNeeded(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0x46)
  {
    _CFGetTSDCreateIfNeeded_cold_1(a1);
  }

  v3 = a2;
  v4 = __CFTSDGetTable(a2);
  if (v4)
  {
    return v4[v2 + 1];
  }

  if (v3)
  {
    _CFLogSimple(4, "Warning: TSD slot %d retrieved but the thread data has already been torn down.", v2);
  }

  return 0;
}

CFNumberRef CFNumberCreate(CFAllocatorRef allocator, CFNumberType theType, const void *valuePtr)
{
  v9 = allocator;
  if (!allocator)
  {
    v10 = _CFGetTSD(1);
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = &__kCFAllocatorSystemDefault;
    }
  }

  if ((__CFNumberTaggedPointersDisabled & 1) == 0 && (&__kCFAllocatorSystemDefault == v9 || !v9 && &__kCFAllocatorSystemDefault == CFAllocatorGetDefault()) && __CFNumberCaching != 2)
  {
    v11 = __CFNumberTypeTable[theType] & 0x1F;
    if (v11 > 3)
    {
      switch(v11)
      {
        case 4u:
          if ((*valuePtr - 0x80000000000000) < 0xFF00000000000001)
          {
            goto LABEL_42;
          }

          v19 = *MEMORY[0x1E69E5910];
          v20 = (*valuePtr << 7) | 0x800000000000001BLL;
          break;
        case 5u:
          v22 = *valuePtr;
          if (*valuePtr != v22)
          {
            goto LABEL_42;
          }

          v23 = *valuePtr < 0 && v22 == 0;
          if (v23 || (v22 - 0x80000000000000) < 0xFF00000000000001)
          {
            goto LABEL_42;
          }

          v19 = *MEMORY[0x1E69E5910];
          v20 = (v22 << 7) | 0x8000000000000023;
          break;
        case 6u:
          v15 = *valuePtr;
          if (*valuePtr != *valuePtr)
          {
            goto LABEL_42;
          }

          v16 = v15;
          v17 = v15 < 0.0 && v16 == 0;
          if (v17 || (v16 - 0x80000000000000) < 0xFF00000000000001)
          {
            goto LABEL_42;
          }

          v19 = *MEMORY[0x1E69E5910];
          v20 = (v16 << 7) | 0x800000000000002BLL;
          break;
        default:
          goto LABEL_42;
      }

      v21 = v19 ^ v20;
LABEL_127:
      if ((~v21 & 0xC000000000000007) != 0)
      {
        return (v21 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v21 & 7)));
      }

      return v20;
    }

    switch(v11)
    {
      case 1u:
        v13 = *MEMORY[0x1E69E5910];
        v20 = (*valuePtr << 7) | 0x8000000000000003;
LABEL_33:
        v21 = v20 ^ v13;
        goto LABEL_127;
      case 2u:
        v12 = *valuePtr;
        v13 = *MEMORY[0x1E69E5910];
        v14 = 0x800000000000000BLL;
        goto LABEL_32;
      case 3u:
        v12 = *valuePtr;
        v13 = *MEMORY[0x1E69E5910];
        v14 = 0x8000000000000013;
LABEL_32:
        v20 = v14 | (v12 << 7);
        goto LABEL_33;
    }
  }

LABEL_42:
  v25 = __CFNumberTypeTable[theType];
  if ((v25 & 0x20) == 0)
  {
    if (&__kCFAllocatorSystemDefault == v9)
    {
      v26 = 1;
    }

    else
    {
      if (v9)
      {
        goto LABEL_80;
      }

      v26 = &__kCFAllocatorSystemDefault == CFAllocatorGetDefault();
    }

    v30 = -2;
    if (!v26 || __CFNumberCaching)
    {
      goto LABEL_81;
    }

    v31 = v25 & 0x1F;
    if (v31 > 2)
    {
      if (v31 != 3)
      {
        if (v31 != 4)
        {
          goto LABEL_81;
        }

        v30 = *valuePtr;
        if ((*valuePtr + 1) <= 0xD)
        {
          goto LABEL_76;
        }

        goto LABEL_80;
      }

      v30 = *valuePtr;
      v32 = v30 + 1;
    }

    else if (v31 == 1)
    {
      v30 = *valuePtr;
      v32 = (v30 + 1);
    }

    else
    {
      if (v31 != 2)
      {
        goto LABEL_81;
      }

      v30 = *valuePtr;
      v32 = (v30 + 1);
    }

    if (v32 <= 0xD)
    {
LABEL_76:
      v28 = __CFNumberCache[v30 + 1];
      if (v28)
      {
        goto LABEL_77;
      }

LABEL_81:
      if ((v25 & 0x20) != 0)
      {
        v35 = 8;
      }

      else
      {
        v35 = ((v25 >> 3) & 8) + 8;
      }

      if (CFNumberGetTypeID_initOnce != -1)
      {
        CFNumberCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance(v9, 0x16uLL, v35, 0, v3, v4, v5, v6);
      v20 = Instance;
      if (!Instance)
      {
        return v20;
      }

      v37 = v25 & 0x1F;
      v38 = __CFNumberCanonicalTypeIndex[v25 & 0x1F] & 7;
      v39 = atomic_load((Instance + 8));
      v40 = v39;
      do
      {
        atomic_compare_exchange_strong((Instance + 8), &v40, v39 & 0xFFFFFFFFFFFFFFC0 | v38);
        v17 = v40 == v39;
        v39 = v40;
      }

      while (!v17);
      if ((v25 & 0x1F) <= 3)
      {
        switch(v37)
        {
          case 1:
            *&v41 = *valuePtr;
            break;
          case 2:
            *&v41 = *valuePtr;
            break;
          case 3:
            *&v41 = *valuePtr;
            break;
          default:
            goto LABEL_105;
        }
      }

      else
      {
        if ((v25 & 0x1F) > 5)
        {
          if (v37 != 6)
          {
            if (v37 == 17)
            {
              *(Instance + 16) = *valuePtr;
            }

LABEL_105:
            if (v30 != -2)
            {
              *(Instance + 16) = v30;
              if ((Instance & 0x8000000000000000) == 0)
              {
                goto LABEL_115;
              }

              v42 = 0;
              v43 = *MEMORY[0x1E69E5910];
              if ((~Instance & 0xC000000000000007) == 0)
              {
                v43 = 0;
              }

              v44 = v43 ^ Instance;
              while ((v44 & 7) != *(MEMORY[0x1E69E5900] + v42))
              {
                if (++v42 == 7)
                {
                  goto LABEL_115;
                }
              }

              if (v42 == 3)
              {
                v45 = v44 >> 3;
              }

              else
              {
LABEL_115:
                LOBYTE(v45) = atomic_load((Instance + 8));
              }

              v46 = __CFNumberCanonicalTypes[v45 & 7];
              v47 = atomic_load((Instance + 8));
              v48 = v47;
              do
              {
                atomic_compare_exchange_strong((Instance + 8), &v48, v47 & 0xFFFFFFFFFFFFFFC0 | 2);
                v17 = v48 == v47;
                v47 = v48;
              }

              while (!v17);
              v49 = 0;
              atomic_compare_exchange_strong(&__CFNumberCache[v30 + 1], &v49, Instance);
              if (v49)
              {
                v50 = __CFNumberCanonicalTypeIndex[v46] & 7;
                v51 = atomic_load((Instance + 8));
                v52 = v51;
                do
                {
                  atomic_compare_exchange_strong((Instance + 8), &v52, v51 & 0xFFFFFFFFFFFFFFC0 | v50);
                  v17 = v52 == v51;
                  v51 = v52;
                }

                while (!v17);
              }

              else
              {
                CFRetain(Instance);
              }
            }

            return v20;
          }
        }

        else if (v37 != 4)
        {
          *(Instance + 16) = *valuePtr;
          goto LABEL_105;
        }

        v41 = *valuePtr;
      }

      *(Instance + 16) = v41;
      goto LABEL_105;
    }

LABEL_80:
    v30 = -2;
    goto LABEL_81;
  }

  if ((v25 & 0x40) != 0)
  {
    v29 = *valuePtr;
    if (!*valuePtr)
    {
      v28 = &__kCFNumberFloat64Zero;
      goto LABEL_77;
    }

    if (*valuePtr == 0x3FF0000000000000)
    {
      v28 = &__kCFNumberFloat64One;
      goto LABEL_77;
    }

    if (fabs(v29) != INFINITY)
    {
      goto LABEL_80;
    }

    v33 = v29 < 0.0;
LABEL_70:
    if (v33)
    {
      v28 = &__kCFNumberNegativeInfinity;
    }

    else
    {
      v28 = &__kCFNumberPositiveInfinity;
    }

    goto LABEL_77;
  }

  v27 = *valuePtr;
  if (!*valuePtr)
  {
    v28 = &__kCFNumberFloat32Zero;
    goto LABEL_77;
  }

  if (*valuePtr != 1065353216)
  {
    if (fabsf(v27) != INFINITY)
    {
      goto LABEL_80;
    }

    v33 = v27 < 0.0;
    goto LABEL_70;
  }

  v28 = &__kCFNumberFloat32One;
LABEL_77:

  return CFRetain(v28);
}

void *_CFAllocatorAllocateImpl(malloc_zone_t *a1, size_t size, malloc_type_id_t type_id, uint64_t a4)
{
  if (a1)
  {
    if (!size)
    {
      return 0;
    }
  }

  else
  {
    a1 = _CFGetTSD(1);
    if (!a1)
    {
      a1 = &__kCFAllocatorSystemDefault;
    }

    if (!size)
    {
      return 0;
    }
  }

  v7 = a1->reserved1 & ~MEMORY[0x1E69E58F0];
  if ((a1->reserved1 & MEMORY[0x1E69E58F0]) != 0)
  {
    v7 |= a1->reserved1 & MEMORY[0x1E69E58F0];
  }

  if (v7 == qword_1ED40C0D0)
  {
    realloc = a1[1].realloc;
    if (realloc)
    {
      try_free_default = a1->try_free_default;

      return (realloc)(size, type_id, a4, try_free_default);
    }

    else
    {
      malloc = a1[1].malloc;
      if (!malloc)
      {
        return 0;
      }

      v12 = a1->try_free_default;

      return (malloc)(size, a4, v12);
    }
  }

  else
  {

    return malloc_type_zone_malloc(a1, size, type_id);
  }
}

void *__CFTSDGetTable(int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v2 = *(StatusReg + 440);
  if (v2 == 4096)
  {
    return 0;
  }

  if (a1 && !v2)
  {
    v2 = malloc_type_calloc(1uLL, 0x468uLL, 0x1080040FF2AA448uLL);
    pthread_key_init_np();
    *(StatusReg + 440) = v2;
  }

  return v2;
}

unint64_t *_CFRetain(unint64_t *a1, int a2)
{
  v2 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(a1 + 1);
  if ((v3 & 0x800000) == 0)
  {
    v4 = v3;
    while (!a2 || (v4 & 0x600000) == 0)
    {
      if (!(v4 >> 44))
      {
        return v2;
      }

      if (v4 >> 44 == 0xFFFFF)
      {
        v3 &= 0xFFFFFFFFFFFuLL;
      }

      else
      {
        v3 = v4 + 0x100000000000;
      }

      v5 = v4;
      atomic_compare_exchange_strong(a1 + 1, &v5, v3);
      v6 = v5 == v4;
      v4 = v5;
      if (v6)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

  __CFCheckCFInfoPACSignature(a1);
  v7 = (v3 >> 8) & 0x3FF;
  if (v7 <= 0x47)
  {
    v8 = (&__CFRuntimeBuiltinClassTable + v7);
LABEL_19:
    v10 = *v8;
    goto LABEL_21;
  }

  v9 = v7 - 72;
  if (v9 >= dword_1ED40C410[0])
  {
    v10 = 0;
    goto LABEL_21;
  }

  v10 = __CFRuntimeClassTables[v9 >> 6];
  if (v10)
  {
    v8 = (v10 + 8 * (v9 & 0x3F));
    goto LABEL_19;
  }

LABEL_21:
  v11 = *(v10 + 80);
  if (!v11 || (*v10 & 8) == 0)
  {
    _CFRetain_cold_2();
  }

  if (v3 <= 0xFFFFEFFFFFFFFFFFLL)
  {
    _CFRetain_cold_1();
  }

  v11(1, v2);
LABEL_25:
  if (__CFOASafe == 1)
  {
    _CFRetain_cold_3(v2, v13);
    return v13[0];
  }

  return v2;
}

void __CFStringAppendBytes(unint64_t *a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  if (a4 == 1536)
  {
    goto LABEL_5;
  }

  v8 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v8 = __CFStringComputeEightBitStringEncoding();
  }

  if (v8 == a4)
  {
LABEL_5:
    v9 = 0;
    v10 = 0;
    v11 = 1;
    goto LABEL_6;
  }

  if (a4 == 256)
  {
    if (a3 >= 2)
    {
      v40 = 1;
      v41 = a2;
      do
      {
        v42 = *v41++;
        v9 = v42 < 0x80;
      }

      while (v42 <= 0x7F && v40++ < a3 >> 1);
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    v11 = 1;
    a3 >>= 1;
LABEL_6:
    if (CF_IS_OBJC(7uLL, a1))
    {
      if ((v9 | v10))
      {
        [a1 appendCharacters:a2 length:a3];
      }

      else
      {
        [a1 _cfAppendCString:a2 length:a3];
      }

      return;
    }

    v12 = atomic_load(a1 + 1);
    v13 = v12 & 5;
    v14 = atomic_load(a1 + 1);
    v15 = v14 & 0x60;
    if (v13 == 4)
    {
      v16 = a1 + 2;
      if (v15)
      {
        v17 = *v16;
      }

      else
      {
        v23 = atomic_load(a1 + 1);
        v17 = &v16[(v23 & 5) != 4];
      }

      v18 = *v17;
      if (v10)
      {
        goto LABEL_30;
      }

LABEL_32:
      v25 = atomic_load(a1 + 1);
      v24 = (v25 >> 4) & 1;
LABEL_33:
      v52[0] = v18;
      v52[1] = 0;
      __CFStringChangeSizeMultiple(a1, v52, 1, a3, v24);
      v26 = a1 + 1;
      v27 = atomic_load(a1 + 1);
      if ((v27 & 0x10) != 0)
      {
        v32 = atomic_load(v26);
        v33 = a1 + 2;
        if ((v32 & 0x60) != 0)
        {
          v34 = *v33;
        }

        else
        {
          v36 = atomic_load(a1 + 1);
          v34 = &v33[(v36 & 5) != 4];
        }

        if (!v10)
        {
          __CFStrConvertBytesToUnicode(a2, v34 + v18, a3);
          goto LABEL_60;
        }

        v37 = 2 * a3;
        v38 = v34 + 2 * v18;
        v39 = a2;
      }

      else
      {
        v28 = atomic_load(v26);
        v29 = v28 & 0x60;
        v30 = a1 + 2;
        if (v9)
        {
          if (v29)
          {
            v31 = *v30;
          }

          else
          {
            v44 = atomic_load(a1 + 1);
            v31 = &v30[(v44 & 5) != 4];
          }

          v45 = atomic_load(a1 + 1);
          if (a3 >= 1)
          {
            v46 = v31 + v18 + ((v45 >> 2) & 1);
            v47 = a2;
            do
            {
              v48 = *v47++;
              *v46++ = v48;
              --a3;
            }

            while (a3);
          }

          goto LABEL_60;
        }

        if (v29)
        {
          v35 = *v30;
        }

        else
        {
          v49 = atomic_load(a1 + 1);
          v35 = &v30[(v49 & 5) != 4];
        }

        v50 = atomic_load(a1 + 1);
        v38 = v35 + v18 + ((v50 >> 2) & 1);
        v39 = a2;
        v37 = a3;
      }

      memmove(v38, v39, v37);
LABEL_60:
      if ((v11 & 1) == 0)
      {
        v51 = _CFGetTSD(1);
        if (!v51)
        {
          v51 = &__kCFAllocatorSystemDefault;
        }

        CFAllocatorDeallocate(v51, a2);
      }

      return;
    }

    if ((v14 & 0x60) != 0)
    {
      v18 = a1[3];
      if ((v10 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v18 = a1[2];
      if ((v10 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_30:
    LODWORD(v24) = 1;
    goto LABEL_33;
  }

  LOBYTE(v52[0]) = 0;
  v19 = _CFGetTSD(1);
  v20 = &__kCFAllocatorSystemDefault;
  if (v19)
  {
    v20 = v19;
  }

  *&v54 = v20;
  *&v53 = 0;
  v21 = atomic_load(a1 + 1);
  if (__CFStringDecodeByteStream3(a2, a3, a4, (v21 >> 4) & 1, &v53, v52, 0))
  {
    v9 = 0;
    a3 = *(&v54 + 1);
    v10 = BYTE8(v53) == 0;
    a2 = v53;
    if (BYTE9(v53))
    {
      v22 = LOBYTE(v52[0]) == 0;
    }

    else
    {
      v22 = 0;
    }

    v11 = !v22;
    goto LABEL_6;
  }
}

uint64_t __CFStringDecodeByteStream3(unsigned int *a1, int64_t a2, uint64_t a3, int a4, char **a5, _BYTE *a6, uint64_t a7)
{
  v12 = a2;
  v104[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  a5[3] = 0;
  v14 = a5 + 3;
  v15 = a4 == 0;
  *(a5 + 8) = a4 == 0;
  *(a5 + 9) = 0;
  if (!a2)
  {
    return 1;
  }

  v16 = a5[2];
  if (!v16)
  {
    v16 = _CFGetTSD(1);
    if (!v16)
    {
      v16 = &__kCFAllocatorSystemDefault;
    }
  }

  a5[2] = v16;
  if (a3 > 268435711)
  {
    if (a3 <= 402653439)
    {
      if (a3 != 268435712 && a3 != 335544576)
      {
        goto LABEL_63;
      }

      goto LABEL_24;
    }

    if (a3 == 402653440)
    {
LABEL_35:
      if (v12 < 4)
      {
        goto LABEL_208;
      }

      v26 = (a1 + (v12 & 0xFFFFFFFFFFFFFFFCLL));
      if (a3 != 402653440 && (a3 != 201326848 || ((v27 = *a1, *a1 == 65279) || v27 == -131072) && (++a1, v27 == 65279)))
      {
        v28 = 0;
        v29 = -65536;
        v30 = -128;
      }

      else
      {
        v29 = 0xFFFF;
        v28 = 1;
        v30 = -2130706433;
      }

      v39 = v26 - a1;
      *v14 = v39;
      v40 = v39;
      if (v26 > a1)
      {
        v41 = a1;
        do
        {
          v42 = *v41;
          if ((*v41 & v30) != 0)
          {
            *(a5 + 8) = 0;
            if ((v42 & v29) != 0)
            {
              v43 = bswap32(v42);
              if (v28)
              {
                v42 = v43;
              }

              if (HIWORD(v42) > 0x10u)
              {
                return 0;
              }

              *v14 = ++v40;
            }
          }

          ++v41;
        }

        while (v41 < v26);
      }

      v44 = *a5;
      if (*(a5 + 8))
      {
        if (!v44)
        {
          if (v40 < 0x3F1)
          {
            v44 = a5 + 4;
            *a5 = (a5 + 4);
          }

          else
          {
            Typed = CFAllocatorAllocateTyped(v16, v40, 0x100004077774924uLL);
            *a5 = Typed;
            if (!Typed)
            {
              goto LABEL_208;
            }

            v44 = Typed;
            *(a5 + 9) = 1;
          }
        }

        if (v28)
        {
          if (a1 < v26)
          {
            result = 1;
            do
            {
              *v44 = *(a1 + 3);
              v44 = (v44 + 1);
              ++a1;
            }

            while (a1 < v26);
            return result;
          }
        }

        else if (a1 < v26)
        {
          result = 1;
          do
          {
            v70 = *a1++;
            *v44 = v70;
            v44 = (v44 + 1);
          }

          while (a1 < v26);
          return result;
        }

        return 1;
      }

      if (!v44)
      {
        if (v40 < 0x1F9)
        {
          v44 = a5 + 4;
          *a5 = (a5 + 4);
        }

        else
        {
          v53 = CFAllocatorAllocateTyped(v16, 2 * v40, 0x1000040BDFB0063uLL);
          *a5 = v53;
          if (!v53)
          {
            goto LABEL_208;
          }

          v44 = v53;
          *(a5 + 9) = 1;
        }
      }

      if (v26 - a1 >= 1)
      {
        v73 = &a1[v39];
        do
        {
          v75 = *a1++;
          v74 = v75;
          v76 = bswap32(v75);
          if (v28)
          {
            v74 = v76;
          }

          if (HIWORD(v74))
          {
            if (HIWORD(v74) > 0x10u)
            {
LABEL_212:
              v65 = 0;
              goto LABEL_207;
            }

            *v44 = ((v74 + 67043328) >> 10) - 10240;
            v44 = (v44 + 2);
            LOWORD(v74) = v74 & 0x3FF | 0xDC00;
          }

          else if ((v74 & 0xF800 | 0x400) == 0xDC00)
          {
            goto LABEL_212;
          }

          *v44 = v74;
          v44 = (v44 + 2);
        }

        while (a1 < v73);
      }

      goto LABEL_206;
    }

    v25 = 469762304;
LABEL_34:
    if (a3 != v25)
    {
      goto LABEL_63;
    }

    goto LABEL_35;
  }

  v17 = (a1 + v12);
  if (a3 > 134217983)
  {
    if (a3 != 134217984)
    {
      v25 = 201326848;
      goto LABEL_34;
    }

    if (v12 >= 3 && *a1 == 239 && *(a1 + 1) == 187 && *(a1 + 2) == 191)
    {
      v12 -= 3;
      if (!v12)
      {
        return 1;
      }

      a1 = (a1 + 3);
    }

    if (!*(a5 + 8))
    {
LABEL_115:
      if (__CFStringDecodeByteStream3_onceToken != -1)
      {
        __CFStringDecodeByteStream3_cold_1();
      }

      v56 = *a5;
      v58 = v12 > 0x1F8 || v56 != 0;
      *(a5 + 9) = v58;
      if (!v56)
      {
        if (v12 > 0x1F8)
        {
          v59 = CFAllocatorAllocateTyped(a5[2], 2 * v12, 0x1000040BDFB0063uLL);
          *a5 = v59;
          if (!v59)
          {
            goto LABEL_208;
          }

          goto LABEL_190;
        }

        v56 = (a5 + 4);
      }

      *a5 = v56;
LABEL_190:
      *v14 = 0;
      if (a1 < v17)
      {
        v71 = 0;
        do
        {
          v104[0] = 0;
          v72 = __CFStringDecodeByteStream3___CFFromUTF8(a7, a1, v17 - a1, &(*a5)[2 * v71], v12 - v71, v104);
          v65 = v104[0];
          if (!v104[0])
          {
            goto LABEL_207;
          }

          a1 = (a1 + v72);
          v71 = &(*v14)[v104[0]];
          *v14 = v71;
        }

        while (a1 < v17);
      }

      goto LABEL_206;
    }

    if (v12 >= 1)
    {
      v31 = a1;
      v32 = v12;
      while (1)
      {
        v33 = *v31;
        v31 = (v31 + 1);
        if (v33 < 0)
        {
          break;
        }

        if (!--v32)
        {
          goto LABEL_53;
        }
      }

      *(a5 + 8) = 0;
      goto LABEL_115;
    }

LABEL_53:
    a5[3] = v12;
    v34 = *a5;
    v36 = v12 > 0x3F0 || v34 != 0;
    *(a5 + 9) = v36;
    if (!v34)
    {
      if (v12 > 0x3F0)
      {
        v34 = CFAllocatorAllocateTyped(v16, v12, 0x100004077774924uLL);
        *a5 = v34;
        if (!v34)
        {
          goto LABEL_208;
        }

        goto LABEL_215;
      }

      v34 = (a5 + 4);
    }

    *a5 = v34;
LABEL_215:
    v68 = v34;
    goto LABEL_285;
  }

  if (a3 == 256)
  {
LABEL_24:
    if (v12 == 1)
    {
      goto LABEL_208;
    }

    v22 = (a1 + (v12 & 0xFFFFFFFFFFFFFFFELL));
    if (a3 == 268435712)
    {
      goto LABEL_83;
    }

    if (a3 != 256)
    {
      v47 = v12 >> 1;
      *v14 = (v12 >> 1);
      if (a6)
      {
        result = 1;
        *a6 = 1;
        *a5 = a1;
        *(a5 + 8) = 0;
        return result;
      }

      v24 = 0;
      v46 = v12 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_85;
    }

    v23 = *a1;
    if (v23 == 65534 || v23 == 65279)
    {
      a1 = (a1 + 2);
      v24 = v23 != 65279;
    }

    else
    {
LABEL_83:
      v24 = 1;
    }

    v46 = v22 - a1;
    v47 = (v22 - a1) >> 1;
    *v14 = v47;
LABEL_85:
    if (*(a5 + 8))
    {
      if (v24)
      {
        v48 = 33023;
      }

      else
      {
        v48 = 65408;
      }

      v49 = a1;
      do
      {
        if (v49 >= v22)
        {
          v54 = *a5;
          if (!*a5)
          {
            if (v47 < 0x3F1)
            {
              v54 = a5 + 4;
              *a5 = (a5 + 4);
            }

            else
            {
              v55 = CFAllocatorAllocateTyped(v16, v47, 0x100004077774924uLL);
              *a5 = v55;
              if (!v55)
              {
                goto LABEL_208;
              }

              v54 = v55;
              *(a5 + 9) = 1;
            }
          }

          if (v24)
          {
            if (a1 < v22)
            {
              result = 1;
              do
              {
                *v54 = *(a1 + 1);
                v54 = (v54 + 1);
                a1 = (a1 + 2);
              }

              while (a1 < v22);
              return result;
            }
          }

          else if (a1 < v22)
          {
            result = 1;
            do
            {
              v77 = *a1;
              a1 = (a1 + 2);
              *v54 = v77;
              v54 = (v54 + 1);
            }

            while (a1 < v22);
            return result;
          }

          return 1;
        }

        v50 = *v49;
        v49 = (v49 + 2);
      }

      while ((v48 & v50) == 0);
      *(a5 + 8) = 0;
    }

    v51 = *a5;
    if (!*a5)
    {
      if (v47 < 0x1F9)
      {
        v51 = a5 + 4;
        *a5 = (a5 + 4);
      }

      else
      {
        v52 = CFAllocatorAllocateTyped(v16, v46, 0x1000040BDFB0063uLL);
        *a5 = v52;
        if (!v52)
        {
          goto LABEL_208;
        }

        v51 = v52;
        *(a5 + 9) = 1;
      }
    }

    if (v24)
    {
      if (a1 < v22)
      {
        result = 1;
        do
        {
          v66 = *a1;
          a1 = (a1 + 2);
          *v51 = bswap32(v66) >> 16;
          v51 = (v51 + 2);
        }

        while (a1 < v22);
        return result;
      }

      return 1;
    }

    v67 = 2 * *v14;
    v68 = v51;
    v69 = a1;
LABEL_286:
    memmove(v68, v69, v67);
    return 1;
  }

  if (a3 == 3071)
  {
    *(a5 + 8) = 0;
    v18 = *a5;
    v20 = v12 > 0x1F8 || v18 != 0;
    *(a5 + 9) = v20;
    if (!v18)
    {
      if (v12 > 0x1F8)
      {
        v21 = CFAllocatorAllocateTyped(v16, 2 * v12, 0x1000040BDFB0063uLL);
        *a5 = v21;
        if (!v21)
        {
          goto LABEL_208;
        }

LABEL_129:
        *v14 = 0;
        if (v12 >= 1)
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          while (1)
          {
            v64 = *a1;
            a1 = (a1 + 1);
            v63 = v64;
            if (v61 == 1)
            {
              if ((v63 & 0xFFFFFFDF) == 0x55)
              {
                v62 = 0;
                v61 = 2;
              }

              else
              {
                v62 = v63 - 48;
                if (v63 - 48 > 9)
                {
                  if (v63 != 92)
                  {
                    goto LABEL_160;
                  }

                  v62 = 92;
                  goto LABEL_157;
                }

                v61 = 7;
              }
            }

            else if (v61)
            {
              if (v61 > 5)
              {
                if ((v63 - 48) > 9u)
                {
                  goto LABEL_160;
                }

                v62 = (v63 - 48) | (8 * v62);
                if (++v61 == 9)
                {
                  goto LABEL_157;
                }
              }

              else
              {
                if ((v63 - 48) > 9u)
                {
                  if (v63 > 0x60)
                  {
                    LOBYTE(v63) = v63 - 32;
                  }

                  if ((v63 - 65) > 5u)
                  {
LABEL_160:
                    LOBYTE(v61) = 1;
LABEL_161:
                    v65 = v61 == 0;
LABEL_207:
                    if ((v65 & 1) == 0)
                    {
LABEL_208:
                      if (*(a5 + 9))
                      {
                        if (*a5)
                        {
                          CFAllocatorDeallocate(a5[2], *a5);
                        }
                      }

                      result = 0;
                      *(a5 + 8) = v15;
                      *(a5 + 9) = 0;
                      *a5 = 0;
                      a5[3] = 0;
                      return result;
                    }

                    return 1;
                  }

                  v62 = (v63 - 55) | (16 * v62);
                }

                else
                {
                  v62 = v63 + 16 * v62 - 48;
                }

                if (++v61 == 6)
                {
                  goto LABEL_157;
                }
              }

              if (!v61)
              {
                goto LABEL_157;
              }

              if (v61 == 255)
              {
                goto LABEL_160;
              }
            }

            else
            {
              if (v63 != 92)
              {
                v62 = v63;
                if ((v63 & 0x80) != 0)
                {
                  goto LABEL_160;
                }

LABEL_157:
                v61 = 0;
                *&(*a5)[2 * v60++] = v62;
                a5[3] = v60;
                goto LABEL_158;
              }

              v61 = 1;
            }

LABEL_158:
            if (a1 >= v17)
            {
              goto LABEL_161;
            }
          }
        }

LABEL_206:
        v65 = 1;
        goto LABEL_207;
      }

      v18 = (a5 + 4);
    }

    *a5 = v18;
    goto LABEL_129;
  }

LABEL_63:
  result = CFStringEncodingGetConverter(a3);
  if (!result)
  {
    return result;
  }

  v38 = result;
  if (BYTE1(a3) > 7u)
  {
    if (BYTE1(a3) > 0xAu)
    {
      if (BYTE1(a3) == 11)
      {
        if ((a3 - 3059) >= 2)
        {
          goto LABEL_231;
        }

        goto LABEL_239;
      }

      if (BYTE1(a3) == 12)
      {
        goto LABEL_239;
      }
    }

    else
    {
      if (BYTE1(a3) == 8)
      {
        goto LABEL_239;
      }

      if (BYTE1(a3) == 10)
      {
        if ((a3 - 2561) > 0xF || ((1 << (a3 - 1)) & 0x8011) == 0)
        {
          goto LABEL_231;
        }

        goto LABEL_239;
      }
    }

    goto LABEL_169;
  }

  if (BYTE1(a3) > 1u)
  {
    if (BYTE1(a3) == 2)
    {
      if (a3 != 518)
      {
        goto LABEL_231;
      }

      goto LABEL_239;
    }

    if (BYTE1(a3) == 6)
    {
      if (a3 == 1536)
      {
        goto LABEL_231;
      }

LABEL_239:
      v82 = 0;
      *(a5 + 8) = 0;
      goto LABEL_240;
    }

LABEL_169:
    if ((a3 & 0xFF00u) < 0xC01)
    {
      goto LABEL_231;
    }

    goto LABEL_239;
  }

  if (BYTE1(a3) || a3 <= 0x22 && ((1 << a3) & 0x600000032) != 0 || a3 == 152)
  {
    goto LABEL_239;
  }

LABEL_231:
  if (*(a5 + 8))
  {
    if (v12 < 1)
    {
LABEL_236:
      v81 = 0;
      v82 = 1;
      goto LABEL_250;
    }

    v78 = a1;
    v79 = v12;
    while (1)
    {
      v80 = *v78;
      v78 = (v78 + 1);
      if (v80 < 0)
      {
        break;
      }

      if (!--v79)
      {
        goto LABEL_236;
      }
    }

    v82 = 1;
LABEL_249:
    *(a5 + 8) = 0;
    v81 = 1;
    goto LABEL_250;
  }

  v82 = 1;
LABEL_240:
  v81 = 1;
  if (a3 == 1 && !a4)
  {
    *(a5 + 8) = 1;
    if (v12 < 1)
    {
LABEL_247:
      v81 = 0;
      goto LABEL_250;
    }

    v83 = a1;
    v84 = v12;
    while (1)
    {
      v86 = *v83;
      v83 = (v83 + 1);
      v85 = v86;
      if (v86 < 0 || v85 == 92)
      {
        goto LABEL_249;
      }

      if (!--v84)
      {
        goto LABEL_247;
      }
    }
  }

LABEL_250:
  if (*(result + 20) != 1)
  {
    if ((v81 & 1) == 0)
    {
      goto LABEL_273;
    }

    v91 = CFStringEncodingCharLengthForBytes(a3, 0, a1, v12);
    v92 = v91;
    v93 = *a5;
    if (*a5)
    {
      v94 = 1;
    }

    else
    {
      v94 = v91 > 0x1F8;
    }

    v95 = v94;
    *(a5 + 9) = v95;
    if (!v93)
    {
      if (v91 > 0x1F8)
      {
        v93 = CFAllocatorAllocateTyped(a5[2], 2 * v91, 0x1000040BDFB0063uLL);
        *a5 = v93;
        if (!v93)
        {
          goto LABEL_208;
        }

LABEL_307:
        if ((__CFStringDecodeByteStream3_lossyFlag & 1) == 0)
        {
          __CFStringDecodeByteStream3_lossyFlag = 1;
        }

        if (v92 <= 0x1F8)
        {
          v103 = 504;
        }

        else
        {
          v103 = v92;
        }

        if (CFStringEncodingBytesToUnicode(a3, __CFWantsToUseASCIICompatibleConversion, a1, v12, 0, v93, v103, a5 + 3))
        {
          goto LABEL_208;
        }

        return 1;
      }

      v93 = (a5 + 4);
    }

    *a5 = v93;
    goto LABEL_307;
  }

  if ((v81 & 1) == 0)
  {
LABEL_273:
    a5[3] = v12;
    v68 = *a5;
    v97 = v12 > 0x3F0 || v68 != 0;
    *(a5 + 9) = v97;
    if (!v68)
    {
      if (v12 > 0x3F0)
      {
        v68 = CFAllocatorAllocateTyped(a5[2], v12, 0x100004077774924uLL);
        *a5 = v68;
        if (!v68)
        {
          goto LABEL_208;
        }

        goto LABEL_285;
      }

      v68 = a5 + 4;
    }

    *a5 = v68;
LABEL_285:
    v69 = a1;
    v67 = v12;
    goto LABEL_286;
  }

  v87 = *a5;
  v89 = v12 > 0x1F8 || v87 != 0;
  *(a5 + 9) = v89;
  if (v87)
  {
    goto LABEL_290;
  }

  if (v12 <= 0x1F8)
  {
    v87 = (a5 + 4);
LABEL_290:
    *a5 = v87;
    goto LABEL_291;
  }

  v90 = CFAllocatorAllocateTyped(a5[2], 2 * v12, 0x1000040BDFB0063uLL);
  *a5 = v90;
  if (!v90)
  {
    goto LABEL_208;
  }

LABEL_291:
  *v14 = v12;
  if (a3 == 513 || a3 == 1536)
  {
    if (v12 >= 1)
    {
      v98 = 0;
      result = 1;
      do
      {
        *&(*a5)[2 * v98] = *(a1 + v98);
        ++v98;
      }

      while (v12 != v98);
      return result;
    }

    return 1;
  }

  if (v12 < 1)
  {
    return 1;
  }

  v99 = 0;
  do
  {
    v101 = *a1;
    a1 = (a1 + 1);
    v100 = v101;
    v102 = *a5;
    if (!v82 || v100 < 0)
    {
      if (!(*(v38 + 8))(0, v100, v102 + v99))
      {
        goto LABEL_208;
      }
    }

    else
    {
      *(v102 + v99) = v100;
    }

    v99 += 2;
    result = 1;
    --v12;
  }

  while (v12);
  return result;
}

CFMutableStringRef CFStringCreateMutable(CFAllocatorRef alloc, CFIndex maxLength)
{
  v7 = alloc;
  if (!alloc)
  {
    v8 = _CFGetTSD(1);
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = &__kCFAllocatorSystemDefault;
    }
  }

  Instance = _CFRuntimeCreateInstance(v7, 7uLL, 32, 0, v2, v3, v4, v5);
  if (Instance)
  {
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    v10 = atomic_load(&Instance->info);
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong(&Instance->info, &v11, v10 & 0xFFFFFFFFFFFFFF9FLL | 0x20);
      v12 = v11 == v10;
      v10 = v11;
    }

    while (!v12);
    v13 = atomic_load(&Instance->info);
    v14 = v13;
    do
    {
      atomic_compare_exchange_strong(&Instance->info, &v14, v13 & 0xFFFFFFFFFFFFFFEFLL);
      v12 = v14 == v13;
      v13 = v14;
    }

    while (!v12);
    v15 = atomic_load(&Instance->info);
    v16 = v15;
    do
    {
      atomic_compare_exchange_strong(&Instance->info, &v16, v15 | 1);
      v12 = v16 == v15;
      v15 = v16;
    }

    while (!v12);
    Instance->data = 0;
    v17 = atomic_load(&Instance->info);
    v12 = (v17 & 0x60) == 0;
    v18 = 24;
    if (v12)
    {
      v18 = 16;
    }

    *(&Instance->isa + v18) = 0;
    v19 = (16 * maxLength) | 2;
    if (!maxLength)
    {
      v19 = 512;
    }

    Instance[1].isa = 0;
    Instance[1].info = v19;
    v20 = atomic_load(&Instance->info);
    if ((~v20 & 0x60) == 0)
    {
      CFRetain(v7);
      Instance[1].data = v7;
    }
  }

  return Instance;
}

uint64_t _NSIsNSObject(uint64_t a1)
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

  return MethodImplementation(v1, sel_isNSObject__);
}

unint64_t CF_IS_OBJC(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v2 = *a2 & ~MEMORY[0x1E69E58F0];
  if ((*a2 & MEMORY[0x1E69E58F0]) != 0)
  {
    v2 |= *a2 & MEMORY[0x1E69E58F0];
  }

  if (!v2)
  {
    if (result)
    {
      CF_IS_OBJC_cold_1();
    }

    return result;
  }

  if (result == 7 && v2 == __CFConstantStringClassReferencePtr)
  {
    return 0;
  }

  if (result > 0x47)
  {
    v4 = result - 72;
    if (result - 72 >= dword_1ED40C410[0] || (v5 = __CFRuntimeClassTables[(v4 >> 6) + 16]) == 0)
    {
      v6 = 0;
      goto LABEL_17;
    }

    v3 = (v5 + 8 * (v4 & 0x3F));
  }

  else
  {
    v3 = &__CFRuntimeBuiltinObjCClassTable[result];
  }

  v6 = *v3;
LABEL_17:
  if (v2 == v6)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    return 1;
  }

  return (*MEMORY[0x1E69E58F8] & v2) != v6;
}

CFMutableStringRef CFStringCreateMutableCopy(CFAllocatorRef alloc, CFIndex maxLength, CFStringRef theString)
{
  v3 = theString;
  v23[2] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)v3 mutableCopy];
  }

  Mutable = CFStringCreateMutable(alloc, maxLength);
  if (Mutable == v3)
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v3);
    v3 = Copy;
  }

  else
  {
    Copy = 0;
  }

  Length = CFStringGetLength(v3);
  if (Length < 1)
  {
    v11 = 0;
  }

  else
  {
    if (CF_IS_OBJC(7uLL, v3))
    {
      v10 = [(__CFString *)v3 _encodingCantBeStoredInEightBitCFString];
    }

    else
    {
      v12 = atomic_load(&v3->info);
      v10 = (v12 >> 4) & 1;
    }

    v11 = v10 != 0;
  }

  v23[0] = 0;
  v23[1] = 0;
  __CFStringChangeSizeMultiple(Mutable, v23, 1, Length, v11);
  v13 = atomic_load(&Mutable->info);
  v14 = atomic_load(&Mutable->info);
  v15 = v14 & 0x60;
  p_data = &Mutable->data;
  if ((v13 & 0x10) == 0)
  {
    if (v15)
    {
      v17 = *p_data;
    }

    else
    {
      v19 = atomic_load(&Mutable->info);
      v17 = &p_data[(v19 & 5) != 4];
    }

    v20 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v20 = __CFStringComputeEightBitStringEncoding();
    }

    v21 = atomic_load(&Mutable->info);
    v25.location = 0;
    v25.length = Length;
    CFStringGetBytes(v3, v25, v20, 0, 0, v17 + ((v21 >> 2) & 1), Length, 0);
    goto LABEL_26;
  }

  if (v15)
  {
    v18 = *p_data;
    if (!*p_data)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v22 = atomic_load(&Mutable->info);
  v18 = &p_data[(v22 & 5) != 4];
  if (v18)
  {
LABEL_25:
    v26.location = 0;
    v26.length = Length;
    CFStringGetCharacters(v3, v26, v18);
  }

LABEL_26:
  if (Copy)
  {
    CFRelease(Copy);
  }

  return Mutable;
}

uint64_t __CFStrAllocateMutableContents(uint64_t a1, size_t a2)
{
  v2 = atomic_load((a1 + 8));
  if ((~v2 & 0x60) != 0)
  {
    if (a1 < 0)
    {
      v3 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v4 = atomic_load((a1 + 8));
      if (v4 < 0)
      {
        v3 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v3 = (a1 - 16);
      }
    }
  }

  else
  {
    v3 = (a1 + 48);
  }

  Typed = CFAllocatorAllocateTyped(*v3, a2, 0xB8E5A211uLL);
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

  return Typed;
}

CFIndex CFStringGetLength(CFStringRef theString)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((theString & 0x8000000000000000) != 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~theString & 0xC000000000000007) == 0)
    {
      LOBYTE(v3) = 0;
    }

    v4 = (v3 ^ theString) & 7;
    while (v4 != *(MEMORY[0x1E69E5900] + v2))
    {
      if (++v2 == 7)
      {
        goto LABEL_12;
      }
    }

    if (v2 == 2)
    {

      return _NSTaggedPointerStringGetLength(theString);
    }

LABEL_12:
    v6 = 0;
    while (v4 != *(MEMORY[0x1E69E5900] + v6))
    {
      if (++v6 == 7)
      {
        goto LABEL_17;
      }
    }

    if (!v6)
    {
      v14 = 0;
      _CFIndirectTaggedPointerStringGetContents(theString, &v14);
      return v14;
    }
  }

LABEL_17:
  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)theString length];
  }

  else
  {
    v7 = atomic_load(&theString->info);
    v8 = v7 & 5;
    v9 = atomic_load(&theString->info);
    v10 = v9 & 0x60;
    if (v8 == 4)
    {
      p_data = &theString->data;
      if (v10)
      {
        v12 = *p_data;
      }

      else
      {
        v13 = atomic_load(&theString->info);
        v12 = &p_data[(v13 & 5) != 4];
      }

      return *v12;
    }

    else if ((v9 & 0x60) != 0)
    {
      return theString->length;
    }

    else
    {
      return theString->data;
    }
  }
}

void __CFStringChangeSizeMultiple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  v138 = *MEMORY[0x1E69E9840];
  v6 = atomic_load((a1 + 8));
  v7 = (a1 + 16);
  if ((v6 & 0x60) != 0)
  {
    v8 = *v7;
    if (*v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_10;
  }

  v11 = atomic_load((a1 + 8));
  v8 = &v7[(v11 & 5) != 4];
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = atomic_load((a1 + 8));
  if ((v9 & 5) == 4)
  {
    v10 = *v8;
  }

  else
  {
    v12 = atomic_load((a1 + 8));
    if ((v12 & 0x60) != 0)
    {
      v10 = *(a1 + 24);
    }

    else
    {
      v10 = *v7;
    }
  }

LABEL_10:
  if (a3 == 1)
  {
    v13 = v10 + a4 - *(a2 + 8);
  }

  else
  {
    v13 = v10 + a4 * a3;
    if (a3 >= 1)
    {
      v14 = (a2 + 8);
      v15 = a3;
      do
      {
        v16 = *v14;
        v14 += 2;
        v13 -= v16;
        --v15;
      }

      while (v15);
    }
  }

  if (v13)
  {
    v17 = 0;
    v18 = atomic_load((a1 + 8));
    v19 = v18 & 0x10;
    v20 = 1;
    v136 = 2;
    LODWORD(v21) = 1;
    v22 = 0;
    if (!a5 && (v18 & 0x10) == 0)
    {
      v23 = *(a1 + 40);
      v21 = (v23 >> 2) & 1;
      if ((v23 & 4) != 0)
      {
        v17 = 0;
        v22 = 0;
        v20 = 1;
        v24 = 2;
      }

      else
      {
        v20 = 0;
        v22 = 2;
        v17 = 1;
        v24 = 1;
      }

      v136 = v24;
    }

    v129 = v21;
    v131 = v10;
    v134 = a2;
    v135 = a3;
    v30 = *(a1 + 32);
    v31 = v30;
    if (v13 > (v22 ^ 0x7FFFFFFFFFFFFFFFuLL) >> v20)
    {
      __CFStringHandleOutOfMemory();
    }

    v132 = v20;
    v32 = (v13 << v20) + v22;
    v33 = *(a1 + 32);
    v34 = v30 | v32;
    if (v30 | v32)
    {
      if (v30 < v32 || (v33 = *(a1 + 32), (*(a1 + 40) & 8) == 0) && (v33 = *(a1 + 32), v30 / 2 > v32))
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_114;
        }

        v35 = *(a1 + 40);
        v36 = (v35 >> 4) * v136;
        if (v36 <= v32)
        {
          v37 = v32;
        }

        else
        {
          v37 = (v35 >> 4) * v136;
        }

        if ((v35 & 2) != 0)
        {
          v38 = v37;
        }

        else
        {
          v38 = (3 * v32 + 1) >> 1;
        }

        if ((3 * v32 + 1) >> 1 >= v36)
        {
          v39 = v38;
        }

        else
        {
          v39 = v36;
        }

        v40 = atomic_load((a1 + 8));
        if ((~v40 & 0x60) != 0)
        {
          PreferredSizeForSize = malloc_good_size(v39);
        }

        else
        {
          PreferredSizeForSize = CFAllocatorGetPreferredSizeForSize(*(a1 + 48), v39, 0);
        }

        if (PreferredSizeForSize < 0)
        {
          v33 = -1;
        }

        else
        {
          v33 = PreferredSizeForSize;
        }

        v30 = v31;
      }
    }

    if (v33 != -1)
    {
      if (v8 && v33 == v30 && (!v132 || v131 < 1 || (v18 & 0x10) != 0))
      {
        v48 = 0;
        v49 = atomic_load((v5 + 8));
        v50 = (v49 >> 2) & 1;
        v51 = v8 + v17;
        v44 = v8;
        v43 = v135;
        goto LABEL_123;
      }

      MutableContents = __CFStrAllocateMutableContents(v5, v33);
      if (MutableContents)
      {
        v43 = v135;
        v44 = MutableContents;
        goto LABEL_122;
      }

      if (v34)
      {
        v43 = v135;
        if (v31 < v32 || (*(v5 + 40) & 8) == 0 && (v32 < v31 || v31 / 2 > v32))
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_205;
          }

          if (v32 <= (*(v5 + 40) >> 4) * v136)
          {
            v45 = (*(v5 + 40) >> 4) * v136;
          }

          else
          {
            v45 = v32;
          }

          v46 = atomic_load((v5 + 8));
          if ((~v46 & 0x60) != 0)
          {
            v47 = malloc_good_size(v45);
          }

          else
          {
            v47 = CFAllocatorGetPreferredSizeForSize(*(v5 + 48), v45, 0);
          }

          if (v47 < 0)
          {
            v31 = -1;
          }

          else
          {
            v31 = v47;
          }
        }
      }

      else
      {
        v43 = v135;
      }

      v33 = v31;
      if (v31 != -1)
      {
        v44 = __CFStrAllocateMutableContents(v5, v31);
        if (!v44)
        {
          __CFStringHandleOutOfMemory();
        }

LABEL_122:
        v71 = atomic_load((v5 + 8));
        v50 = (v71 >> 2) & 1;
        v51 = &v44[v17];
        v48 = 1;
        v30 = v33;
        if (!v8)
        {
LABEL_134:
          if (v132)
          {
            if (!v19)
            {
              v77 = atomic_load((v5 + 8));
              v78 = v77;
              do
              {
                atomic_compare_exchange_strong((v5 + 8), &v78, v77 | 0x10);
                v26 = v78 == v77;
                v77 = v78;
              }

              while (!v26);
            }

            if (v50)
            {
              v79 = atomic_load((v5 + 8));
              v80 = v79;
              do
              {
                atomic_compare_exchange_strong((v5 + 8), &v80, v79 & 0xFFFFFFFFFFFFFFFBLL);
                v26 = v80 == v79;
                v79 = v80;
              }

              while (!v26);
              v81 = atomic_load((v5 + 8));
              v82 = v81;
              do
              {
                atomic_compare_exchange_strong((v5 + 8), &v82, v81 & 0xFFFFFFFFFFFFFFF7);
                v26 = v82 == v81;
                v81 = v82;
              }

              while (!v26);
            }
          }

          else
          {
            v51[v13] = 0;
            if (v13 <= 255)
            {
              v83 = v13;
            }

            else
            {
              v83 = 0;
            }

            *v44 = v83;
            if (!v50)
            {
              v84 = atomic_load((v5 + 8));
              v85 = v84;
              do
              {
                atomic_compare_exchange_strong((v5 + 8), &v85, v84 | 4);
                v26 = v85 == v84;
                v84 = v85;
              }

              while (!v26);
              v86 = atomic_load((v5 + 8));
              v87 = v86;
              do
              {
                atomic_compare_exchange_strong((v5 + 8), &v87, v86 | 8);
                v26 = v87 == v86;
                v86 = v87;
              }

              while (!v26);
            }

            if (v19)
            {
              v88 = atomic_load((v5 + 8));
              v89 = v88;
              do
              {
                atomic_compare_exchange_strong((v5 + 8), &v89, v88 & 0xFFFFFFFFFFFFFFEFLL);
                v26 = v89 == v88;
                v88 = v89;
              }

              while (!v26);
            }
          }

          v90 = atomic_load((v5 + 8));
          v26 = (v90 & 0x60) == 0;
          v91 = 24;
          if (v26)
          {
            v91 = 16;
          }

          *(v5 + v91) = v13;
          if (v48)
          {
            v92 = *(v5 + 40) & 0xFFFFFFFFFFFFFFF7;
            *(v5 + 32) = v30;
            *(v5 + 40) = v92;
            *(v5 + 16) = v44;
          }

          return;
        }

LABEL_123:
        v128 = v30;
        v127 = v50;
        v72 = v8 + v50;
        if (v129 == (v19 >> 4))
        {
          if (v51 == v72)
          {
            if (v43 >= 1)
            {
              v122 = v48;
              v123 = v44;
              v125 = v8;
              v93 = 0;
              v94 = 0;
              v126 = 0;
              v95 = 0;
              p_ptr = &ptr;
              v97 = 10;
              v124 = v19;
              v98 = v136;
              v130 = v5;
              do
              {
                v99 = (v134 + 16 * v94);
                v100 = v99[1];
                v101 = v100 + *v99;
                if (v43 - v94 == 1)
                {
                  v102 = (v131 - v101) * v98;
                  if (!v102)
                  {
                    break;
                  }
                }

                else
                {
                  v102 = (v99[2] - v101) * v98;
                }

                v103 = v101 * v98;
                v93 += (a4 - v100) * v98;
                if (v93 <= 0)
                {
                  if (v93)
                  {
                    v106 = v102 == 0;
                  }

                  else
                  {
                    v106 = 1;
                  }

                  if (!v106)
                  {
                    v107 = p_ptr;
                    memmove(&v51[v103 + v93], &v51[v103], v102);
                    p_ptr = v107;
                    v5 = v130;
                  }

                  if (v95 >= 1)
                  {
                    v108 = v95 + 1;
                    v109 = p_ptr;
                    v110 = &p_ptr[24 * v95 - 8];
                    do
                    {
                      v111 = *(v110 - 1);
                      if (*v110)
                      {
                        v112 = v111 == 0;
                      }

                      else
                      {
                        v112 = 1;
                      }

                      if (!v112)
                      {
                        memmove(&v51[*(v110 - 2) + *v110], &v51[*(v110 - 2)], v111);
                      }

                      --v108;
                      v110 -= 24;
                    }

                    while (v108 > 1);
                    v95 = 0;
                    v43 = v135;
                    p_ptr = v109;
                    v5 = v130;
                  }
                }

                else
                {
                  if (v95 == v97)
                  {
                    v104 = p_ptr;
                    v105 = 2 * v97 + 8;
                    if (v126)
                    {
                      p_ptr = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, p_ptr, 24 * v105, 1347418817, 0);
                    }

                    else
                    {
                      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 24 * v105, 0x1000040504FFAC1uLL);
                      v114 = 24 * v97;
                      v115 = Typed;
                      memmove(Typed, v104, v114);
                      v126 = 1;
                      p_ptr = v115;
                    }

                    v5 = v130;
                  }

                  else
                  {
                    v105 = v97;
                  }

                  v116 = &p_ptr[24 * v95];
                  *v116 = v103;
                  v116[1] = v102;
                  v116[2] = v93;
                  ++v95;
                  v97 = v105;
                  v43 = v135;
                }

                ++v94;
                v98 = v136;
              }

              while (v94 != v43);
              v117 = p_ptr;
              v8 = v125;
              v48 = v122;
              if (v95 >= 1)
              {
                v118 = v95 + 1;
                v119 = &p_ptr[24 * v95 - 8];
                do
                {
                  v120 = *(v119 - 1);
                  if (*v119)
                  {
                    v121 = v120 == 0;
                  }

                  else
                  {
                    v121 = 1;
                  }

                  if (!v121)
                  {
                    memmove(&v51[*(v119 - 2) + *v119], &v51[*(v119 - 2)], v120);
                  }

                  --v118;
                  v119 -= 24;
                }

                while (v118 > 1);
              }

              v44 = v123;
              v19 = v124;
              if (v126)
              {
                CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v117);
              }
            }

            goto LABEL_129;
          }

          v73 = v51;
          v74 = v131;
          v75 = (v18 >> 4) & 1;
        }

        else
        {
          if (!v132)
          {
LABEL_129:
            if (v48)
            {
              v76 = atomic_load((v5 + 8));
              if ((v76 & 0x20) != 0)
              {
                __CFStrDeallocateMutableContents(v5, v8);
              }

              v48 = 1;
            }

            v30 = v128;
            v50 = v127;
            goto LABEL_134;
          }

          v73 = v51;
          v74 = v131;
          LODWORD(v75) = 1;
        }

        copyBlocks(v72, v73, v74, (v18 >> 4) & 1, v75, v134, v43, a4);
        goto LABEL_129;
      }

LABEL_205:
      __CFStringHandleOutOfMemory();
    }

LABEL_114:
    __CFStringHandleOutOfMemory();
  }

  v25 = *(a1 + 32);
  if (v25 && ((v25 - 2) <= 0xFFFFFFFFFFFFFFFCLL ? (v26 = (*(a1 + 40) & 8) == 0) : (v26 = 0), v26 && ((v27 = *(a1 + 40) >> 4, v28 = atomic_load((a1 + 8)), (~v28 & 0x60) != 0) ? (v29 = malloc_good_size(v27)) : (v29 = CFAllocatorGetPreferredSizeForSize(*(a1 + 48), v27, 0)), v29 < 0 ? (v52 = -1) : (v52 = v29), v52 != v25)))
  {
    if (v8)
    {
      __CFStrDeallocateMutableContents(v5, v8);
    }

    *(v5 + 16) = 0;
    v63 = *(v5 + 40) & 0xFFFFFFFFFFFFFFF7;
    *(v5 + 32) = 0;
    *(v5 + 40) = v63;
    v64 = atomic_load((v5 + 8));
    v65 = v64;
    do
    {
      atomic_compare_exchange_strong((v5 + 8), &v65, v64 & 0xFFFFFFFFFFFFFFFBLL);
      v26 = v65 == v64;
      v64 = v65;
    }

    while (!v26);
    v66 = atomic_load((v5 + 8));
    v67 = v66;
    do
    {
      atomic_compare_exchange_strong((v5 + 8), &v67, v66 & 0xFFFFFFFFFFFFFFF7);
      v26 = v67 == v66;
      v66 = v67;
    }

    while (!v26);
    if ((*(v5 + 40) & 4) == 0)
    {
      v68 = atomic_load((v5 + 8));
      v69 = v68;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v69, v68 & 0xFFFFFFFFFFFFFFEFLL);
        v26 = v69 == v68;
        v68 = v69;
      }

      while (!v26);
    }
  }

  else if ((*(v5 + 40) & 4) == 0)
  {
    v53 = atomic_load((v5 + 8));
    v54 = v53;
    do
    {
      atomic_compare_exchange_strong((v5 + 8), &v54, v53 & 0xFFFFFFFFFFFFFFEFLL);
      v26 = v54 == v53;
      v53 = v54;
    }

    while (!v26);
    if (v25 < 2)
    {
      v59 = atomic_load((v5 + 8));
      v60 = v59;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v60, v59 & 0xFFFFFFFFFFFFFFFBLL);
        v26 = v60 == v59;
        v59 = v60;
      }

      while (!v26);
      v61 = atomic_load((v5 + 8));
      v62 = v61;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v62, v61 & 0xFFFFFFFFFFFFFFF7);
        v26 = v62 == v61;
        v61 = v62;
      }

      while (!v26);
    }

    else
    {
      if (!v8)
      {
        __CFStringChangeSizeMultiple_cold_1();
      }

      v55 = atomic_load((v5 + 8));
      v56 = v55;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v56, v55 | 4);
        v26 = v56 == v55;
        v55 = v56;
      }

      while (!v26);
      v57 = atomic_load((v5 + 8));
      v58 = v57;
      do
      {
        atomic_compare_exchange_strong((v5 + 8), &v58, v57 | 8);
        v26 = v58 == v57;
        v57 = v58;
      }

      while (!v26);
      *v8 = 0;
    }
  }

  v70 = atomic_load((v5 + 8));
  if ((v70 & 0x60) != 0)
  {
    *(v5 + 24) = 0;
  }

  else
  {
    *v7 = 0;
  }
}

CFIndex CFStringGetBytes(CFStringRef theString, CFRange range, CFStringEncoding encoding, UInt8 lossByte, Boolean isExternalRepresentation, UInt8 *buffer, CFIndex maxBufLen, CFIndex *usedBufLen)
{
  v10 = isExternalRepresentation;
  v11 = lossByte;
  v12 = *&encoding;
  length = range.length;
  location = range.location;
  v36[2] = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(7uLL, theString))
  {
    v21 = atomic_load(&theString->info);
    if ((v21 & 0x10) != 0)
    {
      goto LABEL_68;
    }

    v22 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v22 = __CFStringComputeEightBitStringEncoding();
    }

    if (v22 == v12)
    {
LABEL_14:
      v23 = atomic_load(&theString->info);
      p_data = &theString->data;
      if ((v23 & 0x60) != 0)
      {
        v25 = *p_data;
        if (!buffer)
        {
LABEL_43:
          if (usedBufLen)
          {
            *usedBufLen = length;
          }

          return length;
        }
      }

      else
      {
        v29 = atomic_load(&theString->info);
        v25 = &p_data[(v29 & 5) != 4];
        if (!buffer)
        {
          goto LABEL_43;
        }
      }

      if (length >= maxBufLen)
      {
        length = maxBufLen;
      }

      v30 = atomic_load(&theString->info);
      v28 = &v25[location + ((v30 >> 2) & 1)];
LABEL_42:
      memmove(buffer, v28, length);
      goto LABEL_43;
    }

    v26 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v26 = __CFStringComputeEightBitStringEncoding();
    }

    if (v26 != 1536)
    {
      goto LABEL_68;
    }

    if (BYTE1(v12) <= 7u)
    {
      if (BYTE1(v12) <= 1u)
      {
        if (BYTE1(v12))
        {
          if (v12 != 134217984)
          {
            goto LABEL_68;
          }
        }

        else if (v12 <= 0x22 && ((1 << v12) & 0x600000032) != 0 || v12 == 152)
        {
          goto LABEL_68;
        }

        goto LABEL_14;
      }

      if (BYTE1(v12) == 2)
      {
        if (v12 == 518)
        {
          goto LABEL_68;
        }

        goto LABEL_14;
      }

      if (BYTE1(v12) == 6)
      {
        if (v12 != 1536)
        {
          goto LABEL_68;
        }

        goto LABEL_14;
      }

LABEL_57:
      if ((v12 & 0xFF00u) > 0xC00)
      {
        goto LABEL_68;
      }

      goto LABEL_14;
    }

    if (BYTE1(v12) > 0xAu)
    {
      if (BYTE1(v12) != 11)
      {
        if (BYTE1(v12) == 12)
        {
          goto LABEL_68;
        }

        goto LABEL_57;
      }

      if ((v12 - 3059) > 0xC)
      {
        goto LABEL_14;
      }

      v32 = 1 << (v12 + 13);
      v33 = 4099;
    }

    else
    {
      if (BYTE1(v12) == 8)
      {
        goto LABEL_68;
      }

      if (BYTE1(v12) != 10)
      {
        goto LABEL_57;
      }

      if ((v12 - 2561) > 0xF)
      {
        goto LABEL_14;
      }

      v32 = 1 << (v12 - 1);
      v33 = 32785;
    }

    if ((v32 & v33) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_14;
  }

  if (!v11)
  {
    v16 = CFStringConvertEncodingToNSStringEncoding(v12);
    v17 = v16;
    v35[0] = location;
    v35[1] = length;
    if ((theString & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    v18 = 0;
    v19 = *MEMORY[0x1E69E5910];
    if ((~theString & 0xC000000000000007) == 0)
    {
      LOBYTE(v19) = 0;
    }

    v20 = (v19 ^ theString) & 7;
    while (v20 != *(MEMORY[0x1E69E5900] + v18))
    {
      if (++v18 == 7)
      {
        goto LABEL_35;
      }
    }

    if (v10 || !buffer || v18 != 2 || v16 > 5 || ((1 << v16) & 0x32) == 0 || (Bytes = _NSTaggedPointerStringGetBytes(theString, v36), Bytes < length) || location > Bytes - length)
    {
LABEL_35:
      if ([(__CFString *)theString getBytes:buffer maxLength:maxBufLen usedLength:usedBufLen encoding:v17 options:2 * (v10 != 0) range:location remainingRange:length, v35])
      {
        return v35[0] - location;
      }

      else
      {
        return 0;
      }
    }

    if (length >= maxBufLen)
    {
      length = maxBufLen;
    }

    v28 = v36 + location;
    goto LABEL_42;
  }

LABEL_68:
  v34.location = location;
  v34.length = length;

  return __CFStringEncodeByteStream(theString, v34, v10, v12, v11, buffer, maxBufLen, usedBufLen);
}

uint64_t __CFStringAppendFormatCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, _OWORD *a11, uint64_t a12, __int16 *a13, CFArrayRef *a14, CFErrorRef *a15)
{
  v15 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v431 = v26;
  v28 = v27;
  v29 = v15;
  v30 = a14;
  v31 = a15;
  v459 = *MEMORY[0x1E69E9840];
  bzero(v456, 0x3D0uLL);
  if (v25)
  {
    v32 = CFGetTypeID(v25);
    v435 = v32 == CFLocaleGetTypeID();
  }

  else
  {
    v435 = 0;
  }

  v455 = 0;
  memset(v454, 0, sizeof(v454));
  v450 = 0;
  p_theArray = &theArray;
  if (!a14)
  {
    p_theArray = 0;
  }

  v440 = p_theArray;
  theArray = 0;
  FormatSpecifierConfiguration = _CFStringGetFormatSpecifierConfiguration(v17);
  ptr.i64[1] = 0;
  if (FormatSpecifierConfiguration)
  {
    v35 = FormatSpecifierConfiguration;
  }

  else
  {
    v35 = v23;
  }

  theDict = v35;
  if (v19)
  {
    if (a10 >= 11)
    {
      if (a15)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(Mutable, @"NSDebugDescription", @"Exceeded maximum number of allowed nested stringsdict entry references");
        *a15 = CFErrorCreate(0, @"NSCocoaErrorDomain", 2048, Mutable);
        CFRelease(Mutable);
      }

      return 0;
    }

    v453[0] = 0;
    *&v444[0] = 0;
    v447 = 0;
    ptr.i64[0] = 0;
    v446 = 0;
    v452 = 0;
    memset(v451, 0, sizeof(v451));
    Length = CFStringGetLength(v19);
    __CFStringSetUpFormatAndSpecBuffers(v19, Length, v453, v444, &ptr, v458, &v447, v457, &v446, v451);
    if (ptr.i64[0] != v458)
    {
      CFAllocatorDeallocate(0, ptr.i64[0]);
    }

    if (v447 != v457)
    {
      CFAllocatorDeallocate(0, v447);
    }

    if (v446 != v451)
    {
      CFAllocatorDeallocate(0, v446);
    }

    v31 = a15;
    if (!theDict && __CFStringValidateFormat(v19, v17, 0) < 0)
    {
      return 0;
    }
  }

  v425 = v28;
  range = CFStringGetLength(v17);
  if (range >= 0x80000000)
  {
LABEL_23:
    v39 = 0;
    if (!v31)
    {
      appended = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v40 = 0;
      goto LABEL_899;
    }

    v40 = 0;
LABEL_60:
    v60 = _CFGetTSD(1);
    if (v60)
    {
      v61 = v60;
    }

    else
    {
      v61 = &__kCFAllocatorSystemDefault;
    }

    v62 = CFDictionaryCreateMutable(v61, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v62, @"NSDebugDescription", @"Overflow occurred");
    v63 = CFErrorCreate(v61, @"NSCocoaErrorDomain", 2048, v62);
    CFRelease(v62);
    appended = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    *v31 = v63;
    v30 = a14;
    goto LABEL_899;
  }

  if (CF_IS_OBJC(7uLL, v17))
  {
    goto LABEL_26;
  }

  v54 = atomic_load(&v17->info);
  v55 = atomic_load(&v17->info);
  v56 = v55 & 0x60;
  p_data = &v17->data;
  if ((v54 & 0x10) != 0)
  {
    v42 = 0;
    if (v56)
    {
      v41 = *p_data;
    }

    else
    {
      v387 = atomic_load(&v17->info);
      v41 = &p_data[(v387 & 5) != 4];
    }
  }

  else
  {
    if (v56)
    {
      v58 = *p_data;
      if (!v58)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v385 = atomic_load(&v17->info);
      v58 = &p_data[(v385 & 5) != 4];
      if (!v58)
      {
LABEL_26:
        v41 = 0;
        v42 = 0;
        goto LABEL_27;
      }
    }

    v41 = 0;
    v386 = atomic_load(&v17->info);
    v42 = v58 + ((v386 >> 2) & 1);
  }

LABEL_27:
  v423 = v25;
  v434 = v42;
  cf = v21;
  if (!(v42 | v41))
  {
    if (range < 401)
    {
      alloc = 0;
      v41 = v458;
    }

    else
    {
      v48 = _CFGetTSD(1);
      if (!v48)
      {
        v48 = &__kCFAllocatorSystemDefault;
      }

      alloc = v48;
      Typed = CFAllocatorAllocateTyped(v48, 2 * range, 0x1000040BDFB0063uLL);
      if (Typed == v458 || __CFOASafe != 1)
      {
        v41 = Typed;
      }

      else
      {
        v41 = Typed;
        __CFSetLastAllocationEventName();
      }
    }

    v460.location = 0;
    v460.length = range;
    CFStringGetCharacters(v17, v460, v41);
    v422 = v41;
    goto LABEL_52;
  }

  if (!v42)
  {
    v422 = 0;
    alloc = 0;
LABEL_52:
    if (range >= 1)
    {
      v59 = 0;
      v43 = 0;
      while (1)
      {
        if (v41[v59] == 37)
        {
          v47 = __OFADD__(v43++, 1);
          if (v47)
          {
            goto LABEL_58;
          }
        }

        if (range == ++v59)
        {
          goto LABEL_57;
        }
      }
    }

    v418 = a10;
    goto LABEL_68;
  }

  if (range >= 1)
  {
    v43 = 0;
    v44 = range;
    v45 = v42;
    do
    {
      v46 = *v45++;
      if (v46 == 37)
      {
        v47 = __OFADD__(v43++, 1);
        if (v47)
        {
          goto LABEL_23;
        }
      }

      --v44;
    }

    while (v44);
    v422 = 0;
    alloc = 0;
LABEL_57:
    if (v43 >= 0x100000)
    {
LABEL_58:
      if (!v31)
      {
        appended = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v40 = v422;
        v39 = alloc;
        goto LABEL_899;
      }

      v40 = v422;
      v39 = alloc;
      goto LABEL_60;
    }

    v418 = a10;
    v430 = v41;
    goto LABEL_69;
  }

  v418 = a10;
  v422 = 0;
LABEL_68:
  v430 = v41;
  v43 = 0;
LABEL_69:
  v64 = _CFGetTSD(1);
  if (!v64)
  {
    v64 = &__kCFAllocatorSystemDefault;
  }

  v413 = v31;
  alloca = v64;
  if (v43 < 31)
  {
    v424 = v454;
    v53 = v457;
  }

  else
  {
    v65 = CFAllocatorAllocateTyped(v64, 32 * ((2 * v43) | 1u), 0x10000408E5DAE1CuLL);
    v53 = v65;
    if (v65 != v457 && __CFOASafe == 1)
    {
      v66 = v65;
      __CFSetLastAllocationEventName();
      v53 = v66;
    }

    if (v43 >= 0x3D)
    {
      v67 = v53;
      v68 = CFAllocatorAllocateTyped(alloca, 8 * v43, 0x6004044C4A2DFuLL);
      v53 = v67;
      v424 = v68;
    }

    else
    {
      v424 = v454;
    }
  }

  v69 = v434;
  v70 = v430;
  v411 = v17;
  theString = v29;
  v439 = v53;
  v412 = v19;
  if (range < 1)
  {
    v426 = 0;
    v414 = 0;
    LODWORD(v71) = 0;
    goto LABEL_269;
  }

  v71 = 0;
  LODWORD(v72) = 0;
  v426 = 0;
  v414 = 0;
  v73 = xmmword_183317CD0;
  v74 = 10;
  do
  {
    v75 = &v53[32 * v71];
    *(v75 + 1) = v72;
    *(v75 + 2) = 0;
    *v75 = 0;
    *(v75 + 12) = v73;
    v76 = v72;
    if (v69)
    {
      if (range <= v72)
      {
        goto LABEL_92;
      }

      v72 = v72;
      while (*(v69 + v72) != 37)
      {
        if (range == ++v72)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      v72 = v72;
      if (range <= v72)
      {
        goto LABEL_92;
      }

      while (v70[v72] != 37)
      {
        if (range == ++v72)
        {
LABEL_90:
          LODWORD(v72) = range;
          break;
        }
      }
    }

    if (v72 != v76)
    {
      goto LABEL_201;
    }

LABEL_92:
    if (v76 + 1 >= range)
    {
      LODWORD(v72) = v76 + 1;
      goto LABEL_188;
    }

    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = v75 + 16;
    v84 = -1;
    v85 = -1;
    v86 = -1;
    LODWORD(v72) = v76 + 1;
    while (1)
    {
      v87 = v72;
      v88 = v69 ? *(v69 + v72) : v70[v72];
      LODWORD(v72) = v72 + 1;
      if ((v84 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        while (v88 - 49 >= 9)
        {
          switch(v88)
          {
            case ' ':
              if ((v77 & 4) != 0)
              {
                goto LABEL_121;
              }

              v77 |= 8u;
              goto LABEL_170;
            case '#':
              v81 = 1;
              goto LABEL_121;
            case '*':
              v85 = -2;
              v75[26] = -2;
              goto LABEL_121;
            case '+':
              v77 = v77 & 0xFFFFFFF3 | 4;
              goto LABEL_170;
            case '-':
              v77 = v77 & 0xFFFFFFFC | 2;
              goto LABEL_170;
            case '.':
              if (v72 >= range)
              {
                ImmutableFunnel3 = 0;
                v133 = 43;
LABEL_246:
                *(v75 + 1) = v133;
                goto LABEL_191;
              }

              if (v69)
              {
                v88 = *(v69 + v72);
              }

              else
              {
                v88 = v70[v72];
              }

              LODWORD(v72) = v72 + 1;
              v82 = 1;
              if (v88 == 42)
              {
                v86 = -2;
LABEL_150:
                v75[25] = v86;
                goto LABEL_121;
              }

              break;
            case '0':
              if (v82)
              {
                *v83 = 0;
                v82 = 1;
              }

              else
              {
                v82 = 0;
                if ((v77 & 2) == 0)
                {
                  v77 |= 1u;
LABEL_170:
                  *(v75 + 5) = v77;
                }
              }

              goto LABEL_121;
            case '@':
              if (v81)
              {
                v81 = 0;
                v84 = v72;
                goto LABEL_121;
              }

              ImmutableFunnel3 = 0;
              v134 = 2424836;
LABEL_258:
              *v75 = v134;
              goto LABEL_191;
            case 'A':
            case 'a':
              goto LABEL_228;
            case 'C':
              ImmutableFunnel3 = 0;
              v134 = 2686978;
              goto LABEL_258;
            case 'D':
            case 'U':
            case 'd':
            case 'i':
            case 'u':
              if (_CFExecutableLinkedOnOrAfter(8uLL))
              {
                *(v75 + 5) |= 0x20u;
              }

              if ((v88 & 0xFFDF) == 0x55)
              {
                v132 = 4;
              }

              else
              {
                v132 = 1;
              }

              v75[28] = v132;
              v53 = v439;
              v69 = v434;
              v70 = v430;
              v73 = xmmword_183317CD0;
              v74 = 10;
              goto LABEL_245;
            case 'E':
            case 'F':
            case 'G':
            case 'e':
            case 'f':
            case 'g':
              if (_CFExecutableLinkedOnOrAfter(8uLL))
              {
                *(v75 + 5) |= 0x20u;
              }

              if (v88 - 65 >= 0x1A)
              {
                v123 = v88;
              }

              else
              {
                v123 = v88 + 32;
              }

              v75[28] = ((v123 & 0xFFFE) == 102) | (2 * ((v123 & 0xFFFD) == 101));
              v53 = v439;
              v69 = v434;
              v70 = v430;
              v73 = xmmword_183317CD0;
              v74 = 10;
              if (v82 && *v83 == -1 && v75[25] == 255)
              {
                *v83 = 0;
              }

LABEL_228:
              *(v75 + 1) = 34;
              if (*v75 == 5)
              {
                goto LABEL_238;
              }

              ImmutableFunnel3 = 0;
              *v75 = 4;
              goto LABEL_191;
            case 'L':
              v106 = 5;
              goto LABEL_185;
            case 'O':
            case 'X':
            case 'o':
            case 'x':
LABEL_245:
              ImmutableFunnel3 = 0;
              v133 = 33;
              goto LABEL_246;
            case 'P':
              ImmutableFunnel3 = 0;
              v134 = 2621444;
              goto LABEL_258;
            case 'S':
              ImmutableFunnel3 = 0;
              v134 = 2490372;
              goto LABEL_258;
            case '[':
              if (!v80)
              {
                v84 = v72;
              }

              v80 = 1;
              goto LABEL_121;
            case 'c':
              ImmutableFunnel3 = 0;
              v134 = 2162689;
              goto LABEL_258;
            case 'h':
              if (v72 < range && (!v69 ? (v105 = v70[v72]) : (v105 = *(v69 + v72)), v105 == 104))
              {
                LODWORD(v72) = v72 + 1;
                v106 = 1;
              }

              else
              {
                v106 = 2;
              }

              goto LABEL_185;
            case 'j':
            case 'q':
            case 't':
            case 'z':
              goto LABEL_184;
            case 'l':
              if (v72 < range)
              {
                v107 = v69 ? *(v69 + v72) : v70[v72];
                if (v107 == 108)
                {
                  LODWORD(v72) = v72 + 1;
                }
              }

LABEL_184:
              v106 = 4;
LABEL_185:
              *v75 = v106;
              goto LABEL_121;
            case 'n':
              ImmutableFunnel3 = 0;
              v134 = 2752516;
              goto LABEL_258;
            case 'p':
              ImmutableFunnel3 = 0;
              v134 = 2293764;
              goto LABEL_258;
            case 's':
              ImmutableFunnel3 = 0;
              v134 = 2555908;
              goto LABEL_258;
            default:
              *(v75 + 1) = 32;
              goto LABEL_260;
          }
        }

        v96 = 0;
        v97 = v72 <= range ? range : v72;
        v98 = v97 - v72;
        v99 = &v70[v72];
        v100 = (v69 + v72);
        do
        {
          v101 = (v96 * 10) >> 64;
          v102 = 10 * v96;
          if (v101 != v102 >> 63)
          {
            goto LABEL_263;
          }

          v103 = v88 - 48;
          v47 = __OFADD__(v102, v103);
          v96 = v102 + v103;
          if (v47)
          {
            goto LABEL_263;
          }

          if (!v98)
          {
            ImmutableFunnel3 = 0;
            *(v75 + 1) = 43;
            LODWORD(v72) = v97;
            goto LABEL_190;
          }

          if (v69)
          {
            v88 = *v100;
          }

          else
          {
            v88 = *v99;
          }

          --v98;
          ++v99;
          ++v100;
          LODWORD(v72) = v72 + 1;
        }

        while (v88 - 48 < 0xA);
        if (v88 == 36)
        {
          break;
        }

        v70 = v430;
        if (v82)
        {
          v95 = v75 + 16;
        }

        else
        {
          v95 = v75 + 12;
        }

        if (v96 >= 0x80000000)
        {
LABEL_263:
          if (v413)
          {
            v135 = _CFGetTSD(1);
            if (v135)
            {
              v136 = v135;
            }

            else
            {
              v136 = &__kCFAllocatorSystemDefault;
            }

            v137 = CFDictionaryCreateMutable(v136, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionarySetValue(v137, @"NSDebugDescription", @"Overflow occurred");
            v138 = CFErrorCreate(v136, @"NSCocoaErrorDomain", 2048, v137);
            CFRelease(v137);
            v53 = v439;
            appended = 0;
            v52 = 0;
            *v413 = v138;
          }

          else
          {
            appended = 0;
            v52 = 0;
          }

          v30 = a14;
          v39 = alloca;
          v40 = v422;
          v51 = v424;
LABEL_454:
          v50 = v414;
          goto LABEL_898;
        }

        *v95 = v96;
      }

      v70 = v430;
      if (v96 >= 128)
      {
        if (v413)
        {
          v398 = _CFGetTSD(1);
          if (v398)
          {
            v399 = v398;
          }

          else
          {
            v399 = &__kCFAllocatorSystemDefault;
          }

          v400 = CFDictionaryCreateMutable(v399, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionarySetValue(v400, @"NSDebugDescription", @"Overflow occurred");
          v401 = CFErrorCreate(v399, @"NSCocoaErrorDomain", 2048, v400);
          CFRelease(v400);
          appended = 0;
          v52 = 0;
          *v413 = v401;
        }

        else
        {
          appended = 0;
          v52 = 0;
        }

LABEL_924:
        v30 = a14;
        v39 = alloca;
        v40 = v422;
        v51 = v424;
        v53 = v439;
        goto LABEL_454;
      }

      if (v86 == 254)
      {
        v86 = v96 - 1;
        goto LABEL_150;
      }

      v104 = v96 - 1;
      if (v85 == 254)
      {
        v75[26] = v104;
        v85 = v104;
      }

      else
      {
        v75[24] = v104;
      }

LABEL_121:
      if (v72 >= range)
      {
LABEL_188:
        ImmutableFunnel3 = 0;
        *(v75 + 1) = 43;
        goto LABEL_191;
      }
    }

    if (v88 >= 0x30 && v88 - 58 >= 7)
    {
      v90 = v88 == 95 || v88 - 91 >= 6;
      v91 = !v90;
      v92 = v88 <= 0x7A && !v91;
      if (v92)
      {
        goto LABEL_121;
      }
    }

    if (v88 == 93)
    {
      v93 = v87 - v84;
      v94 = v80 == 0;
      if (v80)
      {
        v79 = 1;
      }

      else
      {
        v80 = 0;
      }

      if (!v94)
      {
        v78 = v93;
      }

      goto LABEL_121;
    }

    if (v88 != 64)
    {
      v84 = -1;
      goto LABEL_121;
    }

    v124 = v77 | 0x40;
    if (v79)
    {
      v125 = v78;
    }

    else
    {
      v124 = v77;
      v125 = v87 - v84;
    }

    *(v75 + 5) = v124 | 0x10;
    *v75 = 2424836;
    if (v125 < 1)
    {
LABEL_238:
      ImmutableFunnel3 = 0;
      goto LABEL_191;
    }

    if (v69)
    {
      v126 = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {
        v127 = __CFStringComputeEightBitStringEncoding();
        v69 = v434;
        v126 = v127;
      }

      v128 = (v69 + v84);
      v129 = v125;
      v130 = 2;
      v131 = -1;
    }

    else
    {
      v129 = 2 * v125;
      v128 = &v430[v84];
      v126 = 256;
      v130 = 16;
      v131 = &__kCFAllocatorNull;
    }

    ImmutableFunnel3 = __CFStringCreateImmutableFunnel3(0, v128, v129, v126, v130, v131, 0, v74);
    v53 = v439;
    v73 = xmmword_183317CD0;
    v74 = 10;
    if (*(v75 + 1) != 32)
    {
      v69 = v434;
LABEL_190:
      v70 = v430;
LABEL_191:
      v109 = *(v75 + 5);
      if ((v109 & 0x10) == 0)
      {
        goto LABEL_214;
      }

      if ((v109 & 0x40) == 0)
      {
        if (!theDict || !ImmutableFunnel3)
        {
          v112 = v424 + v426;
          *v112 = 0;
          if (!ImmutableFunnel3)
          {
LABEL_201:
            v113 = 32;
            goto LABEL_213;
          }

          goto LABEL_206;
        }

        Value = CFDictionaryGetValue(theDict, ImmutableFunnel3);
LABEL_205:
        v112 = v424 + v426;
        *v112 = Value;
LABEL_206:
        CFRelease(ImmutableFunnel3);
        v114 = *v112;
        v69 = v434;
LABEL_207:
        if (v114)
        {
          v75[27] = v426;
          v120 = CFDictionaryGetValue(v114, @"NSStringFormatSpecTypeKey");
          v121 = CFDictionaryGetValue(v114, @"NSStringFormatValueTypeKey");
          if (!v120 || (v122 = v121, !CFEqual(v120, @"NSStringPluralRuleType")))
          {
            ++v426;
            v53 = v439;
            v69 = v434;
            v70 = v430;
            v73 = xmmword_183317CD0;
            v74 = 10;
            goto LABEL_214;
          }

          v53 = v439;
          v69 = v434;
          v70 = v430;
          v73 = xmmword_183317CD0;
          v74 = 10;
          if (v122)
          {
            ++v426;
            goto LABEL_214;
          }

          v113 = 44;
          ++v426;
        }

        else
        {
          v113 = 32;
          v53 = v439;
          v70 = v430;
          v73 = xmmword_183317CD0;
          v74 = 10;
        }

LABEL_213:
        *(v75 + 1) = v113;
LABEL_214:
        *(v75 + 2) = v72 - v76;
        goto LABEL_215;
      }

      if (!ImmutableFunnel3)
      {
        v114 = v414;
        *(v424 + v426) = v414;
        goto LABEL_207;
      }

      v462.length = CFStringGetLength(ImmutableFunnel3);
      v462.location = 0;
      if (CFStringCompareWithOptionsAndLocale(ImmutableFunnel3, @"tt", v462, 0, 0))
      {
        v463.length = CFStringGetLength(ImmutableFunnel3);
        v111 = @"VocativeName";
        v463.location = 0;
        if (!CFStringFindWithOptionsAndLocale(ImmutableFunnel3, @"VocativeName", v463, 8uLL, 0, 0))
        {
          Value = 0;
          v414 = 0;
          goto LABEL_205;
        }
      }

      else
      {
        v111 = @"TechnicalTerm";
      }

      v115 = CFDictionaryGetValue(&unk_1EF1B7CC8, @"NSStringFormatFamilyInfoKey");
      InputIdentifierFormatterMappingFromDescriptor = _CFStringGetInputIdentifierFormatterMappingFromDescriptor(v115);
      v117 = CFDictionaryGetValue(&unk_1EF1B7CC8, @"NSStringFormatRuleInfoKey");
      v118 = CFDictionaryGetValue(v117, v111);
      Count = CFDictionaryGetCount(v118);
      Value = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, Count, v118);
      CFDictionaryAddValue(Value, @"NSStringFormatFamilyInfoKey", InputIdentifierFormatterMappingFromDescriptor);
      v414 = Value;
      goto LABEL_205;
    }

    v77 = *(v75 + 5);
    v69 = v434;
    v70 = v430;
LABEL_260:
    *(v75 + 1) = v76 + 1;
    *(v75 + 2) = v72 + ~v76;
    *(v75 + 5) = v77 | 0x80;
LABEL_215:
    ++v71;
  }

  while (range > v72);
  v19 = v412;
LABEL_269:
  v139 = a9;
  v140 = (3 * (v43 + a9) + 1);
  v141 = v456;
  if (v140 >= 62)
  {
    v141 = CFAllocatorAllocateTyped(alloca, 16 * (3 * (v43 + a9) + 1), 0x1082040F23858EBuLL);
    if (v141 != v456 && __CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  bzero(v141, 16 * v140);
  v445 = 0;
  if (v426 >= 1)
  {
    v445 = a13;
  }

  __src = v141;
  v53 = v439;
  if (v71)
  {
    v143 = 0;
    if (v19)
    {
      v144 = theDict == 0;
    }

    else
    {
      v144 = 1;
    }

    v145 = !v144;
    key = v145;
    v146 = v71;
    v147 = v140;
    cf2 = a9;
    while (1)
    {
      v148 = &v53[32 * v143];
      v149 = *(v148 + 1);
      v150 = v149 > 0x2C;
      v151 = (1 << v149) & 0x180100000001;
      if (v150 || v151 == 0)
      {
        break;
      }

LABEL_287:
      if (++v143 == v146)
      {
        goto LABEL_456;
      }
    }

    v153 = v147 - 1;
    if (v147 <= v148[24])
    {
      v153 = v148[24];
    }

    v154 = v148[25];
    if (v153 > v154)
    {
      v154 = v153;
    }

    if (v154 <= v148[26])
    {
      v154 = v148[26];
    }

    if (v147 <= v154)
    {
      v156 = (3 * v154 + 1);
      if (v154 < 21)
      {
        v158 = __src;
      }

      else
      {
        v157 = CFAllocatorAllocateTyped(alloca, 16 * (3 * v154 + 1), 0x1082040F23858EBuLL);
        if (v157 == v456)
        {
          v158 = __src;
          v53 = v439;
        }

        else
        {
          v158 = v157;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          memcpy(v158, __src, 16 * v147);
          bzero(&v158[16 * v147], 16 * (v156 - v147));
          if (__src != v456)
          {
            CFAllocatorDeallocate(alloca, __src);
          }

          v53 = v439;
        }
      }

      v155 = v148[26];
      __src = v158;
      v147 = v156;
    }

    else
    {
      v155 = v148[26];
    }

    if (v155 == 254)
    {
      v148[26] = v139;
      if ((v139 - 127) <= 0xFFFFFEFF)
      {
        goto LABEL_913;
      }

      ++v139;
    }

    if (v148[25] == 254)
    {
      v148[25] = v139;
      if ((v139 - 127) <= 0xFFFFFEFF)
      {
        goto LABEL_913;
      }

      ++v139;
    }

    v159 = v148[24];
    if (v159 == 255)
    {
      v148[24] = v139;
      if ((v139 - 127) <= 0xFFFFFEFF)
      {
LABEL_913:
        if (v413)
        {
          v389 = _CFGetTSD(1);
          if (v389)
          {
            v390 = v389;
          }

          else
          {
            v390 = &__kCFAllocatorSystemDefault;
          }

          v391 = CFDictionaryCreateMutable(v390, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionarySetValue(v391, @"NSDebugDescription", @"Overflow occurred");
          v392 = CFErrorCreate(v390, @"NSCocoaErrorDomain", 2048, v391);
          CFRelease(v391);
          v53 = v439;
          appended = 0;
          *v413 = v392;
        }

        else
        {
LABEL_918:
          appended = 0;
        }

        v30 = a14;
        v40 = v422;
        v51 = v424;
        v50 = v414;
        v52 = __src;
        v39 = alloca;
        goto LABEL_898;
      }

      LOBYTE(v159) = v139++;
    }

    v160 = &__src[16 * v159];
    *(v160 + 1) = *v148;
    v161 = *(v148 + 1);
    *v160 = v161;
    v162 = v148[27];
    if (v162 == -1)
    {
      if (((v161 != 32) & key) == 1)
      {
        v172 = *(v148 + 1);
        v171 = *(v148 + 2);
        v173 = v434;
        if (v434)
        {
          v174 = __CFDefaultEightBitStringEncoding;
          if (__CFDefaultEightBitStringEncoding == -1)
          {
            v175 = __CFStringComputeEightBitStringEncoding();
            v173 = v434;
            v174 = v175;
          }

          v176 = (v173 + v172);
          v177 = alloca;
          v178 = v171;
          v179 = 18;
        }

        else
        {
          v178 = 2 * v171;
          v176 = &v430[v172];
          v177 = alloca;
          v174 = 256;
          v179 = 16;
        }

        v207 = __CFStringCreateImmutableFunnel3(v177, v176, v178, v174, v179, &__kCFAllocatorNull, 0, v142);
        if (!v207)
        {
          v39 = alloca;
          v393 = CFDictionaryCreateMutable(alloca, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v394 = v393;
          v395 = @"Unable to allocate CFString to validate format specifiers";
LABEL_922:
          CFDictionarySetValue(v393, @"NSDebugDescription", v395);
          *v413 = CFErrorCreate(v39, @"NSCocoaErrorDomain", 2048, v394);
          CFRelease(v394);
          appended = 0;
          v30 = a14;
          v40 = v422;
          v51 = v424;
          v53 = v439;
LABEL_926:
          v50 = v414;
          v52 = __src;
          goto LABEL_898;
        }

        v208 = __CFStringValidateFormat(v19, v207, cf2);
        CFRelease(v207);
        v53 = v439;
        cf2 = v208;
        if (v208 < 0)
        {
          goto LABEL_918;
        }

        goto LABEL_439;
      }
    }

    else
    {
      v163 = CFDictionaryGetValue(*(v424 + v162), @"NSStringFormatValueTypeKey");
      if (v163)
      {
        v164 = v163;
        v415 = v147;
        CharactersPtr = CFStringGetCharactersPtr(v163);
        v166 = __CFDefaultEightBitStringEncoding;
        if (__CFDefaultEightBitStringEncoding == -1)
        {
          v166 = __CFStringComputeEightBitStringEncoding();
        }

        CStringPtrInternal = _CFStringGetCStringPtrInternal(v164, v166, 1, 1);
        v168 = CFStringGetLength(v164);
        v169 = v168;
        if (CharactersPtr | CStringPtrInternal)
        {
          v142 = CharactersPtr;
          v170 = 0;
        }

        else
        {
          v170 = CFAllocatorAllocateTyped(alloca, 2 * v168, 0x1000040BDFB0063uLL);
          v461.location = 0;
          v461.length = v169;
          CFStringGetCharacters(v164, v461, v170);
          v142 = v170;
        }

        if (v169 >= 1)
        {
          v180 = 0;
          v181 = 0;
          v182 = 0;
          v183 = 0;
          v184 = 0;
          v185 = -1;
          v186 = -1;
          v187 = -1;
          while (1)
          {
            if (CStringPtrInternal)
            {
              v188 = CStringPtrInternal[v184];
            }

            else
            {
              v188 = *(v142 + 2 * v184);
            }

            ++v184;
            if (v186 < 0)
            {
              while (2)
              {
                v193 = 0;
                if (v184 <= v169)
                {
                  v194 = v169;
                }

                else
                {
                  v194 = v184;
                }

                v195 = v142 + 2 * v184;
                v196 = v184;
                while (2)
                {
                  v214 = 1;
                  v197 = 33;
                  switch(v188)
                  {
                    case ' ':
                    case '+':
                    case '-':
                      v184 += v193;
                      goto LABEL_353;
                    case '#':
                      v184 += v193;
                      v181 = 1;
                      goto LABEL_353;
                    case '*':
                      v184 += v193;
                      v185 = -2;
                      goto LABEL_353;
                    case '.':
                      if (!(v184 - v194 + v193))
                      {
                        goto LABEL_427;
                      }

                      if (CStringPtrInternal)
                      {
                        v188 = CStringPtrInternal[v184 + v193];
                      }

                      else
                      {
                        v188 = *(v195 + 2 * v193);
                      }

                      ++v193;
                      ++v196;
                      v182 = 1;
                      if (v188 != 42)
                      {
                        continue;
                      }

                      v184 += v193;
                      v187 = -2;
                      goto LABEL_353;
                    case '0':
                      v184 += v193;
                      v182 = v182;
                      goto LABEL_353;
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                      v198 = 0;
                      v199 = v184 + v193;
                      v184 = v196;
                      break;
                    case '@':
                      if (!v181)
                      {
                        goto LABEL_444;
                      }

                      v181 = 0;
                      v186 = v193 + v184;
                      v184 += v193;
                      goto LABEL_353;
                    case 'A':
                    case 'a':
                      goto LABEL_420;
                    case 'C':
                      v214 = 2;
                      v197 = 41;
                      goto LABEL_429;
                    case 'D':
                    case 'U':
                    case 'd':
                    case 'i':
                    case 'u':
                      v214 = v183;
                      _CFExecutableLinkedOnOrAfter(8uLL);
                      v197 = 33;
                      goto LABEL_429;
                    case 'E':
                    case 'F':
                    case 'G':
                    case 'e':
                    case 'f':
                    case 'g':
                      _CFExecutableLinkedOnOrAfter(8uLL);
LABEL_420:
                      if (v183 == 5)
                      {
                        v214 = 5;
                      }

                      else
                      {
                        v214 = 4;
                      }

                      v197 = 34;
                      goto LABEL_429;
                    case 'L':
                      v184 += v193;
                      v183 = 5;
                      goto LABEL_353;
                    case 'O':
                    case 'X':
                    case 'o':
                    case 'x':
                      v197 = 33;
                      goto LABEL_428;
                    case 'P':
                      v214 = 4;
                      v197 = 40;
                      goto LABEL_429;
                    case 'S':
                      v214 = 4;
                      v197 = 38;
                      goto LABEL_429;
                    case '[':
                      v206 = v193 + v184;
                      v184 += v193;
                      if (!v180)
                      {
                        v186 = v206;
                      }

                      v180 = 1;
                      goto LABEL_353;
                    case 'c':
                      goto LABEL_429;
                    case 'h':
                      v203 = v193 + v184;
                      if (v193 + v184 >= v169)
                      {
                        v183 = 2;
                        goto LABEL_397;
                      }

                      if (CStringPtrInternal)
                      {
                        v204 = CStringPtrInternal[v184 + v193];
                      }

                      else
                      {
                        v204 = *(v195 + 2 * v193);
                      }

                      if (v204 == 104)
                      {
                        ++v184;
                      }

                      v184 += v193;
                      if (v204 == 104)
                      {
                        v183 = 1;
                      }

                      else
                      {
                        v183 = 2;
                      }

                      goto LABEL_353;
                    case 'j':
                    case 'q':
                    case 't':
                    case 'z':
                      v184 += v193;
                      goto LABEL_378;
                    case 'l':
                      v203 = v193 + v184;
                      if (v193 + v184 >= v169)
                      {
                        v183 = 4;
LABEL_397:
                        v184 = v203;
                      }

                      else
                      {
                        if (CStringPtrInternal)
                        {
                          v205 = CStringPtrInternal[v184 + v193];
                        }

                        else
                        {
                          v205 = *(v195 + 2 * v193);
                        }

                        if (v205 == 108)
                        {
                          ++v184;
                        }

                        v184 += v193;
LABEL_378:
                        v183 = 4;
                      }

                      goto LABEL_353;
                    case 'n':
                      v214 = 4;
                      v197 = 42;
                      goto LABEL_429;
                    case 'p':
                      v214 = 4;
                      v197 = 35;
                      goto LABEL_429;
                    case 's':
                      v214 = 4;
                      v197 = 39;
                      goto LABEL_429;
                    default:
                      v214 = v183;
                      v197 = 32;
                      goto LABEL_429;
                  }

                  break;
                }

                do
                {
                  v200 = (v198 * 10) >> 64;
                  v201 = 10 * v198;
                  if (v200 != v201 >> 63)
                  {
                    goto LABEL_425;
                  }

                  v202 = v188 - 48;
                  v47 = __OFADD__(v201, v202);
                  v198 = v201 + v202;
                  if (v47)
                  {
                    goto LABEL_425;
                  }

                  if (v199 >= (v169 & 0x7FFFFFFF))
                  {
LABEL_427:
                    v197 = 43;
                    goto LABEL_428;
                  }

                  if (CStringPtrInternal)
                  {
                    v188 = CStringPtrInternal[v199];
                  }

                  else
                  {
                    v188 = *(v142 + 2 * v199);
                  }

                  ++v199;
                  ++v184;
                }

                while (v188 - 48 < 0xA);
                if (v188 != 36)
                {
                  if (v198 <= 0x7FFFFFFF)
                  {
                    continue;
                  }

LABEL_425:
                  v197 = 0;
LABEL_428:
                  v214 = v183;
                  goto LABEL_429;
                }

                break;
              }

              if (v198 > 127)
              {
                goto LABEL_425;
              }

              if (v187 == 254)
              {
                v187 = v198 - 1;
              }

              else if (v185 == 254)
              {
                v185 = v198 - 1;
              }
            }

            else
            {
              v189 = v188 >= 0x30 && v188 - 58 >= 7;
              if (!v189 || (v188 != 95 ? (v190 = v188 - 91 >= 6) : (v190 = 1), v190 ? (v191 = 0) : (v191 = 1), v188 <= 0x7A ? (v192 = v191 == 0) : (v192 = 0), !v192))
              {
                if (v188 != 93)
                {
                  if (v188 == 64)
                  {
LABEL_444:
                    v214 = 4;
                    v197 = 37;
                    goto LABEL_429;
                  }

                  v186 = -1;
                }
              }
            }

LABEL_353:
            if (v184 >= v169)
            {
              v214 = v183;
              goto LABEL_414;
            }
          }
        }

        v214 = 0;
LABEL_414:
        v197 = 43;
LABEL_429:
        if (v170)
        {
          CFAllocatorDeallocate(alloca, v170);
        }

        v19 = v412;
        if (v412)
        {
          v209 = CFStringFind(v164, @"%", 0);
          v147 = v415;
          if (v209.location != -1 || v209.length)
          {
            v39 = alloca;
            v393 = CFDictionaryCreateMutable(alloca, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v394 = v393;
            v395 = @"Invalid format for NSStringFormatValueTypeKey";
            goto LABEL_922;
          }

          if ((0xC0100000000uLL >> v197))
          {
            v53 = v439;
          }

          else
          {
            LOWORD(v451[0]) = v214;
            WORD1(v451[0]) = v197;
            *(v451 + 4) = *(v148 + 4);
            v451[1] = *(v148 + 1);
            v210 = __CFStringValidateFormatSpec(v412, v451, cf2);
            v53 = v439;
            cf2 = v210;
            if (v210 < 0)
            {
              v39 = alloca;
              v396 = CFStringCreateWithFormat(alloca, 0, @"NSStringFormatValueTypeKey '%@' does not match expected specifiers '%@'", v164, v412);
              v397 = CFDictionaryCreateMutable(alloca, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              CFDictionarySetValue(v397, @"NSDebugDescription", v396);
              *v413 = CFErrorCreate(alloca, @"NSCocoaErrorDomain", 2048, v397);
              CFRelease(v397);
              CFRelease(v396);
              v53 = v439;
              appended = 0;
              v30 = a14;
              v40 = v422;
              v51 = v424;
              goto LABEL_926;
            }
          }
        }

        else
        {
          v53 = v439;
          v147 = v415;
        }

        v211 = &__src[16 * v148[24]];
        v211[1] = v214;
        *v211 = v197;
        goto LABEL_439;
      }
    }

    v53 = v439;
LABEL_439:
    v212 = v148[26];
    if (v212 != -1)
    {
      *&__src[16 * v212] = 33;
    }

    v213 = v148[25];
    if (v213 != -1)
    {
      *&__src[16 * v213] = 33;
    }

    v146 = v71;
    goto LABEL_287;
  }

  LODWORD(v147) = 3 * (v43 + a9) + 1;
LABEL_456:
  if (v147 >= 1)
  {
    v215 = 0;
    v216 = 0;
    v217 = __src;
    v218 = a11;
    do
    {
      if (a11 && v215 < a12 && !*v217)
      {
        *v217 = *v218;
      }

      v219 = *v217;
      if (v219 > 0x2C)
      {
LABEL_933:
        __break(1u);
        JUMPOUT(0x1830EF84CLL);
      }

      if (((1 << v219) & 0x7EE00000000) != 0)
      {
        v216 = v215;
      }

      else if (((1 << v219) & 0x180100000001) == 0)
      {
        goto LABEL_933;
      }

      ++v215;
      ++v218;
      v217 += 8;
    }

    while (v147 != v215);
    v220 = 0;
    v221 = v216;
    v222 = __src + 8;
    while (2)
    {
      v223 = *(v222 - 4);
      if (v223 > 0x24)
      {
        if (v223 - 37 >= 4)
        {
          if (v223 != 41)
          {
            if (v223 == 42)
            {
              a13 += 4;
              *v222 = &ptr.i64[1];
            }

            goto LABEL_490;
          }

LABEL_476:
          v224 = *(v222 - 3);
          if (v224 <= 2)
          {
            if (v224 == 1)
            {
              v231 = a13;
              a13 += 4;
              v226 = *v231;
              goto LABEL_489;
            }

            if (v224 == 2)
            {
              v225 = a13;
              a13 += 4;
              v226 = *v225;
LABEL_489:
              *v222 = v226;
              goto LABEL_490;
            }

LABEL_492:
            v230 = a13;
            a13 += 4;
            v226 = *v230;
            goto LABEL_489;
          }

          if (v224 != 4)
          {
            goto LABEL_492;
          }
        }

LABEL_488:
        v229 = a13;
        a13 += 4;
        v226 = *v229;
        goto LABEL_489;
      }

      if (*(v222 - 4) > 0x21u)
      {
        if (v223 == 34)
        {
          v228 = a13;
          a13 += 4;
          *v222 = *v228;
          goto LABEL_490;
        }

        if (v223 == 35)
        {
          goto LABEL_488;
        }
      }

      else
      {
        if (*(v222 - 4))
        {
          if (v223 != 33)
          {
            goto LABEL_490;
          }

          goto LABEL_476;
        }

        v227 = dyld_program_sdk_at_least();
        if (v220 < v221 && v227)
        {
          a13 += 4;
        }
      }

LABEL_490:
      ++v220;
      v222 += 2;
      if (v147 == v220)
      {
        break;
      }

      continue;
    }
  }

  v232 = v147;
  v52 = __src;
  if (a11)
  {
    v233 = a11;
  }

  else
  {
    v233 = __src;
  }

  v436 = v147;
  if (a11)
  {
    v232 = a12;
  }

  v407 = v232;
  v408 = v233;
  if (!v71)
  {
    v384 = 0;
    v30 = a14;
    v39 = alloca;
    v51 = v424;
    v50 = v414;
    goto LABEL_897;
  }

  v437 = v71;
  cf2a = malloc_type_calloc(v71, 0x20uLL, 0x10000408E5DAE1CuLL);
  v235 = 0;
  v409 = 0;
  v406 = 0;
  v404 = 0;
  v405 = v418 + 1;
  v236 = v439;
  v237 = (v439 - 8);
  v238 = 1;
  v30 = a14;
  while (2)
  {
    ptr.i16[0] = 0;
    v239 = v236 + 32 * v235;
    v240 = *(v239 + 26);
    if (v240 == -1)
    {
      v241 = 0;
      v242 = 0;
    }

    else
    {
      v241 = v52[4 * v240 + 2];
      v242 = 1;
    }

    v243 = *(v239 + 25);
    if (v243 == -1)
    {
      v244 = 0;
      v245 = 0;
    }

    else
    {
      v244 = v52[4 * v243 + 2];
      v245 = 1;
    }

    v246 = *(v239 + 12);
    v247 = *(v239 + 16);
    if (v246 == -1)
    {
      v248 = v241;
    }

    else
    {
      v248 = v246;
    }

    if (v246 == -1)
    {
      v249 = v242;
    }

    else
    {
      v249 = 1;
    }

    if (v247 == -1)
    {
      v250 = v244;
    }

    else
    {
      v250 = v247;
    }

    if (v247 == -1)
    {
      v251 = v245;
    }

    else
    {
      v251 = 1;
    }

    v252 = *(v239 + 2);
    if (v252 <= 0x25)
    {
      if (*(v239 + 2) > 0x22u)
      {
        if (v252 == 35)
        {
          goto LABEL_649;
        }

        if (v252 == 37)
        {
          goto LABEL_537;
        }
      }

      else
      {
        if (v252 - 33 < 2)
        {
          if (v435 && (*(v239 + 20) & 0x20) != 0)
          {
            if (v30)
            {
              v253 = CFStringGetLength(theString);
              if (__CFStringFormatLocalizedNumber(theString, v423, __src, v239, v248, v250, v251))
              {
                v254 = CFStringGetLength(theString);
LABEL_648:
                v451[0] = *v239;
                v451[1] = *(v239 + 16);
                v286 = v440;
                v256 = v437;
                v287 = v437;
                v52 = __src;
                goto LABEL_738;
              }
            }

            else if (__CFStringFormatLocalizedNumber(theString, v423, __src, v236 + 32 * v235, v248, v250, v251))
            {
              v253 = 0;
              v254 = 0;
              goto LABEL_648;
            }
          }

LABEL_649:
          v299 = *(v239 + 8);
          if ((v299 + 1) < 0x81)
          {
            v300 = 0;
            v301 = v453;
          }

          else
          {
            v300 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v299 + 1, 0x100004077774924uLL);
            v301 = v300;
          }

          if (v250 + v248 < 17)
          {
            v421 = 0;
            v303 = v451;
            v304 = 527;
          }

          else
          {
            v302 = v250 + v248 + 512;
            v303 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v302, 0x100004077774924uLL);
            v304 = v302 - 1;
            v30 = a14;
            v421 = v303;
          }

          v305 = *(v239 + 8);
          v306 = *(v239 + 4);
          if (v434)
          {
            if (v305 >= 1)
            {
              v307 = 0;
              v308 = 0;
              do
              {
                v309 = *(v434 + v307 + v306);
                if (v309 == 36)
                {
                  if ((v308 & 0x80000000) == 0)
                  {
                    v310 = &v301[v308 - 1];
                    do
                    {
                      v311 = *v310--;
                      --v308;
                    }

                    while ((v311 - 48) < 0xA);
                  }
                }

                else
                {
                  v301[v308] = v309;
                  v305 = *(v239 + 8);
                }

                ++v308;
                ++v307;
              }

              while (v307 < v305);
              goto LABEL_677;
            }
          }

          else if (v305 >= 1)
          {
            v312 = 0;
            v308 = 0;
            do
            {
              v313 = v430[v312 + v306];
              if (v313 == 36)
              {
                if ((v308 & 0x80000000) == 0)
                {
                  v314 = &v301[v308 - 1];
                  do
                  {
                    v315 = *v314--;
                    --v308;
                  }

                  while ((v315 - 48) < 0xA);
                }
              }

              else
              {
                v301[v308] = v313;
                v305 = *(v239 + 8);
              }

              ++v308;
              ++v312;
            }

            while (v312 < v305);
LABEL_677:
            v301[v308] = 0;
            v303[v304] = 0;
            if (v30)
            {
              v416 = CFStringGetLength(theString);
            }

            else
            {
              v416 = 0;
            }

            v316 = *(v239 + 2);
            if (v316 > 0x22)
            {
              if (v316 != 35 && v316 != 42)
              {
                goto LABEL_699;
              }

              v319 = *&__src[16 * *(v239 + 24) + 8];
            }

            else
            {
              if (v316 != 33)
              {
                if (v316 == 34)
                {
                  v317 = *&__src[16 * *(v239 + 24) + 8];
                  v318 = *(v239 + 25);
                  if (*(v239 + 26) == 255)
                  {
                    if (v318 == 255)
                    {
                      snprintf_l(v303, 0x1FFuLL, 0, v301, v317, *&__src[16 * *(v239 + 24) + 8], v402, locale);
                    }

                    else
                    {
                      snprintf_l(v303, 0x1FFuLL, 0, v301, v317, v250, *&__src[16 * *(v239 + 24) + 8], locale);
                    }
                  }

                  else if (v318 == 255)
                  {
                    snprintf_l(v303, 0x1FFuLL, 0, v301, v317, v248, *&__src[16 * *(v239 + 24) + 8], locale);
                  }

                  else
                  {
                    snprintf_l(v303, 0x1FFuLL, 0, v301, v317, v248, v250, *&__src[16 * *(v239 + 24) + 8]);
                  }

                  if (v423)
                  {
                    v338 = CFGetTypeID(v423);
                    v339 = (v338 == CFLocaleGetTypeID() ? CFLocaleGetValue(v423, @"kCFLocaleDecimalSeparatorKey") : CFDictionaryGetValue(v423, @"NSDecimalSeparator"));
                    v340 = v339;
                    if (v339)
                    {
                      for (i = v303 + 1; *(i - 1); ++i)
                      {
                        if (*(i - 1) == 46)
                        {
                          *(i - 1) = 0;
                          v348 = __CFDefaultEightBitStringEncoding;
                          v323 = theString;
                          if (__CFDefaultEightBitStringEncoding == -1)
                          {
                            v348 = __CFStringComputeEightBitStringEncoding();
                          }

                          CFStringAppendCString(theString, v303, v348);
                          CFStringAppend(theString, v340);
                          v322 = __CFDefaultEightBitStringEncoding;
                          if (__CFDefaultEightBitStringEncoding == -1)
                          {
                            v322 = __CFStringComputeEightBitStringEncoding();
                          }

                          v324 = theString;
                          v325 = i;
                          goto LABEL_702;
                        }
                      }
                    }
                  }
                }

                goto LABEL_699;
              }

              v319 = *&__src[16 * *(v239 + 24) + 8];
              if (*v239 != 4)
              {
                v320 = *(v239 + 26);
                v321 = *(v239 + 25);
LABEL_690:
                if (v320 == 255)
                {
                  if (v321 == 255)
                  {
                    snprintf_l(v303, 0x1FFuLL, 0, v301, v319);
                  }

                  else
                  {
                    v402 = v319;
                    snprintf_l(v303, 0x1FFuLL, 0, v301, v250);
                  }
                }

                else
                {
                  if (v321 == 255)
                  {
                    v402 = v319;
                  }

                  else
                  {
                    v402 = v250;
                    locale = v319;
                  }

                  snprintf_l(v303, 0x1FFuLL, 0, v301, v248);
                }

LABEL_699:
                v322 = __CFDefaultEightBitStringEncoding;
                if (__CFDefaultEightBitStringEncoding == -1)
                {
                  v322 = __CFStringComputeEightBitStringEncoding();
                }

                v323 = theString;
                v324 = theString;
                v325 = v303;
LABEL_702:
                CFStringAppendCString(v324, v325, v322);
                v30 = a14;
                v52 = __src;
                if (a14)
                {
                  v326 = CFStringGetLength(v323);
                }

                else
                {
                  v326 = 0;
                }

                v327 = *(v239 + 16);
                v444[0] = *v239;
                v444[1] = v327;
                v256 = v437;
                _CFStringFormatAppendMetadata(v440, v437, __src, v436, v444, v416, v326, 0);
                if (v421)
                {
                  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v421);
                }

                if (v300)
                {
                  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v300);
                }

                goto LABEL_847;
              }
            }

            v320 = *(v239 + 26);
            v321 = *(v239 + 25);
            goto LABEL_690;
          }

          v308 = 0;
          goto LABEL_677;
        }

        if (v252 == 32)
        {
          if (v30)
          {
            v255 = CFStringGetLength(theString);
          }

          else
          {
            v255 = 0;
          }

          v282 = *(v239 + 4);
          v281 = *(v239 + 8);
          v283 = v434;
          if (v434)
          {
            v284 = __CFDefaultEightBitStringEncoding;
            if (__CFDefaultEightBitStringEncoding == -1)
            {
              v285 = __CFStringComputeEightBitStringEncoding();
              v283 = v434;
              v284 = v285;
            }

            __CFStringAppendBytes(theString, (v283 + v282), v281, v284);
          }

          else
          {
            CFStringAppendCharacters(theString, &v430[v282], v281);
          }

          v30 = a14;
          v52 = __src;
          if (a14)
          {
            v254 = CFStringGetLength(theString);
          }

          else
          {
            v254 = 0;
          }

          v451[0] = *v239;
          v451[1] = *(v239 + 16);
          v286 = v440;
          v256 = v437;
          v287 = v437;
          goto LABEL_619;
        }
      }

LABEL_549:
      v52 = __src;
      v256 = v437;
      goto LABEL_848;
    }

    if (*(v239 + 2) > 0x28u)
    {
      if (v252 != 41)
      {
        if (v252 == 43)
        {
          v52 = __src;
          v256 = v437;
          if (v30)
          {
            v257 = CFStringGetLength(theString);
          }

          else
          {
            v257 = 0;
          }

          v451[0] = *v239;
          v451[1] = *(v239 + 16);
          v286 = v440;
          v287 = v437;
          v288 = __src;
          v289 = v436;
          v254 = v257;
          goto LABEL_739;
        }

        if (v252 != 44)
        {
          goto LABEL_549;
        }

LABEL_537:
        if (v30)
        {
          v420 = CFStringGetLength(theString);
        }

        else
        {
          v420 = 0;
        }

        if (*(v239 + 27) != 255)
        {
          if (*(v239 + 2) == 44)
          {
            if (!cf)
            {
              goto LABEL_835;
            }

            v259 = cf;
            goto LABEL_555;
          }

          v273 = &__src[16 * *(v239 + 24)];
          v274 = *v273;
          if (v274 <= 0x25)
          {
            if (*v273 > 0x22u)
            {
              if (v274 != 35)
              {
                if (v274 != 37)
                {
                  goto LABEL_835;
                }

                v259 = *(v273 + 1);
                if (!v259)
                {
                  goto LABEL_835;
                }

LABEL_555:
                v260 = CFRetain(v259);
LABEL_830:
                v359 = v260;
                goto LABEL_831;
              }

              v275 = v273 + 8;
              v350 = alloca;
              v351 = kCFNumberCFIndexType;
            }

            else if (v274 == 33)
            {
              v275 = v273 + 8;
              v350 = alloca;
              v351 = kCFNumberSInt64Type;
            }

            else
            {
              if (v274 != 34)
              {
                goto LABEL_835;
              }

              if (*(v273 + 1) == 5)
              {
                *&v451[0] = *(v273 + 1);
                v275 = v451;
              }

              else
              {
                v275 = v273 + 8;
              }

              v350 = alloca;
              v351 = kCFNumberDoubleType;
            }

            v260 = CFNumberCreate(v350, v351, v275);
            goto LABEL_830;
          }

          if (v274 - 39 < 2)
          {
            if (!*(v273 + 1))
            {
              goto LABEL_835;
            }

            v417 = CFStringCreateMutable(alloca, 0);
            v333 = *&__src[16 * *(v239 + 24) + 8];
            if (*(v239 + 2) == 40)
            {
              v335 = *v333;
              v333 = (v333 + 1);
              v334 = v335;
              if (v250 >= v335)
              {
                v336 = v334;
              }

              else
              {
                v336 = v250;
              }

              if (v251)
              {
                v337 = v336;
              }

              else
              {
                v337 = v334;
              }
            }

            else if (v251)
            {
              v362 = memchr(*&__src[16 * *(v239 + 24) + 8], 0, v250);
              if (v362)
              {
                v337 = v362 - v333;
              }

              else
              {
                v337 = v250;
              }
            }

            else
            {
              v337 = strlen(*&__src[16 * *(v239 + 24) + 8]);
            }

            if ((*(v239 + 20) & 2) == 0)
            {
              v372 = v248;
              v359 = v417;
              if (v249)
              {
                v373 = v372 - v337;
                if (v372 > v337)
                {
                  do
                  {
                    if (v373 >= 10)
                    {
                      v374 = 10;
                    }

                    else
                    {
                      v374 = v373;
                    }

                    __CFStringAppendBytes(v417, "          ", v374, 1536);
                    v47 = __OFSUB__(v373, 10);
                    v373 -= 10;
                  }

                  while (!((v373 < 0) ^ v47 | (v373 == 0)));
                }
              }

              if (__CFDefaultSystemEncoding)
              {
                v375 = 0;
              }

              else
              {
                CFStringGetSystemEncoding();
                v375 = __CFDefaultSystemEncoding - 1;
              }

              __CFStringAppendBytes(v417, v333, v337, v375);
LABEL_831:
              if (v359)
              {
                v363 = _CFCopyResolvedFormatStringWithConfiguration(v359, *(v424 + *(v239 + 27)), v423);
                CFRelease(v359);
                if (v363)
                {
                  *&v451[0] = v445;
                  if (*(v239 + 24) < 0)
                  {
                    v365 = v237;
                    v366 = v238;
                    v262 = theString;
                    v52 = __src;
                    if (v235)
                    {
                      while (1)
                      {
                        v368 = *v365;
                        v365 -= 32;
                        v367 = v368;
                        if ((v368 & 0x80000000) == 0)
                        {
                          break;
                        }

                        if (--v366 < 2)
                        {
                          goto LABEL_839;
                        }
                      }

                      v364 = v367 + 1;
                    }

                    else
                    {
LABEL_839:
                      v364 = 0;
                    }
                  }

                  else
                  {
                    v364 = *(v239 + 24);
                    v262 = theString;
                    v52 = __src;
                  }

                  appended = __CFStringAppendFormatCore(v262, v425, v431, v423, theDict, 0, v412, v363, v364, v405, v408, v407, *&v451[0], 0, v413);
                  CFRelease(v363);
                  if (!appended)
                  {
                    free(cf2a);
                    goto LABEL_924;
                  }

                  goto LABEL_842;
                }
              }

LABEL_835:
              v262 = theString;
              CFStringAppendCString(theString, "(null)", 0x600u);
              v346 = 0;
              v52 = __src;
LABEL_843:
              if (a14)
              {
                v369 = CFStringGetLength(v262);
              }

              else
              {
                v369 = 0;
              }

              v451[0] = *v239;
              v451[1] = *(v239 + 16);
              v256 = v437;
              _CFStringFormatAppendMetadata(v440, v437, v52, v436, v451, v420, v369, v346);
              v30 = a14;
              goto LABEL_847;
            }

            if (__CFDefaultSystemEncoding)
            {
              v376 = 0;
            }

            else
            {
              CFStringGetSystemEncoding();
              v376 = __CFDefaultSystemEncoding - 1;
            }

            __CFStringAppendBytes(v417, v333, v337, v376);
            if (v249)
            {
              v377 = v248 - v337;
              if (v248 > v337)
              {
                v359 = v417;
                do
                {
                  if (v377 >= 10)
                  {
                    v378 = 10;
                  }

                  else
                  {
                    v378 = v377;
                  }

                  __CFStringAppendBytes(v417, "          ", v378, 1536);
                  v47 = __OFSUB__(v377, 10);
                  v377 -= 10;
                }

                while (!((v377 < 0) ^ v47 | (v377 == 0)));
                goto LABEL_831;
              }
            }
          }

          else
          {
            if (v274 != 38)
            {
              if (v274 != 41)
              {
                goto LABEL_835;
              }

              ptr.i16[0] = *(v273 + 1);
              v260 = __CFStringCreateImmutableFunnel3(alloca, &ptr, 2, 0x100uLL, 16, &__kCFAllocatorNull, 0, v234);
              goto LABEL_830;
            }

            v352 = *(v273 + 1);
            if (!v352)
            {
              goto LABEL_835;
            }

            v417 = CFStringCreateMutable(alloca, 0);
            v353 = -1;
            v354 = v352;
            do
            {
              v355 = *v354++;
              ++v353;
            }

            while (v355);
            if (v250 >= v353)
            {
              v356 = v353;
            }

            else
            {
              v356 = v250;
            }

            if (v251)
            {
              v357 = v356;
            }

            else
            {
              v357 = v353;
            }

            if ((*(v239 + 20) & 2) == 0)
            {
              v358 = v248;
              v359 = v417;
              if (v249)
              {
                v360 = v358 - v357;
                if (v358 > v357)
                {
                  do
                  {
                    if (v360 >= 10)
                    {
                      v361 = 10;
                    }

                    else
                    {
                      v361 = v360;
                    }

                    __CFStringAppendBytes(v417, "          ", v361, 1536);
                    v47 = __OFSUB__(v360, 10);
                    v360 -= 10;
                  }

                  while (!((v360 < 0) ^ v47 | (v360 == 0)));
                }
              }

              CFStringAppendCharacters(v417, v352, v357);
              goto LABEL_831;
            }

            CFStringAppendCharacters(v417, v352, v357);
            if (v249)
            {
              v370 = v248 - v357;
              if (v248 > v357)
              {
                v359 = v417;
                do
                {
                  if (v370 >= 10)
                  {
                    v371 = 10;
                  }

                  else
                  {
                    v371 = v370;
                  }

                  __CFStringAppendBytes(v417, "          ", v371, 1536);
                  v47 = __OFSUB__(v370, 10);
                  v370 -= 10;
                }

                while (!((v370 < 0) ^ v47 | (v370 == 0)));
                goto LABEL_831;
              }
            }
          }

          v359 = v417;
          goto LABEL_831;
        }

        v52 = __src;
        v261 = *&__src[16 * *(v239 + 24) + 8];
        if (!v261)
        {
          v262 = theString;
          v295 = theString;
          v296 = "(null)";
LABEL_747:
          CFStringAppendCString(v295, v296, 0x600u);
LABEL_842:
          v346 = 0;
          goto LABEL_843;
        }

        v262 = theString;
        if (v431)
        {
          LOBYTE(v451[0]) = 0;
          v263 = __CFSTRING_IS_CALLING_OUT_TO_AN_OBJECT_FORMAT_ARGUMENT_WITH_CONTEXT__(v431, v261, v411);
          if (LOBYTE(v451[0]) == 1)
          {
            v264 = CFRetain(@"%@NSCONTEXT");
            v265 = *(v239 + 16);
            v266 = &cf2a[32 * v409];
            *v266 = *v239;
            *(v266 + 1) = v265;
            ++v409;
          }

          else
          {
            v264 = v263;
          }

          if (v264)
          {
            goto LABEL_770;
          }

          v261 = *&__src[16 * *(v239 + 24) + 8];
        }

        if (v425)
        {
          v332 = __CFSTRING_IS_CALLING_OUT_TO_AN_OBJECT_FORMAT_ARGUMENT_WITH_LOCALE__(v425, v261, v423);
        }

        else
        {
          v342 = __CFSTRING_IS_CALLING_OUT_TO_AN_OBJECT_FORMAT_ARGUMENT_WITH_LOCALE__(__CFCopyFormattingDescription, v261, v423);
          if (v342)
          {
            v264 = v342;
            goto LABEL_770;
          }

          v332 = __CFSTRING_IS_CALLING_OUT_TO_AN_OBJECT_FORMAT_ARGUMENT__(*&__src[16 * *(v239 + 24) + 8]);
        }

        v264 = v332;
        if (!v332)
        {
          v295 = theString;
          v296 = "(null description)";
          goto LABEL_747;
        }

LABEL_770:
        v343 = __CFStringAppendFormatCore_disableIsolates;
        if (__CFStringAppendFormatCore_disableIsolates == 255)
        {
          if (dyld_program_sdk_at_least())
          {
            v343 = __CFgetenv("CFStringDisableIsolates") != 0;
          }

          else
          {
            v343 = 1;
          }

          __CFStringAppendFormatCore_disableIsolates = v343;
        }

        v92 = v343 == 0;
        v344 = v435;
        if (!v92)
        {
          v344 = 0;
        }

        if (v344)
        {
          v345 = CFStringGetLength(v264) == 1 && (CFStringGetCharacterAtIndex(v264, 0) & 0xFFFE) == 0x200E;
          if (v406)
          {
            v347 = 1;
          }

          else
          {
            if (_os_feature_enabled_impl())
            {
              v349 = __CFShouldUseIsolatesForAppendingValueWithStatisticalWritingDirections(v264, theString, &v450, &v450 + 1, v345, v404, v439, v235, range, v411, v423);
            }

            else
            {
              v349 = __CFShouldUseIsolatesForAppendingValue(v264, theString, v404, v439, v235, range, v411);
            }

            v347 = v349;
          }

          if (_os_feature_enabled_impl())
          {
            __CFAppendFormattedValueWithStatisticalWritingDirections(v264, theString, v345, v347);
          }

          else
          {
            __CFAppendFormattedValue(v264, theString, v347);
          }

          if (v347)
          {
            v406 = 1;
            v346 = 1;
          }

          else
          {
            v404 = CFStringGetLength(theString);
            v406 = 0;
            v346 = 0;
          }

          v52 = __src;
        }

        else
        {
          CFStringAppend(theString, v264);
          v346 = 0;
        }

        CFRelease(v264);
        goto LABEL_843;
      }

      if (v30)
      {
        v258 = theString;
        v255 = CFStringGetLength(theString);
      }

      else
      {
        v255 = 0;
        v258 = theString;
      }

      v256 = v437;
      ptr.i16[0] = *&__src[16 * *(v239 + 24) + 8];
      CFStringAppendCharacters(v258, &ptr, 1);
      if (v30)
      {
        v254 = CFStringGetLength(v258);
      }

      else
      {
        v254 = 0;
      }

      v451[0] = *v239;
      v451[1] = *(v239 + 16);
      v286 = v440;
      v287 = v437;
      v52 = __src;
LABEL_619:
      v288 = v52;
      v289 = v436;
      v257 = v255;
      goto LABEL_739;
    }

    if (v252 - 39 >= 2)
    {
      if (v252 == 38)
      {
        if (v30)
        {
          v253 = CFStringGetLength(theString);
        }

        else
        {
          v253 = 0;
        }

        v290 = *&__src[16 * *(v239 + 24) + 8];
        if (v290)
        {
          if (v251)
          {
            if (v250 < 1)
            {
              LODWORD(v291) = 0;
            }

            else
            {
              v291 = 0;
              while (v290[v291])
              {
                if (v250 == ++v291)
                {
                  LODWORD(v291) = v250;
                  break;
                }
              }
            }
          }

          else
          {
            LODWORD(v291) = -1;
            v297 = *&__src[16 * *(v239 + 24) + 8];
            do
            {
              v298 = *v297++;
              LODWORD(v291) = v291 + 1;
            }

            while (v298);
          }

          v292 = theString;
          if ((*(v239 + 20) & 2) != 0)
          {
            CFStringAppendCharacters(theString, v290, v291);
            if (v249)
            {
              v330 = v248 - v291;
              if (v248 > v291)
              {
                do
                {
                  if (v330 >= 10)
                  {
                    v331 = 10;
                  }

                  else
                  {
                    v331 = v330;
                  }

                  __CFStringAppendBytes(theString, "          ", v331, 1536);
                  v47 = __OFSUB__(v330, 10);
                  v330 -= 10;
                }

                while (!((v330 < 0) ^ v47 | (v330 == 0)));
              }
            }
          }

          else
          {
            if (v249)
            {
              v328 = v248 - v291;
              if (v248 > v291)
              {
                do
                {
                  if (v328 >= 10)
                  {
                    v329 = 10;
                  }

                  else
                  {
                    v329 = v328;
                  }

                  __CFStringAppendBytes(theString, "          ", v329, 1536);
                  v47 = __OFSUB__(v328, 10);
                  v328 -= 10;
                }

                while (!((v328 < 0) ^ v47 | (v328 == 0)));
              }
            }

            CFStringAppendCharacters(theString, v290, v291);
          }
        }

        else
        {
          v292 = theString;
          CFStringAppendCString(theString, "(null)", 0x600u);
        }

        v30 = a14;
        if (a14)
        {
          v254 = CFStringGetLength(v292);
        }

        else
        {
          v254 = 0;
        }

        v52 = __src;
        goto LABEL_737;
      }

      goto LABEL_549;
    }

    if (v30)
    {
      v419 = CFStringGetLength(theString);
    }

    else
    {
      v419 = 0;
    }

    v267 = *&__src[16 * *(v239 + 24) + 8];
    if (v267)
    {
      if (*(v239 + 2) == 40)
      {
        v269 = *v267++;
        v268 = v269;
        if (v250 >= v269)
        {
          v270 = v268;
        }

        else
        {
          v270 = v250;
        }

        if (v251)
        {
          v271 = v270;
        }

        else
        {
          v271 = v268;
        }

LABEL_580:
        v272 = theString;
      }

      else
      {
        if (v251)
        {
          v276 = memchr(v267, 0, v250);
          if (v276)
          {
            v271 = v276 - v267;
          }

          else
          {
            v271 = v250;
          }

          goto LABEL_580;
        }

        if (v267 < 0)
        {
          v272 = theString;
          if (!_objc_getTaggedPointerTag_0(v267) && (dyld_program_sdk_at_least() & 1) == 0)
          {
            __CFStringAppendFormatCore_cold_1(v267, v451);
            v267 = *&v451[0];
          }
        }

        else
        {
          v272 = theString;
        }

        v271 = strlen(v267);
      }

      if ((*(v239 + 20) & 2) != 0)
      {
        if (__CFDefaultSystemEncoding)
        {
          v280 = 0;
        }

        else
        {
          CFStringGetSystemEncoding();
          v280 = __CFDefaultSystemEncoding - 1;
        }

        v253 = v419;
        __CFStringAppendBytes(v272, v267, v271, v280);
        if (v249)
        {
          v293 = v248 - v271;
          if (v248 > v271)
          {
            do
            {
              if (v293 >= 10)
              {
                v294 = 10;
              }

              else
              {
                v294 = v293;
              }

              __CFStringAppendBytes(v272, "          ", v294, 1536);
              v47 = __OFSUB__(v293, 10);
              v293 -= 10;
            }

            while (!((v293 < 0) ^ v47 | (v293 == 0)));
          }
        }
      }

      else
      {
        if (v249)
        {
          v277 = v248 - v271;
          if (v248 > v271)
          {
            do
            {
              if (v277 >= 10)
              {
                v278 = 10;
              }

              else
              {
                v278 = v277;
              }

              __CFStringAppendBytes(v272, "          ", v278, 1536);
              v47 = __OFSUB__(v277, 10);
              v277 -= 10;
            }

            while (!((v277 < 0) ^ v47 | (v277 == 0)));
          }
        }

        if (__CFDefaultSystemEncoding)
        {
          v279 = 0;
        }

        else
        {
          CFStringGetSystemEncoding();
          v279 = __CFDefaultSystemEncoding - 1;
        }

        v253 = v419;
        __CFStringAppendBytes(v272, v267, v271, v279);
      }
    }

    else
    {
      v272 = theString;
      CFStringAppendCString(theString, "(null)", 0x600u);
      v253 = v419;
    }

    v30 = a14;
    if (a14)
    {
      v254 = CFStringGetLength(v272);
    }

    else
    {
      v254 = 0;
    }

    v52 = __src;
LABEL_737:
    v451[0] = *v239;
    v451[1] = *(v239 + 16);
    v286 = v440;
    v256 = v437;
    v287 = v437;
LABEL_738:
    v288 = v52;
    v289 = v436;
    v257 = v253;
LABEL_739:
    _CFStringFormatAppendMetadata(v286, v287, v288, v289, v451, v257, v254, 0);
LABEL_847:
    v236 = v439;
LABEL_848:
    ++v235;
    ++v238;
    v237 += 32;
    if (v235 != v256)
    {
      continue;
    }

    break;
  }

  v51 = v424;
  v50 = v414;
  if (v409 < 1)
  {
    v39 = alloca;
    v384 = cf2a;
  }

  else
  {
    v379 = v409;
    v380 = 24;
    do
    {
      v381 = CFStringFind(theString, @"%@NSCONTEXT", 0);
      v382 = __CFSTRING_IS_CALLING_OUT_TO_AN_OBJECT_FORMAT_ARGUMENT_WITH_CONTEXT__(v431, *&v52[4 * cf2a[v380] + 2], theString);
      if (v382)
      {
        v383 = v382;
        CFStringReplace(theString, v381, v382);
        CFRelease(v383);
      }

      v380 += 32;
      --v379;
      v52 = __src;
    }

    while (v379);
    v30 = a14;
    v384 = cf2a;
    v39 = alloca;
  }

LABEL_897:
  free(v384);
  appended = 1;
  v40 = v422;
  v53 = v439;
LABEL_898:
  if (v53 != v457)
  {
LABEL_899:
    CFAllocatorDeallocate(v39, v53);
  }

  if (v52 != v456)
  {
    CFAllocatorDeallocate(v39, v52);
  }

  if (v40 && v40 != v458)
  {
    CFAllocatorDeallocate(v39, v40);
  }

  if (v51 != v454)
  {
    CFAllocatorDeallocate(v39, v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v30 && theArray)
  {
    *v30 = CFArrayCreateCopy(&__kCFAllocatorSystemDefault, theArray);
    CFRelease(theArray);
  }

  return appended;
}

void _CFStringAppendFormatAndArgumentsAux2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 *a7)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  if (!__CFStringAppendFormatCore(a1, a2, a3, a4, 0, a5, 0, a6, 0, 0, 0, 0, a7, 0, v13))
  {
    CFLog(3, @"ERROR: Failed to format string: %@", v7, v8, v9, v10, v11, v12, v13[0]);
    if (v13[0])
    {
      CFRelease(v13[0]);
    }
  }
}

uint64_t _CFStringGetFormatSpecifierConfiguration(void *a1)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 formatConfiguration];
}

void CFRelease(CFTypeRef cf)
{
  if (!cf)
  {
    CFRelease_cold_1();
  }

  if ((cf & 0x8000000000000000) == 0)
  {
    v2 = atomic_load(cf + 1);
    if (CF_IS_OBJC((v2 >> 8) & 0x3FF, cf))
    {
    }

    else
    {

      _CFRelease(cf, v3, v4, v5, v6);
    }
  }
}

Boolean CFEqual(CFTypeRef cf1, CFTypeRef cf2)
{
  if (!cf1)
  {
    CFEqual_cold_2();
  }

  v2 = cf2;
  v3 = cf1;
  if (cf1 == cf2)
  {
    return 1;
  }

  if (!cf2)
  {
    CFEqual_cold_1();
  }

  if ((cf1 & 0x8000000000000000) == 0)
  {
    v21 = atomic_load(cf1 + 1);
    v22 = (v21 >> 8) & 0x3FF;
    goto LABEL_38;
  }

  v4 = *MEMORY[0x1E69E5910];
  v5 = cf1 & 0xC000000000000007;
  if ((cf2 & 0x8000000000000000) == 0)
  {
LABEL_24:
    v17 = 0;
    if (v5 == 0xC000000000000007)
    {
      v4 = 0;
    }

    v18 = v4 ^ cf1;
    do
    {
      if ((v18 & 7) == *(MEMORY[0x1E69E5900] + v17))
      {
        break;
      }

      ++v17;
    }

    while (v17 != 7);
    v19 = ((v17 | v18) >> 55) + 8;
    if ((v17 & 7) != 7)
    {
      v19 = v17 & 7;
    }

    if (v19 > 4)
    {
      if (v19 > 19)
      {
        if (v19 != 20)
        {
          if (v19 != 22)
          {
            goto LABEL_88;
          }

          goto LABEL_68;
        }
      }

      else if (v19 != 5)
      {
        if (v19 == 6)
        {
          v22 = 42;
          goto LABEL_38;
        }

        goto LABEL_88;
      }
    }

    else
    {
      if (v19 <= 2)
      {
        if (!v19)
        {
          if (dyld_program_sdk_at_least())
          {
            v22 = 7;
          }

          else
          {
            v22 = 1;
          }

LABEL_38:
          if (CF_IS_OBJC(v22, v3))
          {
            v23 = v3;
            v24 = v2;
            return [v23 isEqual:v24];
          }

          if ((v2 & 0x8000000000000000) == 0)
          {
            v31 = atomic_load((v2 + 8));
            v32 = (v31 >> 8) & 0x3FF;
            goto LABEL_94;
          }

          v25 = 0;
          v26 = *MEMORY[0x1E69E5910];
          if ((~v2 & 0xC000000000000007) == 0)
          {
            v26 = 0;
          }

          v27 = v26 ^ v2;
          do
          {
            if ((v27 & 7) == *(MEMORY[0x1E69E5900] + v25))
            {
              break;
            }

            ++v25;
          }

          while (v25 != 7);
          v28 = v25 | v27;
          v29 = v25 & 7;
          v30 = (v28 >> 55) + 8;
          if (v29 == 7)
          {
            LODWORD(v29) = v30;
          }

          if (v29 > 4)
          {
            if (v29 > 19)
            {
              if (v29 != 20)
              {
                if (v29 != 22)
                {
                  goto LABEL_93;
                }

                goto LABEL_79;
              }
            }

            else if (v29 != 5)
            {
              if (v29 == 6)
              {
                v32 = 42;
                goto LABEL_94;
              }

              goto LABEL_93;
            }
          }

          else
          {
            if (v29 <= 2)
            {
              if (!v29)
              {
                if (dyld_program_sdk_at_least())
                {
                  v32 = 7;
                }

                else
                {
                  v32 = 1;
                }

LABEL_94:
                if (CF_IS_OBJC(v32, v2))
                {
                  v23 = v2;
                  v24 = v3;
                  return [v23 isEqual:v24];
                }

                __CFCheckCFInfoPACSignature_Bridged(v3);
                __CFCheckCFInfoPACSignature_Bridged(v2);
                v33 = MEMORY[0x1E69E5910];
                v34 = MEMORY[0x1E69E5900];
                if ((v3 & 0x8000000000000000) == 0)
                {
                  v41 = atomic_load((v3 + 8));
                  v42 = (v41 >> 8) & 0x3FF;
                  goto LABEL_129;
                }

                v35 = 0;
                v36 = *MEMORY[0x1E69E5910];
                if ((~v3 & 0xC000000000000007) == 0)
                {
                  v36 = 0;
                }

                v37 = v36 ^ v3;
                do
                {
                  if ((v37 & 7) == *(MEMORY[0x1E69E5900] + v35))
                  {
                    break;
                  }

                  ++v35;
                }

                while (v35 != 7);
                v38 = v35 | v37;
                v39 = v35 & 7;
                v40 = (v38 >> 55) + 8;
                if (v39 == 7)
                {
                  LODWORD(v39) = v40;
                }

                if (v39 > 4)
                {
                  if (v39 > 19)
                  {
                    if (v39 != 20)
                    {
                      if (v39 != 22)
                      {
                        goto LABEL_128;
                      }

                      goto LABEL_119;
                    }
                  }

                  else if (v39 != 5)
                  {
                    if (v39 == 6)
                    {
                      v42 = 42;
                      goto LABEL_129;
                    }

                    goto LABEL_128;
                  }
                }

                else
                {
                  if (v39 <= 2)
                  {
                    if (!v39)
                    {
                      if (dyld_program_sdk_at_least())
                      {
                        v42 = 7;
                      }

                      else
                      {
                        v42 = 1;
                      }

LABEL_129:
                      if ((v2 & 0x8000000000000000) == 0)
                      {
                        v49 = atomic_load((v2 + 8));
                        v50 = (v49 >> 8) & 0x3FF;
                        goto LABEL_158;
                      }

                      v43 = 0;
                      v44 = *v33;
                      if ((~v2 & 0xC000000000000007) == 0)
                      {
                        v44 = 0;
                      }

                      v45 = v44 ^ v2;
                      do
                      {
                        if ((v45 & 7) == *(v34 + v43))
                        {
                          break;
                        }

                        ++v43;
                      }

                      while (v43 != 7);
                      v46 = v43 | v45;
                      v47 = v43 & 7;
                      v48 = (v46 >> 55) + 8;
                      if (v47 == 7)
                      {
                        LODWORD(v47) = v48;
                      }

                      if (v47 > 4)
                      {
                        if (v47 > 19)
                        {
                          if (v47 != 20)
                          {
                            if (v47 != 22)
                            {
                              goto LABEL_157;
                            }

                            goto LABEL_151;
                          }
                        }

                        else if (v47 != 5)
                        {
                          if (v47 == 6)
                          {
                            v50 = 42;
                            goto LABEL_158;
                          }

                          goto LABEL_157;
                        }
                      }

                      else
                      {
                        if (v47 <= 2)
                        {
                          if (!v47)
                          {
                            if (dyld_program_sdk_at_least())
                            {
                              v50 = 7;
                            }

                            else
                            {
                              v50 = 1;
                            }

LABEL_158:
                            if (v42 != v50)
                            {
                              return 0;
                            }

                            if ((v3 & 0x8000000000000000) == 0)
                            {
                              v52 = atomic_load((v3 + 8));
                              v53 = (v52 >> 8) & 0x3FF;
                              goto LABEL_166;
                            }

                            TaggedPointerTag = _objc_getTaggedPointerTag(v3);
                            if (TaggedPointerTag > 4)
                            {
                              if (TaggedPointerTag > 19)
                              {
                                if (TaggedPointerTag != 20)
                                {
                                  if (TaggedPointerTag != 22)
                                  {
LABEL_188:
                                    v53 = [v3 _cfTypeID];
LABEL_166:
                                    if (v53 > 0x47)
                                    {
                                      v54 = (__CFRuntimeClassTables[(v53 - 72) >> 6] + 8 * ((v53 - 72) & 0x3F));
                                      goto LABEL_183;
                                    }

LABEL_182:
                                    v54 = &__CFRuntimeBuiltinClassTable + v53;
LABEL_183:
                                    v55 = *(*v54 + 5);
                                    if (v55)
                                    {

                                      return v55(v3, v2);
                                    }

                                    return 0;
                                  }

LABEL_176:
                                  v53 = 7;
                                  goto LABEL_182;
                                }
                              }

                              else if (TaggedPointerTag != 5)
                              {
                                if (TaggedPointerTag == 6)
                                {
                                  v53 = 42;
                                  goto LABEL_182;
                                }

                                goto LABEL_188;
                              }
                            }

                            else
                            {
                              if (TaggedPointerTag <= 2)
                              {
                                if (!TaggedPointerTag)
                                {
                                  if (dyld_program_sdk_at_least())
                                  {
                                    v53 = 7;
                                  }

                                  else
                                  {
                                    v53 = 1;
                                  }

                                  goto LABEL_182;
                                }

                                if (TaggedPointerTag != 2)
                                {
                                  goto LABEL_188;
                                }

                                goto LABEL_176;
                              }

                              if (TaggedPointerTag == 3)
                              {
                                v53 = 22;
                                goto LABEL_182;
                              }
                            }

                            v53 = 1;
                            goto LABEL_182;
                          }

                          if (v47 != 2)
                          {
LABEL_157:
                            v50 = [v2 _cfTypeID];
                            goto LABEL_158;
                          }

LABEL_151:
                          v50 = 7;
                          goto LABEL_158;
                        }

                        if (v47 == 3)
                        {
                          v50 = 22;
                          goto LABEL_158;
                        }
                      }

                      v50 = 1;
                      goto LABEL_158;
                    }

                    if (v39 != 2)
                    {
LABEL_128:
                      v42 = [v3 _cfTypeID];
                      goto LABEL_129;
                    }

LABEL_119:
                    v42 = 7;
                    goto LABEL_129;
                  }

                  if (v39 == 3)
                  {
                    v42 = 22;
                    goto LABEL_129;
                  }
                }

                v42 = 1;
                goto LABEL_129;
              }

              if (v29 != 2)
              {
LABEL_93:
                v32 = [v2 _cfTypeID];
                goto LABEL_94;
              }

LABEL_79:
              v32 = 7;
              goto LABEL_94;
            }

            if (v29 == 3)
            {
              v32 = 22;
              goto LABEL_94;
            }
          }

          v32 = 1;
          goto LABEL_94;
        }

        if (v19 != 2)
        {
LABEL_88:
          v22 = [cf1 _cfTypeID];
          goto LABEL_38;
        }

LABEL_68:
        v22 = 7;
        goto LABEL_38;
      }

      if (v19 == 3)
      {
        v22 = 22;
        goto LABEL_38;
      }
    }

    v22 = 1;
    goto LABEL_38;
  }

  v6 = 0;
  if (v5 == 0xC000000000000007)
  {
    v7 = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E69E5910];
  }

  do
  {
    if (((v7 ^ cf1) & 7) == *(MEMORY[0x1E69E5900] + v6))
    {
      break;
    }

    ++v6;
  }

  while (v6 != 7);
  v8 = 0;
  v9 = v6 | v7 ^ cf1;
  v10 = v6 & 7;
  v11 = (v9 >> 55) + 8;
  if (v10 == 7)
  {
    LODWORD(v10) = v11;
  }

  if ((~cf2 & 0xC000000000000007) != 0)
  {
    v12 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 ^ cf2;
  do
  {
    if ((v13 & 7) == *(MEMORY[0x1E69E5900] + v8))
    {
      break;
    }

    ++v8;
  }

  while (v8 != 7);
  v14 = v8 | v13;
  v15 = v8 & 7;
  v16 = (v14 >> 55) + 8;
  if (v15 != 7)
  {
    v16 = v15;
  }

  if (v10 == v16)
  {
    if (v10 <= 6 && ((1 << v10) & 0x54) != 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (v10 == 2)
  {
    goto LABEL_72;
  }

  if (v16 == 2)
  {
    cf1 = cf2;
    cf2 = v3;
LABEL_72:

    return _NSInlineTaggedPointerStringIsEqualToTaggedPointer(cf1, cf2);
  }

  if (v10)
  {
    if (v16)
    {
      return 0;
    }

    cf1 = cf2;
    cf2 = v3;
  }

  return _NSIndirectTaggedPointerStringIsEqualToTaggedPointer(cf1, cf2);
}

uint64_t __CFCheckCFInfoPACSignature(uint64_t result)
{
  v1 = atomic_load((result + 8));
  v2 = atomic_load((result + 8));
  if (((v1 ^ ((v2 & 0x83FF00) >> 20)) & 0xFFFFF000000) != 0)
  {
    __break(0xC470u);
  }

  return result;
}

CFStringRef CFStringCreateCopy(CFAllocatorRef alloc, CFStringRef theString)
{
  if ((theString & 0x8000000000000000) != 0)
  {
    return theString;
  }

  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)theString copy];
  }

  else
  {

    return _CFNonObjCStringCreateCopy(alloc, theString, v5, v6, v7, v8, v9, v10);
  }
}

_DWORD *__NSDictionaryM_new(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v35 = a4;
  v5 = 0;
  v6 = 0xFFFFFFFF80000000 * ((a4 >> 1) & 1);
  while (__NSDictionaryCapacities_0[v5] < a3)
  {
    ++v5;
    v6 -= 0x400000000000000;
    if (v5 == 40)
    {
      __break(1u);
      break;
    }
  }

  v7 = __NSDictionarySizes_0[v5];
  v8 = objc_opt_self();
  v9 = __CFAllocateObject(v8, 0);
  v9[4] = 1;
  *(v9 + 2) = (*(v9 + 2) & 0x3FFFFFF7FFFFFFFLL) - v6;
  v32 = v9;
  if (a3)
  {
    v10 = v9;
    v11 = malloc_type_calloc(1uLL, 16 * v7, 0x80040B8603338uLL);
    *(v10 + 1) = v11;
    if (a1 && a2)
    {
      v12 = v11;
      v13 = 0;
      v14 = v7;
      v15 = &v11[8 * v7];
      if ((v7 & 0xFFFFFFFE) != 0)
      {
        v16 = v7;
      }

      else
      {
        v16 = 1;
      }

      v33 = v16;
      do
      {
        v17 = *(a1 + 8 * v13);
        v18 = [v17 hash] % v14;
        v19 = v33;
        v20 = v14;
        while (1)
        {
          v21 = *&v12[8 * v18];
          if (!v21)
          {
            break;
          }

          if (v21 == &___NSDictionaryM_DeletedMarker)
          {
            if (v20 == v14)
            {
              v20 = v18;
            }
          }

          else if (v21 == v17 || ([v21 isEqual:v17] & 1) != 0)
          {
            v20 = v18;
            goto LABEL_28;
          }

          if (v18 + 1 >= v14)
          {
            v22 = v14;
          }

          else
          {
            v22 = 0;
          }

          v18 = v18 + 1 - v22;
          if (!--v19)
          {
            goto LABEL_28;
          }
        }

        if (v20 == v14)
        {
          v20 = v18;
        }

LABEL_28:
        if (*&v12[8 * v20])
        {
          v23 = *&v15[8 * v20];
          if (v23 >= 1)
          {
          }
        }

        else
        {
          v24 = *(a1 + 8 * v13);
          if (v35)
          {
            v26 = [*(a1 + 8 * v13) copyWithZone:0];
            *&v12[8 * v20] = v26;
            if (!v26)
            {
              v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSDictionary: -copyWithZone: for key %@ returned nil", v24);
              v31 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30), 0];
              objc_exception_throw(v31);
            }
          }

          else
          {
            *&v12[8 * v20] = v24;
            if (v24 >= 1)
            {
              v25 = v24;
            }
          }

          *(v32 + 2) = *(v32 + 2) & 0xFE000000FFFFFFFFLL | ((((*(v32 + 2) + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
        }

        v27 = *(a2 + 8 * v13);
        *&v15[8 * v20] = v27;
        if ((v35 & 4) == 0 && v27 >= 1)
        {
          v28 = v27;
        }

        ++v13;
      }

      while (v13 != a3);
    }
  }

  else
  {
    *(v9 + 1) = 0;
  }

  result = v32;
  atomic_store(0, v32 + 3);
  return result;
}

CFIndex __CFStringEncodeByteStream(uint64_t theString, CFRange range, int a3, uint64_t a4, unsigned int a5, UniChar *buffer, CFIndex a7, CFIndex *usedBufLen)
{
  v8 = a7;
  v9 = buffer;
  length = range.length;
  location = range.location;
  v13 = usedBufLen;
  v131 = *MEMORY[0x1E69E9840];
  v113 = 0;
  v114 = 0;
  switch(a4)
  {
    case 0xBFF:
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      *buffera = 0u;
      v117 = 0u;
      theStringa = theString;
      v127 = range;
      CharactersPtr = CFStringGetCharactersPtr(theString);
      v111 = usedBufLen;
      if (CharactersPtr)
      {
        CStringPtr = 0;
      }

      else
      {
        CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
      }

      v128 = 0;
      v129 = 0;
      v126 = CStringPtr;
      if (length < 1)
      {
        goto LABEL_249;
      }

      v24 = 0;
      v25 = 0;
      v108 = 0;
      v26 = 0;
      v27 = 64;
      while (1)
      {
        if (v26 >= 4)
        {
          v28 = 4;
        }

        else
        {
          v28 = v26;
        }

        v29 = v127.length;
        if (v127.length <= v26)
        {
          v31 = 0;
          LOBYTE(v32) = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v30 = CharactersPtr[v127.location + v26];
          }

          else if (v126)
          {
            v30 = v126[v127.location + v26];
          }

          else
          {
            v34 = v129 > v26 && v108 <= v26;
            if (!v34)
            {
              v35 = -v28;
              v36 = v28 + v24;
              v37 = v27 - v28;
              v38 = v26 + v35;
              v39 = v38 + 64;
              if ((v38 + 64) >= v127.length)
              {
                v39 = v127.length;
              }

              v128 = v38;
              v129 = v39;
              if (v127.length >= v37)
              {
                v29 = v37;
              }

              v133.location = v38 + v127.location;
              v133.length = v29 + v36;
              CFStringGetCharacters(theStringa, v133, buffera);
              v25 = v128;
            }

            v30 = buffera[v26 - v25];
            v108 = v25;
          }

          v31 = v30;
          v40 = (v30 - 32) >= 0x5Fu || v30 == 92;
          if (!v40 || (v30 <= 0xDu ? (v41 = ((1 << v30) & 0x2600) == 0) : (v41 = 1), !v41))
          {
            v33 = 1;
            goto LABEL_66;
          }

          if (v30 == 92)
          {
            LOBYTE(v31) = 92;
            BYTE1(__src) = 92;
            v33 = 2;
            goto LABEL_66;
          }

          if (v30 > 0xFFu)
          {
            BYTE2(__src) = a0123456789abcd[v30 >> 12];
            v43 = a0123456789abcd[(v30 >> 8) & 0xF];
            BYTE1(__src) = 117;
            BYTE3(__src) = v43;
            BYTE4(__src) = a0123456789abcd[v31 >> 4];
            BYTE5(__src) = a0123456789abcd[v31 & 0xF];
            LOBYTE(v31) = 92;
            v33 = 6;
            goto LABEL_66;
          }

          v32 = v30 >> 6;
        }

        BYTE1(__src) = v32 | 0x30;
        BYTE2(__src) = (v31 >> 3) & 7 | 0x30;
        BYTE3(__src) = v31 & 7 | 0x30;
        LOBYTE(v31) = 92;
        v33 = 4;
LABEL_66:
        LOBYTE(__src) = v31;
        v42 = v114 + v33;
        if (v9)
        {
          if (v42 > v8)
          {
            goto LABEL_249;
          }

          memcpy(v9 + v114, &__src, v33);
        }

        v113 = ++v26;
        v114 = v42;
        --v24;
        ++v27;
        if (v26 >= length)
        {
          goto LABEL_249;
        }
      }

    case 0x8000100:
      v17 = CFStringGetCharactersPtr(theString);
      if (v17)
      {
        if (v9)
        {
          v18 = v8;
        }

        else
        {
          v18 = 0;
        }

        v113 = __CFConverterUTF8((a3 != 0) << 8, &v17[location], length, v9, v18, &v114);
LABEL_250:
        if (v13)
        {
          *v13 = v114;
        }

        return v113;
      }

      __src = 0;
      goto LABEL_24;
    case 0x100:
    case 0x14000100:
    case 0x10000100:
      v20 = 2;
      if (a3 == 0 || a4 != 256)
      {
        v20 = 0;
      }

      v113 = range.length;
      v21 = v20 + 2 * range.length;
      if (buffer)
      {
        if (v21 > a7)
        {
          if (a7 <= v20)
          {
            length = 0;
          }

          else
          {
            length = (a7 - v20) >> 1;
          }

          v113 = length;
          v21 = v20 + 2 * length;
        }

        v114 = v21;
        if (a3 != 0 && a4 == 256)
        {
          *buffer = -257;
          range.length = length;
          CFStringGetCharacters(theString, range, buffer + 1);
        }

        else
        {
          range.length = length;
          CFStringGetCharacters(theString, range, buffer);
          if (a4 == 268435712 && length >= 1)
          {
            v44 = &v9[length];
            do
            {
              *v9 = bswap32(*v9) >> 16;
              ++v9;
            }

            while (v9 < v44);
          }
        }
      }

      else
      {
        v114 = v20 + 2 * range.length;
      }

      goto LABEL_250;
    case 0xC000100:
    case 0x1C000100:
    case 0x18000100:
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      *buffera = 0u;
      v117 = 0u;
      if (a3)
      {
        if (a4 == 201326848)
        {
          v114 = 4;
          if (buffer)
          {
            if (a7 > 3)
            {
              *buffer = 65279;
              v9 = buffer + 2;
            }

            else
            {
              v114 = 0;
            }
          }
        }
      }

      theStringa = theString;
      v127 = range;
      CharactersPtr = CFStringGetCharactersPtr(theString);
      v111 = usedBufLen;
      if (CharactersPtr)
      {
        v62 = 0;
      }

      else
      {
        v62 = CFStringGetCStringPtr(theString, 0x600u);
      }

      v128 = 0;
      v129 = 0;
      v126 = v62;
      if (length < 1)
      {
        goto LABEL_249;
      }

      v63 = 0;
      while (1)
      {
        v64 = v127.length;
        if (v127.length <= v63)
        {
          v66 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v65 = CharactersPtr[v127.location + v63];
          }

          else if (v126)
          {
            v65 = v126[v127.location + v63];
          }

          else
          {
            v67 = v128;
            if (v129 <= v63 || v128 > v63)
            {
              v69 = v63 - 4;
              if (v63 < 4)
              {
                v69 = 0;
              }

              if ((v69 + 64) < v127.length)
              {
                v64 = v69 + 64;
              }

              v128 = v69;
              v129 = v64;
              v134.length = v64 - v69;
              v134.location = v127.location + v69;
              CFStringGetCharacters(theStringa, v134, buffera);
              v67 = v128;
            }

            v65 = buffera[v63 - v67];
          }

          if ((v65 & 0xFC00) == 0xDC00)
          {
LABEL_187:
            v66 = a5;
            if (!a5)
            {
              goto LABEL_249;
            }

            goto LABEL_188;
          }

          v66 = v65;
          if ((v65 & 0xFC00) == 0xD800)
          {
            v70 = v63 + 1;
            if (v63 + 1 >= length)
            {
              goto LABEL_187;
            }

            v71 = v127.length;
            if (v127.length <= v70)
            {
              goto LABEL_187;
            }

            if (CharactersPtr)
            {
              v72 = CharactersPtr[v127.location + v70];
            }

            else if (v126)
            {
              v72 = v126[v127.location + v70];
            }

            else
            {
              if (v129 <= v70 || (v73 = v128, v128 > v70))
              {
                v74 = v63 - 3;
                if (v63 < 3)
                {
                  v74 = 0;
                }

                if ((v74 + 64) < v127.length)
                {
                  v71 = v74 + 64;
                }

                v128 = v74;
                v129 = v71;
                v135.length = v71 - v74;
                v135.location = v127.location + v74;
                CFStringGetCharacters(theStringa, v135, buffera);
                v73 = v128;
              }

              v72 = buffera[v70 - v73];
            }

            if (v72 >> 10 != 55)
            {
              goto LABEL_187;
            }

            v66 = (v66 << 10) + v72 - 56613888;
          }
        }

LABEL_188:
        v75 = v114;
        v76 = v114 + 4;
        v114 += 4;
        if (v9)
        {
          if (v76 > v8)
          {
            v114 = v75;
            goto LABEL_249;
          }

          v77 = bswap32(v66);
          if (a4 != 402653440)
          {
            v77 = v66;
          }

          *v9 = v77;
          v9 += 2;
        }

        if (HIWORD(v66))
        {
          v78 = 2;
        }

        else
        {
          v78 = 1;
        }

        v63 += v78;
        v113 = v63;
        if (v63 >= length)
        {
          goto LABEL_249;
        }
      }
  }

  __src = 0;
  if (BYTE1(a4) > 7u)
  {
    LOBYTE(v23) = 0;
    if (BYTE1(a4) > 0xAu)
    {
      if (BYTE1(a4) == 11)
      {
        v96 = __CFADD__(a4 - 3061, 2);
LABEL_279:
        LOBYTE(v23) = !v96;
        goto LABEL_28;
      }

      if (BYTE1(a4) == 12)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (BYTE1(a4) == 8)
      {
        goto LABEL_28;
      }

      if (BYTE1(a4) == 10)
      {
        if ((a4 - 2561) < 0x10)
        {
          LODWORD(v23) = 0x7FEEu >> (a4 - 1);
          goto LABEL_28;
        }

        goto LABEL_276;
      }
    }

LABEL_247:
    v96 = (a4 & 0xFF00u) >= 0xC01;
    goto LABEL_279;
  }

  if (BYTE1(a4) > 1u)
  {
    if (BYTE1(a4) == 2)
    {
      LOBYTE(v23) = a4 != 518;
      goto LABEL_28;
    }

    if (BYTE1(a4) == 6)
    {
      v22 = a4 == 1536;
LABEL_25:
      LOBYTE(v23) = v22;
      goto LABEL_28;
    }

    goto LABEL_247;
  }

  if (BYTE1(a4))
  {
LABEL_24:
    v22 = a4 == 134217984;
    goto LABEL_25;
  }

  LOBYTE(v23) = 0;
  if ((a4 > 0x22 || ((1 << a4) & 0x600000032) == 0) && a4 != 152)
  {
LABEL_276:
    LOBYTE(v23) = 1;
  }

LABEL_28:
  if ((CFStringEncodingIsValidEncoding(a4) & 1) == 0)
  {
    goto LABEL_93;
  }

  if ((v23 & 1) == 0)
  {
    v45 = 1;
    goto LABEL_91;
  }

  if (theString < 0 && _objc_getTaggedPointerTag_1(theString) == 2)
  {
    v132.location = location;
    v132.length = length;
    return CFStringGetBytes(theString, v132, 0x600u, 0, 0, v9, v8, usedBufLen);
  }

  v46 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v46 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtrWithOptions = _CFStringGetCStringPtrWithOptions(theString, v46, 0, 1);
  if (CStringPtrWithOptions)
  {
    v48 = &CStringPtrWithOptions[location];
    v49 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v50 = v48;
      v49 = __CFStringComputeEightBitStringEncoding();
      v48 = v50;
    }

    if (v49 == a4)
    {
      goto LABEL_105;
    }

    v51 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v52 = v48;
      v51 = __CFStringComputeEightBitStringEncoding();
      v48 = v52;
    }

    if (v51 == 1536)
    {
LABEL_105:
      if (length >= v8)
      {
        v53 = v8;
      }

      else
      {
        v53 = length;
      }

      if (v9)
      {
        v23 = v53;
      }

      else
      {
        v23 = length;
      }

      if (v9)
      {
        memmove(v9, v48, v53);
      }

      if (usedBufLen)
      {
        *usedBufLen = v23;
      }

      return v23;
    }

    if (v8 >= length)
    {
      v98 = length;
    }

    else
    {
      v98 = v8;
    }

    v99 = length - v98;
    if (v9)
    {
      v100 = v99;
    }

    else
    {
      v100 = 0;
    }

    if (*v48 < 0 || v100 >= length)
    {
      v101 = v48;
      v13 = usedBufLen;
    }

    else
    {
      v101 = v48;
      v13 = usedBufLen;
      do
      {
        v102 = *++v101;
        --length;
      }

      while ((v102 & 0x80000000) == 0 && length > v100);
    }

    v110 = v23;
    v23 = v101 - v48;
    v113 = v101 - v48;
    if (v9)
    {
      if (v23 >= v8)
      {
        v23 = v8;
      }

      v113 = v23;
      memmove(v9, v48, v23);
      v9 = (v9 + v23);
      v8 -= v23;
    }

    if (!length)
    {
      goto LABEL_298;
    }

    if (!v9)
    {
      goto LABEL_300;
    }
  }

  else
  {
    v56 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v56 = __CFStringComputeEightBitStringEncoding();
    }

    PascalStringPtr = CFStringGetPascalStringPtr(theString, v56);
    if (!PascalStringPtr)
    {
      v45 = 1;
      goto LABEL_91;
    }

    v58 = &PascalStringPtr[location + 1];
    v59 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v60 = v58;
      v59 = __CFStringComputeEightBitStringEncoding();
      v58 = v60;
    }

    v13 = usedBufLen;
    if (v59 == a4)
    {
      if (length >= v8)
      {
        v61 = v8;
      }

      else
      {
        v61 = length;
      }

      if (v9)
      {
        v23 = v61;
      }

      else
      {
        v23 = length;
      }

      if (v9)
      {
        memmove(v9, v58, v61);
      }

      goto LABEL_298;
    }

    if (*v58 < 0 || length < 1)
    {
      v103 = v58;
    }

    else
    {
      v103 = v58;
      do
      {
        v104 = *++v103;
        v105 = length-- != 0;
      }

      while ((v104 & 0x80000000) == 0 && length != 0 && v105);
    }

    v110 = v23;
    v23 = v103 - v58;
    v113 = v103 - v58;
    if (v9)
    {
      if (v23 >= v8)
      {
        v23 = v8;
      }

      v113 = v23;
      memmove(v9, v58, v23);
      v9 = (v9 + v23);
      v8 -= v23;
    }

    if (!length)
    {
      goto LABEL_298;
    }

    if (!v9)
    {
LABEL_300:
      v45 = 0;
      location += v23;
      v114 = v23;
      LOBYTE(v23) = v110;
LABEL_91:
      if (v9 && !v8)
      {
LABEL_93:
        v23 = 0;
        if (v13)
        {
          *v13 = 0;
        }

        return v23;
      }

      if (!v9)
      {
        v8 = 0;
      }

      v111 = v13;
      if (a5)
      {
        if (a5 == 255 && a4 == 1536)
        {
          v55 = 1;
        }

        else
        {
          v55 = (a5 << 24) + 1;
        }
      }

      else
      {
        v55 = 0;
      }

      v79 = v55 | ((a3 != 0) << 8);
      v80 = __CFWantsToUseASCIICompatibleConversion;
      if (v23)
      {
        v80 = 0;
      }

      v81 = v79 | v80;
      if (v45)
      {
        v82 = CFStringGetCharactersPtr(theString);
        if (v82)
        {
          CFStringEncodingUnicodeToBytes(a4, v81, &v82[location], length, &v113, v9, v8, &v114);
          goto LABEL_249;
        }
      }

      v112 = 0;
      if (length >= 1)
      {
        LOBYTE(v109) = 0;
        v83 = 0;
        v84 = 0;
        v106 = v81 & 0xFFFFFEFF;
        do
        {
          v107 = v84;
          if (length >= 0x200)
          {
            v85 = 512;
          }

          else
          {
            v85 = length;
          }

          v136.location = location;
          v136.length = v85;
          CFStringGetCharacters(theString, v136, buffera);
          if (length >= 0x201)
          {
            v85 -= (v130 & 0xFC00) == 55296;
          }

          v86 = ((length > v85) << 12) | (v109 << 16);
          v87 = CFStringEncodingUnicodeToBytes(a4, v86 | v81, buffera, v85, &__src, v9, v8, &v112);
          LOBYTE(v109) = BYTE2(v87);
          v88 = v87 & 0xFF00FFFF;
          if ((v87 & 0xFF00FFFF) != 0)
          {
            if (v88 != 1)
            {
              goto LABEL_248;
            }

            v89 = __src;
            if (length >= 0x201 && (v85 - __src) <= 5)
            {
              RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(theString, v85 + location);
              v89 = __src;
              v88 = 1;
              if (RangeOfComposedCharactersAtIndex.length <= 6 && RangeOfComposedCharactersAtIndex.location < __src + location)
              {
                v91 = CFStringEncodingUnicodeToBytes(a4, v86 | v81, buffera, RangeOfComposedCharactersAtIndex.location - location, &__src, v9, v8, &v112);
                LOBYTE(v109) = BYTE2(v91);
                v88 = v91 & 0xFF00FFFF;
                v89 = __src;
              }
            }

            if (v88 && v83 >= 1 && v89 <= 5)
            {
              v92 = CFStringGetRangeOfComposedCharactersAtIndex(theString, location);
              if (v92.length > 6 || v92.location >= location || (CFStringGetCharacters(theString, v92, buffera), CFStringEncodingUnicodeToBytes(a4, v81, buffera, v92.length, &__src, 0, 0, &v112)) || ((location -= v83, v137.length = v92.location - location, v137.location = location, CFStringGetCharacters(theString, v137, buffera), v8) ? (v93 = (v9 - v107)) : (v93 = 0), v8 ? (v94 = v8 + v107) : (v94 = 0), v95 = CFStringEncodingUnicodeToBytes(a4, v86 | v81, buffera, v92.location - location, &__src, v93, v94, &v112), (v95 & 0xFF00FFFF) != 0))
              {
LABEL_248:
                v114 += v112;
                v113 += __src;
                break;
              }

              v109 = HIWORD(v95);
              v114 -= v107;
              v113 -= v83;
              length += v83;
              if (v8)
              {
                v9 = (v9 - v107);
              }

              v8 = v94;
            }

            else if (v88)
            {
              goto LABEL_248;
            }
          }

          v84 = v112;
          v83 = __src;
          v114 += v112;
          v113 += __src;
          if (v8)
          {
            v8 -= v112;
            if (v8 < 1)
            {
              break;
            }

            v9 = (v9 + v112);
          }

          location += __src;
          v81 = v106;
          v34 = length <= __src;
          length -= __src;
        }

        while (!v34);
      }

LABEL_249:
      v13 = v111;
      goto LABEL_250;
    }
  }

  if (v8)
  {
    goto LABEL_300;
  }

LABEL_298:
  if (v13)
  {
    *v13 = v23;
  }

  return v23;
}