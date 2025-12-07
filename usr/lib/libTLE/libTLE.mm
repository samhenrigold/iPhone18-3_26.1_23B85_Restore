void TLE::orArrayOpDeserializer(uint64_t a1@<X8>, const der_vm_context *a2@<X1>, _DWORD *a3@<X2>)
{
  v9 = 0;
  v7 = 0u;
  *v8 = 0u;
  TLE::opArrayOpDeserializer(a2, a3, &v7);
  if (v7)
  {
    *a1 = v7;
    *(a1 + 16) = v8[0];
    *(a1 + 24) = 0;
  }

  else
  {
    if (v9 != 1)
    {
      operator new();
    }

    v5 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }

    v6 = 8 * v9;
    if (v8[1] + v6 < v8[1] || HIDWORD(v6))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v4);
    }

    if (v6 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v4);
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a1 + 24), *v5);
  }

  if (v8[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v8[1], v9);
  }
}

void sub_29822ED94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, TLE::RefCounted **a14, unsigned int a15)
{
  if (a14)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a14, a15);
  }

  _Unwind_Resume(exception_object);
}

void TLE::opArrayOpDeserializer(const der_vm_context *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *a4 = 6;
    v5 = "factless operator disallowed for active fact";
    v6 = 44;
LABEL_11:
    *(a4 + 8) = v5;
    *(a4 + 16) = v6;
    return;
  }

  v8 = *&a2->lookup.index_count;
  v15 = *&a2->runtime;
  v16 = v8;
  v17 = *&a2->sorted;
  der_end = a2->var0.ccstate.der_end;
  if (der_vm_CEType_from_context() != 2)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *a4 = 3;
    v5 = "Got an unexpected type (not a sequence) when trying to read the array of matches.";
    v6 = 81;
    goto LABEL_11;
  }

  v9 = count_ce_elements(a2);
  if (!v9)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *a4 = 4;
    v5 = "The array of dependent operations is empty.";
    v6 = 43;
    goto LABEL_11;
  }

  v10 = v9;
  v21 = 0;
  if (HIDWORD(v9))
  {
    v11 = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v11 = malloc_type_malloc(8 * v9, 0x2000093837F09uLL);
    bzero(v11, 8 * v10);
  }

  v20 = v11;
  LODWORD(v21) = v10;
  *&v15 = 0;
  *(&v15 + 1) = &v15;
  *&v16 = 0x4002000000;
  *(&v16 + 1) = __Block_byref_object_copy_;
  *&v17 = __Block_byref_object_dispose_;
  *(&v17 + 1) = 0;
  der_end = 0;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0;
  der_vm_iterate_b();
  v12 = *(&v15 + 1) + 40;
  if (*(*(&v15 + 1) + 40))
  {
    *(a4 + 32) = 0;
    *(a4 + 24) = 0;
    v13 = *v12;
    *(a4 + 16) = *(v12 + 16);
    *a4 = v13;
  }

  else
  {
    TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(a4, &v20);
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  if (v20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v20, v21);
  }
}

void sub_29822F010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v20 = *(v18 - 80);
  if (v20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v20, *(v18 - 72));
  }

  _Unwind_Resume(a1);
}

void os_detail::panic_trapping_policy::trap(os_detail::panic_trapping_policy *this, const char *a2)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = this;
  __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
}

TLE::RefCounted **libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(TLE::RefCounted **a1, TLE::RefCounted *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (a2)
  {
    v4 = *(a2 + 1);
    if (v4 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "Attempted resurection of an object";
      __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
    }

    *(a2 + 1) = v4 + 1;
  }

  if (v3)
  {
    TLE::RefCounted::release(v3);
  }

  return a1;
}

{
  v4 = *a1;
  if (v4)
  {
    TLE::RefCounted::release(v4);
  }

  *a1 = a2;
  return a1;
}

