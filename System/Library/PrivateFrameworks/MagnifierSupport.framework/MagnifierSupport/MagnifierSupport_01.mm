void sub_257BC9A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__split_buffer<std::vector<float>>::__construct_at_end(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t std::unordered_set<int>::unordered_set<std::__wrap_iter<int const*>>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, v5, v5);
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257BC9E2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279853FD8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<OUBox3d>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257BC9F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t **std::set<int>::set[abi:ne200100]<std::__wrap_iter<int *>>(uint64_t **a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(a1, v4, v6, v6);
      ++v6;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v4 = *std::__tree<int>::__find_equal<int>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<int>::__find_equal<int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::vector<std::vector<int>>::__append(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<int>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<float>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_257BCA728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__split_buffer<std::vector<int>>::__construct_at_end(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_257BCC4FC(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t _s16MagnifierSupport14MAGOutputEventV23UserCoachingInstructionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t sub_257BCC68C(uint64_t a1)
{
  v2 = *v1;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v2);
  return sub_257ED0800();
}

void sub_257BCC7E0(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return;
    }

LABEL_7:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_257ECF500();
    return;
  }

  if (a1 != 2)
  {
    goto LABEL_7;
  }

  v1 = sub_257ECF4C0();
  v9[4] = sub_257E5BD88;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_257E5BE70;
  v9[3] = &block_descriptor;
  v2 = _Block_copy(v9);
  v3 = AXLocStringForDeviceVariant();
  _Block_release(v2);

  if (v3)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257BCCA6C(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

id sub_257BCCBB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v39 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v10 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v11, v12, v13, v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v40 = *(v17 - 8);
  v41 = v17;
  *&v22 = MEMORY[0x28223BE20](v17, v18, v19, v20, v21).n128_u64[0];
  v24 = &v39 - v23;
  v43.receiver = v1;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_viewDidLoad, v22);
  v25 = *&v1[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_tableView];
  [v25 setDataSource_];
  [v25 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = sub_257ECF4C0();
  [v25 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v27];

  type metadata accessor for UIStepperLengthCell(0);
  v28 = swift_getObjCClassFromMetadata();
  v29 = sub_257ECF4C0();
  [v25 registerClass:v28 forCellReuseIdentifier:v29];

  v30 = sub_257ECF4C0();
  [v25 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v30];

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v32 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v33 = result;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v34 = [objc_opt_self() mainRunLoop];
  v42 = v34;
  v35 = sub_257ED0080();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257BD2C74();
  v36 = v39;
  sub_257ECDDF0();
  sub_257BD2CDC(v9);

  (*(v10 + 8))(v16, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v37 = v41;
  v38 = sub_257ECDE50();

  (*(v40 + 8))(v24, v37);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_speechFeedbackSubscription] = v38;
}

void sub_257BCD148(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v5 == 1)
    {
      [v3 beginUpdates];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
      sub_257ECCEB0();
      *(swift_allocObject() + 16) = xmmword_257ED6D30;
      MEMORY[0x259C6F970](1, 2);
      v4 = sub_257ECF7F0();

      [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:100];

      [v3 endUpdates];
    }
  }
}

void sub_257BCD368(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257BCD51C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286903AE0[v6 + 32];
    if (v10 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v21 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v7 + 16) + 1, 1);
        v7 = v21;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF25C4((v8 > 1), v9 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_availableDetectionFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v12 setClipsToBounds_];
  v13 = [objc_opt_self() systemYellowColor];
  [v12 setTintColor_];

  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v14 = sub_257ECF4C0();
  }

  else
  {
    v14 = 0;
  }

  v20.receiver = v4;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, v14, a3, a1);

  return v15;
}

id sub_257BCD7BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286903B08[v4 + 32];
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v16 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF25C4(0, *(v5 + 16) + 1, 1);
        v5 = v16;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF25C4((v6 > 1), v7 + 1, 1);
        v5 = v16;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_availableDetectionFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v10 setClipsToBounds_];
  v11 = [objc_opt_self() systemYellowColor];
  [v10 setTintColor_];

  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_speechFeedbackSubscription] = 0;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

id sub_257BCDA00()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_257BCDA9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v104[-1] - v10;
  v12 = sub_257ECCEA0();
  v13 = 0;
  v14 = 1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        goto LABEL_16;
      }

      v13 = 1;
    }

    v14 = 0;
LABEL_16:
    v42 = sub_257ECF4C0();
    v43 = sub_257ECCE30();
    v17 = [a1 dequeueReusableCellWithIdentifier:v42 forIndexPath:v43];

    if (v14)
    {
      return v17;
    }

    v44 = &unk_279854000;
    v45 = [v17 textLabel];
    if (v13)
    {
      if (v45)
      {
        v46 = v45;
        [v45 setLineBreakMode_];
      }

      v47 = [v17 textLabel];
      if (v47)
      {
        v48 = v47;
        [v47 setNumberOfLines_];
      }

      v49 = [v17 textLabel];
      if (v49)
      {
        v50 = v49;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v52 = [objc_opt_self() bundleForClass_];
        v53 = sub_257ECF4C0();
        v54 = sub_257ECF4C0();
        v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

        if (!v55)
        {
          sub_257ECF500();
          v55 = sub_257ECF4C0();
        }

        [v50 setText_];
      }

      v56 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v56 setTag_];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v57 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
      swift_beginAccess();
      v58 = *(v57 + 8);
      v59 = *(v57 + 16);
      v105 = *v57;
      v106 = v58;
      LOBYTE(v107) = v59;
      v60 = qword_2815447E0;

      if (v60 != -1)
      {
        v61 = swift_once();
      }

      MEMORY[0x28223BE20](v61, v62, v63, v64, v65);
      *(&v103 - 2) = &v105;
      sub_257ECFD50();

      [v56 setOn_];
      [v56 addTarget:v2 action:sel_toggleSeatOccupancySwitch_ forControlEvents:4096];
      [v17 setAccessoryView_];
      [v17 setAccessoryType_];

      return v17;
    }

    if (v45)
    {
      v70 = v45;
      [v45 setLineBreakMode_];
    }

    v71 = [v17 textLabel];
    if (v71)
    {
      v72 = v71;
      [v71 setNumberOfLines_];
    }

    v73 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport41ObjectUnderstandingSettingsViewController_availableDetectionFeedbacks);
    v74 = sub_257ECCE60();
    if ((v74 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v74 < *(v73 + 16))
    {
      v43 = *(v73 + v74 + 32);
      v75 = [v17 textLabel];
      if (v75)
      {
        v76 = v75;
        sub_257BCC4FC(v43);
        v77 = sub_257ECF4C0();

        [v76 setText_];
      }

      v44 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_59:
    swift_once();
LABEL_43:
    v78 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
    swift_beginAccess();
    v79 = v78[1];
    v80 = v78[2];
    v105 = *v78;
    v106 = v79;
    v107 = v80;
    v81 = qword_2815447E0;

    if (v81 != -1)
    {
      v82 = swift_once();
    }

    MEMORY[0x28223BE20](v82, v83, v84, v85, v86);
    *(&v103 - 2) = &v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
    sub_257ECFD50();

    v87 = sub_257C592D0(v43, v104[0]);

    [v44 setOn_];
    v88 = v44;
    [v88 setTag_];
    [v88 addTarget:v2 action:sel_toggleFeedbackSwitch_ forControlEvents:4096];
    [v17 setAccessoryView_];

    return v17;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v15 = sub_257ECF4C0();
      v16 = sub_257ECCE30();
      v17 = [a1 dequeueReusableCellWithIdentifier:v15 forIndexPath:v16];

      type metadata accessor for UIStepperLengthCell(0);
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v103 = v18;
        v19 = qword_281544FE0;
        v17 = v17;
        if (v19 != -1)
        {
          swift_once();
        }

        v20 = qword_281548348;
        v21 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
        swift_beginAccess();
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
        v105 = *v21;
        v106 = v22;
        LOBYTE(v107) = v23;
        v24 = qword_2815447E0;

        if (v24 != -1)
        {
          v25 = swift_once();
        }

        MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
        *(&v103 - 2) = &v105;
        sub_257ECFD50();

        v30 = LOBYTE(v104[0]);
        v31 = (v20 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold);
        v32 = swift_beginAccess();
        v33 = v31[1];
        v34 = v31[2];
        v104[0] = *v31;
        v104[1] = v33;
        v104[2] = v34;
        MEMORY[0x28223BE20](v32, v35, v36, v37, v38);
        *(&v103 - 2) = v104;

        sub_257ECFD50();

        v39 = objc_opt_self();
        v40 = &selRef_feet;
        if (!v30)
        {
          v40 = &selRef_meters;
        }

        v41 = [v39 *v40];
        sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
        sub_257ECC740();
        sub_257D3DB54(v11, sub_257BCE694, 0);

        (*(v5 + 8))(v11, v4);
      }

      return v17;
    }

    goto LABEL_16;
  }

  v66 = sub_257ECF4C0();
  v67 = sub_257ECCE30();
  v17 = [a1 dequeueReusableCellWithIdentifier:v66 forIndexPath:v67];

  [v17 setAccessoryView_];
  v68 = sub_257ECCE60();
  if (v68)
  {
    if (v68 != 1)
    {
      return v17;
    }

    v69 = 1;
  }

  else
  {
    v69 = 0;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v89 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  swift_beginAccess();
  v90 = *(v89 + 8);
  v91 = *(v89 + 16);
  v105 = *v89;
  v106 = v90;
  LOBYTE(v107) = v91;
  v92 = qword_2815447E0;

  if (v92 != -1)
  {
    v93 = swift_once();
  }

  MEMORY[0x28223BE20](v93, v94, v95, v96, v97);
  *(&v103 - 2) = &v105;
  sub_257ECFD50();

  if ((v69 ^ LOBYTE(v104[0])))
  {
    v98 = 0;
  }

  else
  {
    v98 = 3;
  }

  [v17 setAccessoryType_];
  v99 = [v17 textLabel];
  if (v99)
  {
    v100 = v99;
    sub_257C69A6C(v69);
    v101 = sub_257ECF4C0();

    [v100 setText_];
  }

  return v17;
}

uint64_t sub_257BCE694(double a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold;
  swift_beginAccess();
  v18 = a1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECF110();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  *&v17[-16] = &v18;
  *&v17[-8] = v10;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  return swift_endAccess();
}

id sub_257BCEAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257BD0A14(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_257BCED08(uint64_t a1, id *a2)
{
  result = sub_257ECF4E0();
  *a2 = 0;
  return result;
}

uint64_t sub_257BCED80(uint64_t a1, id *a2)
{
  v3 = sub_257ECF4F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_257BCEE00()
{
  sub_257ECF500();
  v0 = sub_257ECF4C0();

  v1 = sub_257ECF500();
  v2 = MEMORY[0x259C72200](v1);

  return v2;
}

uint64_t sub_257BCEE64(uint64_t a1)
{
  sub_257ECF500();
  v1 = sub_257ECF4C0();

  sub_257ECF500();
  sub_257ECF5D0();
}

uint64_t sub_257BCEEE0(uint64_t a1)
{
  sub_257ECF500();
  v1 = sub_257ECF4C0();

  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v2 = sub_257ED0800();

  return v2;
}

uint64_t sub_257BCEF74(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4FA0, type metadata accessor for AVError, &unk_257ED8FF8);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_257BCEFE0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4FA0, type metadata accessor for AVError, &unk_257ED8FF8);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_257BCF050(uint64_t a1)
{
  v2 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError, &unk_257ED989C);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_257BCF180@<X0>(uint64_t *a2@<X8>)
{
  sub_257ECF500();
  v3 = sub_257ECF4C0();

  *a2 = v3;
  return result;
}

uint64_t sub_257BCF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257ED07B0();
  swift_getWitnessTable();
  sub_257ECD1F0();
  return sub_257ED0800();
}

uint64_t sub_257BCF2E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_257ECD1E0();
}

uint64_t sub_257BCF350(void *a1, uint64_t *a2)
{
  sub_257ECF500();
  v2 = sub_257ECF4C0();

  sub_257ECF500();
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF500();
  v6 = v5;
  if (v4 == sub_257ECF500() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_257ED0640();
  }

  return v9 & 1;
}

uint64_t sub_257BCF430(uint64_t a1)
{
  v2 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError, &unk_257ED989C);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_257BCF49C(uint64_t a1)
{
  v2 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError, &unk_257ED989C);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_257BCF508(void *a1, uint64_t a2)
{
  v4 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError, &unk_257ED989C);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_257BCF5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError, &unk_257ED989C);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_257BCF638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_257ED07B0();
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257BCF698(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_257ECD1E0();
}

