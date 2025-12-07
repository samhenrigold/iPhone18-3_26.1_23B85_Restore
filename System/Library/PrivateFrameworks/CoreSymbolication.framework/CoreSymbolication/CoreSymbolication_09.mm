void extract_direct_stabs_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(void *a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, void *a7)
{
  v23 = a1[4];
  v24 = a1[1];
  v22 = (*(*v24 + 32))(v24, a5, a6);
  if (v22)
  {
    v13 = a4;
    TRawSymbolOwnerData<Pointer64>::presize_symbols_container_by(a2, a4);
    if (a4)
    {
      v14 = (a3 + 4);
      do
      {
        v15 = *v14;
        v16 = v15 <= 0x1F && (v15 & 0xE) == 14;
        if (v16 && v14[1])
        {
          v17 = 38289424;
          if ((v15 & 1) == 0)
          {
            v17 = 38289408;
          }

          if (v15 >= 0x10)
          {
            v18 = v17 | 0x20;
          }

          else
          {
            v18 = v17;
          }

          v19 = *(v14 + 1);
          if (a6 > *(v14 - 1) && TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::string_at(&v24))
          {
            v20 = (v22 + *(v14 - 1));
          }

          else
          {
            v20 = "$$$bad-name-in-nlist$$$";
          }

          if (*(a1[3] + 12) != 1 || strncmp(v20, "ltmp", 4uLL))
          {
            v21 = *(v14 + 4) + v23;
            if (a7)
            {
              v21 = TAddressRelocator<Pointer64>::relocate(a7, v21);
            }

            TRawSymbolOwnerData<Pointer64>::emplace_symbol(a2, v21, 0, v20, v20, v18 | (8 * v19) & 0x40, 0, 0);
          }
        }

        v14 += 16;
        --v13;
      }

      while (v13);
    }
  }
}

void extract_indirect_stabs_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  v11 = *(a3 + 72);
  v12 = *(a3 + 40);
  if (v11 <= v12)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v16 = *(a3 + 68);
      v17 = *(result + 32);
      v32 = *(result + 8);
      v28 = (*(*v32 + 32))(v32);
      if (v28)
      {
        v18 = v17 + v13;
        v19 = v12 / v11;
        TRawSymbolOwnerData<Pointer64>::presize_symbols_container_by(a2, v19);
        v20 = 0;
        v21 = 0;
        if (a5 >= v16)
        {
          v22 = a5 - v16;
        }

        else
        {
          v22 = 0;
        }

        v23 = a4 + 4 * v16;
        while (1)
        {
          if (v22 == v21)
          {
            return;
          }

          v24 = *(v23 + 4 * v21);
          v25 = "$$$indirect-absolute-symbol$$$";
          v26 = v18 + v20;
          if ((v24 & 0x40000000) != 0)
          {
            goto LABEL_17;
          }

          if ((v24 & 0x80000000) != 0)
          {
            break;
          }

          if (v24 < a7)
          {
            v27 = (a6 + 16 * v24);
            if (a10 > *v27 && TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::string_at(&v32))
            {
              v25 = (v28 + *v27);
              if (!a11)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v25 = "$$$bad-name-in-nlist$$$";
              if (!a11)
              {
                goto LABEL_19;
              }
            }

LABEL_18:
            v26 = TAddressRelocator<Pointer64>::relocate(a11, v18 + v20);
LABEL_19:
            TRawSymbolOwnerData<Pointer64>::emplace_symbol(a2, v26, v11, v25, v25, 0x2084102u, 0, 0);
          }

          ++v21;
          v20 += v11;
          if (v21 >= v19)
          {
            return;
          }
        }

        v25 = "$$$indirect-local-symbol$$$";
LABEL_17:
        if (a11)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }
  }
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symtab(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 2);
  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::dysymtab(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 11);
  return result;
}

uint64_t TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::string_at(uint64_t a1)
{
  for (i = *(**a1 + 32); ; i = *(**a1 + 32))
  {
    result = i();
    if (!result)
    {
      break;
    }

    v5 = 0;
    while (v4 != v5)
    {
      if (!*(result + v5++))
      {
        return result;
      }
    }
  }

  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::function_starts(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 32 + v1;
  v6 = a1 + 32;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 38);
  return result;
}

void extract_debug_maps_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2000000000;
  v39[3] = a2 + 208;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2000000000;
  v38[3] = a2 + 96;
  v11 = (*(**(a1 + 8) + 32))(*(a1 + 8), a5, a6);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3802000000;
  v33 = __Block_byref_object_copy__444;
  v34 = __Block_byref_object_dispose__445;
  v35 = a3;
  v36 = a4;
  v37 = 0;
  if (!a4)
  {
    goto LABEL_24;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = &v30;
  while (1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(v15 + 5);
    v16 = v27[3];
    if (*(v16 + 4) != 100 || *(v16 + 8))
    {
      goto LABEL_20;
    }

    v17 = v31;
    v18 = *(v31 + 13);
    if (v18 >= *(v31 + 12))
    {
      break;
    }

    v19 = v31[5];
    v20 = v19 + 16 * v18;
    v27[3] = v20;
    if (!v19)
    {
      goto LABEL_23;
    }

    if (*(v20 + 4) == 102 && *(v20 + 6) == 1)
    {
      v21 = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(v17 + 5);
      v27[3] = v21;
      v22 = *v21;
      if (!*(v12 + v22))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 48);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Empty object_file_path in mach-o header: %s\n", &buf, 0xCu);
        }

        fprintf(*MEMORY[0x1E69E9848], "Empty object_file_path in mach-o header: %s\n", *(a1 + 48));
      }

      if (!deny_nfs_mount_lookup((v12 + v22)))
      {
        if (v13)
        {
          if (v14)
          {
            goto LABEL_16;
          }

LABEL_18:
          v14 = 0;
        }

        else
        {
          if (access((v12 + v22), 4))
          {
            goto LABEL_18;
          }

LABEL_16:
          *&buf = CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification((v12 + v22), (*(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32)), 537657344, 0);
          *(&buf + 1) = v24;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 0x40000000;
          v25[2] = ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke;
          v25[3] = &unk_1E8584018;
          v25[4] = &v26;
          v25[5] = &v30;
          v25[8] = v10;
          v25[9] = v12;
          v25[10] = a1;
          v25[11] = a2;
          v25[6] = v38;
          v25[7] = v39;
          CSSymbolicatorForeachSymbolOwnerAtTime(buf, v24, 0x8000000000000000, v25);
          CSCppTypeRefMark::~CSCppTypeRefMark(&buf);
          v14 = 1;
        }

        v13 = 1;
      }
    }

LABEL_20:
    _Block_object_dispose(&v26, 8);
    v15 = v31;
    if (*(v31 + 13) >= *(v31 + 12))
    {
      goto LABEL_24;
    }
  }

  v27[3] = 0;
LABEL_23:
  _Block_object_dispose(&v26, 8);
LABEL_24:
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
}

void sub_1D9774C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  CSCppTypeRefMark::~CSCppTypeRefMark((v29 - 128));
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

const char *extract_relinked_subdylibs_in_debug_maps_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), a5, a6);
  v20 = a3;
  v21 = a4;
  v22 = 0;
  if (a4)
  {
    v11 = result;
    do
    {
      result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
      if (result[4] == 100)
      {
        v13 = v21;
        v12 = v22;
        if (!*(result + 1))
        {
          if (v22 >= v21 || !v20)
          {
            return result;
          }

          if (*(v20 + 16 * v22 + 4) == 104)
          {
            result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
            if (v22 >= v21)
            {
              return result;
            }

            v14 = *result;
            result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
            v13 = v21;
            v12 = v22;
            if (result[4] == 100)
            {
              if (v22 >= v21)
              {
                return result;
              }

              result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
              v13 = v21;
              v12 = v22;
              if (result[4] == 100)
              {
                if (v22 >= v21)
                {
                  return result;
                }

                result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
                v13 = v21;
                v12 = v22;
                if (result[4] == 102)
                {
                  while (v12 < v13)
                  {
                    if (v20)
                    {
                      v15 = v20 + 16 * v12;
                      v16 = *(v15 + 4);
                      if (v16 == 100)
                      {
                        if (!*(v15 + 8))
                        {
                          break;
                        }

LABEL_27:
                        result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
                        goto LABEL_28;
                      }

                      if (v16 != 46)
                      {
                        goto LABEL_27;
                      }

                      NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
                    }

                    result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
                    if (result[4] == 36)
                    {
                      v19 = *(result + 1) + v9;
                      do
                      {
                        result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
                        v17 = *(result + 4);
                      }

                      while (v17 == 132);
                      if (v17 == 36)
                      {
                        v18 = *(result + 1);
                        v13 = v21;
                        v12 = v22;
                        if (v22 >= v21)
                        {
                          break;
                        }

                        result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(&v20);
                        if (result[4] == 78)
                        {
                          CSCppStringCache::intern((a2 + 96), &v11[v14]);
                        }
                      }
                    }

LABEL_28:
                    v13 = v21;
                    v12 = v22;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v13 = v21;
        v12 = v22;
      }
    }

    while (v12 < v13);
  }

  return result;
}

__n128 __Block_byref_object_copy__444(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next(uint64_t *a1)
{
  v1 = *(a1 + 3);
  if (v1 >= *(a1 + 2))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "out of range index into nlist array", 35);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *a1;
  *(a1 + 3) = v1 + 1;
  return v2 + 16 * v1;
}

void sub_1D9774F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke(void *a1, char a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *(*(*(a1[4] + 8) + 24) + 8);
  result = CSSymbolOwnerGetLastModifiedTimestamp(a2, a3);
  v8 = result - v6;
  if (v6 > result)
  {
    v8 = v6 - result;
  }

  if (v6)
  {
    v9 = v8 > 5;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = MEMORY[0x1E69E9C10];
    while (1)
    {
      while (1)
      {
        result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next((*(a1[5] + 8) + 40));
        *(*(a1[4] + 8) + 24) = result;
        v11 = *(*(*(a1[4] + 8) + 24) + 4);
        if (v11 == 46)
        {
          break;
        }

        if (v11 == 100)
        {
          return result;
        }
      }

      result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next((*(a1[5] + 8) + 40));
      *(*(a1[4] + 8) + 24) = result;
      v12 = *(*(a1[4] + 8) + 24);
      if (*(v12 + 4) != 36)
      {
        break;
      }

      v13 = a1[9];
      v14 = *v12;
      if (!*(v13 + v14))
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1[10] + 48);
          *buf = 136315138;
          v18 = v15;
          _os_log_impl(&dword_1D96E9000, v10, OS_LOG_TYPE_ERROR, "Empty function_name in mach-o header: %s\n", buf, 0xCu);
        }

        fprintf(*MEMORY[0x1E69E9848], "Empty function_name in mach-o header: %s\n", *(a1[10] + 48));
      }

      do
      {
        result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next((*(a1[5] + 8) + 40));
        *(*(a1[4] + 8) + 24) = result;
        v16 = *(*(*(a1[4] + 8) + 24) + 4);
      }

      while (v16 == 132);
      if (v16 != 36)
      {
        break;
      }

      result = NListRangeChecker<SizeAndEndianness<Pointer64,LittleEndian>>::next((*(a1[5] + 8) + 40));
      *(*(a1[4] + 8) + 24) = result;
      if (*(*(*(a1[4] + 8) + 24) + 4) != 78)
      {
        break;
      }

      CSSymbolOwnerForeachSymbolWithMangledName(a2, a3, v13 + v14);
    }
  }

  return result;
}

unint64_t ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke_448(void *a1, uint64_t a2, uint64_t a3)
{
  v42[4] = *MEMORY[0x1E69E9840];
  v6 = a1[6] - CSSymbolGetRange(a2, a3, a3);
  if (CSSymbolIsKnownLength(a2, a3, v7))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  if (CSSymbolIsOmitFramePointer(a2, a3, v8))
  {
    v10 = v9 | 0x80;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v41 = 0;
    *buf = &unk_1F55075C0;
    *&buf[8] = v40;
    *(&v33 + 1) = 0;
    HIDWORD(v33) = 0;
    v34 = buf;
    std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::swap[abi:ne200100](buf, v40);
    std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](buf);
    v13 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8), v11, v12);
    v14 = (*(*v13 + 24))(v13);
    if ((v14 - 1) >= 2)
    {
      if (v14 == 4)
      {
        v19 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8), v15, v16);
        v30 = 0;
        if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v19, *(a3 & 0xFFFFFFFFFFFFFFFCLL), &v30))
        {
          *buf = 0;
          *&buf[8] = buf;
          v33 = 0x9002000000;
          v34 = __Block_byref_object_copy__450;
          v35 = __Block_byref_object_dispose__451;
          v20 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 4);
          v36 = (v30 + v6);
          v37 = v20;
          *v38 = 0;
          *&v38[8] = "$$$debug-map-fake-name$$$";
          *&v38[16] = "$$$debug-map-fake-mangled-name$$$";
          v39 = 0;
          memset(&v38[24], 0, 41);
          *&v38[4] = v10 | 0x8000000;
          v31[3] = 0;
          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps", buf, 2u);
        }

        fwrite("Could not remap archive address to real in debug maps", 0x35uLL, 1uLL, *MEMORY[0x1E69E9848]);
      }
    }

    else
    {
      v17 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 48);
      if (v18)
      {
        CSCppStringCache::intern(*(*(a1[4] + 8) + 24), v18);
      }

      v42[0] = 0;
      v42[1] = 0;
      v21 = *v17;
      if ((atomic_load_explicit((v17 + 28), memory_order_acquire) & 0x80000000) != 0)
      {
        v22 = v42;
        if (!*(v17 + 48))
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      *buf = v21;
      v33 = 0;
      v34 = 0;
      v35 = "$$$debug-map-fake-name$$$";
      v36 = "$$$debug-map-fake-mangled-name$$$";
      *&v38[32] = 0;
      v37 = 0u;
      memset(v38, 0, 25);
      if (v22)
      {
        v37 = *v22;
        v23 = v10 | 0x88000000;
      }

      else
      {
        v23 = v10 | 0x8000000;
      }

      HIDWORD(v34) = v23;
      v24 = *(v17 + 64);
      for (i = *(v17 + 72); v24 != i; v24 += 104)
      {
        if (!v41)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v41 + 48))(v41, v24, v38, *(*(a1[4] + 8) + 24));
      }

      slideSymbolsByOffset<Pointer64>(buf, v6);
      TRawSymbolOwnerData<Pointer64>::add_symbol(a1[7], buf);
      v31[0] = v38;
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v31);
    }

    std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v40);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke_454;
  v27[3] = &unk_1E8583FC8;
  v28 = *(a1 + 2);
  v29 = v6;
  return CSSymbolForeachSourceInfo(a2, a3, v27);
}

void sub_1D977573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v44 + 48);
  std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](&a27);
  _Block_object_dispose(&a31, 8);
  *(v45 - 120) = &a44;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v45 - 120));
  std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v45 - 152);
  _Unwind_Resume(a1);
}

void *slideSymbolsByOffset<Pointer64>(void *result, uint64_t a2)
{
  *result += a2;
  v2 = result[8];
  for (i = result[9]; v2 != i; v2 += 13)
  {
    result = slideSymbolsByOffset<Pointer64>(v2, a2);
  }

  return result;
}

uint64_t __Block_byref_object_copy__450(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0u;
  v2 = a1 + 40;
  *(v2 + 96) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 73) = 0u;
  return TRawSymbol<Pointer64>::operator=(v2, a2 + 40);
}

uint64_t std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke_454(void *a1, uint64_t a2, _BOOL8 a3)
{
  v6 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8), a2, a3);
  v7 = (*(*v6 + 24))(v6);
  if ((v7 - 1) < 2)
  {
    CSCppStringCache::intern(*(*(a1[4] + 8) + 24), *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 16));
  }

  if (v7 == 4)
  {
    v10 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8), v8, v9);
    v11 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v12 = *(v10 + 88);
    v13 = *(*(a1[4] + 8) + 24);
    v14 = CSCppMMapSourceInfo::path(v11, v12 + 32 * v12[2] + 24 * v12[3] + (24 * v12[4]) + (4 * v12[4]) + (36 * v12[5]) + (20 * v12[6]) + v12[22] + v12[20] + 96);
    CSCppStringCache::intern(v13, v14);
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlR10TRawSymbolIS4_ERNS_6vectorISM_NS_9allocatorISM_EEEER16CSCppStringCacheE_NSP_ISV_EEFvSN_SS_SU_EE7__cloneEPNS0_6__baseISX_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F55075C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlR10TRawSymbolIS4_ERNS_6vectorISM_NS_9allocatorISM_EEEER16CSCppStringCacheE_NSP_ISV_EEFvSN_SS_SU_EEclESN_SS_SU_(uint64_t a1, uint64_t a2, uint64_t a3, CSCppStringCache *this)
{
  v6 = *(a2 + 48);
  if (v6)
  {
    CSCppStringCache::intern(this, v6);
  }

  atomic_load_explicit((a2 + 28), memory_order_acquire);
  v7 = TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::EphemeralMangledName>(a2);
  CSCppStringCache::intern(this, v7);
}

