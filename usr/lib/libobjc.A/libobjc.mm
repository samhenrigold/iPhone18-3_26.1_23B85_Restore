objc_object *customRR_retain(objc_object *a1)
{
  if ((v2 & 2) != 0 && (*((v1 & 0xFFFFFFFF8) + 0x28) & 2) != 0)
  {
    return swiftRetain(a1);
  }

  else
  {
    return [(objc_object *)a1 retain];
  }
}

id objc_claimAutoreleasedReturnValue(id a1, uint64_t a2, AutoreleasePoolPage *a3)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 352);
  if (v6 != -1)
  {
    v7 = *(StatusReg + 360);
    if (v6 > 3 || v7 != 0)
    {
      *(StatusReg + 352) = 0;
      *(StatusReg + 360) = 0;
      if (v3 - v7 == 4)
      {
        if (v6)
        {
          return a1;
        }
      }

      else if (v6)
      {
        moveTLSAutoreleaseToPool(v6, v7, a3);
      }
    }
  }

  return a1;
}

id objc_msgSend(id result, SEL a2, ...)
{
  va_start(va, a2);
  v29 = va_arg(va, void);
  v30 = va_arg(va, void);
  v31 = va_arg(va, void);
  v32 = va_arg(va, void);
  v33 = va_arg(va, void);
  v34 = va_arg(va, void);
  v35 = va_arg(va, void);
  v36 = va_arg(va, void);
  if (result > 0)
  {
    v16 = *result & 0x7FFFFFFFFFFFF8;
    goto LABEL_3;
  }

  if (result)
  {
    if ((result & 7) == 7)
    {
      v28 = result >> 55;
    }

    else
    {
      v28 = result & 7;
    }

    v16 = objc_debug_taggedpointer_classes[v28];
LABEL_3:
    while (1)
    {
      v17 = *(v16 + 16);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v27 = *((v17 & 0x7FFFFFFFFFFFFELL) + 8 * (((a2 - byte_1FA920D78) >> (v17 >> 55)) & (0x7FFFuLL >> (v17 >> 60))));
      if (a2 - byte_1FA920D78 == v27 >> 38)
      {
        return ((v16 - ((v27 << 26) >> 24)))();
      }

      v16 += *((v17 & 0x7FFFFFFFFFFFFELL) - 16);
    }

    v18 = v17 & 0xFFFFFFFFFFFFLL;
    v19 = (a2 ^ (a2 >> 7)) & HIWORD(v17);
    v20 = (v17 & 0xFFFFFFFFFFFFLL) + 16 * v19;
    while (1)
    {
      v22 = *v20;
      v21 = *(v20 + 8);
      v20 -= 16;
      if (v21 == a2)
      {
        return v22();
      }

      if (!v21)
      {
        break;
      }

      if (v20 < v18)
      {
        v23 = v18 + (v17 >> 44);
        v24 = v18 + 16 * v19;
        while (1)
        {
          v22 = *v23;
          v25 = *(v23 + 8);
          v23 -= 16;
          if (v25 == a2)
          {
            break;
          }

          if (v25)
          {
            v26 = v23 > v24;
          }

          else
          {
            v26 = 0;
          }

          if (!v26)
          {
            return _objc_msgSend_uncached(result, a2, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, v32, v33, v34, v35, v36);
          }
        }

        return v22();
      }
    }

    return _objc_msgSend_uncached(result, a2, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, v32, v33, v34, v35, v36);
  }

  return result;
}

objc_object *objc_msgLookup(objc_object *result, objc_selector *a2)
{
  if (result > 0)
  {
    v2 = result->isa & 0x7FFFFFFFFFFFF8;
    goto LABEL_3;
  }

  if (result)
  {
    if ((result & 7) == 7)
    {
      v13 = result >> 55;
    }

    else
    {
      v13 = result & 7;
    }

    v2 = objc_debug_taggedpointer_classes[v13];
LABEL_3:
    while (1)
    {
      v3 = *(v2 + 16);
      if ((v3 & 1) == 0)
      {
        break;
      }

      if (a2 - byte_1FA920D78 == *((v3 & 0x7FFFFFFFFFFFFELL) + 8 * (((a2 - byte_1FA920D78) >> (v3 >> 55)) & (0x7FFFuLL >> (v3 >> 60)))) >> 38)
      {
        return result;
      }

      v2 += *((v3 & 0x7FFFFFFFFFFFFELL) - 16);
    }

    v4 = v3 & 0xFFFFFFFFFFFFLL;
    v5 = (a2 ^ (a2 >> 7)) & HIWORD(v3);
    v6 = ((v3 & 0xFFFFFFFFFFFFLL) + 16 * v5);
    while (1)
    {
      v8 = *v6;
      v7 = v6[1];
      v6 -= 2;
      if (v7 == a2)
      {
        break;
      }

      if (!v7)
      {
        return _objc_msgLookup_uncached(result, a2);
      }

      if (v6 < v4)
      {
        v9 = (v4 + (v3 >> 44));
        v10 = v4 + 16 * v5;
        while (1)
        {
          v8 = *v9;
          v11 = v9[1];
          v9 -= 2;
          if (v11 == a2)
          {
            break;
          }

          if (v11)
          {
            v12 = v9 > v10;
          }

          else
          {
            v12 = 0;
          }

          if (!v12)
          {
            return _objc_msgLookup_uncached(result, a2);
          }
        }

        break;
      }
    }
  }

  return result;
}

id objc_msgSendSuper2(objc_super *a1, SEL a2, ...)
{
  va_start(va, a2);
  v31 = va_arg(va, void);
  v32 = va_arg(va, void);
  v33 = va_arg(va, void);
  v34 = va_arg(va, void);
  v35 = va_arg(va, void);
  v36 = va_arg(va, void);
  v37 = va_arg(va, void);
  v38 = va_arg(va, void);
  receiver = a1->receiver;
  for (i = *(a1->super_class + 1); ; i += *((v19 & 0x7FFFFFFFFFFFFELL) - 16))
  {
    v19 = *(i + 16);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v30 = *((v19 & 0x7FFFFFFFFFFFFELL) + 8 * (((a2 - byte_1FA920D78) >> (v19 >> 55)) & (0x7FFFuLL >> (v19 >> 60))));
    if (a2 - byte_1FA920D78 == v30 >> 38)
    {
      return ((i - ((v30 << 26) >> 24)))(receiver);
    }
  }

  v20 = v19 & 0xFFFFFFFFFFFFLL;
  v21 = (a2 ^ (a2 >> 7)) & HIWORD(v19);
  v22 = (v19 & 0xFFFFFFFFFFFFLL) + 16 * v21;
  while (1)
  {
    v24 = *v22;
    v23 = *(v22 + 8);
    v22 -= 16;
    if (v23 == a2)
    {
      return v24(receiver);
    }

    if (!v23)
    {
      break;
    }

    if (v22 < v20)
    {
      v26 = v20 + (v19 >> 44);
      v27 = v20 + 16 * v21;
      while (1)
      {
        v24 = *v26;
        v28 = *(v26 + 8);
        v26 -= 16;
        if (v28 == a2)
        {
          break;
        }

        if (v28)
        {
          v29 = v26 > v27;
        }

        else
        {
          v29 = 0;
        }

        if (!v29)
        {
          return _objc_msgSend_uncached(receiver, a2, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v31, v32, v33, v34, v35, v36, v37, v38);
        }
      }

      return v24(receiver);
    }
  }

  return _objc_msgSend_uncached(receiver, a2, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v31, v32, v33, v34, v35, v36, v37, v38);
}

objc_object *objc_msgLookupSuper2(objc_object **a1, objc_selector *a2)
{
  result = *a1;
  for (i = a1[1][1].isa; ; i = (i + *((v5 & 0x7FFFFFFFFFFFFELL) - 16)))
  {
    v5 = *(i + 2);
    if ((v5 & 1) == 0)
    {
      break;
    }

    if (a2 - byte_1FA920D78 == *((v5 & 0x7FFFFFFFFFFFFELL) + 8 * (((a2 - byte_1FA920D78) >> (v5 >> 55)) & (0x7FFFuLL >> (v5 >> 60)))) >> 38)
    {
      return result;
    }
  }

  v6 = v5 & 0xFFFFFFFFFFFFLL;
  v7 = (a2 ^ (a2 >> 7)) & HIWORD(v5);
  v8 = ((v5 & 0xFFFFFFFFFFFFLL) + 16 * v7);
  while (1)
  {
    v10 = *v8;
    v9 = v8[1];
    v8 -= 2;
    if (v9 == a2)
    {
      break;
    }

    if (!v9)
    {
      return _objc_msgLookup_uncached(result, a2);
    }

    if (v8 < v6)
    {
      v11 = (v6 + (v5 >> 44));
      v12 = v6 + 16 * v7;
      while (1)
      {
        v10 = *v11;
        v13 = v11[1];
        v11 -= 2;
        if (v13 == a2)
        {
          break;
        }

        if (v13)
        {
          v14 = v11 > v12;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          return _objc_msgLookup_uncached(result, a2);
        }
      }

      break;
    }
  }

  return result;
}

uint64_t _objc_msgSend_uncached(objc_object *a1, objc_selector *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  v25 = lookUpImpOrForward(a1, a2, v24, 3u);

  return (v25)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

objc_object *_objc_msgLookup_uncached(objc_object *a1, objc_selector *a2)
{
  lookUpImpOrForward(a1, a2, v2, 3u);
  result = a1;

  return result;
}

uint64_t cache_getImp(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v14 = *((v3 & 0x7FFFFFFFFFFFFELL) + 8 * (((a2 - byte_1FA920D78) >> (v3 >> 55)) & (0x7FFFuLL >> (v3 >> 60))));
    if (a2 - byte_1FA920D78 == v14 >> 38)
    {
      return a1 - ((v14 << 26) >> 24);
    }

    else
    {
      return a3;
    }
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
    v5 = (a2 ^ (a2 >> 7)) & HIWORD(v3);
    v6 = ((v3 & 0xFFFFFFFFFFFFLL) + 16 * v5);
    while (1)
    {
      v8 = *v6;
      v7 = v6[1];
      v6 -= 2;
      if (v7 == a2)
      {
        break;
      }

      if (!v7)
      {
        return 0;
      }

      if (v6 < v4)
      {
        v10 = (v4 + (v3 >> 44));
        v11 = v4 + 16 * v5;
        while (1)
        {
          v8 = *v10;
          v12 = v10[1];
          v10 -= 2;
          if (v12 == a2)
          {
            break;
          }

          if (v12)
          {
            v13 = v10 > v11;
          }

          else
          {
            v13 = 0;
          }

          if (!v13)
          {
            return 0;
          }
        }

        break;
      }
    }

    result = v8;
    if (v8)
    {
    }
  }

  return result;
}

void method_invoke(void)
{
  if (v1)
  {
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v0;
    v28 = v2;
    v29 = v3;
    v30 = v4;
    v31 = v5;
    v32 = v6;
    v33 = v7;
    ImplementationAndName = _method_getImplementationAndName(v1);

    ImplementationAndName(v27, v17, v28, v29, v30, v31, v32, v33, v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    (*((v1 & 0xFFFFFFFFFFFFFFFCLL) + 16))();
  }
}

id objc_autoreleaseReturnValue(id a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 352);
  if (v5 != -1)
  {
    moveTLSAutoreleaseToPool(v5, *(StatusReg + 360), v1);
    if (a1 <= 0)
    {
      *(StatusReg + 352) = 0;
      *(StatusReg + 360) = 0;
      return a1;
    }

    v6 = *a1;
    v7 = (*a1 & 0xFFFFFFFF8);
    v8 = *(v7[4] & 0xF00007FFFFFFFF8);
    if ((v8 & 1) == 0)
    {
      v8 = *(*((*v7 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v8 & 0x20000000) == 0)
    {
      if ((*(v6 & 0x7FFFFFFFFFFFF8) - 1) < 0xF || (*((v6 & 0x7FFFFFFFFFFFF8) + 0x20) & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      class_initialize((v6 & 0x7FFFFFFFFFFFF8), a1);
      moveTLSAutoreleaseToPool(*(StatusReg + 352), *(StatusReg + 360), v10);
      v7 = (*a1 & 0xFFFFFFFF8);
    }

    if ((v7[4] & 4) != 0 || *v2 == -1440939011)
    {
      *(StatusReg + 352) = a1 & 0x7FFFFFFFFFFFFFFCLL | 1;
      *(StatusReg + 360) = v2;
      return a1;
    }
  }

LABEL_13:

  return a1;
}

unint64_t moveTLSAutoreleaseToPool(unint64_t result, uint64_t a2, AutoreleasePoolPage *a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFFCLL);
  if ((result & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if ((result & 2) != 0)
    {
      v5 = StatusReg[43];
      if (v5 >= 2)
      {
        if (LODWORD(v5->isa) != -1583242847)
        {
          AutoreleasePoolPage::busted_die(&v5->isa);
        }

        if (v5[2].isa == &v5[512])
        {
          result = AutoreleasePoolPage::autoreleaseFullPage((result & 0xFFFFFFFFFFFFFFFCLL), v5, a3);
        }

        else
        {
          result = AutoreleasePoolPage::add(v5, v3);
        }
      }

      else
      {
        result = AutoreleasePoolPage::autoreleaseNoPage((result & 0xFFFFFFFFFFFFFFFCLL), v3);
      }
    }

    else
    {
      StatusReg[44] = -1;
      StatusReg[45] = 0;
      result = v3;
    }
  }

  v6 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(v6 + 352) = 0;
  *(v6 + 360) = 0;
  return result;
}

id objc_alloc_init(void (*a1)(void))
{
  if (a1)
  {
    if ((*((*a1 & 0xFFFFFFFF8) + 0x1E) & 0x4000) != 0)
    {
      a1 = _objc_rootAllocWithZone(a1);
    }

    else
    {
      a1 = [a1 alloc];
    }

    v1 = vars8;
  }

  return [a1 init];
}

void (*_objc_rootAllocWithZone(uint64_t a1))(void)
{
  objc_class::realizeIfNeeded(a1);
  v2 = *(a1 + 30);
  v3 = v2 & 0xFF0;
  if ((v2 & 0xFF0) == 0)
  {
    v10 = (*(class_rw_t::ro((*(a1 + 32) & 0xF00007FFFFFFFF8)) + 8) + 7) & 0xFFFFFFF8;
    if (v10 <= 0x10)
    {
      v3 = 16;
    }

    else
    {
      v3 = v10;
    }
  }

  result = malloc_type_calloc(1uLL, v3, 0x40000000000uLL);
  if (!result)
  {

    _objc_callBadAllocHandler(a1);
  }

  v8 = a1 & 0xFF80000000000007;
  if ((v2 & 0x2000) == 0)
  {
    if (!v8)
    {
      v9 = a1 & 0x7FFFFFFFFFFFF8 | 0x100000000000001;
      goto LABEL_8;
    }

LABEL_16:
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v5, v6, v7, a1);
  }

  if (v8)
  {
    goto LABEL_16;
  }

  v9 = a1 & 0x7FFFFFFFFFFFF8;
LABEL_8:
  *result = v9;
  if ((v2 & 2) != 0)
  {

    return object_cxxConstructFromClass(result, a1, 3);
  }

  return result;
}

void objc_class::realizeIfNeeded(objc_class *this)
{
  if ((*this - 1) < 0xF || (*(this + 4) & 0x8000000000000000) == 0)
  {
    v2 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, this, 0);
    v4 = *(StatusReg + 24);
    v5 = v4;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != v4)
    {

      os_unfair_lock_unlock(runtimeLock);
    }
  }
}

void sub_180097DC4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

id objc_alloc(id result)
{
  if (result)
  {
    if ((*((*result & 0xFFFFFFFF8) + 0x1E) & 0x4000) != 0)
    {
      return _objc_rootAllocWithZone(result);
    }

    else
    {
      return [result alloc];
    }
  }

  return result;
}

void (*_objc_rootAlloc(uint64_t a1))(void)
{
  if ((*((*a1 & 0xFFFFFFFF8) + 0x1E) & 0x4000) != 0)
  {
    return _objc_rootAllocWithZone(a1);
  }

  else
  {
    return [a1 allocWithZone:0];
  }
}

id objc_autorelease(id a1)
{
  if (a1 < 1)
  {
    return a1;
  }

  v4 = *a1;
  if ((*((*a1 & 0xFFFFFFFF8) + 0x20) & 4) != 0)
  {
    if (v4)
    {
      if (!(v4 >> 55))
      {
        return a1;
      }
    }

    else if (*((*a1 & 0xFFFFFFFF8) + 0x1E) & 0x1000) != 0 && (objc_object::sidetable_isDeallocating(a1))
    {
      return a1;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = *(StatusReg + 352);
    if (v6 == -1)
    {
      v9 = (*a1 & 0xFFFFFFFF8);
    }

    else
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v6 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        if ((v6 & 2) != 0)
        {
          v12 = *(StatusReg + 344);
          if (v12 >= 2)
          {
            if (*v12 != -1583242847)
            {
              AutoreleasePoolPage::busted_die(*(StatusReg + 344));
            }

            if (*(v12 + 16) == v12 + 4096)
            {
              AutoreleasePoolPage::autoreleaseFullPage(v7, *(StatusReg + 344), v1);
            }

            else
            {
              AutoreleasePoolPage::add(*(StatusReg + 344), v7);
            }
          }

          else
          {
            AutoreleasePoolPage::autoreleaseNoPage(v7, v7);
          }
        }

        else
        {
          *(StatusReg + 352) = -1;
          *(StatusReg + 360) = 0;
          v8 = v7;
        }
      }

      *(StatusReg + 352) = 0;
      *(StatusReg + 360) = 0;
      v13 = *a1;
      v9 = (*a1 & 0xFFFFFFFF8);
      v14 = *(*(v9 + 4) & 0xF00007FFFFFFFF8);
      if ((v14 & 1) == 0)
      {
        v14 = *(*((*v9 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
      }

      if ((v14 & 0x20000000) != 0)
      {
        goto LABEL_24;
      }

      if ((*(v13 & 0x7FFFFFFFFFFFF8) - 1) >= 0xF && (*((v13 & 0x7FFFFFFFFFFFF8) + 0x20) & 0x8000000000000000) != 0)
      {
        class_initialize((v13 & 0x7FFFFFFFFFFFF8), a1);
        moveTLSAutoreleaseToPool(*(StatusReg + 352), *(StatusReg + 360), v16);
LABEL_24:
        *(StatusReg + 352) = a1 | 3;
        *(StatusReg + 360) = v2;
        return a1;
      }
    }

    if (!class_isMetaClass(v9))
    {
      objc_object::rootAutorelease2(a1, v10, v11);
    }

    return a1;
  }

  return [a1 autorelease];
}

id class_createInstance(id cls, size_t extraBytes)
{
  if (!cls)
  {
    return cls;
  }

  v3 = cls;
  objc_class::realizeIfNeeded(cls);
  v4 = *(v3 + 30);
  if ((v4 & 0xFF8) != 0)
  {
    v5 = (extraBytes + (v4 & 0xFF8) + 7) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v11 = class_rw_t::ro((*(v3 + 32) & 0xF00007FFFFFFFF8));
    v5 = ((*(v11 + 8) + 7) & 0xFFFFFFF8) + extraBytes <= 0x10 ? 16 : ((*(v11 + 8) + 7) & 0xFFFFFFF8) + extraBytes;
  }

  cls = malloc_type_calloc(1uLL, v5, 0x40000000000uLL);
  if (!cls)
  {
    return cls;
  }

  v9 = v3 & 0xFF80000000000007;
  if ((v4 & 0x2000) == 0)
  {
    if (!v9)
    {
      v10 = v3 & 0x7FFFFFFFFFFFF8 | 0x100000000000001;
      goto LABEL_10;
    }

LABEL_15:
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v6, v7, v8, v3);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = v3 & 0x7FFFFFFFFFFFF8;
LABEL_10:
  *cls = v10;
  if ((v4 & 2) != 0)
  {

    return object_cxxConstructFromClass(cls, v3, 1);
  }

  return cls;
}

atomic_uint *locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::lockWith(atomic_uint *result, atomic_uint *a2)
{
  v3 = result;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 24);
  if (result < a2)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(result, &v6, v5, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      result = os_unfair_lock_lock_with_options();
    }

    v7 = 0;
    atomic_compare_exchange_strong_explicit(a2, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    goto LABEL_9;
  }

  v8 = 0;
  atomic_compare_exchange_strong_explicit(a2, &v8, v5, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    result = os_unfair_lock_lock_with_options();
  }

  if (v3 != a2)
  {
    v7 = 0;
    atomic_compare_exchange_strong_explicit(v3, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
LABEL_9:
    if (v7)
    {

      return os_unfair_lock_lock_with_options();
    }
  }

  return result;
}

void weak_unregister_no_lock(void *result, unint64_t a2, const char *a3, char *a4)
{
  if (!a2)
  {
    return;
  }

  v6 = weak_entry_for_referent(result, a2, a3, a4);
  if (!v6)
  {
    return;
  }

  v10 = v6;
  if ((v6[2] & 3) != 2)
  {
    v16 = 0;
    v17 = v6 + 1;
    do
    {
      if (!&a3[v17[v16]])
      {
        v17[v16] = 0;
        goto LABEL_26;
      }

      ++v16;
    }

    while (v16 != 4);
LABEL_12:
    v18 = " Break on objc_weak_error to debug.";
    v19 = _objc_fault_and_log;
    if (DebugWeakErrors == 2)
    {
      v18 = "";
    }

    if (DebugWeakErrors > 2)
    {
      if (DebugWeakErrors == 3)
      {
LABEL_24:
        v19("Attempted to unregister unknown __weak variable at %p. This is probably incorrect use of objc_storeWeak() and objc_loadWeak().%s", a3, v18);
LABEL_25:
        gdb_objc_class_changed();
LABEL_26:
        v20 = *(v10 + 16);
        goto LABEL_27;
      }

      if (DebugWeakErrors == 4)
      {
        _objc_stochastic_fault("Attempted to unregister unknown __weak variable at %p. This is probably incorrect use of objc_storeWeak() and objc_loadWeak().%s", a3, v18);
        goto LABEL_25;
      }
    }

    else
    {
      if (!DebugWeakErrors)
      {
        goto LABEL_25;
      }

      if (DebugWeakErrors == 2)
      {
        (_objc_fatal)("Attempted to unregister unknown __weak variable at %p. This is probably incorrect use of objc_storeWeak() and objc_loadWeak().%s", a3, v18);
      }
    }

    v19 = _objc_inform;
    goto LABEL_24;
  }

  v11 = 0;
  v12 = v6[3];
  v13 = (bswap64(0x8A970BE7488FDA55 * (a3 ^ (a3 >> 4))) ^ (1217387093 * (a3 ^ (a3 >> 4)))) & v12;
  v14 = v6[1];
  v15 = v13;
  while (&a3[*(v14 + 8 * v15)])
  {
    v15 = (v15 + 1) & v12;
    if (v15 == v13)
    {
      _objc_fatal("bad weak table at %p. This may be a runtime bug or a memory error somewhere else.", v7, v8, v9, v6);
    }

    if (++v11 > v6[4])
    {
      goto LABEL_12;
    }
  }

  *(v14 + 8 * v15) = 0;
  v20 = v6[2] - 4;
  v6[2] = v20;
LABEL_27:
  if (v20 < 4 || (v20 & 3) != 2)
  {
    v22 = 8;
    while (!*(v10 + v22))
    {
      v22 += 8;
      if (v22 == 40)
      {

        weak_entry_remove(result, v10);
        return;
      }
    }
  }
}

uint64_t callSetWeaklyReferenced(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = *result & 0x7FFFFFFFFFFFF8;
LABEL_4:
    v3 = v2;
    goto LABEL_5;
  }

  v3 = objc_debug_taggedpointer_classes[result & 7];
  if (v3 == __NSUnrecognizedTaggedPointer)
  {
    v2 = objc_debug_taggedpointer_ext_classes[(result >> 55)];
    goto LABEL_4;
  }

LABEL_5:
  if ((v3->info & 4) == 0)
  {
    if (result < 1 || (result = class_isMetaClass((*result & 0xFFFFFFFF8)), (result & 1) == 0))
    {
      result = class_getMethodImplementation(v3, "_setWeaklyReferenced");
      if (result != _objc_msgForward)
      {

        return (result)(v1, "_setWeaklyReferenced");
      }
    }
  }

  return result;
}

void *objc_autoreleasePoolPush(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 352);
  v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v3 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v5 = *(StatusReg + 344);
      if (v5 >= 2)
      {
        if (*v5 != -1583242847)
        {
          AutoreleasePoolPage::busted_die(*(StatusReg + 344));
        }

        if (*(v5 + 16) == v5 + 4096)
        {
          v0 = AutoreleasePoolPage::autoreleaseFullPage(v4, *(StatusReg + 344), v1);
        }

        else
        {
          v0 = AutoreleasePoolPage::add(*(StatusReg + 344), v4);
        }
      }

      else
      {
        v0 = AutoreleasePoolPage::autoreleaseNoPage(v4, v4);
      }
    }

    else
    {
      *(StatusReg + 352) = -1;
      *(StatusReg + 360) = 0;
      v0 = v4;
    }
  }

  *(StatusReg + 352) = 0;
  *(StatusReg + 360) = 0;
  if (DebugPoolAllocation)
  {
    return AutoreleasePoolPage::autoreleaseNewPage(v0, v4, v1);
  }

  v6 = *(StatusReg + 344);
  if (v6 < 2)
  {
    return AutoreleasePoolPage::autoreleaseNoPage(0, v6);
  }

  if (LODWORD(v6->isa) != -1583242847)
  {
    AutoreleasePoolPage::busted_die(*(StatusReg + 344));
  }

  isa = v6[2].isa;
  if (isa == &v6[512])
  {
    return AutoreleasePoolPage::autoreleaseFullPage(0, v6, v1);
  }

  v6[2].isa = (isa + 1);
  *isa = 0;
  return isa;
}

