uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void fatalErrorHandler(void *a1, char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = p_str;
    _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LLVM ERROR: %s", buf, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Cannot select:");
  v8 = 10;
  std::string::basic_string[abi:ne200100]<0>(&v9, "unable to lower arguments");
  v10 = 10;
  std::string::basic_string[abi:ne200100]<0>(v11, "unable to translate");
  v12 = 21;
  std::string::basic_string[abi:ne200100]<0>(v13, "cannot select");
  v14 = 21;
  std::string::basic_string[abi:ne200100]<0>(v15, "unable to legalize");
  v16 = 21;
  memset(v5, 0, sizeof(v5));
  v3 = v5;
  LOBYTE(v4) = 0;
  operator new();
}

void sub_213C63DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  a24 = &a13;
  std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v10);
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

void sub_213C64200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 33) < 0)
  {
    operator delete(*(v33 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::logCompilerFailure(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  if (a3 <= 7 || ((v6 = *a2, v28 = 8, !v6) ? (v7 = 0) : (v7 = DeserialContext::stringFromSerializedData(&v26)), (v8 = [gReplayLogDirectory stringByAppendingString:v7], v27 > v28) ? (v9 = v27 - v28 > 7) : (v9 = 0), !v9))
  {
LABEL_30:
    abort();
  }

  v10 = v26;
  v11 = *(v26 + v28);
  v12 = v28 + 8;
  v28 += 8;
  if (v11)
  {
    if (v12 >= v27)
    {
      goto LABEL_30;
    }

    v28 = v11 + v12;
    if (v11 + v12 > v27)
    {
      goto LABEL_30;
    }

    v13 = v8;
    v25 = 0;
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v14 createDirectoryAtPath:gReplayLogDirectory withIntermediateDirectories:1 attributes:0 error:&v25])
    {
      v15 = fopen([v13 UTF8String], "wb");
      if (v15)
      {
        v16 = v15;
        v17 = fwrite(v10 + v12, 1uLL, v11, v15);
        fclose(v16);
        if (v17 == v11)
        {
          v18 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
          *v18 = 1;
          return (*(a4 + 16))(a4, 0, v18, 1, 0);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          MTLCompilerObject::logCompilerFailure(v13);
        }

        MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to write log file (wrote %llu bytes, expected %llu bytes): %s", v17, v11, [v13 UTF8String]);
        v21 = *(a1 + 64);
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(v13);
      }

      v24 = (a1 + 64);
      [v13 UTF8String];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log file: %s");
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(&v25);
      }

      v24 = (a1 + 64);
      [objc_msgSend(v25 "localizedDescription")];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log directory: %s");
    }

    v21 = *v24;
LABEL_25:
    v20 = *(a4 + 16);
    v22 = a4;
    v23 = 2;
    return v20(v22, v23, 0, 0, v21);
  }

  v20 = *(a4 + 16);
  v21 = "MTLCompilerService received an empty replay block to log";
  v22 = a4;
  v23 = 1;
  return v20(v22, v23, 0, 0, v21);
}

uint64_t MTLCompilerObject::generateMachO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v112 = *MEMORY[0x277D85DE8];
  v104 = 0u;
  v105 = 0u;
  v106 = 1065353216;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  if (*(a2 + 88))
  {
    DynamicLibraryWriter = MTLGPUArchiverFromId();
  }

  else
  {
    if (*(a2 + 128))
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateDynamicLibraryWriter();
    }

    else
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateExecutableWriter();
    }

    MTLGPUArchiverToId();
  }

  if (!DynamicLibraryWriter)
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
      logMachOError(a1 + 80, __p, v107);
      if (SBYTE7(v107[1]) < 0)
      {
        operator delete(*&v107[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
    logMachOError(a1 + 80, v103, v107);
    if (SBYTE7(v107[1]) < 0)
    {
      operator delete(*&v107[0]);
    }

    (*(a4 + 16))(a4, 2, 0, 0, v103);
    free(v103);
    goto LABEL_202;
  }

  v103 = 0;
  if (!MTLGPUArchiverAddTool())
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
      logMachOError(a1 + 80, __p, v107);
      if (SBYTE7(v107[1]) < 0)
      {
        operator delete(*&v107[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
    logMachOError(a1 + 80, v103, v107);
    if (SBYTE7(v107[1]) < 0)
    {
      operator delete(*&v107[0]);
    }

    goto LABEL_142;
  }

  if (*(a2 + 116))
  {
    if (!LLVMCreateMemoryBufferWithMemoryRange())
    {
      v99 = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
        logMachOError(a1 + 80, v99, v107);
        if (SBYTE7(v107[1]) < 0)
        {
          operator delete(*&v107[0]);
        }

        free(v99);
      }

      strcpy(v107, "Unable to store metal script");
      std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
      logMachOError(a1 + 80, v107, &__p);
      if (v98 < 0)
      {
        operator delete(__p);
      }

      (*(a4 + 16))(a4, 2, 0, 0, v103);
      MTLGPUArchiverDestroy();
      goto LABEL_202;
    }

    v5 = MTLGPUArchiverAddDescriptor();
    LLVMDisposeMemoryBuffer();
    if (!v5)
    {
      __p = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
        logMachOError(a1 + 80, __p, v107);
        if (SBYTE7(v107[1]) < 0)
        {
          operator delete(*&v107[0]);
        }

        free(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
      logMachOError(a1 + 80, v103, v107);
      if (SBYTE7(v107[1]) < 0)
      {
        operator delete(*&v107[0]);
      }

LABEL_142:
      (*(a4 + 16))(a4, 2, 0, 0, v103);
      free(v103);
      MTLGPUArchiverDestroy();
      goto LABEL_202;
    }
  }

  v94 = a2;
  if (!*(a2 + 108))
  {
LABEL_22:
    v14 = v94;
    v90 = malloc_type_malloc(8 * *(v94 + 8), 0x2004093837F09uLL);
    v88 = malloc_type_malloc(8 * *(v94 + 8), 0x10040436913F5uLL);
    if (*(v94 + 8))
    {
      v91 = 0;
      v15 = 0;
      do
      {
        v16 = v94 + 136 + 104 * v15;
        v17 = v14 + *(v16 + 16);
        v18 = strncmp((v17 + 4), "AIRC", 4uLL);
        v19 = strncmp((v17 + 4), "AIRS", 4uLL);
        if (*(v14 + 128) == 1)
        {
          *&v107[0] = 0;
          BYTE8(v107[0]) = 0;
          v108 = 0x1000000000000;
          v107[1] = xmmword_213C7D4D0;
          memset(&v107[2], 0, 32);
          v109 = 1;
          v110 = 256;
          v111 = 0;
          __p = 0x100000000;
          v97 = 0;
          flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(v107, 4, &__p);
          v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(v107, 2);
          flatbuffers::FlatBufferBuilder::TrackField(v107, 6, v20);
          v21 = flatbuffers::FlatBufferBuilder::EndTable(v107, 0);
          flatbuffers::FlatBufferBuilder::Finish(v107, v21, "AIRD", 0);
          v22 = LLVMCreateMemoryBufferWithMemoryRangeCopy();
          flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(v107);
        }

        else if (*(v16 + 24))
        {
          v22 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v22 = 0;
        }

        if (*(v16 + 40))
        {
          v23 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v23 = 0;
        }

        if (*(v16 + 56))
        {
          v24 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v24 = 0;
        }

        v25 = *v16;
        v103 = 0;
        if (v18)
        {
          v26 = v19 == 0;
        }

        else
        {
          v26 = 1;
        }

        v27 = v26;
        v92 = v27;
        v28 = MTLGPUArchiverAddUnit();
        if (v28)
        {
          if (v18 && *(v16 + 8))
          {
            v29 = 0;
            LOBYTE(v30) = 1;
            v31 = v94;
            do
            {
              std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(&v104, (v31 + *(v16 + 96)));
              v30 = v30 && MTLGPUArchiverAddLinkedModulesWithReferences() != 0;
              ++v29;
              v31 += 32;
            }

            while (v29 < *(v16 + 8));
          }

          else
          {
            v30 = 1;
          }

          if (((v92 | !v30) & 1) == 0)
          {
            v90[v91] = v28;
            if (v25)
            {
              v30 = MTLGPUArchiverSetUnitHash() != 0;
            }

            ++v91;
            if (*(v16 + 88))
            {
              v32 = v94 + *(v16 + 80);
              if (*(v32 + 40))
              {
                if (*(v32 + 56))
                {
                  LLVMCreateMemoryBufferWithMemoryRange();
                  LLVMCreateMemoryBufferWithMemoryRange();
                  if (v30)
                  {
                    LOBYTE(v30) = MTLGPUArchiverSetUnitReflection() != 0;
                  }

                  LLVMDisposeMemoryBuffer();
                  LLVMDisposeMemoryBuffer();
                }
              }
            }
          }
        }

        else
        {
          LOBYTE(v30) = 1;
        }

        if (v22)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v23)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v24)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v28)
        {
          v33 = v30;
        }

        else
        {
          v33 = 0;
        }

        if (!v33)
        {
          v34 = v103;
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v34, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
        }

        ++v15;
        v14 = v94;
      }

      while (v15 < *(v94 + 8));
    }

    v35 = *(v14 + 100);
    v36 = *(v14 + 56);
    v103 = 0;
    if (v35 < 0x40)
    {
LABEL_123:
      free(v90);
      free(v88);
      if (*(v94 + 128) == 1)
      {
        v103 = 0;
        v66 = MTLGPUArchiverSetInstallName();
        v67 = v66 != 0;
        if (!v66)
        {
          v68 = v103;
          if (v103)
          {
            std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
            logMachOError(a1 + 80, v68, v107);
            if (SBYTE7(v107[1]) < 0)
            {
              operator delete(*&v107[0]);
            }

            std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
            v67 = 0;
          }
        }
      }

      else
      {
        v67 = 1;
      }

      for (i = v105; i; i = *i)
      {
        MTLGPUArchiverUnitRefDestroy();
      }

      v103 = 0;
      if (!v67)
      {
        goto LABEL_185;
      }

      v70 = MTLGPUArchiverPackUnits();
      if (!v70)
      {
        v71 = v103;
        if (v103)
        {
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v71, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
        }
      }

      if (!v70)
      {
        goto LABEL_185;
      }

      v72 = *(v94 + 129);
      if (!v72)
      {
        sandbox_extension_consume();
      }

      v74 = MTLGPUArchiverBuildToFD();
      if (!v74)
      {
        v75 = v103;
        std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
        logMachOError(a1 + 80, v75, v107);
        if (SBYTE7(v107[1]) < 0)
        {
          operator delete(*&v107[0]);
        }

        std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
      }

      if ((v72 & 1) == 0)
      {
        sandbox_extension_release();
      }

      if (v74)
      {
        *&v107[0] = 0;
        (*(a4 + 16))(a4, 0, v107, 8, 0);
      }

      else
      {
LABEL_185:
        __p = 0;
        if (!MTLGPUArchiverDeleteWithId())
        {
          v76 = __p;
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v76, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &__p);
        }

        v77 = v100;
        if (v101 == v100)
        {
          v79 = 25;
        }

        else
        {
          if (((v101 - v100) >> 3) <= 1)
          {
            v78 = 1;
          }

          else
          {
            v78 = (v101 - v100) >> 3;
          }

          v79 = 25;
          do
          {
            v80 = *v77++;
            v79 += strlen(v80) + 1;
            --v78;
          }

          while (v78);
        }

        v81 = malloc_type_malloc(v79, 0x100004077774924uLL);
        qmemcpy(v81, "Failed to generate machO:", 25);
        v82 = v81 + 25;
        v83 = v100;
        if (v101 != v100)
        {
          v84 = 0;
          do
          {
            v85 = v83[v84];
            v86 = strlen(v85);
            memcpy(v82, v85, v86);
            v82 += v86;
            free(*(v100 + v84));
            *v82 = 10;
            ++v84;
            v83 = v100;
          }

          while (v84 < (v101 - v100) >> 3);
        }

        *v82 = 0;
        (*(a4 + 16))(a4, 2, 0, 0, v81);
        free(v81);
      }

      MTLGPUArchiverDestroy();
      goto LABEL_202;
    }

    v37 = 0;
    v38 = v94 + v36;
    v39 = v35 >> 6 << 6;
    v40 = 1;
    while (1)
    {
      v41 = *(v38 + v37);
      if (v41 > 1)
      {
        if (v41 == 2)
        {
          goto LABEL_103;
        }

        if (v41 != 3)
        {
LABEL_95:
          v103 = 0;
LABEL_119:
          v65 = v103;
          std::string::basic_string[abi:ne200100]<0>(v107, "MTLGenerateMachO");
          logMachOError(a1 + 80, v65, v107);
          if (SBYTE7(v107[1]) < 0)
          {
            operator delete(*&v107[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v100, &v103);
          v40 = 0;
          goto LABEL_122;
        }

        v42 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
        v43 = v42;
        v44 = *(v38 + v37 + 32);
        v45 = (v38 + v37 + 16);
        if ((v44 & 2) != 0)
        {
LABEL_86:
          v47 = *v45;
        }

        else
        {
          v46 = *v45;
          if (v46 != -1)
          {
            v45 = &v90[v46];
            goto LABEL_86;
          }

          v47 = 0;
        }

        v42[1] = v47;
        v48 = (v38 + v37 + 24);
        if (v44)
        {
LABEL_90:
          v50 = *v48;
        }

        else
        {
          v49 = *v48;
          if (v49 != -1)
          {
            v48 = &v90[v49];
            goto LABEL_90;
          }

          v50 = 0;
        }

        v42[2] = v50;
        v51 = (v38 + v37 + 8);
        if ((v44 & 4) == 0)
        {
          v52 = *v51;
          if (v52 == -1)
          {
            goto LABEL_107;
          }

          v51 = &v90[v52];
        }

        v53 = *v51;
LABEL_108:
        *v43 = v53;
        goto LABEL_115;
      }

      if (v41)
      {
        if (v41 != 1)
        {
          goto LABEL_95;
        }

LABEL_103:
        v43 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
        v62 = (v38 + v37 + 8);
        if ((*(v38 + v37 + 32) & 2) != 0)
        {
LABEL_106:
          v53 = *v62;
        }

        else
        {
          v63 = *v62;
          if (v63 != -1)
          {
            v62 = &v90[v63];
            goto LABEL_106;
          }

LABEL_107:
          v53 = 0;
        }

        goto LABEL_108;
      }

      v54 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
      v43 = v54;
      v55 = *(v38 + v37 + 32);
      v56 = (v38 + v37 + 8);
      if ((v55 & 2) == 0)
      {
        v57 = *v56;
        if (v57 == -1)
        {
          v58 = 0;
          goto LABEL_100;
        }

        v56 = &v90[v57];
      }

      v58 = *v56;
LABEL_100:
      *v54 = v58;
      v59 = v38 + v37;
      if (v55)
      {
        v61 = *(v59 + 16);
      }

      else
      {
        v60 = *(v59 + 16);
        if (v60 == -1)
        {
          v61 = 0;
        }

        else
        {
          v61 = v90[v60];
        }
      }

      v54[1] = v61;
LABEL_115:
      v103 = 0;
      if ((v40 & 1) == 0)
      {
        free(v43);
        goto LABEL_119;
      }

      v64 = MTLGPUArchiverAddPipeline();
      free(v43);
      if (!v64)
      {
        goto LABEL_119;
      }

      v40 = 1;
LABEL_122:
      v37 += 64;
      if (v39 == v37)
      {
        goto LABEL_123;
      }
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = v94 + *(v94 + 80);
  v9 = *(v94 + 104);
  while (1)
  {
    if (v7 >= v9 || (v10 = v7 + 32, v9 < v7 + 32) || (v11 = *(v8 + v7 + 16), v107[0] = *(v8 + v7), v107[1] = v11, v9 <= v10) || v9 - v10 <= 3 || v7 + 36 >= v9 || (v7 += 36 + *(v8 + v10), v7 > v9))
    {
      abort();
    }

    LLVMCreateMemoryBufferWithMemoryRange();
    v99 = 0;
    v12 = MTLGPUArchiverAddUnit();
    LLVMDisposeMemoryBuffer();
    if (!v12)
    {
      break;
    }

    v13 = MTLGPUArchiverUnitRefCreateWithUnitId();
    __p = v107;
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&v104, v107, &std::piecewise_construct, &__p)[6] = v13;
    if (++v6 >= *(v94 + 108))
    {
      goto LABEL_22;
    }
  }

  if (!MTLGPUArchiverDeleteWithId())
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
    logMachOError(a1 + 80, 0, &__p);
    if (v98 < 0)
    {
      operator delete(__p);
    }

    free(0);
  }

  v73 = v99;
  std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
  logMachOError(a1 + 80, v73, &__p);
  if (v98 < 0)
  {
    operator delete(__p);
  }

  (*(a4 + 16))(a4, 2, 0, 0, v99);
  free(v99);
  MTLGPUArchiverDestroy();
LABEL_202:
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  return std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v104);
}

