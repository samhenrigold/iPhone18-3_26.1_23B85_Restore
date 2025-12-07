uint64_t logHeap(char *a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a2;
    v5 = a1 + 4;
    do
    {
      if ((v3 & 3) == 0)
      {
        printf("\n%u : ", v3);
      }

      printf("%20u %20u|", *(v5 - 1), *v5);
      ++v3;
      v5 += 8;
    }

    while (v4 != v3);
  }

  return putchar(10);
}

void *PrepareExecuteIndirect(void *a1, void *a2, uint64_t a3)
{
  v35 = [a1 baseObject];
  v37 = [a2 inheritsPipelineState];
  v5 = [a1 commandBuffer];
  v6 = [a1 device];
  v7 = *(v6 + 424);
  v8 = objc_alloc(MEMORY[0x277CD6AB8]);
  [v8 setInitializeBindings:1];
  [v8 setMaxBufferBindCount:31];
  v9 = [objc_msgSend(v6 "baseObject")];

  if (([a2 initializedTables] & 1) == 0)
  {
    v10 = [objc_msgSend(a2 "SVBindingTableVertexKernelBuffer")];
    v11 = [objc_msgSend(a2 "SVBindingTableVertexKernelBuffer")];
    if ([a2 maxCommands])
    {
      v12 = 0;
      v13 = (v10 + 168);
      do
      {
        [objc_msgSend(a2 indirectComputeCommandAtIndex:{v12), "setToolsDispatchBufferSPI:atIndex:", v11, 0}];
        v11 += 320;
        *v13 = [v7 gpuAddress];
        v14 = [a1 temporaryBufferWithLength:4];
        *[v14 contents] = 0;
        v13[3] = [v14 gpuAddress];
        ++v12;
        v13 += 40;
      }

      while ([a2 maxCommands] > v12);
    }

    [a2 setInitializedTables:1];
  }

  if ((*(v6 + 288) & 2) != 0)
  {
    [v5 encodeResourceTableBuffers:a1 type:2];
  }

  v15 = [objc_msgSend(a2 "SVBindingTableVertexKernelBuffer")];
  [v5 setResidencyForResource:{objc_msgSend(a2, "SVBindingTableVertexKernelBuffer")}];
  [v9 setAddress:objc_msgSend(objc_msgSend(a2 atIndex:{"SVBindingTableVertexKernelBuffer"), "gpuAddress"), 11}];
  v16 = [v5 temporaryBufferWithBytes:a1 + 58 length:24];
  if ([a2 maxCommands])
  {
    v17 = 0;
    v18 = (v15 + 56);
    do
    {
      v19 = *(v6 + 284);
      if ((v19 & 0x200000000) != 0)
      {
        *(v18 - 2) = [a1 internalValueAtIndex:5];
        v19 = *(v6 + 284);
        if ((v19 & 0x200000) != 0)
        {
          *(v18 - 1) = [a1 internalValueAtIndex:6];
          v19 = *(v6 + 284);
        }
      }

      if ((v19 & 0x200000) != 0)
      {
        *v18 = [a1 internalValueAtIndex:7];
      }

      ++v17;
      v18 += 40;
    }

    while ([a2 maxCommands] > v17);
  }

  if (v37)
  {
    [v9 setAddress:objc_msgSend(v16 atIndex:{"gpuAddress"), 5}];
    v20 = a1[61];
    v21 = a3;
    if (v20)
    {
      [v9 setAddress:objc_msgSend(objc_msgSend(objc_msgSend(v20 atIndex:{"indirectStateBuffer"), "baseObject"), "gpuAddress"), 3}];
    }
  }

  else
  {
    if ([a2 maxCommands])
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = [a1 encoderID];
        *([objc_msgSend(a2 "internalDispatchIDBuffer")] + v22 + 16) = v24;
        v25 = [a1 eventID];
        *([objc_msgSend(a2 "internalDispatchIDBuffer")] + v22 + 20) = v25;
        ++v23;
        v22 += 24;
      }

      while ([a2 maxCommands] > v23);
    }

    [v9 setAddress:objc_msgSend(objc_msgSend(a2 atIndex:{"internalDispatchIDBuffer"), "gpuAddress"), 5}];
    [v5 setResidencyForResource:{objc_msgSend(a2, "internalDispatchIDBuffer")}];
    v21 = a3;
  }

  [v9 setAddress:objc_msgSend(objc_msgSend(a2 atIndex:{"internalICBBuffer"), "gpuAddress"), 0}];
  [v5 setResidencyForResource:{objc_msgSend(a2, "internalICBBuffer")}];
  result = [v5 setResidencyForResource:{objc_msgSend(a2, "baseObject")}];
  v27 = *(v21 + 16);
  if (v27 == -1)
  {
    v28 = -1;
  }

  else
  {
    v28 = *(v21 + 16);
  }

  if (v28 == 1)
  {
    if (v27 != 1)
    {
      goto LABEL_49;
    }

    v30 = [objc_msgSend(v5 temporaryBufferWithBytes:v21 length:{8), "gpuAddress"}];
    v29 = v35;
  }

  else
  {
    v29 = v35;
    if (v28)
    {
      return result;
    }

    if (v27)
    {
      goto LABEL_49;
    }

    v30 = *v21;
  }

  [v9 setAddress:v30 atIndex:1];
  if (v37)
  {
    v31 = [v6 ICB_Inherit_PSO_ComputePipelineState];
  }

  else
  {
    v31 = [v6 ICB_Inherit_None_ComputePipelineState];
  }

  v32 = v31;
  [v29 setComputePipelineState:v31];
  [v29 setArgumentTable:v9];
  [v29 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  v33 = *(v21 + 16);
  if (v33 == -1)
  {
    v34 = -1;
  }

  else
  {
    v34 = *(v21 + 16);
  }

  if (v34 == 1)
  {
    if (v33 == 1)
    {
      v40 = *(v21 + 4);
      goto LABEL_43;
    }

LABEL_49:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (!v34)
  {
    v40 = [a2 maxCommands];
LABEL_43:
    v41 = vdupq_n_s64(1uLL);
    v38 = [v32 threadExecutionWidth];
    v39 = v41;
    [v29 dispatchThreads:&v40 threadsPerThreadgroup:&v38];
  }

  [v29 barrierAfterEncoderStages:0x8000000 beforeEncoderStages:0x8000000 visibilityOptions:1];
  if (a1[288])
  {
    [v29 setArgumentTable:?];
  }

  result = a1[61];
  if (result)
  {
    return [v29 setComputePipelineState:{objc_msgSend(result, "baseObject")}];
  }

  return result;
}

uint64_t MTL4AccelerationStructureTypeFromDescriptor(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void *_prepareBinaryLinkedFunctions(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a1 binaryLinkedFunctions];
  result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) initImageData:a2];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t MTLGPUDebugSetValidationChecksOptions(uint64_t a1, void *a2, void *a3)
{
  *&v42 = *MEMORY[0x277D85DE8];
  v38 = 1;
  *&v39 = "all";
  *(&v39 + 1) = 1;
  v40 = "none";
  v41 = 2;
  v36 = 0;
  v37 = 0;
  __p = 0;
  std::vector<std::pair<char const*,MTLShaderValidationState>>::__init_with_size[abi:ne200100]<std::pair<char const*,MTLShaderValidationState> const*,std::pair<char const*,MTLShaderValidationState> const*>(&__p, &v39, &v42, 2uLL);
  v6 = MTLGetEnvCase<MTLShaderValidationState>("MTL_SHADER_VALIDATION_DEFAULT_STATE", &v38, &__p);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if ((v6 & 1) == 0)
  {
    v38 = 1;
  }

  generatePipelineHashWithDescriptor();
  v7 = _MTLRequestHashToString();
  v8 = objc_opt_new();
  [v8 appendString:@"[METAL SHADER VALIDATION] Processing new pipeline"];
  if (!MTLGetEnvDefault())
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a2 computeFunctionDescriptor];
LABEL_14:
    ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke(v9, v9, v8);
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a2 vertexFunctionDescriptor];
    ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke(v10, v10, v8);
    v9 = [a2 fragmentFunctionDescriptor];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [a2 meshFunctionDescriptor];
    ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke(v11, v11, v8);
    v12 = [a2 fragmentFunctionDescriptor];
    ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke(v12, v12, v8);
    v9 = [a2 objectFunctionDescriptor];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a2 tileFunctionDescriptor];
    goto LABEL_14;
  }

LABEL_15:
  [v8 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\n\t{ Shader Validation UID: %@ }", v7)}];
LABEL_16:
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v29 = ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke_3;
  v30 = &unk_2787B38A8;
  v31 = a2;
  v32 = a1;
  v33 = a3;
  v34 = v8;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v23 = ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke_4;
  v24 = &unk_2787B38D0;
  v25 = a2;
  v26 = a3;
  v27 = v8;
  v13 = *(a1 + 688);
  v14 = [a2 label];
  if (v13)
  {
    if (v14 && ([v13 containsObject:v14] & 1) != 0)
    {
      LODWORD(v13) = 1;
    }

    else if (v7)
    {
      LODWORD(v13) = [v13 containsObject:v7];
    }

    else
    {
      LODWORD(v13) = 0;
    }
  }

  v15 = *(a1 + 696);
  v16 = [a2 label];
  if (!v15)
  {
    goto LABEL_32;
  }

  if (v16 && ([v15 containsObject:v16] & 1) != 0)
  {
    v17 = 1;
    goto LABEL_29;
  }

  if (!v7)
  {
LABEL_32:
    if (v13)
    {
LABEL_38:
      if ([objc_msgSend(a2 "options")] == 2)
      {
        [v8 appendString:@"\nWarning: Pipeline requested to have shader validation checks both enabled and disabled."];
      }

      if (v38 == 1)
      {
      }

      goto LABEL_42;
    }

LABEL_33:
    if ([objc_msgSend(a2 "options")] == 1)
    {
      if (v38 == 1)
      {
      }

      goto LABEL_42;
    }

    if ([objc_msgSend(a2 "options")] == 2)
    {
      if (v38 == 2)
      {
      }
    }

    else if (v38 != 2)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  v17 = [v15 containsObject:v7];
LABEL_29:
  if ((v13 & v17) != 1)
  {
    if (v13)
    {
      goto LABEL_38;
    }

    if (v17)
    {
      if ([objc_msgSend(a2 "options")] == 1)
      {
        [v8 appendString:@"\nWarning: Pipeline requested to have shader validation checks both enabled and disabled."];
      }

      if (v38 == 2)
      {
      }

      goto LABEL_49;
    }

    goto LABEL_33;
  }

  [v8 appendString:@"\nWarning: Pipeline requested to have shader validation checks both enabled and disabled."];
  if (v38 != 2)
  {
LABEL_42:
    v18 = v29(v28);
    goto LABEL_43;
  }

LABEL_49:
  v18 = v23(v22);
LABEL_43:
  v20 = MTLGPUDebugLog(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    MTLGPUDebugSetValidationChecksOptions(v8, v20);
  }

  [objc_msgSend(a2 "options")];
  [objc_msgSend(a3 "options")];
  return v7;
}

void sub_22E1077A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *getFunctionDescriptorName(void *a1, uint64_t a2)
{
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return &stru_2841C04D0;
      }

      v4 = [a1 functionGraph];

      return [v4 functionName];
    }

    if ([a1 specializedName])
    {

      return [a1 specializedName];
    }

    a1 = [a1 functionDescriptor];
    objc_opt_class();
  }

  return [a1 name];
}

char *MTLGetEnvCase<MTLShaderValidationState>(const char *a1, void *a2, const char ***a3)
{
  result = getenv(a1);
  if (result)
  {
    v7 = *a3;
    v8 = a3[1];
    if (*a3 == v8)
    {
LABEL_6:
      v10 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Invalid option for %s, valid options are:\n", a1);
      v11 = *a3;
      v12 = a3[1];
      if (*a3 != v12)
      {
        do
        {
          v13 = *v11;
          v11 += 2;
          fprintf(*v10, "\t%s\n", v13);
        }

        while (v11 != v12);
      }

      return 0;
    }

    else
    {
      v9 = result;
      while (strcmp(v9, *v7))
      {
        v7 += 2;
        if (v7 == v8)
        {
          goto LABEL_6;
        }
      }

      *a2 = v7[1];
      return 1;
    }
  }

  return result;
}

uint64_t ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"\n\t{ function name: %@ }";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = @"\n\t{ function specializedName: %@ }";
    }

    else
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        return result;
      }

      v6 = @"\n\t{ functionGraph name: %@ }";
    }
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v6, getFunctionDescriptorName(a2, v5)];

  return [a3 appendString:v8];
}

uint64_t ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke_3(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 48) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 48) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 48) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 48) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 48) "options")];
  v2 = *(a1 + 56);

  return [v2 appendString:@"\nEnabling checks."];
}

uint64_t ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDeviceP22MTL4PipelineDescriptorS2__block_invoke_4(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "options")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "options")];
  v2 = *(a1 + 48);

  return [v2 appendString:@"\nDisabling checks."];
}

uint64_t *std::vector<std::pair<char const*,MTLShaderValidationState>>::__init_with_size[abi:ne200100]<std::pair<char const*,MTLShaderValidationState> const*,std::pair<char const*,MTLShaderValidationState> const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<char const*,MTLShaderValidationState>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22E108AB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<char const*,MTLShaderValidationState>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MTLShaderValidationState>>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MTLShaderValidationState>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2787B3750, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ45__MTL4GPUDebugCompiler_wrapDynamicLibraries__E3__0EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ48__MTL4GPUDebugCompiler_newDynamicLibrary_error__E3__2EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ55__MTL4GPUDebugCompiler_newDynamicLibraryWithURL_error__E3__3EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

uint64_t *std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E109320(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_22E10AD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E10E3DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t newFunctionLogLocationFromDebugLocation(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD70B0]);

  return [v2 initWithDebugLocation:a1];
}

void *newNonToolchainInlinedStackTraceFromDebugLocation(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  v3 = objc_opt_new();
  do
  {
    v4 = [objc_alloc(MEMORY[0x277CD70B0]) initWithDebugLocation:v2];
    v5 = [objc_msgSend(objc_msgSend(v4 "URL")];
    if (([v5 containsString:@".xctoolchain/"] & 1) == 0 && (objc_msgSend(v5, "containsString:", @"GPUCompiler.framework/") & 1) == 0 && (!objc_msgSend(v3, "count") || (objc_msgSend(objc_msgSend(v4, "description"), "isEqual:", objc_msgSend(objc_msgSend(v3, "lastObject"), "description")) & 1) == 0))
    {
      [v3 addObject:v4];
    }

    v2 = [v2 inlinedAt];
  }

  while (v2);
  return v3;
}

void *newRuntimeStackTrace(id **a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1[1] == *a1)
  {
    return 0;
  }

  v4 = objc_opt_new();
  v5 = *a1;
  v6 = a1[1];
  if (v6 - *a1 == 8)
  {
    v7 = [objc_msgSend(objc_msgSend(*v5 "scope")];
    v5 = *a1;
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CD70B0]) initWithDebugLocation:*v5];
      [v4 addObject:v8];

      return v4;
    }

    v6 = a1[1];
  }

  for (; v5 != v6; ++v5)
  {
    v9 = newNonToolchainInlinedStackTraceFromDebugLocation(*v5, v3);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if (([objc_msgSend(v14 "functionName")] & 1) == 0 && (!objc_msgSend(v4, "count") || (objc_msgSend(objc_msgSend(v14, "description"), "isEqual:", objc_msgSend(objc_msgSend(v4, "lastObject"), "description")) & 1) == 0))
          {
            [v4 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v4;
}

uint64_t resourceUsageForBuffer(MTLGPUDebugBuffer *a1, uint64_t a2, BufferUsageTable *a3)
{
  if (a2 <= 3)
  {
    if (a2 != 2)
    {
LABEL_8:
      v4 = a3;
      return BufferUsageTable::getUsage(v4, a1);
    }

LABEL_7:
    v4 = a3 + 2;
    return BufferUsageTable::getUsage(v4, a1);
  }

  if (a2 == 4)
  {
    goto LABEL_7;
  }

  if (a2 == 8)
  {
    v4 = a3 + 4;
    return BufferUsageTable::getUsage(v4, a1);
  }

  if (a2 != 16)
  {
    goto LABEL_8;
  }

  v4 = a3 + 6;
  return BufferUsageTable::getUsage(v4, a1);
}

MTLGPUDebugBufferErrorLog *MTLGPUDebugReadReportBuffer(uint64_t a1, char **a2, uint64_t a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if (!**a2)
  {
    return 0;
  }

  v8 = a1 + 264;
  v9 = v5;
  if (v5 - 1 <= 1)
  {
    v10 = objc_alloc_init(MTLGPUDebugBufferErrorLog);
    [(MTLGPUDebugBufferErrorLog *)v10 setAddressSpace:1];
    if (v9 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [(MTLGPUDebugBufferErrorLog *)v10 setOperation:v11];
    resolvedSharedPacketData::resolvedSharedPacketData(v46, v4, a1, v10, a4);
    v12 = *(v4 + 10);
    if ((*(v8 + 22) & 0x80) != 0)
    {
      v24 = *(a1 + 384);
      v13 = *(v24 + 8 * (v12 >> 44));
      if (v12 >> 44)
      {
        v12 -= [*(v24 + 8 * (v12 >> 44)) gpuAddress];
      }
    }

    else
    {
      v13 = 0;
    }

    [(MTLGPUDebugBufferErrorLog *)v10 setBuffer:v13];
    [(MTLGPUDebugBufferErrorLog *)v10 setOffset:v12];
    v25 = [(MTLGPUDebugBufferErrorLog *)v10 buffer];
    v26 = *(v8 + 20);
    if (v25 && (v26 & 0x200000001) != 0)
    {
      [(MTLGPUDebugBufferErrorLog *)v10 setSpecifiedUsage:*(v4 + 22)];
      v26 = *(v8 + 20);
    }

    if ((v26 & 0x8800000) == 0x800000 || (v44 = 0u, v45 = 0u, v42 = 0u, v43 = 0u, v27 = v47, (v28 = [v47 countByEnumeratingWithState:&v42 objects:v49 count:16]) == 0))
    {
LABEL_42:
      v31 = 0;
    }

    else
    {
      v29 = *v43;
LABEL_35:
      v30 = 0;
      while (1)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v42 + 1) + 8 * v30);
        if (![v31 type] && objc_msgSend(v31, "index") == *(v4 + 48))
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = [v27 countByEnumeratingWithState:&v42 objects:v49 count:16];
          if (v28)
          {
            goto LABEL_35;
          }

          goto LABEL_42;
        }
      }
    }

    [(MTLGPUDebugBufferErrorLog *)v10 setArgument:v31];
    v21 = v10;
    goto LABEL_44;
  }

  if (v5 - 3 <= 1)
  {
    v14 = objc_alloc_init(MTLGPUDebugBufferErrorLog);
    [(MTLGPUDebugBufferErrorLog *)v14 setAddressSpace:3];
    if (v9 == 3)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [(MTLGPUDebugBufferErrorLog *)v14 setOperation:v15];
    resolvedSharedPacketData::resolvedSharedPacketData(v46, v4, a1, v14, a4);
    [(MTLGPUDebugBufferErrorLog *)v14 setOffset:*(v4 + 10)];
    if ((*(v8 + 20) & 0x8800000) != 0x800000)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = v47;
      v17 = [v47 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v17)
      {
        v18 = *v39;
LABEL_15:
        v19 = 0;
        while (1)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v38 + 1) + 8 * v19);
          if (![v20 type] && objc_msgSend(v20, "index") == *(v4 + 48))
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
            if (v17)
            {
              goto LABEL_15;
            }

            break;
          }
        }
      }
    }

    v21 = v14;
    goto LABEL_44;
  }

  v22 = **a2;
  if (v22 > 6)
  {
    if (v22 == 7)
    {
      v37 = objc_alloc_init(MTLGPUDebugStackOverflowErrorLog);
      resolvedSharedPacketData::resolvedSharedPacketData(v46, v4, a1, v37, a4);
      v21 = v37;
      goto LABEL_44;
    }

    if (v22 == 8)
    {
      v33 = objc_alloc_init(MTLGPUDebugAccelerationStructureErrorLog);
      resolvedSharedPacketData::resolvedSharedPacketData(v46, v4, a1, v33, a4);
      [(MTLGPUDebugAccelerationStructureErrorLog *)v33 setExpectedAccelerationStructureType:*(v4 + 10)];
      [(MTLGPUDebugAccelerationStructureErrorLog *)v33 setActualAccelerationStructureType:*(v4 + 11)];
      v21 = v33;
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v22 == 5)
  {
    v36 = objc_alloc_init(MTLGPUDebugTextureErrorLog);
    resolvedSharedPacketData::resolvedSharedPacketData(v46, v4, a1, v36, a4);
    [(MTLGPUDebugTextureErrorLog *)v36 setExpectedTextureType:v4[80]];
    [(MTLGPUDebugTextureErrorLog *)v36 setActualTextureType:v4[84]];
    [(MTLGPUDebugTextureErrorLog *)v36 setErrorReason:*(v4 + 22)];
    v21 = v36;
    goto LABEL_44;
  }

  if (v22 != 6)
  {
LABEL_48:
    v34 = MTLGPUDebugLog(a1, a2);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      MTLGPUDebugReadReportBuffer_cold_1(v34);
    }

    return 0;
  }

  v23 = objc_alloc_init(MTLGPUDebugTrapErrorLog);
  resolvedSharedPacketData::resolvedSharedPacketData(v46, v4, a1, v23, a4);
  v21 = v23;