void sub_1D9775D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 - 88) = &a19;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v19 - 88));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlR10TRawSymbolIS4_ERNS_6vectorISM_NS_9allocatorISM_EEEER16CSCppStringCacheE_NSP_ISV_EEFvSN_SS_SU_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_EEUb_EUb_EUlR10TRawSymbolIS1_ERNSt3__16vectorISJ_NSL_9allocatorISJ_EEEER16CSCppStringCacheE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::EphemeralMangledName>(uint64_t a1)
{
  if (atomic_load_explicit((a1 + 28), memory_order_acquire) != 2048 && (atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x400000) == 0)
  {
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2000000000;
    operator new();
  }

  return *(a1 + 40);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E21_resolve_mangled_nameINS1_20EphemeralMangledNameEEEPKcT__block_invoke(atomic_uint *volatile *result)
{
  v1 = *(result + 5);
  v2 = (v1 + 28);
  if ((atomic_load_explicit((v1 + 28), memory_order_acquire) & 0x400000) != 0)
  {
    return result;
  }

  v3 = result;
  explicit = atomic_load_explicit(v2, memory_order_acquire);
  v5 = atomic_load_explicit(v2, memory_order_acquire);
  if ((explicit & 0x80000) != 0)
  {
    v6 = 0x400000;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    v7 = "DYLD-STUB$$";
LABEL_11:
    *(v1 + 96) = v7;
    goto LABEL_12;
  }

  if ((v5 & 0x100000) != 0 || (atomic_load_explicit((v1 + 28), memory_order_acquire) & 0x200000) != 0)
  {
    is_objc_method_internal = TRawSymbol<Pointer32>::is_objc_method_internal(v1, *(v1 + 40));
    v6 = is_objc_method_internal | 0x400000;
    if ((is_objc_method_internal & 4) != 0)
    {
      goto LABEL_12;
    }

    v7 = "_";
    goto LABEL_11;
  }

  v6 = 0x400000;
LABEL_12:
  v9 = *(*(*(v3 + 4) + 8) + 24);

  return CSCppBitLock::set_bits(v9, v6);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer64E21_resolve_mangled_nameINS1_20EphemeralMangledNameEEEPKcT__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void *std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1D97762EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNS_6vectorI10TRawSymbolIS4_ENS_9allocatorISP_EEEER16CSCppStringCacheE_NSQ_ISW_EEFvSM_ST_SV_EE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507650;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNS_6vectorI10TRawSymbolIS4_ENS_9allocatorISP_EEEER16CSCppStringCacheE_NSQ_ISW_EEFvSM_ST_SV_EEclEOSM_ST_SV_(void *a1, uint64_t *a2, uint64_t a3, CSCppStringCache *this)
{
  v5 = *a2;
  v6 = a1[2];
  v7 = *(v6 + 11);
  v8 = v7 + 32 * v7[2] + 24 * v7[3] + (24 * v7[4]) + (4 * v7[4]) + (36 * v7[5]) + (20 * v7[6]) + v7[22] + v7[20] + 96;
  if ((*(*a2 + 8) & 0x80000000) != 0)
  {
    v9 = *(v5 + 6);
    if (v8 + v9)
    {
      CSCppStringCache::intern(this, (v8 + v9));
    }
  }

  v10 = *v5;
  v19 = *(v5 + 2);
  v18 = v10;
  v17 = 0;
  if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v6, v10, &v17))
  {
    if (HIDWORD(v18))
    {
      v11 = (v8 + HIDWORD(v18));
    }

    else
    {
      v11 = (v8 + v19);
    }

    *buf = 0;
    v13 = buf;
    v14 = 0x9002000000;
    v15 = __Block_byref_object_copy__450;
    v16 = __Block_byref_object_dispose__451;
    CSCppStringCache::intern(this, v11);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps inline enumeration", buf, 2u);
  }

  fwrite("Could not remap archive address to real in debug maps inline enumeration", 0x48uLL, 1uLL, *MEMORY[0x1E69E9848]);
}

void sub_1D97766AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  _Block_object_dispose(&a21, 8);
  *(v34 - 104) = &a34;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v34 - 104));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNS_6vectorI10TRawSymbolIS4_ENS_9allocatorISP_EEEER16CSCppStringCacheE_NSQ_ISW_EEFvSM_ST_SV_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer6412LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNSt3__16vectorI10TRawSymbolIS1_ENSK_9allocatorISN_EEEER16CSCppStringCacheE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1D9776994(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(TRawSymbol<Pointer64> &,std::vector<TRawSymbol<Pointer64>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

char *std::vector<TRangeValue<Pointer64,char const*>>::emplace_back<unsigned long long &,unsigned long long &,char const*>(const void **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v12 = 0xAAAAAAAAAAAAAAALL;
    v13 = *a1;
    v14 = v7 - *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) + 1;
    if (v15 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v13) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 < 0x555555555555555)
    {
      v12 = v15;
    }

    if (v12)
    {
      std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v17 = (8 * (v14 >> 3));
    v18 = *a3;
    v19 = *a4;
    *v17 = *a2;
    v17[1] = v18;
    v17[2] = v19;
    v11 = (v17 + 3);
    v20 = v17 - v14;
    memcpy(v17 - v14, v13, v14);
    v21 = *a1;
    *a1 = v20;
    a1[1] = v11;
    a1[2] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v9 = *a3;
    v10 = *a4;
    *v7 = *a2;
    *(v7 + 1) = v9;
    *(v7 + 2) = v10;
    v11 = v7 + 24;
  }

  a1[1] = v11;
  return v11 - 24;
}

void sort_inlined_functions<Pointer64>(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,false>(v3, v4, &v10, v6, 1, a2);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  while (v8 != v9)
  {
    sort_inlined_functions<Pointer64>(v8, v7);
    v8 += 104;
  }
}

uint64_t std::vector<TRawSymbol<Pointer64>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        TRawSymbol<Pointer64>::operator=(v7, v4);
        v4 += 104;
        v7 += 104;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    for (; v6 != v7; v6 -= 104)
    {
      v9 = (v6 - 40);
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v9);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__mem_fn<BOOL const (TRawSymbol<Pointer64>::*)(void)const>>(uint64_t a1, uint64_t a2, unsigned __int8 (*a3)(uint64_t), uint64_t a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v6 = a4;
    v9 = a4 >> 1;
    v10 = a3;
    v4 = a1;
    while (1)
    {
      v11 = (v6 & 1) != 0 ? (*(*(v4 + v9) + v10))(v4 + v9) : a3(v4 + v9);
      if (v11)
      {
        break;
      }

      v4 += 104;
      if (v4 == a2)
      {
        v4 = a2;
        break;
      }
    }

    if (v4 != a2)
    {
      for (i = v4 + 104; i != a2; i += 104)
      {
        if (v6)
        {
          v13 = (*(*(i + v9) + v10))(i + v9);
        }

        else
        {
          v13 = a3(i + v9);
        }

        if ((v13 & 1) == 0)
        {
          TRawSymbol<Pointer64>::operator=(v4, i);
          v4 += 104;
        }
      }
    }
  }

  return v4;
}

void **std::vector<TRawSymbol<Pointer64>>::reserve(void **result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x276276276276277)
    {
      std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1D9776F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__int128 *std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__mem_fn<BOOL const (TRawSourceInfo<Pointer64>::*)(void)const>>(__int128 *a1, __int128 *a2, unsigned __int8 (*a3)(uint64_t), uint64_t a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v6 = a4;
    v9 = a4 >> 1;
    v10 = a3;
    v4 = a1;
    while (1)
    {
      v11 = (v6 & 1) != 0 ? (*(*(v4 + v9) + v10))(v4 + v9) : a3(v4 + v9);
      if (v11)
      {
        break;
      }

      v4 = (v4 + 40);
      if (v4 == a2)
      {
        v4 = a2;
        break;
      }
    }

    if (v4 != a2)
    {
      for (i = (v4 + 40); i != a2; i = (i + 40))
      {
        if (v6)
        {
          v13 = (*(*(i + v9) + v10))(i + v9);
        }

        else
        {
          v13 = a3(i + v9);
        }

        if ((v13 & 1) == 0)
        {
          v14 = *i;
          v15 = i[1];
          *(v4 + 8) = *(i + 8);
          *v4 = v14;
          v4[1] = v15;
          v4 = (v4 + 40);
        }
      }
    }
  }

  return v4;
}