TLE::RefCounted **libkern::intrusive_shared_ptr<TLE::OrOperation,TLE::RefCountPolicy>::reset(TLE::RefCounted **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

TLE::RefCounted **libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(TLE::RefCounted **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(TLE::RefCounted **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = 8 * a2;
    do
    {
      a1 = libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(a1) + 1;
      v3 -= 8;
    }

    while (v3);
  }

  free(v2);
}

void *TLE::RefCounted::release(void *this)
{
  v2 = this[1];
  if (v2 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Over-release of an object";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  v3 = v2 - 1;
  this[1] = v3;
  if (!v3)
  {
    v4 = *(*this + 8);

    return v4();
  }

  return this;
}

uint64_t count_ce_elements(const der_vm_context *a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  der_vm_iterate_b();
  v1 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_29822F31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZN3TLE21opArrayOpDeserializerERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE_block_invoke(void *a1, der_vm_context *a2)
{
  v25 = 0u;
  v26 = 0u;
  TLE::opTupleDeserializer(a1[6], a2 + 1, a1[7], &v25);
  if (v25)
  {
    v4 = 0;
    v5 = *(a1[4] + 8);
    *(v5 + 40) = v25;
    *(v5 + 56) = v26;
    goto LABEL_31;
  }

  v6 = a1[8];
  v7 = *(*(a1[5] + 8) + 24);
  v8 = *v6;
  if (*v6)
  {
    v9 = v8 + 8 * *(v6 + 2);
    v10 = v9 >= v8;
    v11 = v9 - v8;
    if (!v10 || HIDWORD(v11))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v3);
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v7 >= 0)
  {
    v12 = *(*(a1[5] + 8) + 24);
  }

  else
  {
    v12 = -v7;
  }

  v13 = (v7 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v7 >= 0)
  {
    v14 = 8 * v12;
  }

  else
  {
    v14 = -8 * v12;
  }

  if (v12 >> 61)
  {
    v15 = 1;
  }

  else
  {
    v15 = 8 * v12 > v13;
  }

  if (v15)
  {
    v16 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
    goto LABEL_34;
  }

  if (v14 != v14)
  {
    v16 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    goto LABEL_34;
  }

  v16 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
  if ((v14 & 0x80000000) != 0 || v14 + 8 > v11 || ((v10 = __CFADD__(v8, v14 & 0x7FFFFFF8), v17 = (v8 + (v14 & 0x7FFFFFF8)), !v10) ? (v18 = 0) : (v18 = 1), (v19 = v18 << 63 >> 63, v16 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v19 ^ v18) || v19 < 0))
  {
LABEL_34:
    os_detail::panic_trapping_policy::trap(v16, v3);
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v17, *(&v26 + 1));
  *(&v26 + 1) = 0;
  v20 = *(a1[5] + 8);
  v21 = *(v20 + 24);
  v22 = (((v21 == -1) << 63) >> 63) ^ (v21 == -1);
  if (v22)
  {
    v23 = *(a1[4] + 8);
    *(v23 + 40) = 10;
    *(v23 + 48) = "Array contains too many elements";
    *(v23 + 56) = 32;
  }

  else
  {
    *(v20 + 24) = v21 + 1;
  }

  v4 = v22 == 0;
LABEL_31:
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v26 + 1);
  return v4;
}

uint64_t TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  if (result + 24 != a2)
  {
    *(result + 24) = *a2;
    *(result + 32) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void TLE::opTupleDeserializer(uint64_t *result@<X0>, der_vm_context *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    v5 = "factless operator disallowed for active fact";
    v6 = 44;
  }

  else
  {
    v10 = *&a2->lookup.index_count;
    *&v14.runtime = *&a2->runtime;
    *&v14.lookup.index_count = v10;
    *&v14.sorted = *&a2->sorted;
    v14.var0.ccstate.der_end = a2->var0.ccstate.der_end;
    if (der_vm_CEType_from_context() == 2)
    {
      if (count_ce_elements(a2) == 2)
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        TLE::keyForContext(&v11);
        if (v11)
        {
          *a4 = v11;
          *(a4 + 16) = v12;
          *(a4 + 24) = 0;
          return;
        }

        memset(&v14, 0, sizeof(v14));
        der_vm_execute_nocopy();
        if (der_vm_CEType_from_context() == 1)
        {
          if (!CEBuffer_cmp())
          {
            TLE::andDeserializer(result, &v14, a3, a4);
            return;
          }

          if (!CEBuffer_cmp())
          {
            TLE::orDeserializer(result, &v14, a3, a4);
            return;
          }

          if (!CEBuffer_cmp())
          {
            TLE::optionalOpDeserializer(result, &v14, a4);
            return;
          }
        }

        else
        {
          if (der_vm_CEType_from_context() != 2)
          {
            *a4 = 0u;
            *(a4 + 16) = 0u;
            *a4 = 3;
            v5 = "Unexpected type in Array tuple";
            v6 = 30;
            goto LABEL_9;
          }

          if (!CEBuffer_cmp())
          {
            TLE::andArrayOpDeserializer(result, &v14, a3, a4);
            return;
          }

          if (!CEBuffer_cmp())
          {
            TLE::orArrayOpDeserializer(a4);
            return;
          }
        }

        *a4 = 0u;
        *(a4 + 16) = 0u;
        *a4 = 9;
        v5 = "Unexpected operator in Array tuple";
        v6 = 34;
      }

      else
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
        *a4 = 6;
        v5 = "Incorrect number of elements in operator Array tuple";
        v6 = 52;
      }
    }

    else
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *a4 = 6;
      v5 = "Non array element found in operator Array";
      v6 = 41;
    }
  }

LABEL_9:
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
}

uint64_t *TLE::keyForContext@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  der_vm_execute_nocopy();
  result = der_vm_CEType_from_context();
  if (result == 4)
  {
    result = der_vm_string_from_context();
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = result;
    v5 = 4;
  }

  else
  {
    a1[4] = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 3;
    a1[1] = "Expected operator string in Array tuple";
    v4 = 39;
    v5 = 2;
  }

  a1[v5] = v4;
  return result;
}

void TLE::andDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$and operator disallowed for active fact";
    *(a4 + 16) = 40;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v5 = *(a2 + 16);
    *&v9.runtime = *a2;
    *&v9.lookup.index_count = v5;
    *&v9.sorted = *(a2 + 32);
    v9.var0.ccstate.der_end = *(a2 + 48);
    TLE::Executor::getDependentOpsFromDictionary(a1, &v9, &v10);
    if (v10)
    {
      *a4 = v10;
      *(a4 + 16) = v11;
      *(a4 + 24) = 0;
    }

    else
    {
      if (v12 != 1)
      {
        operator new();
      }

      v7 = *(&v11 + 1);
      if (!*(&v11 + 1))
      {
        goto LABEL_16;
      }

      v8 = 8 * v12;
      if (*(&v11 + 1) + v8 < *(&v11 + 1) || HIDWORD(v8))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
      }

      if (v8 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      *a4 = 0u;
      *(a4 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
    }

    if (*(&v11 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v11 + 1), v12);
    }
  }
}

void sub_29822FAE8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void TLE::orDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$or operator disallowed for active fact";
    *(a4 + 16) = 39;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v5 = *(a2 + 16);
    *&v9.runtime = *a2;
    *&v9.lookup.index_count = v5;
    *&v9.sorted = *(a2 + 32);
    v9.var0.ccstate.der_end = *(a2 + 48);
    TLE::Executor::getDependentOpsFromDictionary(a1, &v9, &v10);
    if (v10)
    {
      *a4 = v10;
      *(a4 + 16) = v11;
      *(a4 + 24) = 0;
    }

    else
    {
      if (v12 != 1)
      {
        operator new();
      }

      v7 = *(&v11 + 1);
      if (!*(&v11 + 1))
      {
        goto LABEL_16;
      }

      v8 = 8 * v12;
      if (*(&v11 + 1) + v8 < *(&v11 + 1) || HIDWORD(v8))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
      }

      if (v8 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      *a4 = 0u;
      *(a4 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
    }

    if (*(&v11 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v11 + 1), v12);
    }
  }
}