uint64_t *AutoreleasePoolPage::add(AutoreleasePoolPage *this, uint64_t a2)
{
  v2 = a2;
  result = *(this + 2);
  if (DisableAutoreleaseCoalescing)
  {
    v5 = DisableAutoreleaseCoalescingLRU == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (this + 56);
    if (a2)
    {
      v7 = result == v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;
    if (DisableAutoreleaseCoalescingLRU)
    {
      if ((v8 & 1) == 0)
      {
        v9 = *(result - 1);
        if ((v9 & 0xF00FFFFFFFFFFFFLL) == a2)
        {
          v10 = (v9 >> 44) & 0xFF0 | (v9 >> 60);
          if (v10 != 4095)
          {
            *--result = ((v10 + 1) << 44) & 0xFF000000000000 | ((v10 + 1) << 60) | a2;
            return result;
          }
        }
      }
    }

    else if ((v8 & 1) == 0)
    {
      v11 = 0;
      v12 = result - 1;
      v13 = result - 1;
      do
      {
        if (v13 <= v6)
        {
          break;
        }

        v14 = *v13;
        if (!*v13)
        {
          break;
        }

        if ((v14 & 0xF00FFFFFFFFFFFFLL) == a2)
        {
          v15 = (v14 >> 44) & 0xFF0 | (v14 >> 60);
          if (v15 != 4095)
          {
            if (v11)
            {
              memmove(v13, v13 + 1, 8 * v11);
            }

            else
            {
              v15 = (*v12 >> 44) & 0xFF0 | (*v12 >> 60);
              v2 = *v12 & 0xF00FFFFFFFFFFFFLL;
            }

            *v12 = v2 | ((v15 + 1) << 44) & 0xFF000000000000 | ((v15 + 1) << 60);
            return v12;
          }
        }

        ++v11;
        --v13;
      }

      while (v11 != 4);
    }
  }

  *(this + 2) = result + 1;
  *result = a2;
  return result;
}

unint64_t object_getMethodImplementation(unint64_t result, objc_selector *a2)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v3 = *result & 0x7FFFFFFFFFFFF8;
    if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = objc_debug_taggedpointer_classes[result & 7];
  if (!v6)
  {
    return 0;
  }

  v4 = objc_debug_taggedpointer_classes[result & 7];
  if (v6 != __NSUnrecognizedTaggedPointer)
  {
    goto LABEL_5;
  }

  v3 = objc_debug_taggedpointer_ext_classes[(result >> 55)];
  if (!v3)
  {
    return 0;
  }

LABEL_4:
  v4 = v3;
LABEL_5:
  result = 0;
  if (a2 && v4)
  {
    v5 = *(v4[4] & 0xF00007FFFFFFFF8);
    if ((v5 & 1) == 0)
    {
      v5 = *(*((*v4 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v5 & 0x20000000) != 0 && ((result = cache_getImp(v4, a2, 0)) != 0 || (v4[2] & 1) != 0 && (result = cache_getImp(v4 + *((v4[2] & 0x7FFFFFFFFFFFFELL) - 16), a2, 0)) != 0))
    {
      if (result == _objc_msgForward_impcache)
      {
        result = 0;
      }
    }

    else
    {
      result = lookUpImpOrForward(0, a2, v4, 7u);
    }

    if (!result)
    {
      return _objc_msgForward;
    }
  }

  return result;
}

objc_object *_objc_rootAutorelease(objc_object *a1, uint64_t a2, AutoreleasePoolPage *a3)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    isa = a1->isa;
    if (a1->isa)
    {
      if (!(isa >> 55))
      {
        return a1;
      }
    }

    else if (*((isa & 0xFFFFFFFF8) + 0x1E) & 0x1000) != 0 && (objc_object::sidetable_isDeallocating(a1))
    {
      return a1;
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = *(StatusReg + 352);
    if (v7 == -1)
    {
      v9 = (a1->isa & 0xFFFFFFFF8);
    }

    else
    {
      moveTLSAutoreleaseToPool(v7, *(StatusReg + 360), a3);
      v8 = a1->isa;
      v9 = (a1->isa & 0xFFFFFFFF8);
      v10 = *(*(v9 + 4) & 0xF00007FFFFFFFF8);
      if ((v10 & 1) == 0)
      {
        v10 = *(*((*v9 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
      }

      if ((v10 & 0x20000000) != 0)
      {
        goto LABEL_11;
      }

      if ((*(v8 & 0x7FFFFFFFFFFFF8) - 1) >= 0xF && (*((v8 & 0x7FFFFFFFFFFFF8) + 0x20) & 0x8000000000000000) != 0)
      {
        class_initialize((v8 & 0x7FFFFFFFFFFFF8), a1);
        moveTLSAutoreleaseToPool(*(StatusReg + 352), *(StatusReg + 360), v14);
LABEL_11:
        *(StatusReg + 352) = a1 | 3;
        *(StatusReg + 360) = v3;
        return a1;
      }
    }

    if (!class_isMetaClass(v9))
    {
      objc_object::rootAutorelease2(a1, v11, v12);
    }
  }

  return a1;
}

id objc_allocWithZone(id result)
{
  if (result)
  {
    if ((*((*result & 0xFFFFFFFF8) + 0x1E) & 0x4000) != 0)
    {
      return _objc_rootAllocWithZone(result);
    }

    else
    {
      return [result allocWithZone:0];
    }
  }

  return result;
}

unint64_t weak_register_no_lock(__int128 **a1, int64_t a2, uint64_t a3, char *a4)
{
  v4 = a2;
  if (a2 >= 1)
  {
    v5 = a4;
    if (a4 <= 1)
    {
      v8.isa = *a2;
      if ((*((*a2 & 0xFFFFFFFF8) + 0x20) & 4) != 0)
      {
        if (v8.isa)
        {
          if (!(v8.isa >> 55))
          {
            goto LABEL_24;
          }
        }

        else if (objc_object::sidetable_isDeallocating(a2))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((v8.isa & 0x7FFFFFFFFFFFF8) != 0)
        {
          v9 = (v8.isa & 0x7FFFFFFFFFFFF8);
        }

        else
        {
          v9 = 0;
        }

        v16 = lookUpImpOrForwardTryCache(a2, "allowsWeakReference", v9, 0);
        if (v16 == _objc_msgForward)
        {
          return 0;
        }

        if (((v16)(v4, "allowsWeakReference") & 1) == 0)
        {
LABEL_24:
          if (v5 == 1)
          {
            ClassName = object_getClassName(v4);
            _objc_fatal("Cannot form weak reference to instance (%p) of class %s. It is possible that this object was over-released, or is in the process of deallocation.", v19, v20, v21, v4, ClassName);
          }

          return 0;
        }
      }
    }

    v10 = weak_entry_for_referent(a1, v4, a3, a4);
    if (v10)
    {
      append_referrer(v10, a3, v11, v12);
    }

    else
    {
      *&v22 = -v4;
      *(&v22 + 1) = -a3;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      v13 = a1[2];
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      if (a1[1] >= (3 * v14) >> 2)
      {
        if (v14)
        {
          v15 = 2 * v14;
        }

        else
        {
          v15 = 64;
        }

        weak_resize(a1, v15);
      }

      weak_entry_insert(a1, &v22, v11, v12);
    }
  }

  return v4;
}

void *weak_entry_insert(void *result, __int128 *a2, const char *a3, char *a4)
{
  v4 = 0x8A970BE7488FDA55 * (-*a2 ^ (-*a2 >> 4));
  v5 = result[2];
  v6 = v5 & (bswap64(v4) ^ v4);
  v7 = *result + 40 * v6;
  v8 = *v7;
  if (*v7)
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v9 = (v9 + 1) & v5;
      if (v9 == v6)
      {
        _objc_fatal("bad weak table at %p. This may be a runtime bug or a memory error somewhere else.", a2, a3, a4, *result);
      }

      ++v8;
      v7 = *result + 40 * v9;
    }

    while (*v7);
  }

  v10 = *a2;
  v11 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v10;
  *(v7 + 16) = v11;
  ++result[1];
  if (v8 > result[3])
  {
    result[3] = v8;
  }

  return result;
}

void locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::unlockWith(os_unfair_lock_t lock, os_unfair_lock_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit(lock, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock(lock);
  }

  if (lock != a2)
  {
    v7 = *(StatusReg + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(a2, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {

      os_unfair_lock_unlock(a2);
    }
  }
}

void objc_autoreleasePoolPop(void *context)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v6 = StatusReg[44];
    if ((v6 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      break;
    }

    StatusReg[44] = 0;
    StatusReg[45] = 0;
  }

  if (context == 1)
  {
    v7 = StatusReg[43];
    if (v7 < 2)
    {
      StatusReg[43] = 0;
      return;
    }

    if (*v7 != -1583242847)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v8 = *(v7 + 32);
      if (!v8)
      {
        break;
      }

      v7 = *(v7 + 32);
      if (*v8 != -1583242847)
      {
        AutoreleasePoolPage::busted_die(v8);
      }
    }

    context = (v7 + 56);
  }

  else
  {
    v7 = context & 0xFFFFFFFFFFFFF000;
    if (*(context & 0xFFFFFFFFFFFFF000) != -1583242847)
    {
LABEL_38:
      AutoreleasePoolPage::busted_die(v7);
    }
  }

  if (*context && (context != (v7 + 56) || *(v7 + 32)))
  {

    AutoreleasePoolPage::badPop(context, v1);
  }

  else
  {
    if (PrintPoolHiwat)
    {
      v9 = 0;
    }

    else
    {
      v9 = DebugPoolAllocation == 0;
    }

    if (v9 && DebugMissingPools == 0)
    {
      AutoreleasePoolPage::releaseUntil(v7, context);
      v11 = *(v7 + 40);
      if (v11)
      {
        if ((*(v7 + 16) - v7 - 56) < 2016 || (v11 = *(v11 + 5)) != 0)
        {

          AutoreleasePoolPage::kill(v11);
        }
      }
    }

    else
    {

      AutoreleasePoolPage::popPageDebug(v7, context, v2, v3);
    }
  }
}

void *AutoreleasePoolPage::releaseUntil(objc_object ***this, objc_object **a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    while (this[2] != a2)
    {
      v5 = StatusReg[43];
      if (!v5)
      {
        goto LABEL_11;
      }

      if (v5 == 1)
      {
        v5 = 0;
        goto LABEL_11;
      }

      if (*v5 != -1583242847)
      {
LABEL_20:
        AutoreleasePoolPage::busted_die(v5);
      }

LABEL_11:
      while (1)
      {
        v6 = *(v5 + 16);
        if (v6 != v5 + 56)
        {
          break;
        }

        v5 = *(v5 + 32);
        if (v5 && *v5 != -1583242847)
        {
          goto LABEL_20;
        }

        StatusReg[43] = v5;
      }

      *(v5 + 16) = v6 - 8;
      v7 = *(v6 - 8);
      *(v6 - 8) = 0xA3A3A3A3A3A3A3A3;
      v8 = (v7 & 0xF00FFFFFFFFFFFFLL);
      if ((v7 & 0xF00FFFFFFFFFFFFLL) != 0)
      {
        v9 = ((v7 >> 44) & 0xFF0 | (v7 >> 60)) + 1;
        do
        {

          --v9;
        }

        while (v9);
      }
    }

    result = (StatusReg[44] & 0xFFFFFFFFFFFFFFFCLL);
    if (!result)
    {
      break;
    }

    StatusReg[44] = 0;
    StatusReg[45] = 0;
  }

  if (*this != -1583242847)
  {
    AutoreleasePoolPage::busted_die(this);
  }

  StatusReg[43] = this;
  return result;
}

void _objc_rootDealloc(objc_object *a1, uint64_t a2, const char *a3, char *a4)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v5.isa = a1->isa;
    if (a1->isa & 7) != 1 || (v5.isa & 0x80000000000000) != 0 || (*((v5.isa & 0xFFFFFFFF8) + 0x1E))
    {
      a1 = objc_destructInstance_nonnull_realized(a1, a2, a3, a4);
    }

    free(a1);
  }
}

int objc_sync_exit(id obj)
{
  v4 = _objc_sync_exit_kind(obj, 1, v1, v2);
  if (v4)
  {
    v5 = _objc_fault_and_log;
    if (DebugSyncErrors > 2)
    {
      if (DebugSyncErrors == 3)
      {
LABEL_10:
        v5("objc_sync_exit(%p) returned error %d", obj, -1);
        return v4;
      }

      if (DebugSyncErrors != 4)
      {
LABEL_9:
        v5 = _objc_inform;
        goto LABEL_10;
      }

      _objc_stochastic_fault("objc_sync_exit(%p) returned error %d", obj, -1);
    }

    else if (DebugSyncErrors)
    {
      if (DebugSyncErrors == 2)
      {
        (_objc_fatal)("objc_sync_exit(%p) returned error %d", obj, -1);
      }

      goto LABEL_9;
    }
  }

  return v4;
}

_DWORD *id2data(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  memptr = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 328);
  if (v8 && !(a1 + *(v8 + 8)) && *(v8 + 16) == a2)
  {
    memptr = *(StatusReg + 328);
    if (*(v8 + 20) < 1 || (v9 = *(StatusReg + 336)) == 0)
    {
      _objc_fatal("id2data fastcache is buggy", a2, a3, a4);
    }

    if (a3)
    {
      result = v8;
      v11 = v9 - 1;
      *(StatusReg + 336) = v11;
      if (!v11)
      {
        *(StatusReg + 328) = 0;
        v12 = (v8 + 20);
LABEL_49:
        atomic_fetch_add(v12, 0xFFFFFFFF);
        return memptr;
      }
    }

    else
    {
      *(StatusReg + 336) = v9 + 1;
      return v8;
    }

    return result;
  }

  cache = fetch_cache(0, a2, a3, a4);
  v17 = cache;
  if (!cache || (v18 = cache[1], !v18))
  {
LABEL_15:
    v22 = 0;
    v23 = (&sDataLists + 64 * (((a1 >> 4) ^ (a1 >> 9)) & 7));
    atomic_compare_exchange_strong_explicit(&v23[2], &v22, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v22)
    {
      os_unfair_lock_lock_with_options();
    }

    v24 = *&v23->_os_unfair_lock_opaque;
    if (*&v23->_os_unfair_lock_opaque)
    {
      v25 = 0;
      do
      {
        if (!(a1 + *(v24 + 1)) && v24[4] == v5)
        {
          memptr = v24;
          atomic_fetch_add(v24 + 5, 1u);
          goto LABEL_32;
        }

        if (!v25)
        {
          if (v24[5])
          {
            v25 = 0;
          }

          else
          {
            v25 = v24;
          }
        }

        v24 = *v24;
      }

      while (v24);
      if (v4 == 1)
      {
        goto LABEL_32;
      }

      if (v25)
      {
        memptr = v25;
        *(v25 + 1) = -a1;
        v25[4] = v5;
        v25[5] = 1;
        goto LABEL_32;
      }
    }

    else if (v4 == 1)
    {
      goto LABEL_32;
    }

    malloc_type_posix_memalign(&memptr, 0x40uLL, 0x40uLL, 0x10A0040571A19FAuLL);
    v26 = memptr;
    *(memptr + 1) = -a1;
    *(v26 + 4) = v5;
    *(v26 + 20) = 1;
    *(v26 + 7) = 0;
    *v26 = *&v23->_os_unfair_lock_opaque;
    *&v23->_os_unfair_lock_opaque = memptr;
LABEL_32:
    v27 = *(StatusReg + 24);
    v28 = v27;
    atomic_compare_exchange_strong_explicit(&v23[2], &v28, 0, memory_order_release, memory_order_relaxed);
    if (v28 != v27)
    {
      os_unfair_lock_unlock(v23 + 2);
    }

    result = 0;
    v29 = memptr;
    if (memptr && v4 != 1)
    {
      if (a1 + *(memptr + 1) || *(memptr + 4) != v5)
      {
        _objc_fatal("id2data is buggy", v14, v15, v16);
      }

      if (v8)
      {
        if (!v17)
        {
          v17 = fetch_cache(1, v14, v15, v16);
          v29 = memptr;
        }

        v30 = v17[1];
        v31 = &v17[4 * v30];
        *(v31 + 1) = v29;
        v31[4] = 1;
        v17[1] = v30 + 1;
        return memptr;
      }

      *(StatusReg + 328) = memptr;
      *(StatusReg + 336) = 1;
      return v29;
    }

    return result;
  }

  v19 = 0;
  v20 = cache + 2;
  v21 = (cache + 2);
  while (1)
  {
    result = *v21;
    if (!(a1 + *(*v21 + 1)) && result[4] == v5)
    {
      break;
    }

    ++v19;
    v21 += 2;
    if (v18 == v19)
    {
      goto LABEL_15;
    }
  }

  memptr = *v21;
  if (result[5] < 1 || (v32 = &v20[4 * v19], (v33 = v32[2]) == 0))
  {
    _objc_fatal("id2data cache is buggy", v14, v15, v16);
  }

  if (v4)
  {
    v34 = v33 - 1;
    v32[2] = v34;
    if (!v34)
    {
      v35 = v18 - 1;
      v36 = *&v20[4 * v35];
      v17[1] = v35;
      *v32 = v36;
      v12 = result + 5;
      goto LABEL_49;
    }
  }

  else
  {
    v32[2] = v33 + 1;
  }

  return result;
}