LABEL_44:
  v32 = v21;
  resolvedSharedPacketData::~resolvedSharedPacketData(v46);
  return v32;
}

void sub_22E10F5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  resolvedSharedPacketData::~resolvedSharedPacketData(va);
  _Unwind_Resume(a1);
}

void *GPUDebugFunctionInfo::GPUDebugFunctionInfo(void *a1, void *a2, uint64_t a3, void *a4)
{
  *a1 = @"<unnamed>";
  a1[1] = @"<unknown>";
  a1[2] = @"<unknown>";
  if (a2)
  {
    if ([a2 label])
    {
      v7 = [a2 label];
    }

    else
    {
      if (![a2 name])
      {
        goto LABEL_8;
      }

      v7 = [a2 name];
    }

    a4 = v7;
  }

  *a1 = a4;
LABEL_8:
  if (a3 <= 4)
  {
    switch(a3)
    {
      case 1:
        v9 = @"vertex";
        break;
      case 2:
        v9 = @"fragment";
        break;
      case 3:
        v9 = @"kernel";
        v10 = @"dispatch";
LABEL_25:
        a1[1] = v9;
        a1[2] = v10;
        return a1;
      default:
        return a1;
    }

    v10 = @"draw";
    goto LABEL_25;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      v8 = @"visible";
    }

    else
    {
      v8 = @"intersection";
    }

    goto LABEL_22;
  }

  if (a3 == 7)
  {
    v8 = @"mesh";
    goto LABEL_22;
  }

  if (a3 == 8)
  {
    v8 = @"object";
LABEL_22:
    a1[1] = v8;
  }

  return a1;
}

uint64_t resolvedSharedPacketData::resolvedSharedPacketData(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  *(a1 + 24) = 0u;
  v9 = (a1 + 24);
  *(a1 + 72) = 0;
  v10 = (a1 + 72);
  *(a1 + 88) = 0;
  v11 = (a1 + 88);
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  *(a1 + 16) = v13;
  *a1 = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = HIDWORD(v13);
  v14 = *(a2 + 32);
  *v9 = v14;
  *(a1 + 48) = [v14 debugInstrumentationData];
  v15 = *(a1 + 8);
  *(a1 + 32) = v15;
  *(a1 + 64) = [v15 functionType];
  v16 = *a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a4 setComputePipeline:{objc_msgSend(v16, "baseObject")}];
      *(a1 + 40) = [objc_msgSend(v16 "kernelFunctionData")];
      *(a1 + 56) = [objc_msgSend(v16 "kernelFunctionData")];
      *(a1 + 64) = 3;
      *(a1 + 136) = 1;
      *v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline: %@, UID: %@", objc_msgSend(v16, "label"), objc_msgSend(v16, "UID")];
    }

    goto LABEL_15;
  }

  *v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline: %@, UID: %@", objc_msgSend(v16, "label"), objc_msgSend(v16, "UID")];
  [a4 setRenderPipeline:{objc_msgSend(v16, "baseObject")}];
  if ([*(a1 + 32) functionType] == 1)
  {
    *(a1 + 40) = [objc_msgSend(v16 "vertexFunctionData")];
    *(a1 + 56) = [objc_msgSend(v16 "vertexFunctionData")];
    v17 = 1;
  }

  else
  {
    if ([*(a1 + 32) functionType] == 2)
    {
      if (![v16 tileFunctionData])
      {
        *(a1 + 80) = [objc_msgSend(v16 "userReflection")];
        *(a1 + 40) = [objc_msgSend(v16 "fragmentFunctionData")];
        *(a1 + 56) = [objc_msgSend(v16 "fragmentFunctionData")];
        v17 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      if ([*(a1 + 32) functionType] == 8)
      {
        *(a1 + 80) = [objc_msgSend(v16 "userReflection")];
        *(a1 + 40) = [objc_msgSend(v16 "objectFunctionData")];
        *(a1 + 56) = [objc_msgSend(v16 "objectFunctionData")];
        v17 = 8;
        goto LABEL_14;
      }

      if ([*(a1 + 32) functionType] == 7)
      {
        *(a1 + 80) = [objc_msgSend(v16 "userReflection")];
        *(a1 + 40) = [objc_msgSend(v16 "meshFunctionData")];
        *(a1 + 56) = [objc_msgSend(v16 "meshFunctionData")];
        v17 = 16;
        goto LABEL_14;
      }

      if ([*(a1 + 32) functionType] != 3 || !objc_msgSend(v16, "tileFunctionData"))
      {
        goto LABEL_15;
      }
    }

    *(a1 + 40) = [objc_msgSend(v16 "tileFunctionData")];
    *(a1 + 56) = [objc_msgSend(v16 "tileFunctionData")];
    *(a1 + 64) = [objc_msgSend(v16 "tileFunctionData")];
    v17 = 4;
  }

LABEL_14:
  *(a1 + 136) = v17;
LABEL_15:
  v46 = a5;
  v47 = v10;
  v18 = 0;
  v19 = a2 + 40;
  do
  {
    v20 = *(v19 + v18);
    if (v20 == 0x7FFFFFFF)
    {
      break;
    }

    if (v18)
    {
      if ([*v9 imageType] == 1)
      {
        break;
      }

      v20 = *(v19 + v18);
    }

    if (v20 != -1)
    {
      v21 = [*(a1 + 48) debugLocationForID:?];
      v23 = *(a1 + 120);
      v22 = *(a1 + 128);
      if (v23 >= v22)
      {
        v25 = *(a1 + 112);
        v26 = (v23 - v25) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
        }

        v27 = v22 - v25;
        v28 = v27 >> 2;
        if (v27 >> 2 <= (v26 + 1))
        {
          v28 = v26 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(a1 + 112, v29);
        }

        v30 = (8 * v26);
        *v30 = v21;
        v24 = 8 * v26 + 8;
        v31 = *(a1 + 112);
        v32 = *(a1 + 120) - v31;
        v33 = v30 - v32;
        memcpy(v30 - v32, v31, v32);
        v34 = *(a1 + 112);
        *(a1 + 112) = v33;
        *(a1 + 120) = v24;
        *(a1 + 128) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v23 = v21;
        v24 = (v23 + 1);
      }

      *(a1 + 120) = v24;
    }

    v18 += 4;
  }

  while (v18 != 40);
  v35 = *v10;
  [a4 setImage:*v9];
  [a4 setCallIndex:*(a1 + 96)];
  [a4 setEncoderLabel:{std::__hash_table<std::__hash_value_type<unsigned int, NSString *>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, NSString *>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, NSString *>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, NSString *>>>::find<unsigned int>(v46, v11)[3]}];
  v37 = *(a1 + 112);
  if (*(a1 + 120) != v37)
  {
    v38 = newNonToolchainInlinedStackTraceFromDebugLocation(*v37, v36);
    v40 = newRuntimeStackTrace((a1 + 112), v39);
    v41 = [a3 argumentBuffersSupport];
    v42 = v38;
    if (v41 == 1)
    {
      if ((a3[285] & 2) != 0)
      {
        v42 = v40;
      }

      else
      {
        v42 = v38;
      }
    }

    [a4 setErrorStackTrace:v42];
    if (v38)
    {
      v43 = [v38 objectAtIndexedSubscript:0];
    }

    else
    {
      v43 = 0;
    }

    [a4 setDebugLocation:v43];
  }

  [a4 setFunction:*(a1 + 40)];
  [a4 setType:0];
  [a4 setFunctionName:*(a1 + 56)];
  [a4 setFunctionType:*(a1 + 64)];
  [a4 setPipelineIdentifier:*v47];
  return a1;
}