void sub_29822FCB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void TLE::optionalOpDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  *v9 = 0u;
  v4 = *(a2 + 16);
  *&v7.runtime = *a2;
  *&v7.lookup.index_count = v4;
  *&v7.sorted = *(a2 + 32);
  v7.var0.ccstate.der_end = *(a2 + 48);
  TLE::Executor::getDependentOpsFromDictionary(a1, &v7, &v8);
  if (v8)
  {
    *a3 = v8;
    *(a3 + 16) = v9[0];
    *(a3 + 24) = 0;
  }

  else
  {
    if (v10 == 1)
    {
      v7.runtime = 0;
      if (v9[1])
      {
        v6 = 8 * v10;
        if (v9[1] + v6 < v9[1] || HIDWORD(v6))
        {
          os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v5);
        }

        if (v6 >= 8)
        {
          operator new();
        }
      }

      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v5);
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 6;
    *(a3 + 8) = "$optional only supports a single dependent operation";
    *(a3 + 16) = 52;
  }

  if (v9[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v9[1], v10);
  }
}

void sub_29822FE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, TLE::RefCounted **a20, int a21)
{
  if (a20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a20, a21);
  }

  _Unwind_Resume(exception_object);
}

void TLE::andArrayOpDeserializer(unint64_t a1@<X0>, const der_vm_context *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = 0;
  v8 = 0u;
  *v9 = 0u;
  TLE::opArrayOpDeserializer(a1, a2, a3, &v8);
  if (v8)
  {
    *a4 = v8;
    *(a4 + 16) = v9[0];
    *(a4 + 24) = 0;
  }

  else
  {
    if (v10 != 1)
    {
      operator new();
    }

    v6 = v9[1];
    if (!v9[1])
    {
      goto LABEL_14;
    }

    v7 = 8 * v10;
    if (v9[1] + v7 < v9[1] || HIDWORD(v7))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v5);
    }

    if (v7 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v5);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v6);
  }

  if (v9[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v9[1], v10);
  }
}

void sub_29822FFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, TLE::RefCounted **a14, int a15)
{
  if (a14)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a14, a15);
  }

  _Unwind_Resume(exception_object);
}

void **libkern::intrusive_shared_ptr<TLE::AndOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void TLE::Executor::getDependentOpsFromDictionary(uint64_t a1@<X0>, const der_vm_context *a2@<X1>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 8);
  *(a1 + 8) = v9 + 1;
  if ((v9 + 1) >= 6)
  {
    *(a1 + 8) = v9;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
    *a7 = 8;
    v10 = "Constraint is too deeply nested. Failing to avoid recursion overflow";
    v11 = 68;
LABEL_11:
    *(a7 + 8) = v10;
    *(a7 + 16) = v11;
    return;
  }

  v13 = *&a2->lookup.index_count;
  v21 = *&a2->runtime;
  v22 = v13;
  v23 = *&a2->sorted;
  der_end = a2->var0.ccstate.der_end;
  if (der_vm_CEType_from_context() != 1)
  {
    --*(a1 + 8);
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
    *a7 = 3;
    v10 = "Got an unexpected type (not a dictionary) when trying to generate dependent operations for evaluation.";
    v11 = 102;
    goto LABEL_11;
  }

  v14 = count_ce_elements(a2);
  if (!v14)
  {
    --*(a1 + 8);
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
    *a7 = 4;
    v10 = "The dictionary of dependent operations is empty.";
    v11 = 48;
    goto LABEL_11;
  }

  v15 = v14;
  v27 = 0;
  if (HIDWORD(v14))
  {
    v16 = 0;
    LODWORD(v15) = 0;
  }

  else
  {
    v16 = malloc_type_malloc(8 * v14, 0x2000093837F09uLL);
    bzero(v16, 8 * v15);
  }

  v26 = v16;
  LODWORD(v27) = v15;
  *&v21 = 0;
  *(&v21 + 1) = &v21;
  *&v22 = 0x4002000000;
  *(&v22 + 1) = __Block_byref_object_copy_;
  *&v23 = __Block_byref_object_dispose_;
  *(&v23 + 1) = 0;
  der_end = 0;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v20[3] = 0;
  der_vm_iterate_b();
  v17 = *(&v21 + 1) + 40;
  v18 = *(*(&v21 + 1) + 40);
  --*(a1 + 8);
  if (v18)
  {
    *(a7 + 32) = 0;
    *(a7 + 24) = 0;
    v19 = *v17;
    *(a7 + 16) = *(v17 + 16);
    *a7 = v19;
  }

  else
  {
    TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(a7, &v26);
  }

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);
  if (v26)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v26, v27);
  }
}

void sub_2982302D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v22 = *(v20 - 104);
  if (v22)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v22, *(v20 - 96));
  }

  _Unwind_Resume(a1);
}

BOOL ___ZN3TLE8Executor29getDependentOpsFromDictionaryE14der_vm_contextRKNS_14FactDefinitionEbmPK8CEBuffer_block_invoke(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x29EDCA608];
  v85 = *(a1 + 48);
  memset(v93, 0, 40);
  TLE::keyForContext(v93);
  if (LODWORD(v93[0]))
  {
    result = 0;
    v4 = *(*(a1 + 32) + 8);
    *(v4 + 40) = v93[0];
    *(v4 + 56) = *&v93[1];
    return result;
  }

  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  v5 = *(a2 + 72);
  v94[0] = *(a2 + 56);
  v94[1] = v5;
  v95 = *(a2 + 88);
  v96 = *(a2 + 104);
  der_vm_execute_nocopy();
  if (TLE::matchRestrictList(&v93[1] + 1, *(a1 + 56), *(a1 + 64)))
  {
    result = 0;
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 40) = 6;
    v8 = "Unexpected key for parsing context";
    v9 = 34;