uint64_t sub_257BCF704(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5098, type metadata accessor for OptionsKey, &unk_257ED99F0);
  v3 = sub_257BD212C(&unk_27F8F50A0, type metadata accessor for OptionsKey, &unk_257ED8958);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF7C0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5078, type metadata accessor for ActivityType, &unk_257ED8C1C);
  v3 = sub_257BD212C(&qword_27F8F5080, type metadata accessor for ActivityType, &unk_257ED8BC4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF87C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4D00, type metadata accessor for URLResourceKey, &unk_257ED7308);
  v3 = sub_257BD212C(&qword_27F8F4D08, type metadata accessor for URLResourceKey, &unk_257ED72A8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF938(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
  v3 = sub_257BD212C(&qword_27F8F50B0, _s3__C3KeyVMa_0, &unk_257ED87DC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCF9F4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5018, type metadata accessor for LaunchOptionsKey, &unk_257ED97D0);
  v3 = sub_257BD212C(&qword_27F8F5020, type metadata accessor for LaunchOptionsKey, &unk_257ED9460);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFAB0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CD8, type metadata accessor for VNImageOption, &unk_257ED8114);
  v3 = sub_257BD212C(&unk_27F8F4CE0, type metadata accessor for VNImageOption, &unk_257ED7718);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFB78@<X0>(uint64_t *a1@<X8>)
{
  sub_257ECF500();
  v2 = sub_257ECF4C0();

  *a1 = v2;
  return result;
}

uint64_t sub_257BCFBC0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5038, type metadata accessor for JointName, &unk_257ED9858);
  v3 = sub_257BD212C(&qword_27F8F5040, type metadata accessor for JointName, &unk_257ED9238);
  v4 = sub_257BD212C(&qword_27F8F5028, type metadata accessor for VNRecognizedPointKey, &unk_257ED9814);

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFCB0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4C88, type metadata accessor for UIContentSizeCategory, &unk_257ED7E20);
  v3 = sub_257BD212C(&qword_27F8F4C90, type metadata accessor for UIContentSizeCategory, &unk_257ED7DC0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFD6C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4C98, type metadata accessor for OU3DObjectType, &unk_257ED7BBC);
  v3 = sub_257BD212C(&qword_27F8F4CA0, type metadata accessor for OU3DObjectType, &unk_257ED7B64);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFE28(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F6400, type metadata accessor for TestOption, &unk_257ED8158);
  v3 = sub_257BD212C(&qword_27F8F4CF0, type metadata accessor for TestOption, &unk_257ED75FC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFEE4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4C78, type metadata accessor for Identifier, &unk_257ED7F78);
  v3 = sub_257BD212C(&qword_27F8F4C80, type metadata accessor for Identifier, &unk_257ED7F18);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BCFFA0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F50B8, type metadata accessor for DeviceType, &unk_257ED86E4);
  v3 = sub_257BD212C(&qword_27F8F50C0, type metadata accessor for DeviceType, &unk_257ED8684);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD005C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_281543E68, type metadata accessor for AttributeName, &unk_257ED99AC);
  v3 = sub_257BD212C(&qword_27F8F5070, type metadata accessor for AttributeName, &unk_257ED8D0C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0118(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5058, type metadata accessor for FeatureKey, &unk_257ED8E80);
  v3 = sub_257BD212C(&unk_27F8F5060, type metadata accessor for FeatureKey, &unk_257ED8E20);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD01D4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4FF8, type metadata accessor for AXMFeatureDescriptionOption, &unk_257ED9748);
  v3 = sub_257BD212C(&qword_27F8F5000, type metadata accessor for AXMFeatureDescriptionOption, &unk_257ED969C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0290(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CC8, type metadata accessor for Key, &unk_257ED80D4);
  v3 = sub_257BD212C(&qword_27F8F4CD0, type metadata accessor for Key, &unk_257ED7824);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD034C(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CB8, type metadata accessor for EventType, &unk_257ED797C);
  v3 = sub_257BD212C(&qword_27F8F4CC0, type metadata accessor for EventType, &unk_257ED7924);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0408(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F4CA8, type metadata accessor for ParameterID, &unk_257ED8094);
  v3 = sub_257BD212C(&qword_27F8F4CB0, type metadata accessor for ParameterID, &unk_257ED7A64);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD04C4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5088, type metadata accessor for AVVideoCodecType, &unk_257ED8AD4);
  v3 = sub_257BD212C(&qword_27F8F5090, type metadata accessor for AVVideoCodecType, &unk_257ED8A74);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257BD212C(&unk_27F8F4FD8, type metadata accessor for AVError, &unk_257ED989C);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_257BD0604(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5048, type metadata accessor for MatteType, &unk_257ED9140);
  v3 = sub_257BD212C(&qword_27F8F5050, type metadata accessor for MatteType, &unk_257ED90E0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD06C0(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5028, type metadata accessor for VNRecognizedPointKey, &unk_257ED9814);
  v3 = sub_257BD212C(&qword_27F8F5030, type metadata accessor for VNRecognizedPointKey, &unk_257ED934C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD077C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_257ECF4C0();

  *a2 = v3;
  return result;
}

uint64_t sub_257BD07C4(uint64_t a1)
{
  v2 = sub_257BD212C(&qword_27F8F5008, type metadata accessor for OpenExternalURLOptionsKey, &unk_257ED978C);
  v3 = sub_257BD212C(&qword_27F8F5010, type metadata accessor for OpenExternalURLOptionsKey, &unk_257ED9574);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_257BD0880(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_257ECF500();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_257BD08C4(uint64_t a1)
{
  sub_257ECF500();
  sub_257ECF5D0();
}

uint64_t sub_257BD0918(uint64_t a1)
{
  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v1 = sub_257ED0800();

  return v1;
}

uint64_t sub_257BD098C(void *a1, uint64_t *a2)
{
  v2 = sub_257ECF500();
  v4 = v3;
  if (v2 == sub_257ECF500() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_257ED0640();
  }

  return v7 & 1;
}

uint64_t sub_257BD0A14(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

id sub_257BD0A48(id result)
{
  if (result)
  {
    v1 = result;
    result = [result tag];
    if (result <= 3)
    {
      v2 = result;
      if ([v1 isOn])
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v3 = qword_2815447E0;

        if (v3 != -1)
        {
          v4 = swift_once();
        }

        MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
        sub_257ECFD50();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5D00, &unk_257ED8200);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v2;
        sub_257EB04EC(inited);
        sub_257D4F488(v23, 1);
      }

      else
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v10 = qword_2815447E0;

        if (v10 != -1)
        {
          v11 = swift_once();
        }

        MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90, &unk_257EE35E0);
        sub_257ECFD50();

        v16 = *(v23 + 16);
        if (v16)
        {
          v17 = (v23 + 32);
          v18 = MEMORY[0x277D84F90];
          do
          {
            v22 = *v17++;
            v21 = v22;
            if (v22 != v2)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_257BF25C4(0, *(v18 + 16) + 1, 1);
              }

              v20 = *(v18 + 16);
              v19 = *(v18 + 24);
              if (v20 >= v19 >> 1)
              {
                sub_257BF25C4((v19 > 1), v20 + 1, 1);
              }

              *(v18 + 16) = v20 + 1;
              *(v18 + v20 + 32) = v21;
            }

            --v16;
          }

          while (v16);
        }

        else
        {
          v18 = MEMORY[0x277D84F90];
        }

        sub_257D4F488(v18, 1);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257BD0E30(void *a1)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = qword_281548348;
  v13 = [a1 isOn];
  v1 = v12 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v21 = v13;
  if (qword_2815447E0 != -1)
  {
LABEL_7:
    swift_once();
  }

  v14 = sub_257ECF110();
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  *&v20[-16] = &v21;
  *&v20[-8] = v1;
  sub_257ECFD40();
  (*(v4 + 8))(v11, v3);
  return swift_endAccess();
}

void sub_257BD101C(void *a1)
{
  v2 = sub_257ECCDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECCEB0();
  v112 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECF120();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v113 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v24 animated:1];

  v25 = sub_257ECCE30();
  v114 = [a1 cellForRowAtIndexPath_];

  if (!v114)
  {
    return;
  }

  v26 = sub_257ECCE60();
  if (!v26)
  {
    v111 = 0;
    goto LABEL_6;
  }

  if (v26 == 1)
  {
    v111 = 1;
LABEL_6:
    v106 = v9;
    v107 = v3;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v109 = v17;
    v108 = v2;
    v105 = qword_281548348;
    v27 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
    swift_beginAccess();
    v28 = *(v27 + 8);
    v29 = *(v27 + 16);
    v118 = *v27;
    v119 = v28;
    LOBYTE(v120) = v29;
    v30 = qword_2815447E0;

    if (v30 != -1)
    {
      v31 = swift_once();
    }

    v36 = qword_2815447E8;
    MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
    *(&v101 - 2) = &v118;
    v110 = v36;
    sub_257ECFD50();

    if (v111 != v122)
    {
      v37 = sub_257ECCEA0();
      if ((v37 - 1) >= 3 && !v37)
      {
        swift_beginAccess();
        v122 = v111;
        v38 = v113;
        v39 = sub_257ECF110();
        MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
        *(&v101 - 2) = &v122;
        *(&v101 - 1) = v27;
        sub_257ECFD40();
        v44 = *(v18 + 8);
        v104 = v18 + 8;
        v103 = v44;
        v44(v38, v109);
        swift_endAccess();
        v45 = v105;
        v46 = swift_beginAccess();
        v47 = v45[16];
        v48 = v45[17];
        v49 = v45[18];
        v118 = v45[15];
        v119 = v47;
        v120 = v48;
        v121 = v49;
        MEMORY[0x28223BE20](v46, v50, v51, v52, v53);
        *(&v101 - 2) = &v118;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
        sub_257ECFD50();

        v54 = v116;
        if (v116)
        {
          v101 = v115;
          v55 = swift_beginAccess();
          v56 = v45[12];
          v57 = v45[13];
          v118 = v45[11];
          v119 = v56;
          v120 = v57;
          MEMORY[0x28223BE20](v55, v58, v59, v60, v61);
          *(&v101 - 2) = &v118;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
          sub_257ECFD50();

          v62 = v117;
          v63 = *(*&v117 + 16);
          v102 = 0;
          if (v63)
          {
            v64 = sub_257C03F6C(v101, v54);
            v66 = v65;

            v67 = &unk_279854000;
            if (v66)
            {
              v68 = *(*(*&v62 + 56) + 296 * v64 + 78);

              if (v111 != v68)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                LOBYTE(v118) = 1;
                sub_257ECC3F0();
                sub_257ECDD70();
              }
            }

            else
            {
            }
          }

          else
          {

            v67 = &unk_279854000;
          }
        }

        else
        {
          v102 = 0;
          v67 = &unk_279854000;
        }

        v70 = (v112 + 8);
        MEMORY[0x259C6F970](0, 0);
        v71 = sub_257ECCE30();
        v72 = [a1 v67[455]];

        if (v72)
        {
          [v72 setAccessoryType_];
        }

        v73 = *v70;
        (*v70)(v16, v10);
        MEMORY[0x259C6F970](1, 0);
        v74 = sub_257ECCE30();
        v75 = [a1 v67[455]];

        if (v75)
        {
          [v75 setAccessoryType_];
        }

        v73(v16, v10);
        [v114 setAccessoryType_];
        if (v111)
        {
          v76 = 6.0;
        }

        else
        {
          v76 = 2.0;
        }

        v77 = v45 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
        swift_beginAccess();
        v117 = v76;
        v78 = v113;
        v79 = sub_257ECF110();
        MEMORY[0x28223BE20](v79, v80, v81, v82, v83);
        *(&v101 - 2) = &v117;
        *(&v101 - 1) = v77;
        sub_257ECFD40();
        v84 = v109;
        v85 = v103;
        v103(v78, v109);
        swift_endAccess();
        v86 = v45 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
        swift_beginAccess();
        v117 = v76;
        v87 = sub_257ECF110();
        MEMORY[0x28223BE20](v87, v88, v89, v90, v91);
        *(&v101 - 2) = &v117;
        *(&v101 - 1) = v86;
        sub_257ECFD40();
        v85(v78, v84);
        swift_endAccess();
        v92 = v45 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingPitchThreshold;
        swift_beginAccess();
        v117 = v76;
        v93 = sub_257ECF110();
        MEMORY[0x28223BE20](v93, v94, v95, v96, v97);
        *(&v101 - 2) = &v117;
        *(&v101 - 1) = v92;
        sub_257ECFD40();
        v85(v78, v84);
        swift_endAccess();
        [a1 beginUpdates];
        v118 = &unk_286903B30;
        sub_257BD212C(&qword_27F8F58A0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
        sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80, &qword_257EDD430, MEMORY[0x277D83970]);
        v98 = v106;
        v99 = v108;
        sub_257ED0180();
        v100 = sub_257ECCDE0();
        (*(v107 + 8))(v98, v99);
        [a1 reloadSections:v100 withRowAnimation:100];

        [a1 endUpdates];
      }
    }

    return;
  }

  v69 = v114;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_257BD1B90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_257ECC3F0();
  }

  else
  {
  }
}

unint64_t sub_257BD1BA0()
{
  result = qword_27F8F4970;
  if (!qword_27F8F4970)
  {
    sub_257ECE1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4970);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_257BD1CAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257BD1CCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MAGThermalMonitor.ThermalLevel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MAGThermalMonitor.ThermalLevel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257BD1EC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257BD1EE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectUnderstandingFeedback(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectUnderstandingFeedback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_257BD212C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257BD2204()
{
  result = qword_27F8F4B80;
  if (!qword_27F8F4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4B80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_257BD2AC4()
{
  result = qword_27F8F4CF8;
  if (!qword_27F8F4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4CF8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257BD2C2C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_257BD2C74()
{
  result = qword_281543D50;
  if (!qword_281543D50)
  {
    sub_257BD2C2C(255, &unk_281543D40, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543D50);
  }

  return result;
}

uint64_t sub_257BD2CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257BD2D4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_257BD3AC0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_257BD3B58()
{
  result = qword_27F8F4FC8;
  if (!qword_27F8F4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F4FC8);
  }

  return result;
}

uint64_t sub_257BD3DB0(uint64_t a1, uint64_t a2)
{
  v2[67] = a2;
  v2[66] = a1;
  v2[68] = type metadata accessor for MAGOutputEvent.EventType(0);
  v2[69] = swift_task_alloc();
  v2[70] = type metadata accessor for MAGOutputEvent(0);
  v2[71] = swift_task_alloc();
  v3 = sub_257ECF120();
  v2[72] = v3;
  v2[73] = *(v3 - 8);
  v2[74] = swift_task_alloc();
  v4 = sub_257ECF190();
  v2[75] = v4;
  v2[76] = *(v4 - 8);
  v2[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250, &qword_257EDC440);
  v2[78] = swift_task_alloc();
  v5 = type metadata accessor for SpatialTextBlock(0);
  v2[79] = v5;
  v2[80] = *(v5 - 8);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v6 = type metadata accessor for DetectedTextBlock(0);
  v2[83] = v6;
  v2[84] = *(v6 - 8);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  v2[89] = swift_task_alloc();
  sub_257ECF900();
  v2[90] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257BD40A8, v8, v7);
}

uint64_t sub_257BD40A8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_43;
  }

  v2 = Strong;
  sub_257BD5724(*(v0 + 528), *(v0 + 712), type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v24 = *(v0 + 712);
        v25 = *(v0 + 616);
        v139 = *(v0 + 608);
        v145 = *(v0 + 600);
        v26 = *(v0 + 592);
        v27 = *(v0 + 584);
        v28 = *(v0 + 576);
        v29 = v2;
        v31 = *v24;
        v30 = v24[1];
        sub_257BD52CC();
        v133 = sub_257ECFD30();
        v32 = swift_allocObject();
        v32[2] = v29;
        v32[3] = v31;
        v32[4] = v30;
        *(v0 + 96) = sub_257BD57C4;
        *(v0 + 104) = v32;
        *(v0 + 64) = MEMORY[0x277D85DD0];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_257D231C0;
        *(v0 + 88) = &block_descriptor_6;
        v33 = _Block_copy((v0 + 64));
        v34 = v29;

        sub_257ECF150();
        *(v0 + 520) = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C72880](0, v25, v26, v33);
        _Block_release(v33);

        (*(v27 + 8))(v26, v28);
        (*(v139 + 8))(v25, v145);
      }

      else
      {
        sub_257CEBD80(EnumCaseMultiPayload);
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_257CEC1E8();
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_257CEC4E0();
    }

    else
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() bundleForClass_];
      v68 = sub_257ECF4C0();
      v69 = sub_257ECF4C0();
      v70 = [v67 localizedStringForKey:v68 value:0 table:v69];

      v71 = sub_257ECF500();
      v73 = v72;

      v74 = objc_opt_self();

      v75 = [v74 currentLanguageCode];
      v76 = sub_257ECF500();
      v78 = v77;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5258, &qword_257ED9A98);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_257ED6D30;
      v118 = v71;
      *(v79 + 32) = v71;
      *(v79 + 40) = v73;
      v141 = v73;
      *(v79 + 48) = v76;
      *(v79 + 56) = v78;
      v80 = MEMORY[0x277CBF3A0];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v147 = v2;
      v121 = v80[1];
      v122 = *v80;
      v129 = qword_281548348;
      v81 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages;
      swift_beginAccess();
      v82 = *(v81 + 8);
      v83 = *(v81 + 16);
      *(v0 + 472) = *v81;
      *(v0 + 480) = v82;
      *(v0 + 488) = v83;
      v84 = qword_2815447E0;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = *(v0 + 680);
      v86 = *(v0 + 664);
      v87 = v0;
      v88 = *(v0 + 568);
      v123 = *(v0 + 560);
      v119 = *(v0 + 672);
      v120 = *(v0 + 552);
      *(swift_task_alloc() + 16) = v0 + 472;
      sub_257ECFD50();

      v89 = *(v0 + 489);
      sub_257ECCCE0();
      v90 = v86[9];
      *(v85 + v86[5]) = v79;
      v91 = (v85 + v86[6]);
      *v91 = v122;
      v91[1] = v121;
      *(v85 + v86[7]) = 0;
      *(v85 + v86[8]) = v89;
      *(v85 + v90) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5260, &qword_257EDB280);
      v92 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_257ED6D30;
      sub_257BD5724(v85, v93 + v92, type metadata accessor for DetectedTextBlock);
      *v120 = v93;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      sub_257BD5724(v120, v88 + v123[5], type metadata accessor for MAGOutputEvent.EventType);
      *(v88 + v123[6]) = 1;
      *(v88 + v123[7]) = 0;
      sub_257ECC3F0();
      sub_257BD57EC(v120, type metadata accessor for MAGOutputEvent.EventType);
      *(v88 + v123[8]) = v129;
      sub_257CBBC80(v88);
      sub_257BD57EC(v88, type metadata accessor for MAGOutputEvent);
      if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
      {
        v94 = qword_281548358;
        v125 = qword_281548358 + 48;
        swift_beginAccess();
        v95 = *(v94 + 56);
        *(v87 + 304) = *(v94 + 48);
        *(v87 + 312) = v95;
        *(swift_task_alloc() + 16) = v87 + 304;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
        sub_257ECFD50();

        v96 = *(v87 + 504);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_257BFCB3C(0, *(v96 + 2) + 1, 1, v96);
        }

        v98 = *(v96 + 2);
        v97 = *(v96 + 3);
        if (v98 >= v97 >> 1)
        {
          v96 = sub_257BFCB3C((v97 > 1), v98 + 1, 1, v96);
        }

        v135 = *(v87 + 680);
        v99 = *(v87 + 592);
        v100 = *(v87 + 584);
        v101 = *(v87 + 576);
        *(v96 + 2) = v98 + 1;
        v102 = &v96[16 * v98];
        *(v102 + 4) = v118;
        *(v102 + 5) = v141;
        *(v87 + 512) = v96;
        sub_257ECF110();
        v103 = swift_task_alloc();
        *(v103 + 16) = v87 + 512;
        *(v103 + 24) = v125;
        sub_257ECFD40();

        v0 = v87;
        (*(v100 + 8))(v99, v101);

        swift_endAccess();

        sub_257BD57EC(v135, type metadata accessor for DetectedTextBlock);
      }

      else
      {
        sub_257BD57EC(*(v87 + 680), type metadata accessor for DetectedTextBlock);

        v0 = v87;
      }
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_257CECE74(**(v0 + 712));

      goto LABEL_43;
    }

    v12 = *(v0 + 648);
    v13 = *(v0 + 632);
    sub_257BD584C(*(v0 + 712), v12, type metadata accessor for SpatialTextBlock);
    v14 = *(v12 + *(v13 + 20));
    v15 = (v12 + *(v13 + 36));
    v138 = v15[1];
    v144 = *v15;
    v127 = v15[3];
    v132 = v15[2];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    swift_beginAccess();
    v17 = *(v16 + 8);
    v18 = *(v16 + 32);
    v19 = *(v16 + 16);
    *(v0 + 112) = *v16;
    *(v0 + 120) = v17;
    *(v0 + 128) = v19;
    *(v0 + 144) = v18;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 648);
    *(swift_task_alloc() + 16) = v0 + 112;
    sub_257ECFD50();

    v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v0 + 352) green:*(v0 + 360) blue:*(v0 + 368) alpha:1.0];
    sub_257CEC88C(v22, v14, v144, v138, v132, v127);

    v23 = type metadata accessor for SpatialTextBlock;