void sub_22E110870(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    *(v1 + 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::find<unsigned int>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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

void resolvedSharedPacketData::~resolvedSharedPacketData(id *this)
{
  v2 = this[14];
  if (v2)
  {
    this[15] = v2;
    operator delete(v2);
  }
}

void sub_22E118710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::VertexEncoderClass>>(uint64_t a1, unint64_t *a2, id *a3, uint64_t a4, uint64_t a5)
{
  [a3[2] setVertexBytes:a1 length:248 atIndex:a4];
  result = [a3[2] setVertexBytes:a1 + 744 length:248 atIndex:a5];
  v10 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v11 = __clz(__rbit64(v10));
        v12 = v10 & ~(3 << (v11 & 0x3E));
        *a2 = v12;
        v13 = *(a1 + 248 + ((4 * v11) & 0x1F8));
        if (!v13)
        {
          break;
        }

        result = [a3 useResource:v13 usage:(v10 >> (v11 & 0x3E)) & 3 stages:1];
        v10 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v10 &= ~(3 << (v11 & 0x3E));
    }

    while (v12);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::FragmentEncoderClass>>(uint64_t a1, unint64_t *a2, id *a3, uint64_t a4, uint64_t a5)
{
  [a3[2] setFragmentBytes:a1 length:248 atIndex:a4];
  result = [a3[2] setFragmentBytes:a1 + 744 length:248 atIndex:a5];
  v10 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v11 = __clz(__rbit64(v10));
        v12 = v10 & ~(3 << (v11 & 0x3E));
        *a2 = v12;
        v13 = *(a1 + 248 + ((4 * v11) & 0x1F8));
        if (!v13)
        {
          break;
        }

        result = [a3 useResource:v13 usage:(v10 >> (v11 & 0x3E)) & 3 stages:2];
        v10 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v10 &= ~(3 << (v11 & 0x3E));
    }

    while (v12);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::TileEncoderClass>>(uint64_t a1, unint64_t *a2, id *a3, uint64_t a4, uint64_t a5)
{
  [a3[2] setTileBytes:a1 length:248 atIndex:a4];
  result = [a3[2] setTileBytes:a1 + 744 length:248 atIndex:a5];
  v10 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v11 = __clz(__rbit64(v10));
        v12 = v10 & ~(3 << (v11 & 0x3E));
        *a2 = v12;
        v13 = *(a1 + 248 + ((4 * v11) & 0x1F8));
        if (!v13)
        {
          break;
        }

        result = [a3 useResource:v13 usage:(v10 >> (v11 & 0x3E)) & 3 stages:2];
        v10 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v10 &= ~(3 << (v11 & 0x3E));
    }

    while (v12);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::ObjectEncoderClass>>(uint64_t a1, unint64_t *a2, id *a3, uint64_t a4, uint64_t a5)
{
  [a3[2] setObjectBytes:a1 length:248 atIndex:a4];
  result = [a3[2] setObjectBytes:a1 + 744 length:248 atIndex:a5];
  v10 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v11 = __clz(__rbit64(v10));
        v12 = v10 & ~(3 << (v11 & 0x3E));
        *a2 = v12;
        v13 = *(a1 + 248 + ((4 * v11) & 0x1F8));
        if (!v13)
        {
          break;
        }

        result = [a3 useResource:v13 usage:(v10 >> (v11 & 0x3E)) & 3 stages:8];
        v10 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v10 &= ~(3 << (v11 & 0x3E));
    }

    while (v12);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::MeshEncoderClass>>(uint64_t a1, unint64_t *a2, id *a3, uint64_t a4, uint64_t a5)
{
  [a3[2] setMeshBytes:a1 length:248 atIndex:a4];
  result = [a3[2] setMeshBytes:a1 + 744 length:248 atIndex:a5];
  v10 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v11 = __clz(__rbit64(v10));
        v12 = v10 & ~(3 << (v11 & 0x3E));
        *a2 = v12;
        v13 = *(a1 + 248 + ((4 * v11) & 0x1F8));
        if (!v13)
        {
          break;
        }

        result = [a3 useResource:v13 usage:(v10 >> (v11 & 0x3E)) & 3 stages:16];
        v10 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v10 &= ~(3 << (v11 & 0x3E));
    }

    while (v12);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::VertexEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = a3;
  result = MTLLegacySV::EncoderVariantT2<MTLLegacySV::VertexEncoderClass>::setResources(&v13, a1, &v12, a4, a5);
  v8 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v9 = __clz(__rbit64(v8));
        v10 = v8 & ~(3 << (v9 & 0x3E));
        *a2 = v10;
        v11 = *(a1 + 248 + ((4 * v9) & 0x1F8));
        if (!v11)
        {
          break;
        }

        result = [v13 useResource:v11 usage:(v8 >> (v9 & 0x3E)) & 3 stages:1];
        v8 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v8 &= ~(3 << (v9 & 0x3E));
    }

    while (v10);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT2<MTLLegacySV::VertexEncoderClass>::setResources(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = [objc_msgSend(*a1 commandBuffer];
  [*(*a1 + 2) setVertexBuffer:v9 offset:v11 atIndex:0];
  [*(*a1 + 2) setVertexBytes:a2 + 992 length:124 atIndex:a4];
  return [*(*a1 + 2) setVertexBytes:a2 + 744 length:248 atIndex:a5];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::FragmentEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = a3;
  result = MTLLegacySV::EncoderVariantT2<MTLLegacySV::FragmentEncoderClass>::setResources(&v13, a1, &v12, a4, a5);
  v8 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v9 = __clz(__rbit64(v8));
        v10 = v8 & ~(3 << (v9 & 0x3E));
        *a2 = v10;
        v11 = *(a1 + 248 + ((4 * v9) & 0x1F8));
        if (!v11)
        {
          break;
        }

        result = [v13 useResource:v11 usage:(v8 >> (v9 & 0x3E)) & 3 stages:2];
        v8 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v8 &= ~(3 << (v9 & 0x3E));
    }

    while (v10);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT2<MTLLegacySV::FragmentEncoderClass>::setResources(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = [objc_msgSend(*a1 commandBuffer];
  [*(*a1 + 2) setFragmentBuffer:v9 offset:v11 atIndex:0];
  [*(*a1 + 2) setFragmentBytes:a2 + 992 length:124 atIndex:a4];
  return [*(*a1 + 2) setFragmentBytes:a2 + 744 length:248 atIndex:a5];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::TileEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = a3;
  result = MTLLegacySV::EncoderVariantT2<MTLLegacySV::TileEncoderClass>::setResources(&v13, a1, &v12, a4, a5);
  v8 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v9 = __clz(__rbit64(v8));
        v10 = v8 & ~(3 << (v9 & 0x3E));
        *a2 = v10;
        v11 = *(a1 + 248 + ((4 * v9) & 0x1F8));
        if (!v11)
        {
          break;
        }

        result = [v13 useResource:v11 usage:(v8 >> (v9 & 0x3E)) & 3 stages:2];
        v8 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v8 &= ~(3 << (v9 & 0x3E));
    }

    while (v10);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT2<MTLLegacySV::TileEncoderClass>::setResources(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = [objc_msgSend(*a1 commandBuffer];
  [*(*a1 + 2) setTileBuffer:v9 offset:v11 atIndex:0];
  [*(*a1 + 2) setTileBytes:a2 + 992 length:124 atIndex:a4];
  return [*(*a1 + 2) setTileBytes:a2 + 744 length:248 atIndex:a5];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::ObjectEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = a3;
  result = MTLLegacySV::EncoderVariantT2<MTLLegacySV::ObjectEncoderClass>::setResources(&v13, a1, &v12, a4, a5);
  v8 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v9 = __clz(__rbit64(v8));
        v10 = v8 & ~(3 << (v9 & 0x3E));
        *a2 = v10;
        v11 = *(a1 + 248 + ((4 * v9) & 0x1F8));
        if (!v11)
        {
          break;
        }

        result = [v13 useResource:v11 usage:(v8 >> (v9 & 0x3E)) & 3 stages:8];
        v8 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v8 &= ~(3 << (v9 & 0x3E));
    }

    while (v10);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT2<MTLLegacySV::ObjectEncoderClass>::setResources(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = [objc_msgSend(*a1 commandBuffer];
  [*(*a1 + 2) setObjectBuffer:v9 offset:v11 atIndex:0];
  [*(*a1 + 2) setObjectBytes:a2 + 992 length:124 atIndex:a4];
  return [*(*a1 + 2) setObjectBytes:a2 + 744 length:248 atIndex:a5];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::MeshEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = a3;
  result = MTLLegacySV::EncoderVariantT2<MTLLegacySV::MeshEncoderClass>::setResources(&v13, a1, &v12, a4, a5);
  v8 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v9 = __clz(__rbit64(v8));
        v10 = v8 & ~(3 << (v9 & 0x3E));
        *a2 = v10;
        v11 = *(a1 + 248 + ((4 * v9) & 0x1F8));
        if (!v11)
        {
          break;
        }

        result = [v13 useResource:v11 usage:(v8 >> (v9 & 0x3E)) & 3 stages:16];
        v8 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v8 &= ~(3 << (v9 & 0x3E));
    }

    while (v10);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT2<MTLLegacySV::MeshEncoderClass>::setResources(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = [objc_msgSend(*a1 commandBuffer];
  [*(*a1 + 2) setMeshBuffer:v9 offset:v11 atIndex:0];
  [*(*a1 + 2) setMeshBytes:a2 + 992 length:124 atIndex:a4];
  return [*(*a1 + 2) setMeshBytes:a2 + 744 length:248 atIndex:a5];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::VertexEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = *a2;
  v11 = a3;
  result = MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::VertexEncoderClass>::setResources(&v11, a1, &v10);
  v6 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v7 = __clz(__rbit64(v6));
        v8 = v6 & ~(3 << (v7 & 0x3E));
        *a2 = v8;
        v9 = *(a1 + 248 + ((4 * v7) & 0x1F8));
        if (!v9)
        {
          break;
        }

        result = [v11 useResource:v9 usage:(v6 >> (v7 & 0x3E)) & 3 stages:1];
        v6 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v6 &= ~(3 << (v7 & 0x3E));
    }

    while (v8);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::VertexEncoderClass>::setResources(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  for (i = *a3; *a3; i = *a3)
  {
    v6 = __clz(__rbit64(i));
    *a3 = i & ~(3 << (v6 & 0x3E));
    [*(*a1 + 16) setVertexBuffer:objc_msgSend(*(a2 + 248 + 8 * (v6 >> 1)) offset:"baseObject") attributeStride:*(a2 + 496 + 8 * (v6 >> 1)) + objc_msgSend(*(a2 + 248 + 8 * (v6 >> 1)) atIndex:{"offset"), *(a2 + 744 + 8 * (v6 >> 1)), v6 >> 1}];
  }

  v7 = *(*a1 + 16);

  return [v7 setVertexBytes:a2 + 1120 length:496 atIndex:31];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::FragmentEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = *a2;
  v11 = a3;
  result = MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::FragmentEncoderClass>::setResources(&v11, a1, &v10);
  v6 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v7 = __clz(__rbit64(v6));
        v8 = v6 & ~(3 << (v7 & 0x3E));
        *a2 = v8;
        v9 = *(a1 + 248 + ((4 * v7) & 0x1F8));
        if (!v9)
        {
          break;
        }

        result = [v11 useResource:v9 usage:(v6 >> (v7 & 0x3E)) & 3 stages:2];
        v6 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v6 &= ~(3 << (v7 & 0x3E));
    }

    while (v8);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::FragmentEncoderClass>::setResources(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    v7 = a2 + 248;
    do
    {
      v8 = __clz(__rbit64(v5));
      *a3 = v5 & ~(3 << (v8 & 0x3E));
      [*(*a1 + 16) setFragmentBuffer:objc_msgSend(*(v7 + 8 * (v8 >> 1)) offset:"baseObject") atIndex:{*(a2 + 496 + 8 * (v8 >> 1)) + objc_msgSend(*(v7 + 8 * (v8 >> 1)), "offset"), v8 >> 1}];
      v5 = *a3;
    }

    while (*a3);
  }

  v9 = *(*a1 + 16);

  return [v9 setFragmentBytes:a2 + 1120 length:496 atIndex:31];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::TileEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = *a2;
  v11 = a3;
  result = MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::TileEncoderClass>::setResources(&v11, a1, &v10);
  v6 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v7 = __clz(__rbit64(v6));
        v8 = v6 & ~(3 << (v7 & 0x3E));
        *a2 = v8;
        v9 = *(a1 + 248 + ((4 * v7) & 0x1F8));
        if (!v9)
        {
          break;
        }

        result = [v11 useResource:v9 usage:(v6 >> (v7 & 0x3E)) & 3 stages:2];
        v6 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v6 &= ~(3 << (v7 & 0x3E));
    }

    while (v8);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::TileEncoderClass>::setResources(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    v7 = a2 + 248;
    do
    {
      v8 = __clz(__rbit64(v5));
      *a3 = v5 & ~(3 << (v8 & 0x3E));
      [*(*a1 + 16) setTileBuffer:objc_msgSend(*(v7 + 8 * (v8 >> 1)) offset:"baseObject") atIndex:{*(a2 + 496 + 8 * (v8 >> 1)) + objc_msgSend(*(v7 + 8 * (v8 >> 1)), "offset"), v8 >> 1}];
      v5 = *a3;
    }

    while (*a3);
  }

  v9 = *(*a1 + 16);

  return [v9 setTileBytes:a2 + 1120 length:496 atIndex:31];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::ObjectEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = *a2;
  v11 = a3;
  result = MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::ObjectEncoderClass>::setResources(&v11, a1, &v10);
  v6 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v7 = __clz(__rbit64(v6));
        v8 = v6 & ~(3 << (v7 & 0x3E));
        *a2 = v8;
        v9 = *(a1 + 248 + ((4 * v7) & 0x1F8));
        if (!v9)
        {
          break;
        }

        result = [v11 useResource:v9 usage:(v6 >> (v7 & 0x3E)) & 3 stages:8];
        v6 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v6 &= ~(3 << (v7 & 0x3E));
    }

    while (v8);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::ObjectEncoderClass>::setResources(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    v7 = a2 + 248;
    do
    {
      v8 = __clz(__rbit64(v5));
      *a3 = v5 & ~(3 << (v8 & 0x3E));
      [*(*a1 + 16) setObjectBuffer:objc_msgSend(*(v7 + 8 * (v8 >> 1)) offset:"baseObject") atIndex:{*(a2 + 496 + 8 * (v8 >> 1)) + objc_msgSend(*(v7 + 8 * (v8 >> 1)), "offset"), v8 >> 1}];
      v5 = *a3;
    }

    while (*a3);
  }

  v9 = *(*a1 + 16);

  return [v9 setObjectBytes:a2 + 1120 length:496 atIndex:31];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::MeshEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = *a2;
  v11 = a3;
  result = MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::MeshEncoderClass>::setResources(&v11, a1, &v10);
  v6 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v7 = __clz(__rbit64(v6));
        v8 = v6 & ~(3 << (v7 & 0x3E));
        *a2 = v8;
        v9 = *(a1 + 248 + ((4 * v7) & 0x1F8));
        if (!v9)
        {
          break;
        }

        result = [v11 useResource:v9 usage:(v6 >> (v7 & 0x3E)) & 3 stages:16];
        v6 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v6 &= ~(3 << (v7 & 0x3E));
    }

    while (v8);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::MeshEncoderClass>::setResources(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    v7 = a2 + 248;
    do
    {
      v8 = __clz(__rbit64(v5));
      *a3 = v5 & ~(3 << (v8 & 0x3E));
      [*(*a1 + 16) setMeshBuffer:objc_msgSend(*(v7 + 8 * (v8 >> 1)) offset:"baseObject") atIndex:{*(a2 + 496 + 8 * (v8 >> 1)) + objc_msgSend(*(v7 + 8 * (v8 >> 1)), "offset"), v8 >> 1}];
      v5 = *a3;
    }

    while (*a3);
  }

  v9 = *(*a1 + 16);

  return [v9 setMeshBytes:a2 + 1120 length:496 atIndex:31];
}

void emitKernelTelemetry(MTLTelemetryDevice *a1)
{
  v85 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      return;
    }

    kernelDistribution = a1->kernelDistribution;
    var3 = kernelDistribution->var0.var3;
    var2 = kernelDistribution->var0.var2;
    v5 = 0.0;
    v6 = 0.0;
    if (var3)
    {
      v6 = (var2 / var3);
    }

    v7 = kernelDistribution->var1.var3;
    v8 = kernelDistribution->var1.var2;
    if (v7)
    {
      v5 = (v8 / v7);
    }

    v9 = kernelDistribution->var2.var3;
    v10 = kernelDistribution->var2.var2;
    v11 = 0.0;
    v12 = 0.0;
    if (v9)
    {
      v12 = (v10 / v9);
    }

    var0 = kernelDistribution->var0.var0;
    var1 = kernelDistribution->var0.var1;
    v16 = kernelDistribution->var1.var0;
    v15 = kernelDistribution->var1.var1;
    v17 = kernelDistribution->var2.var0;
    v18 = kernelDistribution->var2.var1;
    v19 = kernelDistribution->var3.var0;
    v20 = kernelDistribution->var3.var1;
    v21 = kernelDistribution->var3.var3;
    v22 = kernelDistribution->var3.var2;
    if (v21)
    {
      v11 = (v22 / v21);
    }

    printf("\n\nKernel, minPBAllocation=%d, maxPBAllocation=%d, avgPBAllocation=%f, totalPBAllocation=%lld, countPBAllocation=%d, minSPMRenderCount=%d, maxSPMRenderCount=%d, avgSPMRenderCount=%f, totalSPMRenderCount=%lld, countSPMRenderCount=%d, minTiledSceneBytes=%d, maxTiledSceneBytes=%d, avgTiledSceneBytes=%f, totalTiledSceneBytes=%lld, countTiledSceneBytes=%d, minRenderCount=%d, maxRenderCount=%d, avgRenderCount=%f, totalRenderCount=%lld, countRenderCount=%d", var0, var1, v6, var2, var3, v16, v15, v5, v8, v7, v17, v18, v12, v10, v9, v19, v20, v11, v22, v21);
  }

  v23 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a1->kernelDistribution;
    v25 = v24->var0.var3;
    v26 = v24->var0.var2;
    v27 = 0.0;
    v28 = 0.0;
    if (v25)
    {
      v28 = (v26 / v25);
    }

    v29 = v24->var1.var3;
    v30 = v24->var1.var2;
    if (v29)
    {
      v27 = (v30 / v29);
    }

    v31 = v24->var2.var3;
    v32 = v24->var2.var2;
    v33 = 0.0;
    v34 = 0.0;
    if (v31)
    {
      v34 = (v32 / v31);
    }

    v36 = v24->var0.var0;
    v35 = v24->var0.var1;
    v38 = v24->var1.var0;
    v37 = v24->var1.var1;
    v40 = v24->var2.var0;
    v39 = v24->var2.var1;
    v41 = v24->var3.var0;
    v42 = v24->var3.var1;
    v43 = v24->var3.var3;
    v44 = v24->var3.var2;
    if (v43)
    {
      v33 = (v44 / v43);
    }

    *buf = 67113984;
    v46 = v36;
    v47 = 1024;
    v48 = v35;
    v49 = 2048;
    v50 = v28;
    v51 = 2048;
    v52 = v26;
    v53 = 1024;
    v54 = v25;
    v55 = 1024;
    v56 = v38;
    v57 = 1024;
    v58 = v37;
    v59 = 2048;
    v60 = v27;
    v61 = 2048;
    v62 = v30;
    v63 = 1024;
    v64 = v29;
    v65 = 1024;
    v66 = v40;
    v67 = 1024;
    v68 = v39;
    v69 = 2048;
    v70 = v34;
    v71 = 2048;
    v72 = v32;
    v73 = 1024;
    v74 = v31;
    v75 = 1024;
    v76 = v41;
    v77 = 1024;
    v78 = v42;
    v79 = 2048;
    v80 = v33;
    v81 = 2048;
    v82 = v44;
    v83 = 1024;
    v84 = v43;
    _os_log_impl(&dword_22E0FF000, v23, OS_LOG_TYPE_DEFAULT, "Kernel, minPBAllocation=%d, maxPBAllocation=%d, avgPBAllocation=%f, totalPBAllocation=%lld, countPBAllocation=%d, minSPMRenderCount=%d, maxSPMRenderCount=%d, avgSPMRenderCount=%f, totalSPMRenderCount=%lld, countSPMRenderCount=%d, minTiledSceneBytes=%d, maxTiledSceneBytes=%d, avgTiledSceneBytes=%f, totalTiledSceneBytes=%lld, countTiledSceneBytes=%d, minRenderCount=%d, maxRenderCount=%d, avgRenderCount=%f, totalRenderCount=%lld, countRenderCount=%d", buf, 0x9Au);
  }
}

uint64_t getKernelTelemetryState(MTLTelemetryKernelStateRec *a1)
{
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("AGXAccelerator");
  result = IOServiceGetMatchingService(v2, v3);
  if (result)
  {
    v5 = result;
    v6 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(result, @"InternalStatistics", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v8 = CFProperty;
      Value = CFDictionaryGetValue(CFProperty, @"Allocated PB Size");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, a1);
      }

      CFRelease(v8);
    }

    v10 = IORegistryEntryCreateCFProperty(v5, @"PerformanceStatistics", v6, 0);
    if (v10)
    {
      v11 = v10;
      v12 = CFDictionaryGetValue(v10, @"SplitSceneCount");
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberSInt32Type, &a1->spmRenderCount);
      }

      v13 = CFDictionaryGetValue(v11, @"CommandBufferRenderCount");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberSInt32Type, &a1->renderCount);
      }

      v14 = CFDictionaryGetValue(v11, @"TiledSceneBytes");
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberSInt32Type, &a1->tiledSceneBytes);
      }

      CFRelease(v11);
    }

    return IOObjectRelease(v5);
  }

  return result;
}

void sub_22E11DA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E11E1D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id ResourceUsageTable::realloc(id *this, MTLGPUDebugDevice *a2, unint64_t a3)
{
  result = [*this length];
  if (result <= a3)
  {
    v7 = [(MTLGPUDebugDevice *)a2 newInternalBufferWithLength:a3 options:0];
    memcpy([v7 contents], objc_msgSend(*this, "contents"), objc_msgSend(*this, "length"));

    v8 = this[1];
    if (v8)
    {
      [v8 removeAllocation:*this];
      [this[1] addAllocation:v7];
      [this[1] commit];
    }

    result = v7;
    *this = result;
  }

  return result;
}

void *ResourceUsageTable::alloc(ResourceUsageTable *this, MTLGPUDebugDevice *a2, uint64_t a3)
{
  v4 = [(MTLGPUDebugDevice *)a2 newInternalBufferWithLength:a3 options:0];
  *this = v4;
  result = *(this + 1);
  if (result)
  {
    [result addAllocation:v4];
    v6 = *(this + 1);

    return [v6 commit];
  }

  return result;
}

_BYTE *BufferUsageTable::setUsage(BufferUsageTable *this, unsigned int a2, char a3)
{
  if ((a3 & 4) != 0)
  {
    v4 = a3 & 2 | 1;
  }

  else
  {
    v4 = a3;
  }

  result = [(MTLBuffer *)this->_backingMemory contents];
  result[a2 >> 2] |= v4 << (2 * (a2 & 3));
  return result;
}

_BYTE *BufferUsageTable::alloc(BufferUsageTable *this, MTLGPUDebugDevice *a2, int a3)
{
  v4 = [(MTLGPUDebugDevice *)a2 newInternalBufferWithLength:(a3 << 18) options:0];
  this->_backingMemory = v4;
  backingMemory = this[1]._backingMemory;
  if (backingMemory)
  {
    [(MTLBuffer *)backingMemory addAllocation:v4];
    [(MTLBuffer *)this[1]._backingMemory commit];
    v4 = this->_backingMemory;
  }

  result = [(MTLBuffer *)v4 contents];
  *result |= 3u;
  return result;
}

_BYTE *BufferUsageTable::addResource(BufferUsageTable *this, MTLGPUDebugDevice *a2, MTLGPUDebugBuffer *a3, char a4)
{
  for (i = a3; ; i = a3)
  {
    v9 = [(MTLGPUDebugBuffer *)i bufferIndex];
    if ([(MTLBuffer *)this->_backingMemory length]> v9 >> 2)
    {
      break;
    }

    ResourceUsageTable::realloc(&this->_backingMemory, a2, 2 * ([(MTLBuffer *)this->_backingMemory length]& 0x7FFFFFFF));
  }

  v10 = [(MTLGPUDebugBuffer *)a3 bufferIndex];
  if ((a4 & 4) != 0)
  {
    a4 = a4 & 2 | 1;
  }

  result = [(MTLBuffer *)this->_backingMemory contents];
  result[v10 >> 2] |= a4 << (2 * (v10 & 3));
  return result;
}

uint64_t BufferUsageTable::getUsage(BufferUsageTable *this, MTLGPUDebugBuffer *a2)
{
  v3 = [(MTLBuffer *)this->_backingMemory contents];
  v4 = [(MTLGPUDebugBuffer *)a2 bufferIndex];
  return (*(v3 + (v4 >> 2)) >> (2 * (v4 & 3))) & 3;
}

TextureUsageTable *TextureUsageTable::setUsage(TextureUsageTable *this, unsigned int a2, char a3)
{
  if (a2)
  {
    if ((a3 & 4) != 0)
    {
      v4 = a3 & 2 | 1;
    }

    else
    {
      v4 = a3;
    }

    this = [(MTLBuffer *)this->_backingMemory contents];
    *(&this->_backingMemory + (a2 >> 2)) |= v4 << (2 * (a2 & 3));
  }

  return this;
}

_BYTE *TextureUsageTable::addResource(TextureUsageTable *this, MTLGPUDebugDevice *a2, unsigned int a3, char a4)
{
  v8 = a3 >> 2;
  for (i = this->_backingMemory; ; i = this->_backingMemory)
  {
    result = [(MTLBuffer *)i length];
    if (v8 < result)
    {
      break;
    }

    ResourceUsageTable::realloc(&this->_backingMemory, a2, 2 * ([(MTLBuffer *)this->_backingMemory length]& 0x7FFFFFFF));
  }

  if (a3)
  {
    if ((a4 & 4) != 0)
    {
      a4 = a4 & 2 | 1;
    }

    result = [(MTLBuffer *)this->_backingMemory contents];
    result[v8] |= a4 << (2 * (a3 & 3));
  }

  return result;
}

uint64_t TextureUsageTable::getUsage(TextureUsageTable *this, MTLGPUDebugTexture *a2)
{
  v3 = [(MTLBuffer *)this->_backingMemory contents];
  v4 = [(MTLGPUDebugTexture *)a2 gpuIdentifier];
  return (*(v3 + (v4 >> 2)) >> (2 * (v4 & 3))) & 3;
}

TextureTypeTable *TextureTypeTable::setType(TextureTypeTable *this, unint64_t a2, MTLTextureType a3)
{
  if (a2)
  {
    v3 = a3;
    this = [(MTLBuffer *)this->_backingMemory contents];
    *(&this->_backingMemory + (a2 >> 1)) = *(&this->_backingMemory + (a2 >> 1)) & ~(15 << (4 * (a2 & 1))) | (v3 << (4 * (a2 & 1)));
  }

  return this;
}

_BYTE *TextureTypeTable::removeResource(TextureTypeTable *this, MTLGPUDebugDevice *a2, MTLGPUDebugTexture *a3)
{
  result = [(MTLGPUDebugTexture *)a3 gpuIdentifier];
  if (result)
  {
    v5 = result;
    result = [(MTLBuffer *)this->_backingMemory contents];
    result[v5 >> 1] |= 15 << (4 * (v5 & 1));
  }

  return result;
}

_BYTE *TextureTypeTable::addResource(TextureTypeTable *this, MTLGPUDebugDevice *a2, MTLGPUDebugTexture *a3)
{
  for (i = a3; ; i = a3)
  {
    v7 = [(MTLGPUDebugTexture *)i gpuIdentifier]>> 1;
    if (v7 < [(MTLBuffer *)this->_backingMemory length])
    {
      break;
    }

    ResourceUsageTable::realloc(&this->_backingMemory, a2, 2 * ([(MTLBuffer *)this->_backingMemory length]& 0x7FFFFFFF));
  }

  v8 = [(MTLGPUDebugTexture *)a3 gpuIdentifier];
  result = [(MTLToolsTexture *)a3 textureType];
  if (v8)
  {
    v10 = result;
    result = [(MTLBuffer *)this->_backingMemory contents];
    result[v8 >> 1] = result[v8 >> 1] & ~(15 << (4 * (v8 & 1))) | (v10 << (4 * (v8 & 1)));
  }

  return result;
}

void HeapUsageTable::mergeHeapStagesAndUsage(HeapUsageTable *this, MTLGPUDebugHeap *a2, uint64_t a3, uint64_t a4)
{
  begin = this->_heapEntries.__begin_;
  end = this->_heapEntries.__end_;
  p_heapEntries = &this->_heapEntries;
  v9 = begin;
  if (begin != end)
  {
    while (*v9 != a2)
    {
      v9 = (v9 + 24);
      if (v9 == end)
      {
        goto LABEL_7;
      }
    }
  }

  if (v9 == end)
  {
LABEL_7:
    v11 = this->_heapUsage | a4;
    cap = this->_heapEntries.__cap_;
    if (end >= cap)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 3);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HeapUsageTable::HeapUsageTableEntry>>(p_heapEntries, v17);
      }

      v18 = 24 * v14;
      *v18 = a2;
      *(v18 + 8) = a3;
      *(v18 + 16) = v11;
      v13 = (24 * v14 + 24);
      v19 = this->_heapEntries.__begin_;
      v20 = (this->_heapEntries.__end_ - v19);
      v21 = (24 * v14 - v20);
      memcpy(v21, v19, v20);
      v22 = this->_heapEntries.__begin_;
      this->_heapEntries.__begin_ = v21;
      this->_heapEntries.__end_ = v13;
      this->_heapEntries.__cap_ = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *end = a2;
      *(end + 1) = a3;
      v13 = (end + 24);
      *(end + 2) = v11;
    }

    this->_heapEntries.__end_ = v13;
  }

  else
  {
    v10 = *(v9 + 2) | a4;
    *(v9 + 1) |= a3;
    *(v9 + 2) = v10;
  }
}