void std::allocator<TRangeValue<Pointer64,unsigned int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 48;
  v11 = a2 - 72;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        v77 = *(a2 - 3);
        v73 = (a2 - 24);
        if (v77 >= *v12)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v70 = (v12 + 3);
      v79 = v12[3];
      v80 = (v12 + 6);
      v81 = v12[6];
      if (v79 >= *v12)
      {
        if (v81 < v79)
        {
          v84 = v12[5];
          result = *v70;
          *v70 = *v80;
          *(v12 + 10) = *(v12 + 16);
          *v80 = result;
          *(v12 + 16) = v84;
          if (v12[3] < *v12)
          {
            v143 = v12[2];
            v115 = *v12;
            *v12 = *v70;
            *(v12 + 4) = *(v12 + 10);
            result = v115;
            *v70 = v115;
            *(v12 + 10) = v143;
          }
        }
      }

      else if (v81 >= v79)
      {
        v144 = v12[2];
        v117 = *v12;
        *v12 = *v70;
        *(v12 + 4) = *(v12 + 10);
        result = v117;
        *v70 = v117;
        *(v12 + 10) = v144;
        if (v81 < v12[3])
        {
          v90 = v12[5];
          result = *v70;
          *v70 = *v80;
          *(v12 + 10) = *(v12 + 16);
          *v80 = result;
          *(v12 + 16) = v90;
        }
      }

      else
      {
        v142 = v12[2];
        v114 = *v12;
        *v12 = *v80;
        *(v12 + 4) = *(v12 + 16);
        result = v114;
        *v80 = v114;
        *(v12 + 16) = v142;
      }

      if (v9->n128_u64[0] < v80->n128_u64[0])
      {
        result = *v80;
        v91 = v12[8];
        v92 = *(a2 - 2);
        *v80 = *v9;
        *(v12 + 16) = v92;
        *(a2 - 2) = v91;
        *v9 = result;
        if (v80->n128_u64[0] < v70->n128_u64[0])
        {
          v93 = v12[5];
          result = *v70;
          *v70 = *v80;
          *(v12 + 10) = *(v12 + 16);
          *v80 = result;
          *(v12 + 16) = v93;
LABEL_105:
          if (v12[3] < *v12)
          {
            v145 = v12[2];
            v118 = *v12;
            *v12 = *v70;
            *(v12 + 4) = v70[1].n128_u32[0];
            result = v118;
            *v70 = v118;
            v70[1].n128_u32[0] = v145;
          }

          return result;
        }
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,0>(v12, v12 + 3, v12 + 3, (v12 + 9), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(v12, a2);
      }

      else if (v12 != a2)
      {
        v85 = (v12 + 3);
        while (v85 != a2)
        {
          v86 = v85;
          v87 = *(a1 + 24);
          if (v87 < *a1)
          {
            v116 = *(a1 + 32);
            v88 = v86;
            do
            {
              result = *(v88 - 24);
              *v88 = result;
              v88[1].n128_u32[0] = v88[-1].n128_u32[2];
              v89 = v88[-3].n128_u64[0];
              v88 = (v88 - 24);
            }

            while (v87 < v89);
            v88->n128_u64[0] = v87;
            v88[1].n128_u32[0] = DWORD2(v116);
            v88->n128_u64[1] = v116;
          }

          v85 = (v86 + 24);
          a1 = v86;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,TRangeValue<Pointer64,unsigned int> *>(v12, a2, a2, a3);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = &v12[3 * (v16 >> 1)];
    v19 = v9->n128_u64[0];
    if (v15 >= 0xC01)
    {
      v20 = *v18;
      if (*v18 >= *v12)
      {
        if (v19 < v20)
        {
          v121 = v18[2];
          v97 = *v18;
          v24 = *v9;
          *(v18 + 4) = *(a2 - 2);
          *v18 = v24;
          *v9 = v97;
          *(a2 - 2) = v121;
          if (*v18 < *v12)
          {
            v122 = v12[2];
            v98 = *v12;
            v25 = *v18;
            *(v12 + 4) = *(v18 + 4);
            *v12 = v25;
            *(v18 + 4) = v122;
            *v18 = v98;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v119 = v12[2];
          v95 = *v12;
          v21 = *v9;
          *(v12 + 4) = *(a2 - 2);
          *v12 = v21;
          goto LABEL_27;
        }

        v125 = v12[2];
        v101 = *v12;
        v28 = *v18;
        *(v12 + 4) = *(v18 + 4);
        *v12 = v28;
        *(v18 + 4) = v125;
        *v18 = v101;
        if (v9->n128_u64[0] < *v18)
        {
          v119 = v18[2];
          v95 = *v18;
          v29 = *v9;
          *(v18 + 4) = *(a2 - 2);
          *v18 = v29;
LABEL_27:
          *v9 = v95;
          *(a2 - 2) = v119;
        }
      }

      v30 = (v12 + 3);
      v31 = &v12[3 * v17];
      v34 = *(v31 - 3);
      v32 = v31 - 3;
      v33 = v34;
      v35 = *v10;
      if (v34 >= v12[3])
      {
        if (v35 < v33)
        {
          v126 = v32[2];
          v102 = *v32;
          v39 = *v10;
          *(v32 + 4) = *(a2 - 8);
          *v32 = v39;
          *v10 = v102;
          *(a2 - 8) = v126;
          if (*v32 < *v30)
          {
            v40 = *v30;
            v127 = v12[5];
            v41 = *(v32 + 4);
            *v30 = *v32;
            *(v12 + 10) = v41;
            *(v32 + 4) = v127;
            *v32 = v40;
          }
        }
      }

      else if (v35 >= v33)
      {
        v44 = *v30;
        v129 = v12[5];
        v45 = *(v32 + 4);
        *v30 = *v32;
        *(v12 + 10) = v45;
        *(v32 + 4) = v129;
        *v32 = v44;
        if (*v10 < *v32)
        {
          v130 = v32[2];
          v104 = *v32;
          v46 = *v10;
          *(v32 + 4) = *(a2 - 8);
          *v32 = v46;
          *v10 = v104;
          *(a2 - 8) = v130;
        }
      }

      else
      {
        v36 = *v30;
        v37 = v12[5];
        v38 = *(a2 - 8);
        *v30 = *v10;
        *(v12 + 10) = v38;
        *(a2 - 8) = v37;
        *v10 = v36;
      }

      v47 = (v12 + 6);
      v48 = &v12[3 * v17];
      v51 = v48[3];
      v49 = v48 + 3;
      v50 = v51;
      v52 = *v11;
      if (v51 >= v12[6])
      {
        if (v52 < v50)
        {
          v131 = v49[2];
          v105 = *v49;
          v56 = *v11;
          *(v49 + 4) = *(a2 - 14);
          *v49 = v56;
          *v11 = v105;
          *(a2 - 14) = v131;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v132 = v12[8];
            v58 = *(v49 + 4);
            *v47 = *v49;
            *(v12 + 16) = v58;
            *(v49 + 4) = v132;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v50)
      {
        v59 = *v47;
        v133 = v12[8];
        v60 = *(v49 + 4);
        *v47 = *v49;
        *(v12 + 16) = v60;
        *(v49 + 4) = v133;
        *v49 = v59;
        if (*v11 < *v49)
        {
          v134 = v49[2];
          v106 = *v49;
          v61 = *v11;
          *(v49 + 4) = *(a2 - 14);
          *v49 = v61;
          *v11 = v106;
          *(a2 - 14) = v134;
        }
      }

      else
      {
        v53 = *v47;
        v54 = v12[8];
        v55 = *(a2 - 14);
        *v47 = *v11;
        *(v12 + 16) = v55;
        *(a2 - 14) = v54;
        *v11 = v53;
      }

      v62 = *v18;
      v63 = *v49;
      if (*v18 >= *v32)
      {
        if (v63 < v62)
        {
          v136 = v18[2];
          v108 = *v18;
          *v18 = *v49;
          *(v18 + 4) = *(v49 + 4);
          *(v49 + 4) = v136;
          *v49 = v108;
          if (*v18 < *v32)
          {
            v137 = v32[2];
            v109 = *v32;
            *v32 = *v18;
            *(v32 + 4) = *(v18 + 4);
            *(v18 + 4) = v137;
            *v18 = v109;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v135 = v32[2];
          v107 = *v32;
          *v32 = *v49;
          *(v32 + 4) = *(v49 + 4);
          goto LABEL_55;
        }

        v138 = v32[2];
        v110 = *v32;
        *v32 = *v18;
        *(v32 + 4) = *(v18 + 4);
        *(v18 + 4) = v138;
        *v18 = v110;
        if (*v49 < *v18)
        {
          v135 = v18[2];
          v107 = *v18;
          *v18 = *v49;
          *(v18 + 4) = *(v49 + 4);
LABEL_55:
          *(v49 + 4) = v135;
          *v49 = v107;
        }
      }

      v139 = v12[2];
      v111 = *v12;
      v64 = *v18;
      *(v12 + 4) = *(v18 + 4);
      *v12 = v64;
      *(v18 + 4) = v139;
      *v18 = v111;
      goto LABEL_57;
    }

    v22 = *v12;
    if (*v12 >= *v18)
    {
      if (v19 < v22)
      {
        v123 = v12[2];
        v99 = *v12;
        v26 = *v9;
        *(v12 + 4) = *(a2 - 2);
        *v12 = v26;
        *v9 = v99;
        *(a2 - 2) = v123;
        if (*v12 < *v18)
        {
          v124 = v18[2];
          v100 = *v18;
          v27 = *v12;
          *(v18 + 4) = *(v12 + 4);
          *v18 = v27;
          *(v12 + 4) = v124;
          *v12 = v100;
        }
      }
    }

    else
    {
      if (v19 < v22)
      {
        v120 = v18[2];
        v96 = *v18;
        v23 = *v9;
        *(v18 + 4) = *(a2 - 2);
        *v18 = v23;
LABEL_36:
        *v9 = v96;
        *(a2 - 2) = v120;
        goto LABEL_57;
      }

      v128 = v18[2];
      v103 = *v18;
      v42 = *v12;
      *(v18 + 4) = *(v12 + 4);
      *v18 = v42;
      *(v12 + 4) = v128;
      *v12 = v103;
      if (v9->n128_u64[0] < *v12)
      {
        v120 = v12[2];
        v96 = *v12;
        v43 = *v9;
        *(v12 + 4) = *(a2 - 2);
        *v12 = v43;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v12 - 3) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned int> *,std::__less<void,void> &>(v12, a2);
      goto LABEL_64;
    }

    v65 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned int> *,std::__less<void,void> &>(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(v12, v65, v66);
    v12 = (v65 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>((v65 + 3), a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_62:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,false>(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 3);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v70 = (v12 + 3);
  v71 = v12[3];
  v74 = *(a2 - 3);
  v73 = (a2 - 24);
  v72 = v74;
  if (v71 >= *v12)
  {
    if (v72 >= v71)
    {
      return result;
    }

    result = *v70;
    v82 = v12[5];
    v83 = v73[1].n128_u32[0];
    *v70 = *v73;
    *(v12 + 10) = v83;
    v73[1].n128_u32[0] = v82;
    *v73 = result;
    goto LABEL_105;
  }

  if (v72 < v71)
  {
LABEL_75:
    v141 = v12[2];
    v113 = *v12;
    v78 = *v73;
    *(v12 + 4) = v73[1].n128_u32[0];
    *v12 = v78;
    result = v113;
    *v73 = v113;
    v73[1].n128_u32[0] = v141;
    return result;
  }

  v140 = v12[2];
  v112 = *v12;
  *v12 = *v70;
  *(v12 + 4) = *(v12 + 10);
  result = v112;
  *v70 = v112;
  *(v12 + 10) = v140;
  if (v73->n128_u64[0] < v12[3])
  {
    result = *v70;
    v75 = v12[5];
    v76 = v73[1].n128_u32[0];
    *v70 = *v73;
    *(v12 + 10) = v76;
    v73[1].n128_u32[0] = v75;
    *v73 = result;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,0>(__n128 *a1, void *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = *a2;
  v7 = a3->n128_u64[0];
  if (*a2 >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[2];
      v11 = a3[1].n128_u32[0];
      *a2 = *a3;
      *(a2 + 4) = v11;
      a3[1].n128_u32[0] = v10;
      *a3 = result;
      if (*a2 < a1->n128_u64[0])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = *(a2 + 4);
        *a1 = *a2;
        a1[1].n128_u32[0] = v13;
        *(a2 + 4) = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v9;
LABEL_9:
      a3[1].n128_u32[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = *(a2 + 4);
    *a1 = *a2;
    a1[1].n128_u32[0] = v15;
    *(a2 + 4) = v14;
    *a2 = result;
    if (a3->n128_u64[0] < *a2)
    {
      result = *a2;
      v8 = a2[2];
      v16 = a3[1].n128_u32[0];
      *a2 = *a3;
      *(a2 + 4) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[0] < a3->n128_u64[0])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v18;
    a4[1].n128_u32[0] = v17;
    *a4 = result;
    if (a3->n128_u64[0] < *a2)
    {
      result = *a2;
      v19 = a2[2];
      v20 = a3[1].n128_u32[0];
      *a2 = *a3;
      *(a2 + 4) = v20;
      a3[1].n128_u32[0] = v19;
      *a3 = result;
      if (*a2 < a1->n128_u64[0])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = *(a2 + 4);
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        *(a2 + 4) = v21;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u64[0] < a4->n128_u64[0])
  {
    result = *a4;
    v23 = a4[1].n128_u64[0];
    v24 = a5[1].n128_u32[0];
    *a4 = *a5;
    a4[1].n128_u32[0] = v24;
    a5[1].n128_u32[0] = v23;
    *a5 = result;
    if (a4->n128_u64[0] < a3->n128_u64[0])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u32[0];
      *a3 = *a4;
      a3[1].n128_u32[0] = v26;
      a4[1].n128_u32[0] = v25;
      *a4 = result;
      if (a3->n128_u64[0] < *a2)
      {
        result = *a2;
        v27 = a2[2];
        v28 = a3[1].n128_u32[0];
        *a2 = *a3;
        *(a2 + 4) = v28;
        a3[1].n128_u32[0] = v27;
        *a3 = result;
        if (*a2 < a1->n128_u64[0])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = *(a2 + 4);
          *a1 = *a2;
          a1[1].n128_u32[0] = v30;
          *(a2 + 4) = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 24);
        if (v6 < *v4)
        {
          v10 = *(v4 + 32);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (v6 >= *(v8 - 24))
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
          *(v9 + 16) = DWORD2(v10);
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned int> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v14 = *(a1 + 1);
  if (*a1 >= *(a2 - 3))
  {
    v5 = a1 + 3;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 3;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[3];
      v3 += 3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v13 = v3[2];
    v12 = *v3;
    v7 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *v3 = v7;
    *(a2 + 4) = v13;
    *a2 = v12;
    do
    {
      v8 = v3[3];
      v3 += 3;
    }

    while (v2 >= v8);
    do
    {
      v9 = *(a2 - 3);
      a2 -= 3;
    }

    while (v2 < v9);
  }

  if (v3 - 3 != a1)
  {
    v10 = *(v3 - 3);
    *(a1 + 4) = *(v3 - 2);
    *a1 = v10;
  }

  *(v3 - 3) = v2;
  *(v3 - 2) = DWORD2(v14);
  *(v3 - 2) = v14;
  return v3;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer64,unsigned int> *,std::__less<void,void> &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v17 = *(a1 + 1);
  do
  {
    v4 = a1[v2 + 3];
    v2 += 3;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 3)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v6 >= v3);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v11 = v8[2];
      v12 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 4) = v12;
      *(v9 + 16) = v11;
      *v9 = v10;
      do
      {
        v13 = v8[3];
        v8 += 3;
      }

      while (v13 < v3);
      do
      {
        v14 = *(v9 - 24);
        v9 -= 24;
      }

      while (v14 >= v3);
    }

    while (v8 < v9);
  }

  if (v8 - 3 != a1)
  {
    v15 = *(v8 - 3);
    *(a1 + 4) = *(v8 - 2);
    *a1 = v15;
  }

  *(v8 - 3) = v3;
  *(v8 - 2) = DWORD2(v17);
  *(v8 - 2) = v17;
  return v8 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = a2 - 24;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (*v4 >= *(a1 + 24))
          {
            return 1;
          }

          v10 = *v6;
          v40 = *(a1 + 40);
          v41 = *(v4 + 4);
          *v6 = *v4;
          *(a1 + 40) = v41;
          *(v4 + 4) = v40;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        v11 = *(a1 + 16);
        v12 = *(v4 + 4);
        *a1 = *v4;
        *(a1 + 16) = v12;
        *(v4 + 4) = v11;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *v6;
      v28 = *(a1 + 40);
      v29 = *(v4 + 4);
      *v6 = *v4;
      *(a1 + 40) = v29;
      *(v4 + 4) = v28;
      *v4 = v27;
LABEL_49:
      if (*(a1 + 24) < *a1)
      {
        v60 = *(a1 + 16);
        v61 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u32[0];
        *v6 = v61;
        v6[1].n128_u32[0] = v60;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_46;
    }

    if (v22 >= v20)
    {
      v53 = *(a1 + 16);
      v54 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v54;
      *(a1 + 40) = v53;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_46;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_46:
    if (v23->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v55 = *v21;
    v56 = *(a1 + 64);
    v57 = *(a2 - 2);
    *v21 = *v23;
    *(a1 + 64) = v57;
    *(a2 - 2) = v56;
    *v23 = v55;
    if (v21->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v58 = *(a1 + 40);
    v59 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v59;
    *(a1 + 64) = v58;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = a2 - 24;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v42 = *(a1 + 16);
    v43 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v43;
    *(a1 + 40) = v42;
    if (v14 < *(a1 + 24))
    {
      v44 = *(a1 + 40);
      v45 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v45;
      *(a1 + 64) = v44;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v46 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v47 = 0;
  v48 = 0;
  while (1)
  {
    v49 = *v46;
    if (*v46 < v13->n128_u64[0])
    {
      v63 = *(v46 + 8);
      v50 = v47;
      while (1)
      {
        v51 = a1 + v50;
        *(v51 + 72) = *(a1 + v50 + 48);
        *(v51 + 88) = *(a1 + v50 + 64);
        if (v50 == -48)
        {
          break;
        }

        v50 -= 24;
        if (v49 >= *(v51 + 24))
        {
          v52 = a1 + v50 + 72;
          goto LABEL_40;
        }
      }

      v52 = a1;
LABEL_40:
      *v52 = v49;
      *(v52 + 8) = v63;
      *(v52 + 16) = DWORD2(v63);
      if (++v48 == 8)
      {
        return (v46 + 24) == a2;
      }
    }

    v13 = v46;
    v47 += 24;
    v46 = (v46 + 24);
    if (v46 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,TRangeValue<Pointer64,unsigned int> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[24 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          v14 = *v13;
          v15 = *(v13 + 2);
          v16 = *(a1 + 4);
          *v13 = *a1;
          *(v13 + 4) = v16;
          *(a1 + 4) = v15;
          *a1 = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        v18 = 0;
        v29 = *a1;
        v30 = *(a1 + 2);
        v19 = a1;
        do
        {
          v20 = &v19[24 * v18];
          v21 = v20 + 24;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v24 = *(v20 + 6);
            v23 = v20 + 48;
            if (*(v23 - 3) >= v24)
            {
              v18 = v22;
            }

            else
            {
              v21 = v23;
            }
          }

          v25 = *v21;
          *(v19 + 4) = *(v21 + 4);
          *v19 = v25;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 -= 24;
        if (v21 == v6)
        {
          *(v21 + 4) = v30;
          *v21 = v29;
        }

        else
        {
          v26 = *v6;
          *(v21 + 4) = *(v6 + 4);
          *v21 = v26;
          *v6 = v29;
          *(v6 + 4) = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(a1, (v21 + 24), a4, 0xAAAAAAAAAAAAAAABLL * ((v21 + 24 - a1) >> 3));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = *v6;
        v8 = *(v6 + 3);
        if (*v6 <= v8)
        {
          v7 = *(v6 + 3);
        }

        if (*v6 < v8)
        {
          v6 = (v6 + 24);
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

      v9 = *a4;
      if (v7 >= *a4)
      {
        v15 = *(a4 + 1);
        do
        {
          v10 = a4;
          a4 = v6;
          v11 = *v6;
          *(v10 + 4) = *(v6 + 4);
          *v10 = v11;
          if (v4 < v5)
          {
            break;
          }

          v12 = (2 * v5) | 1;
          v6 = (result + 24 * v12);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v13 = *v6;
            v5 = v12;
          }

          else
          {
            v13 = *v6;
            v14 = *(v6 + 3);
            if (*v6 <= v14)
            {
              v13 = *(v6 + 3);
            }

            if (*v6 >= v14)
            {
              v5 = v12;
            }

            else
            {
              v6 = (v6 + 24);
            }
          }
        }

        while (v13 >= v9);
        *a4 = v9;
        a4[1] = v15;
        *(a4 + 4) = DWORD2(v15);
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 24 * (v4 >> 1));
    v7 = (a2 - 24);
    v8 = *(a2 - 24);
    if (*v6 < v8)
    {
      v11 = *(a2 - 16);
      do
      {
        v9 = v7;
        v7 = v6;
        v10 = *v6;
        *(v9 + 4) = *(v6 + 4);
        *v9 = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 24 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 1) = v11;
      *(v7 + 4) = DWORD2(v11);
    }
  }

  return result;
}

uint64_t std::vector<TRawSymbol<Pointer64>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x4EC4EC4EC4EC4EC5 * ((v10 - a2) >> 3) >= a5)
      {
        v19 = 104 * a5;
        std::vector<TRawSymbol<Pointer64>>::__move_range(a1, a2, a1[1], a2 + 104 * a5);
        v20 = v19 + v7;
        v21 = v5;
        do
        {
          TRawSymbol<Pointer64>::operator=(v21, v7);
          v7 += 104;
          v21 += 104;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = v16 + a3;
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,TRawSymbol<Pointer64>*>(a1, v16 + a3, a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<TRawSymbol<Pointer64>>::__move_range(a1, v5, v10, v5 + 104 * a5);
          v18 = v5;
          do
          {
            TRawSymbol<Pointer64>::operator=(v18, v7);
            v7 += 104;
            v18 += 104;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 3);
      if (v12 > 0x276276276276276)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x13B13B13B13B13BLL)
      {
        v15 = 0x276276276276276;
      }

      else
      {
        v15 = v12;
      }

      v26[4] = a1;
      if (v15)
      {
        std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v26[0] = 0;
      v26[1] = v22;
      v26[3] = 0;
      v23 = 104 * a5;
      v24 = v22 + 104 * a5;
      do
      {
        *(v22 + 12) = 0;
        *v22 = 0u;
        v22[1] = 0u;
        v22[3] = 0u;
        v22[4] = 0u;
        *(v22 + 73) = 0u;
        TRawSymbol<Pointer64>::operator=(v22, v7);
        v22 = (v22 + 104);
        v7 += 104;
        v23 -= 104;
      }

      while (v23);
      v26[2] = v24;
      v5 = std::vector<TRawSymbol<Pointer64>>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<TRawSymbol<Pointer64>>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      *(v10 + 96) = 0;
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 48) = 0u;
      *(v10 + 64) = 0u;
      *(v10 + 73) = 0u;
      result = TRawSymbol<Pointer64>::operator=(v10, v8);
      v8 += 104;
      v10 += 104;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 104;
    v12 = a4 - v7;
    v13 = a2 + v7 - 104 - a4;
    do
    {
      result = TRawSymbol<Pointer64>::operator=(v11, v13);
      v11 -= 104;
      v13 -= 104;
      v12 += 104;
    }

    while (v12);
  }

  return result;
}

uint64_t std::vector<TRawSymbol<Pointer64>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,TRawSymbol<Pointer64>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *(v4 + 96) = 0;
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 48) = 0u;
      *(v4 + 64) = 0u;
      *(v4 + 73) = 0u;
      TRawSymbol<Pointer64>::operator=(v4, v6);
      v6 += 104;
      v4 = v11 + 104;
      v11 += 104;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::__merge[abi:ne200100]<std::__less<void,void> &,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::back_insert_iterator<std::vector<TRawSymbol<Pointer64>>>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  if (a1 == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a5, a3);
      a3 += 13;
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a5, v9);
        v9 += 13;
      }

      else
      {
        std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a5, a3);
        a3 += 13;
      }

      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v9 != a2)
    {
      std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](a5, v9);
      v9 += 13;
    }
  }

  return a5;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__less<void,void>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (a2 - a1 < 5121)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    while (1)
    {
      v9 = operator new(40 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D9779130(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(uint64_t result, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v8 = (a2 - 40);
      if (*(a2 - 5) < *result)
      {
        v9 = *(result + 32);
        v10 = *result;
        v11 = *(result + 16);
        v12 = *(a2 - 2);
        v13 = *(a2 - 24);
        *result = *v8;
        *(result + 16) = v13;
        *(result + 32) = v12;
        *v8 = v10;
        *(a2 - 24) = v11;
        *(a2 - 2) = v9;
      }
    }

    else if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = (result + 40 * (a4 >> 1));
      v20 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(result, v19, a3, v20, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>((result + 40 * (a4 >> 1)), a2, a3, a4 - (a4 >> 1), a5 + 40 * v18);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(a5, (a5 + 40 * v18), (a5 + 40 * v18), (a5 + 40 * a4), result);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(result, v19, a3, v20, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(result + 40 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(result, (result + 40 * (a4 >> 1)), a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(result, a2);
    }
  }
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 5;
    if (result + 5 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *v2;
        if (v6 < *v4)
        {
          *v11 = *(v4 + 3);
          *&v11[16] = *(v4 + 4);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 16);
            *(v8 + 40) = *(result + v7);
            *(v8 + 56) = v9;
            *(v8 + 18) = *(result + v7 + 32);
            if (!v7)
            {
              break;
            }

            v7 -= 40;
            if (v6 >= *(v8 - 5))
            {
              v10 = (result + v7 + 40);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 1) = *v11;
          *(v10 + 20) = *&v11[12];
        }

        v2 = v5 + 5;
        v3 += 40;
        v4 = v5;
      }

      while (v5 + 5 != a2);
    }
  }

  return result;
}

__int128 *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(__int128 *result, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v11 = (a2 - 40);
      if (*(a2 - 5) >= *result)
      {
        v18 = *result;
        v19 = result[1];
        *(a5 + 32) = *(result + 4);
        *a5 = v18;
        *(a5 + 16) = v19;
        v14 = *v11;
        v15 = *(a2 - 24);
        v16 = *(a2 - 1);
      }

      else
      {
        v12 = *v11;
        v13 = *(a2 - 24);
        *(a5 + 32) = *(a2 - 1);
        *a5 = v12;
        *(a5 + 16) = v13;
        v14 = *result;
        v15 = result[1];
        v16 = *(result + 4);
      }

      *(a5 + 72) = v16;
      *(a5 + 56) = v15;
      *(a5 + 40) = v14;
    }

    else if (a4 == 1)
    {
      v9 = *result;
      v10 = result[1];
      *(a5 + 32) = *(result + 4);
      *a5 = v9;
      *(a5 + 16) = v10;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(result, result + 40 * (a4 >> 1), a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(v8 + 40 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), a5 + 40 * (a4 >> 1), a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(v8, (v8 + 40 * (a4 >> 1)), (v8 + 40 * (a4 >> 1)), a2, a5);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(result, a2, a5);
    }
  }

  return result;
}

__int128 *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  while (result != a2)
  {
    if (a3 == a4)
    {
      while (result != a2)
      {
        v11 = *result;
        v12 = result[1];
        *(a5 + 32) = *(result + 8);
        *a5 = v11;
        *(a5 + 16) = v12;
        result = (result + 40);
        a5 += 40;
      }

      return result;
    }

    if (*a3 >= *result)
    {
      v7 = *result;
      v8 = result[1];
      *(a5 + 32) = *(result + 8);
      *a5 = v7;
      *(a5 + 16) = v8;
      result = (result + 40);
    }

    else
    {
      v5 = *a3;
      v6 = a3[1];
      *(a5 + 32) = *(a3 + 8);
      *a5 = v5;
      *(a5 + 16) = v6;
      a3 = (a3 + 40);
    }

    a5 += 40;
  }

  while (a3 != a4)
  {
    v9 = *a3;
    v10 = a3[1];
    *(a5 + 32) = *(a3 + 8);
    *a5 = v9;
    *(a5 + 16) = v10;
    a3 = (a3 + 40);
    a5 += 40;
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    while (v9 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (a2->n128_u64[0] >= *(v12 + a1))
      {
        v12 += 5;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v41 = a3;
      v42 = a8;
      v40 = (v12 + a1);
      if (-v13 >= v9)
      {
        if (v13 == -1)
        {
          v37 = (v12 + a1);
          v47 = *(v12 + a1 + 32);
          v45 = *(v12 + a1);
          v46 = *(v12 + a1 + 16);
          v38 = *a2;
          v39 = a2[1];
          v37[2].n128_u32[0] = a2[2].n128_u32[0];
          *v37 = v38;
          v37[1] = v39;
          result = v45;
          *a2 = v45;
          a2[1] = v46;
          a2[2].n128_u32[0] = v47;
          return result;
        }

        v23 = -v13 / 2;
        v16 = a2;
        if (a2 != a3)
        {
          v24 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3);
          v16 = a2;
          do
          {
            v25 = v24 >> 1;
            v26 = &v16[5 * (v24 >> 1)];
            v28 = *v26;
            v27 = v26 + 5;
            v24 += ~(v24 >> 1);
            if (v28 < *(v12 + a1 + 40 * v23))
            {
              v16 = v27;
            }

            else
            {
              v24 = v25;
            }
          }

          while (v24);
        }

        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - a2) >> 3);
        v17 = v12 + a1 + 40 * v23;
      }

      else
      {
        v15 = v9 / 2;
        v16 = &a2->n128_u64[5 * (v9 / 2)];
        v17 = a2;
        if ((a2 - a1) != v12)
        {
          v18 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1 - v12) >> 3);
          v17 = v12 + a1;
          do
          {
            v19 = v18 >> 1;
            v20 = &v17[40 * (v18 >> 1)];
            v22 = *v20;
            v21 = (v20 + 5);
            v18 += ~(v18 >> 1);
            if (*v16 < v22)
            {
              v18 = v19;
            }

            else
            {
              v17 = v21;
            }
          }

          while (v18);
        }

        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - a1 - v12) >> 3);
      }

      a5 = -v13 - v23;
      v29 = v9 - v15;
      v30 = v15;
      v31 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(v17, a2, v16);
      v32 = v30;
      v33 = v31;
      if ((v23 + v32) >= (v9 - (v23 + v32) - v13))
      {
        v36 = v32;
        result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(v31, v16, v41, a4, a5, v29, a7, v42).n128_u64[0];
        v16 = v17;
        a8 = v42;
        v29 = v36;
        a5 = v23;
        a3 = v33;
        a1 = v40;
      }

      else
      {
        v34 = v17;
        a8 = v42;
        result.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(v12 + a1, v34, v31, a4, v23, v32, a7, v42).n128_u64[0];
        a1 = v33;
        a3 = v41;
      }

      v9 = v29;
      a2 = v16;
      if (!v29)
      {
        return result;
      }
    }

    result.n128_u64[0] = std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(a1, a2, a3, a4, a5, v9, a7).n128_u64[0];
  }

  return result;
}

__int128 *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(__int128 *result, __int128 *a2, unint64_t *a3)
{
  if (result != a2)
  {
    v3 = *result;
    v4 = result[1];
    a3[4] = *(result + 4);
    *a3 = v3;
    *(a3 + 1) = v4;
    v5 = (result + 40);
    if ((result + 40) != a2)
    {
      v6 = 0;
      v7 = a3;
      v8 = a3;
      do
      {
        v9 = *v8;
        v8 += 5;
        if (*v5 >= v9)
        {
          v16 = *v5;
          v17 = v5[1];
          v8[4] = *(v5 + 4);
          *v8 = v16;
          *(v8 + 1) = v17;
        }

        else
        {
          v10 = *(v7 + 1);
          *v8 = *v7;
          *(v8 + 1) = v10;
          v8[4] = v7[4];
          v11 = a3;
          if (v7 != a3)
          {
            v12 = v6;
            while (1)
            {
              v11 = (a3 + v12);
              if (*v5 >= *(a3 + v12 - 40))
              {
                break;
              }

              v13 = *(a3 + v12 - 24);
              *v11 = *(a3 + v12 - 40);
              *(v11 + 1) = v13;
              *(v11 + 8) = *(a3 + v12 - 8);
              v12 -= 40;
              if (!v12)
              {
                v11 = a3;
                break;
              }
            }
          }

          v14 = *v5;
          v15 = v5[1];
          *(v11 + 8) = *(v5 + 8);
          *v11 = v14;
          *(v11 + 1) = v15;
        }

        v5 = (v5 + 40);
        v6 += 40;
        v7 = v8;
      }

      while (v5 != a2);
    }
  }

  return result;
}

__int128 *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  while (result != a2)
  {
    if (a3 == a4)
    {
      while (result != a2)
      {
        v11 = *result;
        v12 = result[1];
        *(a5 + 32) = *(result + 4);
        *a5 = v11;
        *(a5 + 16) = v12;
        result = (result + 40);
        a5 += 40;
      }

      return result;
    }

    if (*a3 >= *result)
    {
      v7 = *result;
      v8 = result[1];
      *(a5 + 32) = *(result + 4);
      *a5 = v7;
      *(a5 + 16) = v8;
      result = (result + 40);
    }

    else
    {
      v5 = *a3;
      v6 = a3[1];
      *(a5 + 32) = *(a3 + 4);
      *a5 = v5;
      *(a5 + 16) = v6;
      a3 = (a3 + 40);
    }

    a5 += 40;
  }

  while (a3 != a4)
  {
    v9 = *a3;
    v10 = a3[1];
    *(a5 + 32) = *(a3 + 4);
    *a5 = v9;
    *(a5 + 16) = v10;
    a3 = (a3 + 40);
    a5 += 40;
  }

  return result;
}

__n128 std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(__n128 *a1, __n128 *a2, __n128 *a3, int a4, uint64_t a5, uint64_t a6, __n128 *__src)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v17 = 4 - __src;
      v18 = __src;
      v19 = a1;
      do
      {
        v20 = *v19;
        v21 = v19[1];
        v18[2].n128_u64[0] = v19[2].n128_u64[0];
        *v18 = v20;
        v18[1] = v21;
        v19 = (v19 + 40);
        v18 = (v18 + 40);
        v17 -= 40;
      }

      while (v19 != a2);
      while (a2 != a3)
      {
        if (a2->n128_u64[0] >= __src->n128_u64[0])
        {
          result = *__src;
          v23 = __src[1];
          a1[2].n128_u32[0] = __src[2].n128_u32[0];
          *a1 = result;
          a1[1] = v23;
          __src = (__src + 40);
        }

        else
        {
          result = *a2;
          v22 = a2[1];
          a1[2].n128_u32[0] = a2[2].n128_u32[0];
          *a1 = result;
          a1[1] = v22;
          a2 = (a2 + 40);
        }

        a1 = (a1 + 40);
        if (v18 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -(__src + v17));
    }
  }

  else if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = __src + v7;
      result = *(a2 + v7);
      v10 = *(&a2[1] + v7);
      *(v8 + 4) = a2[2].n128_u64[v7 / 8];
      *v8 = result;
      *(v8 + 1) = v10;
      v7 += 40;
    }

    while ((a2 + v7) != a3);
    v11 = (__src + v7);
    while (a2 != a1)
    {
      v12 = v11[-3].n128_u64[1];
      v13 = a2[-3].n128_u64[1];
      v14 = v12 >= v13;
      if (v12 >= v13)
      {
        v15 = (v11 - 40);
      }

      else
      {
        v15 = (a2 - 40);
      }

      result = *v15;
      v16 = v15[1];
      a3[-1].n128_u32[2] = v15[2].n128_u32[0];
      *(a3 - 24) = v16;
      *(a3 - 40) = result;
      a3 = (a3 - 40);
      if (v14)
      {
        v11 = (v11 - 40);
      }

      else
      {
        a2 = (a2 - 40);
      }

      if (v11 == __src)
      {
        return result;
      }
    }

    if (v11 != __src)
    {
      v24 = -40;
      do
      {
        result = *(v11 - 40);
        v25 = *(&v11[-2] + 8);
        v26 = v11[-1].n128_u32[2];
        v27 = (v11 - 40);
        v28 = a3 + v24;
        *(v28 + 8) = v26;
        *v28 = result;
        *(v28 + 1) = v25;
        v24 -= 40;
        v11 = v27;
      }

      while (v27 != __src);
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 40 == a2)
    {
      v7 = *__src;
      v9 = *(__src + 1);
      v11 = *(__src + 4);
      memmove(__src, __src + 40, v5 - 4);
      v3 = &__src[v5];
      *v3 = v7;
      *(v3 + 1) = v9;
      *(v3 + 8) = v11;
    }

    else if (a2 + 40 == a3)
    {
      v3 = __src + 40;
      v8 = *(a3 - 40);
      v10 = *(a3 - 24);
      v12 = *(a3 - 1);
      if (a3 - 40 != __src)
      {
        memmove(__src + 40, __src, a3 - 40 - __src - 4);
      }

      *__src = v8;
      *(__src + 1) = v10;
      *(__src + 8) = v12;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(__src, a2, a3);
    }
  }

  return v3;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer64> *>>(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 3);
  if (0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3) == v4)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = (a1 + 40);
      v6 = a2 + 40;
      do
      {
        v7 = *(v5 - 1);
        v8 = *(v5 - 40);
        v9 = *(v5 - 24);
        v10 = *(v6 - 2);
        v11 = *(v6 - 24);
        *(v5 - 40) = *(v6 - 40);
        *(v5 - 24) = v11;
        *(v5 - 2) = v10;
        *(v6 - 24) = v9;
        *(v6 - 40) = v8;
        *(v6 - 2) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 = (v5 + 40);
        v12 = v6 == a3;
        v6 += 40;
      }

      while (!v12);
    }
  }

  else
  {
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    do
    {
      v14 = v13;
      v13 = v4;
      v4 = v14 % v4;
    }

    while (v4);
    v15 = &a1[40 * v13];
    do
    {
      v16 = *(v15 - 40);
      v17 = *(v15 - 24);
      v18 = *(v15 - 1);
      v15 = (v15 - 40);
      v26 = v16;
      v27 = v17;
      v28 = v18;
      v19 = (v15 + v3);
      v20 = v15;
      do
      {
        v21 = v19;
        v22 = *v19;
        v23 = v19[1];
        *(v20 + 8) = *(v19 + 8);
        *v20 = v22;
        v20[1] = v23;
        v24 = (a3 - v19);
        v19 = (v19 + 8 * ((a2 - a1) >> 3));
        if (v3 >= v24)
        {
          v19 = (a2 - v24);
        }

        v20 = v21;
      }

      while (v19 != v15);
      *(v21 + 8) = v28;
      *v21 = v26;
      v21[1] = v27;
    }

    while (v15 != a1);
    return &a1[a3 - a2];
  }

  return a2;
}

