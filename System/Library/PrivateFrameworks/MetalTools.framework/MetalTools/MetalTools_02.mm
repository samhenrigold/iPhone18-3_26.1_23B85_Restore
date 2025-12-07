void emitComputePipelineUsage(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = MEMORY[0x277CD7168];
    while (1)
    {
      v7 = *(v5 + 6);
      if (v7)
      {
        if (!*v6)
        {
          goto LABEL_7;
        }

        if (*v6 == 1)
        {
          break;
        }
      }

LABEL_9:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    printf("\n\nComputePipelineUsage, pipelineID=%u, kernelID=%u, usageCount=%u", *(v5 + 4), *(v5 + 5), v7);
LABEL_7:
    v8 = [a1 telemetryLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v5 + 4);
      v10 = *(v5 + 5);
      v11 = *(v5 + 6);
      *buf = 67109632;
      v30 = v9;
      v31 = 1024;
      v32 = v10;
      v33 = 1024;
      LODWORD(v34) = v11;
      _os_log_impl(&dword_22E0FF000, v8, OS_LOG_TYPE_DEFAULT, "ComputePipelineUsage, pipelineID=%u, kernelID=%u, usageCount=%u", buf, 0x14u);
    }

    goto LABEL_9;
  }

LABEL_10:
  context = objc_autoreleasePoolPush();
  v12 = *(a3 + 16);
  if (v12)
  {
    while (1)
    {
      v13 = [MEMORY[0x277CCAB68] string];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v12[4];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [v13 appendFormat:@"%s=%u, ", objc_msgSend(*(*(&v25 + 1) + 8 * i), "UTF8String"), objc_msgSend(objc_msgSend(v12[4], "objectForKey:", *(*(&v25 + 1) + 8 * i)), "unsignedIntegerValue")];
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
        }

        while (v16);
      }

      if ([v13 length] >= 2)
      {
        [v13 deleteCharactersInRange:{objc_msgSend(v13, "length") - 2, 2}];
      }

      v19 = *(v12 + 6);
      if (!v19)
      {
        goto LABEL_26;
      }

      if (!*MEMORY[0x277CD7168])
      {
        goto LABEL_24;
      }

      if (*MEMORY[0x277CD7168] == 1)
      {
        break;
      }

LABEL_26:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    printf("\n\nKernelUsage, kernelID=%u, usageCount=%u%s", *(v12 + 4), v19, [v13 UTF8String]);
LABEL_24:
    v20 = [a1 telemetryLog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v12 + 4);
      v22 = *(v12 + 6);
      v23 = [v13 UTF8String];
      *buf = 67109634;
      v30 = v21;
      v31 = 1024;
      v32 = v22;
      v33 = 2080;
      v34 = v23;
      _os_log_impl(&dword_22E0FF000, v20, OS_LOG_TYPE_DEFAULT, "KernelUsage, kernelID=%u, usageCount=%u%s", buf, 0x18u);
    }

    goto LABEL_26;
  }

LABEL_27:
  objc_autoreleasePoolPop(context);
}

void emitComputePipelineStats(void *a1, uint64_t a2, _DWORD *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAB68] stringWithString:{@"ComputeFunctionStats, "}];
  for (i = *(a2 + 16); i; i = *i)
  {
    v8 = i + 2;
    if (*(i + 39) < 0)
    {
      v8 = *v8;
    }

    [v6 appendFormat:@"min%s=%u, max%s=%u, avg%s=%f, total%s=%llu, count%s=%u, ", v8, *(i + 10), v8, *(i + 11), v8, (i[6] / *(i + 14)), v8, i[6], v8, *(i + 14)];
  }

  [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 2, 2}];
  v9 = MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      goto LABEL_10;
    }

    printf("\n\n%s", [v6 UTF8String]);
  }

  v10 = [a1 telemetryLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v18 = [v6 UTF8String];
    _os_log_impl(&dword_22E0FF000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_10:
  if (!*a3)
  {
    return;
  }

  if (*v9)
  {
    if (*v9 != 1)
    {
      return;
    }

    printf("\n\nComputePipeline, total=%u, kernelRegisterSpill=%u, threadgroupBarrier=%u, deviceMemoryAtomics=%u, threadgroupMemoryAtomics=%u", *a3, a3[1], a3[2], a3[3], a3[4]);
  }

  v11 = [a1 telemetryLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = a3[2];
    v15 = a3[3];
    v16 = a3[4];
    *buf = 67110144;
    *v18 = v12;
    *&v18[4] = 1024;
    *&v18[6] = v13;
    v19 = 1024;
    v20 = v14;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_impl(&dword_22E0FF000, v11, OS_LOG_TYPE_DEFAULT, "ComputePipeline, total=%u, kernelRegisterSpill=%u, threadgroupBarrier=%u, deviceMemoryAtomics=%u, threadgroupMemoryAtomics=%u", buf, 0x20u);
  }
}

void sub_22E1AB4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_22E1ABB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1ABC64(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *verifyCopyFromTensorToTensor(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v12 = [a2 dataType];
  if (v12 != [a5 dataType])
  {
    verifyCopyFromTensorToTensor_cold_1(a2, a5, a1);
  }

  [a2 dimensions];
  verifySlice();
  [a5 dimensions];
  verifySlice();
  if ([a4 rank])
  {
    v13 = 0;
    v14 = 1;
    v15 = 1;
    do
    {
      v15 *= [a4 extentAtDimensionIndex:v13];
      v13 = v14;
      v16 = [a4 rank] > v14++;
    }

    while (v16);
  }

  else
  {
    v15 = 1;
  }

  result = [a7 rank];
  if (result)
  {
    v18 = 0;
    v19 = 1;
    v20 = 1;
    do
    {
      v20 *= [a7 extentAtDimensionIndex:v18];
      v18 = v19;
      result = [a7 rank];
      v16 = result > v19++;
    }

    while (v16);
  }

  else
  {
    v20 = 1;
  }

  if (v15 != v20)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t validateArg(uint64_t a1, unint64_t a2, MTLDebugFunctionArgument *a3)
{
  result = MTLReportFailureTypeEnabled();
  if (result && a3->isValid && !a3->hasBeenUsed)
  {
    MTLArgumentTypeToString(a1);
    return MTLReportFailure();
  }

  return result;
}

void sub_22E1ADF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *validateBuiltinArguments(MTLDebugComputePipelineState *a1, MTLSize *a2, MTLSize *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(MTLComputePipelineReflection *)[(MTLDebugComputePipelineState *)a1 validationReflection] builtInArguments];
  result = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        v29 = xmmword_22E27C270;
        depth = 1;
        v8 = [v7 builtInType];
        if (v8 > 10)
        {
          if ((v8 - 15) < 6)
          {
            goto LABEL_13;
          }

          if (v8 != 11)
          {
            if (v8 == 12)
            {
              goto LABEL_13;
            }

LABEL_20:
            v16 = [v7 name];
            MTLReportFailure();
            goto LABEL_13;
          }

          maxThreadgroupsPerGrid = a1->_maxThreadgroupsPerGrid;
          v29 = *&a3->width;
          depth = a3->depth;
          v10 = @"threadgroups_per_grid";
        }

        else if (v8 > 7)
        {
          if (v8 == 8)
          {
            maxThreadgroupsPerGrid = a1->_maxThreadIndexInThreadgroup;
            v29 = a2->height * a2->width * a3->depth;
            depth = 0;
            v10 = @"thread_index_in_threadgroup";
          }

          else if (v8 == 9)
          {
            maxThreadgroupsPerGrid = a1->_maxThreadsPerThreadgroup;
            v29 = *&a2->width;
            depth = a2->depth;
            v10 = @"threads_per_threadgroup";
          }

          else
          {
            maxThreadgroupsPerGrid = a1->_maxThreadgroupPositionInGrid;
            v29 = *&a3->width;
            depth = a3->depth;
            v10 = @"threadgroup_position_in_grid";
          }
        }

        else
        {
          switch(v8)
          {
            case 5:
              v11 = a3->height * a2->height;
              maxThreadgroupsPerGrid = a1->_maxThreadPositionInGrid;
              *&v29 = a3->width * a2->width;
              *(&v29 + 1) = v11;
              depth = a3->depth * a2->depth;
              v10 = @"thread_position_in_grid";
              break;
            case 6:
              v12 = a3->height * a2->height;
              maxThreadgroupsPerGrid = a1->_maxThreadsPerGrid;
              *&v29 = a3->width * a2->width;
              *(&v29 + 1) = v12;
              depth = a3->depth * a2->depth;
              v10 = @"threads_per_grid";
              break;
            case 7:
              maxThreadgroupsPerGrid = a1->_maxThreadPositionInThreadgroup;
              v29 = *&a2->width;
              depth = a2->depth;
              v10 = @"thread_position_in_threadgroup";
              break;
            default:
              goto LABEL_20;
          }
        }

        for (i = 0; i != 3; ++i)
        {
          v14 = *(&v29 + i);
          v15 = maxThreadgroupsPerGrid[i];
          if (v14 > v15)
          {
            v19 = [v7 name];
            v20 = v10;
            v17 = v14;
            v18 = v15;
            v16 = i;
            MTLReportFailure();
          }
        }

LABEL_13:
        v6 = v6 + 1;
      }

      while (v6 != v4);
      result = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t enumerateFunctionArgumentWithArray(uint64_t result, unint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (a2)
  {
    v5 = result;
    for (i = 0; i < a2; ++i)
    {
      if (*(v5 + 88 * i) == 1)
      {
        result = (*(a3 + 16))(a3);
        if (v7)
        {
          break;
        }
      }
    }
  }

  return result;
}

void sub_22E1B1C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1B1DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1B1FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MTLReportFailure();
}

void sub_22E1B3ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<MTLResourceID>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_22E1B3C04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1B4C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

NSObject *createTimerWithInterval(dispatch_queue_t queue, void *a2, double a3)
{
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  if (v5)
  {
    v6 = a3 * 1000000000.0;
    v7 = dispatch_time(0, v6);
    dispatch_source_set_timer(v5, v7, v6, 0x5F5E100uLL);
    dispatch_source_set_event_handler(v5, a2);
    dispatch_resume(v5);
  }

  return v5;
}

void sub_22E1B5E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unordered_map<MTLPixelFormat,MTLTelemetryTextureDistribution>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryTextureDistribution> const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryTextureDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryTextureDistribution> const&>(void *a1, unint64_t *a2, const void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::unordered_map<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryRenderTargetDistribution> const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryRenderTargetDistribution> const&>(void *a1, unint64_t *a2, const void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::unordered_map<MTLPixelFormat,MTLTelemetryBlitDistribution>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryBlitDistribution> const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::pair<MTLPixelFormat const,MTLTelemetryBlitDistribution> const&>(void *a1, unint64_t *a2, const void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::unordered_map<unsigned int,MTLTelemetryRenderPipelineUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderPipelineUsageRec> const&>(a1, i + 4, i + 1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderPipelineUsageRec> const&>(void *a1, unsigned int *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::unordered_map<unsigned int,MTLTelemetryRenderFuncUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderFuncUsageRec> const&>(a1, i + 4, i + 1);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryRenderFuncUsageRec> const&>(void *a1, unsigned int *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::unordered_map<unsigned int,MTLTelemetryComputePipelineUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryComputePipelineUsageRec> const&>(a1, i + 4, (i + 4));
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryComputePipelineUsageRec> const&>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::unordered_map<unsigned int,MTLTelemetryKernelUsageRec>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryKernelUsageRec> const&>(a1, i + 4, (i + 4));
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,MTLTelemetryKernelUsageRec> const&>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void *checkBuffer(void *result, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = result;
    if (([a2 conformsToProtocol:{&unk_284222E68, a4}] & 1) == 0)
    {
      checkBuffer();
    }

    if ([a2 device] != v7)
    {
      checkBuffer();
    }

    result = [a2 length];
    if (result <= a3)
    {
      [a2 length];
      return MTLReportFailure();
    }
  }

  else if ((a4 & 1) == 0 || a3)
  {
    return MTLReportFailure();
  }

  return result;
}

void *checkAccelerationStructure(void *result, void *a2, char a3, uint64_t a4)
{
  if (a2)
  {
    v5 = result;
    if (([a2 conformsToProtocol:{&unk_2842285B8, a4}] & 1) == 0)
    {
      checkAccelerationStructure_cold_1();
    }

    result = [a2 device];
    if (result != v5)
    {
      return checkAccelerationStructure_cold_2();
    }
  }

  else if ((a3 & 1) == 0)
  {
    return MTLReportFailure();
  }

  return result;
}

void *checkMotionParameter(void *a1, void *a2)
{
  if (([a1 supportsPrimitiveMotionBlur] & 1) == 0)
  {
    checkMotionParameter();
  }

  [a2 motionEndTime];
  v4 = v3;
  result = [a2 motionStartTime];
  if (v4 < v6)
  {
    return checkMotionParameter(a2);
  }

  return result;
}

uint64_t checkPrimitiveData(void *a1, void *a2, uint64_t a3)
{
  checkBuffer(a1, [a2 primitiveDataBuffer], objc_msgSend(a2, "primitiveDataBufferOffset"), 1, @"primitiveDataBuffer");
  result = [a2 primitiveDataBuffer];
  if (result)
  {
    if (![a2 primitiveDataElementSize])
    {
      checkPrimitiveData();
    }

    v6 = [a2 primitiveDataElementSize];
    if (v6 > [a2 primitiveDataStride])
    {
      checkPrimitiveData(a2);
    }

    v7 = [a2 primitiveDataBufferOffset];
    if (v7 > [objc_msgSend(a2 "primitiveDataBuffer")])
    {
      checkPrimitiveData(a2);
    }

    v8 = [objc_msgSend(a2 "primitiveDataBuffer")];
    v9 = [a2 primitiveDataBufferOffset];
    v10 = v9 + [a2 primitiveDataStride] * (a3 - 1);
    if (v8 < v10 + [a2 primitiveDataElementSize])
    {
      checkPrimitiveData();
    }

    if (([a2 primitiveDataBufferOffset] & 3) != 0)
    {
      checkPrimitiveData(a2);
    }

    result = [a2 primitiveDataStride];
    if ((result & 3) != 0)
    {
      return checkPrimitiveData(a2);
    }
  }

  return result;
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions(void *a1, void *a2, int a3, int a4)
{
  v199 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
LABEL_8:

    return MTLReportFailure();
  }

  v4 = a2;
  v6 = objc_opt_class();
  if (![v6 isSubclassOfClass:objc_opt_class()])
  {
    v10 = objc_opt_class();
    if ([v10 isSubclassOfClass:objc_opt_class()])
    {
      v11 = [v4 usage];
      v12 = [v4 instanceCount];
      if ((v11 & 4) != 0)
      {
        if (v12 >> 30)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_18(v4);
        }
      }

      else if (v12 >> 24)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_19(v4);
      }

      if ((isValidMTLAccelerationStructureInstanceDescriptorType([v4 instanceDescriptorType]) & 1) == 0)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_20(v4);
      }

      v127 = MTLAccelerationStructureInstanceDescriptorSize([v4 instanceDescriptorType]);
      if ([v4 instanceDescriptorStride] < v127)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_21(v4);
      }

      if (([v4 instanceDescriptorStride] & 3) != 0)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_22(v4);
      }

      result = [v4 instanceTransformationMatrixLayout];
      if (result == 1)
      {
        result = [a1 supportsRayTracingMatrixLayout];
        if ((result & 1) == 0)
        {
          result = checkAccelerationStructureDescriptorWithRefitOptions_cold_23();
        }
      }

      if (a3)
      {
        checkBuffer(a1, [v4 instanceDescriptorBuffer], objc_msgSend(v4, "instanceDescriptorBufferOffset"), 0, @"instance descriptor buffer");
        if (([v4 instanceDescriptorBufferOffset] & 3) != 0)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_24(v4);
        }

        v128 = [objc_msgSend(v4 "instanceDescriptorBuffer")];
        v129 = [v4 instanceDescriptorBufferOffset];
        v130 = [v4 instanceDescriptorStride];
        if (v128 < v129 + [v4 instanceCount] * v130)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_25(v4);
        }

        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v131 = [v4 instancedAccelerationStructures];
        v132 = [v131 countByEnumeratingWithState:&v164 objects:v192 count:16];
        if (v132)
        {
          v133 = v132;
          v134 = *v165;
          do
          {
            for (i = 0; i != v133; ++i)
            {
              if (*v165 != v134)
              {
                objc_enumerationMutation(v131);
              }

              checkAccelerationStructure(a1, *(*(&v164 + 1) + 8 * i), 0, @"Instanced acceleration structure");
            }

            v133 = [v131 countByEnumeratingWithState:&v164 objects:v192 count:16];
          }

          while (v133);
        }

        if ([v4 instanceCount])
        {
          if ([v4 instanceDescriptorType] == 3 || objc_msgSend(v4, "instanceDescriptorType") == 4)
          {
            if ([v4 instancedAccelerationStructures])
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_27();
            }
          }

          else if (![objc_msgSend(v4 "instancedAccelerationStructures")])
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_26();
          }
        }

        if ([v4 instanceDescriptorType] == 2 || (result = objc_msgSend(v4, "instanceDescriptorType"), result == 4))
        {
          if ([v4 motionTransformType] == 1 && (objc_msgSend(a1, "supportsRayTracingPerComponentMotionInterpolation") & 1) == 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_28();
          }

          v146 = [v4 motionTransformType];
          if (v146)
          {
            v147 = (v146 == 1) << 6;
          }

          else
          {
            v147 = 48;
          }

          if ([v4 motionTransformStride])
          {
            if (([v4 motionTransformStride] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_29(v4);
            }

            if ([v4 motionTransformStride] < v147)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_30(v4);
            }

            v147 = [v4 motionTransformStride];
          }

          checkBuffer(a1, [v4 motionTransformBuffer], objc_msgSend(v4, "motionTransformBufferOffset"), 0, @"motion transform buffer");
          if (([v4 motionTransformBufferOffset] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_31(v4);
          }

          v148 = [objc_msgSend(v4 "motionTransformBuffer")];
          v149 = [v4 motionTransformBufferOffset];
          result = [v4 motionTransformCount];
          if (v148 < v149 + result * v147)
          {
            return checkAccelerationStructureDescriptorWithRefitOptions_cold_32();
          }
        }
      }

      return result;
    }

    v124 = objc_opt_class();
    if ([v124 isSubclassOfClass:objc_opt_class()])
    {
      v125 = [v4 usage];
      v126 = [v4 maxInstanceCount];
      if ((v125 & 4) != 0)
      {
        if (v126 >> 30)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_1(v4);
        }
      }

      else if (v126 >> 24)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_2(v4);
      }

      if ([v4 instanceDescriptorType] != 3 && objc_msgSend(v4, "instanceDescriptorType") != 4)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_3(v4);
      }

      v136 = MTLAccelerationStructureInstanceDescriptorSize([v4 instanceDescriptorType]);
      if ([v4 instanceDescriptorStride] < v136)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_4(v4);
      }

      if (([v4 instanceDescriptorStride] & 3) != 0)
      {
        checkAccelerationStructureDescriptorWithRefitOptions_cold_5(v4);
      }

      result = [v4 instanceTransformationMatrixLayout];
      if (result == 1)
      {
        result = [a1 supportsRayTracingMatrixLayout];
        if ((result & 1) == 0)
        {
          result = checkAccelerationStructureDescriptorWithRefitOptions_cold_6();
        }
      }

      if (a3)
      {
        checkBuffer(a1, [v4 instanceDescriptorBuffer], objc_msgSend(v4, "instanceDescriptorBufferOffset"), 0, @"instance descriptor buffer");
        if (([v4 instanceDescriptorBufferOffset] & 0x3F) != 0)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_7(v4);
        }

        v137 = [objc_msgSend(v4 "instanceDescriptorBuffer")];
        v138 = [v4 instanceDescriptorBufferOffset];
        v139 = [v4 instanceDescriptorStride];
        if (v137 < v138 + [v4 maxInstanceCount] * v139)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_8(v4);
        }

        checkBuffer(a1, [v4 instanceCountBuffer], objc_msgSend(v4, "instanceCountBufferOffset"), 0, @"instance count buffer");
        if (([v4 instanceCountBufferOffset] & 3) != 0)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_9(v4);
        }

        v140 = [objc_msgSend(v4 "instanceCountBuffer")];
        if (v140 < [v4 instanceCountBufferOffset] + 4)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_10(v4);
        }

        if ([v4 instanceDescriptorType] == 2 || (result = objc_msgSend(v4, "instanceDescriptorType"), result == 4))
        {
          if ([v4 motionTransformType] == 1 && (objc_msgSend(a1, "supportsRayTracingPerComponentMotionInterpolation") & 1) == 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_11();
          }

          v141 = [v4 motionTransformType];
          if (v141)
          {
            v142 = (v141 == 1) << 6;
          }

          else
          {
            v142 = 48;
          }

          if ([v4 motionTransformStride])
          {
            if (([v4 motionTransformStride] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_12(v4);
            }

            if ([v4 motionTransformStride] < v142)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_13(v4);
            }

            v142 = [v4 motionTransformStride];
          }

          checkBuffer(a1, [v4 motionTransformBuffer], objc_msgSend(v4, "motionTransformBufferOffset"), 0, @"motion transform buffer");
          if (([v4 motionTransformBufferOffset] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_14(v4);
          }

          v143 = [objc_msgSend(v4 "motionTransformBuffer")];
          v144 = [v4 motionTransformBufferOffset];
          if (v143 < v144 + [v4 maxMotionTransformCount] * v142)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_15();
          }

          checkBuffer(a1, [v4 motionTransformCountBuffer], objc_msgSend(v4, "motionTransformCountBufferOffset"), 0, @"motion transform count buffer");
          if (([v4 motionTransformCountBufferOffset] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_16(v4);
          }

          v145 = [objc_msgSend(v4 "motionTransformCountBuffer")];
          result = [v4 motionTransformCountBufferOffset];
          if (v145 < result + 4)
          {
            return checkAccelerationStructureDescriptorWithRefitOptions_cold_17(v4);
          }
        }
      }

      return result;
    }

    goto LABEL_8;
  }

  if (![objc_msgSend(v4 "geometryDescriptors")])
  {
    checkAccelerationStructureDescriptorWithRefitOptions_cold_33(v4);
  }

  v7 = [v4 usage];
  v8 = [objc_msgSend(v4 "geometryDescriptors")];
  if ((v7 & 4) != 0)
  {
    if (v8 >> 30)
    {
      checkAccelerationStructureDescriptorWithRefitOptions_cold_34(v4);
    }
  }

  else if (v8 >> 24)
  {
    checkAccelerationStructureDescriptorWithRefitOptions_cold_35(v4);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  obj = [v4 geometryDescriptors];
  v160 = [obj countByEnumeratingWithState:&v188 objects:v198 count:16];
  v13 = 0;
  if (v160)
  {
    v156 = a4 & a3;
    v158 = *v189;
    v155 = v4;
    do
    {
      v14 = 0;
      do
      {
        if (*v189 != v158)
        {
          objc_enumerationMutation(obj);
        }

        v161 = v14;
        v162 = v13;
        v15 = *(*(&v188 + 1) + 8 * v14);
        [objc_msgSend(v4 "geometryDescriptors")];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          checkAccelerationStructureDescriptorWithRefitOptions_cold_36();
        }

        v16 = objc_opt_class();
        if ([v16 isSubclassOfClass:objc_opt_class()])
        {
          if ([v15 intersectionFunctionTableOffset] >> 24)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_77(v15);
          }

          v17 = [v15 vertexFormat];
          v18 = [v15 vertexStride];
          if (MTLAttributeFormatComponentCount(v17) <= 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_68();
          }

          v19 = MTLAttributeFormatSize(v17);
          if (v18 && v19 > v18)
          {
            v150 = v18;
            v152 = v19;
            MTLReportFailure();
          }

          v20 = MTLAttributeFormatAlignment(v17);
          if (v18 % v20)
          {
            v150 = v18;
            v152 = v20;
            MTLReportFailure();
          }

          v21 = [v15 transformationMatrixBuffer];
          v22 = [v15 transformationMatrixBufferOffset];
          checkBuffer(a1, v21, v22, 1, @"Transformation buffer");
          if (v21)
          {
            if (v22 + 48 > [v21 length])
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_69(v21);
            }

            if ((v22 & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_70();
            }
          }

          if ([v15 transformationMatrixLayout] == 1 && (objc_msgSend(a1, "supportsRayTracingMatrixLayout") & 1) == 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_81();
          }

          if (v156)
          {
            checkBuffer(a1, [v15 vertexBuffer], objc_msgSend(v15, "vertexBufferOffset"), 0, @"vertex buffer");
            if (([v15 vertexBufferOffset] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_82(v15);
            }

            if ([v15 indexBuffer])
            {
              checkBuffer(a1, [v15 indexBuffer], objc_msgSend(v15, "indexBufferOffset"), 1, @"index buffer");
              v23 = [v15 indexType];
              if (v23)
              {
                v24 = 4;
              }

              else
              {
                v24 = 2;
              }

              if (((v24 - 1) & [v15 indexBufferOffset]) != 0)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_83(v15);
              }

              v25 = 3 * [v15 triangleCount];
              v26 = 1;
              if (v23)
              {
                v26 = 2;
              }

              v27 = (v25 << v26) + [v15 indexBufferOffset];
              if (v27 > [objc_msgSend(v15 "indexBuffer")])
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_84();
              }
            }

            else
            {
              v68 = [v15 vertexBufferOffset];
              if (v68 > [objc_msgSend(v15 "vertexBuffer")])
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_85(v15);
              }

              v69 = [v15 vertexStride];
              v70 = [v15 vertexFormat];
              if (!v69)
              {
                v69 = MTLAttributeFormatSize(v70);
              }

              v71 = 3 * v69 * [v15 triangleCount];
              v72 = [objc_msgSend(v15 "vertexBuffer")];
              if (v72 - [v15 vertexBufferOffset] < v71)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_86();
              }
            }
          }

          v55 = [v15 triangleCount];
          goto LABEL_135;
        }

        v28 = objc_opt_class();
        if ([v28 isSubclassOfClass:objc_opt_class()])
        {
          if ([v15 intersectionFunctionTableOffset] >> 24)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_66(v15);
          }

          checkMotionParameter(a1, v4);
          v29 = [v4 motionKeyframeCount];
          if (v29 != [objc_msgSend(v15 "vertexBuffers")])
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_67(v4);
          }

          v30 = [v15 vertexFormat];
          v31 = [v15 vertexStride];
          if (MTLAttributeFormatComponentCount(v30) <= 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_68();
          }

          v32 = MTLAttributeFormatSize(v30);
          if (v31 && v32 > v31)
          {
            v150 = v31;
            v152 = v32;
            MTLReportFailure();
          }

          v33 = MTLAttributeFormatAlignment(v30);
          if (v31 % v33)
          {
            v150 = v31;
            v152 = v33;
            MTLReportFailure();
          }

          v34 = [v15 transformationMatrixBuffer];
          v35 = [v15 transformationMatrixBufferOffset];
          checkBuffer(a1, v34, v35, 1, @"Transformation buffer");
          if (v34)
          {
            if (v35 + 48 > [v34 length])
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_69(v34);
            }

            if ((v35 & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_70();
            }
          }

          if ([v15 transformationMatrixLayout] == 1 && (objc_msgSend(a1, "supportsRayTracingMatrixLayout") & 1) == 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_71();
          }

          v36 = [v15 vertexStride];
          v37 = [v15 vertexFormat];
          if (!v36)
          {
            v36 = MTLAttributeFormatSize(v37);
          }

          v154 = v36;
          v38 = [v15 triangleCount];
          if (a3)
          {
            v39 = v38;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v40 = [v15 vertexBuffers];
            v41 = [v40 countByEnumeratingWithState:&v184 objects:v197 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v185;
              do
              {
                for (j = 0; j != v42; ++j)
                {
                  if (*v185 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v184 + 1) + 8 * j);
                  checkBuffer(a1, [v45 buffer], objc_msgSend(v45, "offset"), 0, @"vertex buffer");
                  if (([v45 offset] & 3) != 0)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_72(v45);
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v184 objects:v197 count:16];
              }

              while (v42);
            }

            if ([v15 indexBuffer])
            {
              checkBuffer(a1, [v15 indexBuffer], objc_msgSend(v15, "indexBufferOffset"), 1, @"index buffer");
              v46 = [v15 indexType];
              if (v46)
              {
                v47 = 4;
              }

              else
              {
                v47 = 2;
              }

              if (((v47 - 1) & [v15 indexBufferOffset]) != 0)
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_73(v15);
              }

              v48 = 3 * [v15 triangleCount];
              v49 = 1;
              if (v46)
              {
                v49 = 2;
              }

              v50 = (v48 << v49) + [v15 indexBufferOffset];
              if (v50 > [objc_msgSend(v15 "indexBuffer")])
              {
                checkAccelerationStructureDescriptorWithRefitOptions_cold_74();
              }
            }

            else
            {
              v182 = 0u;
              v183 = 0u;
              v180 = 0u;
              v181 = 0u;
              v87 = [v15 vertexBuffers];
              v88 = [v87 countByEnumeratingWithState:&v180 objects:v196 count:16];
              if (v88)
              {
                v89 = v88;
                v90 = *v181;
                do
                {
                  for (k = 0; k != v89; ++k)
                  {
                    if (*v181 != v90)
                    {
                      objc_enumerationMutation(v87);
                    }

                    v92 = *(*(&v180 + 1) + 8 * k);
                    v93 = [v92 offset];
                    if (v93 > [objc_msgSend(v92 "buffer")])
                    {
                      checkAccelerationStructureDescriptorWithRefitOptions_cold_75(v92);
                    }

                    v94 = [objc_msgSend(v92 "buffer")];
                    if (v94 - [v92 offset] < (3 * v154 * v39))
                    {
                      checkAccelerationStructureDescriptorWithRefitOptions_cold_76(v15);
                    }
                  }

                  v89 = [v87 countByEnumeratingWithState:&v180 objects:v196 count:16];
                }

                while (v89);
              }
            }
          }

          v67 = [v15 triangleCount];