void sub_213C65570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (*(v36 - 185) < 0)
  {
    operator delete(*(v36 - 208));
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a36);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::generateBinaryArchiveID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  if (MTLGPUArchiverCreateExecutableWriter())
  {
    v6 = MTLGPUArchiverToId();
    if (v6)
    {
      v7 = v6;
      v8 = strlen(v6);
      (*(a4 + 16))(a4, 0, v7, v8 + 1, 0);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
      logMachOError(a1 + 80, "Failed to create binary archive ID", __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      (*(a4 + 16))(a4, 2, 0, 0, "Failed to generate Binary archive ID");
    }

    MTLGPUArchiverDestroy();
  }

  else
  {
    v9 = v20;
    std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
    logMachOError(a1 + 80, v9, __p);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v17, "Failed to generate Binary archive ID: ");
    std::string::basic_string[abi:ne200100]<0>(v15, v20);
    if ((v16 & 0x80u) == 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = v15[1];
    }

    v12 = std::string::append(&v17, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v19 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    (*(a4 + 16))(a4, 2, 0, 0, v14);
    free(v20);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_213C658B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::find_if[abi:ne200100]<std::__wrap_iter<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo *>,fatalErrorHandler(void *,char const*,BOOL)::$_0>(uint64_t a1, uint64_t a2, const void ***a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = *(a3 + 23);
    while (1)
    {
      v7 = *(v3 + 23);
      v8 = v7 >= 0 ? *(v3 + 23) : *(v3 + 8);
      if ((v6 & 0x80) != 0)
      {
        if (v8 == -1)
        {
LABEL_26:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v10 = *a3;
        v9 = a3[1] >= v8 ? v8 : a3[1];
      }

      else
      {
        if (v8 == -1)
        {
          goto LABEL_26;
        }

        v9 = v6 >= v8 ? v8 : v6;
        v10 = a3;
      }

      v11 = v7 >= 0 ? v3 : *v3;
      if (!memcmp(v10, v11, v9) && v9 == v8)
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void *std::vector<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo>>::vector[abi:ne200100](void *a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_213C65A54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>,fatalErrorHandler(void *,char const*,BOOL)::CollectInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<llvm::Module *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C65D88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<ImageFilterFunctionInfoSPI>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ImageFilterFunctionInfoSPI>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<llvm::Function *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C65FA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::vector<ImageFilterFunctionArgumentInfoSPI>::__assign_with_size[abi:ne200100]<ImageFilterFunctionArgumentInfoSPI*,ImageFilterFunctionArgumentInfoSPI*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void *DeserialContext::stringFromSerializedData(DeserialContext *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = v1 - v2;
  if (v1 <= v2 || (v5 = *this, v6 = strnlen((*this + v2), v1 - v2), v6 == v3))
  {
    abort();
  }

  v7 = v6;
  result = [MEMORY[0x277CCACA8] stringWithCString:v5 + v2 encoding:4];
  *(this + 2) += v7 + 1;
  return result;
}

void logMachOError(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_213C7E907);
  if (a2 && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, " - ");
    v4 = std::string::append(&v7, a2);
    v5 = v4->__r_.__value_.__r.__words[0];
    v11[0] = v4->__r_.__value_.__l.__size_;
    *(v11 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    __p = v5;
    *v9 = v11[0];
    *&v9[7] = *(v11 + 7);
    v10 = v6;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    logMachOError();
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_213C66364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(void *a1, unint64_t *a2)
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
      if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<FunctionConstantDesc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<FunctionConstantDesc>::__emplace_back_slow_path<FunctionConstantDesc>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(&v16);
  return v15;
}

void sub_213C66A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 136;
      std::allocator<FunctionDesc>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

char *std::vector<MTLTagType>::emplace_back<MTLTagType>(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = (v13 + 1);
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
  return v6 - 8;
}

uint64_t std::vector<FunctionDesc>::__emplace_back_slow_path<FunctionDesc const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(a1, v6);
  }

  v7 = 136 * v2;
  v18 = 0;
  v19 = v7;
  v20 = 136 * v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  v11 = 136 * v2;
  *(v11 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>((v11 + 72), *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>((v7 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(v7 + 120) = *(a2 + 120);
  *&v20 = v20 + 136;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionDesc>,FunctionDesc*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<FunctionDesc>::~__split_buffer(&v18);
  return v17;
}

void sub_213C66CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 - 40) = v5;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100]((v6 - 40));
  std::__split_buffer<FunctionDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<FunctionConstantDesc>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*,FunctionConstantDesc*,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 8);
      v4[1].__r_.__value_.__r.__words[0] = v9;
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v14 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::vector<CompileTimeData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<MTLArgumentData>::__append(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (0x8E38E38E38E38E39 * ((v2 - v3) >> 5) < a2)
  {
    v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 5);
    if (v4 + a2 <= 0xE38E38E38E38E3)
    {
      v5 = 0x8E38E38E38E38E39 * ((v2 - *a1) >> 5);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x71C71C71C71C71)
      {
        v7 = 0xE38E38E38E38E3;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v7);
      }

      MTLArgumentData::MTLArgumentData((288 * v4));
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    MTLArgumentData::MTLArgumentData(v3);
  }

  a1[1] = v3;
}

void sub_213C67034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>>>::__emplace_unique_key_args<std::string,std::string,LLVMOpaqueMemoryBuffer *&>(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
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

const void **std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_213C67674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_213C6773C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282634780;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentPackingInfo(*a2, *a3, *a4, *a5, a6, a7, (v7 + 40));
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2826347C8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, uint64_t *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentLinkingInfo(*a2, *a3, *a4, *a5, *a6, a7, (v7 + 40));
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

id MTLDeserializePluginDataDictionary(const unsigned __int8 *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*a1];
  if (*a1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = &a1[v4];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 + 2 length:*v5 encoding:4 freeWhenDone:0];
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 + *v5 + 4 length:v5[1] freeWhenDone:0];
      [v2 setObject:v7 forKey:v6];

      v4 += *v5 + v5[1] + 4;
      ++v3;
    }

    while (v3 < *a1);
  }

  return v2;
}