LABEL_5:
    *(v7 + 48) = v8;
    *(v7 + 56) = v9;
    return result;
  }

  if (**(&v93[1] + 1) == 36)
  {
    v10 = TLE::operations;
    v11 = &TLE::operations[3 * dword_2A13A8B98];
    v12 = 24 * dword_2A13A8B98;
    if (v11 < TLE::operations || HIDWORD(v12))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
    }

    v14 = (v11 - TLE::operations) >> 64;
    v13 = 24 * dword_2A13A8B98;
    if (v13 >= 0xFFFFFFFF80000000)
    {
      LOBYTE(v14) = v14 + 1;
    }

    *(&v15 + 1) = v14 & 1;
    *&v15 = v13 + 0x80000000;
    if ((v15 >> 32))
    {
      os_detail::panic_trapping_policy::trap("The offset of the pointer inside its valid memory range can't be represented using int32_t", v6);
    }

    v16 = TLE::operations + v13;
    if (__CFADD__(TLE::operations, v13))
    {
      v17 = (v13 >> 63) + 1;
    }

    else
    {
      v17 = v13 >> 63;
    }

    v19 = v17 << 63 >> 63 != v17 || v17 << 63 >> 63 == -1;
    while (1)
    {
      v20 = v10 + (v12 >> 32);
      if (__CFADD__(v10, v12 >> 32))
      {
        v21 = (v12 >> 63) + 1;
      }

      else
      {
        v21 = v12 >> 63;
      }

      v22 = v21 << 63 >> 63;
      if (v22 != v21 || v22 < 0)
      {
        os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v6);
      }

      if (v19)
      {
        os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v6);
      }

      if (v20 == v16)
      {
        goto LABEL_77;
      }

      if (v12 < 0 || HIDWORD(v12) + 24 > v12)
      {
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      if (!CEBuffer_cmp())
      {
        break;
      }

      if (HIDWORD(v12) - 2147483624 < 0xFFFFFFFF00000000)
      {
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v6);
      }

      v12 = (v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x1800000000;
    }

    memset(v94, 0, sizeof(v94));
    (*(v20 + 2))(v94, v85, &v89, *(a1 + 72));
    if (LODWORD(v94[0]))
    {
      v25 = *(*(a1 + 32) + 8);
      v26 = v94[0];
      goto LABEL_42;
    }

    v28 = *(a1 + 80);
    v29 = *(*(*(a1 + 40) + 8) + 24);
    v30 = *v28;
    if (*v28)
    {
      v31 = v30 + 8 * *(v28 + 2);
      v32 = v31 >= v30;
      v33 = v31 - v30;
      if (!v32 || HIDWORD(v33))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v27);
      }
    }

    else
    {
      LODWORD(v33) = 0;
    }

    if (v29 >= 0)
    {
      v42 = *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v42 = -v29;
    }

    v43 = (v29 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v29 >= 0)
    {
      v44 = 8 * v42;
    }

    else
    {
      v44 = -8 * v42;
    }

    if (v42 >> 61)
    {
      v45 = 1;
    }

    else
    {
      v45 = 8 * v42 > v43;
    }

    if (v45)
    {
      v46 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
    }

    else if (v44 == v44)
    {
      v46 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
      if ((v44 & 0x80000000) == 0 && v44 + 8 <= v33)
      {
        v32 = __CFADD__(v30, v44 & 0x7FFFFFF8);
        v47 = (v30 + (v44 & 0x7FFFFFF8));
        v48 = v32;
        v49 = v48 << 63 >> 63;
        v46 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.";
        if (v49 == v48 && (v49 & 0x8000000000000000) == 0)
        {
          libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v47, *(&v94[1] + 1));
          *(&v94[1] + 1) = 0;
          libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v94[1] + 1);
LABEL_77:
          v36 = a1;
          v50 = *(a1 + 80);
          v51 = *(*(a1 + 40) + 8);
          v52 = *(v51 + 24);
          v53 = *v50;
          if (*v50)
          {
            v54 = v53 + 8 * *(v50 + 2);
            v32 = v54 >= v53;
            v55 = v54 - v53;
            if (!v32 || HIDWORD(v55))
            {
              os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
            }
          }

          else
          {
            LODWORD(v55) = 0;
          }

          if (v52 >= 0)
          {
            v56 = *(v51 + 24);
          }

          else
          {
            v56 = -v52;
          }

          if (v52 >= 0)
          {
            v57 = 8 * v56;
          }

          else
          {
            v57 = -8 * v56;
          }

          if (v56 >> 61)
          {
            v58 = 1;
          }

          else
          {
            v58 = 8 * v56 > (v52 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v58)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow", v6);
          }

          if (v57 != v57)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v6);
          }

          if ((v57 & 0x80000000) != 0 || v57 + 8 > v55)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
          }

          v32 = __CFADD__(v53, v57 & 0x7FFFFFF8);
          v59 = (v53 + (v57 & 0x7FFFFFF8));
          v60 = v32;
          v61 = v60 << 63 >> 63;
          if (v61 != v60 || v61 < 0)
          {
            os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v6);
          }

          if (!*v59)
          {
            *(v94 + 4) = *(&v93[1] + 8);
            operator new();
          }

          goto LABEL_102;
        }
      }
    }

    else
    {
      v46 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    }

    os_detail::panic_trapping_policy::trap(v46, v27);
  }

  if (*(a1 + 88) != 1)
  {
    result = 0;
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 40) = 6;
    v8 = "Fact not allowed in context";
    v9 = 27;
    goto LABEL_5;
  }

  if (((*(**v85 + 32))(*v85, *(&v93[1] + 1), *&v93[2]) & 1) == 0)
  {
    *(v94 + 4) = *(&v93[1] + 8);
    operator new();
  }

  v87 = 0;
  v88 = 0uLL;
  (*(**v85 + 16))(&v87);
  v94[0] = v89;
  v94[1] = v90;
  v95 = v91;
  v96 = v92;
  v23 = der_vm_CEType_from_context();
  if (v23 != 1)
  {
    if (v23 == v87)
    {
      v34 = TLE::opForContext(v23, &v89);
      v35 = v34;
      if (v34)
      {
        *(v34 + 16) = v88;
        *&v94[0] = v34;
        v36 = a1;
        v37 = *(a1 + 80);
        v38 = *(*(*(a1 + 40) + 8) + 24);
        v39 = *v37;
        if (*v37)
        {
          v40 = v39 + 8 * *(v37 + 2);
          v32 = v40 >= v39;
          v41 = v40 - v39;
          if (!v32 || HIDWORD(v41))
          {
            os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v34);
          }
        }

        else
        {
          LODWORD(v41) = 0;
        }

        if (v38 >= 0)
        {
          v79 = *(*(*(a1 + 40) + 8) + 24);
        }

        else
        {
          v79 = -v38;
        }

        if (v38 >= 0)
        {
          v80 = 8 * v79;
        }

        else
        {
          v80 = -8 * v79;
        }

        v81 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
        if (!(v79 >> 61) && 8 * v79 <= (v38 >> 63) + 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v80 == v80)
          {
            v81 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
            if ((v80 & 0x80000000) == 0 && v80 + 8 <= v41)
            {
              v32 = __CFADD__(v39, v80 & 0x7FFFFFF8);
              v82 = (v39 + (v80 & 0x7FFFFFF8));
              v83 = v32;
              v84 = v83 << 63 >> 63;
              v81 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.";
              if (v84 == v83 && (v84 & 0x8000000000000000) == 0)
              {
                libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v82, v35);
                *&v94[0] = 0;
                v78 = v94;
                goto LABEL_151;
              }
            }
          }

          else
          {
            v81 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
          }
        }

        os_detail::panic_trapping_policy::trap(v81, v35);
      }

      v64 = *(*(a1 + 32) + 8);
      *(v64 + 40) = 3;
      v65 = "Unexpected type of an fact declaration.";
      v66 = 39;
    }

    else
    {
      v64 = *(*(a1 + 32) + 8);
      *(v64 + 40) = 3;
      v65 = "Unexpected type of an operation declaration.";
      v66 = 44;
    }

    *(v64 + 48) = v65;
    *(v64 + 56) = v66;
    return 0;
  }

  memset(v94, 0, sizeof(v94));
  TLE::factOpDeserializer(v85, &v89, &v87, v94);
  if (LODWORD(v94[0]))
  {
    v25 = *(*(a1 + 32) + 8);
    v26 = v94[0];
LABEL_42:
    *(v25 + 40) = v26;
    *(v25 + 56) = *&v94[1];
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v94[1] + 1);
    return 0;
  }

  v36 = a1;
  v67 = *(a1 + 80);
  v68 = *(*(*(a1 + 40) + 8) + 24);
  v69 = *v67;
  if (*v67)
  {
    v70 = v69 + 8 * *(v67 + 2);
    v32 = v70 >= v69;
    v71 = v70 - v69;
    if (!v32 || HIDWORD(v71))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v24);
    }
  }

  else
  {
    LODWORD(v71) = 0;
  }

  if (v68 >= 0)
  {
    v72 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v72 = -v68;
  }

  if (v68 >= 0)
  {
    v73 = 8 * v72;
  }

  else
  {
    v73 = -8 * v72;
  }

  v74 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
  if (v72 >> 61 || 8 * v72 > (v68 >> 63) + 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_166;
  }

  if (v73 != v73)
  {
    v74 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    goto LABEL_166;
  }

  if ((v74 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", (v73 & 0x80000000) != 0) || v73 + 8 > v71 || ((v32 = __CFADD__(v69, v73 & 0x7FFFFFF8), v75 = (v69 + (v73 & 0x7FFFFFF8)), !v32) ? (v76 = 0) : (v76 = 1), (v77 = v76 << 63 >> 63, v74 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v77 ^ v76) || v77 < 0))
  {
LABEL_166:
    os_detail::panic_trapping_policy::trap(v74, v24);
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v75, *(&v94[1] + 1));
  *(&v94[1] + 1) = 0;
  v78 = &v94[1] + 1;
LABEL_151:
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v78);
  v51 = *(*(v36 + 40) + 8);
  v52 = *(v51 + 24);
LABEL_102:
  v62 = (((v52 == -1) << 63) >> 63) ^ (v52 == -1);
  if (v62)
  {
    v63 = *(*(v36 + 32) + 8);
    *(v63 + 40) = 10;
    *(v63 + 48) = "Too many elements in dictionary";
    *(v63 + 56) = 31;
  }

  else
  {
    *(v51 + 24) = v52 + 1;
  }

  return v62 == 0;
}