LABEL_29:
    sub_257BD57EC(v21, v23);
    goto LABEL_43;
  }

  if (!EnumCaseMultiPayload)
  {
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    v143 = *(v0 + 600);
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);
    v131 = **(v0 + 712);
    sub_257BD52CC();
    v137 = sub_257ECFD30();
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 32) = v131;
    *(v0 + 48) = sub_257BD5644;
    *(v0 + 56) = v9;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_257D231C0;
    *(v0 + 40) = &block_descriptor_0;
    v10 = _Block_copy((v0 + 16));
    v11 = v2;

    sub_257ECF150();
    *(v0 + 496) = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v4, v6, v10);
    _Block_release(v10);

    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v4, v143);
    goto LABEL_43;
  }

  v35 = *(v0 + 712);
  v36 = *(v0 + 696);
  v37 = *v35;
  v38 = v35[1];
  v39 = v35[2];
  v40 = v35[3];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268, &unk_257EDC430);
  v42 = *(v35 + v41[16]);
  v43 = *(v35 + v41[20]);
  v44 = *(v35 + v41[24]);
  v45 = *(v35 + v41[28]);
  sub_257BD584C(v35 + v41[12], v36, type metadata accessor for DetectedTextBlock);
  if (!v43 || !v42 || !v44)
  {
LABEL_24:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v60 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    swift_beginAccess();
    v61 = *(v60 + 8);
    v62 = *(v60 + 32);
    v63 = *(v60 + 16);
    *(v0 + 152) = *v60;
    *(v0 + 160) = v61;
    *(v0 + 168) = v63;
    *(v0 + 184) = v62;
    v64 = qword_2815447E0;

    if (v64 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 696);
    *(swift_task_alloc() + 16) = v0 + 152;
    sub_257ECFD50();

    v65 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v0 + 400) green:*(v0 + 408) blue:*(v0 + 416) alpha:1.0];
    sub_257CECAF4(v65, 0, v37, v38, v39, v40);

    v23 = type metadata accessor for DetectedTextBlock;
    goto LABEL_29;
  }

  v146 = v2;
  v46 = *(v0 + 696);
  v47 = v42;
  v48 = *(v0 + 688);
  v49 = *(v0 + 640);
  v140 = *(v0 + 632);
  v50 = v44;
  v51 = v0;
  v52 = *(v0 + 624);
  sub_257BD5724(v46, v48, type metadata accessor for DetectedTextBlock);
  v53 = v43;
  v128 = v47;
  v54 = v47;
  v134 = v50;
  v55 = v50;
  v56 = v53;
  v57 = v54;
  v58 = v55;
  sub_257EACA08(v48, v57, v56, v58, v45, v52);
  if ((*(v49 + 48))(v52, 1, v140) == 1)
  {
    v59 = *(v51 + 624);

    sub_257BD58B4(v59);
    v0 = v51;
    v2 = v146;
    v44 = v134;
    v42 = v128;
    goto LABEL_24;
  }

  v106 = v57;
  v107 = *(v51 + 656);
  v108 = *(v51 + 632);
  sub_257BD584C(*(v51 + 624), v107, type metadata accessor for SpatialTextBlock);
  v109 = *(v107 + *(v108 + 20));
  v110 = (v107 + *(v108 + 36));
  v136 = v110[1];
  v142 = *v110;
  v126 = v110[3];
  v130 = v110[2];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v111 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
  swift_beginAccess();
  v112 = *(v111 + 8);
  v113 = *(v111 + 32);
  v114 = *(v111 + 16);
  *(v51 + 192) = *v111;
  *(v51 + 200) = v112;
  *(v51 + 208) = v114;
  *(v51 + 224) = v113;
  v115 = qword_2815447E0;

  if (v115 != -1)
  {
    swift_once();
  }

  v124 = *(v51 + 696);
  v116 = *(v51 + 656);
  *(swift_task_alloc() + 16) = v51 + 192;
  sub_257ECFD50();

  v117 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v51 + 448) green:*(v51 + 456) blue:*(v51 + 464) alpha:1.0];
  sub_257CEC88C(v117, v109, v142, v136, v130, v126);

  v0 = v51;
  sub_257BD57EC(v116, type metadata accessor for SpatialTextBlock);
  sub_257BD57EC(v124, type metadata accessor for DetectedTextBlock);
LABEL_43:

  v104 = *(v0 + 8);

  return v104();
}

void sub_257BD5258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257E003E8();
  v6 = sub_257E00504();
  sub_257DFD370(a2, a3, v5, v6);
}

unint64_t sub_257BD52CC()
{
  result = qword_281543F10;
  if (!qword_281543F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543F10);
  }

  return result;
}

void sub_257BD5318(uint64_t a1, __n128 a2)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene;
  if (!*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene))
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CDBAF8]) init];
    v5 = [objc_opt_self() sphereWithRadius_];
    v6 = [v5 firstMaterial];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 diffuse];

      v9 = [objc_opt_self() redColor];
      [v8 setContents_];
    }

    v10 = [objc_opt_self() nodeWithGeometry_];

    [v10 setHidden_];
    v11 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip);
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip) = v10;
    v12 = v10;

    v13 = [v4 rootNode];
    [v13 addChildNode_];

    v14 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
    [v14 setScene_];

    v15 = *(a1 + v3);
    *(a1 + v3) = v4;
  }

  v16 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip);
  if (v16)
  {
    v17 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
    if (v17)
    {
      v30 = v16;
      v18 = [v17 session];
      v19 = [v18 currentFrame];

      if (v19)
      {
        v20 = [v19 camera];

        [v20 transform];
        v25 = v21;
        v26 = v22;
        v27 = v24;
        v28 = v23;

        [v30 setSimdWorldPosition_];
        [v30 setHidden_];
      }
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257BD5668()
{
  result = qword_281544090;
  if (!qword_281544090)
  {
    sub_257ECF120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544090);
  }

  return result;
}

unint64_t sub_257BD56C0()
{
  result = qword_281543FB0;
  if (!qword_281543FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5480, &qword_257EDBFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FB0);
  }

  return result;
}

uint64_t sub_257BD5724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257BD57EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257BD584C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257BD58B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250, &qword_257EDC440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257BD5944(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257BD59C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_257BD5B48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_257BD5DB0()
{
  v0 = sub_257ECFD20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v13 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  sub_257BD52CC();
  sub_257ECFCA0();
  sub_257ECF150();
  (*(v1 + 104))(v7, *MEMORY[0x277D85260], v0);
  result = sub_257ECFD80();
  qword_2815447E8 = result;
  return result;
}

uint64_t sub_257BD5F90()
{
  v1[16] = v0;
  v2 = sub_257ECF120();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = sub_257ECF190();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = type metadata accessor for MAGOutputEngine.Event(0);
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F52F0, &qword_257ED9BB0);
  v1[29] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F52F8, &qword_257ED9BB8);
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5300, &unk_257ED9BC0);
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = sub_257ECF900();
  v1[37] = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  v1[38] = v8;
  v1[39] = v7;

  return MEMORY[0x2822009F8](sub_257BD626C, v8, v7);
}

uint64_t sub_257BD626C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_257ECD300();
  sub_257ECF970();
  (*(v2 + 8))(v1, v3);
  v4 = sub_257ECF8F0();
  v0[40] = v4;
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_257BD6394;
  v6 = v0[33];
  v7 = v0[29];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8, v6);
}

uint64_t sub_257BD6394()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_257BD64D8, v3, v2);
}

uint64_t sub_257BD64D8()
{
  v1 = v0[29];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);

    v2 = v0[1];

    return v2();
  }

  v5 = v0[27];
  v4 = v0[28];
  sub_257BDAB5C(v1, v4);
  sub_257BDABC0(v4, v5, type metadata accessor for MAGOutputEngine.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[27];
  v8 = v0[28];
  if (EnumCaseMultiPayload != 2)
  {
    v18 = v0[26];
    sub_257BDAC28(v7, type metadata accessor for MAGOutputEngine.Event);
    sub_257BDABC0(v8, v18, type metadata accessor for MAGOutputEngine.Event);
    v19 = swift_getEnumCaseMultiPayload();
    v20 = v0[28];
    v21 = v0[26];
    if (v19 == 3)
    {
      sub_257BDAC28(v0[28], type metadata accessor for MAGOutputEngine.Event);
      v22 = v21;
    }

    else
    {
      v23 = v0[25];
      sub_257BDAC28(v0[26], type metadata accessor for MAGOutputEngine.Event);
      sub_257BDABC0(v20, v23, type metadata accessor for MAGOutputEngine.Event);
      v24 = swift_getEnumCaseMultiPayload();
      v25 = v0[25];
      if (v24 == 4)
      {
        v41 = v0[22];
        v26 = v0[19];
        v47 = v0[21];
        v49 = v0[20];
        v28 = v0[17];
        v27 = v0[18];
        v29 = v0[16];
        v31 = *v25;
        v30 = v25[1];
        v45 = v0[28];
        sub_257BD52CC();
        v43 = sub_257ECFD30();
        v32 = swift_allocObject();
        v32[2] = v31;
        v32[3] = v30;
        v32[4] = v29;
        v0[6] = sub_257BDAC88;
        v0[7] = v32;
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = sub_257D231C0;
        v0[5] = &block_descriptor_27;
        v33 = _Block_copy(v0 + 2);
        v34 = v29;
        sub_257ECF150();
        v0[14] = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C72880](0, v41, v26, v33);
        _Block_release(v33);

        (*(v27 + 8))(v26, v28);
        (*(v47 + 8))(v41, v49);
        sub_257BDAC28(v45, type metadata accessor for MAGOutputEngine.Event);
        goto LABEL_7;
      }

      sub_257BDAC28(v0[28], type metadata accessor for MAGOutputEngine.Event);
      v22 = v25;
    }

    sub_257BDAC28(v22, type metadata accessor for MAGOutputEngine.Event);
    goto LABEL_14;
  }

  v40 = v0[22];
  v9 = v0[19];
  v44 = v0[21];
  v46 = v0[20];
  v48 = v0[28];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v14 = *v7;
  v13 = v7[1];
  sub_257BD52CC();
  v42 = sub_257ECFD30();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  v0[12] = sub_257BDAC94;
  v0[13] = v15;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_257D231C0;
  v0[11] = &block_descriptor_33;
  v16 = _Block_copy(v0 + 8);
  v17 = v12;
  sub_257ECF150();
  v0[15] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v40, v9, v16);
  _Block_release(v16);

  (*(v10 + 8))(v9, v11);
  (*(v44 + 8))(v40, v46);
  sub_257BDAC28(v48, type metadata accessor for MAGOutputEngine.Event);
LABEL_7:

LABEL_14:
  v35 = sub_257ECF8F0();
  v0[40] = v35;
  v36 = swift_task_alloc();
  v0[41] = v36;
  *v36 = v0;
  v36[1] = sub_257BD6394;
  v37 = v0[33];
  v38 = v0[29];
  v39 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v38, v35, v39, v37);
}

void sub_257BD6B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel) setHidden_];
  v5 = *(a1 + v4);
  v6 = sub_257ECF4C0();
  [v5 setText_];
}

id sub_257BD6BBC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_257ECF100();
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_257ECF1B0();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v26 = &v55 - v25;
  v27 = sub_257ECF120();
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  if (!a1 && a2 == 0xE000000000000000 || (sub_257ED0640() & 1) != 0)
  {
    v32 = *&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView];

    return [v32 setHidden_];
  }

  else
  {
    v56 = v6;
    v57 = v13;
    [*&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel] setHidden_];
    v34 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
    [*&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView] setHidden_];
    v35 = *&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel];
    v36 = sub_257ECF4C0();
    [v35 setText_];

    v37 = [*&a3[v34] layer];
    [*&a3[v34] frame];
    v39 = v38 * 0.5;
    [*&a3[v34] frame];
    if (v40 * 0.5 >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v40 * 0.5;
    }

    v42 = [objc_opt_self() preferredFontForTextStyle_];
    [v42 lineHeight];
    v44 = v43;

    v45 = (v44 + 40.0) * 0.5;
    if (v41 > v45)
    {
      v45 = v41;
    }

    [v37 setCornerRadius_];

    v46 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem;
    if (*&a3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem])
    {
      sub_257ECC3F0();
      sub_257ECF1E0();
    }

    v47 = swift_allocObject();
    *(v47 + 16) = a3;
    aBlock[4] = sub_257BDACA0;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_39;
    _Block_copy(aBlock);
    v60 = MEMORY[0x277D84F90];
    sub_257BD5668();
    v48 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    sub_257ECF1F0();
    swift_allocObject();
    v49 = sub_257ECF1D0();

    *&a3[v46] = v49;
    sub_257ECC3F0();

    sub_257BD52CC();
    v50 = sub_257ECFD30();
    sub_257ECF1A0();
    *v12 = 10;
    v51 = v58;
    v52 = v56;
    (*(v58 + 104))(v12, *MEMORY[0x277D85188], v56);
    MEMORY[0x259C71D30](v19, v12);
    (*(v51 + 8))(v12, v52);
    v53 = *(v59 + 8);
    v54 = v57;
    v53(v19, v57);
    sub_257ECFCD0();

    return (v53)(v26, v54);
  }
}