id objc_initWeak(id *location, id val)
{
  v2 = val;
  if (!val)
  {
    *location = 0;
    return v2;
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = &objc_debug_taggedpointer_classes[val & 7];
  v8 = &objc_debug_taggedpointer_ext_classes[(val >> 55)];
  while (1)
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(v5, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v10 = *v2 & 0x7FFFFFFFFFFFF8;
      if (!v10)
      {
        goto LABEL_11;
      }

LABEL_7:
      v11 = v10;
      goto LABEL_12;
    }

    if (!*v7)
    {
      goto LABEL_11;
    }

    v11 = *v7;
    if (*v7 == __NSUnrecognizedTaggedPointer)
    {
      v10 = *v8;
      if (!*v8)
      {
LABEL_11:
        v11 = 0;
        goto LABEL_12;
      }

      goto LABEL_7;
    }

LABEL_12:
    if (v11 == v4)
    {
      break;
    }

    v12 = *(*(v11 + 4) & 0xF00007FFFFFFFF8);
    if ((v12 & 1) == 0)
    {
      v12 = *(*((*v11 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v12 & 0x20000000) != 0)
    {
      break;
    }

    v13 = *(StatusReg + 24);
    v14 = v13;
    atomic_compare_exchange_strong_explicit(v5, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
    }

    class_initialize(v11, v2);
    v4 = v11;
  }

  v15 = weak_register_no_lock(v5 + 4, v2, location, 1);
  v2 = v15;
  if (v15 >= 1)
  {
    v16 = *v15;
    if (*v15)
    {
      while ((v16 & 4) == 0)
      {
        v17 = v16;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 4, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          break;
        }

        v16 = v17;
        if ((v17 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      objc_object::sidetable_setWeaklyReferenced_nolock(v15);
    }
  }

  *location = v2;
  v18 = *(StatusReg + 24);
  v19 = v18;
  atomic_compare_exchange_strong_explicit(v5, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != v18)
  {
    os_unfair_lock_unlock(v5);
  }

  callSetWeaklyReferenced(v2);
  return v2;
}

void (*lookupMethodInClassAndLoadCache(char *a1, objc_selector *a2))(void)
{
  Imp = cache_getImp(a1, a2, _objc_msgForward_impcache);
  if (!Imp)
  {
    v7 = a1;
    v8 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      os_unfair_lock_lock_with_options();
    }

    MethodNoSuper_nolock = getMethodNoSuper_nolock(a1, a2, v7, v4);
    if (MethodNoSuper_nolock)
    {
      Imp = method_t::imp(MethodNoSuper_nolock, 0);
    }

    else
    {
      Imp = _objc_msgForward_impcache;
    }

    if ((*(a1 + 2) & 1) == 0)
    {
      cache_t::insert((a1 + 16), a2, Imp, 0);
    }

    v11 = *(StatusReg + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return Imp;
}

void sub_180099C54(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_copyWeak(id *to, id *from)
{
  WeakRetained = objc_loadWeakRetained(from);
  objc_initWeak(to, WeakRetained);
}

void _objc_sync_enter_kind(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a1)
  {
    id2data(a1, a2, 0, a4);

    os_unfair_recursive_lock_lock_with_options();
  }

  else
  {
    if (DebugNilSync)
    {
      _objc_inform("NIL SYNC DEBUG: @synchronized(nil); set a breakpoint on objc_sync_nil to debug", a2);
    }

    gdb_objc_class_changed();
    if (DebugNilSync == 2)
    {
      _objc_fatal("@synchronized(nil) is fatal", v4, v5, v6);
    }
  }
}

uint64_t _objc_sync_exit_kind(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  if (result)
  {
    if (id2data(result, a2, 1, a4))
    {
      return os_unfair_recursive_lock_tryunlock4objc() - 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

unsigned int *fetch_cache(int a1, uint64_t a2, const char *a3, char *a4)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v6 = *(StatusReg + 320);
  if (!a1 || v6)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = malloc_type_malloc(0x48uLL, 0x201A97EDuLL);
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *(v6 + 8) = 0;
    *(StatusReg + 320) = v6;
  }

  result = *(v6 + 1);
  if (result)
  {
    v8 = *result;
    if (v8 <= 3)
    {
      v9 = result[1];
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x48uLL, 0x100004000313F17uLL);
  *(v6 + 1) = result;
  v8 = 4;
  *result = 4;
LABEL_10:
  v9 = result[1];
  if (v8 < v9)
  {
LABEL_15:
    _objc_fatal("syncCache corrupted, allocated=%u used=%u", a2, a3, a4, v8, v9);
  }

  if (v8 == v9)
  {
    v10 = 2 * v8;
    *result = v10;
    result = malloc_type_realloc(result, (32 * (v10 >> 1)) | 8, 0x100004000313F17uLL);
    *(v6 + 1) = result;
  }

  return result;
}

objc_object *objc_destructInstance_nonnull_realized(objc_object *a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = (a1->isa & 0xFFFFFFFF8);
  v6 = (a1->isa >> 1) & 1;
  if ((a1->isa & 1) == 0)
  {
    LODWORD(v6) = 1;
  }

  if (a1 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if ((*(v5 + 15) & 1) != 0 && a1 >= 1)
  {
    object_cxxDestructFromClass(a1, v5);
  }

  if (v7)
  {
    _object_remove_associations(a1, 1);
  }

  if (a1->isa)
  {
    if ((a1->isa & 0x80000000000004) != 0)
    {
      objc_object::clearDeallocating_slow(a1, v5, a3, a4);
    }
  }

  else
  {
    objc_object::sidetable_clearDeallocating(a1);
  }

  return a1;
}

id objc_loadWeakRetained(id *location)
{
  v3 = *location;
  if (*location < 1)
  {
    return v3;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(v7, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    if (*location != v3)
    {
      v8 = *(StatusReg + 24);
      v9 = v8;
      atomic_compare_exchange_strong_explicit(v7, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
      }

      goto LABEL_17;
    }

    if (!weak_entry_for_referent(v7 + 4, v3, v1, v2))
    {
      break;
    }

    v10 = (v3->isa & 0xFFFFFFFF8);
    if ((*(v10 + 4) & 4) != 0)
    {
      isa = v3->isa;
      if (v3->isa)
      {
        while (1)
        {
          if (!(isa >> 55))
          {
            v17 = 0;
            goto LABEL_32;
          }

          if (isa >= 0xFF00000000000000)
          {
            break;
          }

          v16 = isa;
          atomic_compare_exchange_strong_explicit(v3, &v16, isa + 0x100000000000000, memory_order_relaxed, memory_order_relaxed);
          if (v16 == isa)
          {
            v17 = v3;
            goto LABEL_32;
          }

          isa = v16;
          if ((v16 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v17 = objc_object::rootRetain_overflow(v3, 1);
      }

      else
      {
        v17 = v3;
        if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) == 0)
        {
LABEL_28:
          if (objc_object::sidetable_tryRetain(v3))
          {
            v17 = v3;
          }

          else
          {
            v17 = 0;
          }
        }
      }

LABEL_32:
      if (!v17)
      {
        v3 = 0;
      }

      goto LABEL_36;
    }

    v11 = *(*((v3->isa & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    if ((v11 & 1) == 0)
    {
      v11 = *(*((*v10 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v11 & 0x20000000) != 0 || _thisThreadIsInitializingClass((v3->isa & 0xFFFFFFFF8)))
    {
      v14 = lookUpImpOrForwardTryCache(v3, "retainWeakReference", v10, 0);
      if (v14 == _objc_msgForward)
      {
        v3 = 0;
      }

      else if (!(v14)(v3, "retainWeakReference"))
      {
        v3 = 0;
      }

LABEL_36:
      v18 = *(StatusReg + 24);
      v19 = v18;
      atomic_compare_exchange_strong_explicit(v7, &v19, 0, memory_order_release, memory_order_relaxed);
      if (v19 != v18)
      {
        os_unfair_lock_unlock(v7);
      }

      return v3;
    }

    v12 = *(StatusReg + 24);
    v13 = v12;
    atomic_compare_exchange_strong_explicit(v7, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != v12)
    {
    }

    class_initialize(v10, v3);
LABEL_17:
    v3 = *location;
    if (*location <= 0)
    {
      return v3;
    }
  }

  v21 = *(StatusReg + 24);
  v22 = v21;
  atomic_compare_exchange_strong_explicit(v7, &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != v21)
  {
  }

  weakTableScan();
  _objc_fault_and_log("Weak reference loaded from %p contains %p which is not in the weak references table", location, v3);

  return v3;
}

Class realizeAndInitializeIfNeeded_locked(objc_object *a1, objc_class *a2, int a3)
{
  v5 = *a2;
  if ((*a2 - 1) < 0xF || (*(a2 + 4) & 0x8000000000000000) == 0)
  {
    v11 = realizeClassMaybeSwiftMaybeRelock(a2, 1);
    a2 = v11;
    if (!v11)
    {
      return a2;
    }

    v5 = *v11;
  }

  v6 = v5 & 0xFFFFFFFF8;
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return v7;
  }

  v9 = *(*(a2 + 4) & 0xF00007FFFFFFFF8);
  if ((v9 & 1) == 0)
  {
    v9 = *(*(v6 + 32) & 0xF00007FFFFFFFF8);
  }

  if ((v9 & 0x20000000) != 0)
  {
    return a2;
  }

  return initializeAndMaybeRelock(a2, a1, 1);
}

unint64_t getMethodNoSuper_nolock(objc_class *a1, objc_selector *a2, const char *a3, char *a4)
{
  v4 = *((*(a1 + 4) & 0xF00007FFFFFFFF8) + 8);
  if ((v4 & 1) == 0)
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 32);
    if (v5)
    {
      v6 = (v5 & 1) == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      if (v5)
      {
        result = v5 & 0xFFFFFFFFFFFFFFFELL;
        if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0)
        {
          return result;
        }

        goto LABEL_24;
      }

      return 0;
    }

    result = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      return result;
    }

    goto LABEL_30;
  }

  v8 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8 & 3;
  if ((v8 & 3) != 0)
  {
    result = 0;
  }

  else
  {
    result = v8;
  }

  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9 == 2)
  {
    v11 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != 1 || v10 == 0)
  {
    if (!result)
    {
      if (v11)
      {
        result = v11;
LABEL_24:

        return getMethodFromRelativeList(result, a2, a3, a4);
      }

      return 0;
    }

LABEL_30:

    return getMethodFromListArray<method_list_t **>(result, a2, a3, a4);
  }

  if (result)
  {
    goto LABEL_30;
  }

  v15 = *v10;
  v14 = v10 + 2;
  v13 = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = 0;
  v17 = a2 - byte_1FA920D78;
  while (1)
  {
    v18 = *&v14[2 * v16];
    v19 = *v18;
    v20 = *v18 > -1 || (v18 & 0x8000000000000000) != 0;
    v21 = v20 ? 24 : 12;
    v22 = v19 & 0xFFFC;
    if ((~*v18 & 3) == 0 && v22 == v21)
    {
      break;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      v71 = *(v18 + 4);
      v76 = v71 * v22;
      if ((v76 & 0xFFFFFFFF00000000) == 0)
      {
        v77 = v18 + 8;
        v78 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v79 = (v77 + v76) & 0xFFFFFFFFFFFFFFFCLL;
        if (v78 == v79)
        {
          goto LABEL_105;
        }

        v80 = v79 | 2;
        v81 = v78 | 2;
        v26 = v78 | 2;
        while (*(v81 & 0xFFFFFFFFFFFFFFFCLL) != a2)
        {
          v26 += v22;
          v81 += v22;
          if (v26 == v80)
          {
            goto LABEL_105;
          }
        }

        goto LABEL_104;
      }

      goto LABEL_173;
    }

    if ((v19 & 0x80000000) == 0)
    {
      v71 = *(v18 + 4);
      v72 = v71 * v22;
      if ((v72 & 0xFFFFFFFF00000000) == 0)
      {
        v73 = v18 + 8;
        v74 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v75 = (v73 + v72) & 0xFFFFFFFFFFFFFFFCLL;
        if (v74 == v75)
        {
          goto LABEL_105;
        }

        v26 = v74;
        while (*(v74 & 0xFFFFFFFFFFFFFFFCLL) != a2)
        {
          v26 += v22;
          v74 += v22;
          if (v26 == v75)
          {
            goto LABEL_105;
          }
        }

        goto LABEL_104;
      }

      goto LABEL_173;
    }

    if (dataSegmentsRanges > v18 || *algn_1ED3F62F8 <= v18)
    {
      v71 = *(v18 + 4);
      v88 = v71 * v22;
      if ((v88 & 0xFFFFFFFF00000000) == 0)
      {
        v89 = v18 + 8;
        v90 = (v89 + v88) & 0xFFFFFFFFFFFFFFFCLL;
        if ((v89 & 0xFFFFFFFFFFFFFFFCLL) == v90)
        {
          goto LABEL_105;
        }

        v91 = v89 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v26 = v91;
        while (*((v91 & 0xFFFFFFFFFFFFFFFCLL) + *(v91 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
        {
          v26 += v22;
          v91 += v22;
          if (v26 == (v90 | 1))
          {
            goto LABEL_105;
          }
        }

        goto LABEL_104;
      }

LABEL_173:
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, dataSegmentsRanges, *algn_1ED3F62F8, v71, v18, v22);
    }

    if (dataSegmentsRanges <= a2 && *algn_1ED3F62F8 > a2)
    {
      v71 = *(v18 + 4);
      v82 = v71 * v22;
      if ((v82 & 0xFFFFFFFF00000000) == 0)
      {
        v83 = v18 + 8;
        v84 = v83 & 0xFFFFFFFFFFFFFFFCLL;
        v85 = (v83 + v82) & 0xFFFFFFFFFFFFFFFCLL;
        if (v84 == v85)
        {
          goto LABEL_105;
        }

        v86 = v85 | 1;
        v87 = v84 | 1;
        v26 = v87;
        while (&byte_1FA920D78[*(v87 & 0xFFFFFFFFFFFFFFFCLL)] != a2)
        {
          v26 += v22;
          v87 += v22;
          if (v26 == v86)
          {
            goto LABEL_105;
          }
        }

        goto LABEL_104;
      }

      goto LABEL_173;
    }

LABEL_105:
    result = 0;
    if (++v16 == v13)
    {
      return result;
    }
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    v32 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
    v33 = *(v18 + 4);
    if (v33 < 5)
    {
      v26 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      if (!v33)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v26 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      do
      {
        result = v26 + v21 * (v33 >> 1);
        v34 = *(result & 0xFFFFFFFFFFFFFFFCLL);
        v35 = v34 >= a2;
        if (v34 == a2)
        {
          if (result > v32)
          {
            v53 = v26 + v21 * ((v33 >> 1) - 1);
            while (*(v53 & 0xFFFFFFFFFFFFFFFCLL) == a2)
            {
              result -= v21;
              v53 -= v21;
              if (result <= v32)
              {
                return result;
              }
            }
          }

          goto LABEL_103;
        }

        v36 = v34 < a2;
        if (!v35)
        {
          v26 = result + v21;
        }

        v37 = v33 - v36;
        v33 = v37 >> 1;
      }

      while (v37 > 9);
      if (!v33)
      {
        goto LABEL_105;
      }
    }

    v38 = v33 - 1;
    v39 = v26;
    while (1)
    {
      v40 = v38;
      v41 = *(v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41 == a2)
      {
        goto LABEL_104;
      }

      if (v41 <= a2)
      {
        v26 += v21;
        v38 = v40 - 1;
        v39 += v21;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_105;
    }
  }

  if (v19 < 0)
  {
    if (dataSegmentsRanges > v18 || *algn_1ED3F62F8 <= v18)
    {
      v54 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
      v55 = *(v18 + 4);
      if (v55 < 5)
      {
        v26 = v54;
LABEL_108:
        if (!v55)
        {
          goto LABEL_105;
        }

        v61 = v55 - 1;
        v62 = v26;
        while (1)
        {
          v63 = *((v62 & 0xFFFFFFFFFFFFFFFCLL) + *(v62 & 0xFFFFFFFFFFFFFFFCLL));
          if (v63 == a2)
          {
            break;
          }

          v26 += v21;
          v64 = v63 > a2 || v61-- == 0;
          v62 += v21;
          if (v64)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        v26 = v54;
        while (1)
        {
          result = v26 + v21 * (v55 >> 1);
          v56 = *((result & 0xFFFFFFFFFFFFFFFCLL) + *(result & 0xFFFFFFFFFFFFFFFCLL));
          v57 = v56 >= a2;
          if (v56 == a2)
          {
            break;
          }

          v58 = v56 < a2;
          v59 = result + v21;
          if (!v57)
          {
            v26 = v59;
          }

          v60 = v55 - v58;
          v55 = (v55 - v58) >> 1;
          if (v60 <= 9)
          {
            goto LABEL_108;
          }
        }

        if (result > v54)
        {
          v65 = v26 + v21 * ((v55 >> 1) - 1);
          while (*((v65 & 0xFFFFFFFFFFFFFFFCLL) + *(v65 & 0xFFFFFFFFFFFFFFFCLL)) == a2)
          {
            result -= v21;
            v65 -= v21;
            if (result <= v54)
            {
              return result;
            }
          }
        }

LABEL_103:
        v26 = result;
      }
    }

    else
    {
      if (dataSegmentsRanges > a2 || *algn_1ED3F62F8 <= a2)
      {
        goto LABEL_105;
      }

      v42 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
      v43 = *(v18 + 4);
      if (v43 >= 5)
      {
        v26 = v42;
        while (1)
        {
          result = v26 + v21 * (v43 >> 1);
          v44 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          v45 = v17 > v44;
          if (v17 == v44)
          {
            break;
          }

          v46 = v17 > v44;
          v47 = result + v21;
          if (v45)
          {
            v26 = v47;
          }

          v48 = v43 - v46;
          v43 = (v43 - v46) >> 1;
          if (v48 <= 9)
          {
            goto LABEL_123;
          }
        }

        if (result > v42)
        {
          v70 = v26 + v21 * ((v43 >> 1) - 1);
          while (v17 == *(v70 & 0xFFFFFFFFFFFFFFFCLL))
          {
            result -= v21;
            v70 -= v21;
            if (result <= v42)
            {
              return result;
            }
          }
        }

        goto LABEL_103;
      }

      v26 = v42;
LABEL_123:
      if (!v43)
      {
        goto LABEL_105;
      }

      v66 = v43 - 1;
      v67 = v26;
      while (1)
      {
        v68 = *(v67 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17 == v68)
        {
          break;
        }

        v26 += v21;
        v69 = v17 < v68 || v66-- == 0;
        v67 += v21;
        if (v69)
        {
          goto LABEL_105;
        }
      }
    }

LABEL_104:
    result = v26;
    if (!v26)
    {
      goto LABEL_105;
    }

    return result;
  }

  v24 = (v18 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v18 + 4);
  if (v25 < 5)
  {
    v26 = v24;
    if (!v25)
    {
      goto LABEL_105;
    }

LABEL_82:
    v49 = v25 - 1;
    v50 = v26;
    while (1)
    {
      v51 = *(v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51 == a2)
      {
        goto LABEL_104;
      }

      v26 += v21;
      v52 = v51 > a2 || v49-- == 0;
      v50 += v21;
      if (v52)
      {
        goto LABEL_105;
      }
    }
  }

  v26 = v24;
  while (1)
  {
    result = v26 + 24 * (v25 >> 1);
    v27 = *(result & 0xFFFFFFFFFFFFFFFCLL);
    v28 = v27 >= a2;
    if (v27 == a2)
    {
      break;
    }

    v29 = v27 < a2;
    v30 = result + 24;
    if (!v28)
    {
      v26 = v30;
    }

    v31 = v25 - v29;
    v25 = (v25 - v29) >> 1;
    if (v31 <= 9)
    {
      if (!v25)
      {
        goto LABEL_105;
      }

      goto LABEL_82;
    }
  }

  if (result <= v24)
  {
    goto LABEL_103;
  }

  v92 = v26 + 24 * (v25 >> 1) - 24;
  do
  {
    if (*(v92 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      break;
    }

    result -= 24;
    v92 -= 24;
  }

  while (result > v24);
  return result;
}

uint64_t method_t_remappedImp_nolock(const method_t *a1)
{
  if (byte_1ED3F5C08 != 1)
  {
    return 0;
  }

  v7[3] = v1;
  v7[4] = v2;
  v7[0] = 0;
  if (objc::DenseMapBase<objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>,method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::LookupBucketFor<method_t const*>(a1, v7))
  {
    v3 = v7[0];
    if (objc::smallMethodIMPMap)
    {
LABEL_4:
      v4 = objc::smallMethodIMPMap;
      goto LABEL_11;
    }
  }

  else
  {
    if (objc::smallMethodIMPMap)
    {
      v6 = objc::smallMethodIMPMap;
    }

    else
    {
      v6 = 0;
    }

    v3 = v6 + 16 * dword_1ED3F5C00;
    if (objc::smallMethodIMPMap)
    {
      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_11:
  if (v4 + 16 * dword_1ED3F5C00 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8);
  }
}

void (*lookUpImpOrForward(objc_object *a1, objc_selector *a2, unint64_t a3, unsigned int a4))(void)
{
  v7 = *(*(a3 + 32) & 0xF00007FFFFFFFF8);
  if ((v7 & 1) == 0)
  {
    v7 = *(*((*a3 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  v8 = 0;
  if ((v7 & 0x20000000) != 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = a4 | 8;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((*a3 - 1) < 0xF || (*(a3 + 32) & 0x8000000000000000) == 0 || (v11 = *((*(a3 + 32) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v11) || (*(qword_1ED3F6300 + 16 * v11) <= a3 ? (v12 = *(qword_1ED3F6300 + 16 * v11 + 8) > a3) : (v12 = 0), !v12))
  {
    if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-a3) && (dataSegmentsContain(a3, v33, v34, v35) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v36, v37, v38, a3);
    }
  }

  v13 = realizeAndInitializeIfNeeded_locked(a1, a3, v9 & 1);
  v16 = v13;
  v17 = _objc_returnNil;
  if (!v13 || (v17 = _objc_returnNil, (*v13 & 0xFFFFFFFF8) == 0))
  {
LABEL_33:
    v29 = v17;
LABEL_34:
    if ((v9 & 8) == 0)
    {
LABEL_35:
      while ((*(v16 + 2) & 1) != 0)
      {
        v16 = (v16 + *((*(v16 + 2) & 0x7FFFFFFFFFFFFELL) - 16));
      }

      if (msgSendCacheMissHook)
      {
        (atomic_load_explicit(&msgSendCacheMissHook, memory_order_acquire))(v16, a1, a2, v29);
      }

      cache_t::insert(v16 + 16, a2, v29, a1);
    }

    goto LABEL_40;
  }

  v18 = *(gdb_objc_realized_classes + 8);
  if (DisablePreopt)
  {
    v19 = 0;
  }

  else
  {
    v19 = _dyld_objc_class_count();
  }

  v20 = 16 * ~(v19 + v18);
  v21 = v16;
  while ((*(v21 + 2) & 1) != 0)
  {
    Imp = cache_getImp(v21, a2, 0);
    if (Imp)
    {
      v29 = Imp;
      goto LABEL_40;
    }

    v21 = (v21 + *((*(v21 + 2) & 0x7FFFFFFFFFFFFELL) - 16));
LABEL_28:
    if (__CFADD__(v20++, 1))
    {
      _objc_fatal("Memory corruption in class list.", v23, v24, v25);
    }

    v28 = cache_getImp(v21, a2, 0);
    if (v28 == _objc_msgForward_impcache)
    {
LABEL_32:
      v17 = _objc_msgForward_impcache;
      if ((v9 & 2) == 0)
      {
        goto LABEL_33;
      }

      return resolveMethod_locked(a1, a2, v16, v9 & 0xFFFFFFFD);
    }

    v29 = v28;
    if (v28)
    {
      goto LABEL_34;
    }
  }

  MethodNoSuper_nolock = getMethodNoSuper_nolock(v21, a2, v14, v15);
  if (!MethodNoSuper_nolock)
  {
    if (!*(v21 + 1))
    {
      goto LABEL_32;
    }

    v21 = *(v21 + 1);
    goto LABEL_28;
  }

  v29 = method_t::imp(MethodNoSuper_nolock, 0);
  if ((v9 & 8) == 0)
  {
    goto LABEL_35;
  }

LABEL_40:
  v30 = *(StatusReg + 24);
  v31 = v30;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != v30)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (((v29 == _objc_msgForward_impcache) & (v9 >> 2)) != 0)
  {
    return 0;
  }

  else
  {
    return v29;
  }
}

unint64_t method_t::imp(unint64_t this, int a2)
{
  v2 = this;
  if ((this & 3) > 1)
  {
    if ((this & 3) != 2)
    {
      return this;
    }

    goto LABEL_9;
  }

  if ((this & 3) == 0)
  {
LABEL_9:
    if (*((this & 0xFFFFFFFFFFFFFFFCLL) + 16))
    {
      return *((this & 0xFFFFFFFFFFFFFFFCLL) + 16);
    }

    else
    {
      return 0;
    }
  }

  v3 = *((this & 0xFFFFFFFFFFFFFFFCLL) + 8) + (this & 0xFFFFFFFFFFFFFFFCLL) + 8;
  if (a2)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v6 = method_t_remappedImp_nolock(v2);
    v7 = *(StatusReg + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  else
  {
    v6 = method_t_remappedImp_nolock(this);
  }

  if (v6)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

void sub_18009B0F0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void (*object_cxxConstructFromClass(objc_object *a1, objc_class **a2, uint64_t a3))(void)
{
  v3 = a3;
  v5 = a1;
  v7 = a2 + 1;
  v6 = a2[1];
  if (v6 && (*(v6 + 15) & 2) != 0 && !object_cxxConstructFromClass(a1, v6, a3))
  {
    return 0;
  }

  Cache = lookupMethodInClassAndLoadCache(a2, SEL_cxx_construct);
  if (Cache != _objc_msgForward_impcache)
  {
    v9 = Cache;
    if (PrintCxxCtors)
    {
      v11 = objc_class::nameForLogging(a2);
      _objc_inform("CXX: calling C++ constructors for class %s", v11);
    }

    if (!(v9)(v5))
    {
      if (*v7)
      {
        object_cxxDestructFromClass(v5, *v7);
      }

      if (v3)
      {
        free(v5);
      }

      if ((v3 & 2) != 0)
      {

        _objc_callBadAllocHandler(a2);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t AutoreleasePoolPage::autoreleaseNoPage(id this, objc_object *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 344);
  if (v4 == 1)
  {
LABEL_7:
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x1000uLL, 0x1000uLL, 0x78AEBFB1uLL);
    v6 = memptr;
    AutoreleasePoolPage::AutoreleasePoolPage(memptr, 0);
    if (v6 && *v6 != -1583242847)
    {
      AutoreleasePoolPage::busted_die(v6);
    }

    *(StatusReg + 344) = v6;
    if (v4 == 1)
    {
      v7 = v6[2];
      v6[2] = v7 + 1;
      *v7 = 0;
    }

    return AutoreleasePoolPage::add(v6, this);
  }

  if (!this || !DebugMissingPools)
  {
    if (!this && !DebugPoolAllocation)
    {
      result = 1;
      *(StatusReg + 344) = 1;
      return result;
    }

    goto LABEL_7;
  }

  v8 = *StatusReg;
  ClassName = object_getClassName(this);
  _objc_inform("MISSING POOLS: (%p) Object %p of class %s autoreleased with no pool in place - just leaking - break on objc_autoreleaseNoPool() to debug", v8, this, ClassName);
  gdb_objc_class_changed();
  if (DebugMissingPools == 2)
  {
    _objc_fatal("Missing pools are a fatal error", v10, v11, v12);
  }

  return 0;
}

id objc_getProperty(id self, SEL _cmd, ptrdiff_t offset, BOOL atomic)
{
  if (offset)
  {
    v4 = (self + offset);
    if (atomic)
    {
      v5 = 0;
      v6 = &PropertyLocks[16 * (((v4 >> 4) ^ (v4 >> 9)) & 7)];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(v6, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v5)
      {
        os_unfair_lock_lock_with_options();
      }

      v8 = *v4;
      v9 = *(StatusReg + 24);
      v10 = v9;
      atomic_compare_exchange_strong_explicit(v6, &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        os_unfair_lock_unlock(v6);
      }

      return v8;
    }

    else
    {
      return *v4;
    }
  }

  else
  {

    return object_getClass(self);
  }
}

unint64_t getMethodFromListArray<method_list_t **>(unint64_t a1, char *a2, const char *a3, char *a4)
{
  v5 = *a1;
  if (*a1 > -1 || (a1 & 0x8000000000000000) != 0)
  {
    v7 = 24;
  }

  else
  {
    v7 = 12;
  }

  v8 = v5 & 0xFFFC;
  if ((~*a1 & 3) == 0 && v8 == v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v18 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      v19 = *(a1 + 4);
      if (v19 >= 5)
      {
        v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
        do
        {
          result = v12 + v7 * (v19 >> 1);
          v20 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          if (v20 == a2)
          {
            if (result > v18)
            {
              v37 = v12 + v7 * ((v19 >> 1) - 1);
              do
              {
                if (*(v37 & 0xFFFFFFFFFFFFFFFCLL) != a2)
                {
                  break;
                }

                result -= v7;
                v37 -= v7;
              }

              while (result > v18);
            }

            return result;
          }

          if (v20 < a2)
          {
            v12 = result + v7;
          }

          v21 = v19 - (v20 < a2);
          v19 = v21 >> 1;
        }

        while (v21 > 9);
        if (v19)
        {
          goto LABEL_31;
        }

        return 0;
      }

      v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      if (v19)
      {
LABEL_31:
        v22 = v19 - 1;
        v23 = v12;
        while (1)
        {
          v24 = v22;
          v25 = *(v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25 == a2)
          {
            break;
          }

          result = 0;
          if (v25 <= a2)
          {
            v12 += v7;
            --v22;
            v23 += v7;
            if (v24)
            {
              continue;
            }
          }

          return result;
        }

        return v12;
      }
    }

    else
    {
      if (v5 < 0)
      {
        if (dataSegmentsRanges > a1 || *algn_1ED3F62F8 <= a1)
        {
          v38 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v39 = *(a1 + 4);
          if (v39 >= 5)
          {
            v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
            while (1)
            {
              result = v12 + v7 * (v39 >> 1);
              v40 = *((result & 0xFFFFFFFFFFFFFFFCLL) + *(result & 0xFFFFFFFFFFFFFFFCLL));
              v41 = v40 >= a2;
              if (v40 == a2)
              {
                break;
              }

              v42 = v40 < a2;
              if (!v41)
              {
                v12 = result + v7;
              }

              v43 = v39 - v42;
              v39 = v43 >> 1;
              if (v43 <= 9)
              {
                goto LABEL_74;
              }
            }

            if (result > v38)
            {
              v49 = v12 + v7 * ((v39 >> 1) - 1);
              do
              {
                if (*((v49 & 0xFFFFFFFFFFFFFFFCLL) + *(v49 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
                {
                  break;
                }

                result -= v7;
                v49 -= v7;
              }

              while (result > v38);
            }

            return result;
          }

          v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_74:
          if (!v39)
          {
            return 0;
          }

          v45 = v39 - 1;
          v46 = v12;
          while (1)
          {
            v47 = *((v46 & 0xFFFFFFFFFFFFFFFCLL) + *(v46 & 0xFFFFFFFFFFFFFFFCLL));
            if (v47 == a2)
            {
              break;
            }

            result = 0;
            v12 += v7;
            v48 = v47 > a2 || v45-- == 0;
            v46 += v7;
            if (v48)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if (dataSegmentsRanges > a2 || *algn_1ED3F62F8 <= a2)
          {
            return result;
          }

          v26 = a2 - byte_1FA920D78;
          v27 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v28 = *(a1 + 4);
          if (v28 >= 5)
          {
            v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
            while (1)
            {
              result = v12 + v7 * (v28 >> 1);
              v29 = *(result & 0xFFFFFFFFFFFFFFFCLL);
              v30 = v26 > v29;
              if (v26 == v29)
              {
                break;
              }

              v31 = v26 > v29;
              if (v30)
              {
                v12 = result + v7;
              }

              v32 = v28 - v31;
              v28 = v32 >> 1;
              if (v32 <= 9)
              {
                goto LABEL_89;
              }
            }

            if (result > v27)
            {
              v54 = v12 + v7 * ((v28 >> 1) - 1);
              do
              {
                if (v26 != *(v54 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  break;
                }

                result -= v7;
                v54 -= v7;
              }

              while (result > v27);
            }

            return result;
          }

          v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_89:
          if (!v28)
          {
            return 0;
          }

          v50 = v28 - 1;
          v51 = v12;
          while (1)
          {
            v52 = *(v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26 == v52)
            {
              break;
            }

            result = 0;
            v12 += v7;
            v53 = v26 < v52 || v50-- == 0;
            v51 += v7;
            if (v53)
            {
              return result;
            }
          }
        }

        return v12;
      }

      v10 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = *(a1 + 4);
      if (v11 >= 5)
      {
        v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          result = v12 + 24 * (v11 >> 1);
          v14 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          v15 = v14 >= a2;
          if (v14 == a2)
          {
            if (result > v10)
            {
              v44 = v12 + 24 * (v11 >> 1) - 24;
              do
              {
                if (*(v44 & 0xFFFFFFFFFFFFFFFCLL) != a2)
                {
                  break;
                }

                result -= 24;
                v44 -= 24;
              }

              while (result > v10);
            }

            return result;
          }

          v16 = v14 < a2;
          if (!v15)
          {
            v12 = result + 24;
          }

          v17 = v11 - v16;
          v11 = v17 >> 1;
        }

        while (v17 > 9);
        if (v11)
        {
          goto LABEL_48;
        }

        return 0;
      }

      v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v11)
      {
LABEL_48:
        v33 = v11 - 1;
        v34 = v12;
        while (1)
        {
          v35 = *(v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35 == a2)
          {
            break;
          }

          v12 += v7;
          v36 = v35 > a2 || v33-- == 0;
          v34 += v7;
          if (v36)
          {
            return 0;
          }
        }

        return v12;
      }
    }

    return 0;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v55 = *(a1 + 4);
    v60 = v55 * (v5 & 0xFFFC);
    if ((v60 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_138;
    }

    v61 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v62 = (a1 + 8 + v60) & 0xFFFFFFFFFFFFFFFCLL;
    if (v61 != v62)
    {
      v63 = v8;
      v64 = v62 | 2;
      v65 = v61 | 2;
      v59 = v61 | 2;
      while (*(v65 & 0xFFFFFFFFFFFFFFFCLL) != a2)
      {
        result = 0;
        v59 += v63;
        v65 += v63;
        if (v59 == v64)
        {
          return result;
        }
      }

      return v59;
    }

    return 0;
  }

  if ((v5 & 0x80000000) == 0)
  {
    v55 = *(a1 + 4);
    v56 = v55 * (v5 & 0xFFFC);
    if ((v56 & 0xFFFFFFFF00000000) == 0)
    {
      v57 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v58 = (a1 + 8 + v56) & 0xFFFFFFFFFFFFFFFCLL;
      if (v57 != v58)
      {
        v59 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        while (*(v57 & 0xFFFFFFFFFFFFFFFCLL) != a2)
        {
          result = 0;
          v59 += v8;
          v57 += v8;
          if (v59 == v58)
          {
            return result;
          }
        }

        return v59;
      }

      return 0;
    }

LABEL_138:
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v55, a1, v8);
  }

  if (dataSegmentsRanges > a1 || *algn_1ED3F62F8 <= a1)
  {
    v55 = *(a1 + 4);
    v73 = v55 * (v5 & 0xFFFC);
    if ((v73 & 0xFFFFFFFF00000000) == 0)
    {
      v74 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v75 = (a1 + 8 + v73) & 0xFFFFFFFFFFFFFFFCLL;
      if (v74 != v75)
      {
        v76 = v8;
        v77 = v75 | 1;
        v78 = v74 | 1;
        v59 = v74 | 1;
        while (*((v78 & 0xFFFFFFFFFFFFFFFCLL) + *(v78 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
        {
          result = 0;
          v59 += v76;
          v78 += v76;
          if (v59 == v77)
          {
            return result;
          }
        }

        return v59;
      }

      return 0;
    }

    goto LABEL_138;
  }

  result = 0;
  if (dataSegmentsRanges <= a2 && *algn_1ED3F62F8 > a2)
  {
    v55 = *(a1 + 4);
    v66 = v55 * (v5 & 0xFFFC);
    if ((v66 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_138;
    }

    v67 = a1 + 8;
    v68 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v69 = (v67 + v66) & 0xFFFFFFFFFFFFFFFCLL;
    if (v68 != v69)
    {
      v70 = v69 | 1;
      v71 = v68 | 1;
      v72 = v71;
      while (&byte_1FA920D78[*(v71 & 0xFFFFFFFFFFFFFFFCLL)] != a2)
      {
        result = 0;
        v72 += v8;
        v71 += v8;
        if (v72 == v70)
        {
          return result;
        }
      }

      return v72;
    }

    return 0;
  }

  return result;
}

void cache_t::insert(uint64_t this, objc_selector *a2, void (*a3)(void), objc_object *a4)
{
  v8 = *(*(this + 16) & 0xF00007FFFFFFFF8);
  if ((v8 & 1) == 0)
  {
    v8 = *(*((*(this - 16) & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v8 & 0x20000000) != 0)
  {
    if ((*this & 1) != 0 || (*this != &_objc_empty_cache ? (v9 = HIWORD(*this) == 0) : (v9 = 0), v9))
    {
      v18 = objc_class::nameForLogging((this - 16));
      _objc_fatal("cache_t::insert() called with a preoptimized cache for %s", v19, v20, v21, v18);
    }

    v10 = *(this + 12);
    if (HIWORD(*this))
    {
      LODWORD(v11) = HIWORD(*this) + 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (cache_t::isConstantEmptyCache(this))
    {
      if (v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = 2;
      }

      atomic_store(cache_t::allocateBuckets(v11) | ((v11 - 1) << 48), this);
      *(this + 12) = 0;
    }

    else if (v10 >= (7 * v11) >> 3 && (v11 > 8 || v11 <= v10))
    {
      v15 = 2 * v11;
      if ((2 * v11) >= 0x10000)
      {
        v15 = 0x10000;
      }

      if (v11)
      {
        v16 = v15;
      }

      else
      {
        v16 = 2;
      }

      v17 = *this;
      atomic_store(cache_t::allocateBuckets(v16) | ((v16 - 1) << 48), this);
      *(this + 12) = 0;
      cache_t::collect_free(v17 & 0xFFFFFFFFFFFLL, v11);
      LODWORD(v11) = v16;
    }

    v12 = (v11 - 1) & ((a2 >> 7) ^ a2);
    while (1)
    {
      v13 = ((*this & 0xFFFFFFFFFFFLL) + 16 * v12);
      if (!v13[1])
      {
        break;
      }

      if (*((*this & 0xFFFFFFFFFFFLL) + 16 * v12 + 8) == a2)
      {
        return;
      }

      if (v12)
      {
        --v12;
      }

      else
      {
        v12 = v11 - 1;
      }

      if (v12 == ((v11 - 1) & ((a2 >> 7) ^ a2)))
      {
        cache_t::bad_cache(this, a4, a2);
      }
    }

    ++*(this + 12);
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    *v13 = v14;
    v13[1] = a2;
  }
}

BOOL cache_t::isConstantEmptyCache(cache_t *this)
{
  if (*(this + 6))
  {
    return 0;
  }

  if (HIWORD(*this) && (v2 = HIWORD(*this), v2 > 0x400))
  {
    v4 = __clz(v2 + 1) ^ 0x1F;
    if (v4 >= cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsListCount)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsList + 8 * v4);
    }
  }

  else
  {
    v3 = &_objc_empty_cache & 0xFFFFFFFFFFFLL;
  }

  return v3 == (*this & 0xFFFFFFFFFFFLL);
}

void objc_setProperty_atomic(id self, SEL _cmd, id newValue, ptrdiff_t offset)
{
  if (offset)
  {
    v4 = (self + offset);
    if (*(self + offset) != newValue)
    {
      v5 = newValue;
      v6 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v4 >> 4) ^ (v4 >> 9)) & 7)], &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v6)
      {
        os_unfair_lock_lock_with_options();
      }

      v8 = *v4;
      *v4 = v5;
      v9 = *(StatusReg + 24);
      v10 = v9;
      atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v4 >> 4) ^ (v4 >> 9)) & 7)], &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        os_unfair_lock_unlock(&PropertyLocks[16 * (((v4 >> 4) ^ (v4 >> 9)) & 7)]);
      }
    }
  }

  else
  {

    object_setClass(self, newValue);
  }
}

void objc_setProperty_nonatomic(id self, SEL _cmd, id newValue, ptrdiff_t offset)
{
  if (offset)
  {
    if (*(self + offset) != newValue)
    {
      v6 = newValue;
      v7 = *(self + offset);
      *(self + offset) = v6;
    }
  }

  else
  {

    object_setClass(self, newValue);
  }
}

char *objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::find(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  if (objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::LookupBucketFor<void const*>(a1, a2, &v4))
  {
    return v4;
  }

  else
  {
    return (*a1 + 24 * *(a1 + 16));
  }
}

void grow_refs_and_insert(void *a1, unint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = 2 * v5;
  }

  else
  {
    v6 = 8;
  }

  v7 = a1[1];
  v8 = a1[2];
  a1[3] = v6 - 1;
  v9 = malloc_type_calloc(v6, 8uLL, 0x80040B8603338uLL);
  v10 = a1[2] & 3;
  a1[1] = v9;
  a1[2] = v10;
  a1[4] = 0;
  if (v5)
  {
    v11 = v8 >= 4;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 >> 2;
    v13 = 1;
    v14 = v7;
    do
    {
      if (*v14)
      {
        append_referrer(a1, -*v14);
        --v12;
      }

      if (v13 >= v5)
      {
        break;
      }

      ++v13;
      ++v14;
    }

    while (v12);
    append_referrer(a1, a2);
  }

  else
  {
    append_referrer(a1, a2);
    if (!v7)
    {
      return;
    }
  }

  free(v7);
}

id objc_getAssociatedObject(id object, const void *key)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::find(-object);
  v7 = v6;
  if (objc::AssociationsManager::_mapStorage + 32 * dword_1ED3F5F58 == v6 || (v8 = objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::find(v6 + 8, key), (*(v7 + 8) + 24 * *(v7 + 24)) == v8))
  {
    v9 = 0;
    LOWORD(v10) = 0;
  }

  else
  {
    v10 = *(v8 + 1);
    v9 = *(v8 + 2);
    if (v9 && (v10 & 0x100) != 0)
    {
      v11 = v9;
    }
  }

  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  if (!v9 || (v10 & 0x200) == 0)
  {
    return v9;
  }

  return v9;
}

void sub_18009C250(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::LookupBucketFor<void const*>(char **a1, unint64_t a2, char **a3)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (v4 - 1) & (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (1217387093 * (a2 ^ (a2 >> 4))));
    v7 = &v3[3 * v6];
    v8 = *v7;
    if (*v7 == a2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (v8 != -1)
      {
        if (v12 > v4)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v3, *(a1 + 4));
        }

        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = v8 == -2;
        }

        if (v13)
        {
          v11 = v7;
        }

        v14 = v6 + v12++;
        v6 = v14 & v5;
        v7 = &v3[3 * (v14 & v5)];
        v8 = *v7;
        v9 = 1;
        if (*v7 == a2)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      if (v11)
      {
        v7 = v11;
      }
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

LABEL_5:
  *a3 = v7;
  return v9;
}

void append_referrer(void *a1, uint64_t a2, const char *a3, char *a4)
{
  if ((a1[2] & 3) == 2)
  {
    v6 = a1[3];
    v7 = a1[2] >> 2;
  }

  else
  {
    v8 = 0;
    v9 = a1 + 1;
    do
    {
      if (!v9[v8])
      {
        v9[v8] = -a2;
        return;
      }

      ++v8;
    }

    while (v8 != 4);
    v10 = malloc_type_calloc(4uLL, 8uLL, 0x80040B8603338uLL);
    for (i = 0; i != 4; ++i)
    {
      *&v10[i * 8] = v9[i];
    }

    a1[1] = v10;
    *(a1 + 1) = xmmword_1800DA170;
    a1[4] = 0;
    v7 = 4;
    v6 = 3;
  }

  if (v7 >= (3 * v6 + 3) >> 2)
  {

    grow_refs_and_insert(a1, a2);
  }

  else
  {
    v12 = 0;
    v13 = (bswap64(0x8A970BE7488FDA55 * (a2 ^ (a2 >> 4))) ^ (1217387093 * (a2 ^ (a2 >> 4)))) & v6;
    v14 = a1[1];
    v15 = v13;
    while (*(v14 + 8 * v15))
    {
      ++v12;
      v15 = (v15 + 1) & v6;
      if (v15 == v13)
      {
        _objc_fatal("bad weak table at %p. This may be a runtime bug or a memory error somewhere else.", a2, a3, a4, a1);
      }
    }

    if (v12 > a1[4])
    {
      a1[4] = v12;
    }

    *(v14 + 8 * v15) = -a2;
    a1[2] += 4;
  }
}

Class object_setClass(Class result, Class a2)
{
  if (result)
  {
    v5 = result;
    if ((*a2 - 1) < 0xF || (*((*(a2 + 4) & 0xF00007FFFFFFFF8) + 3) & 0x40) == 0)
    {
      v6 = *(*(a2 + 4) & 0xF00007FFFFFFFF8);
      if ((v6 & 1) == 0)
      {
        v6 = *(*((*a2 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
      }

      if ((v6 & 0x20000000) == 0)
      {
        lookUpImpOrNilTryCache(0, "initialize", a2, 1);
      }
    }

    return objc_object::changeIsa(v5, a2, v2, v3);
  }

  return result;
}

objc_object *objc_opt_respondsToSelector(objc_object *result, objc_selector *a2)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v2 = objc_debug_taggedpointer_classes[result & 7];
      if (v2 == __NSUnrecognizedTaggedPointer)
      {
        v2 = objc_debug_taggedpointer_ext_classes[(result >> 55)];
      }
    }

    else
    {
      v2 = result->isa & 0x7FFFFFFFFFFFF8;
    }

    if (*(v2 + 30) < 0)
    {
      return class_respondsToSelector_inst(result, a2, v2);
    }

    else
    {
      return [(objc_object *)result respondsToSelector:a2];
    }
  }

  return result;
}

BOOL class_respondsToSelector_inst(objc_object *a1, objc_selector *a2, objc_class *a3)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = *(*(a3 + 4) & 0xF00007FFFFFFFF8);
    if ((v7 & 1) == 0)
    {
      v7 = *(*((*a3 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v7 & 0x20000000) != 0 && ((Imp = cache_getImp(a3, a2, 0)) != 0 || (*(a3 + 2) & 1) != 0 && (Imp = cache_getImp(a3 + *((*(a3 + 2) & 0x7FFFFFFFFFFFFELL) - 16), a2, 0)) != 0))
    {
      if (Imp == _objc_msgForward_impcache)
      {
        Imp = 0;
      }
    }

    else
    {
      Imp = lookUpImpOrForward(a1, a2, a3, 6u);
    }

    return Imp != 0;
  }

  return result;
}

BOOL class_isMetaClass(Class cls)
{
  if (cls)
  {
    if ((*cls - 1) >= 0xF && (*(cls + 4) & 0x8000000000000000) != 0)
    {
      LODWORD(cls) = (*(cls + 15) >> 2) & 1;
    }

    else
    {
      LOBYTE(cls) = *class_data_bits_t::safe_ro<(Authentication)0>(cls + 4) & 1;
    }
  }

  return cls;
}

char *objc_class::demangledName(objc_class *this, int a2)
{
  if ((*this - 1) < 0xF || (*(this + 4) & 0x8000000000000000) == 0 && (*((*(this + 4) & 0xF00007FFFFFFFF8) + 3) & 0x40) == 0)
  {
    goto LABEL_12;
  }

  if ((*((*(this + 4) & 0xF00007FFFFFFFF8) + 3) & 0x40) != 0 || (*(this + 15) & 4) == 0 && (*(this + 4) & 2) == 0 && (*(this + 4) & 1) == 0)
  {
    return atomic_load_explicit((class_rw_t::ro((*(this + 4) & 0xF00007FFFFFFFF8)) + 24), memory_order_acquire);
  }

  v5 = *((*(this + 4) & 0xF00007FFFFFFFF8) + 8);
  if ((v5 & 1) == 0 || (v5 & 0xFFFFFFFFFFFFFFFELL) == 0 || (v4 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 32)) == 0)
  {
LABEL_12:
    v4 = objc_class::mangledName(this);
    v6 = copySwiftV1DemangledName(v4, 0);
    v20 = v6;
    if ((*this - 1) >= 0xF && ((*(this + 4) & 0x8000000000000000) != 0 || (*((*(this + 4) & 0xF00007FFFFFFFF8) + 3) & 0x40) != 0))
    {
      if (a2)
      {
        v12 = 0;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        atomic_compare_exchange_strong_explicit(runtimeLock, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
        if (v12)
        {
          os_unfair_lock_lock_with_options();
        }

        v14 = class_rw_t::extAllocIfNeeded((*(this + 4) & 0xF00007FFFFFFFF8));
        v15 = *(StatusReg + 24);
        v16 = v15;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v16, 0, memory_order_release, memory_order_relaxed);
        if (v16 != v15)
        {
          os_unfair_lock_unlock(runtimeLock);
        }
      }

      else
      {
        v14 = class_rw_t::extAllocIfNeeded((*(this + 4) & 0xF00007FFFFFFFF8));
      }

      v17 = 0;
      v18 = v20;
      if (!v20)
      {
        v18 = v4;
      }

      atomic_compare_exchange_strong(v14 + 4, &v17, v18);
      if (v17 && v20)
      {
        free(v20);
      }

      return v14[4];
    }

    else if (v6)
    {
      v7 = 0;
      v8 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(DemangleCacheLock, &v7, *(v8 + 24), memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        os_unfair_lock_lock_with_options();
      }

      v9 = DemangleCache;
      if (!DemangleCache)
      {
        v9 = malloc_type_malloc(0x18uLL, 0x201A97EDuLL);
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
        DemangleCache = v9;
      }

      objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::try_emplace<objc::detail::DenseSetEmpty&>(&v21, v9, &v20);
      v4 = *v21;
      v10 = *(v8 + 24);
      v11 = v10;
      atomic_compare_exchange_strong_explicit(DemangleCacheLock, &v11, 0, memory_order_release, memory_order_relaxed);
      if (v11 != v10)
      {
        os_unfair_lock_unlock(DemangleCacheLock);
      }

      if (v4 != v20)
      {
        free(v20);
      }
    }
  }

  return v4;
}

void sub_18009CB34(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

const char *__cdecl class_getName(Class cls)
{
  if (cls)
  {
    return objc_class::demangledName(cls, 1);
  }

  else
  {
    return "nil";
  }
}

unint64_t class_rw_t::ro(class_rw_t *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v3 = *(v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v3)
    {
      return v3;
    }
  }

  else if (v1)
  {
    return v1 & 0xFFFFFFFFFFFFFFFELL;
  }

  return 0;
}

id objc_unsafeClaimAutoreleasedReturnValue(id a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 352);
  if (v5 != -1)
  {
    v6 = *(StatusReg + 360);
    if (v5 > 3 || v6 != 0)
    {
      *(StatusReg + 352) = 0;
      *(StatusReg + 360) = 0;
      if (v2 - v6 == 8 || *v6 == -1440939011)
      {
        if (v5)
        {
          objc_releaseAndReturn(a1);
        }
      }

      else if (v5)
      {
        moveTLSAutoreleaseToPool(v5, v6, v1);
      }
    }
  }

  return a1;
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::find(uint64_t a1)
{
  v2 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::LookupBucketFor<DisguisedPtr<objc_object>>(a1, &v2))
  {
    return v2;
  }

  else
  {
    return objc::AssociationsManager::_mapStorage + 32 * dword_1ED3F5F58;
  }
}

void _object_remove_associations(uint64_t a1, int a2)
{
  v4 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::find(-a1);
  if ((objc::AssociationsManager::_mapStorage + 32 * dword_1ED3F5F58) == v6)
  {
    goto LABEL_32;
  }

  objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::swap(&v37, v6 + 1);
  if (a2)
  {
LABEL_31:
    objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::erase(v6);
    goto LABEL_32;
  }

  if (v38)
  {
    if (v37)
    {
      v7 = v37;
    }

    else
    {
      v7 = 0;
    }

    v9 = v39;
    v10 = v7 + 24 * v39;
    if (v39)
    {
      v11 = 24 * v39;
      while (*v7 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v7 += 24;
        v11 -= 24;
        if (!v11)
        {
          v7 = v10;
          break;
        }
      }
    }

    if (v37)
    {
      goto LABEL_17;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if (v37)
  {
    v8 = v37;
  }

  else
  {
    v8 = 0;
  }

  v9 = v39;
  v7 = v8 + 24 * v39;
  v10 = v7;
  if (!v37)
  {
    goto LABEL_20;
  }

LABEL_17:
  v12 = v37;
LABEL_21:
  v13 = v12 + 24 * v9;
  if (v7 == v13)
  {
    goto LABEL_31;
  }

  v14 = 0;
  do
  {
    if (*(v7 + 10))
    {
      v35 = 0;
      if ((objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::LookupBucketFor<void const*>(v6 + 1, *v7, &v35) & 1) == 0)
      {
        inserted = objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::InsertIntoBucketImpl<void const*>(v6 + 1, v7, v35);
        *inserted = *v7;
        *(inserted + 8) = *(v7 + 8);
      }

      v14 = 1;
    }

    do
    {
      v7 += 24;
    }

    while (v7 != v10 && *v7 >= 0xFFFFFFFFFFFFFFFELL);
  }

  while (v7 != v13);
  if ((v14 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_32:
  v16 = *(StatusReg + 24);
  v17 = v16;
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != v16)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  LODWORD(v35) = 0;
  ptr[0] = 0;
  if (v38)
  {
    if (v37)
    {
      v18 = v37;
    }

    else
    {
      v18 = 0;
    }

    v20 = v39;
    v21 = &v18[3 * v39];
    if (v39)
    {
      v22 = 24 * v39;
      while (*v18 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v18 += 3;
        v22 -= 24;
        if (!v22)
        {
          v18 = v21;
          break;
        }
      }
    }

    if (v37)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (v37)
    {
      v19 = v37;
    }

    else
    {
      v19 = 0;
    }

    v20 = v39;
    v18 = (v19 + 24 * v39);
    v21 = v18;
    if (v37)
    {
LABEL_46:
      v23 = v37;
      goto LABEL_50;
    }
  }

  v23 = 0;
LABEL_50:
  v24 = (v23 + 24 * v20);
  if (v18 == v24)
  {
    goto LABEL_79;
  }

  v25 = 0;
  v26 = ptr;
  do
  {
    v28 = v18 + 1;
    v27 = v18[1];
    if ((v27 & 0x10000) != 0)
    {
      if (a2)
      {
        if (v25 > 3)
        {
          if (v25 == 4)
          {
            v30 = malloc_type_malloc(0x28uLL, 0x2004093837F09uLL);
            for (i = 0; i != 4; ++i)
            {
              v30[i] = ptr[i];
            }

            v30[4] = v28;
            ptr[0] = v30;
          }

          else
          {
            ptr[0] = malloc_type_realloc(ptr[0], 8 * (v25 + 1), 0x2004093837F09uLL);
            *(ptr[0] + v25) = v28;
          }
        }

        else
        {
          ptr[v25] = v28;
        }

        LODWORD(v35) = ++v25;
      }
    }

    else if (v27)
    {
      v29 = v18[2];
      if (v29)
      {
      }
    }

    do
    {
      v18 += 3;
    }

    while (v18 != v21 && *v18 >= 0xFFFFFFFFFFFFFFFELL);
  }

  while (v18 != v24);
  if (v25 >= 5)
  {
    v26 = ptr[0];
  }

  else if (!v25)
  {
    goto LABEL_79;
  }

  v32 = &v26[v25];
  do
  {
    v33 = *(*v26 + 1);
    if (v33 && (**v26 & 1) != 0)
    {
    }

    ++v26;
  }

  while (v26 != v32);
  if (v35 >= 5)
  {
    free(ptr[0]);
  }

LABEL_79:
  if (v37)
  {
    v34 = v37;
  }

  else
  {
    v34 = 0;
  }

  free(v34);
}

void sub_18009D428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *(v15 + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(v14, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  if (a14)
  {
    v19 = a14;
  }

  else
  {
    v19 = 0;
  }

  free(v19);
  _Unwind_Resume(a1);
}

void *__cdecl objc_destructInstance(id obj)
{
  if (obj)
  {
    objc_class::realizeIfNeeded((*obj & 0xFFFFFFFF8));
    objc_destructInstance_nonnull_realized(obj, v2, v3, v4);
  }

  return obj;
}

id objc_loadWeak(id *location)
{
  if (!*location)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(location);

  return WeakRetained;
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::LookupBucketFor<DisguisedPtr<objc_object>>(uint64_t a1, void *a2)
{
  if (dword_1ED3F5F58)
  {
    v2 = 0x8A970BE7488FDA55 * (-a1 ^ (-a1 >> 4));
    v3 = (dword_1ED3F5F58 - 1) & (bswap64(v2) ^ v2);
    v4 = (objc::AssociationsManager::_mapStorage + 32 * v3);
    v5 = *v4;
    if (*v4 == a1)
    {
      v6 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v5 != 1)
      {
        if (v9 > dword_1ED3F5F58)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::FatalCorruptHashTables(objc::AssociationsManager::_mapStorage, dword_1ED3F5F58);
        }

        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v5 == 2;
        }

        if (v10)
        {
          v8 = v4;
        }

        v11 = v3 + v9++;
        v3 = v11 & (dword_1ED3F5F58 - 1);
        v4 = (objc::AssociationsManager::_mapStorage + 32 * v3);
        v5 = *v4;
        v6 = 1;
        if (*v4 == a1)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      if (v8)
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_5:
  *a2 = v4;
  return v6;
}

objc_object *objc_object::rootAutorelease2(objc_object *this, uint64_t a2, AutoreleasePoolPage *a3)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 344);
  if (v4 >= 2)
  {
    if (LODWORD(v4->isa) != -1583242847)
    {
      AutoreleasePoolPage::busted_die(&v4->isa);
    }

    if (v4[2].isa == &v4[512])
    {
      AutoreleasePoolPage::autoreleaseFullPage(this, v4, a3);
    }

    else
    {
      AutoreleasePoolPage::add(v4, this);
    }
  }

  else
  {
    AutoreleasePoolPage::autoreleaseNoPage(this, v4);
  }

  return this;
}

char *objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::find(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  {
    return v4;
  }

  else
  {
    return (*a1 + 16 * *(a1 + 16));
  }
}

void objc_object::sidetable_clearDeallocating(objc_object *this)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v3, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v8 = v5;
  if ((*(v3 + 1) + 16 * v3[6]) != v5)
  {
    if (v5[8])
    {
      weak_clear_no_lock(v3 + 4, this, v6, v7);
    }

    *v8 = 2;
    *(v3 + 2) = vadd_s32(*(v3 + 4), 0x1FFFFFFFFLL);
  }

  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(v3, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {

    os_unfair_lock_unlock(v3);
  }
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::LookupBucketFor<DisguisedPtr<objc_object const>>(char **a1, uint64_t a2, char **a3)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = 0x8A970BE7488FDA55 * (-a2 ^ (-a2 >> 4));
    v6 = v4 - 1;
    v7 = (v4 - 1) & (bswap64(v5) ^ v5);
    v8 = &v3[2 * v7];
    v9 = *v8;
    if (*v8 == a2)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != 1)
      {
        if (v13 > v4)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v3, *(a1 + 4));
        }

        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == 2;
        }

        if (v14)
        {
          v12 = v8;
        }

        if (!(*(v8 + 1) | v12))
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = &v3[2 * (v15 & v6)];
        v9 = *v8;
        v10 = 1;
        if (*v8 == a2)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a3 = v8;
  return v10;
}

void objc_setProperty_nonatomic_copy(id self, SEL _cmd, id newValue, ptrdiff_t offset)
{
  if (offset)
  {
    v6 = [newValue copyWithZone:0];
    v7 = *(self + offset);
    *(self + offset) = v6;
  }

  else
  {

    object_setClass(self, newValue);
  }
}

void weak_entry_remove(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 3) == 2)
  {
    free(*(a2 + 8));
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = *(a1 + 16);
  v5 = *(a1 + 8) - 1;
  *(a1 + 8) = v5;
  if (v4)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 0x400 && v6 >> 4 >= v5)
  {

    weak_resize(a1, v6 >> 3);
  }
}

void weak_clear_no_lock(void *a1, const void *a2, const char *a3, char *a4)
{
  v6 = weak_entry_for_referent(a1, a2, a3, a4);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ((v6[2] & 3) != 2)
  {
    v9 = v6 + 1;
    v8 = 4;
    while (1)
    {
LABEL_7:
      if (*v9)
      {
        v10 = -*v9;
        v11 = *v10;
        if (*v10 == a2)
        {
          *v10 = 0;
        }

        else if (v11)
        {
          v12 = _objc_fault_and_log;
          if (DebugWeakErrors == 2)
          {
            v13 = "";
          }

          else
          {
            v13 = " Break on objc_weak_error to debug.";
          }

          if (DebugWeakErrors > 2)
          {
            if (DebugWeakErrors == 3)
            {
              goto LABEL_22;
            }

            if (DebugWeakErrors != 4)
            {
              goto LABEL_21;
            }

            _objc_stochastic_fault("__weak variable at %p holds %p instead of %p. This is probably incorrect use of objc_storeWeak() and objc_loadWeak().%s", v10, v11, a2, v13);
          }

          else if (DebugWeakErrors)
          {
            if (DebugWeakErrors == 2)
            {
              (_objc_fatal)("__weak variable at %p holds %p instead of %p. This is probably incorrect use of objc_storeWeak() and objc_loadWeak().%s", v10, v11, a2, v13);
            }

LABEL_21:
            v12 = _objc_inform;
LABEL_22:
            v12("__weak variable at %p holds %p instead of %p. This is probably incorrect use of objc_storeWeak() and objc_loadWeak().%s", v10, v11, a2, v13);
          }

          gdb_objc_class_changed();
        }
      }

      ++v9;
      if (!--v8)
      {
        goto LABEL_25;
      }
    }
  }

  v8 = v6[3] + 1;
  if (v8 >= 2)
  {
    v9 = v6[1];
    goto LABEL_7;
  }

LABEL_25:

  weak_entry_remove(a1, v7);
}

Class object_getClass(id a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    return (*a1 & 0x7FFFFFFFFFFFF8);
  }

  v1 = objc_debug_taggedpointer_classes[a1 & 7];
  if (v1 && v1 == __NSUnrecognizedTaggedPointer)
  {
    return objc_debug_taggedpointer_ext_classes[(a1 >> 55)];
  }

  return v1;
}

id objc_opt_new(void (*a1)(void))
{
  if (a1 && (v2 = *((*a1 & 0xFFFFFFFF8) + 0x1E), v2 < 0))
  {
    if ((v2 & 0x4000) != 0)
    {
      a1 = _objc_rootAllocWithZone(a1);
    }

    else
    {
      a1 = [a1 alloc];
    }

    v3 = "init";
  }

  else
  {
    v3 = &sel_new;
  }

  return [a1 v3];
}

uint64_t objc_object::changeIsa(objc_object *this, unint64_t a2, const char *a3, char *a4)
{
  v6 = 0;
  v7 = 0;
  isa = this->isa;
  v9 = a2 & 0xFF80000000000007;
  if (this->isa)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_3:
    if (((*a2 - 1) < 0xF || (*((*(a2 + 32) & 0xF00007FFFFFFFF8) + 3) & 0x40) == 0) && (*(a2 + 30) & 0x2000) == 0)
    {
      if (!v9)
      {
        v10 = isa & 0xFF80000000000007;
        if (!isa)
        {
          v10 = 0x100000000000001;
        }

        v6 = a2 & 0x7FFFFFFFFFFFF8 | v10;
        goto LABEL_13;
      }

LABEL_31:
      _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", a2, a3, a4, a2);
    }

    if (isa)
    {
      break;
    }

    while (1)
    {
      if (v9)
      {
        goto LABEL_31;
      }

      v6 = v6 & 0xFF80000000000007 | (8 * ((a2 >> 3) & 0xFFFFFFFFFFFFFLL));
LABEL_13:
      v11 = isa;
      atomic_compare_exchange_strong_explicit(this, &v11, v6, memory_order_relaxed, memory_order_relaxed);
      if (v11 == isa)
      {
        if ((v7 & 1) == 0)
        {
          return isa & 0xFFFFFFFF8;
        }

        v12 = ((this >> 4) ^ (this >> 9)) & 7;
        goto LABEL_28;
      }

LABEL_14:
      isa = v11;
      if (!v11)
      {
        break;
      }

LABEL_2:
      if (isa)
      {
        goto LABEL_3;
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    objc_object::sidetable_lock(this);
  }

  if (v9)
  {
    goto LABEL_31;
  }

  v6 = v6 & 0xFF80000000000007 | (8 * ((a2 >> 3) & 0xFFFFFFFFFFFFFLL));
  v11 = isa;
  atomic_compare_exchange_strong_explicit(this, &v11, v6, memory_order_relaxed, memory_order_relaxed);
  if (v11 != isa)
  {
    v7 = 1;
    goto LABEL_14;
  }

  v12 = ((this >> 4) ^ (this >> 9)) & 7;
  v19 = -this;
  v14 = ((isa >> 54) & 0x3FC) - 4;
  v15 = *v13 + v14;
  if (__CFADD__(*v13, v14))
  {
    v15 = 0x8000000000000000;
  }

  if (!(isa >> 55))
  {
    v15 |= 2uLL;
  }

  *v13 = v15 | (isa >> 2) & 1;
LABEL_28:
  v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v17 = v16;
  if (v17 != v16)
  {
  }

  return isa & 0xFFFFFFFF8;
}

void objc_destroyWeak(id *location)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v4 = 0;
    v5 = *location;
    atomic_compare_exchange_strong_explicit(v6, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    if (*location == v5)
    {
      break;
    }

    v7 = *(StatusReg + 24);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(v6, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 != v7)
    {
      os_unfair_lock_unlock(v6);
    }
  }

  weak_unregister_no_lock(v6 + 4, v5, location, v1);
  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(v6, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {

    os_unfair_lock_unlock(v6);
  }
}

void objc_object::clearDeallocating_slow(objc_object *this, uint64_t a2, const char *a3, char *a4)
{
  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(v6, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  isa = this->isa;
  if ((this->isa & 4) != 0)
  {
    weak_clear_no_lock(v6 + 4, this, a3, a4);
    isa = this->isa;
  }

  if ((isa & 0x80000000000000) != 0)
  {
    v11 = 0;
    {
      *v11 = 2;
      *(v6 + 2) = vadd_s32(*(v6 + 4), 0x1FFFFFFFFLL);
    }
  }

  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(v6, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {

    os_unfair_lock_unlock(v6);
  }
}

void (*object_cxxDestructFromClass(void (*result)(void), objc_class *a2))(void)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    while ((*(v2 + 15) & 1) != 0)
    {
      result = lookupMethodInClassAndLoadCache(v2, SEL_cxx_destruct);
      if (result != _objc_msgForward_impcache)
      {
        v4 = result;
        if (PrintCxxCtors)
        {
          v5 = objc_class::nameForLogging(v2);
          _objc_inform("CXX: calling C++ destructors for class %s", v5);
        }

        result = (v4)(v3);
      }

      if (!*(v2 + 1))
      {
        break;
      }

      v2 = *(v2 + 1);
    }
  }

  return result;
}

IMP method_getImplementation(Method m)
{
  if (m)
  {
    return method_t::imp(m, 1);
  }

  else
  {
    return 0;
  }
}

uint64_t list_array_tt<unsigned long,protocol_list_t,RawPtr>::begin(uint64_t a1, unint64_t *a2, uint64_t a3, char *a4)
{
  v33 = a2;
  v4 = *a2;
  v5 = v31;
  if (!*a2)
  {
    v9 = 0;
    v34[0] = 0;
    v30 = a2;
LABEL_24:
    *v5 = v9;
    return list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(a1, &v33, &v30);
  }

  v6 = *a2 & 3;
  if ((v4 & 3) == 0)
  {
    v10 = *a2;
LABEL_8:
    v34[0] = v10;
    goto LABEL_9;
  }

  if (v4 < 4)
  {
    v7 = 0;
    v8 = v34;
LABEL_5:
    *v8 = v7;
    goto LABEL_9;
  }

  if (v6 == 2)
  {
    v18 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      if (DisablePreattachedCategories)
      {
        v21 = *v18;
        v24 = v18[1];
        v25 = v24 * v21;
        if ((v25 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v24, v4 & 0xFFFFFFFFFFFFFFFCLL, v21);
        }

        v26 = v21 | (v24 << 32);
        v27 = v18 + v25 + 8;
        a4 = (v27 - v21);
        v28 = v21 | ((v24 - 1) << 32);
        v29 = v24 == 0;
        if (v24)
        {
          v20 = v24;
        }

        else
        {
          v20 = 0;
        }

        if (v24)
        {
          v7 = (v27 - v21);
        }

        else
        {
          v7 = v27;
        }

        if (v29)
        {
          v19 = v26;
        }

        else
        {
          v19 = v28;
        }
      }

      else
      {
        v7 = (v18 + 2);
        v19 = *v18;
        v20 = v18[1];
        v21 = v19;
      }

      a3 = v20 * v21;
      if ((a3 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v20, v4 & 0xFFFFFFFFFFFFFFFCLL, v21);
      }

      v8 = &v35;
      v22 = HIDWORD(v19);
      v23 = v18 + a3 + 8;
      if (v7 < v23)
      {
        a3 = objc_debug_headerInfoRWs + 8;
        do
        {
          a4 = *(a3 + 8 * *v7);
          if (a4)
          {
            break;
          }

          v7 = (v7 + v19);
          v22 = (v22 + 1);
        }

        while (v7 < v23);
      }

      v34[0] = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v34[1] = v19 | (v22 << 32);
      goto LABEL_5;
    }
  }

  else
  {
    v15 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    if (v6 == 1 && v15 != 0)
    {
      v10 = v15 + 8;
      goto LABEL_8;
    }
  }

LABEL_9:
  v30 = a2;
  if ((v4 & 3) > 1)
  {
    if (v6 == 2)
    {
      v11 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v13 = *v11;
        v12 = v11[1];
        v14 = v12 * v13;
        if ((v14 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v12, v4 & 0xFFFFFFFFFFFFFFFCLL, v13);
        }

        v5 = &v32;
        v9 = v11 + v14 + 8;
        v31[0] = v4 & 0xFFFFFFFFFFFFFFFCLL;
        v31[1] = v13 | (v12 << 32);
        goto LABEL_24;
      }
    }
  }

  else
  {
    if ((v4 & 3) == 0)
    {
      v9 = 0;
      goto LABEL_24;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      v9 = (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8 * *(v4 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      goto LABEL_24;
    }
  }

  return list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(a1, &v33, &v30);
}

BOOL list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator==(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*v2 && (*v2 & 3uLL) > 1)
  {
    if ((*v2 & 3) != 2)
    {
      return 0;
    }

    v3 = *(a1 + 24);
    v4 = a2[3];
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 == *(a1 + 32))
  {
    if (!*v2 || (*v2 & 3uLL) <= 1)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 40);
      goto LABEL_10;
    }

    if ((*v2 & 3) == 2)
    {
      v5 = *(a1 + 24);
      v6 = *(a1 + 56);
LABEL_10:
      if (v5 == v6)
      {
        return 1;
      }
    }
  }

  return *(a1 + 64) == a2[8];
}

char *objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::operator[](int32x2_t *a1, uint64_t *a2)
{
  v7 = 0;
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    *inserted = *a2;
    *(inserted + 1) = 0;
  }

  return inserted + 8;
}

uint64_t objc_object::sidetable_isDeallocating(objc_object *this)
{
  if ((*(v1 + 1) + 16 * v1[6]) == v2)
  {
    return 0;
  }

  else
  {
    return (v2[8] >> 1) & 1;
  }
}

uint64_t _class_conformsToProtocol_unrealized_nolock(uint64_t a1, Protocol *a2)
{
  v37[0] = 0;
  if ((*a1 - 1) >= 0xF && (*(a1 + 32) & 0x8000000000000000) != 0)
  {
    class_rw_t::protocols(v35, *(a1 + 32) & 0xF00007FFFFFFFF8);
    v37[0] = v35[0];
    goto LABEL_13;
  }

  v6 = *(class_data_bits_t::safe_ro<(Authentication)0>((a1 + 32)) + 40);
  v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
  if ((v6 & 1) == 0 && v7)
  {
    goto LABEL_11;
  }

  v8 = v6 & 1;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v7 |= 2uLL;
LABEL_11:
    v10 = v7;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:
  v37[0] = v10;
LABEL_13:
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::begin(v35, v37, v4, v5);
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::end(v34, v37, v11, v12);
  while (!list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator==(v35, v34))
  {
    v13 = *v36;
    if (canonical_protocol)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x20000000;
    }

    if ((v14 & *(*v36 + 68)) == 0)
    {
      Protocol = getProtocol(*(v13 + 8));
      if (Protocol)
      {
        v13 = Protocol;
      }
    }

    if (v13 == a2 || (protocol_conformsToProtocol_nolock(v13, a2) & 1) != 0)
    {
      return 1;
    }

    list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator++(v35, v16, v17, v18);
  }

  if ((*a1 - 1) >= 0xF)
  {
    if ((*(a1 + 32) & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v33 = *(*(a1 + 32) & 0xF00007FFFFFFFF8) & 1;
  }

  else
  {
    v33 = 0;
  }

  v19 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::find(-a1);
  if (objc::unattachedCategories + 24 * dword_1ED3F6388 != v19)
  {
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v20 = v19 + 8;
    v23 = (v22 & 1) != 0 ? v21 : v20;
    v24 = (v22 & 1) != 0 ? v22 >> 1 : (v21 != 0);
    if (v24)
    {
      v25 = 0;
      while (1)
      {
        if ((v33 & 1) == 0)
        {
          v26 = *(*(v23 + 16 * v25) + 32);
          if (v26)
          {
            if (*v26)
            {
              break;
            }
          }
        }

LABEL_51:
        result = 0;
        if (++v25 == v24)
        {
          return result;
        }
      }

      v27 = 8 * *v26;
      v28 = v26 + 1;
      while (1)
      {
        v29 = *v28;
        if (canonical_protocol)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0x20000000;
        }

        if ((v30 & *(*v28 + 68)) == 0)
        {
          v31 = getProtocol(*(v29 + 8));
          if (v31)
          {
            v29 = v31;
          }
        }

        if (v29 == a2 || (protocol_conformsToProtocol_nolock(v29, a2) & 1) != 0)
        {
          return 1;
        }

        ++v28;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_51;
        }
      }
    }
  }

  return 0;
}

BOOL class_conformsToProtocol(Class cls, Protocol *protocol)
{
  v2 = 0;
  if (cls && protocol)
  {
    v5 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v5)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v7 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v7) || (*(qword_1ED3F6300 + 16 * v7) <= cls ? (v8 = *(qword_1ED3F6300 + 16 * v7 + 8) > cls) : (v8 = 0), !v8))
    {
      if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v12, v13, v14) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v15, v16, v17, cls);
      }
    }

    v2 = _class_conformsToProtocol_unrealized_nolock(cls, protocol);
    v9 = *(StatusReg + 24);
    v10 = v9;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return v2;
}

void sub_18009EC78(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *class_rw_t::protocols(unint64_t *this, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    *this = 0;
    v6 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 24);
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_13;
  }

  *this = 0;
  v3 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 40);
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((v3 & 1) == 0 && v4)
  {
LABEL_13:
    *this = v4;
    return this;
  }

  if (v4)
  {
    v5 = (*((v2 & 0xFFFFFFFFFFFFFFFELL) + 40) & 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 2;
    goto LABEL_13;
  }

  return this;
}

uint64_t **list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::skipEmptyLists(uint64_t **result)
{
  v1 = *result;
  v2 = result[4];
  v3 = objc_debug_headerInfoRWs + 8;
  v4 = **result;
  while (1)
  {
    if (v1 != v2)
    {
      goto LABEL_7;
    }

    if (v4)
    {
      break;
    }

LABEL_6:
    if (result[1] == result[5])
    {
      return result;
    }

LABEL_7:
    if (!v4)
    {
      v5 = 1;
LABEL_12:
      v6 = result[1];
      goto LABEL_14;
    }

LABEL_8:
    v5 = v4 & 3;
    if ((v4 & 3) != 1)
    {
      if ((v4 & 3) != 0)
      {
        v5 = 0;
        v6 = (result[3] + (*result[3] >> 16));
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v5 = 0;
    v6 = *result[1];
LABEL_14:
    if (*v6)
    {
      return result;
    }

    if (v5)
    {
      v4 = 0;
      result[1] = 0;
    }

    else
    {
      if ((v4 & 3) == 1)
      {
        ++result[1];
        v7 = *v1;
      }

      else
      {
        if ((v4 & 3) == 0)
        {
          result[1] = 0;
        }

        v7 = v4;
      }

      v4 = 0;
      if (v7)
      {
        v4 = v7;
        if ((v7 & 3) == 2)
        {
          v8 = result[3];
          v10 = *(result + 4);
          v9 = *(result + 5);
          v11 = (v8 + v10);
          result[3] = (v8 + v10);
          v12 = result[1];
          v13 = *v12;
          v14 = *(v12 + 1);
          v15 = v14 * v13;
          *(result + 5) = v9 + 1;
          if ((v15 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v9, v13, v15, v14, v12, v13);
          }

          v16 = v12 + v15 + 8;
          v4 = v7;
          if (v11 < v16)
          {
            v17 = v9 + 2;
            v18 = (v8 + 2 * v10);
            do
            {
              if (*(v3 + 8 * *v11))
              {
                break;
              }

              v11 = (v11 + v10);
              result[3] = v18;
              *(result + 5) = v17++;
              v18 = (v18 + v10);
            }

            while (v11 < v16);
            v4 = v7;
          }
        }
      }
    }
  }

  if ((v4 & 3u) <= 1uLL)
  {
    if ((v4 & 3) != 0)
    {
      v19 = result[1];
      v20 = result[5];
      goto LABEL_33;
    }

    goto LABEL_6;
  }

  if ((v4 & 3) != 2)
  {
    goto LABEL_8;
  }

  v19 = result[3];
  v20 = result[7];
LABEL_33:
  if (v19 != v20)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t list_array_tt<unsigned long,protocol_list_t,RawPtr>::end(uint64_t a1, void *a2, const char *a3, char *a4)
{
  v16 = a2;
  v5 = *a2;
  v6 = v17;
  if (!*a2)
  {
LABEL_4:
    v7 = 0;
LABEL_5:
    *v6 = v7;
    goto LABEL_14;
  }

  if ((*a2 & 3uLL) <= 1)
  {
    if ((v5 & 3) != 0)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_14;
      }

      v7 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8 * *(v5 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  if ((*a2 & 3) == 2 && v8 != 0)
  {
    v11 = *v8;
    v10 = v8[1];
    v12 = v10 * v11;
    if ((v12 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v10, v5 & 0xFFFFFFFFFFFFFFFCLL, v11);
    }

    v6 = &v18;
    v7 = v8 + v12 + 8;
    v17[0] = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v17[1] = v11 | (v10 << 32);
    goto LABEL_5;
  }

LABEL_14:
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(v15, &v16);
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(v14, &v16);
  return list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(a1, v15, v14);
}

uint64_t protocol_conformsToProtocol_nolock(protocol_t *a1, const char **a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (strcmp(*(a1 + 1), a2[1]))
    {
      v5 = *(a1 + 2);
      if (!v5 || !*v5)
      {
        return 0;
      }

      v6 = 0;
      while (1)
      {
        v7 = v5[v6 + 1];
        v8 = canonical_protocol ? 0 : 0x20000000;
        if ((v8 & *(v7 + 68)) == 0)
        {
          Protocol = getProtocol(*(v7 + 8));
          if (Protocol)
          {
            v7 = Protocol;
          }
        }

        if (v7 == a2 || !strcmp(a2[1], *(v7 + 8)) || protocol_conformsToProtocol_nolock(v7, a2))
        {
          break;
        }

        ++v6;
        v5 = *(a1 + 2);
        if (v6 >= *v5)
        {
          return 0;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t **list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator++(uint64_t **a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = a1[9];
  v6 = a1[8] + 1;
  a1[8] = v6;
  if (v6 != v5)
  {
    return a1;
  }

  v7 = *a1;
  v8 = **a1;
  if (!v8)
  {
    a1[1] = 0;
    goto LABEL_14;
  }

  if ((**a1 & 3) == 1)
  {
    ++a1[1];
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_14;
    }
  }

  else if ((v8 & 3) == 0)
  {
    a1[1] = 0;
  }

  if ((v8 & 3) == 2)
  {
    v9 = a1[3];
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v12 = (v9 + v10);
    a1[3] = (v9 + v10);
    v13 = a1[1];
    v15 = *v13;
    v14 = *(v13 + 1);
    v16 = v14 * v15;
    *(a1 + 5) = v11 + 1;
    if ((v16 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v14, v13, v15);
    }

    v17 = v13 + v16 + 8;
    if (v12 < v17)
    {
      v18 = objc_debug_headerInfoRWs + 8;
      v19 = v11 + 2;
      v20 = (v9 + 2 * v10);
      do
      {
        if (*(v18 + 8 * *v12))
        {
          break;
        }

        v12 = (v12 + v10);
        a1[3] = v20;
        *(a1 + 5) = v19++;
        v20 = (v20 + v10);
      }

      while (v12 < v17);
    }
  }

LABEL_14:
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::skipEmptyLists(a1);
  v24 = **a1;
  if (*a1 != a1[4])
  {
    goto LABEL_15;
  }

  if (v24)
  {
    if ((**a1 & 3uLL) > 1)
    {
      if ((**a1 & 3) != 2)
      {
        goto LABEL_16;
      }

      v35 = a1[3];
      v36 = a1[7];
    }

    else
    {
      if ((v24 & 3) == 0)
      {
        goto LABEL_22;
      }

      v35 = a1[1];
      v36 = a1[5];
    }

    if (v35 == v36)
    {
      return a1;
    }

    goto LABEL_16;
  }

LABEL_22:
  if (a1[1] == a1[5])
  {
    return a1;
  }

LABEL_15:
  if (!v24)
  {
    v30 = a1[1];
    v31 = *v30;
    a1[8] = v30 + 1;
    a1[9] = &v30[v31 + 1];
    if (v31)
    {
      return a1;
    }

LABEL_46:
    _objc_fatal("Assertion failed: (%s) - empty list %p encountered during iteration", v21, v22, v23, "m != mEnd", v30);
  }

LABEL_16:
  v25 = **a1;
  v26 = **a1 & 3;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v28 = a1[3];
      v29 = v28 + (*v28 >> 16);
    }

    else
    {
      v29 = 0;
      v28 = a1[3];
    }

    v32 = (v29 + 8);
    a1[8] = v32;
    v27 = (v28 + (*v28 >> 16));
  }

  else
  {
    if (v26)
    {
      v27 = *a1[1];
    }

    else
    {
      v27 = a1[1];
    }

    v32 = v27 + 1;
    a1[8] = v27 + 1;
  }

  v33 = &v27[*v27 + 1];
  a1[9] = v33;
  if (v32 == v33)
  {
    if ((v25 & 3u) > 1uLL)
    {
      if (v26 == 2)
      {
        v30 = (a1[3] + (*a1[3] >> 16));
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v26)
    {
      v30 = *a1[1];
    }

    else
    {
      v30 = a1[1];
    }

    goto LABEL_46;
  }

  return a1;
}

const char *__sel_registerName(char *a1, int a2, int a3)
{
  __s = a1;
  if (!a1)
  {
    return 0;
  }

  objc_selector = _dyld_get_objc_selector();
  if (!objc_selector)
  {
    if (a2)
    {
      v6 = 0;
      atomic_compare_exchange_strong_explicit(selLock, &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v6)
      {
        os_unfair_lock_lock_with_options();
      }
    }

    objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::try_emplace<objc::detail::DenseSetEmpty&>(&v14, &namedSelectors, &__s);
    v7 = v14;
    if ((v15 & 1) == 0)
    {
      objc_selector = *v14;
      if (!a2)
      {
        return objc_selector;
      }

      goto LABEL_15;
    }

    objc_selector = __s;
    if (a3)
    {
      v8 = strlen(__s);
      if ((_dyld_is_memory_immutable() & 1) == 0)
      {
        v9 = malloc_type_malloc(v8 + 1, 0x9620E368uLL);
        memcpy(v9, objc_selector, v8 + 1);
        objc_selector = v9;
      }
    }

    *v7 = objc_selector;
    if (a2)
    {
LABEL_15:
      v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v12 = v11;
      atomic_compare_exchange_strong_explicit(selLock, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != v11)
      {
        os_unfair_lock_unlock(selLock);
      }
    }
  }

  return objc_selector;
}

void sub_18009F60C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit(selLock, &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock(selLock);
    }
  }

  _Unwind_Resume(exception_object);
}

const char *namedClassTableHash(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result) + 1;
    if (v2 >= 9)
    {
      do
      {
        v1 += 8;
        v2 -= 8;
      }

      while (v2 > 8);
    }

    return 0;
  }

  return result;
}

uint64_t getClassExceptSomeSwift(const char *a1)
{
  ClassFromNamedClassTable = getClassFromNamedClassTable(a1);
  if (ClassFromNamedClassTable)
  {
    return ClassFromNamedClassTable;
  }

  ClassFromNamedClassTable = getPreoptimizedClass(a1);
  if (ClassFromNamedClassTable)
  {
    return ClassFromNamedClassTable;
  }

  v5 = copySwiftV1MangledName(a1, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  PreoptimizedClass = getClassFromNamedClassTable(v5);
  if (!PreoptimizedClass)
  {
    PreoptimizedClass = getPreoptimizedClass(v6);
  }

  free(v6);
  return PreoptimizedClass;
}

objc_class *look_up_class(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  ClassExceptSomeSwift = getClassExceptSomeSwift(a1);
  v5 = ClassExceptSomeSwift;
  if (!ClassExceptSomeSwift || (*ClassExceptSomeSwift - 1) >= 0xF && (*(ClassExceptSomeSwift + 4) & 0x8000000000000000) != 0)
  {
    v6 = *(StatusReg + 24);
    v7 = v6;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  else
  {
    v5 = realizeClassMaybeSwiftMaybeRelock(ClassExceptSomeSwift, 0);
  }

  if (!v5)
  {
    v8 = *(StatusReg + 320);
    if (!v8)
    {
      v8 = malloc_type_malloc(0x48uLL, 0x201A97EDuLL);
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *(v8 + 3) = 0u;
      *(v8 + 8) = 0;
      *(StatusReg + 320) = v8;
    }

    v9 = v8[17];
    if (v9)
    {
      v10 = *(v8 + 7);
      v11 = v8[17];
      while (strcmp(a1, *v10))
      {
        ++v10;
        if (!--v11)
        {
          goto LABEL_17;
        }
      }

      return 0;
    }

LABEL_17:
    if (v9 == v8[16])
    {
      v12 = 2 * v9;
      if (2 * v9 <= 1)
      {
        v12 = 1;
      }

      v8[16] = v12;
      v13 = malloc_type_realloc(*(v8 + 7), 8 * v12, 0x50040EE9192B6uLL);
      *(v8 + 7) = v13;
      v9 = v8[17];
    }

    else
    {
      v13 = *(v8 + 7);
    }

    v8[17] = v9 + 1;
    v13[v9] = a1;
    v16 = 0;
    if ((atomic_load_explicit(&GetClassHook, memory_order_acquire))(a1, &v16))
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }

    v14 = v8[17] - 1;
    v8[17] = v14;
    *(*(v8 + 7) + 8 * v14) = 0;
  }

  return v5;
}

uint64_t objc_opt_self(uint64_t result)
{
  if (result >= 1 && (*((*result & 0xFFFFFFFF8) + 0x1E) & 0x80000000) == 0)
  {
    return [result self];
  }

  return result;
}

void objc_setProperty_atomic_copy(id self, SEL _cmd, id newValue, ptrdiff_t offset)
{
  if (offset)
  {
    v5 = (self + offset);
    v6 = [newValue copyWithZone:0];
    v7 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v5 >> 4) ^ (v5 >> 9)) & 7)], &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    v9 = *v5;
    *v5 = v6;
    v10 = *(StatusReg + 24);
    v11 = v10;
    atomic_compare_exchange_strong_explicit(&PropertyLocks[16 * (((v5 >> 4) ^ (v5 >> 9)) & 7)], &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      os_unfair_lock_unlock(&PropertyLocks[16 * (((v5 >> 4) ^ (v5 >> 9)) & 7)]);
    }
  }

  else
  {

    object_setClass(self, newValue);
  }
}

void *__cdecl object_getIndexedIvars(id a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  if (class_isMetaClass((*a1 & 0xFFFFFFFF8)))
  {
    if (*(a1 + 4) & 2) != 0 || (*(a1 + 4))
    {
      return a1 + ((*(a1 + 14) + 7) & 0xFFFFFFF8) - *(a1 + 15);
    }

    else
    {
      return a1 + 40;
    }
  }

  else
  {
    v3 = (*a1 & 0xFFFFFFFF8);
    objc_class::realizeIfNeeded(v3);
    return a1 + ((*(class_rw_t::ro((*(v3 + 4) & 0xF00007FFFFFFFF8)) + 8) + 7) & 0xFFFFFFF8);
  }
}

BOOL _mapStrIsEqual(int a1, char *__s1, char *__s2)
{
  if (__s1 == __s2)
  {
    return 1;
  }

  if (!__s1)
  {
    v3 = *__s2;
    return v3 == 0;
  }

  v3 = *__s1;
  if (!__s2)
  {
    return v3 == 0;
  }

  return v3 == *__s2 && strcmp(__s1, __s2) == 0;
}

uint64_t getPreoptimizedClass(uint64_t a1)
{
  if (DisablePreopt || preoptimized != 1)
  {
    return 0;
  }

  _dyld_for_each_objc_class();
  return 0;
}

uint64_t __getPreoptimizedClass_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    **(result + 32) = a2;
    *a4 = 1;
  }

  return result;
}