void sub_298230E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL TLE::matchRestrictList(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2 - 1;
  v4 = a3 + 8;
  do
  {
    v5 = CEBuffer_cmp();
    result = v5 == 0;
    if (v5)
    {
      v7 = v3 == 0;
    }

    else
    {
      v7 = 1;
    }

    --v3;
    v4 += 16;
  }

  while (!v7);
  return result;
}

void **libkern::intrusive_shared_ptr<TLE::ConstErrorOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void TLE::factOpDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v10 = 0u;
  *v11 = 0u;
  v5 = *(a2 + 16);
  *&v9.runtime = *a2;
  *&v9.lookup.index_count = v5;
  *&v9.sorted = *(a2 + 32);
  v9.var0.ccstate.der_end = *(a2 + 48);
  TLE::Executor::getDependentOpsFromDictionary(a1, &v9, a3, 0, 0, 0, &v10);
  if (v10)
  {
    *a4 = v10;
    *(a4 + 16) = v11[0];
    *(a4 + 24) = 0;
  }

  else if (v12 == 1)
  {
    v7 = v11[1];
    if (!v11[1])
    {
      goto LABEL_14;
    }

    v8 = 8 * v12;
    if (v11[1] + v8 < v11[1] || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
    }

    if (v8 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "There should only be one operation to match a fact";
    *(a4 + 16) = 50;
  }

  if (v11[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v11[1], v12);
  }
}