uint64_t sub_257BD7140(void *a1, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  *v104 = 0;
  sub_257BD7E34(a1, &v104[1], v104);
  swift_beginAccess();
  if (byte_27F8F87B0 == 1)
  {
    result = 1;
    *a2 = 1;
    return result;
  }

  if (v104[1] == 1)
  {
    v10 = v104[0];
    *a2 = v104[0];
    if (v10 != 1)
    {
      goto LABEL_24;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock[0] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , LOBYTE(aBlock[0]) == 1))
    {

      type metadata accessor for MAGUtilities();
      v94 = v11;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = objc_opt_self();
      v14 = [v13 bundleForClass_];
      v15 = sub_257ECF4C0();
      v16 = sub_257ECF4C0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      v18 = sub_257ECF500();
      v20 = v19;

      *a4 = v18;
      a4[1] = v20;
      v21 = [v13 bundleForClass_];
      v22 = sub_257ECF4C0();
      v23 = sub_257ECF4C0();
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      v25 = sub_257ECF500();
      v27 = v26;

      *a3 = v25;
      a3[1] = v27;
      v28 = v94 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled;
      swift_beginAccess();
      v29 = *(v28 + 8);
      v30 = *(v28 + 16);
      v101[0] = *v28;
      v101[1] = v29;
      v102 = v30;
      v31 = qword_2815447E0;

      if (v31 != -1)
      {
        v32 = swift_once();
      }

      MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
      sub_257ECFD50();

      if (v98 == 1 && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v101[0] & 1) != 0) || (v37 = v94 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled, v38 = swift_beginAccess(), v39 = *(v37 + 8), v40 = *(v37 + 16), v98 = *v37, v99 = v39, v100 = v40, MEMORY[0x28223BE20](v38, v41, v42, v43, v44), , sub_257ECFD50(), , v95 == 1) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v98 == 1))
      {
        if ((*(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) & 1) == 0)
        {

          v45 = [v13 bundleForClass_];
          v46 = sub_257ECF4C0();
          v47 = sub_257ECF4C0();
          v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

          v49 = sub_257ECF500();
          v51 = v50;

          v98 = v49;
          v99 = v51;
          v96 = sub_257ECF710();
          v97 = v52;
          sub_257ECF620();

          *a4 = v96;
          a4[1] = v97;
          sub_257BD7F48();
          return 0;
        }
      }
    }

    else
    {
LABEL_24:
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((aBlock[0] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        type metadata accessor for MAGUtilities();
        v78 = swift_getObjCClassFromMetadata();
        v79 = objc_opt_self();
        v80 = [v79 bundleForClass_];
        v81 = sub_257ECF4C0();
        v82 = sub_257ECF4C0();
        v83 = [v80 localizedStringForKey:v81 value:0 table:v82];

        v84 = sub_257ECF500();
        v86 = v85;

        *a4 = v84;
        a4[1] = v86;
        v87 = [v79 bundleForClass_];
        v88 = sub_257ECF4C0();
        v89 = sub_257ECF4C0();
        v90 = [v87 localizedStringForKey:v88 value:0 table:v89];

        v91 = sub_257ECF500();
        v93 = v92;

        result = 0;
        *a3 = v91;
        a3[1] = v93;
        return result;
      }
    }

    return 0;
  }

  else
  {

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock[0] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , LOBYTE(aBlock[0]) == 1))
    {
      *(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeTooDarkToDetect) = 0;
    }

    LOBYTE(v101[0]) = 0;
    LOBYTE(v98) = 0;
    sub_257BD8568(v101, &v98);
    if (LOBYTE(v101[0]) == 1)
    {
      type metadata accessor for MAGUtilities();
      v53 = swift_getObjCClassFromMetadata();
      v54 = objc_opt_self();
      v55 = [v54 bundleForClass_];
      v56 = sub_257ECF4C0();
      v57 = sub_257ECF4C0();
      v58 = [v55 localizedStringForKey:v56 value:0 table:v57];

      v59 = sub_257ECF500();
      v61 = v60;

      *a4 = v59;
      a4[1] = v61;
      v62 = [v54 bundleForClass_];
      v63 = sub_257ECF4C0();
      v64 = sub_257ECF4C0();
      v65 = [v62 localizedStringForKey:v63 value:0 table:v64];

      v66 = sub_257ECF500();
      v68 = v67;

      result = 0;
      *a3 = v66;
      a3[1] = v68;
      *a2 = v98;
    }

    else
    {
      v69 = v104[0] | v98;
      *a2 = (v104[0] | v98) & 1;

      *a4 = 0;
      a4[1] = 0;
      *a3 = 0;
      a3[1] = 0;
      if (v69)
      {
        v70 = sub_257E003E8();
        v71 = sub_257E00504();
        *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 0;
        v72 = objc_opt_self();
        v73 = swift_allocObject();
        *(v73 + 16) = v70;
        *(v73 + 24) = v71;
        aBlock[4] = sub_257BDAD38;
        aBlock[5] = v73;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_257D231C0;
        aBlock[3] = &block_descriptor_57;
        v74 = _Block_copy(aBlock);
        v75 = v70;
        v76 = v71;

        v77 = [v72 runningPropertyAnimatorWithDuration:0x20000 delay:v74 options:0 animations:0.2 completion:0.0];
        _Block_release(v74);
      }

      return 1;
    }
  }

  return result;
}

void sub_257BD7E34(void *a1, char *a2, _BYTE *a3)
{
  *a3 = 0;
  v6 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager);
  if (v6 && ((v8 = v6, v9 = [a1 capturedImage], objc_msgSend(v8, sel_computeLuminanceFromPixelBuffer_, v9), v11 = v10, v8, v9, v11 / 96.0 > 0.0) ? (v12 = v11 / 96.0 < 0.3) : (v12 = 0), v12))
  {
    v13 = 1;
    if ((*(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) & 1) == 0)
    {
      *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) == 1)
    {
      v13 = 0;
      *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) = 0;
LABEL_11:
      *a3 = 1;
      goto LABEL_12;
    }

    v13 = 0;
  }

LABEL_12:
  *a2 = v13;
}

uint64_t sub_257BD7F48()
{
  v1 = sub_257ECF100();
  v70 = *(v1 - 8);
  v71 = v1;
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v69 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_257ECF120();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v7, v8, v9, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECF190();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF1B0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22, v23, v24, v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v34 = &v54 - v33;
  v67 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem;
  if (*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem])
  {
    sub_257ECC3F0();
    sub_257ECF1E0();
  }

  v65 = sub_257BD52CC();
  v57 = sub_257ECFD30();
  sub_257ECF1A0();
  sub_257ECF220();
  v58 = *(v21 + 8);
  v58(v27, v20);
  v35 = swift_allocObject();
  *(v35 + 16) = v0;
  v77 = sub_257BDA96C;
  v78 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_257D231C0;
  v76 = &block_descriptor_1;
  v36 = _Block_copy(&aBlock);
  v62 = v0;
  v37 = v0;
  v60 = v20;
  v55 = v37;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  v59 = v21 + 8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  v61 = v27;
  v56 = v38;
  sub_257BD56C0();
  v39 = v68;
  sub_257ED0180();
  v40 = v57;
  MEMORY[0x259C727E0](v34, v19, v12, v36);
  _Block_release(v36);

  (*(v66 + 8))(v12, v39);
  (*(v63 + 8))(v19, v64);
  v41 = v20;
  v42 = v58;
  v58(v34, v41);
  v43 = swift_allocObject();
  v44 = v55;
  *(v43 + 16) = v55;
  v77 = sub_257BDAAE4;
  v78 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_257D231C0;
  v76 = &block_descriptor_6_0;
  _Block_copy(&aBlock);
  v72 = MEMORY[0x277D84F90];
  v45 = v44;
  sub_257ED0180();
  sub_257ECF1F0();
  swift_allocObject();
  v46 = sub_257ECF1D0();

  *&v62[v67] = v46;
  sub_257ECC3F0();

  v47 = sub_257ECFD30();
  v48 = v61;
  sub_257ECF1A0();
  v50 = v69;
  v49 = v70;
  *v69 = 10;
  v51 = v71;
  (*(v49 + 104))(v50, *MEMORY[0x277D85188], v71);
  MEMORY[0x259C71D30](v48, v50);
  (*(v49 + 8))(v50, v51);
  v52 = v60;
  v42(v48, v60);
  sub_257ECFCD0();

  return (v42)(v34, v52);
}

void sub_257BD8568(char *a1, _BYTE *a2)
{
  v5 = sub_257ECCC80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  v13 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = *(v13 + 16);
  sub_257ECC3F0();
  v15 = [v14 deviceMotion];
  if (!v15 || (v16 = v15, [v15 rotationRate], v18 = v17, v20 = v19, v22 = v21, v16, sqrt(v22 * v22 + v18 * v18 + v20 * v20) <= 5.0))
  {
    v25 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect;
    if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) == 1)
    {
      v26 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_tooFastLastDate;
      swift_beginAccess();
      (*(v6 + 16))(v12, v2 + v26, v5);
      sub_257ECCC10();
      v28 = v27;

      (*(v6 + 8))(v12, v5);
      v24 = 1;
      if (v28 > -1.0)
      {
        goto LABEL_12;
      }

      *(v2 + v25) = 0;
      *a2 = 1;
    }

    else
    {
    }

LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  if ((*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) = 1;
    *a2 = 1;
  }

  sub_257ECCC70();

  v23 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_tooFastLastDate;
  swift_beginAccess();
  (*(v6 + 40))(v2 + v23, v12, v5);
  swift_endAccess();
  v24 = 1;
LABEL_12:
  *a1 = v24;
}

void sub_257BD87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v78 = a5;
  v79 = a4;
  v77 = a3;
  v73 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v73, v8, v9, v10, v11);
  v76 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v75, v13, v14, v15, v16);
  v74 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_257ECF120();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_257ECF190();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28, v29, v30, v31);
  v33 = v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (v79)
    {
      sub_257BD52CC();

      v72 = sub_257ECFD30();
      v34 = swift_allocObject();
      v34[2] = v5;
      v34[3] = a1;
      v34[4] = a2;
      aBlock[4] = sub_257BDAD04;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_45;
      v35 = _Block_copy(aBlock);
      v71[1] = v5;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD56C0();
      sub_257ED0180();
      v36 = v72;
      MEMORY[0x259C72880](0, v33, v25, v35);
      _Block_release(v35);

      (*(v19 + 8))(v25, v18);
      (*(v27 + 8))(v33, v26);
      if (v78)
      {
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v37 = qword_281548348;
        v38 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
        swift_beginAccess();
        v39 = v38[1];
        v40 = v38[2];
        v80[0] = *v38;
        v80[1] = v39;
        v80[2] = v40;
        v41 = qword_2815447E0;

        if (v41 != -1)
        {
          v42 = swift_once();
        }

        MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
        v71[-2] = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080, qword_257EDD2B0);
        sub_257ECFD50();

        v47 = sub_257C592D0(0, v80[3]);

        if (v47)
        {
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v49 = objc_opt_self();
          v50 = [v49 bundleForClass_];
          v51 = sub_257ECF4C0();
          v52 = sub_257ECF4C0();
          v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

          v54 = sub_257ECF500();
          v56 = v55;

          v57 = v77;
          if (v54 == v77 && v56 == v79)
          {
            v58 = 3;
LABEL_12:

LABEL_15:
            v60 = v76;
            *v76 = v58;
            swift_storeEnumTagMultiPayload();
            v61 = v74;
            sub_257ECCCE0();
            v62 = v75;
            sub_257BDABC0(v60, v61 + *(v75 + 20), type metadata accessor for MAGOutputEvent.EventType);
            *(v61 + v62[6]) = 0;
            *(v61 + v62[7]) = 0;
            sub_257ECC3F0();
            sub_257BDAC28(v60, type metadata accessor for MAGOutputEvent.EventType);
            *(v61 + v62[8]) = v37;
            sub_257CBBC80(v61);
            sub_257BDAC28(v61, type metadata accessor for MAGOutputEvent);
            return;
          }

          v59 = sub_257ED0640();

          if (v59)
          {
            v58 = 3;
            goto LABEL_15;
          }

          v63 = [v49 bundleForClass_];
          v64 = sub_257ECF4C0();
          v65 = sub_257ECF4C0();
          v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

          v67 = sub_257ECF500();
          v69 = v68;

          if (v67 == v57 && v69 == v79)
          {
            v58 = 2;
            goto LABEL_12;
          }

          v70 = sub_257ED0640();

          if (v70)
          {
            v58 = 2;
            goto LABEL_15;
          }
        }
      }
    }
  }
}

void sub_257BD8F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[6] = a2;
  v15[7] = a3;
  sub_257BDAB08();
  v4 = sub_257ED0100();
  v6 = v5;
  v7 = sub_257E003E8();
  v8 = sub_257E00504();
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 1;
  v9 = sub_257ECF4C0();
  [v7 setText_];

  [v7 sizeToFit];
  [v7 setNeedsLayout];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v4;
  v11[5] = v6;
  v15[4] = sub_257BDAD2C;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_257D231C0;
  v15[3] = &block_descriptor_51;
  v12 = _Block_copy(v15);
  v13 = v7;
  v14 = v8;

  _Block_release(v12);
}

uint64_t sub_257BD9120()
{
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v2)
    {
      return 1;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) != 1)
  {
    return 0;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v3;
}

void sub_257BD9290(uint64_t a1)
{
  v2 = v1;
  v80 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v18)
  {
    v19 = v18;
    if ([v18 torchMode] == 1 && a1 == 0)
    {
      v76 = v4;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass_];
      v40 = sub_257ECF4C0();
      v77 = a1;
      v41 = v40;
      v42 = sub_257ECF4C0();
      v43 = [v39 localizedStringForKey:v41 value:0 table:v42];

      v44 = sub_257ECF500();
      v46 = v45;

      v78 = v44;
      v79 = v46;
      sub_257BDAB08();
      v47 = sub_257ED0100();
      v49 = v48;

      v50 = v2;
      v51 = sub_257E003E8();
      v52 = sub_257E00504();
      sub_257DFD370(v47, v49, v51, v52);

      a1 = v77;
      v2 = v50;
      if (sub_257BD9120())
      {
        *v10 = 5;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        sub_257BDABC0(v10, &v17[v11[5]], type metadata accessor for MAGOutputEvent.EventType);
        v17[v11[6]] = 0;
        v17[v11[7]] = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v53 = qword_281548348;
        sub_257ECC3F0();
        sub_257BDAC28(v10, type metadata accessor for MAGOutputEvent.EventType);
        *&v17[v11[8]] = v53;
        sub_257CBBC80(v17);
        sub_257BDAC28(v17, type metadata accessor for MAGOutputEvent);
      }
    }

    else
    {
      if ([v19 torchMode])
      {
        v21 = 0;
      }

      else
      {
        v21 = a1 == 1;
      }

      if (v21)
      {
        type metadata accessor for MAGUtilities();
        v22 = swift_getObjCClassFromMetadata();
        v23 = [objc_opt_self() bundleForClass_];
        v24 = sub_257ECF4C0();
        v25 = v2;
        v26 = sub_257ECF4C0();
        v27 = a1;
        v28 = [v23 localizedStringForKey:v24 value:0 table:v26];

        v29 = sub_257ECF500();
        v31 = v30;

        v78 = v29;
        v79 = v31;
        sub_257BDAB08();
        v32 = sub_257ED0100();
        v34 = v33;

        v35 = sub_257E003E8();
        v36 = sub_257E00504();
        v37 = v32;
        v2 = v25;
        sub_257DFD370(v37, v34, v35, v36);
        a1 = v27;
      }
    }

    v78 = 0;
    if ([v19 lockForConfiguration_])
    {
      v54 = v78;
      if ([v19 isTorchModeSupported_])
      {
        [v19 setTorchMode_];
        v55 = [v19 torchMode];
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode) = v55;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        if (a1 == 1)
        {
          v56 = 1.0;
        }

        else
        {
          v56 = 0.0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *&v78 = v56;
        sub_257ECC3F0();
        sub_257ECDD70();
      }

      [v19 unlockForConfiguration];
      v57 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem;
      v58 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem);
      if (v58)
      {
        type metadata accessor for MAGUtilities();
        v59 = swift_getObjCClassFromMetadata();
        v60 = v2;
        v61 = objc_opt_self();
        v62 = v58;
        v63 = [v61 bundleForClass_];
        v64 = sub_257ECF4C0();
        v65 = sub_257ECF4C0();
        v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

        sub_257ECF500();
        v67 = sub_257ECF4C0();

        [v62 setAccessibilityValue_];

        v68 = *(v60 + v57);
        if (v68)
        {
          v69 = v68;
          v70 = sub_257ECF4C0();
          v73 = [objc_opt_self() systemImageNamed_];

          if (v73)
          {
            v74 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
            v75 = [v73 imageByApplyingSymbolConfiguration_];
          }

          else
          {
            v75 = 0;
          }

          [v69 setImage_];
        }
      }
    }

    else
    {
      v71 = v78;
      v72 = sub_257ECC9F0();

      swift_willThrow();
    }
  }
}

void sub_257BD9B44()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v1)
  {
    v2 = v1;
    v8[0] = 0;
    if ([v1 lockForConfiguration_])
    {
      v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode;
      v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode);
      v5 = v8[0];
      if ([v2 isTorchModeSupported_])
      {
        [v2 setTorchMode_];
      }

      [v2 unlockForConfiguration];
    }

    else
    {
      v6 = v8[0];
      v7 = sub_257ECC9F0();

      swift_willThrow();
    }
  }
}