LABEL_186:
          v4 = v155;
          goto LABEL_187;
        }

        v51 = objc_opt_class();
        if ([v51 isSubclassOfClass:objc_opt_class()])
        {
          if ([v15 boundingBoxStride] <= 0x17)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_62(v15);
          }

          if (([v15 boundingBoxStride] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_63(v15);
          }

          if (a3)
          {
            checkBuffer(a1, [v15 boundingBoxBuffer], objc_msgSend(v15, "boundingBoxBufferOffset"), 0, @"bounding box buffer");
            if (([v15 boundingBoxBufferOffset] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_64(v15);
            }

            v52 = [objc_msgSend(v15 "boundingBoxBuffer")];
            v53 = [v15 boundingBoxBufferOffset];
            v54 = [v15 boundingBoxStride];
            if (v52 < v53 + [v15 boundingBoxCount] * v54)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_65(v15);
            }
          }

          v55 = [v15 boundingBoxCount];
          goto LABEL_135;
        }

        v56 = objc_opt_class();
        if ([v56 isSubclassOfClass:objc_opt_class()])
        {
          checkMotionParameter(a1, v4);
          v57 = [v4 motionKeyframeCount];
          if (v57 != [objc_msgSend(v15 "boundingBoxBuffers")])
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_57(v4);
          }

          if ([v15 boundingBoxStride] <= 0x17)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_58(v15);
          }

          if (([v15 boundingBoxStride] & 3) != 0)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_59(v15);
          }

          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v58 = [v15 boundingBoxBuffers];
          v59 = [v58 countByEnumeratingWithState:&v176 objects:v195 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v177;
            do
            {
              for (m = 0; m != v60; ++m)
              {
                if (*v177 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                if (a3)
                {
                  v63 = *(*(&v176 + 1) + 8 * m);
                  checkBuffer(a1, [v63 buffer], objc_msgSend(v63, "offset"), 0, @"bounding box buffer");
                  if (([v63 offset] & 3) != 0)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_60(v15);
                  }

                  v64 = [objc_msgSend(v63 "buffer")];
                  v65 = [v63 offset];
                  v66 = [v15 boundingBoxStride];
                  if (v64 < v65 + [v15 boundingBoxCount] * v66)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_61();
                  }
                }
              }

              v60 = [v58 countByEnumeratingWithState:&v176 objects:v195 count:16];
            }

            while (v60);
          }

          v67 = [v15 boundingBoxCount];
          goto LABEL_186;
        }

        v73 = objc_opt_class();
        if ([v73 isSubclassOfClass:objc_opt_class()])
        {
          if ([v15 intersectionFunctionTableOffset] >> 24)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_48(v15);
          }

          checkCurveBasis([v15 curveBasis], objc_msgSend(v15, "segmentControlPointCount"));
          if ([v15 curveType] && objc_msgSend(v15, "curveType") != 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_49();
          }

          if ([v15 endCaps] && objc_msgSend(v15, "endCaps") != 1 && objc_msgSend(v15, "endCaps") != 2)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_50();
          }

          v74 = [v15 controlPointFormat];
          v75 = [v15 controlPointStride];
          if (MTLAttributeFormatComponentCount(v74) <= 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_41();
          }

          v76 = MTLAttributeFormatSize(v74);
          if (v75 && v76 > v75)
          {
            v150 = v75;
            v152 = v76;
            MTLReportFailure();
          }

          v77 = MTLAttributeFormatAlignment(v74);
          if (v75 % v77)
          {
            v150 = v75;
            v152 = v77;
            MTLReportFailure();
          }

          v78 = [v15 radiusFormat];
          v79 = [v15 radiusStride];
          if (MTLAttributeFormatComponentCount(v78) != 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_42();
          }

          v80 = MTLAttributeFormatSize(v78);
          if (v79 && v80 > v79)
          {
            v151 = v79;
            v153 = v80;
            MTLReportFailure();
          }

          v81 = MTLAttributeFormatAlignment(v78);
          if (v79 % v81)
          {
            v151 = v79;
            v153 = v81;
            MTLReportFailure();
          }

          if (v156)
          {
            checkBuffer(a1, [v15 controlPointBuffer], objc_msgSend(v15, "controlPointBufferOffset"), 0, @"control point buffer");
            checkBuffer(a1, [v15 radiusBuffer], objc_msgSend(v15, "radiusBufferOffset"), 0, @"radius buffer");
            checkBuffer(a1, [v15 indexBuffer], objc_msgSend(v15, "indexBufferOffset"), 0, @"index buffer");
            if (([v15 controlPointBufferOffset] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_53(v15);
            }

            if (([v15 radiusBufferOffset] & 3) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_54(v15);
            }

            v82 = [v15 indexType];
            if (v82)
            {
              v83 = 4;
            }

            else
            {
              v83 = 2;
            }

            if (((v83 - 1) & [v15 indexBufferOffset]) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_55(v15);
            }

            v84 = [v15 segmentCount];
            v85 = 1;
            if (v82)
            {
              v85 = 2;
            }

            v86 = (v84 << v85) + [v15 indexBufferOffset];
            if (v86 > [objc_msgSend(v15 "indexBuffer")])
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_56();
            }
          }

LABEL_247:
          v55 = [v15 segmentCount];
LABEL_135:
          v67 = v55;
          goto LABEL_187;
        }

        v95 = objc_opt_class();
        if ([v95 isSubclassOfClass:objc_opt_class()])
        {
          if ([v15 intersectionFunctionTableOffset] >> 24)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_37(v15);
          }

          checkCurveBasis([v15 curveBasis], objc_msgSend(v15, "segmentControlPointCount"));
          if ([v15 curveType] && objc_msgSend(v15, "curveType") != 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_38();
          }

          if ([v15 endCaps] && objc_msgSend(v15, "endCaps") != 1 && objc_msgSend(v15, "endCaps") != 2)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_39();
          }

          checkMotionParameter(a1, v4);
          v96 = [v4 motionKeyframeCount];
          if (v96 != [objc_msgSend(v15 "controlPointBuffers")])
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_40(v4);
          }

          v97 = [v15 controlPointFormat];
          v98 = [v15 controlPointStride];
          if (MTLAttributeFormatComponentCount(v97) <= 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_41();
          }

          v99 = MTLAttributeFormatSize(v97);
          if (v98 && v99 > v98)
          {
            v150 = v98;
            v152 = v99;
            MTLReportFailure();
          }

          v100 = MTLAttributeFormatAlignment(v97);
          if (v98 % v100)
          {
            v150 = v98;
            v152 = v100;
            MTLReportFailure();
          }

          v101 = [v15 radiusFormat];
          v102 = [v15 radiusStride];
          if (MTLAttributeFormatComponentCount(v101) != 1)
          {
            checkAccelerationStructureDescriptorWithRefitOptions_cold_42();
          }

          v103 = MTLAttributeFormatSize(v101);
          if (v102 && v103 > v102)
          {
            v151 = v102;
            v153 = v103;
            MTLReportFailure();
          }

          v104 = MTLAttributeFormatAlignment(v101);
          if (v102 % v104)
          {
            v151 = v102;
            v153 = v104;
            MTLReportFailure();
          }

          if (a3)
          {
            v105 = [objc_msgSend(v15 "controlPointBuffers")];
            if (v105 != [objc_msgSend(v15 "radiusBuffers")])
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_43(v15);
            }

            v174 = 0u;
            v175 = 0u;
            v172 = 0u;
            v173 = 0u;
            v106 = [v15 controlPointBuffers];
            v107 = [v106 countByEnumeratingWithState:&v172 objects:v194 count:16];
            if (v107)
            {
              v108 = v107;
              v109 = *v173;
              do
              {
                for (n = 0; n != v108; ++n)
                {
                  if (*v173 != v109)
                  {
                    objc_enumerationMutation(v106);
                  }

                  v111 = *(*(&v172 + 1) + 8 * n);
                  checkBuffer(a1, [v111 buffer], objc_msgSend(v111, "offset"), 0, @"control point buffer");
                  if (([v111 offset] & 3) != 0)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_44(v111);
                  }
                }

                v108 = [v106 countByEnumeratingWithState:&v172 objects:v194 count:16];
              }

              while (v108);
            }

            v170 = 0u;
            v171 = 0u;
            v168 = 0u;
            v169 = 0u;
            v112 = [v15 radiusBuffers];
            v113 = [v112 countByEnumeratingWithState:&v168 objects:v193 count:16];
            if (v113)
            {
              v114 = v113;
              v115 = *v169;
              do
              {
                for (ii = 0; ii != v114; ++ii)
                {
                  if (*v169 != v115)
                  {
                    objc_enumerationMutation(v112);
                  }

                  v117 = *(*(&v168 + 1) + 8 * ii);
                  checkBuffer(a1, [v117 buffer], objc_msgSend(v117, "offset"), 0, @"radius buffer");
                  if (([v117 offset] & 3) != 0)
                  {
                    checkAccelerationStructureDescriptorWithRefitOptions_cold_45(v117);
                  }
                }

                v114 = [v112 countByEnumeratingWithState:&v168 objects:v193 count:16];
              }

              while (v114);
            }

            checkBuffer(a1, [v15 indexBuffer], objc_msgSend(v15, "indexBufferOffset"), 1, @"index buffer");
            v118 = [v15 indexType];
            if (v118)
            {
              v119 = 4;
            }

            else
            {
              v119 = 2;
            }

            if (((v119 - 1) & [v15 indexBufferOffset]) != 0)
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_46(v15);
            }

            v120 = [v15 segmentCount];
            v121 = 1;
            if (v118)
            {
              v121 = 2;
            }

            v122 = (v120 << v121) + [v15 indexBufferOffset];
            if (v122 > [objc_msgSend(v15 "indexBuffer")])
            {
              checkAccelerationStructureDescriptorWithRefitOptions_cold_47();
            }
          }

          goto LABEL_247;
        }

        MTLReportFailure();
        v67 = 0;