HeapUsageTable *HeapUsageTable::apply(HeapUsageTable *this, BufferUsageTable *a2, BufferUsageTable *a3, BufferUsageTable *a4, BufferUsageTable *a5, TextureUsageTable *a6, TextureUsageTable *a7, TextureUsageTable *a8, TextureUsageTable *a9, TextureTypeTable *a10, TextureTypeTable *a11, TextureTypeTable *a12, TextureTypeTable *a13)
{
  begin = this->_heapEntries.__begin_;
  for (i = this->_heapEntries.__end_; begin != i; begin = (begin + 24))
  {
    v19 = *(begin + 1);
    if (v19)
    {
      v20 = *begin;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke;
      v46[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v46[4] = a2;
      v46[5] = begin;
      [v20 enumerateBufferIndices:v46];
      v21 = *begin;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_2;
      v45[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v45[4] = a2;
      v45[5] = begin;
      [v21 enumerateAccelerationStructureIndices:v45];
      v22 = *begin;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_3;
      v44[3] = &__block_descriptor_56_e12_v20__0_v8I16l;
      v44[4] = a6;
      v44[5] = begin;
      v44[6] = a10;
      this = [v22 enumerateTextureIndicesAndTypes:v44];
      v19 = *(begin + 1);
    }

    if ((v19 & 6) != 0)
    {
      v23 = *begin;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_4;
      v43[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v43[4] = a3;
      v43[5] = begin;
      [v23 enumerateBufferIndices:v43];
      v24 = *begin;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_5;
      v42[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v42[4] = a3;
      v42[5] = begin;
      [v24 enumerateAccelerationStructureIndices:v42];
      v25 = *begin;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_6;
      v41[3] = &__block_descriptor_56_e12_v20__0_v8I16l;
      v41[4] = a7;
      v41[5] = begin;
      v41[6] = a11;
      this = [v25 enumerateTextureIndicesAndTypes:v41];
      v19 = *(begin + 1);
    }

    if ((v19 & 8) != 0)
    {
      v26 = *begin;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_7;
      v40[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v40[4] = a4;
      v40[5] = begin;
      [v26 enumerateBufferIndices:v40];
      v27 = *begin;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_8;
      v39[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v39[4] = a4;
      v39[5] = begin;
      [v27 enumerateAccelerationStructureIndices:v39];
      v28 = *begin;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_9;
      v38[3] = &__block_descriptor_56_e12_v20__0_v8I16l;
      v38[4] = a8;
      v38[5] = begin;
      v38[6] = a12;
      this = [v28 enumerateTextureIndicesAndTypes:v38];
      v19 = *(begin + 1);
    }

    if ((v19 & 0x10) != 0)
    {
      v29 = *begin;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_10;
      v37[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v37[4] = a5;
      v37[5] = begin;
      [v29 enumerateBufferIndices:v37];
      v30 = *begin;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_11;
      v36[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
      v36[4] = a5;
      v36[5] = begin;
      [v30 enumerateAccelerationStructureIndices:v36];
      v31 = *begin;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = ___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_12;
      v35[3] = &__block_descriptor_56_e12_v20__0_v8I16l;
      v35[4] = a9;
      v35[5] = begin;
      v35[6] = a13;
      this = [v31 enumerateTextureIndicesAndTypes:v35];
    }
  }

  return this;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_2(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_3(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LODWORD(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
        v9 = *a2;
        if (v9)
        {
          v10 = a2[2];
          result = [**(v5 + 6) contents];
          result[v9 >> 1] = result[v9 >> 1] & ~(15 << (4 * (v9 & 1))) | (v10 << (4 * (v9 & 1)));
        }
      }

      a2 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_4(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_5(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_6(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LODWORD(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
        v9 = *a2;
        if (v9)
        {
          v10 = a2[2];
          result = [**(v5 + 6) contents];
          result[v9 >> 1] = result[v9 >> 1] & ~(15 << (4 * (v9 & 1))) | (v10 << (4 * (v9 & 1)));
        }
      }

      a2 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_7(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_8(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_9(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LODWORD(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
        v9 = *a2;
        if (v9)
        {
          v10 = a2[2];
          result = [**(v5 + 6) contents];
          result[v9 >> 1] = result[v9 >> 1] & ~(15 << (4 * (v9 & 1))) | (v10 << (4 * (v9 & 1)));
        }
      }

      a2 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_10(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_11(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v7 = *a2++;
      v6 = v7;
      v8 = *(*(v5 + 5) + 16);
      if ((v8 & 4) != 0)
      {
        LODWORD(v9) = v8 & 2 | 1;
      }

      else
      {
        v9 = *(*(v5 + 5) + 16);
      }

      result = [**(v5 + 4) contents];
      result[v6 >> 2] |= v9 << (2 * (v6 & 3));
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN14HeapUsageTable5applyER16BufferUsageTableS1_S1_S1_R17TextureUsageTableS3_S3_S3_R16TextureTypeTableS5_S5_S5__block_invoke_12(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LODWORD(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
        v9 = *a2;
        if (v9)
        {
          v10 = a2[2];
          result = [**(v5 + 6) contents];
          result[v9 >> 1] = result[v9 >> 1] & ~(15 << (4 * (v9 & 1))) | (v10 << (4 * (v9 & 1)));
        }
      }

      a2 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *__copy_helper_atomic_property_(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<MetalBuffer>::__init_with_size[abi:ne200100]<MetalBuffer*,MetalBuffer*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
}

uint64_t *__assign_helper_atomic_property_(uint64_t *result, char **a2)
{
  if (result != a2)
  {
    return std::vector<MetalBuffer>::__assign_with_size[abi:ne200100]<MetalBuffer*,MetalBuffer*>(result, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return result;
}

void __assign_helper_atomic_property__6(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,NSString *>,void *> *>>(result, *(a2 + 16), 0);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HeapUsageTable::HeapUsageTableEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<MetalBuffer>::__init_with_size[abi:ne200100]<MetalBuffer*,MetalBuffer*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MetalBuffer>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22E120334(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MetalBuffer>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MetalBuffer>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MetalBuffer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<MetalBuffer>::__assign_with_size[abi:ne200100]<MetalBuffer*,MetalBuffer*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MetalBuffer>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16 - 4);
    }

    v15 = &v8[v16];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 4);
      v11 = v6[1];
    }

    v14 = (a3 - v13);
    if (a3 != v13)
    {
      result = memmove(v11, v13, (v14 - 4));
    }

    v15 = &v14[v11];
  }

  v6[1] = v15;
  return result;
}

uint64_t std::unordered_map<unsigned int,NSString *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,NSString *> const&>(a1, i + 4, i + 1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,NSString *> const&>(void *a1, unsigned int *a2, _OWORD *a3)
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

void std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned int,NSString *>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__emplace_multi<std::pair<unsigned int const,NSString *> const&>(a1, a2 + 1);
  }
}

void sub_22E120AE0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<false>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__emplace_unique_key_args<unsigned int,unsigned int &,NSString *&>(void *a1, unsigned int *a2, _DWORD *a3, void *a4)
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

void *std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void MTLGPUDebugStageBufferHandles::clear(MTLGPUDebugStageBufferHandles *this)
{
  v2 = 0;
  this->handles[30] = 0;
  *&this->handles[26] = 0u;
  *&this->handles[28] = 0u;
  *&this->handles[22] = 0u;
  *&this->handles[24] = 0u;
  *&this->handles[18] = 0u;
  *&this->handles[20] = 0u;
  *&this->handles[14] = 0u;
  *&this->handles[16] = 0u;
  *&this->handles[10] = 0u;
  *&this->handles[12] = 0u;
  *&this->handles[6] = 0u;
  *&this->handles[8] = 0u;
  *&this->handles[2] = 0u;
  *&this->handles[4] = 0u;
  *this->handles = 0u;
  *this->offsets = 0u;
  *&this->offsets[2] = 0u;
  *&this->offsets[4] = 0u;
  *&this->offsets[6] = 0u;
  *&this->offsets[8] = 0u;
  *&this->offsets[10] = 0u;
  *&this->offsets[12] = 0u;
  *&this->offsets[14] = 0u;
  *&this->offsets[16] = 0u;
  *&this->offsets[18] = 0u;
  *&this->offsets[20] = 0u;
  *&this->offsets[22] = 0u;
  *&this->offsets[24] = 0u;
  *&this->offsets[26] = 0u;
  *&this->offsets[28] = 0u;
  this->strides[30] = -1;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&this->strides[26] = v3;
  *&this->strides[28] = v3;
  *&this->strides[22] = v3;
  *&this->strides[24] = v3;
  *&this->strides[18] = v3;
  *&this->strides[20] = v3;
  *&this->strides[14] = v3;
  *&this->strides[16] = v3;
  *&this->strides[10] = v3;
  *&this->strides[12] = v3;
  *&this->strides[6] = v3;
  *&this->strides[8] = v3;
  *&this->strides[2] = v3;
  *&this->strides[4] = v3;
  *this->strides = v3;
  resources = this->resources;
  this->offsets[30] = 0;
  do
  {

    resources[v2++] = 0;
  }

  while (v2 != 31);
  this->needsFlush = 1;
}

unint64_t MTLGPUDebugStageBufferHandles::setBuffer(MTLGPUDebugStageBufferHandles *this, MTLGPUDebugBuffer *a2, char *a3, void *a4, uint64_t a5)
{
  this->needsFlush = 1;
  v10 = &this->handles[a5];

  v10[31] = a2;
  v10[62] = a3;
  v10[93] = a4;
  *v10 = [(MTLGPUDebugBuffer *)a2 handleForOffset:a3];
  v11 = this + 4 * a5;
  *(v11 + 248) = [(MTLGPUDebugBuffer *)a2 length]- a3;
  result = [(MTLGPUDebugBuffer *)a2 underlyingGPUAddress];
  v13 = this + 16 * a5;
  *(v13 + 140) = &a3[result];
  *(v13 + 141) = &a3[result + *(v11 + 248)];
  return result;
}

char *MTLGPUDebugStageBufferHandles::setBufferOffset(MTLGPUDebugStageBufferHandles *this, unint64_t a2, uint64_t a3)
{
  this->needsFlush = 1;
  v6 = &this->handles[a3];
  v6[62] = a2;
  v6[93] = -1;
  *v6 = [v6[31] handleForOffset:a2];
  v7 = this + 4 * a3;
  *(v7 + 248) = [v6[31] length] - a2;
  result = [v6[31] underlyingGPUAddress];
  v9 = this + 16 * a3;
  *(v9 + 140) = &result[a2];
  *(v9 + 141) = &result[a2 + *(v7 + 248)];
  return result;
}

char *MTLGPUDebugStageBufferHandles::setBufferOffset(MTLGPUDebugStageBufferHandles *this, unint64_t a2, unint64_t a3, uint64_t a4)
{
  this->needsFlush = 1;
  v7 = &this->handles[a4];
  v7[62] = a2;
  v7[93] = a3;
  *v7 = [v7[31] handleForOffset:a2];
  v8 = this + 4 * a4;
  *(v8 + 248) = [v7[31] length] - a2;
  result = [v7[31] underlyingGPUAddress];
  v10 = this + 16 * a4;
  *(v10 + 140) = &result[a2];
  *(v10 + 141) = &result[a2 + *(v8 + 248)];
  return result;
}

id MTLGPUDebugStageBufferHandles::setResource(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 1616) = 1;
  v6 = a1 + 8 * a3;
  *(v6 + 496) = 0;
  *v6 = [a2 handleForOffset:0];

  result = a2;
  *(v6 + 248) = result;
  *(a1 + 4 * a3 + 992) = 0;
  v8 = a1 + 16 * a3;
  *(v8 + 1128) = 0;
  *(v8 + 1120) = 0;
  return result;
}

MTLGPUDebugThreadgroupLengths *MTLGPUDebugThreadgroupLengths::setThreadgroupMemoryLength(MTLGPUDebugThreadgroupLengths *this, unsigned int a2, uint64_t a3)
{
  this->needsFlush = 1;
  this->threadgroupSizes[a3] = a2;
  return this;
}

unint64_t MTLGPUDebugThreadgroupLengths::setupTableEntries(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  if (a3)
  {
    if (!v3)
    {
LABEL_6:
      *(a1 + 372) = 0;
      *(a1 + 376) = a3;
      return (a3 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    do
    {
LABEL_5:
      v4 = __clz(__rbit32(v3));
      v3 &= ~(1 << v4);
      *a2 = v3;
      v5 = *(a1 + 4 * v4);
      v6 = (a1 + 124 + 8 * v4);
      *v6 = a3;
      v6[1] = v5;
      a3 += v5;
    }

    while (v3);
    goto LABEL_6;
  }

  if (v3)
  {
    goto LABEL_5;
  }

  return 0;
}

MTLGPUDebugTileThreadgroup *MTLGPUDebugTileThreadgroup::setThreadgroupMemoryLength(MTLGPUDebugTileThreadgroup *this, unsigned int a2, unsigned int a3, uint64_t a4)
{
  this->needsFlush = 1;
  v4 = &this->entries[a4];
  v4->offset = a3;
  v4->length = a2;
  return this;
}

uint64_t MTLGPUDebugTileThreadgroup::setupTableEntries(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = __clz(__rbit32(v2));
    v2 &= ~(1 << v4);
    v5 = *(a1 + 8 * v4 + 4) + *(a1 + 8 * v4);
    if (v3 <= v5)
    {
      v3 = v5;
    }
  }

  while (v2);
  *a2 = 0;
  *(a1 + 248) = 0;
  *(a1 + 252) = v3;
  return (v3 + 15) & 0xFFFFFFF0;
}

void emitSamplerDistribution(MTLTelemetryDevice *a1, MTLTelemetrySamplerDistributionRec *a2)
{
  v3 = 0;
  v91 = MTLSamplerAddressModeClampToEdge;
  v168 = *MEMORY[0x277D85DE8];
  do
  {
    v4 = MTLCompareFunctionNever;
    v5 = -1280;
    do
    {
      samplerDistribution = a1->samplerDistribution;
      if (!*(&samplerDistribution->var1[v3 / 0x500 + 1][0].var0 + v5))
      {
        goto LABEL_39;
      }

      if (*MEMORY[0x277CD7168])
      {
        if (*MEMORY[0x277CD7168] != 1)
        {
          goto LABEL_39;
        }

        v89 = stringifyMTLTelemetryWrapMode(v91);
        v87 = stringifyMTLTelemetryCompareFunc(v4);
        v7 = samplerDistribution + v3 + v5;
        v8 = *(v7 + 328);
        v9 = *(v7 + 163);
        v10 = 0.0;
        v11 = 0.0;
        if (v8)
        {
          v11 = (v9 / v8);
        }

        v12 = *(v7 + 324);
        v13 = *(v7 + 325);
        v14 = *(v7 + 330);
        v15 = *(v7 + 331);
        v16 = *(v7 + 334);
        v17 = *(v7 + 166);
        if (v16)
        {
          v10 = (v17 / v16);
        }

        v18 = samplerDistribution + v3 + v5;
        v19 = *(v18 + 336);
        v20 = *(v18 + 337);
        v21 = *(v18 + 340);
        v22 = *(v18 + 169);
        v23 = 0.0;
        v24 = 0.0;
        if (v21)
        {
          v24 = (v22 / v21);
        }

        v25 = *(v18 + 342);
        v26 = *(v18 + 343);
        v27 = *(v18 + 346);
        v28 = *(v18 + 172);
        if (v27)
        {
          v23 = (v28 / v27);
        }

        v29 = samplerDistribution + v3 + v5;
        v30 = *(v29 + 348);
        v31 = *(v29 + 349);
        v32 = *(v29 + 351);
        v33 = *(v29 + 350);
        v34 = 0.0;
        v35 = 0.0;
        if (v32)
        {
          v35 = (v33 / v32);
        }

        v36 = *(v29 + 352);
        v37 = *(v29 + 353);
        v38 = *(v29 + 355);
        v39 = *(v29 + 354);
        if (v38)
        {
          v34 = (v39 / v38);
        }

        v40 = samplerDistribution + v3 + v5;
        v41 = *(v40 + 356);
        v42 = *(v40 + 357);
        v43 = *(v40 + 360);
        v44 = *(v40 + 179);
        if (v43)
        {
          v45 = (v44 / v43);
        }

        else
        {
          v45 = 0.0;
        }

        printf("\n\nSampler, wrapMode=%s, compareFunc=%s, total=%u, minMipFilter=%u, maxMipFilter=%u, avgMipFilter=%f, totalMipFilter=%llu, countMipFilter=%u, minTriLinearFilter=%u, maxTriLinearFilter=%u, avgTriLinearFilter=%f, totalTriLinearFilter=%llu, countTriLinearFilter=%u, minNormalizedCoords=%u, maxNormalizedCoords=%u, avgNormalizedCoords=%f, totalNormalizedCoords=%llu, countNormalizedCoords=%u, minMaxAniso=%u, maxMaxAniso=%u, avgMaxAniso=%f, totalMaxAniso=%llu, countMaxAniso=%u, minLodMinClamp=%.2f, maxLodMinClamp=%.2f, avgLodMinClamp=%f, totalLodMinClamp=%.2f, countLodMinClamp=%u, minLodMaxClamp=%.2f, maxLodMaxClamp=%.2f, avgLodMaxClamp=%f, totalLodMaxClamp=%.2f, countLodMaxClamp=%u, minLodAvg=%u, maxLodAvg=%u, avgLodAvg=%f, totalLodAvg=%llu, countLodAvg=%u", v89, v87, samplerDistribution->var0, v12, v13, v11, v9, v8, v14, v15, v10, v17, v16, v19, v20, v24, v22, v21, v25, v26, v23, v28, v27, v30, v31, v35, v33, v32, v36, v37, v34, v39, v38, v41, v42, v45, v44, v43);
      }

      v46 = [(MTLTelemetryDevice *)a1 telemetryLog];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v90 = stringifyMTLTelemetryWrapMode(v91);
        v88 = stringifyMTLTelemetryCompareFunc(v4);
        v47 = samplerDistribution + v3 + v5;
        v48 = *(v47 + 328);
        v49 = *(v47 + 163);
        v50 = 0.0;
        v51 = 0.0;
        if (v48)
        {
          v51 = (v49 / v48);
        }

        var0 = a1->samplerDistribution->var0;
        v53 = *(v47 + 324);
        v54 = *(v47 + 325);
        v85 = *(v47 + 330);
        v86 = *(v47 + 331);
        v55 = *(v47 + 334);
        v56 = *(v47 + 166);
        if (v55)
        {
          v50 = (v56 / v55);
        }

        v57 = samplerDistribution + v3 + v5;
        v58 = *(v57 + 336);
        v59 = *(v57 + 337);
        v60 = *(v57 + 340);
        v61 = *(v57 + 169);
        v62 = 0.0;
        v63 = 0.0;
        if (v60)
        {
          v63 = (v61 / v60);
        }

        v64 = *(v57 + 342);
        v65 = *(v57 + 343);
        v66 = *(v57 + 346);
        v67 = *(v57 + 172);
        if (v66)
        {
          v62 = (v67 / v66);
        }

        v68 = samplerDistribution + v3 + v5;
        v69 = *(v68 + 348);
        v70 = *(v68 + 349);
        v71 = *(v68 + 351);
        v72 = *(v68 + 350);
        v73 = 0.0;
        v74 = 0.0;
        if (v71)
        {
          v74 = (v72 / v71);
        }

        v75 = *(v68 + 352);
        v76 = *(v68 + 353);
        v77 = *(v68 + 355);
        v78 = *(v68 + 354);
        if (v77)
        {
          v73 = (v78 / v77);
        }

        v79 = samplerDistribution + v3 + v5;
        v80 = *(v79 + 356);
        v81 = *(v79 + 357);
        v82 = *(v79 + 360);
        v83 = *(v79 + 179);
        if (v82)
        {
          v84 = (v83 / v82);
        }

        else
        {
          v84 = 0.0;
        }

        *buf = 136324610;
        v93 = v90;
        v94 = 2080;
        v169 = v81;
        v95 = v88;
        v96 = 1024;
        v97 = var0;
        v98 = 1024;
        v99 = v53;
        v100 = 1024;
        v101 = v54;
        v102 = 2048;
        v103 = v51;
        v104 = 2048;
        v105 = v49;
        v106 = 1024;
        v107 = v48;
        v108 = 1024;
        v109 = v85;
        v110 = 1024;
        v111 = v86;
        v112 = 2048;
        v113 = v50;
        v114 = 2048;
        v115 = v56;
        v116 = 1024;
        v117 = v55;
        v118 = 1024;
        v119 = v58;
        v120 = 1024;
        v121 = v59;
        v122 = 2048;
        v123 = v63;
        v124 = 2048;
        v125 = v61;
        v126 = 1024;
        v127 = v60;
        v128 = 1024;
        v129 = v64;
        v130 = 1024;
        v131 = v65;
        v132 = 2048;
        v133 = v62;
        v134 = 2048;
        v135 = v67;
        v136 = 1024;
        v137 = v66;
        v138 = 2048;
        v139 = v69;
        v140 = 2048;
        v141 = v70;
        v142 = 2048;
        v143 = v74;
        v144 = 2048;
        v145 = v72;
        v146 = 1024;
        v147 = v71;
        v148 = 2048;
        v149 = v75;
        v150 = 2048;
        v151 = v76;
        v152 = 2048;
        v153 = v73;
        v154 = 2048;
        v155 = v78;
        v156 = 1024;
        v157 = v77;
        v158 = 1024;
        v159 = v80;
        v160 = 1024;
        v161 = v81;
        v162 = 2048;
        v163 = v84;
        v164 = 2048;
        v165 = v83;
        v166 = 1024;
        v167 = v82;
        _os_log_impl(&dword_22E0FF000, v46, OS_LOG_TYPE_DEFAULT, "Sampler, wrapMode=%s, compareFunc=%s, total=%u, minMipFilter=%u, maxMipFilter=%u, avgMipFilter=%f, totalMipFilter=%llu, countMipFilter=%u, minTriLinearFilter=%u, maxTriLinearFilter=%u, avgTriLinearFilter=%f, totalTriLinearFilter=%llu, countTriLinearFilter=%u, minNormalizedCoords=%u, maxNormalizedCoords=%u, avgNormalizedCoords=%f, totalNormalizedCoords=%llu, countNormalizedCoords=%u, minMaxAniso=%u, maxMaxAniso=%u, avgMaxAniso=%f, totalMaxAniso=%llu, countMaxAniso=%u, minLodMinClamp=%.2f, maxLodMinClamp=%.2f, avgLodMinClamp=%f, totalLodMinClamp=%.2f, countLodMinClamp=%u, minLodMaxClamp=%.2f, maxLodMaxClamp=%.2f, avgLodMaxClamp=%f, totalLodMaxClamp=%.2f, countLodMaxClamp=%u, minLodAvg=%u, maxLodAvg=%u, avgLodAvg=%f, totalLodAvg=%llu, countLodAvg=%u", buf, 0x136u);
      }

LABEL_39:
      ++v4;
      v5 += 160;
    }

    while (v5);
    v3 += 1280;
    ++v91;
  }

  while (v91 != (MTLSamplerAddressModeClampToBorderColor|MTLSamplerAddressModeRepeat));
}

void sub_22E122B80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E122C2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_22E124FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1250C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, void *a2)
{

  return [a2 baseObject];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<NSData *,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_22E12ABD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E12ACE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E12AED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E12B0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E12B1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E12B724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E12B7E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E12B858(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E12B8D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto28MTLIntersectionFunctionTable}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E12B948(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id unwrapAccelerationStructureDescriptor(void *a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v1 = [a1 copy];
  v2 = objc_opt_class();
  v39 = v1;
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v3 = [v1 geometryDescriptors];
    v4 = [v3 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v57;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v57 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v56 + 1) + 8 * i);
          [v8 setPrimitiveDataBuffer:{objc_msgSend(objc_msgSend(v8, "primitiveDataBuffer"), "baseObject")}];
          v9 = objc_opt_class();
          if ([v9 isSubclassOfClass:objc_opt_class()])
          {
            [v8 setVertexBuffer:{objc_msgSend(objc_msgSend(v8, "vertexBuffer"), "baseObject")}];
            [v8 setIndexBuffer:{objc_msgSend(objc_msgSend(v8, "indexBuffer"), "baseObject")}];
            [v8 setTransformationMatrixBuffer:{objc_msgSend(objc_msgSend(v8, "transformationMatrixBuffer"), "baseObject")}];
          }

          else
          {
            v10 = objc_opt_class();
            if ([v10 isSubclassOfClass:objc_opt_class()])
            {
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v11 = [v8 vertexBuffers];
              v12 = [v11 countByEnumeratingWithState:&v52 objects:v63 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v53;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v53 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    [*(*(&v52 + 1) + 8 * j) setBuffer:{objc_msgSend(objc_msgSend(*(*(&v52 + 1) + 8 * j), "buffer"), "baseObject")}];
                  }

                  v13 = [v11 countByEnumeratingWithState:&v52 objects:v63 count:16];
                }

                while (v13);
              }

              [v8 setIndexBuffer:{objc_msgSend(objc_msgSend(v8, "indexBuffer"), "baseObject")}];
              [v8 setTransformationMatrixBuffer:{objc_msgSend(objc_msgSend(v8, "transformationMatrixBuffer"), "baseObject")}];
            }

            else
            {
              v16 = objc_opt_class();
              if ([v16 isSubclassOfClass:objc_opt_class()])
              {
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v17 = [v8 boundingBoxBuffers];
                v18 = [v17 countByEnumeratingWithState:&v48 objects:v62 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v49;
                  do
                  {
                    for (k = 0; k != v19; ++k)
                    {
                      if (*v49 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      [*(*(&v48 + 1) + 8 * k) setBuffer:{objc_msgSend(objc_msgSend(*(*(&v48 + 1) + 8 * k), "buffer"), "baseObject")}];
                    }

                    v19 = [v17 countByEnumeratingWithState:&v48 objects:v62 count:16];
                  }

                  while (v19);
                }
              }

              else
              {
                v22 = objc_opt_class();
                if ([v22 isSubclassOfClass:objc_opt_class()])
                {
                  [v8 setBoundingBoxBuffer:{objc_msgSend(objc_msgSend(v8, "boundingBoxBuffer"), "baseObject")}];
                }

                else
                {
                  v23 = objc_opt_class();
                  if ([v23 isSubclassOfClass:objc_opt_class()])
                  {
                    [v8 setControlPointBuffer:{objc_msgSend(objc_msgSend(v8, "controlPointBuffer"), "baseObject")}];
                    [v8 setRadiusBuffer:{objc_msgSend(objc_msgSend(v8, "radiusBuffer"), "baseObject")}];
                    [v8 setIndexBuffer:{objc_msgSend(objc_msgSend(v8, "indexBuffer"), "baseObject")}];
                  }

                  else
                  {
                    v24 = objc_opt_class();
                    if ([v24 isSubclassOfClass:objc_opt_class()])
                    {
                      v46 = 0u;
                      v47 = 0u;
                      v44 = 0u;
                      v45 = 0u;
                      v25 = [v8 controlPointBuffers];
                      v26 = [v25 countByEnumeratingWithState:&v44 objects:v61 count:16];
                      if (v26)
                      {
                        v27 = v26;
                        v28 = *v45;
                        do
                        {
                          for (m = 0; m != v27; ++m)
                          {
                            if (*v45 != v28)
                            {
                              objc_enumerationMutation(v25);
                            }

                            [*(*(&v44 + 1) + 8 * m) setBuffer:{objc_msgSend(objc_msgSend(*(*(&v44 + 1) + 8 * m), "buffer"), "baseObject")}];
                          }

                          v27 = [v25 countByEnumeratingWithState:&v44 objects:v61 count:16];
                        }

                        while (v27);
                      }

                      v42 = 0u;
                      v43 = 0u;
                      v40 = 0u;
                      v41 = 0u;
                      v30 = [v8 radiusBuffers];
                      v31 = [v30 countByEnumeratingWithState:&v40 objects:v60 count:16];
                      if (v31)
                      {
                        v32 = v31;
                        v33 = *v41;
                        do
                        {
                          for (n = 0; n != v32; ++n)
                          {
                            if (*v41 != v33)
                            {
                              objc_enumerationMutation(v30);
                            }

                            [*(*(&v40 + 1) + 8 * n) setBuffer:{objc_msgSend(objc_msgSend(*(*(&v40 + 1) + 8 * n), "buffer"), "baseObject")}];
                          }

                          v32 = [v30 countByEnumeratingWithState:&v40 objects:v60 count:16];
                        }

                        while (v32);
                      }

                      [v8 setIndexBuffer:{objc_msgSend(objc_msgSend(v8, "indexBuffer"), "baseObject")}];
                    }
                  }
                }
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v35 = objc_opt_class();
    if ([v35 isSubclassOfClass:objc_opt_class()])
    {
      [v1 setInstanceDescriptorBuffer:{objc_msgSend(objc_msgSend(v1, "instanceDescriptorBuffer"), "baseObject")}];
      if ([objc_msgSend(v1 "instancedAccelerationStructures")])
      {
        v36 = 0;
        do
        {
          [objc_msgSend(v1 "instancedAccelerationStructures")];
          ++v36;
        }

        while (v36 < [objc_msgSend(v1 "instancedAccelerationStructures")]);
      }

      [v1 setMotionTransformBuffer:{objc_msgSend(objc_msgSend(v1, "motionTransformBuffer"), "baseObject")}];
    }

    else
    {
      v37 = objc_opt_class();
      if ([v37 isSubclassOfClass:objc_opt_class()])
      {
        [v1 setInstanceDescriptorBuffer:{objc_msgSend(objc_msgSend(v1, "instanceDescriptorBuffer"), "baseObject")}];
        [v1 setInstanceCountBuffer:{objc_msgSend(objc_msgSend(v1, "instanceCountBuffer"), "baseObject")}];
        [v1 setMotionTransformBuffer:{objc_msgSend(objc_msgSend(v1, "motionTransformBuffer"), "baseObject")}];
        [v1 setMotionTransformCountBuffer:{objc_msgSend(objc_msgSend(v1, "motionTransformCountBuffer"), "baseObject")}];
      }
    }
  }

  return v39;
}

void sub_22E12DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E12DB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLAccelerationStructureTypeFromDescriptor(MTLAccelerationStructureDescriptor *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

__CFString *MTLAccelerationStructureStringFromType(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"MTLInstanceAccelerationStructure";
  }

  if (a1 == 1)
  {
    return @"MTLPrimitiveAccelerationStructure";
  }

  else
  {
    return v1;
  }
}

void MTLGPUDebugSetBufferForResourceHandle(MTLGPUDebugDevice *a1, uint64_t a2, MTLGPUDebugBuffer *a3)
{
  v6 = (a1 + 296);
  std::mutex::lock((a1 + 296));
  [v6[15] setArgumentBuffer:v6[16] offset:{objc_msgSend(v6[15], "encodedLength") * a2}];
  v7 = v6[15];
  [v7 setBuffer:-[MTLToolsObject baseObject](a3 offset:"baseObject") atIndex:{-[MTLGPUDebugBuffer offset](a3, "offset"), 0}];
  v8 = [v7 constantDataAtIndex:1];
  *v8 = [(MTLGPUDebugBuffer *)a3 bufferEndAddress];
  std::mutex::unlock(v6);
  *(*(a1 + 48) + 8 * a2) = a3;
}

MTLGPUDebugTexture *CreateTexture(void *a1, void *a2)
{
  v4 = [[MTLGPUDebugTexture alloc] initWithTextureView:a1 parentBuffer:a2 heap:0 device:a2[3]];

  [a2 addView:{-[MTLToolsTexture gpuResourceID](v4, "gpuResourceID")}];
  [(MTLGPUDebugTexture *)v4 setParentViewable:a2];
  return v4;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2, void *a3)
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

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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
      if (result[2] == v3)
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

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *DebugCompileOptions(MTLGPUDebugDevice *a1, MTLCompileOptions *a2)
{
  if (a2)
  {
    v2 = [(MTLToolsDevice *)a1 unwrapMTLCompileOptions:a2];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277CD6D08]);
  }

  v3 = v2;
  if ([v2 additionalCompilerArguments])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ -debug-info-kind=line-tables-only", objc_msgSend(v3, "additionalCompilerArguments")];
  }

  else
  {
    v4 = @"-debug-info-kind=line-tables-only";
  }

  [v3 setAdditionalCompilerArguments:v4];
  return v3;
}

uint64_t MTLGPUDebugLog(uint64_t a1, uint64_t a2)
{
  if (MTLGPUDebugLog(void)::onceToken != -1)
  {
    MTLGPUDebugLog();
  }

  return MTLGPUDebugLog(void)::logObject;
}

os_log_t ___Z14MTLGPUDebugLogv_block_invoke()
{
  result = os_log_create("com.apple.Metal", "GPUDebug");
  MTLGPUDebugLog(void)::logObject = result;
  return result;
}

void GPUDebugBufferDescriptorHeap::init(GPUDebugBufferDescriptorHeap *this, MTLGPUDebugDevice *a2, unsigned int a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CD6C70]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_autoreleasePoolPush();
  [v6 setIndex:0];
  [v6 setAccess:1];
  [v6 setArrayLength:1];
  [v6 setDataType:60];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  [v6 setIndex:1];
  [v6 setAccess:0];
  [v6 setArrayLength:1];
  [v6 setDataType:60];
  [v7 addObject:{objc_msgSend(v6, "copy")}];
  objc_autoreleasePoolPop(v8);
  v9 = objc_autoreleasePoolPush();
  *(this + 15) = [-[MTLToolsObject baseObject](a2 "baseObject")];
  objc_autoreleasePoolPop(v9);

  *(this + 16) = -[MTLGPUDebugDevice newInternalBufferWithLength:options:](a2, "newInternalBufferWithLength:options:", [*(this + 15) encodedLength] * a3, 256);
  if (MTLGPUDebugLog(void)::onceToken != -1)
  {
    MTLGPUDebugLog();
  }

  if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_DEBUG))
  {
    GPUDebugBufferDescriptorHeap::init(this + 16);
  }

  *(this + 14) = 0;
  [*(this + 15) setArgumentBuffer:*(this + 16) offset:0];
  [[MTLGPUDebugBuffer alloc] initWithBuffer:*(a2 + 84) device:a2];
  std::mutex::lock(this);
  v10 = *(this + 15);
  v11 = *(this + 16);
  [v10 encodedLength];
  [v10 setArgumentBuffer:v11 offset:0];
  v12 = *(this + 15);
  [v12 setBuffer:*(a2 + 84) offset:0 atIndex:0];
  *[v12 constantDataAtIndex:1] = -1;
  std::mutex::unlock(this);
}

unint64_t GPUDebugBufferDescriptorHeap::createHandle(std::mutex *this, MTLGPUDebugBuffer *a2)
{
  std::mutex::lock(this);
  v4 = *this[1].__m_.__opaque;
  if (this[1].__m_.__sig == v4)
  {
    v5 = *&this[1].__m_.__opaque[40];
    *&this[1].__m_.__opaque[40] = v5 + 1;
    if (MTLGPUDebugLog(void)::onceToken != -1)
    {
      MTLGPUDebugLog();
    }

    if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_DEBUG))
    {
      GPUDebugBufferDescriptorHeap::createHandle();
    }

    v6 = *&this[1].__m_.__opaque[16];
    if (v5 >= (*&this[1].__m_.__opaque[24] - v6) >> 3)
    {
      std::vector<MTLGPUDebugBuffer *>::resize(&this[1].__m_.__opaque[16], v5 + 1);
      v6 = *&this[1].__m_.__opaque[16];
    }

    *(v6 + 8 * v5) = a2;
  }

  else
  {
    v5 = *(v4 - 4);
    *(*&this[1].__m_.__opaque[16] + 8 * v5) = a2;
    *this[1].__m_.__opaque -= 4;
  }

  std::mutex::unlock(this);
  return v5;
}

void std::vector<MTLGPUDebugBuffer *>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<MTLGPUDebugBuffer *>::__append(result, a2 - v2);
  }
}

unint64_t GPUDebugBufferDescriptorHeap::createHandle(std::mutex *this)
{
  std::mutex::lock(this);
  v2 = *this[1].__m_.__opaque;
  if (this[1].__m_.__sig == v2)
  {
    v3 = *&this[1].__m_.__opaque[40];
    *&this[1].__m_.__opaque[40] = v3 + 1;
    if (MTLGPUDebugLog(void)::onceToken != -1)
    {
      MTLGPUDebugLog();
    }

    if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_DEBUG))
    {
      GPUDebugBufferDescriptorHeap::createHandle();
    }

    if (v3 >= (*&this[1].__m_.__opaque[24] - *&this[1].__m_.__opaque[16]) >> 3)
    {
      std::vector<MTLGPUDebugBuffer *>::resize(&this[1].__m_.__opaque[16], v3 + 1);
    }
  }

  else
  {
    v3 = *(v2 - 4);
    *this[1].__m_.__opaque = v2 - 4;
  }

  std::mutex::unlock(this);
  return v3;
}

void GPUDebugBufferDescriptorHeap::freeBufferHandle(std::mutex *this, uint64_t a2)
{
  std::mutex::lock(this);
  *(*&this[1].__m_.__opaque[16] + 8 * a2) = 0;
  v5 = *this[1].__m_.__opaque;
  v4 = *&this[1].__m_.__opaque[8];
  if (v5 >= v4)
  {
    sig = this[1].__m_.__sig;
    v8 = v5 - sig;
    v9 = (v5 - sig) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - sig;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&this[1], v13);
    }

    v14 = (v5 - sig) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, sig, v8);
    v17 = this[1].__m_.__sig;
    this[1].__m_.__sig = v16;
    *this[1].__m_.__opaque = v6;
    *&this[1].__m_.__opaque[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  *this[1].__m_.__opaque = v6;

  std::mutex::unlock(this);
}

void GPUDebugConstantBufferCache::getOrCreateBuffer(uint64_t *__return_ptr a1@<X8>, GPUDebugConstantBufferCache *this@<X0>, NSData *a3@<X1>)
{
  std::mutex::lock((this + 8));
  *this += [(NSData *)a3 length];
  if (MTLGPUDebugLog(void)::onceToken != -1)
  {
    MTLGPUDebugLog();
  }

  if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_DEBUG))
  {
    GPUDebugConstantBufferCache::getOrCreateBuffer();
  }

  v6 = *(this + 14);
  if ((v6[286] & 0x80) != 0)
  {
    v7 = [v6 newBufferWithLength:-[NSData length](a3 options:{"length"), 0}];
  }

  else
  {
    v7 = [v6 newInternalBufferWithLength:-[NSData length](a3 options:{"length"), 0}];
  }

  v8 = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN27GPUDebugConstantBufferCache17getOrCreateBufferEP6NSData_block_invoke;
  v9[3] = &unk_2787B3AB8;
  v9[4] = v7;
  [(NSData *)a3 enumerateByteRangesUsingBlock:v9];
  a1[4] = 0;
  a1[5] = v8;
  std::mutex::unlock((this + 8));
}

void *___ZN27GPUDebugConstantBufferCache17getOrCreateBufferEP6NSData_block_invoke(uint64_t a1, const void *a2, uint64_t a3, size_t a4)
{
  v6 = ([*(a1 + 32) contents] + a3);

  return memcpy(v6, a2, a4);
}

void GPUDebugConstantBufferCache::releaseBuffer(GPUDebugConstantBufferCache *this, KeyBufferPair *a2)
{
  if (a2->buffer)
  {
    std::mutex::lock((this + 8));
    *this -= [(MTLBuffer *)a2->buffer length];

    a2->buffer = 0;

    std::mutex::unlock((this + 8));
  }
}

void GlobalResidentBufferList::useBuffers(GlobalResidentBufferList *this, MTLGPUDebugRenderCommandEncoder *a2)
{
  if (*&a2->_tileStageActive != *(this + 2))
  {
    std::mutex::lock((this + 16));
    for (i = *(this + 11); i != (this + 80); i = *(i + 8))
    {
      v5 = *(i + 16);
      [(MTLGPUDebugRenderCommandEncoder *)a2 useResource:v5 usage:1 stages:31];
      [(MTLToolsCommandEncoder *)a2 addRetainedObject:v5];
    }

    *&a2->_tileStageActive = *(this + 2);

    std::mutex::unlock((this + 16));
  }
}

void GlobalResidentBufferList::useBuffers(GlobalResidentBufferList *this, MTLGPUDebugComputeCommandEncoder *a2)
{
  if (*&a2->_enableUseResourceValidation != *(this + 2))
  {
    std::mutex::lock((this + 16));
    for (i = *(this + 11); i != (this + 80); i = *(i + 8))
    {
      v5 = *(i + 16);
      [(MTLGPUDebugComputeCommandEncoder *)a2 useResource:v5 usage:1];
      [(MTLToolsCommandEncoder *)a2 addRetainedObject:v5];
    }

    *&a2->_enableUseResourceValidation = *(this + 2);

    std::mutex::unlock((this + 16));
  }
}

void GlobalResidentBufferList::addBuffer(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 16));
  ++*(a1 + 8);
  [*(*a1 + 680) addAllocation:{objc_msgSend(a2, "baseObject")}];
  [*(*a1 + 680) commit];
  operator new();
}