void sub_29823109C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, TLE::RefCounted **a20, int a21)
{
  if (a20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a20, a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TLE::opForContext(int a1, __int128 *a2)
{
  if (a1 > 4)
  {
    if (a1 == 6)
    {
      operator new();
    }

    if (a1 == 5)
    {
      operator new();
    }
  }

  else
  {
    if (a1 == 3)
    {
      operator new();
    }

    if (a1 == 4)
    {
      operator new();
    }
  }

  return 0;
}

void *_ZN3TLE12BinaryDataOpI8CEBufferXtlNS_3__8EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = (*(*a2 + 24))(v5, a2, a1[2], a1[3]);
  if (LODWORD(v5[0]) == 6)
  {
    result = CEBuffer_cmp();
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = result == 0;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected data)";
    *a3 = 3;
    *(a3 + 16) = 52;
  }

  return result;
}

void _ZN3TLE12BinaryDataOpI8CEBufferXtlNS_3__8EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void TLE::RefCounted::~RefCounted(TLE::RefCounted *this)
{
  *this = &unk_2A1EAEC68;
  if (*(this + 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "RefCounted object destroyed, but is not fully released";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }
}

{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

void *_ZN3TLE11BinaryStrOpI8CEBufferXtlNS_3__7EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = (*(*a2 + 24))(v5, a2, a1[2], a1[3]);
  if (LODWORD(v5[0]) == 4)
  {
    result = CEBuffer_cmp();
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = result == 0;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected a string)";
    *a3 = 3;
    *(a3 + 16) = 56;
  }

  return result;
}

void _ZN3TLE11BinaryStrOpI8CEBufferXtlNS_3__7EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__6EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) == a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__6EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void *_ZN3TLE11BinaryIntOpIbXtlNS_3__5EEEE7ExecuteERNS_12EncyclopediaE@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  result = (*(*a2 + 24))(&v9, a2, *(a1 + 16), *(a1 + 24));
  if (v9 == 3 || v9 == 5)
  {
    v7 = *(a1 + 32);
    v8 = *(&v10 + 1) == 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v8 ^ v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIbXtlNS_3__5EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

__n128 TLE::ConstErrorOperation::Execute@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u8[8] = 0;
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

void TLE::ConstErrorOperation::~ConstErrorOperation(TLE::ConstErrorOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

BOOL ___ZL17count_ce_elementsRK14der_vm_context_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 24);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  v5 = v3;
  v6 = (v5 << 63 >> 63) ^ v5;
  if (!v6)
  {
    *(v1 + 24) = v4;
  }

  return v6 == 0;
}

void TLE::queryOpDeserializer(_DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 1;
    der_vm_iterate_b();
    if (v5[3])
    {
      operator new();
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 6;
    *(a3 + 8) = "$query deserialization failed since it has an invalid query definition";
    *(a3 + 16) = 70;
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    *(a3 + 8) = "Got an unexpected type (not a dictionary) when trying to generate a query operation.";
    *(a3 + 16) = 84;
  }
}

void sub_29823198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3TLE19queryOpDeserializerERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) == 2 && count_ce_elements((a2 + 56)) == 2)
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__4EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__4EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = (a1[4] & ~*(&v9 + 1)) == 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__4EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__3EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__3EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) >= a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__3EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__2EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__2EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) > a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__2EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__1EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__1EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) <= a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__1EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__0EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__0EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) < a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__0EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x29C2839D0);
}

void TLE::inDeserializer(_DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 > 6u || ((1 << *a2) & 0x58) == 0)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    v5 = "Got an unexpected type (not an integer, string or data) when trying to generate an In operation.";
    v6 = 96;
  }

  else
  {
    if (der_vm_CEType_from_context() == 2)
    {
      operator new();
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    v5 = "Got an unexpected type (not a sequence) when trying to read the array of matches.";
    v6 = 81;
  }

  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
}

uint64_t TLE::LWCR::LWCR(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 57) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

{
  *(this + 80) = 0;
  *(this + 57) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  return this;
}