LABEL_187:
        if ((a4 & 2) != 0)
        {
          checkPrimitiveData(a1, v15, v67);
        }

        v13 = v67 + v162;
        v14 = v161 + 1;
      }

      while (v161 + 1 != v160);
      v123 = [obj countByEnumeratingWithState:&v188 objects:v198 count:16];
      v160 = v123;
    }

    while (v123);
  }

  result = [v4 usage];
  if ((result & 4) != 0)
  {
    if (v13 >> 30)
    {
      return checkAccelerationStructureDescriptorWithRefitOptions_cold_87();
    }
  }

  else if (v13 >> 28)
  {
    return checkAccelerationStructureDescriptorWithRefitOptions_cold_88();
  }

  return result;
}

uint64_t checkCurveBasis(uint64_t result, uint64_t a2)
{
  if (result > 1)
  {
    if (result == 2)
    {
      if (a2 != 2)
      {
        return checkCurveBasis();
      }
    }

    else
    {
      if (result != 3)
      {
LABEL_10:

        return MTLReportFailure();
      }

      if ((a2 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        return checkCurveBasis();
      }
    }
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        if (a2 != 4)
        {
          return checkCurveBasis();
        }

        return result;
      }

      goto LABEL_10;
    }

    if ((a2 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      return checkCurveBasis();
    }
  }

  return result;
}

__CFString *MTLDebugStageToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4BA0[a1];
  }
}

uint64_t MTLRenderStagesToDebugStage(uint64_t a1)
{
  v1 = __ROR8__(a1 - 2, 1);
  if (v1 > 7)
  {
    return 2;
  }

  else
  {
    return qword_22E27C290[v1];
  }
}

BOOL MTLDebugStageIsRenderStage(uint64_t a1, unint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFBLL) == 0;
  v3 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0;
  v4 = (a2 & 0xFFFFFFFFFFFFFFEFLL) == 0;
  if (a1 != 6)
  {
    v4 = 0;
  }

  if (a1 != 5)
  {
    v3 = v4;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  v5 = a2 < 2;
  v6 = (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  if (a1 != 3)
  {
    v6 = 0;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  if (a1 <= 3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t newDebugFunctionHandleWithFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __newDebugFunctionHandleWithFunction_block_invoke;
  v7[3] = &unk_2787B3E50;
  v7[4] = a2;
  v7[5] = a4;
  v7[6] = a3;
  v7[7] = a5;
  return [v5 getCachedObjectForKey:a2 onMiss:v7];
}

MTLDebugFunctionHandle *__newDebugFunctionHandleWithFunction_block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 function:v5 stage:v6];
}

uint64_t newDebugFunctionHandle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __newDebugFunctionHandle_block_invoke;
  v6[3] = &unk_2787B3E28;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  return [v4 getCachedObjectForKey:a2 onMiss:v6];
}

MTLDebugFunctionHandle *__newDebugFunctionHandle_block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 stage:v5];
}

uint64_t newDebugFunctionHandleWithBinaryFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __newDebugFunctionHandleWithBinaryFunction_block_invoke;
  v7[3] = &unk_2787B3E50;
  v7[4] = a2;
  v7[5] = a4;
  v7[6] = a3;
  v7[7] = a5;
  return [v5 getCachedObjectForKey:a2 onMiss:v7];
}

MTLDebugFunctionHandle *__newDebugFunctionHandleWithBinaryFunction_block_invoke(void *a1)
{
  v2 = [MTLDebugFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  return [(MTLDebugFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 binaryFunction:v5 stage:v6];
}

uint64_t validateNewDynamicLibraryWithURL(NSURL *a1, _MTLMessageContext *a2)
{
  if (a1)
  {
    result = [(NSURL *)a1 isFileURL];
    if ((result & 1) == 0)
    {
      result = _MTLMessageContextPush_();
    }

    if (a2->var0 <= 0)
    {
      v5 = 0;
      result = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      if (!result || v5 == 1)
      {
        return _MTLMessageContextPush_();
      }
    }
  }

  else
  {

    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t addReflectionOption(void *a1)
{
  v2 = [a1 options];
  if (!v2)
  {
    v2 = objc_opt_new();
  }

  [v2 setShaderReflection:{objc_msgSend(v2, "shaderReflection") | 1}];

  return [a1 setOptions:v2];
}

uint64_t validateUnspecializedProperties(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;

    return validateUnspecializedProperties<MTL4RenderPipelineDescriptor>(v6, v7, v8);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;

    return validateUnspecializedProperties<MTL4RenderPipelineDescriptor>(v6, v7, v8);
  }

  return result;
}

void *validateUnspecializedProperties<MTL4RenderPipelineDescriptor>(uint64_t a1, void *a2, uint64_t a3)
{
  for (i = 0; i != 8; ++i)
  {
    v5 = [objc_msgSend(a2 "colorAttachments")];
    if ([v5 blendingState] == 2)
    {
      [v5 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
LABEL_4:
      result = _MTLMessageContextPush_();
      continue;
    }

    result = [v5 blendingState];
    if (!result)
    {
      result = [v5 sourceRGBBlendFactor];
      if (result != 19)
      {
        result = [v5 destinationRGBBlendFactor];
        if (result != 19)
        {
          result = [v5 sourceAlphaBlendFactor];
          if (result != 19)
          {
            result = [v5 destinationAlphaBlendFactor];
            if (result != 19)
            {
              result = [v5 rgbBlendOperation];
              if (result != 5)
              {
                result = [v5 alphaBlendOperation];
                if (result != 5)
                {
                  goto LABEL_4;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t validateMTL4RenderPipelineDescriptor(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a2 vertexFunctionDescriptor])
    {
      goto LABEL_3;
    }

LABEL_20:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![a2 tileFunctionDescriptor])
    {
      _MTLMessageContextPush_();
    }

    if (hasUnspecializedProperties(a2, v7))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    _MTLMessageContextPush_();
    goto LABEL_15;
  }

  if (![a2 meshFunctionDescriptor])
  {
    goto LABEL_20;
  }

LABEL_3:
  if (([a2 isRasterizationEnabled] & 1) == 0 && objc_msgSend(a2, "fragmentFunctionDescriptor"))
  {
    goto LABEL_14;
  }

LABEL_15:
  result = hasUnspecializedProperties(a2, v6);
  if (result)
  {

    return validateUnspecializedProperties(a1, a2, a3);
  }

  return result;
}

uint64_t hasUnspecializedProperties(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1;

    return hasUnspecializedProperties<MTL4RenderPipelineDescriptor>(v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1;

    return hasUnspecializedProperties<MTL4RenderPipelineDescriptor>(v3);
  }

  return 0;
}

uint64_t hasUnspecializedProperties<MTL4RenderPipelineDescriptor>(void *a1)
{
  if ([a1 alphaToCoverageState] != 2 && objc_msgSend(a1, "alphaToOneState") != 2)
  {
    v3 = -1;
    while (1)
    {
      v4 = [objc_msgSend(a1 "colorAttachments")];
      if ([v4 pixelFormat] == 263 || objc_msgSend(v4, "pixelFormat") && (objc_msgSend(v4, "blendingState") == 2 || objc_msgSend(v4, "blendingState") == 1 && (objc_msgSend(v4, "sourceRGBBlendFactor") == 19 || objc_msgSend(v4, "destinationRGBBlendFactor") == 19 || objc_msgSend(v4, "sourceAlphaBlendFactor") == 19 || objc_msgSend(v4, "destinationAlphaBlendFactor") == 19 || objc_msgSend(v4, "rgbBlendOperation") == 5 || objc_msgSend(v4, "alphaBlendOperation") == 5) || (objc_msgSend(v4, "writeMask") & 0x10) != 0))
      {
        break;
      }

      if (++v3 == 7)
      {
        return 0;
      }
    }
  }

  return 1;
}

void *specializeMTL4PipelineDescriptor<MTL4RenderPipelineDescriptor>(void *a1, void *a2)
{
  if ([a1 alphaToCoverageState] == 2)
  {
    if ([a2 alphaToCoverageState] == 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [a2 alphaToCoverageState];
    }

    [a1 setAlphaToCoverageState:v4];
  }

  if ([a1 alphaToOneState] == 2)
  {
    if ([a2 alphaToOneState] == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [a2 alphaToOneState];
    }

    [a1 setAlphaToOneState:v5];
  }

  for (i = 0; i != 8; ++i)
  {
    v7 = [objc_msgSend(a1 "colorAttachments")];
    v8 = [objc_msgSend(a2 "colorAttachments")];
    if ([v7 pixelFormat] == 263)
    {
      if ([v8 pixelFormat] == 263)
      {
        v9 = 0;
      }

      else
      {
        v9 = [v8 pixelFormat];
      }

      [v7 setPixelFormat:v9];
    }

    if ([v7 blendingState] == 2)
    {
      if ([v8 blendingState] == 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = [v8 blendingState];
      }

      [v7 setBlendingState:v10];
    }

    if ([v7 sourceRGBBlendFactor] == 19)
    {
      if ([v8 sourceRGBBlendFactor] == 19)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v8 sourceRGBBlendFactor];
      }

      [v7 setSourceRGBBlendFactor:v11];
    }

    if ([v7 destinationRGBBlendFactor] == 19)
    {
      if ([v8 destinationRGBBlendFactor] == 19)
      {
        v12 = 1;
      }

      else
      {
        v12 = [v8 destinationRGBBlendFactor];
      }

      [v7 setDestinationRGBBlendFactor:v12];
    }

    if ([v7 sourceAlphaBlendFactor] == 19)
    {
      if ([v8 sourceAlphaBlendFactor] == 19)
      {
        v13 = 1;
      }

      else
      {
        v13 = [v8 sourceAlphaBlendFactor];
      }

      [v7 setSourceAlphaBlendFactor:v13];
    }

    if ([v7 destinationAlphaBlendFactor] == 19)
    {
      if ([v8 destinationAlphaBlendFactor] == 19)
      {
        v14 = 1;
      }

      else
      {
        v14 = [v8 destinationAlphaBlendFactor];
      }

      [v7 setDestinationAlphaBlendFactor:v14];
    }

    if ([v7 rgbBlendOperation] == 5)
    {
      if ([v8 rgbBlendOperation] == 5)
      {
        v15 = 0;
      }

      else
      {
        v15 = [v8 rgbBlendOperation];
      }

      [v7 setRgbBlendOperation:v15];
    }

    if ([v7 alphaBlendOperation] == 5)
    {
      if ([v8 alphaBlendOperation] == 5)
      {
        v16 = 0;
      }

      else
      {
        v16 = [v8 alphaBlendOperation];
      }

      [v7 setAlphaBlendOperation:v16];
    }

    result = [v7 writeMask];
    if ((result & 0x10) != 0)
    {
      if (([v8 writeMask] & 0x10) != 0)
      {
        v18 = 15;
      }

      else
      {
        v18 = [v8 writeMask];
      }

      result = [v7 setWriteMask:{objc_msgSend(v7, "writeMask") | v18}];
    }
  }

  return result;
}

void sub_22E1C18C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1C1CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__10(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22E1C1EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_handle_merge_unique[abi:ne200100]<std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>>(uint64_t *result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 4);
      result = std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_unique_prepare[abi:ne200100](v4, v5, v2 + 4);
      v6 = *v2;
      if (!result)
      {
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a2, v2, v7);
        v2[1] = v5;
        result = std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::__node_insert_unique_perform[abi:ne200100](v4, v2);
      }

      v2 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == *a3)
          {
            return i;
          }
        }

        else
        {
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
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

void emitRenderPipelineUsage(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = MEMORY[0x277CD7168];
    while (1)
    {
      v7 = *(v5 + 7);
      if (v7)
      {
        if (!*v6)
        {
          goto LABEL_7;
        }

        if (*v6 == 1)
        {
          break;
        }
      }

LABEL_9:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    printf("\n\nRenderPipelineUsage, pipelineID=%u, vertexShaderID=%u, fragmentShaderID=%u, usageCount=%u", *(v5 + 4), *(v5 + 5), *(v5 + 6), v7);
LABEL_7:
    v8 = [a1 telemetryLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v5 + 4);
      v10 = *(v5 + 5);
      v11 = *(v5 + 6);
      v12 = *(v5 + 7);
      *buf = 67109888;
      v33 = v9;
      v34 = 1024;
      *v35 = v10;
      *&v35[4] = 1024;
      *&v35[6] = v11;
      *v36 = 1024;
      *&v36[2] = v12;
      _os_log_impl(&dword_22E0FF000, v8, OS_LOG_TYPE_DEFAULT, "RenderPipelineUsage, pipelineID=%u, vertexShaderID=%u, fragmentShaderID=%u, usageCount=%u", buf, 0x1Au);
    }

    goto LABEL_9;
  }

LABEL_10:
  context = objc_autoreleasePoolPush();
  v13 = *(a3 + 16);
  if (v13)
  {
    while (1)
    {
      v14 = [MEMORY[0x277CCAB68] string];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v13[5];
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v14 appendFormat:@"%s=%u, ", objc_msgSend(*(*(&v28 + 1) + 8 * i), "UTF8String"), objc_msgSend(objc_msgSend(v13[5], "objectForKey:", *(*(&v28 + 1) + 8 * i)), "unsignedIntegerValue")];
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
        }

        while (v17);
      }

      if ([v14 length] >= 2)
      {
        [v14 deleteCharactersInRange:{objc_msgSend(v14, "length") - 2, 2}];
      }

      v20 = *(v13 + 8);
      if (!v20)
      {
        goto LABEL_32;
      }

      if (!*MEMORY[0x277CD7168])
      {
        goto LABEL_27;
      }

      if (*MEMORY[0x277CD7168] == 1)
      {
        break;
      }

LABEL_32:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    if (v13[3] == 1)
    {
      v21 = "vertex";
    }

    else
    {
      v21 = "fragment";
    }

    printf("\n\nFunctionUsage, functionID=%u, type=%s, usageCount=%u, %s", *(v13 + 4), v21, v20, [v14 UTF8String]);
LABEL_27:
    v22 = [a1 telemetryLog];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v13 + 4);
      if (v13[3] == 1)
      {
        v24 = "vertex";
      }

      else
      {
        v24 = "fragment";
      }

      v25 = *(v13 + 8);
      v26 = [v14 UTF8String];
      *buf = 67109890;
      v33 = v23;
      v34 = 2080;
      *v35 = v24;
      *&v35[8] = 1024;
      *v36 = v25;
      *&v36[4] = 2080;
      v37 = v26;
      _os_log_impl(&dword_22E0FF000, v22, OS_LOG_TYPE_DEFAULT, "FunctionUsage, functionID=%u, type=%s, usageCount=%u, %s", buf, 0x22u);
    }

    goto LABEL_32;
  }

LABEL_33:
  objc_autoreleasePoolPop(context);
}

void emitRenderPipelineStats(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v108 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CCAB68] stringWithString:{@"VertexFunctionStats, "}];
  for (i = *(a2 + 16); i; i = *i)
  {
    v11 = i + 2;
    if (*(i + 39) < 0)
    {
      v11 = *v11;
    }

    [v9 appendFormat:@"min%s=%u, max%s=%u, avg%s=%f, total%s=%llu, count%s=%u, ", v11, *(i + 10), v11, *(i + 11), v11, (i[6] / *(i + 14)), v11, i[6], v11, *(i + 14)];
  }

  if ([v9 length] > 1)
  {
    [v9 deleteCharactersInRange:{objc_msgSend(v9, "length") - 2, 2}];
  }

  v12 = MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      goto LABEL_12;
    }

    printf("\n\n%s", [v9 UTF8String]);
  }

  v13 = [a1 telemetryLog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v55 = [v9 UTF8String];
    _os_log_impl(&dword_22E0FF000, v13, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_12:
  v14 = [MEMORY[0x277CCAB68] stringWithString:{@"FragmentFunctionStats, "}];
  for (j = *(a3 + 16); j; j = *j)
  {
    v16 = j + 2;
    if (*(j + 39) < 0)
    {
      v16 = *v16;
    }

    [v14 appendFormat:@"min%s=%u, max%s=%u, avg%s=%f, total%s=%llu, count%s=%u, ", v16, *(j + 10), v16, *(j + 11), v16, (j[6] / *(j + 14)), v16, j[6], v16, *(j + 14)];
  }

  if ([v14 length] > 1)
  {
    [v14 deleteCharactersInRange:{objc_msgSend(v14, "length") - 2, 2}];
  }

  if (*v12)
  {
    if (*v12 != 1)
    {
      goto LABEL_23;
    }

    printf("\n\n%s", [v14 UTF8String]);
  }

  v17 = [a1 telemetryLog];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v14 UTF8String];
    *buf = 136315138;
    *v55 = v18;
    _os_log_impl(&dword_22E0FF000, v17, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_23:
  objc_autoreleasePoolPop(v8);
  v19 = a4[30];
  if (!v19)
  {
    return;
  }

  if (*v12)
  {
    if (*v12 != 1)
    {
      return;
    }

    v20 = a4[22];
    v21 = *(a4 + 10);
    v22 = 0.0;
    v23 = 0.0;
    if (v20)
    {
      v23 = (v21 / v20);
    }

    v24 = a4[16];
    if (v24)
    {
      v22 = (*(a4 + 7) / v24);
    }

    printf("\n\nRenderPipeline, total=%u, color0Blend=%u, color1Blend=%u, color2Blend=%u, color3Blend=%u, color4Blend=%u, color5Blend=%u, color6Blend=%u, color7Blend=%u, alphaTest=%u, alphaToOne=%u, alphaToCoverage=%u, fragmentUsesDiscard=%u, fragmentWritesSampleMask=%u, fragmentWritesDepth=%u, vertexRegisterSpill=%u, fragmentRegisterSpill=%u, fragmentReadsFramebufferValues=%u, minRasterSampleCount=%u, maxRasterSampleCount=%u, avgRasterSampleCount=%f, totalRasterSampleCount=%llu, countRasterSampleCount=%u, minColorSampleCount=%u, maxColorSampleCount=%u, avgColorSampleCount=%f, totalColorSampleCount=%llu, countColorSampleCount=%u", v19, *a4, a4[1], a4[2], a4[3], a4[4], a4[5], a4[6], a4[7], a4[8], a4[9], a4[10], a4[24], a4[25], a4[26], a4[27], a4[28], a4[29], a4[18], a4[19], v23, v21, v20, a4[12], a4[13], v22, *(a4 + 7), v24);
  }

  v25 = [a1 telemetryLog];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = a4[22];
    v27 = *(a4 + 10);
    v28 = 0.0;
    v29 = 0.0;
    if (v26)
    {
      v29 = (v27 / v26);
    }

    v30 = a4[29];
    v31 = a4[30];
    v33 = *a4;
    v32 = a4[1];
    v35 = a4[2];
    v34 = a4[3];
    v37 = a4[4];
    v36 = a4[5];
    v39 = a4[6];
    v38 = a4[7];
    v41 = a4[8];
    v40 = a4[9];
    v42 = a4[10];
    v44 = a4[24];
    v43 = a4[25];
    v46 = a4[26];
    v45 = a4[27];
    v47 = a4[28];
    v49 = a4[18];
    v48 = a4[19];
    v51 = a4[12];
    v50 = a4[13];
    v52 = a4[16];
    v53 = *(a4 + 7);
    if (v52)
    {
      v28 = (v53 / v52);
    }

    *buf = 67116032;
    *v55 = v31;
    *&v55[4] = 1024;
    *&v55[6] = v33;
    v56 = 1024;
    v57 = v32;
    v58 = 1024;
    v59 = v35;
    v60 = 1024;
    v61 = v34;
    v62 = 1024;
    v63 = v37;
    v64 = 1024;
    v65 = v36;
    v66 = 1024;
    v67 = v39;
    v68 = 1024;
    v69 = v38;
    v70 = 1024;
    v71 = v41;
    v72 = 1024;
    v73 = v40;
    v74 = 1024;
    v75 = v42;
    v76 = 1024;
    v77 = v44;
    v78 = 1024;
    v79 = v43;
    v80 = 1024;
    v81 = v46;
    v82 = 1024;
    v83 = v45;
    v84 = 1024;
    v85 = v47;
    v86 = 1024;
    v87 = v30;
    v88 = 1024;
    v89 = v49;
    v90 = 1024;
    v91 = v48;
    v92 = 2048;
    v93 = v29;
    v94 = 2048;
    v95 = v27;
    v96 = 1024;
    v97 = v26;
    v98 = 1024;
    v99 = v51;
    v100 = 1024;
    v101 = v50;
    v102 = 2048;
    v103 = v28;
    v104 = 2048;
    v105 = v53;
    v106 = 1024;
    v107 = v52;
    _os_log_impl(&dword_22E0FF000, v25, OS_LOG_TYPE_DEFAULT, "RenderPipeline, total=%u, color0Blend=%u, color1Blend=%u, color2Blend=%u, color3Blend=%u, color4Blend=%u, color5Blend=%u, color6Blend=%u, color7Blend=%u, alphaTest=%u, alphaToOne=%u, alphaToCoverage=%u, fragmentUsesDiscard=%u, fragmentWritesSampleMask=%u, fragmentWritesDepth=%u, vertexRegisterSpill=%u, fragmentRegisterSpill=%u, fragmentReadsFramebufferValues=%u, minRasterSampleCount=%u, maxRasterSampleCount=%u, avgRasterSampleCount=%f, totalRasterSampleCount=%llu, countRasterSampleCount=%u, minColorSampleCount=%u, maxColorSampleCount=%u, avgColorSampleCount=%f, totalColorSampleCount=%llu, countColorSampleCount=%u", buf, 0xBAu);
  }
}