IMP class_getMethodImplementation(Class cls, SEL name)
{
  result = 0;
  if (cls && name)
  {
    v5 = *(*(cls + 4) & 0xF00007FFFFFFFF8);
    if ((v5 & 1) == 0)
    {
      v5 = *(*((*cls & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v5 & 0x20000000) != 0 && ((result = cache_getImp(cls, name, 0)) != 0 || (*(cls + 2) & 1) != 0 && (result = cache_getImp(cls + *((*(cls + 2) & 0x7FFFFFFFFFFFFELL) - 16), name, 0)) != 0))
    {
      if (result == _objc_msgForward_impcache)
      {
        result = 0;
      }
    }

    else
    {
      result = lookUpImpOrForward(0, name, cls, 7u);
    }

    if (!result)
    {
      return _objc_msgForward;
    }
  }

  return result;
}

void objc_setAssociatedObject(id object, const void *key, id value, void *policy)
{
  v42 = key;
  if (!(object | value))
  {
    return;
  }

  if ((object & 0x8000000000000000) != 0)
  {
    v9 = objc_debug_taggedpointer_classes[object & 7];
    if (v9)
    {
      v8 = objc_debug_taggedpointer_classes[object & 7];
      if (v9 != __NSUnrecognizedTaggedPointer)
      {
        goto LABEL_9;
      }

      v7 = objc_debug_taggedpointer_ext_classes[(object >> 55)];
      if (v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v7 = *object & 0x7FFFFFFFFFFFF8;
    if (v7)
    {
LABEL_4:
      v8 = v7;
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  objc_class::realizeIfNeeded(v8);
  if ((*((*(v8 + 4) & 0xF00007FFFFFFFF8) + 2) & 0x10) != 0)
  {
    ClassName = object_getClassName(object);
    _objc_fatal("objc_setAssociatedObject called on instance (%p) of class %s which does not allow associated objects", v37, v38, v39, object, ClassName);
  }

  if (value)
  {
    if (policy == 3)
    {
      v11 = [value copy];
    }

    else
    {
      v10 = value;
      if (policy != 1)
      {
        goto LABEL_17;
      }

      v11 = value;
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v12 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    os_unfair_lock_lock_with_options();
  }

  if (!value)
  {
    v16 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::find(-object);
    v17 = v16;
    if (objc::AssociationsManager::_mapStorage + 32 * dword_1ED3F5F58 == v16 || (v18 = objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::find(v16 + 8, v42), (*&v17[1] + 24 * v17[3].u32[0]) == v18))
    {
      LOBYTE(v20) = policy;
      v19 = v10;
      goto LABEL_66;
    }

    v20 = *(v18 + 1);
    v19 = *(v18 + 2);
    *(v18 + 1) = policy;
    *(v18 + 2) = v10;
    *v18 = -2;
    v21 = vadd_s32(v17[2], 0x1FFFFFFFFLL);
    v17[2] = v21;
    v22 = v17[3].u32[0];
    if (v21.i32[0])
    {
      if (v22 < 0x401 || v22 >> 4 <= v21.i32[0] || (objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::grow(&v17[1], 2 * v21.i32[0]), v17[2].i32[0]))
      {
LABEL_66:
        v33 = *(StatusReg + 24);
        v34 = v33;
        atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v34, 0, memory_order_release, memory_order_relaxed);
        if (v34 != v33)
        {
          os_unfair_lock_unlock(&AssociationsManagerLock);
        }

        goto LABEL_68;
      }
    }

    else if (v22)
    {
      if (v17[1])
      {
        v24 = v17[1];
      }

      else
      {
        v24 = 0;
      }

      free(v24);
      v17[1] = 0;
      v17[2] = 0;
      v17[3].i32[0] = 0;
    }

    else
    {
      v17[2] = 0;
    }

    objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::erase(v17);
    goto LABEL_66;
  }

  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v43 = 0;
  v14 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::LookupBucketFor<DisguisedPtr<objc_object>>(-object, &v43);
  v15 = v43;
  if ((v14 & 1) == 0)
  {
    if (4 * DWORD2(objc::AssociationsManager::_mapStorage) + 4 >= (3 * dword_1ED3F5F58))
    {
      objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::grow(2 * dword_1ED3F5F58);
      v43 = 0;
      objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::LookupBucketFor<DisguisedPtr<objc_object>>(-object, &v43);
    }

    else
    {
      if (dword_1ED3F5F58 + ~DWORD2(objc::AssociationsManager::_mapStorage) - HIDWORD(objc::AssociationsManager::_mapStorage) > dword_1ED3F5F58 >> 3)
      {
LABEL_23:
        if (*v15 == 2)
        {
          *(&objc::AssociationsManager::_mapStorage + 1) = vadd_s32(*(&objc::AssociationsManager::_mapStorage + 8), 0xFFFFFFFF00000001);
        }

        else if (*v15 == 1)
        {
          ++DWORD2(objc::AssociationsManager::_mapStorage);
        }

        else
        {
          if (*(v15 + 8))
          {
            v23 = *(v15 + 8);
          }

          else
          {
            v23 = 0;
          }

          free(v23);
        }

        *v15 = -object;
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 8) = 0;
        objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::swap((v15 + 8), v40);
        goto LABEL_43;
      }

      objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::grow(dword_1ED3F5F58);
      v43 = 0;
      objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::LookupBucketFor<DisguisedPtr<objc_object>>(-object, &v43);
    }

    v15 = v43;
    goto LABEL_23;
  }

LABEL_43:
  if (v40[0])
  {
    v25 = v40[0];
  }

  else
  {
    v25 = 0;
  }

  free(v25);
  v40[0] = 0;
  if (objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::LookupBucketFor<void const*>((v15 + 8), v42, v40))
  {
    v26 = v40[0] + 16;
    v19 = *(v40[0] + 2);
    v20 = *(v40[0] + 1);
    *(v40[0] + 1) = policy;
  }

  else
  {
    inserted = objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::InsertIntoBucketImpl<void const*>((v15 + 8), &v42, v40[0]);
    LOBYTE(v20) = 0;
    v19 = 0;
    *inserted = v42;
    *(inserted + 1) = policy;
    v26 = inserted + 16;
  }

  *v26 = v10;
  v28 = *(StatusReg + 24);
  v29 = v28;
  atomic_compare_exchange_strong_explicit(&AssociationsManagerLock, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != v28)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  if (object < 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = v14;
  }

  if ((v30 & 1) == 0)
  {
    if ((*object & 1) == 0 && (*((*object & 0xFFFFFFFF8) + 0x20) & 4) == 0 && ((*(*object & 0xFFFFFFFF8) - 1) < 0xF || (*((*((*object & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8) + 3) & 0x40) == 0) && (*((*object & 0xFFFFFFFF8) + 0x1E) & 4) == 0)
    {
      MethodImplementation = object_getMethodImplementation(object, "_noteAssociatedObjects");
      if (MethodImplementation != _objc_msgForward)
      {
        (MethodImplementation)(object, "_noteAssociatedObjects");
      }
    }

    v31 = *object;
    if ((*object & 3) == 1)
    {
      v32 = *object;
      do
      {
        atomic_compare_exchange_strong_explicit(object, &v32, v31 | 2, memory_order_relaxed, memory_order_relaxed);
        if (v32 == v31)
        {
          break;
        }

        v31 = v32;
      }

      while ((v32 & 3) == 1);
    }
  }

LABEL_68:
  if (v19)
  {
    if (v20)
    {
    }
  }
}

void sub_1800A03B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(v13 + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit(v12, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock(&AssociationsManagerLock);
  }

  _Unwind_Resume(exception_object);
}

void AutoreleasePoolPage::AutoreleasePoolPage(AutoreleasePoolPage *this, AutoreleasePoolPage *a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *StatusReg;
  if (a2)
  {
    v5 = *(a2 + 13);
    v6 = *(a2 + 12) + 1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *this = -1583242847;
  *(this + 3) = 558191425;
  *(this + 4) = *"AUTORELEASE!";
  *(this + 2) = this + 56;
  *(this + 3) = v4;
  *(this + 4) = a2;
  *(this + 5) = 0;
  *(this + 12) = v6;
  *(this + 13) = v5;
  {
    _objc_fault("Large Autorelease Pool");
  }

  v9 = *(this + 4);
  if (v9)
  {
    if (*v9 != -1583242847 || strncmp((v9 + 4), "AUTORELEASE!", 0xCuLL) || *(v9 + 24) != *StatusReg)
    {
      AutoreleasePoolPage::busted_die(v9);
    }

    *(v9 + 40) = this;
  }
}

void sub_1800A0538(_Unwind_Exception *a1)
{
  *v1 = 0;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

uint64_t *objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::swap(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v2 = *result;
  }

  else
  {
    v2 = 0;
  }

  *result = *a2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  v4 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

char *objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::InsertIntoBucketImpl<void const*>(int32x2_t *a1, unint64_t *a2, char *a3)
{
  v5 = a1[1].i32[0];
  v6 = a1[2].u32[0];
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1].i32[1] > v6 >> 3)
  {
    goto LABEL_3;
  }

  objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::grow(a1, v6);
  v8 = 0;
  objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::LookupBucketFor<void const*>(a1, *a2, &v8);
  a3 = v8;
LABEL_3:
  if (*a3 == -2)
  {
    a1[1] = vadd_s32(a1[1], 0xFFFFFFFF00000001);
  }

  else if (*a3 == -1)
  {
    ++a1[1].i32[0];
  }

  return a3;
}

void objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(24 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    *(a1 + 8) = 0;
    if (v4)
    {
      v11 = v9;
LABEL_13:
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = 24 * v13 - 24;
        v16 = vdupq_n_s64(v15 / 0x18);
        do
        {
          v17 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v14), xmmword_1800DA160)));
          if (v17.i8[0])
          {
            *v11 = -1;
          }

          if (v17.i8[4])
          {
            v11[3] = -1;
          }

          v14 += 2;
          v11 += 6;
        }

        while (((v15 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v14);
      }

      if (v3)
      {
        v18 = 24 * v3;
        v19 = v4 + 16;
        do
        {
          v20 = *(v19 - 2);
          if (v20 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v29 = 0;
            objc::DenseMapBase<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::LookupBucketFor<void const*>(a1, v20, &v29);
            v21 = v29;
            v22 = *(v19 - 2);
            *(v29 + 1) = 0;
            *(v21 + 2) = 0;
            *v21 = v22;
            *(v21 + 1) = *(v19 - 1);
            *(v19 - 1) = 0;
            v23 = *(v21 + 2);
            *(v21 + 2) = *v19;
            *v19 = v23;
            ++*(a1 + 8);
          }

          v19 += 3;
          v18 -= 24;
        }

        while (v18);
      }

      free(v4);
      return;
    }

    v12 = v9;
  }

  else
  {
    *&v10 = 0;
    v12 = 0;
    v11 = 0;
    *a1 = v10;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 24 * v24 - 24;
    v27 = vdupq_n_s64(v26 / 0x18);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_1800DA160)));
      if (v28.i8[0])
      {
        *v12 = -1;
      }

      if (v28.i8[4])
      {
        v12[3] = -1;
      }

      v25 += 2;
      v12 += 6;
    }

    while (((v26 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v25);
  }
}

uint64_t *AutoreleasePoolPage::autoreleaseFullPage(objc_object *this, objc_object *a2, AutoreleasePoolPage *a3)
{
  do
  {
    isa = a2[5].isa;
    if (!isa)
    {
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x1000uLL, 0x1000uLL, 0x78AEBFB1uLL);
      isa = memptr;
      AutoreleasePoolPage::AutoreleasePoolPage(memptr, a2);
    }

    a2 = isa;
  }

  while (isa[2].isa == &isa[512]);
  if (LODWORD(isa->isa) != -1583242847)
  {
    AutoreleasePoolPage::busted_die(&isa->isa);
  }

  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 344) = isa;
  return AutoreleasePoolPage::add(isa, this);
}