char **adjustVectorToMatchSegmentDeltas<CSCppSegmentRange,Pointer64>(char **result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v6 < v12)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        v13 = v2 - (v3 + 32);
        if (v2 != v3 + 32)
        {
          result = memmove(v3, v3 + 32, v2 - (v3 + 32));
        }

        v2 = &v3[v13];
        v5[1] = &v3[v13];
      }

      else
      {
        *v3 = *(v7 - 1) + v6;
        v3 += 32;
      }
    }

    while (v3 != v2);
  }

  return result;
}

char **adjustVectorToMatchSegmentDeltas<CSCppSectionRange,Pointer64>(char **result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v6 < v12)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        v13 = v2 - (v3 + 24);
        if (v2 != v3 + 24)
        {
          result = memmove(v3, v3 + 24, v2 - (v3 + 24));
        }

        v2 = &v3[v13];
        v5[1] = &v3[v13];
      }

      else
      {
        *v3 = *(v7 - 1) + v6;
        v3 += 24;
      }
    }

    while (v3 != v2);
  }

  return result;
}

void adjustSymbolsToMatchSegmentDeltas<Pointer64>(unint64_t **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v6 = *v2;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v6 < v12)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        if (v2 + 13 == v3)
        {
          v13 = v2;
        }

        else
        {
          v14 = v2;
          do
          {
            v13 = (v14 + 104);
            TRawSymbol<Pointer64>::operator=(v14, v14 + 104);
            v15 = (v14 + 208);
            v14 += 104;
          }

          while (v15 != v3);
          v3 = a1[1];
        }

        for (; v3 != v13; v3 -= 13)
        {
          v16 = (v3 - 5);
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v16);
        }

        a1[1] = v13;
      }

      else
      {
        slideSymbolsByOffset<Pointer64>(v2, *(v7 - 1));
        v2 += 13;
        v13 = a1[1];
      }

      v3 = v13;
    }

    while (v2 != v13);
  }
}