void sub_22E1C358C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_22E1C5B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1C5C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1C5CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1C6390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto10MTLTexture}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_22E1C640C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto15MTLSamplerState}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_22E1C6484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto20MTLDepthStencilState}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_22E1C64FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,MTLTextureType>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MemberRef::~MemberRef(MemberRef *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 2);
    std::vector<MemberRef>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x2318E4940](v2, 0x20C40960023A9);
  }
}

NSUInteger initMemberWithArrayType(MemberRef *a1, MTLArrayType *a2)
{
  v4 = [(MTLArrayType *)a2 elementType];
  if (v4 > MTLDataTypeRenderPipeline)
  {
    if (v4 > MTLDataTypeVisibleFunctionTable)
    {
      if (v4 <= MTLDataTypePrimitiveAccelerationStructure)
      {
        if (v4 == MTLDataTypeIntersectionFunctionTable)
        {
          v5 = 9;
        }

        else
        {
          v5 = 10;
        }

        goto LABEL_30;
      }

      if (v4 == MTLDataTypeInstanceAccelerationStructure)
      {
        v5 = 11;
        goto LABEL_30;
      }

      if (v4 == (MTLDataTypeFloat3x3|0x80))
      {
        v5 = 12;
        goto LABEL_30;
      }

LABEL_32:
      *a1 = 0;
      goto LABEL_31;
    }

    if (v4 == MTLDataTypeComputePipeline)
    {
      v5 = 6;
      goto LABEL_30;
    }

    if (v4 == MTLDataTypeIndirectCommandBuffer)
    {
      v5 = 7;
      goto LABEL_30;
    }

    if (v4 != MTLDataTypeVisibleFunctionTable)
    {
      goto LABEL_32;
    }

    v5 = 8;
LABEL_30:
    *a1 = v5;
    goto LABEL_31;
  }

  if (v4 > MTLDataTypeTexture)
  {
    if (v4 == MTLDataTypeSampler)
    {
      v5 = 2;
      goto LABEL_30;
    }

    if (v4 == MTLDataTypePointer)
    {
      v5 = 3;
      goto LABEL_30;
    }

    if (v4 != MTLDataTypeRenderPipeline)
    {
      goto LABEL_32;
    }

    v5 = 5;
    goto LABEL_30;
  }

  if (v4 == MTLDataTypeStruct)
  {
    *a1 = 4;
    operator new();
  }

  if (v4 != MTLDataTypeArray)
  {
    if (v4 != MTLDataTypeTexture)
    {
      goto LABEL_32;
    }

    v5 = 1;
    goto LABEL_30;
  }

  initMemberWithArrayType(a1, [(MTLArrayType *)a2 elementArrayType]);
LABEL_31:
  result = [(MTLArrayType *)a2 arrayLength];
  *(a1 + 3) *= result;
  return result;
}

uint64_t StructType::initWithStructType(StructType *this, MTLStructType *a2)
{
  v4 = [(NSArray *)[(MTLStructType *)a2 members] count];
  std::vector<MemberRef>::resize(this, v4);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)[(MTLStructType *)a2 members] objectAtIndexedSubscript:v6];
      v8 = *this;
      v9 = (*this + v5);
      v9[1] = [v7 indirectArgumentIndex];
      v9[2] = 1;
      v10 = [v7 dataType];
      if (v10 > 78)
      {
        break;
      }

      if (v10 > 58)
      {
        switch(v10)
        {
          case ';':
            v11 = 2;
            break;
          case '<':
            *v9 = 3;
            if ([objc_msgSend(v7 "pointerType")])
            {
              *(v8 + v5 + 24) = [objc_msgSend(v7 "pointerType")];
            }

            goto LABEL_31;
          case 'N':
            v11 = 5;
            break;
          default:
LABEL_36:
            *v9 = 0;
            goto LABEL_31;
        }

        goto LABEL_30;
      }

      switch(v10)
      {
        case 1:
          *(v8 + v5) = 4;
          operator new();
        case 2:
          initMemberWithArrayType(v9, [v7 arrayType]);
          break;
        case 58:
          *v9 = 1;
          break;
        default:
          goto LABEL_36;
      }

LABEL_31:
      ++v6;
      v5 += 32;
      if (v4 == v6)
      {
        return (*(*this + 32 * v4 - 28) + *(*this + 32 * v4 - 20) * *(*this + 32 * v4 - 24));
      }
    }

    if (v10 <= 115)
    {
      switch(v10)
      {
        case 'O':
          v11 = 6;
          break;
        case 'P':
          v11 = 7;
          break;
        case 's':
          v11 = 8;
          break;
        default:
          goto LABEL_36;
      }
    }

    else if (v10 > 117)
    {
      if (v10 == 118)
      {
        v11 = 11;
      }

      else
      {
        if (v10 != 139)
        {
          goto LABEL_36;
        }

        v11 = 12;
      }
    }

    else if (v10 == 116)
    {
      v11 = 9;
    }

    else
    {
      v11 = 10;
    }

LABEL_30:
    *v9 = v11;
    goto LABEL_31;
  }

  return (*(*this + 32 * v4 - 28) + *(*this + 32 * v4 - 20) * *(*this + 32 * v4 - 24));
}

void std::vector<MemberRef>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        MemberRef::~MemberRef((v3 - 32));
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<MemberRef>::__append(a1, v5);
  }
}

uint64_t StructType::findMemberContainingIndex(StructType *this, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, _MTLMessageContext *a6)
{
  v6 = *this;
  if (a3 != a4)
  {
    v7 = a4;
    while (1)
    {
      v8 = (a3 + v7) >> 1;
      v9 = (v6 + 32 * v8);
      v10 = v9[1];
      if (v10 <= a2)
      {
        if (v10 + v9[2] * v9[3] - 1 >= a2)
        {
          return (a3 + v7) >> 1;
        }

        LODWORD(a3) = v8 + 1;
      }

      else
      {
        v7 = (v8 - 1);
      }

      if (a3 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = a3;
LABEL_9:
  v11 = (v6 + 32 * v7);
  v12 = v11[1];
  if (v12 > a2 || v12 + v11[3] * v11[2] - 1 < a2)
  {
    _MTLMessageContextPush_();
  }

  return v7;
}

uint64_t StructType::findMemberAtIndex(StructType *this, unsigned int a2, unsigned int a3, _MTLMessageContext *a4)
{
  v6 = a2;
  v7 = this;
  var0 = a4->var0;
  v9 = ((*(this + 1) - *this) >> 5) - 1;
  while (1)
  {
    MemberContainingIndex = StructType::findMemberContainingIndex(this, a2, 0, v9, a3, a4);
    if (a4->var0 != var0)
    {
      break;
    }

    result = *v7 + 32 * MemberContainingIndex;
    v12 = *(result + 8);
    v13 = *(result + 12);
    if (v13)
    {
      v13 = (v6 - *(result + 4)) / v12;
    }

    if (*result != 4)
    {
      return result;
    }

    v7 = *(result + 16);
    v14 = *(result + 4) + v13 * v12;
    v6 -= v14;
    a3 += v14;
    v9 = ((*(v7 + 1) - *v7) >> 5) - 1;
    this = v7;
    a2 = v6;
  }

  return 0;
}

uint64_t StructType::indexRangeIsValueType(StructType *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, _MTLMessageContext *a6)
{
  v8 = a1;
  LODWORD(v9) = 0;
  var0 = a6->var0;
  v11 = ((*(a1 + 1) - *a1) >> 5) - 1;
  LODWORD(v12) = v11;
  do
  {
    v13 = (v12 + v9 + 1) >> 1;
    v14 = (*a1 + 32 * v13);
    v15 = v14[1];
    v16 = v15 + v14[3] * v14[2] - 1;
    if (v16 >= a3)
    {
      v17 = (v12 + v9 + 1) >> 1;
    }

    else
    {
      v17 = v12;
    }

    if (v15 <= a3)
    {
      v12 = v17;
    }

    else
    {
      v12 = (v13 - 1);
    }

    if (v15 <= a2)
    {
      v18 = v13;
    }

    else
    {
      v18 = v9;
    }

    if (v16 < a2)
    {
      v9 = (v13 + 1);
    }

    else
    {
      v9 = v18;
    }

    v38 = v11 == v12 - v9;
    v11 = v12 - v9;
  }

  while (!v38);
  if (v12 >= v9 || (result = _MTLMessageContextPush_(), a6->var0 == var0))
  {
    MemberContainingIndex = StructType::findMemberContainingIndex(v8, a2, v9, v12, a4, a6);
    LODWORD(v9) = MemberContainingIndex;
    result = StructType::findMemberContainingIndex(v8, a3, MemberContainingIndex, v12, a4, a6);
    if (a6->var0 == var0)
    {
      v21 = result;
      if (v9 <= result)
      {
        v40 = v8;
        v39 = result;
        do
        {
          v22 = *v8 + 32 * v9;
          if (*v22 == 4)
          {
            v24 = *(v22 + 4);
            v23 = *(v22 + 8);
            v25 = v24 + a4;
            if (a2 >= v24)
            {
              v26 = a2 - v24;
            }

            else
            {
              v26 = 0;
            }

            v27 = v24 + *(v22 + 12) * v23 - 1;
            if (v27 >= a3)
            {
              v27 = a3;
            }

            v28 = v27 - v24;
            v29 = v26 / v23;
            v30 = (v27 - v24) / v23;
            v31 = v26 / v23 + 1;
            v32 = *(v22 + 16);
            if (v31 >= v30)
            {
              v33 = v29 * v23;
              v34 = v26 % v23;
              v35 = v28 - v29 * v23;
              v36 = v23 - 1;
              if (v36 >= v35)
              {
                v37 = v35;
              }

              else
              {
                v37 = v36;
              }

              result = StructType::indexRangeIsValueType(v32, v34, v37, v33 + v25, a5, a6);
              v38 = v29 == v30 || v26 == v33;
              v21 = v39;
              v8 = v40;
              if (!v38)
              {
                result = StructType::indexRangeIsValueType(*(v22 + 16), 0, v28 - *(v22 + 8) * v30, *(v22 + 8) * v30 + v25, a5, a6);
              }
            }

            else
            {
              result = StructType::indexRangeIsValueType(v32, 0, v23 - 1, v25 + v31 * v23, a5, a6);
              v8 = v40;
            }
          }

          else if (*v22 != a5)
          {
            MemberRef::typeToString(a5);
            MemberRef::typeToString(*v22);
            result = _MTLMessageContextPush_();
          }

          if (v9 == v21)
          {
            LODWORD(v9) = v9 + 1;
          }

          else
          {
            v9 = (v9 + 1);
            if (*(v22 + 4) + *(v22 + 12) * *(v22 + 8) != *(*v8 + 32 * v9 + 4))
            {
              result = _MTLMessageContextPush_();
            }
          }
        }

        while (v9 <= v21);
      }
    }
  }

  return result;
}

__CFString *MemberRef::typeToString(unsigned int a1)
{
  if (a1 >= 0xD)
  {
    abort();
  }

  return off_2787B4D68[a1];
}

StructType *StructType::indexRangeIsValueType(StructType *result, unint64_t *a2, unsigned int a3, _MTLMessageContext *a4)
{
  v5 = a2[1];
  if (v5)
  {
    v7 = (*result + 32 * (((*(result + 1) - *result) >> 5) - 1));
    v8 = (v7[1] + v7[3] * v7[2] - 1);
    v9 = *a2;
    v10 = v5 + v9 - 1;
    if (v9 < *(*result + 4) || v10 > v8)
    {
      return _MTLMessageContextPush_();
    }

    else
    {

      return StructType::indexRangeIsValueType(result, v9, v10, 0, a3, a4);
    }
  }

  return result;
}

uint64_t StructType::indexIsValueType(StructType *a1, unint64_t a2, unsigned int a3, _MTLMessageContext *a4)
{
  v5 = (*a1 + 32 * (((*(a1 + 1) - *a1) >> 5) - 1));
  v6 = (v5[1] + v5[3] * v5[2] - 1);
  if (*(*a1 + 4) > a2 || v6 < a2)
  {
    return _MTLMessageContextPush_();
  }

  return StructType::indexRangeIsValueType(a1, a2, a2, 0, a3, a4);
}

void sub_22E1CB094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1CB2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1CB54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *MTLArgumentTypeToString(uint64_t a1)
{
  if (a1 <= 23)
  {
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          return "Sampler";
        case 16:
          return "Imageblock Data";
        case 17:
          return "Imageblock";
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return "Buffer";
        case 1:
          return "Threadgroup Memory";
        case 2:
          return "Texture";
      }
    }

    return "Unknown";
  }

  if (a1 > 26)
  {
    switch(a1)
    {
      case 27:
        return "Intersection Function Table";
      case 34:
        return "Object Payload";
      case 37:
        return "Tensor";
    }

    return "Unknown";
  }

  if (a1 == 24)
  {
    return "Visible Function Table";
  }

  if (a1 == 25)
  {
    return "Primitive Acceleration Structure";
  }

  return "Instance Acceleration Structure";
}

void std::vector<MemberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        MemberRef::~MemberRef((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<MemberRef>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = result[2];
  if (a2 <= (v4 - v3) >> 5)
  {
    if (a2)
    {
      v10 = v3 + 32 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 12) = 1;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        v3 += 32;
      }

      while (v3 != v10);
      v3 = v10;
    }

    result[1] = v3;
  }

  else
  {
    v5 = v3 - *result;
    v6 = a2 + (v5 >> 5);
    if (v6 >> 59)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v5 >> 5;
    v8 = v4 - *result;
    if (v8 >> 4 > v6)
    {
      v6 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    v12[4] = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MemberRef>>(result, v9);
    }

    v11 = 32 * v7;
    v12[0] = 0;
    v12[1] = 32 * v7;
    v12[3] = 0;
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 12) = 1;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v11 += 32;
    }

    while (v11 != 32 * v7 + 32 * a2);
    v12[2] = 32 * v7 + 32 * a2;
    std::vector<MemberRef>::__swap_out_circular_buffer(result, v12);
    return std::__split_buffer<MemberRef>::~__split_buffer(v12);
  }

  return result;
}

void sub_22E1CCDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MemberRef>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