uint64_t Air::CloneFunctionOptions<Air::FunctionOptions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 70) = 1;
  v9 = (a2 + v5);
  if (*v9 >= 0x15u && (v10 = v9[10]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, v11, 0);
  v15 = (a2 - *a2);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v17, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0x17u && (v19 = v18[11]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 22, v20, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  v21 = (a2 - *a2);
  v23 = *v21 >= 0x13u && (v22 = v21[9]) != 0 && *(a2 + v22) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v23, 0);
  v24 = (a2 - *a2);
  v26 = *v24 >= 0x11u && (v25 = v24[8]) != 0 && *(a2 + v25) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v26, 0);
  v27 = (a2 - *a2);
  v29 = *v27 >= 0xFu && (v28 = v27[7]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0xDu && (v31 = v30[6]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 0xBu && (v34 = v33[5]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v35, 0);
  v36 = (a2 - *a2);
  if (*v36 >= 5u && (v37 = v36[2]) != 0)
  {
    v38 = *(a2 + v37);
    if (v38 >= 3)
    {
      abort();
    }
  }

  else
  {
    v38 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v38, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneLinkedFunctions<Air::LinkedFunctions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v17 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v17 = a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 + v5);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v17 = a2 + v11 + *(a2 + v11);
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneVertexFunctionDescriptorINS3_24VertexFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39VertexFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C680D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneVertexDescriptor<Air::VertexDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v16 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + v5);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v16 = a2 + v10 + *(a2 + v10);
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v11);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  v6 = *v4 >= 0xDu && (v5 = v4[6]) != 0 && *(a2 + v5) != 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v6, 0);
  v10 = (a2 - *a2);
  v12 = *v10 >= 0xBu && (v11 = v10[5]) != 0 && *(a2 + v11) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v12, 0);
  v13 = (a2 - *a2);
  v15 = *v13 >= 9u && (v14 = v13[4]) != 0 && *(a2 + v14) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v15, 0);
  v16 = (a2 - *a2);
  v18 = *v16 >= 7u && (v17 = v16[3]) != 0 && *(a2 + v17) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v18, 0);
  v19 = (a2 - *a2);
  v21 = *v19 >= 5u && (v20 = v19[2]) != 0 && *(a2 + v20) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v21, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFunctionGroup<Air::FunctionGroup>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionGroup>,std::allocator<flatbuffers::Offset<Air::FunctionGroup>>>(std::vector<flatbuffers::Offset<Air::FunctionGroup>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C68550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_213C68638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_213C68720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C6879C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFunctionGroup<Air::FunctionGroup>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    v16 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = &a2[v5];
  if (*v9 >= 5u && (v10 = *(v9 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v10 + 4 + *&a2[v10]], *&a2[v10 + *&a2[v10]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_213C6899C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C68A18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(a1, *(v7 + 4 * v8));
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 8) - *(a1 + 12) + *(a1 + 10) - a2 + 4;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v4);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::fill(this, 1uLL);
  flatbuffers::vector_downward::push(this, a2, a3);
  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

uint64_t *std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C68BFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
    if (v6 >= 3)
    {
      abort();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v6, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v7 + v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C68D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C68E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C68ED0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v12, 1);
  v14 = (a2 - *a2);
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      v13 = *(a2 + v15);
      if (v13 >= 9)
      {
        abort();
      }
    }

    else
    {
      v13 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v13, 1);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t *std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C69060(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  v13 = (a2 - *a2);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = *(a2 + v14);
    if (v15 >= 0x38 || ((0xFFE7FFFFFFFFFFuLL >> v15) & 1) == 0)
    {
      abort();
    }

    v16 = byte_213C7D580[v15];
  }

  else
  {
    v16 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v16, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air33FragmentColorAttachmentDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePixelFormat<Air::PixelFormat>(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 53:
    case 54:
    case 55:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 84:
    case 85:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 123:
    case 124:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
    case 263:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 313:
    case 314:
    case 315:
    case 323:
    case 324:
    case 325:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 550:
    case 551:
    case 552:
    case 553:
    case 554:
    case 555:
    case 556:
    case 560:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
    case 650:
    case 651:
    case 652:
      return result;
    default:
      abort();
  }
}

uint64_t *std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C69410(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);
  v11 = (a2 - *a2);
  if (*v11 >= 0x15u && (v12 = v11[10]) != 0)
  {
    v13 = *(a2 + v12);
    if (v13 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v13, 1);
  v15 = (a2 - *a2);
  if (*v15 >= 0x13u)
  {
    v16 = v15[9];
    if (v16)
    {
      v14 = *(a2 + v16);
      if (v14 >= 0x14)
      {
LABEL_36:
        abort();
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v14, 1);
  v17 = (a2 - *a2);
  if (*v17 >= 0x11u && (v18 = v17[8]) != 0)
  {
    v19 = *(a2 + v18);
    if (v19 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v19, 0);
  v20 = (a2 - *a2);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = *(a2 + v21);
    if (v22 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v22, 0);
  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(a2 + v24);
    if (v25 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v25, 0);
  v26 = (a2 - *a2);
  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
  {
    v28 = *(a2 + v27);
    if (v28 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v28, 0);
  v29 = (a2 - *a2);
  if (*v29 >= 9u && (v30 = v29[4]) != 0)
  {
    v31 = *(a2 + v30);
    if (v31 >= 3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v31, 0);
  v32 = (a2 - *a2);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(a2 + v33);
  }

  else
  {
    v34 = 15;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v34, 15);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(uint64_t a1, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

char *flatbuffers::FlatBufferBuilder::AddElement<float>(char *result, uint64_t a2, float a3, float a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<float>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<float>(uint64_t a1, float a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C69904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_30CloneComputeFunctionDescriptorINS3_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C699E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneStageInputOutputDescriptor<Air::StageInputOutputDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v20 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 5u && *(a2 + v5 + 4))
  {
    v20 = a2 + *(a2 + v5 + 4) + *(a2 + *(a2 + v5 + 4));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 70) = 1;
  v10 = (a2 + v5);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v9);
  }

  v16 = (a2 - *a2);
  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
  {
    v18 = *(a2 + v17);
    if (v18 >= 2)
    {
      abort();
    }
  }

  else
  {
    v18 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v18, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t *std::vector<unsigned long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_213C69C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 8 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 8 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 8uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C69F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C69FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air29TileColorAttachmentDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C6A0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C6A154(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = (a2 - *a2);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = *(a2 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 - v3;
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v4);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C6A2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneObjectFunctionDescriptorINS3_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C6A380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_213C6A43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneMeshFunctionDescriptorINS3_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_213C6A51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void __cxx_global_array_dtor()
{
  v0 = &byte_2811301CF;
  v1 = -48;
  v2 = &byte_2811301CF;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void __cxx_global_array_dtor_147()
{
  v0 = &byte_28113019F;
  v1 = -48;
  v2 = &byte_28113019F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void MTLInternalDataBindingPass::~MTLInternalDataBindingPass(MTLInternalDataBindingPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL MTLInternalDataBindingPass::runOnModule(MTLBoundsCheck **this, llvm::Module *a2)
{
  v84[20] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (!EntryFunction)
  {
    return 0;
  }

  v6 = EntryFunction;
  if (MTLBoundsCheck::isLibraryModule(this[6], v5))
  {
    return 0;
  }

  v58 = a2;
  v82 = v84;
  v83 = 0x400000000;
  MTLInternalDataBindingPass::populateGlobalValues(this, v7);
  v9 = a2;
  v10 = a2 + 8;
  v11 = *(v9 + 2);
  if (v11 != (v9 + 8))
  {
    do
    {
      if (v11)
      {
        v12 = (v11 - 56);
      }

      else
      {
        v12 = 0;
      }

      if ((v12[33] & 0x1C) != 0 && *(*v12 + 8) == 15)
      {
        Metadata = llvm::Value::getMetadata();
        if (Metadata)
        {
          llvm::Value::setMetadata();
          LOBYTE(v67[0]) = 0;
          v68 = 0;
          *&v66 = v12;
          v14 = (Metadata - 8 * *(Metadata + 8));
          *(&v66 + 1) = *v14;
          v15 = v14[1];
          if (v15)
          {
            v67[0] = llvm::MDString::getString(v15);
            v67[1] = v16;
            if ((v68 & 1) == 0)
            {
              v68 = 1;
            }
          }

          llvm::SmallVectorImpl<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(&v82, &v66);
        }
      }

      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }

  v17 = this[5];
  *&v66 = v67;
  *(&v66 + 1) = 0x200000000;
  v71 = v17;
  v72 = &v80;
  v73 = &v81;
  v74 = 0;
  v75 = 0;
  v76 = 512;
  v77 = 7;
  v69 = 0;
  v70 = 0;
  v78 = 0;
  v79 = 0;
  v80 = MEMORY[0x277D821C8] + 16;
  v81 = MEMORY[0x277D82210] + 16;
  v18 = *(v6 + 80);
  if (v18)
  {
    v19 = (v18 - 24);
  }

  else
  {
    v19 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v19);
  if (FirstInsertionPt)
  {
    v21 = (FirstInsertionPt - 24);
  }

  else
  {
    v21 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint(&v66, v21);
  llvm::Function::addFnAttr();
  BufferIntrinsicFunction = MTLInternalDataBindingPass::getBufferIntrinsicFunction(this, this[6]);
  v24 = BufferIntrinsicFunction;
  if (BufferIntrinsicFunction)
  {
    v25 = *(BufferIntrinsicFunction + 24);
  }

  else
  {
    v25 = 0;
  }

  llvm::Type::getInt32Ty(v71, v23);
  __dst = llvm::ConstantInt::get();
  v62 = 257;
  v26 = llvm::IRBuilderBase::CreateCall(&v66, v25, v24, &__dst, 1, v61, 0);
  v27 = llvm::PointerType::get();
  v62 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&v66, v26, v27, v61);
  i = v83 != 0;
  if (!v83)
  {
    goto LABEL_75;
  }

  v28 = v82;
  v60 = (v82 + 40 * v83);
  do
  {
    v29 = *v28;
    v30 = *(*v28 + 3);
    Name = llvm::Value::getName(*v28);
    if (!Name)
    {
      __dst = 0;
      v64 = 0;
      v65 = 0;
LABEL_47:
      v37 = v30[8];
      if (v37 != 15)
      {
        v30 = llvm::PointerType::get();
        v37 = v30[8];
      }

      v38 = this[9];
      if (v37 == 15)
      {
        v39 = llvm::ConstantInt::get();
        v62 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP(&v66, v38, BitOrPointerCast, v39, v61);
        v41 = this[9];
        v62 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&v66, v41, GEP, 0, 0, v61);
        v62 = 260;
        v61[0] = &__dst;
        llvm::Value::setName();
        v43 = *(v29 + 24);
        v62 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(&v66, 48, AlignedLoad, v43, v61);
        llvm::IRBuilderBase::CreateAlignedStore(&v66, Cast, v29, 0, 0);
      }

      else
      {
        v45 = llvm::ConstantInt::get();
        v62 = 257;
        v46 = llvm::IRBuilderBase::CreateGEP(&v66, v38, BitOrPointerCast, v45, v61);
        v62 = 260;
        v61[0] = &__dst;
        llvm::Value::setName();
        v62 = 257;
        v47 = llvm::IRBuilderBase::CreateBitOrPointerCast(&v66, v46, v30, v61);
        v48 = this[9];
        if (v30 == v48 || v30 == this[10])
        {
          v62 = 257;
          v47 = llvm::IRBuilderBase::CreateAlignedLoad(&v66, v48, v47, 0, 0, v61);
        }

        v62 = 260;
        v61[0] = &__dst;
        llvm::Value::setName();
        llvm::IRBuilderBase::CreateAlignedStore(&v66, v47, v29, 0, 0);
      }

      goto LABEL_55;
    }

    v33 = v31;
    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v65) = v31;
    if (v31)
    {
      memmove(&__dst, Name, v31);
    }

    *(&__dst + v33) = 0;
    if ((SHIBYTE(v65) & 0x80000000) == 0 || v64 != 26)
    {
      goto LABEL_47;
    }

    v34 = *__dst == 0x626F6C672E6C746DLL && __dst[1] == 0x74736E6F635F6C61;
    v35 = v34 && __dst[2] == 0x6261745F73746E61;
    if (!v35 || *(__dst + 12) != 25964)
    {
      goto LABEL_47;
    }

LABEL_55:
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__dst);
    }

    v28 += 5;
  }

  while (v28 != v60);
  v49 = *(v58 + 4);
  for (i = 1; v49 != (v58 + 24); v49 = v49[1])
  {
    if (v49)
    {
      v50 = (v49 - 7);
    }

    else
    {
      v50 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v50) & 1) == 0)
    {
      v51 = *(v50 + 3);
      v52 = *(v51 + 12);
      if (v52 != 1)
      {
        v53 = *(v51 + 16) + 8;
        v54 = 8 * v52 - 8;
        while (1)
        {
          if (*(*v53 + 8) == 15)
          {
            v56 = *(this[4] + 20);
            v55 = *(*v53 + 8);
            if (MTLBoundsCheck::checkAddressSpace((v55 >> 8)) | ((v55 & 0xFFFFFF00) == 768) & BYTE3(v56))
            {
              break;
            }
          }

          v53 += 8;
          v54 -= 8;
          if (!v54)
          {
            goto LABEL_74;
          }
        }

        if ((*(this[4] + 20) & 2) != 0)
        {
          if (llvm::Function::onlyReadsMemory(v50))
          {
            llvm::Function::removeFnAttr();
          }

          if (llvm::Function::hasFnAttribute())
          {
            llvm::Function::removeFnAttr();
          }
        }
      }
    }

LABEL_74:
    ;
  }

LABEL_75:
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v81);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v80);
  if (v66 != v67)
  {
    free(v66);
  }

  if (v82 != v84)
  {
    free(v82);
  }

  return i;
}

void sub_213C6AF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a29);
  if (a46 != v46)
  {
    free(a46);
  }

  _Unwind_Resume(a1);
}

llvm::GlobalVariable *MTLInternalDataBindingPass::populateGlobalValues(MTLBoundsCheck **this, llvm::Module *a2)
{
  result = MTLBoundsCheck::isLibraryModule(this[6], a2);
  if ((result & 1) == 0)
  {
    v4 = this[8];
    v5 = *(*(v4 + 9) + 20);
    if ((v5 & 0x800000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(v4);
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
      v6 = this[8];
      if ((*(*(v6 + 9) + 20) & 0x200000001) != 0)
      {
        MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(v6);
        MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(this[8]);
      }
    }

    else if ((v5 & 0x10000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(v4);
    }

    MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(this[8]);
    MTLBoundsCheck::SharedPassData::getOrInsertTextureTypeTableGV(this[8]);
    MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(this[8]);
    v7 = this[8];

    return MTLBoundsCheck::SharedPassData::getOrInsertReportCounterGV(v7);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(a1, a2);
  }

  v3 = *a1 + 40 * v2;
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 32) = *(a2 + 4);
  *v3 = v4;
  *(v3 + 16) = v5;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 40 * v3 - 40;
}

uint64_t MTLInternalDataBindingPass::getBufferIntrinsicFunction(MTLInternalDataBindingPass *this, llvm::Type **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  llvm::Type::getInt64Ty(*a2, a2);
  llvm::Type::getInt32Ty(v3, v4);
  v5 = llvm::FunctionType::get();
  v7 = "air.get_dispatch_private_buffer";
  v8 = 259;
  return llvm::Function::Create(v5, 0, &v7, a2);
}

uint64_t llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v3;
  v10 = *(a2 + 32);
  v4 = llvm::SmallVectorTemplateCommon<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>>(a1, v9, 1);
  v5 = *a1 + 40 * *(a1 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 16);
  *v5 = *v4;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLInternalDataBindingPass::runOnModule(llvm::Module &)::GVInfo,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 40 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

void StitchingReflection::initializeMetadataTypeMapMap(StitchingReflection *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v362.__r_.__value_.__l.__size_ = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__s, "air.void_type");
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = __s;
  }

  v80 = xmmword_213C7D5C0;
  v81 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v77, "air.BOOL_type");
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v82 = v77;
  }

  v83 = xmmword_213C7D5D0;
  v84 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v76, "air.char_type");
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v76;
  }

  v86 = xmmword_213C7D5E0;
  v87 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v75, "air.uchar_type");
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v75;
  }

  v89 = xmmword_213C7D5F0;
  v90 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v74, "air.short_type");
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = v74;
  }

  v92 = xmmword_213C7D600;
  v93 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v73, "air.ushort_type");
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v73;
  }

  v95 = 41;
  v96 = 0;
  v97 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v72, "air.int_type");
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v72;
  }

  v99 = 29;
  v100 = 0;
  v101 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v71, "air.uint_type");
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v102 = v71;
  }

  v103 = 33;
  v104 = 0;
  v105 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v70, "air.long_type");
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v70;
  }

  v107 = 81;
  v108 = 0;
  v109 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v69, "air.ulong_type");
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v69;
  }

  v111 = 85;
  v112 = 0;
  v113 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v68, "air.half_type");
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v114 = v68;
  }

  v115 = 16;
  v116 = 0;
  v117 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v67, "air.float_type");
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v67;
  }

  v119 = 3;
  v120 = 0;
  v121 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v66, "air.double_type");
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v122 = v66;
  }

  v123 = 89;
  v124 = 0;
  v125 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v65, "air.bfloat_type");
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v65;
  }

  v127 = 121;
  v128 = 0;
  v129 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v64, "air.matrix_type");
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v64;
  }

  v131 = 136;
  v132 = 0;
  v133 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v63, "air.pointer_type");
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v63;
  }

  v135 = 60;
  v136 = 0;
  v137 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v62, "air.lvalue_reference_type");
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v62;
  }

  v139 = 60;
  v140 = 0;
  v141 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v61, "air.rvalue_reference_type");
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v142, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v142 = v61;
  }

  v143 = 60;
  v144 = 0;
  v145 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v60, "air.array_type");
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v60;
  }

  v147 = 2;
  v148 = 0;
  v149 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v59, "air.struct_type");
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v150 = v59;
  }

  v151 = 1;
  v152 = 0;
  v153 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v58, "air.sampler_type");
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v58;
  }

  v155 = 59;
  v156 = 0;
  v157 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v57, "air.instance_acceleration_structure_type");
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v57;
  }

  v159 = 118;
  v160 = 0;
  v161 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v56, "air.primitive_acceleration_structure_type");
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v56;
  }

  v163 = 117;
  v164 = 0;
  v165 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v55, "air.texture_1d_type");
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v55;
  }

  v167 = 58;
  v168 = 0;
  v169 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v54, "air.texture_1d_array_type");
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v170, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v170 = v54;
  }

  v171 = 58;
  v172 = 1;
  v173 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v53, "air.texture_2d_type");
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v53;
  }

  v175 = 58;
  v176 = 2;
  v177 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v52, "air.texture_2d_array_type");
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v52;
  }

  v179 = 58;
  v180 = 3;
  v181 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v51, "air.texture_3d_type");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v51;
  }

  v183 = 58;
  v184 = 7;
  v185 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v50, "air.texture_cube_type");
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v50;
  }

  v187 = 58;
  v188 = 5;
  v189 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v49, "air.texture_cube_array_type");
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v49;
  }

  v191 = 58;
  v192 = 6;
  v193 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v48, "air.texture_2d_ms_type");
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v48;
  }

  v195 = 58;
  v196 = 4;
  v197 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v47, "air.texture_2d_ms_array_type");
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v47;
  }

  v199 = 58;
  v200 = 8;
  v201 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v46, "air.texture_buffer_1d_type");
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v202 = v46;
  }

  v203 = 58;
  v204 = 9;
  v205 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v45, "air.depth_2d_type");
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v45;
  }

  v207 = 58;
  v208 = 2;
  v209 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v44, "air.depth_2d_array_type");
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v210, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v210 = v44;
  }

  v211 = 58;
  v212 = 3;
  v213 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v43, "air.depth_cube_type");
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v214, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v214 = v43;
  }

  v215 = 58;
  v216 = 5;
  v217 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v42, "air.depth_cube_array_type");
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v218, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v218 = v42;
  }

  v219 = 58;
  v220 = 6;
  v221 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v41, "air.depth_2d_ms_type");
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v222, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v222 = v41;
  }

  v223 = 58;
  v224 = 4;
  v225 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v40, "air.depth_2d_ms_array_type");
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v40;
  }

  v227 = 58;
  v228 = 8;
  v229 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v39, "air.r8unorm_type");
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v39;
  }

  v231 = 62;
  v232 = 0;
  v233 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v38, "air.r8snorm_type");
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v234 = v38;
  }

  v235 = 63;
  v236 = 0;
  v237 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "air.r16unorm_type");
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v37;
  }

  v239 = 64;
  v240 = 0;
  v241 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v36, "air.r16snorm_type");
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v242, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v242 = v36;
  }

  v243 = 65;
  v244 = 0;
  v245 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v35, "air.rg8unorm_type");
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v35;
  }

  v247 = 66;
  v248 = 0;
  v249 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v34, "air.rg8snorm_type");
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v250, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v250 = v34;
  }

  v251 = 67;
  v252 = 0;
  v253 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v33, "air.rg16unorm_type");
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v254, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v254 = v33;
  }

  v255 = 68;
  v256 = 0;
  v257 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v32, "air.rg16snorm_type");
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v32;
  }

  v259 = 69;
  v260 = 0;
  v261 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v31, "air.rgba8unorm_type");
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v31;
  }

  v263 = 70;
  v264 = 0;
  v265 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v30, "air.rgba8snorm_type");
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v266, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v266 = v30;
  }

  v267 = 72;
  v268 = 0;
  v269 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29, "air.rgba16unorm_type");
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v270, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v270 = v29;
  }

  v271 = 73;
  v272 = 0;
  v273 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "air.rgba16snorm_type");
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v28;
  }

  v275 = 74;
  v276 = 0;
  v277 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v27, "air.srgba8unorm_type");
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v278, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v278 = v27;
  }

  v279 = 71;
  v280 = 0;
  v281 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v26, "air.rgb10a2_type");
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v26;
  }

  v283 = 75;
  v284 = 0;
  v285 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v25, "air.rg11b10f_type");
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v25;
  }

  v287 = 92;
  v288 = 0;
  v289 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v24, "air.rgb9e5_type");
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v24;
  }

  v291 = 77;
  v292 = 0;
  v293 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "air.visible_function_table_type");
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v294, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v294 = v23;
  }

  v295 = 115;
  v296 = 0;
  v297 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v22, "air.intersection_function_table_type");
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v298, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v298 = v22;
  }

  v299 = 116;
  v300 = 0;
  v301 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v21, "air.vector_type");
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v302, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v302 = v21;
  }

  v303 = 137;
  v304 = 0;
  v305 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v20, "air.packed_vector_type");
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v306, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v306 = v20;
  }

  v307 = 137;
  v308 = 0;
  v309 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "air.imageblock_type");
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v19;
  }

  v311 = 138;
  v312 = 0;
  v313 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v18, "air.opaque_type");
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v314, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v314 = v18;
  }

  v315 = 0u;
  v316 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v17, "air.llong_type");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v17;
  }

  v318 = 0u;
  v319 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v16, "air.ullong_type");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v320, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v320 = v16;
  }

  v321 = 0u;
  v322 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v15, "air.function_type");
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v323, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v323 = v15;
  }

  v324 = 0u;
  v325 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v14, "air.enum_type");
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v326, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v326 = v14;
  }

  v327 = 0u;
  v328 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "air.union_type");
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v329, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v329 = v13;
  }

  v330 = 0u;
  v331 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v12, "air.command_buffer_type");
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v332, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v332 = v12;
  }

  v333 = 0u;
  v334 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v11, "air.compute_pipeline_state_type");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v335, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v335 = v11;
  }

  v336 = 0u;
  v337 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "air.render_pipeline_state_type");
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v338, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v338 = v10;
  }

  v339 = 0u;
  v340 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v9, "air.mesh_grid_properties_type");
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v341, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v341 = v9;
  }

  v342 = 0u;
  v343 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "air.patch_control_point_type");
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v344, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v344 = v8;
  }

  v345 = 0u;
  v346 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v7, "air.interpolant_type");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v347, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v347 = v7;
  }

  v348 = 0u;
  v349 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "air.bounds_checked_buffer_type");
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v350, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v350 = v6;
  }

  v351 = 0u;
  v352 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "air.mesh_type");
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v353, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v353 = v5;
  }

  v354 = 0u;
  v355 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "air.array_of_type");
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v356, v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_);
  }

  else
  {
    v356 = v4;
  }

  v357 = 0u;
  v358 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "air.array_ref_of_type");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v359, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v359 = __p;
  }

  v360 = 0u;
  v361 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>((v1 + 312), &__str, &v362);
  v2 = 456;
  do
  {
    if (SHIBYTE(v77.__r_.__value_.__r.__words[v2 + 2]) < 0)
    {
      operator delete(*(&v77.__r_.__value_.__l.__data_ + v2 * 8));
    }

    v2 -= 6;
  }

  while (v2 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_213C6D130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (a87 < 0)
  {
    operator delete(a86);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a88);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(STACK[0x648]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(STACK[0x6A8]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  while (v88 != &STACK[0x720])
  {
    v90 = *(v88 - 25);
    v88 -= 6;
    if (v90 < 0)
    {
      operator delete(*v88);
    }
  }

  _Unwind_Resume(a1);
}

void StitchingReflection::StitchingReflection(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void sub_213C6DDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(a9);
  MTLArgumentData::~MTLArgumentData((v19 + 3));
  a19 = v19;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void StitchingReflection::getReflectionFromStitchingMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, a2, &v10);
  v8 = v10.n128_u32[0];
  if (v10.n128_i64[0] <= 57)
  {
    if (v10.n128_i64[0] > 32)
    {
      if (v10.n128_i64[0] > 44)
      {
        if (v10.n128_u64[0] != 45 && v10.n128_u64[0] != 49 && v10.n128_u64[0] != 53)
        {
          goto LABEL_38;
        }
      }

      else if (v10.n128_u64[0] != 33 && v10.n128_u64[0] != 37 && v10.n128_u64[0] != 41)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_i64[0] > 2)
    {
      if (v10.n128_u64[0] != 3 && v10.n128_u64[0] != 16 && v10.n128_u64[0] != 29)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_u64[0] == 1)
    {
      StitchingReflection::initStructType(a1, a2, v4, a4);
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 2)
    {
      StitchingReflection::initArrayType(a1, a2, a4);
      goto LABEL_12;
    }

LABEL_38:
    v9 = v13;
    *a4 = v12;
    *(a4 + 16) = v9;
    *(a4 + 32) = v14;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 48) = 0;
    v16 = 0;
    v15 = 0uLL;
    goto LABEL_12;
  }

  if (v10.n128_i64[0] > 135)
  {
    switch(v10.n128_u64[0])
    {
      case 0x88uLL:
        StitchingReflection::initMatrixType(a1, a2, a4);
        goto LABEL_12;
      case 0x89uLL:
        StitchingReflection::initVectorType(a1, a2, a4);
        goto LABEL_12;
      case 0x8AuLL:
        StitchingReflection::initImageBlockType(a1, a2, a4);
        goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (v10.n128_u64[0] - 59 > 0x3E)
  {
LABEL_32:
    if (v10.n128_u64[0] == 58)
    {
      StitchingReflection::initTextureType(a1, a2, v10.n128_i32[2], v11, a4);
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (((1 << (v10.n128_u8[0] - 59)) & 0x4000000044400004) == 0)
  {
    if (v10.n128_u64[0] == 59)
    {
      *(a4 + 64) = 0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *a4 = 59;
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 60)
    {
      StitchingReflection::initPointerType(a1, a2, a4);
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_11:
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *a4 = v8;
LABEL_12:
  v10.n128_u64[0] = &v15;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_213C6E080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a10 = &a19;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initScalarType@<D0>(MTLDataType a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = a1;
  return result;
}

uint64_t StitchingReflection::getMatrixType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v24);
  v3 = a2 - 8 * *(a2 + 8);
  v4 = *(*(v3 + 40) + 128);
  if (*(v4 + 16) == 16)
  {
    v5 = (v4 + 24);
    if (*(v4 + 32) >= 0x41u)
    {
      v5 = *v5;
    }

    v6 = *v5;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(*(v3 + 48) + 128);
  if (*(v7 + 16) == 16)
  {
    v8 = (v7 + 24);
    if (*(v7 + 32) >= 0x41u)
    {
      v8 = *v8;
    }

    v9 = *v8;
  }

  else
  {
    v9 = -1;
  }

  if (v24[0] == 121)
  {
    v18 = v9 - 2;
    v19 = v9 + 131;
    if ((v9 - 2) >= 3)
    {
      v19 = 0;
    }

    v20 = v9 | 0x80;
    if (v18 >= 3)
    {
      v20 = 0;
    }

    v21 = v9 + 125;
    if (v18 >= 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    if (v6 != 2)
    {
      v22 = 0;
    }

    if (v6 == 3)
    {
      v22 = v20;
    }

    if (v6 == 4)
    {
      return v19;
    }

    else
    {
      return v22;
    }
  }

  else
  {
    v10 = v9 - 2;
    v11 = v9 | 0x18;
    if ((v9 - 2) >= 3)
    {
      v11 = 0;
    }

    v12 = v9 + 21;
    if (v10 >= 3)
    {
      v12 = 0;
    }

    v13 = v9 + 18;
    if (v10 >= 3)
    {
      v13 = 0;
    }

    if (v6 != 2)
    {
      v13 = 0;
    }

    if (v6 != 3)
    {
      v12 = v13;
    }

    if (v6 != 4)
    {
      v11 = v12;
    }

    v14 = v9 + 11;
    if (v10 >= 3)
    {
      v14 = 0;
    }

    v15 = v9 | 8;
    if (v10 >= 3)
    {
      v15 = 0;
    }

    v16 = v9 + 5;
    if (v10 >= 3)
    {
      v16 = 0;
    }

    if (v6 != 2)
    {
      v16 = 0;
    }

    if (v6 == 3)
    {
      v16 = v15;
    }

    if (v6 == 4)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (v24[0] != 3)
    {
      v17 = 0;
    }

    if (v24[0] == 16)
    {
      return v11;
    }
  }

  return v17;
}

__n128 StitchingReflection::stitchingArgumentTypeFromNode@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v10[0] = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  v10[1] = v5;
  llvm::StringRef::str(v10, __p);
  v6 = std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>((a1 + 312), __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(v6 + 5);
  *a3 = result;
  a3[1].n128_u64[0] = v6[7];
  return result;
}

uint64_t StitchingReflection::getVectorType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), &v20);
  v3 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 - 2;
  if (v20.n128_i64[0] > 44)
  {
    v7 = v5 | 0x50;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v14 = v5 + 84;
    if (v6 >= 3)
    {
      v14 = 0;
    }

    v15 = v5 | 0x78;
    if (v6 >= 3)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 121)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 85)
    {
      v14 = v15;
    }

    if (v20.n128_u64[0] != 81)
    {
      v7 = v14;
    }

    v16 = v5 + 44;
    if (v6 >= 3)
    {
      v16 = 0;
    }

    v17 = v5 | 0x30;
    if (v6 >= 3)
    {
      v17 = 0;
    }

    v12 = v5 + 52;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 53)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 49)
    {
      v12 = v17;
    }

    if (v20.n128_u64[0] == 45)
    {
      v12 = v16;
    }

    v13 = v20.n128_u64[0] <= 80;
  }

  else
  {
    v7 = v5 | 0x20;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v8 = v5 + 36;
    if (v6 >= 3)
    {
      v8 = 0;
    }

    v9 = v5 | 0x28;
    if (v6 >= 3)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 41)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 37)
    {
      v8 = v9;
    }

    if (v20.n128_u64[0] != 33)
    {
      v7 = v8;
    }

    v10 = v5 + 2;
    if (v6 >= 3)
    {
      v10 = 0;
    }

    v11 = v5 + 15;
    if (v6 >= 3)
    {
      v11 = 0;
    }

    v12 = v5 + 28;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 29)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 16)
    {
      v12 = v11;
    }

    if (v20.n128_u64[0] == 3)
    {
      v12 = v10;
    }

    v13 = v20.n128_u64[0] <= 32;
  }

  if (v13)
  {
    return v12;
  }

  else
  {
    return v7;
  }
}