void GlobalResidentBufferList::removeBuffer(uint64_t a1, void *a2)
{
  v4 = a2;
  std::mutex::lock((a1 + 16));
  [*(*a1 + 680) removeAllocation:{objc_msgSend(a2, "baseObject")}];
  [*(*a1 + 680) commit];
  std::list<objc_object  {objcproto9MTLBuffer}*>::remove((a1 + 80), &v4);
  std::mutex::unlock((a1 + 16));
}

void *std::list<objc_object  {objcproto9MTLBuffer}*>::remove(void *a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<objc_object  {objcproto9MTLBuffer}*>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<objc_object  {objcproto9MTLBuffer}*>::clear(v10);
}

void sub_22E130BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<objc_object  {objcproto9MTLBuffer}*>::clear(va);
  _Unwind_Resume(a1);
}

void sub_22E131964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LogInstrumentationFailures(MTLGPUDebugImageData *a1, MTLDebugInstrumentationData *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    [(MTLGPUDebugImageData *)a1 functionType];
    v4 = [MTLFunctionTypeString() UTF8String];
    if ([(MTLDebugInstrumentationData *)a2 hasArgumentLimitsInstrumentationFailures])
    {
      if (MTLGPUDebugLog(void)::onceToken != -1)
      {
        MTLGPUDebugLog();
      }

      v5 = MTLGPUDebugLog(void)::logObject;
      if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = v4;
        v16 = 2080;
        v17 = [(NSString *)[(MTLGPUDebugImageData *)a1 loadedImageName] UTF8String];
        v6 = "Fatal failure when instrumenting %s %s:\n\tFunction is not instrumented and faults will not be detected.";
        v7 = v5;
        v8 = 22;
LABEL_19:
        _os_log_impl(&dword_22E0FF000, v7, OS_LOG_TYPE_INFO, v6, &v14, v8);
      }
    }

    else if (([(MTLDebugInstrumentationData *)a2 hasArgumentBufferInstrumentationFailures]& 1) != 0 || [(MTLDebugInstrumentationData *)a2 hasGlobalConstantsInstrumentationFailures])
    {
      if (MTLGPUDebugLog(void)::onceToken != -1)
      {
        MTLGPUDebugLog();
      }

      v9 = MTLGPUDebugLog(void)::logObject;
      if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_INFO))
      {
        v10 = [(NSString *)[(MTLGPUDebugImageData *)a1 loadedImageName] UTF8String];
        if ([(MTLDebugInstrumentationData *)a2 hasArgumentBufferInstrumentationFailures])
        {
          v11 = "\n\tFaults from argument buffers will not be detected.";
        }

        else
        {
          v11 = "";
        }

        v12 = [(MTLDebugInstrumentationData *)a2 hasGlobalConstantsInstrumentationFailures];
        v14 = 136315906;
        v13 = "\n\tFaults from reading global constant variables will not be detected.";
        v15 = v4;
        if (!v12)
        {
          v13 = "";
        }

        v16 = 2080;
        v17 = v10;
        v18 = 2080;
        v19 = v11;
        v20 = 2080;
        v21 = v13;
        v6 = "Partial failure when instrumenting %s %s:%s%s";
        v7 = v9;
        v8 = 42;
        goto LABEL_19;
      }
    }
  }
}