char **adjustVectorToMatchSegmentDeltas<TRawSourceInfo<Pointer64>,Pointer64>(char **result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v6 < v12)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        v13 = v2 - (v3 + 40);
        if (v2 != v3 + 40)
        {
          result = memmove(v3, v3 + 40, v13 - 4);
        }

        v2 = &v3[v13];
        v5[1] = &v3[v13];
      }

      else
      {
        *v3 = *(v7 - 1) + v6;
        v3 += 40;
      }
    }

    while (v3 != v2);
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 40;
  v10 = a2 - 80;
  v11 = a2 - 120;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        v108 = *(a2 - 5);
        v101 = a2 - 40;
        if (v108 >= *v12)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v98 = v12 + 40;
      v111 = *(v12 + 5);
      v112 = v12 + 5;
      v113 = *(v12 + 10);
      if (v111 >= *v12)
      {
        if (v113 < v111)
        {
          v119 = *(v12 + 9);
          v120 = *v98;
          result = *(v12 + 56);
          v121 = v12[6];
          *v98 = *v112;
          *(v12 + 56) = v121;
          *(v12 + 18) = *(v12 + 28);
          *v112 = v120;
          v12[6] = result;
          *(v12 + 28) = v119;
          if (*(v12 + 5) < *v12)
          {
            v217 = *(v12 + 4);
            v162 = *v12;
            v190 = v12[1];
            v122 = *(v12 + 56);
            *v12 = *v98;
            v12[1] = v122;
            *(v12 + 8) = *(v12 + 18);
            result = v162;
            *v98 = v162;
            *(v12 + 56) = v190;
            *(v12 + 18) = v217;
          }
        }
      }

      else if (v113 >= v111)
      {
        v218 = *(v12 + 4);
        v164 = *v12;
        v191 = v12[1];
        v129 = *(v12 + 56);
        *v12 = *v98;
        v12[1] = v129;
        *(v12 + 8) = *(v12 + 18);
        result = v164;
        *v98 = v164;
        *(v12 + 56) = v191;
        *(v12 + 18) = v218;
        if (v113 < *(v12 + 5))
        {
          v130 = *(v12 + 9);
          v131 = *v98;
          result = *(v12 + 56);
          v132 = v12[6];
          *v98 = *v112;
          *(v12 + 56) = v132;
          *(v12 + 18) = *(v12 + 28);
          *v112 = v131;
          v12[6] = result;
          *(v12 + 28) = v130;
        }
      }

      else
      {
        v216 = *(v12 + 4);
        v161 = *v12;
        v189 = v12[1];
        v114 = v12[6];
        *v12 = *v112;
        v12[1] = v114;
        *(v12 + 8) = *(v12 + 28);
        result = v161;
        *v112 = v161;
        v12[6] = v189;
        *(v12 + 28) = v216;
      }

      if (*v9 < *v112)
      {
        v133 = *(v12 + 14);
        result = *v112;
        v134 = v12[6];
        v135 = *(a2 - 2);
        v136 = *(a2 - 24);
        *v112 = *v9;
        v12[6] = v136;
        *(v12 + 28) = v135;
        *v9 = result;
        *(a2 - 24) = v134;
        *(a2 - 2) = v133;
        if (*v112 < *v98)
        {
          v137 = *(v12 + 9);
          v138 = *v98;
          result = *(v12 + 56);
          v139 = v12[6];
          *v98 = *v112;
          *(v12 + 56) = v139;
          *(v12 + 18) = *(v12 + 28);
          *v112 = v138;
          v12[6] = result;
          *(v12 + 28) = v137;
LABEL_105:
          if (*(v12 + 5) < *v12)
          {
            v219 = *(v12 + 4);
            v165 = *v12;
            v192 = v12[1];
            v140 = *(v98 + 1);
            *v12 = *v98;
            v12[1] = v140;
            *(v12 + 8) = *(v98 + 8);
            result = v165;
            *v98 = v165;
            *(v98 + 1) = v192;
            *(v98 + 8) = v219;
          }

          return result;
        }
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,0>(v12, v12 + 5, v12 + 10, v12 + 120, (a2 - 40), result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 959)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(v12, a2);
      }

      else if (v12 != a2)
      {
        v123 = v12 + 40;
        while (v123 != a2)
        {
          v124 = v123;
          v125 = *(a1 + 40);
          if (v125 < *a1)
          {
            *v163 = *(a1 + 48);
            *&v163[16] = *(a1 + 64);
            v126 = v124;
            do
            {
              v127 = *(v126 - 24);
              *v126 = *(v126 - 40);
              *(v126 + 16) = v127;
              *(v126 + 32) = *(v126 - 8);
              v128 = *(v126 - 80);
              v126 -= 40;
            }

            while (v125 < v128);
            *v126 = v125;
            result = *v163;
            *(v126 + 20) = *&v163[12];
            *(v126 + 8) = *v163;
          }

          v123 = (v124 + 40);
          a1 = v124;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *>(v12, a2, a2, a3);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = v12 + 40 * (v16 >> 1);
    v19 = *v9;
    if (v15 >= 0x1401)
    {
      v20 = *v18;
      if (*v18 >= *v12)
      {
        if (v19 < v20)
        {
          v195 = *(v18 + 4);
          v144 = *v18;
          v168 = *(v18 + 1);
          v26 = *v9;
          v27 = *(a2 - 24);
          *(v18 + 8) = *(a2 - 2);
          *v18 = v26;
          *(v18 + 1) = v27;
          *v9 = v144;
          *(a2 - 24) = v168;
          *(a2 - 2) = v195;
          if (*v18 < *v12)
          {
            v196 = *(v12 + 4);
            v145 = *v12;
            v169 = v12[1];
            v28 = *v18;
            v29 = *(v18 + 1);
            *(v12 + 8) = *(v18 + 8);
            *v12 = v28;
            v12[1] = v29;
            *(v18 + 8) = v196;
            *v18 = v145;
            *(v18 + 1) = v169;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          v193 = *(v12 + 4);
          v142 = *v12;
          v166 = v12[1];
          v21 = *v9;
          v22 = *(a2 - 24);
          *(v12 + 8) = *(a2 - 2);
          *v12 = v21;
          v12[1] = v22;
          goto LABEL_27;
        }

        v199 = *(v12 + 4);
        v148 = *v12;
        v172 = v12[1];
        v34 = *v18;
        v35 = *(v18 + 1);
        *(v12 + 8) = *(v18 + 8);
        *v12 = v34;
        v12[1] = v35;
        *(v18 + 8) = v199;
        *v18 = v148;
        *(v18 + 1) = v172;
        if (*v9 < *v18)
        {
          v193 = *(v18 + 4);
          v142 = *v18;
          v166 = *(v18 + 1);
          v36 = *v9;
          v37 = *(a2 - 24);
          *(v18 + 8) = *(a2 - 2);
          *v18 = v36;
          *(v18 + 1) = v37;
LABEL_27:
          *v9 = v142;
          *(a2 - 24) = v166;
          *(a2 - 2) = v193;
        }
      }

      v38 = (v12 + 40);
      v39 = v12 + 40 * v17;
      v42 = *(v39 - 5);
      v40 = v39 - 40;
      v41 = v42;
      v43 = *v10;
      if (v42 >= *(v12 + 5))
      {
        if (v43 < v41)
        {
          v200 = *(v40 + 4);
          v149 = *v40;
          v173 = *(v40 + 1);
          v49 = *v10;
          v50 = *(a2 - 4);
          *(v40 + 8) = *(a2 - 12);
          *v40 = v49;
          *(v40 + 1) = v50;
          *v10 = v149;
          *(a2 - 4) = v173;
          *(a2 - 12) = v200;
          if (*v40 < *v38)
          {
            v51 = *v38;
            v174 = *(v12 + 56);
            v201 = *(v12 + 9);
            v53 = *v40;
            v52 = *(v40 + 1);
            *(v12 + 18) = *(v40 + 8);
            *v38 = v53;
            *(v12 + 56) = v52;
            *(v40 + 8) = v201;
            *v40 = v51;
            *(v40 + 1) = v174;
          }
        }
      }

      else if (v43 >= v41)
      {
        v58 = *v38;
        v176 = *(v12 + 56);
        v203 = *(v12 + 9);
        v60 = *v40;
        v59 = *(v40 + 1);
        *(v12 + 18) = *(v40 + 8);
        *v38 = v60;
        *(v12 + 56) = v59;
        *(v40 + 8) = v203;
        *v40 = v58;
        *(v40 + 1) = v176;
        if (*v10 < *v40)
        {
          v204 = *(v40 + 4);
          v151 = *v40;
          v177 = *(v40 + 1);
          v61 = *v10;
          v62 = *(a2 - 4);
          *(v40 + 8) = *(a2 - 12);
          *v40 = v61;
          *(v40 + 1) = v62;
          *v10 = v151;
          *(a2 - 4) = v177;
          *(a2 - 12) = v204;
        }
      }

      else
      {
        v44 = *(v12 + 9);
        v45 = *v38;
        v46 = *(v12 + 56);
        v47 = *(a2 - 12);
        v48 = *(a2 - 4);
        *v38 = *v10;
        *(v12 + 56) = v48;
        *(v12 + 18) = v47;
        *v10 = v45;
        *(a2 - 4) = v46;
        *(a2 - 12) = v44;
      }

      v63 = v12 + 5;
      v64 = v12 + 40 * v17;
      v67 = *(v64 + 5);
      v65 = v64 + 40;
      v66 = v67;
      v68 = *v11;
      if (v67 >= *(v12 + 10))
      {
        if (v68 < v66)
        {
          v205 = *(v65 + 4);
          v152 = *v65;
          v178 = *(v65 + 1);
          v74 = *v11;
          v75 = *(a2 - 104);
          *(v65 + 8) = *(a2 - 22);
          *v65 = v74;
          *(v65 + 1) = v75;
          *v11 = v152;
          *(a2 - 104) = v178;
          *(a2 - 22) = v205;
          if (*v65 < *v63)
          {
            v76 = *v63;
            v179 = v12[6];
            v206 = *(v12 + 14);
            v78 = *v65;
            v77 = *(v65 + 1);
            *(v12 + 28) = *(v65 + 8);
            *v63 = v78;
            v12[6] = v77;
            *(v65 + 8) = v206;
            *v65 = v76;
            *(v65 + 1) = v179;
          }
        }
      }

      else if (v68 >= v66)
      {
        v79 = *v63;
        v180 = v12[6];
        v207 = *(v12 + 14);
        v81 = *v65;
        v80 = *(v65 + 1);
        *(v12 + 28) = *(v65 + 8);
        *v63 = v81;
        v12[6] = v80;
        *(v65 + 8) = v207;
        *v65 = v79;
        *(v65 + 1) = v180;
        if (*v11 < *v65)
        {
          v208 = *(v65 + 4);
          v153 = *v65;
          v181 = *(v65 + 1);
          v82 = *v11;
          v83 = *(a2 - 104);
          *(v65 + 8) = *(a2 - 22);
          *v65 = v82;
          *(v65 + 1) = v83;
          *v11 = v153;
          *(a2 - 104) = v181;
          *(a2 - 22) = v208;
        }
      }

      else
      {
        v69 = *(v12 + 14);
        v70 = *v63;
        v71 = v12[6];
        v72 = *(a2 - 22);
        v73 = *(a2 - 104);
        *v63 = *v11;
        v12[6] = v73;
        *(v12 + 28) = v72;
        *v11 = v70;
        *(a2 - 104) = v71;
        *(a2 - 22) = v69;
      }

      v84 = *v18;
      v85 = *v65;
      if (*v18 >= *v40)
      {
        if (v85 < v84)
        {
          v210 = *(v18 + 4);
          v155 = *v18;
          v183 = *(v18 + 1);
          v87 = *(v65 + 1);
          *v18 = *v65;
          *(v18 + 1) = v87;
          *(v18 + 8) = *(v65 + 8);
          *(v65 + 8) = v210;
          *v65 = v155;
          *(v65 + 1) = v183;
          if (*v18 < *v40)
          {
            v211 = *(v40 + 4);
            v156 = *v40;
            v184 = *(v40 + 1);
            v88 = *(v18 + 1);
            *v40 = *v18;
            *(v40 + 1) = v88;
            *(v40 + 8) = *(v18 + 8);
            *(v18 + 8) = v211;
            *v18 = v156;
            *(v18 + 1) = v184;
          }
        }
      }

      else
      {
        if (v85 < v84)
        {
          v209 = *(v40 + 4);
          v154 = *v40;
          v182 = *(v40 + 1);
          v86 = *(v65 + 1);
          *v40 = *v65;
          *(v40 + 1) = v86;
          *(v40 + 8) = *(v65 + 8);
          goto LABEL_55;
        }

        v212 = *(v40 + 4);
        v157 = *v40;
        v185 = *(v40 + 1);
        v89 = *(v18 + 1);
        *v40 = *v18;
        *(v40 + 1) = v89;
        *(v40 + 8) = *(v18 + 8);
        *(v18 + 8) = v212;
        *v18 = v157;
        *(v18 + 1) = v185;
        if (*v65 < *v18)
        {
          v209 = *(v18 + 4);
          v154 = *v18;
          v182 = *(v18 + 1);
          v90 = *(v65 + 1);
          *v18 = *v65;
          *(v18 + 1) = v90;
          *(v18 + 8) = *(v65 + 8);
LABEL_55:
          *(v65 + 8) = v209;
          *v65 = v154;
          *(v65 + 1) = v182;
        }
      }

      v213 = *(v12 + 4);
      v158 = *v12;
      v186 = v12[1];
      v91 = *v18;
      v92 = *(v18 + 1);
      *(v12 + 8) = *(v18 + 8);
      *v12 = v91;
      v12[1] = v92;
      *(v18 + 8) = v213;
      *v18 = v158;
      *(v18 + 1) = v186;
      goto LABEL_57;
    }

    v23 = *v12;
    if (*v12 >= *v18)
    {
      if (v19 < v23)
      {
        v197 = *(v12 + 4);
        v146 = *v12;
        v170 = v12[1];
        v30 = *v9;
        v31 = *(a2 - 24);
        *(v12 + 8) = *(a2 - 2);
        *v12 = v30;
        v12[1] = v31;
        *v9 = v146;
        *(a2 - 24) = v170;
        *(a2 - 2) = v197;
        if (*v12 < *v18)
        {
          v198 = *(v18 + 4);
          v147 = *v18;
          v171 = *(v18 + 1);
          v32 = *v12;
          v33 = v12[1];
          *(v18 + 8) = *(v12 + 8);
          *v18 = v32;
          *(v18 + 1) = v33;
          *(v12 + 8) = v198;
          *v12 = v147;
          v12[1] = v171;
        }
      }
    }

    else
    {
      if (v19 < v23)
      {
        v194 = *(v18 + 4);
        v143 = *v18;
        v167 = *(v18 + 1);
        v24 = *v9;
        v25 = *(a2 - 24);
        *(v18 + 8) = *(a2 - 2);
        *v18 = v24;
        *(v18 + 1) = v25;
LABEL_36:
        *v9 = v143;
        *(a2 - 24) = v167;
        *(a2 - 2) = v194;
        goto LABEL_57;
      }

      v202 = *(v18 + 4);
      v150 = *v18;
      v175 = *(v18 + 1);
      v54 = *v12;
      v55 = v12[1];
      *(v18 + 8) = *(v12 + 8);
      *v18 = v54;
      *(v18 + 1) = v55;
      *(v12 + 8) = v202;
      *v12 = v150;
      v12[1] = v175;
      if (*v9 < *v12)
      {
        v194 = *(v12 + 4);
        v143 = *v12;
        v167 = v12[1];
        v56 = *v9;
        v57 = *(a2 - 24);
        *(v12 + 8) = *(a2 - 2);
        *v12 = v56;
        v12[1] = v57;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *(v12 - 5) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer64> *,std::__less<void,void> &>(v12, a2);
      goto LABEL_64;
    }

    v93 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer64> *,std::__less<void,void> &>(v12, a2);
    if ((v95 & 1) == 0)
    {
      goto LABEL_62;
    }

    v96 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(v12, v93, v94);
    v12 = (v93 + 5);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>((v93 + 5), a2, v97))
    {
      a4 = -v14;
      a2 = v93;
      if (v96)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v96)
    {
LABEL_62:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,false>(a1, v93, a3, -v14, a5 & 1);
      v12 = (v93 + 5);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v98 = v12 + 40;
  v99 = *(v12 + 5);
  v102 = *(a2 - 5);
  v101 = a2 - 40;
  v100 = v102;
  if (v99 >= *v12)
  {
    if (v100 >= v99)
    {
      return result;
    }

    v115 = *(v12 + 9);
    result = *v98;
    v116 = *(v12 + 56);
    v117 = *(v101 + 8);
    v118 = *(v101 + 1);
    *v98 = *v101;
    *(v12 + 56) = v118;
    *(v12 + 18) = v117;
    *v101 = result;
    *(v101 + 1) = v116;
    *(v101 + 8) = v115;
    goto LABEL_105;
  }

  if (v100 < v99)
  {
LABEL_75:
    v215 = *(v12 + 4);
    v160 = *v12;
    v188 = v12[1];
    v109 = *v101;
    v110 = *(v101 + 1);
    *(v12 + 8) = *(v101 + 8);
    *v12 = v109;
    v12[1] = v110;
    *v101 = v160;
    result = v188;
    *(v101 + 1) = v188;
    *(v101 + 8) = v215;
    return result;
  }

  v214 = *(v12 + 4);
  v159 = *v12;
  v187 = v12[1];
  v103 = *(v12 + 56);
  *v12 = *v98;
  v12[1] = v103;
  *(v12 + 8) = *(v12 + 18);
  result = v159;
  *v98 = v159;
  *(v12 + 56) = v187;
  *(v12 + 18) = v214;
  if (*v101 < *(v12 + 5))
  {
    v104 = *(v12 + 9);
    result = *v98;
    v105 = *(v12 + 56);
    v106 = *(v101 + 8);
    v107 = *(v101 + 1);
    *v98 = *v101;
    *(v12 + 56) = v107;
    *(v12 + 18) = v106;
    *v101 = result;
    *(v101 + 1) = v105;
    *(v101 + 8) = v104;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,0>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v6)
    {
      v12 = a2[4];
      result = *a2;
      v13 = *(a2 + 1);
      v14 = *(a3 + 8);
      v15 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v15;
      *(a2 + 8) = v14;
      *a3 = result;
      *(a3 + 1) = v13;
      *(a3 + 8) = v12;
      if (*a2 < *a1)
      {
        v16 = *(a1 + 32);
        result = *a1;
        v17 = *(a1 + 16);
        v18 = *(a2 + 8);
        v19 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *a2 = result;
        *(a2 + 1) = v17;
        *(a2 + 8) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *(a1 + 32);
      result = *a1;
      v9 = *(a1 + 16);
      v10 = *(a3 + 8);
      v11 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *a3 = result;
      *(a3 + 1) = v9;
      *(a3 + 8) = v8;
      goto LABEL_10;
    }

    v20 = *(a1 + 32);
    result = *a1;
    v21 = *(a1 + 16);
    v22 = *(a2 + 8);
    v23 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *a2 = result;
    *(a2 + 1) = v21;
    *(a2 + 8) = v20;
    if (*a3 < *a2)
    {
      v8 = a2[4];
      result = *a2;
      v9 = *(a2 + 1);
      v24 = *(a3 + 8);
      v25 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v25;
      *(a2 + 8) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v26 = a3[4];
    result = *a3;
    v27 = *(a3 + 1);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 1) = v29;
    *(a3 + 8) = v28;
    *a4 = result;
    *(a4 + 16) = v27;
    *(a4 + 32) = v26;
    if (*a3 < *a2)
    {
      v30 = a2[4];
      result = *a2;
      v31 = *(a2 + 1);
      v32 = *(a3 + 8);
      v33 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v33;
      *(a2 + 8) = v32;
      *a3 = result;
      *(a3 + 1) = v31;
      *(a3 + 8) = v30;
      if (*a2 < *a1)
      {
        v34 = *(a1 + 32);
        result = *a1;
        v35 = *(a1 + 16);
        v36 = *(a2 + 8);
        v37 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *a2 = result;
        *(a2 + 1) = v35;
        *(a2 + 8) = v34;
      }
    }
  }

  if (*a5 < *a4)
  {
    v38 = *(a4 + 32);
    result = *a4;
    v39 = *(a4 + 16);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *a5 = result;
    *(a5 + 16) = v39;
    *(a5 + 32) = v38;
    if (*a4 < *a3)
    {
      v42 = a3[4];
      result = *a3;
      v43 = *(a3 + 1);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 1) = v45;
      *(a3 + 8) = v44;
      *a4 = result;
      *(a4 + 16) = v43;
      *(a4 + 32) = v42;
      if (*a3 < *a2)
      {
        v46 = a2[4];
        result = *a2;
        v47 = *(a2 + 1);
        v48 = *(a3 + 8);
        v49 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v49;
        *(a2 + 8) = v48;
        *a3 = result;
        *(a3 + 1) = v47;
        *(a3 + 8) = v46;
        if (*a2 < *a1)
        {
          v50 = *(a1 + 32);
          result = *a1;
          v51 = *(a1 + 16);
          v52 = *(a2 + 8);
          v53 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *a2 = result;
          *(a2 + 1) = v51;
          *(a2 + 8) = v50;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 40;
    if (result + 40 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 40);
        if (v6 < *v4)
        {
          *v11 = *(v4 + 48);
          *&v11[16] = *(v4 + 64);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 16);
            *(v8 + 40) = *(result + v7);
            *(v8 + 56) = v9;
            *(v8 + 72) = *(result + v7 + 32);
            if (!v7)
            {
              break;
            }

            v7 -= 40;
            if (v6 >= *(v8 - 40))
            {
              v10 = result + v7 + 40;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          *(v10 + 8) = *v11;
          *(v10 + 20) = *&v11[12];
        }

        v2 = v5 + 40;
        v3 += 40;
        v4 = v5;
      }

      while (v5 + 40 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer64> *,std::__less<void,void> &>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  *v17 = *(a1 + 1);
  *&v17[16] = *(a1 + 3);
  if (*a1 >= *(a2 - 5))
  {
    v5 = a1 + 5;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[5];
      v3 += 5;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 5);
      a2 = (a2 - 40);
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v16 = v3[4];
    v14 = *v3;
    v15 = *(v3 + 1);
    v7 = *a2;
    v8 = a2[1];
    *(v3 + 8) = *(a2 + 8);
    *v3 = v7;
    *(v3 + 1) = v8;
    *(a2 + 8) = v16;
    *a2 = v14;
    a2[1] = v15;
    do
    {
      v9 = v3[5];
      v3 += 5;
    }

    while (v2 >= v9);
    do
    {
      v10 = *(a2 - 5);
      a2 = (a2 - 40);
    }

    while (v2 < v10);
  }

  if (v3 - 5 != a1)
  {
    v11 = *(v3 - 5);
    v12 = *(v3 - 3);
    *(a1 + 8) = *(v3 - 2);
    *a1 = v11;
    *(a1 + 1) = v12;
  }

  *(v3 - 5) = v2;
  *(v3 - 20) = *&v17[12];
  *(v3 - 2) = *v17;
  return v3;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer64> *,std::__less<void,void> &>(uint64_t *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  *v20 = *(a1 + 1);
  *&v20[16] = *(a1 + 3);
  do
  {
    v4 = a1[v2 + 5];
    v2 += 5;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 5)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 5);
      a2 = (a2 - 40);
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 5);
      a2 = (a2 - 40);
    }

    while (v6 >= v3);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v19 = *(v8 + 1);
      v11 = v8[4];
      v13 = *v9;
      v12 = v9[1];
      *(v8 + 8) = *(v9 + 8);
      *v8 = v13;
      *(v8 + 1) = v12;
      *(v9 + 8) = v11;
      *v9 = v10;
      v9[1] = v19;
      do
      {
        v14 = v8[5];
        v8 += 5;
      }

      while (v14 < v3);
      do
      {
        v15 = *(v9 - 5);
        v9 = (v9 - 40);
      }

      while (v15 >= v3);
    }

    while (v8 < v9);
  }

  if (v8 - 5 != a1)
  {
    v16 = *(v8 - 5);
    v17 = *(v8 - 3);
    *(a1 + 8) = *(v8 - 2);
    *a1 = v16;
    *(a1 + 1) = v17;
  }

  *(v8 - 5) = v3;
  *(v8 - 20) = *&v20[12];
  *(v8 - 2) = *v20;
  return v8 - 5;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(__int128 *a1, char *a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 40);
      v7 = *(a1 + 5);
      v9 = *(a2 - 5);
      v4 = a2 - 40;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v55 = *(a1 + 4);
          v57 = *a1;
          v56 = a1[1];
          v58 = *(a1 + 56);
          *a1 = *v6;
          a1[1] = v58;
          *(a1 + 8) = *(a1 + 18);
          *v6 = v57;
          *(a1 + 56) = v56;
          *(a1 + 18) = v55;
          if (*v4 < *(a1 + 5))
          {
            v59 = *(a1 + 9);
            v60 = *v6;
            v61 = *(a1 + 56);
            v62 = *(v4 + 8);
            v63 = *(v4 + 1);
            *v6 = *v4;
            *(a1 + 56) = v63;
            *(a1 + 18) = v62;
            *v4 = v60;
            *(v4 + 1) = v61;
            result = 1;
            *(v4 + 8) = v59;
            return result;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v34 = *(a1 + 9);
      v35 = *v6;
      v36 = *(a1 + 56);
      v37 = *(v4 + 8);
      v38 = *(v4 + 1);
      *v6 = *v4;
      *(a1 + 56) = v38;
      *(a1 + 18) = v37;
      *v4 = v35;
      *(v4 + 1) = v36;
      *(v4 + 8) = v34;
LABEL_48:
      if (*(a1 + 5) < *a1)
      {
        v94 = *(a1 + 4);
        v96 = *a1;
        v95 = a1[1];
        v97 = v6[1];
        *a1 = *v6;
        a1[1] = v97;
        *(a1 + 8) = *(v6 + 8);
        *v6 = v96;
        v6[1] = v95;
        result = 1;
        *(v6 + 8) = v94;
        return result;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,0>(a1, a1 + 5, a1 + 10, a1 + 120, (a2 - 40), a3);
      return 1;
    }

    v6 = (a1 + 40);
    v25 = *(a1 + 5);
    v26 = a1 + 5;
    v27 = *(a1 + 10);
    v28 = a2 - 40;
    v29 = *a1;
    if (v25 >= *a1)
    {
      if (v27 < v25)
      {
        v47 = *(a1 + 9);
        v49 = *v6;
        v48 = *(a1 + 56);
        v50 = a1[6];
        *v6 = *v26;
        *(a1 + 56) = v50;
        *(a1 + 18) = *(a1 + 28);
        *v26 = v49;
        a1[6] = v48;
        *(a1 + 28) = v47;
        if (*v6 < v29)
        {
          v51 = *(a1 + 4);
          v53 = *a1;
          v52 = a1[1];
          v54 = *(a1 + 56);
          *a1 = *v6;
          a1[1] = v54;
          *(a1 + 8) = *(a1 + 18);
          *v6 = v53;
          *(a1 + 56) = v52;
          *(a1 + 18) = v51;
        }
      }

      goto LABEL_45;
    }

    if (v27 >= v25)
    {
      v80 = *(a1 + 4);
      v82 = *a1;
      v81 = a1[1];
      v83 = *(a1 + 56);
      *a1 = *v6;
      a1[1] = v83;
      *(a1 + 8) = *(a1 + 18);
      *v6 = v82;
      *(a1 + 56) = v81;
      *(a1 + 18) = v80;
      if (v27 >= *(a1 + 5))
      {
        goto LABEL_45;
      }

      v30 = *(a1 + 9);
      v32 = *v6;
      v31 = *(a1 + 56);
      v84 = a1[6];
      *v6 = *v26;
      *(a1 + 56) = v84;
      *(a1 + 18) = *(a1 + 28);
    }

    else
    {
      v30 = *(a1 + 4);
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[6];
      *a1 = *v26;
      a1[1] = v33;
      *(a1 + 8) = *(a1 + 28);
    }

    *v26 = v32;
    a1[6] = v31;
    *(a1 + 28) = v30;
LABEL_45:
    if (*v28 >= *v26)
    {
      return 1;
    }

    v85 = *(a1 + 14);
    v86 = *v26;
    v87 = a1[6];
    v88 = *(a2 - 2);
    v89 = *(a2 - 24);
    *v26 = *v28;
    a1[6] = v89;
    *(a1 + 28) = v88;
    *v28 = v86;
    *(a2 - 24) = v87;
    *(a2 - 2) = v85;
    if (*v26 >= *v6)
    {
      return 1;
    }

    v90 = *(a1 + 9);
    v92 = *v6;
    v91 = *(a1 + 56);
    v93 = a1[6];
    *v6 = *v26;
    *(a1 + 56) = v93;
    *(a1 + 18) = *(a1 + 28);
    *v26 = v92;
    a1[6] = v91;
    *(a1 + 28) = v90;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 5);
    v4 = a2 - 40;
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v10 = *(a1 + 4);
    v11 = *a1;
    v12 = a1[1];
    v13 = *(v4 + 8);
    v14 = *(v4 + 1);
    *a1 = *v4;
    a1[1] = v14;
    *(a1 + 8) = v13;
    *v4 = v11;
    *(v4 + 1) = v12;
    result = 1;
    *(v4 + 8) = v10;
    return result;
  }

LABEL_13:
  v16 = a1 + 5;
  v17 = *(a1 + 10);
  v18 = (a1 + 40);
  v19 = *(a1 + 5);
  v20 = *a1;
  if (v19 >= *a1)
  {
    if (v17 < v19)
    {
      v39 = *(a1 + 9);
      v41 = *v18;
      v40 = *(a1 + 56);
      v42 = a1[6];
      *v18 = *v16;
      *(a1 + 56) = v42;
      *(a1 + 18) = *(a1 + 28);
      *v16 = v41;
      a1[6] = v40;
      *(a1 + 28) = v39;
      if (*v18 < v20)
      {
        v43 = *(a1 + 4);
        v45 = *a1;
        v44 = a1[1];
        v46 = *(a1 + 56);
        *a1 = *v18;
        a1[1] = v46;
        *(a1 + 8) = *(a1 + 18);
        *v18 = v45;
        *(a1 + 56) = v44;
        *(a1 + 18) = v43;
      }
    }
  }

  else if (v17 >= v19)
  {
    v64 = *(a1 + 4);
    v66 = *a1;
    v65 = a1[1];
    v67 = *(a1 + 56);
    *a1 = *v18;
    a1[1] = v67;
    *(a1 + 8) = *(a1 + 18);
    *v18 = v66;
    *(a1 + 56) = v65;
    *(a1 + 18) = v64;
    if (v17 < *(a1 + 5))
    {
      v68 = *(a1 + 9);
      v70 = *v18;
      v69 = *(a1 + 56);
      v71 = a1[6];
      *v18 = *v16;
      *(a1 + 56) = v71;
      *(a1 + 18) = *(a1 + 28);
      *v16 = v70;
      a1[6] = v69;
      *(a1 + 28) = v68;
    }
  }

  else
  {
    v21 = *(a1 + 4);
    v23 = *a1;
    v22 = a1[1];
    v24 = a1[6];
    *a1 = *v16;
    a1[1] = v24;
    *(a1 + 8) = *(a1 + 28);
    *v16 = v23;
    a1[6] = v22;
    *(a1 + 28) = v21;
  }

  v72 = (a1 + 120);
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v73 = 0;
  v74 = 0;
  while (1)
  {
    v75 = *v72;
    if (*v72 < *v16)
    {
      *v98 = *(v72 + 8);
      *&v98[16] = *(v72 + 24);
      v76 = v73;
      while (1)
      {
        v77 = a1 + v76;
        v78 = *(a1 + v76 + 96);
        *(v77 + 120) = *(a1 + v76 + 80);
        *(v77 + 136) = v78;
        *(v77 + 152) = *(a1 + v76 + 112);
        if (v76 == -80)
        {
          break;
        }

        v76 -= 40;
        if (v75 >= *(v77 + 40))
        {
          v79 = a1 + v76 + 120;
          goto LABEL_39;
        }
      }

      v79 = a1;
LABEL_39:
      *v79 = v75;
      *(v79 + 8) = *v98;
      *(v79 + 20) = *&v98[12];
      if (++v74 == 8)
      {
        return v72 + 40 == a2;
      }
    }

    v16 = v72;
    v73 += 40;
    v72 = (v72 + 40);
    if (v72 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[40 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(a1, a4, v9, v12);
        v12 -= 5;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*v13 < *a1)
        {
          v14 = *(v13 + 4);
          v15 = *v13;
          v16 = *(v13 + 1);
          v17 = *(a1 + 8);
          v18 = *(a1 + 1);
          *v13 = *a1;
          *(v13 + 1) = v18;
          *(v13 + 8) = v17;
          *a1 = v15;
          *(a1 + 1) = v16;
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(a1, a4, v9, a1);
        }

        v13 += 40;
      }

      while (v13 != a3);
    }

    if (v8 >= 41)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      do
      {
        v20 = 0;
        v33 = *a1;
        v34 = *(a1 + 1);
        v35 = *(a1 + 4);
        v21 = a1;
        do
        {
          v22 = &v21[40 * v20];
          v23 = v22 + 40;
          v24 = (2 * v20) | 1;
          v20 = 2 * v20 + 2;
          if (v20 >= v19)
          {
            v20 = v24;
          }

          else
          {
            v26 = *(v22 + 10);
            v25 = v22 + 80;
            if (*(v25 - 5) >= v26)
            {
              v20 = v24;
            }

            else
            {
              v23 = v25;
            }
          }

          v27 = *v23;
          v28 = *(v23 + 1);
          *(v21 + 8) = *(v23 + 8);
          *v21 = v27;
          *(v21 + 1) = v28;
          v21 = v23;
        }

        while (v20 <= ((v19 - 2) >> 1));
        v6 -= 40;
        if (v23 == v6)
        {
          *(v23 + 8) = v35;
          *v23 = v33;
          *(v23 + 1) = v34;
        }

        else
        {
          v29 = *v6;
          v30 = *(v6 + 1);
          *(v23 + 8) = *(v6 + 8);
          *v23 = v29;
          *(v23 + 1) = v30;
          *v6 = v33;
          *(v6 + 1) = v34;
          *(v6 + 8) = v35;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(a1, (v23 + 40), a4, 0xCCCCCCCCCCCCCCCDLL * ((v23 + 40 - a1) >> 3));
        }
      }

      while (v19-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v5 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v6 = (a1 + 40 * v5);
      if ((0x999999999999999ALL * ((a4 - a1) >> 3) + 2) >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = *v6;
        v8 = *(v6 + 5);
        if (*v6 <= v8)
        {
          v7 = *(v6 + 5);
        }

        if (*v6 < v8)
        {
          v6 = (v6 + 40);
          v5 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
        }
      }

      v9 = *a4;
      if (v7 >= *a4)
      {
        *v17 = *(a4 + 1);
        *&v17[16] = *(a4 + 3);
        do
        {
          v10 = a4;
          a4 = v6;
          v11 = *v6;
          v12 = v6[1];
          *(v10 + 8) = *(v6 + 8);
          *v10 = v11;
          *(v10 + 1) = v12;
          if (v4 < v5)
          {
            break;
          }

          v13 = (2 * v5) | 1;
          v6 = (a1 + 40 * v13);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v14 = *v6;
            v5 = v13;
          }

          else
          {
            v14 = *v6;
            v15 = *(v6 + 5);
            if (*v6 <= v15)
            {
              v14 = *(v6 + 5);
            }

            if (*v6 >= v15)
            {
              v5 = v13;
            }

            else
            {
              v6 = (v6 + 40);
            }
          }
        }

        while (v14 >= v9);
        *a4 = v9;
        result = *v17;
        *(a4 + 20) = *&v17[12];
        *(a4 + 1) = *v17;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (a1 + 40 * (v4 >> 1));
    v7 = (a2 - 40);
    v8 = *(a2 - 40);
    if (*v6 < v8)
    {
      *v13 = *(a2 - 32);
      *&v13[16] = *(a2 - 16);
      do
      {
        v9 = v7;
        v7 = v6;
        v10 = *v6;
        v11 = v6[1];
        *(v9 + 8) = *(v6 + 8);
        *v9 = v10;
        v9[1] = v11;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 40 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 8) = *v13;
      result = *&v13[12];
      *(v7 + 20) = *&v13[12];
    }
  }

  return result;
}