MemberRef *std::vector<MemberRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *v8;
      v11 = *(v8 + 1);
      v8 = (v8 + 32);
      *v9 = v10;
      v9[1] = v11;
      v9 += 2;
    }

    while (v8 != v5);
    do
    {
      MemberRef::~MemberRef(result);
      result = (v12 + 32);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v13 = *a1;
  *a1 = v7;
  *(a1 + 8) = v13;
  a2[1] = v13;
  v14 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v14;
  v15 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MemberRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<MemberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    MemberRef::~MemberRef((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void CheckerboardRenderTargetPipelineCache::init(CheckerboardRenderTargetPipelineCache *this, MTLDebugDevice *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [-[MTLToolsObject baseObject](a2 "baseObject")];
  this->_library = v5;
  this->_vertexFunction = [(MTLLibrary *)v5 newFunctionWithName:@"simple_vertex"];
  this->_fConstants = objc_alloc_init(MEMORY[0x277CD6D70]);
  v6 = objc_alloc_init(MEMORY[0x277CD6D60]);
  [v6 setDepthCompareFunction:7];
  [v6 setDepthWriteEnabled:0];
  this->_depthStencilState[0] = [-[MTLLibrary device](this->_library "device")];
  [v6 setDepthWriteEnabled:1];
  this->_depthStencilState[1] = [-[MTLLibrary device](this->_library "device")];

  objc_autoreleasePoolPop(v4);
}

BOOL _MTLDebugIsValidSparsePageSize(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 - 101) >= 3;
  }

  else
  {
    v1 = 0;
  }

  return !v1;
}

unint64_t _validateTextureBufferDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 width];
  if (v5 > [a2 maxTextureBufferWidth])
  {
    _validateTextureBufferDescriptor_cold_1(a1, a2);
  }

  if ([a1 height] != 1)
  {
    _validateTextureBufferDescriptor_cold_2(a1);
  }

  if ([a1 depth] != 1)
  {
    _validateTextureBufferDescriptor_cold_3(a1);
  }

  if ([a1 mipmapLevelCount] != 1)
  {
    _validateTextureBufferDescriptor_cold_4(a1);
  }

  if ([a1 sampleCount] != 1)
  {
    _validateTextureBufferDescriptor_cold_5(a1);
  }

  if ([a1 arrayLength] != 1)
  {
    _validateTextureBufferDescriptor_cold_6(a1);
  }

  if (![a1 usage])
  {
    _MTLMessageContextPush_();
  }

  if (([a1 usage] & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  v6 = [a1 usage];
  if (!([a1 usage] & 2 | v6 & 1))
  {
    _MTLMessageContextPush_();
  }

  [a1 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  result = [a1 pixelFormat];
  v8 = result - 62;
  if (result - 62 > 0x3F)
  {
    goto LABEL_29;
  }

  if (((1 << v8) & 0xE03D0E0000001D0FLL) != 0)
  {
    return result;
  }

  if (((1 << v8) & 0x70000000) != 0)
  {
    result = [a1 usage];
    if ((result & 2) != 0)
    {
      result = [a2 supportsPacked32TextureBufferWrites];
      if ((result & 1) == 0)
      {
        return _MTLMessageContextPush_();
      }
    }

    return result;
  }

  if (result != 80)
  {
LABEL_29:
    if (result > 0x3C || ((1 << result) & 0x10E0000743D07402) == 0)
    {
      return _MTLMessageContextPush_();
    }

    return result;
  }

  result = [a1 usage];
  if ((result & 2) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

BOOL validateSharedTextureHandleWithDevice(void *a1, void *a2)
{
  if (!a1)
  {
    validateSharedTextureHandleWithDevice();
  }

  v4 = [a1 ioSurface];
  if (!v4)
  {
    validateSharedTextureHandleWithDevice();
  }

  v5 = IOSurfaceCopyValue(v4, *MEMORY[0x277CD29D0]);
  if (!v5)
  {
    validateSharedTextureHandleWithDevice();
  }

  v6 = MEMORY[0x277CD70F0];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD70F0]];
  if (v7)
  {
    v8 = [objc_msgSend(v5 objectForKeyedSubscript:{*v6), "unsignedLongLongValue"}];
    if ([a2 registryID] != v8)
    {
      validateSharedTextureHandleWithDevice();
    }
  }

  else
  {
  }

  return v7 != 0;
}

void sub_22E1D02A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_22E1D1438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CheckerboardRenderTargetPipelineCache::getColorPipelineState(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v24 = 0;
  v25 = 0;
  v23 = *a3;
  do
  {
    v7 = [objc_msgSend(a2 "colorAttachments")];
    v8 = [objc_msgSend(v7 "texture")];
    v9 = [v7 storeAction];
    v26[v6] = v8;
    if (v8 && !v9)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      [*(a1 + 8) device];
      MTLPixelFormatGetInfoForDevice();
      v24 &= ~(3 << v5);
    }

    ++v6;
    v5 += 2;
  }

  while (v6 != 8);
  v25 = [objc_msgSend(objc_msgSend(a2 "depthAttachment")];
  if (v25)
  {
    if ([objc_msgSend(a2 "depthAttachment")])
    {
      if (!v24)
      {
        return 0;
      }
    }

    else
    {
      v24 |= 0x10000uLL;
    }
  }

  else if (!v24)
  {
    return 0;
  }

  os_unfair_lock_lock(a1);
  v11 = std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::find<MTLDebugCheckerboardFillHashKey>((a1 + 48), &v23);
  if (v11)
  {
    v10 = v11[13];
  }

  else
  {
    *&v21[0] = v24;
    [*(a1 + 40) setConstantValue:v21 type:33 atIndex:0];
    [*(a1 + 40) setConstantValue:v21 + 4 type:33 atIndex:1];
    v12 = [*(a1 + 8) newFunctionWithName:@"fill_checkboard_fragment" constantValues:*(a1 + 40) error:0];
    v13 = objc_alloc_init(MEMORY[0x277CD6F78]);
    [v13 setVertexFunction:*(a1 + 16)];
    [v13 setFragmentFunction:v12];
    v14 = 0;
    v15 = 0;
    for (i = 0; i != 8; ++i)
    {
      v17 = [objc_msgSend(v13 "colorAttachments")];
      [v17 setPixelFormat:v26[i]];
      if (((v24 >> v15) & 3) != 0)
      {
        v18 = (v23 >> v14) & 0xF;
      }

      else
      {
        v18 = 0;
      }

      [v17 setWriteMask:v18];
      v15 += 2;
      v14 += 4;
    }

    [v13 setDepthAttachmentPixelFormat:v25];
    v20 = [objc_msgSend(*(a1 + 8) "device")];
    std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::__emplace_unique_key_args<MTLDebugCheckerboardFillHashKey,MTLDebugCheckerboardFillHashKey&,objc_object  {objcproto22MTLRenderPipelineState}&>((a1 + 48), &v23, &v23, &v20);

    v10 = v20;
  }

  os_unfair_lock_unlock(a1);
  return v10;
}

__CFString *_MTL4DebugFunctionDescriptorName(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    return [a1 name];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [a1 specializedName];
    }

    else
    {
      return &stru_2841C04D0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::find<MTLDebugCheckerboardFillHashKey>(void *a1, void *a2)
{
  v4 = _MTLHashState();
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v5 <= v4)
    {
      v9 = v4 % v5;
    }
  }

  else
  {
    v9 = (v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (MTLDebugCheckerboardFillHashKey::operator==(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL MTLDebugCheckerboardFillHashKey::operator==(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 3;
  do
  {
    v4 = v3[v2];
    v5 = a2[v2 + 3];
    result = v4 == v5;
    if (v4 != v5)
    {
      break;
    }
  }

  while (v2++ != 7);
  return result;
}

void *std::__hash_table<std::__hash_value_type<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*>,std::__unordered_map_hasher<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,MTLDebugCheckerboardFillHashKey::Hash,std::equal_to<MTLDebugCheckerboardFillHashKey>,true>,std::__unordered_map_equal<MTLDebugCheckerboardFillHashKey,objc_object  {objcproto22MTLRenderPipelineState}*,std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}*>>::__emplace_unique_key_args<MTLDebugCheckerboardFillHashKey,MTLDebugCheckerboardFillHashKey&,objc_object  {objcproto22MTLRenderPipelineState}&>(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = _MTLHashState();
  v7 = v6;
  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v8 <= v6)
    {
      v11 = v6 % v8;
    }
  }

  else
  {
    v11 = (v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= v8)
      {
        v14 %= v8;
      }
    }

    else
    {
      v14 &= v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!MTLDebugCheckerboardFillHashKey::operator==(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void CheckerboardRenderTargetPipelineCache::~CheckerboardRenderTargetPipelineCache(CheckerboardRenderTargetPipelineCache *this)
{
  for (i = &this->_cache.__table_.__first_node_; ; i[13].__next_)
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&this->_cache);
}

void *std::__hash_table<MTLDebugCommandBuffer *,std::hash<MTLDebugCommandBuffer *>,std::equal_to<MTLDebugCommandBuffer *>,std::allocator<MTLDebugCommandBuffer *>>::__emplace_unique_key_args<MTLDebugCommandBuffer *,MTLDebugCommandBuffer * const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void MetalBuffer::MetalBuffer(MetalBuffer *this, MetalBufferHeap *a2, unsigned int a3)
{
  this->heap = a2;
  this->index = a3;
}

{
  this->heap = a2;
  this->index = a3;
}

void MetalBufferHeap::freeBuffer(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  v4 = *(a2 + 8);
  v5 = *(a1 + 112) + 1;
  *(a1 + 112) = v5;
  *(*(a1 + 88) + 4 * v5) = v4;
  *(a1 + 128) -= *(a1 + 136);
  *a2 = 0;

  std::mutex::unlock(a1);
}

uint64_t MetalBufferHeap::init(uint64_t this, MTLGPUDebugDevice *a2, uint64_t a3)
{
  *(this + 136) = a3;
  *(this + 144) = a2;
  return this;
}

void *MetalBufferHeap::grow(MetalBufferHeap *this, unsigned int a2)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  v4 = *(this + 8);
  v5 = *(this + 9);
  result = (this + 64);
  v6 = v5 - v4;
  v7 = (v5 - v4) >> 3;
  if (v7 != a2)
  {
    v8 = a2;
    std::vector<MTLGPUDebugBuffer *>::resize(result, a2);
    std::vector<unsigned int>::resize((this + 88), v8);
    if (v6 < *(this + 9) - *(this + 8))
    {
      do
      {
        *(*(this + 8) + 8 * v7) = [*(this + 18) newInternalBufferWithLength:*(this + 17) options:256];
        v9 = [*(*(this + 18) + 680) addAllocation:*(*(this + 8) + 8 * v7)];
        v10 = *(this + 15) + *(this + 17);
        *(this + 15) = v10;
        v12 = MTLGPUDebugLog(v9, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          MetalBufferHeap::grow(v14, v10, v15, v12);
        }

        v13 = *(this + 28) + 1;
        *(this + 28) = v13;
        *(*(this + 11) + 4 * v13) = v7++;
      }

      while (v7 < (*(this + 9) - *(this + 8)) >> 3);
    }

    return [*(*(this + 18) + 680) commit];
  }

  return result;
}

std::mutex *MetalBufferHeap::allocBuffer(std::mutex *this)
{
  std::mutex::lock(this);
  if ((*&this[1].__m_.__opaque[40] & 0x80000000) != 0)
  {
    v2 = MetalBufferHeap::grow(this, ((*this[1].__m_.__opaque - this[1].__m_.__sig) >> 3) + 1);
  }

  v4 = this[2].__m_.__sig + *this[2].__m_.__opaque;
  this[2].__m_.__sig = v4;
  v5 = MTLGPUDebugLog(v2, v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    MetalBufferHeap::allocBuffer(v4, this, v5);
  }

  --*&this[1].__m_.__opaque[40];
  std::mutex::unlock(this);
  return this;
}

void MetalBufferHeap::~MetalBufferHeap(std::mutex *this)
{
  sig = this[1].__m_.__sig;
  v3 = *this[1].__m_.__opaque;
  while (sig != v3)
  {
  }

  v4 = *&this[1].__m_.__opaque[16];
  if (v4)
  {
    *&this[1].__m_.__opaque[24] = v4;
    operator delete(v4);
  }

  v5 = this[1].__m_.__sig;
  if (v5)
  {
    *this[1].__m_.__opaque = v5;
    operator delete(v5);
  }

  std::mutex::~mutex(this);
}

__CFString *MTLDebugFunctionArgumentTypeToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return &stru_2841C04D0;
  }

  else
  {
    return off_2787B4EC0[a1];
  }
}

__CFString *argumentFormattedDescription(uint64_t a1, uint64_t a2)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v4 = [@"\n" stringByPaddingToLength:a1 + 4 withString:@" " startingAtIndex:0];
  if (*a2 != 1)
  {
    return @"<null>";
  }

  v6 = v4;
  v7 = *(a2 + 8);
  result = &stru_2841C04D0;
  if (v7 <= 2)
  {
    if (!v7)
    {
      v9 = MEMORY[0x277CCACA8];
      v29[0] = v6;
      v29[1] = @"buffer =";
      v17 = *(a2 + 16);
      if (v17)
      {
        v18 = [v17 formattedDescription:a1 + 4];
      }

      else
      {
        v18 = @"<null>";
      }

      v29[2] = v18;
      v29[3] = v6;
      v29[4] = @"bufferOffset =";
      v29[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 40)];
      v29[6] = @"bufferAttributeStride =";
      v29[7] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 48)];
      v14 = MEMORY[0x277CBEA60];
      v15 = v29;
      v16 = 8;
      return [v9 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(v14, "arrayWithObjects:count:", v15, v16), "componentsJoinedByString:", @" "];
    }

    if (v7 == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      v28[0] = v6;
      v28[1] = @"texture =";
      v19 = *(a2 + 16);
      if (v19)
      {
        v20 = [v19 formattedDescription:a1 + 4];
      }

      else
      {
        v20 = @"<null>";
      }

      v28[2] = v20;
      v28[3] = v6;
      v28[4] = @"baseLevel =";
      v28[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 24)];
      v14 = MEMORY[0x277CBEA60];
      v15 = v28;
      v16 = 6;
      return [v9 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(v14, "arrayWithObjects:count:", v15, v16), "componentsJoinedByString:", @" "];
    }

    if (v7 != 2)
    {
      return result;
    }

    v9 = MEMORY[0x277CCACA8];
    if (*(a2 + 72) == 1)
    {
      v27[0] = v6;
      v27[1] = @"sampler =";
      v12 = *(a2 + 16);
      if (v12)
      {
        v13 = [v12 formattedDescription:a1 + 4];
      }

      else
      {
        v13 = @"<null>";
      }

      v27[2] = v13;
      v27[3] = v6;
      v27[4] = @"lodMinClamp =";
      LODWORD(v5) = *(a2 + 76);
      v27[5] = [MEMORY[0x277CCABB0] numberWithFloat:v5];
      v27[6] = v6;
      v27[7] = @"lodMaxClamp =";
      LODWORD(v23) = *(a2 + 80);
      v27[8] = [MEMORY[0x277CCABB0] numberWithFloat:v23];
      v14 = MEMORY[0x277CBEA60];
      v15 = v27;
      v16 = 9;
      return [v9 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(v14, "arrayWithObjects:count:", v15, v16), "componentsJoinedByString:", @" "];
    }

    v26[0] = v6;
    v26[1] = @"sampler =";
    v21 = *(a2 + 16);
    if (v21)
    {
      v22 = [v21 formattedDescription:a1 + 4];
    }

    else
    {
      v22 = @"<null>";
    }

    v26[2] = v22;
    v14 = MEMORY[0x277CBEA60];
    v15 = v26;
  }

  else
  {
    if ((v7 - 4) < 3)
    {
      v9 = MEMORY[0x277CCACA8];
      v24[0] = v6;
      v24[1] = MTLDebugFunctionArgumentTypeToString(v7);
      v24[2] = @"=";
      v10 = *(a2 + 16);
      if (v10)
      {
        v11 = [v10 formattedDescription:a1 + 4];
      }

      else
      {
        v11 = @"<null>";
      }

      v24[3] = v11;
      v14 = MEMORY[0x277CBEA60];
      v15 = v24;
      v16 = 4;
      return [v9 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(v14, "arrayWithObjects:count:", v15, v16), "componentsJoinedByString:", @" "];
    }

    if (v7 != 3)
    {
      return result;
    }

    v9 = MEMORY[0x277CCACA8];
    v25[0] = v6;
    v25[1] = @"threadgroupMemoryLength =";
    v25[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 56)];
    v14 = MEMORY[0x277CBEA60];
    v15 = v25;
  }

  v16 = 3;
  return [v9 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(v14, "arrayWithObjects:count:", v15, v16), "componentsJoinedByString:", @" "];
}

void emitDispatchDistribution(MTLTelemetryDevice *a1, MTLTelemetryDispatchDistributionRec *a2)
{
  v211 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD7168];
  v5 = *MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    computeEncoderDispatchDistribution = a1->computeEncoderDispatchDistribution;
    min = computeEncoderDispatchDistribution->min;
    max = computeEncoderDispatchDistribution->max;
    count = computeEncoderDispatchDistribution->count;
    total = computeEncoderDispatchDistribution->total;
    if (count)
    {
      v11 = (total / count);
    }

    else
    {
      v11 = 0.0;
    }

    printf("\n\nDispatchesPerComputeEncoder, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", min, max, v11, total, count);
  }

  v12 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1->computeEncoderDispatchDistribution;
    v15 = v13->min;
    v14 = v13->max;
    v16 = v13->count;
    v17 = v13->total;
    if (v16)
    {
      v18 = (v17 / v16);
    }

    else
    {
      v18 = 0.0;
    }

    *buf = 67110144;
    v112 = v15;
    v113 = 1024;
    v114 = v14;
    v115 = 2048;
    v116 = v18;
    v117 = 2048;
    v118 = v17;
    v119 = 1024;
    v120 = v16;
    _os_log_impl(&dword_22E0FF000, v12, OS_LOG_TYPE_DEFAULT, "DispatchesPerComputeEncoder, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", buf, 0x28u);
  }

  v5 = *v4;
LABEL_13:
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_24;
    }

    commandBufferDispatchDistribution = a1->commandBufferDispatchDistribution;
    v20 = commandBufferDispatchDistribution->min;
    v21 = commandBufferDispatchDistribution->max;
    v22 = commandBufferDispatchDistribution->count;
    v23 = commandBufferDispatchDistribution->total;
    if (v22)
    {
      v24 = (v23 / v22);
    }

    else
    {
      v24 = 0.0;
    }

    printf("\n\nComputeDispatchesPerCommandBuffer, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", v20, v21, v24, v23, v22);
  }

  v25 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = a1->commandBufferDispatchDistribution;
    v28 = v26->min;
    v27 = v26->max;
    v29 = v26->count;
    v30 = v26->total;
    if (v29)
    {
      v31 = (v30 / v29);
    }

    else
    {
      v31 = 0.0;
    }

    *buf = 67110144;
    v112 = v28;
    v113 = 1024;
    v114 = v27;
    v115 = 2048;
    v116 = v31;
    v117 = 2048;
    v118 = v30;
    v119 = 1024;
    v120 = v29;
    _os_log_impl(&dword_22E0FF000, v25, OS_LOG_TYPE_DEFAULT, "ComputeDispatchesPerCommandBuffer, minDispatches=%u, maxDispatches=%u, avgDispatches=%f, totalDispatches=%llu, countDispatches=%u", buf, 0x28u);
  }