uint64_t MTLGPUDebugSetValidationChecksOptions(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = 1;
  *c.count = "all";
  *c.hash = 1;
  *&c.hash[2] = "none";
  *&c.hash[4] = 2;
  *&v41 = 0;
  md = 0uLL;
  std::vector<std::pair<char const*,MTLShaderValidationState>>::__init_with_size[abi:ne200100]<std::pair<char const*,MTLShaderValidationState> const*,std::pair<char const*,MTLShaderValidationState> const*>(&md, &c, &c.hash[6], 2uLL);
  v11 = MTLGetEnvCase<MTLShaderValidationState>("MTL_SHADER_VALIDATION_DEFAULT_STATE", &v36, &md);
  if (md)
  {
    *(&md + 1) = md;
    operator delete(md);
  }

  if ((v11 & 1) == 0)
  {
    v36 = 1;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = objc_opt_new();
  [v12 appendString:@"[METAL SHADER VALIDATION] Processing new pipeline"];
  CC_SHA256_Init(&c);
  v13 = [a2 baseObject];
  v14 = [v13 bitCodeHash];
  data = [v13 bitcodeType];
  CC_SHA256_Update(&c, v14, 8u);
  CC_SHA256_Update(&c, [objc_msgSend(v13 "name")], objc_msgSend(objc_msgSend(v13, "name"), "length"));
  CC_SHA256_Update(&c, &data, 1u);
  if (a3)
  {
    v15 = [a3 baseObject];
    v16 = [v15 bitCodeHash];
    LOBYTE(md) = [v15 bitcodeType];
    CC_SHA256_Update(&c, v16, 8u);
    CC_SHA256_Update(&c, [objc_msgSend(v15 "name")], objc_msgSend(objc_msgSend(v15, "name"), "length"));
    CC_SHA256_Update(&c, &md, 1u);
  }

  if (a4)
  {
    v17 = [a4 baseObject];
    v18 = [v17 bitCodeHash];
    LOBYTE(md) = [v17 bitcodeType];
    CC_SHA256_Update(&c, v18, 8u);
    CC_SHA256_Update(&c, [objc_msgSend(v17 "name")], objc_msgSend(objc_msgSend(v17, "name"), "length"));
    CC_SHA256_Update(&c, &md, 1u);
  }

  if (a5)
  {
    CC_SHA256_Update(&c, [a5 UTF8String], objc_msgSend(a5, "length"));
  }

  CC_SHA256_Final(&md, &c);
  v37 = md;
  v38 = v41;
  v19 = _MTLRequestHashToString();
  if (MTLGetEnvDefault())
  {
    if (a5)
    {
      [v12 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\npipeline label: %@", a5)}];
    }

    [v12 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\n\t{ function1: %@ - label: %@ }", objc_msgSend(a2, "name"), objc_msgSend(a2, "label"))}];
    if (a3)
    {
      [v12 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\n\t{ function2: %@ - label: %@ }", objc_msgSend(a3, "name"), objc_msgSend(a3, "label"))}];
    }

    if (a4)
    {
      [v12 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\n\t{ function3: %@ - label: %@ }", objc_msgSend(a4, "name"), objc_msgSend(a4, "label"))}];
    }

    [v12 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"\n\t{ Shader Validation UID: %@ }", v19)}];
  }

  v30 = v12;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v32 = ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDevicePU22objcproto11MTLFunction11objc_objectS2_S2_P8NSString19MTLShaderValidationS5_Rm_block_invoke_2;
  v33 = &unk_2787B3BF8;
  v34 = v12;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v28 = ___ZL37MTLGPUDebugSetValidationChecksOptionsP17MTLGPUDebugDevicePU22objcproto11MTLFunction11objc_objectS2_S2_P8NSString19MTLShaderValidationS5_Rm_block_invoke_3;
  v29 = &unk_2787B3BF8;
  v20 = *(a1 + 688);
  if (!v20)
  {
LABEL_29:
    v21 = *(a1 + 696);
    if (!v21)
    {
      goto LABEL_40;
    }

    if (!a5)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (!a5 || ([*(a1 + 688) containsObject:a5] & 1) == 0)
  {
    if (v19)
    {
      LODWORD(v20) = [v20 containsObject:v19];
    }

    else
    {
      LODWORD(v20) = 0;
    }

    goto LABEL_29;
  }

  v21 = *(a1 + 696);
  if (!v21)
  {
    goto LABEL_43;
  }

  LODWORD(v20) = 1;
LABEL_31:
  if ([v21 containsObject:a5])
  {
    v22 = 1;
    goto LABEL_35;
  }

LABEL_33:
  if (!v19)
  {
LABEL_40:
    if (v20)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

  v22 = [v21 containsObject:v19];
LABEL_35:
  if (v20 && v22)
  {
    [v12 appendString:@"\nWarning: Pipeline requested to have shader validation checks both enabled and disabled."];
    if (v36 != 2)
    {
      if (v36 == 1)
      {
        goto LABEL_64;
      }

LABEL_65:
      *a7 |= 0x800000000uLL;
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (v20)
  {
LABEL_43:
    if (a6 == 2)
    {
      [v12 appendString:@"\nWarning: Pipeline requested to have shader validation checks both enabled and disabled."];
    }

    if (v36 == 1)
    {
    }

    goto LABEL_64;
  }

  if (v22)
  {
    if (a6 == 1)
    {
      [v12 appendString:@"\nWarning: Pipeline requested to have shader validation checks both enabled and disabled."];
    }

    if (v36 == 2)
    {
    }

    goto LABEL_66;
  }

LABEL_54:
  if (a6 == 2)
  {
    if (v36 == 2)
    {
    }

    goto LABEL_66;
  }

  if (a6 == 1)
  {
    if (v36 == 1)
    {
    }

    goto LABEL_64;
  }

  if (v36 == 2)
  {
LABEL_66:
    v28(v27, a7);
    goto LABEL_67;
  }

  if (v36 != 1)
  {
    goto LABEL_65;
  }

LABEL_64:
  v32(v31, a7);
LABEL_67:
  if (MTLGPUDebugLog(void)::onceToken != -1)
  {
    [MTLGPUDebugDevice initWithBaseObject:parent:];
  }

  if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_DEBUG))
  {
    MTLGPUDebugSetValidationChecksOptions(v12);
  }

  return v19;
}

void sub_22E133658(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *MTLGetEnvCase<MTLBoundsCheck::FailMode>(const char *a1, _DWORD *a2, const char ***a3)
{
  result = getenv(a1);
  if (result)
  {
    v7 = *a3;
    v8 = a3[1];
    if (*a3 == v8)
    {
LABEL_6:
      v10 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "Invalid option for %s, valid options are:\n", a1);
      v11 = *a3;
      v12 = a3[1];
      if (*a3 != v12)
      {
        do
        {
          v13 = *v11;
          v11 += 2;
          fprintf(*v10, "\t%s\n", v13);
        }

        while (v11 != v12);
      }

      return 0;
    }

    else
    {
      v9 = result;
      while (strcmp(v9, *v7))
      {
        v7 += 2;
        if (v7 == v8)
        {
          goto LABEL_6;
        }
      }

      *a2 = *(v7 + 2);
      return 1;
    }
  }

  return result;
}

uint64_t *std::vector<std::pair<char const*,MTLBoundsCheck::FailMode>>::__init_with_size[abi:ne200100]<std::pair<char const*,MTLBoundsCheck::FailMode> const*,std::pair<char const*,MTLBoundsCheck::FailMode> const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<char const*,MTLBoundsCheck::FailMode>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22E1377B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<char const*,MTLBoundsCheck::FailMode>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MTLBoundsCheck::FailMode>>>(a1, a2);
  }

  std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char const*,MTLBoundsCheck::FailMode>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t MTLGPUDebugParsePerPSOList(const std::string *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  if (MTLGPUDebugLog(void)::onceToken != -1)
  {
    MTLGPUDebugLog();
  }

  v4 = MTLGPUDebugLog(void)::logObject;
  if (os_log_type_enabled(MTLGPUDebugLog(void)::logObject, OS_LOG_TYPE_DEBUG))
  {
    MTLGPUDebugParsePerPSOList();
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16, a1, 24);
  if (!*(&v18[0].__locale_ + *(v16[0] - 24)))
  {
    *&v5 = 138412290;
    v12 = v5;
    while (1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &v13, 0x2Cu);
      if (SHIBYTE(v15) < 0)
      {
        break;
      }

      if (HIBYTE(v15))
      {
        v9 = &v13;
LABEL_18:
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v9, v12}];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = v12;
          v22 = v10;
          _os_log_debug_impl(&dword_22E0FF000, v4, OS_LOG_TYPE_DEBUG, "[METAL SHADER VALIDATION] Storing PSO: %@", buf, 0xCu);
        }

        if (v15 >= 0)
        {
          v11 = &v13;
        }

        else
        {
          v11 = v13;
        }

        [v2 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v11)}];
        if ((SHIBYTE(v15) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_25:
      if (*(&v18[0].__locale_ + *(v16[0] - 24)))
      {
        goto LABEL_9;
      }
    }

    if (v14)
    {
      v9 = v13;
      goto LABEL_18;
    }

LABEL_24:
    operator delete(v13);
    goto LABEL_25;
  }

LABEL_9:
  v6 = [v2 copy];
  v16[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16[2] = v7;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x2318E4900](&v20);
  return v6;
}

void sub_22E137B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15, MEMORY[0x277D82818]);
  MEMORY[0x2318E4900](va);
  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, v3);
  return a1;
}

void sub_22E137F2C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2318E4900](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2318E4830](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_22E1380B8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x22E138078);
  }

  __cxa_rethrow();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2318E48C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_22E1381F4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<indirectCommandBufferPipelineInit(MTLGPUDebugDevice *)::$_0 &&>>(id ****a1)
{
  v1 = **a1;
  v2 = [**v1 baseObject];
  v3 = [v2 newLibraryWithURL:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] error:{"bundleWithIdentifier:", @"com.apple.gpusw.MetalTools", "URLForResource:withExtension:", @"MTLGPUDebugICBSupport", @"metallib", 0}];
  v4 = [v3 newFunctionWithName:@"ICB_Inherit_PSO_Vertex"];
  v5 = [v3 newFunctionWithName:@"ICB_Inherit_None_Vertex"];
  v6 = [v3 newFunctionWithName:@"ICB_Inherit_Buffers_Vertex"];
  v7 = [v3 newFunctionWithName:@"ICB_Inherit_Both_Vertex"];
  v8 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v8 setRasterizationEnabled:0];
  [v8 setSupportIndirectCommandBuffers:1];
  v17 = v4;
  [v8 setVertexFunction:v4];
  *(**v1 + 93) = [v2 newRenderPipelineStateWithDescriptor:v8 error:0];
  v16 = v5;
  [v8 setVertexFunction:v5];
  *(**v1 + 94) = [v2 newRenderPipelineStateWithDescriptor:v8 error:0];
  [v8 setVertexFunction:v7];
  *(**v1 + 96) = [v2 newRenderPipelineStateWithDescriptor:v8 error:0];
  v15 = v6;
  [v8 setVertexFunction:v6];
  *(**v1 + 95) = [v2 newRenderPipelineStateWithDescriptor:v8 error:0];
  if ([**v1 supportsMeshShadersInICB])
  {
    v9 = [v3 newFunctionWithName:@"ICB_Inherit_Both_Mesh"];
    [v8 setVertexFunction:v9];
    *(**v1 + 97) = [v2 newRenderPipelineStateWithDescriptor:v8 error:0];
  }

  v10 = [v3 newFunctionWithName:@"ICB_Inherit_PSO_Kernel"];
  v11 = [v3 newFunctionWithName:@"ICB_Inherit_None_Kernel"];
  v12 = [v3 newFunctionWithName:@"ICB_Inherit_Buffers_Kernel"];
  v13 = [v3 newFunctionWithName:@"ICB_Inherit_Both_Kernel"];
  v14 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v14 setSupportIndirectCommandBuffers:1];
  [v14 setComputeFunction:v10];
  *(**v1 + 99) = [v2 newComputePipelineStateWithDescriptor:v14 options:0 reflection:0 error:0];
  [v14 setComputeFunction:v11];
  *(**v1 + 100) = [v2 newComputePipelineStateWithDescriptor:v14 options:0 reflection:0 error:0];
  [v14 setComputeFunction:v12];
  *(**v1 + 101) = [v2 newComputePipelineStateWithDescriptor:v14 options:0 reflection:0 error:0];
  [v14 setComputeFunction:v13];
  *(**v1 + 102) = [v2 newComputePipelineStateWithDescriptor:v14 options:0 reflection:0 error:0];

  v18 = objc_alloc_init(MEMORY[0x277CD6D60]);
  [v18 setDepthWriteEnabled:0];
  [v18 setDepthCompareFunction:7];
  [objc_msgSend(v18 "frontFaceStencil")];
  [objc_msgSend(v18 "frontFaceStencil")];
  [objc_msgSend(v18 "backFaceStencil")];
  [objc_msgSend(v18 "backFaceStencil")];
  *(**v1 + 98) = [v2 newDepthStencilStateWithDescriptor:v18];
}