unint64_t objc_opt_class(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v1 = objc_debug_taggedpointer_classes[result & 7];
      if (v1 == __NSUnrecognizedTaggedPointer)
      {
        v1 = objc_debug_taggedpointer_ext_classes[(result >> 55)];
      }
    }

    else
    {
      v1 = *result & 0x7FFFFFFFFFFFF8;
    }

    v2 = *(v1 + 30);
    if (v2 < 0)
    {
      if ((v2 & 4) == 0)
      {
        return v1;
      }
    }

    else
    {
      return [result class];
    }
  }

  return result;
}

void (*lookUpImpOrForwardTryCache(objc_object *a1, objc_selector *a2, objc_class *a3, unsigned int a4))(void)
{
  v8 = *(*(a3 + 4) & 0xF00007FFFFFFFF8);
  if ((v8 & 1) == 0)
  {
    v8 = *(*((*a3 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v8 & 0x20000000) != 0 && ((result = cache_getImp(a3, a2, 0)) != 0 || (*(a3 + 2) & 1) != 0 && (result = cache_getImp(a3 + *((*(a3 + 2) & 0x7FFFFFFFFFFFFELL) - 16), a2, 0)) != 0))
  {
    if (((result == _objc_msgForward_impcache) & (a4 >> 2)) != 0)
    {
      return 0;
    }
  }

  else
  {

    return lookUpImpOrForward(a1, a2, a3, a4);
  }

  return result;
}

uint64_t getClassFromNamedClassTable(const char *a1)
{
  v2 = namedClassTableHash(a1);
  v6 = 0;
  v3 = _NXMapMemberWithHash(gdb_objc_realized_classes, a1, v2, &v6);
  result = 0;
  if (v3 != -1 && v6 != 0)
  {
    return v6;
  }

  return result;
}

Class objc_lookUpClass(Class name)
{
  if (name)
  {
    return look_up_class(name);
  }

  return name;
}

uint64_t _NXMapMemberWithHash(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 12) & a3;
  v7 = (v5 + 16 * v6);
  v8 = *v7;
  if (*v7 != -1)
  {
    if (v8 == a2 || (*(*a1 + 8))(a1, v8, a2))
    {
LABEL_10:
      *a4 = v7[1];
      return *v7;
    }

    LODWORD(v11) = v6;
    while (1)
    {
      v11 = *(a1 + 12) & (v11 + 1);
      if (v11 == v6)
      {
        break;
      }

      v12 = *(v5 + 16 * v11);
      if (v12 == -1)
      {
        break;
      }

      if (v12 == a2 || (*(*a1 + 8))(a1, v12, a2))
      {
        v7 = (v5 + 16 * v11);
        goto LABEL_10;
      }
    }
  }

  return -1;
}

void objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::erase(void *a1)
{
  if (a1[1])
  {
    v2 = a1[1];
  }

  else
  {
    v2 = 0;
  }

  free(v2);
  *a1 = 2;
  *(&objc::AssociationsManager::_mapStorage + 1) = vadd_s32(*(&objc::AssociationsManager::_mapStorage + 8), 0x1FFFFFFFFLL);
  if (DWORD2(objc::AssociationsManager::_mapStorage))
  {
    if (dword_1ED3F5F58 >= 0x401 && dword_1ED3F5F58 >> 4 > DWORD2(objc::AssociationsManager::_mapStorage))
    {
      v4 = 2 * DWORD2(objc::AssociationsManager::_mapStorage);

      objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::grow(v4);
    }
  }

  else
  {
    if (!dword_1ED3F5F58)
    {
      goto LABEL_24;
    }

    v5 = 32 * dword_1ED3F5F58;
    v6 = (objc::AssociationsManager::_mapStorage + 8);
    v7 = objc::AssociationsManager::_mapStorage + 8;
    do
    {
      if (*(v6 - 1) - 1 >= 2)
      {
        if (*v6)
        {
          v8 = *v6;
        }

        else
        {
          v8 = 0;
        }

        free(v8);
      }

      v7 += 32;
      v6 += 4;
      v5 -= 32;
    }

    while (v5);
    if (dword_1ED3F5F58)
    {
      if (objc::AssociationsManager::_mapStorage)
      {
        v9 = objc::AssociationsManager::_mapStorage;
      }

      else
      {
        v9 = 0;
      }

      free(v9);
      objc::AssociationsManager::_mapStorage = 0uLL;
      dword_1ED3F5F58 = 0;
    }

    else
    {
LABEL_24:
      *(&objc::AssociationsManager::_mapStorage + 1) = 0;
    }
  }
}

uint64_t objc::DenseMapBase<objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>,method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::LookupBucketFor<method_t const*>(unint64_t a1, void *a2)
{
  if (dword_1ED3F5C00)
  {
    v2 = dword_1ED3F5C00 - 1;
    v3 = (dword_1ED3F5C00 - 1) & (bswap64(0x8A970BE7488FDA55 * (a1 ^ (a1 >> 4))) ^ (1217387093 * (a1 ^ (a1 >> 4))));
    v4 = (objc::smallMethodIMPMap + 16 * v3);
    v5 = *v4;
    if (*v4 == a1)
    {
      v6 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v5 != -1)
      {
        if (v9 > dword_1ED3F5C00)
        {
          objc::DenseMapBase<objc::DenseMap<method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>,method_t const*,void *,objc::DenseMapValueInfo<void *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,void *>>::FatalCorruptHashTables(objc::smallMethodIMPMap, dword_1ED3F5C00);
        }

        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v5 == -2;
        }

        if (v10)
        {
          v8 = v4;
        }

        v11 = v3 + v9++;
        v3 = v11 & v2;
        v4 = (objc::smallMethodIMPMap + 16 * (v11 & v2));
        v5 = *v4;
        v6 = 1;
        if (*v4 == a1)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      if (v8)
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_5:
  *a2 = v4;
  return v6;
}

uint64_t list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::iteratorImpl(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(a1, a2);
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(v6 + 32, a3);
  v7 = **a2;
  if (*a2 != *a3)
  {
    goto LABEL_2;
  }

  if (!v7)
  {
LABEL_9:
    if (a2[1] == a3[1])
    {
      goto LABEL_17;
    }

LABEL_2:
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if ((**a2 & 3uLL) > 1)
  {
    if ((**a2 & 3) != 2)
    {
      goto LABEL_3;
    }

    v13 = a2[3];
    v14 = a3[3];
  }

  else
  {
    if ((v7 & 3) == 0)
    {
      goto LABEL_9;
    }

    v13 = a2[1];
    v14 = a3[1];
  }

  if (v13 == v14)
  {
    goto LABEL_17;
  }

LABEL_3:
  v8 = **a2 & 3;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = a2[3];
      v11 = v10 + (*v10 >> 16);
    }

    else
    {
      v11 = 0;
      v10 = a2[3];
    }

    *(a1 + 64) = v11 + 8;
    v9 = (v10 + (*v10 >> 16));
    goto LABEL_16;
  }

  if (v8)
  {
    *(a1 + 64) = *a2[1] + 8;
    v9 = *a2[1];
    goto LABEL_16;
  }

LABEL_5:
  v9 = a2[1];
  *(a1 + 64) = v9 + 1;
LABEL_16:
  *(a1 + 72) = &v9[*v9 + 1];
LABEL_17:
  list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::skipEmptyLists(a1);
  return a1;
}

__n128 list_array_tt<unsigned long,protocol_list_t,RawPtr>::ListIterator::ListIterator(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (*v2 && (*v2 & 3uLL) > 1)
  {
    if ((*v2 & 3) == 2)
    {
      result = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = result;
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  return result;
}

BOOL protocol_conformsToProtocol(Protocol *proto, Protocol *other)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v6 = protocol_conformsToProtocol_nolock(proto, other);
  v7 = *(StatusReg + 24);
  v8 = v7;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != v7)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v6;
}

void sub_1800A164C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

BOOL protocol_isEqual(Protocol *proto, Protocol *other)
{
  if (proto == other)
  {
    LOBYTE(proto) = 1;
  }

  else
  {
    v2 = proto;
    LOBYTE(proto) = 0;
    if (v2)
    {
      if (other)
      {
        LODWORD(proto) = protocol_conformsToProtocol(v2, other);
        if (proto)
        {

          LOBYTE(proto) = protocol_conformsToProtocol(other, v2);
        }
      }
    }
  }

  return proto;
}

char *objc_object::sidetable_setWeaklyReferenced_nolock(objc_object *this)
{
  v2 = -this;
  *result |= 1uLL;
  return result;
}

unint64_t objc_opt_isKindOfClass(unint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v2 = *result & 0x7FFFFFFFFFFFF8;
LABEL_4:
    v3 = v2;
    goto LABEL_5;
  }

  v3 = objc_debug_taggedpointer_classes[result & 7];
  if (v3 == __NSUnrecognizedTaggedPointer)
  {
    v2 = objc_debug_taggedpointer_ext_classes[(result >> 55)];
    goto LABEL_4;
  }

LABEL_5:
  if ((*(v3 + 30) & 0x80000000) == 0)
  {
    return [result isKindOfClass:a2];
  }

  v4 = v3 == 0;
  if (v3)
  {
    v5 = v3 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    while (1)
    {
      v6 = *(v3 + 8);
      if (!v6)
      {
        break;
      }

      v3 = *(v3 + 8);
      v4 = v6 == 0;
      if (v6 == a2)
      {
        return !v4;
      }
    }

    v4 = 1;
  }

  return !v4;
}