LABEL_24:
  if (!a2->var0)
  {
    return;
  }

  if (*v4)
  {
    if (*v4 != 1)
    {
      return;
    }

    v32 = a2->var1.count;
    v33 = a2->var1.total;
    v34 = 0.0;
    v35 = 0.0;
    if (v32)
    {
      v35 = (v33 / v32);
    }

    v36 = a2->var2.count;
    v37 = a2->var2.total;
    if (v36)
    {
      v34 = (v37 / v36);
    }

    v38 = a2->var3.count;
    v39 = 0.0;
    v40 = 0.0;
    if (v38)
    {
      v40 = (a2->var3.total / v38);
    }

    v41 = a2->var4.count;
    v42 = a2->var4.total;
    if (v41)
    {
      v39 = (v42 / v41);
    }

    v43 = a2->var5.count;
    v44 = a2->var5.total;
    v45 = 0.0;
    v46 = 0.0;
    if (v43)
    {
      v46 = (v44 / v43);
    }

    v47 = a2->var6.count;
    v48 = a2->var6.total;
    if (v47)
    {
      v45 = (v48 / v47);
    }

    v49 = a2->var7.count;
    v50 = a2->var7.total;
    v51 = 0.0;
    v52 = 0.0;
    if (v49)
    {
      v52 = (v50 / v49);
    }

    v53 = a2->var8.count;
    v54 = a2->var8.total;
    if (v53)
    {
      v51 = (v54 / v53);
    }

    v55 = a2->var9.count;
    v56 = a2->var9.total;
    v57 = 0.0;
    v58 = 0.0;
    if (v55)
    {
      v58 = (v56 / v55);
    }

    v59 = a2->var10.count;
    if (v59)
    {
      v57 = (a2->var10.total / v59);
    }

    printf("\n\nDispatch, minThreadGroupsPerGridWidth=%u, maxThreadGroupsPerGridWidth=%u, avgThreadGroupsPerGridWidth=%f, totalThreadGroupsPerGridWidth=%llu, countThreadGroupsPerGridWidth=%u, minThreadGroupsPerGridHeight=%u, maxThreadGroupsPerGridHeight=%u, avgThreadGroupsPerGridHeight=%f, totalThreadGroupsPerGridHeight=%llu, countThreadGroupsPerGridHeight=%u, minThreadGroupsPerGridDepth=%u, maxThreadGroupsPerGridDepth=%u, avgThreadGroupsPerGridDepth=%f, totalThreadGroupsPerGridDepth=%llu, countThreadGroupsPerGridDepth=%u, minThreadsPerGridWidth=%u, maxThreadsPerGridWidth=%u, avgThreadsPerGridWidth=%f, totalThreadsPerGridWidth=%llu, countThreadsPerGridWidth=%u, minThreadsPerGridHeight=%u, maxThreadsPerGridHeight=%u, avgThreadsPerGridHeight=%f, totalThreadsPerGridHeight=%llu, countThreadsPerGridHeight=%u, minThreadsPerGridDepth=%u, maxThreadsPerGridDepth=%u, avgThreadsPerGridDepth=%f, totalThreadsPerGridDepth=%llu, countThreadsPerGridDepth=%u, minThreadsPerGroupWidth=%u, maxThreadsPerGroupWidth=%u, avgThreadsPerGroupWidth=%f, totalThreadsPerGroupWidth=%llu, countThreadsPerGroupWidth=%u, minThreadsPerGroupHeight=%u, maxThreadsPerGroupHeight=%u, avgThreadsPerGroupHeight=%f, totalThreadsPerGroupHeight=%llu, countThreadsPerGroupHeight=%u, minThreadsPerGroupDepth=%u, maxThreadsPerGroupDepth=%u, avgThreadsPerGroupDepth=%f, totalThreadsPerGroupDepth=%llu, countThreadsPerGroupDepth=%u, minThreadGroupMemoryLength=%u, maxThreadGroupMemoryLength=%u, avgThreadGroupMemoryLength=%f, totalThreadGroupMemoryLength=%llu, countThreadGroupMemoryLength=%u", a2->var1.min, a2->var1.max, v35, v33, v32, a2->var2.min, a2->var2.max, v34, v37, v36, a2->var3.min, a2->var3.max, v40, a2->var3.total, v38, a2->var4.min, a2->var4.max, v39, v42, v41, a2->var5.min, a2->var5.max, v46, v44, v43, a2->var6.min, a2->var6.max, v45, v48, v47, a2->var7.min, a2->var7.max, v52, v50, v49, a2->var8.min, a2->var8.max, v51, v54, v53, a2->var9.min, a2->var9.max, v58, v56, v55, a2->var10.min, a2->var10.max, v57, a2->var10.total, v59);
  }

  v60 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = a2->var1.count;
    v62 = 0.0;
    v63 = 0.0;
    if (v61)
    {
      v63 = (a2->var1.total / v61);
    }

    v64 = a2->var2.count;
    v65 = a2->var2.total;
    if (v64)
    {
      v62 = (v65 / v64);
    }

    v104 = a2->var1.total;
    v66 = a2->var3.count;
    v67 = a2->var3.total;
    v68 = 0.0;
    v69 = 0.0;
    if (v66)
    {
      v69 = (v67 / v66);
    }

    v70 = a2->var4.count;
    if (v70)
    {
      v68 = (a2->var4.total / v70);
    }

    v71 = a2->var5.count;
    v72 = 0.0;
    v73 = 0.0;
    if (v71)
    {
      v73 = (a2->var5.total / v71);
    }

    v74 = a2->var6.count;
    if (v74)
    {
      v72 = (a2->var6.total / v74);
    }

    v75 = a2->var7.count;
    v76 = 0.0;
    v77 = 0.0;
    if (v75)
    {
      v77 = (a2->var7.total / v75);
    }

    v78 = a2->var8.count;
    if (v78)
    {
      v76 = (a2->var8.total / v78);
    }

    v106 = a2->var8.total;
    v107 = a2->var7.total;
    v108 = a2->var6.total;
    v109 = a2->var5.total;
    v110 = a2->var4.total;
    v79 = a2->var9.count;
    v80 = 0.0;
    v81 = 0.0;
    if (v79)
    {
      v81 = (a2->var9.total / v79);
    }

    v105 = a2->var9.total;
    v82 = a2->var1.min;
    v83 = a2->var1.max;
    v84 = a2->var2.min;
    v85 = a2->var2.max;
    v86 = a2->var3.min;
    v87 = a2->var3.max;
    v89 = a2->var4.min;
    v88 = a2->var4.max;
    v91 = a2->var5.min;
    v90 = a2->var5.max;
    v93 = a2->var6.min;
    v92 = a2->var6.max;
    v94 = a2->var7.min;
    v97 = a2->var7.max;
    v98 = a2->var8.min;
    v99 = a2->var8.max;
    v100 = a2->var9.min;
    v101 = a2->var9.max;
    v102 = a2->var10.min;
    v103 = a2->var10.max;
    v95 = a2->var10.count;
    v96 = a2->var10.total;
    if (v95)
    {
      v80 = (v96 / v95);
    }

    v112 = v82;
    v114 = v83;
    v118 = v104;
    v120 = v61;
    v122 = v84;
    v124 = v85;
    v128 = v65;
    v130 = v64;
    v132 = v86;
    v134 = v87;
    v138 = v67;
    *buf = 67121664;
    v140 = v66;
    v113 = 1024;
    v142 = v89;
    v115 = 2048;
    v116 = v63;
    v117 = 2048;
    v119 = 1024;
    v121 = 1024;
    v123 = 1024;
    v125 = 2048;
    v126 = v62;
    v127 = 2048;
    v129 = 1024;
    v131 = 1024;
    v133 = 1024;
    v135 = 2048;
    v136 = v69;
    v137 = 2048;
    v139 = 1024;
    v141 = 1024;
    v143 = 1024;
    v144 = v88;
    v145 = 2048;
    v146 = v68;
    v147 = 2048;
    v148 = v110;
    v149 = 1024;
    v150 = v70;
    v151 = 1024;
    v152 = v91;
    v153 = 1024;
    v154 = v90;
    v155 = 2048;
    v156 = v73;
    v157 = 2048;
    v158 = v109;
    v159 = 1024;
    v160 = v71;
    v161 = 1024;
    v162 = v93;
    v163 = 1024;
    v164 = v92;
    v165 = 2048;
    v166 = v72;
    v167 = 2048;
    v168 = v108;
    v169 = 1024;
    v170 = v74;
    v171 = 1024;
    v172 = v94;
    v173 = 1024;
    v174 = v97;
    v175 = 2048;
    v176 = v77;
    v177 = 2048;
    v178 = v107;
    v179 = 1024;
    v180 = v75;
    v181 = 1024;
    v182 = v98;
    v183 = 1024;
    v184 = v99;
    v185 = 2048;
    v186 = v76;
    v187 = 2048;
    v188 = v106;
    v189 = 1024;
    v190 = v78;
    v191 = 1024;
    v192 = v100;
    v193 = 1024;
    v194 = v101;
    v195 = 2048;
    v196 = v81;
    v197 = 2048;
    v198 = v105;
    v199 = 1024;
    v200 = v79;
    v201 = 1024;
    v202 = v102;
    v203 = 1024;
    v204 = v103;
    v205 = 2048;
    v206 = v80;
    v207 = 2048;
    v208 = v96;
    v209 = 1024;
    v210 = v95;
    _os_log_impl(&dword_22E0FF000, v60, OS_LOG_TYPE_DEFAULT, "Dispatch, minThreadGroupsPerGridWidth=%u, maxThreadGroupsPerGridWidth=%u, avgThreadGroupsPerGridWidth=%f, totalThreadGroupsPerGridWidth=%llu, countThreadGroupsPerGridWidth=%u, minThreadGroupsPerGridHeight=%u, maxThreadGroupsPerGridHeight=%u, avgThreadGroupsPerGridHeight=%f, totalThreadGroupsPerGridHeight=%llu, countThreadGroupsPerGridHeight=%u, minThreadGroupsPerGridDepth=%u, maxThreadGroupsPerGridDepth=%u, avgThreadGroupsPerGridDepth=%f, totalThreadGroupsPerGridDepth=%llu, countThreadGroupsPerGridDepth=%u, minThreadsPerGridWidth=%u, maxThreadsPerGridWidth=%u, avgThreadsPerGridWidth=%f, totalThreadsPerGridWidth=%llu, countThreadsPerGridWidth=%u, minThreadsPerGridHeight=%u, maxThreadsPerGridHeight=%u, avgThreadsPerGridHeight=%f, totalThreadsPerGridHeight=%llu, countThreadsPerGridHeight=%u, minThreadsPerGridDepth=%u, maxThreadsPerGridDepth=%u, avgThreadsPerGridDepth=%f, totalThreadsPerGridDepth=%llu, countThreadsPerGridDepth=%u, minThreadsPerGroupWidth=%u, maxThreadsPerGroupWidth=%u, avgThreadsPerGroupWidth=%f, totalThreadsPerGroupWidth=%llu, countThreadsPerGroupWidth=%u, minThreadsPerGroupHeight=%u, maxThreadsPerGroupHeight=%u, avgThreadsPerGroupHeight=%f, totalThreadsPerGroupHeight=%llu, countThreadsPerGroupHeight=%u, minThreadsPerGroupDepth=%u, maxThreadsPerGroupDepth=%u, avgThreadsPerGroupDepth=%f, totalThreadsPerGroupDepth=%llu, countThreadsPerGroupDepth=%u, minThreadGroupMemoryLength=%u, maxThreadGroupMemoryLength=%u, avgThreadGroupMemoryLength=%f, totalThreadGroupMemoryLength=%llu, countThreadGroupMemoryLength=%u", buf, 0x17Eu);
  }
}

void std::unordered_map<unsigned long,anonymous namespace::EncoderResourceUsage>::clear[abi:ne200100](uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_22E1DCBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,anonymous namespace::EncoderResourceUsage>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_22E1DD914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DD9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DDC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DDD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DE148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto17MTL4CommandBuffer}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_22E1DE22C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

MTLDebugArgumentEncoder *newArgumentEncoder(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a5, "count")}];
    if (v10 && [a5 count])
    {
      v11 = 0;
      do
      {
        [v10 setObject:objc_msgSend(objc_msgSend(a5 atIndexedSubscript:{"objectAtIndexedSubscript:", v11), "baseObject"), v11}];
        ++v11;
      }

      while (v11 < [a5 count]);
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [a1 baseObject];
  if (a4)
  {
    v13 = [v12 reflectionWithOptions:3 pipelineLibrary:{objc_msgSend(a4, "baseObject")}];
  }

  else
  {
    v13 = [v12 reflectionWithOptions:3 binaryArchives:v10];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [v13 arguments];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
LABEL_13:
    v18 = 0;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v27 + 1) + 8 * v18);
      if (![v19 type] && objc_msgSend(v19, "index") == a2)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_20:
    newArgumentEncoder(a1);
    v19 = 0;
  }

  if (([objc_msgSend(v19 "dataTypeDescription")] & 1) == 0)
  {
    newArgumentEncoder(v19, a1);
  }

  v26 = 0;
  v20 = [a1 baseObject];
  if (a4)
  {
    v21 = [v20 newArgumentEncoderWithBufferIndex:a2 reflection:&v26 pipelineLibrary:a4];
  }

  else
  {
    v21 = [v20 newArgumentEncoderWithBufferIndex:a2 reflection:&v26 binaryArchives:v10];
  }

  v22 = v21;
  if (a3)
  {
    *a3 = v26;
  }

  v23 = [MTLDebugArgumentEncoder alloc];
  v24 = -[MTLDebugArgumentEncoder initWithBaseObject:structType:parent:](v23, "initWithBaseObject:structType:parent:", v22, [v26 bufferStructType], a1);

  return v24;
}

uint64_t validateNewFunctionWithConstantArguments(NSString *a1, MTLFunctionConstantValues *a2)
{
  if (!a1)
  {
    validateNewFunctionWithConstantArguments();
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (a2)
    {
      return result;
    }

    return validateNewFunctionWithConstantArguments();
  }

  result = validateNewFunctionWithConstantArguments();
  if (!a2)
  {
    return validateNewFunctionWithConstantArguments();
  }

  return result;
}

void *_validateUniqueNames(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  result = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  v8 = result;
  if (result)
  {
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [objc_msgSend(*(*(&v22 + 1) + 8 * v10) name];
        v12 = strlen(v11);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        v21 = v12;
        if (v12)
        {
          memmove(&__dst, v11, v12);
        }

        *(&__dst + v13) = 0;
        v14 = std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::find<std::string>(a2, &__dst);
        if (a1)
        {
          if (!v14)
          {
            goto LABEL_18;
          }

          p_dst = &__dst;
          if (v21 < 0)
          {
            p_dst = __dst;
          }

          v18 = v26;
          v19 = v14[5];
          v17 = p_dst;
          _MTLMessageContextPush_();
        }

        else
        {
          if (!v14)
          {
LABEL_18:
            std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::__emplace_unique_key_args<std::string,std::string&,char const*&>(a2, &__dst, &__dst, &v26);
            goto LABEL_19;
          }

          v16 = &__dst;
          if (v21 < 0)
          {
            v16 = __dst;
          }

          v18 = v26;
          v19 = v14[5];
          v17 = v16;
          MTLReportFailure();
        }

LABEL_19:
        if (v21 < 0)
        {
          operator delete(__dst);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

void sub_22E1DF030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **validateLinkedFunctionsHaveUniqueNames(MTLFunctionDescriptor *a1)
{
  LODWORD(v3) = 1065353216;
  _validateUniqueNames(0, &v2, [(MTLFunctionDescriptor *)a1 privateFunctions:0], "privateFunctions");
  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v2);
}

const void **std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::__emplace_unique_key_args<std::string,std::string&,char const*&>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,char const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,char const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,char const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,char const*>>>::__construct_node_hash<std::string&,char const*&>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_22E1DFA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1DFB48(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void InitResourceIdentifier(MTLLegacySVTexture *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(MTLToolsObject *)a1->super.super.super._device baseObject];
  if (([objc_msgSend(v2 "vendorName")] & 1) != 0 || objc_msgSend(objc_msgSend(v2, "vendorName"), "containsString:", @"Intel"))
  {
    v3 = [v2 newBufferWithLength:8 options:0];
    v4 = objc_alloc_init(MEMORY[0x277CD6C70]);
    [v4 setIndex:0];
    [v4 setDataType:58];
    [v4 setAccess:1];
    v6[0] = v4;
    v5 = [v2 newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v6, 1)}];

    [v5 setArgumentBuffer:v3 offset:0];
    [v5 setTexture:-[MTLLegacySVTexture baseObject](a1 atIndex:{"baseObject"), 0}];

    a1->_identifier = *[v3 contents];
  }

  else
  {
    a1->_identifier = [(MTLToolsTexture *)a1 uniqueIdentifier];
  }
}

uint64_t _MTLDebugValidateBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [a2 device];
    if (result != a1)
    {
      return _MTLMessageContextPush_();
    }
  }

  return result;
}

uint64_t _MTLDebugIndexTypeSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  if (a1 == 1)
  {
    return 4;
  }

  _MTLMessageContextPush_();
  return 0;
}