void *std::__list_imp<objc_object  {objcproto9MTLBuffer}*>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::vector<MTLGPUDebugBuffer *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t std::list<objc_object  {objcproto9MTLBuffer}*>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<-[MTLGPUDebugDevice instrumentationHeapInit]::$_1 &&>>(MTLGPUDebugDevice ****a1)
{
  v1 = **a1;
  MetalBufferHeap::init(*v1 + 112, *v1, 0x200000);
  ResourceUsageTable::alloc((*v1 + 432), *v1, (*(*v1 + 70) << 19));
  *(*v1 + 70) = *v1;
  v2 = objc_alloc_init(MEMORY[0x277CD6FA0]);
  [v2 setLabel:@"Device Scoped Allocations Residency Set"];
  [v2 setInitialCapacity:42];
  v3 = 0;
  *(*v1 + 85) = [-[MTLToolsObject baseObject](*v1 "baseObject")];
  GPUDebugBufferDescriptorHeap::init((*v1 + 296), *v1, 0xFFFFFu);
  [*(*v1 + 85) addAllocation:*(*v1 + 53)];
  [*(*v1 + 85) addAllocation:*(*v1 + 54)];
  [*(*v1 + 85) commit];

  *(*v1 + 71) = *v1;
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ60__MTLGPUDebugDevice_newDynamicLibraryWithURL_options_error__E4__15EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ59__MTLGPUDebugDevice_newDynamicLibraryWithDescriptor_error__E4__16EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ45__MTLGPUDebugDevice_newDynamicLibrary_error__E4__17EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ63__MTLGPUDebugDevice_newDynamicLibrary_computeDescriptor_error__E4__18EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

MTLGPUDebugDynamicLibrary *___ZZL18WrapDynamicLibraryIZ83__MTLGPUDebugDevice_loadDynamicLibrariesForFunction_insertLibraries_options_error__E4__19EP25MTLGPUDebugDynamicLibraryP17MTLGPUDebugDeviceT_ENKUlS5_E_clIPU28objcproto17MTLDynamicLibrary11objc_objectEEDaS5__block_invoke(uint64_t a1)
{
  v2 = [MTLGPUDebugDynamicLibrary alloc];
  v3 = *(a1 + 32);
  v4 = **(a1 + 40);

  return [(MTLGPUDebugDynamicLibrary *)v2 initWithDynamicLibrary:v3 device:v4];
}

void *unwrapLinkedFunctions(MTLLinkedFunctions *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277CD6EB8] linkedFunctions];
  [v2 setFunctions:{unwrapArray(-[MTLLinkedFunctions functions](a1, "functions"))}];
  [v2 setBinaryFunctions:{unwrapArray(-[MTLLinkedFunctions binaryFunctions](a1, "binaryFunctions"))}];
  [v2 setPrivateFunctions:{unwrapArray(-[MTLLinkedFunctions privateFunctions](a1, "privateFunctions"))}];
  if ([(MTLLinkedFunctions *)a1 groups])
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(MTLLinkedFunctions *)a1 groups];
    v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 setValue:unwrapArray(-[NSDictionary objectForKeyedSubscript:](-[MTLLinkedFunctions groups](a1 forKey:{"groups"), "objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * v8))), *(*(&v10 + 1) + 8 * v8)}];
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [v2 setGroups:v3];
  }

  return v2;
}

void *unwrapArray(NSArray *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](a1, "count")}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:{objc_msgSend(*(*(&v8 + 1) + 8 * i), "baseObject")}];
      }

      v4 = [(NSArray *)a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

void sub_22E146548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E14666C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E146810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto17MTLFunctionHandle}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E1468C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto9MTLBuffer}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E14693C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22E14C988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void checkBuffer(void *result, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (([a3 conformsToProtocol:{&unk_284222E68, a4, a5}] & 1) == 0)
    {
      v10 = a6;
      _MTLMessageContextPush_();
    }

    if ([a3 device] != a2)
    {
      v11 = a6;
      _MTLMessageContextPush_();
    }

    if ([a3 length] <= a4)
    {
      [a3 length];
LABEL_10:
      _MTLMessageContextPush_();
    }
  }

  else if ((a5 & 1) == 0 || a4)
  {
    goto LABEL_10;
  }
}

uint64_t checkBufferRange(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if (a4)
    {
      return v5;
    }
  }

  else if (a5)
  {
    return v5;
  }

  return _MTLMessageContextPush_();
}

void checkAccelerationStructure(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (([a3 conformsToProtocol:{&unk_2842285B8, a4}] & 1) == 0)
  {
    v8 = a5;
    _MTLMessageContextPush_();
  }

  if ([a3 device] != a2)
  {
LABEL_7:
    _MTLMessageContextPush_();
  }
}

void *checkMotionParameter(uint64_t a1, void *a2, void *a3)
{
  if (([a2 supportsPrimitiveMotionBlur] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  [a3 motionEndTime];
  v5 = v4;
  result = [a3 motionStartTime];
  if (v5 < v7)
  {
    return checkMotionParameter(a3);
  }

  return result;
}

unint64_t MTL4TransformTypeStride(uint64_t a1)
{
  if (a1)
  {
    return (a1 == 1) << 6;
  }

  else
  {
    return 48;
  }
}

uint64_t checkPrimitiveData(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ([a3 primitiveDataBuffer] && !v6)
  {
    v12 = @"primitiveDataBuffer";
    v13 = 0;
    _MTLMessageContextPush_();
  }

  result = [a3 primitiveDataBuffer];
  if (result)
  {
    if (![a3 primitiveDataElementSize])
    {
      _MTLMessageContextPush_();
    }

    v8 = [a3 primitiveDataElementSize];
    if (v8 > [a3 primitiveDataStride])
    {
      checkPrimitiveData(a3);
    }

    [a3 primitiveDataBuffer];
    v10 = v9;
    v11 = [a3 primitiveDataStride];
    if (v10 < [a3 primitiveDataElementSize] + v11 * (a4 - 1))
    {
      checkPrimitiveData();
    }

    result = [a3 primitiveDataStride];
    if ((result & 3) != 0)
    {
      return checkPrimitiveData(a3);
    }
  }

  return result;
}

uint64_t checkMTL4AccelerationStructureDescriptor(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  _MTLMessageContextBegin_();
  checkMTL4AccelerationStructureDescriptorWithRefitOptions(v7, a1, a2, v3, 3);
  return _MTLMessageContextEnd();
}

uint64_t checkMTL4AccelerationStructureDescriptorWithRefitOptions(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v167 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_8;
  }

  v8 = objc_opt_class();
  if (![v8 isSubclassOfClass:objc_opt_class()])
  {
    v12 = objc_opt_class();
    if ([v12 isSubclassOfClass:objc_opt_class()])
    {
      v13 = [a3 usage];
      v14 = [a3 instanceCount];
      if ((v13 & 4) != 0)
      {
        if (v14 >> 30)
        {
LABEL_318:
          checkMTL4AccelerationStructureDescriptorWithRefitOptions();
        }
      }

      else if (v14 >> 24)
      {
        goto LABEL_318;
      }

      if (([a3 instanceDescriptorType] - 3) >= 2)
      {
        checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
      }

      v114 = MTLAccelerationStructureInstanceDescriptorSize([a3 instanceDescriptorType]);
      if ([a3 instanceDescriptorStride] && objc_msgSend(a3, "instanceDescriptorStride") < v114)
      {
        v143 = [a3 instanceDescriptorStride];
        v155 = v114;
        _MTLMessageContextPush_();
      }

      if (([a3 instanceDescriptorStride] & 3) != 0)
      {
        checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
      }

      result = [a3 instanceTransformationMatrixLayout];
      if (result == 1)
      {
        result = [a2 supportsRayTracingMatrixLayout];
        if ((result & 1) == 0)
        {
          result = _MTLMessageContextPush_();
        }
      }

      if (a4)
      {
        v115 = [a3 instanceDescriptorBuffer];
        checkBufferRange(a1, v116, v115, v116, 0);
        v117 = [a3 instanceDescriptorStride];
        if (v117)
        {
          v118 = v117;
        }

        else
        {
          v118 = v114;
        }

        [a3 instanceDescriptorBuffer];
        if (v119 < v118 * [a3 instanceCount])
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions();
        }

        if ([a3 instanceDescriptorType] == 2 || (result = objc_msgSend(a3, "instanceDescriptorType"), result == 4))
        {
          if ([a3 motionTransformType] == 1 && (objc_msgSend(a2, "supportsRayTracingPerComponentMotionInterpolation") & 1) == 0)
          {
            _MTLMessageContextPush_();
          }

          v120 = [a3 motionTransformType];
          if (v120)
          {
            v121 = (v120 == 1) << 6;
          }

          else
          {
            v121 = 48;
          }

          if ([a3 motionTransformStride])
          {
            if (([a3 motionTransformStride] & 3) != 0)
            {
              checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
            }

            if ([a3 motionTransformStride] < v121)
            {
              v153 = [a3 motionTransformStride];
              v156 = v121;
              _MTLMessageContextPush_();
            }

            v121 = [a3 motionTransformStride];
          }

          v122 = [a3 motionTransformBuffer];
          checkBufferRange(a1, v123, v122, v123, 0);
          [a3 motionTransformBuffer];
          v125 = v124;
          result = [a3 motionTransformCount];
          if (v125 < result * v121)
          {
            return checkMTL4AccelerationStructureDescriptorWithRefitOptions();
          }
        }
      }

      return result;
    }

    v111 = objc_opt_class();
    if ([v111 isSubclassOfClass:objc_opt_class()])
    {
      v112 = [a3 usage];
      v113 = [a3 maxInstanceCount];
      if ((v112 & 4) != 0)
      {
        if (!(v113 >> 30))
        {
          goto LABEL_279;
        }
      }

      else if (!(v113 >> 24))
      {
        goto LABEL_279;
      }

      checkMTL4AccelerationStructureDescriptorWithRefitOptions();
LABEL_279:
      if ([a3 instanceDescriptorType] != 3 && objc_msgSend(a3, "instanceDescriptorType") != 4)
      {
        checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
      }

      v126 = MTLAccelerationStructureInstanceDescriptorSize([a3 instanceDescriptorType]);
      if ([a3 instanceDescriptorStride] && objc_msgSend(a3, "instanceDescriptorStride") < v126)
      {
        v143 = [a3 instanceDescriptorStride];
        v155 = v126;
        _MTLMessageContextPush_();
      }

      if (([a3 instanceDescriptorStride] & 3) != 0)
      {
        checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
      }

      result = [a3 instanceTransformationMatrixLayout];
      if (result == 1)
      {
        result = [a2 supportsRayTracingMatrixLayout];
        if ((result & 1) == 0)
        {
          result = _MTLMessageContextPush_();
        }
      }

      if (a4)
      {
        v127 = [a3 instanceDescriptorBuffer];
        checkBufferRange(a1, v128, v127, v128, 0);
        v129 = [a3 instanceDescriptorStride];
        if (v129)
        {
          v130 = v129;
        }

        else
        {
          v130 = v126;
        }

        [a3 instanceDescriptorBuffer];
        if (v131 < v130 * [a3 maxInstanceCount])
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions();
        }

        v132 = [a3 instanceCountBuffer];
        checkBufferRange(a1, v133, v132, v133, 0);
        [a3 instanceCountBuffer];
        if (v134 <= 3)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
        }

        if ([a3 instanceDescriptorType] == 2 || (result = objc_msgSend(a3, "instanceDescriptorType"), result == 4))
        {
          if ([a3 motionTransformType] == 1 && (objc_msgSend(a2, "supportsRayTracingPerComponentMotionInterpolation") & 1) == 0)
          {
            _MTLMessageContextPush_();
          }

          v135 = [a3 motionTransformType];
          if (v135)
          {
            v136 = (v135 == 1) << 6;
          }

          else
          {
            v136 = 48;
          }

          if ([a3 motionTransformStride])
          {
            if (([a3 motionTransformStride] & 3) != 0)
            {
              checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
            }

            if ([a3 motionTransformStride] < v136)
            {
              v154 = [a3 motionTransformStride];
              v157 = v136;
              _MTLMessageContextPush_();
            }

            v136 = [a3 motionTransformStride];
          }

          v137 = [a3 motionTransformBuffer];
          checkBufferRange(a1, v138, v137, v138, 0);
          [a3 motionTransformBuffer];
          if (v139 < [a3 maxMotionTransformCount] * v136)
          {
            checkMTL4AccelerationStructureDescriptorWithRefitOptions();
          }

          v140 = [a3 motionTransformCountBuffer];
          checkBufferRange(a1, v141, v140, v141, 0);
          result = [a3 motionTransformCountBuffer];
          if (v142 <= 3)
          {
            return checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
          }
        }
      }

      return result;
    }

LABEL_8:

    return _MTLMessageContextPush_();
  }

  if (![objc_msgSend(a3 "geometryDescriptors")])
  {
    checkMTL4AccelerationStructureDescriptorWithRefitOptions(a3);
  }

  v9 = [a3 usage];
  v10 = [objc_msgSend(a3 "geometryDescriptors")];
  if ((v9 & 4) != 0)
  {
    if (v10 >> 30)
    {
LABEL_317:
      checkMTL4AccelerationStructureDescriptorWithRefitOptions();
    }
  }

  else if (v10 >> 24)
  {
    goto LABEL_317;
  }

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = [a3 geometryDescriptors];
  v15 = [obj countByEnumeratingWithState:&v162 objects:v166 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_239;
  }

  v16 = v15;
  v17 = 0;
  v159 = a5 & a4;
  v18 = *v163;
  do
  {
    v19 = 0;
    do
    {
      if (*v163 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v162 + 1) + 8 * v19);
      [objc_msgSend(a3 "geometryDescriptors")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      v21 = objc_opt_class();
      if ([v21 isSubclassOfClass:objc_opt_class()])
      {
        if ([v20 intersectionFunctionTableOffset] >> 24)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        v22 = [v20 vertexFormat];
        v23 = [v20 vertexStride];
        if (MTLAttributeFormatComponentCount(v22) <= 1)
        {
          _MTLMessageContextPush_();
        }

        v24 = MTLAttributeFormatSize(v22);
        if (v23 && v24 > v23)
        {
          v143 = v23;
          v155 = v24;
          _MTLMessageContextPush_();
        }

        v25 = MTLAttributeFormatAlignment(v22);
        if (v23 % v25)
        {
          v143 = v23;
          v155 = v25;
          _MTLMessageContextPush_();
        }

        v27 = [v20 transformationMatrixBuffer];
        v28 = v26;
        if (v27)
        {
          if (v26)
          {
            goto LABEL_35;
          }

          v144 = @"Transformation buffer";
          v155 = 0;
LABEL_225:
          _MTLMessageContextPush_();
          goto LABEL_36;
        }

        if (v26)
        {
          v144 = 0;
          v155 = v26;
          _MTLMessageContextPush_();
LABEL_35:
          if (&v28[-1].length + 7 <= 0x2E)
          {
            v144 = v28;
            goto LABEL_225;
          }

LABEL_36:
          if ((v27 & 3) != 0)
          {
            v144 = v27;
            _MTLMessageContextPush_();
          }
        }

        if ([v20 transformationMatrixLayout] == 1 && (objc_msgSend(a2, "supportsRayTracingMatrixLayout") & 1) == 0)
        {
          _MTLMessageContextPush_();
        }

        if (v159)
        {
          v43 = [v20 vertexBuffer];
          checkBufferRange(a1, v44, v43, v44, 0);
          if (([v20 vertexBuffer] & 3) != 0)
          {
            checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
          }

          if ([v20 indexBuffer])
          {
            if ([v20 indexBuffer] && !v45)
            {
              v143 = @"index buffer";
              v155 = 0;
              _MTLMessageContextPush_();
            }

            v46 = [v20 indexType];
            if (v46)
            {
              v47 = 4;
            }

            else
            {
              v47 = 2;
            }

            if (((v47 - 1) & [v20 indexBuffer]) != 0)
            {
              v146 = [v20 indexBuffer];
              v155 = v47;
              _MTLMessageContextPush_();
            }

            v48 = 3 * [v20 triangleCount];
            v49 = 1;
            if (v46)
            {
              v49 = 2;
            }

            v50 = v48 << v49;
            [v20 indexBuffer];
            if (v50 > v51)
            {
              checkMTL4AccelerationStructureDescriptorWithRefitOptions();
            }
          }

          else
          {
            v64 = [v20 vertexStride];
            v65 = [v20 vertexFormat];
            if (!v64)
            {
              v64 = MTLAttributeFormatSize(v65);
            }

            v66 = 3 * v64 * [v20 triangleCount];
            [v20 vertexBuffer];
            if (v67 < v66)
            {
              checkMTL4AccelerationStructureDescriptorWithRefitOptions();
            }
          }
        }

LABEL_113:
        v53 = [v20 triangleCount];
LABEL_114:
        v68 = v53;
        if ((a5 & 2) == 0)
        {
          goto LABEL_116;
        }

LABEL_115:
        checkPrimitiveData(a1, v54, v20, v68);
        goto LABEL_116;
      }

      v29 = objc_opt_class();
      if ([v29 isSubclassOfClass:objc_opt_class()])
      {
        if ([v20 intersectionFunctionTableOffset] >> 24)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        checkMotionParameter(a1, a2, a3);
        v30 = [v20 vertexFormat];
        v31 = [v20 vertexStride];
        if (MTLAttributeFormatComponentCount(v30) <= 1)
        {
          _MTLMessageContextPush_();
        }

        v32 = MTLAttributeFormatSize(v30);
        if (v31 && v32 > v31)
        {
          v143 = v31;
          v155 = v32;
          _MTLMessageContextPush_();
        }

        v33 = MTLAttributeFormatAlignment(v30);
        if (v31 % v33)
        {
          v143 = v31;
          v155 = v33;
          _MTLMessageContextPush_();
        }

        v35 = [v20 transformationMatrixBuffer];
        v36 = v34;
        if (v35)
        {
          if (v34)
          {
            goto LABEL_50;
          }

          v145 = @"Transformation buffer";
          v155 = 0;
LABEL_229:
          _MTLMessageContextPush_();
          goto LABEL_51;
        }

        if (v34)
        {
          v145 = 0;
          v155 = v34;
          _MTLMessageContextPush_();
LABEL_50:
          if (&v36[-1].length + 7 <= 0x2E)
          {
            v145 = v36;
            goto LABEL_229;
          }

LABEL_51:
          if ((v35 & 3) != 0)
          {
            v145 = v35;
            _MTLMessageContextPush_();
          }
        }

        if ([v20 transformationMatrixLayout] == 1 && (objc_msgSend(a2, "supportsRayTracingMatrixLayout") & 1) == 0)
        {
          _MTLMessageContextPush_();
        }

        v55 = [v20 vertexStride];
        v56 = [v20 vertexFormat];
        if (!v55)
        {
          MTLAttributeFormatSize(v56);
        }

        if (a4 && [v20 indexBuffer])
        {
          if ([v20 indexBuffer] && !v57)
          {
            v143 = @"index buffer";
            v155 = 0;
            _MTLMessageContextPush_();
          }

          v58 = [v20 indexType];
          if (v58)
          {
            v59 = 4;
          }

          else
          {
            v59 = 2;
          }

          if (((v59 - 1) & [v20 indexBuffer]) != 0)
          {
            v147 = [v20 indexBuffer];
            v155 = v59;
            _MTLMessageContextPush_();
          }

          v60 = 3 * [v20 triangleCount];
          v61 = 1;
          if (v58)
          {
            v61 = 2;
          }

          v62 = v60 << v61;
          [v20 indexBuffer];
          if (v62 > v63)
          {
            checkMTL4AccelerationStructureDescriptorWithRefitOptions();
          }
        }

        goto LABEL_113;
      }

      v37 = objc_opt_class();
      if ([v37 isSubclassOfClass:objc_opt_class()])
      {
        if ([v20 boundingBoxStride] <= 0x17)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        if (([v20 boundingBoxStride] & 3) != 0)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        if (a4)
        {
          v38 = [v20 boundingBoxBuffer];
          checkBufferRange(a1, v39, v38, v39, 0);
          if (([v20 boundingBoxBuffer] & 3) != 0)
          {
            checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
          }

          [v20 boundingBoxBuffer];
          v41 = v40;
          v42 = [v20 boundingBoxStride];
          if (v41 < [v20 boundingBoxCount] * v42)
          {
            checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
          }
        }

LABEL_88:
        v53 = [v20 boundingBoxCount];
        goto LABEL_114;
      }

      v52 = objc_opt_class();
      if ([v52 isSubclassOfClass:objc_opt_class()])
      {
        checkMotionParameter(a1, a2, a3);
        if ([v20 boundingBoxStride] <= 0x17)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        if (([v20 boundingBoxStride] & 3) != 0)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        goto LABEL_88;
      }

      v69 = objc_opt_class();
      if ([v69 isSubclassOfClass:objc_opt_class()])
      {
        if ([v20 intersectionFunctionTableOffset] >> 24)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        v70 = [v20 curveBasis];
        v71 = [v20 segmentControlPointCount];
        if (v70 > 1)
        {
          if (v70 == 2)
          {
            if (v71 == 2)
            {
              goto LABEL_148;
            }

            v143 = v71;
          }

          else if (v70 == 3)
          {
            if ((v71 - 5) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_148;
            }

            v143 = v71;
          }
        }

        else
        {
          if (v70)
          {
            if (v70 != 1)
            {
              goto LABEL_144;
            }

            if (v71 != 4)
            {
              v143 = v71;
              goto LABEL_144;
            }

LABEL_148:
            if ([v20 curveType] && objc_msgSend(v20, "curveType") != 1)
            {
              _MTLMessageContextPush_();
            }

            if ([v20 curveEndCaps] && objc_msgSend(v20, "curveEndCaps") != 1 && objc_msgSend(v20, "curveEndCaps") != 2)
            {
              _MTLMessageContextPush_();
            }

            v75 = [v20 controlPointFormat];
            v76 = [v20 controlPointStride];
            if (MTLAttributeFormatComponentCount(v75) <= 1)
            {
              _MTLMessageContextPush_();
            }

            v77 = MTLAttributeFormatSize(v75);
            if (v76 && v77 > v76)
            {
              v148 = v76;
              v155 = v77;
              _MTLMessageContextPush_();
            }

            v78 = MTLAttributeFormatAlignment(v75);
            if (v76 % v78)
            {
              v148 = v76;
              v155 = v78;
              _MTLMessageContextPush_();
            }

            v79 = [v20 radiusFormat];
            v80 = [v20 radiusStride];
            if (MTLAttributeFormatComponentCount(v79) != 1)
            {
              _MTLMessageContextPush_();
            }

            v81 = MTLAttributeFormatSize(v79);
            if (v80 && v81 > v80)
            {
              v149 = v80;
              v155 = v81;
              _MTLMessageContextPush_();
            }

            v82 = MTLAttributeFormatAlignment(v79);
            if (v80 % v82)
            {
              v149 = v80;
              v155 = v82;
              _MTLMessageContextPush_();
            }

            if (v159)
            {
              v83 = [v20 controlPointBuffer];
              checkBufferRange(a1, v84, v83, v84, 0);
              v85 = [v20 radiusBuffer];
              checkBufferRange(a1, v86, v85, v86, 0);
              v87 = [v20 indexBuffer];
              checkBufferRange(a1, v88, v87, v88, 0);
              if (([v20 controlPointBuffer] & 3) != 0)
              {
                checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
              }

              if (([v20 radiusBuffer] & 3) != 0)
              {
                checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
              }

              v89 = [v20 indexType];
              if (v89)
              {
                v90 = 4;
              }

              else
              {
                v90 = 2;
              }

              if (((v90 - 1) & [v20 indexBuffer]) != 0)
              {
                v150 = [v20 indexBuffer];
                v155 = v90;
                _MTLMessageContextPush_();
              }

              v91 = [v20 segmentCount];
              v92 = 1;
              if (v89)
              {
                v92 = 2;
              }

              v93 = v91 << v92;
              [v20 indexBuffer];
              if (v93 > v94)
              {
LABEL_220:
                checkMTL4AccelerationStructureDescriptorWithRefitOptions();
              }
            }

LABEL_221:
            v53 = [v20 segmentCount];
            goto LABEL_114;
          }

          if ((v71 - 5) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_148;
          }

          v143 = v71;
        }

LABEL_144:
        _MTLMessageContextPush_();
        goto LABEL_148;
      }

      v72 = objc_opt_class();
      if ([v72 isSubclassOfClass:objc_opt_class()])
      {
        if ([v20 intersectionFunctionTableOffset] >> 24)
        {
          checkMTL4AccelerationStructureDescriptorWithRefitOptions(v20);
        }

        v73 = [v20 curveBasis];
        v74 = [v20 segmentControlPointCount];
        if (v73 > 1)
        {
          if (v73 == 2)
          {
            if (v74 == 2)
            {
              goto LABEL_187;
            }

            v143 = v74;
          }

          else if (v73 == 3)
          {
            if ((v74 - 5) > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_187;
            }

            v143 = v74;
          }
        }

        else
        {
          if (v73)
          {
            if (v73 != 1)
            {
              goto LABEL_183;
            }

            if (v74 != 4)
            {
              v143 = v74;
              goto LABEL_183;
            }

LABEL_187:
            if ([v20 curveType] && objc_msgSend(v20, "curveType") != 1)
            {
              _MTLMessageContextPush_();
            }

            if ([v20 curveEndCaps] && objc_msgSend(v20, "curveEndCaps") != 1 && objc_msgSend(v20, "curveEndCaps") != 2)
            {
              _MTLMessageContextPush_();
            }

            checkMotionParameter(a1, a2, a3);
            v95 = [v20 controlPointFormat];
            v96 = [v20 controlPointStride];
            if (MTLAttributeFormatComponentCount(v95) <= 1)
            {
              _MTLMessageContextPush_();
            }

            v97 = MTLAttributeFormatSize(v95);
            if (v96 && v97 > v96)
            {
              v151 = v96;
              v155 = v97;
              _MTLMessageContextPush_();
            }

            v98 = MTLAttributeFormatAlignment(v95);
            if (v96 % v98)
            {
              v151 = v96;
              v155 = v98;
              _MTLMessageContextPush_();
            }

            v99 = [v20 radiusFormat];
            v100 = [v20 radiusStride];
            if (MTLAttributeFormatComponentCount(v99) != 1)
            {
              _MTLMessageContextPush_();
            }

            v101 = MTLAttributeFormatSize(v99);
            if (v100 && v101 > v100)
            {
              v149 = v100;
              v155 = v101;
              _MTLMessageContextPush_();
            }

            v102 = MTLAttributeFormatAlignment(v99);
            if (v100 % v102)
            {
              v149 = v100;
              v155 = v102;
              _MTLMessageContextPush_();
            }

            if (a4)
            {
              if ([v20 indexBuffer] && !v103)
              {
                v149 = @"index buffer";
                v155 = 0;
                _MTLMessageContextPush_();
              }

              v104 = [v20 indexType];
              if (v104)
              {
                v105 = 4;
              }

              else
              {
                v105 = 2;
              }

              if (((v105 - 1) & [v20 indexBuffer]) != 0)
              {
                v152 = [v20 indexBuffer];
                v155 = v105;
                _MTLMessageContextPush_();
              }

              v106 = [v20 segmentCount];
              v107 = 1;
              if (v104)
              {
                v107 = 2;
              }

              v108 = v106 << v107;
              [v20 indexBuffer];
              if (v108 > v109)
              {
                goto LABEL_220;
              }
            }

            goto LABEL_221;
          }

          if ((v74 - 5) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_187;
          }

          v143 = v74;
        }

LABEL_183:
        _MTLMessageContextPush_();
        goto LABEL_187;
      }

      _MTLMessageContextPush_();
      v68 = 0;
      if ((a5 & 2) != 0)
      {
        goto LABEL_115;
      }

LABEL_116:
      v17 += v68;
      ++v19;
    }

    while (v16 != v19);
    v110 = [obj countByEnumeratingWithState:&v162 objects:v166 count:16];
    v16 = v110;
  }

  while (v110);