void sub_257BD9C78(char a1)
{
  v2 = v1;
  v91 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v18)
  {
    v19 = v18;
    v89 = 0;
    if (![v18 lockForConfiguration_])
    {
      v38 = v89;
      v39 = sub_257ECC9F0();

      swift_willThrow();
      return;
    }

    v20 = v89;
    v21 = &unk_279854000;
    v22 = [v19 torchMode];
    if (v22 == 1)
    {
      if ([v19 isTorchModeSupported_])
      {
        [v19 setTorchMode_];
      }

      if ((a1 & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 1;
      }

      v88 = v11;
      v40 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem;
      v41 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem);
      if (v41)
      {
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v43 = objc_opt_self();
        v87 = v41;
        v44 = [v43 bundleForClass_];
        v45 = sub_257ECF4C0();
        v46 = sub_257ECF4C0();
        v47 = [v44 localizedStringForKey:v45 value:0 table:v46];

        if (!v47)
        {
          sub_257ECF500();
          v47 = sub_257ECF4C0();
        }

        v48 = v87;
        [v87 setAccessibilityValue_];

        v49 = *(v2 + v40);
        if (v49)
        {
          v50 = v49;
          v51 = sub_257ECF4C0();
          v52 = [objc_opt_self() systemImageNamed_];

          if (v52)
          {
            v53 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
            v54 = [v52 imageByApplyingSymbolConfiguration_];
          }

          else
          {
            v54 = 0;
          }

          [v50 setImage_];
        }
      }

      type metadata accessor for MAGUtilities();
      v71 = swift_getObjCClassFromMetadata();
      v72 = [objc_opt_self() bundleForClass_];
      v73 = sub_257ECF4C0();
      v74 = sub_257ECF4C0();
      v75 = [v72 localizedStringForKey:v73 value:0 table:v74];

      v76 = sub_257ECF500();
      v78 = v77;

      v89 = v76;
      v90 = v78;
      sub_257BDAB08();
      v79 = sub_257ED0100();
      v81 = v80;

      v82 = sub_257E003E8();
      v83 = sub_257E00504();
      sub_257DFD370(v79, v81, v82, v83);

      v21 = &unk_279854000;
      if ((sub_257BD9120() & 1) != 0 && !UIAccessibilityIsVoiceOverRunning())
      {
        *v10 = 7;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        v84 = v88;
        sub_257BDABC0(v10, &v17[v88[5]], type metadata accessor for MAGOutputEvent.EventType);
        v17[v84[6]] = 0;
        v17[v84[7]] = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v85 = qword_281548348;
        sub_257ECC3F0();
        sub_257BDAC28(v10, type metadata accessor for MAGOutputEvent.EventType);
        *&v17[v84[8]] = v85;
        sub_257CBBC80(v17);
        sub_257BDAC28(v17, type metadata accessor for MAGOutputEvent);
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v89 == 1)
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v89 != 1)
      {
        goto LABEL_51;
      }

      v70 = 0;
    }

    else
    {
      if (v22)
      {
        goto LABEL_51;
      }

      if ([v19 isTorchModeSupported_])
      {
        [v19 setTorchMode_];
      }

      v88 = v11;
      *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
      v23 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem;
      v24 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem);
      if (v24)
      {
        type metadata accessor for MAGUtilities();
        v25 = swift_getObjCClassFromMetadata();
        v26 = objc_opt_self();
        v87 = v24;
        v27 = [v26 bundleForClass_];
        v28 = sub_257ECF4C0();
        v29 = sub_257ECF4C0();
        v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

        if (!v30)
        {
          sub_257ECF500();
          v30 = sub_257ECF4C0();
        }

        v31 = v87;
        [v87 setAccessibilityValue_];

        v32 = *(v2 + v23);
        if (v32)
        {
          v33 = v32;
          v34 = sub_257ECF4C0();
          v35 = [objc_opt_self() systemImageNamed_];

          if (v35)
          {
            v36 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
            v37 = [v35 imageByApplyingSymbolConfiguration_];
          }

          else
          {
            v37 = 0;
          }

          [v33 setImage_];
        }
      }

      type metadata accessor for MAGUtilities();
      v55 = swift_getObjCClassFromMetadata();
      v56 = [objc_opt_self() bundleForClass_];
      v57 = sub_257ECF4C0();
      v58 = sub_257ECF4C0();
      v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

      v60 = sub_257ECF500();
      v62 = v61;

      v89 = v60;
      v90 = v62;
      sub_257BDAB08();
      v63 = sub_257ED0100();
      v65 = v64;

      v66 = sub_257E003E8();
      v67 = sub_257E00504();
      sub_257DFD370(v63, v65, v66, v67);

      if ((sub_257BD9120() & 1) != 0 && !UIAccessibilityIsVoiceOverRunning())
      {
        *v10 = 6;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        v68 = v88;
        sub_257BDABC0(v10, &v17[v88[5]], type metadata accessor for MAGOutputEvent.EventType);
        v17[v68[6]] = 0;
        v17[v68[7]] = 0;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v69 = qword_281548348;
        sub_257ECC3F0();
        sub_257BDAC28(v10, type metadata accessor for MAGOutputEvent.EventType);
        *&v17[v68[8]] = v69;
        sub_257CBBC80(v17);
        sub_257BDAC28(v17, type metadata accessor for MAGOutputEvent);
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v89 == 1)
      {
        *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v21 = &unk_279854000;
      if ((v89 & 1) == 0)
      {
        goto LABEL_51;
      }

      v70 = 1;
    }

    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn) = v70;
LABEL_51:
    v86 = [v19 v21[504]];
    *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode) = v86;
    [v19 unlockForConfiguration];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257BDA9A8(uint64_t a1, uint64_t a2, char a3)
{
  sub_257BD9290(a2);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v6 == 1)
  {
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = a3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v5 == 1)
  {
    *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn) = a3;
  }
}

unint64_t sub_257BDAB08()
{
  result = qword_281544080;
  if (!qword_281544080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544080);
  }

  return result;
}

uint64_t sub_257BDAB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGOutputEngine.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BDABC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257BDAC28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_29Tm()
{

  return swift_deallocObject();
}

void sub_257BDAF44()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  v3 = sub_257ECCEB0();
  if (!(*(*(v3 - 8) + 48))(&v1[v2], 1, v3))
  {
    v4 = sub_257ECCE80();
    swift_endAccess();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v22 != 1)
    {
      goto LABEL_15;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v22 && v22 == 1)
    {
    }

    else
    {
      v5 = sub_257ED0640();

      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v6 = [v1 parentViewController];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [v6 navigationItem];

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_257ECF4C0();
    v12 = sub_257ECF4C0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_257ECF500();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_257ED9BD0;
    v15 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = v14;
      v4 = MEMORY[0x277D83B88];
      v13 = MEMORY[0x277D83C10];
      *(v14 + 56) = MEMORY[0x277D83B88];
      *(v14 + 64) = v13;
      *(v14 + 32) = v15;
      v16 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
      swift_beginAccess();
      v17 = *&v1[v16];
      if (!(v17 >> 62))
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
        v12[12] = v4;
        v12[13] = v13;
        v12[9] = v18;
        sub_257ECF540();

        v19 = sub_257ECF4C0();

        [v8 setTitle_];

        goto LABEL_17;
      }
    }

    v18 = sub_257ED0210();
    goto LABEL_14;
  }

  swift_endAccess();
LABEL_15:
  v20 = [v1 parentViewController];
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v19 = [v20 navigationItem];

  [v19 setTitle_];
LABEL_17:
}

unint64_t sub_257BDB398()
{
  v1 = sub_257BDB500();
  v2 = [v1 viewControllers];

  if (!v2)
  {
    return 0;
  }

  sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
  v3 = sub_257ECF810();

  if (v3 >> 62)
  {
    result = sub_257ED0210();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x259C72E20](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  type metadata accessor for FreezeFramePageContentViewController(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v10 = *(v0 + v9);

    v11 = sub_257DB83B8(v8, v10);
    LOBYTE(v9) = v12;

    if ((v9 & 1) == 0)
    {
      return v11;
    }
  }

  else
  {
  }

  return 0;
}

id sub_257BDB500()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5438, &qword_257ED9D20);
    inited = swift_initStackObject();
    v5 = *MEMORY[0x277D76DB0];
    *(inited + 32) = *MEMORY[0x277D76DB0];
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 64) = MEMORY[0x277D85048];
    *(inited + 40) = 0x4030000000000000;
    v6 = v5;
    sub_257BE8540(inited);
    swift_setDeallocating();
    sub_257BE4084(inited + 32, &unk_27F8F5440, &qword_257ED9D28);
    v7 = objc_allocWithZone(type metadata accessor for MFPageViewController());
    type metadata accessor for OptionsKey(0);
    sub_257BE3CDC(&qword_27F8F5098, type metadata accessor for OptionsKey, &unk_257ED99F0);
    v8 = sub_257ECF3C0();

    v9 = [v7 initWithTransitionStyle:1 navigationOrientation:0 options:v8];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_257BDB690(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs;
  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs))
  {
    v4 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs);
  }

  else
  {
    v5 = v2;
    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    sub_257C73204();
    v4 = v6;
    *(v5 + v3) = v6;
  }

  return v4;
}

uint64_t sub_257BDB730()
{
  v0 = sub_257BDB500();
  v1 = [v0 viewControllers];

  if (!v1)
  {
    return 0;
  }

  sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
  v2 = sub_257ECF810();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    return 0;
  }

  result = sub_257ED0210();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C72E20](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  type metadata accessor for FreezeFramePageContentViewController(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_257BDB830()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlConstraints;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);

  v4 = sub_257ECF7F0();

  [v2 deactivateConstraints_];

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  sub_257E287A0();
  v6 = v5;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257ED9BE0;
  v8 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v9 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl] bottomAnchor];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 bottomAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:v6];
  *(v7 + 32) = v13;
  v14 = [*&v1[v8] centerXAnchor];
  v15 = sub_257BDB500();
  v16 = [v15 view];

  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = [v16 centerXAnchor];

  v18 = [v14 constraintEqualToAnchor:v17 constant:0.0];
  *(v7 + 40) = v18;
  *&v1[v3] = v7;

  v19 = sub_257ECF7F0();

  [v2 activateConstraints_];
}

id sub_257BDBBA8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_freezeFrameDisplayAppearanceSubscription] = 0;
  v2 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_cancellables] = v3;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages] = v2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  MEMORY[0x259C6F990](0, 0);
  v5 = sub_257ECCEB0();
  (*(*(v5 - 8) + 56))(&v0[v4], 0, 1, v5);
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageSpacing] = 0x4030000000000000;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs] = 0;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlConstraints] = v2;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___textReaderModeButtonItem] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_257BDBD68(uint64_t a1)
{
  v60 = a1;
  v2 = type metadata accessor for Asset(0);
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = v52 - v14;
  v16 = sub_257ECCB70();
  v61 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = v52 - v28;
  v53 = v1;
  v32 = sub_257BDB690(v30, v31);
  v33 = *(v32 + 16);
  if (v33)
  {
    v62[0] = MEMORY[0x277D84F90];
    v34 = v32;
    sub_257ED0360();
    v35 = *(v61 + 16);
    v36 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v52[1] = v34;
    v37 = v34 + v36;
    v56 = *(v61 + 72);
    v57 = v35;
    v61 += 16;
    v54 = (v61 - 8);
    v55 = (v61 + 40);
    v58 = v2;
    v59 = v8;
    do
    {
      v38 = v57;
      v57(v29, v37, v16);
      v38(v22, v29, v16);
      v38(v15, v22, v16);
      (*v55)(v15, 0, 1, v16);
      *&v15[*(v2 + 20)] = 0;
      sub_257BE3098(v15, v8);
      v39 = objc_allocWithZone(type metadata accessor for FreezeFramePageContentViewController(0));
      v40 = v60;
      sub_257ECC3F0();
      sub_257DD9568(v8, v40);
      sub_257BE30FC(v15);
      v41 = *v54;
      (*v54)(v22, v16);
      v41(v29, v16);
      sub_257ED0330();
      sub_257ED0370();
      v2 = v58;
      v8 = v59;
      sub_257ED0380();
      sub_257ED0340();
      v37 += v56;
      --v33;
    }

    while (v33);

    v42 = v62[0];
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v43 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  v44 = v53;
  swift_beginAccess();
  *(v44 + v43) = v42;

  v45 = *(v44 + v43);
  if (v45 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x259C72E20](j, v45);
      }

      else
      {
        if (j >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v48 = *(v45 + 8 * j + 32);
      }

      v49 = v48;
      v50 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      *&v48[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = &off_2869076B0;
      swift_unknownObjectWeakAssign();

      if (v50 == i)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t sub_257BDC14C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Asset(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257ED9BF0;
  v15 = sub_257ECCB70();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  *&v13[*(v7 + 28)] = a1;
  objc_allocWithZone(type metadata accessor for FreezeFramePageContentViewController(0));
  v16 = a1;
  sub_257ECC3F0();
  *(v14 + 32) = sub_257DD9568(v13, a2);
  v17 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  *(v3 + v17) = v14;

  v18 = *(v3 + v17);
  if (v18 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x259C72E20](j, v18);
      }

      else
      {
        if (j >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v21 = *(v18 + 8 * j + 32);
      }

      v22 = v21;
      v23 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      *&v21[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = &off_2869076B0;
      swift_unknownObjectWeakAssign();

      if (v23 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_257BDC378(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = type metadata accessor for Asset(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_257ED9BF0;
  v17 = sub_257ECCB70();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  *&v15[*(v9 + 28)] = a1;
  objc_allocWithZone(type metadata accessor for FreezeFramePageContentViewController(0));
  v18 = a1;
  sub_257ECC3F0();
  *(v16 + 32) = sub_257DD99DC(v15, a2, v5);
  v19 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  *(v4 + v19) = v16;

  v20 = *(v4 + v19);
  if (v20 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x259C72E20](j, v20);
      }

      else
      {
        if (j >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v23 = *(v20 + 8 * j + 32);
      }

      v24 = v23;
      v25 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      *&v23[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = &off_2869076B0;
      swift_unknownObjectWeakAssign();

      if (v25 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_257BDC5D4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v58.origin.x = v4;
  v58.origin.y = v6;
  v58.size.width = v8;
  v58.size.height = v10;
  v11 = CGRectGetMaxY(v58) + -50.0;
  v12 = [v1 mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v59.origin.x = v14;
  v59.origin.y = v16;
  v59.size.width = v18;
  v59.size.height = v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D757E0]) initWithFrame_];
  v22 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v23 = *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl] = v21;
  v24 = v21;

  v25 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v26 = *&v0[v25];
  if (v26 >> 62)
  {
    v27 = sub_257ED0210();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v24 setNumberOfPages_];

  [*&v0[v22] setCurrentPage_];
  [*&v0[v22] setAlpha_];
  v28 = *&v0[v22];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setTintColor_];

  v32 = *&v0[v22];
  v33 = [v29 whiteColor];
  [v32 setPageIndicatorTintColor_];

  v34 = *&v0[v22];
  v35 = [v29 blackColor];
  [v34 setCurrentPageIndicatorTintColor_];

  [*&v0[v22] addTarget:v0 action:sel_didTapPageControl_ forControlEvents:4096];
  [*&v0[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v22] setBackgroundStyle_];
  v36 = [v0 view];
  if (v36)
  {
    v37 = v36;
    [v36 addSubview_];

    v38 = *&v0[v22];
    v39 = *&v0[v25];
    if (v39 >> 62)
    {
      v51 = *&v0[v22];
      v40 = sub_257ED0210();
      v38 = v51;
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = 0.0;
    if (v40 > 1)
    {
      v41 = 1.0;
    }

    [v38 setAlpha_];
    v42 = *&v0[v22];
    v43 = swift_allocObject();
    *(v43 + 16) = v0;
    v56 = sub_257BE41E4;
    v57 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_257D231C0;
    v55 = &block_descriptor_96;
    v44 = _Block_copy(&aBlock);
    v45 = v42;
    v46 = v0;

    [v45 _setAccessibilityIncrementBlock_];
    _Block_release(v44);

    v47 = *&v0[v22];
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v56 = sub_257BE41EC;
    v57 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_257D231C0;
    v55 = &block_descriptor_102;
    v49 = _Block_copy(&aBlock);
    v46;
    v50 = v47;

    [v50 _setAccessibilityDecrementBlock_];
    _Block_release(v49);

    sub_257BDB830();
  }

  else
  {
    __break(1u);
  }
}

void sub_257BDCAC4(uint64_t a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257BDB398();
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x259C6F990](v12, 0);
  sub_257BDCCF8(v9);
  (*(v3 + 8))(v9, v2);
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v2 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl);
  v13 = sub_257BDB398();
  if (__OFADD__(v13, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v2 setCurrentPage_];

  v2 = sub_257BDB500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v9 = swift_allocObject();
  *(v9 + 1) = xmmword_257ED9BF0;
  v3 = [*(a1 + v3) currentPage];
  v14 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v16 = MEMORY[0x259C72E20](v3);
    goto LABEL_7;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * v3 + 32);
LABEL_7:
    v17 = v16;
    swift_endAccess();
    *(v9 + 4) = v17;
    sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
    v18 = sub_257ECF7F0();

    [v2 setViewControllers:v18 direction:0 animated:1 completion:0];

    return;
  }

  __break(1u);
}

uint64_t sub_257BDCCF8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECDA30();
  v68 = *(v11 - 1);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v67 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v17 - 8, v18, v19, v20, v21);
  v64 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460, &qword_257ED9D40);
  MEMORY[0x28223BE20](v30 - 8, v31, v32, v33, v34);
  v36 = &v63 - v35;
  v37 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  if (!(*(v5 + 48))(&v1[v37], 1, v4))
  {
    v38 = sub_257ECCE80();
    swift_endAccess();
    v39 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v40 = *&v2[v39];
    if (v40 >> 62)
    {
      goto LABEL_23;
    }

    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  swift_endAccess();
  while (1)
  {
    v65 = v11;
    v11 = *(v5 + 16);
    (v11)(v36, a1, v4);
    (*(v5 + 56))(v36, 0, 1, v4);
    swift_beginAccess();
    sub_257BE40FC(v36, &v2[v37]);
    swift_endAccess();
    sub_257BDAF44();
    v46 = sub_257BE4084(v36, &unk_27F8F5460, &qword_257ED9D40);
    v37 = *(sub_257BDB690(v46, v47) + 16);

    v48 = sub_257ECCE80();
    if (v48 < 0 || v48 >= v37)
    {
      break;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v39 = *(qword_281548340 + 16);
    sub_257ECC3F0();
    v38 = a1;
    v49 = sub_257ECCE80();
    if ((v49 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v38 = v49;
      v4 = *&v2[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs];
      if (v49 < *(v4 + 16))
      {
        v50 = sub_257ECCB70();
        v51 = *(v50 - 8);
        (*(v51 + 16))(v29, v4 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v50);
        (*(v51 + 56))(v29, 0, 1, v50);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257BE401C(v29, v64, &qword_27F8F5F30, &qword_257EDA9E0);
        sub_257ECDD70();
        return sub_257BE4084(v29, &qword_27F8F5F30, &qword_257EDA9E0);
      }
    }

    __break(1u);
LABEL_23:
    v41 = sub_257ED0210();
    if ((v41 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      v44 = MEMORY[0x259C72E20](v38);
      goto LABEL_9;
    }

LABEL_5:
    if (v38 < v41)
    {
      result = swift_beginAccess();
      v43 = *&v2[v39];
      if ((v43 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if (v38 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v44 = *(v43 + 8 * v38 + 32);
LABEL_9:
      v45 = v44;
      swift_endAccess();
      sub_257DD6114();
      sub_257DD643C();
      sub_257DD65E0();
    }
  }

  v52 = v67;
  sub_257ECD400();
  v53 = v66;
  (v11)(v66, a1, v4);
  v54 = v2;
  v55 = sub_257ECDA20();
  v56 = sub_257ECFBD0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134218240;
    v58 = sub_257ECCE80();
    v59 = (*(v5 + 8))(v53, v4);
    *(v57 + 4) = v58;
    *(v57 + 12) = 2048;
    v61 = *(sub_257BDB690(v59, v60) + 16);

    *(v57 + 14) = v61;

    _os_log_impl(&dword_257BAC000, v55, v56, "Requested active page %ld exceeds asset count %ld", v57, 0x16u);
    MEMORY[0x259C74820](v57, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v53, v4);

    v55 = v54;
  }

  v62 = v65;

  return (*(v68 + 8))(v52, v62);
}

void sub_257BDD38C(uint64_t a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257BDB398();
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x259C6F990](v12, 0);
  sub_257BDCCF8(v9);
  (*(v3 + 8))(v9, v2);
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  v2 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl);
  v13 = sub_257BDB398();
  if (__OFSUB__(v13, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v2 setCurrentPage_];

  v2 = sub_257BDB500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v9 = swift_allocObject();
  *(v9 + 1) = xmmword_257ED9BF0;
  v3 = [*(a1 + v3) currentPage];
  v14 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v16 = MEMORY[0x259C72E20](v3);
    goto LABEL_7;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * v3 + 32);
LABEL_7:
    v17 = v16;
    swift_endAccess();
    *(v9 + 4) = v17;
    sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
    v18 = sub_257ECF7F0();

    [v2 setViewControllers:v18 direction:1 animated:1 completion:0];

    return;
  }

  __break(1u);
}

void sub_257BDD5C0(uint64_t a1)
{
  sub_257BE41F4(a1, v14);
  sub_257BD2C2C(0, &unk_27F8F5500, 0x277D757E0);
  if (swift_dynamicCast())
  {
    v2 = [v13 currentPage];
    v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if ((v4 & 0xC000000000000001) == 0)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 8 * v2 + 32);
LABEL_6:
        v6 = v5;
        swift_endAccess();
        v7 = [v13 currentPage];
        v8 = v7 < sub_257BDB398();
        v9 = sub_257BDB500();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_257ED9BF0;
        *(v10 + 32) = v6;
        sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
        v11 = v6;
        v12 = sub_257ECF7F0();

        [v9 setViewControllers:v12 direction:v8 animated:1 completion:0];

        return;
      }

      __break(1u);
      return;
    }

    v5 = MEMORY[0x259C72E20](v2);
    goto LABEL_6;
  }
}