uint64_t StitchingReflection::getAccessType(uint64_t a1, uint64_t a2)
{
  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 40));
  if (v3 == 5)
  {
    return 2 * (memcmp(String, "write", 5uLL) == 0);
  }

  if (v3 == 10)
  {
    return memcmp(String, "read_write", 0xAuLL) == 0;
  }

  return 0;
}

unint64_t StitchingReflection::getTypeInfoDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - 8 * *(a2 + 8));
  v3 = *(v2[1] + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = *(v2[2] + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7 << 32;
  }

  else
  {
    v8 = 0xFFFFFFFF00000000;
  }

  v9 = v2[3];
  if (v9)
  {
    llvm::MDNode::classof(v9);
  }

  return v8 | v5;
}

void StitchingReflection::traverseStruct(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v4 = a2 - 8 * *(a2 + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v8 = llvm::MDNode::classof(v5);
    v54 = *(v4 + 40);
    if (v8 && *(v4 + 40) != 0)
    {
      v53 = *(v54 + 8);
      if (v53)
      {
        v10 = 0;
        v52 = a4;
        do
        {
          v69 = 0;
          v68 = 0u;
          memset(v67, 0, sizeof(v67));
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = xmmword_213C7D190;
          memset(v74, 0, sizeof(v74));
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v11 = *(v54 - 8 * *(v54 + 8) + 8 * v10);
          v66 = 0;
          v64 = 0u;
          __p = 0u;
          v12 = *(v11 + 8);
          v13 = (v11 - 8 * v12);
          v14 = *(v13[1] + 128);
          if (*(v14 + 16) == 16)
          {
            v15 = (v14 + 24);
            if (*(v14 + 32) >= 0x41u)
            {
              v15 = *v15;
            }

            v16 = *v15;
          }

          else
          {
            v16 = -1;
          }

          v61 = v16;
          v17 = *(v13[2] + 128);
          if (*(v17 + 16) == 16)
          {
            v18 = (v17 + 24);
            if (*(v17 + 32) >= 0x41u)
            {
              v18 = *v18;
            }

            v19 = *v18;
          }

          else
          {
            v19 = -1;
          }

          v62 = v19;
          v63 = v13[3];
          v20 = v13[4];
          if (v20)
          {
            String = llvm::MDString::getString(v20);
            v23 = -*(v11 + 8);
          }

          else
          {
            v22 = 0;
            v23 = -v12;
            String = &unk_213C7E907;
          }

          *&v64 = String;
          *(&v64 + 1) = v22;
          v24 = v11 + 8 * v23;
          v25 = *(v24 + 40);
          if (v25)
          {
            v26 = llvm::MDNode::classof(v25);
            v27 = *(v24 + 40);
            v28 = v27 ? v26 : 0;
            if (v28 == 1)
            {
              v29 = *(v27 + 8);
              std::vector<AttributeDescriptor>::reserve(&__p, v29);
              v30 = v27;
              if (v29)
              {
                do
                {
                  v31 = *(v30 - 8 * *(v27 + 8));
                  v32 = llvm::MDString::getString(*(v31 - 8 * *(v31 + 8)));
                  if (v33 == 22 && (*v32 == 0x646E65722E726961 ? (v34 = v32[1] == 0x65677261745F7265) : (v34 = 0), v34 ? (v35 = *(v32 + 14) == 0x727474615F746567) : (v35 = 0), v35))
                  {
                    v44 = *(*(v31 - 8 * *(v31 + 8) + 8) + 128);
                    if (*(v44 + 16) == 16)
                    {
                      v45 = (v44 + 24);
                      if (*(v44 + 32) >= 0x41u)
                      {
                        v45 = *v45;
                      }

                      v37 = *v45;
                    }

                    else
                    {
                      v37 = -1;
                    }

                    v36 = 10;
                  }

                  else
                  {
                    v36 = 0;
                    v37 = 0;
                  }

                  v38 = *(&__p + 1);
                  if (*(&__p + 1) >= v66)
                  {
                    v40 = (*(&__p + 1) - __p) >> 5;
                    v41 = v40 + 1;
                    if ((v40 + 1) >> 59)
                    {
                      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                    }

                    v42 = v66 - __p;
                    if ((v66 - __p) >> 4 > v41)
                    {
                      v41 = v42 >> 4;
                    }

                    if (v42 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v43 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v43 = v41;
                    }

                    if (v43)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(&__p, v43);
                    }

                    v46 = 32 * v40;
                    *v46 = v36;
                    *(v46 + 2) = 0;
                    *(v46 + 4) = v37;
                    *(v46 + 16) = 0;
                    *(v46 + 24) = 0;
                    *(v46 + 8) = 0;
                    v39 = 32 * v40 + 32;
                    v47 = (32 * v40 - (*(&__p + 1) - __p));
                    memcpy(v47, __p, *(&__p + 1) - __p);
                    v48 = __p;
                    *&__p = v47;
                    *(&__p + 1) = v39;
                    v66 = 0;
                    if (v48)
                    {
                      operator delete(v48);
                    }
                  }

                  else
                  {
                    **(&__p + 1) = v36;
                    *(v38 + 2) = 0;
                    *(v38 + 4) = v37;
                    *(v38 + 16) = 0;
                    *(v38 + 24) = 0;
                    v39 = v38 + 32;
                    *(v38 + 8) = 0;
                  }

                  *(&__p + 1) = v39;
                  v30 += 8;
                  --v29;
                }

                while (v29);
              }
            }
          }

          v67[0] = v64;
          LODWORD(v68) = v61;
          for (i = __p; i != *(&__p + 1); i += 32)
          {
            if (*i == 10)
            {
              LODWORD(v73) = *(i + 4);
            }
          }

          StitchingReflection::getReflectionFromStitchingMetadata(a1, v63, v52, &v56);
          if (v52)
          {
            DWORD1(v57) = HIDWORD(v56);
            HIDWORD(v56) = v56;
            LODWORD(v56) = 60;
          }

          v75 = v56;
          v76 = v57;
          v77 = v58;
          std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(&v74[1], v59, v60, 0x2E8BA2E8BA2E8BA3 * (v60 - v59));
          v50 = a3[1];
          if (v50 >= a3[2])
          {
            v51 = std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(a3, v67);
          }

          else
          {
            std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a3, a3[1], v67);
            v51 = v50 + 176;
            a3[1] = v50 + 176;
          }

          a3[1] = v51;
          v78 = &v59;
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v78);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          *&v56 = &v74[1];
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v56);
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          ++v10;
        }

        while (v10 != v53);
      }
    }
  }
}