LABEL_239:
  result = [a3 usage];
  if ((result & 4) != 0)
  {
    if (v17 >> 30)
    {
      return _MTLMessageContextPush_();
    }
  }

  else if (v17 >> 28)
  {
    return _MTLMessageContextPush_();
  }

  return result;
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int &>(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _MTLMessageContextPush_();
}

void MTLLegacySVSetBufferForResourceHandle(MTLLegacySVDevice *a1, uint64_t a2, MTLLegacySVBuffer *a3)
{
  v5 = (a1 + 296);
  std::mutex::lock((a1 + 296));
  [v5[15] setArgumentBuffer:v5[16] offset:{objc_msgSend(v5[15], "encodedLength") * a2}];
  v6 = v5[15];
  [v6 setBuffer:-[MTLToolsObject baseObject](a3 offset:"baseObject") atIndex:{-[MTLLegacySVBuffer offset](a3, "offset"), 0}];
  v7 = [v6 constantDataAtIndex:1];
  *v7 = [(MTLLegacySVBuffer *)a3 length];

  std::mutex::unlock(v5);
}

MTLLegacySVTexture *CreateTexture(void *a1, uint64_t a2)
{
  v3 = [[MTLLegacySVTexture alloc] initWithTextureView:a1 parentBuffer:a2 heap:0 device:*(a2 + 24)];

  return v3;
}

void emitDepthStencilDistribution(MTLTelemetryDevice *a1, MTLTelemetryDepthStateDistributionRec *a2, MTLTelemetryStencilStateDistributionRec *a3, MTLTelemetryStencilStateDistributionRec *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  var0 = a2->var0;
  if (a2->var0)
  {
    v6 = 0;
    var1 = a2->var1;
    v7 = a3->var1;
    v8 = a4->var1;
    v9 = MEMORY[0x277CD7168];
    while (1)
    {
      v10 = off_2787B3E70[v6];
      v11 = var1[v6];
      if (v11)
      {
        if (!*v9)
        {
          goto LABEL_7;
        }

        if (*v9 == 1)
        {
          break;
        }
      }

LABEL_9:
      v34 = v7;
      v35 = v6;
      v14 = 0;
      v33 = v8;
      do
      {
        v15 = off_2787B3EB0[v14];
        v16 = (*v7)[-64];
        if (!v16)
        {
          goto LABEL_16;
        }

        if (*v9)
        {
          if (*v9 != 1)
          {
            goto LABEL_16;
          }

          printf("\n\nFrontFaceStencilFail, compareMode=%s, operation=%s, total=%u, count=%u", v10, v15, var0, v16);
        }

        v17 = [(MTLTelemetryDevice *)a1 telemetryLog];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = (*v7)[-64];
          *buf = 136315906;
          v37 = v10;
          v38 = 2080;
          *v39 = v15;
          *&v39[8] = 1024;
          v40 = var0;
          v41 = 1024;
          v42 = v18;
          _os_log_impl(&dword_22E0FF000, v17, OS_LOG_TYPE_DEFAULT, "FrontFaceStencilFail, compareMode=%s, operation=%s, total=%u, count=%u", buf, 0x22u);
        }

LABEL_16:
        if (!*v7)
        {
          goto LABEL_22;
        }

        if (*v9)
        {
          if (*v9 != 1)
          {
            goto LABEL_22;
          }

          printf("\n\nFrontFaceDepthFail, compareMode=%s, operation=%s, total=%u, count=%u", v10, v15, var0, *v7);
        }

        v19 = [(MTLTelemetryDevice *)a1 telemetryLog];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *v7;
          *buf = 136315906;
          v37 = v10;
          v38 = 2080;
          *v39 = v15;
          *&v39[8] = 1024;
          v40 = var0;
          v41 = 1024;
          v42 = v20;
          _os_log_impl(&dword_22E0FF000, v19, OS_LOG_TYPE_DEFAULT, "FrontFaceDepthFail, compareMode=%s, operation=%s, total=%u, count=%u", buf, 0x22u);
        }

LABEL_22:
        v21 = (*v7)[64];
        if (!v21)
        {
          goto LABEL_28;
        }

        if (*v9)
        {
          if (*v9 != 1)
          {
            goto LABEL_28;
          }

          printf("\n\nFrontFaceDepthStencilPass, compareMode=%s, operation=%s, total=%u, count=%u", v10, v15, var0, v21);
        }

        v22 = [(MTLTelemetryDevice *)a1 telemetryLog];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = (*v7)[64];
          *buf = 136315906;
          v37 = v10;
          v38 = 2080;
          *v39 = v15;
          *&v39[8] = 1024;
          v40 = var0;
          v41 = 1024;
          v42 = v23;
          _os_log_impl(&dword_22E0FF000, v22, OS_LOG_TYPE_DEFAULT, "FrontFaceDepthStencilPass, compareMode=%s, operation=%s, total=%u, count=%u", buf, 0x22u);
        }

LABEL_28:
        v24 = (*v8)[-64];
        if (!v24)
        {
          goto LABEL_34;
        }

        if (*v9)
        {
          if (*v9 != 1)
          {
            goto LABEL_34;
          }

          printf("\n\nBackFaceStencilFail, compareMode=%s, operation=%s, total=%u, count=%u", v10, v15, var0, v24);
        }

        v25 = [(MTLTelemetryDevice *)a1 telemetryLog];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = (*v8)[-64];
          *buf = 136315906;
          v37 = v10;
          v38 = 2080;
          *v39 = v15;
          *&v39[8] = 1024;
          v40 = var0;
          v41 = 1024;
          v42 = v26;
          _os_log_impl(&dword_22E0FF000, v25, OS_LOG_TYPE_DEFAULT, "BackFaceStencilFail, compareMode=%s, operation=%s, total=%u, count=%u", buf, 0x22u);
        }

LABEL_34:
        if (!*v8)
        {
          goto LABEL_40;
        }

        if (*v9)
        {
          if (*v9 != 1)
          {
            goto LABEL_40;
          }

          printf("\n\nBackFaceDepthFail, compareMode=%s, operation=%s, total=%u, count=%u", v10, v15, var0, *v8);
        }

        v27 = [(MTLTelemetryDevice *)a1 telemetryLog];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *v8;
          *buf = 136315906;
          v37 = v10;
          v38 = 2080;
          *v39 = v15;
          *&v39[8] = 1024;
          v40 = var0;
          v41 = 1024;
          v42 = v28;
          _os_log_impl(&dword_22E0FF000, v27, OS_LOG_TYPE_DEFAULT, "BackFaceDepthFail, compareMode=%s, operation=%s, total=%u, count=%u", buf, 0x22u);
        }

LABEL_40:
        v29 = (*v8)[64];
        if (!v29)
        {
          goto LABEL_46;
        }

        if (*v9)
        {
          if (*v9 != 1)
          {
            goto LABEL_46;
          }

          printf("\n\nBackFaceDepthStencilPass, compareMode=%s, operation=%s, total=%u, count=%u", v10, v15, var0, v29);
        }

        v30 = [(MTLTelemetryDevice *)a1 telemetryLog];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = (*v8)[64];
          *buf = 136315906;
          v37 = v10;
          v38 = 2080;
          *v39 = v15;
          *&v39[8] = 1024;
          v40 = var0;
          v41 = 1024;
          v42 = v31;
          _os_log_impl(&dword_22E0FF000, v30, OS_LOG_TYPE_DEFAULT, "BackFaceDepthStencilPass, compareMode=%s, operation=%s, total=%u, count=%u", buf, 0x22u);
        }

LABEL_46:
        ++v14;
        v7 = (v7 + 4);
        v8 = (v8 + 4);
      }

      while (v14 != 8);
      v6 = v35 + 1;
      v7 = v34 + 1;
      v8 = v33 + 1;
      if (v35 == 7)
      {
        return;
      }
    }

    printf("\n\nDepthState, compareMode=%s, total=%u, count=%u", v10, var0, v11);
LABEL_7:
    v12 = [(MTLTelemetryDevice *)a1 telemetryLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = var1[v6];
      *buf = 136315650;
      v37 = v10;
      v38 = 1024;
      *v39 = var0;
      *&v39[4] = 1024;
      *&v39[6] = v13;
      _os_log_impl(&dword_22E0FF000, v12, OS_LOG_TYPE_DEFAULT, "DepthState, compareMode=%s, total=%u, count=%u", buf, 0x18u);
    }

    goto LABEL_9;
  }
}

void sub_22E15C270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E15C384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E15C60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E15F464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E15F52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E15F5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E15F708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E15F834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1606AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1607C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1608D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1609E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E160AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E160C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E160D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *buildBaseVector@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = std::vector<objc_object  {objcproto28MTLIntersectionFunctionTable}*>::vector[abi:ne200100](a3, a2);
  if (a2)
  {
    v7 = 0;
    do
    {
      result = [*(a1 + 8 * v7) baseObject];
      *(*a3 + 8 * v7++) = result;
    }

    while (a2 != v7);
  }

  return result;
}

void sub_22E160D88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E160E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E160F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E161148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E161288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1613D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E1615C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<objc_object  {objcproto22MTLRenderPipelineState}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E1616CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLViewport>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(a1, a2);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<MTLScissorRect>::reserve(void *a1, unint64_t a2, __n128 a3)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(a1, a2);
    }

    std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long &>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _MTLMessageContextPush_();
}

void sub_22E169524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E169630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::unordered_map<objc_object  {objcproto13MTLAllocation}*,anonymous namespace::_MTLToolsResidencySetInternalCommittedAllocationsTable::CommittedAllocationEntry>::find[abi:ne200100](void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::vector<objc_object  {objcproto13MTLAllocation}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_22E16A204(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E16AEB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E16B05C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *anonymous namespace::anonymous namespace::BufferUsageTable::addResource(id *a1, void *a2, void *a3, char a4)
{
  for (i = a3; ; i = a3)
  {
    v9 = [i bufferIndex];
    if ([*a1 length] > v9 >> 2)
    {
      break;
    }
  }

  result = [a3 bufferIndex];
  v11 = result;
  if (result)
  {
    if ((a4 & 4) != 0)
    {
      a4 = a4 & 2 | 1;
    }

    result = [*a1 contents];
    result[v11 >> 2] |= a4 << (2 * (v11 & 3));
  }

  return result;
}

void sub_22E16B200(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *anonymous namespace::anonymous namespace::BufferUsageTable::addResource(id *a1, void *a2, char a3)
{
  result = [a2 accelerationStructureHandle];
  v6 = result;
  if (result)
  {
    if ((a3 & 4) != 0)
    {
      a3 = a3 & 2 | 1;
    }

    result = [*a1 contents];
    result[v6 >> 2] |= a3 << (2 * (v6 & 3));
  }

  return result;
}

void sub_22E16B3C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    os_unfair_lock_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *anonymous namespace::anonymous namespace::TextureUsageTable::addResource(id *a1, void *a2, void *a3, char a4)
{
  for (i = a3; ; i = a3)
  {
    v9 = [i gpuIdentifier];
    if ([*a1 length] > v9 >> 2)
    {
      break;
    }
  }

  result = [a3 gpuIdentifier];
  v11 = result;
  if (result)
  {
    if ((a4 & 4) != 0)
    {
      a4 = a4 & 2 | 1;
    }

    result = [*a1 contents];
    result[v11 >> 2] |= a4 << (2 * (v11 & 3));
  }

  return result;
}

void sub_22E16CF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

void anonymous namespace::anonymous namespace::ResourceUsageTable::realloc(id *a1, void *a2, unint64_t a3)
{
  if ([*a1 length] <= a3)
  {
    v6 = [a2 newInternalBufferWithLength:a3 options:0];
    memcpy([v6 contents], objc_msgSend(*a1, "contents"), objc_msgSend(*a1, "length"));

    *a1 = v6;
  }
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_2(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_3(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_4(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_5(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_6(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_7(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_8(_BYTE *result, unsigned int *a2, int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *a2;
      if (v6)
      {
        v7 = *(*(v5 + 5) + 16);
        if ((v7 & 4) != 0)
        {
          LOBYTE(v8) = v7 & 2 | 1;
        }

        else
        {
          v8 = *(*(v5 + 5) + 16);
        }

        result = [**(v5 + 4) contents];
        result[v6 >> 2] |= v8 << (2 * (v6 & 3));
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}