void sub_257BDD7E0()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setAutoresizingMask_];
  v10 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  [v11 setUserInteractionEnabled_];
  [v0 setView_];
}

void sub_257BDD954()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v1 = sub_257BDB500();
  [v1 setDelegate_];

  v2 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController] setDataSource_];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [*&v0[v2] view];
  if (v5)
  {
    v6 = v5;
    [v4 addSubview_];

    [*&v0[v2] didMoveToParentViewController_];
    v7 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v8 = *&v0[v7];
    if (v8 >> 62)
    {
      if (sub_257ED0210())
      {
LABEL_5:
        if ((v8 & 0xC000000000000001) == 0)
        {
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v8 + 32);
LABEL_8:
            v10 = *&v0[v2];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_257ED9BF0;
            *(v11 + 32) = v9;
            sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
            v12 = v10;
            v13 = v9;
            v14 = sub_257ECF7F0();

            [v12 setViewControllers:v14 direction:0 animated:1 completion:0];

            sub_257BDC5D4();
            return;
          }

          __break(1u);
          goto LABEL_13;
        }

LABEL_11:

        v9 = MEMORY[0x259C72E20](0, v8);

        goto LABEL_8;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    sub_257ED0410();
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

id sub_257BDDC34(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &selRef_imageByApplyingSymbolConfiguration_;
  if (a1)
  {
    goto LABEL_15;
  }

  v17 = ObjectType;
  v5 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v15 = v5;
  v16 = v1;
  v6 = *&v1[v5];
  if (v6 >> 62)
  {
LABEL_18:
    v7 = sub_257ED0210();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
LABEL_14:

    v1 = v16;
    *&v16[v15] = MEMORY[0x277D84F90];

    a1 = 0;
    ObjectType = v17;
LABEL_15:
    v18.receiver = v1;
    v18.super_class = ObjectType;
    return objc_msgSendSuper2(&v18, v4[19], a1);
  }

  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C72E20](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v12 = v4;
    [v9 v4[19]];
    result = [v10 view];
    if (!result)
    {
      break;
    }

    v14 = result;
    [result removeFromSuperview];

    [v10 removeFromParentViewController];
    ++v8;
    v4 = v12;
    if (v11 == v7)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

double sub_257BDDE4C()
{
  v70 = sub_257ECF130();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v1, v2, v3, v4);
  v67 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECFD10();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  MEMORY[0x28223BE20](v62, v12, v13, v14, v15);
  v61 = &v59 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0, &qword_257EE4710);
  MEMORY[0x28223BE20](v60, v17, v18, v19, v20);
  v59 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0, &unk_257ED9EA0);
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E60, &qword_257EEBBD0);
  v63 = *(v32 - 8);
  v64 = v32;
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v38 = &v59 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54E0, &unk_257ED9EB0);
  v65 = *(v39 - 8);
  v66 = v39;
  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  v45 = &v59 - v44;
  v73 = v0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_cancellables) = MEMORY[0x277D84FA0];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350, &unk_257EE6DF0);
  sub_257ECDD30();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0, qword_257ED9EC0);
  sub_257ECDD30();
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v46 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0, &unk_257ED9EA0, MEMORY[0x277CBCEC8]);
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0, &qword_257EE4710, v46);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, v46);
  sub_257ECDC60();
  v47 = v69;
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v49 = v67;
  v48 = v68;
  v50 = v70;
  (*(v68 + 104))(v67, *MEMORY[0x277D851C0], v70);
  v51 = sub_257ECFD90();
  (*(v48 + 8))(v49, v50);
  v74 = v51;
  sub_257BD2D4C(&unk_281544490, &qword_27F8F9E60, &qword_257EEBBD0, MEMORY[0x277CBCB00]);
  sub_257BE416C();
  v52 = v64;
  sub_257ECDE00();

  (*(v71 + 8))(v47, v72);
  (*(v63 + 8))(v38, v52);
  v53 = swift_allocObject();
  v54 = v73;
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_257BE41D4;
  *(v55 + 24) = v53;
  sub_257BD2D4C(&unk_2815442A8, &unk_27F8F54E0, &unk_257ED9EB0, MEMORY[0x277CBCD20]);
  v56 = v66;
  v57 = sub_257ECDE50();

  (*(v65 + 8))(v45, v56);
  *(v54 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_freezeFrameDisplayAppearanceSubscription) = v57;

  return result;
}

void sub_257BDE660(char *a1, char a2, uint64_t a3, double a4, double a5)
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a4 + -0.5;
    if (a4 + -0.5 > 0.5)
    {
      v11 = 0.5;
    }

    if (v11 <= -0.5)
    {
      v11 = -0.5;
    }

    if (a5 <= 0.5)
    {
      v13 = 2.5;
      if (a5 * 1.4 + 0.3 <= 2.5)
      {
        v13 = a5 * 1.4 + 0.3;
      }
    }

    else
    {
      v12 = (a5 + -0.5) * 3.0 + 1.0;
      v13 = 2.5;
      if (v12 <= 2.5)
      {
        if ((a2 & 1) == 0)
        {
LABEL_9:
          if (v12 <= 0.3)
          {
            v12 = 0.3;
          }

          v14 = v8;
          sub_257BDEC34(&v14, v11, v12);
        }

LABEL_12:

        return;
      }
    }

    v12 = v13;
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }
}

uint64_t sub_257BDE770(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECDA30();
  v14 = *(v13 - 8);
  *&v19 = MEMORY[0x28223BE20](v13, v15, v16, v17, v18).n128_u64[0];
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewWillAppear_, a1 & 1, v19);
  sub_257ECD400();
  v22 = sub_257ECDA20();
  v23 = sub_257ECFBD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_257BAC000, v22, v23, "viewWillAppear", v24, 2u);
    MEMORY[0x259C74820](v24, -1, -1);
  }

  (*(v14 + 8))(v21, v13);
  MEMORY[0x259C6F990](0, 0);
  sub_257BDCCF8(v12);
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_257BDEC34(_BYTE *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECF120();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_257ECF190();
  v15 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v16, v17, v18, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v20) = *a1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness] = a2;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast] = a3;
  v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter] = v20;
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v22 = sub_257ECFD30();
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  aBlock[4] = sub_257BE4014;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_72;
  v24 = _Block_copy(aBlock);
  v25 = v4;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v21, v14, v24);
  _Block_release(v24);

  (*(v28 + 8))(v14, v8);
  return (*(v15 + 8))(v21, v27);
}

uint64_t sub_257BDEF64(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v28 = v3 & 0xFFFFFFFFFFFFFF8;
    v29 = v3 & 0xC000000000000001;
    v26 = i;
    v27 = v3;
    while (1)
    {
      if (v29)
      {
        v10 = MEMORY[0x259C72E20](v5, v3);
      }

      else
      {
        if (v5 >= *(v28 + 16))
        {
          goto LABEL_43;
        }

        v10 = *(v3 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness);
      if (vabdd_f64(0.0, v13) <= 0.01)
      {
        v14 = 0.0;
        v39 = 0u;
        v38 = 0u;
      }

      else
      {
        *&v39 = &type metadata for DisplayFilter;
        *(&v39 + 1) = &off_28690CEA0;
        v14 = v13;
        LOBYTE(v38) = 0;
      }

      v37 = v14;
      v15 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast);
      if (vabdd_f64(1.0, v15) <= 0.01)
      {
        v16 = 0.0;
        v41 = 0u;
        v42 = 0u;
      }

      else
      {
        *&v42 = &type metadata for DisplayFilter;
        *(&v42 + 1) = &off_28690CEA0;
        v16 = v15;
        LOBYTE(v41) = 1;
      }

      v40 = v16;
      v17 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter);
      if (v17 == 12)
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
      }

      else
      {
        *(&v44 + 1) = &type metadata for ColorFilter;
        v45 = &off_28690CD28;
        LOBYTE(v43) = v17;
      }

      sub_257BE401C(&v37, &v34, &qword_27F8F54B8, &unk_257EE4070);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      if (*(&v35 + 1))
      {
        sub_257BE40E4(&v30, v33);
        v18 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_257BFCD80(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
        }

        v20 = v18[2];
        v19 = v18[3];
        if (v20 >= v19 >> 1)
        {
          v18 = sub_257BFCD80((v19 > 1), v20 + 1, 1, v18);
        }

        v18[2] = v20 + 1;
        sub_257BE40E4(v33, &v18[5 * v20 + 4]);
      }

      else
      {
        sub_257BE4084(&v30, &qword_27F8F54B8, &unk_257EE4070);
        v18 = MEMORY[0x277D84F90];
      }

      sub_257BE401C(&v40, &v34, &qword_27F8F54B8, &unk_257EE4070);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      if (*(&v35 + 1))
      {
        sub_257BE40E4(&v30, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_257BFCD80(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_257BFCD80((v21 > 1), v22 + 1, 1, v18);
        }

        v18[2] = v22 + 1;
        sub_257BE40E4(v33, &v18[5 * v22 + 4]);
      }

      else
      {
        sub_257BE4084(&v30, &qword_27F8F54B8, &unk_257EE4070);
      }

      sub_257BE401C(&v43, &v34, &qword_27F8F54B8, &unk_257EE4070);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      if (*(&v35 + 1))
      {
        sub_257BE40E4(&v30, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_257BFCD80(0, v18[2] + 1, 1, v18);
        }

        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          v18 = sub_257BFCD80((v23 > 1), v24 + 1, 1, v18);
        }

        v18[2] = v24 + 1;
        sub_257BE40E4(v33, &v18[5 * v24 + 4]);
      }

      else
      {
        sub_257BE4084(&v30, &qword_27F8F54B8, &unk_257EE4070);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8, &unk_257EE4070);
      swift_arrayDestroy();
      *&v11[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet] = v18;

      v6 = [*&v11[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView] layer];
      sub_257D18590(v18);
      v8 = v7;

      sub_257EB7394(v8);

      v9 = sub_257ECF7F0();

      [v6 setFilters_];

      ++v5;
      v3 = v27;
      if (v12 == v26)
      {
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }
}

void sub_257BDF500()
{

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath, &unk_27F8F5460, &qword_257ED9D40);

  sub_257BB000C(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate);

  sub_257BB000C(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___textReaderModeButtonItem);
}

uint64_t type metadata accessor for FreezeFramePageFlippingController(uint64_t a1)
{
  result = qword_27F8F5410;
  if (!qword_27F8F5410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257BDF720(uint64_t a1)
{
  sub_257BDF800(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257BDF800(uint64_t a1)
{
  if (!qword_27F8F5420)
  {
    sub_257ECCEB0();
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8F5420);
    }
  }
}

double sub_257BDF858(double a1, double a2, double a3, double a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = v4;
  if (sub_257D71788())
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_257BE3158;
    *(v12 + 24) = v9;
    v15[4] = sub_257BE3C8C;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_257DFE438;
    v15[3] = &block_descriptor_2;
    v13 = _Block_copy(v15);
    sub_257ECC3F0();

    [v11 sbs:v13 unlockDeviceIfNeededAndPerform:?];

    _Block_release(v13);
  }

  else
  {
    sub_257BE2818(v10, a1, a2, a3, a4);
  }

  return result;
}

void sub_257BDF9F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257BDFC18();
  if (v4)
  {
    v5 = v4;
    [v5 setModalPresentationStyle_];
    sub_257BD2C2C(0, &unk_27F8F5450, 0x277D75D30);
    sub_257BE401C(a1, &v12, &unk_27F8F62F0, &unk_257ED9D30);
    v6 = swift_allocObject();
    v7 = v13;
    *(v6 + 16) = v12;
    *(v6 + 32) = v7;
    v8 = sub_257ECFE80();

    [v5 setPreferredTransition_];

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    v9 = v5;
    if (byte_27F8F8D88 == 1)
    {
      v10 = [v5 popoverPresentationController];

      if (!v10)
      {
LABEL_13:
        [v2 presentViewController:v5 animated:1 completion:0];

        return;
      }

      sub_257BE401C(a1, &v12, &unk_27F8F62F0, &unk_257ED9D30);
      if (*(&v13 + 1))
      {
        sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
        if (swift_dynamicCast())
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        sub_257BE4084(&v12, &unk_27F8F62F0, &unk_257ED9D30);
        v9 = 0;
      }

      [v10 setSourceView_];
    }

    goto LABEL_13;
  }
}