char *TLE::LWCR::requirements(TLE::LWCR *this)
{
  v1 = this + 24;
  if (der_vm_context_is_valid())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t TLE::LWCR::loadFromCE@<X0>(TLE::LWCR *this@<X0>, CEQueryContext *a2@<X1>, uint64_t a3@<X8>)
{
  runtime = a2->der_context.runtime;
  result = der_vm_select_int_for_key();
  if (!result || (result = der_vm_select_int_for_key(), (result & 1) == 0))
  {
    v9 = *(runtime + 3);
    if (v9)
    {
      result = v9(runtime, "[%s]: %s\n", "loadFromCE", "LWCR: invalid version / compatible version fields");
    }

    *a3 = 7;
    v7 = "LWCRs are not encoded correctly";
    v8 = 31;
    goto LABEL_8;
  }

  if (*(this + 1) >= 2)
  {
    *a3 = 6;
    v7 = "This LWCR is not compatible with this runtime";
    v8 = 45;
LABEL_8:
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    return result;
  }

  result = der_vm_select_int_for_key();
  if (result && (*(this + 2) & 0x8000000000000000) != 0)
  {
    *a3 = 7;
    v7 = "LWCRs constraint category cannot be less that zero";
    v8 = 50;
    goto LABEL_8;
  }

  der_vm_execute_nocopy();
  if (der_vm_context_is_valid())
  {
    result = der_vm_CEType_from_context();
    if (result != 1)
    {
      *a3 = 7;
      v7 = "LWCRs 'requirements' field is not a dictionary";
      v8 = 46;
      goto LABEL_8;
    }
  }

  if (!*(this + 2))
  {
    result = der_vm_context_is_valid();
    if ((result & 1) == 0)
    {
      *a3 = 7;
      v7 = "LWCRs do not specify a constraint category or explicit requirements";
      v8 = 67;
      goto LABEL_8;
    }
  }

  *&v10 = 0;
  result = der_vm_context_is_valid();
  if (result)
  {
    result = CEConjureContextFromDER();
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = v10;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

void TLE::Executor::getOperationsFromCE(TLE::Executor *this@<X0>, CEQueryContext *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *&a2->der_context.lookup.index_count;
    *&v8.runtime = *&a2->der_context.runtime;
    *&v8.lookup.index_count = v4;
    *&v8.sorted = *&a2->der_context.sorted;
    v8.var0.ccstate.der_end = a2->der_context.var0.ccstate.der_end;
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    TLE::Executor::getDependentOpsFromDictionary(this, &v8, &v9);
    if (v9)
    {
      *a3 = v9;
      *(a3 + 16) = v10;
      *(a3 + 24) = 0;
    }

    else
    {
      if (v11 != 1)
      {
        operator new();
      }

      v6 = *(&v10 + 1);
      if (!*(&v10 + 1))
      {
        goto LABEL_16;
      }

      v7 = 8 * v11;
      if (*(&v10 + 1) + v7 < *(&v10 + 1) || HIDWORD(v7))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v5);
      }

      if (v7 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v5);
      }

      *a3 = 0u;
      *(a3 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a3 + 24), *v6);
    }

    if (*(&v10 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v10 + 1), v11);
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 2;
    *(a3 + 8) = "Null query context";
    *(a3 + 16) = 18;
  }
}

void sub_298232AA0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void *TLE::AndOperation::Execute@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 32);
  v5 = (a1 + 32);
  v6 = v7;
  if (v7)
  {
    v8 = 8 * *(a1 + 40);
    if (v6 + v8 < v6 || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(v5, a2);
  v12 = v11 >> 63;
  v13 = result + (v11 >> 32);
  if (__CFADD__(result, v11 >> 32))
  {
    ++v12;
  }

  v15 = v12 << 63 >> 63 != v12 || v12 << 63 >> 63 == -1;
  while (1)
  {
    v16 = (v6 + (v9 >> 32));
    if (__CFADD__(v6, v9 >> 32))
    {
      v17 = (v9 >> 63) + 1;
    }

    else
    {
      v17 = v9 >> 63;
    }

    v18 = v17 << 63 >> 63;
    if (v18 != v17 || v18 < 0 || v15)
    {
      os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v11);
    }

    if (v16 == v13)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
      return result;
    }

    if (v9 < 0 || HIDWORD(v9) + 8 > v9)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v11);
    }

    v19 = 0u;
    v20 = 0u;
    result = (*(**v16 + 16))(&v19);
    if (v19)
    {
      *(a3 + 24) = 0;
      *a3 = v19;
      *(a3 + 16) = v20;
      return result;
    }

    if ((BYTE8(v20) & 1) == 0)
    {
      break;
    }

    if (HIDWORD(v9) - 2147483640 < 0xFFFFFFFF00000000)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v11);
    }

    v9 = (v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x800000000;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  return result;
}

unint64_t libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (result)
  {
    v4 = result + 8 * *(a1 + 2);
    v5 = "The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range";
    if (v4 < result || (v4 - result) >> 32)
    {
LABEL_9:
      os_detail::panic_trapping_policy::trap(v5, a2);
    }

    if ((((v4 - __PAIR128__(v4, result)) >> 64) & 1) != (v4 - result) >> 63 || v4 - result != v4 - result)
    {
      v5 = "The offset of the pointer inside its valid memory range can't be represented using int32_t";
      goto LABEL_9;
    }
  }

  return result;
}

void TLE::AndOperation::~AndOperation(TLE::AndOperation *this)
{
  *this = &unk_2A1EAEBA8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

{
  *this = &unk_2A1EAEBA8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);
}