double _MTLDebugValidateIndexBuffer(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _MTLMessageContextBegin_();
  _MTLDebugValidateBuffer(a1, a3, a4, v17);
  if (a2)
  {
    if (a2 == 1)
    {
      v14 = 0;
      v15 = 4;
      if (!a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      _MTLMessageContextPush_();
      v15 = 0;
      v14 = 1;
      if (!a6)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 2;
    if (!a6)
    {
LABEL_11:
      if (v14)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  if (*&v17[0] || a5 + v15 * a7 <= [a3 length])
  {
    if (a7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [a3 length];
    _MTLMessageContextPush_();
    if (a7)
    {
      goto LABEL_11;
    }
  }

  _MTLMessageContextPush_();
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (((v15 - 1) & a5) != 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  _MTLMessageContextEnd();
  return result;
}

void *_MTLDebugValidateIndexBufferWithContext(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t *a8)
{
  v14 = *a8;
  result = _MTLDebugValidateBuffer(a1, a3, a4, a8);
  if (a2)
  {
    if (a2 == 1)
    {
      v16 = 0;
      v17 = 4;
      if (!a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = _MTLMessageContextPush_();
      v17 = 0;
      v16 = 1;
      if (!a6)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 2;
    if (!a6)
    {
LABEL_11:
      if (v16)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  if (*a8 == v14 && (result = [a3 length], a5 + v17 * a7 > result))
  {
    [a3 length];
    result = _MTLMessageContextPush_();
    if (a7)
    {
      goto LABEL_11;
    }
  }

  else if (a7)
  {
    goto LABEL_11;
  }

  result = _MTLMessageContextPush_();
  if (v16)
  {
    return result;
  }

LABEL_12:
  if (((v17 - 1) & a5) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

double _MTLDebugValidatePatchIndexBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _MTLMessageContextBegin_();
  if (a2)
  {
    _MTLDebugValidateBuffer(a1, a2, a3, v17);
    if (!a5)
    {
      goto LABEL_8;
    }

    if (!*&v17[0] && a4 + 4 * (a7 + a6) > [a2 length])
    {
      [a2 length];
      _MTLMessageContextPush_();
    }

    if (a7)
    {
      if (a9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      _MTLMessageContextPush_();
      if (a9)
      {
        goto LABEL_8;
      }
    }

    _MTLMessageContextPush_();
LABEL_8:
    if ((a4 & 3) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a4)
  {
LABEL_12:
    _MTLMessageContextPush_();
  }

LABEL_11:
  _MTLMessageContextEnd();
  return result;
}

void *_MTLDebugValidatePatchIndexBufferWithContext(void *result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a2)
  {
    v15 = *a10;
    result = _MTLDebugValidateBuffer(result, a2, a3, a10);
    if (!a5)
    {
      goto LABEL_8;
    }

    if (*a10 == v15)
    {
      result = [a2 length];
      if (a4 + 4 * (a7 + a6) > result)
      {
        [a2 length];
        result = _MTLMessageContextPush_();
      }
    }

    if (a7)
    {
      if (a9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = _MTLMessageContextPush_();
      if (a9)
      {
        goto LABEL_8;
      }
    }

    result = _MTLMessageContextPush_();
LABEL_8:
    if ((a4 & 3) != 0)
    {
      return _MTLMessageContextPush_();
    }

    return result;
  }

  if (a4)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

__CFString *_MTLDebugWindingString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"MTLWindingCounterClockwise";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLWindingClockwise";
  }
}

__CFString *_MTLDebugCullModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4FB0[a1];
  }
}

__CFString *_MTLDebugDepthClipModeString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"MTLDepthClipModeClamp";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"MTLDepthClipModeClip";
  }
}

__CFString *_MTLDebugTriangleFillModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4FC8[a1];
  }
}

__CFString *_MTLDebugVisibilityResultModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B4FE0[a1];
  }
}

_OWORD *std::vector<MTLViewport>::assign(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 4) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<MTLViewport>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - result) >> 4);
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - result) >> 4);
  }

  for (; v11; --v11)
  {
    v12 = *a3;
    v13 = a3[2];
    result[1] = a3[1];
    result[2] = v13;
    *result = v12;
    result += 3;
  }

  if (a2 <= v10)
  {
    a1[1] = *a1 + 48 * a2;
  }

  else
  {
    v14 = a1[1];
    v15 = &v14[3 * (a2 - v10)];
    v16 = 48 * a2 - 48 * v10;
    do
    {
      v17 = *a3;
      v18 = a3[2];
      v14[1] = a3[1];
      v14[2] = v18;
      *v14 = v17;
      v14 += 3;
      v16 -= 48;
    }

    while (v16);
    a1[1] = v15;
  }

  return result;
}

_OWORD *std::vector<MTLScissorRect>::assign(uint64_t *a1, unint64_t a2, _OWORD *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 59))
    {
      v7 = v5 >> 4;
      if (v5 >> 4 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFE0)
      {
        v8 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<MTLScissorRect>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - result) >> 5;
  if (v9 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = (a1[1] - result) >> 5;
  }

  for (; v10; --v10)
  {
    v11 = a3[1];
    *result = *a3;
    result[1] = v11;
    result += 2;
  }

  if (a2 <= v9)
  {
    a1[1] = *a1 + 32 * a2;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[2 * (a2 - v9)];
    v14 = 32 * a2 - 32 * v9;
    do
    {
      v15 = a3[1];
      *v12 = *a3;
      v12[1] = v15;
      v12 += 2;
      v14 -= 32;
    }

    while (v14);
    a1[1] = v13;
  }

  return result;
}

uint64_t hasMemorylessAttachments(MTLRenderPassDescriptor *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = [*-[MTLRenderPassDescriptor _descriptorPrivate](a1 "_descriptorPrivate")];
    if (v3)
    {
      v4 = *[v3 _descriptorPrivate];
      if (v4)
      {
        if ([v4 storageMode] == 3)
        {
          break;
        }
      }
    }

    if (++v2 == 8)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = 1;
LABEL_8:
  v6 = [*-[MTLRenderPassDescriptor _descriptorPrivate](a1 "_descriptorPrivate")];
  if (v6)
  {
    v7 = *[v6 _descriptorPrivate];
    if (v7)
    {
      if ([v7 storageMode] == 3)
      {
        v5 = 1;
      }
    }
  }

  v8 = [*-[MTLRenderPassDescriptor _descriptorPrivate](a1 "_descriptorPrivate")];
  if (v8)
  {
    v9 = *[v8 _descriptorPrivate];
    if (v9)
    {
      v5 |= [v9 storageMode] == 3;
    }
  }

  return v5 & 1;
}

uint64_t validateArg(uint64_t a1, unint64_t a2, MTLDebugFunctionArgument *a3, _MTLMessageContext *a4)
{
  result = MTLReportFailureTypeEnabled();
  if (result && a3->isValid && !a3->hasBeenUsed)
  {
    MTLArgumentTypeToString(a1);
    return _MTLMessageContextPush_();
  }

  return result;
}

void sub_22E1E4774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *validateFunctionArguments(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, void *a12, unint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v177 = *MEMORY[0x277D85DE8];
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  result = [a4 countByEnumeratingWithState:&v166 objects:v175 count:16];
  v151 = result;
  if (!result)
  {
    v155 = 0;
    goto LABEL_186;
  }

  v155 = 0;
  v144 = ~a13;
  v149 = *v167;
  v150 = a5;
  do
  {
    v23 = 0;
    do
    {
      if (*v167 != v149)
      {
        objc_enumerationMutation(a4);
      }

      v24 = *(*(&v166 + 1) + 8 * v23);
      v156 = v23;
      if ([v24 isActive])
      {
        v25 = [v24 type];
        v26 = [v24 name];
        v27 = [v24 arrayLength];
        v161 = v24;
        v28 = v24;
        v29 = v27;
        v30 = [v28 index];
        if (v29)
        {
          v31 = v25 > 0x22 || ((1 << v25) & 0x40F03000FLL) == 0;
          if (v31)
          {
LABEL_204:
            abort();
          }

          v32 = 0;
          v147 = v25 - 25;
          v152 = v25;
          v159 = v30;
          v160 = v29;
          while (1)
          {
            v33 = v32 + v30;
            if (v25 <= 2)
            {
              break;
            }

            if ((v25 - 16) >= 2)
            {
              if (v25 == 3)
              {
                v34 = a7 + 88 * v33;
                if ((*v34 & 1) == 0 || *(v34 + 8) != 2)
                {
                  v131 = v26;
                  v132 = v32;
                  v121 = MTLArgumentTypeToString(3);
                  v130 = v33;
                  v103 = a2;
                  v112 = a3;
                  _MTLMessageContextPush_();
                  v34 = a7 + 88 * v33;
                  goto LABEL_166;
                }

LABEL_167:
                *(v34 + 1) = 1;
                goto LABEL_168;
              }

              if (v25 != 34)
              {
                goto LABEL_40;
              }
            }

LABEL_168:
            if (++v32 == v29)
            {
              goto LABEL_182;
            }
          }

          if (v25)
          {
            if (v25 != 1)
            {
              if (v25 != 2)
              {
LABEL_40:
                v34 = a5 + 88 * v33;
                if (*v34 || (v131 = v26, v132 = v32, v121 = MTLArgumentTypeToString(v25), v130 = v33, v103 = a2, v112 = a3, _MTLMessageContextPush_(), v34 = a5 + 88 * v33, v30 = v159, (*v34 & 1) != 0))
                {
                  if (v147 > 2)
                  {
                    v47 = (v34 + 8);
                    if (*(v34 + 8) == 6)
                    {
                      v58 = v34;
                      v59 = [a1 requiresRaytracingEmulation];
                      v34 = v58;
                      v31 = v59 == 0;
                      v30 = v159;
                      v46 = 5;
                      if (!v31)
                      {
                        v46 = 6;
                      }
                    }

                    else
                    {
                      v46 = 5;
                    }
                  }

                  else
                  {
                    v46 = qword_22E27C340[v147];
                    v47 = (v34 + 8);
                  }

                  if (*v47 != v46)
                  {
                    v86 = v34;
                    v87 = MTLArgumentTypeToString(v25);
                    v132 = v32;
                    v133 = MTLDebugFunctionArgumentTypeToString(*v47);
                    v130 = v33;
                    v131 = v26;
                    v112 = a3;
                    v121 = v87;
                    v29 = v160;
                    v103 = a2;
                    _MTLMessageContextPush_();
                    v34 = v86;
                    v30 = v159;
                  }

                  a5 = v150;
                }

                goto LABEL_167;
              }

              v34 = a6 + 88 * v33;
              if (!*(v34 + 16))
              {
                v29 = v160;
                goto LABEL_167;
              }

              v157 = a6 + 88 * v33;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v112 = a3;
                v121 = v33;
                v103 = a2;
                goto LABEL_81;
              }

              v35 = *(v157 + 16);
              v29 = v160;
              if ([v35 usage] & 4) != 0 && (objc_msgSend(v35, "usage"))
              {
                v36 = a8;
                if (a8)
                {
                  v37 = 0;
                  do
                  {
                    v38 = [v36 _descriptorAtIndex:{v37, v103, v112, v121}];
                    if (v38)
                    {
                      v39 = v38;
                      if ([v38 texture])
                      {
                        if ([v39 storeAction] == 1 && objc_msgSend(objc_msgSend(a9, "objectAtIndexedSubscript:", v37), "writeMask"))
                        {
                          v40 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v39 _descriptorPrivate], a10);
                          v41 = [(MTLDebugRenderTargetAttachmentInfo *)v40 intersectsTexture:v35];
                          if (v41)
                          {
                            v42 = "resolve";
                            if (v41 != 2)
                            {
                              if (v41 != 1)
                              {
                                goto LABEL_204;
                              }

                              v42 = "color";
                            }

                            v134 = v37;
                            v132 = v32;
                            v133 = v42;
                            v130 = v33;
                            v131 = v26;
                            v112 = a3;
                            v121 = MTLArgumentTypeToString(2);
                            v103 = a2;
                            MTLReportFailure();
                            v36 = a8;
                          }
                        }
                      }
                    }

                    ++v37;
                  }

                  while (v37 != 8);
                  v43 = [v36 _descriptorAtIndex:8];
                  v141 = [v36 _descriptorAtIndex:9];
                  v44 = [v35 pixelFormat];
                  v45 = a11;
                  if (a11)
                  {
                    v137 = [a11 isDepthWriteEnabled];
                    if (writesStencilTexture([a11 backFaceStencil]))
                    {
                      v45 = 1;
                    }

                    else
                    {
                      v45 = writesStencilTexture([a11 frontFaceStencil]);
                    }
                  }

                  else
                  {
                    v137 = 0;
                  }

                  v139 = (v44 - 253) & 0xFFFFFFFFFFFFFFF7;
                  if (v43 && [v43 texture] && objc_msgSend(v43, "storeAction") == 1 && ((v137 ^ 1) & 1) == 0 && v139)
                  {
                    v60 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v43 _descriptorPrivate], a10);
                    v61 = [(MTLDebugRenderTargetAttachmentInfo *)v60 intersectsTexture:v35];
                    if (v61)
                    {
                      v62 = "resolve";
                      if (v61 != 2)
                      {
                        if (v61 != 1)
                        {
                          goto LABEL_204;
                        }

                        v62 = "depth";
                      }

                      v133 = v62;
                      v134 = v62;
                      v131 = v26;
                      v132 = v32;
                      v121 = MTLArgumentTypeToString(2);
                      v130 = v33;
                      v103 = a2;
                      v112 = a3;
                      MTLReportFailure();
                    }
                  }

                  if (v141 && [v141 texture])
                  {
                    v63 = [v141 storeAction];
                    v64 = v45 ^ 1;
                    if (v63 != 1)
                    {
                      v64 = 1;
                    }

                    if ((v64 & 1) == 0 && !v139)
                    {
                      v65 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v141 _descriptorPrivate], a10);
                      v66 = [(MTLDebugRenderTargetAttachmentInfo *)v65 intersectsTexture:v35];
                      if (v66)
                      {
                        v67 = "resolve";
                        if (v66 != 2)
                        {
                          if (v66 != 1)
                          {
                            goto LABEL_204;
                          }

                          v67 = "stencil";
                        }

                        v133 = v67;
                        v134 = v67;
                        v131 = v26;
                        v132 = v32;
                        v121 = MTLArgumentTypeToString(2);
                        v130 = v33;
                        v103 = a2;
                        v112 = a3;
                        MTLReportFailure();
                      }
                    }
                  }
                }

                v172 = 0u;
                v173 = 0u;
                v170 = 0u;
                v171 = 0u;
                v68 = [a12 countByEnumeratingWithState:&v170 objects:v176 count:{16, v103, v112, v121}];
                if (v68)
                {
                  v69 = v68;
                  v70 = *v171;
                  do
                  {
                    for (i = 0; i != v69; ++i)
                    {
                      if (*v171 != v70)
                      {
                        objc_enumerationMutation(a12);
                      }

                      if ([*(*(&v170 + 1) + 8 * i) intersectsTexture:{v35, v103, v112, v121}])
                      {
                        v131 = v26;
                        v132 = v32;
                        v121 = MTLArgumentTypeToString(2);
                        v130 = v33;
                        v103 = a2;
                        v112 = a3;
                        MTLReportFailure();
                      }
                    }

                    v69 = [a12 countByEnumeratingWithState:&v170 objects:v176 count:16];
                  }

                  while (v69);
                }

                a5 = v150;
                v25 = v152;
                v29 = v160;
              }

              if (*v157)
              {
                if (*(v157 + 8) != 1)
                {
                  v131 = v26;
                  v132 = v32;
                  v121 = MTLArgumentTypeToString(2);
                  v130 = v33;
                  v103 = a2;
                  v112 = a3;
                  _MTLMessageContextPush_();
                }

                v72 = [v161 textureType];
                v73 = [*(v157 + 16) textureType];
                if (v72 != v73)
                {
                  v74 = v73;
                  if (![a1 relaxedTextureArrayBindingsEnabled] || (validateFunctionArguments(v72, v74) & 1) != 0)
                  {
                    v142 = MTLTextureTypeString();
                    v75 = MTLArgumentTypeToString(2);
                    v133 = v26;
                    v134 = v32;
                    v131 = v33;
                    v132 = MTLTextureTypeString();
                    v124 = v142;
                    v130 = v75;
                    v106 = a2;
                    v115 = a3;
                    _MTLMessageContextPush_();
                  }
                }

                v76 = [v35 usage];
                if ([v161 access])
                {
                  v77 = (*&v76 & 0x10000) != 0 ? 16 : 2;
                  if ((v35[20] & v77) == 0)
                  {
                    [*(v157 + 16) pixelFormat];
                    Name = MTLPixelFormatGetName();
                    v130 = v33;
                    v107 = a2;
                    v116 = a3;
                    _MTLMessageContextPush_();
                  }
                }

                v78 = v161;
                [v161 textureDataType];
                a5 = v150;
                if ((_MTLCompatibleTextureDataTypeAndPixelFormatInfo() & 1) == 0)
                {
                  [*(v157 + 16) pixelFormat];
                  v143 = MTLPixelFormatGetName();
                  v140 = MTLArgumentTypeToString(2);
                  v91 = [*(v157 + 16) label];
                  if (!v91)
                  {
                    v91 = [MEMORY[0x277CBEB68] null];
                  }

                  v138 = v91;
                  v78 = v161;
                  [v161 textureDataType];
                  v136 = MTLDataTypeString();
                  v135 = MTLArgumentTypeToString(2);
                  MTLArgumentTypeToString(2);
                  [*(v157 + 16) pixelFormat];
                  MTLPixelFormatGetName();
                  [*(v157 + 16) pixelFormat];
                  MTLPixelFormatCompatibilityString();
                  v134 = v135;
                  v132 = v33;
                  v133 = v136;
                  v130 = v140;
                  v131 = v138;
                  v117 = a3;
                  v126 = v143;
                  v108 = a2;
                  _MTLMessageContextPush_();
                  a5 = v150;
                  v25 = v152;
                }

                if ([v78 access] <= 1 && (objc_msgSend(v35, "requireUsage:", 1) & 1) == 0)
                {
                  v131 = [v35 usage];
                  v132 = 1;
                  v127 = v26;
                  v130 = v33;
                  v109 = a2;
                  v118 = a3;
                  _MTLMessageContextPush_();
                }

                if (([v161 access] - 1) <= 1 && (objc_msgSend(v35, "requireUsage:", 2) & 1) == 0)
                {
                  v131 = [v35 usage];
                  v132 = 2;
                  v128 = v26;
                  v130 = v33;
                  v110 = a2;
                  v119 = a3;
                  _MTLMessageContextPush_();
                }

                if (([a1 supportsFamily:{1010, v110, v119, v128}] & 1) == 0)
                {
                  v79 = [a1 supportsMTL4PlacementSparse];
                  v80 = [v161 access];
                  if (v79)
                  {
                    if (v80 && [v35 isSparse] && objc_msgSend(v35, "sparseTextureTier") != 1)
                    {
                      goto LABEL_181;
                    }
                  }

                  else if (v80 && [v35 isSparse])
                  {
LABEL_181:
                    v120 = a3;
                    v129 = v33;
                    v111 = a2;
                    _MTLMessageContextPush_();
                  }
                }

                if ([v161 access] == 1)
                {
                  [v35 pixelFormat];
                  if ((MTLReadWriteTextureIsSupported() & 1) == 0)
                  {
                    v121 = v26;
                    v130 = v33;
                    v103 = a2;
                    v112 = a3;
                    _MTLMessageContextPush_();
                  }
                }

                v34 = a6 + 88 * v33;
                v81 = *(v157 + 16);
                if (v81)
                {
                  if ([v161 access] != 2 && (objc_msgSend(v81, "protectionOptions") & v144) != 0)
                  {
                    v130 = [v81 protectionOptions];
                    v131 = a13;
                    v112 = a3;
                    v121 = v33;
                    v103 = a2;
                    _MTLMessageContextPush_();
                  }

                  if ([v161 access])
                  {
                    v82 = *(v157 + 16);
                    if ((a13 & ~[v82 protectionOptions]) != 0)
                    {
                      v130 = [v82 protectionOptions];
                      v131 = a13;
                      v112 = a3;
                      v121 = v33;
                      v103 = a2;
LABEL_81:
                      _MTLMessageContextPush_();
                    }
                  }

                  v30 = v159;
                  v29 = v160;
                  v34 = a6 + 88 * v33;
                  goto LABEL_167;
                }

LABEL_165:
                v29 = v160;
              }

              else
              {
                v131 = v26;
                v132 = v32;
                v121 = MTLArgumentTypeToString(2);
                v130 = v33;
                v103 = a2;
                v112 = a3;
                _MTLMessageContextPush_();
                v34 = a6 + 88 * v33;
              }