void sub_213C6EA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  if (__p)
  {
    operator delete(__p);
  }

  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initMatrixType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  MatrixType = StitchingReflection::getMatrixType(a1, a2);
  *a3 = MatrixType;
  result = StitchingReflection::getTypeInfoDescriptor(MatrixType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_213C6EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initVectorType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  VectorType = StitchingReflection::getVectorType(a1, a2);
  *a3 = VectorType;
  result = StitchingReflection::getTypeInfoDescriptor(VectorType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_213C6EBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initSamplerType@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 59;
  return result;
}

uint64_t StitchingReflection::initTextureType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 58;
  *(a5 + 16) = (a4 << 16) | a3;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a5 + 12) = v9[0].n128_u32[0];
  result = StitchingReflection::getAccessType(v7, a2);
  *(a5 + 24) = result;
  return result;
}

void sub_213C6EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void StitchingReflection::initPointerType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 60;
  v5 = *(a2 - 8 * *(a2 + 8) + 32);
  StitchingReflection::getTypeInfoDescriptor(a1, v5);
  *(a3 + 24) = v6;
  StitchingReflection::getReflectionFromStitchingMetadata(a1, v5, 0, &v8);
  *(a3 + 4) = v9;
  v7 = v8;
  *(a3 + 12) = v8;
  *(a3 + 20) = v10;
  if (v7 == 1)
  {
    *(a3 + 32) = v11;
    if (&v8 != a3)
    {
      std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a3 + 48), v12, v13, 0x2E8BA2E8BA2E8BA3 * (v13 - v12));
    }
  }

  v14 = &v12;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_213C6ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v11 - 40) = v10;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  a9 = (v9 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void StitchingReflection::initStructType(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  v8 = (a4 + 48);
  *(a4 + 64) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *a4 = 1;
  *(a4 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  v9 = *(a2 - 8 * *(a2 + 8) + 32);
  if (v9)
  {
    String = llvm::MDString::getString(v9);
  }

  else
  {
    v11 = 0;
    String = &unk_213C7E907;
  }

  *(a4 + 32) = String;
  *(a4 + 40) = v11;
  std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(v8, 0, 0, 0);
  StitchingReflection::traverseStruct(a1, a2, v8, a3);
}

void sub_213C6EE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StitchingReflection::initArrayType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 2;
  *(a3 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a3 + 12) = v9[0].n128_u32[0];
  v6 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7;
  }

  else
  {
    v8 = -1;
  }

  *(a3 + 28) = v8;
}