id sub_257BDFC18()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v124 = *(v2 - 8);
  *&v125 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v120 = &v115 - v21;
  v22 = sub_257ECCB70();
  v122 = *(v22 - 8);
  v123 = v22;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v119 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v121 = &v115 - v33;
  v34 = &unk_27F8F5460;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460, &qword_257ED9D40);
  MEMORY[0x28223BE20](v35 - 8, v36, v37, v38, v39);
  v41 = &v115 - v40;
  v42 = sub_257ECCEB0();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v44, v45, v46, v47);
  v49 = &v115 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  sub_257BE401C(v1 + v50, v41, &unk_27F8F5460, &qword_257ED9D40);
  if (v43[6](v41, 1, v42) == 1)
  {
    v51 = &unk_27F8F5460;
    v52 = &qword_257ED9D40;
    v53 = v41;
LABEL_3:
    sub_257BE4084(v53, v51, v52);
LABEL_16:
    sub_257ECD400();
    v66 = sub_257ECDA20();
    v67 = sub_257ECFBD0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_257BAC000, v66, v67, "Unable to share image", v68, 2u);
      MEMORY[0x259C74820](v68, -1, -1);
    }

    (*(v124 + 8))(v8, v125);
    return 0;
  }

  v43[4](v49, v41, v42);
  KeyPath = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v55 = *(v1 + KeyPath);
  v56 = v49;
  if (v55 >> 62)
  {
    v79 = sub_257ED0210();
    if ((v79 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_33;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v79)
  {
    if (sub_257ECCE80() >= i)
    {
      (v43[1])(v56, v42);
      goto LABEL_16;
    }

    v34 = sub_257ECCE80();
    swift_beginAccess();
    v58 = *(v1 + KeyPath);
    v118 = v42;
    v116 = KeyPath;
    if ((v58 & 0xC000000000000001) != 0)
    {
LABEL_33:
      v59 = MEMORY[0x259C72E20](v34);
    }

    else
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
        goto LABEL_13;
      }

      if (v34 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v59 = *(v58 + 8 * v34 + 32);
    }

    v60 = v59;
    swift_endAccess();
    v61 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
    swift_beginAccess();
    sub_257BE401C(v60 + v61, v15, &qword_27F8F5F30, &qword_257EDA9E0);

    KeyPath = v122;
    v62 = v123;
    v42 = *(v122 + 48);
    v63 = (v42)(v15, 1, v123);
    v117 = v43;
    if (v63 != 1)
    {
      v64 = v120;
      (*(KeyPath + 32))(v120, v15, v62);
      (*(KeyPath + 56))(v64, 0, 1, v62);
      goto LABEL_20;
    }

    if (qword_281544FE0 != -1)
    {
      goto LABEL_36;
    }

LABEL_13:
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    v64 = v120;
    sub_257ECDD60();

    v62 = v123;
    v65 = (v42)(v15, 1, v123);
    v43 = v117;
    if (v65 != 1)
    {
      sub_257BE4084(v15, &qword_27F8F5F30, &qword_257EDA9E0);
    }

LABEL_20:
    if ((v42)(v64, 1, v62) == 1)
    {
      (v43[1])(v56, v118);
      v51 = &qword_27F8F5F30;
      v52 = &qword_257EDA9E0;
      v53 = v64;
      goto LABEL_3;
    }

    (*(v122 + 32))(v121, v64, v62);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v71 = [objc_opt_self() bundleForClass_];
    v72 = sub_257ECF4C0();
    v73 = sub_257ECF4C0();
    v43 = [v71 localizedStringForKey:v72 value:0 table:v73];

    sub_257ECF500();
    v8 = v74;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
    v42 = swift_allocObject();
    v125 = xmmword_257ED6D30;
    *(v42 + 16) = xmmword_257ED6D30;
    v75 = sub_257ECCE80();
    if (__OFADD__(v75, 1))
    {
      break;
    }

    v76 = MEMORY[0x277D83C10];
    *(v42 + 56) = MEMORY[0x277D83B88];
    *(v42 + 64) = v76;
    *(v42 + 32) = v75 + 1;
    v42 = sub_257ECF540();
    v15 = v77;

    v124 = v56;
    v56 = sub_257ECCE80();
    v78 = v116;
    v79 = swift_beginAccess();
    v80 = *(v1 + v78);
    v120 = v15;
    if ((v80 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v56 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v81 = *(v80 + 8 * v56 + 32);
      goto LABEL_27;
    }

    __break(1u);
LABEL_41:
    ;
  }

  __break(1u);
LABEL_38:
  v81 = MEMORY[0x259C72E20](v56);
LABEL_27:
  v82 = v81;
  swift_endAccess();
  v83 = &v82[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset];
  swift_beginAccess();
  v84 = *&v83[*(type metadata accessor for Asset(0) + 20)];
  v85 = v84;

  v86 = v122;
  v87 = *(v122 + 16);
  v88 = v119;
  v89 = v123;
  v87(v119, v121, v123);
  v90 = type metadata accessor for MFSnapshotProvider(0);
  v91 = objc_allocWithZone(v90);
  v92 = &v91[OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_title];
  v93 = v120;
  *v92 = v42;
  v92[1] = v93;
  v87(&v91[OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_url], v88, v89);
  *&v91[OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_image] = v84;
  v94 = v85;
  v95 = sub_257ECCAE0();
  v126.receiver = v91;
  v126.super_class = v90;
  v96 = objc_msgSendSuper2(&v126, sel_initWithPlaceholderItem_, v95);

  v97 = *(v86 + 8);
  v97(v88, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470, &unk_257EDBF30);
  v98 = swift_allocObject();
  *(v98 + 16) = v125;
  *(v98 + 56) = v90;
  *(v98 + 32) = v96;
  v99 = objc_allocWithZone(type metadata accessor for MFActivityViewController());
  v100 = v96;
  v101 = sub_257ECF7F0();

  v102 = [v99 initWithActivityItems:v101 applicationActivities:0];

  v103 = [objc_opt_self() standardUserDefaults];
  v104 = sub_257ECF4C0();
  v105 = [v103 BOOLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5478, &unk_257ED9DA0);
  v106 = swift_allocObject();
  if (v105)
  {
    *(v106 + 16) = xmmword_257ED9BD0;
    v107 = *MEMORY[0x277D54740];
    v108 = *MEMORY[0x277D54788];
    *(v106 + 32) = *MEMORY[0x277D54740];
    *(v106 + 40) = v108;
    type metadata accessor for ActivityType(0);
    v109 = v102;
    v110 = v107;
    v111 = v108;
  }

  else
  {
    *(v106 + 16) = v125;
    v112 = *MEMORY[0x277D54740];
    *(v106 + 32) = *MEMORY[0x277D54740];
    type metadata accessor for ActivityType(0);
    v109 = v102;
    v113 = v112;
  }

  v114 = sub_257ECF7F0();

  [v109 setExcludedActivityTypes_];

  v97(v121, v89);
  (v117[1])(v124, v118);
  return v109;
}

uint64_t sub_257BE07DC(uint64_t a1, uint64_t a2)
{
  sub_257BE401C(a2, v4, &unk_27F8F62F0, &unk_257ED9D30);
  if (v5)
  {
    sub_257BD2C2C(0, &unk_281543E00, 0x277D75D18);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_257BE4084(v4, &unk_27F8F62F0, &unk_257ED9D30);
    return 0;
  }
}

void sub_257BE0880(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &aBlock[-1] - v8;
  swift_beginAccess();
  v10 = qword_27F8FA070;
  if (qword_27F8FA070)
  {
    v11 = sub_257ECF930();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_257ECF900();
    swift_retain_n();
    v12 = v1;
    v13 = sub_257ECF8F0();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    v14[5] = v10;
    sub_257C3FBD4(0, 0, v9, &unk_257ED9DD8, v14);
  }

  else
  {
    sub_257BE401C(a1, v25, &unk_27F8F62F0, &unk_257ED9D30);
    sub_257BE401C(v25, v24, &unk_27F8F62F0, &unk_257ED9D30);
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v17 = v25[1];
    *(v16 + 24) = v25[0];
    *(v16 + 40) = v17;
    v18 = v1;
    if (sub_257D71788())
    {
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = sub_257BE3ED4;
      *(v20 + 24) = v16;
      aBlock[4] = sub_257BE429C;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257DFE438;
      aBlock[3] = &block_descriptor_55;
      v21 = _Block_copy(aBlock);
      sub_257ECC3F0();

      [v19 sbs:v21 unlockDeviceIfNeededAndPerform:?];

      _Block_release(v21);
    }

    else
    {
      sub_257BE1A74(v18, v24);
    }

    sub_257BE4084(v24, &unk_27F8F62F0, &unk_257ED9D30);
  }
}

uint64_t sub_257BE0B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v6 = sub_257ECDA30();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v7 = sub_257ECD720();
  v5[48] = v7;
  v5[49] = *(v7 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  v5[53] = swift_task_alloc();
  v8 = sub_257ECCB70();
  v5[54] = v8;
  v5[55] = *(v8 - 8);
  v5[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460, &qword_257ED9D40);
  v5[57] = swift_task_alloc();
  v9 = sub_257ECCEB0();
  v5[58] = v9;
  v5[59] = *(v9 - 8);
  v5[60] = swift_task_alloc();
  sub_257ECF900();
  v5[61] = sub_257ECF8F0();
  v11 = sub_257ECF8B0();
  v5[62] = v11;
  v5[63] = v10;

  return MEMORY[0x2822009F8](sub_257BE0E04, v11, v10);
}

uint64_t sub_257BE0E04()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[42];
  v5 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  swift_beginAccess();
  sub_257BE401C(v4 + v5, v3, &unk_27F8F5460, &qword_257ED9D40);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v10 = v0[42];
    (*(v0[59] + 32))(v0[60], v0[57], v0[58]);
    v11 = sub_257ECCE80();
    v12 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    v13 = swift_beginAccess();
    v14 = *(v10 + v12);
    if ((v14 & 0xC000000000000001) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v14 + 8 * v11 + 32);
LABEL_7:
        v16 = v15;
        v17 = v0[54];
        v18 = v0[55];
        v19 = v0[53];
        swift_endAccess();
        v20 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
        swift_beginAccess();
        sub_257BE401C(v16 + v20, v19, &qword_27F8F5F30, &qword_257EDA9E0);

        if ((*(v18 + 48))(v19, 1, v17) == 1)
        {
          v21 = v0[53];
          (*(v0[59] + 8))(v0[60], v0[58]);

          v7 = &qword_27F8F5F30;
          v8 = &qword_257EDA9E0;
          v9 = v21;
          goto LABEL_9;
        }

        (*(v0[55] + 32))(v0[56], v0[53], v0[54]);
        v24 = [objc_allocWithZone(MEMORY[0x277CCAE58]) initWithActivityType_];
        v0[64] = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0, &unk_257ED9DE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        v0[36] = 0xD000000000000017;
        v0[37] = 0x8000000257EF8B40;
        v26 = MEMORY[0x277D837D0];
        sub_257ED0280();
        *(inited + 96) = v26;
        *(inited + 72) = 0xD000000000000011;
        *(inited + 80) = 0x8000000257EF8B60;
        v0[38] = 0xD000000000000014;
        v0[39] = 0x8000000257EF8B80;
        sub_257ED0280();
        v27 = sub_257ECCAD0();
        *(inited + 168) = v26;
        *(inited + 144) = v27;
        *(inited + 152) = v28;
        sub_257BE88A0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0, &qword_257EE0A60);
        swift_arrayDestroy();
        v29 = sub_257ECF3C0();

        [v24 setUserInfo_];

        v30 = swift_task_alloc();
        v0[65] = v30;
        *v30 = v0;
        v30[1] = sub_257BE1298;
        v13 = v24;

        return MEMORY[0x282123370](v13);
      }

      __break(1u);
      return MEMORY[0x282123370](v13);
    }

    v15 = MEMORY[0x259C72E20](v11);
    goto LABEL_7;
  }

  v6 = v0[57];

  v7 = &unk_27F8F5460;
  v8 = &qword_257ED9D40;
  v9 = v6;
LABEL_9:
  sub_257BE4084(v9, v7, v8);

  v22 = v0[1];

  return v22();
}

uint64_t sub_257BE1298()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 496);
  if (v0)
  {
    v5 = sub_257BE14E8;
  }

  else
  {
    v5 = sub_257BE13D4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257BE13D4()
{
  v1 = v0[64];
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[59];
  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[54];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_257BE14E8()
{
  v66 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);

  *(v0 + 320) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0, &unk_257ED9DF0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 528);
  if (v4)
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 416);
    v9 = *(v0 + 392);
    v8 = *(v0 + 400);
    v10 = *(v0 + 384);

    (*(v9 + 32))(v7, v8, v10);
    sub_257ECD400();
    (*(v9 + 16))(v6, v7, v10);
    v11 = sub_257ECDA20();
    v12 = sub_257ECFBE0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);
    v16 = *(v0 + 464);
    v61 = *(v0 + 448);
    v63 = *(v0 + 440);
    v17 = *(v0 + 408);
    v57 = *(v0 + 416);
    v59 = *(v0 + 432);
    v19 = *(v0 + 384);
    v18 = *(v0 + 392);
    v20 = *(v0 + 360);
    v54 = *(v0 + 352);
    v55 = *(v0 + 376);
    if (v13)
    {
      v49 = v12;
      v21 = swift_slowAlloc();
      v52 = v14;
      v22 = swift_slowAlloc();
      v65 = v22;
      *v21 = 136315138;
      sub_257BE3CDC(&qword_27F8F54B0, MEMORY[0x277CD4890], MEMORY[0x277CD4898]);
      v50 = v16;
      v51 = v15;
      v23 = sub_257ED0720();
      v25 = v24;
      v26 = *(v18 + 8);
      v26(v17, v19);
      v27 = sub_257BF1FC8(v23, v25, &v65);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_257BAC000, v11, v49, "Unable to open app - ApplicationLaunchError - %s", v21, 0xCu);
      v28 = __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x259C74820](v22, -1, -1, v28);
      MEMORY[0x259C74820](v21, -1, -1);

      (*(v20 + 8))(v55, v54);
      v26(v57, v19);
      (*(v63 + 8))(v61, v59);
      v52[1](v51, v50);
    }

    else
    {

      v46 = *(v18 + 8);
      v46(v17, v19);
      (*(v20 + 8))(v55, v54);
      v46(v57, v19);
      (*(v63 + 8))(v61, v59);
      v14[1](v15, v16);
    }
  }

  else
  {

    sub_257ECD400();
    v29 = v5;
    v30 = sub_257ECDA20();
    v31 = sub_257ECFBE0();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 528);
    v35 = *(v0 + 472);
    v34 = *(v0 + 480);
    v36 = *(v0 + 464);
    v38 = *(v0 + 440);
    v37 = *(v0 + 448);
    v39 = *(v0 + 360);
    v62 = *(v0 + 368);
    v64 = *(v0 + 432);
    v60 = *(v0 + 352);
    if (v32)
    {
      v58 = *(v0 + 464);
      v40 = swift_slowAlloc();
      v56 = v37;
      v41 = swift_slowAlloc();
      v65 = v41;
      *v40 = 136315138;
      v53 = v33;
      swift_getErrorValue();
      v42 = sub_257ED0720();
      v44 = sub_257BF1FC8(v42, v43, &v65);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_257BAC000, v30, v31, "Unable to open app - unknown error type - %s", v40, 0xCu);
      v45 = __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x259C74820](v41, -1, -1, v45);
      MEMORY[0x259C74820](v40, -1, -1);

      (*(v39 + 8))(v62, v60);
      (*(v38 + 8))(v56, v64);
      (*(v35 + 8))(v34, v58);
    }

    else
    {

      (*(v39 + 8))(v62, v60);
      (*(v38 + 8))(v37, v64);
      (*(v35 + 8))(v34, v36);
    }
  }

  v47 = *(v0 + 8);

  return v47();
}

void sub_257BE1A74(void *a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_257BDF9F4(a2);
  }

  else
  {
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v26 = v12;
    v25 = sub_257ECFD30();
    sub_257BE401C(a2, v28, &unk_27F8F62F0, &unk_257ED9D30);
    v20 = swift_allocObject();
    v21 = v28[1];
    *(v20 + 24) = v28[0];
    *(v20 + 16) = a1;
    *(v20 + 40) = v21;
    aBlock[4] = sub_257BE3FE8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_66;
    v22 = _Block_copy(aBlock);
    v23 = a1;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v24 = v25;
    MEMORY[0x259C72880](0, v19, v11, v22);
    _Block_release(v22);

    (*(v5 + 8))(v11, v4);
    (*(v13 + 8))(v19, v26);
  }
}