uint64_t intern_symbol_names_and_path<Pointer64,std::unordered_map<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<std::pair<unsigned long,unsigned long> const,std::pair<unsigned int,unsigned int>>>>,std::unordered_map<unsigned long,unsigned int>>(uint64_t a1, CSCppMMapStringTable *a2, DemanglingUtilities::CSCppReusableDemanglingBuffer *a3, void *a4, void *a5, int a6)
{
  if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x400000) != 0)
  {
    v12 = TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::PersistentMangledName>(a1);
    v13 = "";
  }

  else
  {
    v12 = TRawSymbol<Pointer64>::_resolve_mangled_name<TRawSymbol<Pointer64>::EphemeralMangledName>(a1);
    v13 = *(a1 + 96);
  }

  *&v29 = v13;
  *(&v29 + 1) = v12;
  result = std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned long>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>>>::find<std::pair<unsigned long,unsigned long>>(a4, &v29);
  if (result)
  {
    v15 = *(result + 32);
    LODWORD(v16) = *(result + 36);
    goto LABEL_30;
  }

  v15 = CSCppMMapStringTable::intern_with_prefix(a2, v13, v12);
  if (DemanglingUtilities::is_simple_mangled_name(v12, atomic_load_explicit((a1 + 28), memory_order_acquire)))
  {
    v17 = DemanglingUtilities::simple_demangle(v12, atomic_load_explicit((a1 + 28), memory_order_acquire));
  }

  else
  {
    if (a6)
    {
      v18 = DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(a3);
      CSCppAddressSet::sort(a3);
      v20 = v19;
      v21 = a1;
      v22 = v18;
    }

    else
    {
      if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x20000) == 0)
      {
        goto LABEL_17;
      }

      v21 = a1;
      v22 = 0;
      v20 = 0;
    }

    v17 = TRawSymbol<Pointer64>::_resolve_name(v21, v22, v20);
  }

  v23 = v17;
  if (v17)
  {
    if (v17 == v12 + 1 || v17 == v12)
    {
      v24 = v17 != v12;
      if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x80000) != 0)
      {
        v25 = 0;
      }

      else if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x8000) != 0)
      {
        v25 = 1;
      }

      else
      {
        v25 = (atomic_load_explicit((a1 + 28), memory_order_acquire) >> 16) & 1;
      }

      is_objc_method = TRawSymbol<Pointer64>::is_objc_method(a1);
      if (v23 == v12)
      {
        v27 = v25;
      }

      else
      {
        v27 = 1;
      }

      if (is_objc_method)
      {
        v27 = v24;
      }

      v16 = v15 + v27;
    }

    else
    {
      v16 = CSCppMMapStringTable::intern_with_prefix(a2, 0, v17);
    }

    goto LABEL_29;
  }

LABEL_17:
  v16 = 0;
LABEL_29:
  v28 = v15 | (v16 << 32);
  result = std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned long>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>&,std::pair<unsigned int,unsigned int>>(a4, &v29, &v29, &v28);
LABEL_30:
  *(a1 + 16) = v16;
  *(a1 + 20) = v15;
  if ((atomic_load_explicit((a1 + 28), memory_order_acquire) & 0x80000000) != 0)
  {
    result = *(a1 + 48);
    if (result)
    {
      result = intern_string<std::unordered_map<unsigned long,unsigned int>>(result, a2, a5);
      *(a1 + 24) = result;
    }
  }

  return result;
}

uint64_t write_symbols_and_inlined_functions<Pointer64>(int64x2_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v42 = 0;
  v41 = *a5;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v8 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    v10 = a5;
    do
    {
      if (!a6 || CSCppAddressSet::_intersects_range(a6, v8->i64[0], v8->i64[1]))
      {
        v12 = children_index_for_symbol<Pointer64>(v8, &v42, a6);
        if (v8[4].i64[1] != v8[4].i64[0])
        {
          v38 = v8;
          std::deque<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>::push_back(v39, &v38);
        }

        if (*v10 == v10[1])
        {
          *a2 = vmovn_s64(*v8);
        }

        else
        {
          advance_delta_iterator_to_containing_range<Pointer64>(v8, v10, &v41);
          v13 = v8->i64[1];
          *a2 = v8->i32[0] + *(v41 + 16);
          *(a2 + 4) = v13;
        }

        TRawSymbol<Pointer64>::is_objc_method(v8);
        *(a2 + 8) = atomic_load_explicit(&v8[1].i32[3], memory_order_acquire);
        *(a2 + 20) = v12;
        *(a2 + 12) = v8[1].i64[0];
        a2 += 24;
      }

      v8 = (v8 + 104);
    }

    while (v8 != v7);
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v40;
      v32 = v10;
      do
      {
        v16 = *(*(*(&v39[0] + 1) + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v15 & 0x1FF));
        v41 = *v10;
        v17 = *(v16 + 72) - *(v16 + 64);
        if (v17)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0x4EC4EC4EC4EC4EC5 * (v17 >> 3);
          if (v20 <= 1)
          {
            v21 = 1;
          }

          else
          {
            v21 = 0x4EC4EC4EC4EC4EC5 * (v17 >> 3);
          }

          v35 = v21;
          v22 = a3;
          do
          {
            v23 = (*(v16 + 64) + 104 * v19);
            if (!a6 || CSCppAddressSet::_intersects_range(a6, *v23, v23[1]))
            {
              v24 = children_index_for_symbol<Pointer64>(v23, &v42, a6);
              if (v23[9] != v23[8])
              {
                v38 = v23;
                std::deque<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>::push_back(v39, &v38);
              }

              v37 = v22;
              if (a6)
              {
                v25 = v18;
                v26 = v19;
                do
                {
                  v27 = ++v26 >= v20;
                  if (v26 >= v20)
                  {
                    break;
                  }

                  v28 = CSCppAddressSet::_intersects_range(a6, *(*(v16 + 64) + v25 + 104), *(*(v16 + 64) + v25 + 112));
                  v25 += 104;
                }

                while (!v28);
              }

              else
              {
                v27 = v19 + 1 >= v20;
              }

              v10 = v32;
              if (*v32 == v32[1])
              {
                LODWORD(v30) = 0;
                v29 = v37;
              }

              else
              {
                advance_delta_iterator_to_containing_range<Pointer64>(v23, v32, &v41);
                v29 = v37;
                v30 = *(v41 + 16);
              }

              CSCppMMapInlinedSymbol::CSCppMMapInlinedSymbol<Pointer64>(v29, v30, a7, v23, a4, v24, v27);
              v22 = v29 + 36;
            }

            ++v19;
            v18 += 104;
          }

          while (v19 != v35);
          v14 = *(&v40 + 1);
          v15 = v40;
        }

        else
        {
          v22 = a3;
        }

        --v14;
        *&v40 = ++v15;
        *(&v40 + 1) = v14;
        a3 = v22;
        if (v15 >= 0x400)
        {
          operator delete(**(&v39[0] + 1));
          v14 = *(&v40 + 1);
          v15 = v40 - 512;
          *(&v39[0] + 1) += 8;
          *&v40 = v40 - 512;
        }
      }

      while (v14);
    }
  }

  return std::deque<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::~deque[abi:ne200100](v39);
}