void sub_213C6EF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_4(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_8(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_11(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_12(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_16(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 176)
  {
    v6 = (i - 72);
    std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 112);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  *(a1 + 8) = a2;
}

void std::vector<AttributeDescriptor>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(a1, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void StitchingReflection::~StitchingReflection(void **this)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(this + 39);
  v5 = this + 28;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = this[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[20];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[18];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t serializeStitchingTypeInfo(unsigned int *a1, uint64_t a2)
{
  v7 = (a2 + 16);
  (*(a2 + 16))(a2, *a1);
  (*v7)(a2, a1[1]);
  (*v7)(a2, a1[2]);
  (*v7)(a2, a1[3]);
  (*v7)(a2, a1[4]);
  (*v7)(a2, a1[5]);
  (*v7)(a2, a1[6]);
  v4 = a1[7];
  v5 = *v7;

  return v5(a2, v4);
}

uint64_t serializeStitchingStructInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a2;
  v15[1] = a3;
  (*(a5 + 16))(a5, v15);
  v8 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  result = (*(a4 + 16))(a4, v8);
  if (v8)
  {
    v10 = 0;
    v11 = 176 * v8;
    do
    {
      v12 = *a1 + v10;
      (*(a5 + 16))(a5, v12);
      (*(a4 + 16))(a4, *(v12 + 32));
      (*(a4 + 16))(a4, *(v12 + 76));
      v13 = *(v12 + 144);
      v14[0] = *(v12 + 128);
      v14[1] = v13;
      v14[2] = *(v12 + 160);
      result = serializeStitchingTypeInfo(v14, a4);
      if (LODWORD(v14[0]) == 1 || LODWORD(v14[0]) == 138 || LODWORD(v14[0]) == 60 && HIDWORD(v14[0]) == 1)
      {
        result = serializeStitchingStructInfo((v12 + 104), *(v12 + 16), *(v12 + 24), a4, a5);
      }

      v10 += 176;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t getStructIndirectArgumentIndexStride(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  v2 = *(v1 - 104);
  if (*(v1 - 80))
  {
    StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride((v1 - 72));
  }

  else
  {
    v5 = *(v1 - 120);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6 <= 1)
      {
        StructIndirectArgumentIndexStride = 1;
      }

      else
      {
        StructIndirectArgumentIndexStride = v6;
      }
    }

    else
    {
      StructIndirectArgumentIndexStride = 1;
    }
  }

  v7 = *(v1 - 136);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  return v2 + v7 * StructIndirectArgumentIndexStride;
}

void *std::vector<MTLArgumentData>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0xE38E38E38E38E4)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_213C6F650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__emplace_back_slow_path<>(void *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xE38E38E38E38E3)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v2)
    {
      v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
    {
      v3 = 0xE38E38E38E38E3;
    }

    else
    {
      v3 = v2;
    }

    v5 = a1;
    if (v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v3);
    }

    v4 = 288 * v1;
    MTLArgumentData::MTLArgumentData((288 * v1));
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void sub_213C6F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
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
      v9 = __str == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        *(v8 + 40) = *&v4[1].__r_.__value_.__l.__data_;
        *(v8 + 56) = v4[1].__r_.__value_.__s.__data_[16];
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(a1, v8);
        v4 += 2;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(a1, v4, v4);
    v4 += 2;
  }
}

void sub_213C6F87C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, (a2 + 16));
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__construct_node_hash<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_213C6FD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_213C6FE1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v13, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*,MTLStructMemberInfo*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<MTLStructMemberInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 112;
    do
    {
      v8 = *(v7 - 112);
      v9 = *(v7 - 96);
      v10 = *(v7 - 80);
      *(a4 + 48) = *(v7 - 64);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      v12 = *(v7 - 56);
      v11 = *(v7 - 48);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a4 + 64);
      *(a4 + 56) = v12;
      *(a4 + 64) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = v7 - 112;
      v15 = *(v7 - 40);
      *(a4 + 88) = *(v7 - 24);
      *(a4 + 72) = v15;
      if (a4 != v7 - 112)
      {
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a4 + 104), *(v7 - 8), *v7, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *(v7 - 8)) >> 4));
      }

      v16 = *(v7 + 16);
      v17 = *(v7 + 48);
      *(a4 + 144) = *(v7 + 32);
      *(a4 + 160) = v17;
      *(a4 + 128) = v16;
      a4 += 176;
      v7 += 176;
    }

    while (v14 + 176 != a3);
    return a3;
  }

  return result;
}