LABEL_166:
              v30 = v159;
              goto LABEL_167;
            }

            v34 = a14 + 88 * v33;
            if (!*v34)
            {
              v131 = v26;
              v132 = v32;
              v121 = MTLArgumentTypeToString(1);
              v130 = v33;
              v103 = a2;
              v112 = a3;
              _MTLMessageContextPush_();
              v34 = a14 + 88 * v33;
              v30 = v159;
              if ((*v34 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            if (*(v34 + 8) != 3)
            {
              v83 = v34;
              v131 = v26;
              v132 = v32;
              v121 = MTLArgumentTypeToString(1);
              v130 = v33;
              v103 = a2;
              v112 = a3;
              _MTLMessageContextPush_();
              v34 = v83;
            }

            v48 = v34;
            v57 = *(v34 + 56);
            if (v57 < [v161 threadgroupMemoryDataSize])
            {
              v84 = *(v48 + 56);
              v85 = [v161 threadgroupMemoryDataSize];
              v133 = v26;
              v134 = v32;
              v131 = MTLArgumentTypeToString(1);
              v132 = v33;
              v121 = v84;
              v130 = v85;
              a5 = v150;
              v103 = a2;
              v112 = a3;
              _MTLMessageContextPush_();
            }

            ++v155;
          }

          else
          {
            v34 = a5 + 88 * v33;
            v48 = v34;
            if ((a19 & 1) != 0 || *v34)
            {
              if ((*v34 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            else
            {
              v131 = v26;
              v132 = v32;
              v121 = MTLArgumentTypeToString(0);
              v130 = v33;
              v103 = a2;
              v112 = a3;
              _MTLMessageContextPush_();
              v34 = a5 + 88 * v33;
              v30 = v159;
              if ((*v48 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            if (*(v34 + 8))
            {
              v131 = v26;
              v132 = v32;
              v121 = MTLArgumentTypeToString(0);
              v130 = v33;
              v103 = a2;
              v112 = a3;
              _MTLMessageContextPush_();
            }

            v49 = [a1 supportsUnalignedVertexFetch];
            if (!a17 || !v49 || (*(a17 + v33) & 1) == 0)
            {
              v50 = *(v48 + 40);
              v51 = [v161 bufferAlignment];
              v52 = v51 <= 1 ? 1 : v51;
              if (v50 % v52)
              {
                v88 = MTLArgumentTypeToString(0);
                v132 = [v161 bufferAlignment];
                v133 = *(v48 + 40);
                v130 = v88;
                v131 = v33;
                v113 = a3;
                v122 = v26;
                v104 = a2;
                _MTLMessageContextPush_();
              }
            }

            v53 = *(v48 + 32) - *(v48 + 40);
            if (v53 < [v161 bufferDataSize] && objc_msgSend(v161, "bufferDataSize") != -1)
            {
              v158 = MTLArgumentTypeToString(0);
              v89 = *(v48 + 32);
              v90 = *(v48 + 40);
              [v161 bufferDataSize];
              v133 = v90;
              v134 = v89;
              a5 = v150;
              v131 = v158;
              v132 = v33;
              v123 = v26;
              v130 = v32;
              v105 = a2;
              v114 = a3;
              _MTLMessageContextPush_();
            }

            v54 = [v161 access];
            v34 = v48;
            if (v54 && !*(v48 + 16))
            {
              v112 = a3;
              v121 = v33;
              v103 = a2;
              _MTLMessageContextPush_();
              v34 = v48;
            }

            v55 = *(v34 + 16);
            v25 = v152;
            if (!v55)
            {
              goto LABEL_165;
            }

            if ([v161 access] != 2 && (objc_msgSend(v55, "protectionOptions") & v144) != 0)
            {
              v130 = [v55 protectionOptions];
              v131 = a13;
              v112 = a3;
              v121 = v33;
              v103 = a2;
              _MTLMessageContextPush_();
            }

            if ([v161 access])
            {
              v56 = *(v48 + 16);
              if ((a13 & ~[v56 protectionOptions]) != 0)
              {
                v130 = [v56 protectionOptions];
                v131 = a13;
                v112 = a3;
                v121 = v33;
                v103 = a2;
                _MTLMessageContextPush_();
              }
            }
          }

          v30 = v159;
          v29 = v160;
          v34 = v48;
          goto LABEL_167;
        }
      }

LABEL_182:
      v23 = v156 + 1;
    }

    while ((v156 + 1) != v151);
    result = [a4 countByEnumeratingWithState:&v166 objects:v175 count:16];
    v151 = result;
  }

  while (result);
LABEL_186:
  if (a16)
  {
    v92 = a15;
    v93 = [MEMORY[0x277CBEB18] arrayWithCapacity:v155];
    if (a15)
    {
      v94 = (a14 + 64);
      do
      {
        if (*(v94 - 64) == 1)
        {
          [v93 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", *v94, *(v94 - 1))}];
        }

        v94 += 11;
        --v92;
      }

      while (v92);
    }

    v95 = [v93 sortedArrayUsingComparator:{&__block_literal_global_1703, v103, v112, v121}];
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    result = [v95 countByEnumeratingWithState:&v162 objects:v174 count:16];
    if (result)
    {
      v96 = result;
      v97 = 0;
      v98 = *v163;
      do
      {
        v99 = 0;
        do
        {
          if (*v163 != v98)
          {
            objc_enumerationMutation(v95);
          }

          v100 = *(*(&v162 + 1) + 8 * v99);
          if (v97)
          {
            v101 = [v97 rangeValue];
            if (v101 + v102 > [v100 rangeValue])
            {
              _MTLMessageContextPush_();
            }
          }

          else
          {
            v97 = *(*(&v162 + 1) + 8 * v99);
          }

          v99 = v99 + 1;
        }

        while (v96 != v99);
        result = [v95 countByEnumeratingWithState:&v162 objects:v174 count:16];
        v96 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_22E1EBEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1EC0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1EC3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1EC560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *validateMTLViewport(void *result, MTLViewport *a2, _MTLMessageContext *a3)
{
  v3 = result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    result = _MTLMessageContextPush_();
  }

  if ((v3[1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    result = _MTLMessageContextPush_();
  }

  if ((v3[2] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    result = _MTLMessageContextPush_();
  }

  if ((v3[3] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    result = _MTLMessageContextPush_();
  }

  if ((v3[4] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    result = _MTLMessageContextPush_();
  }

  if ((v3[5] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

NSUInteger validateMTLScissorRect(MTLDebugRenderCommandEncoder *a1, const MTLScissorRect *a2, _MTLMessageContext *a3)
{
  v5 = [(MTLDebugRenderCommandEncoder *)a1 width];
  result = [(MTLDebugRenderCommandEncoder *)a1 height];
  v7 = result;
  if (a2->width + a2->x > v5)
  {
    result = _MTLMessageContextPush_();
  }

  if (a2->height + a2->y > v7)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

double _MTLDebugValidateDeferredStoreActionOnDevice(void *a1, unint64_t a2, void *a3, unint64_t a4, unsigned int a5)
{
  _MTLMessageContextBegin_();
  v10 = [a3 _descriptorPrivate];
  if (a2 == 4)
  {
    _MTLMessageContextPush_();
  }

  if (((a5 >> a4) & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (a2 > 4 || ((1 << a2) & 0x1A) == 0) && (*(v10 + 48))
  {
    if (a4 == 8)
    {
      v15 = @"the depth attachment";
    }

    else if (a4 == 9)
    {
      v15 = @"the stencil attachment";
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"color attachment %lu", a4];
    }

    if (a2 > 2)
    {
      v17 = @"Unknown";
    }

    else
    {
      v17 = off_2787B4FF8[a2];
    }

    v18 = v15;
    v19 = v17;
    _MTLMessageContextPush_();
  }

  if (!*v10)
  {
    goto LABEL_33;
  }

  v11 = [*v10 storageMode];
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0 && v11 == 3)
  {
    _MTLMessageContextPush_();
  }

  v12 = a2 & 0xFFFFFFFFFFFFFFFELL;
  if (v12 == 2)
  {
    if (a4 == 9)
    {
      if ([a1 supportsMSAAStencilResolve])
      {
        goto LABEL_22;
      }

      v13 = *(v10 + 40);
      if (v13 <= 4)
      {
LABEL_16:
        v14 = off_2787B5010[v13];
LABEL_42:
        [(__CFString *)v14 UTF8String:v18];
        _MTLMessageContextPush_();
        goto LABEL_22;
      }
    }

    else
    {
      if (a4 != 8 || ([a1 supportsMSAADepthResolve] & 1) != 0)
      {
LABEL_22:
        if (!*(v10 + 112))
        {
          _MTLDebugValidateDeferredStoreActionOnDevice_cold_1(v10);
        }

        goto LABEL_24;
      }

      v13 = *(v10 + 40);
      if (v13 < 5)
      {
        goto LABEL_16;
      }
    }

    v14 = @"Unknown";
    goto LABEL_42;
  }

LABEL_24:
  if (*(v10 + 112))
  {
    if (a4 > 7)
    {
      if (a4 == 9)
      {
        if (v12 != 2)
        {
LABEL_43:
          _MTLMessageContextPush_();
        }
      }

      else if (a4 == 8 && v12 != 2)
      {
        goto LABEL_43;
      }
    }

    else if (v12 != 2)
    {
      goto LABEL_43;
    }
  }

LABEL_33:
  _MTLMessageContextEnd();
  return result;
}

double _MTLDebugValidateDeferredStoreActionOptionsOnDevice(void *a1, char a2, void *a3, uint64_t a4, unsigned int a5)
{
  _MTLMessageContextBegin_();
  if (((a5 >> a4) & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v10 = [a3 _descriptorPrivate];
  if (a2)
  {
    v11 = v10;
    if (a4 == 8)
    {
      v12 = @"the depth attachment";
    }

    else if (a4 == 9)
    {
      v12 = @"the stencil attachment";
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"color attachment %lu", a4];
    }

    if (([a1 areProgrammableSamplePositionsSupported] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v13 = *(v11 + 40);
    if (v13 > 2)
    {
      if ((v13 - 3) >= 2)
      {
LABEL_15:
        _MTLMessageContextPush_();
      }
    }

    else if (v13 != 1)
    {
      goto LABEL_15;
    }
  }

  _MTLMessageContextEnd();
  return result;
}

unint64_t _MTLDebugValidateMTLPrimitiveType(unint64_t result, char a2)
{
  if (result >= 5 && (result - 5 > 4 || (a2 & 1) == 0))
  {
    return MTLReportFailure();
  }

  return result;
}

unint64_t _MTLDebugValidateMTLPrimitiveTypeWithContext(unint64_t result, char a2, uint64_t a3)
{
  if (result >= 5 && (result - 5 > 4 || (a2 & 1) == 0))
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t writesStencilTexture(MTLStencilDescriptor *a1)
{
  v2 = [(MTLStencilDescriptor *)a1 stencilCompareFunction];
  v3 = [(MTLStencilDescriptor *)a1 writeMask];
  if (v2 == MTLCompareFunctionAlways)
  {
    if (!v3)
    {
      return 0;
    }

    return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
  }

  if (v3)
  {
    if ([(MTLStencilDescriptor *)a1 stencilFailureOperation])
    {
      return 1;
    }

    return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
  }

  return 0;
}

void *validateIndirectBuffer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  result = _MTLDebugValidateBuffer(a1, a2, "indirectBuffer", a6);
  if (*a6 == v10)
  {
    result = [a2 length];
    if (a4 + a3 > result)
    {
      [a2 length];
      result = _MTLMessageContextPush_();
    }
  }

  if ((a3 & 3) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

double validateCommonTessellationErrors(void *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 originalObject];
  }

  MTLValidateFeatureSupport();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  _MTLMessageContextBegin_();
  if ((*a3 & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![objc_msgSend(a2 "vertexFunction")])
  {
    v34 = a8;
    _MTLMessageContextPush_();
  }

  v20 = [objc_msgSend(a2 vertexFunction];
  if (v20 == -1)
  {
    if (a5 >= 0x21)
    {
      v35 = a5;
      goto LABEL_44;
    }
  }

  else if (v20 != a5)
  {
    v35 = a5;
    v38 = v20;
    _MTLMessageContextPush_();
  }

  if (!a5 && a7)
  {
    v35 = 0;
LABEL_44:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  _MTLMessageContextBegin_();
  v21 = [a2 tessellationFactorFormat];
  if (v21 == 1)
  {
    v24 = [objc_msgSend(a2 "vertexFunction")];
    if (v24 == 1)
    {
      v23 = 16;
    }

    else
    {
      if (v24 != 2)
      {
        goto LABEL_61;
      }

      v23 = 24;
    }
  }

  else
  {
    if (v21)
    {
      goto LABEL_61;
    }

    v22 = [objc_msgSend(a2 "vertexFunction")];
    if (v22 == 1)
    {
      v23 = 8;
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_61;
      }

      v23 = 12;
    }
  }

  v25 = [a2 tessellationFactorStepFunction];
  if (v25 - 2 < 2)
  {
    if (!a4)
    {
      v36 = 0;
      _MTLMessageContextPush_();
    }

    if (a4 % v23)
    {
      v36 = a4;
      v39 = v23;
      goto LABEL_42;
    }
  }

  else
  {
    if (v25 > 1)
    {
      goto LABEL_61;
    }

    if (a4)
    {
      v36 = a4;
LABEL_42:
      _MTLMessageContextPush_();
    }
  }

  v26 = [a2 tessellationControlPointIndexType];
  if (v26 == 2)
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (v26 == 1)
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (!a6)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (v26)
  {
    goto LABEL_61;
  }

  if ((a7 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_45:
  v37 = a8;
  _MTLMessageContextPush_();
  if (!a6)
  {
LABEL_46:
    v32 = [a2 tessellationFactorStepFunction];
    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_55;
      }

      if (v32 == 1)
      {
        v23 *= a10 + a9;
        goto LABEL_55;
      }

LABEL_61:
      abort();
    }

    if (v32 != 2)
    {
      if (v32 != 3)
      {
        goto LABEL_61;
      }

      if (v23 * (a10 + a9) > a4)
      {
        _MTLMessageContextPush_();
      }
    }

    v23 = (a12 + a11) * a4;
LABEL_55:
    if (a10)
    {
      if (a12)
      {
LABEL_57:
        v27 = *(a3 + 16);
        v28 = *(a3 + 40);
        v29 = a1;
        v30 = 1;
        v31 = v23;
        goto LABEL_58;
      }
    }

    else
    {
      _MTLMessageContextPush_();
      if (a12)
      {
        goto LABEL_57;
      }
    }

    _MTLMessageContextPush_();
    goto LABEL_57;
  }

LABEL_39:
  v27 = *(a3 + 16);
  v28 = *(a3 + 40);
  v29 = a1;
  v30 = 0;
  v31 = 0;
LABEL_58:
  validateTessellationFactorBuffer(v29, v27, v28, v30, v31, &v40);
  _MTLMessageContextEnd();
  return result;
}

uint64_t _MTLTessellationControlPointIndexTypeToMTLIndexType(MTLTessellationControlPointIndexType a1)
{
  if (a1 == MTLTessellationControlPointIndexTypeUInt16)
  {
    return 0;
  }

  if (a1 != MTLTessellationControlPointIndexTypeUInt32)
  {
    abort();
  }

  return 1;
}

void *validateCommonBarrier(void *result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = result;
  if (a3 >= 4)
  {
    v8 = a3;
    result = _MTLMessageContextPush_();
    if ((a4 & 4) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_4;
  }

  result = [v7 supportsTileShaders];
  if (!result)
  {
LABEL_7:
    result = _MTLMessageContextPush_();
    goto LABEL_8;
  }

LABEL_4:
  if ((a4 & 0x18) != 0)
  {
    result = [v7 supportsMeshShaders];
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if (a4 >= 0x20)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((a5 & 4) != 0)
  {
    result = [v7 supportsTileShaders];
    if (!result)
    {
      return _MTLMessageContextPush_();
    }
  }

  if ((a5 & 0x18) != 0)
  {
    result = [v7 supportsMeshShaders];
    if (!result)
    {
      return _MTLMessageContextPush_();
    }
  }

  if (a5 >= 0x20)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

void sub_22E1F7E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL25validateFunctionArgumentsPU19objcproto9MTLDevice11objc_objectP8NSStringS2_P7NSArrayP24MTLDebugFunctionArgumentmS6_mS6_mP43MTLRenderPassColorAttachmentDescriptorArrayP47MTLRenderPipelineColorAttachmentDescriptorArraymP25MTLDepthStencilDescriptorP12NSMutableSetIP34MTLDebugRenderTargetAttachmentInfoEyS6_mbPKbP18_MTLMessageContextb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 rangeValue];
  v5 = [a3 rangeValue];
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

BOOL usesStencilTexture(MTLStencilDescriptor *a1)
{
  if ([(MTLStencilDescriptor *)a1 stencilCompareFunction]== MTLCompareFunctionAlways)
  {
    if ([(MTLStencilDescriptor *)a1 writeMask])
    {
      return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
    }
  }

  else
  {
    if ([(MTLStencilDescriptor *)a1 readMask])
    {
      return 1;
    }

    if ([(MTLStencilDescriptor *)a1 writeMask])
    {
      if ([(MTLStencilDescriptor *)a1 stencilFailureOperation])
      {
        return 1;
      }

      return [(MTLStencilDescriptor *)a1 depthStencilPassOperation]|| [(MTLStencilDescriptor *)a1 depthFailureOperation];
    }
  }

  return 0;
}

void *validateTessellationFactorBuffer(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  result = _MTLDebugValidateBuffer(a1, a2, "tessellationFactorBuffer", a6);
  if (a4)
  {
    if (*a6 == v11)
    {
      result = [a2 length];
      if (a5 + a3 > result)
      {
        [a2 length];
        result = _MTLMessageContextPush_();
      }
    }
  }

  if ((a3 & 3) != 0)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

void std::vector<MTLViewport>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void std::vector<MTLScissorRect>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void **std::vector<MTLViewport>::__assign_with_size[abi:ne200100]<MTLViewport const*,MTLViewport const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<MTLViewport>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v20 = a3 - __src;
    if (v20)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v8[v20];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 2);
        v16[1] = *(v14 + 1);
        v16[2] = v18;
        *v16 = v17;
        v16 += 3;
        v14 += 48;
        v15 += 48;
      }

      while (v14 != a3);
    }

    v19 = v15;
  }

  v6[1] = v19;
  return result;
}

void **std::vector<MTLScissorRect>::__assign_with_size[abi:ne200100]<MTLScissorRect const*,MTLScissorRect const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLScissorRect>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v19 = a3 - __src;
    if (v19)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v8[v19];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v13 += 32;
        *v15 = v16;
        v15[1] = v17;
        v15 += 2;
        v14 += 32;
      }

      while (v13 != a3);
    }

    v18 = v14;
  }

  v6[1] = v18;
  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int>(uint64_t **a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v4 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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

void sub_22E1FDFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}