void sub_1D977C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::deque<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned long>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>&,std::pair<unsigned int,unsigned int>>(void *a1, void *a2, _OWORD *a3, void *a4)
{
  v4 = a2[1];
  v5 = (*a2 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (*a2 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

uint64_t recursive_intern_inlined_function_names_with_name_cache<Pointer64,std::unordered_map<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<std::pair<unsigned long,unsigned long> const,std::pair<unsigned int,unsigned int>>>>,std::unordered_map<unsigned long,unsigned int>>(uint64_t a1, CSCppMMapStringTable *a2, uint64_t a3, DemanglingUtilities::CSCppReusableDemanglingBuffer *a4, void *a5, void *a6, uint64_t a7)
{
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (v7 == v8)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    if (!a3 || CSCppAddressSet::_intersects_range(a3, *v7, *(v7 + 8)))
    {
      intern_symbol_names_and_path<Pointer64,std::unordered_map<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<std::pair<unsigned long,unsigned long> const,std::pair<unsigned int,unsigned int>>>>,std::unordered_map<unsigned long,unsigned int>>(v7, a2, a4, a5, a6, a7);
      v15 = v15 + recursive_intern_inlined_function_names_with_name_cache<Pointer64,std::unordered_map<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer64> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<std::pair<unsigned long,unsigned long> const,std::pair<unsigned int,unsigned int>>>>,std::unordered_map<unsigned long,unsigned int>>(v7, a2, a3, a4, a5, a6, a7) + 1;
    }

    v7 += 104;
  }

  while (v7 != v8);
  return v15;
}

unint64_t **std::__introsort<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**,false>(unint64_t **result, unint64_t **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*v76 < **v8)
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = (v8 + 2);
      v87 = v8[2];
      v88 = *v8;
      v89 = *v85;
      v90 = **v8;
      v91 = *v87;
      if (*v85 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_188;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_188:
            v85 = v87;
            goto LABEL_189;
          }
        }

LABEL_180:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_189:
      v145 = *(a2 - 1);
      if (*v145 < *v85)
      {
        *v86 = v145;
        *(a2 - 1) = v85;
        v146 = *v86;
        v147 = *v84;
        v148 = *v146;
        if (*v146 < *v147)
        {
          v8[1] = v146;
          v8[2] = v147;
          v149 = *v8;
          if (v148 < **v8)
          {
            *v8 = v146;
            v8[1] = v149;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *v99;
            if (*v99 < *v100)
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *v100)
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_129;
                }
              }

              v103 = v8;
LABEL_129:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v142 = *v7;
          v141 = v7[1];
          v7 = v94;
          v143 = *v141;
          if (*v141 < *v142)
          {
            v144 = v7;
            do
            {
              *v144 = v142;
              v142 = *(v144 - 2);
              --v144;
            }

            while (v143 < *v142);
            *v144 = v141;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 >= v9)
            {
              v111 = *v109;
            }

            else
            {
              v110 = v108[1];
              v111 = *v109;
              result = *v110;
              v112 = *v109 >= *v110;
              if (*v109 <= *v110)
              {
                v111 = *v110;
              }

              if (*v109 < *v110)
              {
                v109 = v108[1];
                ++v108;
              }

              if (!v112)
              {
                v107 = 2 * v106 + 2;
              }
            }

            v113 = &v8[v106];
            v114 = *v113;
            v115 = **v113;
            if (v111 >= v115)
            {
              do
              {
                v116 = v108;
                *v113 = v109;
                if (v104 < v107)
                {
                  break;
                }

                v117 = (2 * v107) | 1;
                v108 = &v8[v117];
                v107 = 2 * v107 + 2;
                v109 = *v108;
                if (v107 >= v9)
                {
                  result = *v109;
                  v107 = v117;
                }

                else
                {
                  v118 = v108[1];
                  result = *v109;
                  v119 = *v109 >= *v118;
                  if (*v109 <= *v118)
                  {
                    result = *v118;
                  }

                  if (*v109 < *v118)
                  {
                    v109 = v108[1];
                    ++v108;
                  }

                  if (v119)
                  {
                    v107 = v117;
                  }
                }

                v113 = v116;
              }

              while (result >= v115);
              *v116 = v114;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v120 = 0;
          v121 = *v8;
          v122 = v8;
          do
          {
            v123 = &v122[v120];
            v124 = (v123 + 1);
            v125 = v123[1];
            v126 = (2 * v120) | 1;
            v120 = 2 * v120 + 2;
            if (v120 >= v9)
            {
              v120 = v126;
            }

            else
            {
              v129 = v123[2];
              v127 = (v123 + 2);
              v128 = v129;
              result = *v125;
              if (*v125 >= *v129)
              {
                v120 = v126;
              }

              else
              {
                v125 = v128;
                v124 = v127;
              }
            }

            *v122 = v125;
            v122 = v124;
          }

          while (v120 <= ((v9 - 2) >> 1));
          if (v124 == --a2)
          {
            *v124 = v121;
          }

          else
          {
            *v124 = *a2;
            *a2 = v121;
            v130 = (v124 - v8 + 8) >> 3;
            v131 = v130 < 2;
            v132 = v130 - 2;
            if (!v131)
            {
              v133 = v132 >> 1;
              v134 = &v8[v133];
              v135 = *v134;
              v136 = *v124;
              v137 = **v124;
              if (**v134 < v137)
              {
                do
                {
                  v138 = v134;
                  *v124 = v135;
                  if (!v133)
                  {
                    break;
                  }

                  v133 = (v133 - 1) >> 1;
                  v134 = &v8[v133];
                  v135 = *v134;
                  v124 = v138;
                }

                while (**v134 < v137);
                *v138 = v136;
              }
            }
          }

          v131 = v9-- <= 2;
        }

        while (!v131);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *v12;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = **v10;
      v17 = **v8;
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (**v10 < **v8)
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*v24 < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *v26;
      v29 = *v27;
      v30 = *(a2 - 2);
      v31 = *v30;
      if (*v26 >= *v27)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (**v25 < *v32)
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*v34 < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *v37;
      v40 = *v38;
      v41 = *(a2 - 3);
      v42 = *v41;
      if (*v37 >= *v38)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (**v35 < *v43)
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*v44 < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = **v11;
      v48 = **v25;
      v49 = *v35;
      v50 = **v35;
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = **v8;
    v21 = **v11;
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (**v8 < **v11)
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 >= v20)
    {
      *v11 = v18;
      *v8 = v19;
      v33 = *(a2 - 1);
      if (*v33 >= v21)
      {
        goto LABEL_57;
      }

      *v8 = v33;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v19;
LABEL_57:
    --a3;
    v52 = *v8;
    v53 = **v8;
    if ((a4 & 1) != 0 || **(v8 - 1) < v53)
    {
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*v55 < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*v59 >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*v58 >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*v63 < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*v64 >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_80;
      }

      v66 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      if (v53 >= **(a2 - 1))
      {
        v68 = (v8 + 1);
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 8;
        }

        while (v53 >= **v8);
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *v67);
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *v70);
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *v73);
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *v74);
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *v79;
  v81 = **v8;
  v82 = *(a2 - 1);
  v83 = *v82;
  if (*v79 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v140 = *v8;
      v139 = v8[1];
      if (*v139 < **v8)
      {
        *v8 = v139;
        v8[1] = v140;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v150 = *(a2 - 1);
      if (*v150 >= v81)
      {
        return result;
      }

      v8[1] = v150;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

unint64_t **std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**,0>(unint64_t **result, unint64_t **a2, unint64_t **a3, unint64_t **a4, unint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a2;
  v8 = **result;
  v9 = *a3;
  v10 = **a3;
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (**a3 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**>(unint64_t **a1, unint64_t **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = **a1;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (*v6 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*v31 < **a1)
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*v47 >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,compress_relocations_for_mmap_symbol_owner_data(std::vector<CSCppSegmentRange> const&,TRawSymbolOwnerData<Pointer64> &)::$_0 &,CSCppSegmentRange**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *v21;
    v26 = **a1;
    v27 = *v23;
    if (*v21 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*v42 < *v21)
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *v43;
          if (*v43 < *v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < **a1)
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *v13;
  v16 = **a1;
  v17 = *v11;
  if (*v13 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = **v33;
    if (v38 < *v37)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *v37)
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t children_index_for_symbol<Pointer64>(uint64_t a1, int *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    if (v4 == v5)
    {
      v7 = 0;
LABEL_10:
      v10 = &CSCppMMapSymbol::kNoChildren;
      goto LABEL_11;
    }

    v7 = 0;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 13;
      v7 += CSCppAddressSet::_intersects_range(a3, v8, v9);
    }

    while (v4 != v5);
  }

  else
  {
    v7 = -991146299 * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  }

  v10 = a2;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_11:
  result = *v10;
  *a2 += v7;
  return result;
}

unint64_t *advance_delta_iterator_to_containing_range<Pointer64>(unint64_t *result, uint64_t a2, unint64_t **a3)
{
  v3 = result;
  v18 = *MEMORY[0x1E69E9840];
  v4 = *result;
  v5 = *a3;
  v6 = *(a2 + 8);
  while (v4 < *v5 || result[1] + v4 > v5[1] + *v5)
  {
    v5 += 3;
    *a3 = v5;
    if (v5 >= v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        if (atomic_load_explicit(v3 + 7, memory_order_acquire) == 2048 || (atomic_load_explicit(v3 + 7, memory_order_acquire) & 0x1C000) != 0)
        {
          v7 = TRawSymbol<Pointer64>::_resolve_name(v3, 0, 0);
        }

        else
        {
          v7 = "UNNAMED";
        }

        v8 = *v3;
        v9 = v3[1];
        *buf = 136315650;
        v13 = v7;
        v14 = 2048;
        v15 = v8;
        v16 = 2048;
        v17 = v9;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Symbol %s [%llx -> %llx) outside of relocations in mmap SOD\n", buf, 0x20u);
      }

      v10 = *MEMORY[0x1E69E9848];
      if (atomic_load_explicit(v3 + 7, memory_order_acquire) == 2048 || (atomic_load_explicit(v3 + 7, memory_order_acquire) & 0x1C000) != 0)
      {
        v11 = TRawSymbol<Pointer64>::_resolve_name(v3, 0, 0);
      }

      else
      {
        v11 = "UNNAMED";
      }

      return fprintf(v10, "Symbol %s [%llx -> %llx) outside of relocations in mmap SOD\n", v11, *v3, v3[1]);
    }
  }

  return result;
}

void std::deque<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::allocator<TRawSymbol<Pointer32> **>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<TRawSymbol<Pointer32> **,std::allocator<TRawSymbol<Pointer32> **>>::emplace_back<TRawSymbol<Pointer32> **&>(a1, &v9);
}

void sub_1D977DA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppMMapInlinedSymbol::CSCppMMapInlinedSymbol<Pointer64>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = *(a4 + 8);
  *a1 = *a4 + a2;
  *(a1 + 4) = v11;
  TRawSymbol<Pointer64>::is_objc_method(a4);
  v12 = (a4 + 28);
  explicit = atomic_load_explicit((a4 + 28), memory_order_acquire);
  *(a1 + 8) = explicit;
  *(a1 + 20) = a6;
  *(a1 + 12) = *(a4 + 16);
  if (a7)
  {
    *(a1 + 8) = explicit | 0x40000000;
  }

  *(a1 + 24) = *(a4 + 24);
  v14 = atomic_load_explicit(v12, memory_order_acquire);
  if (*(a4 + 48))
  {
    v15 = v14 < 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 56);
  if (!v15)
  {
    v16 = 0;
  }

  *(a1 + 28) = v16;
  v17 = atomic_load_explicit(v12, memory_order_acquire);
  if (*(a4 + 48))
  {
    v18 = v17 < 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a4 + 60);
  if (!v18)
  {
    v19 = 0;
  }

  *(a1 + 32) = v19;
  return a1;
}

uint64_t CSCppTRawSymbolNameGuard<Pointer64>::~CSCppTRawSymbolNameGuard(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *v2;
      v4 = v2[1];
      while (v3 != v4)
      {
        TRawSymbol<Pointer64>::rollback_mmap_archive_naming(v3);
        v3 += 104;
      }
    }
  }

  return a1;
}

uint64_t TRawSymbol<Pointer64>::rollback_mmap_archive_naming(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  v3 = *(result + 72);
  while (v2 != v3)
  {
    result = TRawSymbol<Pointer64>::rollback_mmap_archive_naming(v2);
    v2 += 104;
  }

  v4 = (v1 + 28);
  explicit = atomic_load_explicit((v1 + 28), memory_order_acquire);
  if ((atomic_load_explicit((v1 + 28), memory_order_acquire) & 0x40000) == 0)
  {
    explicit &= ~0x20000u;
    *(v1 + 32) = *(v1 + 40);
  }

  if ((atomic_load_explicit(v4, memory_order_acquire) & 0x800000) == 0)
  {
    explicit &= 0xFEBFFFFB;
  }

  atomic_store(explicit, v4);
  return result;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CSCppSymbolOwner,CSCppSymbolOwnerData *>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      CSCppSymbolOwner::~CSCppSymbolOwner((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v26 = a3;
  v27 = a4;
  v25 = 0;
  v30[3] = 0;
  *&v28[0] = v30;
  std::function<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},void>(v30, v28);
  v23 = a3 & 0xFFFFFFFFFFFFFFF8;
  v24 = &v26;
  create_segment_relocation_deltas<Pointer32,CSCppSegmentRange,CSCppSegmentRange>(((a3 & 0xFFFFFFFFFFFFFFF8) + 32), (a1 + 32), 0, &v21);
  v9 = a2 + 96;
  v20[0] = &v23;
  v20[1] = &v24;
  v20[2] = &v25;
  v20[3] = a2 + 96;
  v20[4] = v30;
  v20[5] = &v21;
  v20[6] = &v26;
  _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator()(v20, v10, v11, v28);
  if (*&v28[0])
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2000000000;
    v19[3] = (a2 + 208);
    v12 = v26;
    v13 = v27;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1174405120;
    v15[2] = ___Z29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRef_block_invoke;
    v15[3] = &unk_1F55076D8;
    v15[4] = v19;
    v15[5] = v23;
    v15[6] = v9;
    __p = 0;
    v17 = 0;
    v18 = 0;
    std::vector<TRangeValue<Pointer32,unsigned int>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer32,unsigned int>*,TRangeValue<Pointer32,unsigned int>*>(&__p, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 2));
    CSSymbolForeachSourceInfo(v12, v13, v15);
    *(a5 + 88) = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *a5 = 0;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 65) = 0u;
    TRawSymbol<Pointer32>::operator=(a5, v28);
    *(a5 + 96) = 1;
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v19, 8);
  }

  else
  {
    *a5 = 0;
    *(a5 + 96) = 0;
  }

  v19[0] = &v29;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v19);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v30);
}

void sub_1D977DE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a19, 8);
  a19 = v31 - 144;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v31 - 104);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__484(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__485(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___Z52_create_traw_symbol_owner_data_with_symbol_generatorI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__110unique_ptrI19TRawSymbolOwnerDataIT0_ENS4_14default_deleteIS8_EEEEP16CSCppSymbolOwnerNS4_6vectorI17CSCppSectionRangeNS4_9allocatorISF_EEEEbU13block_pointerFbmP24CSUserSuppliedSymbolDataE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, &v3);
}

void intern_name_or_default(const char *a1, const void *a2, CSCppStringCache *this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    CSCppStringCache::intern(this, a1);
  }

  snprintf(__str, 0x10uLL, "%p", a2);
  CSCppStringCache::intern(this, __str);
}

void std::allocator<CSUserSuppliedSymbolData>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::function<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},void>(void *a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = &unk_1F5507718;
  v5 = *a2;
  HIDWORD(v5) = 0;
  *(&v5 + 9) = 0;
  v6 = &v4;
  std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::swap[abi:ne200100](&v4, a1);
  std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](&v4);
  return a1;
}

double _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL a3@<W2>, unsigned int *a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = CSCppSymbolOwner::data(**a1, a2, a3);
  v7 = (*(*v6 + 24))(v6);
  if ((v7 - 1) < 2)
  {
    v11 = *(**(a1 + 8) + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *(v11 + 40);
    if (v12)
    {
      CSCppStringCache::intern(*(a1 + 24), v12);
    }

    *buf = 0;
    v33 = 0;
    if (atomic_load_explicit((v11 + 20), memory_order_acquire) == 2048 || (atomic_load_explicit((v11 + 20), memory_order_acquire) & 0x1C000) != 0)
    {
      v25 = TRawSymbol<Pointer32>::_resolve_name(v11, 0, 0);
    }

    else
    {
      v25 = 0;
    }

    if (atomic_load_explicit((v11 + 20), memory_order_acquire) == 2048 || (atomic_load_explicit((v11 + 20), memory_order_acquire) & 0x1C000) != 0)
    {
      TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(v11);
    }

    atomic_load_explicit((v11 + 20), memory_order_acquire);
    if (atomic_load_explicit((v11 + 20), memory_order_acquire) == 2048)
    {
      atomic_load_explicit((v11 + 20), memory_order_acquire);
    }

    intern_name_or_default(v25, *v11, *(a1 + 24));
  }

  if (v7 == 4)
  {
    v13 = CSCppSymbolOwner::data(**a1, v8, v9);
    v14 = (*(**(a1 + 8) + 8) & 0xFFFFFFFFFFFFFFFCLL);
    v28 = 0;
    if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v13, *v14, &v28))
    {
      v31 = 0;
      *buf = &unk_1F55077F8;
      v33 = &v29;
      v34 = v13;
      v35 = buf;
      std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::swap[abi:ne200100](buf, &v29);
      std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](buf);
      v15 = v14[2];
      if (v15 != 2048 && (v15 & 0x1C000) == 0)
      {
        v23 = 0;
        v24 = 0;
        LODWORD(v22) = v14[3];
      }

      else
      {
        v17 = *(v13 + 11);
        v18 = *(v17 + 16);
        v19.i64[0] = v18;
        v19.i64[1] = HIDWORD(v18);
        v20 = v19;
        v20.i32[1] = v19.i32[0];
        v20.i32[3] = *(v17 + 24);
        v21 = v17 + *(v17 + 80) + vaddlvq_u32(vmulq_s32(v20, xmmword_1D97E0550)) + (32 * *(v17 + 8)) + (24 * *(v17 + 12)) + *(v17 + 88) + 96;
        v22 = v14[3];
        v23 = (v21 + v14[4]);
        v24 = (v21 + v22);
      }

      if (v22)
      {
        v27 = v24;
      }

      else
      {
        v27 = v23;
      }

      intern_name_or_default(v27, v28, *(a1 + 24));
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps", buf, 2u);
    }

    fwrite("Could not remap archive address to real in debug maps", 0x35uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  else if (v7 == 5)
  {
    v10 = CSCppSymbolOwner::data(**a1, v8, v9);
    v35 = 0;
    *&v29 = buf;
    *(&v29 + 1) = v10;
    v30 = *a1;
    std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator=<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},void>(buf, &v29);
  }

  *(a4 + 11) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  *(a4 + 80) = 0;
  a4[5] = 0;
  return result;
}