__n128 std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  v7 = a3[3];
  v8 = a3[4];
  v9 = a3[6];
  *(a2 + 80) = a3[5];
  *(a2 + 96) = v9;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  v11 = *(a3 + 14);
  v10 = *(a3 + 15);
  *(a2 + 120) = v10;
  *(a2 + 112) = v11;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a3 + 16);
  v12 = *(a3 + 17);
  *(a2 + 136) = v12;
  *(a2 + 128) = v13;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a3 + 19);
  *(a2 + 144) = *(a3 + 18);
  *(a2 + 152) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a3[10];
  v16 = a3[11];
  v17 = *(a3 + 24);
  *(a2 + 200) = 0;
  *(a2 + 192) = v17;
  *(a2 + 176) = v16;
  *(a2 + 160) = v15;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a2 + 200), *(a3 + 25), *(a3 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 26) - *(a3 + 25)) >> 4));
  result = a3[14];
  v19 = a3[15];
  v20 = a3[17];
  *(a2 + 256) = a3[16];
  *(a2 + 272) = v20;
  *(a2 + 224) = result;
  *(a2 + 240) = v19;
  return result;
}

void sub_213C701BC(_Unwind_Exception *a1)
{
  v5 = *(v1 + 152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(v3, v2);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *(a2 + 48) = *(a3 + 12);
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *a2 = v5;
  v8 = *(a3 + 8);
  *(a2 + 56) = *(a3 + 7);
  *(a2 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 72);
  v10 = *(a3 + 88);
  *(a2 + 104) = 0;
  *(a2 + 72) = v9;
  *(a2 + 88) = v10;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a2 + 104), *(a3 + 13), *(a3 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 14) - *(a3 + 13)) >> 4));
  result = a3[8];
  v12 = a3[10];
  *(a2 + 144) = a3[9];
  *(a2 + 160) = v12;
  *(a2 + 128) = result;
  return result;
}

void sub_213C70280(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<MTLStructMemberInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 176;
    std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v4, i - 176);
  }
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v13, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1]);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a1, v4, v6);
      v6 += 11;
      v4 = v12 + 176;
      v12 += 176;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t *std::vector<MTLArgumentData>::__init_with_size[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLArgumentData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_213C70550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(a1, v4, v6);
      v6 += 18;
      v4 = v12 + 288;
      v12 += 288;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

__int128 *std::vector<MTLArgumentData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLArgumentData const*>,std::__wrap_iter<MTLArgumentData const*>>(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 5)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 5)) >= a5)
      {
        v18 = 9 * a5;
        std::vector<MTLArgumentData>::__move_range(a1, a2, a1[1], &a2[18 * a5]);
        v17 = &v7[2 * v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<MTLArgumentData>::__move_range(a1, v5, v10, &v5[18 * a5]);
        v17 = v7 + v16;
      }

      std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 5);
    if (v12 > 0xE38E38E38E38E3)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 5);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x71C71C71C71C71)
    {
      v15 = 0xE38E38E38E38E3;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v15);
    }

    v19 = 32 * (v13 >> 5);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = v19 + 288 * a5;
    v21 = 288 * a5;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(v26, v19, v7);
      v19 += 288;
      v7 += 18;
      v21 -= 288;
    }

    while (v21);
    v24 = v20;
    v5 = std::vector<MTLArgumentData>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<MTLArgumentData>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<MTLArgumentData>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = *(v9 + 32);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = v11;
      *v8 = v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v9 + 96);
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = v14;
      *(v8 + 48) = v12;
      *(v8 + 64) = v13;
      *(v8 + 112) = *(v9 + 112);
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v8 + 128) = *(v9 + 128);
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v8 + 144) = *(v9 + 144);
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      v15 = *(v9 + 176);
      v16 = *(v9 + 192);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = v15;
      *(v8 + 192) = v16;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      *(v8 + 200) = *(v9 + 200);
      *(v8 + 216) = *(v9 + 216);
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;
      *(v9 + 216) = 0;
      v17 = *(v9 + 224);
      v18 = *(v9 + 240);
      v19 = *(v9 + 272);
      *(v8 + 256) = *(v9 + 256);
      *(v8 + 272) = v19;
      *(v8 + 224) = v17;
      *(v8 + 240) = v18;
      v9 += 288;
      v8 += 288;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(&v21, a2, v7, v6);
}