uint64_t sub_257BE1DC0()
{
  v1 = sub_257ECF120();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v9, v10, v11, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v15 = sub_257ECFD30();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_257BE3D24;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_39_0;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v14, v7, v17);
  _Block_release(v17);

  (*(v21 + 8))(v7, v1);
  return (*(v8 + 8))(v14, v20);
}

void sub_257BE20B4(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v10 - 8, v11, v12, v13, v14);
  v16 = &v36 - v15;
  v17 = sub_257BDB500();
  v18 = [v17 viewControllers];

  if (!v18)
  {
    goto LABEL_12;
  }

  sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
  v19 = sub_257ECF810();

  if (v19 >> 62)
  {
    if (sub_257ED0210())
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x259C72E20](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  type metadata accessor for FreezeFramePageContentViewController(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    v24 = sub_257ECF930();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    sub_257ECF900();
    v25 = v21;
    v26 = sub_257ECF8F0();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v23;
    sub_257E81524(0, 0, v16, &unk_257ED9DC8, v27);

    return;
  }

LABEL_12:
  sub_257ECD400();
  v29 = a1;
  v30 = sub_257ECDA20();
  v31 = sub_257ECFBD0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *&v29[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController];
    *(v32 + 4) = v34;
    *v33 = v34;
    v35 = v34;
    _os_log_impl(&dword_257BAC000, v30, v31, "Could not load view controllers of pageController: %@", v32, 0xCu);
    sub_257BE4084(v33, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v33, -1, -1);
    MEMORY[0x259C74820](v32, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
}

uint64_t sub_257BE2440()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257BE24EC;

  return sub_257DD6750();
}

uint64_t sub_257BE24EC()
{
  *(*v1 + 40) = v0;

  v3 = sub_257ECF8B0();
  if (v0)
  {
    v4 = sub_257BE26AC;
  }

  else
  {
    v4 = sub_257BE2648;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_257BE2648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257BE26AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257BE2710(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_257BE4084(v9, &unk_27F8F62F0, &unk_257ED9D30);
}

void sub_257BE2818(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_257ECF120();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_257ECF190();
  v19 = *(v18 - 1);
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v26 = sub_257BDFC18();
    if (v26)
    {
      v38 = v26;
      [v38 setModalPresentationStyle_];
      v27 = [v38 popoverPresentationController];
      if (v27)
      {
        v28 = v27;
        v29 = [a1 view];
        [v28 setSourceView_];
      }

      v30 = [v38 popoverPresentationController];
      [v30 setSourceRect_];

      v31 = [v38 popoverPresentationController];
      if (v31)
      {
        [v31 setPermittedArrowDirections_];
      }

      [a1 presentViewController:v38 animated:1 completion:0];
      v32 = v38;
    }
  }

  else
  {
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v38 = v18;
    v37 = sub_257ECFD30();
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = a2;
    *(v33 + 32) = a3;
    *(v33 + 40) = a4;
    *(v33 + 48) = a5;
    aBlock[4] = sub_257BE3CAC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_33_0;
    v34 = _Block_copy(aBlock);
    v35 = a1;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BE3CDC(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
    sub_257ED0180();
    v36 = v37;
    MEMORY[0x259C72880](0, v25, v17, v34);
    _Block_release(v34);

    (*(v11 + 8))(v17, v10);
    (*(v19 + 8))(v25, v38);
  }
}

void sub_257BE2C98(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_257BDFC18();
  if (v10)
  {
    v16 = v10;
    [v16 setModalPresentationStyle_];
    v11 = [v16 popoverPresentationController];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 view];
      [v12 setSourceView_];
    }

    v14 = [v16 popoverPresentationController];
    [v14 setSourceRect_];

    v15 = [v16 popoverPresentationController];
    if (v15)
    {
      [v15 setPermittedArrowDirections_];
    }

    [a1 presentViewController:v16 animated:1 completion:0];
  }
}

double sub_257BE2E98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return result;
}

uint64_t sub_257BE2F14(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v18 - v15;
  sub_257BE401C(a1, &v18 - v15, &qword_27F8F5F30, &qword_257EDA9E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257BE401C(v16, v9, &qword_27F8F5F30, &qword_257EDA9E0);
  sub_257ECC3F0();
  sub_257ECDD70();
  return sub_257BE4084(v16, &qword_27F8F5F30, &qword_257EDA9E0);
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_257BE3098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BE30FC(uint64_t a1)
{
  v2 = type metadata accessor for Asset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_257BE3170()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_freezeFrameDisplayAppearanceSubscription) = 0;
  v1 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_cancellables) = v2;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages) = v1;
  v3 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_activePageIndexPath;
  MEMORY[0x259C6F990](0, 0);
  v4 = sub_257ECCEB0();
  (*(*(v4 - 8) + 56))(v0 + v3, 0, 1, v4);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageSpacing) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___pageController) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___assetURLs) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlConstraints) = v1;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController____lazy_storage___textReaderModeButtonItem) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257BE331C(unint64_t a1)
{
  v18 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_257ED0210();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C72E20](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for FreezeFramePageContentViewController(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v5 = v18;
  }

  while (v4 != v3);
LABEL_21:
  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C72E20](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 8 * j + 32);
      }

      v12 = v11;
      v13 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_257DD6114();
      sub_257DD643C();
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v17)
      {
        v14 = sub_257ED0640();

        if ((v14 & 1) == 0)
        {
          v15 = [*&v12[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView] panGestureRecognizer];
          [v15 setEnabled_];
        }
      }

      else
      {
      }

      if (v13 == i)
      {
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

void sub_257BE3668(void *a1, char a2, char a3)
{
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  *&v13 = MEMORY[0x28223BE20](v7, v9, v10, v11, v12).n128_u64[0];
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    return;
  }

  v16 = [a1 viewControllers];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  sub_257BD2C2C(0, &unk_281543F40, 0x277D75D28);
  v18 = sub_257ECF810();

  if (v18 >> 62)
  {
    v19 = sub_257ED0210();
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_22:

    return;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x259C72E20](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v20 = *(v18 + 32);
  }

  v34 = v20;

  type metadata accessor for FreezeFramePageContentViewController(0);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
    swift_beginAccess();
    v24 = *(v3 + v23);

    v25 = sub_257DB83B8(v22, v24);
    v27 = v26;

    if ((v27 & 1) != 0 || (a2 & 1) == 0)
    {
LABEL_16:

      return;
    }

    MEMORY[0x259C6F990](v25, 0);
    sub_257BDCCF8(v15);
    (*(v8 + 8))(v15, v7);
    v28 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl;
    [*(v3 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControl) setCurrentPage_];
    v19 = *(v3 + v28);
    v29 = *(v3 + v23);
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
      v31 = 0.0;
      if (v30 > 1)
      {
        v31 = 1.0;
      }

      [v19 setAlpha_];
      goto LABEL_16;
    }

LABEL_27:
    v33 = v19;
    v30 = sub_257ED0210();
    v19 = v33;
    goto LABEL_13;
  }

  v32 = v34;
}

id sub_257BE3960(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  type metadata accessor for FreezeFramePageContentViewController(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = a1;

  v11 = sub_257DB83B8(v7, v9);
  v13 = v12;

  if (v13)
  {
LABEL_15:

    return 0;
  }

  v14 = *&v1[v8];
  if (v14 >> 62)
  {
    v15 = sub_257ED0210();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v11, v5);
  v11 += v5;
  if (v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v11 & 0x8000000000000000) != 0 || v11 >= v15)
  {
    goto LABEL_15;
  }

  result = swift_beginAccess();
  v17 = *&v1[v8];
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v18 = MEMORY[0x259C72E20](v11);
    goto LABEL_14;
  }

  if (v11 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v11 + 32);
LABEL_14:
    v19 = v18;
    swift_endAccess();

    return v19;
  }

  __break(1u);
  return result;
}

id sub_257BE3AF4(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (v4 == 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  type metadata accessor for FreezeFramePageContentViewController(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pages;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = a1;

  v11 = sub_257DB83B8(v7, v9);
  v13 = v12;

  if (v13)
  {
LABEL_15:

    return 0;
  }

  v14 = *&v1[v8];
  if (v14 >> 62)
  {
    v15 = sub_257ED0210();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v11, v5);
  v11 += v5;
  if (v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v11 & 0x8000000000000000) != 0 || v11 >= v15)
  {
    goto LABEL_15;
  }

  result = swift_beginAccess();
  v17 = *&v1[v8];
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v18 = MEMORY[0x259C72E20](v11);
    goto LABEL_14;
  }

  if (v11 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v11 + 32);
LABEL_14:
    v19 = v18;
    swift_endAccess();

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257BE3CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257BE3D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257BE2440();
}

uint64_t sub_257BE3DE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257BE3EE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257BE3DE0;

  return sub_257BE0B68(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_47Tm()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_257BE401C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_257BE4084(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_257BE40E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_257BE40FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5460, &qword_257ED9D40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_257BE416C()
{
  result = qword_281543F20;
  if (!qword_281543F20)
  {
    sub_257BD2C2C(255, &qword_281543F10, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543F20);
  }

  return result;
}

uint64_t sub_257BE41F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_257BE42A0(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257BE44C8(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

void sub_257BE45D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v39 = *(v18 - 8);
  *&v23 = MEMORY[0x28223BE20](v18, v19, v20, v21, v22).n128_u64[0];
  v25 = &v37 - v24;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_viewDidLoad, v23);
  v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_tableView];
  [v26 setDataSource_];
  [v26 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = sub_257ECF4C0();
  [v26 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v1 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_7;
  }

  v30 = v29;
  [v29 addSubview_];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v32 = v31;
  v38 = v18;
  sub_257EB6FD8(v31, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v33 = [objc_opt_self() mainRunLoop];
  v40 = v33;
  v34 = sub_257ED0080();
  (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257BD2C74();
  sub_257ECDDF0();
  sub_257BD2CDC(v9);

  (*(v11 + 8))(v17, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v35 = v38;
  v36 = sub_257ECDE50();

  (*(v39 + 8))(v25, v35);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_speechFeedbackSubscription] = v36;
}

void sub_257BE4AE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v15[7] == 1)
    {
      [v11 beginUpdates];
      MEMORY[0x259C6F970](1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_257ED6D30;
      (*(v3 + 16))(v13 + v12, v9, v2);
      v14 = sub_257ECF7F0();

      [v11 reloadRowsAtIndexPaths:v14 withRowAnimation:100];

      [v11 endUpdates];
      (*(v3 + 8))(v9, v2);
    }

    else
    {
    }
  }
}

void sub_257BE4D7C(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257BE4F38(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_availableTextDetectionFeedbacks] = &unk_286903BE0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257BE50FC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_availableTextDetectionFeedbacks] = &unk_286903C08;
  v4 = OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257BE5310(void *a1)
{
  v2 = v1;
  v4 = 0xD000000000000011;
  v5 = sub_257ECF4C0();
  v6 = sub_257ECCE30();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  v8 = sub_257ECCEA0();
  if (v8 == 1)
  {
    v22 = [v7 textLabel];
    if (v22)
    {
      v23 = v22;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_257ECF4C0();
      v27 = sub_257ECF4C0();
      v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

      if (!v28)
      {
        sub_257ECF500();
        v28 = sub_257ECF4C0();
      }

      [v23 setText_];
    }

    v29 = [v7 textLabel];
    if (v29)
    {
      v30 = v29;
      [v29 setNumberOfLines_];
    }

    v31 = [v7 textLabel];
    if (v31)
    {
      v32 = v31;
      [v31 setLineBreakMode_];
    }

    v4 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport35TextDetectionSettingsViewController_availableTextDetectionFeedbacks);
    v10 = sub_257ECCE60();
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
      }

      else
      {
        v6 = *(v9 + v10 + 32);
        v11 = [v7 textLabel];
        if (v11)
        {
          v12 = v11;
          sub_257BE42A0(v6);
          v13 = sub_257ECF4C0();

          [v12 setText_];
        }

        v4 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        if (qword_281544FE0 == -1)
        {
          goto LABEL_8;
        }
      }

      swift_once();
LABEL_8:
      v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
      swift_beginAccess();
      v41 = *v14;
      v43 = v14[1];
      v46 = v14[2];
      v15 = qword_2815447E0;

      if (v15 != -1)
      {
        v16 = swift_once();
      }

      MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
      sub_257ECFD50();

      v21 = sub_257C592E8(v6, v47);

      [v4 setOn_];
      v4 = v4;
      [v4 setTag_];
      [v4 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v7 setAccessoryView_];

LABEL_23:
      [v7 setAccessoryType_];

      return v7;
    }

    __break(1u);
LABEL_26:
    swift_once();
LABEL_20:
    v33 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
    swift_beginAccess();
    v42 = *v33;
    v44 = *(v33 + 8);
    LOBYTE(v45) = *(v33 + 16);
    v34 = qword_2815447E0;

    if (v34 != -1)
    {
      v35 = swift_once();
    }

    MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
    sub_257ECFD50();

    [v4 setOn_];
    [v4 addTarget:v2 action:sel_didToggleFlashlightSwitch_ forControlEvents:4096];
    [v7 setAccessoryView_];
    goto LABEL_23;
  }

  return v7;
}

uint64_t getEnumTagSinglePayload for TextDetectionFeedback(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextDetectionFeedback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257BE5EDC()
{
  result = qword_27F8F5530;
  if (!qword_27F8F5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5530);
  }

  return result;
}

unint64_t sub_257BE5F74()
{
  result = qword_2815446A8;
  if (!qword_2815446A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446A8);
  }

  return result;
}

double sub_257BE5FC8(void *a1)
{
  v2 = [a1 tag];
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if ([a1 isOn])
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = qword_2815447E0;

    if (v5 != -1)
    {
      v6 = swift_once();
    }

    MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
    sub_257ECFD50();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5550, &unk_257EDA0B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = v4;
    sub_257EB05F8(inited);
    sub_257D519D8(v24, 1);
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = qword_2815447E0;

    if (v12 != -1)
    {
      v13 = swift_once();
    }

    MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540, qword_257ED9FD0);
    sub_257ECFD50();

    v18 = *(v24 + 16);
    if (v18)
    {
      v19 = (v24 + 32);
      v20 = MEMORY[0x277D84F90];
      do
      {
        v23 = *v19;
        if (v4 != v23)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_257BF2704(0, *(v20 + 16) + 1, 1);
          }

          v22 = *(v20 + 16);
          v21 = *(v20 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_257BF2704((v21 > 1), v22 + 1, 1);
          }

          *(v20 + 16) = v22 + 1;
          *(v20 + v22 + 32) = v23;
        }

        ++v19;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    sub_257D519D8(v20, 1);
  }

  return result;
}

uint64_t sub_257BE63B8(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  v11 = [a1 isOn];
  v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionFlashlightEnabled;
  swift_beginAccess();
  v20 = v11;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *&v19[-16] = &v20;
  *&v19[-8] = v12;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  return swift_endAccess();
}

uint64_t sub_257BE659C(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

id MAGAdvancedEvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_257BE66F0(v2, v3, v4);
}

id sub_257BE66F0(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t static MAGAdvancedEvent.didGenerateFramingGuidance(guidance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

void static MAGAdvancedEvent.didCompleteFraming()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

id static MAGAdvancedEvent.didGenerateDocumentObservation(observation:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return a1;
}

double static MAGAdvancedEvent.didGenerateEmptyDocumentObservation()@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_257EDA120;
  *(a1 + 16) = 2;
  return result;
}

unint64_t MAGAdvancedEvent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_257ED02D0();

  if (v3)
  {
    if (v3 == 1)
    {
      v4 = "ty Document Observation";
      v5 = 0xD000000000000021;
    }

    else
    {
      if (v1 | v2)
      {
        v5 = 0xD000000000000027;
      }

      else
      {
        v5 = 0xD00000000000001DLL;
      }

      if (v1 | v2)
      {
        v4 = "Did Generate Framing Guidance";
      }

      else
      {
        v4 = "Advanced Event: ";
      }
    }
  }

  else
  {
    v5 = 0xD000000000000022;
    v4 = "ument Observation";
  }

  MEMORY[0x259C72150](v5, v4 | 0x8000000000000000);

  return 0xD000000000000010;
}