void ___Z29_copy_symbol_and_source_infosI17SizeAndEndiannessI9Pointer3212LittleEndianES1_ENSt3__18optionalI10TRawSymbolIT0_EEEP16CSCppSymbolOwnerR19TRawSymbolOwnerDataIS7_E10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  v5 = CSCppSymbolOwner::data(*(a1 + 40), a2, a3);
  v6 = (*(*v5 + 24))(v5);
  if ((v6 - 1) < 2)
  {
    CSCppStringCache::intern(*(a1 + 48), *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  if (v6 != 5)
  {
    if (v6 == 4)
    {
      v9 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      v10 = *(CSCppSymbolOwner::data(*(a1 + 40), v7, v8) + 88);
      v11 = *(a1 + 48);
      v12 = CSCppMMapSourceInfo::path(v9, v10 + 32 * v10[2] + 24 * v10[3] + (24 * v10[4]) + (4 * v10[4]) + (36 * v10[5]) + (20 * v10[6]) + v10[22] + v10[20] + 96);
      CSCppStringCache::intern(v11, v12);
    }

    return;
  }

  v13 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
  v14 = *(a3 & 0xFFFFFFFFFFFFFFFCLL);
  v15 = -v14;
  v16 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) - v14);
  if (*v16 >= 5u)
  {
    v17 = v16[2];
    if (v17)
    {
      CSCppStringCache::intern(*(a1 + 48), &v13[v17 + 4 + *&v13[v17]]);
    }
  }

  v18 = *(*(*(a1 + 32) + 8) + 24);
  v19 = &v13[v15];
  if (*v19 >= 0xDu && (v20 = *(v19 + 6)) != 0)
  {
    v21 = *&v13[v20];
    v22 = v21;
  }

  else
  {
    v22 = -1;
    LODWORD(v21) = -1;
  }

  v23 = v21 + slide_for_remote_address<Pointer32,unsigned int>((a1 + 56), v22);
  v24 = &v13[-*v13];
  v25 = *v24;
  if (v25 >= 0xF)
  {
    if (v24[7])
    {
      v26 = *&v13[v24[7]];
    }

    else
    {
      v26 = 0;
    }

LABEL_19:
    if (v24[4])
    {
      v27 = *&v13[v24[4]];
    }

    else
    {
      v27 = 0;
    }

    if (v25 >= 0xB && (v29 = v24[5]) != 0)
    {
      v28 = *&v13[v29];
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_26;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (v25 >= 9)
  {
    goto LABEL_19;
  }

LABEL_26:
  v30 = v18[1];
  v31 = v18[2];
  if (v30 >= v31)
  {
    v33 = *v18;
    v34 = v30 - *v18;
    v35 = v34 >> 5;
    v36 = (v34 >> 5) + 1;
    if (v36 >> 59)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v37 = v31 - v33;
    if (v37 >> 4 > v36)
    {
      v36 = v37 >> 4;
    }

    if (v37 >= 0x7FFFFFFFFFFFFFE0)
    {
      v36 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      std::allocator<TRawSourceInfo<Pointer32>>::allocate_at_least[abi:ne200100](v18, v36);
    }

    v38 = 32 * v35;
    *v38 = v23;
    *(v38 + 4) = v26;
    *(v38 + 8) = "<Invalid file path>";
    *(v38 + 16) = v27;
    *(v38 + 20) = v28;
    *(v38 + 24) = 0;
    v32 = 32 * v35 + 32;
    memcpy(0, v33, v34);
    v39 = *v18;
    *v18 = 0;
    v18[1] = v32;
    v18[2] = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v30 = v23;
    *(v30 + 1) = v26;
    *(v30 + 1) = "<Invalid file path>";
    *(v30 + 4) = v27;
    *(v30 + 5) = v28;
    v32 = (v30 + 32);
    *(v30 + 6) = 0;
  }

  v18[1] = v32;
}

uint64_t slide_for_remote_address<Pointer32,unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 2);
    v2 = *a1;
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[3 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 3;
      v3 += ~(v3 >> 1);
      if (v7 > a2)
      {
        v3 = v4;
      }

      else
      {
        v2 = v6;
      }
    }

    while (v3);
  }

  if (v2 == *a1)
  {
    return 0;
  }

  v8 = *(v2 - 3);
  if (v8 > a2 || a2 + 1 > *(v2 - 2) + v8)
  {
    return 0;
  }

  else
  {
    return *(v2 - 1);
  }
}

uint64_t *__copy_helper_block_e8_56c66_ZTSNSt3__16vectorI11TRangeValueI9Pointer32jENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = (a1 + 56);
  v2[2] = 0;
  return std::vector<TRangeValue<Pointer32,unsigned int>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer32,unsigned int>*,TRangeValue<Pointer32,unsigned int>*>(v2, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 2));
}

void __destroy_helper_block_e8_56c66_ZTSNSt3__16vectorI11TRangeValueI9Pointer32jENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}>,void ()(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507718;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}>,void ()(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(TRawSymbol&<Pointer32>,std::vector<TRawSymbol&> &,CSCppStringCache &)#1}::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, CSCppStringCache *this)
{
  v6 = *(a2 + 5);
  if (v6)
  {
    CSCppStringCache::intern(this, v6);
  }

  if (atomic_load_explicit(a2 + 5, memory_order_acquire) == 2048 || (atomic_load_explicit(a2 + 5, memory_order_acquire) & 0x1C000) != 0)
  {
    v7 = TRawSymbol<Pointer32>::_resolve_name(a2, 0, 0);
  }

  else
  {
    v7 = 0;
  }

  if (atomic_load_explicit(a2 + 5, memory_order_acquire) == 2048 || (atomic_load_explicit(a2 + 5, memory_order_acquire) & 0x1C000) != 0)
  {
    TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a2);
  }

  atomic_load_explicit(a2 + 5, memory_order_acquire);
  intern_name_or_default(v7, *a2, this);
}

void sub_1D977F238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 88) = &a21;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F55077F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}::operator()(void *a1, __int128 *a2, uint64_t a3, CSCppStringCache *this)
{
  v5 = a1[1];
  v6 = *(v5 + 11);
  v7 = v6 + 32 * v6[2] + 24 * v6[3] + (24 * v6[4]) + (4 * v6[4]) + (36 * v6[5]) + (20 * v6[6]) + v6[22] + v6[20] + 96;
  if ((*(a2 + 2) & 0x80000000) != 0)
  {
    v8 = *(a2 + 6);
    if (v7 + v8)
    {
      CSCppStringCache::intern(this, (v7 + v8));
    }
  }

  v16 = *a2;
  v17 = *(a2 + 2);
  v15 = 0;
  if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v5, v16, &v15))
  {
    v9 = DWORD2(v16) != 2048;
    v10 = (DWORD2(v16) & 0x1C000) == 0;
    if (v9 && v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v7 + v17);
    }

    if (v9 && v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = (v7 + HIDWORD(v16));
    }

    if (HIDWORD(v16))
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    intern_name_or_default(v13, v15, this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps inline enumeration", buf, 2u);
  }

  fwrite("Could not remap archive address to real in debug maps inline enumeration", 0x48uLL, 1uLL, *MEMORY[0x1E69E9848]);
}

void sub_1D977F78C(_Unwind_Exception *a1)
{
  *(v2 - 96) = v1 + 56;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v2 - 96));
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5507878;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1},std::allocator<std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}>,void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::optional<TRawSymbol<Pointer32>> _copy_symbol_and_source_infos<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,_CSTypeRef)::{lambda(void)#1}::operator() const(void)::{lambda(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)#1}::operator()(uint64_t a1, int *a2, uint64_t a3, CSCppStringCache *this)
{
  *&v23[25] = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = (a2 - *a2);
  if (*v5 >= 0xDu)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = (a2 + v6 + *(a2 + v6));
      v8 = v7 + *(v7 - *v7 + 4);
      CSCppStringCache::intern(this, &v8[*v8 + 4]);
    }
  }

  v9 = *(a1 + 8);
  v10 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v21);
  v11 = FlatbufferSymbolOwnerData::convertVMAddressToSlidAddress(v9, v10);
  if (v12)
  {
    v13 = v11;
    FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(&v21, v12);
    if (FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::is_unnamed(&v21, v14) || (v18 = (v21 - *v21), *v18 < 0xBu) || (v19 = v18[5]) == 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v21 + v19 + *(v21 + v19) + 4;
    }

    FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::flags(&v21);
    FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v21);
    intern_name_or_default(v20, v13, this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v21);
    *buf = 134217984;
    *v23 = v15;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to relocate address %#llx in flatbuffer SOD", buf, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9848];
  v17 = FlatbufferSymbolAdapterImpl<FlatbufferSymbols::InlineSymbol>::range(&v21);
  fprintf(v16, "Failed to relocate address %#llx in flatbuffer SOD", v17);
}

void sub_1D977FCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a20 = &a28;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void *std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1D977FF58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(FlatbufferSymbols::InlineSymbol const*,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL are_symbols_aliases<Pointer32>(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a1);
  v6 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a2);
  return strcmp(v5, v6) != 0;
}

uint64_t std::__copy_if[abi:ne200100]<std::__wrap_iter<CSUserSuppliedSymbolData *>,std::__wrap_iter<CSUserSuppliedSymbolData *>,std::back_insert_iterator<std::vector<CSUserSuppliedSymbolData>>,std::__identity,std::unique_ptr<TRawSymbolOwnerData<Pointer32>> _create_traw_symbol_owner_data_with_symbol_generator<SizeAndEndianness<Pointer32,LittleEndian>,Pointer32>(CSCppSymbolOwner *,std::vector<CSCppSectionRange>,BOOL,BOOL({block_pointer})(unsigned long,CSUserSuppliedSymbolData *))::{lambda(std::__wrap_iter<CSUserSuppliedSymbolData *>)#1}>(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = a1;
  v10 = a3;
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  do
  {
    v7 = (*(***a4 + 136))(**a4, 0, *(v4 + 32));
    if (CSIsNull(v7, v8))
    {
      std::back_insert_iterator<std::vector<CSUserSuppliedSymbolData>>::operator=[abi:ne200100](&v10, v4);
    }

    v4 += 48;
  }

  while (v4 != v5);
  return v5;
}

uint64_t *std::back_insert_iterator<std::vector<CSUserSuppliedSymbolData>>::operator=[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<CSUserSuppliedSymbolData>::allocate_at_least[abi:ne200100](*a1, v13);
    }

    v14 = 48 * v10;
    v15 = *a2;
    v16 = a2[2];
    *(v14 + 16) = a2[1];
    *(v14 + 32) = v16;
    *v14 = v15;
    v9 = 48 * v10 + 48;
    v17 = *(v4 + 8) - *v4;
    v18 = v14 - v17;
    memcpy((v14 - v17), *v4, v17);
    v19 = *v4;
    *v4 = v18;
    *(v4 + 8) = v9;
    *(v4 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v7 = *a2;
    v8 = a2[2];
    v5[1] = a2[1];
    v5[2] = v8;
    *v5 = v7;
    v9 = (v5 + 3);
  }

  *(v4 + 8) = v9;
  return a1;
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__emplace_back_slow_path<unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,decltype(nullptr)>(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v7 = v6 + 1;
  if (v6 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v10 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v7;
  }

  v25 = a1;
  if (v10)
  {
    std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](a1, v10);
  }

  v11 = 96 * v6;
  v22 = 0;
  v23 = v11;
  *(&v24 + 1) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  *v11 = *a2;
  *(v11 + 4) = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  *(v11 + 88) = 0;
  *(v11 + 65) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 20) = v15;
  *&v24 = 96 * v6 + 96;
  v16 = a1[1];
  v17 = 96 * v6 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(&v22);
  return v21;
}

void sub_1D9780408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__less<void,void>>(int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    while (1)
    {
      v9 = operator new(96 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D9780510(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, _DWORD *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 24) < *a1)
      {

        swap(a1, a2 - 24);
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, a2);
    }

    else
    {
      v12 = a4 >> 1;
      v13 = &a1[24 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v17[0] = a5;
        v17[1] = &v18;
        v18 = 0;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, &a1[24 * (a4 >> 1)], a3, a4 >> 1, a5);
        v18 = a4 >> 1;
        v15 = a4 - v12;
        v16 = &a5[24 * v12];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(&a1[24 * (a4 >> 1)], a2, a3, v15, v16);
        v18 = a4;
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a5, v16, v16, &a5[24 * a4], a1);
        std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v17);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, &a1[24 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v13, a2, a3, v14, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, v13, a2, a3, v12, v14, a5, a6);
      }
    }
  }
}

void sub_1D9780720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(unsigned int *a1, unsigned int *a2)
{
  if (a1 != a2)
  {
    v17[9] = v2;
    v17[10] = v3;
    v6 = a1 + 24;
    if (a1 + 24 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = *v8;
        v8 = v6;
        if (*v6 < v9)
        {
          v16 = 0;
          memset(v13, 0, 24);
          v14 = 0u;
          memset(v15, 0, 25);
          TRawSymbol<Pointer32>::operator=(v13, v6);
          v10 = v7;
          while (1)
          {
            TRawSymbol<Pointer32>::operator=(a1 + v10 + 96, a1 + v10);
            if (!v10)
            {
              break;
            }

            v11 = *(a1 + v10 - 96);
            v10 -= 96;
            if (LODWORD(v13[0]) >= v11)
            {
              v12 = (a1 + v10 + 96);
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          TRawSymbol<Pointer32>::operator=(v12, v13);
          v17[0] = v15;
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v17);
        }

        v6 = v8 + 24;
        v7 += 96;
      }

      while (v8 + 24 != a2);
    }
  }
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t *result, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v16[1] = &v17;
      v17 = 0;
      v10 = *(a2 - 24);
      v9 = a2 - 24;
      v11 = *result;
      *(a5 + 88) = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *a5 = 0;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 65) = 0u;
      v12 = v10 >= v11;
      if (v10 >= v11)
      {
        v13 = result;
      }

      else
      {
        v13 = (a2 - 24);
      }

      if (v12)
      {
        v8 = v9;
      }

      TRawSymbol<Pointer32>::operator=(a5, v13);
      ++v17;
      *(a5 + 96) = 0;
      v14 = a5 + 96;
      *(v14 + 88) = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 40) = 0u;
      *(v14 + 56) = 0u;
      *(v14 + 65) = 0u;
      TRawSymbol<Pointer32>::operator=(v14, v8);
      v16[0] = 0;
      return std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v16);
    }

    else if (a4 == 1)
    {
      *(a5 + 88) = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *a5 = 0;
      *(a5 + 40) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 65) = 0u;

      return TRawSymbol<Pointer32>::operator=(a5, result);
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(result, &result[12 * (a4 >> 1)], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(&v8[24 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), a5 + 96 * (a4 >> 1), a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v8, &v8[24 * (a4 >> 1)], &v8[24 * (a4 >> 1)], a2, a5);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(result, a2, a5);
    }
  }

  return result;
}

_DWORD *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,TRawSymbol<Pointer32> *,std::__wrap_iter<TRawSymbol<Pointer32> *>>(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = TRawSymbol<Pointer32>::operator=(a5, a3);
      a3 += 24;
      a5 += 96;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        result = TRawSymbol<Pointer32>::operator=(a5, v9);
        v9 += 24;
      }

      else
      {
        result = TRawSymbol<Pointer32>::operator=(a5, a3);
        a3 += 24;
      }

      a5 += 96;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v9 != a2)
    {
      result = TRawSymbol<Pointer32>::operator=(a5, v9);
      v9 += 24;
      a5 += 96;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 56);
      do
      {
        v7 = v5;
        std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v7);
        ++v4;
        v5 += 12;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

double std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(char *a1, int *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = -a5;
      while (*a2 >= *&a1[v11])
      {
        v11 += 96;
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v46 = &a1[v11];
      if (-v12 >= v8)
      {
        if (v12 == -1)
        {

          *&result = swap(&a1[v11], a2).n128_u64[0];
          return result;
        }

        v22 = -v12 / 2;
        v15 = a2;
        if (a2 != a3)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 5);
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[24 * (v23 >> 1)];
            v27 = *v25;
            v26 = (v25 + 24);
            v23 += ~(v23 >> 1);
            if (v27 < *&a1[96 * v22 + v11])
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v15 - a2) >> 5);
        v16 = &a1[96 * v22 + v11];
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[24 * (v8 / 2)];
        v16 = a2;
        if (a2 - a1 != v11)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1 - v11) >> 5);
          v16 = &a1[v11];
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[24 * (v17 >> 1)];
            v21 = *v19;
            v20 = v19 + 24;
            v17 += ~(v17 >> 1);
            if (*v15 < v21)
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - a1 - v11) >> 5);
      }

      v28 = v15;
      if (v16 != a2)
      {
        v28 = v16;
        if (a2 != v15)
        {
          v44 = v14;
          v45 = a3;
          v29 = a7;
          v30 = a4;
          v31 = a8;
          v32 = v22;
          v33 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v16, a2, v15);
          v14 = v44;
          a3 = v45;
          v22 = v32;
          a8 = v31;
          a4 = v30;
          a7 = v29;
          v28 = v33;
        }
      }

      a5 = -v12 - v22;
      v34 = v8 - v14;
      if ((v22 + v14) >= (v8 - (v22 + v14) - v12))
      {
        v37 = a4;
        v41 = v22;
        v42 = -v12 - v22;
        v43 = v14;
        v38 = a7;
        v39 = a8;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v28, v15, a3, a4, v42, v34, a7, a8);
        v15 = v16;
        v34 = v43;
        a5 = v41;
        a3 = v28;
        a1 = v46;
      }

      else
      {
        v35 = &a1[v11];
        v36 = a3;
        v37 = a4;
        v38 = a7;
        v39 = a8;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(v35, v16, v28, a4, v22, v14, a7, a8);
        a3 = v36;
        a1 = v28;
      }

      v8 = v34;
      a2 = v15;
      a7 = v38;
      a4 = v37;
      a8 = v39;
      if (!v34)
      {
        return result;
      }
    }

    std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(a1, a2, a3, a4, a5, v8, a7);
  }

  return result;
}

uint64_t *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSymbol<Pointer32> *>>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v17[7] = v3;
    v17[8] = v4;
    v7 = result;
    v16[0] = a3;
    v16[1] = v17;
    v17[0] = 0;
    *(a3 + 88) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 65) = 0u;
    TRawSymbol<Pointer32>::operator=(a3, result);
    ++v17[0];
    v8 = v7 + 12;
    if (v8 != a2)
    {
      v9 = 0;
      v10 = a3;
      v11 = a3;
      do
      {
        v12 = *v8;
        *(v11 + 96) = 0;
        v11 += 96;
        v13 = *v10;
        *(v10 + 184) = 0;
        *(v10 + 104) = 0;
        *(v10 + 112) = 0;
        *(v10 + 136) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 161) = 0u;
        if (v12 >= v13)
        {
          TRawSymbol<Pointer32>::operator=(v11, v8);
          ++v17[0];
        }

        else
        {
          TRawSymbol<Pointer32>::operator=(v11, v10);
          ++v17[0];
          v14 = a3;
          if (v10 != a3)
          {
            v15 = v9;
            while (1)
            {
              v14 = a3 + v15;
              if (*v8 >= *(a3 + v15 - 96))
              {
                break;
              }

              TRawSymbol<Pointer32>::operator=(v14, a3 + v15 - 96);
              v15 -= 96;
              if (!v15)
              {
                v14 = a3;
                break;
              }
            }
          }

          TRawSymbol<Pointer32>::operator=(v14, v8);
        }

        v8 += 12;
        v9 += 96;
        v10 = v11;
      }

      while (v8 != a2);
    }

    v16[0] = 0;
    return std::unique_ptr<TRawSymbol<Pointer32>,std::__destruct_n &>::~unique_ptr[abi:ne200100](v16);
  }

  return result;
}