uint64_t std::vector<MTLArgumentData>::__swap_out_circular_buffer(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = (a4 + v7 - 288);
      v11 = *(a3 + v7 - 240);
      v12 = *(a3 + v7 - 224);
      v13 = *(a3 + v7 - 192);
      *(v9 - 208) = *(a3 + v7 - 208);
      *(v9 - 192) = v13;
      *(v9 - 240) = v11;
      *(v9 - 224) = v12;
      v14 = *(a3 + v7 - 288);
      v15 = *(a3 + v7 - 272);
      *(v9 - 256) = *(a3 + v7 - 256);
      *v10 = v14;
      v10[1] = v15;
      v16 = *(a3 + v7 - 176);
      *(v8 - 176) = 0;
      *(v8 - 168) = 0;
      v17 = *(a4 + v7 - 168);
      *(v9 - 176) = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v18 = *(v8 - 160);
      *(v8 - 160) = 0;
      *(v8 - 152) = 0;
      v19 = *(v9 - 152);
      *(v9 - 160) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v20 = a4 + v7;
      v21 = a3 + v7;
      v22 = *(a3 + v7 - 144);
      *(v21 - 144) = 0;
      *(v21 - 136) = 0;
      v23 = *(a4 + v7 - 136);
      *(a4 + v7 - 144) = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v24 = *(v21 - 128);
      v25 = *(v21 - 112);
      *(v20 - 96) = *(v21 - 96);
      *(v20 - 128) = v24;
      *(v20 - 112) = v25;
      std::vector<MTLStructMemberInfo>::__vdeallocate((v20 - 88));
      *(v20 - 88) = *(v21 - 88);
      *(v20 - 72) = *(v21 - 72);
      *(v21 - 88) = 0;
      *(v21 - 80) = 0;
      *(v21 - 72) = 0;
      v26 = *(v21 - 64);
      v27 = *(v21 - 48);
      v28 = *(v21 - 16);
      *(v20 - 32) = *(v21 - 32);
      *(v20 - 16) = v28;
      *(v20 - 64) = v26;
      *(v20 - 48) = v27;
      v7 -= 288;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 208;
    do
    {
      v8 = *(v7 - 208);
      v9 = *(v7 - 176);
      *(a4 + 16) = *(v7 - 192);
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = *(v7 - 160);
      v11 = *(v7 - 144);
      v12 = *(v7 - 112);
      *(a4 + 80) = *(v7 - 128);
      *(a4 + 96) = v12;
      *(a4 + 48) = v10;
      *(a4 + 64) = v11;
      v14 = *(v7 - 96);
      v13 = *(v7 - 88);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a4 + 120);
      *(a4 + 112) = v14;
      *(a4 + 120) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v16 = v7 - 208;
      v18 = *(v7 - 80);
      v17 = *(v7 - 72);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *(a4 + 136);
      *(a4 + 128) = v18;
      *(a4 + 136) = v17;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v21 = *(v7 - 64);
      v20 = *(v7 - 56);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(a4 + 152);
      *(a4 + 144) = v21;
      *(a4 + 152) = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v23 = *(v7 - 48);
      v24 = *(v7 - 32);
      *(a4 + 192) = *(v7 - 16);
      *(a4 + 160) = v23;
      *(a4 + 176) = v24;
      if (a4 != v16)
      {
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a4 + 200), *(v7 - 8), *v7, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *(v7 - 8)) >> 4));
      }

      v25 = *(v7 + 16);
      v26 = *(v7 + 32);
      v27 = *(v7 + 64);
      *(a4 + 256) = *(v7 + 48);
      *(a4 + 272) = v27;
      *(a4 + 224) = v25;
      *(a4 + 240) = v26;
      a4 += 288;
      v7 += 288;
    }

    while (v16 + 288 != a3);
    return a3;
  }

  return result;
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to fstat %s: %s", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mmap failed for %s: %s, falling back to LLVM file loading", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to open %s: %s", v3, 0x16u);
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void rtLibPathInBundle(uint64_t a1, void *a2)
{
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

{
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void MTLCompilerSharedMemoryInterface::getRuntimeLibraryModules(uint8_t *buf, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 47) < 0)
  {
    a3 = *a3;
  }

  *buf = 136315138;
  *a4 = a3;
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Runtime library %s was not mapped", buf, 0xCu);
}

void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 64) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 40) = v6;

    operator delete(v6);
  }
}

uint64_t OGLCodeGenService::OGLCodeGenService()
{
  v0 = *MEMORY[0x277D85DF8];
  v1 = dlerror();
  return fprintf(v0, "OGLCodeGenService: ERROR: %s\n", v1);
}

uint64_t ConstantGlobalToArgPass::serializeConstantValue(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x21604C970](result, 0x1000C8000313F17);
  }

  return result;
}

void MTLCompilerObject::downgradeAndLoadModuleRequest()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    dword_281130290 = 0;
    xmmword_281130270 = 0u;
    unk_281130280 = 0u;
    unk_2811302A8 = 0u;
    unk_2811302B8 = 0u;
    unk_2811302C8 = 0u;
    __cxa_guard_release(_MergedGlobals);
  }
}

{
  if (__cxa_guard_acquire(byte_281130248))
  {
    qword_281130340 = &unk_281130350;
    qword_281130348 = 0x400000000;
    qword_2811303B0 = &unk_2811303C0;
    qword_2811303B8 = 0x1000000000;
    qword_2811304C0 = &unk_2811304D0;
    qword_2811304C8 = 0x1000000000;
    qword_281130590 = &qword_2811305A0;
    qword_281130598 = 0;
    qword_2811305A0 = &unk_2811305B8;
    xmmword_2811305A8 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, v1, v2);
    __cxa_guard_release(byte_281130248);
  }
}

void fatalDiagnosticHandler()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x277D85DE8]);
  v1 = 136315138;
  v2 = v0;
  _os_log_fault_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "LLVM ERROR: %s", &v1, 0xCu);
}

void MTLCompilerObject::addDebugInstrumentationToModule()
{
  if (__cxa_guard_acquire(byte_281130250))
  {
    LODWORD(xmmword_2811302F8) = 0;
    unk_2811302E8 = 0u;
    xmmword_2811302D8 = 0u;
    xmmword_281130310 = 0u;
    unk_281130320 = 0u;
    unk_281130330 = 0u;

    __cxa_guard_release(byte_281130250);
  }
}

{
  if (__cxa_guard_acquire(byte_281130258))
  {
    qword_2811305D0 = &unk_2811305E0;
    qword_2811305D8 = 0x400000000;
    qword_281130640 = &unk_281130650;
    qword_281130648 = 0x1000000000;
    qword_281130750 = &unk_281130760;
    qword_281130758 = 0x1000000000;
    qword_281130820 = &qword_281130830;
    qword_281130828 = 0;
    qword_281130830 = &qword_281130848;
    xmmword_281130838 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, &qword_2811305D0, v1);

    __cxa_guard_release(byte_281130258);
  }
}

void logCompileError()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void MTLCompilerPluginInterface::init()
{
  operator delete(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[0]);
}

{
  operator delete(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPluginSuffixes[0]);
}

void MTLCompilerPluginInterface::init(uint64_t a1, uint64_t a2, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to dlopen compiler plugin at %s, dlerror %s", buf, 0x16u);
}

void MTLCompilerPluginInterface::init(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = a1;
  _os_log_fault_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Compiler plugin %s is not registered with the MTLCompilerObject", &v1, 0xCu);
}

void std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t llvm::ErrorList::join(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    (*(v5 + 8))();
  }

  return MEMORY[0x21604C990](a2, 0xA1C4030951706);
}

void MTLCompilerObject::logCompilerFailure(id *a1)
{
  [objc_msgSend(*a1 "localizedDescription")];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLCompilerObject::logCompilerFailure(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

{
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void logMachOError()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

uint64_t llvm::AllocaInst::AllocaInst()
{
  return MEMORY[0x2821F1840]();
}

{
  return MEMORY[0x2821F1850]();
}

uint64_t llvm::BranchInst::BranchInst()
{
  return MEMORY[0x2821F1898]();
}

{
  return MEMORY[0x2821F18A0]();
}

{
  return MEMORY[0x2821F18A8]();
}

uint64_t llvm::StructType::create()
{
  return MEMORY[0x2821F19B0]();
}

{
  return MEMORY[0x2821F19C0]();
}

{
  return MEMORY[0x2821F19C8]();
}

uint64_t llvm::AttrBuilder::addAttribute()
{
  return MEMORY[0x2821F1AB8]();
}

{
  return MEMORY[0x2821F1AC0]();
}

uint64_t llvm::ConstantInt::get()
{
  return MEMORY[0x2821F1B60]();
}

{
  return MEMORY[0x2821F1B70]();
}

uint64_t llvm::Instruction::setMetadata()
{
  return MEMORY[0x2821F1C38]();
}

{
  return MEMORY[0x2821F1C40]();
}

uint64_t llvm::FunctionType::get()
{
  return MEMORY[0x2821F2050]();
}

{
  return MEMORY[0x2821F2058]();
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

uint64_t llvm::ConstantDataVector::get()
{
  return MEMORY[0x2821F2B48]();
}

{
  return MEMORY[0x2821F2B50]();
}

{
  return MEMORY[0x2821F2B58]();
}

{
  return MEMORY[0x2821F2B60]();
}

uint64_t llvm::ConstantDataVector::getFP()
{
  return MEMORY[0x2821F2B68]();
}

{
  return MEMORY[0x2821F2B70]();
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList()
{
    ;
  }
}

void llvm::SymbolTableListTraits<llvm::Function>::addNodeToList()
{
    ;
  }
}

uint64_t llvm::User::operator new(llvm::User *this)
{
  return MEMORY[0x2821F3B08](this);
}

{
  return MEMORY[0x2821F3B10](this);
}

{
  return MEMORY[0x2821F3B18](this);
}

uint64_t llvm::Value::setMetadata()
{
  return MEMORY[0x2821F3E18]();
}

{
  return MEMORY[0x2821F3E20]();
}

uint64_t llvm::Module::getOrInsertFunction()
{
  return MEMORY[0x2821F3FC0]();
}

{
  return MEMORY[0x2821F3FC8]();
}

uint64_t llvm::Function::addFnAttr()
{
  return MEMORY[0x2821F45E0]();
}

{
  return MEMORY[0x2821F45E8]();
}

{
  return MEMORY[0x2821F45F0]();
}

uint64_t llvm::Function::hasFnAttribute()
{
  return MEMORY[0x2821F5A00]();
}

{
  return MEMORY[0x2821F5A08]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}