objc_object *_objc_rootRetain(objc_object *result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    isa = result->isa;
    if (result->isa)
    {
      while (isa >> 55)
      {
        if (isa >= 0xFF00000000000000)
        {

          return objc_object::rootRetain_overflow(result, 0);
        }

        v2 = isa;
        atomic_compare_exchange_strong_explicit(result, &v2, isa + 0x100000000000000, memory_order_relaxed, memory_order_relaxed);
        if (v2 == isa)
        {
          return result;
        }

        isa = v2;
        if ((v2 & 1) == 0)
        {
          return objc_object::sidetable_retain(result, 0);
        }
      }
    }

    else if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) == 0)
    {
      return objc_object::sidetable_retain(result, 0);
    }
  }

  return result;
}

uint64_t _objc_rootRelease(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = *result;
    if (*result)
    {
      while (v1 >> 55)
      {
        v2 = v1 - 0x100000000000000;
        if (v1 < 0x100000000000000)
        {
          return objc_object::rootRelease_underflow(result, 1);
        }

        v3 = v1;
        atomic_compare_exchange_strong_explicit(result, &v3, v2, memory_order_release, memory_order_relaxed);
        if (v3 == v1)
        {
          if (!(v2 >> 55))
          {
            __dmb(9u);
            if ((*((*result & 0xFFFFFFFF8) + 0x1E) & 0x1000) != 0)
            {
              v4 = &selRef__objc_initiateDealloc;
            }

            else
            {
              v4 = &selRef_dealloc;
            }

            return [result *v4];
          }

          return result;
        }

        v1 = v3;
        if ((v3 & 1) == 0)
        {
          return objc_object::sidetable_release(result, 0, 1);
        }
      }
    }

    else if ((*((v1 & 0xFFFFFFFF8) + 0x1E) & 4) == 0)
    {
      return objc_object::sidetable_release(result, 0, 1);
    }
  }

  return result;
}