unint64_t TLE::OrOperation::Execute@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = v6;
  if (v6)
  {
    v7 = v5 + 8 * *(a1 + 40);
    v8 = v7 - v5;
    if (v7 < v5 || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(v4, a2);
  v12 = v11 >> 63;
  v13 = result + (v11 >> 32);
  if (__CFADD__(result, v11 >> 32))
  {
    ++v12;
  }

  v15 = v12 << 63 >> 63 != v12 || v12 << 63 >> 63 == -1;
  while (1)
  {
    v16 = v5 + (v9 >> 32);
    if (__CFADD__(v5, v9 >> 32))
    {
      v17 = (v9 >> 63) + 1;
    }

    else
    {
      v17 = v9 >> 63;
    }

    v18 = v17 << 63 >> 63;
    if (v18 != v17 || v18 < 0 || v15)
    {
      os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v11);
    }

    if (v16 == v13)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 24) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    if (v9 < 0 || HIDWORD(v9) + 8 > v9)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v11);
    }

    v20 = 0u;
    v21 = 0u;
    result = (*(**v16 + 16))(&v20);
    if (v20)
    {
      *(a3 + 24) = 0;
      *a3 = v20;
      *(a3 + 16) = v21;
      return result;
    }

    result = (*(**v16 + 24))();
    if ((result & 1) == 0)
    {
      if (BYTE8(v21))
      {
        break;
      }
    }

    if (HIDWORD(v9) - 2147483640 < 0xFFFFFFFF00000000)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v11);
    }

    v9 = (v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x800000000;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void TLE::OrOperation::~OrOperation(TLE::OrOperation *this)
{
  *this = &unk_2A1EAEBD8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

{
  *this = &unk_2A1EAEBD8;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);
}

void TLE::InOperation::Execute(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  (*(*a2 + 24))(v5, a2, *(a1 + 16), *(a1 + 24));
  if (LODWORD(v5[0]) == 3 || LODWORD(v5[0]) == 4 || LODWORD(v5[0]) == 6)
  {
    der_vm_iterate_b();
    v4 = v8;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = *(v4 + 24);
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "In Operation expected the Fact to be an integer, string or data";
    *a3 = 3;
    *(a3 + 16) = 63;
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) != 3)
  {
    return 1;
  }

  v3 = der_vm_integer_from_context();
  result = 1;
  if (v3 == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke_2(void *a1, uint64_t a2)
{
  if (*(a2 + 116) != 4)
  {
    return 1;
  }

  der_vm_string_from_context();
  v3 = CEBuffer_cmp();
  result = 1;
  if (!v3)
  {
    *(*(a1[4] + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke_3(void *a1, uint64_t a2)
{
  if (*(a2 + 116) != 6)
  {
    return 1;
  }

  der_vm_data_from_context();
  v3 = CEBuffer_cmp();
  result = 1;
  if (!v3)
  {
    *(*(a1[4] + 8) + 24) = 1;
    return 0;
  }

  return result;
}

void TLE::InOperation::~InOperation(TLE::InOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

void TLE::QueryOperation::Execute(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x29EDCA608];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  (*(*a2 + 24))(&v24, a2, *(a1 + 16), *(a1 + 24));
  if (v24 != 1)
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Query Operation expected the Fact to be a CoreEntitlements dictionary";
    *a3 = 3;
    *(a3 + 16) = 69;
    return;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x6002000000;
  v19[3] = __Block_byref_object_copy__33;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19[4] = __Block_byref_object_dispose__34;
  v23 = 0;
  v5 = *(*(&v25 + 1) + 16);
  v4 = *(*(&v25 + 1) + 32);
  v6 = *(*(&v25 + 1) + 48);
  v20 = **(&v25 + 1);
  v23 = v6;
  v22 = v4;
  v21 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v7 = der_vm_iterate_b();
  v8 = v12 + 5;
  if (*(v12 + 10))
  {
    *(a3 + 24) = 0;
    *a3 = *v8;
    v9 = v8[2];
  }

  else
  {
    if (v7 == *MEMORY[0x29EDC9178])
    {
      is_valid = der_vm_context_is_valid();
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = is_valid;
      goto LABEL_8;
    }

    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Attempted to execute a non-iterable query";
    *a3 = 6;
    v9 = 41;
  }

  *(a3 + 16) = v9;
LABEL_8:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v19, 8);
}

void sub_29823377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__33(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3TLE14QueryOperation7ExecuteERNS_12EncyclopediaE_block_invoke(uint64_t a1, uint64_t a2)
{
  der_vm_execute_nocopy();
  der_vm_execute_nocopy();
  v3 = der_vm_integer_from_context() & 0xBFFFFFFFFFFFFFFFLL;
  **(a1 + 48) = v3;
  if (v3 > 0xB)
  {
    goto LABEL_12;
  }

  if (((1 << v3) & 0x35A) == 0)
  {
    if (((1 << v3) & 0xC80) != 0)
    {
      *(*(a1 + 48) + 8) = der_vm_integer_from_context();
      goto LABEL_8;
    }

    if (v3 == 5)
    {
      *(*(a1 + 48) + 8) = der_vm_BOOL_from_context();
      goto LABEL_8;
    }

LABEL_12:
    result = 0;
    v10 = *(*(a1 + 32) + 8);
    *(v10 + 40) = 1;
    *(v10 + 48) = "Attempted to execute unknown CoreEntitlements operation";
    *(v10 + 56) = 55;
    return result;
  }

  v4 = der_vm_string_from_context();
  v5 = *(a1 + 48);
  *(v5 + 8) = v4;
  *(v5 + 16) = v6;
  **(a1 + 48) |= 0x4000000000000000uLL;
LABEL_8:
  v7 = *(*(a1 + 40) + 8);
  v14 = *(v7 + 88);
  v11 = *(v7 + 40);
  v12 = *(v7 + 56);
  v13 = *(v7 + 72);
  if (der_vm_context_is_valid())
  {
    der_vm_execute_nocopy();
    v8 = *(*(a1 + 40) + 8);
    *(v8 + 40) = v11;
    *(v8 + 56) = v12;
    *(v8 + 72) = v13;
    *(v8 + 88) = v14;
  }

  return 1;
}

void TLE::QueryOperation::~QueryOperation(TLE::QueryOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

void *TLE::OptionalOperation::Execute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0u;
  v8 = 0u;
  result = (*(**(a1 + 32) + 16))(&v7);
  if (v7)
  {
    if (v7 != 5 && v7 != 1)
    {
      *(a2 + 24) = 0;
      *a2 = v7;
      *(a2 + 16) = v8;
      return result;
    }

    v6 = 1;
    *(a1 + 40) = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = BYTE8(v8);
  }

  *(a2 + 24) = v6;
  return result;
}

void TLE::OptionalOperation::~OptionalOperation(TLE::RefCounted **this)
{
  *this = &unk_2A1EAEB48;
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(this + 4);
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x29C2839D0);
}

{
  *this = &unk_2A1EAEB48;
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(this + 4);

  TLE::RefCounted::~RefCounted(this);
}

void sub_298233D2C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = LWCR;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_298234404(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = LWCRFact;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2982349D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, ...)
{
  va_start(va, a30);
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((v32 + 24));
  TLE::CallbackEncyclopedia::~CallbackEncyclopedia(va);

  _Unwind_Resume(a1);
}

void TLE::CallbackEncyclopedia::~CallbackEncyclopedia(id *this)
{
}

{

  JUMPOUT(0x29C2839D0);
}

{
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}