uint64_t **list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<true>::iteratorImpl(uint64_t **a1, uint64_t **a2, uint64_t **a3)
{
  v6 = list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(a1, a2);
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(v6 + 4, a3);
  v9 = **a2;
  if (*a2 != *a3)
  {
    goto LABEL_2;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  if ((**a2 & 3uLL) > 1)
  {
    if ((**a2 & 3) != 2)
    {
      goto LABEL_3;
    }

    v22 = a2[3];
    v23 = a3[3];
LABEL_42:
    if (v22 == v23)
    {
      goto LABEL_35;
    }

LABEL_3:
    if ((**a2 & 3uLL) > 1)
    {
      if ((**a2 & 3) == 2)
      {
        v10 = (a2[3] + (*a2[3] >> 16));
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_15;
    }

    if ((v9 & 3) != 0)
    {
      v10 = *a2[1];
      goto LABEL_15;
    }

LABEL_5:
    v10 = a2[1];
LABEL_15:
    v12 = *v10;
    v24[0] = v12 & 0xFFFC;
    v13 = v12 >> 31;
    v14 = (v10 + 1) & 0xFFFFFFFFFFFFFFFCLL;
    if (v10 < 0)
    {
      v13 = 2;
    }

    v15 = (v13 | v14);
    a1[8] = v24[0];
    if (v13 | v14)
    {
      v15 = (v13 | v14);
    }

    a1[9] = v15;
    v16 = **a2;
    if (!v16)
    {
      goto LABEL_22;
    }

    if ((**a2 & 3uLL) > 1)
    {
      if ((**a2 & 3) != 2)
      {
        v19 = 0;
LABEL_34:
        entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::signedEnd(v24, v19, v7, v8);
        v20 = v24[1];
        a1[10] = v24[0];
        a1[11] = v20;
        goto LABEL_35;
      }

      v18 = (a2[3] + (*a2[3] >> 16));
      if (!v18)
      {
        v17 = 0;
LABEL_30:
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_34;
      }

LABEL_29:
      v17 = v18;
      goto LABEL_30;
    }

    if ((v16 & 3) != 0)
    {
      v17 = *a2[1];
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
LABEL_22:
      v17 = a2[1];
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    v18 = v17;
    goto LABEL_29;
  }

  if ((v9 & 3) != 0)
  {
    v22 = a2[1];
    v23 = a3[1];
    goto LABEL_42;
  }

LABEL_9:
  if (a2[1])
  {
    v11 = a2[1];
  }

  else
  {
    v11 = 0;
  }

  if (v11 != a3[1])
  {
LABEL_2:
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

LABEL_35:
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::skipEmptyLists(a1);
  return a1;
}

uint64_t **list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::skipEmptyLists(uint64_t **result)
{
  v1 = *result;
  v2 = result[4];
  v3 = objc_debug_headerInfoRWs + 8;
  v4 = **result;
  while (1)
  {
    if (v1 != v2)
    {
      goto LABEL_12;
    }

    if (v4)
    {
      if ((v4 & 3u) > 1uLL)
      {
        if ((v4 & 3) != 2)
        {
          goto LABEL_12;
        }

        v6 = result[3];
        v7 = result[7];
      }

      else
      {
        if ((v4 & 3) == 0)
        {
          goto LABEL_6;
        }

        v6 = result[1];
        v7 = result[5];
      }

      if (v6 == v7)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_6:
    v5 = result[1] ? result[1] : 0;
    if (v5 == result[5])
    {
      return result;
    }

LABEL_12:
    if (!v4)
    {
      v8 = 1;
LABEL_17:
      v9 = result[1];
      goto LABEL_19;
    }

LABEL_13:
    if ((v4 & 3) != 1)
    {
      v8 = 0;
      if ((v4 & 3) != 0)
      {
        v9 = (result[3] + (*result[3] >> 16));
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v9 = *result[1];
    v8 = 0;
LABEL_19:
    if (*(v9 + 1))
    {
      return result;
    }

    if (v8)
    {
      v4 = 0;
      result[1] = 0;
    }

    else
    {
      if ((v4 & 3) == 1)
      {
        ++result[1];
        v10 = *v1;
      }

      else
      {
        if ((v4 & 3) == 0)
        {
          result[1] = 0;
        }

        v10 = v4;
      }

      v4 = 0;
      if (v10)
      {
        v4 = v10;
        if ((v10 & 3) == 2)
        {
          v11 = result[3];
          v13 = *(result + 4);
          v12 = *(result + 5);
          v14 = (v11 + v13);
          result[3] = (v11 + v13);
          v15 = result[1];
          v16 = *v15;
          v17 = *(v15 + 1);
          v18 = v17 * v16;
          *(result + 5) = v12 + 1;
          if ((v18 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v12, v16, v18, v17, v15, v16);
          }

          v19 = v15 + v18 + 8;
          v4 = v10;
          if (v14 < v19)
          {
            v20 = v12 + 2;
            v21 = (v11 + 2 * v13);
            do
            {
              if (*(v3 + 8 * *v14))
              {
                break;
              }

              v14 = (v14 + v13);
              result[3] = v21;
              *(result + 5) = v20++;
              v21 = (v21 + v13);
            }

            while (v14 < v19);
            v4 = v10;
          }
        }
      }
    }
  }
}

objc_method_description *__cdecl method_getDescription(objc_method_description *m)
{
  if (m)
  {
    if ((m & 3u) > 1)
    {
      if ((m & 3) != 2)
      {
        return m;
      }
    }

    else if ((m & 3) == 0)
    {
      return (m & 0xFFFFFFFFFFFFFFFCLL);
    }

    return method_t::getCachedDescription(m);
  }

  return m;
}

uint64_t objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(unint64_t a1, void *a2)
{
  if (dword_1ED3F57A0)
  {
    v2 = dword_1ED3F57A0 - 1;
    v3 = (dword_1ED3F57A0 - 1) & (bswap64(0x8A970BE7488FDA55 * (a1 ^ (a1 >> 4))) ^ (1217387093 * (a1 ^ (a1 >> 4))));
    v4 = (objc::methodDescriptionMap + 16 * v3);
    v5 = *v4;
    if (*v4 == a1)
    {
      v6 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v5 != -1)
      {
        if (v9 > dword_1ED3F57A0)
        {
          objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::FatalCorruptHashTables(objc::methodDescriptionMap, dword_1ED3F57A0);
        }

        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v5 == -2;
        }

        if (v10)
        {
          v8 = v4;
        }

        v11 = v3 + v9++;
        v3 = v11 & v2;
        v4 = (objc::methodDescriptionMap + 16 * (v11 & v2));
        v5 = *v4;
        v6 = 1;
        if (*v4 == a1)
        {
          goto LABEL_5;
        }
      }

      v6 = 0;
      if (v8)
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_5:
  *a2 = v4;
  return v6;
}

void _objc_init()
{
  if (_objc_init::initialized)
  {
    return;
  }

  _objc_init::initialized = 1;
  if (MEMORY[0x1EEE9AC48] && getpid() == 1)
  {
    objc_bp_assist_cfg_np();
  }

  classInitLock[0] = 0;
  pendingInitializeMapLock = 0;
  selLock[0] = 0;
  loadMethodLock = 0;
  crashlog_lock = 0;
  objcMsgLogLock[0] = 0;
  AltHandlerDebugLock[0] = 0;
  AssociationsManagerLock = 0;
  runtimeLock[0] = 0;
  DemangleCacheLock[0] = 0;
  v0 = &OBJC_IVAR___Object_isa;
  if (issetugid())
  {
    goto LABEL_6;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    DisableAutoreleaseCoalescingLRU = 1;
  }

  if ((_os_feature_enabled_simple_impl() & 1) == 0)
  {
    DisableClassRXSigningEnforcement = 1;
  }

  if ((_os_feature_enabled_simple_impl() & 1) == 0)
  {
    DisableClassROFaults = 1;
  }

  v13 = *_NSGetEnviron();
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = *v13;
  if (!*v13)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_90;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    if (!strncmp(v14, "Malloc", 6uLL) || !strncmp(v14, "DYLD", 4uLL) || !strncmp(v14, "NSZombiesEnabled", 0x10uLL))
    {
      v17 = 1;
    }

    if (!strncmp(v14, "OBJC_", 5uLL))
    {
      if (!strncmp(v14, "OBJC_HELP=", 0xAuLL))
      {
        v15 = 1;
        goto LABEL_37;
      }

      if (!strncmp(v14, "OBJC_PRINT_OPTIONS=", 0x13uLL))
      {
        v16 = 1;
        goto LABEL_37;
      }

      if (!strncmp(v14, "OBJC_DEBUG_POOL_DEPTH=", 0x16uLL))
      {
        v25 = strtol(v14 + 22, 0, 10);
        if (v25 && (v25 - 0x80000000) >= 0xFFFFFFFF7FFFFFFFLL)
        {
          objc::PageCountWarning = v25;
        }
      }

      else
      {
        v19 = strchr(v14, 61);
        if (!*v19)
        {
          goto LABEL_37;
        }

        v20 = v19;
        v21 = v19 + 1;
        v22 = &Settings;
        v23 = 51;
        while (1)
        {
          if (v22[32] != 1 || os_variant_allows_internal_security_policies())
          {
            v24 = *(v22 + 3);
            if (v21 - *v13 == v24 + 1 && !strncmp(*v13, *(v22 + 1), v24))
            {
              break;
            }
          }

          v22 += 40;
          if (!--v23)
          {
            goto LABEL_37;
          }
        }

        if (!strcasecmp(v21, "fatal") || !strcasecmp(v21, "halt"))
        {
          v26 = *v22;
          v27 = 2;
LABEL_69:
          *v26 = v27;
          goto LABEL_37;
        }

        if (!strcasecmp(v21, "fault"))
        {
          v26 = *v22;
          v27 = 3;
          goto LABEL_69;
        }

        if (strcasecmp(v21, "stochastic-fault") && strcasecmp(v21, "stochasticFault"))
        {
          if (strcasecmp(v21, "yes") && strcasecmp(v21, "warn") && strcasecmp(v21, "true") && strcasecmp(v21, "on") && strcasecmp(v21, "y") && (*v21 != 49 || v20[2]))
          {
            **v22 = 0;
            goto LABEL_37;
          }

          v26 = *v22;
          v27 = 1;
          goto LABEL_69;
        }

        **v22 = 4;
      }
    }

LABEL_37:
    v18 = v13[1];
    ++v13;
    v14 = v18;
  }

  while (v18);
  if ((v17 & 1) == 0)
  {
    v0 = &OBJC_IVAR___Object_isa;
    goto LABEL_90;
  }

  v37 = getenv("DYLD_INSERT_LIBRARIES");
  v38 = getenv("NSZombiesEnabled");
  v39 = getenv("OBJC_DEBUG_POOL_ALLOCATION");
  if (getenv("MallocStackLogging") || getenv("MallocStackLoggingNoCompact") || v38 && (*v38 | 0x20) == 0x79)
  {
    v0 = &OBJC_IVAR___Object_isa;
    if (v39)
    {
      goto LABEL_90;
    }

    goto LABEL_87;
  }

  v0 = &OBJC_IVAR___Object_isa;
  if (v37)
  {
    v43 = strstr(v37, "libgmalloc");
    if (!v39)
    {
      if (v43)
      {
LABEL_87:
        DebugPoolAllocation = 1;
      }
    }
  }

LABEL_90:
  if ((_os_feature_enabled_simple_impl() & 1) == 0)
  {
    DisablePreoptCaches = 1;
  }

  if ((v15 | v16))
  {
    if (v15)
    {
      _objc_inform("Objective-C runtime debugging. Set variable=YES to enable.");
      _objc_inform("OBJC_HELP: describe available environment variables");
      if (v16)
      {
        _objc_inform("OBJC_HELP is set");
      }

      _objc_inform("OBJC_PRINT_OPTIONS: list which options are set");
      if (v16)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_115:
      _objc_inform("OBJC_PRINT_OPTIONS is set");
    }

LABEL_95:
    v40 = &off_1E69EA128;
    v41 = 51;
    while (2)
    {
      if (*(v40 + 16) != 1 || os_variant_allows_internal_security_policies())
      {
        if (v15)
        {
          _objc_inform("%s: %s", *(v40 - 1), *v40);
          if (v16)
          {
            goto LABEL_100;
          }
        }

        else if (v16)
        {
LABEL_100:
          v42 = **(v40 - 2) - 1;
          if (v42 <= 3)
          {
            _objc_inform(off_1E69EA910[v42], *(v40 - 1));
          }
        }
      }

      v40 += 5;
      if (!--v41)
      {
        break;
      }

      continue;
    }
  }

LABEL_6:
  pthread_key_init_np();
  v1 = &dword_1ED3F6448;
  v2 = 512;
  do
  {
    *(v1 - 1) = 0;
    *v1 = 0;
    v1 += 16;
    v2 -= 64;
  }

  while (v2);
  for (i = 0; i != 128; i += 16)
  {
    PropertyLocks[i] = 0;
  }

  for (j = 0; j != 128; j += 16)
  {
    StructLocks[j] = 0;
  }

  for (k = 0; k != 128; k += 16)
  {
    CppObjectLocks[k] = 0;
  }

  v7 = 512;
  do
  {
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    v6[6] = 0;
    *(v6 + 2) = 0uLL;
    *(v6 + 3) = 0uLL;
    v6 += 16;
    v7 -= 64;
  }

  while (v7);
  static_init();
  v8 = 0;
  v9 = -1;
  v10 = -1;
  while (1)
  {
    objc_selector = _dyld_get_objc_selector();
    if (!objc_selector)
    {
      break;
    }

    v10 &= ~objc_selector;
    v9 &= objc_selector;
    v8 += 8;
    if (v8 == 120)
    {
      goto LABEL_21;
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_21:
  objc::InterestingSelectorOnes = v9;
  objc::InterestingSelectorZeroes = v10;
  v12 = v0[75];
  if (!v12)
  {
    v12 = 0;
  }

  objc::disableEnforceClassRXPtrAuth = v12;
  objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::init(0x20);
  objc::allocatedClasses = 0;
  qword_1ED3F6158 = 0;
  qword_1ED3F6160 = 0;
  old_terminate = std::set_terminate(_objc_terminate);
  v28 = -1;
  do
  {
    ++v28;
  }

  while (objc_restartableRanges[2 * v28]);
  v29 = task_restartable_ranges_register();
  if (v29 == 6)
  {
    shouldUseRestartableRanges = 1;
  }

  else
  {
    v30 = v29;
    if (v29)
    {
      v44 = mach_error_string(v29);
      _objc_fatal("task_restartable_ranges_register failed (result 0x%x: %s)", v45, v46, v47, v30, v44);
    }

    v31 = task_restartable_ranges_synchronize();
    if (v31)
    {
      v32 = v31;
      v33 = mach_error_string(v31);
      _objc_fatal("task_restartable_ranges_synchronize failed (result 0x%x: %s)", v34, v35, v36, v32, v33);
    }
  }

  _dyld_objc_register_callbacks();
  didCallDyldNotifyRegister = 1;
}

void *objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::init(void *result)
{
  if (result)
  {
    v1 = (4 * result / 3u + 1) | ((4 * result / 3u + 1) >> 1);
    v2 = v1 | (v1 >> 2) | ((v1 | (v1 >> 2)) >> 4);
    dword_1ED3F6388 = (v2 | (v2 >> 8) | ((v2 | (v2 >> 8)) >> 16)) + 1;
    result = malloc_type_malloc(24 * dword_1ED3F6388, 0xAC185C46uLL);
    if (result)
    {
      objc::unattachedCategories = result;
      v3 = result;
    }

    else
    {
      v3 = 0;
      objc::unattachedCategories = 0uLL;
    }

    if (dword_1ED3F6388)
    {
      v4 = 0;
      v5 = 24 * dword_1ED3F6388 - 24;
      v6 = vdupq_n_s64(v5 / 0x18);
      do
      {
        v7 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v4), xmmword_1800DA160)));
        if (v7.i8[0])
        {
          *v3 = 1;
        }

        if (v7.i8[4])
        {
          v3[3] = 1;
        }

        v4 += 2;
        v3 += 6;
      }

      while (((v5 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v4);
    }
  }

  else
  {
    objc::unattachedCategories = 0uLL;
    dword_1ED3F6388 = 0;
  }

  return result;
}

Method *__cdecl class_copyMethodList(Class cls, unsigned int *outCount)
{
  if (!cls)
  {
    v16 = 0;
    if (outCount)
    {
      *outCount = 0;
    }

    return v16;
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  realizeAndInitializeIfNeeded_locked(0, cls, 0);
  LODWORD(v6) = class_rw_t::methods(&v125, *(cls + 4) & 0xF00007FFFFFFFF8);
  v115 = &v125;
  v14 = v125;
  if (!v125)
  {
    goto LABEL_11;
  }

  v15 = v125 & 3;
  if ((v125 & 3) == 0)
  {
    v12 = v125;
    v116 = v125;
    goto LABEL_7;
  }

  if (v125 > 3)
  {
    if (v15 != 2)
    {
      if (v15 == 1)
      {
        v12 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v125 & 0xFFFFFFFFFFFFFFFCLL) != 0)
        {
          v12 += 2;
          v116 = v12;
        }
      }

      goto LABEL_7;
    }

    v12 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v125 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
LABEL_7:
      v111 = &v125;
      goto LABEL_13;
    }

    if (DisablePreattachedCategories)
    {
      v40 = *v12;
      v19 = v12[1];
      v105 = v19 * v40;
      if ((v105 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_260;
      }

      v13 = v40 | (v19 << 32);
      v106 = v12 + v105 + 8;
      v107 = v40 | ((v19 - 1) << 32);
      v108 = v19 == 0;
      if (v19)
      {
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v108)
      {
        v7 = v106;
      }

      else
      {
        v7 = (v106 - v40);
      }

      if (!v108)
      {
        v13 = v107;
      }
    }

    else
    {
      v7 = (v12 + 2);
      v13 = *v12;
      v19 = v12[1];
      v40 = v13;
    }

    v41 = v19 * v40;
    if ((v41 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_260;
    }

    v6 = HIDWORD(v13);
    for (i = v12 + v41 + 8; v7 < i; v6 = (v6 + 1))
    {
      if (*(objc_debug_headerInfoRWs + 8 + 8 * *v7))
      {
        break;
      }

      v7 = (v7 + v13);
    }

    v116 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
    v117 = v13 | (v6 << 32);
    v118 = v7;
  }

  else
  {
LABEL_11:
    v12 = 0;
    v116 = 0;
  }

  v111 = &v125;
  if (!v125)
  {
    v17 = 0;
LABEL_22:
    v112 = 0;
    goto LABEL_24;
  }

LABEL_13:
  v17 = (v125 & 3);
  if (v17 <= 1)
  {
    if ((v125 & 3) != 0)
    {
      v17 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v125 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v17 += 2 * *v17 + 2;
        v112 = v17;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v17 != 2)
  {
    v17 = 0;
    goto LABEL_24;
  }

  v17 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v125 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 * v18;
    if ((v20 & 0xFFFFFFFF00000000) == 0)
    {
      v9 = v17 + v20 + 8;
      v112 = v125 & 0xFFFFFFFFFFFFFFFCLL;
      v113 = v18 | (v19 << 32);
      v114[0] = v9;
      goto LABEL_24;
    }

    v12 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
    v40 = *v17;
LABEL_260:
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v7, v8, v9, v10, v11, v19, v12, v40);
  }

LABEL_24:
  v21 = 0;
  v10 = &v115;
  v11 = &v111;
  v8 = (objc_debug_headerInfoRWs + 8);
LABEL_25:
  v22 = v12 + 2;
  v23 = v7;
LABEL_26:
  v7 = v23;
  v24 = v12;
  v25 = v12;
  v26 = v12;
  while (1)
  {
    if (!v125)
    {
      goto LABEL_30;
    }

    if ((v125 & 3) > 1)
    {
      break;
    }

    if ((v125 & 3) != 0)
    {
      if (v26 == v17)
      {
        goto LABEL_63;
      }

      goto LABEL_42;
    }

LABEL_30:
    if (v25)
    {
      v27 = v25;
      if (!v17)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v27 = 0;
      if (!v17)
      {
LABEL_37:
        v28 = 0;
        goto LABEL_38;
      }
    }

    v28 = v17;
LABEL_38:
    if (v27 == v28)
    {
      goto LABEL_63;
    }

    if (!v125)
    {
      goto LABEL_44;
    }

    v26 = v25;
LABEL_42:
    if ((v125 & 3) <= 1)
    {
      if ((v125 & 3) != 0)
      {
        v29 = *v24;
        v25 = v24;
        v26 = v24;
      }

      else
      {
LABEL_44:
        if (v12)
        {
          v29 = v12;
          v24 = v12;
          v25 = v12;
          v26 = v12;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v29 = 0;
        }
      }

LABEL_51:
      v21 += v29[1];
      if (!v125)
      {
        goto LABEL_61;
      }

      goto LABEL_52;
    }

    if ((v125 & 3) == 2)
    {
      v29 = (v7 + (*v7 >> 16));
      goto LABEL_51;
    }

    v21 += MEMORY[4];
LABEL_52:
    if ((v125 & 3) != 3)
    {
      if ((v125 & 3) == 0)
      {
LABEL_61:
        v22 = 0;
LABEL_62:
        v116 = v22;
        v12 = v22;
        goto LABEL_25;
      }

      if ((v125 & 3) == 1)
      {
        goto LABEL_62;
      }

      v23 = (v7 + v13);
      v118 = v23;
      v30 = *v12;
      v19 = v12[1];
      v31 = v19 * v30;
      LODWORD(v6) = v6 + 1;
      HIDWORD(v117) = v6;
      if ((v31 & 0xFFFFFFFF00000000) != 0)
      {
        v40 = v30;
        goto LABEL_260;
      }

      v32 = v22 + v31;
      if (v23 < v32)
      {
        v33 = (v7 + 2 * v13);
        do
        {
          if (*&v8[8 * *v23])
          {
            break;
          }

          v23 = (v23 + v13);
          v118 = v33;
          LODWORD(v6) = v6 + 1;
          HIDWORD(v117) = v6;
          v33 = (v33 + v13);
        }

        while (v23 < v32);
      }

      goto LABEL_26;
    }
  }

  if ((v125 & 3) != 2 || v7 != v9)
  {
    goto LABEL_42;
  }

LABEL_63:
  if (!v21)
  {
    v38 = 0;
    v16 = 0;
    if (outCount)
    {
      goto LABEL_219;
    }

    goto LABEL_220;
  }

  v111 = &v125;
  v34 = &v129;
  if (!v125)
  {
    v112 = 0;
    v128 = &v125;
    goto LABEL_108;
  }

  v35 = &v112;
  v36 = v125 & 3;
  if ((v125 & 3) == 0)
  {
    v37 = v125;
    goto LABEL_67;
  }

  if (v125 < 4)
  {
    v39 = 0;
    goto LABEL_73;
  }

  if (v36 != 2)
  {
    if (v36 == 1 && (v125 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      v37 = (v125 & 0xFFFFFFFFFFFFFFFCLL) + 8;
LABEL_67:
      v112 = v37;
    }

    goto LABEL_99;
  }

  v43 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v125 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    goto LABEL_99;
  }

  if (!DisablePreattachedCategories)
  {
    v39 = (v43 + 2);
    v45 = *v43;
    v44 = v43[1];
    v46 = v45;
    goto LABEL_94;
  }

  v46 = *v43;
  v44 = v43[1];
  v109 = v44 * v46;
  if ((v109 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_262;
  }

  v45 = v46 | (v44 << 32);
  v39 = (v43 + v109 + 8);
  v7 = (v46 | ((v44 - 1) << 32));
  v110 = v44 == 0;
  if (v44)
  {
    v44 = v44;
  }

  else
  {
    v44 = 0;
  }

  if (!v110)
  {
    v39 = (v39 - v46);
    v45 = v7;
  }

LABEL_94:
  v47 = v44 * v46;
  if ((v47 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_262:
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v7, v8, v9, v44, v43, v46);
  }

  v35 = v114;
  v48 = HIDWORD(v45);
  v49 = v43 + v47 + 8;
  while (v39 < v49 && (*&v8[8 * *v39] & 1) == 0)
  {
    v39 = (v39 + v45);
    v48 = (v48 + 1);
  }

  v112 = v125 & 0xFFFFFFFFFFFFFFFCLL;
  v113 = v45 | (v48 << 32);
LABEL_73:
  *v35 = v39;
LABEL_99:
  v128 = &v125;
  if ((v14 & 3u) > 1uLL)
  {
    if (v36 != 2)
    {
      goto LABEL_109;
    }

    v43 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v14 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      goto LABEL_109;
    }

    v46 = *v43;
    v44 = v43[1];
    v50 = v44 * v46;
    if ((v50 & 0xFFFFFFFF00000000) == 0)
    {
      v34 = v131;
      v14 = v43 + v50 + 8;
      v129 = v43;
      v130 = v46 | (v44 << 32);
      goto LABEL_108;
    }

    goto LABEL_262;
  }

  if (!v36)
  {
    v14 = 0;
    goto LABEL_108;
  }

  v51 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v51)
  {
    v14 = &v51[2 * *v51 + 2];
LABEL_108:
    *v34 = v14;
  }

LABEL_109:
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<true>::iteratorImpl(&v115, &v111, &v128);
  v128 = &v125;
  v55 = &v129;
  if (!v125)
  {
LABEL_112:
    v56 = 0;
    goto LABEL_113;
  }

  if ((v125 & 3) > 1)
  {
    if ((v125 & 3) == 2)
    {
      v100 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v125 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v102 = *v100;
        v101 = v100[1];
        v103 = v101 * v102;
        if ((v103 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v52, v53, v54, v101, v125 & 0xFFFFFFFFFFFFFFFCLL, v102);
        }

        v55 = v131;
        v56 = v100 + v103 + 8;
        v129 = v125 & 0xFFFFFFFFFFFFFFFCLL;
        v130 = v102 | (v101 << 32);
LABEL_113:
        *v55 = v56;
      }
    }
  }

  else
  {
    if ((v125 & 3) == 0)
    {
      goto LABEL_112;
    }

    if ((v125 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      v56 = (v125 & 0xFFFFFFFFFFFFFFFCLL) + 8 * *(v125 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      goto LABEL_113;
    }
  }

  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(v127, &v128);
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(v126, &v128);
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<true>::iteratorImpl(&v111, v127, v126);
  v16 = malloc_type_malloc(8 * (v21 + 1), 0x2004093837F09uLL);
  v38 = 0;
  while (1)
  {
    if (v115 != v111)
    {
      goto LABEL_116;
    }

    v61 = *v115;
    if (*v115)
    {
      if ((*v115 & 3) > 1)
      {
        if ((*v115 & 3) != 2)
        {
          goto LABEL_116;
        }

        v66 = v118;
        v67 = v114[0];
      }

      else
      {
        if ((v61 & 3) == 0)
        {
          goto LABEL_121;
        }

        v66 = v116;
        v67 = v112;
      }

      if (v66 != v67)
      {
        goto LABEL_116;
      }

      goto LABEL_161;
    }

LABEL_121:
    if (v116)
    {
      v62 = v116;
    }

    else
    {
      v62 = 0;
    }

    if (v62 != v112)
    {
      goto LABEL_116;
    }

LABEL_161:
    if (v115 != v119)
    {
      goto LABEL_214;
    }

    if (!v61)
    {
      break;
    }

    if ((*v115 & 3) > 1)
    {
      if ((*v115 & 3) != 2)
      {
        goto LABEL_214;
      }

      v94 = v118;
      v95 = v121;
    }

    else
    {
      if ((v61 & 3) == 0)
      {
        break;
      }

      v94 = v116;
      v95 = v120;
    }

    if (v94 == v95)
    {
      goto LABEL_218;
    }

LABEL_214:
    if (*(&v122 + 1))
    {
      v96 = *(&v122 + 1);
    }

    else
    {
      v96 = 0;
    }

    if (v96 == v114[6])
    {
      goto LABEL_218;
    }

LABEL_116:
    if (*(&v122 + 1))
    {
      v60 = *(&v122 + 1);
    }

    else
    {
      v60 = 0;
    }

    v16[v38] = v60;
    if (*(&v122 + 1))
    {
      v63 = *(&v122 + 1) + v122;
      *(&v122 + 1) = v63;
      ++DWORD1(v122);
      if (v63)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }
    }

    else
    {
      v64 = 0;
      HIDWORD(v122) = 0;
      *(&v122 + 4) = (DWORD1(v122) + 1);
    }

    ++v38;
    if (v64 != v124)
    {
      continue;
    }

    v65 = *v115;
    if (!*v115)
    {
      v116 = 0;
      goto LABEL_144;
    }

    if ((*v115 & 3) == 1)
    {
      v116 += 2;
      v65 = *v115;
      if (!*v115)
      {
        goto LABEL_144;
      }
    }

    else if ((v65 & 3) == 0)
    {
      v116 = 0;
    }

    if ((v65 & 3) == 2)
    {
      v68 = v118;
      v69 = HIDWORD(v117);
      v70 = (v118 + v117);
      v118 = v70;
      v72 = *v116;
      v71 = v116[1];
      v73 = v71 * v72;
      ++HIDWORD(v117);
      if ((v73 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v57, v58, v59, v71, v116, v72);
      }

      v74 = v116 + v73 + 8;
      if (v70 < v74)
      {
        v75 = v69 + 2;
        v76 = (v68 + 2 * v117);
        do
        {
          if (*(objc_debug_headerInfoRWs + 8 + 8 * *v70))
          {
            break;
          }

          v70 = (v70 + v117);
          v118 = v76;
          HIDWORD(v117) = v75++;
          v76 = (v76 + v117);
        }

        while (v70 < v74);
      }
    }

LABEL_144:
    list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::iteratorImpl<false>::skipEmptyLists(&v115);
    v77 = *v115;
    if (v115 != v119)
    {
      goto LABEL_145;
    }

    if (!v77)
    {
LABEL_152:
      if (v116)
      {
        v80 = v116;
      }

      else
      {
        v80 = 0;
      }

      if (v80 == v120)
      {
        continue;
      }

LABEL_145:
      if (v77)
      {
LABEL_146:
        v78 = *v115 & 3;
        if (v78 > 1)
        {
          if (v78 == 2)
          {
            v79 = (v118 + (*v118 >> 16));
          }

          else
          {
            v79 = 0;
          }
        }

        else
        {
          if (!v78)
          {
            goto LABEL_148;
          }

          v79 = *v116;
        }
      }

      else
      {
LABEL_148:
        v79 = v116;
      }

      v82 = *v79;
      v128 = (*v79 & 0xFFFCLL);
      v83 = v82 >> 31;
      v84 = (v79 + 1) & 0xFFFFFFFFFFFFFFFCLL;
      if (v79 < 0)
      {
        v83 = 2;
      }

      v85 = v83 | v84;
      *&v122 = v128;
      if (v83 | v84)
      {
        v85 = v83 | v84;
      }

      *(&v122 + 1) = v85;
      if (!*v115)
      {
LABEL_176:
        v86 = v116;
        if (v116)
        {
          goto LABEL_182;
        }

        goto LABEL_185;
      }

      if ((*v115 & 3) > 1)
      {
        if ((*v115 & 3) == 2)
        {
          v87 = (v118 + (*v118 >> 16));
          if (v87)
          {
            goto LABEL_184;
          }

          v86 = 0;
          goto LABEL_185;
        }

        v88 = 0;
        v127[0] = 0;
      }

      else
      {
        if ((*v115 & 3) == 0)
        {
          goto LABEL_176;
        }

        v86 = *v116;
        if (*v116)
        {
LABEL_182:
          if (v86)
          {
            v87 = v86;
LABEL_184:
            v86 = v87;
          }
        }

LABEL_185:
        v127[0] = v86;
        if (v86)
        {
          v88 = v86;
        }

        else
        {
          v88 = 0;
        }
      }

      entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::signedEnd(&v128, v88, v58, v59);
      v123 = v128;
      if (v129)
      {
        v89 = v129;
      }

      else
      {
        v89 = 0;
      }

      v124 = v89;
      if (*(&v122 + 1))
      {
        v90 = *(&v122 + 1);
        if (v89)
        {
          goto LABEL_194;
        }

LABEL_196:
        v91 = 0;
      }

      else
      {
        v90 = 0;
        if (!v89)
        {
          goto LABEL_196;
        }

LABEL_194:
        v91 = v89;
      }

      if (v90 != v91)
      {
        continue;
      }

      if (!*v115)
      {
LABEL_230:
        v104 = v116;
        goto LABEL_235;
      }

      if ((*v115 & 3) > 1)
      {
        if ((*v115 & 3) == 2)
        {
          if ((v118 + (*v118 >> 16)))
          {
            v104 = (v118 + (*v118 >> 16));
          }

          else
          {
            v104 = 0;
          }

          goto LABEL_235;
        }

        v104 = 0;
        v128 = 0;
      }

      else
      {
        if ((*v115 & 3) == 0)
        {
          goto LABEL_230;
        }

        v104 = *v116;
LABEL_235:
        v128 = v104;
      }

      _objc_fatal("Assertion failed: (%s) - empty list %p encountered during iteration", v57, v58, v59, "m != mEnd", v104);
    }

    if ((*v115 & 3) > 1)
    {
      if ((*v115 & 3) != 2)
      {
        goto LABEL_146;
      }

      v92 = v118;
      v93 = v121;
    }

    else
    {
      if ((v77 & 3) == 0)
      {
        goto LABEL_152;
      }

      v92 = v116;
      v93 = v120;
    }

    if (v92 != v93)
    {
      goto LABEL_146;
    }
  }

  if (v116)
  {
    v81 = v116;
  }

  else
  {
    v81 = 0;
  }

  if (v81 != v120)
  {
    goto LABEL_214;
  }

LABEL_218:
  v16[v38] = 0;
  if (outCount)
  {
LABEL_219:
    *outCount = v38;
  }

LABEL_220:
  v97 = *(StatusReg + 24);
  v98 = v97;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v98, 0, memory_order_release, memory_order_relaxed);
  if (v98 != v97)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v16;
}